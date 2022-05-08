#pragma once
#include <stm8s.h>

/*
 * Vi-style editing, on top of the basic readline line-buffer / cursor-control
 * functionality
 */
void cli_init();
void cli_update();
void cli_handle_input();
void cli_invalidate();
