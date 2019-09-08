#include "HowToPlay.h"
#include "Keyboard.h"

HowToPlay::HowToPlay(uint32_t axi_base_addr, Scene *menu, uint8_t id) : 
    Scene(menu, id),
	axi_text(reinterpret_cast<uint32_t*>(axi_base_addr))
{

}

void HowToPlay::Init(uint8_t info)
{
	time = 0;
	blink_status = 0;
}

void HowToPlay::HandleInput(uint8_t key)
{
	if (key == ' ')
	{
		active = 0;
	}
}

void HowToPlay::Update(float dt)
{

	time += dt;
    if (time >= Scene::BLINK_TIME)
    {
        time = 0;
        blink_status = !blink_status;
    }
	*axi_text = blink_status;
}
