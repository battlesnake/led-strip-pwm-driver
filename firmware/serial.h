#pragma once
#include "str.h"

/* Initialise UART @ 9600/8n1 */
void serial_setup();

/* Return true if data is available to read */
bool serial_read_peek();

/* Read from RX ringbuffer */
bool serial_read(char *ch);

/* Return and clear overrun flag of RX ringbuffer */
bool serial_read_overrun();

/* Write to TX ringbuffer, or return false if already full */
bool serial_write(char ch);

/* Blocking write of character to TX ringbuffer */
bool serial_write_char(char ch);

/* Blocking write of entire string to TX ringbuffer */
bool serial_write_string(const char *s);

/* Blocking write of entire range to TX ringbuffer */
bool serial_write_range(const struct range *s);

/* Blocking write of formatted string to TX ringbuffer */
#define serial_write_format(format, ...) format_string(serial_write_char, format, ##__VA_ARGS__)
