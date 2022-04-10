#pragma once
#include <stm8s.h>

enum led_name {
	led_blue = 0,
	led_green = 1,
};

/* Configure GPIOs for LEDs */
void led_setup();

/* Set the state of a LED */
void led_set(enum led_name led, bool state);

/* Toggle a LED */
void led_toggle(enum led_name led);

/* Flash a LED */
void led_flash(enum led_name led, unsigned msecs);

/* Turn off any flashing LEDs past their deadline */
void led_update();
