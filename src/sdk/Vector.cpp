#include "Vector.h"

uint8_t operator==(const Vector &v1, const Vector &v2)
{
	return v1.x == v2.x && v1.y == v2.y;
}

Vector::Vector(uint16_t x, uint16_t y) : x(x),
										 y(y)
{

}

void Vector::SetX(uint16_t x)
{
	this->x = x;
}

void Vector::SetY(uint16_t y)
{
	this->y = y;
}

uint16_t Vector::GetX() const
{
	return x;
}

uint16_t Vector::GetY() const
{
	return y;
}

