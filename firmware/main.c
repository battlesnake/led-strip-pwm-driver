#include "stm8s.h"

void assert_failed(uint8_t* file, uint32_t line)
{
	(void) file;
	(void) line;
	while (1) {
		nop();
	}
}

static void clock_setup()
{
	CLK_DeInit();

	/* HSE = undefined */
	CLK_HSECmd(DISABLE);
	/* LSI = 128 kHz */
	CLK_LSICmd(DISABLE);
	/* HSI = 16 MHz */
	CLK_HSICmd(ENABLE);
	while (CLK_GetFlagStatus(CLK_FLAG_HSIRDY) == FALSE) ;

	CLK_ClockSwitchCmd(ENABLE);
	/* HSIDIV = HSI / 8 = 2 MHz */
	CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV8);
	/* CPUCLK = HSIDIV / 8 = 250kHz */
	CLK_SYSCLKConfig(CLK_PRESCALER_CPUDIV8);

	CLK_ClockSwitchConfig(CLK_SWITCHMODE_AUTO, CLK_SOURCE_HSI, DISABLE, CLK_CURRENTCLOCKSTATE_ENABLE);

	/* Clocked peripherals */
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_I2C, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_UART1, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER1, ENABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_TIMER2, ENABLE);
	/* Unclocked peripherals */
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_SPI, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_ADC, DISABLE);
	CLK_PeripheralClockConfig(CLK_PERIPHERAL_AWU, DISABLE);
}

static void gpio_setup()
{
	/* A1, A2 = LEDs 1/2 */
	GPIO_DeInit(GPIOA);
	GPIO_Init(GPIOA, GPIO_PIN_1, GPIO_MODE_OUT_PP_LOW_SLOW);
	GPIO_Init(GPIOA, GPIO_PIN_2, GPIO_MODE_OUT_PP_HIGH_SLOW);

	/* C3, C4, C5 = Rotary encoder B/Q/I */
	GPIO_DeInit(GPIOC);
	GPIO_Init(GPIOC, GPIO_PIN_3, GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOC, GPIO_PIN_4, GPIO_MODE_IN_PU_IT);
	GPIO_Init(GPIOC, GPIO_PIN_5, GPIO_MODE_IN_PU_IT);
}

static void uart_setup()
{
	UART1_DeInit();

	/* 9600/8n1 */
	UART1_Init(9600, UART1_WORDLENGTH_8D, UART1_STOPBITS_1, UART1_PARITY_NO, UART1_SYNCMODE_CLOCK_DISABLE, UART1_MODE_TXRX_ENABLE);

	UART1_Cmd(ENABLE);
}

void main()
{
	clock_setup();
	gpio_setup();
	uart_setup();

	for (const char *s = "Hello world!\r\n"; *s; ++s) {
		UART1_SendData8(*s);
		while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET) ;
	}

	int iterations = 100;
	while (1) {
		/* Rotary */
		bool a = FALSE;
		bool b = FALSE;
		bool c = FALSE;
		for (unsigned int i = 0; i < iterations; ++i) {
			a = a || (GPIO_ReadInputPin(GPIOC, GPIO_PIN_3) == 0);
			b = b || (GPIO_ReadInputPin(GPIOC, GPIO_PIN_4) == 0);
			c = c || (GPIO_ReadInputPin(GPIOC, GPIO_PIN_5) == 0);
		}
		if (a) {
			iterations = 400;
		} else {
			iterations = 100;
		}
		if (!b) {
			GPIO_WriteReverse(GPIOA, GPIO_PIN_1);
		}
		if (!c) {
			GPIO_WriteReverse(GPIOA, GPIO_PIN_2);
		}
		/* UART */
		if(UART1_GetFlagStatus(UART1_FLAG_RXNE) == TRUE) {
			char ch = UART1_ReceiveData8();
			UART1_ClearFlag(UART1_FLAG_RXNE);
			UART1_SendData8(ch);
			while (UART1_GetFlagStatus(UART1_FLAG_TXE) == RESET) ;
		}
	}
}
