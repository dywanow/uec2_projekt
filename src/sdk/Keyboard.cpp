#include "Keyboard.h"
#include "xuartlite_l.h"

Keyboard::Keyboard(uint32_t baseaddr) : baseaddr(baseaddr)
{


}

uint8_t Keyboard::IsKeyPressed()
{
    if (!XUartLite_IsReceiveEmpty(baseaddr))
    {
    	key = XUartLite_RecvByte(baseaddr);
    	return 1;
    }
    return 0;
}

uint8_t Keyboard::GetKey()
{
    return key;
}

