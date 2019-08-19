#ifndef SRC_TIMER_H_
#define SRC_TIMER_H_

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
	const uint8_t TIMER_NUMBER;
	const uint32_t FREQ;
	uint32_t ticks;
};

#endif /* SRC_TIMER_H_ */
