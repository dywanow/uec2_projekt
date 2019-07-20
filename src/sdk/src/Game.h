#ifndef SRC_GAME_H_
#define SRC_GAME_H_

#include "xparameters.h"
#include "xil_types.h"
#include "Bomberman.h"
#include "Arena.h"
#include "Block.h"
#include "Keyboard.h"



class Game
{
	Arena arena;
	Bomberman player1;
	Keyboard keyboard;

	u8 pressed_key;

public:
	Game();
	void Init();
	void Loop();
};

#endif /* SRC_GAME_H_ */
