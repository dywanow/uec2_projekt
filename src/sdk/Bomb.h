#ifndef BOMB_H
#define BOMB_H

#include "Element.h"
#include "xil_types.h"

class Bomber;

class Bomb : public Element
{
public:
    Bomb();
    void Init() override;
    void Update(float dt) override;
    void OnFireCollision() override;
    void SetOwner(Bomber *owner);

private:
    static const uint8_t EXPLOSION_DELAY = 2;
    Bomber *owner;
    float time;

    void Explode();
};

#endif
