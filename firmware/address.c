#include <stm8s.h>

#define PIN_SADD0 GPIOD, GPIO_PIN_2
#define PIN_SADD1 GPIOC, GPIO_PIN_7
#define PIN_SADD2 GPIOC, GPIO_PIN_6

unsigned char address;

void address_setup(unsigned char base)
{
	/* A3, D3 = PWM1, PWM2 */
	GPIO_Init(PIN_SADD0, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(PIN_SADD1, GPIO_MODE_IN_PU_NO_IT);
	GPIO_Init(PIN_SADD2, GPIO_MODE_IN_PU_NO_IT);

	bool addr0 = GPIO_ReadInputPin(PIN_SADD0);
	bool addr1 = GPIO_ReadInputPin(PIN_SADD1);
	bool addr2 = GPIO_ReadInputPin(PIN_SADD2);

	address = base | (addr2 ? 0 : 4) | (addr1 ? 0 : 2) | (addr0 ? 0 : 1);
}
