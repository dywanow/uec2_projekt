#ifndef PATH_H
#define PATH_H

#include "Element.h"

class Path : public Element
{
public:
    Path();
    void Init() override;
    uint8_t Code() const override;
    uint8_t IsCollidable() const override;
    uint8_t IsFireCollidable() const override;
};

#endif