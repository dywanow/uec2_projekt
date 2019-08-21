#include "Vector.h"

uint8_t operator==(const Vector &v1, const Vector &v2)
{
	return v1.x == v2.x && v1.y == v2.y;
}

Vector::Vector(uint8_t x, uint8_t y) : x(x),
                                       y(y)
{

}

void Vector::SetX(uint8_t x)
{
	this->x = x;
}

void Vector::SetY(uint8_t y)
{
	this->y = y;
}

uint8_t Vector::GetX() const
{
	return x;
}

uint8_t Vector::GetY() const
{
	return y;
}

