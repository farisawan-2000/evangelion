glabel func_80037E18_ovl3
/* E1328 80037E18 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E132C 80037E1C AFB10014 */  sw         $s1, 0x14($sp)
/* E1330 80037E20 3C118007 */  lui        $s1, %hi(D_8006C3C4_ovl3)
/* E1334 80037E24 8E31C3C4 */  lw         $s1, %lo(D_8006C3C4_ovl3)($s1)
/* E1338 80037E28 AFB20018 */  sw         $s2, 0x18($sp)
/* E133C 80037E2C 00009021 */  addu       $s2, $zero, $zero
/* E1340 80037E30 AFBF001C */  sw         $ra, 0x1C($sp)
/* E1344 80037E34 AFB00010 */  sw         $s0, 0x10($sp)
/* E1348 80037E38 2630000C */  addiu      $s0, $s1, 0xC
.L80037E3C_ovl3:
/* E134C 80037E3C 96220000 */  lhu        $v0, 0x0($s1)
/* E1350 80037E40 1040000C */  beqz       $v0, .L80037E74_ovl3
/* E1354 80037E44 26520001 */   addiu     $s2, $s2, 0x1
/* E1358 80037E48 8E04FFF8 */  lw         $a0, -0x8($s0)
/* E135C 80037E4C 0C027E98 */  jal        func_8009FA60
/* E1360 80037E50 00000000 */   nop
/* E1364 80037E54 0C027880 */  jal        func_8009E200
/* E1368 80037E58 8E04FFFC */   lw        $a0, -0x4($s0)
/* E136C 80037E5C 0C027BB8 */  jal        func_8009EEE0
/* E1370 80037E60 8E040000 */   lw        $a0, 0x0($s0)
/* E1374 80037E64 A6200000 */  sh         $zero, 0x0($s1)
/* E1378 80037E68 AE00FFF8 */  sw         $zero, -0x8($s0)
/* E137C 80037E6C AE00FFFC */  sw         $zero, -0x4($s0)
/* E1380 80037E70 AE000000 */  sw         $zero, 0x0($s0)
.L80037E74_ovl3:
/* E1384 80037E74 26100080 */  addiu      $s0, $s0, 0x80
/* E1388 80037E78 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* E138C 80037E7C 2C420032 */  sltiu      $v0, $v0, 0x32
/* E1390 80037E80 1440FFEE */  bnez       $v0, .L80037E3C_ovl3
/* E1394 80037E84 26310080 */   addiu     $s1, $s1, 0x80
/* E1398 80037E88 8FBF001C */  lw         $ra, 0x1C($sp)
/* E139C 80037E8C 8FB20018 */  lw         $s2, 0x18($sp)
/* E13A0 80037E90 8FB10014 */  lw         $s1, 0x14($sp)
/* E13A4 80037E94 8FB00010 */  lw         $s0, 0x10($sp)
/* E13A8 80037E98 03E00008 */  jr         $ra
/* E13AC 80037E9C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_80037E18_ovl3, . - func_80037E18_ovl3
