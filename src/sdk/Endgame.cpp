#include "Endgame.h"
#include "Keyboard.h"

Endgame::Endgame(uint32_t axi_base_addr, Scene *menu, uint8_t id)
    : Scene(menu, id),
      axi_text(reinterpret_cast<uint32_t*>(axi_base_addr))
{
    
}

void Endgame::Init(uint8_t info)
{
	winner_id = info;
    time = 0;
    blink_status = 0;
}

void Endgame::HandleInput(uint8_t key)
{
	if (key == ' ')
	{
		active = 0;
	}
}

void Endgame::Update(float dt)
{
	time += dt;
    if (time >= Scene::BLINK_TIME)
    {
        time = 0;
        blink_status = !blink_status;
    }
	*axi_text = (winner_id << 1) + blink_status;
}
