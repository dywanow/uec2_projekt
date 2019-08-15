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
public:
	Game();
	void Init();
	void Loop();

private:
	Arena arena;
	Bomberman player1;
	Bomberman player2;
	Keyboard keyboard;
	u8 pressed_key;

	void HandleKeyboard();
	void HandleCollisions();
	void UpdateScreen();
};

#endif /* SRC_GAME_H_ */
