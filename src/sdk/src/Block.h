#ifndef SRC_BLOCK_H_
#define SRC_BLOCK_H_

#include "Element.h"

#include "xil_types.h"
#include "xil_printf.h"

class Block : public Element
{
public:
	enum Type
	{
		SURROUNDING,
		PATH,
		OBSTACLE1,
		OBSTACLE2
	};

	Block();

	void SetType(Type type);
	Type GetType() const;

private:
	Type type;
};



#endif /* SRC_BLOCK_H_ */
