#include "Bomber.h"
#include "Arena.h"

const float Bomber::MOVE_TIME = 0.3f;

Bomber::Bomber() : Element(0, 0, Element::Type::PLR1, Element::State::ACTIVE),
                   movement(Movement::NONE),
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
			((movement == Movement::LEFT && el_pos.GetX() == position.GetX() - 1 && el_pos.GetY() == position.GetY()) ||
			(movement == Movement::RIGHT && el_pos.GetX() == position.GetX() + 1 && el_pos.GetY() == position.GetY()) ||
			(movement == Movement::UP && el_pos.GetY() == position.GetY() - 1 && el_pos.GetX() == position.GetX()) ||
			(movement == Movement::DOWN && el_pos.GetY() == position.GetY() + 1 && el_pos.GetX() == position.GetX())))
		{
			xil_printf("COLLISION | (%u, %u) | %u\n", el_pos.GetX(), el_pos.GetY(), el->GetTypeCode());
			movement = Movement::NONE;
		}
	}

	time += dt;
	if (time >= MOVE_TIME)
	{
		if (movement != Movement::NONE)
		{
			switch (movement)
			{
			case Movement::LEFT:
				position.SetX(position.GetX() - 1);
				break;
			case Movement::RIGHT:
				position.SetX(position.GetX() + 1);
				break;
			case Movement::UP:
				position.SetY(position.GetY() - 1);
				break;
			case Movement::DOWN:
				position.SetY(position.GetY() + 1);
				break;
			default:
				break;
			}
			time = 0;
			movement = Movement::NONE;
		}
		else
		{
			time = MOVE_TIME;
		}
	}
}

void Bomber::SetMovement(Bomber::Movement movement)
{
	this->movement = movement;
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

Bomber::Movement Bomber::GetMovement() const
{
	return movement;
}

uint8_t Bomber::GetBombsNumber() const
{
	return bombs_number;
}

uint8_t Bomber::GetMaxBombsNumber() const
{
	return max_bombs_number;
}
