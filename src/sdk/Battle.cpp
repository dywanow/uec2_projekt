#include "Battle.h"

Battle::Battle(uint32_t axi_base_addr, uint8_t id) : Scene(axi_base_addr, id)
{

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
        xil_printf("BOMB0 @ (%u, %u) [%u]\n", arena.AccessBomber(0).Position().GetX(), arena.AccessBomber(0).Position().GetY(), arena.AccessBomber(0).NormalizedPosition());
    }
    if (pressed_key == '8')
    {
        arena.MoveBomberUp(1);
    }
    if (pressed_key == '4')
    {
        arena.MoveBomberLeft(1);
    }
    if (pressed_key == '2')
    {
        arena.MoveBomberDown(1);
    }
    if (pressed_key == '6')
    {
        arena.MoveBomberRight(1);
    }
    if (pressed_key == '5')
    {
        arena.InitBomb(1);
        xil_printf("BOMB1 @ (%u, %u) [%u]\n", arena.AccessBomber(1).Position().GetX(), arena.AccessBomber(1).Position().GetY(), arena.AccessBomber(1).NormalizedPosition());
    }
    if (pressed_key == 'p')
    {
        xil_printf("PLAYER0 @ (%u, %u) [%u]\nPLAYER1 @ (%u, %u) [%u]\n",
        arena.AccessBomber(0).Position().GetX(), arena.AccessBomber(0).Position().GetY(), arena.AccessBomber(0).NormalizedPosition(),
        arena.AccessBomber(1).Position().GetX(), arena.AccessBomber(1).Position().GetY(), arena.AccessBomber(1).NormalizedPosition());
    }
}

uint8_t Battle::Update(float dt)
{
    arena.Update(dt);
    // return arena.IsAnyPlayerDead()
}

void Battle::Draw()
{
    arena.Draw(axi_data);
}
