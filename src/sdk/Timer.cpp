#include "Timer.h"

Timer::Timer(uint32_t baseaddr, uint8_t id, uint32_t freq, uint8_t number)
    : timer_number(number),
      freq(freq)
{
    XTmrCtr_Initialize(&timer, id);
}

void Timer::Start()
{
    Reset();
    XTmrCtr_Start(&timer, timer_number);
}

void Timer::Stop()
{
    XTmrCtr_Stop(&timer, timer_number);
}

void Timer::Reset()
{
    ticks = 0;
    XTmrCtr_Reset(&timer, timer_number);
}

uint32_t Timer::GetValue()
{
    return XTmrCtr_GetValue(&timer, timer_number);
}

float Timer::GetElapsedTime()
{
    uint32_t current_ticks = GetValue();
    Reset();
    return (float)(current_ticks - ticks) / freq;
}
