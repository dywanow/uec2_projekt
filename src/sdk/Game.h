#ifndef SRC_GAME_H_
#define SRC_GAME_H_

#include "Arena.h"
#include "Keyboard.h"
#include "Timer.h"
#include "xparameters.h"
#include "xil_types.h"
#include "xil_printf.h"

class Game
{
public:
	Game();
	void Loop();

private:
	enum class States { BATTLE };

	States state;
	Arena arena;
	Keyboard keyboard;
	u8 pressed_key;
	Timer timer;
	uint32_t *arena_drawer;

	void HandleKeyboard();
	void HandleBattleInput();
	void Update(float dt);
	void Draw();
};

#endif /* SRC_GAME_H_ */
