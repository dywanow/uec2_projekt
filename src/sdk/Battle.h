#ifndef BATTLE_H
#define BATTLE_H

#include "Scene.h"
#include "Arena.h"
#include "xil_types.h"

class Battle : public Scene
{
public:
    Battle(uint32_t axi_arena_base_addr, uint32_t axi_bomber_info_base_addr, Scene *endgame, uint8_t id);
    void Init(uint8_t info) override;
    void HandleInput(uint8_t key) override;
    void Update(float dt) override;
    uint8_t Info() const override;

private:
    Arena arena;
    uint8_t bomber_inputs[2];
    uint32_t * const axi_arena_data;
    uint32_t * const axi_bombers_text;

    uint8_t KeyToCode(uint8_t key) const;
    void UpdateBombersText();
};

#endif
