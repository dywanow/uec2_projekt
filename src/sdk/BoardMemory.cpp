#include "BoardMemory.h"

BoardMemory::BoardMemory(Bomberman *player1, Bomberman *player2, Bomb *bomb1, Bomb *bomb2, Block *blocks, uint32_t baseaddr) : drawer((uint32_t *)baseaddr)
{
	for (uint16_t i = 0; i < STATIC_ELEMENTS_NUMBER; i++)
	{
		static_elements[i] = &blocks[i];
	}
	dynamic_elements[0] = bomb1;
	dynamic_elements[1] = bomb2;
	dynamic_elements[2] = player1;
	dynamic_elements[3] = player2;
}


void BoardMemory::Update()
{
	for (uint16_t i = 0; i < STATIC_ELEMENTS_NUMBER; i++)
	{
		elements_to_draw[i] = static_elements[i];
		for (const auto &de : dynamic_elements)
		{
			if (de->GetNormalizedPosition() == i && de->IsActive())
			{
				elements_to_draw[i] = de;
			}
		}
	}
	for (const auto &el : elements_to_draw)
	{
		*drawer = (el->GetTypeCode() << 8) + el->GetNormalizedPosition();
	}
}
