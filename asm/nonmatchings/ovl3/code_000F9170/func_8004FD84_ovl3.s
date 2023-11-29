glabel func_8004FD84_ovl3
/* F9294 8004FD84 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F9298 8004FD88 24040001 */  addiu      $a0, $zero, 0x1
/* F929C 8004FD8C AFBF002C */  sw         $ra, 0x2C($sp)
/* F92A0 8004FD90 AFB20028 */  sw         $s2, 0x28($sp)
/* F92A4 8004FD94 AFB10024 */  sw         $s1, 0x24($sp)
/* F92A8 8004FD98 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F92AC 8004FD9C AFB00020 */   sw        $s0, 0x20($sp)
/* F92B0 8004FDA0 00408021 */  addu       $s0, $v0, $zero
/* F92B4 8004FDA4 3C014120 */  lui        $at, (0x41200000 >> 16)
/* F92B8 8004FDA8 44810000 */  mtc1       $at, $f0
/* F92BC 8004FDAC 3C013C34 */  lui        $at, (0x3C343958 >> 16)
/* F92C0 8004FDB0 34213958 */  ori        $at, $at, (0x3C343958 & 0xFFFF)
/* F92C4 8004FDB4 44811000 */  mtc1       $at, $f2
/* F92C8 8004FDB8 02002021 */  addu       $a0, $s0, $zero
/* F92CC 8004FDBC 24050004 */  addiu      $a1, $zero, 0x4
/* F92D0 8004FDC0 240200FF */  addiu      $v0, $zero, 0xFF
/* F92D4 8004FDC4 A6020074 */  sh         $v0, 0x74($s0)
/* F92D8 8004FDC8 A6020076 */  sh         $v0, 0x76($s0)
/* F92DC 8004FDCC A6020078 */  sh         $v0, 0x78($s0)
/* F92E0 8004FDD0 A602007A */  sh         $v0, 0x7A($s0)
/* F92E4 8004FDD4 2402FFFF */  addiu      $v0, $zero, -0x1
/* F92E8 8004FDD8 AE000014 */  sw         $zero, 0x14($s0)
/* F92EC 8004FDDC AE000018 */  sw         $zero, 0x18($s0)
/* F92F0 8004FDE0 AE00001C */  sw         $zero, 0x1C($s0)
/* F92F4 8004FDE4 AE000020 */  sw         $zero, 0x20($s0)
/* F92F8 8004FDE8 AE000024 */  sw         $zero, 0x24($s0)
/* F92FC 8004FDEC A6020070 */  sh         $v0, 0x70($s0)
/* F9300 8004FDF0 E6000010 */  swc1       $f0, 0x10($s0)
/* F9304 8004FDF4 0C00DFE6 */  jal        func_80037F98_ovl3
/* F9308 8004FDF8 E6020028 */   swc1      $f2, 0x28($s0)
/* F930C 8004FDFC 8E020004 */  lw         $v0, 0x4($s0)
/* F9310 8004FE00 3C048030 */  lui        $a0, (0x80308610 >> 16)
/* F9314 8004FE04 34848610 */  ori        $a0, $a0, (0x80308610 & 0xFFFF)
/* F9318 8004FE08 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* F931C 8004FE0C 44810000 */  mtc1       $at, $f0
/* F9320 8004FE10 240501EC */  addiu      $a1, $zero, 0x1EC
/* F9324 8004FE14 24060007 */  addiu      $a2, $zero, 0x7
/* F9328 8004FE18 A0400067 */  sb         $zero, 0x67($v0)
/* F932C 8004FE1C 8E030004 */  lw         $v1, 0x4($s0)
/* F9330 8004FE20 3C01C184 */  lui        $at, (0xC1840000 >> 16)
/* F9334 8004FE24 44811000 */  mtc1       $at, $f2
/* F9338 8004FE28 3C014349 */  lui        $at, (0x43490000 >> 16)
/* F933C 8004FE2C 44812000 */  mtc1       $at, $f4
/* F9340 8004FE30 90620066 */  lbu        $v0, 0x66($v1)
/* F9344 8004FE34 3C01C238 */  lui        $at, (0xC2380000 >> 16)
/* F9348 8004FE38 44813000 */  mtc1       $at, $f6
/* F934C 8004FE3C 34420003 */  ori        $v0, $v0, 0x3
/* F9350 8004FE40 A0620066 */  sb         $v0, 0x66($v1)
/* F9354 8004FE44 3C018015 */  lui        $at, %hi(D_8014A064)
/* F9358 8004FE48 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F935C 8004FE4C 3C018015 */  lui        $at, %hi(D_8014A068)
/* F9360 8004FE50 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* F9364 8004FE54 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F9368 8004FE58 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F936C 8004FE5C 3C018015 */  lui        $at, %hi(D_8014A070)
/* F9370 8004FE60 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F9374 8004FE64 3C018015 */  lui        $at, %hi(D_8014A074)
/* F9378 8004FE68 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* F937C 8004FE6C 3C018015 */  lui        $at, %hi(D_8014A078)
/* F9380 8004FE70 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F9384 8004FE74 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F9388 8004FE78 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F938C 8004FE7C 3C018015 */  lui        $at, %hi(D_8014A080)
/* F9390 8004FE80 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F9394 8004FE84 3C018015 */  lui        $at, %hi(D_8014A084)
/* F9398 8004FE88 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F939C 8004FE8C 3C018015 */  lui        $at, %hi(D_8014A088)
/* F93A0 8004FE90 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* F93A4 8004FE94 0C00D9E0 */  jal        func_80036780_ovl3
/* F93A8 8004FE98 24070022 */   addiu     $a3, $zero, 0x22
/* F93AC 8004FE9C 00408021 */  addu       $s0, $v0, $zero
/* F93B0 8004FEA0 8E04000C */  lw         $a0, 0xC($s0)
/* F93B4 8004FEA4 3C064000 */  lui        $a2, (0x4000A3D7 >> 16)
/* F93B8 8004FEA8 34C6A3D7 */  ori        $a2, $a2, (0x4000A3D7 & 0xFFFF)
/* F93BC 8004FEAC 3C074000 */  lui        $a3, (0x40000000 >> 16)
/* F93C0 8004FEB0 0C02915B */  jal        func_800A456C
/* F93C4 8004FEB4 00002821 */   addu      $a1, $zero, $zero
/* F93C8 8004FEB8 8E04000C */  lw         $a0, 0xC($s0)
/* F93CC 8004FEBC 24050040 */  addiu      $a1, $zero, 0x40
/* F93D0 8004FEC0 0C028D89 */  jal        func_800A3624
/* F93D4 8004FEC4 24060040 */   addiu     $a2, $zero, 0x40
/* F93D8 8004FEC8 8E03000C */  lw         $v1, 0xC($s0)
/* F93DC 8004FECC 240401F3 */  addiu      $a0, $zero, 0x1F3
/* F93E0 8004FED0 9462001E */  lhu        $v0, 0x1E($v1)
/* F93E4 8004FED4 24050002 */  addiu      $a1, $zero, 0x2
/* F93E8 8004FED8 2406001F */  addiu      $a2, $zero, 0x1F
/* F93EC 8004FEDC 34420104 */  ori        $v0, $v0, 0x104
/* F93F0 8004FEE0 0C00D925 */  jal        func_80036494_ovl3
/* F93F4 8004FEE4 A462001E */   sh        $v0, 0x1E($v1)
/* F93F8 8004FEE8 00408021 */  addu       $s0, $v0, $zero
/* F93FC 8004FEEC 8E04000C */  lw         $a0, 0xC($s0)
/* F9400 8004FEF0 8C82000C */  lw         $v0, 0xC($a0)
/* F9404 8004FEF4 84460002 */  lh         $a2, 0x2($v0)
/* F9408 8004FEF8 0C02912A */  jal        func_800A44A8
/* F940C 8004FEFC 00002821 */   addu      $a1, $zero, $zero
/* F9410 8004FF00 8E04000C */  lw         $a0, 0xC($s0)
/* F9414 8004FF04 24050040 */  addiu      $a1, $zero, 0x40
/* F9418 8004FF08 0C028D89 */  jal        func_800A3624
/* F941C 8004FF0C 24060380 */   addiu     $a2, $zero, 0x380
/* F9420 8004FF10 2404001F */  addiu      $a0, $zero, 0x1F
/* F9424 8004FF14 0C00DD19 */  jal        func_80037464_ovl3
/* F9428 8004FF18 24050020 */   addiu     $a1, $zero, 0x20
/* F942C 8004FF1C 00408021 */  addu       $s0, $v0, $zero
/* F9430 8004FF20 8E04000C */  lw         $a0, 0xC($s0)
/* F9434 8004FF24 8C82000C */  lw         $v0, 0xC($a0)
/* F9438 8004FF28 84460002 */  lh         $a2, 0x2($v0)
/* F943C 8004FF2C 0C02912A */  jal        func_800A44A8
/* F9440 8004FF30 00002821 */   addu      $a1, $zero, $zero
/* F9444 8004FF34 8E04000C */  lw         $a0, 0xC($s0)
/* F9448 8004FF38 24050040 */  addiu      $a1, $zero, 0x40
/* F944C 8004FF3C 0C028D89 */  jal        func_800A3624
/* F9450 8004FF40 24060380 */   addiu     $a2, $zero, 0x380
/* F9454 8004FF44 24020060 */  addiu      $v0, $zero, 0x60
/* F9458 8004FF48 AFA20010 */  sw         $v0, 0x10($sp)
/* F945C 8004FF4C 8E04000C */  lw         $a0, 0xC($s0)
/* F9460 8004FF50 240500FF */  addiu      $a1, $zero, 0xFF
/* F9464 8004FF54 240600FF */  addiu      $a2, $zero, 0xFF
/* F9468 8004FF58 0C028E41 */  jal        func_800A3904
/* F946C 8004FF5C 240700FF */   addiu     $a3, $zero, 0xFF
/* F9470 8004FF60 0C00D8C1 */  jal        func_80036304_ovl3
/* F9474 8004FF64 2404001F */   addiu     $a0, $zero, 0x1F
/* F9478 8004FF68 8C44000C */  lw         $a0, 0xC($v0)
/* F947C 8004FF6C 24050001 */  addiu      $a1, $zero, 0x1
/* F9480 8004FF70 0C00DE72 */  jal        func_800379C8_ovl3
/* F9484 8004FF74 00003021 */   addu      $a2, $zero, $zero
/* F9488 8004FF78 27A40018 */  addiu      $a0, $sp, 0x18
/* F948C 8004FF7C 240520CA */  addiu      $a1, $zero, 0x20CA
/* F9490 8004FF80 24060003 */  addiu      $a2, $zero, 0x3
/* F9494 8004FF84 3C028007 */  lui        $v0, %hi(D_80069280_ovl3)
/* F9498 8004FF88 24429280 */  addiu      $v0, $v0, %lo(D_80069280_ovl3)
/* F949C 8004FF8C 2412FFFE */  addiu      $s2, $zero, -0x2
/* F94A0 8004FF90 24110001 */  addiu      $s1, $zero, 0x1
/* F94A4 8004FF94 24100003 */  addiu      $s0, $zero, 0x3
/* F94A8 8004FF98 AFA20018 */  sw         $v0, 0x18($sp)
/* F94AC 8004FF9C A3B2001C */  sb         $s2, 0x1C($sp)
/* F94B0 8004FFA0 A3A0001D */  sb         $zero, 0x1D($sp)
/* F94B4 8004FFA4 A3B1001E */  sb         $s1, 0x1E($sp)
/* F94B8 8004FFA8 0C00DE82 */  jal        func_80037A08_ovl3
/* F94BC 8004FFAC A3B0001F */   sb        $s0, 0x1F($sp)
/* F94C0 8004FFB0 27A40018 */  addiu      $a0, $sp, 0x18
/* F94C4 8004FFB4 240520CB */  addiu      $a1, $zero, 0x20CB
/* F94C8 8004FFB8 24060003 */  addiu      $a2, $zero, 0x3
/* F94CC 8004FFBC 3C028007 */  lui        $v0, %hi(D_80069298_ovl3)
/* F94D0 8004FFC0 24429298 */  addiu      $v0, $v0, %lo(D_80069298_ovl3)
/* F94D4 8004FFC4 AFA20018 */  sw         $v0, 0x18($sp)
/* F94D8 8004FFC8 A3B2001C */  sb         $s2, 0x1C($sp)
/* F94DC 8004FFCC A3A0001D */  sb         $zero, 0x1D($sp)
/* F94E0 8004FFD0 A3B1001E */  sb         $s1, 0x1E($sp)
/* F94E4 8004FFD4 0C00DE82 */  jal        func_80037A08_ovl3
/* F94E8 8004FFD8 A3B0001F */   sb        $s0, 0x1F($sp)
/* F94EC 8004FFDC 8FBF002C */  lw         $ra, 0x2C($sp)
/* F94F0 8004FFE0 8FB20028 */  lw         $s2, 0x28($sp)
/* F94F4 8004FFE4 8FB10024 */  lw         $s1, 0x24($sp)
/* F94F8 8004FFE8 8FB00020 */  lw         $s0, 0x20($sp)
/* F94FC 8004FFEC 03E00008 */  jr         $ra
/* F9500 8004FFF0 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_8004FD84_ovl3, . - func_8004FD84_ovl3
