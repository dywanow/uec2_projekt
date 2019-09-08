#ifndef SRC_ARENA_H_
#define SRC_ARENA_H_

#include "Block.h"
#include "Bomber.h"
#include "Bomb.h"
#include "Explosion.h"
#include "xil_types.h"

//class Element;
//class Block;
//class Bomber;
//class Bomb;

class Arena
{
public:
    static const uint16_t BLOCKS_NUMBER = 256;
    static const uint16_t VISIBLE_ELEMENTS_NUMBER = 256;
    static const uint8_t BOMBERS_NUMBER = 2;
    static const uint8_t BOMBS_PER_PLAYER = 3;
    static const uint8_t BOMBS_NUMBER = BOMBERS_NUMBER*BOMBS_PER_PLAYER;
    static const uint8_t EXPLOSIONS_NUMBER = BOMBS_NUMBER;
    static const uint16_t ELEMENTS_NUMBER = BLOCKS_NUMBER+BOMBERS_NUMBER+BOMBS_NUMBER+EXPLOSIONS_NUMBER;
    static const uint8_t WIDTH = 16;
    static const uint8_t HEIGHT = 16;

    Arena();
    void Init();
    void MoveBomberUp(uint8_t bomber_id);
    void MoveBomberLeft(uint8_t bomber_id);
    void MoveBomberDown(uint8_t bomber_id);
    void MoveBomberRight(uint8_t bomber_id);
    void KillBomber(uint8_t bomber_id);
    void InitBomb(uint8_t bomber_id);
    void InitExplosion(uint8_t bomber_id, uint8_t bomb_id);
    void BomberDeleteBomb(uint8_t bomber_id);
    void DetonateBomb(uint8_t bomb_id);
    Bomb AccessBomb(uint8_t bomb_id) const;
    Bomber AccessBomber(uint8_t bomber_id) const;
    Explosion AccessExplosion(uint8_t explosion_number) const;
    ExplosionPart AccessExplosionPart(uint8_t explosion_number, uint8_t part_number) const;
    Element AccessVisibleElement(uint8_t visible_element_position) const;
    uint8_t IsAnyPlayerDead() const;
    void Update(float dt);
    void Draw(uint32_t *axi_data);

private:
    Block blocks[BLOCKS_NUMBER];
    Bomber bombers[BOMBERS_NUMBER];
    Bomb bombs[BOMBS_NUMBER];
    Explosion explosions[EXPLOSIONS_NUMBER];
    Element *elements[ELEMENTS_NUMBER];
    Element *visible_elements[VISIBLE_ELEMENTS_NUMBER];

    void MoveBomber(uint8_t bomber_id, Bomber::Movement movement);
    uint8_t BomberCurrentBombsNumber(uint8_t bomber_id) const;
    uint8_t BomberMaxBombsNumber(uint8_t bomber_id) const;
    Vector BomberPosition(uint8_t bomber_id) const;
    void BomberAddBomb(uint8_t bomber_id);
    uint8_t IsPositionOccupied(uint8_t bomber_id) const;
    uint8_t AvailableBombID() const;

};

#endif  /* SRC_ARENAELEMENT_H_ */
