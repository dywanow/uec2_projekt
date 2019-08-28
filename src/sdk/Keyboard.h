#ifndef SRC_KEYBOARD_H_
#define SRC_KEYBOARD_H_

#include "xuartlite_l.h"

class Keyboard
{
public:
    Keyboard(uint32_t baseaddr);
    uint8_t IsKeyPressed();
    uint8_t GetKey();
private:
    uint32_t baseaddr;
};

#endif /* SRC_KEYBOARD_H_ */
