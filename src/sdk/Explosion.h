#ifndef SRC_EXPLOSION_H_
#define SRC_EXPLOSION_H_

#include "Element.h"
#include "ExplosionPart.h"
#include "xil_types.h"

class Explosion : public Element
{
public:
	static const uint8_t PARTS_NUMBER = 8;

	ExplosionPart parts[PARTS_NUMBER];

	Explosion();
	void SetBomberID(uint8_t bomber_id);
	void SetBombID(uint8_t bomb_id);
	uint8_t GetBombID() const;
	ExplosionPart GetPart(uint8_t part_number) const;
	void InitParts();
	void Update(float dt);

private:
	static const uint8_t ACTIVE_TIME = 1;
	static const uint8_t EXPLOSION_LENGTH = PARTS_NUMBER / 4;

	float time;
	uint8_t bomber_id;
	uint8_t bomb_id;

	void DeactivateParts();
};

#endif /* SRC_EXPLOSION_H_ */
