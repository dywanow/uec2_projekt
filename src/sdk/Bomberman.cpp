#include "Bomberman.h"
#include "Block.h"

const float Bomberman::MOVE_TIME = 0.3f;

Bomberman::Bomberman() : Element(0, 0, Element::Type::PLR1, Element::State::ACTIVE),
						 movement_direction(MovementDirection::NONE),
						 time(0)
{

}

Bomberman::Bomberman(uint8_t x, uint8_t y, Element::Type type) : Element(x, y, type, Element::State::ACTIVE),
																 movement_direction(MovementDirection::NONE),
																 time(0)
{

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


void Bomberman::Update(float dt)
{
	time += dt;
	if (time >= MOVE_TIME && movement_direction != MovementDirection::NONE)
	{
		switch (movement_direction)
		{
		case MovementDirection::LEFT:
			position.SetX(position.GetX() - 1);
			break;
		case MovementDirection::RIGHT:
			position.SetX(position.GetX() + 1);
			break;
		case MovementDirection::UP:
			position.SetY(position.GetY() - 1);
			break;
		case MovementDirection::DOWN:
			position.SetY(position.GetY() + 1);
			break;
		default:
			break;
		}
		time = 0;
	}
	movement_direction = MovementDirection::NONE;
}


Bomberman::MovementDirection Bomberman::GetMovementDirection() const
{
	return movement_direction;
}

uint8_t Bomberman::CollidesWithElement(const Element &element) const
{
	auto el_pos = element.GetPosition();
	if (element.IsCollidable() && element.IsActive() &&
		((movement_direction == Bomberman::MovementDirection::LEFT && el_pos.GetX() == position.GetX() - 1 && el_pos.GetY() == position.GetY()) ||
		(movement_direction == Bomberman::MovementDirection::RIGHT && el_pos.GetX() == position.GetX() + 1 && el_pos.GetY() == position.GetY()) ||
		(movement_direction == Bomberman::MovementDirection::UP && el_pos.GetY() == position.GetY() - 1 && el_pos.GetX() == position.GetX()) ||
		(movement_direction == Bomberman::MovementDirection::DOWN && el_pos.GetY() == position.GetY() + 1 && el_pos.GetX() == position.GetX())))
		{
			return 1;
		}
	return 0;
}
