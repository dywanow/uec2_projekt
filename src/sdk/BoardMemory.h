#ifndef SRC_BOARDMEMORY_H_
#define SRC_BOARDMEMORY_H_

#include "Element.h"
#include "Bomber.h"
#include "Block.h"
#include "Bomb.h"
#include "xil_types.h"
#include "xil_printf.h"

class BoardMemory
{
public:
	BoardMemory(Bomber *player1, Bomber *player2, Bomb *bomb1, Bomb *bomb2, Block *blocks, uint32_t baseaddr);
	void Update();

private:
	static const uint16_t STATIC_ELEMENTS_NUMBER = 256;
	static const uint8_t DYNAMIC_ELEMENTS_NUMBER = 4;

	Element *static_elements[STATIC_ELEMENTS_NUMBER];
	Element *dynamic_elements[DYNAMIC_ELEMENTS_NUMBER];
	Element *elements_to_draw[STATIC_ELEMENTS_NUMBER];
	uint32_t *drawer;
};

#endif /* SRC_BOARDMEMORY_H_ */
