#pragma once
#include <stm8s.h>
#include "str.h"

#define READLINE_BUF_SIZE 24

void readline_clear();

bool readline_insert(char value);

bool readline_delete_left();
bool readline_delete_right();

bool readline_move_left();
bool readline_move_right();

bool readline_move_left_word();
bool readline_move_right_word();
bool readline_move_right_word_end();

void readline_move_start();
void readline_move_end();

const char *readline_get_string();
void readline_get_range(struct range *line);
uint8_t readline_get_length();
uint8_t readline_get_cursor();
