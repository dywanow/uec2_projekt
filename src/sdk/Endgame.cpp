#include "Endgame.h"

Endgame::Endgame(uint8_t id, Keyboard *input) : Scene(id, input)
{

}

void Endgame::Init()
{

}

void Endgame::HandleInput()
{
	uint8_t pressed_key = input->GetKey();
	if (pressed_key == 'v')
	{
		active = 0;
	}
}

void Endgame::Update(float dt)
{

}