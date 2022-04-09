#include <stm8s.h>
#include "serial.h"

void assert_failed(const char* file, uint32_t line)
{
	serial_write_format("%nASSERT FAILED @ %s:%u%n", file, (int) line);
	while (1) {
		nop();
	}
}
