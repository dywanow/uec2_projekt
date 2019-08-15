#ifndef BOMBERMAN_H_
#define BOMBERMAN_H_

#include "Element.h"
#include "BombSet.h"
#include "xil_types.h"
#include "xil_printf.h"

class Bomberman : public Element
{
public:
	enum class MovementDirection { NONE, UP, DOWN, LEFT, RIGHT };

	Bomberman(uint8_t x, uint8_t y, uint32_t baseaddr, uint32_t bombs_baseaddr);

	void GoLeft();
	void GoRight();
	void GoUp();
	void GoDown();
	void Stop();
	void PlaceBomb();
	void Update();
	void Draw();

	MovementDirection GetMovementDirection() const;
	BombSet GetBombSet() const;

private:
	uint32_t *drawer;
	MovementDirection movement_direction;
	BombSet bomb_set;
};

#endif /* BOMBERMAN_H_ */
