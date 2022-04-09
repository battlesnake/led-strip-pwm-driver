#include <stm8s.h>
#include "serial.h"
#include "ringbuffer.h"
#include "led.h"

DEFINE_RINGBUFFER(rx_buf, 6);
DEFINE_RINGBUFFER(tx_buf, 6);

bool serial_read_peek()
{
	return ! ringbuffer_is_empty(rx_buf);
}

bool serial_read(char *value)
{
	return ringbuffer_pop_front(rx_buf, value);
}

bool serial_read_overrun()
{
	return ringbuffer_clear_overrun(rx_buf);
}

bool serial_write(char value)
{
	if (!ringbuffer_push_back(tx_buf, value)) {
		return FALSE;
	}
	/* Enable interrupt on ready-to-write */
	UART1_ITConfig(UART1_IT_TXE, ENABLE);
	return TRUE;
}

bool serial_write_char(char ch)
{
	while (ringbuffer_is_full(tx_buf)) {
		nop();
	}
	if (!serial_write(ch)) {
		return FALSE;
	}
	return TRUE;
}

bool serial_write_string(const char *s)
{
	while (*s) {
		if (!serial_write_char(*s++)) {
			return FALSE;
		}
	}
	return TRUE;
}

bool serial_write_range(const struct range *s)
{
	const char *it = s->begin;
	const char *end = s->end;
	while (it != end) {
		if (!serial_write_char(*it++)) {
			return FALSE;
		}
	}
	return TRUE;
}

bool serial_write_overrun()
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
	led_toggle(led_blue);
}

INTERRUPT_HANDLER(UART1_TX_IRQHandler, 17)
{
	char value;
	if (ringbuffer_pop_front(tx_buf, &value)) {
		UART1_SendData8(value);
	} else {
		/* Buffer empty / overrun pending - stop writing */
		UART1_ITConfig(UART1_IT_TXE, DISABLE);
	}
}

void serial_setup()
{
	UART1_DeInit();

	/* 9600/8n1 */
	UART1_Init(serial_baud, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);

	/* RX interrupt */
	UART1_ITConfig(UART1_IT_RXNE_OR, ENABLE);

	/* TX interrupt */
	UART1_ITConfig(UART1_IT_TXE, ENABLE);

	UART1_Cmd(ENABLE);
}
