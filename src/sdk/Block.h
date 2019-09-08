#ifndef SRC_BLOCK_H_
#define SRC_BLOCK_H_

#include "Element.h"

class Block : public Element
{
public:
    Block();
    void Init() override;
    void Update(float dt=0) override;
};

#endif /* SRC_BLOCK_H_ */
