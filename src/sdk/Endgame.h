#ifndef ENDGAME_H
#define ENDGAME_H

#include "Scene.h"
#include "xil_types.h"

class Endgame : public Scene
{
public:
    Endgame(uint32_t axi_base_addr, Scene *menu, uint8_t id);
    void Init(uint8_t info) override;
    void HandleInput(uint8_t key) override;
    void Update(float dt) override;

private:
    uint32_t * const axi_text;
    float time;
    uint8_t blink_status;
    uint8_t winner_id;
};

#endif
