#ifndef TIMER_H
#define TIMER_H

#include "xtmrctr.h"
#include "xil_types.h"

class Timer
{
public:
    Timer(uint32_t baseaddr, uint8_t id, uint32_t freq, uint8_t number);

    void Start();
    void Stop();
    void Reset();
    uint32_t GetValue();
    float GetElapsedTime();

private:
    XTmrCtr timer;
    const uint8_t timer_number;
    const uint32_t freq;
    uint32_t ticks;
};

#endif
