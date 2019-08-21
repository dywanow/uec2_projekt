#ifndef SRC_ARENAELEMENT_H_
#define SRC_ARENAELEMENT_H_

#include "Vector.h"
#include "xil_types.h"
#include "xil_printf.h"

class Arena;

class Element
{
public:
	enum class Type { SURR, PATH, OBS1, OBS2, BOMB, EXPL, PLR1, PLR2 };
	enum class State { ACTIVE, NOT_ACTIVE };

	Element(uint16_t i, uint16_t j, Type type, State state);
	Element(Vector position, Type type, State state);
	void SetArena(Arena *arena);
	void SetPosition(uint16_t i, uint16_t j);
	void SetPosition(Vector position);
	void SetType(Type type);
	void SetState(State state);
	Vector GetPosition() const;
	Type GetType() const;
	State GetState() const;
	uint8_t GetNormalizedPosition() const;
	uint8_t GetTypeCode() const;
	uint8_t IsCollidable() const;
	uint8_t IsActive() const;
	void Draw(uint32_t *drawer) const;

protected:
	Arena *arena;
	Vector position;
	Type type;
	State state;
};

#endif  /* SRC_ARENAELEMENT_H_ */
