#include "Bomber.h"
#include "Arena.h"

const float Bomber::MOVE_TIME = 0.3f;

Bomber::Bomber() : Element(0, 0, Element::Types::PLR1, 1),
                   movement(Movement::NONE),
                   time(0),
				   max_bombs_number(0),
				   current_bombs_number(0)
{

}


void Bomber::Update(float dt)
{
	for (uint16_t vis_el_nr = 0; vis_el_nr < Arena::VISIBLE_ELEMENTS_NUMBER; vis_el_nr++)
	{
		const auto vis_el = arena->GetVisibleElement(vis_el_nr);
		const auto vis_el_pos = vis_el.GetPosition();
		if (vis_el.IsCollidable() && vis_el.IsActive() && Collides(vis_el_pos))
		{
			xil_printf("COLLISION | (%u, %u) | %u\n", vis_el_pos.GetX(), vis_el_pos.GetY(), vis_el.TypeCode());
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

void Bomber::MakeMove(Bomber::Movement movement)
{
	this->movement = movement;
}

void Bomber::IncrementCurrentBombsNumber()
{
	current_bombs_number++;
}

void Bomber::DecrementBombsNumber()
{
	current_bombs_number--;
}

void Bomber::SetMaxBombsNumber(uint8_t max_bombs_number)
{
	this->max_bombs_number = max_bombs_number;
}

uint8_t Bomber::CurrentBombsNumber() const
{
	return current_bombs_number;
}

uint8_t Bomber::MaxBombsNumber() const
{
	return max_bombs_number;
}

uint8_t Bomber::Collides(const Vector &element_position) const
{
	return ((movement == Movement::LEFT && element_position.GetX() == position.GetX() - 1 && element_position.GetY() == position.GetY()) ||
			(movement == Movement::RIGHT && element_position.GetX() == position.GetX() + 1 && element_position.GetY() == position.GetY()) ||
			(movement == Movement::UP && element_position.GetY() == position.GetY() - 1 && element_position.GetX() == position.GetX()) ||
			(movement == Movement::DOWN && element_position.GetY() == position.GetY() + 1 && element_position.GetX() == position.GetX()));
}
