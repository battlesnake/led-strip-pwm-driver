#include "stm8s.h"

void assert_failed(uint8_t* file, uint32_t line)
{
	(void) file;
	(void) line;
	while (1) {
		nop();
	}
}

#define false 0

void main()
{
	GPIO_DeInit(GPIOA);
	GPIO_DeInit(GPIOC);
	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_PP_LOW_SLOW);
	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_SLOW);
	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_IN_PU_IT);
	int iterations = 1000;
	while (1) {
		bool a = false;
		bool b = false;
		bool c = false;
		for (unsigned int i = 0; i < iterations; ++i) {
			a = a || (GPIO_ReadInputPin(GPIOC, GPIO_PIN_3) == 0);
			b = b || (GPIO_ReadInputPin(GPIOC, GPIO_PIN_4) == 0);
			c = c || (GPIO_ReadInputPin(GPIOC, GPIO_PIN_5) == 0);
		}
		if (a) {
			iterations = 4000;
		} else {
			iterations = 1000;
		}
		if (!b) {
			GPIO_WriteReverse(GPIOA, GPIO_PIN_1);
		}
		if (!c) {
			GPIO_WriteReverse(GPIOA, GPIO_PIN_2);
		}
	}
}
