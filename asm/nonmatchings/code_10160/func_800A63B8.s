glabel func_800A63B8
/* 10FB8 800A63B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 10FBC 800A63BC AFB00010 */  sw         $s0, 0x10($sp)
/* 10FC0 800A63C0 00808021 */  addu       $s0, $a0, $zero
/* 10FC4 800A63C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 10FC8 800A63C8 00A08821 */  addu       $s1, $a1, $zero
/* 10FCC 800A63CC AFB20018 */  sw         $s2, 0x18($sp)
/* 10FD0 800A63D0 00C09021 */  addu       $s2, $a2, $zero
/* 10FD4 800A63D4 AFBF001C */  sw         $ra, 0x1C($sp)
/* 10FD8 800A63D8 0C032663 */  jal        func_800C998C
/* 10FDC 800A63DC 2404000C */   addiu     $a0, $zero, 0xC
/* 10FE0 800A63E0 AC500000 */  sw         $s0, 0x0($v0)
/* 10FE4 800A63E4 A4510004 */  sh         $s1, 0x4($v0)
/* 10FE8 800A63E8 A4520006 */  sh         $s2, 0x6($v0)
/* 10FEC 800A63EC A4400008 */  sh         $zero, 0x8($v0)
/* 10FF0 800A63F0 8FBF001C */  lw         $ra, 0x1C($sp)
/* 10FF4 800A63F4 8FB20018 */  lw         $s2, 0x18($sp)
/* 10FF8 800A63F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 10FFC 800A63FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 11000 800A6400 27BD0020 */  addiu      $sp, $sp, 0x20
/* 11004 800A6404 03E00008 */  jr         $ra
/* 11008 800A6408 00000000 */   nop
.size func_800A63B8, . - func_800A63B8
