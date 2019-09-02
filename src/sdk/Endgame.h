#ifndef SRC_ENDGAME_H_
#define SRC_ENDGAME_H_

#include "Scene.h"
#include "xil_types.h"

class Endgame : public Scene
{
public:
    Endgame(uint8_t id, Keyboard *input);
    void Init() override;
    void HandleInput() override;
    void Update(float dt) override;
};

#endif /* SRC_ENDGAME_H_ */
