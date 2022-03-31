#include "stm8s.h"

void assert_failed(uint8_t* file, uint32_t line)
{
	(void) file;
	(void) line;
	while (1) {
		nop();
	}
}

void main()
{
	GPIO_DeInit(GPIOA);
	GPIO_DeInit(GPIOC);
	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_PP_LOW_SLOW);
	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_SLOW);
	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_IN_PU_NO_IT);
	while (1) {
		for (unsigned int i = 0; i < 10000; ++i) {
			nop();
		}
		if (GPIO_ReadInputPin(GPIOC, GPIO_PIN_3)) {
			for (unsigned int i = 0; i < 10000; ++i) {
				nop();
			}
		}
		GPIO_WriteReverse(GPIOA, GPIO_PIN_1);
		GPIO_WriteReverse(GPIOA, GPIO_PIN_2);
	}
}
