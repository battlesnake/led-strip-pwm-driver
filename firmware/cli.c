#include <stm8s.h>
#include "serial.h"
#include "readline.h"
#include "string_builder.h"
#include "clock.h"
#include "cli.h"

enum cli_mode
{
	mode_insert = 0,
	mode_normal = 1,
};

static enum cli_mode mode;
static bool caret_shown;

DEFINE_STRING(echo, READLINE_BUF_SIZE + 4);

void cli_update()
{
	const char *line = readline_get();
	string_clear(echo);
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
}

static void cli_handle_insert(char ch)
{
	if (ch == '\x1b') {
		mode = mode_normal;
	} else if (ch >= 0x20 && ch < 0x7f) {
		readline_insert(ch);
	} else if (ch == 0x7f) {
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
	} else if (ch == 'h') {
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
	if (ch == '\r') {
		cli_update();
		serial_write('\r');
		serial_write('\n');
		cli_execute(readline_get());
		readline_clear();
		mode = mode_insert;
	} else if (mode == mode_insert) {
		cli_handle_insert(h);
	} else if (mode == mode_normal) {
		cli_handle_normal(h);
	}
}

void cli_handle_input()
{
	if (serial_read_overrun()) {
		serial_write_string("error: RX buffer overrun\r\n");
		readline_clear();
	}
	bool changed = FALSE;
	char ch = 0;
	while (serial_read(&ch)) {
		cli_handle_char(ch);
		changed = TRUE;
	}
	bool caret_shown_now = changed || (get_ticks() & 1024) != 0;
	if (caret_shown_now != caret_shown) {
		caret_shown = caret_shown_now;
		changed = TRUE;
	}
	if (changed) {
		cli_update();
	}
}

void cli_execute(const char *command)
{
	serial_write_string("\r\nexecute: \r\n> ");
	serial_write_string(command);
	serial_write_string("\r\n");
}
