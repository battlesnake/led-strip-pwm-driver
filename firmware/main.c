#include <stm8s.h>
#include "clock.h"
#include "led.h"
#include "serial.h"
#include "rotary.h"

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
	clock_setup();
	rotary_setup();
	led_setup();
	serial_setup();

	enableInterrupts();

	serial_write_string("Hello World!\r\n");

	int iterations = 3000;
	unsigned ticks = get_ticks();
	while (1) {
		wfi();
		if (serial_read_overrun()) {
			serial_write_string("error: RX buffer overrun\r\n");
		}
		/* Flip case of alpha chars, echo others verbatim */
		char ch;
		while (serial_read(&ch)) {
			if (ch > 0x40 && ch <= 0x5a) {
				ch += 0x20;
			} else if (ch > 0x60 && ch < 0x7a) {
				ch -= 0x20;
			}
			serial_write(ch);
			if (ch == '\r') {
				serial_write('\n');
			}
		}
		/* Flash LED every 1000ms */
		unsigned now = get_ticks();
		if (now - ticks > 1000) {
			ticks = now;
			led_toggle(led_green);
		}
	}
}
