.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD134
/* 27D34 800BD134 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 27D38 800BD138 AFB10014 */  sw         $s1, 0x14($sp)
/* 27D3C 800BD13C 00808821 */  addu       $s1, $a0, $zero
/* 27D40 800BD140 AFB00010 */  sw         $s0, 0x10($sp)
/* 27D44 800BD144 00A08021 */  addu       $s0, $a1, $zero
/* 27D48 800BD148 AFBF0018 */  sw         $ra, 0x18($sp)
/* 27D4C 800BD14C 0C02F2C7 */  jal        func_800BCB1C
/* 27D50 800BD150 02002021 */   addu      $a0, $s0, $zero
/* 27D54 800BD154 02002021 */  addu       $a0, $s0, $zero
/* 27D58 800BD158 0C02F2BF */  jal        func_800BCAFC
/* 27D5C 800BD15C 26250014 */   addiu     $a1, $s1, 0x14
/* 27D60 800BD160 8FBF0018 */  lw         $ra, 0x18($sp)
/* 27D64 800BD164 8FB10014 */  lw         $s1, 0x14($sp)
/* 27D68 800BD168 8FB00010 */  lw         $s0, 0x10($sp)
/* 27D6C 800BD16C 03E00008 */  jr         $ra
/* 27D70 800BD170 27BD0020 */   addiu     $sp, $sp, 0x20
