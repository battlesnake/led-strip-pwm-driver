#include <stm8s.h>
#include "pwm.h"

static uint16_t duty[2];

void pwm_setup()
{
	TIM2_DeInit();
	TIM2_TimeBaseInit(TIM2_PRESCALER_16, 999);

	TIM2_OC1Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE, 0, TIM2_OCPOLARITY_LOW);
	TIM2_OC1PreloadConfig(ENABLE);

	TIM2_OC2Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE, 0, TIM2_OCPOLARITY_LOW);
	TIM2_OC2PreloadConfig(ENABLE);

	TIM2_ARRPreloadConfig(ENABLE);

	TIM2_Cmd(ENABLE);
}

void pwm_set_duty(enum pwm_channel channel, uint16_t value)
{
	if (channel == pwm_1) {
		duty[0] = value;
		TIM2_SetCompare1(value);
	} else if (channel == pwm_2) {
		duty[1] = value;
		TIM2_SetCompare2(value);
	}
}

uint16_t pwm_get_duty(enum pwm_channel channel)
{
	if (channel == pwm_1) {
		return duty[0];
	} else if (channel == pwm_2) {
		return duty[1];
	} else {
		return (uint16_t) (-1);
	}
}

void pwm_stop(enum pwm_channel channel)
{
	pwm_set_duty(channel, 0);
}

void pwm_stop_all()
{
	pwm_stop(pwm_1);
	pwm_stop(pwm_2);
}
