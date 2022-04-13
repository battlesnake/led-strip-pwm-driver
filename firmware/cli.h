#pragma once
#include <stm8s.h>

void cli_init();
void cli_update();
void cli_handle_input();
bool cli_execute(struct range *line);
void cli_invalidate();
