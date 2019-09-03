#ifndef SRC_GAME_H_
#define SRC_GAME_H_

#include "Scene.h"
#include "Menu.h"
#include "HowToPlay.h"
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
    Keyboard keyboard;
    u8 pressed_key;
    Scene *current_scene;
    Menu menu;
    HowToPlay how_to_play;
    Battle battle;
    Endgame endgame;
    Timer timer;
    uint32_t * const axi_scenes_data;

    void HandleKeyboard();
    void Update(float dt);
    void Draw();
};

#endif /* SRC_GAME_H_ */
