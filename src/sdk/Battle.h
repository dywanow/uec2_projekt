#ifndef SRC_BATTLE_H_
#define SRC_BATTLE_H_

#include "Scene.h"
#include "Arena.h"
#include "xil_types.h"

class Battle : public Scene
{
public:
    Battle(uint32_t axi_base_addr, uint8_t id);
    void HandleInput();
    uint8_t Update(float dt);
    void Draw();

private:
    Arena arena;
};

#endif /* SRC_BATTLE_H_ */
