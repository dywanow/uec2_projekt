#include "Element.h"

Element::Element(uint16_t i, uint16_t j, Element::Type type, State state) : position(Vector(i, j)), type(type), state(state)
{

}

Element::Element(Vector position, Element::Type type, State state) : position(position), type(type), state(state)
{

}

void Element::SetPosition(uint16_t i, uint16_t j)
{
	SetPosition(Vector(i, j));
}

void Element::SetPosition(Vector position)
{
	this->position = position;
}

void Element::SetType(Element::Type type)
{
	this->type = type;
}

void Element::SetState(Element::State state)
{
	this->state = state;
}

Vector Element::GetPosition() const
{
	return position;
}

Element::Type Element::GetType() const
{
	return type;
}

Element::State Element::GetState() const
{
	return state;
}

uint8_t Element::GetNormalizedPosition() const
{
	return position.GetX() + (position.GetY() << 4);
}

uint8_t Element::GetTypeCode() const
{
	switch (type)
	{
		case Type::PATH: return 0;
		case Type::SURR: return 1;
		case Type::OBS1: return 2;
		case Type::OBS2: return 3;
		case Type::BOMB: return 4;
		case Type::EXPL: return 5;
		case Type::PLR1: return 6;
		case Type::PLR2: return 7;
		default: return 0;
	}
}

uint8_t Element::IsCollidable() const
{
	return type != Type::PATH;
}

uint8_t Element::IsActive() const
{
	return state == State::ACTIVE;
}

void Element::Draw(uint32_t *drawer) const
{
	*drawer = (GetTypeCode() << 8) + GetNormalizedPosition();
}

