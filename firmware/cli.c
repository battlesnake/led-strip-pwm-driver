#include <stm8s.h>
#include "serial.h"
#include "readline.h"
#include "clock.h"
#include "cli.h"
#include "str.h"
#include "pwm.h"

#ifdef CMD_OLD
#include "cmd_old.h"
#define cli_execute(line) cmd_old_execute(line)
#else
#include "cmd.h"
#define cli_execute(line) cmd_execute_ascii(line)
#endif

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
