#include "ringbuffer.h"

#define SUCC(idx) (((idx) + 1) & self->size_mask)

void ringbuffer_set_overrun(struct ringbuffer *self)
{
	self->overrun = TRUE;
}

bool ringbuffer_clear_overrun(struct ringbuffer *self)
{
	bool value = self->overrun;
	self->overrun = FALSE;
	if (value) {
		ringbuffer_clear(self);
	}
	return value;
}

bool ringbuffer_pop_front(struct ringbuffer *self, char *value)
{
	if (self->overrun) {
		return FALSE;
	} else if (ringbuffer_is_empty(self)) {
		return FALSE;
	} else {
		*value = self->buffer[self->front];
		self->front = SUCC(self->front);
		return TRUE;
	}
}

bool ringbuffer_push_back(struct ringbuffer *self, char value)
{
	if (ringbuffer_is_full(self)) {
		ringbuffer_set_overrun(self);
		return FALSE;
	} else {
		self->buffer[self->back] = value;
		self->back = SUCC(self->back);
		return TRUE;
	}
}

void ringbuffer_clear(struct ringbuffer *self)
{
	self->front = 0;
	self->back = 0;
}

bool ringbuffer_is_empty(struct ringbuffer *self)
{
	return self->front == self->back;
}

bool ringbuffer_is_full(struct ringbuffer *self)
{
	return self->front == SUCC(self->back);
}

uint8_t ringbuffer_length(struct ringbuffer *self)
{
	return (self->back - self->front) & self->size_mask;
}
