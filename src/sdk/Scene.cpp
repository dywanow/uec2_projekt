#include "Scene.h"

Scene::Scene(uint8_t id, Keyboard *input) : input(input),
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
