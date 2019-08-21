#include "Bomber.h"
#include "Block.h"

const float Bomber::MOVE_TIME = 0.3f;

Bomber::Bomber() : Element(0, 0, Element::Type::PLR1, Element::State::ACTIVE),
						 movement_direction(MovementDirection::NONE),
						 time(0)
{

}

Bomber::Bomber(uint8_t x, uint8_t y, Element::Type type) : Element(x, y, type, Element::State::ACTIVE),
																 movement_direction(MovementDirection::NONE),
																 time(0)
{

}

void Bomber::GoLeft()
{
	movement_direction = MovementDirection::LEFT;
}
void Bomber::GoRight()
{
	movement_direction = MovementDirection::RIGHT;
}
void Bomber::GoUp()
{
	movement_direction = MovementDirection::UP;
}
void Bomber::GoDown()
{
	movement_direction = MovementDirection::DOWN;
}

void Bomber::Stop()
{
	movement_direction = MovementDirection::NONE;
}


void Bomber::Update(float dt)
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


Bomber::MovementDirection Bomber::GetMovementDirection() const
{
	return movement_direction;
}

uint8_t Bomber::CollidesWithElement(const Element &element) const
{
	auto el_pos = element.GetPosition();
	if (element.IsCollidable() && element.IsActive() &&
		((movement_direction == Bomber::MovementDirection::LEFT && el_pos.GetX() == position.GetX() - 1 && el_pos.GetY() == position.GetY()) ||
		(movement_direction == Bomber::MovementDirection::RIGHT && el_pos.GetX() == position.GetX() + 1 && el_pos.GetY() == position.GetY()) ||
		(movement_direction == Bomber::MovementDirection::UP && el_pos.GetY() == position.GetY() - 1 && el_pos.GetX() == position.GetX()) ||
		(movement_direction == Bomber::MovementDirection::DOWN && el_pos.GetY() == position.GetY() + 1 && el_pos.GetX() == position.GetX())))
		{
			return 1;
		}
	return 0;
}
