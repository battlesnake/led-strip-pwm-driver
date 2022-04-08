#include <stm8s.h>

static uint16_t ticks;

uint16_t get_ticks()
{
	return ticks;
}

INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
{
	++ticks;
	TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}

static void timer_setup()
{
	TIM1_DeInit();
	TIM1_TimeBaseInit(1000, TIM1_COUNTERMODE_UP, 1, 0);
	TIM1_ITConfig(TIM1_IT_UPDATE, ENABLE);
	TIM1_Cmd(ENABLE);
}

void clock_setup()
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

	timer_setup();
}
