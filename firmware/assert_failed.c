#include <stm8s.h>
#include "str.h"

static bool write_char(char c)
{
	UART1_SendData8(c);
	while ((UART1->SR & UART1_SR_TXE) == 0) ;
	return TRUE;
}

void assert_failed(const char* file, uint32_t line)
{
	disableInterrupts();
	format_string(write_char, "%nASSERT FAILED @ %s:%u%n", file, (int) line);
	while (1) {
		nop();
	}
}
