#include "Position.h"

uint8_t operator==(const Position &v1, const Position &v2)
{
    return v1.x == v2.x && v1.y == v2.y;
}

Position::Position()
    : x(0),
      y(0)
{
    
}

Position::Position(uint8_t x, uint8_t y)
    : x(x),
      y(y)
{
    
}