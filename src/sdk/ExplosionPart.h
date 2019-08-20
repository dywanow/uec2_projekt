#ifndef SRC_EXPLOSIONPART_H_
#define SRC_EXPLOSIONPART_H_

#include "Element.h"
#include "xil_types.h"

class ExplosionPart : public Element
{
public:
	ExplosionPart();

	uint8_t CollidesWithElement(const Element &element) const;
};

#endif /* SRC_EXPLOSION_H_ */
