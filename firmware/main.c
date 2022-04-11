#include <stm8s.h>
#include "init.h"
#include "clock.h"
#include "led.h"
#include "serial.h"
#include "rotary.h"
#include "pwm.h"
#include "cli.h"

void main()
{
	initial_state();

	clock_setup();
	/* rotary_setup(); */
	led_setup();
	serial_setup();
	pwm_setup();

	enableInterrupts();

#ifdef CLI
	cli_init();
#else
	pwm_set_duty(pwm_a, 50);
	pwm_set_duty(pwm_b, 50);
#endif

	serial_write_string("Hello World!\r\n");


	unsigned ticks = get_ticks();
	while (1) {
		wfi();
		/* Update CLI state */
#ifdef CLI
		cli_handle_input();
#endif
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
