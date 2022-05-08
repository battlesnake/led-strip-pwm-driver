#pragma once
#include <stm8s.h>
#include "str.h"

bool cmd_execute_ascii(struct range *line);
bool cmd_execute_bytecode(struct range *line);
