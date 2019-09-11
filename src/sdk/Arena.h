#ifndef ARENA_H
#define ARENA_H

#include "Path.h"
#include "Wall.h"
#include "Box.h"
#include "Bomber.h"
#include "Bomb.h"
#include "Fire.h"
#include "BonusBomb.h"
#include "BonusLife.h"
#include "xil_types.h"

class Arena
{
public:
    Arena(uint8_t *input0, uint8_t *input1);
    void Init();
    void Update(float dt);
    void Draw(uint32_t *axi);
    uint8_t CanMoveTo(uint8_t x, uint8_t y) const;
    void InitBomb(Bomber *bomber, Position position);
    void InitExplosion(Position position);
    uint8_t IsBombAt(Position position) const;
    uint8_t IsAnyBomberDead() const;
    Bomber GetBomber(uint8_t id) const;

private:
    static const uint16_t PATHS_NUMBER = 256;
    static const uint16_t WALLS_NUMBER = 256;
    static const uint16_t BOXES_NUMBER = 256;
    static const uint16_t BOMBERS_NUMBER = 2;
    static const uint16_t BOMBS_NUMBER = 3 * BOMBERS_NUMBER;
    static const uint16_t FIRES_NUMBER = 9 * BOMBS_NUMBER;
    static const uint16_t BONUS_BOMBS_NUMBER = BOMBERS_NUMBER;
    static const uint16_t BONUS_LIVES_NUMBER = BOMBERS_NUMBER;
    static const uint16_t ELEMENTS_NUMBER = PATHS_NUMBER+WALLS_NUMBER+BOXES_NUMBER+BOMBERS_NUMBER+BOMBS_NUMBER+FIRES_NUMBER+BONUS_BOMBS_NUMBER+BONUS_LIVES_NUMBER;
    static const uint8_t WIDTH = 16;
    static const uint8_t HEIGHT = 16;

    static uint8_t select;
    Path paths[PATHS_NUMBER];
    Wall walls[WALLS_NUMBER];
    Box boxes[BOXES_NUMBER];
    Bomb bombs[BOMBS_NUMBER];
    Fire fires[FIRES_NUMBER];
    Bomber bombers[BOMBERS_NUMBER];
    BonusBomb bonus_bombs[BONUS_BOMBS_NUMBER];
    BonusLife bonus_lives[BONUS_LIVES_NUMBER];
    Element *elements[ELEMENTS_NUMBER];
    float time;

    void InitFire(Position position);
};

#endif
