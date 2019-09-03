#include "Menu.h"

const float Menu::ON_TIME = 0.5f;
const float Menu::OFF_TIME = 0.2f;

Menu::Menu(uint32_t axi_menu_text_base_addr, uint8_t id, Keyboard *input) : Scene(id, input),
																			axi_text(reinterpret_cast<uint32_t*>(axi_menu_text_base_addr))
{
	Init();
}

void Menu::Init()
{
	time = 0;
	text_style = 0;
    // option = Option::START_GAME;
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
	time += dt;
    if (text_style == 0 && time >= ON_TIME)
    {
        time = 0;
        text_style = !text_style;
    }
	if (text_style == 1 && time >= OFF_TIME)
    {
        text_style = !text_style;
        time = 0;
	}
	*axi_text = text_style;
}
