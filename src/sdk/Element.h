#ifndef SRC_ARENAELEMENT_H_
#define SRC_ARENAELEMENT_H_

#include "Vector.h"
#include "xil_types.h"
#include "xil_printf.h"

class Arena;

class Element
{
public:
	enum class Types { SURR, PATH, OBS1, OBS2, BOMB, EXPL, PLR1, PLR2 };

	Element();
	Element(uint16_t x, uint16_t y, Types type, uint8_t active);
	void SetArena(Arena *arena);
	void SetPosition(uint16_t x, uint16_t y);
	void SetPosition(Vector position);
	void SetType(Types type);
	void SetID(uint8_t id);
	void Activate();
	void Deactivate();
	Vector GetPosition() const;
	Types Type() const;
	uint8_t ID() const;
	uint8_t GetNormalizedPosition() const;
	uint8_t TypeCode() const;
	uint8_t IsCollidable() const;
	uint8_t IsActive() const;
	uint8_t IsDestructible() const;

protected:
	Arena *arena;
	Vector position;
	Types type;
	uint8_t active;
	uint8_t id;
};

#endif  /* SRC_ARENAELEMENT_H_ */
