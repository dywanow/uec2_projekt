#include "Explosion.h"
#include "Bomber.h"
#include "Bomb.h"

Explosion::Explosion() : Element(0, 0, Element::Type::EXPL, Element::State::NOT_ACTIVE),
                         time(0)
{

}

void Explosion::Update(float dt)
{
	if (state == Element::State::ACTIVE)
	{
		// TODO: Set proper positions for explosion parts based on bomb position
		time += dt;
		if (time >= ACTIVE_TIME)
		{
			state = Element::State::NOT_ACTIVE;
			time = 0;
		}
	}
}

void Explosion::Draw(uint32_t *drawer) const
{
	for (auto &ep : explosion_parts)
	{
		ep.Draw(drawer);
	}
}
