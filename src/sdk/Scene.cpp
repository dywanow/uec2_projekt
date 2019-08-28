#include "Scene.h"

Scene::Scene(uint32_t axi_base_addr, uint8_t id) : axi_data(reinterpret_cast<uint32_t*>(axi_base_addr)),
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
