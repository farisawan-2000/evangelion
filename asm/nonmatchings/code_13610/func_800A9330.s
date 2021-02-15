.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A9330
/* 13F30 800A9330 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13F34 800A9334 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13F38 800A9338 0C026E5D */  jal        func_8009B974
/* 13F3C 800A933C 24040001 */   addiu     $a0, $zero, 1
/* 13F40 800A9340 24040001 */  addiu      $a0, $zero, 1
/* 13F44 800A9344 0C02B885 */  jal        func_800AE214
/* 13F48 800A9348 24057FFF */   addiu     $a1, $zero, 0x7fff
/* 13F4C 800A934C 24040002 */  addiu      $a0, $zero, 2
/* 13F50 800A9350 0C02B885 */  jal        func_800AE214
/* 13F54 800A9354 24057FFF */   addiu     $a1, $zero, 0x7fff
/* 13F58 800A9358 0C026B46 */  jal        func_8009AD18
/* 13F5C 800A935C 00000000 */   nop
/* 13F60 800A9360 0C02725C */  jal        func_8009C970
/* 13F64 800A9364 00000000 */   nop
/* 13F68 800A9368 24020010 */  addiu      $v0, $zero, 0x10
/* 13F6C 800A936C 3C018015 */  lui        $at, %hi(D_80149FB0)
/* 13F70 800A9370 AC229FB0 */  sw         $v0, %lo(D_80149FB0)($at)
/* 13F74 800A9374 3C018015 */  lui        $at, %hi(D_80149FA4)
/* 13F78 800A9378 AC229FA4 */  sw         $v0, %lo(D_80149FA4)($at)
/* 13F7C 800A937C 24020130 */  addiu      $v0, $zero, 0x130
/* 13F80 800A9380 3C018017 */  lui        $at, %hi(D_8016D040)
/* 13F84 800A9384 AC22D040 */  sw         $v0, %lo(D_8016D040)($at)
/* 13F88 800A9388 240200E0 */  addiu      $v0, $zero, 0xe0
/* 13F8C 800A938C 3C018015 */  lui        $at, %hi(D_8014A2C8)
/* 13F90 800A9390 AC22A2C8 */  sw         $v0, %lo(D_8014A2C8)($at)
/* 13F94 800A9394 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 13F98 800A9398 AC209BBC */  sw         $zero, %lo(D_80149BBC)($at)
/* 13F9C 800A939C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13FA0 800A93A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13FA4 800A93A4 03E00008 */  jr         $ra
/* 13FA8 800A93A8 00000000 */   nop
