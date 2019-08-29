#ifndef SRC_BATTLE_H_
#define SRC_BATTLE_H_

#include "Scene.h"
#include "Arena.h"
#include "xil_types.h"

class Battle : public Scene
{
public:
    Battle(uint32_t axi_arena_base_addr, uint8_t id, Keyboard *input);
    void Init();
    void HandleInput();
    void Update(float dt);
    void Draw();

private:
    uint32_t * const axi_arena_data;
    Arena arena;
};

#endif /* SRC_BATTLE_H_ */
