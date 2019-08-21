#ifndef SRC_BOMB_H_
#define SRC_BOMB_H_

#include "Element.h"
#include "xil_types.h"

class Bomber;

class Bomb : public Element
{
public:
	Bomb();

	void SetTime(float time);
	float GetTime() const;

	void Update(float dt);

private:
	static const uint8_t ACTIVE_TIME = 4;

	float time;

};

#endif /* SRC_BOMB_H_ */
