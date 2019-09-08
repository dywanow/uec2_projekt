#ifndef SRC_SCENE_H_
#define SRC_SCENE_H_

#include "xil_types.h"

class Keyboard;

class Scene
{
public:
    Scene(Scene *next_scene, uint8_t id, Keyboard *input);
    void Activate();
    void Deactivate();
    uint8_t IsActive() const;
    uint8_t ID() const;
    Scene * NextScene() const;
    virtual void Init(uint8_t info=0);
    virtual void HandleInput();
    virtual void Update(float dt);
    virtual void Draw();
    virtual uint8_t Info() const;

protected:
    static const float BLINK_TIME;

    Keyboard *input;
    uint8_t active;
    const uint8_t id;
    Scene *next_scene;
};

#endif /* SRC_SCENE_H_ */
