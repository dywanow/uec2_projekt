#include "Menu.h"

Menu::Menu(uint8_t id, Keyboard *input) : Scene(id, input)
{

}

void Menu::Init()
{

}

void Menu::HandleInput()
{
	uint8_t pressed_key = input->GetKey();
	if (pressed_key == 'b')
	{
		active = 0;
	}
}

void Menu::Update(float dt)
{

}

void Menu::Draw()
{

}
