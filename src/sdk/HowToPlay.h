#ifndef HOWTOPLAY_H
#define HOWTOPLAY_H

#include "Scene.h"
#include "xil_types.h"

class HowToPlay : public Scene
{
public:
	HowToPlay(uint32_t axi_base_addr, Scene *menu, uint8_t id);
    void Init(uint8_t info) override;
    void HandleInput(uint8_t key) override;
    void Update(float dt) override;

private:
    uint32_t * const axi_text;
    float time;
    uint8_t blink_status;
    Scene *menu;
};

#endif
