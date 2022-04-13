#include <stm8s.h>
#include "init.h"
#include "clock.h"
#include "led.h"
#include "serial.h"
#include "rotary.h"
#include "pwm.h"
#include "cli.h"

/* node -p 'new Array(64).fill(0).map((x, i) => Math.floor((1 + Math.sin(i * 2 * Math.PI / 64)) * 50))' */
static const uint8_t sine64[64] = {
	50, 54, 59, 64,  69, 73, 77, 81, 85, 88, 91, 94,
	96, 97, 99, 99, 100, 99, 99, 97, 96, 94, 91, 88,
	85, 81, 77, 73,  69, 64, 59, 54, 50, 45, 40, 35,
	30, 26, 22, 18,  14, 11,  8,  5,  3,  2,  0,  0,
	0,  0,  0,  2,   3,  5,  8, 11, 14, 18, 22, 26,
	30, 35, 40, 45
};

uint8_t pwm_cycle;

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
#endif

	serial_write_string("Hello World!\r\n");

	unsigned ticks = get_ticks();
	while (1) {
		wfi();
		const unsigned now = get_ticks();
		/* Update CLI state */
#ifdef CLI
		cli_handle_input();
#endif
		/* Flash heartbeat LED every 1000ms */
		if (now - ticks > 1000) {
			ticks = now;
			led_flash(led_green, 50);
		}
		/* Update pending LED flashes */
		led_update();
		/* Color temperature cycling effect */
		if (pwm_cycle) {
			unsigned value = sine64[(now >> pwm_cycle) & 63];
			pwm_set_duty(pwm_a, value);
			pwm_set_duty(pwm_b, 100 - value);
		}
	}
}
