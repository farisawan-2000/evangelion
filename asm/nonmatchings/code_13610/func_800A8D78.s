glabel func_800A8D78
/* 13978 800A8D78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1397C 800A8D7C AFBF0010 */  sw         $ra, 0x10($sp)
/* 13980 800A8D80 0C02DA8C */  jal        func_800B6A30
/* 13984 800A8D84 00000000 */   nop
/* 13988 800A8D88 0C02D9F8 */  jal        func_800B67E0
/* 1398C 800A8D8C 00002021 */   addu      $a0, $zero, $zero
/* 13990 800A8D90 24020001 */  addiu      $v0, $zero, 0x1
/* 13994 800A8D94 3C01800D */  lui        $at, %hi(D_800D4960)
/* 13998 800A8D98 AC224960 */  sw         $v0, %lo(D_800D4960)($at)
/* 1399C 800A8D9C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 139A0 800A8DA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 139A4 800A8DA4 03E00008 */  jr         $ra
/* 139A8 800A8DA8 00000000 */   nop
.size func_800A8D78, . - func_800A8D78
