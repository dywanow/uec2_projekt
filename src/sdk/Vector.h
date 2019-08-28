#ifndef SRC_VECTOR_H_
#define SRC_VECTOR_H_

#include "xil_types.h"

class Vector
{
    friend uint8_t operator==(const Vector &v1, const Vector &v2);

public:
    Vector(uint8_t x = 0, uint8_t y = 0);

    void SetX(uint8_t x);
    void SetY(uint8_t y);
    uint8_t GetX() const;
    uint8_t GetY() const;

private:
    uint8_t x;
    uint8_t y;
};

#endif /* SRC_VECTOR_H_ */
