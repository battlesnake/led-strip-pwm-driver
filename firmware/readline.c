#include <stm8s.h>
#include "readline.h"

static char buffer[READLINE_BUF_SIZE];
uint8_t length;
uint8_t cursor;

void readline_clear()
{
	length = 0;
	cursor = 0;
}

bool readline_insert(char value)
{
	if (length == READLINE_BUF_SIZE - 1) {
		return FALSE;
	}
	if (value < 0x20 || value >= 0x7f) {
		return FALSE;
	}
	for (int8_t idx = length - 1; idx >= (int8_t) cursor; --idx) {
		buffer[idx + 1] = buffer[idx];
	}
	buffer[cursor] = value;
	cursor++;
	length++;
	return TRUE;
}

bool readline_delete_left()
{
	if (cursor == 0) {
		return FALSE;
	}
	for (uint8_t idx = cursor - 1; idx < length; ++idx) {
		buffer[idx] = buffer[idx + 1];
	}
	cursor--;
	length--;
	return TRUE;
}

bool readline_delete_right()
{
	if (cursor == length) {
		return FALSE;
	}
	for (uint8_t idx = cursor; idx < length; ++idx) {
		buffer[idx] = buffer[idx + 1];
	}
	length--;
	return TRUE;
}

bool readline_move_left()
{
	if (cursor == 0) {
		return FALSE;
	}
	cursor--;
	return TRUE;
}

bool readline_move_right()
{
	if (cursor == length) {
		return FALSE;
	}
	cursor++;
	return TRUE;
}

bool readline_move_left_word()
{
	if (cursor == 0) {
		return FALSE;
	}
	do {
		cursor--;
	} while (cursor > 0 && buffer[cursor - 1] != ' ');
	return TRUE;
}

bool readline_move_right_word()
{
	if (cursor == length) {
		return FALSE;
	}
	do {
		cursor++;
	} while (cursor < length && buffer[cursor - 1] != ' ');
	return TRUE;
}

bool readline_move_right_word_end()
{
	if (cursor == length) {
		return FALSE;
	}
	do {
		cursor++;
	} while (cursor < length - 1 && buffer[cursor + 1] != ' ');
	return TRUE;
}

void readline_move_start()
{
	cursor = 0;
}

void readline_move_end()
{
	cursor = length;
}

const char *readline_get()
{
	buffer[length] = 0;
	return buffer;
}

uint8_t readline_get_length()
{
	return length;
}

uint8_t readline_get_cursor()
{
	return cursor;
}
