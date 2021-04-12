#ifndef _MACROS_H_
#define _MACROS_H_

// #ifndef SPLAT
// #ifndef INCLUDE_ASM
// #define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...) \
//   TYPE __attribute__((naked)) NAME(ARGS) {\
//   	__asm__( ".set noat\n.set noreorder\n.include \"macro.inc\"\n.include \"asm/nonmatchings/"FOLDER"/"#NAME".s\"\n.set reorder\n.set at\n.set gp=64"); }
// #endif
// #else
// #define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...)
// #endif
#if !defined(__sgi) || defined(__CTX__)
#define GLOBAL_ASM(...)
#endif

// #if !defined(__sgi)
// 	#if (!defined(SPLAT) && !defined(__CTX__))
// 	#ifndef INCLUDE_ASM
// 	#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...) \
// 	  __asm__( ".set noat\n.set noreorder\n.include \"asm/nonmatchings/"FOLDER"/"#NAME".s\"\nglabel "#NAME"_end\n.set reorder\n.set at");
// 	#define INCLUDE_RAW_ASM(FILE) \
// 	  __asm__( ".set noat\n.set noreorder\n.include \""FILE"\"\n.set reorder\n.set at");
// 	#endif
// 	__asm__( ".include \"macro.inc\"\n");
// 	#else
// 	#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...)
// 	#endif
// #endif

#define GLOBAL_ASM(...)

#define INCLUDE_ASM(TYPE, FOLDER, NAME, ARGS...) GLOBAL_ASM("asm/nonmatchings/" FOLDER "/##NAME##.s")

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
