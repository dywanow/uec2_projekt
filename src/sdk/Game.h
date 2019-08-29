#ifndef SRC_GAME_H_
#define SRC_GAME_H_

#include "Menu.h"
#include "Battle.h"
#include "Endgame.h"
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
    enum class States { MENU, BATTLE, ENDGAME };

    States state;
    Keyboard keyboard;
    u8 pressed_key;
    Scene *current_scene;
    Menu menu;
    Battle battle;
    Endgame endgame;
    Timer timer;
    uint32_t * const axi_scenes_data;

    void HandleKeyboard();
    void Update(float dt);
    void Draw();
    void SwitchScene();
};

#endif /* SRC_GAME_H_ */
