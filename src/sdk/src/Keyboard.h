#ifndef SRC_KEYBOARD_H_
#define SRC_KEYBOARD_H_

#include "xuartlite_l.h"

class Keyboard
{
	u32 baseaddr;
public:
	Keyboard(u32 baseaddr);
	u8 IsKeyPressed();
	u8 GetKey();
};

#endif /* SRC_KEYBOARD_H_ */
