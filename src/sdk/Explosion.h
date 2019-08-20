#ifndef SRC_EXPLOSION_H_
#define SRC_EXPLOSION_H_

#include "Element.h"
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

	void Update(float dt);

private:
	static const uint8_t ACTIVE_TIME = 1;

	Bomberman *player;
	Bomb *bomb;
	float time;

};

#endif /* SRC_EXPLOSION_H_ */
