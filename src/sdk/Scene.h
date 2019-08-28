#ifndef SRC_SCENE_H_
#define SRC_SCENE_H_

#include "xil_types.h"
#include "Keyboard.h"

class Scene
{
public:
    Scene(uint32_t axi_base_addr, uint8_t id);
    void Activate();
    void Deactivate();
    uint8_t IsActive() const;
    uint8_t ID() const;
    virtual void HandleInput() = 0;
    virtual uint8_t Update(float dt) = 0;
    virtual void Draw() = 0;

protected:
    uint32_t * const axi_data;
    Keyboard *input;
    uint8_t active;
    const uint8_t id;

};

#endif /* SRC_SCENE_H_ */
