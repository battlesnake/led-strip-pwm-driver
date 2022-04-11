#pragma once
#include <stm8s.h>

enum pwm_channel {
	pwm_a = 0,
	pwm_b = 1,
};

void pwm_setup();
void pwm_set_duty(enum pwm_channel channel, int value);
int pwm_get_duty(enum pwm_channel channel);
void pwm_stop(enum pwm_channel channel);
void pwm_stop_all();
