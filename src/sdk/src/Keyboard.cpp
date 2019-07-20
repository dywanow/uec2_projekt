#include "Keyboard.h"

Keyboard::Keyboard(u32 baseaddr) : baseaddr(baseaddr)
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

