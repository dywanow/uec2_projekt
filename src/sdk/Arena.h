#ifndef SRC_ARENA_H_
#define SRC_ARENA_H_

#include "Block.h"
#include "Bomber.h"
#include "Bomb.h"
#include "xil_types.h"

class Arena
{
public:
	Arena();
	void Update(float dt);
	void Draw(uint32_t *drawer);

private:
	static const uint8_t SIZE = 16;
	static const uint8_t PLAYERS_NUMBER = 2;
	static const uint8_t BOMBS_NUMBER = 2;

	Block blocks[SIZE*SIZE];
	Bomber players[PLAYERS_NUMBER];
	Bomb bombs[BOMBS_NUMBER];
	uint8_t simple_view[SIZE*SIZE];
};

#endif  /* SRC_ARENAELEMENT_H_ */
