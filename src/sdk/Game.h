#ifndef SRC_GAME_H_
#define SRC_GAME_H_

#include "Bomberman.h"
#include "Block.h"
#include "Keyboard.h"
#include "Timer.h"
#include "BoardMemory.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"

class Game
{
public:
	Game();
	void Init();
	void Loop();

private:
	static const uint8_t BLOCKS_ROW_NUMBER = 16;
	static const uint8_t BLOCKS_COL_NUMBER = 16;
	static const uint8_t PLAYERS_NUMBER = 2;
	static const uint16_t BLOCKS_NUMBER = 256;

	Block blocks[256];
	Bomberman player1;
	Bomberman player2;
	Bomb bomb1;
	Bomb bomb2;
	Keyboard keyboard;
	u8 pressed_key;
	Timer timer;

	Bomberman *players[PLAYERS_NUMBER];
	Element *collidable_elements[258];

	BoardMemory bm;

	void HandleKeyboard();
	void HandleCollisions();
	void Update(float dt);
};

#endif /* SRC_GAME_H_ */
