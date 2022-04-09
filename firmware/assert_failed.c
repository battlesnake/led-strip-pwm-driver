#include <stm8s.h>
#include "string_builder.h"

DEFINE_STRING(message, 40);

void assert_failed(const char* file, uint32_t line)
{
	string_clear(message);
	string_str(message, "ASSERT FAILED @ ");
	string_str(message, file);
	string_ch(message, ':');
	string_uint(message, line);
	string_ch(message, '\r');
	string_ch(message, '\n');
	for (const char *s = string_get(message); *s; ++s) {
		UART1_SendData8(*s);
	}
	while (1) {
		nop();
	}
}
