#include <stm8s.h>
#include "string_builder.h"

void string_clear(struct string *self)
{
	self->length = 0;
}

bool string_ch(struct string *self, char value)
{
	if (self->length >= self->size - 2) {
		return FALSE;
	}
	self->buffer[self->length++] = value;
	return TRUE;
}

bool string_str(struct string *self, const char *value)
{
	for (; *value; ++value) {
		if (!string_ch(self, *value)) {
			return FALSE;
		}
	}
	return TRUE;
}

bool string_int(struct string *self, int value)
{
	if (value < 0) {
		if (!string_ch(self, '-')) {
			return FALSE;
		}
	}
	return string_uint(self, -value);
}

bool string_uint(struct string *self, unsigned value)
{
	if (value == 0) {
		return string_ch(self, '0');
	}
	char buf[5];
	int8_t idx = 0;
	for (; value; value /= 10) {
		buf[++idx] = '0' + (value % 10);
	}
	for (--idx; idx >= 0; --idx) {
		if (!string_ch(self, buf[idx])) {
			return FALSE;
		}
	}
	return TRUE;
}

bool string_bool(struct string *self, bool value)
{
	return string_ch(self, value ? 'Y' : 'N');
}

const char *string_get(struct string *self)
{
	self->buffer[self->length] = 0;
	return self->buffer;
}
