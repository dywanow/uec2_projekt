#ifndef ELEMENT_H
#define ELEMENT_H

#include "Position.h"
#include "xil_types.h"
#include "xil_printf.h"

class Arena;

class Element
{
public:
    Element();
    Element(uint8_t x, uint8_t y);
    void SetArena(Arena *arena);
    void SetPosition(uint8_t x, uint8_t y);
    void SetPosition(Position position);
    void Activate();
    void Deactivate();
    Position GetPosition() const;
    uint8_t GetNormalizedPosition() const;
    uint8_t IsActive() const;
    virtual void Init();
    virtual uint8_t Code() const;
    virtual uint8_t IsCollidable() const;
    virtual uint8_t IsFireCollidable() const;
    virtual uint8_t IsDestructible() const;
    virtual void OnFireCollision();
    virtual void Update(float dt);

protected:
    Arena *arena;
    Position position;
    uint8_t active;
};

#endif
