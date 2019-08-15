#include "Block.h"

Block::Block() : Element(Vector(0, 0)) { }


Block::Type Block::GetType() const
{
	return type;
}


void Block::SetType(Type type)
{
	this->type = type;
}
