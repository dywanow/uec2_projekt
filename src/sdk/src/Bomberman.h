#ifndef BOMBERMAN_H_
#define BOMBERMAN_H_

#include "xil_types.h"
#include "Vector.h"
#include "xil_printf.h"

class Bomberman
{
	u32 *drawer;
	Vector<float> position;
	Vector<float> position_aux;
	Vector<float> velocity;

public:
	Bomberman(float xpos, float ypos, u32 baseaddr);
	void SetPosition(u16 xpos, u16 ypos);
	void Draw();
	void GoLeft();
	void GoRight();
	void GoUp();
	void GoDown();
	void Stop();
	void StopX();
	void StopY();
	void Update();
	Vector<float> GetPosition() const;
	Vector<float> GetVelocity() const;
};

#endif /* BOMBERMAN_H_ */
