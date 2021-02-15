.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD0E0
/* 27CE0 800BD0E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 27CE4 800BD0E4 AFB10014 */  sw         $s1, 0x14($sp)
/* 27CE8 800BD0E8 00808821 */  addu       $s1, $a0, $zero
/* 27CEC 800BD0EC AFBF0018 */  sw         $ra, 0x18($sp)
/* 27CF0 800BD0F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 27CF4 800BD0F4 8E300014 */  lw         $s0, 0x14($s1)
/* 27CF8 800BD0F8 12000009 */  beqz       $s0, .L800BD120
/* 27CFC 800BD0FC 00000000 */   nop
.L800BD100:
/* 27D00 800BD100 0C02F2C7 */  jal        func_800BCB1C
/* 27D04 800BD104 02002021 */   addu      $a0, $s0, $zero
/* 27D08 800BD108 02002021 */  addu       $a0, $s0, $zero
/* 27D0C 800BD10C 0C02F2BF */  jal        func_800BCAFC
/* 27D10 800BD110 26250004 */   addiu     $a1, $s1, 4
/* 27D14 800BD114 8E300014 */  lw         $s0, 0x14($s1)
/* 27D18 800BD118 1600FFF9 */  bnez       $s0, .L800BD100
/* 27D1C 800BD11C 00000000 */   nop
.L800BD120:
/* 27D20 800BD120 8FBF0018 */  lw         $ra, 0x18($sp)
/* 27D24 800BD124 8FB10014 */  lw         $s1, 0x14($sp)
/* 27D28 800BD128 8FB00010 */  lw         $s0, 0x10($sp)
/* 27D2C 800BD12C 03E00008 */  jr         $ra
/* 27D30 800BD130 27BD0020 */   addiu     $sp, $sp, 0x20
