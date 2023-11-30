glabel func_80026F88_ovl7
/* 1769C8 80026F88 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1769CC 80026F8C AFB30024 */  sw         $s3, 0x24($sp)
/* 1769D0 80026F90 00809821 */  addu       $s3, $a0, $zero
/* 1769D4 80026F94 AFBF0028 */  sw         $ra, 0x28($sp)
/* 1769D8 80026F98 AFB20020 */  sw         $s2, 0x20($sp)
/* 1769DC 80026F9C AFB1001C */  sw         $s1, 0x1C($sp)
/* 1769E0 80026FA0 AFB00018 */  sw         $s0, 0x18($sp)
/* 1769E4 80026FA4 9662000E */  lhu        $v0, 0xE($s3)
/* 1769E8 80026FA8 8E72002C */  lw         $s2, 0x2C($s3)
/* 1769EC 80026FAC 18400013 */  blez       $v0, .L80026FFC_ovl7
/* 1769F0 80026FB0 00008821 */   addu      $s1, $zero, $zero
/* 1769F4 80026FB4 26500008 */  addiu      $s0, $s2, 0x8
.L80026FB8_ovl7:
/* 1769F8 80026FB8 8E04FFFC */  lw         $a0, -0x4($s0)
/* 1769FC 80026FBC 10800003 */  beqz       $a0, .L80026FCC_ovl7
/* 176A00 80026FC0 00000000 */   nop
/* 176A04 80026FC4 0C0295B3 */  jal        func_800A56CC
/* 176A08 80026FC8 00000000 */   nop
.L80026FCC_ovl7:
/* 176A0C 80026FCC 96020000 */  lhu        $v0, 0x0($s0)
/* 176A10 80026FD0 30420001 */  andi       $v0, $v0, 0x1
/* 176A14 80026FD4 14400004 */  bnez       $v0, .L80026FE8_ovl7
/* 176A18 80026FD8 2610000C */   addiu     $s0, $s0, 0xC
/* 176A1C 80026FDC 8E440000 */  lw         $a0, 0x0($s2)
/* 176A20 80026FE0 0C028A40 */  jal        func_800A2900
/* 176A24 80026FE4 00000000 */   nop
.L80026FE8_ovl7:
/* 176A28 80026FE8 9662000E */  lhu        $v0, 0xE($s3)
/* 176A2C 80026FEC 26310001 */  addiu      $s1, $s1, 0x1
/* 176A30 80026FF0 0222102A */  slt        $v0, $s1, $v0
/* 176A34 80026FF4 1440FFF0 */  bnez       $v0, .L80026FB8_ovl7
/* 176A38 80026FF8 2652000C */   addiu     $s2, $s2, 0xC
.L80026FFC_ovl7:
/* 176A3C 80026FFC 8FBF0028 */  lw         $ra, 0x28($sp)
/* 176A40 80027000 8FB30024 */  lw         $s3, 0x24($sp)
/* 176A44 80027004 8FB20020 */  lw         $s2, 0x20($sp)
/* 176A48 80027008 8FB1001C */  lw         $s1, 0x1C($sp)
/* 176A4C 8002700C 8FB00018 */  lw         $s0, 0x18($sp)
/* 176A50 80027010 03E00008 */  jr         $ra
/* 176A54 80027014 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_80026F88_ovl7, . - func_80026F88_ovl7
