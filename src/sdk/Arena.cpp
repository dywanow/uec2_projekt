#include "Arena.h"
#include "Element.h"
#include "Block.h"
#include "Bomber.h"
#include "Bomb.h"

Arena::Arena()
{
	for (uint8_t j = 0; j < HEIGHT; j++)
	{
		for (uint8_t i = 0; i < WIDTH; i++)
		{
			blocks[i + j*WIDTH].SetPosition(i, j);
		}
	}
	const auto SURR = Element::Types::SURR, PATH = Element::Types::PATH, OBS1 = Element::Types::OBS1, OBS2 = Element::Types::OBS2;
	enum Element::Types types[] =
	{
		SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR,
		SURR, PATH, OBS2, OBS1, OBS1, OBS2, OBS1, OBS2, OBS1, PATH, OBS1, OBS2, OBS1, OBS1, OBS1, SURR,
		SURR, PATH, PATH, OBS1, PATH, PATH, PATH, PATH, PATH, OBS1, OBS2, PATH, OBS1, PATH, OBS1, SURR,
		SURR, OBS1, PATH, OBS2, OBS1, OBS2, OBS1, OBS1, OBS1, PATH, PATH, OBS1, OBS2, OBS1, OBS2, SURR,
		SURR, PATH, PATH, PATH, PATH, OBS2, PATH, PATH, PATH, OBS2, PATH, PATH, PATH, PATH, OBS1, SURR,
		SURR, OBS1, OBS2, OBS1, OBS1, PATH, OBS2, OBS1, PATH, OBS1, OBS2, PATH, OBS2, OBS2, PATH, SURR,
		SURR, PATH, OBS1, OBS2, PATH, OBS1, PATH, PATH, PATH, PATH, OBS2, OBS1, OBS1, OBS1, PATH, SURR,
		SURR, OBS1, OBS1, PATH, OBS2, OBS2, PATH, OBS2, OBS2, PATH, OBS1, OBS1, PATH, PATH, OBS2, SURR,
		SURR, OBS2, PATH, PATH, OBS1, OBS1, PATH, OBS2, OBS2, PATH, OBS2, OBS2, PATH, OBS1, OBS1, SURR,
		SURR, PATH, OBS1, OBS1, OBS1, OBS2, PATH, PATH, PATH, PATH, OBS1, PATH, OBS2, OBS1, PATH, SURR,
		SURR, PATH, OBS2, OBS2, PATH, OBS2, OBS1, PATH, OBS1, OBS2, PATH, OBS1, OBS1, OBS2, OBS1, SURR,
		SURR, OBS1, PATH, PATH, PATH, PATH, OBS2, PATH, PATH, PATH, OBS2, PATH, PATH, PATH, PATH, SURR,
		SURR, OBS2, OBS1, OBS2, OBS1, PATH, PATH, OBS1, OBS1, OBS1, OBS2, OBS1, OBS2, PATH, OBS1, SURR,
		SURR, OBS1, PATH, OBS1, PATH, OBS2, OBS1, PATH, PATH, PATH, PATH, PATH, OBS1, PATH, PATH, SURR,
		SURR, OBS1, OBS1, OBS1, OBS2, OBS1, PATH, OBS1, OBS2, OBS1, OBS2, OBS1, OBS1, OBS2, PATH, SURR,
		SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR, SURR
	};
	for (uint16_t i = 0; i < BLOCKS_NUMBER; i++)
	{
		blocks[i].SetType(types[i]);
		elements[i] = &blocks[i];
	}

	for (uint8_t i = 0; i < BOMBS_NUMBER; i++)
	{
		elements[BLOCKS_NUMBER+i] = &bombs[i];
	}

	players[0].SetPosition(1, 1);
	players[1].SetPosition(14, 14);
	players[1].SetType(Element::Types::PLR2);
	for (uint8_t i = 0; i < PLAYERS_NUMBER; i++)
	{
		elements[BLOCKS_NUMBER+BOMBS_NUMBER+i] = &players[i];
		players[i].SetMaxBombsNumber(BOMBS_PER_PLAYER);
	}

	for (uint8_t i = 0; i < EXPLOSIONS_NUMBER; i++)
	{
		elements[BLOCKS_NUMBER+BOMBS_NUMBER+PLAYERS_NUMBER+i] = &explosions[i];
	}

	for (auto &el : elements)
	{
		el->SetArena(this);
	}
}

void Arena::MoveBomberUp(uint8_t bomber_id)
{
	MoveBomber(bomber_id, Bomber::Movement::UP);
}

void Arena::MoveBomberLeft(uint8_t bomber_id)
{
	MoveBomber(bomber_id, Bomber::Movement::LEFT);
}

void Arena::MoveBomberDown(uint8_t bomber_id)
{
	MoveBomber(bomber_id, Bomber::Movement::DOWN);
}

void Arena::MoveBomberRight(uint8_t bomber_id)
{
	MoveBomber(bomber_id, Bomber::Movement::RIGHT);
}

void Arena::InitBomb(uint8_t bomber_id)
{
	if (BomberCurrentBombsNumber(bomber_id) < BomberMaxBombsNumber(bomber_id) && !IsPositionOccupied(bomber_id))
	{
		for (auto &bomb : bombs)
		{
			if (!bomb.IsActive())
			{
				bomb.SetID(AvailableBombID());
				bomb.SetBomberID(bomber_id);
				bomb.SetPosition(BomberPosition(bomber_id));
				bomb.Activate();
				players[bomber_id].IncrementCurrentBombsNumber();
				break;
			}
		}
	}
}

void Arena::InitExplosion(uint8_t bomber_id, uint8_t bomb_id)
{
	for (auto &explosion : explosions)
	{
		if (!explosion.IsActive())
		{
			explosion.SetBomberID(bomber_id);
			explosion.SetBombID(bomb_id);
			explosion.SetPosition(GetBomb(bomb_id).GetPosition());
			explosion.Activate();
			explosion.InitParts();
			break;
		}
	}
}

void Arena::DetonateBomb(uint8_t bomb_id)
{
	for (auto &bomb : bombs)
	{
		if (bomb.ID() == bomb_id && bomb.IsActive() && !bomb.IsDetonated())
		{
			xil_printf("%u Detonate\n", bomb_id);
			bomb.Explode();
			break;
		}
	}
}

void Arena::BomberDeleteBomb(uint8_t bomber_id)
{
	players[bomber_id].DecrementBombsNumber();
}

Bomber Arena::GetBomber(uint8_t bomber_id) const
{
	return players[bomber_id];
}

Bomb Arena::GetBomb(uint8_t bomb_id) const
{
	for (const auto &bomb : bombs)
	{
		if (bomb.ID() == bomb_id)
		{
			return bomb;
		}
	}
}

Explosion Arena::GetExplosion(uint8_t explosion_number) const
{
	return explosions[explosion_number];
}

ExplosionPart Arena::GetExplosionPart(uint8_t explosion_number, uint8_t part_number) const
{
	return explosions[explosion_number].GetPart(part_number);
}

Element Arena::GetVisibleElement(uint8_t visible_element_position) const
{
	return *visible_elements[visible_element_position];
}

uint8_t Arena::IsPositionOccupied(uint8_t bomber_id) const
{
	for (const auto &bomb : bombs)
	{
		if (bomb.GetPosition() == players[bomber_id].GetPosition() && bomb.IsActive())
		{
			return 1;
		}
	}
	return 0;
}

uint8_t Arena::AvailableBombID() const
{
	for (uint8_t i = 0; i < BOMBS_NUMBER; i++)
	{
		if (!bombs[i].IsActive())
		{
			return i;
		}
	}
}

void Arena::Update(float dt)
{
	for (auto &e : elements)
	{
		if (e->IsActive())
		{
			visible_elements[e->GetNormalizedPosition()] = e;
		}
	}
	for (auto &expl : explosions)
	{
		if (expl.IsActive())
		{
			for (auto &ep : expl.parts)
			{
				if (ep.IsActive())
				{
					visible_elements[ep.GetNormalizedPosition()] = &ep;
				}
			}
		}
	}
	for (auto &e : elements)
	{
		e->Update(dt);
	}
}


void Arena::Draw(uint32_t *drawer)
{
	for (auto &v : visible_elements)
	{
		*drawer = (v->TypeCode() << 8) + v->GetNormalizedPosition();
	}
}


void Arena::MoveBomber(uint8_t bomber_id, Bomber::Movement movement)
{
	players[bomber_id].MakeMove(movement);
}

uint8_t Arena::BomberCurrentBombsNumber(uint8_t bomber_id) const
{
	return players[bomber_id].CurrentBombsNumber();
}

uint8_t Arena::BomberMaxBombsNumber(uint8_t bomber_id) const
{
	return players[bomber_id].MaxBombsNumber();
}

Vector Arena::BomberPosition(uint8_t bomber_id) const
{
	return players[bomber_id].GetPosition();
}
