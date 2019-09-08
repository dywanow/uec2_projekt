#ifndef POSITION_H
#define POSITION_H

#include "xil_types.h"

struct Position;

uint8_t operator==(const Position &v1, const Position &v2);

struct Position
{
    Position();
    Position(uint8_t x, uint8_t y);

    uint8_t x;
    uint8_t y;
};

#endif
