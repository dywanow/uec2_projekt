#include "Menu.h"
#include "Keyboard.h"
#include "xil_printf.h"

Menu::Menu(uint32_t axi_base_addr, Scene *game, Scene *controls, uint8_t id)
    : Scene(game, id),
      axi_text(reinterpret_cast<uint32_t*>(axi_base_addr)),
      game(game),
      controls(controls)
{

}

void Menu::Init(uint8_t info)
{
	time = 0;
	blink_states[0] = 0;
    blink_states[1] = 0;
    option = Options::StartGame;
}

void Menu::HandleInput(uint8_t key)
{
    if (key == 's' || key == 'w')
    {
        if (option == Options::StartGame)
        {
            option = Options::ShowIntruction;
            blink_states[1] = blink_states[0];
            blink_states[0] = 0;
        }
        else
        {
            option = Options::StartGame;
            blink_states[0] = blink_states[1];
            blink_states[1] = 0;
        }
    }
	if (key == ' ')
	{
        if (option == Options::StartGame)
        {
        	next_scene = game;
        }
        else
        {
            next_scene = controls;
        }

		active = 0;
	}
}

void Menu::Update(float dt)
{
	time += dt;
    if (time >= Scene::BLINK_TIME)
    {
        if (option == Options::StartGame)
        {
            blink_states[0] = !blink_states[0];
        }
        else
        {
            blink_states[1] = !blink_states[1];
        }
        time = 0;

    }
	*axi_text = (blink_states[1] << 1) + blink_states[0];
}
