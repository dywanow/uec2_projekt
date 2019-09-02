#ifndef BOMBERMAN_H_
#define BOMBERMAN_H_

#include "Element.h"
#include "xil_types.h"

class Bomber : public Element
{
public:
    enum class Movement { NONE, UP, DOWN, LEFT, RIGHT };
    enum class States { PLAY, WAIT };

    Bomber();
    void Init();
    void MakeMove(Movement movement);
    void Die();
    void Revive();
    void IncrementCurrentBombsNumber();
    void DecrementBombsNumber();
    void SetCurrentBombsNumber(uint8_t current_bombs_number);
    void SetMaxBombsNumber(uint8_t max_bombs_number);
    uint8_t CurrentBombsNumber() const;
    uint8_t MaxBombsNumber() const;
    uint8_t IsAlive() const;
    uint8_t LivesNumber() const;
    uint8_t FreeBombs() const;
    void Update(float dt);

private:
    static const float MOVE_TIME;
    static const uint8_t WAIT_TIME = 1;

    Movement movement;
    States state;
    uint8_t max_bombs_number;
    uint8_t current_bombs_number;
    uint8_t alive;
    uint8_t lives_number;
    float wait_time;

    uint8_t Collides(const Vector &element_position) const;
};

#endif /* BOMBERMAN_H_ */
