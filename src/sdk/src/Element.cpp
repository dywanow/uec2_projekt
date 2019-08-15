#include "Element.h"
#include "Arena.h"

Element::Element(uint16_t i, uint16_t j)
{
	SetIndexPosition(Vector(i, j));
}

Element::Element(Vector index_position)
{
	SetIndexPosition(index_position);
}

void Element::SetIndexPosition(uint16_t i, uint16_t j)
{
	SetIndexPosition(Vector(i, j));
}

void Element::SetIndexPosition(Vector index_position)
{
	this->index_position = index_position;
	SetPixelPositionByIndexPosition();
}

void Element::SetPixelPositionByIndexPosition()
{
	pixel_position = index_position * SIZE;
}

Vector Element::GetIndexPosition() const
{
	return index_position;
}

uint8_t Element::GetNormalizedIndexPosition() const
{
	return index_position.GetX() + index_position.GetY() * Arena::SIZE;
}
