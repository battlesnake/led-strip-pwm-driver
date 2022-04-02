#include <stm8s.h>

#define UART_RX_BUFSIZE_BITS (6)
#define UART_RX_BUFSIZE (1 << UART_RX_BUFSIZE_BITS)
#define UART_RX_BUFSIZE_MOD (UART_RX_BUFSIZE - 1)
#define BUF_INDEX unsigned char

static char rx_buf[UART_RX_BUFSIZE];
static unsigned BUF_INDEX rx_buf_head = 0;
static unsigned BUF_INDEX rx_buf_length = 0;
static bool rx_buf_overrun = FALSE;

static void rx_buf_push_back(char c)
{
	if (rx_buf_length == UART_RX_BUFSIZE) {
		rx_buf_overrun = TRUE;
	} else {
		BUF_INDEX pos = (rx_buf_head + rx_buf_length) & UART_RX_BUFSIZE_MOD;
		rx_buf[pos] = c;
		rx_buf_length++;
	}
}

static bool rx_buf_clear_overrun()
{
	bool value = rx_buf_overrun;
	rx_buf_overrun = FALSE;
	return value;
}

static bool rx_buf_pop_front(char *ch)
{
	if (rx_buf_overrun) {
		return FALSE;
	} else if (rx_buf_length == 0) {
		return FALSE;
	} else {
		*ch = rx_buf[rx_buf_head];
		rx_buf_head = (rx_buf_head + 1) & UART_RX_BUFSIZE_MOD;
		rx_buf_length--;
		return TRUE;
	}
}

static bool rx_buf_clear()
{
	rx_buf_length = 0;
}

bool uart_read(char *ch)
{
	return rx_buf_pop_front(ch);
}

bool uart_read_overrun()
{
	return rx_buf_clear_overrun();
}

bool uart_write(char ch)
{
	UART1_SendData8(ch);
	while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET) {
		nop();
	}
	return TRUE;
}

bool uart_write_string(const char *s)
{
	while (*s) {
		uart_write(*s++);
	}
	return TRUE;
}

INTERRUPT_HANDLER(UART1_RX_IRQHandler, 18)
{
	/* Clear buffer if overrun occurred, and set overrun flag */
	if (UART1_GetFlagStatus(UART1_FLAG_OR)) {
		rx_buf_clear();
		rx_buf_overrun = TRUE;
		UART1_ClearITPendingBit(UART1_IT_OR);
		UART1_ClearFlag(UART1_FLAG_OR);
	}
	/* Read byte */
	char ch = UART1_ReceiveData8();
	UART1_ClearITPendingBit(UART1_IT_RXNE);
	UART1_ClearFlag(UART1_FLAG_RXNE);
	/* Write byte to buffer */
	rx_buf_push_back(ch);
}
