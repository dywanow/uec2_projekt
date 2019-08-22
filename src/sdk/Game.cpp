#include "Game.h"

#define TIMER_NUMBER 0

Game::Game() : keyboard(XPAR_UARTLITE_0_BASEADDR),
			   timer(XPAR_TMRCTR_0_BASEADDR, XPAR_TMRCTR_0_DEVICE_ID, XPAR_TMRCTR_0_CLOCK_FREQ_HZ, TIMER_NUMBER),
			   arena_drawer((uint32_t *)XPAR_AXI_BOARD_S00_AXI_BASEADDR)
{

}

void Game::Init()
{

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
	if (!keyboard.IsKeyPressed())
	{
		pressed_key = keyboard.GetKey();
		if (pressed_key == 'w')
		{
			arena.players[0].SetMovement(Bomber::Movement::UP);
		}
		if (pressed_key == 'a')
		{
			arena.players[0].SetMovement(Bomber::Movement::LEFT);
		}
		if (pressed_key == 's')
		{
			arena.players[0].SetMovement(Bomber::Movement::DOWN);
		}
		if (pressed_key == 'd')
		{
			arena.players[0].SetMovement(Bomber::Movement::RIGHT);
		}
		if (pressed_key == ' ')
		{
			arena.InitBomb(0);
		}
		if (pressed_key == 'p')
		{
			arena.players[0].DecrementBombsNumber();
		}
		xil_printf("[%c]\n", pressed_key);
	}
}


void Game::Update(float dt)
{
	arena.Update(dt);
}

void Game::Draw()
{
	arena.Draw(arena_drawer);
}
