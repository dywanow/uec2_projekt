#include "Block.h"

Block::Block()
{

}


u8 Block::GetIndex() const
{
	return index;
}

Vector<u16> Block::GetPosition() const
{
	return position;
}

Block::Type Block::GetType() const
{
	return type;
}

void Block::SetIndex(u16 index)
{
	this->index = index;
	Vector<u16> pos;
	pos.x = (index % 16) * 64;
	pos.y = index / 16 * 64;
	SetPosition(pos);
//	xil_printf("%d) POS: [%u, %u]\n", index, pos.x, pos.y);
}

void Block::SetPosition(Vector<u16> position)
{
	this->position = position;
}

void Block::SetType(Type type)
{
	this->type = type;
}
