glabel func_80037EA0_ovl3
/* E13B0 80037EA0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E13B4 80037EA4 AFB10014 */  sw         $s1, 0x14($sp)
/* E13B8 80037EA8 3C118007 */  lui        $s1, %hi(D_8006C3C4_ovl3)
/* E13BC 80037EAC 8E31C3C4 */  lw         $s1, %lo(D_8006C3C4_ovl3)($s1)
/* E13C0 80037EB0 AFB3001C */  sw         $s3, 0x1C($sp)
/* E13C4 80037EB4 00809821 */  addu       $s3, $a0, $zero
/* E13C8 80037EB8 AFB20018 */  sw         $s2, 0x18($sp)
/* E13CC 80037EBC 00009021 */  addu       $s2, $zero, $zero
/* E13D0 80037EC0 AFB40020 */  sw         $s4, 0x20($sp)
/* E13D4 80037EC4 3274FFFF */  andi       $s4, $s3, 0xFFFF
/* E13D8 80037EC8 AFBF0024 */  sw         $ra, 0x24($sp)
/* E13DC 80037ECC AFB00010 */  sw         $s0, 0x10($sp)
/* E13E0 80037ED0 2630000C */  addiu      $s0, $s1, 0xC
.L80037ED4_ovl3:
/* E13E4 80037ED4 96220000 */  lhu        $v0, 0x0($s1)
/* E13E8 80037ED8 1454000C */  bne        $v0, $s4, .L80037F0C_ovl3
/* E13EC 80037EDC 00000000 */   nop
/* E13F0 80037EE0 0C027E98 */  jal        func_8009FA60
/* E13F4 80037EE4 8E04FFF8 */   lw        $a0, -0x8($s0)
/* E13F8 80037EE8 0C027880 */  jal        func_8009E200
/* E13FC 80037EEC 8E04FFFC */   lw        $a0, -0x4($s0)
/* E1400 80037EF0 0C027BB8 */  jal        func_8009EEE0
/* E1404 80037EF4 8E040000 */   lw        $a0, 0x0($s0)
/* E1408 80037EF8 A6200000 */  sh         $zero, 0x0($s1)
/* E140C 80037EFC AE00FFF8 */  sw         $zero, -0x8($s0)
/* E1410 80037F00 AE00FFFC */  sw         $zero, -0x4($s0)
/* E1414 80037F04 AE000000 */  sw         $zero, 0x0($s0)
/* E1418 80037F08 96220000 */  lhu        $v0, 0x0($s1)
.L80037F0C_ovl3:
/* E141C 80037F0C 14400004 */  bnez       $v0, .L80037F20_ovl3
/* E1420 80037F10 26520001 */   addiu     $s2, $s2, 0x1
/* E1424 80037F14 A6330000 */  sh         $s3, 0x0($s1)
/* E1428 80037F18 0800DFCE */  j          .L80037F38_ovl3
/* E142C 80037F1C 02201021 */   addu      $v0, $s1, $zero
.L80037F20_ovl3:
/* E1430 80037F20 26100080 */  addiu      $s0, $s0, 0x80
/* E1434 80037F24 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* E1438 80037F28 2C420032 */  sltiu      $v0, $v0, 0x32
/* E143C 80037F2C 1440FFE9 */  bnez       $v0, .L80037ED4_ovl3
/* E1440 80037F30 26310080 */   addiu     $s1, $s1, 0x80
/* E1444 80037F34 00001021 */  addu       $v0, $zero, $zero
.L80037F38_ovl3:
/* E1448 80037F38 8FBF0024 */  lw         $ra, 0x24($sp)
/* E144C 80037F3C 8FB40020 */  lw         $s4, 0x20($sp)
/* E1450 80037F40 8FB3001C */  lw         $s3, 0x1C($sp)
/* E1454 80037F44 8FB20018 */  lw         $s2, 0x18($sp)
/* E1458 80037F48 8FB10014 */  lw         $s1, 0x14($sp)
/* E145C 80037F4C 8FB00010 */  lw         $s0, 0x10($sp)
/* E1460 80037F50 03E00008 */  jr         $ra
/* E1464 80037F54 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80037EA0_ovl3, . - func_80037EA0_ovl3
