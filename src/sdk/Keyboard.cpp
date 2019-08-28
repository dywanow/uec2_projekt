#include "Keyboard.h"

Keyboard::Keyboard(uint32_t baseaddr) : baseaddr(baseaddr)
{


}

u8 Keyboard::IsKeyPressed()
{
    return XUartLite_IsReceiveEmpty(baseaddr);
}

u8 Keyboard::GetKey()
{
    return XUartLite_RecvByte(baseaddr);
}

