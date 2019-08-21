#ifndef SRC_ARENA_H_
#define SRC_ARENA_H_


#include "Block.h"
#include "Bomber.h"
#include "Bomb.h"
#include "xil_types.h"

class Element;
class Block;
class Bomber;
class Bomb;

class Arena
{
public:
	static const uint16_t BLOCKS_NUMBER = 256;
	static const uint8_t PLAYERS_NUMBER = 2;
	static const uint8_t BOMBS_PER_PLAYER = 3;
	static const uint8_t BOMBS_NUMBER = PLAYERS_NUMBER*BOMBS_PER_PLAYER;
	static const uint16_t ELEMENTS_NUMBER = BLOCKS_NUMBER+PLAYERS_NUMBER+BOMBS_NUMBER;

	Element *elements[ELEMENTS_NUMBER];
	Block blocks[BLOCKS_NUMBER];
	Bomber players[PLAYERS_NUMBER];
	Bomb bombs[BOMBS_NUMBER];
	Element *view[BLOCKS_NUMBER];

	Arena();
	void Update(float dt);
	void Draw(uint32_t *drawer);

private:
	static const uint8_t WIDTH = 16;
	static const uint8_t HEIGHT = 16;
};

#endif  /* SRC_ARENAELEMENT_H_ */
