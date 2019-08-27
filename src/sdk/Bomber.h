#ifndef BOMBERMAN_H_
#define BOMBERMAN_H_

#include "Element.h"
#include "xil_types.h"

class Bomber : public Element
{
public:
	enum class Movement { NONE, UP, DOWN, LEFT, RIGHT };

	Bomber();
	void MakeMove(Movement movement);
	void IncrementCurrentBombsNumber();
	void DecrementBombsNumber();
	void SetMaxBombsNumber(uint8_t max_bombs_number);
	uint8_t CurrentBombsNumber() const;
	uint8_t MaxBombsNumber() const;
	void Update(float dt);

private:
	static const float MOVE_TIME;

	Movement movement;
	float time;
	uint8_t max_bombs_number;
	uint8_t current_bombs_number;

	uint8_t Collides(const Vector &element_position) const;
};

#endif /* BOMBERMAN_H_ */
