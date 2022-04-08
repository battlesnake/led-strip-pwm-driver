#include <stm8s.h>
#include "ringbuffer.h"

#define ROTARY_EV_RISEN (0x80)
#define ROTARY_EV_FALLEN (0x00)
#define ROTARY_EV_PIN_MASK (0x07)
DEFINE_RINGBUFFER(rotary_ev, 4);

INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 8)
{
	static uint8_t prev;
	uint8_t state = GPIO_ReadInputData(GPIOC);
#define risen(pin) ((state & (1 << (pin))) && !(prev & (1 << (pin))))
#define fallen(pin) (!(state & (1 << (pin))) && (prev & (1 << (pin))))
	for (uint8_t pin = 3; pin <= 5; ++pin) {
		if (risen(pin)) {
			ringbuffer_push_back(rotary_ev, ROTARY_EV_RISEN | (pin - 3));
		} else if (fallen(pin)) {
			ringbuffer_push_back(rotary_ev, ROTARY_EV_FALLEN | (pin - 3));
		}
	}
	prev = state;
#undef risen
#undef fallen
}

void rotary_setup()
{
	GPIO_DeInit(GPIOA);
	GPIO_DeInit(GPIOC);
	EXTI_DeInit();

	/* A1, A2 = LEDs 1/2 */
	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_PP_LOW_SLOW);
	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_SLOW);

	/* C3, C4, C5 = Rotary encoder Q/B/I */
	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_IN_PU_IT);

	/* Interrupts */
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
}
