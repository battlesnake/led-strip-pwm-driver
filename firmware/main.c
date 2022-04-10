#include <stm8s.h>
#include "clock.h"
#include "led.h"
#include "serial.h"
#include "rotary.h"
#include "pwm.h"
#include "cli.h"

void main()
{
	clock_setup();
	rotary_setup();
	led_setup();
	serial_setup();
	pwm_setup();

	enableInterrupts();

	cli_init();

	serial_write_string("Hello World!\r\n");

	unsigned ticks = get_ticks();
	while (1) {
		wfi();
		/* Update CLI state */
		cli_handle_input();
		/* Flash heartbeat LED every 1000ms */
		unsigned now = get_ticks();
		if (now - ticks > 1000) {
			ticks = now;
			led_flash(led_green, 50);
		}
		/* Update pending LED flashes */
		led_update();
	}
}
