#include "common.h"

extern OSThread D_801005B0;
void thread1_idle(s32 arg0);
extern u64 D_80102910[]; 

void evangelion_main(void) {
    func_800C5510();
    osCreateThread(&D_801005B0, 1, &thread1_idle, 0, &D_80102910, 0xA);
    osStartThread(&D_801005B0);
}

extern void thread3_main(s32);
extern u64 D_8014C370[];
extern OSThread D_80100760;
extern void (*D_8016D0E0)(void);

void thread1_idle(s32 arg0) {
    D_8016D0E0 = NULL;
    func_800B6CC0();
    func_800B5990(2, 1);
    func_800C2740(0x5A);
    osCreateThread(&D_80100760, 3, &thread3_main, 0, &D_8014C370, 0xA);
    osStartThread(&D_80100760);
    func_800C1A60(&D_801005B0, 0);
    while (1) {
        if (D_8016D0E0 != NULL) {
            D_8016D0E0();
        }
    }
} 

