#pragma once
#include <stdarg.h>

#ifndef NULL
#define NULL ((void *) 0)
#endif

struct range
{
	const char *begin;
	const char *end;
};

bool range_equal_range(const struct range *a, const struct range *b);
bool str_equal_range(const char *a, const struct range *b);
bool range_to_int(const struct range *s, int *value);
bool range_tokenise(struct range *str, struct range *token);

bool format_string(bool (*emit)(char), const char *format, ...);
bool format_string_args(bool (*emit)(char), const char *format, va_list ap);
