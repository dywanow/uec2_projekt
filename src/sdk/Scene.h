#ifndef SCENE_H
#define SCENE_H

#include "xil_types.h"

class Keyboard;

class Scene
{
public:
    Scene(Scene *next_scene, uint8_t id);
    void Activate();
    uint8_t IsActive() const;
    uint8_t ID() const;
    Scene * NextScene() const;
    virtual void Init(uint8_t info=0);
    virtual void HandleInput(uint8_t key);
    virtual void Update(float dt);
    virtual uint8_t Info() const;

protected:
    static const float BLINK_TIME;

    uint8_t active;
    const uint8_t id;
    Scene *next_scene;
};

#endif
