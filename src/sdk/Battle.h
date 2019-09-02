#ifndef SRC_BATTLE_H_
#define SRC_BATTLE_H_

#include "Scene.h"
#include "Arena.h"
#include "BomberInfo.h"
#include "xil_types.h"

class Battle : public Scene
{
public:
    Battle(uint32_t axi_arena_base_addr, uint8_t id, Keyboard *input, uint32_t axi_bomber_info_base_addr);
    void Init() override;
    void HandleInput() override;
    void Update(float dt) override;
    void Draw() override;

private:
    uint32_t * const axi_arena_data;
    Arena arena;
    BomberInfo bomber_info;
};

#endif /* SRC_BATTLE_H_ */
