# Handwritten function
glabel func_800BD310
/* 27F10 800BD310 18A00020 */  blez       $a1, .L800BD394
/* 27F14 800BD314 00000000 */   nop
/* 27F18 800BD318 240B2000 */  addiu      $t3, $zero, 0x2000
/* 27F1C 800BD31C 00AB082B */  sltu       $at, $a1, $t3
/* 27F20 800BD320 1020001E */  beqz       $at, .L800BD39C
/* 27F24 800BD324 00000000 */   nop
/* 27F28 800BD328 00804021 */  addu       $t0, $a0, $zero
/* 27F2C 800BD32C 00854821 */  addu       $t1, $a0, $a1
/* 27F30 800BD330 0109082B */  sltu       $at, $t0, $t1
/* 27F34 800BD334 10200017 */  beqz       $at, .L800BD394
/* 27F38 800BD338 00000000 */   nop
/* 27F3C 800BD33C 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 27F40 800BD340 310A000F */  andi       $t2, $t0, 0xF
/* 27F44 800BD344 11400007 */  beqz       $t2, .L800BD364
/* 27F48 800BD348 00000000 */   nop
/* 27F4C 800BD34C 010A4023 */  subu       $t0, $t0, $t2
/* 27F50 800BD350 BD150000 */  cache      0x15, 0x0($t0) # handwritten instruction
/* 27F54 800BD354 0109082B */  sltu       $at, $t0, $t1
/* 27F58 800BD358 1020000E */  beqz       $at, .L800BD394
/* 27F5C 800BD35C 00000000 */   nop
/* 27F60 800BD360 25080010 */  addiu      $t0, $t0, 0x10
.L800BD364:
/* 27F64 800BD364 312A000F */  andi       $t2, $t1, 0xF
/* 27F68 800BD368 11400006 */  beqz       $t2, .L800BD384
/* 27F6C 800BD36C 00000000 */   nop
/* 27F70 800BD370 012A4823 */  subu       $t1, $t1, $t2
/* 27F74 800BD374 BD350010 */  cache      0x15, 0x10($t1) # handwritten instruction
/* 27F78 800BD378 0128082B */  sltu       $at, $t1, $t0
/* 27F7C 800BD37C 14200005 */  bnez       $at, .L800BD394
/* 27F80 800BD380 00000000 */   nop
.L800BD384:
/* 27F84 800BD384 BD110000 */  cache      0x11, 0x0($t0) # handwritten instruction
/* 27F88 800BD388 0109082B */  sltu       $at, $t0, $t1
/* 27F8C 800BD38C 1420FFFD */  bnez       $at, .L800BD384
/* 27F90 800BD390 25080010 */   addiu     $t0, $t0, 0x10
.L800BD394:
/* 27F94 800BD394 03E00008 */  jr         $ra
/* 27F98 800BD398 00000000 */   nop
.L800BD39C:
/* 27F9C 800BD39C 3C088000 */  lui        $t0, 0x8000
/* 27FA0 800BD3A0 010B4821 */  addu       $t1, $t0, $t3
/* 27FA4 800BD3A4 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800BD3A8:
/* 27FA8 800BD3A8 BD010000 */  cache      0x01, 0x0($t0) # handwritten instruction
/* 27FAC 800BD3AC 0109082B */  sltu       $at, $t0, $t1
/* 27FB0 800BD3B0 1420FFFD */  bnez       $at, .L800BD3A8
/* 27FB4 800BD3B4 25080010 */   addiu     $t0, $t0, (0x80000010 & 0xFFFF)
/* 27FB8 800BD3B8 03E00008 */  jr         $ra
/* 27FBC 800BD3BC 00000000 */   nop
.size func_800BD310, . - func_800BD310
