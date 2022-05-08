#include <stm8s.h>
#include "sine.h"

/* node -p 'var N = 64; new Array(N).fill(0).map((x, i) => Math.floor((1 + Math.sin(i * 2 * Math.PI / N)) * 50))' */

const uint8_t sine64[64] = {
	50, 54, 59, 64,  69, 73, 77, 81, 85, 88, 91, 94,
	96, 97, 99, 99, 100, 99, 99, 97, 96, 94, 91, 88,
	85, 81, 77, 73,  69, 64, 59, 54, 50, 45, 40, 35,
	30, 26, 22, 18,  14, 11,  8,  5,  3,  2,  0,  0,
	0,  0,  0,  2,   3,  5,  8, 11, 14, 18, 22, 26,
	30, 35, 40, 45
};

const uint8_t sine32[32] = {
  50, 59, 69, 77, 85, 91, 96, 99, 100,
  99, 96, 91, 85, 77, 69, 59, 50,  40,
  30, 22, 14,  8,  3,  0,  0,  0,   3,
   8, 14, 22, 30, 40
};
