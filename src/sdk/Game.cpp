#include "Game.h"

#define TIMER_NUMBER 0

Game::Game() : state(Game::States::MENU),
               keyboard(XPAR_UARTLITE_0_BASEADDR),
               current_scene(&menu),
			   menu(XPAR_AXI_MENU_TEXT_S00_AXI_BASEADDR, 0, &keyboard),
               battle(XPAR_AXI_BATTLE_ARENA_S00_AXI_BASEADDR, 1, &keyboard, XPAR_AXI_BATTLE_BOMBER_INFO_TEXT_S00_AXI_BASEADDR),
			   endgame(2, &keyboard),
               timer(XPAR_TMRCTR_0_BASEADDR, XPAR_TMRCTR_0_DEVICE_ID, XPAR_TMRCTR_0_CLOCK_FREQ_HZ, TIMER_NUMBER),
               axi_scenes_data(reinterpret_cast<uint32_t*>(XPAR_AXI_SCENES_S00_AXI_BASEADDR))
{
	menu.Activate();
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
		SwitchScene();
		current_scene->Activate();
		current_scene->Init();
	}
}

void Game::Draw()
{
    current_scene->Draw();
}

void Game::SwitchScene()
{
	switch (state)
	{
	case States::MENU:
		current_scene = &battle;
		state = States::BATTLE;
		break;
	case States::BATTLE:
		current_scene = &endgame;
		state = States::ENDGAME;
		break;
	case States::ENDGAME:
		current_scene = &menu;
		state = States::MENU;
	default:
		break;
	}
}
