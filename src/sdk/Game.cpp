#include "Game.h"
#include "xparameters.h"
#include "xil_printf.h"

#define TIMER_NUMBER 0

Game::Game() : keyboard(XPAR_UARTLITE_0_BASEADDR),
               current_scene(&menu),
			   menu(XPAR_AXI_MENU_TEXT_S00_AXI_BASEADDR, &battle, &how_to_play, 0, &keyboard),
               how_to_play(XPAR_AXI_HOWTOPLAY_TEXT_S00_AXI_BASEADDR, &menu, 3, &keyboard),
               battle(XPAR_AXI_BATTLE_ARENA_S00_AXI_BASEADDR, &endgame, 1, &keyboard, XPAR_AXI_BATTLE_BOMBERS_TEXT_S00_AXI_BASEADDR),
			   endgame(XPAR_AXI_ENDGAME_TEXT_S00_AXI_BASEADDR, &menu, 2, &keyboard),
               timer(XPAR_TMRCTR_0_BASEADDR, XPAR_TMRCTR_0_DEVICE_ID, XPAR_TMRCTR_0_CLOCK_FREQ_HZ, TIMER_NUMBER),
               axi_scenes_data(reinterpret_cast<uint32_t*>(XPAR_AXI_SCENES_S00_AXI_BASEADDR))
{
	menu.Activate();
	menu.Init();
}


void Game::Loop()
{
    timer.Start();
    while (1)
    {
        float dt = timer.GetElapsedTime();
        HandleKeyboard();
        Update(dt);
        Draw();
    }
}

void Game::HandleKeyboard()
{
    if (keyboard.IsKeyPressed())
    {
        current_scene->HandleInput();
        xil_printf("[%c]\n", keyboard.GetKey());
    }
}

void Game::Update(float dt)
{
	current_scene->Update(dt);
	*axi_scenes_data = current_scene->ID();
	if (!current_scene->IsActive())
	{
		uint8_t info = current_scene->Info();
		current_scene = current_scene->NextScene();
		current_scene->Activate();
		current_scene->Init(info);
	}
}

void Game::Draw()
{
    current_scene->Draw();
}
