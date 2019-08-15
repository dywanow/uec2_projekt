#ifndef SRC_ARENAELEMENT_H_
#define SRC_ARENAELEMENT_H_

#include "Vector.h"
#include "xil_types.h"

class Element
{
public:
	static uint8_t const SIZE = 64;

	Element(uint16_t i, uint16_t j);
	Element(Vector position);

	void SetIndexPosition(uint16_t i, uint16_t j);
	void SetIndexPosition(Vector position);
	Vector GetIndexPosition() const;
	uint8_t GetNormalizedIndexPosition() const;

protected:
	Vector index_position;
	Vector pixel_position;

	void SetPixelPositionByIndexPosition();
};

#endif  /* SRC_ARENAELEMENT_H_ */
