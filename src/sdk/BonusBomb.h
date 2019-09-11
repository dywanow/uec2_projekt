#ifndef BONUSBOMB_H
#define BONUSBOMB_H

#include "Element.h"
#include "xil_types.h"

class BonusBomb : public Element
{
public:
    BonusBomb();
    void Init() override;
    uint8_t IsCollidable() const override;
    uint8_t IsFireCollidable() const override;
    uint8_t Code() const override;
};

#endif