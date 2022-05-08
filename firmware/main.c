#include <stm8s.h>
#include "init.h"
#include "clock.h"
#include "led.h"
#include "serial.h"
#include "rotary.h"
#include "pwm.h"
#include "address.h"
#include "cli.h"
#include "sine.h"

uint8_t pwm_cycle;

void main()
{
	initial_state();

	clock_setup();
	/* rotary_setup(); */
	led_setup();
	serial_setup();
	pwm_setup();
	address_setup(I2C_BASE_ADDRESS);

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
