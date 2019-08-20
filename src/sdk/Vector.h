#ifndef SRC_VECTOR_H_
#define SRC_VECTOR_H_

#include "xil_types.h"

class Vector
{
	friend uint8_t operator==(const Vector &v1, const Vector &v2);

public:
	Vector(uint16_t x = 0, uint16_t y = 0);

	void SetX(uint16_t x);
	void SetY(uint16_t y);
	uint16_t GetX() const;
	uint16_t GetY() const;

private:
	uint16_t x;
	uint16_t y;
};

#endif /* SRC_VECTOR_H_ */
