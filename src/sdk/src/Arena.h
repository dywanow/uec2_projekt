#ifndef SRC_ARENA_H_
#define SRC_ARENA_H_

#include "Element.h"
#include "Block.h"
#include "xil_types.h"
#include "xil_printf.h"

class Arena
{
public:
	static uint16_t const BLOCKS_NUMBER = 256;
	static uint8_t const SIZE = 16;

	Arena(uint32_t baseaddr);
	void Init();
	void SetBlockType(Block::Type blocktype, uint8_t index);
	void Draw();
	const Block* GetBlock(uint8_t index) const;

private:
	uint32_t *drawer;
	Block blocks[BLOCKS_NUMBER];
};




#endif /* SRC_ARENA_H_ */
