#include "HowToPlay.h"

HowToPlay::HowToPlay(uint32_t axi_base_addr, Scene *menu, uint8_t id, Keyboard *input) : 
    Scene(menu, id, input),
	axi_text(reinterpret_cast<uint32_t*>(axi_base_addr))
{

}

void HowToPlay::Init(uint8_t info)
{
	time = 0;
	blink_status = 0;
}

void HowToPlay::HandleInput()
{
	uint8_t pressed_key = input->GetKey();
	if (pressed_key == 'b')
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
