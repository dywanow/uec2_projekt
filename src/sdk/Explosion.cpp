#include "Explosion.h"
#include "Bomber.h"
#include "Bomb.h"
#include "Arena.h"

Explosion::Explosion() : Element(0, 0, Types::EXPL, 0)
{

}


void Explosion::SetBombID(uint8_t bomb_id)
{
	this->bomb_id = bomb_id;
}

ExplosionPart Explosion::GetPart(uint8_t part_number) const
{
	return parts[part_number];
}

void Explosion::InitParts()
{
	DeactivateParts();

	const auto origin_norm_pos = arena->GetBomb(bomb_id).GetNormalizedPosition();
	const auto origin_pos = arena->GetBomb(bomb_id).GetPosition();
	Vector pos;
	Element current_element;
	uint8_t current_norm_pos;

	// dir_nr: 0 - UP
	//         1 - LEFT
	//         2 - DOWN
	//         3 - RIGHT

	for (uint8_t dir_nr = 0; dir_nr < 4; dir_nr++)
	{
		pos = origin_pos;
		for (uint8_t i = 0; i < EXPLOSION_LENGTH; i++)
		{
			current_norm_pos = origin_norm_pos + PositionOffset(dir_nr, i);
			current_element = arena->GetVisibleElement(current_norm_pos);
			if (!current_element.IsDestructible())
			{
				break;
			}
			else
			{
				if (current_element.Type() == Types::BOMB)
				{
					arena->DetonateBomb(current_element.ID());
					break;
				}
				if (current_element.Type() == Types::PLR1 || current_element.Type() == Types::PLR2)
				{
					arena->KillBomber(current_element.ID());
					break;
				}
				CalculatePosition(dir_nr, pos);
				parts[dir_nr * EXPLOSION_LENGTH + i].SetPosition(pos);
				parts[dir_nr * EXPLOSION_LENGTH + i].Activate();
			}
			xil_printf("%#%u, %u] (%u, %u)\n", bomb_id, dir_nr, pos.GetX(), pos.GetY());
			if (current_element.IsCollidable())
			{
				break;
			}
		}
	}
}

void Explosion::Update(float dt)
{
	if (IsActive())
	{
		time += dt;
		if (time >= ACTIVE_TIME)
		{
			Deactivate();
			time = 0;
			DeactivateParts();
		}
	}
}

void Explosion::DeactivateParts()
{
	for (auto &ep : parts)
	{
		ep.Deactivate();
	}
}

uint8_t Explosion::PositionOffset(uint8_t direction_number, uint8_t index)
{
	switch (direction_number)
	{
		case 0: return -(index + 1) * Arena::WIDTH;
		case 1: return -(index + 1);
		case 2: return (index + 1) * Arena::WIDTH;
		case 3: return index + 1;
	}
	return 0;
}

void Explosion::CalculatePosition(uint8_t direction_number, Vector &position)
{
	switch (direction_number)
	{
		case 0: position.SetY(position.GetY() - 1); break;
		case 1: position.SetX(position.GetX() - 1); break;
		case 2: position.SetY(position.GetY() + 1); break;
		case 3: position.SetX(position.GetX() + 1); break;
	}
}
