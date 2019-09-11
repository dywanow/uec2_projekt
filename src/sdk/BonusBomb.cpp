#include "BonusBomb.h"

BonusBomb::BonusBomb()
    : Element()
{

}

void BonusBomb::Init()
{
    active = 1;
}

uint8_t BonusBomb::IsCollidable() const
{
    return 0;
}

uint8_t BonusBomb::IsFireCollidable() const
{
    return 0;
}

uint8_t BonusBomb::Code() const
{
    return 7;
}