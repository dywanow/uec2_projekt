#include "Menu.h"

const float Menu::STYLE_SWITCH_TIME = 0.5f;

Menu::Menu(uint32_t axi_menu_text_base_addr, uint8_t id, Keyboard *input) : Scene(id, input),
																			axi_text(reinterpret_cast<uint32_t*>(axi_menu_text_base_addr)),
																			time(0),
																			text_style(0)
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
	time += dt;
	if (time >= STYLE_SWITCH_TIME)
	{
		text_style = !text_style;
		time = 0;
	}
	*axi_text = text_style;
}