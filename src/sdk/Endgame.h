#ifndef SRC_ENDGAME_H_
#define SRC_ENDGAME_H_

#include "Scene.h"
#include "xil_types.h"

class Endgame : public Scene
{
public:
    Endgame(uint32_t axi_base_addr, Scene *menu, uint8_t id, Keyboard *input);
    void Init() override;
    void HandleInput() override;
    void Update(float dt) override;

private:
    uint32_t * const axi_text;
    float time;
    uint8_t blink_status;
};

#endif /* SRC_ENDGAME_H_ */
