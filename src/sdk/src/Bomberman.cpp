#include "Bomberman.h"


Bomberman::Bomberman(float x, float y, u32 baseaddr) : drawer((u32 *)baseaddr), position({x, y}), position_aux({x, y}), velocity({0, 0}) {}

void Bomberman::SetPosition(u16 x, u16 y)
{
	position.x = x;
	position.y = y;
}

void Bomberman::Draw()
{
	*drawer = ((u16)position.y << 11) + ((u16)position.x << 1);
}
void Bomberman::GoLeft()
{
	if (velocity.x >= 0)
	{
		velocity.x -= 0.03;
	}
}
void Bomberman::GoRight()
{
	if (velocity.x <= 0)
	{
		velocity.x += 0.03;
	}
}
void Bomberman::GoUp()
{
	if (velocity.y >= 0)
	{
		velocity.y -= 0.03;
	}
}
void Bomberman::GoDown()
{
	if (velocity.y <= 0)
	{
		velocity.y += 0.03;
	}
}

void Bomberman::Stop()
{
	velocity.x = 0;
	velocity.y = 0;
}

void Bomberman::StopX()
{
	velocity.x = 0;
}

void Bomberman::StopY()
{
	velocity.y = 0;
}

void Bomberman::Update()
{
//	xil_printf("a");
	position.x += velocity.x;
	position.y += velocity.y;
}

Vector<float> Bomberman::GetPosition() const
{
	return position;
}

Vector<float> Bomberman::GetVelocity() const
{
	return velocity;
}
