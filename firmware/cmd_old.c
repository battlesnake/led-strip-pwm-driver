#include <stm8s.h>
#include "serial.h"
#include "str.h"
#include "pwm.h"

#include "cmd_old.h"

static void invalid_arg(const struct range *arg)
{
	serial_write_format("Invalid argument: <%S>%n", arg);
}

static void echo_pwm_value(enum pwm_channel channel)
{
	int value = pwm_get_duty(channel);
	serial_write_format("pwm %c value: %d%%%n", 'a' + channel, value);
}

static bool cli_execute_pwm_stop(enum pwm_channel channel)
{
	pwm_set_duty(channel, 0);
	echo_pwm_value(channel);
	return TRUE;
}

static bool cli_execute_pwm_set(struct range *line, enum pwm_channel channel)
{
	struct range arg;
	if (!range_tokenise(line, &arg)) {
		return FALSE;
	}
	int value;
	if (!range_to_int(&arg, &value)) {
		invalid_arg(&arg);
		return FALSE;
	}
	pwm_set_duty(channel, value);
	echo_pwm_value(channel);
	return TRUE;
}

static bool cli_execute_pwm_get(enum pwm_channel channel)
{
	echo_pwm_value(channel);
	return TRUE;
}

static bool cli_execute_pwm_delta(struct range *line, enum pwm_channel channel, bool invert)
{
	struct range arg;
	if (!range_tokenise(line, &arg)) {
		return FALSE;
	}
	int delta;
	if (!range_to_int(&arg, &delta) || delta < -100 || delta > 100) {
		invalid_arg(&arg);
		return FALSE;
	}
	if (invert) {
		delta = -delta;
	}
	int value = pwm_get_duty(channel);
	value += delta;
	pwm_set_duty(channel, value);
	echo_pwm_value(channel);
	return TRUE;
}

static bool cli_execute_pwm_ch(struct range *line, const struct range *command, enum pwm_channel channel)
{
	if (str_equal_range("set", command)) {
		return cli_execute_pwm_set(line, channel);
	} else if (str_equal_range("get", command)) {
		return cli_execute_pwm_get(channel);
	} else if (str_equal_range("inc", command)) {
		return cli_execute_pwm_delta(line, channel, FALSE);
	} else if (str_equal_range("dec", command)) {
		return cli_execute_pwm_delta(line, channel, TRUE);
	} else if (str_equal_range("stop", command)) {
		return cli_execute_pwm_stop(channel);
	} else {
		invalid_arg(command);
		return FALSE;
	}
}

static inline void memcpy(void *dest, const void *src, unsigned length)
{
	char *d = dest;
	const char *s = src;
	while (length--) {
		*d++ = *s++;
	}
}

static bool cli_execute_pwm(struct range *line)
{
	struct range command;
	struct range arg;
	if (!range_tokenise(line, &command)) {
		return FALSE;
	}
	if (!range_tokenise(line, &arg)) {
		return FALSE;
	}
	if (str_equal_range("cycle", &command)) {
		extern bool pwm_cycle;
		if (str_equal_range("off", &arg)) {
			pwm_cycle = 0;
		} else if (str_equal_range("fast", &arg)) {
			pwm_cycle = 4;
		} else if (str_equal_range("medium", &arg)) {
			pwm_cycle = 6;
		} else if (str_equal_range("slow", &arg)) {
			pwm_cycle = 8;
		} else {
			invalid_arg(&arg);
			return FALSE;
		}
		return TRUE;
	}
	if (str_equal_range("a", &arg)) {
		return cli_execute_pwm_ch(line, &command, pwm_a);
	} else if (str_equal_range("b", &arg)) {
		return cli_execute_pwm_ch(line, &command, pwm_b);
	} else if (str_equal_range("*", &arg)) {
		/* "line" gets mutated down the chain, so copy it for re-use */
		struct range line2;
		memcpy(&line2, line, sizeof(*line));
		return cli_execute_pwm_ch(line, &command, pwm_a) && cli_execute_pwm_ch(&line2, &command, pwm_b);
	} else {
		invalid_arg(&arg);
		return FALSE;
	}
}

bool cmd_old_execute(struct range *line)
{
	struct range command;
	if (!range_tokenise(line, &command)) {
		return FALSE;
	}
	if (str_equal_range("echo", &command)) {
		struct range text;
		if (!range_tokenise(line, &text)) {
			return FALSE;
		}
		text.end = line->end;
		serial_write_format("echo: %S%n", &text);
		return TRUE;
	} else if (str_equal_range("pwm", &command)) {
		return cli_execute_pwm(line);
	} else {
		invalid_arg(&command);
		return FALSE;
	}
}
