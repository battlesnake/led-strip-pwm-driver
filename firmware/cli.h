#pragma once
#include <stm8s.h>

void cli_update();
void cli_handle_input();
void cli_execute(const char *command);
