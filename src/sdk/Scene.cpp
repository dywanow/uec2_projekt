#include "Scene.h"

const float Scene::BLINK_ON_TIME = 0.5f;
const float Scene::BLINK_OFF_TIME = 0.2f;

Scene::Scene(Scene *next_scene, uint8_t id, Keyboard *input) : 
    next_scene(next_scene),
    input(input),
	active(0),
	id(id)
{

}

void Scene::Activate()
{
    active = 1;
}

void Scene::Deactivate()
{
    active = 0;
}

uint8_t Scene::IsActive() const
{
    return active;
}

uint8_t Scene::ID() const
{
    return id;
}

Scene * Scene::NextScene() const
{
    return next_scene;
}

void Scene::Init()
{

}

void Scene::HandleInput()
{

}

void Scene::Update(float dt)
{

}

void Scene::Draw()
{

}
