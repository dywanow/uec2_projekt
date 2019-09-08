#ifndef MENU_H
#define MENU_H

#include "Scene.h"
#include "xil_types.h"

class Menu : public Scene
{
public:
	Menu(uint32_t axi_base_addr, Scene *game, Scene *controls, uint8_t id);
    void Init(uint8_t info=0) override;
    void HandleInput(uint8_t key) override;
    void Update(float dt) override;

private:
    enum class Options { StartGame, ShowIntruction };

    uint32_t * const axi_text;
    float time;
    uint8_t blink_states[2];
    Options option;
    Scene *game;
    Scene *controls;
};

#endif
