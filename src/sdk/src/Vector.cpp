#include "Vector.h"

Vector::Vector(uint16_t x, uint16_t y) : x(x), y(y) { }

Vector Vector::operator+(const Vector &v)
{
	Vector vector;
	vector.x = x + v.x;
	vector.y = y + v.y;
	return vector;
}

Vector Vector::operator*(const Vector &v)
{
	Vector vector;
	vector.x = x * v.x;
	vector.y = y * v.y;
	return vector;
}

Vector Vector::operator*(const uint16_t &value)
{
	Vector vector;
	vector.x = x * value;
	vector.y = y * value;
	return vector;
}

Vector& Vector::operator+=(const Vector &v)
{
	x += v.x;
	y += v.y;
	return *this;
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

