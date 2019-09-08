#include "Element.h"

Element::Element() : position({0, 0}),
                     active(0)
{

}

Element::Element(uint8_t x, uint8_t y) : position({x, y}),
                                         active(0)
{

}

void Element::Update(float dt)
{

}

void Element::Init()
{

}

void Element::SetArena(Arena *arena)
{
    this->arena = arena;
}

void Element::SetCode(uint8_t code)
{
	this->code = code;
}

void Element::SetPosition(uint8_t x, uint8_t y)
{
    SetPosition(Position{x, y});
}

void Element::SetPosition(Position position)
{
    this->position = position;
}

void Element::Activate()
{
    active = 1;
}

void Element::Deactivate()
{
    active = 0;
}

Position Element::GetPosition() const
{
    return position;
}


uint8_t Element::GetNormalizedPosition() const
{
    return position.x + (position.y << 4);
}

uint8_t Element::IsCollidable() const
{
    return 1;
}

uint8_t Element::IsFireCollidable() const
{
    return 1;
}

uint8_t Element::IsActive() const
{
    return active;
}

uint8_t Element::IsDestructible() const
{
    return 1;
}

uint8_t Element::Code() const
{
    return code;
}

void Element::OnFireCollision()
{

}
