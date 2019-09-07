#include "BomberInfo.h"

BomberInfo::BomberInfo(uint32_t base_addr) : axi_data(reinterpret_cast<uint32_t*>(base_addr))
{

}

void BomberInfo::Update(Bomber bomber1, Bomber bomber2)
{
	const auto pos1 = bomber1.Position(), pos2 = bomber2.Position();
	uint8_t pos_x_dig0_1 = pos1.GetX() % 10,
			pos_x_dig1_1 = pos1.GetX() / 10,
			pos_y_dig0_1 = pos1.GetY() % 10,
			pos_y_dig1_1 = pos1.GetY() / 10,
			lives_1 = bomber1.LivesNumber(),
			bombs_1 = bomber1.FreeBombs(),
			pos_x_dig0_2 = pos2.GetX() % 10,
			pos_x_dig1_2 = pos2.GetX() / 10,
			pos_y_dig0_2 = pos2.GetY() % 10,
			pos_y_dig1_2 = pos2.GetY() / 10,
			lives_2 = bomber2.LivesNumber(),
			bombs_2 = bomber2.FreeBombs();

	*axi_data = (bombs_1 << 12) + (lives_1 << 10) + (pos_y_dig0_1 << 6) + (pos_y_dig1_1 << 5) + (pos_x_dig0_1 << 1) + (pos_x_dig1_1) +
				(bombs_2 << 26) + (lives_2 << 24) + (pos_y_dig0_2 << 20) + (pos_y_dig1_2 << 19) + (pos_x_dig0_2 << 15) + (pos_x_dig1_2 << 14);
}
