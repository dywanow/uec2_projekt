#ifndef BOMBERMAN_H_
#define BOMBERMAN_H_

#include "Element.h"
#include "xil_types.h"

class Block;
class BombSet;

class Bomber : public Element
{
public:
	enum class MovementDirection { NONE, UP, DOWN, LEFT, RIGHT };

	Bomber();
	Bomber(uint8_t x, uint8_t y, Element::Type type);

	void GoLeft();
	void GoRight();
	void GoUp();
	void GoDown();
	void Stop();

	uint8_t CollidesWithElement(const Element &element) const;
	void Update(float dt);

	MovementDirection GetMovementDirection() const;

private:
	static const float MOVE_TIME;
	MovementDirection movement_direction;
	float time;
};

#endif /* BOMBERMAN_H_ */
