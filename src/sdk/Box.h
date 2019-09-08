#ifndef BOX_H
#define BOX_H

#include "Element.h"

class Box : public Element
{
public:
    Box();
    void Init() override;
    void OnFireCollision() override;
};

#endif
