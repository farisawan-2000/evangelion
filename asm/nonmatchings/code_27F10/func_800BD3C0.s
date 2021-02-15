.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD3C0
/* 27FC0 800BD3C0 18A00011 */  blez       $a1, .L800BD408
/* 27FC4 800BD3C4 00000000 */   nop
/* 27FC8 800BD3C8 240B4000 */  addiu      $t3, $zero, 0x4000
/* 27FCC 800BD3CC 00AB082B */  sltu       $at, $a1, $t3
/* 27FD0 800BD3D0 1020000F */  beqz       $at, .L800BD410
/* 27FD4 800BD3D4 00000000 */   nop
/* 27FD8 800BD3D8 00804021 */  addu       $t0, $a0, $zero
/* 27FDC 800BD3DC 00854821 */  addu       $t1, $a0, $a1
/* 27FE0 800BD3E0 0109082B */  sltu       $at, $t0, $t1
/* 27FE4 800BD3E4 10200008 */  beqz       $at, .L800BD408
/* 27FE8 800BD3E8 00000000 */   nop
/* 27FEC 800BD3EC 2529FFE0 */  addiu      $t1, $t1, -0x20
/* 27FF0 800BD3F0 310A001F */  andi       $t2, $t0, 0x1f
/* 27FF4 800BD3F4 010A4023 */  subu       $t0, $t0, $t2
.L800BD3F8:
/* 27FF8 800BD3F8 BD100000 */  cache      0x10, ($t0)
/* 27FFC 800BD3FC 0109082B */  sltu       $at, $t0, $t1
/* 28000 800BD400 1420FFFD */  bnez       $at, .L800BD3F8
/* 28004 800BD404 25080020 */   addiu     $t0, $t0, 0x20
.L800BD408:
/* 28008 800BD408 03E00008 */  jr         $ra
/* 2800C 800BD40C 00000000 */   nop
.L800BD410:
/* 28010 800BD410 3C088000 */  lui        $t0, 0x8000
/* 28014 800BD414 010B4821 */  addu       $t1, $t0, $t3
/* 28018 800BD418 2529FFE0 */  addiu      $t1, $t1, -0x20
.L800BD41C:
/* 2801C 800BD41C BD000000 */  cache      0, ($t0)
/* 28020 800BD420 0109082B */  sltu       $at, $t0, $t1
/* 28024 800BD424 1420FFFD */  bnez       $at, .L800BD41C
/* 28028 800BD428 25080020 */   addiu     $t0, $t0, 0x20
/* 2802C 800BD42C 03E00008 */  jr         $ra
/* 28030 800BD430 00000000 */   nop
/* 28034 800BD434 00000000 */  nop
/* 28038 800BD438 00000000 */  nop
/* 2803C 800BD43C 00000000 */  nop
