#include "Game.h"

Game::Game() : arena(XPAR_AXI_MAP_S00_AXI_BASEADDR), player1(64, 64, XPAR_AXI_PLAYER_S00_AXI_BASEADDR), keyboard(XPAR_UARTLITE_0_BASEADDR)
{

}

void Game::Init()
{
	arena.Init();
	const auto SURR = Block::Type::SURROUNDING, PATH = Block::Type::PATH, OBS1 = Block::Type::OBSTACLE1, OBS2 = Block::Type::OBSTACLE2;
	Block::Type types[] =
	{
		Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::PATH, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::PATH, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::OBSTACLE1, Block::Type::OBSTACLE1, Block::Type::OBSTACLE2, Block::Type::PATH, Block::Type::SURROUNDING,
		Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING, Block::Type::SURROUNDING
	};

	for (u16 i = 0; i < 256; i++)
	{
		arena.SetBlockType(types[i], i);
	}
}


void Game::Loop()
{
	while (1)
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
				xil_printf("s\n");
			}
			if (pressed_key == 'd')
			{
				player1.GoRight();
			}
		}
//		xil_printf("xxx");

		auto player1_pos = player1.GetPosition();
		auto player1_vel = player1.GetVelocity();
		Vector<u16> pos = {player1_pos.x + player1_vel.x, player1_pos.y + player1_vel.y};

		for (u16 i = 0; i < 256; i++)
		{
			const Block *block = arena.GetBlock(i);
			Block::Type type = block->GetType();
			Vector<u16> block_pos = block->GetPosition();
//			xil_printf("%u) POS: [%u, %u]\n", i, block_pos.x, block_pos.y);
			if ((type == Block::OBSTACLE1 || type == Block::OBSTACLE2 || type == Block::SURROUNDING) &&
				(pos.x + 64 > block_pos.x && pos.x < block_pos.x + 64 && pos.y + 64 > block_pos.y && pos.y < block_pos.y + 64))
			{
				if (pos.x + 64 > block_pos.x && pos.x < block_pos.x + 64) player1.StopX();
				if (pos.y + 64 > block_pos.y && pos.y < block_pos.y + 64) player1.StopY();
				xil_printf("%u) POS: [%u, %u]\n", i, block_pos.x, block_pos.y);
//				while (1) {}
//				break;
			}
		}

		arena.Draw();
		player1.Update();
		player1.Draw();
	}
}
