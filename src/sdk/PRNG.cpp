#include "PRNG.h"

uint32_t PRNG::seed = 0xbeef;

void PRNG::UpdateSeed()
{
    PRNG::seed += 0x1337 * 123;
}

uint8_t PRNG::PRN(uint8_t min, uint8_t max)
{
    return seed % (max - min + 1) + min;
}
