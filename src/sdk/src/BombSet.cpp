#include "BombSet.h"
#include "Bomberman.h"

BombSet::BombSet(Bomberman *owner, uint32_t baseaddr) : owner(owner), drawer((uint32_t *)baseaddr), active_bombs_number(0)
{
	for (auto &b : bombs)
	{
		b.SetActive(0);
		b.SetIndexPosition(owner->GetIndexPosition());
	}
}


void BombSet::ActivateBomb()
{
	bombs[active_bombs_number++].SetActive(1);
}



void BombSet::Update()
{
	for (auto &b : bombs)
	{
		if (!b.GetActive())
		{
			b.SetIndexPosition(owner->GetIndexPosition());
		}
	}
}

void BombSet::Draw()
{
	for (auto &b : bombs)
	{
		*drawer = (b.GetActive() << 8) + b.GetNormalizedIndexPosition();
	}

}



uint8_t BombSet::GetActiveBombsNumber() const
{
	return active_bombs_number;
}
