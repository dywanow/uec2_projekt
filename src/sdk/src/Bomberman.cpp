#include "Bomberman.h"


Bomberman::Bomberman(uint8_t x, uint8_t y, uint32_t baseaddr, uint32_t bombs_baseaddr) : Element(x, y),
																			drawer((uint32_t *)baseaddr),
																		    movement_direction(MovementDirection::NONE),
																			bomb_set(this, bombs_baseaddr)
{

}



void Bomberman::Draw()
{
	*drawer = (pixel_position.GetY() << 11) + (pixel_position.GetX() << 1);
}
void Bomberman::GoLeft()
{
	movement_direction = MovementDirection::LEFT;
}
void Bomberman::GoRight()
{
	movement_direction = MovementDirection::RIGHT;
}
void Bomberman::GoUp()
{
	movement_direction = MovementDirection::UP;
}
void Bomberman::GoDown()
{
	movement_direction = MovementDirection::DOWN;
}

void Bomberman::Stop()
{
	movement_direction = MovementDirection::NONE;
}


void Bomberman::Update()
{
	switch (movement_direction)
	{
	case MovementDirection::LEFT:
		SetIndexPosition(index_position.GetX() - 1, index_position.GetY());
		break;
	case MovementDirection::RIGHT:
		SetIndexPosition(index_position.GetX() + 1, index_position.GetY());
		break;
	case MovementDirection::UP:
		SetIndexPosition(index_position.GetX(), index_position.GetY() - 1);
		break;
	case MovementDirection::DOWN:
		SetIndexPosition(index_position.GetX(), index_position.GetY() + 1);
		break;
	default:
		break;
	}
	Stop();

	bomb_set.Update();
}

void Bomberman::PlaceBomb()
{
	if (bomb_set.GetActiveBombsNumber() < BombSet::MAX_BOMBS_NUMBER)
	{
		bomb_set.ActivateBomb();
	}
}


Bomberman::MovementDirection Bomberman::GetMovementDirection() const
{
	return movement_direction;
}

BombSet Bomberman::GetBombSet() const
{
	return bomb_set;
}
