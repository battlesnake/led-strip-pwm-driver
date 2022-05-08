#pragma once
#include <stm8s.h>

/*
 * Sine, mapped to range [0,100]
 *
 * Could be optimised further, using symmetry of sine function.
 * Also potentially using 16-samples with runtime lerp to e.g. 256 steps.
 */

const uint8_t sine64[64];

const uint8_t sine32[32];
