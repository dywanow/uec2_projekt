#include "Game.h"
#include "Scene.h"
#include "xparameters.h"
#include "PRNG.h"

Game::Game()
    : timer(XPAR_TMRCTR_0_BASEADDR, XPAR_TMRCTR_0_DEVICE_ID, XPAR_TMRCTR_0_CLOCK_FREQ_HZ, 0),
      keyboard(XPAR_UARTLITE_0_BASEADDR),
      current_scene(&menu),
      menu(XPAR_AXI_MENU_TEXT_S00_AXI_BASEADDR, &battle, &how_to_play, 0),
      how_to_play(XPAR_AXI_HOWTOPLAY_TEXT_S00_AXI_BASEADDR, &menu, 3),
      battle(XPAR_AXI_BATTLE_ARENA_S00_AXI_BASEADDR, XPAR_AXI_BATTLE_BOMBERS_TEXT_S00_AXI_BASEADDR, &endgame, 1),
      endgame(XPAR_AXI_ENDGAME_TEXT_S00_AXI_BASEADDR, &menu, 2),
      axi_scenes_data(reinterpret_cast<uint32_t*>(XPAR_AXI_SCENES_S00_AXI_BASEADDR))
{
    menu.Init(0);
    menu.Activate();
}


void Game::Start()
{
    timer.Start();
    while (1)
    {
        float dt = timer.GetElapsedTime();
        Update(dt);
    }
}

void Game::Update(float dt)
{
	PRNG::UpdateSeed();
	uint8_t key;
    if (keyboard.IsKeyPressed())
    {
    	key = keyboard.GetKey();
    }
    else
    {
    	key = 0;
    }
    current_scene->HandleInput(key);
	current_scene->Update(dt);
	if (!current_scene->IsActive())
	{
		uint8_t info = current_scene->Info();
		current_scene = current_scene->NextScene();
		current_scene->Init(info);
		current_scene->Activate();
	}
    *axi_scenes_data = current_scene->ID();
}
