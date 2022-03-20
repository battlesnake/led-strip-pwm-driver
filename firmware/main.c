#include "stm8s.h"

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
	while (1) {
		nop();
	}
}
