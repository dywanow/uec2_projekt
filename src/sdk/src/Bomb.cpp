#include "Bomb.h"
#include "Bomberman.h"


Bomb::Bomb() : Element(0, 0)
{
	xil_printf("BOMB\n");
}




void Bomb::SetActive(uint8_t active)
{
	this->active = active;
}

uint8_t Bomb::GetActive() const
{
	return active;
}
