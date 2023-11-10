glabel func_800A91F4
/* 13DF4 800A91F4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13DF8 800A91F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 13DFC 800A91FC AFB10014 */  sw         $s1, 0x14($sp)
/* 13E00 800A9200 0C02AA49 */  jal        func_800AA924
/* 13E04 800A9204 AFB00010 */   sw        $s0, 0x10($sp)
/* 13E08 800A9208 0C02AB2B */  jal        func_800AACAC
/* 13E0C 800A920C 00008821 */   addu      $s1, $zero, $zero
/* 13E10 800A9210 0C02ABF8 */  jal        func_800AAFE0
/* 13E14 800A9214 323000FF */   andi      $s0, $s1, 0xFF
/* 13E18 800A9218 3C018017 */  lui        $at, %hi(D_8016D5A0)
/* 13E1C 800A921C A020D5A0 */  sb         $zero, %lo(D_8016D5A0)($at)
.L800A9220:
/* 13E20 800A9220 0C02AC56 */  jal        func_800AB158
/* 13E24 800A9224 02002021 */   addu      $a0, $s0, $zero
/* 13E28 800A9228 0C02AD1A */  jal        func_800AB468
/* 13E2C 800A922C 02002021 */   addu      $a0, $s0, $zero
/* 13E30 800A9230 26310001 */  addiu      $s1, $s1, 0x1
/* 13E34 800A9234 2A220003 */  slti       $v0, $s1, 0x3
/* 13E38 800A9238 1440FFF9 */  bnez       $v0, .L800A9220
/* 13E3C 800A923C 323000FF */   andi      $s0, $s1, 0xFF
/* 13E40 800A9240 8FBF0018 */  lw         $ra, 0x18($sp)
/* 13E44 800A9244 8FB10014 */  lw         $s1, 0x14($sp)
/* 13E48 800A9248 8FB00010 */  lw         $s0, 0x10($sp)
/* 13E4C 800A924C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 13E50 800A9250 03E00008 */  jr         $ra
/* 13E54 800A9254 00000000 */   nop
.size func_800A91F4, . - func_800A91F4
