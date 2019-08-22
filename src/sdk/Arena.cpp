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
	const auto SURR = Element::Type::SURR, PATH = Element::Type::PATH, OBS1 = Element::Type::OBS1, OBS2 = Element::Type::OBS2;
	Element::Type types[] =
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
	players[1].SetType(Element::Type::PLR2);
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

void Arena::InitBomb(uint8_t bomber_id)
{
	if (players[bomber_id].GetBombsNumber() < players[bomber_id].GetMaxBombsNumber())
	{
		for (auto &bomb : bombs)
		{
			if (!IsPositionOccupied(bomber_id))
			{
				bomb.SetState(Element::State::ACTIVE);
				bomb.SetPosition(players[bomber_id].GetPosition());
				bomb.SetBomberID(bomber_id);
				players[bomber_id].IncrementBombsNumber();
				break;
			}
		}
	}
}

void Arena::InitExplosion(uint8_t bomber_id)
{
	for (auto &explosion : explosions)
	{
		if (!explosion.IsActive())
		{
			explosion.SetState(Element::State::ACTIVE);
			explosion.SetPosition(players[bomber_id].GetPosition());
			explosion.SetBomberID(bomber_id);
			explosion.InitParts();
			break;
		}
	}
}

uint8_t Arena::IsPositionOccupied(uint8_t bomber_id) const
{
	for (auto &bomb : bombs)
	{
		if (bomb.GetPosition() == players[bomber_id].GetPosition() && bomb.IsActive())
		{
			return 1;
		}
	}
	return 0;
}

void Arena::Update(float dt)
{
	for (auto &e : elements)
	{
		if (e->IsActive())
		{
			view[e->GetNormalizedPosition()] = e;
		}
	}
	for (auto &player : players)
	{
		player.Update(dt);
	}
	for (auto &bomb : bombs)
	{
		bomb.Update(dt);
	}
}


void Arena::Draw(uint32_t *drawer)
{
	for (auto &v : view)
	{
		*drawer = (v->GetTypeCode() << 8) + v->GetNormalizedPosition();
	}
}
