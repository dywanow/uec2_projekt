#ifndef SRC_ARENA_H_
#define SRC_ARENA_H_

#include "Block.h"
#include "xil_types.h"
#include "xil_printf.h"
#include "malloc.h"

class Arena
{
	u32 *drawer;
	Block blocks[256];
public:
	Arena(u32 baseaddr);
	void Init();
	void SetBlockType(Block::Type blocktype, u8 index);
	void Draw();
	const Block* GetBlock(u8 index) const;
};




#endif /* SRC_ARENA_H_ */
