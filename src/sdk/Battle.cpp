#include "Battle.h"
#include "Keyboard.h"

Battle::Battle(uint32_t axi_arena_base_addr, uint32_t axi_bombers_text_base_addr, Scene *endgame, uint8_t id)
    : Scene(endgame, id),
      arena(&bomber_inputs[0], &bomber_inputs[1]),
	  axi_arena_data(reinterpret_cast<uint32_t*>(axi_arena_base_addr)),
      axi_bombers_text(reinterpret_cast<uint32_t*>(axi_bombers_text_base_addr))
{
    
}

void Battle::Init(uint8_t info)
{
    arena.Init();
    bomber_inputs[0] = 0;
    bomber_inputs[1] = 0;
}

void Battle::HandleInput(uint8_t key)
{

    if (key == 'w' || key == 'a' || key == 's' || key == 'd' || key == ' ')
    {
        bomber_inputs[0] = KeyToCode(key);
        bomber_inputs[1] = 0;
    }
    else if (key == '5' || key == '1' || key == '2' || key == '3' || key == '\r')
    {
        bomber_inputs[1] = KeyToCode(key);
        bomber_inputs[0] = 0;
    }
    else
    {
        bomber_inputs[0] = 0;
        bomber_inputs[1] = 0;
    }
}

void Battle::Update(float dt)
{
    arena.Update(dt);
    arena.Draw(axi_arena_data);
    UpdateBombersText();
    active = !arena.IsAnyBomberDead();
}

uint8_t Battle::Info() const
{
	if (arena.GetBomber(0).LivesCount() && !arena.GetBomber(1).LivesCount())
	{
		return 1;
	}
	else if (!arena.GetBomber(0).LivesCount() && arena.GetBomber(1).LivesCount())
	{
		return 2;
	}
	else if (!arena.GetBomber(0).LivesCount() && !arena.GetBomber(1).LivesCount())
	{
		return 3;
	}
	return 0;
}

uint8_t Battle::KeyToCode(uint8_t key) const
{
    if (key == 'w' || key == '5') return 1;
    if (key == 'a' || key == '1') return 2;
    if (key == 's' || key == '2') return 3;
    if (key == 'd' || key == '3') return 4;
    if (key == ' ' || key == '\r') return 5;
    return 0;
}

void Battle::UpdateBombersText()
{
    auto bomber1 = arena.GetBomber(0), bomber2 = arena.GetBomber(1);
    auto pos1 = bomber1.GetPosition(), pos2 = bomber2.GetPosition();
	uint8_t pos_x_dig0_1 = pos1.x % 10,
			pos_x_dig1_1 = pos1.x / 10,
			pos_y_dig0_1 = pos1.y % 10,
			pos_y_dig1_1 = pos1.y / 10,
			lives_1 = bomber1.LivesCount(),
			bombs_1 = bomber1.FreeBombs(),
			pos_x_dig0_2 = pos2.x % 10,
			pos_x_dig1_2 = pos2.x / 10,
			pos_y_dig0_2 = pos2.y % 10,
			pos_y_dig1_2 = pos2.y / 10,
			lives_2 = bomber2.LivesCount(),
			bombs_2 = bomber2.FreeBombs();

	*axi_bombers_text = (bombs_1 << 12) + (lives_1 << 10) + (pos_y_dig0_1 << 6) + (pos_y_dig1_1 << 5) + (pos_x_dig0_1 << 1) + (pos_x_dig1_1) +
				        (bombs_2 << 26) + (lives_2 << 24) + (pos_y_dig0_2 << 20) + (pos_y_dig1_2 << 19) + (pos_x_dig0_2 << 15) + (pos_x_dig1_2 << 14);
}
