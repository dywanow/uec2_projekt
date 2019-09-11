#include "Bomber.h"
#include "Arena.h"
#include "BonusBomb.h"
#include "BonusLife.h"

const float RESPAWN_TIME = 1.0f;

Bomber::Bomber()
    : Element()
{
    
}

void Bomber::Init()
{
    state = States::Alive;
    time = 0;
    bombs_count = 0;
    max_bombs_count = 1;
    move_delay = 0.1f;
    lives_count = 2;
}

void Bomber::Update(float dt)
{
    time += dt;
    if (state == States::Alive)
    {
        if (time >= move_delay)
        {
            if (*input == 1 && arena->CanMoveTo(position.x, position.y-1))
            {
                position.y--;
                time = 0;
            }
            else if (*input == 2 && arena->CanMoveTo(position.x-1, position.y))
            {
                position.x--;
                time = 0;
            }
            else if (*input == 3 && arena->CanMoveTo(position.x, position.y+1))
            {
                position.y++;
                time = 0;
            }
            else if (*input == 4 && arena->CanMoveTo(position.x+1, position.y))
            {
                position.x++;
                time = 0;
            }
            else
            {
                time = move_delay;
            }
        }
        if (*input == 5 && bombs_count < max_bombs_count && !arena->IsBombAt(position))
        {
            arena->InitBomb(this, position);
            bombs_count++;
        }
    }
    else
    {
        if (time >= RESPAWN_TIME)
        {
            state = States::Alive;
            active = 1;
            time = 0;
        }
    }
}

void Bomber::OnFireCollision()
{
    state = States::Dead;
    position = respawn_position;
    active = 0;
    time = 0;
    lives_count--;
}

void Bomber::OnBonusBombCollision()
{
    max_bombs_count++;
}

void Bomber::OnBonusLifeCollision()
{
    lives_count++;
}

void Bomber::SetCode(uint8_t code)
{
    this->code = code;
}

void Bomber::SetRespawnPosition(Position respawn_position)
{
    this->respawn_position = respawn_position;
}

void Bomber::SetInput(uint8_t *input)
{
    this->input = input;
}

void Bomber::SetID(uint8_t id)
{
    this->id = id;
}

void Bomber::OnBombExplosion()
{
	bombs_count--;
}

uint8_t Bomber::LivesCount() const
{
    return lives_count;
}

uint8_t Bomber::FreeBombs() const
{
    return max_bombs_count - bombs_count;
}

uint8_t Bomber::Code() const
{
    return code;
}
