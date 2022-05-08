#include <stm8s.h>
#include <stdarg.h>
#include "str.h"

bool range_equal_range(const struct range *a, const struct range *b)
{
	const char *a_it = a->begin;
	const char *a_end = a->end;
	const char *b_it = b->begin;
	const char *b_end = b->end;
	if (a_end - a_it != b_end - b_it) {
		return FALSE;
	}
	while (a_it != a_end) {
		if (*a_it++ != *b_it++) {
			return FALSE;
		}
	}
	return TRUE;
}

bool str_equal_range(const char *a, const struct range *b)
{
	const char *a_it = a;
	const char *b_it = b->begin;
	const char *b_end = b->end;
	while (b_it != b_end) {
		if (*a_it == 0 || *a_it++ != *b_it++) {
			return FALSE;
		}
	}
	return *a_it == 0;
}

bool range_to_int(const struct range *s, int *value)
{
	const char *it = s->begin;
	const char *end = s->end;
	if (it == end) {
		return FALSE;
	}
	bool negative = *it == '-';
	if (negative) {
		it++;
	}
	if (it == end) {
		return FALSE;
	}
	int result = 0;
	for (; it != end; ++it) {
		char c = *it;
		if (c < '0' || c > '9') {
			return FALSE;
		}
		result *= 10;
		result += c - '0';
	}
	if (negative) {
		result = -result;
	}
	*value = result;
	return TRUE;
}

bool range_tokenise(struct range *str, struct range *token)
{
	token->begin = str->begin;
	while (token->begin != str->end && *token->begin == ' ') {
		token->begin++;
	}
	token->end = token->begin;
	while (token->end != str->end && *token->end != ' ') {
		token->end++;
	}
	str->begin = token->end;
	return token->begin != token->end;
}

bool format_string(bool (*emit)(char), const char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	bool result = format_string_args(emit, format, ap);
	va_end(ap);
	return result;
}

bool format_string_args(bool (*emit)(char), const char *format, va_list ap)
{
	bool esc = FALSE;
	for (; *format; ++format) {
		char ch = *format;
		if (esc) {
			esc = FALSE;
			if (ch == '%') {
				if (!emit('%')) {
					return FALSE;
				}
			} else if (ch == 'n') {
				if (!emit('\r')) {
					return FALSE;
				}
				if (!emit('\n')) {
					return FALSE;
				}
			} else if (ch == 'c') {
				char c = va_arg(ap, int);
				if (!emit(c)) {
					return FALSE;
				}
			} else if (ch == 'S') {
				const struct range *s = va_arg(ap, const struct range *);
				for (const char *it = s->begin; it != s->end; ++it) {
					if (!emit(*it)) {
						return FALSE;
					}
				}
			} else if (ch == 's') {
				for (const char *s = va_arg(ap, const char *); *s; ++s) {
					if (!emit(*s)) {
						return FALSE;
					}
				}
			} else if (ch == 'd' || ch == 'u') {
				unsigned u;
				if (ch == 'd') {
					int d = va_arg(ap, int);
					if (d < 0) {
						if (!emit('-')) {
							return FALSE;
						}
						d = -d;
					}
					u = d;
				} else {
					u = va_arg(ap, unsigned);
				}
				char reverse_buf[10];
				int idx = 0;
				do {
					reverse_buf[idx++] = u % 10;
					u /= 10;
				} while (u > 0);
				for (idx--; idx >= 0; idx--) {
					if (!emit(reverse_buf[idx] + '0')) {
						return FALSE;
					}
				}
			} else if (ch == 'b') {
				bool b = va_arg(ap, bool);
				if (!emit(b ? 'Y' : 'N')) {
					return FALSE;
				}
			} else {
				if (!emit('?')) {
					return FALSE;
				}
				return FALSE;
			}
		} else if (ch == '%') {
			esc = TRUE;
		} else {
			if (!emit(ch)) {
				return FALSE;
			}
		}
	}
	return TRUE;
}
