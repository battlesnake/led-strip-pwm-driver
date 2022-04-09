#pragma once
#include <stm8s.h>

struct ringbuffer
{
	uint8_t size;
	uint8_t size_mask;
	uint8_t front;
	uint8_t back;
	bool overrun;
	char buffer[];
};

/* One byte in the buffer is wasted, so size_bits==3 gives capacity of 7 */

/* Define a statically-allocated ringbuffer with 1<<size_bits byte capacity */
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
		static struct ringbuffer *name = (&_##name.rb)

/* Set the overrun flag and clear the buffer */
void ringbuffer_set_overrun(struct ringbuffer *self);

/* Return the value of the overrun-flag and clear it */
bool ringbuffer_clear_overrun(struct ringbuffer *self);

/*
 * Read oldest item from front of ringbuffer
 *
 * Fails if overrun flag is set or if buffer is empty
 */
bool ringbuffer_pop_front(struct ringbuffer *self, char *value);

/*
 * Write new item to back of ringbuffer (return false if failed)
 *
 * Fails if buffer is full, sets overrun flag in that case
 */
bool ringbuffer_push_back(struct ringbuffer *self, char value);

/* Clear ringbuffer */
void ringbuffer_clear(struct ringbuffer *self);

/* Check if ringbuffer is empty */
bool ringbuffer_is_empty(struct ringbuffer *self);

/* Check if ringbuffer is full */
bool ringbuffer_is_full(struct ringbuffer *self);

/* Get length of data in ringbuffer */
uint8_t ringbuffer_length(struct ringbuffer *self);
