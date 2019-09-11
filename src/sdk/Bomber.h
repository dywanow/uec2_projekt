#ifndef BOMBER_H
#define BOMBER_H

#include "Element.h"
#include "xil_types.h"

class BonusBomb;
class BonusLife;

class Bomber : public Element
{
public:
    Bomber();
    void Init() override;
    void Update(float dt) override;
    void OnFireCollision() override;
    uint8_t Code() const override;
    void OnBonusBombCollision();
    void OnBonusLifeCollision();
    void SetCode(uint8_t code);
    void SetRespawnPosition(Position respawn_position);
    void SetInput(uint8_t *input);
    void SetID(uint8_t id);
    void OnBombExplosion();
    uint8_t LivesCount() const;
    uint8_t FreeBombs() const;

private:
    enum class States { Alive, Dead };

    States state;
    Position respawn_position;
    uint8_t *input;
    uint8_t id;
    uint8_t code;
    uint8_t bombs_count;
    uint8_t max_bombs_count;
    uint8_t lives_count;
    float time;
    float move_delay;
};

#endif
