#include "ringbuffer.h"

void ringbuffer_set_overrun(struct ringbuffer *self)
{
	self->overrun = TRUE;
	self->length = 0;
}

bool ringbuffer_clear_overrun(struct ringbuffer *self)
{
	bool value = self->overrun;
	self->overrun = FALSE;
	return value;
}

bool ringbuffer_pop_front(struct ringbuffer *self, char *value)
{
	if (self->overrun) {
		return FALSE;
	} else if (self->length == 0) {
		return FALSE;
	} else {
		*value = self->buffer[self->head];
		self->head = (self->head + 1) & self->size_mask;
		self->length--;
		return TRUE;
	}
}

bool ringbuffer_push_back(struct ringbuffer *self, char value)
{
	if (self->length == self->size) {
		self->overrun = TRUE;
		return FALSE;
	} else {
		unsigned char pos = (self->head + self->length) & self->size_mask;
		self->buffer[pos] = value;
		self->length++;
		return TRUE;
	}
}

void ringbuffer_clear(struct ringbuffer *self)
{
	self->length = 0;
}

bool ringbuffer_is_empty(struct ringbuffer *self)
{
	return self->length == 0;
}

bool ringbuffer_is_full(struct ringbuffer *self)
{
	return self->length == self->size;
}

unsigned char ringbuffer_length(struct ringbuffer *self)
{
	return self->length;
}
