#include <stm8s.h>
#include "clock.h"
#include "led.h"
#include "serial.h"
#include "rotary.h"
#include "pwm.h"
#include "readline.h"
#include "string_builder.h"
#include "cli.h"

void main()
{
	clock_setup();
	rotary_setup();
	led_setup();
	serial_setup();
	// pwm_setup();

	enableInterrupts();

	serial_write_string("Hello World!\r\n");

	int iterations = 3000;
	unsigned ticks = get_ticks();
	while (1) {
		wfi();
		/* Readline */
		cli_handle_input();
		/* Flash LED every 1000ms */
		unsigned now = get_ticks();
		if (now - ticks > 1000) {
			ticks = now;
			led_toggle(led_green);
		}
	}
}
