#include <stm8s.h>
#include "led.h"

void led_setup()
{
	GPIO_DeInit(GPIOA);

	/* A1, A2 = LEDs 1/2 */
	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_PP_LOW_SLOW);
	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_SLOW);
}

void led_set(uint8_t led, bool state)
{
	if (led == led_blue) {
		if (state) {
			GPIO_WriteHigh(GPIOA, GPIO_PIN_1);
		} else {
			GPIO_WriteLow(GPIOA, GPIO_PIN_1);
		}
	} else if (led == led_green) {
		if (state) {
			GPIO_WriteHigh(GPIOA, GPIO_PIN_2);
		} else {
			GPIO_WriteLow(GPIOA, GPIO_PIN_2);
		}
	}
}

void led_toggle(uint8_t led)
{
	if (led == led_blue) {
		GPIO_WriteReverse(GPIOA, GPIO_PIN_1);
	} else if (led == led_green) {
		GPIO_WriteReverse(GPIOA, GPIO_PIN_2);
	}
}
