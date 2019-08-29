#ifndef SRC_SCENE_H_
#define SRC_SCENE_H_

#include "xil_types.h"
#include "Keyboard.h"

class Scene
{
public:
    Scene(uint8_t id, Keyboard *input);
    void Activate();
    void Deactivate();
    virtual void Init();
    uint8_t IsActive() const;
    uint8_t ID() const;
    virtual void HandleInput();
    virtual void Update(float dt);
    virtual void Draw();

protected:
    Keyboard *input;
    uint8_t active;
    const uint8_t id;
};

#endif /* SRC_SCENE_H_ */
