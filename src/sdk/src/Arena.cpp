#include "Arena.h"


Arena::Arena(u32 baseaddr) : drawer((u32 *)baseaddr)
{
	xil_printf("%X\n", baseaddr);
}

void Arena::Init()
{
	for (u16 i = 0; i < 256; i++)
	{
		blocks[i].SetIndex(i);
	}
}

void Arena::SetBlockType(Block::Type blocktype, u8 index)
{
	blocks[index].SetType(blocktype);
}

void Arena::Draw()
{
	for (u16 i = 0; i < 256; i++)
	{
		*drawer = (blocks[i].GetType() << 8) + blocks[i].GetIndex();
	}
}


const Block* Arena::GetBlock(u8 index) const
{
	return &blocks[index];
}
