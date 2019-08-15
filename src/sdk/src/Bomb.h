#ifndef SRC_BOMB_H_
#define SRC_BOMB_H_

#include "Element.h"
#include "xil_types.h"
#include "xparameters.h"

class Bomb : public Element
{
public:
	Bomb();

	void SetActive(uint8_t active);
	uint8_t GetActive() const;

private:
	static const uint8_t BOMB_TIME = 3;
	static const uint8_t BOMB_RANGE = 3;

	uint8_t active;
	uint32_t delta_time;

};

#endif /* SRC_BOMB_H_ */
