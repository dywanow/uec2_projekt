#include "BonusLife.h"

BonusLife::BonusLife()
    : Element()
{

}

void BonusLife::Init()
{
    active = 1;
}

uint8_t BonusLife::IsCollidable() const
{
    return 0;
}

uint8_t BonusLife::IsFireCollidable() const
{
    return 0;
}

uint8_t BonusLife::Code() const
{
    return 8;
}