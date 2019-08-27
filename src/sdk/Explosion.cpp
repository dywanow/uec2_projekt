#include "Explosion.h"
#include "Bomber.h"
#include "Bomb.h"
#include "Arena.h"

Explosion::Explosion() : Element(0, 0, Types::EXPL, 0),
                         time(0)
{

}

void Explosion::SetBomberID(uint8_t bomber_id)
{
	this->bomber_id = bomber_id;
}

void Explosion::SetBombID(uint8_t bomb_id)
{
	this->bomb_id = bomb_id;
}

uint8_t Explosion::GetBombID() const
{
	return bomb_id;
}

ExplosionPart Explosion::GetPart(uint8_t part_number) const
{
	return parts[part_number];
}

void Explosion::InitParts()
{
	for (auto &ep : parts)
	{
		ep.Deactivate();
	}

	const auto origin_norm_pos = arena->GetBomb(bomb_id).GetNormalizedPosition();
	const auto origin_pos = arena->GetBomb(bomb_id).GetPosition();
	auto pos = origin_pos;
	Element current_element;
	uint8_t current_norm_pos;

	// TODO: Optimize following code

	// UP
	for (uint8_t i = 0; i < EXPLOSION_LENGTH; i++)
	{
		current_norm_pos = origin_norm_pos-(i+1)*Arena::WIDTH;
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
			}
			pos.SetY(pos.GetY() - 1);
			parts[i].SetPosition(pos);
			parts[i].Activate();
//			xil_printf("%u\n", current_norm_pos);
		}
//		xil_printf("U %u\n", pos.GetY());
		if (current_element.IsCollidable())
		{
			break;
		}

	}
	pos = origin_pos;

	// LEFT
	for (uint8_t i = 0; i < EXPLOSION_LENGTH; i++)
	{
		current_norm_pos = origin_norm_pos-(i+1);
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
			}
			pos.SetX(pos.GetX() - 1);
			parts[EXPLOSION_LENGTH+i].SetPosition(pos);
			parts[EXPLOSION_LENGTH+i].Activate();
//			xil_printf("%u\n", current_norm_pos);
		}
//		xil_printf("L %u\n", pos.GetX());
		if (current_element.IsCollidable())
		{
			break;
		}

	}
	pos = origin_pos;

	// DOWN
	for (uint8_t i = 0; i < EXPLOSION_LENGTH; i++)
	{
		current_norm_pos = origin_norm_pos+(i+1)*Arena::WIDTH;
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
			}
			pos.SetY(pos.GetY() + 1);
			parts[2*EXPLOSION_LENGTH+i].SetPosition(pos);
			parts[2*EXPLOSION_LENGTH+i].Activate();
//			xil_printf("%u\n", current_norm_pos);
		}
//		xil_printf("D %u\n", pos.GetY());
		if (current_element.IsCollidable())
		{
			break;
		}

	}
	pos = origin_pos;

	// RIGHT
	for (uint8_t i = 0; i < EXPLOSION_LENGTH; i++)
	{
		current_norm_pos = origin_norm_pos+(i+1);
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
			}
			pos.SetX(pos.GetX() + 1);
			parts[3*EXPLOSION_LENGTH+i].SetPosition(pos);
			parts[3*EXPLOSION_LENGTH+i].Activate();
//			xil_printf("%u\n", current_norm_pos);
		}
//		xil_printf("R %u\n", pos.GetX());
		if (current_element.IsCollidable())
		{
			break;
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
