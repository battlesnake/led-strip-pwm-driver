#pragma once
#include <stm8s.h>

struct string
{
	unsigned char length;
	unsigned char size;
	char buffer[];
};

#define DEFINE_STRING(name, size_bytes) \
		static union { \
			char bytes[sizeof(struct string) + size_bytes]; \
			struct string str; \
		} _##name = { .str = { .size = size_bytes } }; \
		static struct string *name = &_##name.str

void string_clear(struct string *self);

bool string_ch(struct string *self, char value);
bool string_str(struct string *self, const char *value);
bool string_int(struct string *self, int value);
bool string_uint(struct string *self, unsigned value);
bool string_bool(struct string *self, bool value);

const char *string_get(struct string *self);
