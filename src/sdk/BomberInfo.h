#ifndef SRC_BOMBERINFO_H_
#define SRC_BOMBERINFO_H_

#include "xil_types.h"
#include "Bomber.h"

class BomberInfo
{
public:
	BomberInfo(uint32_t base_addr);
    void Update(Bomber bomber1, Bomber bomber2);

private:
    uint32_t * const axi_data;
};

#endif /* SRC_BOMBERINFO_H_ */
