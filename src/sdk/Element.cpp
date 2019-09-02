#include "Element.h"
#include "Arena.h"

Element::Element() : position(Vector(0, 0)),
                     type(Element::Types::PATH),
                     active(0),
                     time(0)
{

}

Element::Element(uint16_t x, uint16_t y, Element::Types type) : position(Vector(x, y)),
                                                                type(type),
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

void Element::SetPosition(uint16_t x, uint16_t y)
{
    SetPosition(Vector(x, y));
}

void Element::SetPosition(Vector position)
{
    this->position = position;
}

void Element::SetType(Element::Types type)
{
    this->type = type;
}

void Element::SetID(uint8_t id)
{
    this->id = id;
}

void Element::Activate()
{
    active = 1;
}

void Element::Deactivate()
{
    active = 0;
}

void Element::ResetTime()
{
    time = 0;
}

Vector Element::Position() const
{
    return position;
}

Element::Types Element::Type() const
{
    return type;
}

uint8_t Element::ID() const
{
    return id;
}

uint8_t Element::NormalizedPosition() const
{
    return position.GetX() + (position.GetY() << 4);
}

uint8_t Element::TypeCode() const
{
    switch (type)
    {
        case Types::PATH: return 0;
        case Types::SURR: return 1;
        case Types::OBS1: return 2;
        case Types::OBS2: return 3;
        case Types::BOMB: return 4;
        case Types::EXPL: return 5;
        case Types::PLR1: return 6;
        case Types::PLR2: return 7;
        default: return 0;
    }
}

uint8_t Element::IsCollidable() const
{
    return type != Types::PATH;
}

uint8_t Element::IsActive() const
{
    return active;
}

uint8_t Element::IsDestructible() const
{
    return type != Types::SURR && type != Types::OBS2 && type != Types::EXPL;
}

