#ifndef BOMBERMAN_H_
#define BOMBERMAN_H_

#include "Element.h"
#include "xil_types.h"

class Bomber : public Element
{
public:
	enum class Movement { NONE, UP, DOWN, LEFT, RIGHT };

	Bomber();
	void Update(float dt);
	void SetMovement(Movement movement);
	void IncrementBombsNumber();
	void DecrementBombsNumber();
	void SetMaxBombsNumber(uint8_t max_bombs_number);
	Movement GetMovement() const;
	uint8_t GetBombsNumber() const;
	uint8_t GetMaxBombsNumber() const;

private:
	static const float MOVE_TIME;

	Movement movement;
	float time;
	uint8_t max_bombs_number;
	uint8_t bombs_number;
};

#endif /* BOMBERMAN_H_ */
