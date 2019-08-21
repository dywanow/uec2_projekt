#ifndef SRC_EXPLOSION_H_
#define SRC_EXPLOSION_H_

#include "Element.h"
#include "ExplosionPart.h"
#include "xil_types.h"

class Explosion : public Element
{
public:
	Explosion();
	void Update(float dt);
	void Draw(uint32_t *drawer) const;

private:
	static const uint8_t ACTIVE_TIME = 1;
	static const uint8_t PARTS_NUMBER = 12;

	ExplosionPart explosion_parts[PARTS_NUMBER];
	float time;
};

#endif /* SRC_EXPLOSION_H_ */
