#include "Game.h"

#define TIMER_NUMBER 0

Game::Game() : state(Game::States::BATTLE),
               keyboard(XPAR_UARTLITE_0_BASEADDR),
               timer(XPAR_TMRCTR_0_BASEADDR, XPAR_TMRCTR_0_DEVICE_ID, XPAR_TMRCTR_0_CLOCK_FREQ_HZ, TIMER_NUMBER),
               arena_drawer(reinterpret_cast<uint32_t*>(XPAR_AXI_BOARD_S00_AXI_BASEADDR))
{

}


void Game::Loop()
{
    timer.Start();
    while (1)
    {
        float dt = timer.GetElapsedTime();
        HandleKeyboard();
        Update(dt);
        Draw();
    }
}

void Game::HandleKeyboard()
{
    if (!keyboard.IsKeyPressed())
    {
        pressed_key = keyboard.GetKey();
        if (state == States::BATTLE)
        {
            HandleBattleInput();
        }
        xil_printf("[%c]\n", pressed_key);
    }
}

void Game::HandleBattleInput()
{
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

void Game::Update(float dt)
{
    if (state == States::BATTLE)
    {
        if (arena.Update(dt))
        {
            arena.Init();
        }
    }
}

void Game::Draw()
{
    arena.Draw(arena_drawer);
}
