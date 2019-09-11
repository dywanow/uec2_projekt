#ifndef WALL_H
#define WALL_H

#include "Element.h"

class Wall : public Element
{
public:
    Wall();
    void Init() override;
    uint8_t IsDestructible() const override;
    uint8_t Code() const override;
};

#endif
