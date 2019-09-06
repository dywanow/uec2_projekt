#ifndef SRC_MENU_H_
#define SRC_MENU_H_

#include "Scene.h"
#include "xil_types.h"

class Menu : public Scene
{
public:
	Menu(uint32_t axi_base_addr, Scene *game, Scene *controls, uint8_t id, Keyboard *input);
    void Init(uint8_t info=0) override;
    void HandleInput() override;
    void Update(float dt) override;

private:
    enum class Options { START_GAME, SHOW_CONTROLS };

    uint32_t * const axi_text;
    float time;
    uint8_t blink_states[2];
    Options option;
    Scene *game;
    Scene *controls;
};

#endif /* SRC_MENU_H_ */
