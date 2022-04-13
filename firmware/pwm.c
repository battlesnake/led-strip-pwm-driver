#include <stm8s.h>
#include "pwm.h"

#define PWM_COUNT (2)

#define PWM_VALUE_RANGE (100)

#define AUTORELOAD (PWM_VALUE_RANGE - 1)

#define INITIAL_DUTY (0)

#ifdef PWM_FAST
/* 1250 Hz */
#define PRESCALE TIM2_PRESCALER_16
#else
/* 312.5 Hz */
#define PRESCALE TIM2_PRESCALER_64
#endif

static uint16_t duty[PWM_COUNT];

static void (*pwm_set[PWM_COUNT])(uint16_t) = { TIM2_SetCompare3, TIM2_SetCompare2 };

void pwm_setup()
{
	/* A3, D3 = PWM1, PWM2 */
	GPIO_Init(GPIOA, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST);
	GPIO_Init(GPIOD, GPIO_PIN_3, GPIO_MODE_OUT_PP_LOW_FAST);

	TIM2_TimeBaseInit(PRESCALE, AUTORELOAD);

	TIM2_OC3Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE, INITIAL_DUTY, TIM2_OCPOLARITY_LOW);
	TIM2_OC3PreloadConfig(ENABLE);

	TIM2_OC2Init(TIM2_OCMODE_PWM2, TIM2_OUTPUTSTATE_ENABLE, INITIAL_DUTY, TIM2_OCPOLARITY_LOW);
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
