#include <stm8s.h>
#include "clock.h"
#include "uart.h"
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
	uart_setup();
	enableInterrupts();

	uart_write_string("Hello World!\r\n");

	int iterations = 3000;
	unsigned ticks = get_ticks();
	while (1) {
		wfi();
		if (uart_read_overrun()) {
			uart_write_string("error: RX buffer overrun\r\n");
		}
		/* Flip case of alpha chars, echo others verbatim */
		char ch;
		while (uart_read(&ch)) {
			if (ch > 0x40 && ch <= 0x5a) {
				ch += 0x20;
			} else if (ch > 0x60 && ch < 0x7a) {
				ch -= 0x20;
			}
			uart_write(ch);
			if (ch == '\r') {
				uart_write('\n');
			}
		}
		/* Write message every 1000ms */
		unsigned now = get_ticks();
		if (now - ticks > 1000) {
			ticks = now;
			GPIO_WriteReverse(GPIOA, GPIO_PIN_2);
		}
	}
}
