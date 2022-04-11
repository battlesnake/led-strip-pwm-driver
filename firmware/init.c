#include <stm8s.h>

void initial_state()
{
	CLK_DeInit();

	GPIO_DeInit(GPIOA);
	GPIO_DeInit(GPIOB);
	GPIO_DeInit(GPIOC);
	GPIO_DeInit(GPIOD);

	TIM1_DeInit();
	TIM2_DeInit();

	UART1_DeInit();

	I2C_DeInit();
}
