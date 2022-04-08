#pragma once
#include <stm8s.h>

/* Configure clock tree, and 1ms heartbeat interrupt */
void clock_setup();

/* Read 1ms tick-counter */
uint16_t get_ticks();
