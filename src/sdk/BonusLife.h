#ifndef BONUSLIFE_H
#define BONUSLIFE_H

#include "Element.h"
#include "xil_types.h"

class BonusLife : public Element
{
public:
    BonusLife();
    void Init() override;
    uint8_t IsCollidable() const override;
    uint8_t IsFireCollidable() const override;
    uint8_t Code() const override;
};

#endif
