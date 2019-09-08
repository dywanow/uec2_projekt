#ifndef FIRE_H
#define FIRE_H

#include "Element.h"
#include "xil_types.h"

class Fire : public Element
{
public:
    Fire();
    void Init() override;
    void Update(float dt) override;
    uint8_t IsFireCollidable() const override;

private:
    float time;
};

#endif
