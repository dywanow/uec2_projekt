#ifndef SRC_BLOCK_H_
#define SRC_BLOCK_H_

#include "xil_types.h"
#include "Vector.h"
#include "xil_printf.h"

class Block
{
public:
	// 0000 -> surrounding
	// 0001 -> path
	// 0010 -> obstacle1
	// 0011 -> obstacle2
	// 0100 -> bomb
	// 0101 -> explosion
	enum Type
	{
		SURROUNDING,
		PATH,
		OBSTACLE1,
		OBSTACLE2,
		BOMB,
		EXPLOSION
	};

private:
	Vector<u16> position;
	u8 index;
	Type type;

public:



	Block();


	u8 GetIndex() const;
	Vector<u16> GetPosition() const;
	Type GetType() const;
	void SetIndex(u16 index);
	void SetPosition(Vector<u16> position);
	void SetType(Type type);
};



#endif /* SRC_BLOCK_H_ */
