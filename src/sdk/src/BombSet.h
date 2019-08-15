#ifndef SRC_BOMBSET_H_
#define SRC_BOMBSET_H_

#include "Element.h"
#include "Bomb.h"
#include "xil_types.h"
#include "xparameters.h"

class Bomberman;

class BombSet
{
public:
	static uint8_t const MAX_BOMBS_NUMBER = 4;

	BombSet(Bomberman *owner, uint32_t baseaddr);

	void ActivateBomb();

	void Update();
	void Draw();


	uint8_t GetActiveBombsNumber() const;

private:
	Bomberman *owner;
	uint32_t *drawer;
	Bomb bombs[MAX_BOMBS_NUMBER];
	uint8_t active_bombs_number;
};

#endif /* SRC_BOMBSET_H_ */
