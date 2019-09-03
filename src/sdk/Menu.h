#ifndef SRC_MENU_H_
#define SRC_MENU_H_

#include "Scene.h"
#include "xil_types.h"

class Menu : public Scene
{
public:
	Menu(uint32_t axi_menu_text_base_addr, uint8_t id, Keyboard *input);
    void Init() override;
    void HandleInput() override;
    void Update(float dt) override;

private:
    static const float ON_TIME;
    static const float OFF_TIME;

    // enum class Option { START_GAME, SHOW_CONTROLS };

    uint32_t * const axi_text;
    float time;
    uint8_t text_style;
    // Option option;
};

#endif /* SRC_MENU_H_ */
