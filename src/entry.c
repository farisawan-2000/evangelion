#include "common.h"

#include "common.h"

extern OSThread D_801005B0;
void thread1_idle(s32 arg0);
extern u64 D_80102910[];

#ifdef THIRD_IMPACT
void evangelion_main(void) {
    func_800C5510();
    osCreateThread(&D_801005B0, 1, &thread1_idle, 0, &D_80102910, 0xA);
    osStartThread(&D_801005B0);
}
#else
INCLUDE_ASM(s32, "entry", evangelion_main);
#endif


extern void func_800A8A10(s32);
extern u64 D_8014C370[];
extern OSThread D_80100760;
extern void (*D_8016D0E0)(void);


#ifdef THIRD_IMPACT
void thread1_idle(s32 arg0) {
    D_8016D0E0 = NULL;
    func_800B6CC0();
    func_800B5990(2, 1);
    func_800C2740(0x5A);
    osCreateThread(&D_80100760, 3, &func_800A8A10, 0, &D_8014C370, 0xA);
    osStartThread(&D_80100760);
    func_800C1A60(&D_801005B0, 0);
    while (1) {
	    if (D_8016D0E0 != NULL) {
	        D_8016D0E0();
	    }
	}
}
#else
INCLUDE_ASM(s32, "entry", thread1_idle);
#endif