#include <stm8s.h>
#include "clock.h"
#include "led.h"

#define LED_COUNT (2)

struct led_flash
{
	bool flashing;
	unsigned expires;
};

static struct led_flash flash[LED_COUNT];

static const unsigned char led_pin[LED_COUNT] = { GPIO_PIN_1, GPIO_PIN_2 };

void led_setup()
{
	GPIO_DeInit(GPIOA);

	/* A1, A2 = LEDs 1/2 */
	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_PP_LOW_SLOW);
	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_SLOW);
}

void led_set(enum led_name led, bool state)
{
	int pin = led_pin[led];
	if (state) {
		GPIO_WriteHigh(GPIOA, pin);
	} else {
		GPIO_WriteLow(GPIOA, pin);
	}
}

void led_toggle(enum led_name led)
{
	int pin = led_pin[led];
	GPIO_WriteReverse(GPIOA, pin);
}

void led_flash(enum led_name led, unsigned msecs)
{
	led_set(led, TRUE);
	flash[led].flashing = TRUE;
	flash[led].expires = get_ticks() + msecs;
}

void led_update()
{
	unsigned now = get_ticks();
	for (int led = 0; led < LED_COUNT; ++led) {
		if (flash[led].flashing && flash[led].expires < now) {
			flash[led].flashing = FALSE;
			led_set(led, FALSE);
		}
	}
}
