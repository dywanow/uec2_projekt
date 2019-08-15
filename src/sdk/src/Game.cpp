#include "Game.h"

Game::Game() : arena(XPAR_AXI_MAP_S00_AXI_BASEADDR),
			   player1(1, 1, XPAR_AXI_PLAYER1_S00_AXI_BASEADDR, XPAR_AXI_BOMBS_S00_AXI_BASEADDR),
			   player2(14, 14, XPAR_AXI_PLAYER2_S00_AXI_BASEADDR, XPAR_AXI_BOMBS_S00_AXI_BASEADDR),
			   keyboard(XPAR_UARTLITE_0_BASEADDR)
{
//	xil_printf("Game\n");
}

void Game::Init()
{
	arena.Init();

}


void Game::Loop()
{
	while (1)
	{
		HandleKeyboard();
		HandleCollisions();
		UpdateScreen();
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
			player1.PlaceBomb();
			xil_printf("BOMB\n");
			xil_printf("POS: [%u, %u]\n", player1.GetIndexPosition().GetX(), player1.GetIndexPosition().GetY());
		}
		if (pressed_key == '8')
		{
			player2.GoUp();
		}
		if (pressed_key == '4')
		{
			player2.GoLeft();
		}
		if (pressed_key == '2')
		{
			player2.GoDown();
		}
		if (pressed_key == '6')
		{
			player2.GoRight();
		}
		if (pressed_key == '5')
		{
			xil_printf("POS: [%u, %u]\n", player2.GetIndexPosition().GetX(), player2.GetIndexPosition().GetY());
		}
		xil_printf("[%c]\n", pressed_key);
	}
}

void Game::HandleCollisions()
{
	const auto player1_pos = player1.GetIndexPosition();
	const auto player1_movement = player1.GetMovementDirection();

	const auto player2_pos = player2.GetIndexPosition();
	const auto player2_movement = player2.GetMovementDirection();

	for (uint16_t i = 0; i < Arena::BLOCKS_NUMBER; i++)
	{
		const auto *block = arena.GetBlock(i);
		const auto type = block->GetType();
		const auto block_pos = block->GetIndexPosition();

		if (type == Block::OBSTACLE1 || type == Block::OBSTACLE2 || type == Block::SURROUNDING)
		{
			if ((player1_movement == Bomberman::MovementDirection::LEFT && block_pos.GetX() == player1_pos.GetX() - 1 && block_pos.GetY() == player1_pos.GetY()) ||
				(player1_movement == Bomberman::MovementDirection::RIGHT && block_pos.GetX() == player1_pos.GetX() + 1 && block_pos.GetY() == player1_pos.GetY()) ||
				(player1_movement == Bomberman::MovementDirection::UP && block_pos.GetY() == player1_pos.GetY() - 1 && block_pos.GetX() == player1_pos.GetX()) ||
				(player1_movement == Bomberman::MovementDirection::DOWN && block_pos.GetY() == player1_pos.GetY() + 1 && block_pos.GetX() == player1_pos.GetX()))
			{
				player1.Stop();
				xil_printf("%u) POS: [%u, %u]\n", i, block_pos.GetX(), block_pos.GetY());
				break;
			}

			if ((player2_movement == Bomberman::MovementDirection::LEFT && block_pos.GetX() == player2_pos.GetX() - 1 && block_pos.GetY() == player2_pos.GetY()) ||
				(player2_movement == Bomberman::MovementDirection::RIGHT && block_pos.GetX() == player2_pos.GetX() + 1 && block_pos.GetY() == player2_pos.GetY()) ||
				(player2_movement == Bomberman::MovementDirection::UP && block_pos.GetY() == player2_pos.GetY() - 1 && block_pos.GetX() == player2_pos.GetX()) ||
				(player2_movement == Bomberman::MovementDirection::DOWN && block_pos.GetY() == player2_pos.GetY() + 1 && block_pos.GetX() == player2_pos.GetX()))
			{
				player2.Stop();
				xil_printf("%u) POS: [%u, %u]\n", i, block_pos.GetX(), block_pos.GetY());
				break;
			}
		}
	}
}

void Game::UpdateScreen()
{
	arena.Draw();
	player1.Update();
	player1.Draw();
	player2.Update();
	player2.Draw();
}
