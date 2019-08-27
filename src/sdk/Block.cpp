#include "Block.h"
#include "Arena.h"

Block::Block() : Element(0, 0, Element::Types::PATH, 1)
{

}

void Block::Update()
{
	for (uint8_t expl_nr = 0; expl_nr < Arena::EXPLOSIONS_NUMBER; expl_nr++)
	{
		if (arena->GetExplosion(expl_nr).IsActive())
		{
			for (uint8_t part_nr = 0; part_nr < Explosion::PARTS_NUMBER; part_nr++)
			{
				const auto expl_part = arena->GetExplosionPart(expl_nr, part_nr);
				if (expl_part.GetPosition() == this->GetPosition() && expl_part.IsActive())
				{
					Destroy();
				}
			}
		}
	}
}

void Block::Destroy()
{
	SetType(Element::Types::PATH);
}
