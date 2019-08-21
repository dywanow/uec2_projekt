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
//		if (pressed_key == 'w')
//		{
//			player1.GoUp();
//		}
//		if (pressed_key == 'a')
//		{
//			player1.GoLeft();
//		}
//		if (pressed_key == 's')
//		{
//			player1.GoDown();
//		}
//		if (pressed_key == 'd')
//		{
//			player1.GoRight();
//		}
//		if (pressed_key == ' ')
//		{
//			bomb1.SetPosition(player1.GetPosition());
//			bomb1.SetState(Element::State::ACTIVE);
//			xil_printf("BOMB: [%u, %u]\n", bomb1.GetPosition().GetX(), bomb1.GetPosition().GetY());
//		}
//		if (pressed_key == '8')
//		{
//			player2.GoUp();
//		}
//		if (pressed_key == '4')
//		{
//			player2.GoLeft();
//		}
//		if (pressed_key == '2')
//		{
//			player2.GoDown();
//		}
//		if (pressed_key == '6')
//		{
//			player2.GoRight();
//		}
//		if (pressed_key == '5')
//		{
//			bomb1.SetState(Element::State::NOT_ACTIVE);
//			xil_printf("POS: [%u, %u]\n", player2.GetPosition().GetX(), player2.GetPosition().GetY());
//		}
//		if (pressed_key == 'p')
//		{
//			player1.SetPosition(1, 1);
//		}
		xil_printf("[%c]\n", pressed_key);
	}
}

//void Game::HandleCollisions()
//{
//	for (auto &p : players)
//	{
//		for (auto &col_el : collidable_elements)
//		{
//			if (p->CollidesWithElement(*col_el))
//			{
//				p->Stop();
//				auto pos = col_el->GetPosition();
//				xil_printf("COLLISION | (%u, %u) | %u\n", pos.GetX(), pos.GetY(), col_el->GetTypeCode());
//			}
//		}
//	}
//}

void Game::Update(float dt)
{
	arena.Update(dt);
}

void Game::Draw()
{
	arena.Draw(arena_drawer);
}
