#pragma once
#include <stm8s.h>

struct ringbuffer
{
	unsigned char size;
	unsigned char size_mask;
	unsigned char head;
	unsigned char length;
	bool overrun;
	char buffer[];
};

#define DEFINE_RINGBUFFER(name, size_bits) \
		static union { \
			char bytes[sizeof(struct ringbuffer) + (1 << (size_bits))]; \
			struct ringbuffer rb; \
		} _##name = { \
			.rb = { \
				.size = (1 << (size_bits)), \
				.size_mask = (1 << (size_bits)) - 1 \
			} \
		}; \
		static struct ringbuffer *name = &_##name.rb;

void ringbuffer_set_overrun(struct ringbuffer *self);
bool ringbuffer_clear_overrun(struct ringbuffer *self);
bool ringbuffer_pop_front(struct ringbuffer *self, char *value);
bool ringbuffer_push_back(struct ringbuffer *self, char value);
void ringbuffer_clear(struct ringbuffer *self);
bool ringbuffer_is_empty(struct ringbuffer *self);
bool ringbuffer_is_full(struct ringbuffer *self);
unsigned char ringbuffer_length(struct ringbuffer *self);
