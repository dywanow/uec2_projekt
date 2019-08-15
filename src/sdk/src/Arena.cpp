#include "Arena.h"


Arena::Arena(uint32_t baseaddr) : drawer((uint32_t *)baseaddr)
{
	xil_printf("Arena\n");
}

void Arena::Init()
{
	for (uint8_t j = 0; j < SIZE; j++)
	{
		for (uint8_t i = 0; i < SIZE; i++)
		{
			blocks[i + j*SIZE].SetIndexPosition(i, j);
		}
	}
	const auto SURR = Block::Type::SURROUNDING, PATH = Block::Type::PATH, OBS1 = Block::Type::OBSTACLE1, OBS2 = Block::Type::OBSTACLE2;
	const Block::Type types[] =
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

	for (uint16_t index = 0; index < Arena::BLOCKS_NUMBER; index++)
	{
		SetBlockType(types[index], index);
	}
}

void Arena::SetBlockType(Block::Type blocktype, uint8_t index)
{
	blocks[index].SetType(blocktype);
}

void Arena::Draw()
{
	for (uint16_t i = 0; i < BLOCKS_NUMBER; i++)
	{
		*drawer = (blocks[i].GetType() << 8) + blocks[i].GetNormalizedIndexPosition();
	}
}


const Block* Arena::GetBlock(uint8_t index) const
{
	return &blocks[index];
}
