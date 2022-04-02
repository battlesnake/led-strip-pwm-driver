#pragma once

bool uart_read(char *ch);
bool uart_read_overrun();
bool uart_write(char ch);

bool uart_write_string(const char *s);
