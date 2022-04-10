#pragma once
#include <stm8s.h>

enum pwm_channel {
	pwm_1 = 0,
	pwm_2 = 1,
};

void pwm_setup();
void pwm_set_duty(enum pwm_channel channel, int value);
int pwm_get_duty(enum pwm_channel channel);
void pwm_stop(enum pwm_channel channel);
void pwm_stop_all();
