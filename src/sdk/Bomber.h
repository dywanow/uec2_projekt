#ifndef BOMBERMAN_H_
#define BOMBERMAN_H_

#include "Element.h"
#include "xil_types.h"

class Bomber : public Element
{
public:
	enum class MovementDirection { NONE, UP, DOWN, LEFT, RIGHT };

	Bomber();
	void Update(float dt);
	void SetMovementDirection(MovementDirection movement_direction);
	void IncrementBombsNumber();
	void DecrementBombsNumber();
	void SetMaxBombsNumber(uint8_t max_bombs_number);
	MovementDirection GetMovementDirection() const;
	uint8_t GetBombsNumber() const;
	uint8_t GetMaxBombsNumber() const;

private:
	static const float MOVE_TIME;

	MovementDirection movement_direction;
	float time;
	uint8_t max_bombs_number;
	uint8_t bombs_number;
};

#endif /* BOMBERMAN_H_ */
