glabel func_80050E68_ovl3
/* FA378 80050E68 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FA37C 80050E6C AFBF0024 */  sw         $ra, 0x24($sp)
/* FA380 80050E70 AFB20020 */  sw         $s2, 0x20($sp)
/* FA384 80050E74 AFB1001C */  sw         $s1, 0x1C($sp)
/* FA388 80050E78 0C00E109 */  jal        func_80038424_ovl3
/* FA38C 80050E7C AFB00018 */   sw        $s0, 0x18($sp)
/* FA390 80050E80 3C04802F */  lui        $a0, (0x802F9800 >> 16)
/* FA394 80050E84 34849800 */  ori        $a0, $a0, (0x802F9800 & 0xFFFF)
/* FA398 80050E88 24050228 */  addiu      $a1, $zero, 0x228
/* FA39C 80050E8C 2406000B */  addiu      $a2, $zero, 0xB
/* FA3A0 80050E90 0C00D9E0 */  jal        func_80036780_ovl3
/* FA3A4 80050E94 24070036 */   addiu     $a3, $zero, 0x36
/* FA3A8 80050E98 00408021 */  addu       $s0, $v0, $zero
/* FA3AC 80050E9C 8E04000C */  lw         $a0, 0xC($s0)
/* FA3B0 80050EA0 8C82000C */  lw         $v0, 0xC($a0)
/* FA3B4 80050EA4 94450000 */  lhu        $a1, 0x0($v0)
/* FA3B8 80050EA8 00003021 */  addu       $a2, $zero, $zero
/* FA3BC 80050EAC 0C02912A */  jal        func_800A44A8
/* FA3C0 80050EB0 00052842 */   srl       $a1, $a1, 1
/* FA3C4 80050EB4 3C048030 */  lui        $a0, (0x80308610 >> 16)
/* FA3C8 80050EB8 8E03000C */  lw         $v1, 0xC($s0)
/* FA3CC 80050EBC 34848610 */  ori        $a0, $a0, (0x80308610 & 0xFFFF)
/* FA3D0 80050EC0 24050233 */  addiu      $a1, $zero, 0x233
/* FA3D4 80050EC4 9462001E */  lhu        $v0, 0x1E($v1)
/* FA3D8 80050EC8 2406000A */  addiu      $a2, $zero, 0xA
/* FA3DC 80050ECC 24070034 */  addiu      $a3, $zero, 0x34
/* FA3E0 80050ED0 34420004 */  ori        $v0, $v0, 0x4
/* FA3E4 80050ED4 0C00D9E0 */  jal        func_80036780_ovl3
/* FA3E8 80050ED8 A462001E */   sh        $v0, 0x1E($v1)
/* FA3EC 80050EDC 00408021 */  addu       $s0, $v0, $zero
/* FA3F0 80050EE0 8E04000C */  lw         $a0, 0xC($s0)
/* FA3F4 80050EE4 8C82000C */  lw         $v0, 0xC($a0)
/* FA3F8 80050EE8 94450000 */  lhu        $a1, 0x0($v0)
/* FA3FC 80050EEC 00003021 */  addu       $a2, $zero, $zero
/* FA400 80050EF0 0C02912A */  jal        func_800A44A8
/* FA404 80050EF4 00052842 */   srl       $a1, $a1, 1
/* FA408 80050EF8 8E03000C */  lw         $v1, 0xC($s0)
/* FA40C 80050EFC 27A40010 */  addiu      $a0, $sp, 0x10
/* FA410 80050F00 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FA414 80050F04 24060002 */  addiu      $a2, $zero, 0x2
/* FA418 80050F08 2412FFFE */  addiu      $s2, $zero, -0x2
/* FA41C 80050F0C 9462001E */  lhu        $v0, 0x1E($v1)
/* FA420 80050F10 24110001 */  addiu      $s1, $zero, 0x1
/* FA424 80050F14 24100003 */  addiu      $s0, $zero, 0x3
/* FA428 80050F18 34420004 */  ori        $v0, $v0, 0x4
/* FA42C 80050F1C A462001E */  sh         $v0, 0x1E($v1)
/* FA430 80050F20 3C028007 */  lui        $v0, %hi(D_80069358_ovl3)
/* FA434 80050F24 24429358 */  addiu      $v0, $v0, %lo(D_80069358_ovl3)
/* FA438 80050F28 AFA20010 */  sw         $v0, 0x10($sp)
/* FA43C 80050F2C A3B20014 */  sb         $s2, 0x14($sp)
/* FA440 80050F30 A3A00015 */  sb         $zero, 0x15($sp)
/* FA444 80050F34 A3B10016 */  sb         $s1, 0x16($sp)
/* FA448 80050F38 0C00DE82 */  jal        func_80037A08_ovl3
/* FA44C 80050F3C A3B00017 */   sb        $s0, 0x17($sp)
/* FA450 80050F40 27A40010 */  addiu      $a0, $sp, 0x10
/* FA454 80050F44 240520CA */  addiu      $a1, $zero, 0x20CA
/* FA458 80050F48 24060002 */  addiu      $a2, $zero, 0x2
/* FA45C 80050F4C 3C028007 */  lui        $v0, %hi(D_80069374_ovl3)
/* FA460 80050F50 24429374 */  addiu      $v0, $v0, %lo(D_80069374_ovl3)
/* FA464 80050F54 AFA20010 */  sw         $v0, 0x10($sp)
/* FA468 80050F58 A3B20014 */  sb         $s2, 0x14($sp)
/* FA46C 80050F5C A3A00015 */  sb         $zero, 0x15($sp)
/* FA470 80050F60 A3B10016 */  sb         $s1, 0x16($sp)
/* FA474 80050F64 0C00DE82 */  jal        func_80037A08_ovl3
/* FA478 80050F68 A3B00017 */   sb        $s0, 0x17($sp)
/* FA47C 80050F6C 8FBF0024 */  lw         $ra, 0x24($sp)
/* FA480 80050F70 8FB20020 */  lw         $s2, 0x20($sp)
/* FA484 80050F74 8FB1001C */  lw         $s1, 0x1C($sp)
/* FA488 80050F78 8FB00018 */  lw         $s0, 0x18($sp)
/* FA48C 80050F7C 03E00008 */  jr         $ra
/* FA490 80050F80 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80050E68_ovl3, . - func_80050E68_ovl3
