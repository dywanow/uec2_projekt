#include "Bomber.h"
#include "Arena.h"

const float Bomber::MOVE_TIME = 0.3f;

Bomber::Bomber() : Element(0, 0, Element::Type::PLR1, Element::State::ACTIVE),
                   movement_direction(MovementDirection::NONE),
                   time(0),
				   max_bombs_number(0),
                   bombs_number(0)
{

}


void Bomber::Update(float dt)
{
	for (auto &el : arena->elements)
	{
		auto el_pos = el->GetPosition();
		if (el->IsCollidable() && el->IsActive() &&
			((movement_direction == MovementDirection::LEFT && el_pos.GetX() == position.GetX() - 1 && el_pos.GetY() == position.GetY()) ||
			(movement_direction == MovementDirection::RIGHT && el_pos.GetX() == position.GetX() + 1 && el_pos.GetY() == position.GetY()) ||
			(movement_direction == MovementDirection::UP && el_pos.GetY() == position.GetY() - 1 && el_pos.GetX() == position.GetX()) ||
			(movement_direction == MovementDirection::DOWN && el_pos.GetY() == position.GetY() + 1 && el_pos.GetX() == position.GetX())))
		{
			xil_printf("COLLISION | (%u, %u) | %u\n", el_pos.GetX(), el_pos.GetY(), el->GetTypeCode());
			movement_direction = MovementDirection::NONE;
		}
	}

	time += dt;
	if (time >= MOVE_TIME)
	{
		if (movement_direction != MovementDirection::NONE)
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
			movement_direction = MovementDirection::NONE;
		}
		else
		{
			time = MOVE_TIME;
		}
	}
}

void Bomber::SetMovementDirection(Bomber::MovementDirection movement_direction)
{
	this->movement_direction = movement_direction;
}

void Bomber::IncrementBombsNumber()
{
	bombs_number++;
}

void Bomber::DecrementBombsNumber()
{
	bombs_number--;
}

void Bomber::SetMaxBombsNumber(uint8_t max_bombs_number)
{
	this->max_bombs_number = max_bombs_number;
}

Bomber::MovementDirection Bomber::GetMovementDirection() const
{
	return movement_direction;
}

uint8_t Bomber::GetBombsNumber() const
{
	return bombs_number;
}

uint8_t Bomber::GetMaxBombsNumber() const
{
	return max_bombs_number;
}
