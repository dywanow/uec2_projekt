#ifndef PRNG_H
#define PRNG_H

#include "xil_types.h"

struct PRNG
{
    static uint32_t seed;
    static void UpdateSeed();
    static uint8_t PRN(uint8_t min, uint8_t max);
};

#endif
