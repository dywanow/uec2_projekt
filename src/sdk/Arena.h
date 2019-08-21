#ifndef SRC_ARENA_H_
#define SRC_ARENA_H_

#include "Block.h"
#include "Bomberman.h"
#include "Bomb.h"
#include "xil_types.h"

class Arena
{
public:
	Arena();
	void Update(float dt);

private:
	static const uint8_t SIZE = 16;
	static const uint8_t PLAYERS_NUMBER = 2;
	static const uint8_t BOMBS_NUMBER = 2;

	Block blocks[SIZE*SIZE];
	Bomberman players[PLAYERS_NUMBER];
	Bomb bombs[BOMBS_NUMBER];
	Element::Type simple_view[SIZE*SIZE];
};

#endif  /* SRC_ARENAELEMENT_H_ */
