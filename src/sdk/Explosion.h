#ifndef SRC_EXPLOSION_H_
#define SRC_EXPLOSION_H_

#include "Element.h"
#include "ExplosionPart.h"
#include "xil_types.h"

class Bomberman;
class Bomb;

class Explosion : public Element
{
public:
	Explosion();

	void SetTime(float time);
	void SetBomberman(Bomberman *owner);
	void SetBomb(Bomb *bomb);
	float GetTime() const;
	Bomberman* GetBomberman() const;
	Bomb* GetBomb() const;

	uint8_t CollidesWithElement(const Element &element) const;
	void Update(float dt);

	void Draw(uint32_t *drawer) const;

private:
	static const uint8_t ACTIVE_TIME = 1;
	static const uint8_t PARTS_NUMBER = 12;

	Bomberman *player;
	Bomb *bomb;
	ExplosionPart explosion_parts[PARTS_NUMBER];
	float time;

};

#endif /* SRC_EXPLOSION_H_ */
