glabel func_800A9098
/* 13C98 800A9098 3C028010 */  lui        $v0, %hi(D_801001D0)
/* 13C9C 800A909C 8C4201D0 */  lw         $v0, %lo(D_801001D0)($v0)
/* 13CA0 800A90A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13CA4 800A90A4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 13CA8 800A90A8 AFB00010 */  sw         $s0, 0x10($sp)
/* 13CAC 800A90AC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 13CB0 800A90B0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 13CB4 800A90B4 3C018010 */  lui        $at, %hi(D_801001E4)
/* 13CB8 800A90B8 AC2201E4 */  sw         $v0, %lo(D_801001E4)($at)
/* 13CBC 800A90BC 0C02701B */  jal        func_8009C06C
/* 13CC0 800A90C0 00000000 */   nop
/* 13CC4 800A90C4 3C108017 */  lui        $s0, %hi(D_8016D0E8)
/* 13CC8 800A90C8 2610D0E8 */  addiu      $s0, $s0, %lo(D_8016D0E8)
/* 13CCC 800A90CC 0C027286 */  jal        func_8009CA18
/* 13CD0 800A90D0 02002021 */   addu      $a0, $s0, $zero
/* 13CD4 800A90D4 0C02A834 */  jal        func_800AA0D0
/* 13CD8 800A90D8 00000000 */   nop
/* 13CDC 800A90DC 0C0272F0 */  jal        func_8009CBC0
/* 13CE0 800A90E0 02002021 */   addu      $a0, $s0, $zero
/* 13CE4 800A90E4 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 13CE8 800A90E8 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 13CEC 800A90EC 24620008 */  addiu      $v0, $v1, 0x8
/* 13CF0 800A90F0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 13CF4 800A90F4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 13CF8 800A90F8 3C02E900 */  lui        $v0, (0xE9000000 >> 16)
/* 13CFC 800A90FC 24640010 */  addiu      $a0, $v1, 0x10
/* 13D00 800A9100 AC620000 */  sw         $v0, 0x0($v1)
/* 13D04 800A9104 3C02DF00 */  lui        $v0, (0xDF000000 >> 16)
/* 13D08 800A9108 AC600004 */  sw         $zero, 0x4($v1)
/* 13D0C 800A910C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 13D10 800A9110 AC249F94 */  sw         $a0, %lo(gDisplayListHead)($at)
/* 13D14 800A9114 AC620008 */  sw         $v0, 0x8($v1)
/* 13D18 800A9118 AC60000C */  sw         $zero, 0xC($v1)
/* 13D1C 800A911C 3C018010 */  lui        $at, %hi(D_801001FC)
/* 13D20 800A9120 AC2401FC */  sw         $a0, %lo(D_801001FC)($at)
/* 13D24 800A9124 3C018010 */  lui        $at, %hi(D_801001D0)
/* 13D28 800A9128 AC2401D0 */  sw         $a0, %lo(D_801001D0)($at)
/* 13D2C 800A912C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13D30 800A9130 8FB00010 */  lw         $s0, 0x10($sp)
/* 13D34 800A9134 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13D38 800A9138 03E00008 */  jr         $ra
/* 13D3C 800A913C 00000000 */   nop
.size func_800A9098, . - func_800A9098
