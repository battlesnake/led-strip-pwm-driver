#include <stm8s.h>
#include <stdarg.h>
#include <serial_cli.h>
#include "serial.h"
#include "str.h"
#include "pwm.h"
#include "cmd.h"

/* Keyword indices */

enum keywords
{
	kw_help,
	kw_pwm,
	kw_stop,
	kw_dec,
	kw_inc,
	kw_get,
	kw_set,
	kw_a,
	kw_b,
	kw_asterisk,
	kw_off,
	kw_slow,
	kw_medium,
	kw_fast,
	kw_cycle,
	kw_ping,
};

#define KWIDX(name) CLI_KEYWORD_INDEX_TO_SPEC_KEYWORD(kw_##name)

static const cli_keyword keywords[] =
{
	"help",
	"pwm",
	"stop",
	"dec",
	"inc",
	"get",
	"set",
	"a",
	"b",
	"*",
	"off",
	"slow",
	"medium",
	"fast",
	"cycle",
	"ping",
	NULL,
};

/* Utilities */

static void pwm_echo(enum pwm_channel channel)
{
	int value = pwm_get_duty(channel);
	serial_write_format("pwm %c value: %d%%%n", 'a' + channel, value);
}

static void pwm_set_and_echo(enum pwm_channel channel, int value, int sign)
{
	int prev = pwm_get_duty(channel);
	if (value < -100) {
		value = -100;
	} else if (value > 100) {
		value = 100;
	}
	if (sign < 0) {
		value = prev - value;
	} else if (sign > 0) {
		value += prev;
	}
	pwm_set_duty(channel, value);
	int current = pwm_get_duty(channel);
	serial_write_format("pwm %c value: %d%% -> %d%%%n", 'a' + channel, prev, current);
}

/* Command implementations */

static const struct cli_language_definition lang;

static CLI_COMMAND_HANDLER(exec_help, bytecode, def)
{
	list_all_commands(&lang);
	return cli_command_success;
}

static CLI_COMMAND_HANDLER(exec_ping, bytecode, def)
{
	serial_write_format("Ping!%n");
	return cli_command_success;
}

static CLI_COMMAND_HANDLER(exec_pwm_stop, bytecode, def)
{
	expression_token ch = CLI_EXPR_KEYWORD_TO_KEYWORD_INDEX((*bytecode)[2]);
	if (ch == kw_a || ch == kw_asterisk) {
		pwm_set_and_echo(pwm_a, 0, 0);
	}
	if (ch == kw_b || ch == kw_asterisk) {
		pwm_set_and_echo(pwm_b, 0, 0);
	}
	return cli_command_success;
}

static CLI_COMMAND_HANDLER(exec_pwm_get, bytecode, def)
{
	expression_token ch = CLI_EXPR_KEYWORD_TO_KEYWORD_INDEX((*bytecode)[2]);
	if (ch == kw_a || ch == kw_asterisk) {
		pwm_echo(pwm_a);
	}
	if (ch == kw_b || ch == kw_asterisk) {
		pwm_echo(pwm_b);
	}
	return cli_command_success;
}

static CLI_COMMAND_HANDLER(exec_pwm_set, bytecode, def)
{
	int op = CLI_EXPR_KEYWORD_TO_KEYWORD_INDEX((*bytecode)[1]);
	int ch = CLI_EXPR_KEYWORD_TO_KEYWORD_INDEX((*bytecode)[2]);
	int value = CLI_EXPR_NUMBER_TO_INT((*bytecode)[3]);
	if (value < -100 || value > 100) {
		return cli_command_invalid_argument;
	}
	int sign = op == kw_inc ? 1 : op == kw_dec ? -1 : 0;
	if (ch == kw_a || ch == kw_asterisk) {
		pwm_set_and_echo(pwm_a, value, sign);
	}
	if (ch == kw_b || ch == kw_asterisk) {
		pwm_set_and_echo(pwm_b, value, sign);
	}
	return cli_command_success;
}

static CLI_COMMAND_HANDLER(exec_pwm_cycle, bytecode, def)
{
	expression_token ch = CLI_EXPR_KEYWORD_TO_KEYWORD_INDEX((*bytecode)[2]);
	extern uint8_t pwm_cycle;
	if (ch == kw_off) {
		pwm_cycle = 0;
	} else if (ch == kw_slow) {
		pwm_cycle = 8;
	} else if (ch == kw_medium) {
		pwm_cycle = 6;
	} else if (ch == kw_fast) {
		pwm_cycle = 4;
	}
	return cli_command_success;
}

/* Command definitions */

static const struct cli_command_definition commands[] =
{
	{
		.syntax = { KWIDX(help) },
		.handler = exec_help,
	},
	{
		.syntax = { KWIDX(ping) },
		.handler = exec_ping,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(stop), KWIDX(a) },
		.handler = exec_pwm_stop,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(stop), KWIDX(b) },
		.handler = exec_pwm_stop,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(stop), KWIDX(asterisk) },
		.handler = exec_pwm_stop,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(get), KWIDX(a) },
		.handler = exec_pwm_get,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(get), KWIDX(b) },
		.handler = exec_pwm_get,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(get), KWIDX(asterisk) },
		.handler = exec_pwm_get,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(set), KWIDX(a), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(set), KWIDX(b), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(set), KWIDX(asterisk), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(inc), KWIDX(a), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(inc), KWIDX(b), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(inc), KWIDX(asterisk), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(dec), KWIDX(a), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(dec), KWIDX(b), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(dec), KWIDX(asterisk), CLI_SPEC_NUMBER },
		.handler = exec_pwm_set,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(cycle), KWIDX(off) },
		.handler = exec_pwm_cycle,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(cycle), KWIDX(medium) },
		.handler = exec_pwm_cycle,
	},
	{
		.syntax = { KWIDX(pwm), KWIDX(cycle), KWIDX(fast) },
		.handler = exec_pwm_cycle,
	},
	{
		.handler = NULL,
	},
};

static const struct cli_language_definition lang =
{
	.keywords = keywords,
	.commands = commands,
};

#define TEST_RESULT(value, group, condition) \
		do { \
			if ((value) == (group##_##condition)) {\
				serial_write_format("error: %s%n", #condition); \
				return FALSE; \
			} \
		} while (0)

static bool execute_bytecode(cli_expression *bytecode)
{
	const struct cli_command_definition *def;
	enum match_command_result mcr = match_command(&lang, bytecode, &def);
	TEST_RESULT(mcr, match_command, fail);
	TEST_RESULT(mcr, match_command, invalid_token);
	enum cli_command_result ccr = def->handler(bytecode, def);
	TEST_RESULT(mcr, cli_command, fail);
	TEST_RESULT(mcr, cli_command, invalid_argument);
	return TRUE;
}

bool cmd_execute_ascii(struct range *line)
{
	cli_expression bytecode;
	enum parse_long_command_result plcr = parse_long_command(&lang, line->begin, line->end, &bytecode);
	TEST_RESULT(plcr, parse_long_command, invalid_token);
	TEST_RESULT(plcr, parse_long_command, too_many_tokens);
	return execute_bytecode(&bytecode);
}

bool cmd_execute_bytecode(struct range *line)
{
	cli_expression bytecode;
	int in_len = line->end - line->begin;
	if (in_len < 0 || in_len > sizeof(cli_expression) || (in_len & 1)) {
		return FALSE;
	}
	char *o_it = (char *) &bytecode;
	char *o_end = o_it + sizeof(bytecode);
	for (const char *it = line->begin; it != line->end; ++it, ++o_it) {
		*o_it++ = *it++;
	}
	while (o_it != o_end) {
		*o_it++ = 0;
	}
	return execute_bytecode(&bytecode);
}

int printf(const char *format, ...)
{
	va_list ap;
	va_start(ap, format);
	bool result = format_string_args(serial_write_char, format, ap);
	va_end(ap);
	return 1;
}
