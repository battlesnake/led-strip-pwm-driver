#include <stm8s.h>
#include "ringbuffer.h"
#include "serial.h"
#include "string_builder.h"

#define ROTARY_EV_RISEN (0x80)
#define ROTARY_EV_FALLEN (0x00)
#define ROTARY_EV_PIN_MASK (0x07)
DEFINE_RINGBUFFER(rotary_ev, 4);

DEFINE_STRING(log_buf, 16);

INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 8)
{
	static uint8_t gpio_prev;
	char log[20];
	uint8_t gpio_current = GPIO_ReadInputData(GPIOC);
#define has_risen() ((gpio_current & pin_bit) && !(gpio_prev & pin_bit))
#define has_fallen() (!(gpio_current & pin_bit) && (gpio_prev & pin_bit))
	/* Should we also write timestamps? */
	for (uint8_t pin = 3; pin <= 5; ++pin) {
		uint8_t pin_bit = 1 << (pin - 1);
		uint8_t index = pin - 3;
		bool risen = has_risen();
		bool fallen = has_fallen();
		string_clear(log_buf);
		string_str(log_buf, "Pin C");
		string_uint(log_buf, pin);
		if (risen) {
			ringbuffer_push_back(rotary_ev, ROTARY_EV_RISEN | index);
			string_str(log_buf, " risen");
			serial_write_string(string_get(log_buf));
		} else if (fallen) {
			ringbuffer_push_back(rotary_ev, ROTARY_EV_FALLEN | index);
			string_str(log_buf, " fallen");
			serial_write_string(string_get(log_buf));
		}
	}
#undef risen
#undef fallen
	gpio_prev = gpio_current;
}

void rotary_setup()
{
	GPIO_DeInit(GPIOC);
	EXTI_DeInit();

	/* C3, C4, C5 = Rotary encoder Q/B/I */
	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_IN_PU_IT);

	/* Interrupts */
	EXTI_SetExtIntSensitivity(EXTI_PORT_GPIOC, EXTI_SENSITIVITY_RISE_FALL);
}
