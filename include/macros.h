#ifndef _MACROS_H_
#define _MACROS_H_

#include "include_asm.h"

#define GLOBAL_ASM(...)

#define ALIGN16(val) (((val) + 0xF) & ~0xF)

#define ARRAY_COUNT(arr) (s32)(sizeof(arr) / sizeof(arr[0]))
#define ARRAY_COUNTU(arr) (u32)(sizeof(arr) / sizeof(arr[0]))

#define ASSERT(condition) if (!(condition)) { while (1) {} }
#define PANIC() ASSERT(0)
#define STATIC_ASSERT(condition) enum { static_assert_fail = 1/(!!(condition)) } // Causes division by zero ("not integer constant") if false

// Alternative to libultra's M_PI: non-float version; more digits cause issues
#define PI 3.141592f
#define TAU 6.28318f

#define SQ(x) (x*x)

#endif
