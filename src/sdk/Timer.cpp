#include "Timer.h"

Timer::Timer(uint32_t baseaddr, uint8_t id, uint32_t freq, uint8_t number) : TIMER_NUMBER(number), FREQ(freq)
{
	XTmrCtr_Initialize(&timer, id);
}

void Timer::Start()
{
	Reset();
	XTmrCtr_Start(&timer, TIMER_NUMBER);
}

void Timer::Stop()
{
	XTmrCtr_Stop(&timer, TIMER_NUMBER);
}

void Timer::Reset()
{
	ticks = 0;
	XTmrCtr_Reset(&timer, TIMER_NUMBER);
}

uint32_t Timer::GetValue()
{
	return XTmrCtr_GetValue(&timer, TIMER_NUMBER);
}

float Timer::GetElapsedTime()
{
	uint32_t current_ticks = GetValue();
	Reset();
	return (float)(current_ticks - ticks) / FREQ;
}
