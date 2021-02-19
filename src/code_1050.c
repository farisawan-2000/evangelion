#include "common.h"

void func_80096450(void) {
    s32 i;

    for (i = 15; i >= 0; i--);
}

extern u32 D_800D3890;
#ifdef MIPS_TO_C
u32 func_80096468(u16 arg0) {
    u32 temp_v1;

    if (arg0 == 0) {
        return 0;
    }
    temp_v1 = (D_800D3890 * 7) + 5;
    D_800D3890 = (D_800D3890 * 7) + 5;
    return (temp_v1 >> 0x10) % arg0;
} 
#else 
INCLUDE_ASM(s32, "code_1050", func_80096468);
#endif

#ifdef MIPS_TO_C
s32 func_800964BC(s32 arg0) {
    u32 temp_v0;
    s32 phi_a0;

    temp_v0 = (D_800D3890 * 7) + 5;
    D_800D3890 = temp_v0;
    phi_a0 = arg0;
    if (((temp_v0 >> 0x10) & 1) == 0) {
        phi_a0 = -arg0;
    }
    return phi_a0;
}
#else
INCLUDE_ASM(s32, "code_1050", func_800964BC);
#endif

#ifdef MIPS_TO_C
s32 func_800964FC(s32 arg0) {
    s32 phi_return;

    phi_return = arg0;
    if (arg0 < 0) {
        phi_return = -arg0;
    }
    return phi_return;
}
#else
INCLUDE_ASM(s32, "code_1050", func_800964FC);
#endif

#ifdef MIPS_TO_C
s32 func_80096510(void *arg0) {
    s32 temp_a2;
    u8 temp_a1;
    u8 temp_a1_2;
    void *temp_a0;
    u8 phi_a1;
    void *phi_a0;
    s32 phi_a2;
    s32 phi_a2_2;

    temp_a1 = *arg0;
    phi_a1 = temp_a1;
    phi_a0 = arg0;
    phi_a2 = 0;
    phi_a2_2 = 0;
    if (temp_a1 != 0) {
loop_1:
        if ((phi_a1 - 0x30) >= 0xA) {
            return -1;
        }
        temp_a0 = phi_a0 + 1;
        temp_a1_2 = *temp_a0;
        temp_a2 = (((phi_a2_2 * 4) + phi_a2_2) * 2) + (phi_a1 - 0x30);
        phi_a1 = temp_a1_2;
        phi_a0 = temp_a0;
        phi_a2 = temp_a2;
        phi_a2_2 = temp_a2;
        if (temp_a1_2 != 0) {
            goto loop_1;
        }
    }
    return phi_a2;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096510);
#endif

#ifdef MIPS_TO_C
void *func_8009655C(s32 arg0, void *arg1) {
    s32 temp_a1;
    s32 temp_a2;
    s32 temp_a2_2;
    s32 temp_a3;
    s32 temp_t1;
    void *temp_v0;
    s32 phi_a1;
    s32 phi_t1;
    s32 phi_a1_2;
    s32 phi_a2;
    void *phi_t0;
    s32 phi_a3;
    s32 phi_a3_2;
    s32 phi_t1_2;
    s32 phi_a2_2;

    phi_t1 = 1;
    phi_a2 = 1;
    if (arg0 >= 0xA) {
        phi_a1 = arg0;
        phi_t1_2 = 1;
        phi_a2_2 = 1;
loop_2:
        temp_a2 = ((phi_a2_2 * 4) + phi_a2_2) * 2;
        temp_a1 = (MULT_HI(phi_a1, 0x66666667) >> 2) - (phi_a1 >> 0x1F);
        temp_t1 = phi_t1_2 + 1;
        phi_a1 = temp_a1;
        phi_t1_2 = temp_t1;
        phi_a2_2 = temp_a2;
        if (temp_a1 >= 0xA) {
            goto loop_2;
        }
        phi_t1 = temp_t1;
        phi_a2 = temp_a2;
    }
    phi_a3_2 = 0;
    if (phi_t1 > 0) {
        phi_t0 = arg1;
        phi_a3 = 0;
loop_6:
        temp_a3 = phi_a3 + 1;
        temp_a2_2 = (MULT_HI(phi_a2, 0x66666667) >> 2) - (phi_a2 >> 0x1F);
        *phi_t0 = (phi_a1_2 / phi_a2) + 0x30;
        phi_a1_2 = phi_a1_2 % phi_a2;
        phi_a2 = temp_a2_2;
        phi_t0 = phi_t0 + 1;
        phi_a3 = temp_a3;
        phi_a3_2 = temp_a3;
        if (temp_a3 < phi_t1) {
            goto loop_6;
        }
    }
    temp_v0 = arg1 + phi_a3_2;
    *temp_v0 = 0;
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_1050", func_8009655C);
#endif

#ifdef MIPS_TO_C
s32 func_8009665C(s32 arg0, s32 arg1) {
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 phi_v0;
    s32 phi_a1;
    s32 phi_v0_2;
    s32 phi_a1_2;

    temp_a0 = arg0 + arg1;
    temp_v0 = temp_a0 << 0x10;
    phi_v0 = temp_v0;
    phi_v0_2 = temp_v0;
    phi_a1_2 = temp_a0;
    if ((temp_a0 & 0xFFFF) >= 0x168) {
loop_1:
        temp_v1 = phi_v0 >> 0x10;
        if (temp_v1 >= 0x168) {
            phi_a1 = phi_a1_2 - 0x168;
        } else {
            phi_a1 = phi_a1_2;
            if (temp_v1 < 0) {
                phi_a1 = phi_a1_2 + 0x168;
            }
        }
        temp_v0_2 = phi_a1 << 0x10;
        phi_v0 = temp_v0_2;
        phi_v0_2 = temp_v0_2;
        phi_a1_2 = phi_a1;
        if ((phi_a1 & 0xFFFF) >= 0x168) {
            goto loop_1;
        }
    }
    return phi_v0_2 >> 0x10;
}
#else
INCLUDE_ASM(s32, "code_1050", func_8009665C);
#endif

#ifdef MIPS_TO_C
s32 func_800966AC(f32 arg0, f32 arg1) {
    s32 temp_v0;
    f32 phi_f0;
    s32 phi_v0;
    s32 phi_v1;

    phi_f0 = arg0 + arg1;
loop_1:
    phi_v0 = 1;
    if (!(phi_f0 < 0.0f)) {
        phi_v0 = 0;
    }
    phi_v1 = 1;
    if (!(phi_f0 >= 360.0f)) {
        phi_v1 = 0;
    }
    temp_v0 = phi_v0 | phi_v1;
    if (temp_v0 != 0) {
        if (phi_f0 >= 360.0f) {
            phi_f0 = phi_f0 - 360.0f;
        } else if (phi_f0 < 0.0f) {
            phi_f0 = phi_f0 + 360.0f;
        }
        goto loop_1;
    }
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_1050", func_800966AC);
#endif

#ifdef MIPS_TO_C
s16 func_8009673C(s16 arg0, s32 arg1) {
    s16 temp_a1_2;
    s16 temp_a2;
    s16 temp_v0;
    s32 temp_a1;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 phi_v0;
    s16 phi_a0;
    s32 phi_v0_2;
    s32 phi_v0_3;
    s32 phi_a1;
    s32 phi_a1_2;
    s16 phi_a2;
    s16 phi_v1;
    s16 phi_a0_2;
    s32 phi_a1_3;
    s16 phi_a0_3;

    phi_a1_2 = arg1;
    phi_a2 = arg0;
    if (arg0 >= 0xB5) {
        temp_v0 = arg0 - 0xB4;
        phi_v0_2 = arg1 - 0xB4;
        phi_a0_3 = temp_v0;
        if ((temp_v0 & 0xFFFF) >= 0x168) {
            phi_v0 = temp_v0 << 0x10;
            phi_a0_2 = temp_v0;
loop_3:
            temp_v1 = phi_v0 >> 0x10;
            if (temp_v1 >= 0x168) {
                phi_a0 = phi_a0_2 - 0x168;
            } else {
                phi_a0 = phi_a0_2;
                if (temp_v1 < 0) {
                    phi_a0 = phi_a0_2 + 0x168;
                }
            }
            phi_v0 = phi_a0 << 0x10;
            phi_a0_2 = phi_a0;
            if ((phi_a0 & 0xFFFF) >= 0x168) {
                goto loop_3;
            }
            phi_v0_2 = arg1 - 0xB4;
            phi_a0_3 = phi_a0;
        }
        temp_a1 = phi_v0_2;
        temp_a2 = phi_a0_3;
        phi_a1_2 = temp_a1;
        phi_a2 = temp_a2;
        if ((phi_v0_2 & 0xFFFF) >= 0x168) {
            phi_v0_3 = temp_a1 << 0x10;
            phi_a1_3 = temp_a1;
loop_11:
            temp_v1_2 = phi_v0_3 >> 0x10;
            if (temp_v1_2 >= 0x168) {
                phi_a1 = phi_a1_3 - 0x168;
            } else {
                phi_a1 = phi_a1_3;
                if (temp_v1_2 < 0) {
                    phi_a1 = phi_a1_3 + 0x168;
                }
            }
            phi_v0_3 = phi_a1 << 0x10;
            phi_a1_2 = phi_a1;
            phi_a2 = temp_a2;
            phi_a1_3 = phi_a1;
            if ((phi_a1 & 0xFFFF) >= 0x168) {
                goto loop_11;
            }
        }
    }
    temp_a1_2 = phi_a1_2 - phi_a2;
    phi_v1 = temp_a1_2;
    if (temp_a1_2 >= 0xB5) {
        phi_v1 = temp_a1_2 - 0x168;
    }
    return phi_v1;
}
#else
INCLUDE_ASM(s32, "code_1050", func_8009673C);
#endif

#ifdef MIPS_TO_C
f32 func_80096810(f32 arg0, f32 arg1) {
    f32 phi_f12;
    s32 phi_v0;
    s32 phi_v1;
    f32 phi_f14;
    s32 phi_v0_2;
    s32 phi_v1_2;
    f32 phi_f12_2;
    f32 phi_f12_3;

    if (!(arg0 > 180.0f)) {
        phi_f12_2 = arg1 - arg0;
    } else {
        phi_f12 = arg0 + -180.0f;
loop_4:
        phi_v0 = 1;
        if (!(phi_f12 < 0.0f)) {
            phi_v0 = 0;
        }
        phi_v1 = 1;
        if (!(phi_f12 >= 360.0f)) {
            phi_v1 = 0;
        }
        if ((phi_v0 | phi_v1) != 0) {
            if (phi_f12 >= 360.0f) {
                phi_f12 = phi_f12 - 360.0f;
            } else if (phi_f12 < 0.0f) {
                phi_f12 = phi_f12 + 360.0f;
            }
            goto loop_4;
        }
        phi_f14 = arg1 + -180.0f;
loop_16:
        phi_v0_2 = 1;
        if (!(phi_f14 < 0.0f)) {
            phi_v0_2 = 0;
        }
        phi_v1_2 = 1;
        if (!(phi_f14 >= 360.0f)) {
            phi_v1_2 = 0;
        }
        if ((phi_v0_2 | phi_v1_2) != 0) {
            if (phi_f14 >= 360.0f) {
                phi_f14 = phi_f14 - 360.0f;
            } else if (phi_f14 < 0.0f) {
                phi_f14 = phi_f14 + 360.0f;
            }
            goto loop_16;
        }
        phi_f12_2 = phi_f14 - phi_f12;
    }
    phi_f12_3 = phi_f12_2;
    if (180.0f < phi_f12_2) {
        phi_f12_3 = phi_f12_2 - 360.0f;
    }
    return phi_f12_3;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096810);
#endif

#ifdef MIPS_TO_C
s16 func_8009698C(s32 arg0, s16 arg1, s16 arg2) {
    s16 temp_a0;
    s16 temp_a1;
    s16 temp_t0;
    s16 temp_v0;
    s16 temp_v0_3;
    s16 temp_v1_3;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 phi_v0;
    s16 phi_a1;
    s32 phi_v0_2;
    s32 phi_a1_2;
    s32 phi_a3;
    s16 phi_t0;
    s16 phi_a1_3;
    s32 phi_v1;
    s32 phi_a2;
    s16 phi_v1_2;
    s16 phi_v1_3;
    s16 phi_v0_3;
    s16 phi_a1_4;
    s32 phi_a1_5;
    s16 phi_a1_6;

    phi_a3 = arg0;
    phi_t0 = arg1;
    if (arg1 >= 0xB5) {
        temp_v0 = arg1 - 0xB4;
        phi_a1_6 = temp_v0;
        if ((temp_v0 & 0xFFFF) >= 0x168) {
            phi_v0 = temp_v0 << 0x10;
            phi_a1_4 = temp_v0;
loop_3:
            temp_v1 = phi_v0 >> 0x10;
            if (temp_v1 >= 0x168) {
                phi_a1 = phi_a1_4 - 0x168;
            } else {
                phi_a1 = phi_a1_4;
                if (temp_v1 < 0) {
                    phi_a1 = phi_a1_4 + 0x168;
                }
            }
            phi_v0 = phi_a1 << 0x10;
            phi_a1_4 = phi_a1;
            phi_a1_6 = phi_a1;
            if ((phi_a1 & 0xFFFF) >= 0x168) {
                goto loop_3;
            }
        }
        temp_t0 = phi_a1_6;
        temp_v0_2 = arg0 - 0xB4;
        phi_a3 = temp_v0_2;
        phi_t0 = temp_t0;
        if ((temp_v0_2 & 0xFFFF) >= 0x168) {
            phi_v0_2 = temp_v0_2 << 0x10;
            phi_a1_5 = temp_v0_2;
loop_10:
            temp_v1_2 = phi_v0_2 >> 0x10;
            if (temp_v1_2 >= 0x168) {
                phi_a1_2 = phi_a1_5 - 0x168;
            } else {
                phi_a1_2 = phi_a1_5;
                if (temp_v1_2 < 0) {
                    phi_a1_2 = phi_a1_5 + 0x168;
                }
            }
            phi_v0_2 = phi_a1_2 << 0x10;
            phi_a1_5 = phi_a1_2;
            if ((phi_a1_2 & 0xFFFF) >= 0x168) {
                goto loop_10;
            }
            phi_a3 = phi_a1_2;
            phi_t0 = temp_t0;
        }
    }
    temp_v1_3 = phi_a3 - phi_t0;
    phi_a1_3 = temp_v1_3;
    if (temp_v1_3 >= 0xB5) {
        phi_a1_3 = temp_v1_3 - 0x168;
    }
    temp_a1 = phi_a1_3;
    phi_v1 = temp_a1;
    if (temp_a1 < 0) {
        phi_v1 = -temp_a1;
    }
    phi_v0_3 = arg1;
    if (phi_v1 >= arg2) {
        phi_a2 = arg2;
        if (temp_a1 > 0) {
            phi_a2 = -arg2;
        }
        temp_v0_3 = phi_a2 + arg0;
        phi_v1_2 = temp_v0_3;
        phi_v0_3 = temp_v0_3;
        if ((temp_v0_3 & 0xFFFF) >= 0x168) {
loop_24:
            temp_a0 = phi_v1_2;
            if (temp_a0 >= 0x168) {
                phi_v1_3 = phi_v1_2 - 0x168;
            } else {
                phi_v1_3 = phi_v1_2;
                if (temp_a0 < 0) {
                    phi_v1_3 = phi_v1_2 + 0x168;
                }
            }
            phi_v1_2 = phi_v1_3;
            if ((phi_v1_3 & 0xFFFF) >= 0x168) {
                goto loop_24;
            }
            phi_v0_3 = phi_v1_3;
        }
    }
    return phi_v0_3;
}
#else
INCLUDE_ASM(s32, "code_1050", func_8009698C);
#endif

#ifdef MIPS_TO_C
s32 func_80096AF0(f32 arg0, f32 arg1, f32 arg2) {
    f32 temp_f2;
    s32 temp_v0;
    f32 phi_f2;
    s32 phi_v0;
    s32 phi_v1;
    f32 phi_f0;
    s32 phi_v0_2;
    s32 phi_v1_2;
    f32 phi_f6;
    f32 phi_f8;
    f32 phi_f2_2;
    f32 phi_f0_2;
    s32 phi_v0_3;
    s32 phi_v1_3;
    s32 phi_return;
    f32 phi_f12;

    phi_f6 = arg0;
    phi_f8 = arg1;
    if (arg1 > 180.0f) {
        phi_f2 = arg1 + -180.0f;
loop_2:
        phi_v0 = 1;
        if (!(phi_f2 < 0.0f)) {
            phi_v0 = 0;
        }
        phi_v1 = 1;
        if (!(phi_f2 >= 360.0f)) {
            phi_v1 = 0;
        }
        if ((phi_v0 | phi_v1) != 0) {
            if (phi_f2 >= 360.0f) {
                phi_f2 = phi_f2 - 360.0f;
            } else if (phi_f2 < 0.0f) {
                phi_f2 = phi_f2 + 360.0f;
            }
            goto loop_2;
        }
        phi_f0 = arg0 + -180.0f;
loop_16:
        phi_v0_2 = 1;
        if (!(phi_f0 < 0.0f)) {
            phi_v0_2 = 0;
        }
        phi_v1_2 = 1;
        if (!(phi_f0 >= 360.0f)) {
            phi_v1_2 = 0;
        }
        phi_f6 = phi_f0;
        phi_f8 = phi_f2;
        if ((phi_v0_2 | phi_v1_2) != 0) {
            if (phi_f0 >= 360.0f) {
                phi_f0 = phi_f0 - 360.0f;
            } else if (phi_f0 < 0.0f) {
                phi_f0 = phi_f0 + 360.0f;
            }
            goto loop_16;
        }
    }
    temp_f2 = phi_f6 - phi_f8;
    phi_f2_2 = temp_f2;
    if (temp_f2 > 180.0f) {
        phi_f2_2 = temp_f2 - 360.0f;
    }
    if (!(phi_f2_2 > 0.0f)) {
        phi_return = (bitwise s32) arg1;
        if (!(-phi_f2_2 < arg2)) {
block_35:
            phi_f12 = arg2;
            if (phi_f2_2 > 0.0f) {
                phi_f12 = -arg2;
            }
            phi_f0_2 = arg0 + phi_f12;
loop_38:
            phi_v0_3 = 1;
            if (!(phi_f0_2 < 0.0f)) {
                phi_v0_3 = 0;
            }
            phi_v1_3 = 1;
            if (!(phi_f0_2 >= 360.0f)) {
                phi_v1_3 = 0;
            }
            temp_v0 = phi_v0_3 | phi_v1_3;
            phi_return = temp_v0;
            if (temp_v0 != 0) {
                if (phi_f0_2 >= 360.0f) {
                    phi_f0_2 = phi_f0_2 - 360.0f;
                } else if (phi_f0_2 < 0.0f) {
                    phi_f0_2 = phi_f0_2 + 360.0f;
                }
                goto loop_38;
            }
        }
    } else {
        phi_return = (bitwise s32) arg1;
        if (!(phi_f2_2 < arg2)) {
            goto block_35;
        }
    }
    return phi_return;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096AF0);
#endif

#ifdef MIPS_TO_C
s16 func_80096D70(s32 arg0, s16 arg1) {
    f32 temp_f4;
    s32 temp_a0;
    s32 temp_v0;
    s32 temp_v0_2;
    s32 temp_v1;
    s32 phi_v0;
    s32 phi_a1;
    s32 phi_v0_2;
    s32 phi_a1_2;

    temp_f4 = 360.0f / arg1;
    temp_a0 = arg0 + (temp_f4 / 2.0f);
    temp_v0 = temp_a0 << 0x10;
    phi_v0 = temp_v0;
    phi_v0_2 = temp_v0;
    phi_a1_2 = temp_a0;
    if ((temp_a0 & 0xFFFF) >= 0x168) {
loop_1:
        temp_v1 = phi_v0 >> 0x10;
        if (temp_v1 >= 0x168) {
            phi_a1 = phi_a1_2 - 0x168;
        } else {
            phi_a1 = phi_a1_2;
            if (temp_v1 < 0) {
                phi_a1 = phi_a1_2 + 0x168;
            }
        }
        temp_v0_2 = phi_a1 << 0x10;
        phi_v0 = temp_v0_2;
        phi_v0_2 = temp_v0_2;
        phi_a1_2 = phi_a1;
        if ((phi_a1 & 0xFFFF) >= 0x168) {
            goto loop_1;
        }
    }
    return (phi_v0_2 >> 0x10) / temp_f4;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096D70);
#endif

#ifdef MIPS_TO_C
s32 func_80096E24(void *arg0, void *arg1, s32 arg2) {
    s32 temp_a2;
    void *phi_a0;
    void *phi_a1;
    s32 phi_a2;

    phi_a0 = arg0;
    phi_a1 = arg1;
    phi_a2 = arg2;
    goto block_3;
loop_1:
    temp_a2 = phi_a2 - 1;
    phi_a0 = phi_a0 + 1;
    phi_a1 = phi_a1 + 1;
    phi_a2 = temp_a2;
    if (temp_a2 <= 0) {
        return 0;
    }
block_3:
    if (*phi_a0 == *phi_a1) {
        goto loop_1;
    }
    return *phi_a0 - *phi_a1;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096E24);
#endif

#ifdef MIPS_TO_C
u32 func_80096E64(u32 arg0, u32 arg1, s32 arg2) {
    s32 temp_a2;
    void *phi_a1;
    void *phi_a3;
    s32 phi_a2;
    void *phi_a1_2;
    void *phi_a3_2;
    s32 phi_a2_2;

    if (arg0 >= arg1) {
        temp_a2 = arg2 - 1;
        if (arg2 > 0) {
            phi_a1 = temp_a2 + arg1;
            phi_a3 = temp_a2 + arg0;
            phi_a2 = temp_a2;
loop_3:
            *phi_a3 = *phi_a1;
            phi_a1 = phi_a1 - 1;
            phi_a3 = phi_a3 - 1;
            phi_a2 = phi_a2 - 1;
            if (phi_a2 > 0) {
                goto loop_3;
            }
        }
    } else {
        phi_a1_2 = arg1;
        phi_a3_2 = arg0;
        phi_a2_2 = arg2 - 1;
        if (arg2 > 0) {
loop_6:
            *phi_a3_2 = *phi_a1_2;
            phi_a1_2 = phi_a1_2 + 1;
            phi_a3_2 = phi_a3_2 + 1;
            phi_a2_2 = phi_a2_2 - 1;
            if (phi_a2_2 > 0) {
                goto loop_6;
            }
        }
    }
    return arg0;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096E64);
#endif

#ifdef MIPS_TO_C
s32 func_80096ED8(s32 arg0) {
    if (((arg0 - 0x61) & 0xFF) < 0x1A) {
        return (arg0 + 0xE0) & 0xFF;
    }
    return arg0 & 0xFF;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096ED8);
#endif

#ifdef MIPS_TO_C
s32 func_80096F04(s32 arg0) {
    if (((arg0 - 0x41) & 0xFF) < 0x1A) {
        return (arg0 + 0x20) & 0xFF;
    }
    return arg0 & 0xFF;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096F04);
#endif

#ifdef MIPS_TO_C
void func_80096F30(s32 arg0, s32 arg1) {
    void *temp_ret;
    void *temp_v0;
    void *phi_v0;
    u32 phi_v1;

    temp_v0 = func_800C998C((arg0 * arg1) + 8);
    phi_v0 = temp_v0;
    phi_v1 = temp_v0 + 8;
    if (temp_v0 == 0) {
        temp_ret = func_800CA4D0(&D_800F9B30);
        phi_v0 = temp_ret;
        phi_v1 = temp_ret;
    }
    phi_v0->unk0 = arg1;
    phi_v0->unk4 = phi_v1;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096F30);
#endif

#ifdef MIPS_TO_C
void func_80096F90(s32 arg0) {
    if (arg0 != 0) {
        func_800C9A84();
    }
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096F90);
#endif

#ifdef MIPS_TO_C
s16 func_80096FB4(void *arg0, void *arg1, s16 arg2, s16 arg3, s16 arg4, u16 arg5, s16 arg6, u16 arg7, s16 arg8, u16 arg9) {
    s16 temp_a0;
    s16 temp_a0_2;
    s16 temp_v0;
    s16 temp_v0_2;
    s32 temp_a1;
    s16 phi_v0;
    s16 phi_v0_2;
    s16 phi_return;

    temp_a0 = arg2;
    temp_a1 = arg6;
    if (((arg8 < (temp_a0 + arg4)) & (arg6 < temp_a0)) != 0) {
        phi_v0 = (temp_a1 + arg8) - arg2;
    } else {
        phi_v0 = temp_a1 - arg2;
    }
    *arg0 = phi_v0;
    temp_a0_2 = arg3;
    if (((arg9 < (temp_a0_2 + arg5)) & (arg7 < temp_a0_2)) != 0) {
        temp_v0 = (arg7 + arg9) - arg3;
        phi_v0_2 = temp_v0;
        phi_return = temp_v0;
    } else {
        temp_v0_2 = arg7 - arg3;
        phi_v0_2 = temp_v0_2;
        phi_return = temp_v0_2;
    }
    *arg1 = phi_v0_2;
    return phi_return;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80096FB4);
#endif

#ifdef MIPS_TO_C
s16 func_80097064(void *arg0, void *arg1, s16 arg2, s16 arg3, s32 arg4, u16 arg5, s32 arg6, u16 arg7) {
    s16 temp_a2;
    s16 temp_a2_2;
    s16 temp_t0;
    s16 temp_t4;
    s16 temp_v0;
    s32 temp_v1;
    s32 temp_v1_2;
    s32 phi_t2;
    u16 phi_t3;

    temp_a2 = arg2;
    temp_t4 = arg4;
    temp_v1 = (arg6 + ((arg6 << 0x10) >> 0x1F)) >> 1;
    if (temp_v1 < (temp_t4 - temp_a2)) {
        phi_t2 = arg4 - arg6;
    } else {
        phi_t2 = arg4;
        if (temp_v1 < (temp_a2 - temp_t4)) {
            phi_t2 = arg4 + arg6;
        }
    }
    *arg0 = phi_t2 - arg2;
    temp_t0 = arg5;
    temp_a2_2 = arg3;
    temp_v1_2 = (arg7 + ((arg7 << 0x10) >> 0x1F)) >> 1;
    if (temp_v1_2 < (temp_t0 - temp_a2_2)) {
        phi_t3 = arg5 - arg7;
    } else {
        phi_t3 = arg5;
        if (temp_v1_2 < (temp_a2_2 - temp_t0)) {
            phi_t3 = arg5 + arg7;
        }
    }
    temp_v0 = phi_t3 - arg3;
    *arg1 = temp_v0;
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80097064);
#endif

#ifdef MIPS_TO_C
void func_80097124(void *arg0) {
    arg0->unk0 = 0;
    arg0->unk4 = 0;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80097124);
#endif

#ifdef MIPS_TO_C
void func_80097130(void *arg0, ?32 arg1) {
    arg0->unk4 = arg1;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80097130);
#endif

#ifdef MIPS_TO_C
s32 func_80097138(void *arg0) {
    s32 temp_v0;

    temp_v0 = *arg0;
    *arg0 = 0;
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80097138);
#endif

#ifdef MIPS_TO_C
void func_80097144(void *arg0, ?32 arg1) {
    *arg0 = arg1;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80097144);
#endif

#ifdef MIPS_TO_C
s32 func_8009714C(void *arg0) {
    s32 temp_v0;

    temp_v0 = arg0->unk4;
    arg0->unk4 = 0;
    return temp_v0;
}
#else
INCLUDE_ASM(s32, "code_1050", func_8009714C);
#endif

#ifdef MIPS_TO_C
s32 func_80097158(void *arg0, s32 arg1) {
    s32 temp_a2;
    s32 phi_a1;
    s32 phi_a2;
    s32 phi_a2_2;
    void *phi_a0;

    phi_a1 = arg1 - 1;
    phi_a2 = 0;
    phi_a2_2 = 0;
    phi_a0 = arg0;
    if (arg1 != 0) {
loop_1:
        temp_a2 = phi_a2_2 + *phi_a0;
        phi_a1 = phi_a1 - 1;
        phi_a2 = temp_a2;
        phi_a2_2 = temp_a2;
        phi_a0 = phi_a0 + 1;
        if (phi_a1 != 0) {
            goto loop_1;
        }
    }
    return phi_a2;
}
#else
INCLUDE_ASM(s32, "code_1050", func_80097158);
#endif
