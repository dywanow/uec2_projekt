#ifndef SRC_BLOCK_H_
#define SRC_BLOCK_H_

#include "Element.h"
#include "xil_types.h"

class Block : public Element
{
public:
	Block();
	void Update(float dt=0);

private:
	void Destroy();
};

#endif /* SRC_BLOCK_H_ */
