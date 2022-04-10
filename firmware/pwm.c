#include <stm8s.h>
#include "pwm.h"

#define PWM_COUNT (2)

#ifdef PWM_FAST
/* 1250 Hz */
#define PWM_PRESCALE TIM2_PRESCALER_16
#else
/* 312.5 Hz */
#define PWM_PRESCALE TIM2_PRESCALER_64
#endif

static uint16_t duty[PWM_COUNT];

static void (*pwm_set[PWM_COUNT])(uint16_t) = { TIM2_SetCompare1, TIM2_SetCompare2 };

void pwm_setup()
{
	TIM2_DeInit();
	TIM2_TimeBaseInit(PWM_PRESCALE, 99);

	TIM2_OC1Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE, 0, TIM2_OCPOLARITY_LOW);
	TIM2_OC1PreloadConfig(ENABLE);

	TIM2_OC2Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE, 0, TIM2_OCPOLARITY_LOW);
	TIM2_OC2PreloadConfig(ENABLE);

	TIM2_ARRPreloadConfig(ENABLE);

	TIM2_Cmd(ENABLE);
}

void pwm_set_duty(enum pwm_channel channel, int value)
{
	uint16_t val = value < 0 ? 0 : value > 100 ? 100 : value;
	duty[channel] = val;
	pwm_set[channel](val);
}

int pwm_get_duty(enum pwm_channel channel)
{
	uint16_t value = duty[channel];
	return value;
}

void pwm_stop(enum pwm_channel channel)
{
	pwm_set_duty(channel, 0);
}

void pwm_stop_all()
{
	for (unsigned char channel = 0; channel < PWM_COUNT; channel++) {
		pwm_stop(channel);
	}
}
