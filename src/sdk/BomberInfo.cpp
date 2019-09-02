#include "BomberInfo.h"

BomberInfo::BomberInfo(uint32_t base_addr) : axi_data(reinterpret_cast<uint32_t*>(base_addr))
{

}

void BomberInfo::Update(Bomber bomber)
{
	const auto pos = bomber.Position();
	uint8_t pos_x_dig0 = pos.GetX() % 10,
			pos_x_dig1 = pos.GetX() / 10,
			pos_y_dig0 = pos.GetY() % 10,
			pos_y_dig1 = pos.GetY() / 10,
			lives = bomber.LivesNumber(),
			bombs = bomber.FreeBombs(),
			id = bomber.ID();

	*axi_data = (bombs << 13) + (lives << 11) + (pos_y_dig0 << 7) + (pos_y_dig1 << 6) + (pos_x_dig0 << 2) + (pos_x_dig1 << 1) + id;
}
