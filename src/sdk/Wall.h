#ifndef WALL_H
#define WALL_H

#include "Element.h"

class Wall : public Element
{
public:
    Wall();
    uint8_t IsDestructible() const override;
};

#endif
