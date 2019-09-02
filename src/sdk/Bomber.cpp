#include "Bomber.h"
#include "Arena.h"

const float Bomber::MOVE_TIME = 0.3f;

Bomber::Bomber() : Element(0, 0, Element::Types::PLR1)
{
    Init();
}

void Bomber::Init()
{
    movement = Movement::NONE;
    state = States::PLAY;
    max_bombs_number = 3;
    current_bombs_number = 0;
    alive = 1;
	lives_number = 3;
    wait_time = 0;
    active = 1;
    time = 0;
}

void Bomber::Update(float dt)
{
    if (state == States::PLAY)
    {
        for (uint16_t vis_el_nr = 0; vis_el_nr < Arena::VISIBLE_ELEMENTS_NUMBER; vis_el_nr++)
        {
            const auto vis_el = arena->AccessVisibleElement(vis_el_nr);
            const auto vis_el_pos = vis_el.Position();
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

    else if (state == States::WAIT)
    {
        if (wait_time >= WAIT_TIME)
        {
            wait_time = 0;
            state = States::PLAY;
            active = 1;
        }
        else
        {
            wait_time += dt;
        }
    }

}

void Bomber::MakeMove(Bomber::Movement movement)
{
    if (state == States::PLAY)
    {
        this->movement = movement;   
    }
}

void Bomber::Die()
{
    state = States::WAIT;
    alive = (--lives_number) != 0;
    active = 0;
}

void Bomber::Revive()
{
    state = States::PLAY;
    wait_time = 0;
	lives_number = 3;
    alive = 1;
    active = 1;
}

void Bomber::IncrementCurrentBombsNumber()
{
    current_bombs_number++;
}

void Bomber::DecrementBombsNumber()
{
    current_bombs_number--;
}

void Bomber::SetCurrentBombsNumber(uint8_t current_bombs_number)
{
    this->current_bombs_number = current_bombs_number;
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

uint8_t Bomber::IsAlive() const
{
    return alive;
}

uint8_t Bomber::LivesNumber() const
{
	return lives_number;
}

uint8_t Bomber::FreeBombs() const
{
	return max_bombs_number - current_bombs_number;
}

uint8_t Bomber::Collides(const Vector &element_position) const
{
    return ((movement == Movement::LEFT && element_position.GetX() == position.GetX() - 1 && element_position.GetY() == position.GetY()) ||
            (movement == Movement::RIGHT && element_position.GetX() == position.GetX() + 1 && element_position.GetY() == position.GetY()) ||
            (movement == Movement::UP && element_position.GetY() == position.GetY() - 1 && element_position.GetX() == position.GetX()) ||
            (movement == Movement::DOWN && element_position.GetY() == position.GetY() + 1 && element_position.GetX() == position.GetX()));
}
