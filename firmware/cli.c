#include <stm8s.h>
#include "serial.h"
#include "readline.h"
#include "clock.h"
#include "cli.h"
#include "str.h"
#include "pwm.h"

enum cli_mode
{
	mode_insert = 0,
	mode_normal = 1,
};

static enum cli_mode mode;
static bool caret_shown;
static bool no_refresh_pending;

void cli_init()
{
#ifdef ANSI
	serial_write_string("\033c\033[2J");
#else
	nop();
#endif
}

void cli_invalidate()
{
	no_refresh_pending = FALSE;
}

void cli_update()
{
#ifdef ANSI
	struct range line;
	readline_get_range(&line);
	serial_write_format("\033[K\r> %S\033[%uD\033[%uC", &line, READLINE_BUF_SIZE, readline_get_cursor() + 2);
#else
	DEFINE_STRING(echo, READLINE_BUF_SIZE + 4);
	string_clear(echo);
	const char *line = readline_get_string();
	string_str(echo, "\r> ");
	for (uint8_t col = 0; col <= READLINE_BUF_SIZE; ++col) {
		bool is_caret = caret_shown && col == readline_get_cursor();
		if (is_caret) {
			string_ch(echo, '_');
		}
		if (*line) {
			if (!is_caret) {
				string_ch(echo, *line);
			}
			line++;
		} else {
			if (!is_caret) {
				string_ch(echo, ' ');
			}
		}
	}
	string_ch(echo, '\r');
	serial_write_string(string_get(echo));
#endif
}

static void cli_handle_insert(char ch)
{
	if (ch == 27) {
		mode = mode_normal;
	} else if (ch >= 0x20 && ch < 0x7f) {
		readline_insert(ch);
	} else if (ch == 0x7f || ch == 0x08) {
		readline_delete_left();
	}
}

static void cli_handle_normal(char ch)
{
	if (ch == 'i') {
		mode = mode_insert;
	} else if (ch == 'I') {
		readline_move_start();
		mode = mode_insert;
	} else if (ch == 'a') {
		readline_move_right();
		mode = mode_insert;
	} else if (ch == 'A') {
		readline_move_end();
		mode = mode_insert;
	} else if (ch == 'X') {
		readline_delete_left();
	} else if (ch == 'x') {
		readline_delete_right();
	} else if (ch == 'h' || ch == 0x7f || ch == 0x08) {
		readline_move_left();
	} else if (ch == 'l') {
		readline_move_right();
	} else if (ch == 'b') {
		readline_move_left_word();
	} else if (ch == 'w') {
		readline_move_right_word();
	} else if (ch == 'e') {
		readline_move_right_word_end();
	} else if (ch == '0' || ch == '^') {
		readline_move_start();
	} else if (ch == '$') {
		readline_move_end();
	} else if (ch == 'D') {
		readline_clear();
	}
}

static void cli_handle_char(char ch)
{
	if (ch == '\r' && readline_get_length() > 0) {
		cli_update();
		serial_write_string("\r\n");
		struct range line;
		readline_get_range(&line);
		if (cli_execute(&line)) {
			serial_write_string("Success!\r\n");
		} else {
			serial_write_string("Failed!\r\n");
		}
		serial_write_string("\r\n");
		readline_clear();
		mode = mode_insert;
	} else if (mode == mode_insert) {
		cli_handle_insert(ch);
	} else if (mode == mode_normal) {
		cli_handle_normal(ch);
	}
}

void cli_handle_input()
{
	if (serial_read_overrun()) {
		serial_write_string("error: RX buffer overrun\r\n");
		readline_clear();
	}
	bool changed = !no_refresh_pending;
	char ch = 0;
	while (serial_read(&ch)) {
		cli_handle_char(ch);
		changed = TRUE;
	}
#ifdef ANSI
	/* Terminal caret/cursor control */
#else
	/* Manual flash caret */
	bool caret_shown_now = changed;
	caret_shown_now = caret_shown_now || (get_ticks() & 1024) != 0;
	if (caret_shown_now != caret_shown) {
		caret_shown = caret_shown_now;
		changed = TRUE;
	}
#endif
	if (changed) {
		cli_update();
	}
	no_refresh_pending = TRUE;
}

static void invalid_arg(const struct range *arg)
{
	serial_write_format("Invalid argument: <%S>%n", arg);
}

static void echo_pwm_value(enum pwm_channel channel)
{
	int value = pwm_get_duty(channel);
	serial_write_format("pwm %c value: %d%%%n", 'a' + channel, value);
}

static bool cli_execute_pwm_stop(enum pwm_channel channel)
{
	pwm_set_duty(channel, 0);
	echo_pwm_value(channel);
	return TRUE;
}

static bool cli_execute_pwm_set(struct range *line, enum pwm_channel channel)
{
	struct range arg;
	if (!range_tokenise(line, &arg)) {
		return FALSE;
	}
	int value;
	if (!range_to_int(&arg, &value)) {
		invalid_arg(&arg);
		return FALSE;
	}
	pwm_set_duty(channel, value);
	echo_pwm_value(channel);
	return TRUE;
}

static bool cli_execute_pwm_get(enum pwm_channel channel)
{
	echo_pwm_value(channel);
	return TRUE;
}

static bool cli_execute_pwm_delta(struct range *line, enum pwm_channel channel, bool invert)
{
	struct range arg;
	if (!range_tokenise(line, &arg)) {
		return FALSE;
	}
	int delta;
	if (!range_to_int(&arg, &delta) || delta < -100 || delta > 100) {
		invalid_arg(&arg);
		return FALSE;
	}
	if (invert) {
		delta = -delta;
	}
	int value = pwm_get_duty(channel);
	value += delta;
	pwm_set_duty(channel, value);
	echo_pwm_value(channel);
	return TRUE;
}

static bool cli_execute_pwm_ch(struct range *line, const struct range *command, enum pwm_channel channel)
{
	if (str_equal_range("set", command)) {
		return cli_execute_pwm_set(line, channel);
	} else if (str_equal_range("get", command)) {
		return cli_execute_pwm_get(channel);
	} else if (str_equal_range("inc", command)) {
		return cli_execute_pwm_delta(line, channel, FALSE);
	} else if (str_equal_range("dec", command)) {
		return cli_execute_pwm_delta(line, channel, TRUE);
	} else if (str_equal_range("stop", command)) {
		return cli_execute_pwm_stop(channel);
	} else {
		invalid_arg(command);
		return FALSE;
	}
}

static inline void memcpy(void *dest, const void *src, unsigned length)
{
	char *d = dest;
	const char *s = src;
	while (length--) {
		*d++ = *s++;
	}
}

static bool cli_execute_pwm(struct range *line)
{
	struct range command;
	struct range arg;
	if (!range_tokenise(line, &command)) {
		return FALSE;
	}
	if (!range_tokenise(line, &arg)) {
		return FALSE;
	}
	if (str_equal_range("cycle", &command)) {
		extern bool pwm_cycle;
		if (str_equal_range("off", &arg)) {
			pwm_cycle = 0;
		} else if (str_equal_range("fast", &arg)) {
			pwm_cycle = 4;
		} else if (str_equal_range("medium", &arg)) {
			pwm_cycle = 6;
		} else if (str_equal_range("slow", &arg)) {
			pwm_cycle = 8;
		} else {
			invalid_arg(&arg);
			return FALSE;
		}
		return TRUE;
	}
	if (str_equal_range("a", &arg)) {
		return cli_execute_pwm_ch(line, &command, pwm_a);
	} else if (str_equal_range("b", &arg)) {
		return cli_execute_pwm_ch(line, &command, pwm_b);
	} else if (str_equal_range("*", &arg)) {
		/* "line" gets mutated down the chain, so copy it for re-use */
		struct range line2;
		memcpy(&line2, line, sizeof(*line));
		return cli_execute_pwm_ch(line, &command, pwm_a) && cli_execute_pwm_ch(&line2, &command, pwm_b);
	} else {
		invalid_arg(&arg);
		return FALSE;
	}
}

bool cli_execute(struct range *line)
{
	struct range command;
	if (!range_tokenise(line, &command)) {
		return FALSE;
	}
	if (str_equal_range("echo", &command)) {
		struct range text;
		if (!range_tokenise(line, &text)) {
			return FALSE;
		}
		text.end = line->end;
		serial_write_format("echo: %S%n", &text);
		return TRUE;
	} else if (str_equal_range("pwm", &command)) {
		return cli_execute_pwm(line);
	} else {
		invalid_arg(&command);
		return FALSE;
	}
}
