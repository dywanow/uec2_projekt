#include "Game.h"

#define TIMER_NUMBER 0

Game::Game() : player1(1, 1, Element::Type::PLR1),
			   player2(14, 14, Element::Type::PLR2),
			   bomb1(&player1),
			   bomb2(&player2),
			   keyboard(XPAR_UARTLITE_0_BASEADDR),
			   timer(XPAR_TMRCTR_0_BASEADDR, XPAR_TMRCTR_0_DEVICE_ID, XPAR_TMRCTR_0_CLOCK_FREQ_HZ, TIMER_NUMBER),
			   bm(&player1, &player2, &bomb1, &bomb2, blocks, XPAR_AXI_BOARD_S00_AXI_BASEADDR)
{
	players[0] = &player1;
	players[1] = &player2;
	for (uint16_t i = 0; i < BLOCKS_NUMBER; i++)
	{
		collidable_elements[i] = &blocks[i];
	}
	collidable_elements[256] = &bomb1;
	collidable_elements[257] = &bomb2;
}

void Game::Init()
{
	for (uint8_t j = 0; j < BLOCKS_ROW_NUMBER; j++)
	{
		for (uint8_t i = 0; i < BLOCKS_COL_NUMBER; i++)
		{
			blocks[i + j*BLOCKS_ROW_NUMBER].SetPosition(i, j);
		}
	}
	const auto SURR = Element::Type::SURR, PATH = Element::Type::PATH, OBS1 = Element::Type::OBS1, OBS2 = Element::Type::OBS2;
	Element::Type types[] =
	{
		SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR,
		SURR, PATH, OBS2, OBS1, OBS1, OBS2, OBS1, OBS2, OBS1, PATH, OBS1, OBS2, OBS1, OBS1, OBS1, SURR,
		SURR, PATH, PATH, OBS1, PATH, PATH, PATH, PATH, PATH, OBS1, OBS2, PATH, OBS1, PATH, OBS1, SURR,
		SURR, OBS1, PATH, OBS2, OBS1, OBS2, OBS1, OBS1, OBS1, PATH, PATH, OBS1, OBS2, OBS1, OBS2, SURR,
		SURR, PATH, PATH, PATH, PATH, OBS2, PATH, PATH, PATH, OBS2, PATH, PATH, PATH, PATH, OBS1, SURR,
		SURR, OBS1, OBS2, OBS1, OBS1, PATH, OBS2, OBS1, PATH, OBS1, OBS2, PATH, OBS2, OBS2, PATH, SURR,
		SURR, PATH, OBS1, OBS2, PATH, OBS1, PATH, PATH, PATH, PATH, OBS2, OBS1, OBS1, OBS1, PATH, SURR,
		SURR, OBS1, OBS1, PATH, OBS2, OBS2, PATH, OBS2, OBS2, PATH, OBS1, OBS1, PATH, PATH, OBS2, SURR,
		SURR, OBS2, PATH, PATH, OBS1, OBS1, PATH, OBS2, OBS2, PATH, OBS2, OBS2, PATH, OBS1, OBS1, SURR,
		SURR, PATH, OBS1, OBS1, OBS1, OBS2, PATH, PATH, PATH, PATH, OBS1, PATH, OBS2, OBS1, PATH, SURR,
		SURR, PATH, OBS2, OBS2, PATH, OBS2, OBS1, PATH, OBS1, OBS2, PATH, OBS1, OBS1, OBS2, OBS1, SURR,
		SURR, OBS1, PATH, PATH, PATH, PATH, OBS2, PATH, PATH, PATH, OBS2, PATH, PATH, PATH, PATH, SURR,
		SURR, OBS2, OBS1, OBS2, OBS1, PATH, PATH, OBS1, OBS1, OBS1, OBS2, OBS1, OBS2, PATH, OBS1, SURR,
		SURR, OBS1, PATH, OBS1, PATH, OBS2, OBS1, PATH, PATH, PATH, PATH, PATH, OBS1, PATH, PATH, SURR,
		SURR, OBS1, OBS1, OBS1, OBS2, OBS1, PATH, OBS1, OBS2, OBS1, OBS2, OBS1, OBS1, OBS2, PATH, SURR,
		SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR
	};
	for (uint16_t i = 0; i < BLOCKS_NUMBER; i++)
	{
		blocks[i].SetType(types[i]);
	}
}


void Game::Loop()
{
	timer.Start();
	while (1)
	{
		float dt = timer.GetElapsedTime();
		HandleKeyboard();
		HandleCollisions();
		Update(dt);
	}
}

void Game::HandleKeyboard()
{
	if (!keyboard.IsKeyPressed())
	{
		pressed_key = keyboard.GetKey();
		if (pressed_key == 'w')
		{
			player1.GoUp();
		}
		if (pressed_key == 'a')
		{
			player1.GoLeft();
		}
		if (pressed_key == 's')
		{
			player1.GoDown();
		}
		if (pressed_key == 'd')
		{
			player1.GoRight();
		}
		if (pressed_key == ' ')
		{
			bomb1.SetState(Element::State::ACTIVE);
			xil_printf("BOMB: [%u, %u]\n", bomb1.GetPosition().GetX(), bomb1.GetPosition().GetY());
		}
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
		if (pressed_key == 'p')
		{
			player1.SetPosition(1, 1);
		}
		xil_printf("[%c]\n", pressed_key);
	}
}

void Game::HandleCollisions()
{
	for (auto &p : players)
	{
		for (auto &col_el : collidable_elements)
		{
			if (p->CollidesWithElement(*col_el))
			{
				p->Stop();
				auto pos = col_el->GetPosition();
				xil_printf("COLLISION | (%u, %u) | %u\n", pos.GetX(), pos.GetY(), col_el->GetTypeCode());
			}
		}
	}
}

void Game::Update(float dt)
{
	bomb1.Update(dt);
	for (auto &p : players)
	{
		p->Update(dt);
	}
	bm.Update();
}
