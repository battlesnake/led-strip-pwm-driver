#pragma once

void serial_setup();

bool serial_read_peek();
bool serial_read(char *ch);
bool serial_read_overrun();
bool serial_write(char ch);

bool serial_write_string(const char *s);
