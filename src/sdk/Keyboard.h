#ifndef KEYBOARD_H
#define KEYBOARD_H

#include "xil_types.h"

class Keyboard
{
public:
    Keyboard(uint32_t baseaddr);
    uint8_t IsKeyPressed();
    uint8_t GetKey() const;
private:
    uint32_t baseaddr;
    uint8_t key;
};

#endif
