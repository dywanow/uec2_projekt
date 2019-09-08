#ifndef GAME_H
#define GAME_H

#include "Timer.h"
#include "Keyboard.h"
#include "Menu.h"
#include "HowToPlay.h"
#include "Battle.h"
#include "Endgame.h"
#include "xil_types.h"

class Scene;

class Game
{
public:
    Game();
    void Start();

private:
    Timer timer;
    Keyboard keyboard;
    Scene *current_scene;
    Menu menu;
    HowToPlay how_to_play;
    Battle battle;
    Endgame endgame;
    uint32_t * const axi_scenes_data;

    void Update(float dt);
};

#endif
