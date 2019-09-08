#include "Battle.h"
#include "Keyboard.h"

Battle::Battle(uint32_t axi_arena_base_addr, Scene *endgame, uint8_t id, Keyboard *input, uint32_t bomber_info_base_addr) : 
    Scene(endgame, id, input),
	axi_arena_data(reinterpret_cast<uint32_t*>(axi_arena_base_addr)),
	bomber_info(bomber_info_base_addr)
{
    
}

void Battle::Init(uint8_t info)
{
    arena.Init();
}

void Battle::HandleInput()
{
    uint8_t pressed_key = input->GetKey();
    if (pressed_key == 'w')
    {
        arena.MoveBomberUp(0);
    }
    if (pressed_key == 'a')
    {
        arena.MoveBomberLeft(0);
    }
    if (pressed_key == 's')
    {
        arena.MoveBomberDown(0);
    }
    if (pressed_key == 'd')
    {
        arena.MoveBomberRight(0);
    }
    if (pressed_key == ' ')
    {
        arena.InitBomb(0);
//        xil_printf("BOMB0 @ (%u, %u) [%u]\n", arena.AccessBomber(0).Position().GetX(), arena.AccessBomber(0).Position().GetY(), arena.AccessBomber(0).NormalizedPosition());
    }
    if (pressed_key == '5')
    {
        arena.MoveBomberUp(1);
    }
    if (pressed_key == '1')
    {
        arena.MoveBomberLeft(1);
    }
    if (pressed_key == '2')
    {
        arena.MoveBomberDown(1);
    }
    if (pressed_key == '3')
    {
        arena.MoveBomberRight(1);
    }
    if (pressed_key == '\r')
    {
        arena.InitBomb(1);
//        xil_printf("BOMB1 @ (%u, %u) [%u]\n", arena.AccessBomber(1).Position().GetX(), arena.AccessBomber(1).Position().GetY(), arena.AccessBomber(1).NormalizedPosition());
    }
//    if (pressed_key == 'p')
//    {
//        xil_printf("PLAYER0 @ (%u, %u) [%u]\nPLAYER1 @ (%u, %u) [%u]\n",
//        arena.AccessBomber(0).Position().GetX(), arena.AccessBomber(0).Position().GetY(), arena.AccessBomber(0).NormalizedPosition(),
//        arena.AccessBomber(1).Position().GetX(), arena.AccessBomber(1).Position().GetY(), arena.AccessBomber(1).NormalizedPosition());
//    }
}

void Battle::Update(float dt)
{
    arena.Update(dt);
    bomber_info.Update(arena.AccessBomber(0), arena.AccessBomber(1));
    active = !arena.IsAnyPlayerDead();
}

void Battle::Draw()
{
    arena.Draw(axi_arena_data);
}

uint8_t Battle::Info() const
{
	if (arena.AccessBomber(0).LivesNumber() && !arena.AccessBomber(1).LivesNumber())
	{
		return 1;
	}
	else if (!arena.AccessBomber(0).LivesNumber() && arena.AccessBomber(1).LivesNumber())
	{
		return 2;
	}
	else if (!arena.AccessBomber(0).LivesNumber() && !arena.AccessBomber(1).LivesNumber())
	{
		return 3;
	}
	return 0;
}
