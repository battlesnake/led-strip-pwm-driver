#include <stm8s.h>
#include "ringbuffer.h"

DEFINE_RINGBUFFER(rx_buf, 6)
DEFINE_RINGBUFFER(tx_buf, 6)

bool uart_read_peek()
{
	return ! ringbuffer_is_empty(rx_buf);
}

bool uart_read(char *value)
{
	return ringbuffer_pop_front(rx_buf, value);
}

bool uart_read_overrun()
{
	return ringbuffer_clear_overrun(rx_buf);
}

bool uart_write(char value)
{
	if (!ringbuffer_push_back(tx_buf, value)) {
		return FALSE;
	}
	/* Trigger interrupt if buffer was empty previously */
	UART1_ITConfig(UART1_IT_TXE, ENABLE);
	return TRUE;
}

bool uart_write_string(const char *s)
{
	while (*s) {
		while (ringbuffer_is_full(tx_buf)) {
			nop();
		}
		if (!uart_write(*s++)) {
			return FALSE;
		}
	}
	return TRUE;
}

bool uart_write_overrun()
{
	return ringbuffer_clear_overrun(tx_buf);
}

INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
{
	/* Clear buffer if overrun occurred, and set overrun flag */
	if (UART1_GetFlagStatus(UART1_FLAG_OR)) {
		ringbuffer_set_overrun(rx_buf);
		UART1_ClearITPendingBit(UART1_IT_OR);
		UART1_ClearFlag(UART1_FLAG_OR);
	}
	/* Read byte */
	char value = UART1_ReceiveData8();
	UART1_ClearITPendingBit(UART1_IT_RXNE);
	UART1_ClearFlag(UART1_FLAG_RXNE);
	/* Write byte to buffer */
	ringbuffer_push_back(rx_buf, value);
	GPIO_WriteReverse(GPIOA, GPIO_PIN_1);
}

INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
{
	char value;
	bool valid = ringbuffer_pop_front(tx_buf, &value);
	if (valid) {
		UART1_SendData8(value);
	}
	if (!valid || ringbuffer_is_empty(tx_buf)) {
		UART1_ITConfig(UART1_IT_TXE, DISABLE);
	}
	GPIO_WriteReverse(GPIOA, GPIO_PIN_2);
}
