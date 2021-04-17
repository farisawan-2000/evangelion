.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8004FC60_F9170
/* F9170 8004FC60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F9174 8004FC64 3C04802F */  lui        $a0, 0x802f
/* F9178 8004FC68 34849800 */  ori        $a0, $a0, 0x9800
/* F917C 8004FC6C 240501E4 */  addiu      $a1, $zero, 0x1e4
/* F9180 8004FC70 24060007 */  addiu      $a2, $zero, 7
/* F9184 8004FC74 24070021 */  addiu      $a3, $zero, 0x21
/* F9188 8004FC78 AFBF0024 */  sw         $ra, 0x24($sp)
/* F918C 8004FC7C 0C00D9E0 */  jal        func_80036780_DFC90
/* F9190 8004FC80 AFB00020 */   sw        $s0, 0x20($sp)
/* F9194 8004FC84 00408021 */  addu       $s0, $v0, $zero
/* F9198 8004FC88 3C014000 */  lui        $at, 0x4000
/* F919C 8004FC8C 44810000 */  mtc1       $at, $f0
/* F91A0 8004FC90 8E04000C */  lw         $a0, 0xc($s0)
/* F91A4 8004FC94 44060000 */  mfc1       $a2, $f0
/* F91A8 8004FC98 00002821 */  addu       $a1, $zero, $zero
/* F91AC 8004FC9C 0C02915B */  jal        func_800A456C
/* F91B0 8004FCA0 00C03821 */   addu      $a3, $a2, $zero
/* F91B4 8004FCA4 8E04000C */  lw         $a0, 0xc($s0)
/* F91B8 8004FCA8 8C82000C */  lw         $v0, 0xc($a0)
/* F91BC 8004FCAC 94450000 */  lhu        $a1, ($v0)
/* F91C0 8004FCB0 94460002 */  lhu        $a2, 2($v0)
/* F91C4 8004FCB4 00052842 */  srl        $a1, $a1, 1
/* F91C8 8004FCB8 0C02912A */  jal        func_800A44A8
/* F91CC 8004FCBC 00063042 */   srl       $a2, $a2, 1
/* F91D0 8004FCC0 8E04000C */  lw         $a0, 0xc($s0)
/* F91D4 8004FCC4 24050280 */  addiu      $a1, $zero, 0x280
/* F91D8 8004FCC8 0C028D89 */  jal        func_800A3624
/* F91DC 8004FCCC 240601E0 */   addiu     $a2, $zero, 0x1e0
/* F91E0 8004FCD0 8E03000C */  lw         $v1, 0xc($s0)
/* F91E4 8004FCD4 240401EB */  addiu      $a0, $zero, 0x1eb
/* F91E8 8004FCD8 9462001E */  lhu        $v0, 0x1e($v1)
/* F91EC 8004FCDC 24050002 */  addiu      $a1, $zero, 2
/* F91F0 8004FCE0 2406001E */  addiu      $a2, $zero, 0x1e
/* F91F4 8004FCE4 34420004 */  ori        $v0, $v0, 4
/* F91F8 8004FCE8 0C00D925 */  jal        func_80036494_DF9A4
/* F91FC 8004FCEC A462001E */   sh        $v0, 0x1e($v1)
/* F9200 8004FCF0 00408021 */  addu       $s0, $v0, $zero
/* F9204 8004FCF4 8E04000C */  lw         $a0, 0xc($s0)
/* F9208 8004FCF8 8C82000C */  lw         $v0, 0xc($a0)
/* F920C 8004FCFC 94450000 */  lhu        $a1, ($v0)
/* F9210 8004FD00 94460002 */  lhu        $a2, 2($v0)
/* F9214 8004FD04 00052842 */  srl        $a1, $a1, 1
/* F9218 8004FD08 0C02912A */  jal        func_800A44A8
/* F921C 8004FD0C 00063042 */   srl       $a2, $a2, 1
/* F9220 8004FD10 24020060 */  addiu      $v0, $zero, 0x60
/* F9224 8004FD14 AFA20010 */  sw         $v0, 0x10($sp)
/* F9228 8004FD18 8E04000C */  lw         $a0, 0xc($s0)
/* F922C 8004FD1C 240500FF */  addiu      $a1, $zero, 0xff
/* F9230 8004FD20 240600FF */  addiu      $a2, $zero, 0xff
/* F9234 8004FD24 0C028E41 */  jal        func_800A3904
/* F9238 8004FD28 240700FF */   addiu     $a3, $zero, 0xff
/* F923C 8004FD2C 8E03000C */  lw         $v1, 0xc($s0)
/* F9240 8004FD30 27A40018 */  addiu      $a0, $sp, 0x18
/* F9244 8004FD34 9462001E */  lhu        $v0, 0x1e($v1)
/* F9248 8004FD38 240520C9 */  addiu      $a1, $zero, 0x20c9
/* F924C 8004FD3C 24060003 */  addiu      $a2, $zero, 3
/* F9250 8004FD40 34420004 */  ori        $v0, $v0, 4
/* F9254 8004FD44 A462001E */  sh         $v0, 0x1e($v1)
/* F9258 8004FD48 3C028007 */  lui        $v0, %hi(D_80069280_112790)
/* F925C 8004FD4C 24429280 */  addiu      $v0, $v0, %lo(D_80069280_112790)
/* F9260 8004FD50 AFA20018 */  sw         $v0, 0x18($sp)
/* F9264 8004FD54 2402FFFE */  addiu      $v0, $zero, -2
/* F9268 8004FD58 A3A2001C */  sb         $v0, 0x1c($sp)
/* F926C 8004FD5C 24020001 */  addiu      $v0, $zero, 1
/* F9270 8004FD60 A3A2001E */  sb         $v0, 0x1e($sp)
/* F9274 8004FD64 24020003 */  addiu      $v0, $zero, 3
/* F9278 8004FD68 A3A0001D */  sb         $zero, 0x1d($sp)
/* F927C 8004FD6C 0C00DE82 */  jal        func_80037A08_E0F18
/* F9280 8004FD70 A3A2001F */   sb        $v0, 0x1f($sp)
/* F9284 8004FD74 8FBF0024 */  lw         $ra, 0x24($sp)
/* F9288 8004FD78 8FB00020 */  lw         $s0, 0x20($sp)
/* F928C 8004FD7C 03E00008 */  jr         $ra
/* F9290 8004FD80 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004FD84_F9294
/* F9294 8004FD84 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F9298 8004FD88 24040001 */  addiu      $a0, $zero, 1
/* F929C 8004FD8C AFBF002C */  sw         $ra, 0x2c($sp)
/* F92A0 8004FD90 AFB20028 */  sw         $s2, 0x28($sp)
/* F92A4 8004FD94 AFB10024 */  sw         $s1, 0x24($sp)
/* F92A8 8004FD98 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F92AC 8004FD9C AFB00020 */   sw        $s0, 0x20($sp)
/* F92B0 8004FDA0 00408021 */  addu       $s0, $v0, $zero
/* F92B4 8004FDA4 3C014120 */  lui        $at, 0x4120
/* F92B8 8004FDA8 44810000 */  mtc1       $at, $f0
/* F92BC 8004FDAC 3C013C34 */  lui        $at, 0x3c34
/* F92C0 8004FDB0 34213958 */  ori        $at, $at, 0x3958
/* F92C4 8004FDB4 44811000 */  mtc1       $at, $f2
/* F92C8 8004FDB8 02002021 */  addu       $a0, $s0, $zero
/* F92CC 8004FDBC 24050004 */  addiu      $a1, $zero, 4
/* F92D0 8004FDC0 240200FF */  addiu      $v0, $zero, 0xff
/* F92D4 8004FDC4 A6020074 */  sh         $v0, 0x74($s0)
/* F92D8 8004FDC8 A6020076 */  sh         $v0, 0x76($s0)
/* F92DC 8004FDCC A6020078 */  sh         $v0, 0x78($s0)
/* F92E0 8004FDD0 A602007A */  sh         $v0, 0x7a($s0)
/* F92E4 8004FDD4 2402FFFF */  addiu      $v0, $zero, -1
/* F92E8 8004FDD8 AE000014 */  sw         $zero, 0x14($s0)
/* F92EC 8004FDDC AE000018 */  sw         $zero, 0x18($s0)
/* F92F0 8004FDE0 AE00001C */  sw         $zero, 0x1c($s0)
/* F92F4 8004FDE4 AE000020 */  sw         $zero, 0x20($s0)
/* F92F8 8004FDE8 AE000024 */  sw         $zero, 0x24($s0)
/* F92FC 8004FDEC A6020070 */  sh         $v0, 0x70($s0)
/* F9300 8004FDF0 E6000010 */  swc1       $f0, 0x10($s0)
/* F9304 8004FDF4 0C00DFE6 */  jal        func_80037F98_E14A8
/* F9308 8004FDF8 E6020028 */   swc1      $f2, 0x28($s0)
/* F930C 8004FDFC 8E020004 */  lw         $v0, 4($s0)
/* F9310 8004FE00 3C048030 */  lui        $a0, 0x8030
/* F9314 8004FE04 34848610 */  ori        $a0, $a0, 0x8610
/* F9318 8004FE08 3C013F80 */  lui        $at, 0x3f80
/* F931C 8004FE0C 44810000 */  mtc1       $at, $f0
/* F9320 8004FE10 240501EC */  addiu      $a1, $zero, 0x1ec
/* F9324 8004FE14 24060007 */  addiu      $a2, $zero, 7
/* F9328 8004FE18 A0400067 */  sb         $zero, 0x67($v0)
/* F932C 8004FE1C 8E030004 */  lw         $v1, 4($s0)
/* F9330 8004FE20 3C01C184 */  lui        $at, 0xc184
/* F9334 8004FE24 44811000 */  mtc1       $at, $f2
/* F9338 8004FE28 3C014349 */  lui        $at, 0x4349
/* F933C 8004FE2C 44812000 */  mtc1       $at, $f4
/* F9340 8004FE30 90620066 */  lbu        $v0, 0x66($v1)
/* F9344 8004FE34 3C01C238 */  lui        $at, 0xc238
/* F9348 8004FE38 44813000 */  mtc1       $at, $f6
/* F934C 8004FE3C 34420003 */  ori        $v0, $v0, 3
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
/* F93A4 8004FE94 0C00D9E0 */  jal        func_80036780_DFC90
/* F93A8 8004FE98 24070022 */   addiu     $a3, $zero, 0x22
/* F93AC 8004FE9C 00408021 */  addu       $s0, $v0, $zero
/* F93B0 8004FEA0 8E04000C */  lw         $a0, 0xc($s0)
/* F93B4 8004FEA4 3C064000 */  lui        $a2, 0x4000
/* F93B8 8004FEA8 34C6A3D7 */  ori        $a2, $a2, 0xa3d7
/* F93BC 8004FEAC 3C074000 */  lui        $a3, 0x4000
/* F93C0 8004FEB0 0C02915B */  jal        func_800A456C
/* F93C4 8004FEB4 00002821 */   addu      $a1, $zero, $zero
/* F93C8 8004FEB8 8E04000C */  lw         $a0, 0xc($s0)
/* F93CC 8004FEBC 24050040 */  addiu      $a1, $zero, 0x40
/* F93D0 8004FEC0 0C028D89 */  jal        func_800A3624
/* F93D4 8004FEC4 24060040 */   addiu     $a2, $zero, 0x40
/* F93D8 8004FEC8 8E03000C */  lw         $v1, 0xc($s0)
/* F93DC 8004FECC 240401F3 */  addiu      $a0, $zero, 0x1f3
/* F93E0 8004FED0 9462001E */  lhu        $v0, 0x1e($v1)
/* F93E4 8004FED4 24050002 */  addiu      $a1, $zero, 2
/* F93E8 8004FED8 2406001F */  addiu      $a2, $zero, 0x1f
/* F93EC 8004FEDC 34420104 */  ori        $v0, $v0, 0x104
/* F93F0 8004FEE0 0C00D925 */  jal        func_80036494_DF9A4
/* F93F4 8004FEE4 A462001E */   sh        $v0, 0x1e($v1)
/* F93F8 8004FEE8 00408021 */  addu       $s0, $v0, $zero
/* F93FC 8004FEEC 8E04000C */  lw         $a0, 0xc($s0)
/* F9400 8004FEF0 8C82000C */  lw         $v0, 0xc($a0)
/* F9404 8004FEF4 84460002 */  lh         $a2, 2($v0)
/* F9408 8004FEF8 0C02912A */  jal        func_800A44A8
/* F940C 8004FEFC 00002821 */   addu      $a1, $zero, $zero
/* F9410 8004FF00 8E04000C */  lw         $a0, 0xc($s0)
/* F9414 8004FF04 24050040 */  addiu      $a1, $zero, 0x40
/* F9418 8004FF08 0C028D89 */  jal        func_800A3624
/* F941C 8004FF0C 24060380 */   addiu     $a2, $zero, 0x380
/* F9420 8004FF10 2404001F */  addiu      $a0, $zero, 0x1f
/* F9424 8004FF14 0C00DD19 */  jal        func_80037464_E0974
/* F9428 8004FF18 24050020 */   addiu     $a1, $zero, 0x20
/* F942C 8004FF1C 00408021 */  addu       $s0, $v0, $zero
/* F9430 8004FF20 8E04000C */  lw         $a0, 0xc($s0)
/* F9434 8004FF24 8C82000C */  lw         $v0, 0xc($a0)
/* F9438 8004FF28 84460002 */  lh         $a2, 2($v0)
/* F943C 8004FF2C 0C02912A */  jal        func_800A44A8
/* F9440 8004FF30 00002821 */   addu      $a1, $zero, $zero
/* F9444 8004FF34 8E04000C */  lw         $a0, 0xc($s0)
/* F9448 8004FF38 24050040 */  addiu      $a1, $zero, 0x40
/* F944C 8004FF3C 0C028D89 */  jal        func_800A3624
/* F9450 8004FF40 24060380 */   addiu     $a2, $zero, 0x380
/* F9454 8004FF44 24020060 */  addiu      $v0, $zero, 0x60
/* F9458 8004FF48 AFA20010 */  sw         $v0, 0x10($sp)
/* F945C 8004FF4C 8E04000C */  lw         $a0, 0xc($s0)
/* F9460 8004FF50 240500FF */  addiu      $a1, $zero, 0xff
/* F9464 8004FF54 240600FF */  addiu      $a2, $zero, 0xff
/* F9468 8004FF58 0C028E41 */  jal        func_800A3904
/* F946C 8004FF5C 240700FF */   addiu     $a3, $zero, 0xff
/* F9470 8004FF60 0C00D8C1 */  jal        func_80036304_DF814
/* F9474 8004FF64 2404001F */   addiu     $a0, $zero, 0x1f
/* F9478 8004FF68 8C44000C */  lw         $a0, 0xc($v0)
/* F947C 8004FF6C 24050001 */  addiu      $a1, $zero, 1
/* F9480 8004FF70 0C00DE72 */  jal        func_800379C8_E0ED8
/* F9484 8004FF74 00003021 */   addu      $a2, $zero, $zero
/* F9488 8004FF78 27A40018 */  addiu      $a0, $sp, 0x18
/* F948C 8004FF7C 240520CA */  addiu      $a1, $zero, 0x20ca
/* F9490 8004FF80 24060003 */  addiu      $a2, $zero, 3
/* F9494 8004FF84 3C028007 */  lui        $v0, %hi(D_80069280_112790)
/* F9498 8004FF88 24429280 */  addiu      $v0, $v0, %lo(D_80069280_112790)
/* F949C 8004FF8C 2412FFFE */  addiu      $s2, $zero, -2
/* F94A0 8004FF90 24110001 */  addiu      $s1, $zero, 1
/* F94A4 8004FF94 24100003 */  addiu      $s0, $zero, 3
/* F94A8 8004FF98 AFA20018 */  sw         $v0, 0x18($sp)
/* F94AC 8004FF9C A3B2001C */  sb         $s2, 0x1c($sp)
/* F94B0 8004FFA0 A3A0001D */  sb         $zero, 0x1d($sp)
/* F94B4 8004FFA4 A3B1001E */  sb         $s1, 0x1e($sp)
/* F94B8 8004FFA8 0C00DE82 */  jal        func_80037A08_E0F18
/* F94BC 8004FFAC A3B0001F */   sb        $s0, 0x1f($sp)
/* F94C0 8004FFB0 27A40018 */  addiu      $a0, $sp, 0x18
/* F94C4 8004FFB4 240520CB */  addiu      $a1, $zero, 0x20cb
/* F94C8 8004FFB8 24060003 */  addiu      $a2, $zero, 3
/* F94CC 8004FFBC 3C028007 */  lui        $v0, %hi(D_80069298_1127A8)
/* F94D0 8004FFC0 24429298 */  addiu      $v0, $v0, %lo(D_80069298_1127A8)
/* F94D4 8004FFC4 AFA20018 */  sw         $v0, 0x18($sp)
/* F94D8 8004FFC8 A3B2001C */  sb         $s2, 0x1c($sp)
/* F94DC 8004FFCC A3A0001D */  sb         $zero, 0x1d($sp)
/* F94E0 8004FFD0 A3B1001E */  sb         $s1, 0x1e($sp)
/* F94E4 8004FFD4 0C00DE82 */  jal        func_80037A08_E0F18
/* F94E8 8004FFD8 A3B0001F */   sb        $s0, 0x1f($sp)
/* F94EC 8004FFDC 8FBF002C */  lw         $ra, 0x2c($sp)
/* F94F0 8004FFE0 8FB20028 */  lw         $s2, 0x28($sp)
/* F94F4 8004FFE4 8FB10024 */  lw         $s1, 0x24($sp)
/* F94F8 8004FFE8 8FB00020 */  lw         $s0, 0x20($sp)
/* F94FC 8004FFEC 03E00008 */  jr         $ra
/* F9500 8004FFF0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004FFF4_F9504
/* F9504 8004FFF4 27BDFF98 */  addiu      $sp, $sp, -0x68
/* F9508 8004FFF8 AFBF0030 */  sw         $ra, 0x30($sp)
/* F950C 8004FFFC AFB3002C */  sw         $s3, 0x2c($sp)
/* F9510 80050000 AFB20028 */  sw         $s2, 0x28($sp)
/* F9514 80050004 AFB10024 */  sw         $s1, 0x24($sp)
/* F9518 80050008 AFB00020 */  sw         $s0, 0x20($sp)
/* F951C 8005000C F7BE0060 */  sdc1       $f30, 0x60($sp)
/* F9520 80050010 F7BC0058 */  sdc1       $f28, 0x58($sp)
/* F9524 80050014 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* F9528 80050018 F7B80048 */  sdc1       $f24, 0x48($sp)
/* F952C 8005001C F7B60040 */  sdc1       $f22, 0x40($sp)
/* F9530 80050020 F7B40038 */  sdc1       $f20, 0x38($sp)
/* F9534 80050024 0C00E109 */  jal        func_80038424_E1934
/* F9538 80050028 241000FF */   addiu     $s0, $zero, 0xff
/* F953C 8005002C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F9540 80050030 24040002 */   addiu     $a0, $zero, 2
/* F9544 80050034 00409021 */  addu       $s2, $v0, $zero
/* F9548 80050038 3C0142D2 */  lui        $at, 0x42d2
/* F954C 8005003C 44810000 */  mtc1       $at, $f0
/* F9550 80050040 3C013D03 */  lui        $at, 0x3d03
/* F9554 80050044 3421126F */  ori        $at, $at, 0x126f
/* F9558 80050048 4481A000 */  mtc1       $at, $f20
/* F955C 8005004C 3C0142E6 */  lui        $at, 0x42e6
/* F9560 80050050 44811000 */  mtc1       $at, $f2
/* F9564 80050054 02402021 */  addu       $a0, $s2, $zero
/* F9568 80050058 24050004 */  addiu      $a1, $zero, 4
/* F956C 8005005C 2411FFFF */  addiu      $s1, $zero, -1
/* F9570 80050060 AE400010 */  sw         $zero, 0x10($s2)
/* F9574 80050064 AE400018 */  sw         $zero, 0x18($s2)
/* F9578 80050068 AE40001C */  sw         $zero, 0x1c($s2)
/* F957C 8005006C AE400024 */  sw         $zero, 0x24($s2)
/* F9580 80050070 A6500074 */  sh         $s0, 0x74($s2)
/* F9584 80050074 A6500076 */  sh         $s0, 0x76($s2)
/* F9588 80050078 A6500078 */  sh         $s0, 0x78($s2)
/* F958C 8005007C A650007A */  sh         $s0, 0x7a($s2)
/* F9590 80050080 A6510070 */  sh         $s1, 0x70($s2)
/* F9594 80050084 E6400014 */  swc1       $f0, 0x14($s2)
/* F9598 80050088 E6540028 */  swc1       $f20, 0x28($s2)
/* F959C 8005008C 0C00DFE6 */  jal        func_80037F98_E14A8
/* F95A0 80050090 E6420020 */   swc1      $f2, 0x20($s2)
/* F95A4 80050094 8E420004 */  lw         $v0, 4($s2)
/* F95A8 80050098 A0400067 */  sb         $zero, 0x67($v0)
/* F95AC 8005009C 8E430004 */  lw         $v1, 4($s2)
/* F95B0 800500A0 90620066 */  lbu        $v0, 0x66($v1)
/* F95B4 800500A4 24040003 */  addiu      $a0, $zero, 3
/* F95B8 800500A8 34420003 */  ori        $v0, $v0, 3
/* F95BC 800500AC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F95C0 800500B0 A0620066 */   sb        $v0, 0x66($v1)
/* F95C4 800500B4 00409021 */  addu       $s2, $v0, $zero
/* F95C8 800500B8 3C0142C8 */  lui        $at, 0x42c8
/* F95CC 800500BC 4481B000 */  mtc1       $at, $f22
/* F95D0 800500C0 02402021 */  addu       $a0, $s2, $zero
/* F95D4 800500C4 24050005 */  addiu      $a1, $zero, 5
/* F95D8 800500C8 AE400010 */  sw         $zero, 0x10($s2)
/* F95DC 800500CC AE400018 */  sw         $zero, 0x18($s2)
/* F95E0 800500D0 E6540028 */  swc1       $f20, 0x28($s2)
/* F95E4 800500D4 AE40001C */  sw         $zero, 0x1c($s2)
/* F95E8 800500D8 AE400020 */  sw         $zero, 0x20($s2)
/* F95EC 800500DC AE400024 */  sw         $zero, 0x24($s2)
/* F95F0 800500E0 A6500074 */  sh         $s0, 0x74($s2)
/* F95F4 800500E4 A6500076 */  sh         $s0, 0x76($s2)
/* F95F8 800500E8 A6500078 */  sh         $s0, 0x78($s2)
/* F95FC 800500EC A650007A */  sh         $s0, 0x7a($s2)
/* F9600 800500F0 A6510070 */  sh         $s1, 0x70($s2)
/* F9604 800500F4 0C00DFE6 */  jal        func_80037F98_E14A8
/* F9608 800500F8 E6560014 */   swc1      $f22, 0x14($s2)
/* F960C 800500FC 8E420004 */  lw         $v0, 4($s2)
/* F9610 80050100 A0400067 */  sb         $zero, 0x67($v0)
/* F9614 80050104 8E430004 */  lw         $v1, 4($s2)
/* F9618 80050108 3C0140A0 */  lui        $at, 0x40a0
/* F961C 8005010C 4481F000 */  mtc1       $at, $f30
/* F9620 80050110 3C014234 */  lui        $at, 0x4234
/* F9624 80050114 4481E000 */  mtc1       $at, $f28
/* F9628 80050118 90620066 */  lbu        $v0, 0x66($v1)
/* F962C 8005011C 3C01420C */  lui        $at, 0x420c
/* F9630 80050120 4481D000 */  mtc1       $at, $f26
/* F9634 80050124 24040004 */  addiu      $a0, $zero, 4
/* F9638 80050128 34420003 */  ori        $v0, $v0, 3
/* F963C 8005012C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F9640 80050130 A0620066 */   sb        $v0, 0x66($v1)
/* F9644 80050134 00409021 */  addu       $s2, $v0, $zero
/* F9648 80050138 02402021 */  addu       $a0, $s2, $zero
/* F964C 8005013C 24050006 */  addiu      $a1, $zero, 6
/* F9650 80050140 AE400010 */  sw         $zero, 0x10($s2)
/* F9654 80050144 E6560014 */  swc1       $f22, 0x14($s2)
/* F9658 80050148 AE400018 */  sw         $zero, 0x18($s2)
/* F965C 8005014C E6540028 */  swc1       $f20, 0x28($s2)
/* F9660 80050150 AE40001C */  sw         $zero, 0x1c($s2)
/* F9664 80050154 AE400020 */  sw         $zero, 0x20($s2)
/* F9668 80050158 AE400024 */  sw         $zero, 0x24($s2)
/* F966C 8005015C A6500074 */  sh         $s0, 0x74($s2)
/* F9670 80050160 A6500076 */  sh         $s0, 0x76($s2)
/* F9674 80050164 A6500078 */  sh         $s0, 0x78($s2)
/* F9678 80050168 A650007A */  sh         $s0, 0x7a($s2)
/* F967C 8005016C 0C00DFE6 */  jal        func_80037F98_E14A8
/* F9680 80050170 A6510070 */   sh        $s1, 0x70($s2)
/* F9684 80050174 8E420004 */  lw         $v0, 4($s2)
/* F9688 80050178 00009821 */  addu       $s3, $zero, $zero
/* F968C 8005017C A0400067 */  sb         $zero, 0x67($v0)
/* F9690 80050180 8E430004 */  lw         $v1, 4($s2)
/* F9694 80050184 3C0141A0 */  lui        $at, 0x41a0
/* F9698 80050188 4481C000 */  mtc1       $at, $f24
/* F969C 8005018C 3C013DCC */  lui        $at, 0x3dcc
/* F96A0 80050190 3421CCCD */  ori        $at, $at, 0xcccd
/* F96A4 80050194 4481B000 */  mtc1       $at, $f22
/* F96A8 80050198 90620066 */  lbu        $v0, 0x66($v1)
/* F96AC 8005019C 3C01433C */  lui        $at, 0x433c
/* F96B0 800501A0 4481A000 */  mtc1       $at, $f20
/* F96B4 800501A4 34420003 */  ori        $v0, $v0, 3
/* F96B8 800501A8 A0620066 */  sb         $v0, 0x66($v1)
/* F96BC 800501AC 326400FF */  andi       $a0, $s3, 0xff
.L800501B0:
/* F96C0 800501B0 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F96C4 800501B4 24840006 */   addiu     $a0, $a0, 6
/* F96C8 800501B8 326300FF */  andi       $v1, $s3, 0xff
/* F96CC 800501BC 44830000 */  mtc1       $v1, $f0
/* F96D0 800501C0 00000000 */  nop
/* F96D4 800501C4 46800020 */  cvt.s.w    $f0, $f0
/* F96D8 800501C8 461E0082 */  mul.s      $f2, $f0, $f30
/* F96DC 800501CC 00409021 */  addu       $s2, $v0, $zero
/* F96E0 800501D0 02402021 */  addu       $a0, $s2, $zero
/* F96E4 800501D4 240500E6 */  addiu      $a1, $zero, 0xe6
/* F96E8 800501D8 461A0002 */  mul.s      $f0, $f0, $f26
/* F96EC 800501DC AE400014 */  sw         $zero, 0x14($s2)
/* F96F0 800501E0 E6560028 */  swc1       $f22, 0x28($s2)
/* F96F4 800501E4 AE40001C */  sw         $zero, 0x1c($s2)
/* F96F8 800501E8 E6540020 */  swc1       $f20, 0x20($s2)
/* F96FC 800501EC 461C1080 */  add.s      $f2, $f2, $f28
/* F9700 800501F0 AE400024 */  sw         $zero, 0x24($s2)
/* F9704 800501F4 A6500074 */  sh         $s0, 0x74($s2)
/* F9708 800501F8 A6500076 */  sh         $s0, 0x76($s2)
/* F970C 800501FC 4600C001 */  sub.s      $f0, $f24, $f0
/* F9710 80050200 A6500078 */  sh         $s0, 0x78($s2)
/* F9714 80050204 A650007A */  sh         $s0, 0x7a($s2)
/* F9718 80050208 E6420010 */  swc1       $f2, 0x10($s2)
/* F971C 8005020C 0C00DFE6 */  jal        func_80037F98_E14A8
/* F9720 80050210 E6400018 */   swc1      $f0, 0x18($s2)
/* F9724 80050214 8E420004 */  lw         $v0, 4($s2)
/* F9728 80050218 A0400067 */  sb         $zero, 0x67($v0)
/* F972C 8005021C 8E430004 */  lw         $v1, 4($s2)
/* F9730 80050220 90620066 */  lbu        $v0, 0x66($v1)
/* F9734 80050224 26730001 */  addiu      $s3, $s3, 1
/* F9738 80050228 34420007 */  ori        $v0, $v0, 7
/* F973C 8005022C A0620066 */  sb         $v0, 0x66($v1)
/* F9740 80050230 326200FF */  andi       $v0, $s3, 0xff
/* F9744 80050234 2C420003 */  sltiu      $v0, $v0, 3
/* F9748 80050238 5440FFDD */  bnezl      $v0, .L800501B0
/* F974C 8005023C 326400FF */   andi      $a0, $s3, 0xff
/* F9750 80050240 00009821 */  addu       $s3, $zero, $zero
/* F9754 80050244 3C01C260 */  lui        $at, 0xc260
/* F9758 80050248 4481E000 */  mtc1       $at, $f28
/* F975C 8005024C 24110001 */  addiu      $s1, $zero, 1
/* F9760 80050250 3C01C0A0 */  lui        $at, 0xc0a0
/* F9764 80050254 4481D000 */  mtc1       $at, $f26
/* F9768 80050258 3C01420C */  lui        $at, 0x420c
/* F976C 8005025C 4481C000 */  mtc1       $at, $f24
/* F9770 80050260 3C0141F0 */  lui        $at, 0x41f0
/* F9774 80050264 4481B000 */  mtc1       $at, $f22
/* F9778 80050268 241000FF */  addiu      $s0, $zero, 0xff
/* F977C 8005026C 326400FF */  andi       $a0, $s3, 0xff
.L80050270:
/* F9780 80050270 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F9784 80050274 24840009 */   addiu     $a0, $a0, 9
/* F9788 80050278 00409021 */  addu       $s2, $v0, $zero
/* F978C 8005027C 326200FF */  andi       $v0, $s3, 0xff
/* F9790 80050280 14510003 */  bne        $v0, $s1, .L80050290
/* F9794 80050284 E65C0010 */   swc1      $f28, 0x10($s2)
/* F9798 80050288 080140A5 */  j          .L80050294
/* F979C 8005028C E65A0014 */   swc1      $f26, 0x14($s2)
.L80050290:
/* F97A0 80050290 AE400014 */  sw         $zero, 0x14($s2)
.L80050294:
/* F97A4 80050294 02402021 */  addu       $a0, $s2, $zero
/* F97A8 80050298 326200FF */  andi       $v0, $s3, 0xff
/* F97AC 8005029C 44820000 */  mtc1       $v0, $f0
/* F97B0 800502A0 00000000 */  nop
/* F97B4 800502A4 46800020 */  cvt.s.w    $f0, $f0
/* F97B8 800502A8 3C013DC2 */  lui        $at, 0x3dc2
/* F97BC 800502AC 34218F5C */  ori        $at, $at, 0x8f5c
/* F97C0 800502B0 4481A000 */  mtc1       $at, $f20
/* F97C4 800502B4 3C014332 */  lui        $at, 0x4332
/* F97C8 800502B8 44811000 */  mtc1       $at, $f2
/* F97CC 800502BC 46180002 */  mul.s      $f0, $f0, $f24
/* F97D0 800502C0 240500E7 */  addiu      $a1, $zero, 0xe7
/* F97D4 800502C4 AE40001C */  sw         $zero, 0x1c($s2)
/* F97D8 800502C8 AE400024 */  sw         $zero, 0x24($s2)
/* F97DC 800502CC A6500074 */  sh         $s0, 0x74($s2)
/* F97E0 800502D0 A6500076 */  sh         $s0, 0x76($s2)
/* F97E4 800502D4 A6500078 */  sh         $s0, 0x78($s2)
/* F97E8 800502D8 4600B001 */  sub.s      $f0, $f22, $f0
/* F97EC 800502DC A650007A */  sh         $s0, 0x7a($s2)
/* F97F0 800502E0 E6540028 */  swc1       $f20, 0x28($s2)
/* F97F4 800502E4 E6420020 */  swc1       $f2, 0x20($s2)
/* F97F8 800502E8 0C00DFE6 */  jal        func_80037F98_E14A8
/* F97FC 800502EC E6400018 */   swc1      $f0, 0x18($s2)
/* F9800 800502F0 8E420004 */  lw         $v0, 4($s2)
/* F9804 800502F4 A0400067 */  sb         $zero, 0x67($v0)
/* F9808 800502F8 8E430004 */  lw         $v1, 4($s2)
/* F980C 800502FC 90620066 */  lbu        $v0, 0x66($v1)
/* F9810 80050300 26730001 */  addiu      $s3, $s3, 1
/* F9814 80050304 34420007 */  ori        $v0, $v0, 7
/* F9818 80050308 A0620066 */  sb         $v0, 0x66($v1)
/* F981C 8005030C 326200FF */  andi       $v0, $s3, 0xff
/* F9820 80050310 2C420003 */  sltiu      $v0, $v0, 3
/* F9824 80050314 5440FFD6 */  bnezl      $v0, .L80050270
/* F9828 80050318 326400FF */   andi      $a0, $s3, 0xff
/* F982C 8005031C 00009821 */  addu       $s3, $zero, $zero
/* F9830 80050320 3C0141C0 */  lui        $at, 0x41c0
/* F9834 80050324 4481F000 */  mtc1       $at, $f30
/* F9838 80050328 3C01C270 */  lui        $at, 0xc270
/* F983C 8005032C 4481E000 */  mtc1       $at, $f28
/* F9840 80050330 3C01C0A0 */  lui        $at, 0xc0a0
/* F9844 80050334 4481D000 */  mtc1       $at, $f26
/* F9848 80050338 3C014282 */  lui        $at, 0x4282
/* F984C 8005033C 4481C000 */  mtc1       $at, $f24
/* F9850 80050340 4600A586 */  mov.s      $f22, $f20
/* F9854 80050344 3C0142BE */  lui        $at, 0x42be
/* F9858 80050348 4481A000 */  mtc1       $at, $f20
/* F985C 8005034C 241000FF */  addiu      $s0, $zero, 0xff
/* F9860 80050350 326400FF */  andi       $a0, $s3, 0xff
.L80050354:
/* F9864 80050354 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F9868 80050358 2484000C */   addiu     $a0, $a0, 0xc
/* F986C 8005035C 00409021 */  addu       $s2, $v0, $zero
/* F9870 80050360 02402021 */  addu       $a0, $s2, $zero
/* F9874 80050364 240500E6 */  addiu      $a1, $zero, 0xe6
/* F9878 80050368 326300FF */  andi       $v1, $s3, 0xff
/* F987C 8005036C 44831000 */  mtc1       $v1, $f2
/* F9880 80050370 00000000 */  nop
/* F9884 80050374 468010A0 */  cvt.s.w    $f2, $f2
/* F9888 80050378 00031040 */  sll        $v0, $v1, 1
/* F988C 8005037C 00431021 */  addu       $v0, $v0, $v1
/* F9890 80050380 44820000 */  mtc1       $v0, $f0
/* F9894 80050384 00000000 */  nop
/* F9898 80050388 46800020 */  cvt.s.w    $f0, $f0
/* F989C 8005038C 461E1082 */  mul.s      $f2, $f2, $f30
/* F98A0 80050390 4600D001 */  sub.s      $f0, $f26, $f0
/* F98A4 80050394 E6580018 */  swc1       $f24, 0x18($s2)
/* F98A8 80050398 E6560028 */  swc1       $f22, 0x28($s2)
/* F98AC 8005039C AE40001C */  sw         $zero, 0x1c($s2)
/* F98B0 800503A0 E6540020 */  swc1       $f20, 0x20($s2)
/* F98B4 800503A4 AE400024 */  sw         $zero, 0x24($s2)
/* F98B8 800503A8 A6500074 */  sh         $s0, 0x74($s2)
/* F98BC 800503AC A6500076 */  sh         $s0, 0x76($s2)
/* F98C0 800503B0 461C1080 */  add.s      $f2, $f2, $f28
/* F98C4 800503B4 A6500078 */  sh         $s0, 0x78($s2)
/* F98C8 800503B8 A650007A */  sh         $s0, 0x7a($s2)
/* F98CC 800503BC E6400014 */  swc1       $f0, 0x14($s2)
/* F98D0 800503C0 0C00DFE6 */  jal        func_80037F98_E14A8
/* F98D4 800503C4 E6420010 */   swc1      $f2, 0x10($s2)
/* F98D8 800503C8 8E420004 */  lw         $v0, 4($s2)
/* F98DC 800503CC A0400067 */  sb         $zero, 0x67($v0)
/* F98E0 800503D0 8E430004 */  lw         $v1, 4($s2)
/* F98E4 800503D4 90620066 */  lbu        $v0, 0x66($v1)
/* F98E8 800503D8 26730001 */  addiu      $s3, $s3, 1
/* F98EC 800503DC 34420007 */  ori        $v0, $v0, 7
/* F98F0 800503E0 A0620066 */  sb         $v0, 0x66($v1)
/* F98F4 800503E4 326200FF */  andi       $v0, $s3, 0xff
/* F98F8 800503E8 2C420006 */  sltiu      $v0, $v0, 6
/* F98FC 800503EC 1440FFD9 */  bnez       $v0, .L80050354
/* F9900 800503F0 326400FF */   andi      $a0, $s3, 0xff
/* F9904 800503F4 3C0142B4 */  lui        $at, 0x42b4
/* F9908 800503F8 4481A000 */  mtc1       $at, $f20
/* F990C 800503FC 3C013F80 */  lui        $at, 0x3f80
/* F9910 80050400 44810000 */  mtc1       $at, $f0
/* F9914 80050404 3C01C18A */  lui        $at, 0xc18a
/* F9918 80050408 34216666 */  ori        $at, $at, 0x6666
/* F991C 8005040C 44811000 */  mtc1       $at, $f2
/* F9920 80050410 3C0143A6 */  lui        $at, 0x43a6
/* F9924 80050414 3421347B */  ori        $at, $at, 0x347b
/* F9928 80050418 44812000 */  mtc1       $at, $f4
/* F992C 8005041C 3C01C304 */  lui        $at, 0xc304
/* F9930 80050420 3421999A */  ori        $at, $at, 0x999a
/* F9934 80050424 44813000 */  mtc1       $at, $f6
/* F9938 80050428 3C018015 */  lui        $at, %hi(D_8014A064)
/* F993C 8005042C AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F9940 80050430 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F9944 80050434 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F9948 80050438 3C018015 */  lui        $at, %hi(D_8014A070)
/* F994C 8005043C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F9950 80050440 3C018015 */  lui        $at, %hi(D_8014A078)
/* F9954 80050444 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F9958 80050448 3C018015 */  lui        $at, %hi(D_8014A084)
/* F995C 8005044C AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F9960 80050450 3C018015 */  lui        $at, %hi(D_8014A068)
/* F9964 80050454 E434A068 */  swc1       $f20, %lo(D_8014A068)($at)
/* F9968 80050458 3C018015 */  lui        $at, %hi(D_8014A074)
/* F996C 8005045C E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* F9970 80050460 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F9974 80050464 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F9978 80050468 3C018015 */  lui        $at, %hi(D_8014A080)
/* F997C 8005046C E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F9980 80050470 3C018015 */  lui        $at, %hi(D_8014A088)
/* F9984 80050474 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* F9988 80050478 0C00E339 */  jal        func_80038CE4_E21F4
/* F998C 8005047C 24130001 */   addiu     $s3, $zero, 1
/* F9990 80050480 3C04802F */  lui        $a0, 0x802f
/* F9994 80050484 34849800 */  ori        $a0, $a0, 0x9800
/* F9998 80050488 2405019A */  addiu      $a1, $zero, 0x19a
/* F999C 8005048C 3C01BFEF */  lui        $at, 0xbfef
/* F99A0 80050490 34215C29 */  ori        $at, $at, 0x5c29
/* F99A4 80050494 44810000 */  mtc1       $at, $f0
/* F99A8 80050498 3C0142BC */  lui        $at, 0x42bc
/* F99AC 8005049C 3421E148 */  ori        $at, $at, 0xe148
/* F99B0 800504A0 44811000 */  mtc1       $at, $f2
/* F99B4 800504A4 3C01C120 */  lui        $at, 0xc120
/* F99B8 800504A8 44812000 */  mtc1       $at, $f4
/* F99BC 800504AC 24060007 */  addiu      $a2, $zero, 7
/* F99C0 800504B0 3C018015 */  lui        $at, %hi(D_8014A054)
/* F99C4 800504B4 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F99C8 800504B8 3C018015 */  lui        $at, %hi(D_8014A050)
/* F99CC 800504BC E434A050 */  swc1       $f20, %lo(D_8014A050)($at)
/* F99D0 800504C0 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F99D4 800504C4 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F99D8 800504C8 3C018017 */  lui        $at, %hi(D_8016E568)
/* F99DC 800504CC E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* F99E0 800504D0 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F99E4 800504D4 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* F99E8 800504D8 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F99EC 800504DC E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* F99F0 800504E0 0C00D9E0 */  jal        func_80036780_DFC90
/* F99F4 800504E4 24070021 */   addiu     $a3, $zero, 0x21
/* F99F8 800504E8 00408821 */  addu       $s1, $v0, $zero
/* F99FC 800504EC 8E24000C */  lw         $a0, 0xc($s1)
/* F9A00 800504F0 8C82000C */  lw         $v0, 0xc($a0)
/* F9A04 800504F4 94450000 */  lhu        $a1, ($v0)
/* F9A08 800504F8 00003021 */  addu       $a2, $zero, $zero
/* F9A0C 800504FC 0C02912A */  jal        func_800A44A8
/* F9A10 80050500 00052842 */   srl       $a1, $a1, 1
/* F9A14 80050504 3C014080 */  lui        $at, 0x4080
/* F9A18 80050508 44810000 */  mtc1       $at, $f0
/* F9A1C 8005050C 8E24000C */  lw         $a0, 0xc($s1)
/* F9A20 80050510 44060000 */  mfc1       $a2, $f0
/* F9A24 80050514 00002821 */  addu       $a1, $zero, $zero
/* F9A28 80050518 0C02915B */  jal        func_800A456C
/* F9A2C 8005051C 00C03821 */   addu      $a3, $a2, $zero
/* F9A30 80050520 8E24000C */  lw         $a0, 0xc($s1)
/* F9A34 80050524 24050280 */  addiu      $a1, $zero, 0x280
/* F9A38 80050528 0C028D89 */  jal        func_800A3624
/* F9A3C 8005052C 24060040 */   addiu     $a2, $zero, 0x40
/* F9A40 80050530 8E23000C */  lw         $v1, 0xc($s1)
/* F9A44 80050534 24040008 */  addiu      $a0, $zero, 8
/* F9A48 80050538 9462001E */  lhu        $v0, 0x1e($v1)
/* F9A4C 8005053C 24050001 */  addiu      $a1, $zero, 1
/* F9A50 80050540 2406007E */  addiu      $a2, $zero, 0x7e
/* F9A54 80050544 34420104 */  ori        $v0, $v0, 0x104
/* F9A58 80050548 0C00D925 */  jal        func_80036494_DF9A4
/* F9A5C 8005054C A462001E */   sh        $v0, 0x1e($v1)
/* F9A60 80050550 00408821 */  addu       $s1, $v0, $zero
/* F9A64 80050554 8E24000C */  lw         $a0, 0xc($s1)
/* F9A68 80050558 24050066 */  addiu      $a1, $zero, 0x66
/* F9A6C 8005055C 0C028F9A */  jal        func_800A3E68
/* F9A70 80050560 24061400 */   addiu     $a2, $zero, 0x1400
/* F9A74 80050564 8E24000C */  lw         $a0, 0xc($s1)
/* F9A78 80050568 24050040 */  addiu      $a1, $zero, 0x40
/* F9A7C 8005056C 0C028D89 */  jal        func_800A3624
/* F9A80 80050570 24060280 */   addiu     $a2, $zero, 0x280
/* F9A84 80050574 AFA00010 */  sw         $zero, 0x10($sp)
/* F9A88 80050578 8E24000C */  lw         $a0, 0xc($s1)
/* F9A8C 8005057C 240500FF */  addiu      $a1, $zero, 0xff
/* F9A90 80050580 240600FF */  addiu      $a2, $zero, 0xff
/* F9A94 80050584 0C028E41 */  jal        func_800A3904
/* F9A98 80050588 240700FF */   addiu     $a3, $zero, 0xff
/* F9A9C 8005058C 8E23000C */  lw         $v1, 0xc($s1)
/* F9AA0 80050590 2412004B */  addiu      $s2, $zero, 0x4b
/* F9AA4 80050594 2402004B */  addiu      $v0, $zero, 0x4b
/* F9AA8 80050598 A462001C */  sh         $v0, 0x1c($v1)
/* F9AAC 8005059C 2404007E */  addiu      $a0, $zero, 0x7e
.L800505A0:
/* F9AB0 800505A0 326500FF */  andi       $a1, $s3, 0xff
/* F9AB4 800505A4 0C00DD19 */  jal        func_80037464_E0974
/* F9AB8 800505A8 24A5007E */   addiu     $a1, $a1, 0x7e
/* F9ABC 800505AC 00408821 */  addu       $s1, $v0, $zero
/* F9AC0 800505B0 8E24000C */  lw         $a0, 0xc($s1)
/* F9AC4 800505B4 24050066 */  addiu      $a1, $zero, 0x66
/* F9AC8 800505B8 0C028F9A */  jal        func_800A3E68
/* F9ACC 800505BC 24061400 */   addiu     $a2, $zero, 0x1400
/* F9AD0 800505C0 8E24000C */  lw         $a0, 0xc($s1)
/* F9AD4 800505C4 24050040 */  addiu      $a1, $zero, 0x40
/* F9AD8 800505C8 327000FF */  andi       $s0, $s3, 0xff
/* F9ADC 800505CC 001030C0 */  sll        $a2, $s0, 3
/* F9AE0 800505D0 0C028D89 */  jal        func_800A3624
/* F9AE4 800505D4 24C60280 */   addiu     $a2, $a2, 0x280
/* F9AE8 800505D8 001080C0 */  sll        $s0, $s0, 3
/* F9AEC 800505DC 321000FF */  andi       $s0, $s0, 0xff
/* F9AF0 800505E0 AFB00010 */  sw         $s0, 0x10($sp)
/* F9AF4 800505E4 8E24000C */  lw         $a0, 0xc($s1)
/* F9AF8 800505E8 240500FF */  addiu      $a1, $zero, 0xff
/* F9AFC 800505EC 240600FF */  addiu      $a2, $zero, 0xff
/* F9B00 800505F0 0C028E41 */  jal        func_800A3904
/* F9B04 800505F4 240700FF */   addiu     $a3, $zero, 0xff
/* F9B08 800505F8 8E22000C */  lw         $v0, 0xc($s1)
/* F9B0C 800505FC 26730001 */  addiu      $s3, $s3, 1
/* F9B10 80050600 A452001C */  sh         $s2, 0x1c($v0)
/* F9B14 80050604 326200FF */  andi       $v0, $s3, 0xff
/* F9B18 80050608 2C420020 */  sltiu      $v0, $v0, 0x20
/* F9B1C 8005060C 1440FFE4 */  bnez       $v0, .L800505A0
/* F9B20 80050610 2404007E */   addiu     $a0, $zero, 0x7e
/* F9B24 80050614 3C048007 */  lui        $a0, %hi(D_800692A8_1127B8)
/* F9B28 80050618 248492A8 */  addiu      $a0, $a0, %lo(D_800692A8_1127B8)
/* F9B2C 8005061C 2405FFFE */  addiu      $a1, $zero, -2
/* F9B30 80050620 2402FFFE */  addiu      $v0, $zero, -2
/* F9B34 80050624 A3A2001C */  sb         $v0, 0x1c($sp)
/* F9B38 80050628 24020001 */  addiu      $v0, $zero, 1
/* F9B3C 8005062C A3A2001E */  sb         $v0, 0x1e($sp)
/* F9B40 80050630 24020002 */  addiu      $v0, $zero, 2
/* F9B44 80050634 AFA40018 */  sw         $a0, 0x18($sp)
/* F9B48 80050638 A3A0001D */  sb         $zero, 0x1d($sp)
/* F9B4C 8005063C 0C029D2A */  jal        func_800A74A8
/* F9B50 80050640 A3A2001F */   sb        $v0, 0x1f($sp)
/* F9B54 80050644 27A40018 */  addiu      $a0, $sp, 0x18
/* F9B58 80050648 240520C9 */  addiu      $a1, $zero, 0x20c9
/* F9B5C 8005064C 240620D3 */  addiu      $a2, $zero, 0x20d3
/* F9B60 80050650 00021FC2 */  srl        $v1, $v0, 0x1f
/* F9B64 80050654 00621821 */  addu       $v1, $v1, $v0
/* F9B68 80050658 00031843 */  sra        $v1, $v1, 1
/* F9B6C 8005065C 240700A0 */  addiu      $a3, $zero, 0xa0
/* F9B70 80050660 00E33823 */  subu       $a3, $a3, $v1
/* F9B74 80050664 00073C00 */  sll        $a3, $a3, 0x10
/* F9B78 80050668 00073C03 */  sra        $a3, $a3, 0x10
/* F9B7C 8005066C 240200AF */  addiu      $v0, $zero, 0xaf
/* F9B80 80050670 0C00DEF7 */  jal        func_80037BDC_E10EC
/* F9B84 80050674 AFA20010 */   sw        $v0, 0x10($sp)
/* F9B88 80050678 8FBF0030 */  lw         $ra, 0x30($sp)
/* F9B8C 8005067C 8FB3002C */  lw         $s3, 0x2c($sp)
/* F9B90 80050680 8FB20028 */  lw         $s2, 0x28($sp)
/* F9B94 80050684 8FB10024 */  lw         $s1, 0x24($sp)
/* F9B98 80050688 8FB00020 */  lw         $s0, 0x20($sp)
/* F9B9C 8005068C D7BE0060 */  ldc1       $f30, 0x60($sp)
/* F9BA0 80050690 D7BC0058 */  ldc1       $f28, 0x58($sp)
/* F9BA4 80050694 D7BA0050 */  ldc1       $f26, 0x50($sp)
/* F9BA8 80050698 D7B80048 */  ldc1       $f24, 0x48($sp)
/* F9BAC 8005069C D7B60040 */  ldc1       $f22, 0x40($sp)
/* F9BB0 800506A0 D7B40038 */  ldc1       $f20, 0x38($sp)
/* F9BB4 800506A4 03E00008 */  jr         $ra
/* F9BB8 800506A8 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_800506AC_F9BBC
/* F9BBC 800506AC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F9BC0 800506B0 24040277 */  addiu      $a0, $zero, 0x277
/* F9BC4 800506B4 24050005 */  addiu      $a1, $zero, 5
/* F9BC8 800506B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* F9BCC 800506BC 0C00D925 */  jal        func_80036494_DF9A4
/* F9BD0 800506C0 24060018 */   addiu     $a2, $zero, 0x18
/* F9BD4 800506C4 8C44000C */  lw         $a0, 0xc($v0)
/* F9BD8 800506C8 24050040 */  addiu      $a1, $zero, 0x40
/* F9BDC 800506CC 0C028D89 */  jal        func_800A3624
/* F9BE0 800506D0 24060040 */   addiu     $a2, $zero, 0x40
/* F9BE4 800506D4 8FBF0010 */  lw         $ra, 0x10($sp)
/* F9BE8 800506D8 03E00008 */  jr         $ra
/* F9BEC 800506DC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800506E0_F9BF0
/* F9BF0 800506E0 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* F9BF4 800506E4 AFBF0030 */  sw         $ra, 0x30($sp)
/* F9BF8 800506E8 AFB3002C */  sw         $s3, 0x2c($sp)
/* F9BFC 800506EC AFB20028 */  sw         $s2, 0x28($sp)
/* F9C00 800506F0 AFB10024 */  sw         $s1, 0x24($sp)
/* F9C04 800506F4 AFB00020 */  sw         $s0, 0x20($sp)
/* F9C08 800506F8 F7B40038 */  sdc1       $f20, 0x38($sp)
/* F9C0C 800506FC 0C00E109 */  jal        func_80038424_E1934
/* F9C10 80050700 00009821 */   addu      $s3, $zero, $zero
/* F9C14 80050704 3C048031 */  lui        $a0, 0x8031
/* F9C18 80050708 34847420 */  ori        $a0, $a0, 0x7420
/* F9C1C 8005070C 240501FD */  addiu      $a1, $zero, 0x1fd
/* F9C20 80050710 24060009 */  addiu      $a2, $zero, 9
/* F9C24 80050714 0C00D9E0 */  jal        func_80036780_DFC90
/* F9C28 80050718 24070024 */   addiu     $a3, $zero, 0x24
/* F9C2C 8005071C 3C048032 */  lui        $a0, 0x8032
/* F9C30 80050720 8C43000C */  lw         $v1, 0xc($v0)
/* F9C34 80050724 34846230 */  ori        $a0, $a0, 0x6230
/* F9C38 80050728 240501F4 */  addiu      $a1, $zero, 0x1f4
/* F9C3C 8005072C 9462001E */  lhu        $v0, 0x1e($v1)
/* F9C40 80050730 24060009 */  addiu      $a2, $zero, 9
/* F9C44 80050734 24070023 */  addiu      $a3, $zero, 0x23
/* F9C48 80050738 34420004 */  ori        $v0, $v0, 4
/* F9C4C 8005073C 0C00D9E0 */  jal        func_80036780_DFC90
/* F9C50 80050740 A462001E */   sh        $v0, 0x1e($v1)
/* F9C54 80050744 8C43000C */  lw         $v1, 0xc($v0)
/* F9C58 80050748 2404020B */  addiu      $a0, $zero, 0x20b
/* F9C5C 8005074C 9462001E */  lhu        $v0, 0x1e($v1)
/* F9C60 80050750 24050002 */  addiu      $a1, $zero, 2
/* F9C64 80050754 2406001E */  addiu      $a2, $zero, 0x1e
/* F9C68 80050758 34420004 */  ori        $v0, $v0, 4
/* F9C6C 8005075C 0C00D925 */  jal        func_80036494_DF9A4
/* F9C70 80050760 A462001E */   sh        $v0, 0x1e($v1)
/* F9C74 80050764 00408821 */  addu       $s1, $v0, $zero
/* F9C78 80050768 8E24000C */  lw         $a0, 0xc($s1)
/* F9C7C 8005076C 3C063F80 */  lui        $a2, 0x3f80
/* F9C80 80050770 3C073F81 */  lui        $a3, 0x3f81
/* F9C84 80050774 34E747AE */  ori        $a3, $a3, 0x47ae
/* F9C88 80050778 0C02915B */  jal        func_800A456C
/* F9C8C 8005077C 00002821 */   addu      $a1, $zero, $zero
/* F9C90 80050780 8E24000C */  lw         $a0, 0xc($s1)
/* F9C94 80050784 24050040 */  addiu      $a1, $zero, 0x40
/* F9C98 80050788 0C028D89 */  jal        func_800A3624
/* F9C9C 8005078C 240600C0 */   addiu     $a2, $zero, 0xc0
/* F9CA0 80050790 8E23000C */  lw         $v1, 0xc($s1)
/* F9CA4 80050794 9462001E */  lhu        $v0, 0x1e($v1)
/* F9CA8 80050798 34420004 */  ori        $v0, $v0, 4
/* F9CAC 8005079C A462001E */  sh         $v0, 0x1e($v1)
/* F9CB0 800507A0 26640206 */  addiu      $a0, $s3, 0x206
.L800507A4:
/* F9CB4 800507A4 3084FFFF */  andi       $a0, $a0, 0xffff
/* F9CB8 800507A8 24050002 */  addiu      $a1, $zero, 2
/* F9CBC 800507AC 26700025 */  addiu      $s0, $s3, 0x25
/* F9CC0 800507B0 3210FFFF */  andi       $s0, $s0, 0xffff
/* F9CC4 800507B4 0C00D925 */  jal        func_80036494_DF9A4
/* F9CC8 800507B8 02003021 */   addu      $a2, $s0, $zero
/* F9CCC 800507BC 00408821 */  addu       $s1, $v0, $zero
/* F9CD0 800507C0 8E24000C */  lw         $a0, 0xc($s1)
/* F9CD4 800507C4 8C82000C */  lw         $v0, 0xc($a0)
/* F9CD8 800507C8 94450000 */  lhu        $a1, ($v0)
/* F9CDC 800507CC 94460002 */  lhu        $a2, 2($v0)
/* F9CE0 800507D0 00052842 */  srl        $a1, $a1, 1
/* F9CE4 800507D4 0C02912A */  jal        func_800A44A8
/* F9CE8 800507D8 00063042 */   srl       $a2, $a2, 1
/* F9CEC 800507DC 8E24000C */  lw         $a0, 0xc($s1)
/* F9CF0 800507E0 24050280 */  addiu      $a1, $zero, 0x280
/* F9CF4 800507E4 0C028D89 */  jal        func_800A3624
/* F9CF8 800507E8 240601E0 */   addiu     $a2, $zero, 0x1e0
/* F9CFC 800507EC 8E23000C */  lw         $v1, 0xc($s1)
/* F9D00 800507F0 2402004B */  addiu      $v0, $zero, 0x4b
/* F9D04 800507F4 A462001C */  sh         $v0, 0x1c($v1)
/* F9D08 800507F8 8E23000C */  lw         $v1, 0xc($s1)
/* F9D0C 800507FC 02002021 */  addu       $a0, $s0, $zero
/* F9D10 80050800 9462001E */  lhu        $v0, 0x1e($v1)
/* F9D14 80050804 2665002A */  addiu      $a1, $s3, 0x2a
/* F9D18 80050808 30A5FFFF */  andi       $a1, $a1, 0xffff
/* F9D1C 8005080C 34420004 */  ori        $v0, $v0, 4
/* F9D20 80050810 0C00DD19 */  jal        func_80037464_E0974
/* F9D24 80050814 A462001E */   sh        $v0, 0x1e($v1)
/* F9D28 80050818 00408821 */  addu       $s1, $v0, $zero
/* F9D2C 8005081C 8E24000C */  lw         $a0, 0xc($s1)
/* F9D30 80050820 8C82000C */  lw         $v0, 0xc($a0)
/* F9D34 80050824 94450000 */  lhu        $a1, ($v0)
/* F9D38 80050828 94460002 */  lhu        $a2, 2($v0)
/* F9D3C 8005082C 00052842 */  srl        $a1, $a1, 1
/* F9D40 80050830 0C02912A */  jal        func_800A44A8
/* F9D44 80050834 00063042 */   srl       $a2, $a2, 1
/* F9D48 80050838 8E24000C */  lw         $a0, 0xc($s1)
/* F9D4C 8005083C 24050280 */  addiu      $a1, $zero, 0x280
/* F9D50 80050840 0C028D89 */  jal        func_800A3624
/* F9D54 80050844 240601E0 */   addiu     $a2, $zero, 0x1e0
/* F9D58 80050848 24020080 */  addiu      $v0, $zero, 0x80
/* F9D5C 8005084C AFA20010 */  sw         $v0, 0x10($sp)
/* F9D60 80050850 8E24000C */  lw         $a0, 0xc($s1)
/* F9D64 80050854 240500FF */  addiu      $a1, $zero, 0xff
/* F9D68 80050858 240600FF */  addiu      $a2, $zero, 0xff
/* F9D6C 8005085C 0C028E41 */  jal        func_800A3904
/* F9D70 80050860 240700FF */   addiu     $a3, $zero, 0xff
/* F9D74 80050864 8E23000C */  lw         $v1, 0xc($s1)
/* F9D78 80050868 2402004A */  addiu      $v0, $zero, 0x4a
/* F9D7C 8005086C A462001C */  sh         $v0, 0x1c($v1)
/* F9D80 80050870 8E23000C */  lw         $v1, 0xc($s1)
/* F9D84 80050874 9462001E */  lhu        $v0, 0x1e($v1)
/* F9D88 80050878 26730001 */  addiu      $s3, $s3, 1
/* F9D8C 8005087C 02002021 */  addu       $a0, $s0, $zero
/* F9D90 80050880 34420004 */  ori        $v0, $v0, 4
/* F9D94 80050884 0C00D8C1 */  jal        func_80036304_DF814
/* F9D98 80050888 A462001E */   sh        $v0, 0x1e($v1)
/* F9D9C 8005088C 8C44000C */  lw         $a0, 0xc($v0)
/* F9DA0 80050890 24050001 */  addiu      $a1, $zero, 1
/* F9DA4 80050894 0C00DE72 */  jal        func_800379C8_E0ED8
/* F9DA8 80050898 00003021 */   addu      $a2, $zero, $zero
/* F9DAC 8005089C 3262FFFF */  andi       $v0, $s3, 0xffff
/* F9DB0 800508A0 2C420005 */  sltiu      $v0, $v0, 5
/* F9DB4 800508A4 1440FFBF */  bnez       $v0, .L800507A4
/* F9DB8 800508A8 26640206 */   addiu     $a0, $s3, 0x206
/* F9DBC 800508AC 24040011 */  addiu      $a0, $zero, 0x11
/* F9DC0 800508B0 24050001 */  addiu      $a1, $zero, 1
/* F9DC4 800508B4 0C00D925 */  jal        func_80036494_DF9A4
/* F9DC8 800508B8 24060017 */   addiu     $a2, $zero, 0x17
/* F9DCC 800508BC 00408821 */  addu       $s1, $v0, $zero
/* F9DD0 800508C0 8E24000C */  lw         $a0, 0xc($s1)
/* F9DD4 800508C4 24050038 */  addiu      $a1, $zero, 0x38
/* F9DD8 800508C8 0C028F9A */  jal        func_800A3E68
/* F9DDC 800508CC 24060071 */   addiu     $a2, $zero, 0x71
/* F9DE0 800508D0 8E24000C */  lw         $a0, 0xc($s1)
/* F9DE4 800508D4 24050040 */  addiu      $a1, $zero, 0x40
/* F9DE8 800508D8 0C028D89 */  jal        func_800A3624
/* F9DEC 800508DC 240600C0 */   addiu     $a2, $zero, 0xc0
/* F9DF0 800508E0 3C048033 */  lui        $a0, 0x8033
/* F9DF4 800508E4 34845040 */  ori        $a0, $a0, 0x5040
/* F9DF8 800508E8 2405020C */  addiu      $a1, $zero, 0x20c
/* F9DFC 800508EC 24060005 */  addiu      $a2, $zero, 5
/* F9E00 800508F0 0C00D9E0 */  jal        func_80036780_DFC90
/* F9E04 800508F4 24070049 */   addiu     $a3, $zero, 0x49
/* F9E08 800508F8 00408821 */  addu       $s1, $v0, $zero
/* F9E0C 800508FC 8E24000C */  lw         $a0, 0xc($s1)
/* F9E10 80050900 3C064000 */  lui        $a2, 0x4000
/* F9E14 80050904 34C6A3D7 */  ori        $a2, $a2, 0xa3d7
/* F9E18 80050908 3C074001 */  lui        $a3, 0x4001
/* F9E1C 8005090C 34E747AE */  ori        $a3, $a3, 0x47ae
/* F9E20 80050910 0C02915B */  jal        func_800A456C
/* F9E24 80050914 00002821 */   addu      $a1, $zero, $zero
/* F9E28 80050918 8E24000C */  lw         $a0, 0xc($s1)
/* F9E2C 8005091C 24050040 */  addiu      $a1, $zero, 0x40
/* F9E30 80050920 0C028D89 */  jal        func_800A3624
/* F9E34 80050924 240600C0 */   addiu     $a2, $zero, 0xc0
/* F9E38 80050928 8E23000C */  lw         $v1, 0xc($s1)
/* F9E3C 8005092C 9462001E */  lhu        $v0, 0x1e($v1)
/* F9E40 80050930 3C014000 */  lui        $at, 0x4000
/* F9E44 80050934 4481A000 */  mtc1       $at, $f20
/* F9E48 80050938 00009821 */  addu       $s3, $zero, $zero
/* F9E4C 8005093C 34420004 */  ori        $v0, $v0, 4
/* F9E50 80050940 A462001E */  sh         $v0, 0x1e($v1)
/* F9E54 80050944 26640211 */  addiu      $a0, $s3, 0x211
.L80050948:
/* F9E58 80050948 3084FFFF */  andi       $a0, $a0, 0xffff
/* F9E5C 8005094C 24050002 */  addiu      $a1, $zero, 2
/* F9E60 80050950 2670003D */  addiu      $s0, $s3, 0x3d
/* F9E64 80050954 3210FFFF */  andi       $s0, $s0, 0xffff
/* F9E68 80050958 0C00D925 */  jal        func_80036494_DF9A4
/* F9E6C 8005095C 02003021 */   addu      $a2, $s0, $zero
/* F9E70 80050960 00408821 */  addu       $s1, $v0, $zero
/* F9E74 80050964 8E24000C */  lw         $a0, 0xc($s1)
/* F9E78 80050968 8C82000C */  lw         $v0, 0xc($a0)
/* F9E7C 8005096C 94450000 */  lhu        $a1, ($v0)
/* F9E80 80050970 24060038 */  addiu      $a2, $zero, 0x38
/* F9E84 80050974 0C02912A */  jal        func_800A44A8
/* F9E88 80050978 00052842 */   srl       $a1, $a1, 1
/* F9E8C 8005097C 8E24000C */  lw         $a0, 0xc($s1)
/* F9E90 80050980 4406A000 */  mfc1       $a2, $f20
/* F9E94 80050984 4407A000 */  mfc1       $a3, $f20
/* F9E98 80050988 00000000 */  nop
/* F9E9C 8005098C 0C02915B */  jal        func_800A456C
/* F9EA0 80050990 00002821 */   addu      $a1, $zero, $zero
/* F9EA4 80050994 8E24000C */  lw         $a0, 0xc($s1)
/* F9EA8 80050998 24050280 */  addiu      $a1, $zero, 0x280
/* F9EAC 8005099C 0C028D89 */  jal        func_800A3624
/* F9EB0 800509A0 24060280 */   addiu     $a2, $zero, 0x280
/* F9EB4 800509A4 8E23000C */  lw         $v1, 0xc($s1)
/* F9EB8 800509A8 2402004B */  addiu      $v0, $zero, 0x4b
/* F9EBC 800509AC A462001C */  sh         $v0, 0x1c($v1)
/* F9EC0 800509B0 8E23000C */  lw         $v1, 0xc($s1)
/* F9EC4 800509B4 02002021 */  addu       $a0, $s0, $zero
/* F9EC8 800509B8 9462001E */  lhu        $v0, 0x1e($v1)
/* F9ECC 800509BC 26650043 */  addiu      $a1, $s3, 0x43
/* F9ED0 800509C0 30A5FFFF */  andi       $a1, $a1, 0xffff
/* F9ED4 800509C4 34420004 */  ori        $v0, $v0, 4
/* F9ED8 800509C8 0C00DD19 */  jal        func_80037464_E0974
/* F9EDC 800509CC A462001E */   sh        $v0, 0x1e($v1)
/* F9EE0 800509D0 00408821 */  addu       $s1, $v0, $zero
/* F9EE4 800509D4 8E24000C */  lw         $a0, 0xc($s1)
/* F9EE8 800509D8 8C82000C */  lw         $v0, 0xc($a0)
/* F9EEC 800509DC 94450000 */  lhu        $a1, ($v0)
/* F9EF0 800509E0 24060038 */  addiu      $a2, $zero, 0x38
/* F9EF4 800509E4 0C02912A */  jal        func_800A44A8
/* F9EF8 800509E8 00052842 */   srl       $a1, $a1, 1
/* F9EFC 800509EC 8E24000C */  lw         $a0, 0xc($s1)
/* F9F00 800509F0 4406A000 */  mfc1       $a2, $f20
/* F9F04 800509F4 4407A000 */  mfc1       $a3, $f20
/* F9F08 800509F8 00000000 */  nop
/* F9F0C 800509FC 0C02915B */  jal        func_800A456C
/* F9F10 80050A00 00002821 */   addu      $a1, $zero, $zero
/* F9F14 80050A04 8E24000C */  lw         $a0, 0xc($s1)
/* F9F18 80050A08 24050280 */  addiu      $a1, $zero, 0x280
/* F9F1C 80050A0C 0C028D89 */  jal        func_800A3624
/* F9F20 80050A10 24060280 */   addiu     $a2, $zero, 0x280
/* F9F24 80050A14 8E24000C */  lw         $a0, 0xc($s1)
/* F9F28 80050A18 00002821 */  addu       $a1, $zero, $zero
/* F9F2C 80050A1C 0C00DE6C */  jal        func_800379B0_E0EC0
/* F9F30 80050A20 3406A56A */   ori       $a2, $zero, 0xa56a
/* F9F34 80050A24 240200C0 */  addiu      $v0, $zero, 0xc0
/* F9F38 80050A28 AFA20010 */  sw         $v0, 0x10($sp)
/* F9F3C 80050A2C 8E24000C */  lw         $a0, 0xc($s1)
/* F9F40 80050A30 240500FF */  addiu      $a1, $zero, 0xff
/* F9F44 80050A34 240600FF */  addiu      $a2, $zero, 0xff
/* F9F48 80050A38 0C028E41 */  jal        func_800A3904
/* F9F4C 80050A3C 240700FF */   addiu     $a3, $zero, 0xff
/* F9F50 80050A40 8E23000C */  lw         $v1, 0xc($s1)
/* F9F54 80050A44 2402004A */  addiu      $v0, $zero, 0x4a
/* F9F58 80050A48 A462001C */  sh         $v0, 0x1c($v1)
/* F9F5C 80050A4C 8E23000C */  lw         $v1, 0xc($s1)
/* F9F60 80050A50 9462001E */  lhu        $v0, 0x1e($v1)
/* F9F64 80050A54 24120001 */  addiu      $s2, $zero, 1
/* F9F68 80050A58 02002021 */  addu       $a0, $s0, $zero
/* F9F6C 80050A5C 34420004 */  ori        $v0, $v0, 4
/* F9F70 80050A60 0C00D8C1 */  jal        func_80036304_DF814
/* F9F74 80050A64 A462001E */   sh        $v0, 0x1e($v1)
/* F9F78 80050A68 00408821 */  addu       $s1, $v0, $zero
/* F9F7C 80050A6C 8E24000C */  lw         $a0, 0xc($s1)
/* F9F80 80050A70 00002821 */  addu       $a1, $zero, $zero
/* F9F84 80050A74 0C00DE6C */  jal        func_800379B0_E0EC0
/* F9F88 80050A78 3406FFFE */   ori       $a2, $zero, 0xfffe
.L80050A7C:
/* F9F8C 80050A7C 8E24000C */  lw         $a0, 0xc($s1)
/* F9F90 80050A80 324500FF */  andi       $a1, $s2, 0xff
/* F9F94 80050A84 00003021 */  addu       $a2, $zero, $zero
/* F9F98 80050A88 0C00DE72 */  jal        func_800379C8_E0ED8
/* F9F9C 80050A8C 26520001 */   addiu     $s2, $s2, 1
/* F9FA0 80050A90 3242FFFF */  andi       $v0, $s2, 0xffff
/* F9FA4 80050A94 2C42000F */  sltiu      $v0, $v0, 0xf
/* F9FA8 80050A98 1440FFF8 */  bnez       $v0, .L80050A7C
/* F9FAC 80050A9C 00000000 */   nop
/* F9FB0 80050AA0 26730001 */  addiu      $s3, $s3, 1
/* F9FB4 80050AA4 3262FFFF */  andi       $v0, $s3, 0xffff
/* F9FB8 80050AA8 2C420006 */  sltiu      $v0, $v0, 6
/* F9FBC 80050AAC 1440FFA6 */  bnez       $v0, .L80050948
/* F9FC0 80050AB0 26640211 */   addiu     $a0, $s3, 0x211
/* F9FC4 80050AB4 27A40018 */  addiu      $a0, $sp, 0x18
/* F9FC8 80050AB8 240520C9 */  addiu      $a1, $zero, 0x20c9
/* F9FCC 80050ABC 24060002 */  addiu      $a2, $zero, 2
/* F9FD0 80050AC0 3C028007 */  lui        $v0, %hi(D_800692CC_1127DC)
/* F9FD4 80050AC4 244292CC */  addiu      $v0, $v0, %lo(D_800692CC_1127DC)
/* F9FD8 80050AC8 2412FFFE */  addiu      $s2, $zero, -2
/* F9FDC 80050ACC 24110001 */  addiu      $s1, $zero, 1
/* F9FE0 80050AD0 24100003 */  addiu      $s0, $zero, 3
/* F9FE4 80050AD4 AFA20018 */  sw         $v0, 0x18($sp)
/* F9FE8 80050AD8 A3B2001C */  sb         $s2, 0x1c($sp)
/* F9FEC 80050ADC A3A0001D */  sb         $zero, 0x1d($sp)
/* F9FF0 80050AE0 A3B1001E */  sb         $s1, 0x1e($sp)
/* F9FF4 80050AE4 0C00DE82 */  jal        func_80037A08_E0F18
/* F9FF8 80050AE8 A3B0001F */   sb        $s0, 0x1f($sp)
/* F9FFC 80050AEC 27A40018 */  addiu      $a0, $sp, 0x18
/* FA000 80050AF0 240520CA */  addiu      $a1, $zero, 0x20ca
/* FA004 80050AF4 24060002 */  addiu      $a2, $zero, 2
/* FA008 80050AF8 3C028007 */  lui        $v0, %hi(D_800692E8_1127F8)
/* FA00C 80050AFC 244292E8 */  addiu      $v0, $v0, %lo(D_800692E8_1127F8)
/* FA010 80050B00 AFA20018 */  sw         $v0, 0x18($sp)
/* FA014 80050B04 A3B2001C */  sb         $s2, 0x1c($sp)
/* FA018 80050B08 A3A0001D */  sb         $zero, 0x1d($sp)
/* FA01C 80050B0C A3B1001E */  sb         $s1, 0x1e($sp)
/* FA020 80050B10 0C00DE82 */  jal        func_80037A08_E0F18
/* FA024 80050B14 A3B0001F */   sb        $s0, 0x1f($sp)
/* FA028 80050B18 8FBF0030 */  lw         $ra, 0x30($sp)
/* FA02C 80050B1C 8FB3002C */  lw         $s3, 0x2c($sp)
/* FA030 80050B20 8FB20028 */  lw         $s2, 0x28($sp)
/* FA034 80050B24 8FB10024 */  lw         $s1, 0x24($sp)
/* FA038 80050B28 8FB00020 */  lw         $s0, 0x20($sp)
/* FA03C 80050B2C D7B40038 */  ldc1       $f20, 0x38($sp)
/* FA040 80050B30 03E00008 */  jr         $ra
/* FA044 80050B34 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80050B38_FA048
/* FA048 80050B38 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FA04C 80050B3C AFBF002C */  sw         $ra, 0x2c($sp)
/* FA050 80050B40 AFB20028 */  sw         $s2, 0x28($sp)
/* FA054 80050B44 AFB10024 */  sw         $s1, 0x24($sp)
/* FA058 80050B48 AFB00020 */  sw         $s0, 0x20($sp)
/* FA05C 80050B4C F7B40030 */  sdc1       $f20, 0x30($sp)
/* FA060 80050B50 0C00E109 */  jal        func_80038424_E1934
/* FA064 80050B54 00009021 */   addu      $s2, $zero, $zero
/* FA068 80050B58 24040011 */  addiu      $a0, $zero, 0x11
/* FA06C 80050B5C 24050001 */  addiu      $a1, $zero, 1
/* FA070 80050B60 0C00D925 */  jal        func_80036494_DF9A4
/* FA074 80050B64 24060017 */   addiu     $a2, $zero, 0x17
/* FA078 80050B68 00408821 */  addu       $s1, $v0, $zero
/* FA07C 80050B6C 8E24000C */  lw         $a0, 0xc($s1)
/* FA080 80050B70 24050038 */  addiu      $a1, $zero, 0x38
/* FA084 80050B74 0C028F9A */  jal        func_800A3E68
/* FA088 80050B78 24060071 */   addiu     $a2, $zero, 0x71
/* FA08C 80050B7C 8E24000C */  lw         $a0, 0xc($s1)
/* FA090 80050B80 24050040 */  addiu      $a1, $zero, 0x40
/* FA094 80050B84 0C028D89 */  jal        func_800A3624
/* FA098 80050B88 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA09C 80050B8C 24020048 */  addiu      $v0, $zero, 0x48
/* FA0A0 80050B90 AFA20010 */  sw         $v0, 0x10($sp)
/* FA0A4 80050B94 8E24000C */  lw         $a0, 0xc($s1)
/* FA0A8 80050B98 240500FE */  addiu      $a1, $zero, 0xfe
/* FA0AC 80050B9C 24060065 */  addiu      $a2, $zero, 0x65
/* FA0B0 80050BA0 0C028E41 */  jal        func_800A3904
/* FA0B4 80050BA4 00003821 */   addu      $a3, $zero, $zero
/* FA0B8 80050BA8 3C048034 */  lui        $a0, 0x8034
/* FA0BC 80050BAC 34843E50 */  ori        $a0, $a0, 0x3e50
/* FA0C0 80050BB0 24050217 */  addiu      $a1, $zero, 0x217
/* FA0C4 80050BB4 24060009 */  addiu      $a2, $zero, 9
/* FA0C8 80050BB8 0C00D9E0 */  jal        func_80036780_DFC90
/* FA0CC 80050BBC 24070033 */   addiu     $a3, $zero, 0x33
/* FA0D0 80050BC0 00408821 */  addu       $s1, $v0, $zero
/* FA0D4 80050BC4 8E24000C */  lw         $a0, 0xc($s1)
/* FA0D8 80050BC8 24050040 */  addiu      $a1, $zero, 0x40
/* FA0DC 80050BCC 0C028D89 */  jal        func_800A3624
/* FA0E0 80050BD0 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA0E4 80050BD4 8E23000C */  lw         $v1, 0xc($s1)
/* FA0E8 80050BD8 24040221 */  addiu      $a0, $zero, 0x221
/* FA0EC 80050BDC 9462001E */  lhu        $v0, 0x1e($v1)
/* FA0F0 80050BE0 24050002 */  addiu      $a1, $zero, 2
/* FA0F4 80050BE4 24060031 */  addiu      $a2, $zero, 0x31
/* FA0F8 80050BE8 34420004 */  ori        $v0, $v0, 4
/* FA0FC 80050BEC 0C00D925 */  jal        func_80036494_DF9A4
/* FA100 80050BF0 A462001E */   sh        $v0, 0x1e($v1)
/* FA104 80050BF4 00408821 */  addu       $s1, $v0, $zero
/* FA108 80050BF8 8E24000C */  lw         $a0, 0xc($s1)
/* FA10C 80050BFC 8C82000C */  lw         $v0, 0xc($a0)
/* FA110 80050C00 94450000 */  lhu        $a1, ($v0)
/* FA114 80050C04 94460002 */  lhu        $a2, 2($v0)
/* FA118 80050C08 00052842 */  srl        $a1, $a1, 1
/* FA11C 80050C0C 0C02912A */  jal        func_800A44A8
/* FA120 80050C10 00063042 */   srl       $a2, $a2, 1
/* FA124 80050C14 8E24000C */  lw         $a0, 0xc($s1)
/* FA128 80050C18 24050248 */  addiu      $a1, $zero, 0x248
/* FA12C 80050C1C 0C028D89 */  jal        func_800A3624
/* FA130 80050C20 240601E0 */   addiu     $a2, $zero, 0x1e0
/* FA134 80050C24 8E23000C */  lw         $v1, 0xc($s1)
/* FA138 80050C28 24040220 */  addiu      $a0, $zero, 0x220
/* FA13C 80050C2C 9462001E */  lhu        $v0, 0x1e($v1)
/* FA140 80050C30 24050002 */  addiu      $a1, $zero, 2
/* FA144 80050C34 24060032 */  addiu      $a2, $zero, 0x32
/* FA148 80050C38 34420004 */  ori        $v0, $v0, 4
/* FA14C 80050C3C 0C00D925 */  jal        func_80036494_DF9A4
/* FA150 80050C40 A462001E */   sh        $v0, 0x1e($v1)
/* FA154 80050C44 00408821 */  addu       $s1, $v0, $zero
/* FA158 80050C48 8E24000C */  lw         $a0, 0xc($s1)
/* FA15C 80050C4C 8C82000C */  lw         $v0, 0xc($a0)
/* FA160 80050C50 94450000 */  lhu        $a1, ($v0)
/* FA164 80050C54 94460002 */  lhu        $a2, 2($v0)
/* FA168 80050C58 00052842 */  srl        $a1, $a1, 1
/* FA16C 80050C5C 0C02912A */  jal        func_800A44A8
/* FA170 80050C60 00063042 */   srl       $a2, $a2, 1
/* FA174 80050C64 8E24000C */  lw         $a0, 0xc($s1)
/* FA178 80050C68 24050248 */  addiu      $a1, $zero, 0x248
/* FA17C 80050C6C 0C028D89 */  jal        func_800A3624
/* FA180 80050C70 240601E0 */   addiu     $a2, $zero, 0x1e0
/* FA184 80050C74 8E23000C */  lw         $v1, 0xc($s1)
/* FA188 80050C78 9462001E */  lhu        $v0, 0x1e($v1)
/* FA18C 80050C7C 3C014000 */  lui        $at, 0x4000
/* FA190 80050C80 4481A000 */  mtc1       $at, $f20
/* FA194 80050C84 34420004 */  ori        $v0, $v0, 4
/* FA198 80050C88 A462001E */  sh         $v0, 0x1e($v1)
/* FA19C 80050C8C 26440222 */  addiu      $a0, $s2, 0x222
.L80050C90:
/* FA1A0 80050C90 3084FFFF */  andi       $a0, $a0, 0xffff
/* FA1A4 80050C94 24050002 */  addiu      $a1, $zero, 2
/* FA1A8 80050C98 26500025 */  addiu      $s0, $s2, 0x25
/* FA1AC 80050C9C 3210FFFF */  andi       $s0, $s0, 0xffff
/* FA1B0 80050CA0 0C00D925 */  jal        func_80036494_DF9A4
/* FA1B4 80050CA4 02003021 */   addu      $a2, $s0, $zero
/* FA1B8 80050CA8 00408821 */  addu       $s1, $v0, $zero
/* FA1BC 80050CAC 8E24000C */  lw         $a0, 0xc($s1)
/* FA1C0 80050CB0 4406A000 */  mfc1       $a2, $f20
/* FA1C4 80050CB4 4407A000 */  mfc1       $a3, $f20
/* FA1C8 80050CB8 00000000 */  nop
/* FA1CC 80050CBC 0C02915B */  jal        func_800A456C
/* FA1D0 80050CC0 00002821 */   addu      $a1, $zero, $zero
/* FA1D4 80050CC4 8E24000C */  lw         $a0, 0xc($s1)
/* FA1D8 80050CC8 24050040 */  addiu      $a1, $zero, 0x40
/* FA1DC 80050CCC 0C028D89 */  jal        func_800A3624
/* FA1E0 80050CD0 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA1E4 80050CD4 240200F0 */  addiu      $v0, $zero, 0xf0
/* FA1E8 80050CD8 AFA20010 */  sw         $v0, 0x10($sp)
/* FA1EC 80050CDC 8E24000C */  lw         $a0, 0xc($s1)
/* FA1F0 80050CE0 240500FF */  addiu      $a1, $zero, 0xff
/* FA1F4 80050CE4 240600FF */  addiu      $a2, $zero, 0xff
/* FA1F8 80050CE8 0C028E41 */  jal        func_800A3904
/* FA1FC 80050CEC 240700FF */   addiu     $a3, $zero, 0xff
/* FA200 80050CF0 8E23000C */  lw         $v1, 0xc($s1)
/* FA204 80050CF4 2402004B */  addiu      $v0, $zero, 0x4b
/* FA208 80050CF8 A462001C */  sh         $v0, 0x1c($v1)
/* FA20C 80050CFC 8E23000C */  lw         $v1, 0xc($s1)
/* FA210 80050D00 02002021 */  addu       $a0, $s0, $zero
/* FA214 80050D04 9462001E */  lhu        $v0, 0x1e($v1)
/* FA218 80050D08 2645002B */  addiu      $a1, $s2, 0x2b
/* FA21C 80050D0C 30A5FFFF */  andi       $a1, $a1, 0xffff
/* FA220 80050D10 34420004 */  ori        $v0, $v0, 4
/* FA224 80050D14 0C00DD19 */  jal        func_80037464_E0974
/* FA228 80050D18 A462001E */   sh        $v0, 0x1e($v1)
/* FA22C 80050D1C 00408821 */  addu       $s1, $v0, $zero
/* FA230 80050D20 8E24000C */  lw         $a0, 0xc($s1)
/* FA234 80050D24 4406A000 */  mfc1       $a2, $f20
/* FA238 80050D28 4407A000 */  mfc1       $a3, $f20
/* FA23C 80050D2C 00000000 */  nop
/* FA240 80050D30 0C02915B */  jal        func_800A456C
/* FA244 80050D34 00002821 */   addu      $a1, $zero, $zero
/* FA248 80050D38 8E24000C */  lw         $a0, 0xc($s1)
/* FA24C 80050D3C 24050040 */  addiu      $a1, $zero, 0x40
/* FA250 80050D40 0C028D89 */  jal        func_800A3624
/* FA254 80050D44 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA258 80050D48 8E24000C */  lw         $a0, 0xc($s1)
/* FA25C 80050D4C 2405000F */  addiu      $a1, $zero, 0xf
/* FA260 80050D50 0C00DE6C */  jal        func_800379B0_E0EC0
/* FA264 80050D54 3406FC00 */   ori       $a2, $zero, 0xfc00
/* FA268 80050D58 24020080 */  addiu      $v0, $zero, 0x80
/* FA26C 80050D5C AFA20010 */  sw         $v0, 0x10($sp)
/* FA270 80050D60 8E24000C */  lw         $a0, 0xc($s1)
/* FA274 80050D64 240500FF */  addiu      $a1, $zero, 0xff
/* FA278 80050D68 240600FF */  addiu      $a2, $zero, 0xff
/* FA27C 80050D6C 0C028E41 */  jal        func_800A3904
/* FA280 80050D70 240700FF */   addiu     $a3, $zero, 0xff
/* FA284 80050D74 8E23000C */  lw         $v1, 0xc($s1)
/* FA288 80050D78 2402004A */  addiu      $v0, $zero, 0x4a
/* FA28C 80050D7C A462001C */  sh         $v0, 0x1c($v1)
/* FA290 80050D80 8E23000C */  lw         $v1, 0xc($s1)
/* FA294 80050D84 9462001E */  lhu        $v0, 0x1e($v1)
/* FA298 80050D88 26520001 */  addiu      $s2, $s2, 1
/* FA29C 80050D8C 02002021 */  addu       $a0, $s0, $zero
/* FA2A0 80050D90 34420004 */  ori        $v0, $v0, 4
/* FA2A4 80050D94 0C00D8C1 */  jal        func_80036304_DF814
/* FA2A8 80050D98 A462001E */   sh        $v0, 0x1e($v1)
/* FA2AC 80050D9C 8C44000C */  lw         $a0, 0xc($v0)
/* FA2B0 80050DA0 24050001 */  addiu      $a1, $zero, 1
/* FA2B4 80050DA4 0C00DE72 */  jal        func_800379C8_E0ED8
/* FA2B8 80050DA8 00003021 */   addu      $a2, $zero, $zero
/* FA2BC 80050DAC 3242FFFF */  andi       $v0, $s2, 0xffff
/* FA2C0 80050DB0 2C420006 */  sltiu      $v0, $v0, 6
/* FA2C4 80050DB4 1440FFB6 */  bnez       $v0, .L80050C90
/* FA2C8 80050DB8 26440222 */   addiu     $a0, $s2, 0x222
/* FA2CC 80050DBC 27A40018 */  addiu      $a0, $sp, 0x18
/* FA2D0 80050DC0 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FA2D4 80050DC4 24060002 */  addiu      $a2, $zero, 2
/* FA2D8 80050DC8 3C028007 */  lui        $v0, %hi(D_80069304_112814)
/* FA2DC 80050DCC 24429304 */  addiu      $v0, $v0, %lo(D_80069304_112814)
/* FA2E0 80050DD0 2412FFFE */  addiu      $s2, $zero, -2
/* FA2E4 80050DD4 24110001 */  addiu      $s1, $zero, 1
/* FA2E8 80050DD8 24100003 */  addiu      $s0, $zero, 3
/* FA2EC 80050DDC AFA20018 */  sw         $v0, 0x18($sp)
/* FA2F0 80050DE0 A3B2001C */  sb         $s2, 0x1c($sp)
/* FA2F4 80050DE4 A3A0001D */  sb         $zero, 0x1d($sp)
/* FA2F8 80050DE8 A3B1001E */  sb         $s1, 0x1e($sp)
/* FA2FC 80050DEC 0C00DE82 */  jal        func_80037A08_E0F18
/* FA300 80050DF0 A3B0001F */   sb        $s0, 0x1f($sp)
/* FA304 80050DF4 27A40018 */  addiu      $a0, $sp, 0x18
/* FA308 80050DF8 240520CA */  addiu      $a1, $zero, 0x20ca
/* FA30C 80050DFC 24060002 */  addiu      $a2, $zero, 2
/* FA310 80050E00 3C028007 */  lui        $v0, %hi(D_80069328_112838)
/* FA314 80050E04 24429328 */  addiu      $v0, $v0, %lo(D_80069328_112838)
/* FA318 80050E08 AFA20018 */  sw         $v0, 0x18($sp)
/* FA31C 80050E0C A3B2001C */  sb         $s2, 0x1c($sp)
/* FA320 80050E10 A3A0001D */  sb         $zero, 0x1d($sp)
/* FA324 80050E14 A3B1001E */  sb         $s1, 0x1e($sp)
/* FA328 80050E18 0C00DE82 */  jal        func_80037A08_E0F18
/* FA32C 80050E1C A3B0001F */   sb        $s0, 0x1f($sp)
/* FA330 80050E20 27A40018 */  addiu      $a0, $sp, 0x18
/* FA334 80050E24 240520CB */  addiu      $a1, $zero, 0x20cb
/* FA338 80050E28 24060002 */  addiu      $a2, $zero, 2
/* FA33C 80050E2C 3C028007 */  lui        $v0, %hi(D_8006933C_11284C)
/* FA340 80050E30 2442933C */  addiu      $v0, $v0, %lo(D_8006933C_11284C)
/* FA344 80050E34 AFA20018 */  sw         $v0, 0x18($sp)
/* FA348 80050E38 A3B2001C */  sb         $s2, 0x1c($sp)
/* FA34C 80050E3C A3A0001D */  sb         $zero, 0x1d($sp)
/* FA350 80050E40 A3B1001E */  sb         $s1, 0x1e($sp)
/* FA354 80050E44 0C00DE82 */  jal        func_80037A08_E0F18
/* FA358 80050E48 A3B0001F */   sb        $s0, 0x1f($sp)
/* FA35C 80050E4C 8FBF002C */  lw         $ra, 0x2c($sp)
/* FA360 80050E50 8FB20028 */  lw         $s2, 0x28($sp)
/* FA364 80050E54 8FB10024 */  lw         $s1, 0x24($sp)
/* FA368 80050E58 8FB00020 */  lw         $s0, 0x20($sp)
/* FA36C 80050E5C D7B40030 */  ldc1       $f20, 0x30($sp)
/* FA370 80050E60 03E00008 */  jr         $ra
/* FA374 80050E64 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80050E68_FA378
/* FA378 80050E68 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FA37C 80050E6C AFBF0024 */  sw         $ra, 0x24($sp)
/* FA380 80050E70 AFB20020 */  sw         $s2, 0x20($sp)
/* FA384 80050E74 AFB1001C */  sw         $s1, 0x1c($sp)
/* FA388 80050E78 0C00E109 */  jal        func_80038424_E1934
/* FA38C 80050E7C AFB00018 */   sw        $s0, 0x18($sp)
/* FA390 80050E80 3C04802F */  lui        $a0, 0x802f
/* FA394 80050E84 34849800 */  ori        $a0, $a0, 0x9800
/* FA398 80050E88 24050228 */  addiu      $a1, $zero, 0x228
/* FA39C 80050E8C 2406000B */  addiu      $a2, $zero, 0xb
/* FA3A0 80050E90 0C00D9E0 */  jal        func_80036780_DFC90
/* FA3A4 80050E94 24070036 */   addiu     $a3, $zero, 0x36
/* FA3A8 80050E98 00408021 */  addu       $s0, $v0, $zero
/* FA3AC 80050E9C 8E04000C */  lw         $a0, 0xc($s0)
/* FA3B0 80050EA0 8C82000C */  lw         $v0, 0xc($a0)
/* FA3B4 80050EA4 94450000 */  lhu        $a1, ($v0)
/* FA3B8 80050EA8 00003021 */  addu       $a2, $zero, $zero
/* FA3BC 80050EAC 0C02912A */  jal        func_800A44A8
/* FA3C0 80050EB0 00052842 */   srl       $a1, $a1, 1
/* FA3C4 80050EB4 3C048030 */  lui        $a0, 0x8030
/* FA3C8 80050EB8 8E03000C */  lw         $v1, 0xc($s0)
/* FA3CC 80050EBC 34848610 */  ori        $a0, $a0, 0x8610
/* FA3D0 80050EC0 24050233 */  addiu      $a1, $zero, 0x233
/* FA3D4 80050EC4 9462001E */  lhu        $v0, 0x1e($v1)
/* FA3D8 80050EC8 2406000A */  addiu      $a2, $zero, 0xa
/* FA3DC 80050ECC 24070034 */  addiu      $a3, $zero, 0x34
/* FA3E0 80050ED0 34420004 */  ori        $v0, $v0, 4
/* FA3E4 80050ED4 0C00D9E0 */  jal        func_80036780_DFC90
/* FA3E8 80050ED8 A462001E */   sh        $v0, 0x1e($v1)
/* FA3EC 80050EDC 00408021 */  addu       $s0, $v0, $zero
/* FA3F0 80050EE0 8E04000C */  lw         $a0, 0xc($s0)
/* FA3F4 80050EE4 8C82000C */  lw         $v0, 0xc($a0)
/* FA3F8 80050EE8 94450000 */  lhu        $a1, ($v0)
/* FA3FC 80050EEC 00003021 */  addu       $a2, $zero, $zero
/* FA400 80050EF0 0C02912A */  jal        func_800A44A8
/* FA404 80050EF4 00052842 */   srl       $a1, $a1, 1
/* FA408 80050EF8 8E03000C */  lw         $v1, 0xc($s0)
/* FA40C 80050EFC 27A40010 */  addiu      $a0, $sp, 0x10
/* FA410 80050F00 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FA414 80050F04 24060002 */  addiu      $a2, $zero, 2
/* FA418 80050F08 2412FFFE */  addiu      $s2, $zero, -2
/* FA41C 80050F0C 9462001E */  lhu        $v0, 0x1e($v1)
/* FA420 80050F10 24110001 */  addiu      $s1, $zero, 1
/* FA424 80050F14 24100003 */  addiu      $s0, $zero, 3
/* FA428 80050F18 34420004 */  ori        $v0, $v0, 4
/* FA42C 80050F1C A462001E */  sh         $v0, 0x1e($v1)
/* FA430 80050F20 3C028007 */  lui        $v0, %hi(D_80069358_112868)
/* FA434 80050F24 24429358 */  addiu      $v0, $v0, %lo(D_80069358_112868)
/* FA438 80050F28 AFA20010 */  sw         $v0, 0x10($sp)
/* FA43C 80050F2C A3B20014 */  sb         $s2, 0x14($sp)
/* FA440 80050F30 A3A00015 */  sb         $zero, 0x15($sp)
/* FA444 80050F34 A3B10016 */  sb         $s1, 0x16($sp)
/* FA448 80050F38 0C00DE82 */  jal        func_80037A08_E0F18
/* FA44C 80050F3C A3B00017 */   sb        $s0, 0x17($sp)
/* FA450 80050F40 27A40010 */  addiu      $a0, $sp, 0x10
/* FA454 80050F44 240520CA */  addiu      $a1, $zero, 0x20ca
/* FA458 80050F48 24060002 */  addiu      $a2, $zero, 2
/* FA45C 80050F4C 3C028007 */  lui        $v0, %hi(D_80069374_112884)
/* FA460 80050F50 24429374 */  addiu      $v0, $v0, %lo(D_80069374_112884)
/* FA464 80050F54 AFA20010 */  sw         $v0, 0x10($sp)
/* FA468 80050F58 A3B20014 */  sb         $s2, 0x14($sp)
/* FA46C 80050F5C A3A00015 */  sb         $zero, 0x15($sp)
/* FA470 80050F60 A3B10016 */  sb         $s1, 0x16($sp)
/* FA474 80050F64 0C00DE82 */  jal        func_80037A08_E0F18
/* FA478 80050F68 A3B00017 */   sb        $s0, 0x17($sp)
/* FA47C 80050F6C 8FBF0024 */  lw         $ra, 0x24($sp)
/* FA480 80050F70 8FB20020 */  lw         $s2, 0x20($sp)
/* FA484 80050F74 8FB1001C */  lw         $s1, 0x1c($sp)
/* FA488 80050F78 8FB00018 */  lw         $s0, 0x18($sp)
/* FA48C 80050F7C 03E00008 */  jr         $ra
/* FA490 80050F80 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80050F84_FA494
/* FA494 80050F84 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FA498 80050F88 3C048031 */  lui        $a0, 0x8031
/* FA49C 80050F8C 34847420 */  ori        $a0, $a0, 0x7420
/* FA4A0 80050F90 2405023D */  addiu      $a1, $zero, 0x23d
/* FA4A4 80050F94 24060009 */  addiu      $a2, $zero, 9
/* FA4A8 80050F98 24070036 */  addiu      $a3, $zero, 0x36
/* FA4AC 80050F9C AFBF0024 */  sw         $ra, 0x24($sp)
/* FA4B0 80050FA0 AFB20020 */  sw         $s2, 0x20($sp)
/* FA4B4 80050FA4 AFB1001C */  sw         $s1, 0x1c($sp)
/* FA4B8 80050FA8 0C00D9E0 */  jal        func_80036780_DFC90
/* FA4BC 80050FAC AFB00018 */   sw        $s0, 0x18($sp)
/* FA4C0 80050FB0 00408021 */  addu       $s0, $v0, $zero
/* FA4C4 80050FB4 8E04000C */  lw         $a0, 0xc($s0)
/* FA4C8 80050FB8 24050044 */  addiu      $a1, $zero, 0x44
/* FA4CC 80050FBC 0C028D89 */  jal        func_800A3624
/* FA4D0 80050FC0 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA4D4 80050FC4 8E03000C */  lw         $v1, 0xc($s0)
/* FA4D8 80050FC8 9462001E */  lhu        $v0, 0x1e($v1)
/* FA4DC 80050FCC 00008821 */  addu       $s1, $zero, $zero
/* FA4E0 80050FD0 34420004 */  ori        $v0, $v0, 4
/* FA4E4 80050FD4 A462001E */  sh         $v0, 0x1e($v1)
/* FA4E8 80050FD8 26240246 */  addiu      $a0, $s1, 0x246
.L80050FDC:
/* FA4EC 80050FDC 3084FFFF */  andi       $a0, $a0, 0xffff
/* FA4F0 80050FE0 24050002 */  addiu      $a1, $zero, 2
/* FA4F4 80050FE4 26260018 */  addiu      $a2, $s1, 0x18
/* FA4F8 80050FE8 0C00D925 */  jal        func_80036494_DF9A4
/* FA4FC 80050FEC 30C6FFFF */   andi      $a2, $a2, 0xffff
/* FA500 80050FF0 00408021 */  addu       $s0, $v0, $zero
/* FA504 80050FF4 8E04000C */  lw         $a0, 0xc($s0)
/* FA508 80050FF8 240503C4 */  addiu      $a1, $zero, 0x3c4
/* FA50C 80050FFC 0C028D89 */  jal        func_800A3624
/* FA510 80051000 24060240 */   addiu     $a2, $zero, 0x240
/* FA514 80051004 8E03000C */  lw         $v1, 0xc($s0)
/* FA518 80051008 9462001E */  lhu        $v0, 0x1e($v1)
/* FA51C 8005100C 26310001 */  addiu      $s1, $s1, 1
/* FA520 80051010 34420004 */  ori        $v0, $v0, 4
/* FA524 80051014 A462001E */  sh         $v0, 0x1e($v1)
/* FA528 80051018 3222FFFF */  andi       $v0, $s1, 0xffff
/* FA52C 8005101C 2C420002 */  sltiu      $v0, $v0, 2
/* FA530 80051020 1440FFEE */  bnez       $v0, .L80050FDC
/* FA534 80051024 26240246 */   addiu     $a0, $s1, 0x246
/* FA538 80051028 27A40010 */  addiu      $a0, $sp, 0x10
/* FA53C 8005102C 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FA540 80051030 24060002 */  addiu      $a2, $zero, 2
/* FA544 80051034 3C028007 */  lui        $v0, %hi(D_8006938C_11289C)
/* FA548 80051038 2442938C */  addiu      $v0, $v0, %lo(D_8006938C_11289C)
/* FA54C 8005103C 2412FFFE */  addiu      $s2, $zero, -2
/* FA550 80051040 24110001 */  addiu      $s1, $zero, 1
/* FA554 80051044 24100003 */  addiu      $s0, $zero, 3
/* FA558 80051048 AFA20010 */  sw         $v0, 0x10($sp)
/* FA55C 8005104C A3B20014 */  sb         $s2, 0x14($sp)
/* FA560 80051050 A3A00015 */  sb         $zero, 0x15($sp)
/* FA564 80051054 A3B10016 */  sb         $s1, 0x16($sp)
/* FA568 80051058 0C00DE82 */  jal        func_80037A08_E0F18
/* FA56C 8005105C A3B00017 */   sb        $s0, 0x17($sp)
/* FA570 80051060 27A40010 */  addiu      $a0, $sp, 0x10
/* FA574 80051064 240520CA */  addiu      $a1, $zero, 0x20ca
/* FA578 80051068 24060002 */  addiu      $a2, $zero, 2
/* FA57C 8005106C 3C028007 */  lui        $v0, %hi(D_800693C0_1128D0)
/* FA580 80051070 244293C0 */  addiu      $v0, $v0, %lo(D_800693C0_1128D0)
/* FA584 80051074 AFA20010 */  sw         $v0, 0x10($sp)
/* FA588 80051078 A3B20014 */  sb         $s2, 0x14($sp)
/* FA58C 8005107C A3A00015 */  sb         $zero, 0x15($sp)
/* FA590 80051080 A3B10016 */  sb         $s1, 0x16($sp)
/* FA594 80051084 0C00DE82 */  jal        func_80037A08_E0F18
/* FA598 80051088 A3B00017 */   sb        $s0, 0x17($sp)
/* FA59C 8005108C 8FBF0024 */  lw         $ra, 0x24($sp)
/* FA5A0 80051090 8FB20020 */  lw         $s2, 0x20($sp)
/* FA5A4 80051094 8FB1001C */  lw         $s1, 0x1c($sp)
/* FA5A8 80051098 8FB00018 */  lw         $s0, 0x18($sp)
/* FA5AC 8005109C 03E00008 */  jr         $ra
/* FA5B0 800510A0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800510A4_FA5B4
/* FA5B4 800510A4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FA5B8 800510A8 AFBF0010 */  sw         $ra, 0x10($sp)
/* FA5BC 800510AC 0C00E109 */  jal        func_80038424_E1934
/* FA5C0 800510B0 00000000 */   nop
/* FA5C4 800510B4 0C00E1B4 */  jal        func_800386D0_E1BE0
/* FA5C8 800510B8 24040003 */   addiu     $a0, $zero, 3
/* FA5CC 800510BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* FA5D0 800510C0 03E00008 */  jr         $ra
/* FA5D4 800510C4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800510C8_FA5D8
/* FA5D8 800510C8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FA5DC 800510CC AFBF0034 */  sw         $ra, 0x34($sp)
/* FA5E0 800510D0 AFB40030 */  sw         $s4, 0x30($sp)
/* FA5E4 800510D4 AFB3002C */  sw         $s3, 0x2c($sp)
/* FA5E8 800510D8 AFB20028 */  sw         $s2, 0x28($sp)
/* FA5EC 800510DC AFB10024 */  sw         $s1, 0x24($sp)
/* FA5F0 800510E0 0C00E109 */  jal        func_80038424_E1934
/* FA5F4 800510E4 AFB00020 */   sw        $s0, 0x20($sp)
/* FA5F8 800510E8 24040248 */  addiu      $a0, $zero, 0x248
/* FA5FC 800510EC 24050002 */  addiu      $a1, $zero, 2
/* FA600 800510F0 0C00D925 */  jal        func_80036494_DF9A4
/* FA604 800510F4 24060036 */   addiu     $a2, $zero, 0x36
/* FA608 800510F8 00409021 */  addu       $s2, $v0, $zero
/* FA60C 800510FC 8E44000C */  lw         $a0, 0xc($s2)
/* FA610 80051100 24050040 */  addiu      $a1, $zero, 0x40
/* FA614 80051104 0C028D89 */  jal        func_800A3624
/* FA618 80051108 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA61C 8005110C 8E43000C */  lw         $v1, 0xc($s2)
/* FA620 80051110 9462001E */  lhu        $v0, 0x1e($v1)
/* FA624 80051114 24040036 */  addiu      $a0, $zero, 0x36
/* FA628 80051118 24050037 */  addiu      $a1, $zero, 0x37
/* FA62C 8005111C 34420004 */  ori        $v0, $v0, 4
/* FA630 80051120 0C00DD19 */  jal        func_80037464_E0974
/* FA634 80051124 A462001E */   sh        $v0, 0x1e($v1)
/* FA638 80051128 00409021 */  addu       $s2, $v0, $zero
/* FA63C 8005112C 8E44000C */  lw         $a0, 0xc($s2)
/* FA640 80051130 24050040 */  addiu      $a1, $zero, 0x40
/* FA644 80051134 0C028D89 */  jal        func_800A3624
/* FA648 80051138 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA64C 8005113C 8E43000C */  lw         $v1, 0xc($s2)
/* FA650 80051140 9462001E */  lhu        $v0, 0x1e($v1)
/* FA654 80051144 24110006 */  addiu      $s1, $zero, 6
/* FA658 80051148 34420004 */  ori        $v0, $v0, 4
/* FA65C 8005114C A462001E */  sh         $v0, 0x1e($v1)
.L80051150:
/* FA660 80051150 8E44000C */  lw         $a0, 0xc($s2)
/* FA664 80051154 323000FF */  andi       $s0, $s1, 0xff
/* FA668 80051158 02002821 */  addu       $a1, $s0, $zero
/* FA66C 8005115C 0C00DE7C */  jal        func_800379F0_E0F00
/* FA670 80051160 26310001 */   addiu     $s1, $s1, 1
/* FA674 80051164 8E44000C */  lw         $a0, 0xc($s2)
/* FA678 80051168 02002821 */  addu       $a1, $s0, $zero
/* FA67C 8005116C 24420842 */  addiu      $v0, $v0, 0x842
/* FA680 80051170 0C00DE6C */  jal        func_800379B0_E0EC0
/* FA684 80051174 3046FFFF */   andi      $a2, $v0, 0xffff
/* FA688 80051178 3222FFFF */  andi       $v0, $s1, 0xffff
/* FA68C 8005117C 2C42000E */  sltiu      $v0, $v0, 0xe
/* FA690 80051180 1440FFF3 */  bnez       $v0, .L80051150
/* FA694 80051184 2405FFFE */   addiu     $a1, $zero, -2
/* FA698 80051188 3C048007 */  lui        $a0, %hi(D_800693F4_112904)
/* FA69C 8005118C 248493F4 */  addiu      $a0, $a0, %lo(D_800693F4_112904)
/* FA6A0 80051190 2414FFFE */  addiu      $s4, $zero, -2
/* FA6A4 80051194 24130001 */  addiu      $s3, $zero, 1
/* FA6A8 80051198 24120002 */  addiu      $s2, $zero, 2
/* FA6AC 8005119C AFA40018 */  sw         $a0, 0x18($sp)
/* FA6B0 800511A0 A3B4001C */  sb         $s4, 0x1c($sp)
/* FA6B4 800511A4 A3A0001D */  sb         $zero, 0x1d($sp)
/* FA6B8 800511A8 A3B3001E */  sb         $s3, 0x1e($sp)
/* FA6BC 800511AC 0C029D2A */  jal        func_800A74A8
/* FA6C0 800511B0 A3B2001F */   sb        $s2, 0x1f($sp)
/* FA6C4 800511B4 27A40018 */  addiu      $a0, $sp, 0x18
/* FA6C8 800511B8 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FA6CC 800511BC 240620D3 */  addiu      $a2, $zero, 0x20d3
/* FA6D0 800511C0 00023FC2 */  srl        $a3, $v0, 0x1f
/* FA6D4 800511C4 00E23821 */  addu       $a3, $a3, $v0
/* FA6D8 800511C8 00073843 */  sra        $a3, $a3, 1
/* FA6DC 800511CC 241000A0 */  addiu      $s0, $zero, 0xa0
/* FA6E0 800511D0 02073823 */  subu       $a3, $s0, $a3
/* FA6E4 800511D4 00073C00 */  sll        $a3, $a3, 0x10
/* FA6E8 800511D8 00073C03 */  sra        $a3, $a3, 0x10
/* FA6EC 800511DC 241100A7 */  addiu      $s1, $zero, 0xa7
/* FA6F0 800511E0 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FA6F4 800511E4 AFB10010 */   sw        $s1, 0x10($sp)
/* FA6F8 800511E8 3C048007 */  lui        $a0, %hi(D_80069420_112930)
/* FA6FC 800511EC 24849420 */  addiu      $a0, $a0, %lo(D_80069420_112930)
/* FA700 800511F0 2405FFFE */  addiu      $a1, $zero, -2
/* FA704 800511F4 AFA40018 */  sw         $a0, 0x18($sp)
/* FA708 800511F8 A3B4001C */  sb         $s4, 0x1c($sp)
/* FA70C 800511FC A3A0001D */  sb         $zero, 0x1d($sp)
/* FA710 80051200 A3B3001E */  sb         $s3, 0x1e($sp)
/* FA714 80051204 0C029D2A */  jal        func_800A74A8
/* FA718 80051208 A3B2001F */   sb        $s2, 0x1f($sp)
/* FA71C 8005120C 27A40018 */  addiu      $a0, $sp, 0x18
/* FA720 80051210 240520CA */  addiu      $a1, $zero, 0x20ca
/* FA724 80051214 240620D4 */  addiu      $a2, $zero, 0x20d4
/* FA728 80051218 00023FC2 */  srl        $a3, $v0, 0x1f
/* FA72C 8005121C 00E23821 */  addu       $a3, $a3, $v0
/* FA730 80051220 00073843 */  sra        $a3, $a3, 1
/* FA734 80051224 02073823 */  subu       $a3, $s0, $a3
/* FA738 80051228 00073C00 */  sll        $a3, $a3, 0x10
/* FA73C 8005122C 00073C03 */  sra        $a3, $a3, 0x10
/* FA740 80051230 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FA744 80051234 AFB10010 */   sw        $s1, 0x10($sp)
/* FA748 80051238 3C048007 */  lui        $a0, %hi(D_8006944C_11295C)
/* FA74C 8005123C 2484944C */  addiu      $a0, $a0, %lo(D_8006944C_11295C)
/* FA750 80051240 2405FFFD */  addiu      $a1, $zero, -3
/* FA754 80051244 2414FFFD */  addiu      $s4, $zero, -3
/* FA758 80051248 AFA40018 */  sw         $a0, 0x18($sp)
/* FA75C 8005124C A3B4001C */  sb         $s4, 0x1c($sp)
/* FA760 80051250 A3A0001D */  sb         $zero, 0x1d($sp)
/* FA764 80051254 A3B3001E */  sb         $s3, 0x1e($sp)
/* FA768 80051258 0C029D2A */  jal        func_800A74A8
/* FA76C 8005125C A3B2001F */   sb        $s2, 0x1f($sp)
/* FA770 80051260 27A40018 */  addiu      $a0, $sp, 0x18
/* FA774 80051264 240520CB */  addiu      $a1, $zero, 0x20cb
/* FA778 80051268 240620D5 */  addiu      $a2, $zero, 0x20d5
/* FA77C 8005126C 00023FC2 */  srl        $a3, $v0, 0x1f
/* FA780 80051270 00E23821 */  addu       $a3, $a3, $v0
/* FA784 80051274 00073843 */  sra        $a3, $a3, 1
/* FA788 80051278 02073823 */  subu       $a3, $s0, $a3
/* FA78C 8005127C 00073C00 */  sll        $a3, $a3, 0x10
/* FA790 80051280 00073C03 */  sra        $a3, $a3, 0x10
/* FA794 80051284 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FA798 80051288 AFB10010 */   sw        $s1, 0x10($sp)
/* FA79C 8005128C 3C048007 */  lui        $a0, %hi(D_80069474_112984)
/* FA7A0 80051290 24849474 */  addiu      $a0, $a0, %lo(D_80069474_112984)
/* FA7A4 80051294 2405FFFD */  addiu      $a1, $zero, -3
/* FA7A8 80051298 AFA40018 */  sw         $a0, 0x18($sp)
/* FA7AC 8005129C A3B4001C */  sb         $s4, 0x1c($sp)
/* FA7B0 800512A0 A3A0001D */  sb         $zero, 0x1d($sp)
/* FA7B4 800512A4 A3B3001E */  sb         $s3, 0x1e($sp)
/* FA7B8 800512A8 0C029D2A */  jal        func_800A74A8
/* FA7BC 800512AC A3B2001F */   sb        $s2, 0x1f($sp)
/* FA7C0 800512B0 27A40018 */  addiu      $a0, $sp, 0x18
/* FA7C4 800512B4 240520CC */  addiu      $a1, $zero, 0x20cc
/* FA7C8 800512B8 240620D6 */  addiu      $a2, $zero, 0x20d6
/* FA7CC 800512BC 00021FC2 */  srl        $v1, $v0, 0x1f
/* FA7D0 800512C0 00621821 */  addu       $v1, $v1, $v0
/* FA7D4 800512C4 00031843 */  sra        $v1, $v1, 1
/* FA7D8 800512C8 02038023 */  subu       $s0, $s0, $v1
/* FA7DC 800512CC 00108400 */  sll        $s0, $s0, 0x10
/* FA7E0 800512D0 00103C03 */  sra        $a3, $s0, 0x10
/* FA7E4 800512D4 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FA7E8 800512D8 AFB10010 */   sw        $s1, 0x10($sp)
/* FA7EC 800512DC 8FBF0034 */  lw         $ra, 0x34($sp)
/* FA7F0 800512E0 8FB40030 */  lw         $s4, 0x30($sp)
/* FA7F4 800512E4 8FB3002C */  lw         $s3, 0x2c($sp)
/* FA7F8 800512E8 8FB20028 */  lw         $s2, 0x28($sp)
/* FA7FC 800512EC 8FB10024 */  lw         $s1, 0x24($sp)
/* FA800 800512F0 8FB00020 */  lw         $s0, 0x20($sp)
/* FA804 800512F4 03E00008 */  jr         $ra
/* FA808 800512F8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800512FC_FA80C
/* FA80C 800512FC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FA810 80051300 AFBF0034 */  sw         $ra, 0x34($sp)
/* FA814 80051304 AFB40030 */  sw         $s4, 0x30($sp)
/* FA818 80051308 AFB3002C */  sw         $s3, 0x2c($sp)
/* FA81C 8005130C AFB20028 */  sw         $s2, 0x28($sp)
/* FA820 80051310 AFB10024 */  sw         $s1, 0x24($sp)
/* FA824 80051314 0C00E109 */  jal        func_80038424_E1934
/* FA828 80051318 AFB00020 */   sw        $s0, 0x20($sp)
/* FA82C 8005131C 24040249 */  addiu      $a0, $zero, 0x249
/* FA830 80051320 24050002 */  addiu      $a1, $zero, 2
/* FA834 80051324 0C00D925 */  jal        func_80036494_DF9A4
/* FA838 80051328 24060036 */   addiu     $a2, $zero, 0x36
/* FA83C 8005132C 00409021 */  addu       $s2, $v0, $zero
/* FA840 80051330 8E44000C */  lw         $a0, 0xc($s2)
/* FA844 80051334 24050040 */  addiu      $a1, $zero, 0x40
/* FA848 80051338 0C028D89 */  jal        func_800A3624
/* FA84C 8005133C 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA850 80051340 8E43000C */  lw         $v1, 0xc($s2)
/* FA854 80051344 9462001E */  lhu        $v0, 0x1e($v1)
/* FA858 80051348 24040036 */  addiu      $a0, $zero, 0x36
/* FA85C 8005134C 24050037 */  addiu      $a1, $zero, 0x37
/* FA860 80051350 34420004 */  ori        $v0, $v0, 4
/* FA864 80051354 0C00DD19 */  jal        func_80037464_E0974
/* FA868 80051358 A462001E */   sh        $v0, 0x1e($v1)
/* FA86C 8005135C 00409021 */  addu       $s2, $v0, $zero
/* FA870 80051360 8E44000C */  lw         $a0, 0xc($s2)
/* FA874 80051364 24050040 */  addiu      $a1, $zero, 0x40
/* FA878 80051368 0C028D89 */  jal        func_800A3624
/* FA87C 8005136C 240600C0 */   addiu     $a2, $zero, 0xc0
/* FA880 80051370 8E43000C */  lw         $v1, 0xc($s2)
/* FA884 80051374 9462001E */  lhu        $v0, 0x1e($v1)
/* FA888 80051378 24110007 */  addiu      $s1, $zero, 7
/* FA88C 8005137C 34420004 */  ori        $v0, $v0, 4
/* FA890 80051380 A462001E */  sh         $v0, 0x1e($v1)
.L80051384:
/* FA894 80051384 8E44000C */  lw         $a0, 0xc($s2)
/* FA898 80051388 323000FF */  andi       $s0, $s1, 0xff
/* FA89C 8005138C 02002821 */  addu       $a1, $s0, $zero
/* FA8A0 80051390 0C00DE7C */  jal        func_800379F0_E0F00
/* FA8A4 80051394 26310001 */   addiu     $s1, $s1, 1
/* FA8A8 80051398 8E44000C */  lw         $a0, 0xc($s2)
/* FA8AC 8005139C 02002821 */  addu       $a1, $s0, $zero
/* FA8B0 800513A0 24420842 */  addiu      $v0, $v0, 0x842
/* FA8B4 800513A4 0C00DE6C */  jal        func_800379B0_E0EC0
/* FA8B8 800513A8 3046FFFF */   andi      $a2, $v0, 0xffff
/* FA8BC 800513AC 3222FFFF */  andi       $v0, $s1, 0xffff
/* FA8C0 800513B0 2C42000B */  sltiu      $v0, $v0, 0xb
/* FA8C4 800513B4 1440FFF3 */  bnez       $v0, .L80051384
/* FA8C8 800513B8 00000000 */   nop
/* FA8CC 800513BC 00008821 */  addu       $s1, $zero, $zero
/* FA8D0 800513C0 2624024A */  addiu      $a0, $s1, 0x24a
.L800513C4:
/* FA8D4 800513C4 3084FFFF */  andi       $a0, $a0, 0xffff
/* FA8D8 800513C8 24050002 */  addiu      $a1, $zero, 2
/* FA8DC 800513CC 26260018 */  addiu      $a2, $s1, 0x18
/* FA8E0 800513D0 0C00D925 */  jal        func_80036494_DF9A4
/* FA8E4 800513D4 30C6FFFF */   andi      $a2, $a2, 0xffff
/* FA8E8 800513D8 00409021 */  addu       $s2, $v0, $zero
/* FA8EC 800513DC 8E44000C */  lw         $a0, 0xc($s2)
/* FA8F0 800513E0 240501C0 */  addiu      $a1, $zero, 0x1c0
/* FA8F4 800513E4 0C028D89 */  jal        func_800A3624
/* FA8F8 800513E8 24060240 */   addiu     $a2, $zero, 0x240
/* FA8FC 800513EC 8E43000C */  lw         $v1, 0xc($s2)
/* FA900 800513F0 9462001E */  lhu        $v0, 0x1e($v1)
/* FA904 800513F4 26310001 */  addiu      $s1, $s1, 1
/* FA908 800513F8 34420004 */  ori        $v0, $v0, 4
/* FA90C 800513FC A462001E */  sh         $v0, 0x1e($v1)
/* FA910 80051400 3222FFFF */  andi       $v0, $s1, 0xffff
/* FA914 80051404 2C420002 */  sltiu      $v0, $v0, 2
/* FA918 80051408 1440FFEE */  bnez       $v0, .L800513C4
/* FA91C 8005140C 2624024A */   addiu     $a0, $s1, 0x24a
/* FA920 80051410 3C048007 */  lui        $a0, %hi(D_8006949C_1129AC)
/* FA924 80051414 2484949C */  addiu      $a0, $a0, %lo(D_8006949C_1129AC)
/* FA928 80051418 2405FFFE */  addiu      $a1, $zero, -2
/* FA92C 8005141C 2414FFFE */  addiu      $s4, $zero, -2
/* FA930 80051420 24130001 */  addiu      $s3, $zero, 1
/* FA934 80051424 24120002 */  addiu      $s2, $zero, 2
/* FA938 80051428 AFA40018 */  sw         $a0, 0x18($sp)
/* FA93C 8005142C A3B4001C */  sb         $s4, 0x1c($sp)
/* FA940 80051430 A3A0001D */  sb         $zero, 0x1d($sp)
/* FA944 80051434 A3B3001E */  sb         $s3, 0x1e($sp)
/* FA948 80051438 0C029D2A */  jal        func_800A74A8
/* FA94C 8005143C A3B2001F */   sb        $s2, 0x1f($sp)
/* FA950 80051440 27A40018 */  addiu      $a0, $sp, 0x18
/* FA954 80051444 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FA958 80051448 240620D3 */  addiu      $a2, $zero, 0x20d3
/* FA95C 8005144C 00023FC2 */  srl        $a3, $v0, 0x1f
/* FA960 80051450 00E23821 */  addu       $a3, $a3, $v0
/* FA964 80051454 00073843 */  sra        $a3, $a3, 1
/* FA968 80051458 241000A0 */  addiu      $s0, $zero, 0xa0
/* FA96C 8005145C 02073823 */  subu       $a3, $s0, $a3
/* FA970 80051460 00073C00 */  sll        $a3, $a3, 0x10
/* FA974 80051464 00073C03 */  sra        $a3, $a3, 0x10
/* FA978 80051468 241100A7 */  addiu      $s1, $zero, 0xa7
/* FA97C 8005146C 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FA980 80051470 AFB10010 */   sw        $s1, 0x10($sp)
/* FA984 80051474 3C048007 */  lui        $a0, %hi(D_800694D8_1129E8)
/* FA988 80051478 248494D8 */  addiu      $a0, $a0, %lo(D_800694D8_1129E8)
/* FA98C 8005147C 2405FFFE */  addiu      $a1, $zero, -2
/* FA990 80051480 AFA40018 */  sw         $a0, 0x18($sp)
/* FA994 80051484 A3B4001C */  sb         $s4, 0x1c($sp)
/* FA998 80051488 A3A0001D */  sb         $zero, 0x1d($sp)
/* FA99C 8005148C A3B3001E */  sb         $s3, 0x1e($sp)
/* FA9A0 80051490 0C029D2A */  jal        func_800A74A8
/* FA9A4 80051494 A3B2001F */   sb        $s2, 0x1f($sp)
/* FA9A8 80051498 27A40018 */  addiu      $a0, $sp, 0x18
/* FA9AC 8005149C 240520CA */  addiu      $a1, $zero, 0x20ca
/* FA9B0 800514A0 240620D4 */  addiu      $a2, $zero, 0x20d4
/* FA9B4 800514A4 00021FC2 */  srl        $v1, $v0, 0x1f
/* FA9B8 800514A8 00621821 */  addu       $v1, $v1, $v0
/* FA9BC 800514AC 00031843 */  sra        $v1, $v1, 1
/* FA9C0 800514B0 02038023 */  subu       $s0, $s0, $v1
/* FA9C4 800514B4 00108400 */  sll        $s0, $s0, 0x10
/* FA9C8 800514B8 00103C03 */  sra        $a3, $s0, 0x10
/* FA9CC 800514BC 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FA9D0 800514C0 AFB10010 */   sw        $s1, 0x10($sp)
/* FA9D4 800514C4 8FBF0034 */  lw         $ra, 0x34($sp)
/* FA9D8 800514C8 8FB40030 */  lw         $s4, 0x30($sp)
/* FA9DC 800514CC 8FB3002C */  lw         $s3, 0x2c($sp)
/* FA9E0 800514D0 8FB20028 */  lw         $s2, 0x28($sp)
/* FA9E4 800514D4 8FB10024 */  lw         $s1, 0x24($sp)
/* FA9E8 800514D8 8FB00020 */  lw         $s0, 0x20($sp)
/* FA9EC 800514DC 03E00008 */  jr         $ra
/* FA9F0 800514E0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800514E4_FA9F4
/* FA9F4 800514E4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FA9F8 800514E8 AFBF002C */  sw         $ra, 0x2c($sp)
/* FA9FC 800514EC AFB20028 */  sw         $s2, 0x28($sp)
/* FAA00 800514F0 AFB10024 */  sw         $s1, 0x24($sp)
/* FAA04 800514F4 0C00E109 */  jal        func_80038424_E1934
/* FAA08 800514F8 AFB00020 */   sw        $s0, 0x20($sp)
/* FAA0C 800514FC 2404024C */  addiu      $a0, $zero, 0x24c
/* FAA10 80051500 24050002 */  addiu      $a1, $zero, 2
/* FAA14 80051504 0C00D925 */  jal        func_80036494_DF9A4
/* FAA18 80051508 24060036 */   addiu     $a2, $zero, 0x36
/* FAA1C 8005150C 00409021 */  addu       $s2, $v0, $zero
/* FAA20 80051510 8E44000C */  lw         $a0, 0xc($s2)
/* FAA24 80051514 24050040 */  addiu      $a1, $zero, 0x40
/* FAA28 80051518 0C028D89 */  jal        func_800A3624
/* FAA2C 8005151C 240600C0 */   addiu     $a2, $zero, 0xc0
/* FAA30 80051520 8E43000C */  lw         $v1, 0xc($s2)
/* FAA34 80051524 9462001E */  lhu        $v0, 0x1e($v1)
/* FAA38 80051528 24040036 */  addiu      $a0, $zero, 0x36
/* FAA3C 8005152C 24050037 */  addiu      $a1, $zero, 0x37
/* FAA40 80051530 34420004 */  ori        $v0, $v0, 4
/* FAA44 80051534 0C00DD19 */  jal        func_80037464_E0974
/* FAA48 80051538 A462001E */   sh        $v0, 0x1e($v1)
/* FAA4C 8005153C 00409021 */  addu       $s2, $v0, $zero
/* FAA50 80051540 8E44000C */  lw         $a0, 0xc($s2)
/* FAA54 80051544 24050040 */  addiu      $a1, $zero, 0x40
/* FAA58 80051548 0C028D89 */  jal        func_800A3624
/* FAA5C 8005154C 240600C0 */   addiu     $a2, $zero, 0xc0
/* FAA60 80051550 8E43000C */  lw         $v1, 0xc($s2)
/* FAA64 80051554 9462001E */  lhu        $v0, 0x1e($v1)
/* FAA68 80051558 24110007 */  addiu      $s1, $zero, 7
/* FAA6C 8005155C 34420004 */  ori        $v0, $v0, 4
/* FAA70 80051560 A462001E */  sh         $v0, 0x1e($v1)
.L80051564:
/* FAA74 80051564 8E44000C */  lw         $a0, 0xc($s2)
/* FAA78 80051568 323000FF */  andi       $s0, $s1, 0xff
/* FAA7C 8005156C 02002821 */  addu       $a1, $s0, $zero
/* FAA80 80051570 0C00DE7C */  jal        func_800379F0_E0F00
/* FAA84 80051574 26310001 */   addiu     $s1, $s1, 1
/* FAA88 80051578 8E44000C */  lw         $a0, 0xc($s2)
/* FAA8C 8005157C 02002821 */  addu       $a1, $s0, $zero
/* FAA90 80051580 24420842 */  addiu      $v0, $v0, 0x842
/* FAA94 80051584 0C00DE6C */  jal        func_800379B0_E0EC0
/* FAA98 80051588 3046FFFF */   andi      $a2, $v0, 0xffff
/* FAA9C 8005158C 3222FFFF */  andi       $v0, $s1, 0xffff
/* FAAA0 80051590 2C42000B */  sltiu      $v0, $v0, 0xb
/* FAAA4 80051594 1440FFF3 */  bnez       $v0, .L80051564
/* FAAA8 80051598 2405FFFE */   addiu     $a1, $zero, -2
/* FAAAC 8005159C 3C048007 */  lui        $a0, %hi(D_80069504_112A14)
/* FAAB0 800515A0 24849504 */  addiu      $a0, $a0, %lo(D_80069504_112A14)
/* FAAB4 800515A4 2402FFFE */  addiu      $v0, $zero, -2
/* FAAB8 800515A8 A3A2001C */  sb         $v0, 0x1c($sp)
/* FAABC 800515AC 24020001 */  addiu      $v0, $zero, 1
/* FAAC0 800515B0 A3A2001E */  sb         $v0, 0x1e($sp)
/* FAAC4 800515B4 24020002 */  addiu      $v0, $zero, 2
/* FAAC8 800515B8 AFA40018 */  sw         $a0, 0x18($sp)
/* FAACC 800515BC A3A0001D */  sb         $zero, 0x1d($sp)
/* FAAD0 800515C0 0C029D2A */  jal        func_800A74A8
/* FAAD4 800515C4 A3A2001F */   sb        $v0, 0x1f($sp)
/* FAAD8 800515C8 27A40018 */  addiu      $a0, $sp, 0x18
/* FAADC 800515CC 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FAAE0 800515D0 240620D3 */  addiu      $a2, $zero, 0x20d3
/* FAAE4 800515D4 240300A7 */  addiu      $v1, $zero, 0xa7
/* FAAE8 800515D8 AFA30010 */  sw         $v1, 0x10($sp)
/* FAAEC 800515DC 00021FC2 */  srl        $v1, $v0, 0x1f
/* FAAF0 800515E0 00621821 */  addu       $v1, $v1, $v0
/* FAAF4 800515E4 00031843 */  sra        $v1, $v1, 1
/* FAAF8 800515E8 240700A0 */  addiu      $a3, $zero, 0xa0
/* FAAFC 800515EC 00E33823 */  subu       $a3, $a3, $v1
/* FAB00 800515F0 00073C00 */  sll        $a3, $a3, 0x10
/* FAB04 800515F4 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FAB08 800515F8 00073C03 */   sra       $a3, $a3, 0x10
/* FAB0C 800515FC 8FBF002C */  lw         $ra, 0x2c($sp)
/* FAB10 80051600 8FB20028 */  lw         $s2, 0x28($sp)
/* FAB14 80051604 8FB10024 */  lw         $s1, 0x24($sp)
/* FAB18 80051608 8FB00020 */  lw         $s0, 0x20($sp)
/* FAB1C 8005160C 03E00008 */  jr         $ra
/* FAB20 80051610 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80051614_FAB24
/* FAB24 80051614 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* FAB28 80051618 AFBF0050 */  sw         $ra, 0x50($sp)
/* FAB2C 8005161C AFB3004C */  sw         $s3, 0x4c($sp)
/* FAB30 80051620 AFB20048 */  sw         $s2, 0x48($sp)
/* FAB34 80051624 AFB10044 */  sw         $s1, 0x44($sp)
/* FAB38 80051628 AFB00040 */  sw         $s0, 0x40($sp)
/* FAB3C 8005162C 3C058007 */  lui        $a1, %hi(D_8006A220_113730)
/* FAB40 80051630 24A5A220 */  addiu      $a1, $a1, %lo(D_8006A220_113730)
/* FAB44 80051634 88A20000 */  lwl        $v0, ($a1)
/* FAB48 80051638 98A20003 */  lwr        $v0, 3($a1)
/* FAB4C 8005163C 88A30004 */  lwl        $v1, 4($a1)
/* FAB50 80051640 98A30007 */  lwr        $v1, 7($a1)
/* FAB54 80051644 84A40008 */  lh         $a0, 8($a1)
/* FAB58 80051648 ABA20020 */  swl        $v0, 0x20($sp)
/* FAB5C 8005164C BBA20023 */  swr        $v0, 0x23($sp)
/* FAB60 80051650 ABA30024 */  swl        $v1, 0x24($sp)
/* FAB64 80051654 BBA30027 */  swr        $v1, 0x27($sp)
/* FAB68 80051658 A7A40028 */  sh         $a0, 0x28($sp)
/* FAB6C 8005165C 3C058007 */  lui        $a1, %hi(D_8006A22C_11373C)
/* FAB70 80051660 24A5A22C */  addiu      $a1, $a1, %lo(D_8006A22C_11373C)
/* FAB74 80051664 88A20000 */  lwl        $v0, ($a1)
/* FAB78 80051668 98A20003 */  lwr        $v0, 3($a1)
/* FAB7C 8005166C 88A30004 */  lwl        $v1, 4($a1)
/* FAB80 80051670 98A30007 */  lwr        $v1, 7($a1)
/* FAB84 80051674 84A40008 */  lh         $a0, 8($a1)
/* FAB88 80051678 ABA20030 */  swl        $v0, 0x30($sp)
/* FAB8C 8005167C BBA20033 */  swr        $v0, 0x33($sp)
/* FAB90 80051680 ABA30034 */  swl        $v1, 0x34($sp)
/* FAB94 80051684 BBA30037 */  swr        $v1, 0x37($sp)
/* FAB98 80051688 A7A40038 */  sh         $a0, 0x38($sp)
/* FAB9C 8005168C 0C00E109 */  jal        func_80038424_E1934
/* FABA0 80051690 24110007 */   addiu     $s1, $zero, 7
/* FABA4 80051694 3C048032 */  lui        $a0, 0x8032
/* FABA8 80051698 34846230 */  ori        $a0, $a0, 0x6230
/* FABAC 8005169C 2405024D */  addiu      $a1, $zero, 0x24d
/* FABB0 800516A0 24060002 */  addiu      $a2, $zero, 2
/* FABB4 800516A4 0C00D9E0 */  jal        func_80036780_DFC90
/* FABB8 800516A8 24070036 */   addiu     $a3, $zero, 0x36
/* FABBC 800516AC 00409821 */  addu       $s3, $v0, $zero
/* FABC0 800516B0 8E64000C */  lw         $a0, 0xc($s3)
/* FABC4 800516B4 24050040 */  addiu      $a1, $zero, 0x40
/* FABC8 800516B8 0C028D89 */  jal        func_800A3624
/* FABCC 800516BC 240600C0 */   addiu     $a2, $zero, 0xc0
/* FABD0 800516C0 8E63000C */  lw         $v1, 0xc($s3)
/* FABD4 800516C4 9462001E */  lhu        $v0, 0x1e($v1)
/* FABD8 800516C8 24040036 */  addiu      $a0, $zero, 0x36
/* FABDC 800516CC 24050037 */  addiu      $a1, $zero, 0x37
/* FABE0 800516D0 34420004 */  ori        $v0, $v0, 4
/* FABE4 800516D4 0C00DD19 */  jal        func_80037464_E0974
/* FABE8 800516D8 A462001E */   sh        $v0, 0x1e($v1)
/* FABEC 800516DC 00409821 */  addu       $s3, $v0, $zero
/* FABF0 800516E0 8E64000C */  lw         $a0, 0xc($s3)
/* FABF4 800516E4 24050040 */  addiu      $a1, $zero, 0x40
/* FABF8 800516E8 0C028D89 */  jal        func_800A3624
/* FABFC 800516EC 240600C0 */   addiu     $a2, $zero, 0xc0
/* FAC00 800516F0 8E63000C */  lw         $v1, 0xc($s3)
/* FAC04 800516F4 9462001E */  lhu        $v0, 0x1e($v1)
/* FAC08 800516F8 34420004 */  ori        $v0, $v0, 4
/* FAC0C 800516FC A462001E */  sh         $v0, 0x1e($v1)
.L80051700:
/* FAC10 80051700 8E64000C */  lw         $a0, 0xc($s3)
/* FAC14 80051704 323000FF */  andi       $s0, $s1, 0xff
/* FAC18 80051708 02002821 */  addu       $a1, $s0, $zero
/* FAC1C 8005170C 0C00DE7C */  jal        func_800379F0_E0F00
/* FAC20 80051710 26310001 */   addiu     $s1, $s1, 1
/* FAC24 80051714 8E64000C */  lw         $a0, 0xc($s3)
/* FAC28 80051718 02002821 */  addu       $a1, $s0, $zero
/* FAC2C 8005171C 24420842 */  addiu      $v0, $v0, 0x842
/* FAC30 80051720 0C00DE6C */  jal        func_800379B0_E0EC0
/* FAC34 80051724 3046FFFF */   andi      $a2, $v0, 0xffff
/* FAC38 80051728 3222FFFF */  andi       $v0, $s1, 0xffff
/* FAC3C 8005172C 2C42000E */  sltiu      $v0, $v0, 0xe
/* FAC40 80051730 1440FFF3 */  bnez       $v0, .L80051700
/* FAC44 80051734 27B00018 */   addiu     $s0, $sp, 0x18
/* FAC48 80051738 00008821 */  addu       $s1, $zero, $zero
/* FAC4C 8005173C 2624024F */  addiu      $a0, $s1, 0x24f
.L80051740:
/* FAC50 80051740 3084FFFF */  andi       $a0, $a0, 0xffff
/* FAC54 80051744 24050002 */  addiu      $a1, $zero, 2
/* FAC58 80051748 26260025 */  addiu      $a2, $s1, 0x25
/* FAC5C 8005174C 0C00D925 */  jal        func_80036494_DF9A4
/* FAC60 80051750 30C6FFFF */   andi      $a2, $a2, 0xffff
/* FAC64 80051754 3223FFFF */  andi       $v1, $s1, 0xffff
/* FAC68 80051758 00031840 */  sll        $v1, $v1, 1
/* FAC6C 8005175C 00701821 */  addu       $v1, $v1, $s0
/* FAC70 80051760 94650008 */  lhu        $a1, 8($v1)
/* FAC74 80051764 00409821 */  addu       $s3, $v0, $zero
/* FAC78 80051768 8E64000C */  lw         $a0, 0xc($s3)
/* FAC7C 8005176C 94660018 */  lhu        $a2, 0x18($v1)
/* FAC80 80051770 24A50010 */  addiu      $a1, $a1, 0x10
/* FAC84 80051774 00052C80 */  sll        $a1, $a1, 0x12
/* FAC88 80051778 00052C03 */  sra        $a1, $a1, 0x10
/* FAC8C 8005177C 24C60030 */  addiu      $a2, $a2, 0x30
/* FAC90 80051780 00063480 */  sll        $a2, $a2, 0x12
/* FAC94 80051784 0C028D89 */  jal        func_800A3624
/* FAC98 80051788 00063403 */   sra       $a2, $a2, 0x10
/* FAC9C 8005178C 8E63000C */  lw         $v1, 0xc($s3)
/* FACA0 80051790 9462001E */  lhu        $v0, 0x1e($v1)
/* FACA4 80051794 26310001 */  addiu      $s1, $s1, 1
/* FACA8 80051798 34420004 */  ori        $v0, $v0, 4
/* FACAC 8005179C A462001E */  sh         $v0, 0x1e($v1)
/* FACB0 800517A0 3222FFFF */  andi       $v0, $s1, 0xffff
/* FACB4 800517A4 2C420005 */  sltiu      $v0, $v0, 5
/* FACB8 800517A8 1440FFE5 */  bnez       $v0, .L80051740
/* FACBC 800517AC 2624024F */   addiu     $a0, $s1, 0x24f
/* FACC0 800517B0 27A40018 */  addiu      $a0, $sp, 0x18
/* FACC4 800517B4 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FACC8 800517B8 24060002 */  addiu      $a2, $zero, 2
/* FACCC 800517BC 3C028007 */  lui        $v0, %hi(D_8006952C_112A3C)
/* FACD0 800517C0 2442952C */  addiu      $v0, $v0, %lo(D_8006952C_112A3C)
/* FACD4 800517C4 2412FFFE */  addiu      $s2, $zero, -2
/* FACD8 800517C8 24110001 */  addiu      $s1, $zero, 1
/* FACDC 800517CC 24100003 */  addiu      $s0, $zero, 3
/* FACE0 800517D0 AFA20018 */  sw         $v0, 0x18($sp)
/* FACE4 800517D4 A3B2001C */  sb         $s2, 0x1c($sp)
/* FACE8 800517D8 A3A0001D */  sb         $zero, 0x1d($sp)
/* FACEC 800517DC A3B1001E */  sb         $s1, 0x1e($sp)
/* FACF0 800517E0 0C00DE82 */  jal        func_80037A08_E0F18
/* FACF4 800517E4 A3B0001F */   sb        $s0, 0x1f($sp)
/* FACF8 800517E8 24040254 */  addiu      $a0, $zero, 0x254
/* FACFC 800517EC 24050002 */  addiu      $a1, $zero, 2
/* FAD00 800517F0 0C00D925 */  jal        func_80036494_DF9A4
/* FAD04 800517F4 24060038 */   addiu     $a2, $zero, 0x38
/* FAD08 800517F8 8C44000C */  lw         $a0, 0xc($v0)
/* FAD0C 800517FC 24050040 */  addiu      $a1, $zero, 0x40
/* FAD10 80051800 0C028D89 */  jal        func_800A3624
/* FAD14 80051804 240600C0 */   addiu     $a2, $zero, 0xc0
/* FAD18 80051808 24040257 */  addiu      $a0, $zero, 0x257
/* FAD1C 8005180C 24050002 */  addiu      $a1, $zero, 2
/* FAD20 80051810 0C00D925 */  jal        func_80036494_DF9A4
/* FAD24 80051814 24060039 */   addiu     $a2, $zero, 0x39
/* FAD28 80051818 00409821 */  addu       $s3, $v0, $zero
/* FAD2C 8005181C 8E64000C */  lw         $a0, 0xc($s3)
/* FAD30 80051820 8C82000C */  lw         $v0, 0xc($a0)
/* FAD34 80051824 94450000 */  lhu        $a1, ($v0)
/* FAD38 80051828 94460002 */  lhu        $a2, 2($v0)
/* FAD3C 8005182C 00052842 */  srl        $a1, $a1, 1
/* FAD40 80051830 0C02912A */  jal        func_800A44A8
/* FAD44 80051834 00063042 */   srl       $a2, $a2, 1
/* FAD48 80051838 8E64000C */  lw         $a0, 0xc($s3)
/* FAD4C 8005183C 240501D0 */  addiu      $a1, $zero, 0x1d0
/* FAD50 80051840 0C028D89 */  jal        func_800A3624
/* FAD54 80051844 24060280 */   addiu     $a2, $zero, 0x280
/* FAD58 80051848 8E64000C */  lw         $a0, 0xc($s3)
/* FAD5C 8005184C 24050002 */  addiu      $a1, $zero, 2
/* FAD60 80051850 0C00DE6C */  jal        func_800379B0_E0EC0
/* FAD64 80051854 24060886 */   addiu     $a2, $zero, 0x886
/* FAD68 80051858 8E63000C */  lw         $v1, 0xc($s3)
/* FAD6C 8005185C 24040257 */  addiu      $a0, $zero, 0x257
/* FAD70 80051860 9462001E */  lhu        $v0, 0x1e($v1)
/* FAD74 80051864 24050002 */  addiu      $a1, $zero, 2
/* FAD78 80051868 2406003A */  addiu      $a2, $zero, 0x3a
/* FAD7C 8005186C 34420004 */  ori        $v0, $v0, 4
/* FAD80 80051870 0C00D925 */  jal        func_80036494_DF9A4
/* FAD84 80051874 A462001E */   sh        $v0, 0x1e($v1)
/* FAD88 80051878 00409821 */  addu       $s3, $v0, $zero
/* FAD8C 8005187C 8E64000C */  lw         $a0, 0xc($s3)
/* FAD90 80051880 8C82000C */  lw         $v0, 0xc($a0)
/* FAD94 80051884 94450000 */  lhu        $a1, ($v0)
/* FAD98 80051888 94460002 */  lhu        $a2, 2($v0)
/* FAD9C 8005188C 00052842 */  srl        $a1, $a1, 1
/* FADA0 80051890 0C02912A */  jal        func_800A44A8
/* FADA4 80051894 00063042 */   srl       $a2, $a2, 1
/* FADA8 80051898 8E64000C */  lw         $a0, 0xc($s3)
/* FADAC 8005189C 240501D0 */  addiu      $a1, $zero, 0x1d0
/* FADB0 800518A0 0C028D89 */  jal        func_800A3624
/* FADB4 800518A4 24060280 */   addiu     $a2, $zero, 0x280
/* FADB8 800518A8 8E64000C */  lw         $a0, 0xc($s3)
/* FADBC 800518AC 24050002 */  addiu      $a1, $zero, 2
/* FADC0 800518B0 0C00DE6C */  jal        func_800379B0_E0EC0
/* FADC4 800518B4 24060886 */   addiu     $a2, $zero, 0x886
/* FADC8 800518B8 24020080 */  addiu      $v0, $zero, 0x80
/* FADCC 800518BC AFA20010 */  sw         $v0, 0x10($sp)
/* FADD0 800518C0 8E64000C */  lw         $a0, 0xc($s3)
/* FADD4 800518C4 240500FF */  addiu      $a1, $zero, 0xff
/* FADD8 800518C8 240600FF */  addiu      $a2, $zero, 0xff
/* FADDC 800518CC 0C028E41 */  jal        func_800A3904
/* FADE0 800518D0 240700FF */   addiu     $a3, $zero, 0xff
/* FADE4 800518D4 8E63000C */  lw         $v1, 0xc($s3)
/* FADE8 800518D8 24040256 */  addiu      $a0, $zero, 0x256
/* FADEC 800518DC 9462001E */  lhu        $v0, 0x1e($v1)
/* FADF0 800518E0 24050002 */  addiu      $a1, $zero, 2
/* FADF4 800518E4 2406003B */  addiu      $a2, $zero, 0x3b
/* FADF8 800518E8 34420004 */  ori        $v0, $v0, 4
/* FADFC 800518EC 0C00D925 */  jal        func_80036494_DF9A4
/* FAE00 800518F0 A462001E */   sh        $v0, 0x1e($v1)
/* FAE04 800518F4 8C44000C */  lw         $a0, 0xc($v0)
/* FAE08 800518F8 240502C0 */  addiu      $a1, $zero, 0x2c0
/* FAE0C 800518FC 0C028D89 */  jal        func_800A3624
/* FAE10 80051900 240600C0 */   addiu     $a2, $zero, 0xc0
/* FAE14 80051904 24040255 */  addiu      $a0, $zero, 0x255
/* FAE18 80051908 24050002 */  addiu      $a1, $zero, 2
/* FAE1C 8005190C 0C00D925 */  jal        func_80036494_DF9A4
/* FAE20 80051910 2406003C */   addiu     $a2, $zero, 0x3c
/* FAE24 80051914 8C44000C */  lw         $a0, 0xc($v0)
/* FAE28 80051918 24050040 */  addiu      $a1, $zero, 0x40
/* FAE2C 8005191C 0C028D89 */  jal        func_800A3624
/* FAE30 80051920 240601C0 */   addiu     $a2, $zero, 0x1c0
/* FAE34 80051924 27A40018 */  addiu      $a0, $sp, 0x18
/* FAE38 80051928 240520CA */  addiu      $a1, $zero, 0x20ca
/* FAE3C 8005192C 24060002 */  addiu      $a2, $zero, 2
/* FAE40 80051930 3C028007 */  lui        $v0, %hi(D_80069540_112A50)
/* FAE44 80051934 24429540 */  addiu      $v0, $v0, %lo(D_80069540_112A50)
/* FAE48 80051938 AFA20018 */  sw         $v0, 0x18($sp)
/* FAE4C 8005193C A3B2001C */  sb         $s2, 0x1c($sp)
/* FAE50 80051940 A3A0001D */  sb         $zero, 0x1d($sp)
/* FAE54 80051944 A3B1001E */  sb         $s1, 0x1e($sp)
/* FAE58 80051948 0C00DE82 */  jal        func_80037A08_E0F18
/* FAE5C 8005194C A3B0001F */   sb        $s0, 0x1f($sp)
/* FAE60 80051950 8FBF0050 */  lw         $ra, 0x50($sp)
/* FAE64 80051954 8FB3004C */  lw         $s3, 0x4c($sp)
/* FAE68 80051958 8FB20048 */  lw         $s2, 0x48($sp)
/* FAE6C 8005195C 8FB10044 */  lw         $s1, 0x44($sp)
/* FAE70 80051960 8FB00040 */  lw         $s0, 0x40($sp)
/* FAE74 80051964 03E00008 */  jr         $ra
/* FAE78 80051968 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_8005196C_FAE7C
/* FAE7C 8005196C 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* FAE80 80051970 AFBF0044 */  sw         $ra, 0x44($sp)
/* FAE84 80051974 AFB60040 */  sw         $s6, 0x40($sp)
/* FAE88 80051978 AFB5003C */  sw         $s5, 0x3c($sp)
/* FAE8C 8005197C AFB40038 */  sw         $s4, 0x38($sp)
/* FAE90 80051980 AFB30034 */  sw         $s3, 0x34($sp)
/* FAE94 80051984 AFB20030 */  sw         $s2, 0x30($sp)
/* FAE98 80051988 AFB1002C */  sw         $s1, 0x2c($sp)
/* FAE9C 8005198C AFB00028 */  sw         $s0, 0x28($sp)
/* FAEA0 80051990 3C058007 */  lui        $a1, %hi(D_8006A238_113748)
/* FAEA4 80051994 24A5A238 */  addiu      $a1, $a1, %lo(D_8006A238_113748)
/* FAEA8 80051998 88A20000 */  lwl        $v0, ($a1)
/* FAEAC 8005199C 98A20003 */  lwr        $v0, 3($a1)
/* FAEB0 800519A0 88A30004 */  lwl        $v1, 4($a1)
/* FAEB4 800519A4 98A30007 */  lwr        $v1, 7($a1)
/* FAEB8 800519A8 88A40008 */  lwl        $a0, 8($a1)
/* FAEBC 800519AC 98A4000B */  lwr        $a0, 0xb($a1)
/* FAEC0 800519B0 ABA20018 */  swl        $v0, 0x18($sp)
/* FAEC4 800519B4 BBA2001B */  swr        $v0, 0x1b($sp)
/* FAEC8 800519B8 ABA3001C */  swl        $v1, 0x1c($sp)
/* FAECC 800519BC BBA3001F */  swr        $v1, 0x1f($sp)
/* FAED0 800519C0 ABA40020 */  swl        $a0, 0x20($sp)
/* FAED4 800519C4 BBA40023 */  swr        $a0, 0x23($sp)
/* FAED8 800519C8 0C00E109 */  jal        func_80038424_E1934
/* FAEDC 800519CC 0000A021 */   addu      $s4, $zero, $zero
/* FAEE0 800519D0 24040011 */  addiu      $a0, $zero, 0x11
/* FAEE4 800519D4 24050001 */  addiu      $a1, $zero, 1
/* FAEE8 800519D8 0C00D925 */  jal        func_80036494_DF9A4
/* FAEEC 800519DC 24060036 */   addiu     $a2, $zero, 0x36
/* FAEF0 800519E0 00409821 */  addu       $s3, $v0, $zero
/* FAEF4 800519E4 8E64000C */  lw         $a0, 0xc($s3)
/* FAEF8 800519E8 24050038 */  addiu      $a1, $zero, 0x38
/* FAEFC 800519EC 2406004E */  addiu      $a2, $zero, 0x4e
/* FAF00 800519F0 0C028F9A */  jal        func_800A3E68
/* FAF04 800519F4 2415004A */   addiu     $s5, $zero, 0x4a
/* FAF08 800519F8 8E64000C */  lw         $a0, 0xc($s3)
/* FAF0C 800519FC 24050040 */  addiu      $a1, $zero, 0x40
/* FAF10 80051A00 0C028D89 */  jal        func_800A3624
/* FAF14 80051A04 24060040 */   addiu     $a2, $zero, 0x40
/* FAF18 80051A08 24040259 */  addiu      $a0, $zero, 0x259
/* FAF1C 80051A0C 8E62000C */  lw         $v0, 0xc($s3)
/* FAF20 80051A10 00002821 */  addu       $a1, $zero, $zero
/* FAF24 80051A14 2406004A */  addiu      $a2, $zero, 0x4a
/* FAF28 80051A18 0C00D925 */  jal        func_80036494_DF9A4
/* FAF2C 80051A1C A440001C */   sh        $zero, 0x1c($v0)
/* FAF30 80051A20 8C44000C */  lw         $a0, 0xc($v0)
/* FAF34 80051A24 24050060 */  addiu      $a1, $zero, 0x60
/* FAF38 80051A28 0C028D89 */  jal        func_800A3624
/* FAF3C 80051A2C 240600A0 */   addiu     $a2, $zero, 0xa0
/* FAF40 80051A30 2404025A */  addiu      $a0, $zero, 0x25a
/* FAF44 80051A34 00002821 */  addu       $a1, $zero, $zero
/* FAF48 80051A38 0C00D925 */  jal        func_80036494_DF9A4
/* FAF4C 80051A3C 2406004B */   addiu     $a2, $zero, 0x4b
/* FAF50 80051A40 8C44000C */  lw         $a0, 0xc($v0)
/* FAF54 80051A44 240502C0 */  addiu      $a1, $zero, 0x2c0
/* FAF58 80051A48 0C028D89 */  jal        func_800A3624
/* FAF5C 80051A4C 24060094 */   addiu     $a2, $zero, 0x94
/* FAF60 80051A50 2404025B */  addiu      $a0, $zero, 0x25b
/* FAF64 80051A54 00002821 */  addu       $a1, $zero, $zero
/* FAF68 80051A58 0C00D925 */  jal        func_80036494_DF9A4
/* FAF6C 80051A5C 24060052 */   addiu     $a2, $zero, 0x52
/* FAF70 80051A60 8C44000C */  lw         $a0, 0xc($v0)
/* FAF74 80051A64 240501C0 */  addiu      $a1, $zero, 0x1c0
/* FAF78 80051A68 0C028D89 */  jal        func_800A3624
/* FAF7C 80051A6C 24060134 */   addiu     $a2, $zero, 0x134
/* FAF80 80051A70 24040052 */  addiu      $a0, $zero, 0x52
/* FAF84 80051A74 0C00DD19 */  jal        func_80037464_E0974
/* FAF88 80051A78 24050053 */   addiu     $a1, $zero, 0x53
/* FAF8C 80051A7C 8C44000C */  lw         $a0, 0xc($v0)
/* FAF90 80051A80 24050324 */  addiu      $a1, $zero, 0x324
/* FAF94 80051A84 0C028D89 */  jal        func_800A3624
/* FAF98 80051A88 24060134 */   addiu     $a2, $zero, 0x134
/* FAF9C 80051A8C 2404025C */  addiu      $a0, $zero, 0x25c
/* FAFA0 80051A90 00002821 */  addu       $a1, $zero, $zero
/* FAFA4 80051A94 0C00D925 */  jal        func_80036494_DF9A4
/* FAFA8 80051A98 2406004C */   addiu     $a2, $zero, 0x4c
/* FAFAC 80051A9C 8C44000C */  lw         $a0, 0xc($v0)
/* FAFB0 80051AA0 24050080 */  addiu      $a1, $zero, 0x80
/* FAFB4 80051AA4 0C028D89 */  jal        func_800A3624
/* FAFB8 80051AA8 24060314 */   addiu     $a2, $zero, 0x314
/* FAFBC 80051AAC 2404025D */  addiu      $a0, $zero, 0x25d
/* FAFC0 80051AB0 00002821 */  addu       $a1, $zero, $zero
/* FAFC4 80051AB4 0C00D925 */  jal        func_80036494_DF9A4
/* FAFC8 80051AB8 2406004D */   addiu     $a2, $zero, 0x4d
/* FAFCC 80051ABC 8C44000C */  lw         $a0, 0xc($v0)
/* FAFD0 80051AC0 24050300 */  addiu      $a1, $zero, 0x300
/* FAFD4 80051AC4 0C028D89 */  jal        func_800A3624
/* FAFD8 80051AC8 24060320 */   addiu     $a2, $zero, 0x320
/* FAFDC 80051ACC 2404025E */  addiu      $a0, $zero, 0x25e
/* FAFE0 80051AD0 00002821 */  addu       $a1, $zero, $zero
/* FAFE4 80051AD4 0C00D925 */  jal        func_80036494_DF9A4
/* FAFE8 80051AD8 2406004E */   addiu     $a2, $zero, 0x4e
/* FAFEC 80051ADC 8C44000C */  lw         $a0, 0xc($v0)
/* FAFF0 80051AE0 24050420 */  addiu      $a1, $zero, 0x420
/* FAFF4 80051AE4 0C028D89 */  jal        func_800A3624
/* FAFF8 80051AE8 24060320 */   addiu     $a2, $zero, 0x320
/* FAFFC 80051AEC 2404025F */  addiu      $a0, $zero, 0x25f
/* FB000 80051AF0 00002821 */  addu       $a1, $zero, $zero
/* FB004 80051AF4 0C00D925 */  jal        func_80036494_DF9A4
/* FB008 80051AF8 2406004F */   addiu     $a2, $zero, 0x4f
/* FB00C 80051AFC 8C44000C */  lw         $a0, 0xc($v0)
/* FB010 80051B00 24050420 */  addiu      $a1, $zero, 0x420
/* FB014 80051B04 0C028D89 */  jal        func_800A3624
/* FB018 80051B08 24060320 */   addiu     $a2, $zero, 0x320
/* FB01C 80051B0C 24040260 */  addiu      $a0, $zero, 0x260
/* FB020 80051B10 00002821 */  addu       $a1, $zero, $zero
/* FB024 80051B14 0C00D925 */  jal        func_80036494_DF9A4
/* FB028 80051B18 24060050 */   addiu     $a2, $zero, 0x50
/* FB02C 80051B1C 8C44000C */  lw         $a0, 0xc($v0)
/* FB030 80051B20 24050420 */  addiu      $a1, $zero, 0x420
/* FB034 80051B24 0C028D89 */  jal        func_800A3624
/* FB038 80051B28 24060320 */   addiu     $a2, $zero, 0x320
/* FB03C 80051B2C 24040261 */  addiu      $a0, $zero, 0x261
/* FB040 80051B30 00002821 */  addu       $a1, $zero, $zero
/* FB044 80051B34 0C00D925 */  jal        func_80036494_DF9A4
/* FB048 80051B38 24060051 */   addiu     $a2, $zero, 0x51
/* FB04C 80051B3C 8C44000C */  lw         $a0, 0xc($v0)
/* FB050 80051B40 24050420 */  addiu      $a1, $zero, 0x420
/* FB054 80051B44 0C028D89 */  jal        func_800A3624
/* FB058 80051B48 24060320 */   addiu     $a2, $zero, 0x320
/* FB05C 80051B4C 24040262 */  addiu      $a0, $zero, 0x262
.L80051B50:
/* FB060 80051B50 24050001 */  addiu      $a1, $zero, 1
/* FB064 80051B54 3290FFFF */  andi       $s0, $s4, 0xffff
/* FB068 80051B58 001088C0 */  sll        $s1, $s0, 3
/* FB06C 80051B5C 02308823 */  subu       $s1, $s1, $s0
/* FB070 80051B60 26260054 */  addiu      $a2, $s1, 0x54
/* FB074 80051B64 0C00D925 */  jal        func_80036494_DF9A4
/* FB078 80051B68 30C6FFFF */   andi      $a2, $a2, 0xffff
/* FB07C 80051B6C 00409821 */  addu       $s3, $v0, $zero
/* FB080 80051B70 00108040 */  sll        $s0, $s0, 1
/* FB084 80051B74 27B60010 */  addiu      $s6, $sp, 0x10
/* FB088 80051B78 02168021 */  addu       $s0, $s0, $s6
/* FB08C 80051B7C 96120008 */  lhu        $s2, 8($s0)
/* FB090 80051B80 8E64000C */  lw         $a0, 0xc($s3)
/* FB094 80051B84 24060134 */  addiu      $a2, $zero, 0x134
/* FB098 80051B88 26500015 */  addiu      $s0, $s2, 0x15
/* FB09C 80051B8C 00108480 */  sll        $s0, $s0, 0x12
/* FB0A0 80051B90 00108403 */  sra        $s0, $s0, 0x10
/* FB0A4 80051B94 0C028D89 */  jal        func_800A3624
/* FB0A8 80051B98 02002821 */   addu      $a1, $s0, $zero
/* FB0AC 80051B9C 24040054 */  addiu      $a0, $zero, 0x54
/* FB0B0 80051BA0 8E62000C */  lw         $v0, 0xc($s3)
/* FB0B4 80051BA4 26250057 */  addiu      $a1, $s1, 0x57
/* FB0B8 80051BA8 30A5FFFF */  andi       $a1, $a1, 0xffff
/* FB0BC 80051BAC 0C00DD19 */  jal        func_80037464_E0974
/* FB0C0 80051BB0 A455001C */   sh        $s5, 0x1c($v0)
/* FB0C4 80051BB4 00409821 */  addu       $s3, $v0, $zero
/* FB0C8 80051BB8 8E64000C */  lw         $a0, 0xc($s3)
/* FB0CC 80051BBC 02002821 */  addu       $a1, $s0, $zero
/* FB0D0 80051BC0 0C028D89 */  jal        func_800A3624
/* FB0D4 80051BC4 240601CC */   addiu     $a2, $zero, 0x1cc
/* FB0D8 80051BC8 8E62000C */  lw         $v0, 0xc($s3)
/* FB0DC 80051BCC A455001C */  sh         $s5, 0x1c($v0)
/* FB0E0 80051BD0 8E62000C */  lw         $v0, 0xc($s3)
/* FB0E4 80051BD4 24040054 */  addiu      $a0, $zero, 0x54
/* FB0E8 80051BD8 8C420000 */  lw         $v0, ($v0)
/* FB0EC 80051BDC 2625005A */  addiu      $a1, $s1, 0x5a
/* FB0F0 80051BE0 30A5FFFF */  andi       $a1, $a1, 0xffff
/* FB0F4 80051BE4 0C00DD19 */  jal        func_80037464_E0974
/* FB0F8 80051BE8 A040002F */   sb        $zero, 0x2f($v0)
/* FB0FC 80051BEC 00409821 */  addu       $s3, $v0, $zero
/* FB100 80051BF0 8E64000C */  lw         $a0, 0xc($s3)
/* FB104 80051BF4 02002821 */  addu       $a1, $s0, $zero
/* FB108 80051BF8 0C028D89 */  jal        func_800A3624
/* FB10C 80051BFC 2406026C */   addiu     $a2, $zero, 0x26c
/* FB110 80051C00 8E62000C */  lw         $v0, 0xc($s3)
/* FB114 80051C04 A455001C */  sh         $s5, 0x1c($v0)
/* FB118 80051C08 8E62000C */  lw         $v0, 0xc($s3)
/* FB11C 80051C0C 24040263 */  addiu      $a0, $zero, 0x263
/* FB120 80051C10 24050001 */  addiu      $a1, $zero, 1
/* FB124 80051C14 8C420000 */  lw         $v0, ($v0)
/* FB128 80051C18 26260055 */  addiu      $a2, $s1, 0x55
/* FB12C 80051C1C 30C6FFFF */  andi       $a2, $a2, 0xffff
/* FB130 80051C20 0C00D925 */  jal        func_80036494_DF9A4
/* FB134 80051C24 A040002F */   sb        $zero, 0x2f($v0)
/* FB138 80051C28 00409821 */  addu       $s3, $v0, $zero
/* FB13C 80051C2C 8E64000C */  lw         $a0, 0xc($s3)
/* FB140 80051C30 26500010 */  addiu      $s0, $s2, 0x10
/* FB144 80051C34 00108480 */  sll        $s0, $s0, 0x12
/* FB148 80051C38 00108403 */  sra        $s0, $s0, 0x10
/* FB14C 80051C3C 02002821 */  addu       $a1, $s0, $zero
/* FB150 80051C40 0C028D89 */  jal        func_800A3624
/* FB154 80051C44 2406014C */   addiu     $a2, $zero, 0x14c
/* FB158 80051C48 24040055 */  addiu      $a0, $zero, 0x55
/* FB15C 80051C4C 8E62000C */  lw         $v0, 0xc($s3)
/* FB160 80051C50 26250056 */  addiu      $a1, $s1, 0x56
/* FB164 80051C54 30A5FFFF */  andi       $a1, $a1, 0xffff
/* FB168 80051C58 0C00DD19 */  jal        func_80037464_E0974
/* FB16C 80051C5C A455001C */   sh        $s5, 0x1c($v0)
/* FB170 80051C60 00409821 */  addu       $s3, $v0, $zero
/* FB174 80051C64 8E64000C */  lw         $a0, 0xc($s3)
/* FB178 80051C68 2652002B */  addiu      $s2, $s2, 0x2b
/* FB17C 80051C6C 00129480 */  sll        $s2, $s2, 0x12
/* FB180 80051C70 00129403 */  sra        $s2, $s2, 0x10
/* FB184 80051C74 02402821 */  addu       $a1, $s2, $zero
/* FB188 80051C78 0C028D89 */  jal        func_800A3624
/* FB18C 80051C7C 2406014C */   addiu     $a2, $zero, 0x14c
/* FB190 80051C80 8E62000C */  lw         $v0, 0xc($s3)
/* FB194 80051C84 A455001C */  sh         $s5, 0x1c($v0)
/* FB198 80051C88 8E62000C */  lw         $v0, 0xc($s3)
/* FB19C 80051C8C 24040055 */  addiu      $a0, $zero, 0x55
/* FB1A0 80051C90 8C420000 */  lw         $v0, ($v0)
/* FB1A4 80051C94 26250058 */  addiu      $a1, $s1, 0x58
/* FB1A8 80051C98 30A5FFFF */  andi       $a1, $a1, 0xffff
/* FB1AC 80051C9C 0C00DD19 */  jal        func_80037464_E0974
/* FB1B0 80051CA0 A040002F */   sb        $zero, 0x2f($v0)
/* FB1B4 80051CA4 00409821 */  addu       $s3, $v0, $zero
/* FB1B8 80051CA8 8E64000C */  lw         $a0, 0xc($s3)
/* FB1BC 80051CAC 02002821 */  addu       $a1, $s0, $zero
/* FB1C0 80051CB0 0C028D89 */  jal        func_800A3624
/* FB1C4 80051CB4 240601E8 */   addiu     $a2, $zero, 0x1e8
/* FB1C8 80051CB8 8E62000C */  lw         $v0, 0xc($s3)
/* FB1CC 80051CBC A455001C */  sh         $s5, 0x1c($v0)
/* FB1D0 80051CC0 8E62000C */  lw         $v0, 0xc($s3)
/* FB1D4 80051CC4 24040055 */  addiu      $a0, $zero, 0x55
/* FB1D8 80051CC8 8C420000 */  lw         $v0, ($v0)
/* FB1DC 80051CCC 26310059 */  addiu      $s1, $s1, 0x59
/* FB1E0 80051CD0 3225FFFF */  andi       $a1, $s1, 0xffff
/* FB1E4 80051CD4 0C00DD19 */  jal        func_80037464_E0974
/* FB1E8 80051CD8 A040002F */   sb        $zero, 0x2f($v0)
/* FB1EC 80051CDC 00409821 */  addu       $s3, $v0, $zero
/* FB1F0 80051CE0 8E64000C */  lw         $a0, 0xc($s3)
/* FB1F4 80051CE4 02402821 */  addu       $a1, $s2, $zero
/* FB1F8 80051CE8 0C028D89 */  jal        func_800A3624
/* FB1FC 80051CEC 240601E8 */   addiu     $a2, $zero, 0x1e8
/* FB200 80051CF0 8E62000C */  lw         $v0, 0xc($s3)
/* FB204 80051CF4 A455001C */  sh         $s5, 0x1c($v0)
/* FB208 80051CF8 8E62000C */  lw         $v0, 0xc($s3)
/* FB20C 80051CFC 8C420000 */  lw         $v0, ($v0)
/* FB210 80051D00 26940001 */  addiu      $s4, $s4, 1
/* FB214 80051D04 A040002F */  sb         $zero, 0x2f($v0)
/* FB218 80051D08 3282FFFF */  andi       $v0, $s4, 0xffff
/* FB21C 80051D0C 2C420006 */  sltiu      $v0, $v0, 6
/* FB220 80051D10 1440FF8F */  bnez       $v0, .L80051B50
/* FB224 80051D14 24040262 */   addiu     $a0, $zero, 0x262
/* FB228 80051D18 02C02021 */  addu       $a0, $s6, $zero
/* FB22C 80051D1C 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FB230 80051D20 24060003 */  addiu      $a2, $zero, 3
/* FB234 80051D24 3C028007 */  lui        $v0, %hi(D_8006955C_112A6C)
/* FB238 80051D28 2442955C */  addiu      $v0, $v0, %lo(D_8006955C_112A6C)
/* FB23C 80051D2C AFA20010 */  sw         $v0, 0x10($sp)
/* FB240 80051D30 2402FFFE */  addiu      $v0, $zero, -2
/* FB244 80051D34 A3A20014 */  sb         $v0, 0x14($sp)
/* FB248 80051D38 24020001 */  addiu      $v0, $zero, 1
/* FB24C 80051D3C A3A20016 */  sb         $v0, 0x16($sp)
/* FB250 80051D40 24020003 */  addiu      $v0, $zero, 3
/* FB254 80051D44 A3A00015 */  sb         $zero, 0x15($sp)
/* FB258 80051D48 0C00DE82 */  jal        func_80037A08_E0F18
/* FB25C 80051D4C A3A20017 */   sb        $v0, 0x17($sp)
/* FB260 80051D50 8FBF0044 */  lw         $ra, 0x44($sp)
/* FB264 80051D54 8FB60040 */  lw         $s6, 0x40($sp)
/* FB268 80051D58 8FB5003C */  lw         $s5, 0x3c($sp)
/* FB26C 80051D5C 8FB40038 */  lw         $s4, 0x38($sp)
/* FB270 80051D60 8FB30034 */  lw         $s3, 0x34($sp)
/* FB274 80051D64 8FB20030 */  lw         $s2, 0x30($sp)
/* FB278 80051D68 8FB1002C */  lw         $s1, 0x2c($sp)
/* FB27C 80051D6C 8FB00028 */  lw         $s0, 0x28($sp)
/* FB280 80051D70 03E00008 */  jr         $ra
/* FB284 80051D74 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80051D78_FB288
/* FB288 80051D78 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FB28C 80051D7C 3C048033 */  lui        $a0, 0x8033
/* FB290 80051D80 34845040 */  ori        $a0, $a0, 0x5040
/* FB294 80051D84 2405013E */  addiu      $a1, $zero, 0x13e
/* FB298 80051D88 24060009 */  addiu      $a2, $zero, 9
/* FB29C 80051D8C 24070036 */  addiu      $a3, $zero, 0x36
/* FB2A0 80051D90 AFBF0034 */  sw         $ra, 0x34($sp)
/* FB2A4 80051D94 AFB40030 */  sw         $s4, 0x30($sp)
/* FB2A8 80051D98 AFB3002C */  sw         $s3, 0x2c($sp)
/* FB2AC 80051D9C AFB20028 */  sw         $s2, 0x28($sp)
/* FB2B0 80051DA0 AFB10024 */  sw         $s1, 0x24($sp)
/* FB2B4 80051DA4 0C00D9E0 */  jal        func_80036780_DFC90
/* FB2B8 80051DA8 AFB00020 */   sw        $s0, 0x20($sp)
/* FB2BC 80051DAC 8C44000C */  lw         $a0, 0xc($v0)
/* FB2C0 80051DB0 24050040 */  addiu      $a1, $zero, 0x40
/* FB2C4 80051DB4 240600C0 */  addiu      $a2, $zero, 0xc0
/* FB2C8 80051DB8 0C028D89 */  jal        func_800A3624
/* FB2CC 80051DBC 00008021 */   addu      $s0, $zero, $zero
/* FB2D0 80051DC0 320600FF */  andi       $a2, $s0, 0xff
.L80051DC4:
/* FB2D4 80051DC4 24C4013B */  addiu      $a0, $a2, 0x13b
/* FB2D8 80051DC8 24050001 */  addiu      $a1, $zero, 1
/* FB2DC 80051DCC 0C00D925 */  jal        func_80036494_DF9A4
/* FB2E0 80051DD0 24C60018 */   addiu     $a2, $a2, 0x18
/* FB2E4 80051DD4 8C44000C */  lw         $a0, 0xc($v0)
/* FB2E8 80051DD8 24050260 */  addiu      $a1, $zero, 0x260
/* FB2EC 80051DDC 24060240 */  addiu      $a2, $zero, 0x240
/* FB2F0 80051DE0 0C028D89 */  jal        func_800A3624
/* FB2F4 80051DE4 26100001 */   addiu     $s0, $s0, 1
/* FB2F8 80051DE8 320200FF */  andi       $v0, $s0, 0xff
/* FB2FC 80051DEC 2C420003 */  sltiu      $v0, $v0, 3
/* FB300 80051DF0 1440FFF4 */  bnez       $v0, .L80051DC4
/* FB304 80051DF4 320600FF */   andi      $a2, $s0, 0xff
/* FB308 80051DF8 3C048007 */  lui        $a0, %hi(D_80069570_112A80)
/* FB30C 80051DFC 24849570 */  addiu      $a0, $a0, %lo(D_80069570_112A80)
/* FB310 80051E00 2405FFFE */  addiu      $a1, $zero, -2
/* FB314 80051E04 2412FFFE */  addiu      $s2, $zero, -2
/* FB318 80051E08 24110001 */  addiu      $s1, $zero, 1
/* FB31C 80051E0C 24140002 */  addiu      $s4, $zero, 2
/* FB320 80051E10 AFA40018 */  sw         $a0, 0x18($sp)
/* FB324 80051E14 A3B2001C */  sb         $s2, 0x1c($sp)
/* FB328 80051E18 A3A0001D */  sb         $zero, 0x1d($sp)
/* FB32C 80051E1C A3B1001E */  sb         $s1, 0x1e($sp)
/* FB330 80051E20 0C029D2A */  jal        func_800A74A8
/* FB334 80051E24 A3B4001F */   sb        $s4, 0x1f($sp)
/* FB338 80051E28 27A40018 */  addiu      $a0, $sp, 0x18
/* FB33C 80051E2C 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FB340 80051E30 240620D3 */  addiu      $a2, $zero, 0x20d3
/* FB344 80051E34 00023FC2 */  srl        $a3, $v0, 0x1f
/* FB348 80051E38 00E23821 */  addu       $a3, $a3, $v0
/* FB34C 80051E3C 00073843 */  sra        $a3, $a3, 1
/* FB350 80051E40 241000A0 */  addiu      $s0, $zero, 0xa0
/* FB354 80051E44 02073823 */  subu       $a3, $s0, $a3
/* FB358 80051E48 00073C00 */  sll        $a3, $a3, 0x10
/* FB35C 80051E4C 00073C03 */  sra        $a3, $a3, 0x10
/* FB360 80051E50 241300A7 */  addiu      $s3, $zero, 0xa7
/* FB364 80051E54 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FB368 80051E58 AFB30010 */   sw        $s3, 0x10($sp)
/* FB36C 80051E5C 3C048007 */  lui        $a0, %hi(D_80069580_112A90)
/* FB370 80051E60 24849580 */  addiu      $a0, $a0, %lo(D_80069580_112A90)
/* FB374 80051E64 2405FFFE */  addiu      $a1, $zero, -2
/* FB378 80051E68 AFA40018 */  sw         $a0, 0x18($sp)
/* FB37C 80051E6C A3B2001C */  sb         $s2, 0x1c($sp)
/* FB380 80051E70 A3A0001D */  sb         $zero, 0x1d($sp)
/* FB384 80051E74 A3B1001E */  sb         $s1, 0x1e($sp)
/* FB388 80051E78 0C029D2A */  jal        func_800A74A8
/* FB38C 80051E7C A3B4001F */   sb        $s4, 0x1f($sp)
/* FB390 80051E80 27A40018 */  addiu      $a0, $sp, 0x18
/* FB394 80051E84 240520CA */  addiu      $a1, $zero, 0x20ca
/* FB398 80051E88 240620D4 */  addiu      $a2, $zero, 0x20d4
/* FB39C 80051E8C 00021FC2 */  srl        $v1, $v0, 0x1f
/* FB3A0 80051E90 00621821 */  addu       $v1, $v1, $v0
/* FB3A4 80051E94 00031843 */  sra        $v1, $v1, 1
/* FB3A8 80051E98 02038023 */  subu       $s0, $s0, $v1
/* FB3AC 80051E9C 00108400 */  sll        $s0, $s0, 0x10
/* FB3B0 80051EA0 00103C03 */  sra        $a3, $s0, 0x10
/* FB3B4 80051EA4 0C00DEF7 */  jal        func_80037BDC_E10EC
/* FB3B8 80051EA8 AFB30010 */   sw        $s3, 0x10($sp)
/* FB3BC 80051EAC 27A40018 */  addiu      $a0, $sp, 0x18
/* FB3C0 80051EB0 240520CB */  addiu      $a1, $zero, 0x20cb
/* FB3C4 80051EB4 24060002 */  addiu      $a2, $zero, 2
/* FB3C8 80051EB8 3C028007 */  lui        $v0, %hi(D_800695B0_112AC0)
/* FB3CC 80051EBC 244295B0 */  addiu      $v0, $v0, %lo(D_800695B0_112AC0)
/* FB3D0 80051EC0 AFA20018 */  sw         $v0, 0x18($sp)
/* FB3D4 80051EC4 24020003 */  addiu      $v0, $zero, 3
/* FB3D8 80051EC8 A3B2001C */  sb         $s2, 0x1c($sp)
/* FB3DC 80051ECC A3A0001D */  sb         $zero, 0x1d($sp)
/* FB3E0 80051ED0 A3B1001E */  sb         $s1, 0x1e($sp)
/* FB3E4 80051ED4 0C00DE82 */  jal        func_80037A08_E0F18
/* FB3E8 80051ED8 A3A2001F */   sb        $v0, 0x1f($sp)
/* FB3EC 80051EDC 8FBF0034 */  lw         $ra, 0x34($sp)
/* FB3F0 80051EE0 8FB40030 */  lw         $s4, 0x30($sp)
/* FB3F4 80051EE4 8FB3002C */  lw         $s3, 0x2c($sp)
/* FB3F8 80051EE8 8FB20028 */  lw         $s2, 0x28($sp)
/* FB3FC 80051EEC 8FB10024 */  lw         $s1, 0x24($sp)
/* FB400 80051EF0 8FB00020 */  lw         $s0, 0x20($sp)
/* FB404 80051EF4 03E00008 */  jr         $ra
/* FB408 80051EF8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80051EFC_FB40C
/* FB40C 80051EFC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FB410 80051F00 AFBF002C */  sw         $ra, 0x2c($sp)
/* FB414 80051F04 AFB40028 */  sw         $s4, 0x28($sp)
/* FB418 80051F08 AFB30024 */  sw         $s3, 0x24($sp)
/* FB41C 80051F0C AFB20020 */  sw         $s2, 0x20($sp)
/* FB420 80051F10 AFB1001C */  sw         $s1, 0x1c($sp)
/* FB424 80051F14 0C00E109 */  jal        func_80038424_E1934
/* FB428 80051F18 AFB00018 */   sw        $s0, 0x18($sp)
/* FB42C 80051F1C 3C04802F */  lui        $a0, 0x802f
/* FB430 80051F20 34849800 */  ori        $a0, $a0, 0x9800
/* FB434 80051F24 24050264 */  addiu      $a1, $zero, 0x264
/* FB438 80051F28 24060009 */  addiu      $a2, $zero, 9
/* FB43C 80051F2C 0C00D9E0 */  jal        func_80036780_DFC90
/* FB440 80051F30 2407001B */   addiu     $a3, $zero, 0x1b
/* FB444 80051F34 8C44000C */  lw         $a0, 0xc($v0)
/* FB448 80051F38 24050040 */  addiu      $a1, $zero, 0x40
/* FB44C 80051F3C 240600C0 */  addiu      $a2, $zero, 0xc0
/* FB450 80051F40 0C028D89 */  jal        func_800A3624
/* FB454 80051F44 00008821 */   addu      $s1, $zero, $zero
/* FB458 80051F48 323000FF */  andi       $s0, $s1, 0xff
.L80051F4C:
/* FB45C 80051F4C 00108040 */  sll        $s0, $s0, 1
/* FB460 80051F50 2604026D */  addiu      $a0, $s0, 0x26d
/* FB464 80051F54 24050001 */  addiu      $a1, $zero, 1
/* FB468 80051F58 0C00D925 */  jal        func_80036494_DF9A4
/* FB46C 80051F5C 26060017 */   addiu     $a2, $s0, 0x17
/* FB470 80051F60 8C44000C */  lw         $a0, 0xc($v0)
/* FB474 80051F64 24050100 */  addiu      $a1, $zero, 0x100
/* FB478 80051F68 24060140 */  addiu      $a2, $zero, 0x140
/* FB47C 80051F6C 0C028D89 */  jal        func_800A3624
/* FB480 80051F70 26310001 */   addiu     $s1, $s1, 1
/* FB484 80051F74 2604026E */  addiu      $a0, $s0, 0x26e
/* FB488 80051F78 24050001 */  addiu      $a1, $zero, 1
/* FB48C 80051F7C 0C00D925 */  jal        func_80036494_DF9A4
/* FB490 80051F80 26060018 */   addiu     $a2, $s0, 0x18
/* FB494 80051F84 8C44000C */  lw         $a0, 0xc($v0)
/* FB498 80051F88 24050240 */  addiu      $a1, $zero, 0x240
/* FB49C 80051F8C 0C028D89 */  jal        func_800A3624
/* FB4A0 80051F90 24060180 */   addiu     $a2, $zero, 0x180
/* FB4A4 80051F94 322200FF */  andi       $v0, $s1, 0xff
/* FB4A8 80051F98 2C420002 */  sltiu      $v0, $v0, 2
/* FB4AC 80051F9C 1440FFEB */  bnez       $v0, .L80051F4C
/* FB4B0 80051FA0 323000FF */   andi      $s0, $s1, 0xff
/* FB4B4 80051FA4 27A40010 */  addiu      $a0, $sp, 0x10
/* FB4B8 80051FA8 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FB4BC 80051FAC 00003021 */  addu       $a2, $zero, $zero
/* FB4C0 80051FB0 3C028007 */  lui        $v0, %hi(D_800695C8_112AD8)
/* FB4C4 80051FB4 244295C8 */  addiu      $v0, $v0, %lo(D_800695C8_112AD8)
/* FB4C8 80051FB8 2413FFFE */  addiu      $s3, $zero, -2
/* FB4CC 80051FBC 24120001 */  addiu      $s2, $zero, 1
/* FB4D0 80051FC0 24110003 */  addiu      $s1, $zero, 3
/* FB4D4 80051FC4 AFA20010 */  sw         $v0, 0x10($sp)
/* FB4D8 80051FC8 A3B30014 */  sb         $s3, 0x14($sp)
/* FB4DC 80051FCC A3A00015 */  sb         $zero, 0x15($sp)
/* FB4E0 80051FD0 A3B20016 */  sb         $s2, 0x16($sp)
/* FB4E4 80051FD4 0C00DE82 */  jal        func_80037A08_E0F18
/* FB4E8 80051FD8 A3B10017 */   sb        $s1, 0x17($sp)
/* FB4EC 80051FDC 0C00D8C1 */  jal        func_80036304_DF814
/* FB4F0 80051FE0 240420C9 */   addiu     $a0, $zero, 0x20c9
/* FB4F4 80051FE4 0040A021 */  addu       $s4, $v0, $zero
/* FB4F8 80051FE8 8E84000C */  lw         $a0, 0xc($s4)
/* FB4FC 80051FEC 8C82000C */  lw         $v0, 0xc($a0)
/* FB500 80051FF0 94450000 */  lhu        $a1, ($v0)
/* FB504 80051FF4 240601B0 */  addiu      $a2, $zero, 0x1b0
/* FB508 80051FF8 241000A0 */  addiu      $s0, $zero, 0xa0
/* FB50C 80051FFC 00052842 */  srl        $a1, $a1, 1
/* FB510 80052000 02052823 */  subu       $a1, $s0, $a1
/* FB514 80052004 00052C80 */  sll        $a1, $a1, 0x12
/* FB518 80052008 0C028D89 */  jal        func_800A3624
/* FB51C 8005200C 00052C03 */   sra       $a1, $a1, 0x10
/* FB520 80052010 8E83000C */  lw         $v1, 0xc($s4)
/* FB524 80052014 240420D3 */  addiu      $a0, $zero, 0x20d3
/* FB528 80052018 2402003E */  addiu      $v0, $zero, 0x3e
/* FB52C 8005201C 0C00D8C1 */  jal        func_80036304_DF814
/* FB530 80052020 A462001C */   sh        $v0, 0x1c($v1)
/* FB534 80052024 0040A021 */  addu       $s4, $v0, $zero
/* FB538 80052028 8E84000C */  lw         $a0, 0xc($s4)
/* FB53C 8005202C 8C82000C */  lw         $v0, 0xc($a0)
/* FB540 80052030 94420000 */  lhu        $v0, ($v0)
/* FB544 80052034 240601B0 */  addiu      $a2, $zero, 0x1b0
/* FB548 80052038 00021042 */  srl        $v0, $v0, 1
/* FB54C 8005203C 02028023 */  subu       $s0, $s0, $v0
/* FB550 80052040 00108480 */  sll        $s0, $s0, 0x12
/* FB554 80052044 0C028D89 */  jal        func_800A3624
/* FB558 80052048 00102C03 */   sra       $a1, $s0, 0x10
/* FB55C 8005204C 27A40010 */  addiu      $a0, $sp, 0x10
/* FB560 80052050 240520CA */  addiu      $a1, $zero, 0x20ca
/* FB564 80052054 8E83000C */  lw         $v1, 0xc($s4)
/* FB568 80052058 24060002 */  addiu      $a2, $zero, 2
/* FB56C 8005205C 2402003D */  addiu      $v0, $zero, 0x3d
/* FB570 80052060 A462001C */  sh         $v0, 0x1c($v1)
/* FB574 80052064 3C028007 */  lui        $v0, %hi(D_800695D8_112AE8)
/* FB578 80052068 244295D8 */  addiu      $v0, $v0, %lo(D_800695D8_112AE8)
/* FB57C 8005206C AFA20010 */  sw         $v0, 0x10($sp)
/* FB580 80052070 A3B30014 */  sb         $s3, 0x14($sp)
/* FB584 80052074 A3A00015 */  sb         $zero, 0x15($sp)
/* FB588 80052078 A3B20016 */  sb         $s2, 0x16($sp)
/* FB58C 8005207C 0C00DE82 */  jal        func_80037A08_E0F18
/* FB590 80052080 A3B10017 */   sb        $s1, 0x17($sp)
/* FB594 80052084 8FBF002C */  lw         $ra, 0x2c($sp)
/* FB598 80052088 8FB40028 */  lw         $s4, 0x28($sp)
/* FB59C 8005208C 8FB30024 */  lw         $s3, 0x24($sp)
/* FB5A0 80052090 8FB20020 */  lw         $s2, 0x20($sp)
/* FB5A4 80052094 8FB1001C */  lw         $s1, 0x1c($sp)
/* FB5A8 80052098 8FB00018 */  lw         $s0, 0x18($sp)
/* FB5AC 8005209C 03E00008 */  jr         $ra
/* FB5B0 800520A0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800520A4_FB5B4
/* FB5B4 800520A4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FB5B8 800520A8 AFBF0024 */  sw         $ra, 0x24($sp)
/* FB5BC 800520AC AFB20020 */  sw         $s2, 0x20($sp)
/* FB5C0 800520B0 AFB1001C */  sw         $s1, 0x1c($sp)
/* FB5C4 800520B4 0C00E109 */  jal        func_80038424_E1934
/* FB5C8 800520B8 AFB00018 */   sw        $s0, 0x18($sp)
/* FB5CC 800520BC 24040011 */  addiu      $a0, $zero, 0x11
/* FB5D0 800520C0 24050001 */  addiu      $a1, $zero, 1
/* FB5D4 800520C4 0C00D925 */  jal        func_80036494_DF9A4
/* FB5D8 800520C8 2406001E */   addiu     $a2, $zero, 0x1e
/* FB5DC 800520CC 00408821 */  addu       $s1, $v0, $zero
/* FB5E0 800520D0 8E24000C */  lw         $a0, 0xc($s1)
/* FB5E4 800520D4 24050038 */  addiu      $a1, $zero, 0x38
/* FB5E8 800520D8 24060071 */  addiu      $a2, $zero, 0x71
/* FB5EC 800520DC 0C028F9A */  jal        func_800A3E68
/* FB5F0 800520E0 00009021 */   addu      $s2, $zero, $zero
/* FB5F4 800520E4 8E24000C */  lw         $a0, 0xc($s1)
/* FB5F8 800520E8 24050040 */  addiu      $a1, $zero, 0x40
/* FB5FC 800520EC 0C028D89 */  jal        func_800A3624
/* FB600 800520F0 240600C0 */   addiu     $a2, $zero, 0xc0
/* FB604 800520F4 2404000F */  addiu      $a0, $zero, 0xf
/* FB608 800520F8 24050001 */  addiu      $a1, $zero, 1
/* FB60C 800520FC 0C00D925 */  jal        func_80036494_DF9A4
/* FB610 80052100 2406001C */   addiu     $a2, $zero, 0x1c
/* FB614 80052104 8C44000C */  lw         $a0, 0xc($v0)
/* FB618 80052108 24050038 */  addiu      $a1, $zero, 0x38
/* FB61C 8005210C 0C028F9A */  jal        func_800A3E68
/* FB620 80052110 24060071 */   addiu     $a2, $zero, 0x71
/* FB624 80052114 2404001C */  addiu      $a0, $zero, 0x1c
/* FB628 80052118 0C00DD19 */  jal        func_80037464_E0974
/* FB62C 8005211C 2405001D */   addiu     $a1, $zero, 0x1d
/* FB630 80052120 8C44000C */  lw         $a0, 0xc($v0)
/* FB634 80052124 24050038 */  addiu      $a1, $zero, 0x38
/* FB638 80052128 0C028F9A */  jal        func_800A3E68
/* FB63C 8005212C 24060071 */   addiu     $a2, $zero, 0x71
/* FB640 80052130 24040271 */  addiu      $a0, $zero, 0x271
/* FB644 80052134 24050002 */  addiu      $a1, $zero, 2
/* FB648 80052138 0C00D925 */  jal        func_80036494_DF9A4
/* FB64C 8005213C 24060024 */   addiu     $a2, $zero, 0x24
/* FB650 80052140 8C44000C */  lw         $a0, 0xc($v0)
/* FB654 80052144 24050040 */  addiu      $a1, $zero, 0x40
/* FB658 80052148 0C028D89 */  jal        func_800A3624
/* FB65C 8005214C 240600C0 */   addiu     $a2, $zero, 0xc0
/* FB660 80052150 325000FF */  andi       $s0, $s2, 0xff
.L80052154:
/* FB664 80052154 26040272 */  addiu      $a0, $s0, 0x272
/* FB668 80052158 24050002 */  addiu      $a1, $zero, 2
/* FB66C 8005215C 0C00D925 */  jal        func_80036494_DF9A4
/* FB670 80052160 2606001F */   addiu     $a2, $s0, 0x1f
/* FB674 80052164 00408821 */  addu       $s1, $v0, $zero
/* FB678 80052168 8E24000C */  lw         $a0, 0xc($s1)
/* FB67C 8005216C 24050040 */  addiu      $a1, $zero, 0x40
/* FB680 80052170 0C028D89 */  jal        func_800A3624
/* FB684 80052174 240600C0 */   addiu     $a2, $zero, 0xc0
/* FB688 80052178 8E22000C */  lw         $v0, 0xc($s1)
/* FB68C 8005217C 26520001 */  addiu      $s2, $s2, 1
/* FB690 80052180 26100040 */  addiu      $s0, $s0, 0x40
/* FB694 80052184 A450001C */  sh         $s0, 0x1c($v0)
/* FB698 80052188 324200FF */  andi       $v0, $s2, 0xff
/* FB69C 8005218C 2C420005 */  sltiu      $v0, $v0, 5
/* FB6A0 80052190 1440FFF0 */  bnez       $v0, .L80052154
/* FB6A4 80052194 325000FF */   andi      $s0, $s2, 0xff
/* FB6A8 80052198 2404049A */  addiu      $a0, $zero, 0x49a
/* FB6AC 8005219C 24050002 */  addiu      $a1, $zero, 2
/* FB6B0 800521A0 0C00D925 */  jal        func_80036494_DF9A4
/* FB6B4 800521A4 240620CB */   addiu     $a2, $zero, 0x20cb
/* FB6B8 800521A8 00408821 */  addu       $s1, $v0, $zero
/* FB6BC 800521AC 8E24000C */  lw         $a0, 0xc($s1)
/* FB6C0 800521B0 8C82000C */  lw         $v0, 0xc($a0)
/* FB6C4 800521B4 94460002 */  lhu        $a2, 2($v0)
/* FB6C8 800521B8 00002821 */  addu       $a1, $zero, $zero
/* FB6CC 800521BC 0C02912A */  jal        func_800A44A8
/* FB6D0 800521C0 00063042 */   srl       $a2, $a2, 1
/* FB6D4 800521C4 8E22000C */  lw         $v0, 0xc($s1)
/* FB6D8 800521C8 2410004B */  addiu      $s0, $zero, 0x4b
/* FB6DC 800521CC A450001C */  sh         $s0, 0x1c($v0)
/* FB6E0 800521D0 8E23000C */  lw         $v1, 0xc($s1)
/* FB6E4 800521D4 240404AD */  addiu      $a0, $zero, 0x4ad
/* FB6E8 800521D8 9462001E */  lhu        $v0, 0x1e($v1)
/* FB6EC 800521DC 24050002 */  addiu      $a1, $zero, 2
/* FB6F0 800521E0 240620CC */  addiu      $a2, $zero, 0x20cc
/* FB6F4 800521E4 34420004 */  ori        $v0, $v0, 4
/* FB6F8 800521E8 0C00D925 */  jal        func_80036494_DF9A4
/* FB6FC 800521EC A462001E */   sh        $v0, 0x1e($v1)
/* FB700 800521F0 00408821 */  addu       $s1, $v0, $zero
/* FB704 800521F4 8E24000C */  lw         $a0, 0xc($s1)
/* FB708 800521F8 8C82000C */  lw         $v0, 0xc($a0)
/* FB70C 800521FC 94460002 */  lhu        $a2, 2($v0)
/* FB710 80052200 00002821 */  addu       $a1, $zero, $zero
/* FB714 80052204 0C02912A */  jal        func_800A44A8
/* FB718 80052208 00063042 */   srl       $a2, $a2, 1
/* FB71C 8005220C 8E22000C */  lw         $v0, 0xc($s1)
/* FB720 80052210 A450001C */  sh         $s0, 0x1c($v0)
/* FB724 80052214 8E23000C */  lw         $v1, 0xc($s1)
/* FB728 80052218 2404049B */  addiu      $a0, $zero, 0x49b
/* FB72C 8005221C 9462001E */  lhu        $v0, 0x1e($v1)
/* FB730 80052220 24050002 */  addiu      $a1, $zero, 2
/* FB734 80052224 240620CD */  addiu      $a2, $zero, 0x20cd
/* FB738 80052228 34420004 */  ori        $v0, $v0, 4
/* FB73C 8005222C 0C00D925 */  jal        func_80036494_DF9A4
/* FB740 80052230 A462001E */   sh        $v0, 0x1e($v1)
/* FB744 80052234 00408821 */  addu       $s1, $v0, $zero
/* FB748 80052238 8E24000C */  lw         $a0, 0xc($s1)
/* FB74C 8005223C 8C82000C */  lw         $v0, 0xc($a0)
/* FB750 80052240 94460002 */  lhu        $a2, 2($v0)
/* FB754 80052244 00002821 */  addu       $a1, $zero, $zero
/* FB758 80052248 0C02912A */  jal        func_800A44A8
/* FB75C 8005224C 00063042 */   srl       $a2, $a2, 1
/* FB760 80052250 8E22000C */  lw         $v0, 0xc($s1)
/* FB764 80052254 A450001C */  sh         $s0, 0x1c($v0)
/* FB768 80052258 8E23000C */  lw         $v1, 0xc($s1)
/* FB76C 8005225C 2404049F */  addiu      $a0, $zero, 0x49f
/* FB770 80052260 9462001E */  lhu        $v0, 0x1e($v1)
/* FB774 80052264 24050002 */  addiu      $a1, $zero, 2
/* FB778 80052268 240620CE */  addiu      $a2, $zero, 0x20ce
/* FB77C 8005226C 34420004 */  ori        $v0, $v0, 4
/* FB780 80052270 0C00D925 */  jal        func_80036494_DF9A4
/* FB784 80052274 A462001E */   sh        $v0, 0x1e($v1)
/* FB788 80052278 00408821 */  addu       $s1, $v0, $zero
/* FB78C 8005227C 8E24000C */  lw         $a0, 0xc($s1)
/* FB790 80052280 8C82000C */  lw         $v0, 0xc($a0)
/* FB794 80052284 94460002 */  lhu        $a2, 2($v0)
/* FB798 80052288 00002821 */  addu       $a1, $zero, $zero
/* FB79C 8005228C 0C02912A */  jal        func_800A44A8
/* FB7A0 80052290 00063042 */   srl       $a2, $a2, 1
/* FB7A4 80052294 8E22000C */  lw         $v0, 0xc($s1)
/* FB7A8 80052298 A450001C */  sh         $s0, 0x1c($v0)
/* FB7AC 8005229C 8E23000C */  lw         $v1, 0xc($s1)
/* FB7B0 800522A0 24040499 */  addiu      $a0, $zero, 0x499
/* FB7B4 800522A4 9462001E */  lhu        $v0, 0x1e($v1)
/* FB7B8 800522A8 24050002 */  addiu      $a1, $zero, 2
/* FB7BC 800522AC 240620CF */  addiu      $a2, $zero, 0x20cf
/* FB7C0 800522B0 34420004 */  ori        $v0, $v0, 4
/* FB7C4 800522B4 0C00D925 */  jal        func_80036494_DF9A4
/* FB7C8 800522B8 A462001E */   sh        $v0, 0x1e($v1)
/* FB7CC 800522BC 00408821 */  addu       $s1, $v0, $zero
/* FB7D0 800522C0 8E24000C */  lw         $a0, 0xc($s1)
/* FB7D4 800522C4 8C82000C */  lw         $v0, 0xc($a0)
/* FB7D8 800522C8 94450000 */  lhu        $a1, ($v0)
/* FB7DC 800522CC 00003021 */  addu       $a2, $zero, $zero
/* FB7E0 800522D0 0C02912A */  jal        func_800A44A8
/* FB7E4 800522D4 00052842 */   srl       $a1, $a1, 1
/* FB7E8 800522D8 8E22000C */  lw         $v0, 0xc($s1)
/* FB7EC 800522DC A450001C */  sh         $s0, 0x1c($v0)
/* FB7F0 800522E0 8E23000C */  lw         $v1, 0xc($s1)
/* FB7F4 800522E4 9462001E */  lhu        $v0, 0x1e($v1)
/* FB7F8 800522E8 34420004 */  ori        $v0, $v0, 4
/* FB7FC 800522EC A462001E */  sh         $v0, 0x1e($v1)
/* FB800 800522F0 8FBF0024 */  lw         $ra, 0x24($sp)
/* FB804 800522F4 8FB20020 */  lw         $s2, 0x20($sp)
/* FB808 800522F8 8FB1001C */  lw         $s1, 0x1c($sp)
/* FB80C 800522FC 8FB00018 */  lw         $s0, 0x18($sp)
/* FB810 80052300 03E00008 */  jr         $ra
/* FB814 80052304 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80052308_FB818
/* FB818 80052308 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* FB81C 8005230C AFBF0058 */  sw         $ra, 0x58($sp)
/* FB820 80052310 AFB30054 */  sw         $s3, 0x54($sp)
/* FB824 80052314 AFB20050 */  sw         $s2, 0x50($sp)
/* FB828 80052318 AFB1004C */  sw         $s1, 0x4c($sp)
/* FB82C 8005231C 0C00E109 */  jal        func_80038424_E1934
/* FB830 80052320 AFB00048 */   sw        $s0, 0x48($sp)
/* FB834 80052324 3C04802F */  lui        $a0, 0x802f
/* FB838 80052328 34849800 */  ori        $a0, $a0, 0x9800
/* FB83C 8005232C 240505E8 */  addiu      $a1, $zero, 0x5e8
/* FB840 80052330 24060007 */  addiu      $a2, $zero, 7
/* FB844 80052334 0C00D9E0 */  jal        func_80036780_DFC90
/* FB848 80052338 24070030 */   addiu     $a3, $zero, 0x30
/* FB84C 8005233C 00409021 */  addu       $s2, $v0, $zero
/* FB850 80052340 3C014001 */  lui        $at, 0x4001
/* FB854 80052344 342147AE */  ori        $at, $at, 0x47ae
/* FB858 80052348 44810000 */  mtc1       $at, $f0
/* FB85C 8005234C 8E44000C */  lw         $a0, 0xc($s2)
/* FB860 80052350 44060000 */  mfc1       $a2, $f0
/* FB864 80052354 00002821 */  addu       $a1, $zero, $zero
/* FB868 80052358 0C02915B */  jal        func_800A456C
/* FB86C 8005235C 00C03821 */   addu      $a3, $a2, $zero
/* FB870 80052360 8E44000C */  lw         $a0, 0xc($s2)
/* FB874 80052364 24050040 */  addiu      $a1, $zero, 0x40
/* FB878 80052368 0C028D89 */  jal        func_800A3624
/* FB87C 8005236C 24060040 */   addiu     $a2, $zero, 0x40
/* FB880 80052370 8E43000C */  lw         $v1, 0xc($s2)
/* FB884 80052374 240405FA */  addiu      $a0, $zero, 0x5fa
/* FB888 80052378 9462001E */  lhu        $v0, 0x1e($v1)
/* FB88C 8005237C 24050002 */  addiu      $a1, $zero, 2
/* FB890 80052380 2406002F */  addiu      $a2, $zero, 0x2f
/* FB894 80052384 34420104 */  ori        $v0, $v0, 0x104
/* FB898 80052388 0C00D925 */  jal        func_80036494_DF9A4
/* FB89C 8005238C A462001E */   sh        $v0, 0x1e($v1)
/* FB8A0 80052390 00409021 */  addu       $s2, $v0, $zero
/* FB8A4 80052394 8E44000C */  lw         $a0, 0xc($s2)
/* FB8A8 80052398 8C82000C */  lw         $v0, 0xc($a0)
/* FB8AC 8005239C 94450000 */  lhu        $a1, ($v0)
/* FB8B0 800523A0 94460002 */  lhu        $a2, 2($v0)
/* FB8B4 800523A4 00052842 */  srl        $a1, $a1, 1
/* FB8B8 800523A8 0C02912A */  jal        func_800A44A8
/* FB8BC 800523AC 00063042 */   srl       $a2, $a2, 1
/* FB8C0 800523B0 8E44000C */  lw         $a0, 0xc($s2)
/* FB8C4 800523B4 24050280 */  addiu      $a1, $zero, 0x280
/* FB8C8 800523B8 0C028D89 */  jal        func_800A3624
/* FB8CC 800523BC 24060220 */   addiu     $a2, $zero, 0x220
/* FB8D0 800523C0 24020060 */  addiu      $v0, $zero, 0x60
/* FB8D4 800523C4 AFA20010 */  sw         $v0, 0x10($sp)
/* FB8D8 800523C8 8E44000C */  lw         $a0, 0xc($s2)
/* FB8DC 800523CC 240500FF */  addiu      $a1, $zero, 0xff
/* FB8E0 800523D0 240600FF */  addiu      $a2, $zero, 0xff
/* FB8E4 800523D4 0C028E41 */  jal        func_800A3904
/* FB8E8 800523D8 240700FF */   addiu     $a3, $zero, 0xff
/* FB8EC 800523DC 8E43000C */  lw         $v1, 0xc($s2)
/* FB8F0 800523E0 9462001E */  lhu        $v0, 0x1e($v1)
/* FB8F4 800523E4 24040001 */  addiu      $a0, $zero, 1
/* FB8F8 800523E8 34420104 */  ori        $v0, $v0, 0x104
/* FB8FC 800523EC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FB900 800523F0 A462001E */   sh        $v0, 0x1e($v1)
/* FB904 800523F4 00408021 */  addu       $s0, $v0, $zero
/* FB908 800523F8 3C013CA3 */  lui        $at, 0x3ca3
/* FB90C 800523FC 3421D70A */  ori        $at, $at, 0xd70a
/* FB910 80052400 44810000 */  mtc1       $at, $f0
/* FB914 80052404 3C014334 */  lui        $at, 0x4334
/* FB918 80052408 44811000 */  mtc1       $at, $f2
/* FB91C 8005240C 02002021 */  addu       $a0, $s0, $zero
/* FB920 80052410 24050007 */  addiu      $a1, $zero, 7
/* FB924 80052414 240200FF */  addiu      $v0, $zero, 0xff
/* FB928 80052418 A6020074 */  sh         $v0, 0x74($s0)
/* FB92C 8005241C A6020076 */  sh         $v0, 0x76($s0)
/* FB930 80052420 A6020078 */  sh         $v0, 0x78($s0)
/* FB934 80052424 24020080 */  addiu      $v0, $zero, 0x80
/* FB938 80052428 AE000010 */  sw         $zero, 0x10($s0)
/* FB93C 8005242C AE000014 */  sw         $zero, 0x14($s0)
/* FB940 80052430 AE000018 */  sw         $zero, 0x18($s0)
/* FB944 80052434 AE00001C */  sw         $zero, 0x1c($s0)
/* FB948 80052438 AE000024 */  sw         $zero, 0x24($s0)
/* FB94C 8005243C A602007A */  sh         $v0, 0x7a($s0)
/* FB950 80052440 E6000028 */  swc1       $f0, 0x28($s0)
/* FB954 80052444 0C00DFE6 */  jal        func_80037F98_E14A8
/* FB958 80052448 E6020020 */   swc1      $f2, 0x20($s0)
/* FB95C 8005244C 8E030004 */  lw         $v1, 4($s0)
/* FB960 80052450 2402000A */  addiu      $v0, $zero, 0xa
/* FB964 80052454 240405EF */  addiu      $a0, $zero, 0x5ef
/* FB968 80052458 A0620067 */  sb         $v0, 0x67($v1)
/* FB96C 8005245C 8E030004 */  lw         $v1, 4($s0)
/* FB970 80052460 24050002 */  addiu      $a1, $zero, 2
/* FB974 80052464 3C013F80 */  lui        $at, 0x3f80
/* FB978 80052468 44810000 */  mtc1       $at, $f0
/* FB97C 8005246C 90620066 */  lbu        $v0, 0x66($v1)
/* FB980 80052470 3C01C29A */  lui        $at, 0xc29a
/* FB984 80052474 44811000 */  mtc1       $at, $f2
/* FB988 80052478 34420023 */  ori        $v0, $v0, 0x23
/* FB98C 8005247C A0620066 */  sb         $v0, 0x66($v1)
/* FB990 80052480 3C018015 */  lui        $at, %hi(D_8014A064)
/* FB994 80052484 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* FB998 80052488 3C018015 */  lui        $at, %hi(D_8014A068)
/* FB99C 8005248C AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* FB9A0 80052490 3C018015 */  lui        $at, %hi(D_8014A06C)
/* FB9A4 80052494 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* FB9A8 80052498 3C018015 */  lui        $at, %hi(D_8014A070)
/* FB9AC 8005249C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* FB9B0 800524A0 3C018015 */  lui        $at, %hi(D_8014A074)
/* FB9B4 800524A4 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* FB9B8 800524A8 3C018015 */  lui        $at, %hi(D_8014A078)
/* FB9BC 800524AC AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* FB9C0 800524B0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* FB9C4 800524B4 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* FB9C8 800524B8 3C018015 */  lui        $at, %hi(D_8014A080)
/* FB9CC 800524BC AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* FB9D0 800524C0 3C018015 */  lui        $at, %hi(D_8014A084)
/* FB9D4 800524C4 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* FB9D8 800524C8 3C018015 */  lui        $at, %hi(D_8014A088)
/* FB9DC 800524CC E422A088 */  swc1       $f2, %lo(D_8014A088)($at)
/* FB9E0 800524D0 0C00D925 */  jal        func_80036494_DF9A4
/* FB9E4 800524D4 24060027 */   addiu     $a2, $zero, 0x27
/* FB9E8 800524D8 00409021 */  addu       $s2, $v0, $zero
/* FB9EC 800524DC 8E44000C */  lw         $a0, 0xc($s2)
/* FB9F0 800524E0 8C82000C */  lw         $v0, 0xc($a0)
/* FB9F4 800524E4 84450000 */  lh         $a1, ($v0)
/* FB9F8 800524E8 0C02912A */  jal        func_800A44A8
/* FB9FC 800524EC 00003021 */   addu      $a2, $zero, $zero
/* FBA00 800524F0 8E44000C */  lw         $a0, 0xc($s2)
/* FBA04 800524F4 240504FC */  addiu      $a1, $zero, 0x4fc
/* FBA08 800524F8 0C028D89 */  jal        func_800A3624
/* FBA0C 800524FC 00003021 */   addu      $a2, $zero, $zero
/* FBA10 80052500 240405EF */  addiu      $a0, $zero, 0x5ef
/* FBA14 80052504 24050002 */  addiu      $a1, $zero, 2
/* FBA18 80052508 0C00D925 */  jal        func_80036494_DF9A4
/* FBA1C 8005250C 24060028 */   addiu     $a2, $zero, 0x28
/* FBA20 80052510 00409021 */  addu       $s2, $v0, $zero
/* FBA24 80052514 8E44000C */  lw         $a0, 0xc($s2)
/* FBA28 80052518 00002821 */  addu       $a1, $zero, $zero
/* FBA2C 8005251C 0C028D89 */  jal        func_800A3624
/* FBA30 80052520 00003021 */   addu      $a2, $zero, $zero
/* FBA34 80052524 8E44000C */  lw         $a0, 0xc($s2)
/* FBA38 80052528 8C82000C */  lw         $v0, 0xc($a0)
/* FBA3C 8005252C 90430004 */  lbu        $v1, 4($v0)
/* FBA40 80052530 84450000 */  lh         $a1, ($v0)
/* FBA44 80052534 84460002 */  lh         $a2, 2($v0)
/* FBA48 80052538 10600002 */  beqz       $v1, .L80052544
/* FBA4C 8005253C 24070002 */   addiu     $a3, $zero, 2
/* FBA50 80052540 24070001 */  addiu      $a3, $zero, 1
.L80052544:
/* FBA54 80052544 0C0297AC */  jal        func_800A5EB0
/* FBA58 80052548 8C840010 */   lw        $a0, 0x10($a0)
/* FBA5C 8005254C 240405F0 */  addiu      $a0, $zero, 0x5f0
/* FBA60 80052550 24050002 */  addiu      $a1, $zero, 2
/* FBA64 80052554 0C00D925 */  jal        func_80036494_DF9A4
/* FBA68 80052558 24060029 */   addiu     $a2, $zero, 0x29
/* FBA6C 8005255C 00409021 */  addu       $s2, $v0, $zero
/* FBA70 80052560 8E44000C */  lw         $a0, 0xc($s2)
/* FBA74 80052564 8C82000C */  lw         $v0, 0xc($a0)
/* FBA78 80052568 84450000 */  lh         $a1, ($v0)
/* FBA7C 8005256C 0C02912A */  jal        func_800A44A8
/* FBA80 80052570 00003021 */   addu      $a2, $zero, $zero
/* FBA84 80052574 8E44000C */  lw         $a0, 0xc($s2)
/* FBA88 80052578 240504FC */  addiu      $a1, $zero, 0x4fc
/* FBA8C 8005257C 0C028D89 */  jal        func_800A3624
/* FBA90 80052580 24060064 */   addiu     $a2, $zero, 0x64
/* FBA94 80052584 240405F0 */  addiu      $a0, $zero, 0x5f0
/* FBA98 80052588 24050002 */  addiu      $a1, $zero, 2
/* FBA9C 8005258C 0C00D925 */  jal        func_80036494_DF9A4
/* FBAA0 80052590 2406002A */   addiu     $a2, $zero, 0x2a
/* FBAA4 80052594 00409021 */  addu       $s2, $v0, $zero
/* FBAA8 80052598 8E44000C */  lw         $a0, 0xc($s2)
/* FBAAC 8005259C 00002821 */  addu       $a1, $zero, $zero
/* FBAB0 800525A0 0C028D89 */  jal        func_800A3624
/* FBAB4 800525A4 24060064 */   addiu     $a2, $zero, 0x64
/* FBAB8 800525A8 8E44000C */  lw         $a0, 0xc($s2)
/* FBABC 800525AC 8C82000C */  lw         $v0, 0xc($a0)
/* FBAC0 800525B0 90430004 */  lbu        $v1, 4($v0)
/* FBAC4 800525B4 84450000 */  lh         $a1, ($v0)
/* FBAC8 800525B8 84460002 */  lh         $a2, 2($v0)
/* FBACC 800525BC 10600002 */  beqz       $v1, .L800525C8
/* FBAD0 800525C0 24070002 */   addiu     $a3, $zero, 2
/* FBAD4 800525C4 24070001 */  addiu      $a3, $zero, 1
.L800525C8:
/* FBAD8 800525C8 0C0297AC */  jal        func_800A5EB0
/* FBADC 800525CC 8C840010 */   lw        $a0, 0x10($a0)
/* FBAE0 800525D0 240405F1 */  addiu      $a0, $zero, 0x5f1
/* FBAE4 800525D4 24050002 */  addiu      $a1, $zero, 2
/* FBAE8 800525D8 0C00D925 */  jal        func_80036494_DF9A4
/* FBAEC 800525DC 2406002B */   addiu     $a2, $zero, 0x2b
/* FBAF0 800525E0 00409021 */  addu       $s2, $v0, $zero
/* FBAF4 800525E4 8E44000C */  lw         $a0, 0xc($s2)
/* FBAF8 800525E8 8C82000C */  lw         $v0, 0xc($a0)
/* FBAFC 800525EC 84450000 */  lh         $a1, ($v0)
/* FBB00 800525F0 0C02912A */  jal        func_800A44A8
/* FBB04 800525F4 84460002 */   lh        $a2, 2($v0)
/* FBB08 800525F8 8E44000C */  lw         $a0, 0xc($s2)
/* FBB0C 800525FC 240504FC */  addiu      $a1, $zero, 0x4fc
/* FBB10 80052600 0C028D89 */  jal        func_800A3624
/* FBB14 80052604 240603BC */   addiu     $a2, $zero, 0x3bc
/* FBB18 80052608 240405F1 */  addiu      $a0, $zero, 0x5f1
/* FBB1C 8005260C 24050002 */  addiu      $a1, $zero, 2
/* FBB20 80052610 0C00D925 */  jal        func_80036494_DF9A4
/* FBB24 80052614 2406002C */   addiu     $a2, $zero, 0x2c
/* FBB28 80052618 00409021 */  addu       $s2, $v0, $zero
/* FBB2C 8005261C 8E44000C */  lw         $a0, 0xc($s2)
/* FBB30 80052620 8C82000C */  lw         $v0, 0xc($a0)
/* FBB34 80052624 84460002 */  lh         $a2, 2($v0)
/* FBB38 80052628 0C02912A */  jal        func_800A44A8
/* FBB3C 8005262C 00002821 */   addu      $a1, $zero, $zero
/* FBB40 80052630 8E44000C */  lw         $a0, 0xc($s2)
/* FBB44 80052634 00002821 */  addu       $a1, $zero, $zero
/* FBB48 80052638 0C028D89 */  jal        func_800A3624
/* FBB4C 8005263C 240603BC */   addiu     $a2, $zero, 0x3bc
/* FBB50 80052640 8E44000C */  lw         $a0, 0xc($s2)
/* FBB54 80052644 8C82000C */  lw         $v0, 0xc($a0)
/* FBB58 80052648 90430004 */  lbu        $v1, 4($v0)
/* FBB5C 8005264C 84450000 */  lh         $a1, ($v0)
/* FBB60 80052650 84460002 */  lh         $a2, 2($v0)
/* FBB64 80052654 10600002 */  beqz       $v1, .L80052660
/* FBB68 80052658 24070002 */   addiu     $a3, $zero, 2
/* FBB6C 8005265C 24070001 */  addiu      $a3, $zero, 1
.L80052660:
/* FBB70 80052660 8C840010 */  lw         $a0, 0x10($a0)
/* FBB74 80052664 0C0297AC */  jal        func_800A5EB0
/* FBB78 80052668 241100C0 */   addiu     $s1, $zero, 0xc0
/* FBB7C 8005266C 240405F5 */  addiu      $a0, $zero, 0x5f5
/* FBB80 80052670 24050006 */  addiu      $a1, $zero, 6
/* FBB84 80052674 0C00D925 */  jal        func_80036494_DF9A4
/* FBB88 80052678 2406004B */   addiu     $a2, $zero, 0x4b
/* FBB8C 8005267C 00409021 */  addu       $s2, $v0, $zero
/* FBB90 80052680 8E44000C */  lw         $a0, 0xc($s2)
/* FBB94 80052684 24050024 */  addiu      $a1, $zero, 0x24
/* FBB98 80052688 0C028D89 */  jal        func_800A3624
/* FBB9C 8005268C 24060080 */   addiu     $a2, $zero, 0x80
/* FBBA0 80052690 AFB10010 */  sw         $s1, 0x10($sp)
/* FBBA4 80052694 8E44000C */  lw         $a0, 0xc($s2)
/* FBBA8 80052698 240500FF */  addiu      $a1, $zero, 0xff
/* FBBAC 8005269C 240600FF */  addiu      $a2, $zero, 0xff
/* FBBB0 800526A0 0C028E41 */  jal        func_800A3904
/* FBBB4 800526A4 240700FF */   addiu     $a3, $zero, 0xff
/* FBBB8 800526A8 240405F6 */  addiu      $a0, $zero, 0x5f6
/* FBBBC 800526AC 24050006 */  addiu      $a1, $zero, 6
/* FBBC0 800526B0 8E42000C */  lw         $v0, 0xc($s2)
/* FBBC4 800526B4 2406004C */  addiu      $a2, $zero, 0x4c
/* FBBC8 800526B8 24100032 */  addiu      $s0, $zero, 0x32
/* FBBCC 800526BC 0C00D925 */  jal        func_80036494_DF9A4
/* FBBD0 800526C0 A450001C */   sh        $s0, 0x1c($v0)
/* FBBD4 800526C4 00409021 */  addu       $s2, $v0, $zero
/* FBBD8 800526C8 8E44000C */  lw         $a0, 0xc($s2)
/* FBBDC 800526CC 24050024 */  addiu      $a1, $zero, 0x24
/* FBBE0 800526D0 0C028D89 */  jal        func_800A3624
/* FBBE4 800526D4 24060080 */   addiu     $a2, $zero, 0x80
/* FBBE8 800526D8 AFB10010 */  sw         $s1, 0x10($sp)
/* FBBEC 800526DC 8E44000C */  lw         $a0, 0xc($s2)
/* FBBF0 800526E0 240500FF */  addiu      $a1, $zero, 0xff
/* FBBF4 800526E4 240600FF */  addiu      $a2, $zero, 0xff
/* FBBF8 800526E8 0C028E41 */  jal        func_800A3904
/* FBBFC 800526EC 240700FF */   addiu     $a3, $zero, 0xff
/* FBC00 800526F0 240405F9 */  addiu      $a0, $zero, 0x5f9
/* FBC04 800526F4 8E42000C */  lw         $v0, 0xc($s2)
/* FBC08 800526F8 24050006 */  addiu      $a1, $zero, 6
/* FBC0C 800526FC 24060032 */  addiu      $a2, $zero, 0x32
/* FBC10 80052700 0C00D925 */  jal        func_80036494_DF9A4
/* FBC14 80052704 A450001C */   sh        $s0, 0x1c($v0)
/* FBC18 80052708 00409021 */  addu       $s2, $v0, $zero
/* FBC1C 8005270C 8E44000C */  lw         $a0, 0xc($s2)
/* FBC20 80052710 24050418 */  addiu      $a1, $zero, 0x418
/* FBC24 80052714 0C028D89 */  jal        func_800A3624
/* FBC28 80052718 24060200 */   addiu     $a2, $zero, 0x200
/* FBC2C 8005271C AFB10010 */  sw         $s1, 0x10($sp)
/* FBC30 80052720 8E44000C */  lw         $a0, 0xc($s2)
/* FBC34 80052724 240500FF */  addiu      $a1, $zero, 0xff
/* FBC38 80052728 240600FF */  addiu      $a2, $zero, 0xff
/* FBC3C 8005272C 0C028E41 */  jal        func_800A3904
/* FBC40 80052730 240700FF */   addiu     $a3, $zero, 0xff
/* FBC44 80052734 240405F8 */  addiu      $a0, $zero, 0x5f8
/* FBC48 80052738 24050006 */  addiu      $a1, $zero, 6
/* FBC4C 8005273C 0C00D925 */  jal        func_80036494_DF9A4
/* FBC50 80052740 24060033 */   addiu     $a2, $zero, 0x33
/* FBC54 80052744 00409021 */  addu       $s2, $v0, $zero
/* FBC58 80052748 8E44000C */  lw         $a0, 0xc($s2)
/* FBC5C 8005274C 2405027C */  addiu      $a1, $zero, 0x27c
/* FBC60 80052750 0C028D89 */  jal        func_800A3624
/* FBC64 80052754 240602F0 */   addiu     $a2, $zero, 0x2f0
/* FBC68 80052758 AFB10010 */  sw         $s1, 0x10($sp)
/* FBC6C 8005275C 8E44000C */  lw         $a0, 0xc($s2)
/* FBC70 80052760 240500FF */  addiu      $a1, $zero, 0xff
/* FBC74 80052764 240600FF */  addiu      $a2, $zero, 0xff
/* FBC78 80052768 0C028E41 */  jal        func_800A3904
/* FBC7C 8005276C 240700FF */   addiu     $a3, $zero, 0xff
/* FBC80 80052770 24040033 */  addiu      $a0, $zero, 0x33
/* FBC84 80052774 0C00DD19 */  jal        func_80037464_E0974
/* FBC88 80052778 24050034 */   addiu     $a1, $zero, 0x34
/* FBC8C 8005277C 00409021 */  addu       $s2, $v0, $zero
/* FBC90 80052780 8E42000C */  lw         $v0, 0xc($s2)
/* FBC94 80052784 00009821 */  addu       $s3, $zero, $zero
/* FBC98 80052788 8C430000 */  lw         $v1, ($v0)
/* FBC9C 8005278C 241000C0 */  addiu      $s0, $zero, 0xc0
/* FBCA0 80052790 24020001 */  addiu      $v0, $zero, 1
/* FBCA4 80052794 A462001A */  sh         $v0, 0x1a($v1)
/* FBCA8 80052798 8E44000C */  lw         $a0, 0xc($s2)
/* FBCAC 8005279C 24050148 */  addiu      $a1, $zero, 0x148
/* FBCB0 800527A0 0C028D89 */  jal        func_800A3624
/* FBCB4 800527A4 240602F0 */   addiu     $a2, $zero, 0x2f0
/* FBCB8 800527A8 AFB10010 */  sw         $s1, 0x10($sp)
/* FBCBC 800527AC 8E44000C */  lw         $a0, 0xc($s2)
/* FBCC0 800527B0 240500FF */  addiu      $a1, $zero, 0xff
/* FBCC4 800527B4 240600FF */  addiu      $a2, $zero, 0xff
/* FBCC8 800527B8 0C028E41 */  jal        func_800A3904
/* FBCCC 800527BC 240700FF */   addiu     $a3, $zero, 0xff
/* FBCD0 800527C0 240405F7 */  addiu      $a0, $zero, 0x5f7
/* FBCD4 800527C4 24050001 */  addiu      $a1, $zero, 1
/* FBCD8 800527C8 0C00D925 */  jal        func_80036494_DF9A4
/* FBCDC 800527CC 24060035 */   addiu     $a2, $zero, 0x35
/* FBCE0 800527D0 00409021 */  addu       $s2, $v0, $zero
/* FBCE4 800527D4 8E44000C */  lw         $a0, 0xc($s2)
/* FBCE8 800527D8 24050388 */  addiu      $a1, $zero, 0x388
/* FBCEC 800527DC 0C028D89 */  jal        func_800A3624
/* FBCF0 800527E0 2406006C */   addiu     $a2, $zero, 0x6c
/* FBCF4 800527E4 AFB10010 */  sw         $s1, 0x10($sp)
/* FBCF8 800527E8 8E44000C */  lw         $a0, 0xc($s2)
/* FBCFC 800527EC 240500FF */  addiu      $a1, $zero, 0xff
/* FBD00 800527F0 240600FF */  addiu      $a2, $zero, 0xff
/* FBD04 800527F4 0C028E41 */  jal        func_800A3904
/* FBD08 800527F8 240700FF */   addiu     $a3, $zero, 0xff
/* FBD0C 800527FC 24040035 */  addiu      $a0, $zero, 0x35
.L80052800:
/* FBD10 80052800 326500FF */  andi       $a1, $s3, 0xff
/* FBD14 80052804 0C00DD19 */  jal        func_80037464_E0974
/* FBD18 80052808 24A50036 */   addiu     $a1, $a1, 0x36
/* FBD1C 8005280C 00409021 */  addu       $s2, $v0, $zero
/* FBD20 80052810 8E42000C */  lw         $v0, 0xc($s2)
/* FBD24 80052814 8C420000 */  lw         $v0, ($v0)
/* FBD28 80052818 24050388 */  addiu      $a1, $zero, 0x388
/* FBD2C 8005281C A040002F */  sb         $zero, 0x2f($v0)
/* FBD30 80052820 8E44000C */  lw         $a0, 0xc($s2)
/* FBD34 80052824 326200FF */  andi       $v0, $s3, 0xff
/* FBD38 80052828 00023040 */  sll        $a2, $v0, 1
/* FBD3C 8005282C 00C23021 */  addu       $a2, $a2, $v0
/* FBD40 80052830 00063080 */  sll        $a2, $a2, 2
/* FBD44 80052834 00C23023 */  subu       $a2, $a2, $v0
/* FBD48 80052838 24C60026 */  addiu      $a2, $a2, 0x26
/* FBD4C 8005283C 00063480 */  sll        $a2, $a2, 0x12
/* FBD50 80052840 00063403 */  sra        $a2, $a2, 0x10
/* FBD54 80052844 0C028D89 */  jal        func_800A3624
/* FBD58 80052848 26730001 */   addiu     $s3, $s3, 1
/* FBD5C 8005284C AFB00010 */  sw         $s0, 0x10($sp)
/* FBD60 80052850 8E44000C */  lw         $a0, 0xc($s2)
/* FBD64 80052854 240500FF */  addiu      $a1, $zero, 0xff
/* FBD68 80052858 240600FF */  addiu      $a2, $zero, 0xff
/* FBD6C 8005285C 0C028E41 */  jal        func_800A3904
/* FBD70 80052860 240700FF */   addiu     $a3, $zero, 0xff
/* FBD74 80052864 326200FF */  andi       $v0, $s3, 0xff
/* FBD78 80052868 2C420013 */  sltiu      $v0, $v0, 0x13
/* FBD7C 8005286C 1440FFE4 */  bnez       $v0, .L80052800
/* FBD80 80052870 24040035 */   addiu     $a0, $zero, 0x35
/* FBD84 80052874 240405F4 */  addiu      $a0, $zero, 0x5f4
/* FBD88 80052878 24050001 */  addiu      $a1, $zero, 1
/* FBD8C 8005287C 0C00D925 */  jal        func_80036494_DF9A4
/* FBD90 80052880 24060024 */   addiu     $a2, $zero, 0x24
/* FBD94 80052884 00409021 */  addu       $s2, $v0, $zero
/* FBD98 80052888 8E44000C */  lw         $a0, 0xc($s2)
/* FBD9C 8005288C 24050128 */  addiu      $a1, $zero, 0x128
/* FBDA0 80052890 0C028D89 */  jal        func_800A3624
/* FBDA4 80052894 24060270 */   addiu     $a2, $zero, 0x270
/* FBDA8 80052898 241100FF */  addiu      $s1, $zero, 0xff
/* FBDAC 8005289C AFB10010 */  sw         $s1, 0x10($sp)
/* FBDB0 800528A0 8E44000C */  lw         $a0, 0xc($s2)
/* FBDB4 800528A4 00002821 */  addu       $a1, $zero, $zero
/* FBDB8 800528A8 240600FF */  addiu      $a2, $zero, 0xff
/* FBDBC 800528AC 0C028E41 */  jal        func_800A3904
/* FBDC0 800528B0 240700FF */   addiu     $a3, $zero, 0xff
/* FBDC4 800528B4 24040024 */  addiu      $a0, $zero, 0x24
/* FBDC8 800528B8 0C00DD19 */  jal        func_80037464_E0974
/* FBDCC 800528BC 24050023 */   addiu     $a1, $zero, 0x23
/* FBDD0 800528C0 00409021 */  addu       $s2, $v0, $zero
/* FBDD4 800528C4 8E42000C */  lw         $v0, 0xc($s2)
/* FBDD8 800528C8 8C420000 */  lw         $v0, ($v0)
/* FBDDC 800528CC A040002F */  sb         $zero, 0x2f($v0)
/* FBDE0 800528D0 8E44000C */  lw         $a0, 0xc($s2)
/* FBDE4 800528D4 24050190 */  addiu      $a1, $zero, 0x190
/* FBDE8 800528D8 0C028D89 */  jal        func_800A3624
/* FBDEC 800528DC 24060270 */   addiu     $a2, $zero, 0x270
/* FBDF0 800528E0 AFB10010 */  sw         $s1, 0x10($sp)
/* FBDF4 800528E4 8E44000C */  lw         $a0, 0xc($s2)
/* FBDF8 800528E8 00002821 */  addu       $a1, $zero, $zero
/* FBDFC 800528EC 240600FF */  addiu      $a2, $zero, 0xff
/* FBE00 800528F0 0C028E41 */  jal        func_800A3904
/* FBE04 800528F4 240700FF */   addiu     $a3, $zero, 0xff
/* FBE08 800528F8 24040024 */  addiu      $a0, $zero, 0x24
/* FBE0C 800528FC 0C00DD19 */  jal        func_80037464_E0974
/* FBE10 80052900 24050022 */   addiu     $a1, $zero, 0x22
/* FBE14 80052904 00409021 */  addu       $s2, $v0, $zero
/* FBE18 80052908 8E42000C */  lw         $v0, 0xc($s2)
/* FBE1C 8005290C 8C420000 */  lw         $v0, ($v0)
/* FBE20 80052910 A040002F */  sb         $zero, 0x2f($v0)
/* FBE24 80052914 8E44000C */  lw         $a0, 0xc($s2)
/* FBE28 80052918 240501F8 */  addiu      $a1, $zero, 0x1f8
/* FBE2C 8005291C 0C028D89 */  jal        func_800A3624
/* FBE30 80052920 24060270 */   addiu     $a2, $zero, 0x270
/* FBE34 80052924 AFB10010 */  sw         $s1, 0x10($sp)
/* FBE38 80052928 8E44000C */  lw         $a0, 0xc($s2)
/* FBE3C 8005292C 00002821 */  addu       $a1, $zero, $zero
/* FBE40 80052930 240600FF */  addiu      $a2, $zero, 0xff
/* FBE44 80052934 0C028E41 */  jal        func_800A3904
/* FBE48 80052938 240700FF */   addiu     $a3, $zero, 0xff
/* FBE4C 8005293C 240405F2 */  addiu      $a0, $zero, 0x5f2
/* FBE50 80052940 24050001 */  addiu      $a1, $zero, 1
/* FBE54 80052944 0C00D925 */  jal        func_80036494_DF9A4
/* FBE58 80052948 24060025 */   addiu     $a2, $zero, 0x25
/* FBE5C 8005294C 00409021 */  addu       $s2, $v0, $zero
/* FBE60 80052950 8E44000C */  lw         $a0, 0xc($s2)
/* FBE64 80052954 24050080 */  addiu      $a1, $zero, 0x80
/* FBE68 80052958 0C028D89 */  jal        func_800A3624
/* FBE6C 8005295C 240602C0 */   addiu     $a2, $zero, 0x2c0
/* FBE70 80052960 AFA00010 */  sw         $zero, 0x10($sp)
/* FBE74 80052964 8E44000C */  lw         $a0, 0xc($s2)
/* FBE78 80052968 240500FF */  addiu      $a1, $zero, 0xff
/* FBE7C 8005296C 240600FF */  addiu      $a2, $zero, 0xff
/* FBE80 80052970 0C028E41 */  jal        func_800A3904
/* FBE84 80052974 240700FF */   addiu     $a3, $zero, 0xff
/* FBE88 80052978 240405F3 */  addiu      $a0, $zero, 0x5f3
/* FBE8C 8005297C 24050001 */  addiu      $a1, $zero, 1
/* FBE90 80052980 0C00D925 */  jal        func_80036494_DF9A4
/* FBE94 80052984 24060026 */   addiu     $a2, $zero, 0x26
/* FBE98 80052988 00409021 */  addu       $s2, $v0, $zero
/* FBE9C 8005298C 8E44000C */  lw         $a0, 0xc($s2)
/* FBEA0 80052990 24050080 */  addiu      $a1, $zero, 0x80
/* FBEA4 80052994 0C028D89 */  jal        func_800A3624
/* FBEA8 80052998 240602C0 */   addiu     $a2, $zero, 0x2c0
/* FBEAC 8005299C AFB10010 */  sw         $s1, 0x10($sp)
/* FBEB0 800529A0 8E44000C */  lw         $a0, 0xc($s2)
/* FBEB4 800529A4 240500FF */  addiu      $a1, $zero, 0xff
/* FBEB8 800529A8 240600FF */  addiu      $a2, $zero, 0xff
/* FBEBC 800529AC 0C028E41 */  jal        func_800A3904
/* FBEC0 800529B0 240700FF */   addiu     $a3, $zero, 0xff
/* FBEC4 800529B4 240405FE */  addiu      $a0, $zero, 0x5fe
/* FBEC8 800529B8 24050001 */  addiu      $a1, $zero, 1
/* FBECC 800529BC 0C00D925 */  jal        func_80036494_DF9A4
/* FBED0 800529C0 24060021 */   addiu     $a2, $zero, 0x21
/* FBED4 800529C4 8C44000C */  lw         $a0, 0xc($v0)
/* FBED8 800529C8 24050340 */  addiu      $a1, $zero, 0x340
/* FBEDC 800529CC 0C028D89 */  jal        func_800A3624
/* FBEE0 800529D0 24060288 */   addiu     $a2, $zero, 0x288
/* FBEE4 800529D4 240405FF */  addiu      $a0, $zero, 0x5ff
/* FBEE8 800529D8 24050001 */  addiu      $a1, $zero, 1
/* FBEEC 800529DC 0C00D925 */  jal        func_80036494_DF9A4
/* FBEF0 800529E0 2406001F */   addiu     $a2, $zero, 0x1f
/* FBEF4 800529E4 8C44000C */  lw         $a0, 0xc($v0)
/* FBEF8 800529E8 24050340 */  addiu      $a1, $zero, 0x340
/* FBEFC 800529EC 0C028D89 */  jal        func_800A3624
/* FBF00 800529F0 24060290 */   addiu     $a2, $zero, 0x290
/* FBF04 800529F4 240405FB */  addiu      $a0, $zero, 0x5fb
/* FBF08 800529F8 24050002 */  addiu      $a1, $zero, 2
/* FBF0C 800529FC 0C00D925 */  jal        func_80036494_DF9A4
/* FBF10 80052A00 2406004D */   addiu     $a2, $zero, 0x4d
/* FBF14 80052A04 00409021 */  addu       $s2, $v0, $zero
/* FBF18 80052A08 8E44000C */  lw         $a0, 0xc($s2)
/* FBF1C 80052A0C 24050020 */  addiu      $a1, $zero, 0x20
/* FBF20 80052A10 0C02912A */  jal        func_800A44A8
/* FBF24 80052A14 24060012 */   addiu     $a2, $zero, 0x12
/* FBF28 80052A18 8E44000C */  lw         $a0, 0xc($s2)
/* FBF2C 80052A1C 24050280 */  addiu      $a1, $zero, 0x280
/* FBF30 80052A20 0C028D89 */  jal        func_800A3624
/* FBF34 80052A24 240601E0 */   addiu     $a2, $zero, 0x1e0
/* FBF38 80052A28 AFB10010 */  sw         $s1, 0x10($sp)
/* FBF3C 80052A2C 8E44000C */  lw         $a0, 0xc($s2)
/* FBF40 80052A30 240500FF */  addiu      $a1, $zero, 0xff
/* FBF44 80052A34 240600FF */  addiu      $a2, $zero, 0xff
/* FBF48 80052A38 0C028E41 */  jal        func_800A3904
/* FBF4C 80052A3C 240700FF */   addiu     $a3, $zero, 0xff
/* FBF50 80052A40 240405FC */  addiu      $a0, $zero, 0x5fc
/* FBF54 80052A44 24050002 */  addiu      $a1, $zero, 2
/* FBF58 80052A48 8E42000C */  lw         $v0, 0xc($s2)
/* FBF5C 80052A4C 2406004E */  addiu      $a2, $zero, 0x4e
/* FBF60 80052A50 24100036 */  addiu      $s0, $zero, 0x36
/* FBF64 80052A54 0C00D925 */  jal        func_80036494_DF9A4
/* FBF68 80052A58 A450001C */   sh        $s0, 0x1c($v0)
/* FBF6C 80052A5C 00409021 */  addu       $s2, $v0, $zero
/* FBF70 80052A60 8E44000C */  lw         $a0, 0xc($s2)
/* FBF74 80052A64 2405001F */  addiu      $a1, $zero, 0x1f
/* FBF78 80052A68 0C02912A */  jal        func_800A44A8
/* FBF7C 80052A6C 2406001E */   addiu     $a2, $zero, 0x1e
/* FBF80 80052A70 8E44000C */  lw         $a0, 0xc($s2)
/* FBF84 80052A74 24050280 */  addiu      $a1, $zero, 0x280
/* FBF88 80052A78 0C028D89 */  jal        func_800A3624
/* FBF8C 80052A7C 240601E0 */   addiu     $a2, $zero, 0x1e0
/* FBF90 80052A80 AFB10010 */  sw         $s1, 0x10($sp)
/* FBF94 80052A84 8E44000C */  lw         $a0, 0xc($s2)
/* FBF98 80052A88 240500FF */  addiu      $a1, $zero, 0xff
/* FBF9C 80052A8C 240600FF */  addiu      $a2, $zero, 0xff
/* FBFA0 80052A90 0C028E41 */  jal        func_800A3904
/* FBFA4 80052A94 240700FF */   addiu     $a3, $zero, 0xff
/* FBFA8 80052A98 240405FD */  addiu      $a0, $zero, 0x5fd
/* FBFAC 80052A9C 8E42000C */  lw         $v0, 0xc($s2)
/* FBFB0 80052AA0 24050002 */  addiu      $a1, $zero, 2
/* FBFB4 80052AA4 2406004F */  addiu      $a2, $zero, 0x4f
/* FBFB8 80052AA8 0C00D925 */  jal        func_80036494_DF9A4
/* FBFBC 80052AAC A450001C */   sh        $s0, 0x1c($v0)
/* FBFC0 80052AB0 00409021 */  addu       $s2, $v0, $zero
/* FBFC4 80052AB4 8E44000C */  lw         $a0, 0xc($s2)
/* FBFC8 80052AB8 24050037 */  addiu      $a1, $zero, 0x37
/* FBFCC 80052ABC 0C02912A */  jal        func_800A44A8
/* FBFD0 80052AC0 24060030 */   addiu     $a2, $zero, 0x30
/* FBFD4 80052AC4 8E44000C */  lw         $a0, 0xc($s2)
/* FBFD8 80052AC8 24050280 */  addiu      $a1, $zero, 0x280
/* FBFDC 80052ACC 0C028D89 */  jal        func_800A3624
/* FBFE0 80052AD0 240601E0 */   addiu     $a2, $zero, 0x1e0
/* FBFE4 80052AD4 AFB10010 */  sw         $s1, 0x10($sp)
/* FBFE8 80052AD8 8E44000C */  lw         $a0, 0xc($s2)
/* FBFEC 80052ADC 240500FF */  addiu      $a1, $zero, 0xff
/* FBFF0 80052AE0 240600FF */  addiu      $a2, $zero, 0xff
/* FBFF4 80052AE4 0C028E41 */  jal        func_800A3904
/* FBFF8 80052AE8 240700FF */   addiu     $a3, $zero, 0xff
/* FBFFC 80052AEC 27A40018 */  addiu      $a0, $sp, 0x18
/* FC000 80052AF0 8E42000C */  lw         $v0, 0xc($s2)
/* FC004 80052AF4 240520C9 */  addiu      $a1, $zero, 0x20c9
/* FC008 80052AF8 24060003 */  addiu      $a2, $zero, 3
/* FC00C 80052AFC 2412FFFE */  addiu      $s2, $zero, -2
/* FC010 80052B00 24110001 */  addiu      $s1, $zero, 1
/* FC014 80052B04 A450001C */  sh         $s0, 0x1c($v0)
/* FC018 80052B08 3C028007 */  lui        $v0, %hi(D_80069610_112B20)
/* FC01C 80052B0C 24429610 */  addiu      $v0, $v0, %lo(D_80069610_112B20)
/* FC020 80052B10 24100003 */  addiu      $s0, $zero, 3
/* FC024 80052B14 AFA20018 */  sw         $v0, 0x18($sp)
/* FC028 80052B18 A3B2001C */  sb         $s2, 0x1c($sp)
/* FC02C 80052B1C A3A0001D */  sb         $zero, 0x1d($sp)
/* FC030 80052B20 A3B1001E */  sb         $s1, 0x1e($sp)
/* FC034 80052B24 0C00DE82 */  jal        func_80037A08_E0F18
/* FC038 80052B28 A3B0001F */   sb        $s0, 0x1f($sp)
/* FC03C 80052B2C 27A40018 */  addiu      $a0, $sp, 0x18
/* FC040 80052B30 240520CA */  addiu      $a1, $zero, 0x20ca
/* FC044 80052B34 24060003 */  addiu      $a2, $zero, 3
/* FC048 80052B38 3C028007 */  lui        $v0, %hi(D_80069620_112B30)
/* FC04C 80052B3C 24429620 */  addiu      $v0, $v0, %lo(D_80069620_112B30)
/* FC050 80052B40 AFA20018 */  sw         $v0, 0x18($sp)
/* FC054 80052B44 A3B2001C */  sb         $s2, 0x1c($sp)
/* FC058 80052B48 A3A0001D */  sb         $zero, 0x1d($sp)
/* FC05C 80052B4C A3B1001E */  sb         $s1, 0x1e($sp)
/* FC060 80052B50 0C00DE82 */  jal        func_80037A08_E0F18
/* FC064 80052B54 A3B0001F */   sb        $s0, 0x1f($sp)
/* FC068 80052B58 27A40018 */  addiu      $a0, $sp, 0x18
/* FC06C 80052B5C 240520CB */  addiu      $a1, $zero, 0x20cb
/* FC070 80052B60 24060003 */  addiu      $a2, $zero, 3
/* FC074 80052B64 3C028007 */  lui        $v0, %hi(D_80069630_112B40)
/* FC078 80052B68 24429630 */  addiu      $v0, $v0, %lo(D_80069630_112B40)
/* FC07C 80052B6C AFA20018 */  sw         $v0, 0x18($sp)
/* FC080 80052B70 A3B2001C */  sb         $s2, 0x1c($sp)
/* FC084 80052B74 A3A0001D */  sb         $zero, 0x1d($sp)
/* FC088 80052B78 A3B1001E */  sb         $s1, 0x1e($sp)
/* FC08C 80052B7C 0C00DE82 */  jal        func_80037A08_E0F18
/* FC090 80052B80 A3B0001F */   sb        $s0, 0x1f($sp)
/* FC094 80052B84 27A40018 */  addiu      $a0, $sp, 0x18
/* FC098 80052B88 240520CC */  addiu      $a1, $zero, 0x20cc
/* FC09C 80052B8C 24060003 */  addiu      $a2, $zero, 3
/* FC0A0 80052B90 3C028007 */  lui        $v0, %hi(D_80069650_112B60)
/* FC0A4 80052B94 24429650 */  addiu      $v0, $v0, %lo(D_80069650_112B60)
/* FC0A8 80052B98 AFA20018 */  sw         $v0, 0x18($sp)
/* FC0AC 80052B9C A3B2001C */  sb         $s2, 0x1c($sp)
/* FC0B0 80052BA0 A3A0001D */  sb         $zero, 0x1d($sp)
/* FC0B4 80052BA4 A3B1001E */  sb         $s1, 0x1e($sp)
/* FC0B8 80052BA8 0C00DE82 */  jal        func_80037A08_E0F18
/* FC0BC 80052BAC A3B0001F */   sb        $s0, 0x1f($sp)
/* FC0C0 80052BB0 27A40018 */  addiu      $a0, $sp, 0x18
/* FC0C4 80052BB4 240520CD */  addiu      $a1, $zero, 0x20cd
/* FC0C8 80052BB8 24060003 */  addiu      $a2, $zero, 3
/* FC0CC 80052BBC 3C028007 */  lui        $v0, %hi(D_80069668_112B78)
/* FC0D0 80052BC0 24429668 */  addiu      $v0, $v0, %lo(D_80069668_112B78)
/* FC0D4 80052BC4 AFA20018 */  sw         $v0, 0x18($sp)
/* FC0D8 80052BC8 A3B2001C */  sb         $s2, 0x1c($sp)
/* FC0DC 80052BCC A3A0001D */  sb         $zero, 0x1d($sp)
/* FC0E0 80052BD0 A3B1001E */  sb         $s1, 0x1e($sp)
/* FC0E4 80052BD4 0C00DE82 */  jal        func_80037A08_E0F18
/* FC0E8 80052BD8 A3B0001F */   sb        $s0, 0x1f($sp)
/* FC0EC 80052BDC 27A40018 */  addiu      $a0, $sp, 0x18
/* FC0F0 80052BE0 240520CE */  addiu      $a1, $zero, 0x20ce
/* FC0F4 80052BE4 24060003 */  addiu      $a2, $zero, 3
/* FC0F8 80052BE8 3C028007 */  lui        $v0, %hi(D_8006967C_112B8C)
/* FC0FC 80052BEC 2442967C */  addiu      $v0, $v0, %lo(D_8006967C_112B8C)
/* FC100 80052BF0 AFA20018 */  sw         $v0, 0x18($sp)
/* FC104 80052BF4 A3B2001C */  sb         $s2, 0x1c($sp)
/* FC108 80052BF8 A3A0001D */  sb         $zero, 0x1d($sp)
/* FC10C 80052BFC A3B1001E */  sb         $s1, 0x1e($sp)
/* FC110 80052C00 0C00DE82 */  jal        func_80037A08_E0F18
/* FC114 80052C04 A3B0001F */   sb        $s0, 0x1f($sp)
/* FC118 80052C08 27A40018 */  addiu      $a0, $sp, 0x18
/* FC11C 80052C0C 240520CF */  addiu      $a1, $zero, 0x20cf
/* FC120 80052C10 24060003 */  addiu      $a2, $zero, 3
/* FC124 80052C14 3C028007 */  lui        $v0, %hi(D_80069694_112BA4)
/* FC128 80052C18 24429694 */  addiu      $v0, $v0, %lo(D_80069694_112BA4)
/* FC12C 80052C1C AFA20018 */  sw         $v0, 0x18($sp)
/* FC130 80052C20 A3B2001C */  sb         $s2, 0x1c($sp)
/* FC134 80052C24 A3A0001D */  sb         $zero, 0x1d($sp)
/* FC138 80052C28 A3B1001E */  sb         $s1, 0x1e($sp)
/* FC13C 80052C2C 0C00DE82 */  jal        func_80037A08_E0F18
/* FC140 80052C30 A3B0001F */   sb        $s0, 0x1f($sp)
/* FC144 80052C34 27A40018 */  addiu      $a0, $sp, 0x18
/* FC148 80052C38 240520D0 */  addiu      $a1, $zero, 0x20d0
/* FC14C 80052C3C 24060003 */  addiu      $a2, $zero, 3
/* FC150 80052C40 3C028007 */  lui        $v0, %hi(D_800696A4_112BB4)
/* FC154 80052C44 244296A4 */  addiu      $v0, $v0, %lo(D_800696A4_112BB4)
/* FC158 80052C48 AFA20018 */  sw         $v0, 0x18($sp)
/* FC15C 80052C4C A3B2001C */  sb         $s2, 0x1c($sp)
/* FC160 80052C50 A3A0001D */  sb         $zero, 0x1d($sp)
/* FC164 80052C54 A3B1001E */  sb         $s1, 0x1e($sp)
/* FC168 80052C58 0C00DE82 */  jal        func_80037A08_E0F18
/* FC16C 80052C5C A3B0001F */   sb        $s0, 0x1f($sp)
/* FC170 80052C60 27A40018 */  addiu      $a0, $sp, 0x18
/* FC174 80052C64 240520D1 */  addiu      $a1, $zero, 0x20d1
/* FC178 80052C68 24060003 */  addiu      $a2, $zero, 3
/* FC17C 80052C6C 3C028007 */  lui        $v0, %hi(D_800696B4_112BC4)
/* FC180 80052C70 244296B4 */  addiu      $v0, $v0, %lo(D_800696B4_112BC4)
/* FC184 80052C74 AFA20018 */  sw         $v0, 0x18($sp)
/* FC188 80052C78 A3B2001C */  sb         $s2, 0x1c($sp)
/* FC18C 80052C7C A3A0001D */  sb         $zero, 0x1d($sp)
/* FC190 80052C80 A3B1001E */  sb         $s1, 0x1e($sp)
/* FC194 80052C84 0C00DE82 */  jal        func_80037A08_E0F18
/* FC198 80052C88 A3B0001F */   sb        $s0, 0x1f($sp)
/* FC19C 80052C8C 27A40018 */  addiu      $a0, $sp, 0x18
/* FC1A0 80052C90 240520D2 */  addiu      $a1, $zero, 0x20d2
/* FC1A4 80052C94 24060003 */  addiu      $a2, $zero, 3
/* FC1A8 80052C98 3C028007 */  lui        $v0, %hi(D_800696C8_112BD8)
/* FC1AC 80052C9C 244296C8 */  addiu      $v0, $v0, %lo(D_800696C8_112BD8)
/* FC1B0 80052CA0 AFA20018 */  sw         $v0, 0x18($sp)
/* FC1B4 80052CA4 A3B2001C */  sb         $s2, 0x1c($sp)
/* FC1B8 80052CA8 A3A0001D */  sb         $zero, 0x1d($sp)
/* FC1BC 80052CAC A3B1001E */  sb         $s1, 0x1e($sp)
/* FC1C0 80052CB0 0C00DE82 */  jal        func_80037A08_E0F18
/* FC1C4 80052CB4 A3B0001F */   sb        $s0, 0x1f($sp)
/* FC1C8 80052CB8 24040011 */  addiu      $a0, $zero, 0x11
/* FC1CC 80052CBC 24050001 */  addiu      $a1, $zero, 1
/* FC1D0 80052CC0 0C00D925 */  jal        func_80036494_DF9A4
/* FC1D4 80052CC4 24060050 */   addiu     $a2, $zero, 0x50
/* FC1D8 80052CC8 00409021 */  addu       $s2, $v0, $zero
/* FC1DC 80052CCC 8E44000C */  lw         $a0, 0xc($s2)
/* FC1E0 80052CD0 24050038 */  addiu      $a1, $zero, 0x38
/* FC1E4 80052CD4 0C028F9A */  jal        func_800A3E68
/* FC1E8 80052CD8 2406004E */   addiu     $a2, $zero, 0x4e
/* FC1EC 80052CDC 8E44000C */  lw         $a0, 0xc($s2)
/* FC1F0 80052CE0 24050040 */  addiu      $a1, $zero, 0x40
/* FC1F4 80052CE4 0C028D89 */  jal        func_800A3624
/* FC1F8 80052CE8 24060040 */   addiu     $a2, $zero, 0x40
/* FC1FC 80052CEC 8E43000C */  lw         $v1, 0xc($s2)
/* FC200 80052CF0 24020035 */  addiu      $v0, $zero, 0x35
/* FC204 80052CF4 A462001C */  sh         $v0, 0x1c($v1)
/* FC208 80052CF8 8E43000C */  lw         $v1, 0xc($s2)
/* FC20C 80052CFC 24040011 */  addiu      $a0, $zero, 0x11
/* FC210 80052D00 9462001E */  lhu        $v0, 0x1e($v1)
/* FC214 80052D04 24050001 */  addiu      $a1, $zero, 1
/* FC218 80052D08 24060051 */  addiu      $a2, $zero, 0x51
/* FC21C 80052D0C 34420104 */  ori        $v0, $v0, 0x104
/* FC220 80052D10 0C00D925 */  jal        func_80036494_DF9A4
/* FC224 80052D14 A462001E */   sh        $v0, 0x1e($v1)
/* FC228 80052D18 00409021 */  addu       $s2, $v0, $zero
/* FC22C 80052D1C 8E44000C */  lw         $a0, 0xc($s2)
/* FC230 80052D20 24050038 */  addiu      $a1, $zero, 0x38
/* FC234 80052D24 0C028F9A */  jal        func_800A3E68
/* FC238 80052D28 2406004E */   addiu     $a2, $zero, 0x4e
/* FC23C 80052D2C 8E44000C */  lw         $a0, 0xc($s2)
/* FC240 80052D30 24050040 */  addiu      $a1, $zero, 0x40
/* FC244 80052D34 0C028D89 */  jal        func_800A3624
/* FC248 80052D38 24060040 */   addiu     $a2, $zero, 0x40
/* FC24C 80052D3C 8E42000C */  lw         $v0, 0xc($s2)
/* FC250 80052D40 240500FF */  addiu      $a1, $zero, 0xff
/* FC254 80052D44 A440001C */  sh         $zero, 0x1c($v0)
/* FC258 80052D48 24020018 */  addiu      $v0, $zero, 0x18
/* FC25C 80052D4C AFA20010 */  sw         $v0, 0x10($sp)
/* FC260 80052D50 8E44000C */  lw         $a0, 0xc($s2)
/* FC264 80052D54 240600FF */  addiu      $a2, $zero, 0xff
/* FC268 80052D58 0C028E41 */  jal        func_800A3904
/* FC26C 80052D5C 240700FF */   addiu     $a3, $zero, 0xff
/* FC270 80052D60 8E43000C */  lw         $v1, 0xc($s2)
/* FC274 80052D64 9462001E */  lhu        $v0, 0x1e($v1)
/* FC278 80052D68 24040017 */  addiu      $a0, $zero, 0x17
/* FC27C 80052D6C 34420006 */  ori        $v0, $v0, 6
/* FC280 80052D70 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FC284 80052D74 A462001E */   sh        $v0, 0x1e($v1)
/* FC288 80052D78 00408021 */  addu       $s0, $v0, $zero
/* FC28C 80052D7C 3C01C163 */  lui        $at, 0xc163
/* FC290 80052D80 3421D70A */  ori        $at, $at, 0xd70a
/* FC294 80052D84 44810000 */  mtc1       $at, $f0
/* FC298 80052D88 3C01C223 */  lui        $at, 0xc223
/* FC29C 80052D8C 342151EC */  ori        $at, $at, 0x51ec
/* FC2A0 80052D90 44811000 */  mtc1       $at, $f2
/* FC2A4 80052D94 3C014212 */  lui        $at, 0x4212
/* FC2A8 80052D98 34215C29 */  ori        $at, $at, 0x5c29
/* FC2AC 80052D9C 44812000 */  mtc1       $at, $f4
/* FC2B0 80052DA0 3C013CA3 */  lui        $at, 0x3ca3
/* FC2B4 80052DA4 3421D70A */  ori        $at, $at, 0xd70a
/* FC2B8 80052DA8 44813000 */  mtc1       $at, $f6
/* FC2BC 80052DAC 3C014334 */  lui        $at, 0x4334
/* FC2C0 80052DB0 44814000 */  mtc1       $at, $f8
/* FC2C4 80052DB4 02002021 */  addu       $a0, $s0, $zero
/* FC2C8 80052DB8 2405008A */  addiu      $a1, $zero, 0x8a
/* FC2CC 80052DBC 240200FF */  addiu      $v0, $zero, 0xff
/* FC2D0 80052DC0 A6020074 */  sh         $v0, 0x74($s0)
/* FC2D4 80052DC4 A6020076 */  sh         $v0, 0x76($s0)
/* FC2D8 80052DC8 A6020078 */  sh         $v0, 0x78($s0)
/* FC2DC 80052DCC A602007A */  sh         $v0, 0x7a($s0)
/* FC2E0 80052DD0 2402002F */  addiu      $v0, $zero, 0x2f
/* FC2E4 80052DD4 AE00001C */  sw         $zero, 0x1c($s0)
/* FC2E8 80052DD8 AE000024 */  sw         $zero, 0x24($s0)
/* FC2EC 80052DDC A6020070 */  sh         $v0, 0x70($s0)
/* FC2F0 80052DE0 E6000010 */  swc1       $f0, 0x10($s0)
/* FC2F4 80052DE4 E6020014 */  swc1       $f2, 0x14($s0)
/* FC2F8 80052DE8 E6040018 */  swc1       $f4, 0x18($s0)
/* FC2FC 80052DEC E6060028 */  swc1       $f6, 0x28($s0)
/* FC300 80052DF0 0C00DFE6 */  jal        func_80037F98_E14A8
/* FC304 80052DF4 E6080020 */   swc1      $f8, 0x20($s0)
/* FC308 80052DF8 8E020004 */  lw         $v0, 4($s0)
/* FC30C 80052DFC A0400067 */  sb         $zero, 0x67($v0)
/* FC310 80052E00 8E030004 */  lw         $v1, 4($s0)
/* FC314 80052E04 90620066 */  lbu        $v0, 0x66($v1)
/* FC318 80052E08 34420007 */  ori        $v0, $v0, 7
/* FC31C 80052E0C A0620066 */  sb         $v0, 0x66($v1)
/* FC320 80052E10 8E040004 */  lw         $a0, 4($s0)
/* FC324 80052E14 3C058007 */  lui        $a1, %hi(D_8006A244_113754)
/* FC328 80052E18 24A5A244 */  addiu      $a1, $a1, %lo(D_8006A244_113754)
/* FC32C 80052E1C 0C0284DC */  jal        func_800A1370
/* FC330 80052E20 00009821 */   addu      $s3, $zero, $zero
/* FC334 80052E24 8E040004 */  lw         $a0, 4($s0)
/* FC338 80052E28 00021400 */  sll        $v0, $v0, 0x10
/* FC33C 80052E2C 0C0285CC */  jal        func_800A1730
/* FC340 80052E30 00022C03 */   sra       $a1, $v0, 0x10
/* FC344 80052E34 AFA20020 */  sw         $v0, 0x20($sp)
/* FC348 80052E38 8E040004 */  lw         $a0, 4($s0)
/* FC34C 80052E3C 3C058007 */  lui        $a1, %hi(D_8006A24C_11375C)
/* FC350 80052E40 0C0284DC */  jal        func_800A1370
/* FC354 80052E44 24A5A24C */   addiu     $a1, $a1, %lo(D_8006A24C_11375C)
/* FC358 80052E48 8E040004 */  lw         $a0, 4($s0)
/* FC35C 80052E4C 00021400 */  sll        $v0, $v0, 0x10
/* FC360 80052E50 0C0285CC */  jal        func_800A1730
/* FC364 80052E54 00022C03 */   sra       $a1, $v0, 0x10
/* FC368 80052E58 AFA20024 */  sw         $v0, 0x24($sp)
/* FC36C 80052E5C 8E040004 */  lw         $a0, 4($s0)
/* FC370 80052E60 3C058007 */  lui        $a1, %hi(D_8006A254_113764)
/* FC374 80052E64 0C0284DC */  jal        func_800A1370
/* FC378 80052E68 24A5A254 */   addiu     $a1, $a1, %lo(D_8006A254_113764)
/* FC37C 80052E6C 8E040004 */  lw         $a0, 4($s0)
/* FC380 80052E70 00021400 */  sll        $v0, $v0, 0x10
/* FC384 80052E74 0C0285CC */  jal        func_800A1730
/* FC388 80052E78 00022C03 */   sra       $a1, $v0, 0x10
/* FC38C 80052E7C AFA20028 */  sw         $v0, 0x28($sp)
/* FC390 80052E80 8E040004 */  lw         $a0, 4($s0)
/* FC394 80052E84 3C058007 */  lui        $a1, %hi(D_8006A25C_11376C)
/* FC398 80052E88 0C0284DC */  jal        func_800A1370
/* FC39C 80052E8C 24A5A25C */   addiu     $a1, $a1, %lo(D_8006A25C_11376C)
/* FC3A0 80052E90 8E040004 */  lw         $a0, 4($s0)
/* FC3A4 80052E94 00021400 */  sll        $v0, $v0, 0x10
/* FC3A8 80052E98 0C0285CC */  jal        func_800A1730
/* FC3AC 80052E9C 00022C03 */   sra       $a1, $v0, 0x10
/* FC3B0 80052EA0 AFA2002C */  sw         $v0, 0x2c($sp)
/* FC3B4 80052EA4 8E040004 */  lw         $a0, 4($s0)
/* FC3B8 80052EA8 3C058007 */  lui        $a1, %hi(D_8006A264_113774)
/* FC3BC 80052EAC 0C0284DC */  jal        func_800A1370
/* FC3C0 80052EB0 24A5A264 */   addiu     $a1, $a1, %lo(D_8006A264_113774)
/* FC3C4 80052EB4 8E040004 */  lw         $a0, 4($s0)
/* FC3C8 80052EB8 00021400 */  sll        $v0, $v0, 0x10
/* FC3CC 80052EBC 0C0285CC */  jal        func_800A1730
/* FC3D0 80052EC0 00022C03 */   sra       $a1, $v0, 0x10
/* FC3D4 80052EC4 AFA20030 */  sw         $v0, 0x30($sp)
/* FC3D8 80052EC8 8E040004 */  lw         $a0, 4($s0)
/* FC3DC 80052ECC 3C058007 */  lui        $a1, %hi(D_8006A26C_11377C)
/* FC3E0 80052ED0 0C0284DC */  jal        func_800A1370
/* FC3E4 80052ED4 24A5A26C */   addiu     $a1, $a1, %lo(D_8006A26C_11377C)
/* FC3E8 80052ED8 8E040004 */  lw         $a0, 4($s0)
/* FC3EC 80052EDC 00021400 */  sll        $v0, $v0, 0x10
/* FC3F0 80052EE0 0C0285CC */  jal        func_800A1730
/* FC3F4 80052EE4 00022C03 */   sra       $a1, $v0, 0x10
/* FC3F8 80052EE8 AFA20034 */  sw         $v0, 0x34($sp)
/* FC3FC 80052EEC 8E040004 */  lw         $a0, 4($s0)
/* FC400 80052EF0 3C058007 */  lui        $a1, %hi(D_8006A274_113784)
/* FC404 80052EF4 0C0284DC */  jal        func_800A1370
/* FC408 80052EF8 24A5A274 */   addiu     $a1, $a1, %lo(D_8006A274_113784)
/* FC40C 80052EFC 8E040004 */  lw         $a0, 4($s0)
/* FC410 80052F00 00021400 */  sll        $v0, $v0, 0x10
/* FC414 80052F04 0C0285CC */  jal        func_800A1730
/* FC418 80052F08 00022C03 */   sra       $a1, $v0, 0x10
/* FC41C 80052F0C AFA20038 */  sw         $v0, 0x38($sp)
/* FC420 80052F10 8E040004 */  lw         $a0, 4($s0)
/* FC424 80052F14 3C058007 */  lui        $a1, %hi(D_8006A27C_11378C)
/* FC428 80052F18 0C0284DC */  jal        func_800A1370
/* FC42C 80052F1C 24A5A27C */   addiu     $a1, $a1, %lo(D_8006A27C_11378C)
/* FC430 80052F20 8E040004 */  lw         $a0, 4($s0)
/* FC434 80052F24 00021400 */  sll        $v0, $v0, 0x10
/* FC438 80052F28 0C0285CC */  jal        func_800A1730
/* FC43C 80052F2C 00022C03 */   sra       $a1, $v0, 0x10
/* FC440 80052F30 AFA2003C */  sw         $v0, 0x3c($sp)
/* FC444 80052F34 8E040004 */  lw         $a0, 4($s0)
/* FC448 80052F38 3C058007 */  lui        $a1, %hi(D_8006A284_113794)
/* FC44C 80052F3C 0C0284DC */  jal        func_800A1370
/* FC450 80052F40 24A5A284 */   addiu     $a1, $a1, %lo(D_8006A284_113794)
/* FC454 80052F44 8E040004 */  lw         $a0, 4($s0)
/* FC458 80052F48 00021400 */  sll        $v0, $v0, 0x10
/* FC45C 80052F4C 0C0285CC */  jal        func_800A1730
/* FC460 80052F50 00022C03 */   sra       $a1, $v0, 0x10
/* FC464 80052F54 27B00018 */  addiu      $s0, $sp, 0x18
/* FC468 80052F58 240FF800 */  addiu      $t7, $zero, -0x800
/* FC46C 80052F5C AFA20040 */  sw         $v0, 0x40($sp)
/* FC470 80052F60 00006821 */  addu       $t5, $zero, $zero
.L80052F64:
/* FC474 80052F64 326200FF */  andi       $v0, $s3, 0xff
/* FC478 80052F68 00021080 */  sll        $v0, $v0, 2
/* FC47C 80052F6C 00506021 */  addu       $t4, $v0, $s0
.L80052F70:
/* FC480 80052F70 8D8A0008 */  lw         $t2, 8($t4)
/* FC484 80052F74 95430000 */  lhu        $v1, ($t2)
/* FC488 80052F78 00035AC2 */  srl        $t3, $v1, 0xb
/* FC48C 80052F7C 3062003E */  andi       $v0, $v1, 0x3e
/* FC490 80052F80 00024842 */  srl        $t1, $v0, 1
/* FC494 80052F84 306207C0 */  andi       $v0, $v1, 0x7c0
/* FC498 80052F88 00023182 */  srl        $a2, $v0, 6
/* FC49C 80052F8C 30680001 */  andi       $t0, $v1, 1
/* FC4A0 80052F90 316700FF */  andi       $a3, $t3, 0xff
/* FC4A4 80052F94 00C02821 */  addu       $a1, $a2, $zero
/* FC4A8 80052F98 00E51826 */  xor        $v1, $a3, $a1
/* FC4AC 80052F9C 2C630001 */  sltiu      $v1, $v1, 1
/* FC4B0 80052FA0 312400FF */  andi       $a0, $t1, 0xff
/* FC4B4 80052FA4 00A41026 */  xor        $v0, $a1, $a0
/* FC4B8 80052FA8 2C420001 */  sltiu      $v0, $v0, 1
/* FC4BC 80052FAC 00621824 */  and        $v1, $v1, $v0
/* FC4C0 80052FB0 1060000A */  beqz       $v1, .L80052FDC
/* FC4C4 80052FB4 01007021 */   addu      $t6, $t0, $zero
/* FC4C8 80052FB8 000412C0 */  sll        $v0, $a0, 0xb
/* FC4CC 80052FBC 004F1024 */  and        $v0, $v0, $t7
/* FC4D0 80052FC0 00051980 */  sll        $v1, $a1, 6
/* FC4D4 80052FC4 00431025 */  or         $v0, $v0, $v1
/* FC4D8 80052FC8 00071840 */  sll        $v1, $a3, 1
/* FC4DC 80052FCC 00431025 */  or         $v0, $v0, $v1
/* FC4E0 80052FD0 01021025 */  or         $v0, $t0, $v0
/* FC4E4 80052FD4 08014C0A */  j          .L80053028
/* FC4E8 80052FD8 A5420000 */   sh        $v0, ($t2)
.L80052FDC:
/* FC4EC 80052FDC 24C50002 */  addiu      $a1, $a2, 2
/* FC4F0 80052FE0 30A300FF */  andi       $v1, $a1, 0xff
/* FC4F4 80052FE4 2C620020 */  sltiu      $v0, $v1, 0x20
/* FC4F8 80052FE8 14400003 */  bnez       $v0, .L80052FF8
/* FC4FC 80052FEC 00000000 */   nop
/* FC500 80052FF0 08014C00 */  j          .L80053000
/* FC504 80052FF4 2405001F */   addiu     $a1, $zero, 0x1f
.L80052FF8:
/* FC508 80052FF8 50600001 */  beql       $v1, $zero, .L80053000
/* FC50C 80052FFC 24050001 */   addiu     $a1, $zero, 1
.L80053000:
/* FC510 80053000 8D840008 */  lw         $a0, 8($t4)
/* FC514 80053004 00091AC0 */  sll        $v1, $t1, 0xb
/* FC518 80053008 006F1824 */  and        $v1, $v1, $t7
/* FC51C 8005300C 00051180 */  sll        $v0, $a1, 6
/* FC520 80053010 304207C0 */  andi       $v0, $v0, 0x7c0
/* FC524 80053014 00621825 */  or         $v1, $v1, $v0
/* FC528 80053018 000B1040 */  sll        $v0, $t3, 1
/* FC52C 8005301C 00621825 */  or         $v1, $v1, $v0
/* FC530 80053020 01C31825 */  or         $v1, $t6, $v1
/* FC534 80053024 A4830000 */  sh         $v1, ($a0)
.L80053028:
/* FC538 80053028 8D820008 */  lw         $v0, 8($t4)
/* FC53C 8005302C 25AD0001 */  addiu      $t5, $t5, 1
/* FC540 80053030 24420002 */  addiu      $v0, $v0, 2
/* FC544 80053034 AD820008 */  sw         $v0, 8($t4)
/* FC548 80053038 31A200FF */  andi       $v0, $t5, 0xff
/* FC54C 8005303C 2C420010 */  sltiu      $v0, $v0, 0x10
/* FC550 80053040 1440FFCB */  bnez       $v0, .L80052F70
/* FC554 80053044 00000000 */   nop
/* FC558 80053048 26730001 */  addiu      $s3, $s3, 1
/* FC55C 8005304C 326200FF */  andi       $v0, $s3, 0xff
/* FC560 80053050 2C420009 */  sltiu      $v0, $v0, 9
/* FC564 80053054 1440FFC3 */  bnez       $v0, .L80052F64
/* FC568 80053058 00006821 */   addu      $t5, $zero, $zero
/* FC56C 8005305C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FC570 80053060 2404001A */   addiu     $a0, $zero, 0x1a
/* FC574 80053064 00408021 */  addu       $s0, $v0, $zero
/* FC578 80053068 3C01C163 */  lui        $at, 0xc163
/* FC57C 8005306C 3421D70A */  ori        $at, $at, 0xd70a
/* FC580 80053070 44810000 */  mtc1       $at, $f0
/* FC584 80053074 3C01C223 */  lui        $at, 0xc223
/* FC588 80053078 342151EC */  ori        $at, $at, 0x51ec
/* FC58C 8005307C 44811000 */  mtc1       $at, $f2
/* FC590 80053080 3C014212 */  lui        $at, 0x4212
/* FC594 80053084 34215C29 */  ori        $at, $at, 0x5c29
/* FC598 80053088 44812000 */  mtc1       $at, $f4
/* FC59C 8005308C 3C013CA3 */  lui        $at, 0x3ca3
/* FC5A0 80053090 3421D70A */  ori        $at, $at, 0xd70a
/* FC5A4 80053094 44813000 */  mtc1       $at, $f6
/* FC5A8 80053098 3C014334 */  lui        $at, 0x4334
/* FC5AC 8005309C 44814000 */  mtc1       $at, $f8
/* FC5B0 800530A0 02002021 */  addu       $a0, $s0, $zero
/* FC5B4 800530A4 2405012B */  addiu      $a1, $zero, 0x12b
/* FC5B8 800530A8 240200FF */  addiu      $v0, $zero, 0xff
/* FC5BC 800530AC AE00001C */  sw         $zero, 0x1c($s0)
/* FC5C0 800530B0 AE000024 */  sw         $zero, 0x24($s0)
/* FC5C4 800530B4 A6020074 */  sh         $v0, 0x74($s0)
/* FC5C8 800530B8 A6020076 */  sh         $v0, 0x76($s0)
/* FC5CC 800530BC A6020078 */  sh         $v0, 0x78($s0)
/* FC5D0 800530C0 A602007A */  sh         $v0, 0x7a($s0)
/* FC5D4 800530C4 E6000010 */  swc1       $f0, 0x10($s0)
/* FC5D8 800530C8 E6020014 */  swc1       $f2, 0x14($s0)
/* FC5DC 800530CC E6040018 */  swc1       $f4, 0x18($s0)
/* FC5E0 800530D0 E6060028 */  swc1       $f6, 0x28($s0)
/* FC5E4 800530D4 0C00DFE6 */  jal        func_80037F98_E14A8
/* FC5E8 800530D8 E6080020 */   swc1      $f8, 0x20($s0)
/* FC5EC 800530DC 8E020004 */  lw         $v0, 4($s0)
/* FC5F0 800530E0 A0400067 */  sb         $zero, 0x67($v0)
/* FC5F4 800530E4 8E030004 */  lw         $v1, 4($s0)
/* FC5F8 800530E8 24040046 */  addiu      $a0, $zero, 0x46
/* FC5FC 800530EC 24050046 */  addiu      $a1, $zero, 0x46
/* FC600 800530F0 90620066 */  lbu        $v0, 0x66($v1)
/* FC604 800530F4 24060046 */  addiu      $a2, $zero, 0x46
/* FC608 800530F8 240700FF */  addiu      $a3, $zero, 0xff
/* FC60C 800530FC 34420003 */  ori        $v0, $v0, 3
/* FC610 80053100 A0620066 */  sb         $v0, 0x66($v1)
/* FC614 80053104 240200FF */  addiu      $v0, $zero, 0xff
/* FC618 80053108 AFA20010 */  sw         $v0, 0x10($sp)
/* FC61C 8005310C 0C00E34F */  jal        func_80038D3C_E224C
/* FC620 80053110 AFA20014 */   sw        $v0, 0x14($sp)
/* FC624 80053114 3C014000 */  lui        $at, 0x4000
/* FC628 80053118 44810000 */  mtc1       $at, $f0
/* FC62C 8005311C 3C018015 */  lui        $at, %hi(D_8014A054)
/* FC630 80053120 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* FC634 80053124 3C018015 */  lui        $at, %hi(D_8014A050)
/* FC638 80053128 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* FC63C 8005312C 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* FC640 80053130 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* FC644 80053134 3C018017 */  lui        $at, %hi(D_8016E568)
/* FC648 80053138 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* FC64C 8005313C 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* FC650 80053140 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* FC654 80053144 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* FC658 80053148 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* FC65C 8005314C 8FBF0058 */  lw         $ra, 0x58($sp)
/* FC660 80053150 8FB30054 */  lw         $s3, 0x54($sp)
/* FC664 80053154 8FB20050 */  lw         $s2, 0x50($sp)
/* FC668 80053158 8FB1004C */  lw         $s1, 0x4c($sp)
/* FC66C 8005315C 8FB00048 */  lw         $s0, 0x48($sp)
/* FC670 80053160 03E00008 */  jr         $ra
/* FC674 80053164 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_80053168_FC678
/* FC678 80053168 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* FC67C 8005316C AFBF0034 */  sw         $ra, 0x34($sp)
/* FC680 80053170 AFB40030 */  sw         $s4, 0x30($sp)
/* FC684 80053174 AFB3002C */  sw         $s3, 0x2c($sp)
/* FC688 80053178 AFB20028 */  sw         $s2, 0x28($sp)
/* FC68C 8005317C AFB10024 */  sw         $s1, 0x24($sp)
/* FC690 80053180 AFB00020 */  sw         $s0, 0x20($sp)
/* FC694 80053184 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* FC698 80053188 F7B80048 */  sdc1       $f24, 0x48($sp)
/* FC69C 8005318C F7B60040 */  sdc1       $f22, 0x40($sp)
/* FC6A0 80053190 F7B40038 */  sdc1       $f20, 0x38($sp)
/* FC6A4 80053194 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FC6A8 80053198 24040002 */   addiu     $a0, $zero, 2
/* FC6AC 8005319C 00408021 */  addu       $s0, $v0, $zero
/* FC6B0 800531A0 3C013CA3 */  lui        $at, 0x3ca3
/* FC6B4 800531A4 3421D70A */  ori        $at, $at, 0xd70a
/* FC6B8 800531A8 44810000 */  mtc1       $at, $f0
/* FC6BC 800531AC 02002021 */  addu       $a0, $s0, $zero
/* FC6C0 800531B0 24050004 */  addiu      $a1, $zero, 4
/* FC6C4 800531B4 240200FF */  addiu      $v0, $zero, 0xff
/* FC6C8 800531B8 AE000010 */  sw         $zero, 0x10($s0)
/* FC6CC 800531BC AE000014 */  sw         $zero, 0x14($s0)
/* FC6D0 800531C0 AE000018 */  sw         $zero, 0x18($s0)
/* FC6D4 800531C4 AE00001C */  sw         $zero, 0x1c($s0)
/* FC6D8 800531C8 AE000020 */  sw         $zero, 0x20($s0)
/* FC6DC 800531CC AE000024 */  sw         $zero, 0x24($s0)
/* FC6E0 800531D0 A6020074 */  sh         $v0, 0x74($s0)
/* FC6E4 800531D4 A6020076 */  sh         $v0, 0x76($s0)
/* FC6E8 800531D8 A6020078 */  sh         $v0, 0x78($s0)
/* FC6EC 800531DC A602007A */  sh         $v0, 0x7a($s0)
/* FC6F0 800531E0 0C00DFE6 */  jal        func_80037F98_E14A8
/* FC6F4 800531E4 E6000028 */   swc1      $f0, 0x28($s0)
/* FC6F8 800531E8 8E020004 */  lw         $v0, 4($s0)
/* FC6FC 800531EC A0400067 */  sb         $zero, 0x67($v0)
/* FC700 800531F0 8E030004 */  lw         $v1, 4($s0)
/* FC704 800531F4 90620066 */  lbu        $v0, 0x66($v1)
/* FC708 800531F8 34420003 */  ori        $v0, $v0, 3
/* FC70C 800531FC A0620066 */  sb         $v0, 0x66($v1)
/* FC710 80053200 8E040004 */  lw         $a0, 4($s0)
/* FC714 80053204 0C028703 */  jal        func_800A1C0C
/* FC718 80053208 00002821 */   addu      $a1, $zero, $zero
/* FC71C 8005320C 240405DC */  addiu      $a0, $zero, 0x5dc
/* FC720 80053210 3C013F80 */  lui        $at, 0x3f80
/* FC724 80053214 4481A000 */  mtc1       $at, $f20
/* FC728 80053218 3C01C0A0 */  lui        $at, 0xc0a0
/* FC72C 8005321C 44810000 */  mtc1       $at, $f0
/* FC730 80053220 3C014361 */  lui        $at, 0x4361
/* FC734 80053224 44811000 */  mtc1       $at, $f2
/* FC738 80053228 3C01C270 */  lui        $at, 0xc270
/* FC73C 8005322C 44812000 */  mtc1       $at, $f4
/* FC740 80053230 24050002 */  addiu      $a1, $zero, 2
/* FC744 80053234 3C018015 */  lui        $at, %hi(D_8014A064)
/* FC748 80053238 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* FC74C 8005323C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* FC750 80053240 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* FC754 80053244 3C018015 */  lui        $at, %hi(D_8014A070)
/* FC758 80053248 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* FC75C 8005324C 3C018015 */  lui        $at, %hi(D_8014A078)
/* FC760 80053250 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* FC764 80053254 3C018015 */  lui        $at, %hi(D_8014A084)
/* FC768 80053258 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* FC76C 8005325C 3C018015 */  lui        $at, %hi(D_8014A068)
/* FC770 80053260 E434A068 */  swc1       $f20, %lo(D_8014A068)($at)
/* FC774 80053264 3C018015 */  lui        $at, %hi(D_8014A074)
/* FC778 80053268 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* FC77C 8005326C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* FC780 80053270 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* FC784 80053274 3C018015 */  lui        $at, %hi(D_8014A080)
/* FC788 80053278 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* FC78C 8005327C 3C018015 */  lui        $at, %hi(D_8014A088)
/* FC790 80053280 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* FC794 80053284 0C00D925 */  jal        func_80036494_DF9A4
/* FC798 80053288 24060082 */   addiu     $a2, $zero, 0x82
/* FC79C 8005328C 00409021 */  addu       $s2, $v0, $zero
/* FC7A0 80053290 8E44000C */  lw         $a0, 0xc($s2)
/* FC7A4 80053294 3C064198 */  lui        $a2, 0x4198
/* FC7A8 80053298 4407A000 */  mfc1       $a3, $f20
/* FC7AC 8005329C 00000000 */  nop
/* FC7B0 800532A0 0C02915B */  jal        func_800A456C
/* FC7B4 800532A4 00002821 */   addu      $a1, $zero, $zero
/* FC7B8 800532A8 8E44000C */  lw         $a0, 0xc($s2)
/* FC7BC 800532AC 24050040 */  addiu      $a1, $zero, 0x40
/* FC7C0 800532B0 0C028D89 */  jal        func_800A3624
/* FC7C4 800532B4 24060040 */   addiu     $a2, $zero, 0x40
/* FC7C8 800532B8 8E42000C */  lw         $v0, 0xc($s2)
/* FC7CC 800532BC 2410004A */  addiu      $s0, $zero, 0x4a
/* FC7D0 800532C0 A450001C */  sh         $s0, 0x1c($v0)
/* FC7D4 800532C4 8E43000C */  lw         $v1, 0xc($s2)
/* FC7D8 800532C8 240405DB */  addiu      $a0, $zero, 0x5db
/* FC7DC 800532CC 9462001E */  lhu        $v0, 0x1e($v1)
/* FC7E0 800532D0 24050002 */  addiu      $a1, $zero, 2
/* FC7E4 800532D4 24060083 */  addiu      $a2, $zero, 0x83
/* FC7E8 800532D8 34420104 */  ori        $v0, $v0, 0x104
/* FC7EC 800532DC 0C00D925 */  jal        func_80036494_DF9A4
/* FC7F0 800532E0 A462001E */   sh        $v0, 0x1e($v1)
/* FC7F4 800532E4 00409021 */  addu       $s2, $v0, $zero
/* FC7F8 800532E8 8E44000C */  lw         $a0, 0xc($s2)
/* FC7FC 800532EC 8C82000C */  lw         $v0, 0xc($a0)
/* FC800 800532F0 94450000 */  lhu        $a1, ($v0)
/* FC804 800532F4 00003021 */  addu       $a2, $zero, $zero
/* FC808 800532F8 0C02912A */  jal        func_800A44A8
/* FC80C 800532FC 00052842 */   srl       $a1, $a1, 1
/* FC810 80053300 8E44000C */  lw         $a0, 0xc($s2)
/* FC814 80053304 3C064001 */  lui        $a2, 0x4001
/* FC818 80053308 34C647AE */  ori        $a2, $a2, 0x47ae
/* FC81C 8005330C 3C074000 */  lui        $a3, 0x4000
/* FC820 80053310 0C02915B */  jal        func_800A456C
/* FC824 80053314 00002821 */   addu      $a1, $zero, $zero
/* FC828 80053318 8E44000C */  lw         $a0, 0xc($s2)
/* FC82C 8005331C 24050280 */  addiu      $a1, $zero, 0x280
/* FC830 80053320 0C028D89 */  jal        func_800A3624
/* FC834 80053324 24060280 */   addiu     $a2, $zero, 0x280
/* FC838 80053328 8E42000C */  lw         $v0, 0xc($s2)
/* FC83C 8005332C A450001C */  sh         $s0, 0x1c($v0)
/* FC840 80053330 8E43000C */  lw         $v1, 0xc($s2)
/* FC844 80053334 240405DD */  addiu      $a0, $zero, 0x5dd
/* FC848 80053338 9462001E */  lhu        $v0, 0x1e($v1)
/* FC84C 8005333C 24050001 */  addiu      $a1, $zero, 1
/* FC850 80053340 24060088 */  addiu      $a2, $zero, 0x88
/* FC854 80053344 34420104 */  ori        $v0, $v0, 0x104
/* FC858 80053348 0C00D925 */  jal        func_80036494_DF9A4
/* FC85C 8005334C A462001E */   sh        $v0, 0x1e($v1)
/* FC860 80053350 00409021 */  addu       $s2, $v0, $zero
/* FC864 80053354 8E44000C */  lw         $a0, 0xc($s2)
/* FC868 80053358 240503C4 */  addiu      $a1, $zero, 0x3c4
/* FC86C 8005335C 0C028D89 */  jal        func_800A3624
/* FC870 80053360 24060078 */   addiu     $a2, $zero, 0x78
/* FC874 80053364 8E42000C */  lw         $v0, 0xc($s2)
/* FC878 80053368 2410004B */  addiu      $s0, $zero, 0x4b
/* FC87C 8005336C A450001C */  sh         $s0, 0x1c($v0)
/* FC880 80053370 8E43000C */  lw         $v1, 0xc($s2)
/* FC884 80053374 9462001E */  lhu        $v0, 0x1e($v1)
/* FC888 80053378 34420104 */  ori        $v0, $v0, 0x104
/* FC88C 8005337C A462001E */  sh         $v0, 0x1e($v1)
/* FC890 80053380 8E44000C */  lw         $a0, 0xc($s2)
/* FC894 80053384 0C00DE7C */  jal        func_800379F0_E0F00
/* FC898 80053388 24050001 */   addiu     $a1, $zero, 1
/* FC89C 8005338C 8E44000C */  lw         $a0, 0xc($s2)
/* FC8A0 80053390 00002821 */  addu       $a1, $zero, $zero
/* FC8A4 80053394 2442FFFF */  addiu      $v0, $v0, -1
/* FC8A8 80053398 0C00DE6C */  jal        func_800379B0_E0EC0
/* FC8AC 8005339C 3046FFFF */   andi      $a2, $v0, 0xffff
/* FC8B0 800533A0 240405DE */  addiu      $a0, $zero, 0x5de
/* FC8B4 800533A4 24050001 */  addiu      $a1, $zero, 1
/* FC8B8 800533A8 0C00D925 */  jal        func_80036494_DF9A4
/* FC8BC 800533AC 24060089 */   addiu     $a2, $zero, 0x89
/* FC8C0 800533B0 00409021 */  addu       $s2, $v0, $zero
/* FC8C4 800533B4 8E44000C */  lw         $a0, 0xc($s2)
/* FC8C8 800533B8 24050068 */  addiu      $a1, $zero, 0x68
/* FC8CC 800533BC 0C028D89 */  jal        func_800A3624
/* FC8D0 800533C0 240600F8 */   addiu     $a2, $zero, 0xf8
/* FC8D4 800533C4 8E42000C */  lw         $v0, 0xc($s2)
/* FC8D8 800533C8 A450001C */  sh         $s0, 0x1c($v0)
/* FC8DC 800533CC 8E43000C */  lw         $v1, 0xc($s2)
/* FC8E0 800533D0 9462001E */  lhu        $v0, 0x1e($v1)
/* FC8E4 800533D4 34420104 */  ori        $v0, $v0, 0x104
/* FC8E8 800533D8 A462001E */  sh         $v0, 0x1e($v1)
/* FC8EC 800533DC 8E44000C */  lw         $a0, 0xc($s2)
/* FC8F0 800533E0 0C00DE7C */  jal        func_800379F0_E0F00
/* FC8F4 800533E4 24050001 */   addiu     $a1, $zero, 1
/* FC8F8 800533E8 8E44000C */  lw         $a0, 0xc($s2)
/* FC8FC 800533EC 00002821 */  addu       $a1, $zero, $zero
/* FC900 800533F0 2442FFFF */  addiu      $v0, $v0, -1
/* FC904 800533F4 0C00DE6C */  jal        func_800379B0_E0EC0
/* FC908 800533F8 3046FFFF */   andi      $a2, $v0, 0xffff
/* FC90C 800533FC 240405DF */  addiu      $a0, $zero, 0x5df
/* FC910 80053400 24050001 */  addiu      $a1, $zero, 1
/* FC914 80053404 0C00D925 */  jal        func_80036494_DF9A4
/* FC918 80053408 2406008A */   addiu     $a2, $zero, 0x8a
/* FC91C 8005340C 00409021 */  addu       $s2, $v0, $zero
/* FC920 80053410 8E44000C */  lw         $a0, 0xc($s2)
/* FC924 80053414 240500E0 */  addiu      $a1, $zero, 0xe0
/* FC928 80053418 0C028D89 */  jal        func_800A3624
/* FC92C 8005341C 24060070 */   addiu     $a2, $zero, 0x70
/* FC930 80053420 8E42000C */  lw         $v0, 0xc($s2)
/* FC934 80053424 A450001C */  sh         $s0, 0x1c($v0)
/* FC938 80053428 8E43000C */  lw         $v1, 0xc($s2)
/* FC93C 8005342C 9462001E */  lhu        $v0, 0x1e($v1)
/* FC940 80053430 34420104 */  ori        $v0, $v0, 0x104
/* FC944 80053434 A462001E */  sh         $v0, 0x1e($v1)
/* FC948 80053438 8E44000C */  lw         $a0, 0xc($s2)
/* FC94C 8005343C 0C00DE7C */  jal        func_800379F0_E0F00
/* FC950 80053440 24050001 */   addiu     $a1, $zero, 1
/* FC954 80053444 8E44000C */  lw         $a0, 0xc($s2)
/* FC958 80053448 00002821 */  addu       $a1, $zero, $zero
/* FC95C 8005344C 2442FFFF */  addiu      $v0, $v0, -1
/* FC960 80053450 0C00DE6C */  jal        func_800379B0_E0EC0
/* FC964 80053454 3046FFFF */   andi      $a2, $v0, 0xffff
/* FC968 80053458 240405E0 */  addiu      $a0, $zero, 0x5e0
/* FC96C 8005345C 24050001 */  addiu      $a1, $zero, 1
/* FC970 80053460 0C00D925 */  jal        func_80036494_DF9A4
/* FC974 80053464 2406008B */   addiu     $a2, $zero, 0x8b
/* FC978 80053468 00409021 */  addu       $s2, $v0, $zero
/* FC97C 8005346C 8E44000C */  lw         $a0, 0xc($s2)
/* FC980 80053470 2405045C */  addiu      $a1, $zero, 0x45c
/* FC984 80053474 0C028D89 */  jal        func_800A3624
/* FC988 80053478 240600C0 */   addiu     $a2, $zero, 0xc0
/* FC98C 8005347C 8E42000C */  lw         $v0, 0xc($s2)
/* FC990 80053480 A450001C */  sh         $s0, 0x1c($v0)
/* FC994 80053484 8E43000C */  lw         $v1, 0xc($s2)
/* FC998 80053488 9462001E */  lhu        $v0, 0x1e($v1)
/* FC99C 8005348C 34420104 */  ori        $v0, $v0, 0x104
/* FC9A0 80053490 A462001E */  sh         $v0, 0x1e($v1)
/* FC9A4 80053494 8E44000C */  lw         $a0, 0xc($s2)
/* FC9A8 80053498 0C00DE7C */  jal        func_800379F0_E0F00
/* FC9AC 8005349C 24050001 */   addiu     $a1, $zero, 1
/* FC9B0 800534A0 8E44000C */  lw         $a0, 0xc($s2)
/* FC9B4 800534A4 00002821 */  addu       $a1, $zero, $zero
/* FC9B8 800534A8 2442FFFF */  addiu      $v0, $v0, -1
/* FC9BC 800534AC 0C00DE6C */  jal        func_800379B0_E0EC0
/* FC9C0 800534B0 3046FFFF */   andi      $a2, $v0, 0xffff
/* FC9C4 800534B4 240405E1 */  addiu      $a0, $zero, 0x5e1
/* FC9C8 800534B8 24050001 */  addiu      $a1, $zero, 1
/* FC9CC 800534BC 0C00D925 */  jal        func_80036494_DF9A4
/* FC9D0 800534C0 2406008C */   addiu     $a2, $zero, 0x8c
/* FC9D4 800534C4 00409021 */  addu       $s2, $v0, $zero
/* FC9D8 800534C8 8E44000C */  lw         $a0, 0xc($s2)
/* FC9DC 800534CC 24050090 */  addiu      $a1, $zero, 0x90
/* FC9E0 800534D0 0C028D89 */  jal        func_800A3624
/* FC9E4 800534D4 24060094 */   addiu     $a2, $zero, 0x94
/* FC9E8 800534D8 8E42000C */  lw         $v0, 0xc($s2)
/* FC9EC 800534DC A450001C */  sh         $s0, 0x1c($v0)
/* FC9F0 800534E0 8E43000C */  lw         $v1, 0xc($s2)
/* FC9F4 800534E4 9462001E */  lhu        $v0, 0x1e($v1)
/* FC9F8 800534E8 34420104 */  ori        $v0, $v0, 0x104
/* FC9FC 800534EC A462001E */  sh         $v0, 0x1e($v1)
/* FCA00 800534F0 8E44000C */  lw         $a0, 0xc($s2)
/* FCA04 800534F4 00009821 */  addu       $s3, $zero, $zero
/* FCA08 800534F8 0C00DE7C */  jal        func_800379F0_E0F00
/* FCA0C 800534FC 24050001 */   addiu     $a1, $zero, 1
/* FCA10 80053500 8E44000C */  lw         $a0, 0xc($s2)
/* FCA14 80053504 00002821 */  addu       $a1, $zero, $zero
/* FCA18 80053508 2442FFFF */  addiu      $v0, $v0, -1
/* FCA1C 8005350C 0C00DE6C */  jal        func_800379B0_E0EC0
/* FCA20 80053510 3046FFFF */   andi      $a2, $v0, 0xffff
/* FCA24 80053514 327000FF */  andi       $s0, $s3, 0xff
.L80053518:
/* FCA28 80053518 26040206 */  addiu      $a0, $s0, 0x206
/* FCA2C 8005351C 24050002 */  addiu      $a1, $zero, 2
/* FCA30 80053520 26110077 */  addiu      $s1, $s0, 0x77
/* FCA34 80053524 3231FFFF */  andi       $s1, $s1, 0xffff
/* FCA38 80053528 0C00D925 */  jal        func_80036494_DF9A4
/* FCA3C 8005352C 02203021 */   addu      $a2, $s1, $zero
/* FCA40 80053530 00409021 */  addu       $s2, $v0, $zero
/* FCA44 80053534 8E44000C */  lw         $a0, 0xc($s2)
/* FCA48 80053538 8C82000C */  lw         $v0, 0xc($a0)
/* FCA4C 8005353C 94450000 */  lhu        $a1, ($v0)
/* FCA50 80053540 94460002 */  lhu        $a2, 2($v0)
/* FCA54 80053544 00052842 */  srl        $a1, $a1, 1
/* FCA58 80053548 0C02912A */  jal        func_800A44A8
/* FCA5C 8005354C 00063042 */   srl       $a2, $a2, 1
/* FCA60 80053550 8E44000C */  lw         $a0, 0xc($s2)
/* FCA64 80053554 24050280 */  addiu      $a1, $zero, 0x280
/* FCA68 80053558 0C028D89 */  jal        func_800A3624
/* FCA6C 8005355C 240601E0 */   addiu     $a2, $zero, 0x1e0
/* FCA70 80053560 8E43000C */  lw         $v1, 0xc($s2)
/* FCA74 80053564 2402004B */  addiu      $v0, $zero, 0x4b
/* FCA78 80053568 A462001C */  sh         $v0, 0x1c($v1)
/* FCA7C 8005356C 8E43000C */  lw         $v1, 0xc($s2)
/* FCA80 80053570 9462001E */  lhu        $v0, 0x1e($v1)
/* FCA84 80053574 02202021 */  addu       $a0, $s1, $zero
/* FCA88 80053578 2605007C */  addiu      $a1, $s0, 0x7c
/* FCA8C 8005357C 34420004 */  ori        $v0, $v0, 4
/* FCA90 80053580 0C00DD19 */  jal        func_80037464_E0974
/* FCA94 80053584 A462001E */   sh        $v0, 0x1e($v1)
/* FCA98 80053588 00409021 */  addu       $s2, $v0, $zero
/* FCA9C 8005358C 8E44000C */  lw         $a0, 0xc($s2)
/* FCAA0 80053590 8C82000C */  lw         $v0, 0xc($a0)
/* FCAA4 80053594 94450000 */  lhu        $a1, ($v0)
/* FCAA8 80053598 94460002 */  lhu        $a2, 2($v0)
/* FCAAC 8005359C 00052842 */  srl        $a1, $a1, 1
/* FCAB0 800535A0 0C02912A */  jal        func_800A44A8
/* FCAB4 800535A4 00063042 */   srl       $a2, $a2, 1
/* FCAB8 800535A8 8E44000C */  lw         $a0, 0xc($s2)
/* FCABC 800535AC 24050280 */  addiu      $a1, $zero, 0x280
/* FCAC0 800535B0 0C028D89 */  jal        func_800A3624
/* FCAC4 800535B4 240601E0 */   addiu     $a2, $zero, 0x1e0
/* FCAC8 800535B8 24020080 */  addiu      $v0, $zero, 0x80
/* FCACC 800535BC AFA20010 */  sw         $v0, 0x10($sp)
/* FCAD0 800535C0 8E44000C */  lw         $a0, 0xc($s2)
/* FCAD4 800535C4 240500FF */  addiu      $a1, $zero, 0xff
/* FCAD8 800535C8 240600FF */  addiu      $a2, $zero, 0xff
/* FCADC 800535CC 0C028E41 */  jal        func_800A3904
/* FCAE0 800535D0 240700FF */   addiu     $a3, $zero, 0xff
/* FCAE4 800535D4 8E43000C */  lw         $v1, 0xc($s2)
/* FCAE8 800535D8 2402004A */  addiu      $v0, $zero, 0x4a
/* FCAEC 800535DC A462001C */  sh         $v0, 0x1c($v1)
/* FCAF0 800535E0 8E43000C */  lw         $v1, 0xc($s2)
/* FCAF4 800535E4 9462001E */  lhu        $v0, 0x1e($v1)
/* FCAF8 800535E8 26730001 */  addiu      $s3, $s3, 1
/* FCAFC 800535EC 02202021 */  addu       $a0, $s1, $zero
/* FCB00 800535F0 34420004 */  ori        $v0, $v0, 4
/* FCB04 800535F4 0C00D8C1 */  jal        func_80036304_DF814
/* FCB08 800535F8 A462001E */   sh        $v0, 0x1e($v1)
/* FCB0C 800535FC 8C44000C */  lw         $a0, 0xc($v0)
/* FCB10 80053600 24050001 */  addiu      $a1, $zero, 1
/* FCB14 80053604 0C00DE72 */  jal        func_800379C8_E0ED8
/* FCB18 80053608 00003021 */   addu      $a2, $zero, $zero
/* FCB1C 8005360C 326200FF */  andi       $v0, $s3, 0xff
/* FCB20 80053610 2C420005 */  sltiu      $v0, $v0, 5
/* FCB24 80053614 1440FFC0 */  bnez       $v0, .L80053518
/* FCB28 80053618 327000FF */   andi      $s0, $s3, 0xff
/* FCB2C 8005361C 240405E2 */  addiu      $a0, $zero, 0x5e2
/* FCB30 80053620 24050002 */  addiu      $a1, $zero, 2
/* FCB34 80053624 0C00D925 */  jal        func_80036494_DF9A4
/* FCB38 80053628 24060054 */   addiu     $a2, $zero, 0x54
/* FCB3C 8005362C 00409021 */  addu       $s2, $v0, $zero
/* FCB40 80053630 3C014000 */  lui        $at, 0x4000
/* FCB44 80053634 4481A000 */  mtc1       $at, $f20
/* FCB48 80053638 8E44000C */  lw         $a0, 0xc($s2)
/* FCB4C 8005363C 4406A000 */  mfc1       $a2, $f20
/* FCB50 80053640 4407A000 */  mfc1       $a3, $f20
/* FCB54 80053644 00000000 */  nop
/* FCB58 80053648 0C02915B */  jal        func_800A456C
/* FCB5C 8005364C 00002821 */   addu      $a1, $zero, $zero
/* FCB60 80053650 8E44000C */  lw         $a0, 0xc($s2)
/* FCB64 80053654 24050040 */  addiu      $a1, $zero, 0x40
/* FCB68 80053658 0C028D89 */  jal        func_800A3624
/* FCB6C 8005365C 24060040 */   addiu     $a2, $zero, 0x40
/* FCB70 80053660 8E43000C */  lw         $v1, 0xc($s2)
/* FCB74 80053664 00009821 */  addu       $s3, $zero, $zero
/* FCB78 80053668 9462001E */  lhu        $v0, 0x1e($v1)
/* FCB7C 8005366C 2414000E */  addiu      $s4, $zero, 0xe
/* FCB80 80053670 4600A686 */  mov.s      $f26, $f20
/* FCB84 80053674 34420004 */  ori        $v0, $v0, 4
/* FCB88 80053678 A462001E */  sh         $v0, 0x1e($v1)
/* FCB8C 8005367C 327100FF */  andi       $s1, $s3, 0xff
.L80053680:
/* FCB90 80053680 263005D1 */  addiu      $s0, $s1, 0x5d1
/* FCB94 80053684 3210FFFF */  andi       $s0, $s0, 0xffff
/* FCB98 80053688 02002021 */  addu       $a0, $s0, $zero
/* FCB9C 8005368C 24050002 */  addiu      $a1, $zero, 2
/* FCBA0 80053690 0C00D925 */  jal        func_80036494_DF9A4
/* FCBA4 80053694 26260057 */   addiu     $a2, $s1, 0x57
/* FCBA8 80053698 00409021 */  addu       $s2, $v0, $zero
/* FCBAC 8005369C 8E44000C */  lw         $a0, 0xc($s2)
/* FCBB0 800536A0 3C073FC0 */  lui        $a3, 0x3fc0
/* FCBB4 800536A4 4406D000 */  mfc1       $a2, $f26
/* FCBB8 800536A8 00000000 */  nop
/* FCBBC 800536AC 0C02915B */  jal        func_800A456C
/* FCBC0 800536B0 00002821 */   addu      $a1, $zero, $zero
/* FCBC4 800536B4 8E44000C */  lw         $a0, 0xc($s2)
/* FCBC8 800536B8 8C82000C */  lw         $v0, 0xc($a0)
/* FCBCC 800536BC 94450000 */  lhu        $a1, ($v0)
/* FCBD0 800536C0 94460002 */  lhu        $a2, 2($v0)
/* FCBD4 800536C4 00052842 */  srl        $a1, $a1, 1
/* FCBD8 800536C8 0C02912A */  jal        func_800A44A8
/* FCBDC 800536CC 00063042 */   srl       $a2, $a2, 1
/* FCBE0 800536D0 8E44000C */  lw         $a0, 0xc($s2)
/* FCBE4 800536D4 24050280 */  addiu      $a1, $zero, 0x280
/* FCBE8 800536D8 0C028D89 */  jal        func_800A3624
/* FCBEC 800536DC 240601A0 */   addiu     $a2, $zero, 0x1a0
/* FCBF0 800536E0 8E42000C */  lw         $v0, 0xc($s2)
/* FCBF4 800536E4 A454001C */  sh         $s4, 0x1c($v0)
/* FCBF8 800536E8 8E43000C */  lw         $v1, 0xc($s2)
/* FCBFC 800536EC 02002021 */  addu       $a0, $s0, $zero
/* FCC00 800536F0 9462001E */  lhu        $v0, 0x1e($v1)
/* FCC04 800536F4 24050002 */  addiu      $a1, $zero, 2
/* FCC08 800536F8 26260062 */  addiu      $a2, $s1, 0x62
/* FCC0C 800536FC 34420004 */  ori        $v0, $v0, 4
/* FCC10 80053700 0C00D925 */  jal        func_80036494_DF9A4
/* FCC14 80053704 A462001E */   sh        $v0, 0x1e($v1)
/* FCC18 80053708 00409021 */  addu       $s2, $v0, $zero
/* FCC1C 8005370C 8E44000C */  lw         $a0, 0xc($s2)
/* FCC20 80053710 3C073F4C */  lui        $a3, 0x3f4c
/* FCC24 80053714 34E7CCCD */  ori        $a3, $a3, 0xcccd
/* FCC28 80053718 4406D000 */  mfc1       $a2, $f26
/* FCC2C 8005371C 00000000 */  nop
/* FCC30 80053720 0C02915B */  jal        func_800A456C
/* FCC34 80053724 00002821 */   addu      $a1, $zero, $zero
/* FCC38 80053728 8E44000C */  lw         $a0, 0xc($s2)
/* FCC3C 8005372C 8C82000C */  lw         $v0, 0xc($a0)
/* FCC40 80053730 94450000 */  lhu        $a1, ($v0)
/* FCC44 80053734 94460002 */  lhu        $a2, 2($v0)
/* FCC48 80053738 00052842 */  srl        $a1, $a1, 1
/* FCC4C 8005373C 0C02912A */  jal        func_800A44A8
/* FCC50 80053740 00063042 */   srl       $a2, $a2, 1
/* FCC54 80053744 8E44000C */  lw         $a0, 0xc($s2)
/* FCC58 80053748 24050280 */  addiu      $a1, $zero, 0x280
/* FCC5C 8005374C 0C028D89 */  jal        func_800A3624
/* FCC60 80053750 24060320 */   addiu     $a2, $zero, 0x320
/* FCC64 80053754 241100C0 */  addiu      $s1, $zero, 0xc0
/* FCC68 80053758 AFB10010 */  sw         $s1, 0x10($sp)
/* FCC6C 8005375C 8E44000C */  lw         $a0, 0xc($s2)
/* FCC70 80053760 240500FF */  addiu      $a1, $zero, 0xff
/* FCC74 80053764 240600FF */  addiu      $a2, $zero, 0xff
/* FCC78 80053768 0C028E41 */  jal        func_800A3904
/* FCC7C 8005376C 240700FF */   addiu     $a3, $zero, 0xff
/* FCC80 80053770 8E42000C */  lw         $v0, 0xc($s2)
/* FCC84 80053774 A454001C */  sh         $s4, 0x1c($v0)
/* FCC88 80053778 8E43000C */  lw         $v1, 0xc($s2)
/* FCC8C 8005377C 9462001E */  lhu        $v0, 0x1e($v1)
/* FCC90 80053780 34420004 */  ori        $v0, $v0, 4
/* FCC94 80053784 A462001E */  sh         $v0, 0x1e($v1)
/* FCC98 80053788 8E44000C */  lw         $a0, 0xc($s2)
/* FCC9C 8005378C 8C82000C */  lw         $v0, 0xc($a0)
/* FCCA0 80053790 90430004 */  lbu        $v1, 4($v0)
/* FCCA4 80053794 84450000 */  lh         $a1, ($v0)
/* FCCA8 80053798 84460002 */  lh         $a2, 2($v0)
/* FCCAC 8005379C 10600002 */  beqz       $v1, .L800537A8
/* FCCB0 800537A0 24070002 */   addiu     $a3, $zero, 2
/* FCCB4 800537A4 24070001 */  addiu      $a3, $zero, 1
.L800537A8:
/* FCCB8 800537A8 8C840010 */  lw         $a0, 0x10($a0)
/* FCCBC 800537AC 0C029767 */  jal        func_800A5D9C
/* FCCC0 800537B0 26730001 */   addiu     $s3, $s3, 1
/* FCCC4 800537B4 326200FF */  andi       $v0, $s3, 0xff
/* FCCC8 800537B8 2C420009 */  sltiu      $v0, $v0, 9
/* FCCCC 800537BC 5440FFB0 */  bnezl      $v0, .L80053680
/* FCCD0 800537C0 327100FF */   andi      $s1, $s3, 0xff
/* FCCD4 800537C4 240405DA */  addiu      $a0, $zero, 0x5da
/* FCCD8 800537C8 24050002 */  addiu      $a1, $zero, 2
/* FCCDC 800537CC 0C00D925 */  jal        func_80036494_DF9A4
/* FCCE0 800537D0 24060060 */   addiu     $a2, $zero, 0x60
/* FCCE4 800537D4 00409021 */  addu       $s2, $v0, $zero
/* FCCE8 800537D8 8E44000C */  lw         $a0, 0xc($s2)
/* FCCEC 800537DC 3C013FC0 */  lui        $at, 0x3fc0
/* FCCF0 800537E0 4481C000 */  mtc1       $at, $f24
/* FCCF4 800537E4 4600D506 */  mov.s      $f20, $f26
/* FCCF8 800537E8 4406A000 */  mfc1       $a2, $f20
/* FCCFC 800537EC 4407C000 */  mfc1       $a3, $f24
/* FCD00 800537F0 00000000 */  nop
/* FCD04 800537F4 0C02915B */  jal        func_800A456C
/* FCD08 800537F8 00002821 */   addu      $a1, $zero, $zero
/* FCD0C 800537FC 8E44000C */  lw         $a0, 0xc($s2)
/* FCD10 80053800 8C82000C */  lw         $v0, 0xc($a0)
/* FCD14 80053804 94450000 */  lhu        $a1, ($v0)
/* FCD18 80053808 94460002 */  lhu        $a2, 2($v0)
/* FCD1C 8005380C 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* FCD20 80053810 00052C00 */  sll        $a1, $a1, 0x10
/* FCD24 80053814 00052C03 */  sra        $a1, $a1, 0x10
/* FCD28 80053818 0C02912A */  jal        func_800A44A8
/* FCD2C 8005381C 00063042 */   srl       $a2, $a2, 1
/* FCD30 80053820 8E44000C */  lw         $a0, 0xc($s2)
/* FCD34 80053824 240504FC */  addiu      $a1, $zero, 0x4fc
/* FCD38 80053828 0C028D89 */  jal        func_800A3624
/* FCD3C 8005382C 240601F4 */   addiu     $a2, $zero, 0x1f4
/* FCD40 80053830 8E42000C */  lw         $v0, 0xc($s2)
/* FCD44 80053834 2410000E */  addiu      $s0, $zero, 0xe
/* FCD48 80053838 A450001C */  sh         $s0, 0x1c($v0)
/* FCD4C 8005383C 8E43000C */  lw         $v1, 0xc($s2)
/* FCD50 80053840 240405DA */  addiu      $a0, $zero, 0x5da
/* FCD54 80053844 9462001E */  lhu        $v0, 0x1e($v1)
/* FCD58 80053848 24050002 */  addiu      $a1, $zero, 2
/* FCD5C 8005384C 2406006B */  addiu      $a2, $zero, 0x6b
/* FCD60 80053850 34420004 */  ori        $v0, $v0, 4
/* FCD64 80053854 0C00D925 */  jal        func_80036494_DF9A4
/* FCD68 80053858 A462001E */   sh        $v0, 0x1e($v1)
/* FCD6C 8005385C 00409021 */  addu       $s2, $v0, $zero
/* FCD70 80053860 8E44000C */  lw         $a0, 0xc($s2)
/* FCD74 80053864 3C013F4C */  lui        $at, 0x3f4c
/* FCD78 80053868 3421CCCD */  ori        $at, $at, 0xcccd
/* FCD7C 8005386C 4481B000 */  mtc1       $at, $f22
/* FCD80 80053870 4406A000 */  mfc1       $a2, $f20
/* FCD84 80053874 4407B000 */  mfc1       $a3, $f22
/* FCD88 80053878 00000000 */  nop
/* FCD8C 8005387C 0C02915B */  jal        func_800A456C
/* FCD90 80053880 00002821 */   addu      $a1, $zero, $zero
/* FCD94 80053884 8E44000C */  lw         $a0, 0xc($s2)
/* FCD98 80053888 8C82000C */  lw         $v0, 0xc($a0)
/* FCD9C 8005388C 94450000 */  lhu        $a1, ($v0)
/* FCDA0 80053890 94460002 */  lhu        $a2, 2($v0)
/* FCDA4 80053894 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* FCDA8 80053898 00052C00 */  sll        $a1, $a1, 0x10
/* FCDAC 8005389C 00052C03 */  sra        $a1, $a1, 0x10
/* FCDB0 800538A0 0C02912A */  jal        func_800A44A8
/* FCDB4 800538A4 00063042 */   srl       $a2, $a2, 1
/* FCDB8 800538A8 8E44000C */  lw         $a0, 0xc($s2)
/* FCDBC 800538AC 240504FC */  addiu      $a1, $zero, 0x4fc
/* FCDC0 800538B0 0C028D89 */  jal        func_800A3624
/* FCDC4 800538B4 24060300 */   addiu     $a2, $zero, 0x300
/* FCDC8 800538B8 240200C0 */  addiu      $v0, $zero, 0xc0
/* FCDCC 800538BC AFA20010 */  sw         $v0, 0x10($sp)
/* FCDD0 800538C0 8E44000C */  lw         $a0, 0xc($s2)
/* FCDD4 800538C4 240500FF */  addiu      $a1, $zero, 0xff
/* FCDD8 800538C8 240600FF */  addiu      $a2, $zero, 0xff
/* FCDDC 800538CC 0C028E41 */  jal        func_800A3904
/* FCDE0 800538D0 240700FF */   addiu     $a3, $zero, 0xff
/* FCDE4 800538D4 8E42000C */  lw         $v0, 0xc($s2)
/* FCDE8 800538D8 A450001C */  sh         $s0, 0x1c($v0)
/* FCDEC 800538DC 8E43000C */  lw         $v1, 0xc($s2)
/* FCDF0 800538E0 9462001E */  lhu        $v0, 0x1e($v1)
/* FCDF4 800538E4 34420004 */  ori        $v0, $v0, 4
/* FCDF8 800538E8 A462001E */  sh         $v0, 0x1e($v1)
/* FCDFC 800538EC 8E44000C */  lw         $a0, 0xc($s2)
/* FCE00 800538F0 8C82000C */  lw         $v0, 0xc($a0)
/* FCE04 800538F4 90430004 */  lbu        $v1, 4($v0)
/* FCE08 800538F8 84450000 */  lh         $a1, ($v0)
/* FCE0C 800538FC 84460002 */  lh         $a2, 2($v0)
/* FCE10 80053900 10600002 */  beqz       $v1, .L8005390C
/* FCE14 80053904 24070002 */   addiu     $a3, $zero, 2
/* FCE18 80053908 24070001 */  addiu      $a3, $zero, 1
.L8005390C:
/* FCE1C 8005390C 0C029767 */  jal        func_800A5D9C
/* FCE20 80053910 8C840010 */   lw        $a0, 0x10($a0)
/* FCE24 80053914 240405E3 */  addiu      $a0, $zero, 0x5e3
/* FCE28 80053918 24050002 */  addiu      $a1, $zero, 2
/* FCE2C 8005391C 0C00D925 */  jal        func_80036494_DF9A4
/* FCE30 80053920 24060061 */   addiu     $a2, $zero, 0x61
/* FCE34 80053924 00409021 */  addu       $s2, $v0, $zero
/* FCE38 80053928 8E44000C */  lw         $a0, 0xc($s2)
/* FCE3C 8005392C 4406A000 */  mfc1       $a2, $f20
/* FCE40 80053930 4407C000 */  mfc1       $a3, $f24
/* FCE44 80053934 00000000 */  nop
/* FCE48 80053938 0C02915B */  jal        func_800A456C
/* FCE4C 8005393C 00002821 */   addu      $a1, $zero, $zero
/* FCE50 80053940 8E44000C */  lw         $a0, 0xc($s2)
/* FCE54 80053944 8C82000C */  lw         $v0, 0xc($a0)
/* FCE58 80053948 94460002 */  lhu        $a2, 2($v0)
/* FCE5C 8005394C 00002821 */  addu       $a1, $zero, $zero
/* FCE60 80053950 0C02912A */  jal        func_800A44A8
/* FCE64 80053954 00063042 */   srl       $a2, $a2, 1
/* FCE68 80053958 8E44000C */  lw         $a0, 0xc($s2)
/* FCE6C 8005395C 24050040 */  addiu      $a1, $zero, 0x40
/* FCE70 80053960 0C028D89 */  jal        func_800A3624
/* FCE74 80053964 24060168 */   addiu     $a2, $zero, 0x168
/* FCE78 80053968 8E42000C */  lw         $v0, 0xc($s2)
/* FCE7C 8005396C A450001C */  sh         $s0, 0x1c($v0)
/* FCE80 80053970 8E43000C */  lw         $v1, 0xc($s2)
/* FCE84 80053974 240405E3 */  addiu      $a0, $zero, 0x5e3
/* FCE88 80053978 9462001E */  lhu        $v0, 0x1e($v1)
/* FCE8C 8005397C 24050002 */  addiu      $a1, $zero, 2
/* FCE90 80053980 2406006C */  addiu      $a2, $zero, 0x6c
/* FCE94 80053984 34420004 */  ori        $v0, $v0, 4
/* FCE98 80053988 0C00D925 */  jal        func_80036494_DF9A4
/* FCE9C 8005398C A462001E */   sh        $v0, 0x1e($v1)
/* FCEA0 80053990 00409021 */  addu       $s2, $v0, $zero
/* FCEA4 80053994 8E44000C */  lw         $a0, 0xc($s2)
/* FCEA8 80053998 4406A000 */  mfc1       $a2, $f20
/* FCEAC 8005399C 4407B000 */  mfc1       $a3, $f22
/* FCEB0 800539A0 00000000 */  nop
/* FCEB4 800539A4 0C02915B */  jal        func_800A456C
/* FCEB8 800539A8 00002821 */   addu      $a1, $zero, $zero
/* FCEBC 800539AC 8E44000C */  lw         $a0, 0xc($s2)
/* FCEC0 800539B0 8C82000C */  lw         $v0, 0xc($a0)
/* FCEC4 800539B4 94460002 */  lhu        $a2, 2($v0)
/* FCEC8 800539B8 00002821 */  addu       $a1, $zero, $zero
/* FCECC 800539BC 0C02912A */  jal        func_800A44A8
/* FCED0 800539C0 00063042 */   srl       $a2, $a2, 1
/* FCED4 800539C4 8E44000C */  lw         $a0, 0xc($s2)
/* FCED8 800539C8 24050040 */  addiu      $a1, $zero, 0x40
/* FCEDC 800539CC 0C028D89 */  jal        func_800A3624
/* FCEE0 800539D0 24060344 */   addiu     $a2, $zero, 0x344
/* FCEE4 800539D4 AFB10010 */  sw         $s1, 0x10($sp)
/* FCEE8 800539D8 8E44000C */  lw         $a0, 0xc($s2)
/* FCEEC 800539DC 240500FF */  addiu      $a1, $zero, 0xff
/* FCEF0 800539E0 240600FF */  addiu      $a2, $zero, 0xff
/* FCEF4 800539E4 0C028E41 */  jal        func_800A3904
/* FCEF8 800539E8 240700FF */   addiu     $a3, $zero, 0xff
/* FCEFC 800539EC 8E42000C */  lw         $v0, 0xc($s2)
/* FCF00 800539F0 A450001C */  sh         $s0, 0x1c($v0)
/* FCF04 800539F4 8E43000C */  lw         $v1, 0xc($s2)
/* FCF08 800539F8 9462001E */  lhu        $v0, 0x1e($v1)
/* FCF0C 800539FC 34420004 */  ori        $v0, $v0, 4
/* FCF10 80053A00 A462001E */  sh         $v0, 0x1e($v1)
/* FCF14 80053A04 8E44000C */  lw         $a0, 0xc($s2)
/* FCF18 80053A08 8C82000C */  lw         $v0, 0xc($a0)
/* FCF1C 80053A0C 90430004 */  lbu        $v1, 4($v0)
/* FCF20 80053A10 84450000 */  lh         $a1, ($v0)
/* FCF24 80053A14 84460002 */  lh         $a2, 2($v0)
/* FCF28 80053A18 10600002 */  beqz       $v1, .L80053A24
/* FCF2C 80053A1C 24070002 */   addiu     $a3, $zero, 2
/* FCF30 80053A20 24070001 */  addiu      $a3, $zero, 1
.L80053A24:
/* FCF34 80053A24 0C029767 */  jal        func_800A5D9C
/* FCF38 80053A28 8C840010 */   lw        $a0, 0x10($a0)
/* FCF3C 80053A2C 2404060F */  addiu      $a0, $zero, 0x60f
/* FCF40 80053A30 24050002 */  addiu      $a1, $zero, 2
/* FCF44 80053A34 0C00D925 */  jal        func_80036494_DF9A4
/* FCF48 80053A38 24060056 */   addiu     $a2, $zero, 0x56
/* FCF4C 80053A3C 00409021 */  addu       $s2, $v0, $zero
/* FCF50 80053A40 8E44000C */  lw         $a0, 0xc($s2)
/* FCF54 80053A44 4406A000 */  mfc1       $a2, $f20
/* FCF58 80053A48 4407A000 */  mfc1       $a3, $f20
/* FCF5C 80053A4C 00000000 */  nop
/* FCF60 80053A50 0C02915B */  jal        func_800A456C
/* FCF64 80053A54 00002821 */   addu      $a1, $zero, $zero
/* FCF68 80053A58 8E44000C */  lw         $a0, 0xc($s2)
/* FCF6C 80053A5C 24050040 */  addiu      $a1, $zero, 0x40
/* FCF70 80053A60 0C028D89 */  jal        func_800A3624
/* FCF74 80053A64 24060040 */   addiu     $a2, $zero, 0x40
/* FCF78 80053A68 8E43000C */  lw         $v1, 0xc($s2)
/* FCF7C 80053A6C 24040613 */  addiu      $a0, $zero, 0x613
/* FCF80 80053A70 9462001E */  lhu        $v0, 0x1e($v1)
/* FCF84 80053A74 24050002 */  addiu      $a1, $zero, 2
/* FCF88 80053A78 2406006D */  addiu      $a2, $zero, 0x6d
/* FCF8C 80053A7C 34420004 */  ori        $v0, $v0, 4
/* FCF90 80053A80 0C00D925 */  jal        func_80036494_DF9A4
/* FCF94 80053A84 A462001E */   sh        $v0, 0x1e($v1)
/* FCF98 80053A88 00409021 */  addu       $s2, $v0, $zero
/* FCF9C 80053A8C 8E44000C */  lw         $a0, 0xc($s2)
/* FCFA0 80053A90 4406A000 */  mfc1       $a2, $f20
/* FCFA4 80053A94 4407A000 */  mfc1       $a3, $f20
/* FCFA8 80053A98 00000000 */  nop
/* FCFAC 80053A9C 0C02915B */  jal        func_800A456C
/* FCFB0 80053AA0 00002821 */   addu      $a1, $zero, $zero
/* FCFB4 80053AA4 8E44000C */  lw         $a0, 0xc($s2)
/* FCFB8 80053AA8 24050040 */  addiu      $a1, $zero, 0x40
/* FCFBC 80053AAC 0C028D89 */  jal        func_800A3624
/* FCFC0 80053AB0 240601F4 */   addiu     $a2, $zero, 0x1f4
/* FCFC4 80053AB4 8E42000C */  lw         $v0, 0xc($s2)
/* FCFC8 80053AB8 A450001C */  sh         $s0, 0x1c($v0)
/* FCFCC 80053ABC 8E43000C */  lw         $v1, 0xc($s2)
/* FCFD0 80053AC0 9462001E */  lhu        $v0, 0x1e($v1)
/* FCFD4 80053AC4 34420004 */  ori        $v0, $v0, 4
/* FCFD8 80053AC8 A462001E */  sh         $v0, 0x1e($v1)
/* FCFDC 80053ACC 8E44000C */  lw         $a0, 0xc($s2)
/* FCFE0 80053AD0 00002821 */  addu       $a1, $zero, $zero
/* FCFE4 80053AD4 0C00DE6C */  jal        func_800379B0_E0EC0
/* FCFE8 80053AD8 3406D738 */   ori       $a2, $zero, 0xd738
/* FCFEC 80053ADC 24040612 */  addiu      $a0, $zero, 0x612
/* FCFF0 80053AE0 24050002 */  addiu      $a1, $zero, 2
/* FCFF4 80053AE4 0C00D925 */  jal        func_80036494_DF9A4
/* FCFF8 80053AE8 2406006E */   addiu     $a2, $zero, 0x6e
/* FCFFC 80053AEC 00409021 */  addu       $s2, $v0, $zero
/* FD000 80053AF0 8E44000C */  lw         $a0, 0xc($s2)
/* FD004 80053AF4 4406A000 */  mfc1       $a2, $f20
/* FD008 80053AF8 4407A000 */  mfc1       $a3, $f20
/* FD00C 80053AFC 00000000 */  nop
/* FD010 80053B00 0C02915B */  jal        func_800A456C
/* FD014 80053B04 00002821 */   addu      $a1, $zero, $zero
/* FD018 80053B08 8E44000C */  lw         $a0, 0xc($s2)
/* FD01C 80053B0C 240503C4 */  addiu      $a1, $zero, 0x3c4
/* FD020 80053B10 0C028D89 */  jal        func_800A3624
/* FD024 80053B14 240601F4 */   addiu     $a2, $zero, 0x1f4
/* FD028 80053B18 8E42000C */  lw         $v0, 0xc($s2)
/* FD02C 80053B1C A450001C */  sh         $s0, 0x1c($v0)
/* FD030 80053B20 8E43000C */  lw         $v1, 0xc($s2)
/* FD034 80053B24 9462001E */  lhu        $v0, 0x1e($v1)
/* FD038 80053B28 34420004 */  ori        $v0, $v0, 4
/* FD03C 80053B2C A462001E */  sh         $v0, 0x1e($v1)
/* FD040 80053B30 8E44000C */  lw         $a0, 0xc($s2)
/* FD044 80053B34 00002821 */  addu       $a1, $zero, $zero
/* FD048 80053B38 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD04C 80053B3C 3406FEBA */   ori       $a2, $zero, 0xfeba
/* FD050 80053B40 24040610 */  addiu      $a0, $zero, 0x610
/* FD054 80053B44 24050002 */  addiu      $a1, $zero, 2
/* FD058 80053B48 0C00D925 */  jal        func_80036494_DF9A4
/* FD05C 80053B4C 2406006F */   addiu     $a2, $zero, 0x6f
/* FD060 80053B50 00409021 */  addu       $s2, $v0, $zero
/* FD064 80053B54 8E44000C */  lw         $a0, 0xc($s2)
/* FD068 80053B58 4406A000 */  mfc1       $a2, $f20
/* FD06C 80053B5C 4407A000 */  mfc1       $a3, $f20
/* FD070 80053B60 00000000 */  nop
/* FD074 80053B64 0C02915B */  jal        func_800A456C
/* FD078 80053B68 00002821 */   addu      $a1, $zero, $zero
/* FD07C 80053B6C 8E44000C */  lw         $a0, 0xc($s2)
/* FD080 80053B70 24050040 */  addiu      $a1, $zero, 0x40
/* FD084 80053B74 0C028D89 */  jal        func_800A3624
/* FD088 80053B78 24060040 */   addiu     $a2, $zero, 0x40
/* FD08C 80053B7C 8E42000C */  lw         $v0, 0xc($s2)
/* FD090 80053B80 A450001C */  sh         $s0, 0x1c($v0)
/* FD094 80053B84 8E43000C */  lw         $v1, 0xc($s2)
/* FD098 80053B88 9462001E */  lhu        $v0, 0x1e($v1)
/* FD09C 80053B8C 34420004 */  ori        $v0, $v0, 4
/* FD0A0 80053B90 A462001E */  sh         $v0, 0x1e($v1)
/* FD0A4 80053B94 8E44000C */  lw         $a0, 0xc($s2)
/* FD0A8 80053B98 00002821 */  addu       $a1, $zero, $zero
/* FD0AC 80053B9C 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD0B0 80053BA0 3406D738 */   ori       $a2, $zero, 0xd738
/* FD0B4 80053BA4 24040611 */  addiu      $a0, $zero, 0x611
/* FD0B8 80053BA8 24050002 */  addiu      $a1, $zero, 2
/* FD0BC 80053BAC 0C00D925 */  jal        func_80036494_DF9A4
/* FD0C0 80053BB0 24060070 */   addiu     $a2, $zero, 0x70
/* FD0C4 80053BB4 00409021 */  addu       $s2, $v0, $zero
/* FD0C8 80053BB8 8E44000C */  lw         $a0, 0xc($s2)
/* FD0CC 80053BBC 4406A000 */  mfc1       $a2, $f20
/* FD0D0 80053BC0 4407A000 */  mfc1       $a3, $f20
/* FD0D4 80053BC4 00000000 */  nop
/* FD0D8 80053BC8 0C02915B */  jal        func_800A456C
/* FD0DC 80053BCC 00002821 */   addu      $a1, $zero, $zero
/* FD0E0 80053BD0 8E44000C */  lw         $a0, 0xc($s2)
/* FD0E4 80053BD4 24050040 */  addiu      $a1, $zero, 0x40
/* FD0E8 80053BD8 0C028D89 */  jal        func_800A3624
/* FD0EC 80053BDC 24060040 */   addiu     $a2, $zero, 0x40
/* FD0F0 80053BE0 8E42000C */  lw         $v0, 0xc($s2)
/* FD0F4 80053BE4 A450001C */  sh         $s0, 0x1c($v0)
/* FD0F8 80053BE8 8E43000C */  lw         $v1, 0xc($s2)
/* FD0FC 80053BEC 9462001E */  lhu        $v0, 0x1e($v1)
/* FD100 80053BF0 34420004 */  ori        $v0, $v0, 4
/* FD104 80053BF4 A462001E */  sh         $v0, 0x1e($v1)
/* FD108 80053BF8 8E44000C */  lw         $a0, 0xc($s2)
/* FD10C 80053BFC 00002821 */  addu       $a1, $zero, $zero
/* FD110 80053C00 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD114 80053C04 3406D738 */   ori       $a2, $zero, 0xd738
/* FD118 80053C08 24040610 */  addiu      $a0, $zero, 0x610
/* FD11C 80053C0C 24050002 */  addiu      $a1, $zero, 2
/* FD120 80053C10 0C00D925 */  jal        func_80036494_DF9A4
/* FD124 80053C14 24060071 */   addiu     $a2, $zero, 0x71
/* FD128 80053C18 00409021 */  addu       $s2, $v0, $zero
/* FD12C 80053C1C 8E44000C */  lw         $a0, 0xc($s2)
/* FD130 80053C20 4406A000 */  mfc1       $a2, $f20
/* FD134 80053C24 4407A000 */  mfc1       $a3, $f20
/* FD138 80053C28 00000000 */  nop
/* FD13C 80053C2C 0C02915B */  jal        func_800A456C
/* FD140 80053C30 00002821 */   addu      $a1, $zero, $zero
/* FD144 80053C34 8E44000C */  lw         $a0, 0xc($s2)
/* FD148 80053C38 24050370 */  addiu      $a1, $zero, 0x370
/* FD14C 80053C3C 0C028D89 */  jal        func_800A3624
/* FD150 80053C40 24060040 */   addiu     $a2, $zero, 0x40
/* FD154 80053C44 8E42000C */  lw         $v0, 0xc($s2)
/* FD158 80053C48 A450001C */  sh         $s0, 0x1c($v0)
/* FD15C 80053C4C 8E43000C */  lw         $v1, 0xc($s2)
/* FD160 80053C50 9462001E */  lhu        $v0, 0x1e($v1)
/* FD164 80053C54 34420004 */  ori        $v0, $v0, 4
/* FD168 80053C58 A462001E */  sh         $v0, 0x1e($v1)
/* FD16C 80053C5C 8E44000C */  lw         $a0, 0xc($s2)
/* FD170 80053C60 00002821 */  addu       $a1, $zero, $zero
/* FD174 80053C64 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD178 80053C68 3406FEBA */   ori       $a2, $zero, 0xfeba
/* FD17C 80053C6C 8E44000C */  lw         $a0, 0xc($s2)
/* FD180 80053C70 8C82000C */  lw         $v0, 0xc($a0)
/* FD184 80053C74 90430004 */  lbu        $v1, 4($v0)
/* FD188 80053C78 84450000 */  lh         $a1, ($v0)
/* FD18C 80053C7C 84460002 */  lh         $a2, 2($v0)
/* FD190 80053C80 10600002 */  beqz       $v1, .L80053C8C
/* FD194 80053C84 24070002 */   addiu     $a3, $zero, 2
/* FD198 80053C88 24070001 */  addiu      $a3, $zero, 1
.L80053C8C:
/* FD19C 80053C8C 0C0297AC */  jal        func_800A5EB0
/* FD1A0 80053C90 8C840010 */   lw        $a0, 0x10($a0)
/* FD1A4 80053C94 24040611 */  addiu      $a0, $zero, 0x611
/* FD1A8 80053C98 24050002 */  addiu      $a1, $zero, 2
/* FD1AC 80053C9C 0C00D925 */  jal        func_80036494_DF9A4
/* FD1B0 80053CA0 24060072 */   addiu     $a2, $zero, 0x72
/* FD1B4 80053CA4 00409021 */  addu       $s2, $v0, $zero
/* FD1B8 80053CA8 8E44000C */  lw         $a0, 0xc($s2)
/* FD1BC 80053CAC 4406A000 */  mfc1       $a2, $f20
/* FD1C0 80053CB0 4407A000 */  mfc1       $a3, $f20
/* FD1C4 80053CB4 00000000 */  nop
/* FD1C8 80053CB8 0C02915B */  jal        func_800A456C
/* FD1CC 80053CBC 00002821 */   addu      $a1, $zero, $zero
/* FD1D0 80053CC0 8E44000C */  lw         $a0, 0xc($s2)
/* FD1D4 80053CC4 24050370 */  addiu      $a1, $zero, 0x370
/* FD1D8 80053CC8 0C028D89 */  jal        func_800A3624
/* FD1DC 80053CCC 24060040 */   addiu     $a2, $zero, 0x40
/* FD1E0 80053CD0 8E42000C */  lw         $v0, 0xc($s2)
/* FD1E4 80053CD4 A450001C */  sh         $s0, 0x1c($v0)
/* FD1E8 80053CD8 8E43000C */  lw         $v1, 0xc($s2)
/* FD1EC 80053CDC 9462001E */  lhu        $v0, 0x1e($v1)
/* FD1F0 80053CE0 34420004 */  ori        $v0, $v0, 4
/* FD1F4 80053CE4 A462001E */  sh         $v0, 0x1e($v1)
/* FD1F8 80053CE8 8E44000C */  lw         $a0, 0xc($s2)
/* FD1FC 80053CEC 00002821 */  addu       $a1, $zero, $zero
/* FD200 80053CF0 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD204 80053CF4 3406FEBA */   ori       $a2, $zero, 0xfeba
/* FD208 80053CF8 8E44000C */  lw         $a0, 0xc($s2)
/* FD20C 80053CFC 8C82000C */  lw         $v0, 0xc($a0)
/* FD210 80053D00 90430004 */  lbu        $v1, 4($v0)
/* FD214 80053D04 84450000 */  lh         $a1, ($v0)
/* FD218 80053D08 84460002 */  lh         $a2, 2($v0)
/* FD21C 80053D0C 10600002 */  beqz       $v1, .L80053D18
/* FD220 80053D10 24070002 */   addiu     $a3, $zero, 2
/* FD224 80053D14 24070001 */  addiu      $a3, $zero, 1
.L80053D18:
/* FD228 80053D18 0C0297AC */  jal        func_800A5EB0
/* FD22C 80053D1C 8C840010 */   lw        $a0, 0x10($a0)
/* FD230 80053D20 24040614 */  addiu      $a0, $zero, 0x614
/* FD234 80053D24 24050002 */  addiu      $a1, $zero, 2
/* FD238 80053D28 0C00D925 */  jal        func_80036494_DF9A4
/* FD23C 80053D2C 24060073 */   addiu     $a2, $zero, 0x73
/* FD240 80053D30 00409021 */  addu       $s2, $v0, $zero
/* FD244 80053D34 8E44000C */  lw         $a0, 0xc($s2)
/* FD248 80053D38 8C82000C */  lw         $v0, 0xc($a0)
/* FD24C 80053D3C 84460002 */  lh         $a2, 2($v0)
/* FD250 80053D40 0C02912A */  jal        func_800A44A8
/* FD254 80053D44 00002821 */   addu      $a1, $zero, $zero
/* FD258 80053D48 8E44000C */  lw         $a0, 0xc($s2)
/* FD25C 80053D4C 4406D000 */  mfc1       $a2, $f26
/* FD260 80053D50 4407A000 */  mfc1       $a3, $f20
/* FD264 80053D54 00000000 */  nop
/* FD268 80053D58 0C02915B */  jal        func_800A456C
/* FD26C 80053D5C 00002821 */   addu      $a1, $zero, $zero
/* FD270 80053D60 8E44000C */  lw         $a0, 0xc($s2)
/* FD274 80053D64 24050040 */  addiu      $a1, $zero, 0x40
/* FD278 80053D68 0C028D89 */  jal        func_800A3624
/* FD27C 80053D6C 2406039C */   addiu     $a2, $zero, 0x39c
/* FD280 80053D70 8E42000C */  lw         $v0, 0xc($s2)
/* FD284 80053D74 A450001C */  sh         $s0, 0x1c($v0)
/* FD288 80053D78 8E43000C */  lw         $v1, 0xc($s2)
/* FD28C 80053D7C 9462001E */  lhu        $v0, 0x1e($v1)
/* FD290 80053D80 34420004 */  ori        $v0, $v0, 4
/* FD294 80053D84 A462001E */  sh         $v0, 0x1e($v1)
/* FD298 80053D88 8E44000C */  lw         $a0, 0xc($s2)
/* FD29C 80053D8C 00002821 */  addu       $a1, $zero, $zero
/* FD2A0 80053D90 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD2A4 80053D94 3406D738 */   ori       $a2, $zero, 0xd738
/* FD2A8 80053D98 24040615 */  addiu      $a0, $zero, 0x615
/* FD2AC 80053D9C 24050002 */  addiu      $a1, $zero, 2
/* FD2B0 80053DA0 0C00D925 */  jal        func_80036494_DF9A4
/* FD2B4 80053DA4 24060074 */   addiu     $a2, $zero, 0x74
/* FD2B8 80053DA8 00409021 */  addu       $s2, $v0, $zero
/* FD2BC 80053DAC 8E44000C */  lw         $a0, 0xc($s2)
/* FD2C0 80053DB0 8C82000C */  lw         $v0, 0xc($a0)
/* FD2C4 80053DB4 84460002 */  lh         $a2, 2($v0)
/* FD2C8 80053DB8 0C02912A */  jal        func_800A44A8
/* FD2CC 80053DBC 00002821 */   addu      $a1, $zero, $zero
/* FD2D0 80053DC0 8E44000C */  lw         $a0, 0xc($s2)
/* FD2D4 80053DC4 4406A000 */  mfc1       $a2, $f20
/* FD2D8 80053DC8 4407A000 */  mfc1       $a3, $f20
/* FD2DC 80053DCC 00000000 */  nop
/* FD2E0 80053DD0 0C02915B */  jal        func_800A456C
/* FD2E4 80053DD4 00002821 */   addu      $a1, $zero, $zero
/* FD2E8 80053DD8 8E44000C */  lw         $a0, 0xc($s2)
/* FD2EC 80053DDC 24050040 */  addiu      $a1, $zero, 0x40
/* FD2F0 80053DE0 0C028D89 */  jal        func_800A3624
/* FD2F4 80053DE4 2406039C */   addiu     $a2, $zero, 0x39c
/* FD2F8 80053DE8 8E42000C */  lw         $v0, 0xc($s2)
/* FD2FC 80053DEC A450001C */  sh         $s0, 0x1c($v0)
/* FD300 80053DF0 8E43000C */  lw         $v1, 0xc($s2)
/* FD304 80053DF4 9462001E */  lhu        $v0, 0x1e($v1)
/* FD308 80053DF8 34420004 */  ori        $v0, $v0, 4
/* FD30C 80053DFC A462001E */  sh         $v0, 0x1e($v1)
/* FD310 80053E00 8E44000C */  lw         $a0, 0xc($s2)
/* FD314 80053E04 00002821 */  addu       $a1, $zero, $zero
/* FD318 80053E08 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD31C 80053E0C 3406D738 */   ori       $a2, $zero, 0xd738
/* FD320 80053E10 24040616 */  addiu      $a0, $zero, 0x616
/* FD324 80053E14 24050002 */  addiu      $a1, $zero, 2
/* FD328 80053E18 0C00D925 */  jal        func_80036494_DF9A4
/* FD32C 80053E1C 24060075 */   addiu     $a2, $zero, 0x75
/* FD330 80053E20 00409021 */  addu       $s2, $v0, $zero
/* FD334 80053E24 8E44000C */  lw         $a0, 0xc($s2)
/* FD338 80053E28 8C82000C */  lw         $v0, 0xc($a0)
/* FD33C 80053E2C 84460002 */  lh         $a2, 2($v0)
/* FD340 80053E30 0C02912A */  jal        func_800A44A8
/* FD344 80053E34 00002821 */   addu      $a1, $zero, $zero
/* FD348 80053E38 8E44000C */  lw         $a0, 0xc($s2)
/* FD34C 80053E3C 4406A000 */  mfc1       $a2, $f20
/* FD350 80053E40 4407A000 */  mfc1       $a3, $f20
/* FD354 80053E44 00000000 */  nop
/* FD358 80053E48 0C02915B */  jal        func_800A456C
/* FD35C 80053E4C 00002821 */   addu      $a1, $zero, $zero
/* FD360 80053E50 8E44000C */  lw         $a0, 0xc($s2)
/* FD364 80053E54 240503F4 */  addiu      $a1, $zero, 0x3f4
/* FD368 80053E58 0C028D89 */  jal        func_800A3624
/* FD36C 80053E5C 2406039C */   addiu     $a2, $zero, 0x39c
/* FD370 80053E60 8E42000C */  lw         $v0, 0xc($s2)
/* FD374 80053E64 A450001C */  sh         $s0, 0x1c($v0)
/* FD378 80053E68 8E43000C */  lw         $v1, 0xc($s2)
/* FD37C 80053E6C 9462001E */  lhu        $v0, 0x1e($v1)
/* FD380 80053E70 34420004 */  ori        $v0, $v0, 4
/* FD384 80053E74 A462001E */  sh         $v0, 0x1e($v1)
/* FD388 80053E78 8E44000C */  lw         $a0, 0xc($s2)
/* FD38C 80053E7C 00002821 */  addu       $a1, $zero, $zero
/* FD390 80053E80 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD394 80053E84 3406FEBA */   ori       $a2, $zero, 0xfeba
/* FD398 80053E88 24040617 */  addiu      $a0, $zero, 0x617
/* FD39C 80053E8C 24050002 */  addiu      $a1, $zero, 2
/* FD3A0 80053E90 0C00D925 */  jal        func_80036494_DF9A4
/* FD3A4 80053E94 24060076 */   addiu     $a2, $zero, 0x76
/* FD3A8 80053E98 00409021 */  addu       $s2, $v0, $zero
/* FD3AC 80053E9C 8E44000C */  lw         $a0, 0xc($s2)
/* FD3B0 80053EA0 8C82000C */  lw         $v0, 0xc($a0)
/* FD3B4 80053EA4 84460002 */  lh         $a2, 2($v0)
/* FD3B8 80053EA8 0C02912A */  jal        func_800A44A8
/* FD3BC 80053EAC 00002821 */   addu      $a1, $zero, $zero
/* FD3C0 80053EB0 8E44000C */  lw         $a0, 0xc($s2)
/* FD3C4 80053EB4 4406A000 */  mfc1       $a2, $f20
/* FD3C8 80053EB8 00002821 */  addu       $a1, $zero, $zero
/* FD3CC 80053EBC 0C02915B */  jal        func_800A456C
/* FD3D0 80053EC0 00C03821 */   addu      $a3, $a2, $zero
/* FD3D4 80053EC4 8E44000C */  lw         $a0, 0xc($s2)
/* FD3D8 80053EC8 240503F4 */  addiu      $a1, $zero, 0x3f4
/* FD3DC 80053ECC 0C028D89 */  jal        func_800A3624
/* FD3E0 80053ED0 2406039C */   addiu     $a2, $zero, 0x39c
/* FD3E4 80053ED4 8E42000C */  lw         $v0, 0xc($s2)
/* FD3E8 80053ED8 A450001C */  sh         $s0, 0x1c($v0)
/* FD3EC 80053EDC 8E43000C */  lw         $v1, 0xc($s2)
/* FD3F0 80053EE0 9462001E */  lhu        $v0, 0x1e($v1)
/* FD3F4 80053EE4 34420004 */  ori        $v0, $v0, 4
/* FD3F8 80053EE8 A462001E */  sh         $v0, 0x1e($v1)
/* FD3FC 80053EEC 8E44000C */  lw         $a0, 0xc($s2)
/* FD400 80053EF0 00002821 */  addu       $a1, $zero, $zero
/* FD404 80053EF4 0C00DE6C */  jal        func_800379B0_E0EC0
/* FD408 80053EF8 3406FEBA */   ori       $a2, $zero, 0xfeba
/* FD40C 80053EFC 8FBF0034 */  lw         $ra, 0x34($sp)
/* FD410 80053F00 8FB40030 */  lw         $s4, 0x30($sp)
/* FD414 80053F04 8FB3002C */  lw         $s3, 0x2c($sp)
/* FD418 80053F08 8FB20028 */  lw         $s2, 0x28($sp)
/* FD41C 80053F0C 8FB10024 */  lw         $s1, 0x24($sp)
/* FD420 80053F10 8FB00020 */  lw         $s0, 0x20($sp)
/* FD424 80053F14 D7BA0050 */  ldc1       $f26, 0x50($sp)
/* FD428 80053F18 D7B80048 */  ldc1       $f24, 0x48($sp)
/* FD42C 80053F1C D7B60040 */  ldc1       $f22, 0x40($sp)
/* FD430 80053F20 D7B40038 */  ldc1       $f20, 0x38($sp)
/* FD434 80053F24 03E00008 */  jr         $ra
/* FD438 80053F28 27BD0058 */   addiu     $sp, $sp, 0x58

glabel func_80053F2C_FD43C
/* FD43C 80053F2C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* FD440 80053F30 AFBF0028 */  sw         $ra, 0x28($sp)
/* FD444 80053F34 AFB10024 */  sw         $s1, 0x24($sp)
/* FD448 80053F38 0C00E109 */  jal        func_80038424_E1934
/* FD44C 80053F3C AFB00020 */   sw        $s0, 0x20($sp)
/* FD450 80053F40 24040011 */  addiu      $a0, $zero, 0x11
/* FD454 80053F44 24050001 */  addiu      $a1, $zero, 1
/* FD458 80053F48 0C00D925 */  jal        func_80036494_DF9A4
/* FD45C 80053F4C 24060050 */   addiu     $a2, $zero, 0x50
/* FD460 80053F50 00408821 */  addu       $s1, $v0, $zero
/* FD464 80053F54 8E24000C */  lw         $a0, 0xc($s1)
/* FD468 80053F58 24050038 */  addiu      $a1, $zero, 0x38
/* FD46C 80053F5C 0C028F9A */  jal        func_800A3E68
/* FD470 80053F60 2406004E */   addiu     $a2, $zero, 0x4e
/* FD474 80053F64 8E24000C */  lw         $a0, 0xc($s1)
/* FD478 80053F68 24050040 */  addiu      $a1, $zero, 0x40
/* FD47C 80053F6C 0C028D89 */  jal        func_800A3624
/* FD480 80053F70 24060040 */   addiu     $a2, $zero, 0x40
/* FD484 80053F74 8E23000C */  lw         $v1, 0xc($s1)
/* FD488 80053F78 24020035 */  addiu      $v0, $zero, 0x35
/* FD48C 80053F7C A462001C */  sh         $v0, 0x1c($v1)
/* FD490 80053F80 8E23000C */  lw         $v1, 0xc($s1)
/* FD494 80053F84 9462001E */  lhu        $v0, 0x1e($v1)
/* FD498 80053F88 34420104 */  ori        $v0, $v0, 0x104
/* FD49C 80053F8C A462001E */  sh         $v0, 0x1e($v1)
/* FD4A0 80053F90 8E23000C */  lw         $v1, 0xc($s1)
/* FD4A4 80053F94 2404000A */  addiu      $a0, $zero, 0xa
/* FD4A8 80053F98 9462001E */  lhu        $v0, 0x1e($v1)
/* FD4AC 80053F9C 24050004 */  addiu      $a1, $zero, 4
/* FD4B0 80053FA0 240600C7 */  addiu      $a2, $zero, 0xc7
/* FD4B4 80053FA4 3042FFBF */  andi       $v0, $v0, 0xffbf
/* FD4B8 80053FA8 0C00D925 */  jal        func_80036494_DF9A4
/* FD4BC 80053FAC A462001E */   sh        $v0, 0x1e($v1)
/* FD4C0 80053FB0 00408821 */  addu       $s1, $v0, $zero
/* FD4C4 80053FB4 8E24000C */  lw         $a0, 0xc($s1)
/* FD4C8 80053FB8 8C82000C */  lw         $v0, 0xc($a0)
/* FD4CC 80053FBC 94450000 */  lhu        $a1, ($v0)
/* FD4D0 80053FC0 94460002 */  lhu        $a2, 2($v0)
/* FD4D4 80053FC4 00052842 */  srl        $a1, $a1, 1
/* FD4D8 80053FC8 0C02912A */  jal        func_800A44A8
/* FD4DC 80053FCC 00063042 */   srl       $a2, $a2, 1
/* FD4E0 80053FD0 8E24000C */  lw         $a0, 0xc($s1)
/* FD4E4 80053FD4 24050280 */  addiu      $a1, $zero, 0x280
/* FD4E8 80053FD8 0C028D89 */  jal        func_800A3624
/* FD4EC 80053FDC 24060190 */   addiu     $a2, $zero, 0x190
/* FD4F0 80053FE0 8E23000C */  lw         $v1, 0xc($s1)
/* FD4F4 80053FE4 2402004B */  addiu      $v0, $zero, 0x4b
/* FD4F8 80053FE8 A462001C */  sh         $v0, 0x1c($v1)
/* FD4FC 80053FEC 8E23000C */  lw         $v1, 0xc($s1)
/* FD500 80053FF0 2404000B */  addiu      $a0, $zero, 0xb
/* FD504 80053FF4 9462001E */  lhu        $v0, 0x1e($v1)
/* FD508 80053FF8 24050002 */  addiu      $a1, $zero, 2
/* FD50C 80053FFC 240600C8 */  addiu      $a2, $zero, 0xc8
/* FD510 80054000 34420004 */  ori        $v0, $v0, 4
/* FD514 80054004 0C00D925 */  jal        func_80036494_DF9A4
/* FD518 80054008 A462001E */   sh        $v0, 0x1e($v1)
/* FD51C 8005400C 00408821 */  addu       $s1, $v0, $zero
/* FD520 80054010 8E24000C */  lw         $a0, 0xc($s1)
/* FD524 80054014 8C82000C */  lw         $v0, 0xc($a0)
/* FD528 80054018 94450000 */  lhu        $a1, ($v0)
/* FD52C 8005401C 94460002 */  lhu        $a2, 2($v0)
/* FD530 80054020 00052842 */  srl        $a1, $a1, 1
/* FD534 80054024 0C02912A */  jal        func_800A44A8
/* FD538 80054028 00063042 */   srl       $a2, $a2, 1
/* FD53C 8005402C 8E24000C */  lw         $a0, 0xc($s1)
/* FD540 80054030 24050168 */  addiu      $a1, $zero, 0x168
/* FD544 80054034 0C028D89 */  jal        func_800A3624
/* FD548 80054038 240602F8 */   addiu     $a2, $zero, 0x2f8
/* FD54C 8005403C 240200FF */  addiu      $v0, $zero, 0xff
/* FD550 80054040 AFA20010 */  sw         $v0, 0x10($sp)
/* FD554 80054044 8E24000C */  lw         $a0, 0xc($s1)
/* FD558 80054048 240500FF */  addiu      $a1, $zero, 0xff
/* FD55C 8005404C 240600FF */  addiu      $a2, $zero, 0xff
/* FD560 80054050 0C028E41 */  jal        func_800A3904
/* FD564 80054054 240700FF */   addiu     $a3, $zero, 0xff
/* FD568 80054058 8E22000C */  lw         $v0, 0xc($s1)
/* FD56C 8005405C 2410004A */  addiu      $s0, $zero, 0x4a
/* FD570 80054060 A450001C */  sh         $s0, 0x1c($v0)
/* FD574 80054064 8E23000C */  lw         $v1, 0xc($s1)
/* FD578 80054068 2404000C */  addiu      $a0, $zero, 0xc
/* FD57C 8005406C 9462001E */  lhu        $v0, 0x1e($v1)
/* FD580 80054070 24050002 */  addiu      $a1, $zero, 2
/* FD584 80054074 240600C9 */  addiu      $a2, $zero, 0xc9
/* FD588 80054078 34420004 */  ori        $v0, $v0, 4
/* FD58C 8005407C 0C00D925 */  jal        func_80036494_DF9A4
/* FD590 80054080 A462001E */   sh        $v0, 0x1e($v1)
/* FD594 80054084 00408821 */  addu       $s1, $v0, $zero
/* FD598 80054088 8E24000C */  lw         $a0, 0xc($s1)
/* FD59C 8005408C 8C82000C */  lw         $v0, 0xc($a0)
/* FD5A0 80054090 94450000 */  lhu        $a1, ($v0)
/* FD5A4 80054094 94460002 */  lhu        $a2, 2($v0)
/* FD5A8 80054098 00052842 */  srl        $a1, $a1, 1
/* FD5AC 8005409C 0C02912A */  jal        func_800A44A8
/* FD5B0 800540A0 00063042 */   srl       $a2, $a2, 1
/* FD5B4 800540A4 8E24000C */  lw         $a0, 0xc($s1)
/* FD5B8 800540A8 24050398 */  addiu      $a1, $zero, 0x398
/* FD5BC 800540AC 0C028D89 */  jal        func_800A3624
/* FD5C0 800540B0 240602F8 */   addiu     $a2, $zero, 0x2f8
/* FD5C4 800540B4 24020040 */  addiu      $v0, $zero, 0x40
/* FD5C8 800540B8 AFA20010 */  sw         $v0, 0x10($sp)
/* FD5CC 800540BC 8E24000C */  lw         $a0, 0xc($s1)
/* FD5D0 800540C0 240500FF */  addiu      $a1, $zero, 0xff
/* FD5D4 800540C4 240600FF */  addiu      $a2, $zero, 0xff
/* FD5D8 800540C8 0C028E41 */  jal        func_800A3904
/* FD5DC 800540CC 240700FF */   addiu     $a3, $zero, 0xff
/* FD5E0 800540D0 8E22000C */  lw         $v0, 0xc($s1)
/* FD5E4 800540D4 A450001C */  sh         $s0, 0x1c($v0)
/* FD5E8 800540D8 8E23000C */  lw         $v1, 0xc($s1)
/* FD5EC 800540DC 9462001E */  lhu        $v0, 0x1e($v1)
/* FD5F0 800540E0 34420004 */  ori        $v0, $v0, 4
/* FD5F4 800540E4 A462001E */  sh         $v0, 0x1e($v1)
/* FD5F8 800540E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* FD5FC 800540EC 8FB10024 */  lw         $s1, 0x24($sp)
/* FD600 800540F0 8FB00020 */  lw         $s0, 0x20($sp)
/* FD604 800540F4 03E00008 */  jr         $ra
/* FD608 800540F8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800540FC_FD60C
/* FD60C 800540FC 27BDFF98 */  addiu      $sp, $sp, -0x68
/* FD610 80054100 AFBF0030 */  sw         $ra, 0x30($sp)
/* FD614 80054104 AFB5002C */  sw         $s5, 0x2c($sp)
/* FD618 80054108 AFB40028 */  sw         $s4, 0x28($sp)
/* FD61C 8005410C AFB30024 */  sw         $s3, 0x24($sp)
/* FD620 80054110 AFB20020 */  sw         $s2, 0x20($sp)
/* FD624 80054114 AFB1001C */  sw         $s1, 0x1c($sp)
/* FD628 80054118 AFB00018 */  sw         $s0, 0x18($sp)
/* FD62C 8005411C F7BE0060 */  sdc1       $f30, 0x60($sp)
/* FD630 80054120 F7BC0058 */  sdc1       $f28, 0x58($sp)
/* FD634 80054124 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* FD638 80054128 F7B80048 */  sdc1       $f24, 0x48($sp)
/* FD63C 8005412C F7B60040 */  sdc1       $f22, 0x40($sp)
/* FD640 80054130 F7B40038 */  sdc1       $f20, 0x38($sp)
/* FD644 80054134 0C00E109 */  jal        func_80038424_E1934
/* FD648 80054138 00008821 */   addu      $s1, $zero, $zero
/* FD64C 8005413C 24040008 */  addiu      $a0, $zero, 8
.L80054140:
/* FD650 80054140 24050001 */  addiu      $a1, $zero, 1
/* FD654 80054144 322600FF */  andi       $a2, $s1, 0xff
/* FD658 80054148 0C00D925 */  jal        func_80036494_DF9A4
/* FD65C 8005414C 24C600A7 */   addiu     $a2, $a2, 0xa7
/* FD660 80054150 00409021 */  addu       $s2, $v0, $zero
/* FD664 80054154 8E44000C */  lw         $a0, 0xc($s2)
/* FD668 80054158 24050066 */  addiu      $a1, $zero, 0x66
/* FD66C 8005415C 0C028F9A */  jal        func_800A3E68
/* FD670 80054160 24061400 */   addiu     $a2, $zero, 0x1400
/* FD674 80054164 8E44000C */  lw         $a0, 0xc($s2)
/* FD678 80054168 24050040 */  addiu      $a1, $zero, 0x40
/* FD67C 8005416C 323000FF */  andi       $s0, $s1, 0xff
/* FD680 80054170 001030C0 */  sll        $a2, $s0, 3
/* FD684 80054174 0C028D89 */  jal        func_800A3624
/* FD688 80054178 24C60280 */   addiu     $a2, $a2, 0x280
/* FD68C 8005417C 001080C0 */  sll        $s0, $s0, 3
/* FD690 80054180 321000FF */  andi       $s0, $s0, 0xff
/* FD694 80054184 AFB00010 */  sw         $s0, 0x10($sp)
/* FD698 80054188 8E44000C */  lw         $a0, 0xc($s2)
/* FD69C 8005418C 240500FF */  addiu      $a1, $zero, 0xff
/* FD6A0 80054190 240600FF */  addiu      $a2, $zero, 0xff
/* FD6A4 80054194 0C028E41 */  jal        func_800A3904
/* FD6A8 80054198 240700FF */   addiu     $a3, $zero, 0xff
/* FD6AC 8005419C 8E43000C */  lw         $v1, 0xc($s2)
/* FD6B0 800541A0 9462001E */  lhu        $v0, 0x1e($v1)
/* FD6B4 800541A4 34420080 */  ori        $v0, $v0, 0x80
/* FD6B8 800541A8 A462001E */  sh         $v0, 0x1e($v1)
/* FD6BC 800541AC 8E42000C */  lw         $v0, 0xc($s2)
/* FD6C0 800541B0 26310001 */  addiu      $s1, $s1, 1
/* FD6C4 800541B4 A440001C */  sh         $zero, 0x1c($v0)
/* FD6C8 800541B8 322200FF */  andi       $v0, $s1, 0xff
/* FD6CC 800541BC 2C420020 */  sltiu      $v0, $v0, 0x20
/* FD6D0 800541C0 1440FFDF */  bnez       $v0, .L80054140
/* FD6D4 800541C4 24040008 */   addiu     $a0, $zero, 8
/* FD6D8 800541C8 240405DC */  addiu      $a0, $zero, 0x5dc
/* FD6DC 800541CC 24050002 */  addiu      $a1, $zero, 2
/* FD6E0 800541D0 0C00D925 */  jal        func_80036494_DF9A4
/* FD6E4 800541D4 24060082 */   addiu     $a2, $zero, 0x82
/* FD6E8 800541D8 00409021 */  addu       $s2, $v0, $zero
/* FD6EC 800541DC 8E44000C */  lw         $a0, 0xc($s2)
/* FD6F0 800541E0 8C82000C */  lw         $v0, 0xc($a0)
/* FD6F4 800541E4 94450000 */  lhu        $a1, ($v0)
/* FD6F8 800541E8 00003021 */  addu       $a2, $zero, $zero
/* FD6FC 800541EC 0C02912A */  jal        func_800A44A8
/* FD700 800541F0 00052842 */   srl       $a1, $a1, 1
/* FD704 800541F4 8E44000C */  lw         $a0, 0xc($s2)
/* FD708 800541F8 3C014198 */  lui        $at, 0x4198
/* FD70C 800541FC 4481B000 */  mtc1       $at, $f22
/* FD710 80054200 3C013F80 */  lui        $at, 0x3f80
/* FD714 80054204 4481C000 */  mtc1       $at, $f24
/* FD718 80054208 4406B000 */  mfc1       $a2, $f22
/* FD71C 8005420C 4407C000 */  mfc1       $a3, $f24
/* FD720 80054210 00000000 */  nop
/* FD724 80054214 0C02915B */  jal        func_800A456C
/* FD728 80054218 00002821 */   addu      $a1, $zero, $zero
/* FD72C 8005421C 8E44000C */  lw         $a0, 0xc($s2)
/* FD730 80054220 24050280 */  addiu      $a1, $zero, 0x280
/* FD734 80054224 0C028D89 */  jal        func_800A3624
/* FD738 80054228 24060040 */   addiu     $a2, $zero, 0x40
/* FD73C 8005422C 8E42000C */  lw         $v0, 0xc($s2)
/* FD740 80054230 24100049 */  addiu      $s0, $zero, 0x49
/* FD744 80054234 A450001C */  sh         $s0, 0x1c($v0)
/* FD748 80054238 8E43000C */  lw         $v1, 0xc($s2)
/* FD74C 8005423C 240405DB */  addiu      $a0, $zero, 0x5db
/* FD750 80054240 9462001E */  lhu        $v0, 0x1e($v1)
/* FD754 80054244 24050002 */  addiu      $a1, $zero, 2
/* FD758 80054248 24060083 */  addiu      $a2, $zero, 0x83
/* FD75C 8005424C 34420104 */  ori        $v0, $v0, 0x104
/* FD760 80054250 0C00D925 */  jal        func_80036494_DF9A4
/* FD764 80054254 A462001E */   sh        $v0, 0x1e($v1)
/* FD768 80054258 00409021 */  addu       $s2, $v0, $zero
/* FD76C 8005425C 8E44000C */  lw         $a0, 0xc($s2)
/* FD770 80054260 8C82000C */  lw         $v0, 0xc($a0)
/* FD774 80054264 94450000 */  lhu        $a1, ($v0)
/* FD778 80054268 00003021 */  addu       $a2, $zero, $zero
/* FD77C 8005426C 0C02912A */  jal        func_800A44A8
/* FD780 80054270 00052842 */   srl       $a1, $a1, 1
/* FD784 80054274 3C014000 */  lui        $at, 0x4000
/* FD788 80054278 4481A000 */  mtc1       $at, $f20
/* FD78C 8005427C 8E44000C */  lw         $a0, 0xc($s2)
/* FD790 80054280 4406A000 */  mfc1       $a2, $f20
/* FD794 80054284 4407A000 */  mfc1       $a3, $f20
/* FD798 80054288 00000000 */  nop
/* FD79C 8005428C 0C02915B */  jal        func_800A456C
/* FD7A0 80054290 00002821 */   addu      $a1, $zero, $zero
/* FD7A4 80054294 8E44000C */  lw         $a0, 0xc($s2)
/* FD7A8 80054298 24050280 */  addiu      $a1, $zero, 0x280
/* FD7AC 8005429C 0C028D89 */  jal        func_800A3624
/* FD7B0 800542A0 24060280 */   addiu     $a2, $zero, 0x280
/* FD7B4 800542A4 8E42000C */  lw         $v0, 0xc($s2)
/* FD7B8 800542A8 A450001C */  sh         $s0, 0x1c($v0)
/* FD7BC 800542AC 8E43000C */  lw         $v1, 0xc($s2)
/* FD7C0 800542B0 9462001E */  lhu        $v0, 0x1e($v1)
/* FD7C4 800542B4 24040082 */  addiu      $a0, $zero, 0x82
/* FD7C8 800542B8 24050084 */  addiu      $a1, $zero, 0x84
/* FD7CC 800542BC 34420104 */  ori        $v0, $v0, 0x104
/* FD7D0 800542C0 0C00DD19 */  jal        func_80037464_E0974
/* FD7D4 800542C4 A462001E */   sh        $v0, 0x1e($v1)
/* FD7D8 800542C8 00409021 */  addu       $s2, $v0, $zero
/* FD7DC 800542CC 8E44000C */  lw         $a0, 0xc($s2)
/* FD7E0 800542D0 8C82000C */  lw         $v0, 0xc($a0)
/* FD7E4 800542D4 94450000 */  lhu        $a1, ($v0)
/* FD7E8 800542D8 00003021 */  addu       $a2, $zero, $zero
/* FD7EC 800542DC 0C02912A */  jal        func_800A44A8
/* FD7F0 800542E0 00052842 */   srl       $a1, $a1, 1
/* FD7F4 800542E4 8E44000C */  lw         $a0, 0xc($s2)
/* FD7F8 800542E8 4406B000 */  mfc1       $a2, $f22
/* FD7FC 800542EC 4407C000 */  mfc1       $a3, $f24
/* FD800 800542F0 00000000 */  nop
/* FD804 800542F4 0C02915B */  jal        func_800A456C
/* FD808 800542F8 00002821 */   addu      $a1, $zero, $zero
/* FD80C 800542FC 8E44000C */  lw         $a0, 0xc($s2)
/* FD810 80054300 24050280 */  addiu      $a1, $zero, 0x280
/* FD814 80054304 0C028D89 */  jal        func_800A3624
/* FD818 80054308 24060040 */   addiu     $a2, $zero, 0x40
/* FD81C 8005430C 8E42000C */  lw         $v0, 0xc($s2)
/* FD820 80054310 A450001C */  sh         $s0, 0x1c($v0)
/* FD824 80054314 8E43000C */  lw         $v1, 0xc($s2)
/* FD828 80054318 9462001E */  lhu        $v0, 0x1e($v1)
/* FD82C 8005431C 34420104 */  ori        $v0, $v0, 0x104
/* FD830 80054320 A462001E */  sh         $v0, 0x1e($v1)
/* FD834 80054324 8E42000C */  lw         $v0, 0xc($s2)
/* FD838 80054328 24040083 */  addiu      $a0, $zero, 0x83
/* FD83C 8005432C 8C430004 */  lw         $v1, 4($v0)
/* FD840 80054330 24050085 */  addiu      $a1, $zero, 0x85
/* FD844 80054334 3C028007 */  lui        $v0, %hi(D_80069744_112C54)
/* FD848 80054338 24429744 */  addiu      $v0, $v0, %lo(D_80069744_112C54)
/* FD84C 8005433C 0C00DD19 */  jal        func_80037464_E0974
/* FD850 80054340 AC620004 */   sw        $v0, 4($v1)
/* FD854 80054344 00409021 */  addu       $s2, $v0, $zero
/* FD858 80054348 8E44000C */  lw         $a0, 0xc($s2)
/* FD85C 8005434C 8C82000C */  lw         $v0, 0xc($a0)
/* FD860 80054350 94450000 */  lhu        $a1, ($v0)
/* FD864 80054354 00003021 */  addu       $a2, $zero, $zero
/* FD868 80054358 0C02912A */  jal        func_800A44A8
/* FD86C 8005435C 00052842 */   srl       $a1, $a1, 1
/* FD870 80054360 8E44000C */  lw         $a0, 0xc($s2)
/* FD874 80054364 4406A000 */  mfc1       $a2, $f20
/* FD878 80054368 4407A000 */  mfc1       $a3, $f20
/* FD87C 8005436C 00000000 */  nop
/* FD880 80054370 0C02915B */  jal        func_800A456C
/* FD884 80054374 00002821 */   addu      $a1, $zero, $zero
/* FD888 80054378 8E44000C */  lw         $a0, 0xc($s2)
/* FD88C 8005437C 24050280 */  addiu      $a1, $zero, 0x280
/* FD890 80054380 0C028D89 */  jal        func_800A3624
/* FD894 80054384 24060280 */   addiu     $a2, $zero, 0x280
/* FD898 80054388 8E42000C */  lw         $v0, 0xc($s2)
/* FD89C 8005438C A450001C */  sh         $s0, 0x1c($v0)
/* FD8A0 80054390 8E43000C */  lw         $v1, 0xc($s2)
/* FD8A4 80054394 9462001E */  lhu        $v0, 0x1e($v1)
/* FD8A8 80054398 34420104 */  ori        $v0, $v0, 0x104
/* FD8AC 8005439C A462001E */  sh         $v0, 0x1e($v1)
/* FD8B0 800543A0 8E42000C */  lw         $v0, 0xc($s2)
/* FD8B4 800543A4 240405DC */  addiu      $a0, $zero, 0x5dc
/* FD8B8 800543A8 24050002 */  addiu      $a1, $zero, 2
/* FD8BC 800543AC 8C430004 */  lw         $v1, 4($v0)
/* FD8C0 800543B0 24060086 */  addiu      $a2, $zero, 0x86
/* FD8C4 800543B4 3C028007 */  lui        $v0, %hi(D_80069764_112C74)
/* FD8C8 800543B8 24429764 */  addiu      $v0, $v0, %lo(D_80069764_112C74)
/* FD8CC 800543BC 0C00D925 */  jal        func_80036494_DF9A4
/* FD8D0 800543C0 AC620004 */   sw        $v0, 4($v1)
/* FD8D4 800543C4 00409021 */  addu       $s2, $v0, $zero
/* FD8D8 800543C8 8E44000C */  lw         $a0, 0xc($s2)
/* FD8DC 800543CC 8C82000C */  lw         $v0, 0xc($a0)
/* FD8E0 800543D0 94450000 */  lhu        $a1, ($v0)
/* FD8E4 800543D4 84460002 */  lh         $a2, 2($v0)
/* FD8E8 800543D8 0C02912A */  jal        func_800A44A8
/* FD8EC 800543DC 00052842 */   srl       $a1, $a1, 1
/* FD8F0 800543E0 8E44000C */  lw         $a0, 0xc($s2)
/* FD8F4 800543E4 4406B000 */  mfc1       $a2, $f22
/* FD8F8 800543E8 4407A000 */  mfc1       $a3, $f20
/* FD8FC 800543EC 00000000 */  nop
/* FD900 800543F0 0C02915B */  jal        func_800A456C
/* FD904 800543F4 00002821 */   addu      $a1, $zero, $zero
/* FD908 800543F8 241100FF */  addiu      $s1, $zero, 0xff
/* FD90C 800543FC AFB10010 */  sw         $s1, 0x10($sp)
/* FD910 80054400 8E44000C */  lw         $a0, 0xc($s2)
/* FD914 80054404 240500C0 */  addiu      $a1, $zero, 0xc0
/* FD918 80054408 240600C0 */  addiu      $a2, $zero, 0xc0
/* FD91C 8005440C 0C028E41 */  jal        func_800A3904
/* FD920 80054410 240700C0 */   addiu     $a3, $zero, 0xc0
/* FD924 80054414 8E44000C */  lw         $a0, 0xc($s2)
/* FD928 80054418 24050280 */  addiu      $a1, $zero, 0x280
/* FD92C 8005441C 0C028D89 */  jal        func_800A3624
/* FD930 80054420 24060280 */   addiu     $a2, $zero, 0x280
/* FD934 80054424 8E42000C */  lw         $v0, 0xc($s2)
/* FD938 80054428 A450001C */  sh         $s0, 0x1c($v0)
/* FD93C 8005442C 8E43000C */  lw         $v1, 0xc($s2)
/* FD940 80054430 240405DB */  addiu      $a0, $zero, 0x5db
/* FD944 80054434 9462001E */  lhu        $v0, 0x1e($v1)
/* FD948 80054438 24050002 */  addiu      $a1, $zero, 2
/* FD94C 8005443C 24060087 */  addiu      $a2, $zero, 0x87
/* FD950 80054440 34420104 */  ori        $v0, $v0, 0x104
/* FD954 80054444 0C00D925 */  jal        func_80036494_DF9A4
/* FD958 80054448 A462001E */   sh        $v0, 0x1e($v1)
/* FD95C 8005444C 00409021 */  addu       $s2, $v0, $zero
/* FD960 80054450 8E44000C */  lw         $a0, 0xc($s2)
/* FD964 80054454 8C82000C */  lw         $v0, 0xc($a0)
/* FD968 80054458 94450000 */  lhu        $a1, ($v0)
/* FD96C 8005445C 00003021 */  addu       $a2, $zero, $zero
/* FD970 80054460 0C02912A */  jal        func_800A44A8
/* FD974 80054464 00052842 */   srl       $a1, $a1, 1
/* FD978 80054468 8E44000C */  lw         $a0, 0xc($s2)
/* FD97C 8005446C 4406A000 */  mfc1       $a2, $f20
/* FD980 80054470 4407A000 */  mfc1       $a3, $f20
/* FD984 80054474 00000000 */  nop
/* FD988 80054478 0C02915B */  jal        func_800A456C
/* FD98C 8005447C 00002821 */   addu      $a1, $zero, $zero
/* FD990 80054480 AFB10010 */  sw         $s1, 0x10($sp)
/* FD994 80054484 8E44000C */  lw         $a0, 0xc($s2)
/* FD998 80054488 240500C0 */  addiu      $a1, $zero, 0xc0
/* FD99C 8005448C 240600C0 */  addiu      $a2, $zero, 0xc0
/* FD9A0 80054490 0C028E41 */  jal        func_800A3904
/* FD9A4 80054494 240700C0 */   addiu     $a3, $zero, 0xc0
/* FD9A8 80054498 8E44000C */  lw         $a0, 0xc($s2)
/* FD9AC 8005449C 24050280 */  addiu      $a1, $zero, 0x280
/* FD9B0 800544A0 0C028D89 */  jal        func_800A3624
/* FD9B4 800544A4 24060280 */   addiu     $a2, $zero, 0x280
/* FD9B8 800544A8 8E42000C */  lw         $v0, 0xc($s2)
/* FD9BC 800544AC A450001C */  sh         $s0, 0x1c($v0)
/* FD9C0 800544B0 8E43000C */  lw         $v1, 0xc($s2)
/* FD9C4 800544B4 240401AA */  addiu      $a0, $zero, 0x1aa
/* FD9C8 800544B8 9462001E */  lhu        $v0, 0x1e($v1)
/* FD9CC 800544BC 24050002 */  addiu      $a1, $zero, 2
/* FD9D0 800544C0 2406009C */  addiu      $a2, $zero, 0x9c
/* FD9D4 800544C4 34420104 */  ori        $v0, $v0, 0x104
/* FD9D8 800544C8 0C00D925 */  jal        func_80036494_DF9A4
/* FD9DC 800544CC A462001E */   sh        $v0, 0x1e($v1)
/* FD9E0 800544D0 00409021 */  addu       $s2, $v0, $zero
/* FD9E4 800544D4 8E44000C */  lw         $a0, 0xc($s2)
/* FD9E8 800544D8 24050040 */  addiu      $a1, $zero, 0x40
/* FD9EC 800544DC 0C028D89 */  jal        func_800A3624
/* FD9F0 800544E0 240601B8 */   addiu     $a2, $zero, 0x1b8
/* FD9F4 800544E4 8E42000C */  lw         $v0, 0xc($s2)
/* FD9F8 800544E8 2410004B */  addiu      $s0, $zero, 0x4b
/* FD9FC 800544EC A450001C */  sh         $s0, 0x1c($v0)
/* FDA00 800544F0 8E43000C */  lw         $v1, 0xc($s2)
/* FDA04 800544F4 9462001E */  lhu        $v0, 0x1e($v1)
/* FDA08 800544F8 34420004 */  ori        $v0, $v0, 4
/* FDA0C 800544FC A462001E */  sh         $v0, 0x1e($v1)
/* FDA10 80054500 8E42000C */  lw         $v0, 0xc($s2)
/* FDA14 80054504 240401AB */  addiu      $a0, $zero, 0x1ab
/* FDA18 80054508 24050002 */  addiu      $a1, $zero, 2
/* FDA1C 8005450C 8C420004 */  lw         $v0, 4($v0)
/* FDA20 80054510 2406009D */  addiu      $a2, $zero, 0x9d
/* FDA24 80054514 3C118007 */  lui        $s1, %hi(D_800696E4_112BF4)
/* FDA28 80054518 263196E4 */  addiu      $s1, $s1, %lo(D_800696E4_112BF4)
/* FDA2C 8005451C 0C00D925 */  jal        func_80036494_DF9A4
/* FDA30 80054520 AC510004 */   sw        $s1, 4($v0)
/* FDA34 80054524 00409021 */  addu       $s2, $v0, $zero
/* FDA38 80054528 8E44000C */  lw         $a0, 0xc($s2)
/* FDA3C 8005452C 240500C0 */  addiu      $a1, $zero, 0xc0
/* FDA40 80054530 0C028D89 */  jal        func_800A3624
/* FDA44 80054534 240602A8 */   addiu     $a2, $zero, 0x2a8
/* FDA48 80054538 8E42000C */  lw         $v0, 0xc($s2)
/* FDA4C 8005453C A450001C */  sh         $s0, 0x1c($v0)
/* FDA50 80054540 8E43000C */  lw         $v1, 0xc($s2)
/* FDA54 80054544 9462001E */  lhu        $v0, 0x1e($v1)
/* FDA58 80054548 34420004 */  ori        $v0, $v0, 4
/* FDA5C 8005454C A462001E */  sh         $v0, 0x1e($v1)
/* FDA60 80054550 8E42000C */  lw         $v0, 0xc($s2)
/* FDA64 80054554 8C420004 */  lw         $v0, 4($v0)
/* FDA68 80054558 2404009D */  addiu      $a0, $zero, 0x9d
/* FDA6C 8005455C 240500A5 */  addiu      $a1, $zero, 0xa5
/* FDA70 80054560 0C00DD19 */  jal        func_80037464_E0974
/* FDA74 80054564 AC510004 */   sw        $s1, 4($v0)
/* FDA78 80054568 00409021 */  addu       $s2, $v0, $zero
/* FDA7C 8005456C 8E44000C */  lw         $a0, 0xc($s2)
/* FDA80 80054570 240500C0 */  addiu      $a1, $zero, 0xc0
/* FDA84 80054574 0C028D89 */  jal        func_800A3624
/* FDA88 80054578 240602A8 */   addiu     $a2, $zero, 0x2a8
/* FDA8C 8005457C 8E42000C */  lw         $v0, 0xc($s2)
/* FDA90 80054580 A450001C */  sh         $s0, 0x1c($v0)
/* FDA94 80054584 8E43000C */  lw         $v1, 0xc($s2)
/* FDA98 80054588 9462001E */  lhu        $v0, 0x1e($v1)
/* FDA9C 8005458C 34420004 */  ori        $v0, $v0, 4
/* FDAA0 80054590 A462001E */  sh         $v0, 0x1e($v1)
/* FDAA4 80054594 8E42000C */  lw         $v0, 0xc($s2)
/* FDAA8 80054598 240401AC */  addiu      $a0, $zero, 0x1ac
/* FDAAC 8005459C 8C420004 */  lw         $v0, 4($v0)
/* FDAB0 800545A0 24050002 */  addiu      $a1, $zero, 2
/* FDAB4 800545A4 2406009E */  addiu      $a2, $zero, 0x9e
/* FDAB8 800545A8 0C00D925 */  jal        func_80036494_DF9A4
/* FDABC 800545AC AC510004 */   sw        $s1, 4($v0)
/* FDAC0 800545B0 00409021 */  addu       $s2, $v0, $zero
/* FDAC4 800545B4 8E44000C */  lw         $a0, 0xc($s2)
/* FDAC8 800545B8 24050400 */  addiu      $a1, $zero, 0x400
/* FDACC 800545BC 0C028D89 */  jal        func_800A3624
/* FDAD0 800545C0 24060210 */   addiu     $a2, $zero, 0x210
/* FDAD4 800545C4 8E42000C */  lw         $v0, 0xc($s2)
/* FDAD8 800545C8 A450001C */  sh         $s0, 0x1c($v0)
/* FDADC 800545CC 8E43000C */  lw         $v1, 0xc($s2)
/* FDAE0 800545D0 9462001E */  lhu        $v0, 0x1e($v1)
/* FDAE4 800545D4 34420004 */  ori        $v0, $v0, 4
/* FDAE8 800545D8 A462001E */  sh         $v0, 0x1e($v1)
/* FDAEC 800545DC 8E42000C */  lw         $v0, 0xc($s2)
/* FDAF0 800545E0 8C420004 */  lw         $v0, 4($v0)
/* FDAF4 800545E4 2404009C */  addiu      $a0, $zero, 0x9c
/* FDAF8 800545E8 2405009F */  addiu      $a1, $zero, 0x9f
/* FDAFC 800545EC 0C00DD19 */  jal        func_80037464_E0974
/* FDB00 800545F0 AC510004 */   sw        $s1, 4($v0)
/* FDB04 800545F4 00409021 */  addu       $s2, $v0, $zero
/* FDB08 800545F8 8E44000C */  lw         $a0, 0xc($s2)
/* FDB0C 800545FC 24050040 */  addiu      $a1, $zero, 0x40
/* FDB10 80054600 0C028D89 */  jal        func_800A3624
/* FDB14 80054604 240601B8 */   addiu     $a2, $zero, 0x1b8
/* FDB18 80054608 8E42000C */  lw         $v0, 0xc($s2)
/* FDB1C 8005460C A450001C */  sh         $s0, 0x1c($v0)
/* FDB20 80054610 8E43000C */  lw         $v1, 0xc($s2)
/* FDB24 80054614 9462001E */  lhu        $v0, 0x1e($v1)
/* FDB28 80054618 34420004 */  ori        $v0, $v0, 4
/* FDB2C 8005461C A462001E */  sh         $v0, 0x1e($v1)
/* FDB30 80054620 8E42000C */  lw         $v0, 0xc($s2)
/* FDB34 80054624 2404009D */  addiu      $a0, $zero, 0x9d
/* FDB38 80054628 8C420004 */  lw         $v0, 4($v0)
/* FDB3C 8005462C 240500A0 */  addiu      $a1, $zero, 0xa0
/* FDB40 80054630 3C118007 */  lui        $s1, %hi(D_80069704_112C14)
/* FDB44 80054634 26319704 */  addiu      $s1, $s1, %lo(D_80069704_112C14)
/* FDB48 80054638 0C00DD19 */  jal        func_80037464_E0974
/* FDB4C 8005463C AC510004 */   sw        $s1, 4($v0)
/* FDB50 80054640 00409021 */  addu       $s2, $v0, $zero
/* FDB54 80054644 8E44000C */  lw         $a0, 0xc($s2)
/* FDB58 80054648 240500C0 */  addiu      $a1, $zero, 0xc0
/* FDB5C 8005464C 0C028D89 */  jal        func_800A3624
/* FDB60 80054650 240602A8 */   addiu     $a2, $zero, 0x2a8
/* FDB64 80054654 8E42000C */  lw         $v0, 0xc($s2)
/* FDB68 80054658 A450001C */  sh         $s0, 0x1c($v0)
/* FDB6C 8005465C 8E43000C */  lw         $v1, 0xc($s2)
/* FDB70 80054660 9462001E */  lhu        $v0, 0x1e($v1)
/* FDB74 80054664 34420004 */  ori        $v0, $v0, 4
/* FDB78 80054668 A462001E */  sh         $v0, 0x1e($v1)
/* FDB7C 8005466C 8E42000C */  lw         $v0, 0xc($s2)
/* FDB80 80054670 8C420004 */  lw         $v0, 4($v0)
/* FDB84 80054674 2404009D */  addiu      $a0, $zero, 0x9d
/* FDB88 80054678 240500A6 */  addiu      $a1, $zero, 0xa6
/* FDB8C 8005467C 0C00DD19 */  jal        func_80037464_E0974
/* FDB90 80054680 AC510004 */   sw        $s1, 4($v0)
/* FDB94 80054684 00409021 */  addu       $s2, $v0, $zero
/* FDB98 80054688 8E44000C */  lw         $a0, 0xc($s2)
/* FDB9C 8005468C 240500C0 */  addiu      $a1, $zero, 0xc0
/* FDBA0 80054690 0C028D89 */  jal        func_800A3624
/* FDBA4 80054694 240602A8 */   addiu     $a2, $zero, 0x2a8
/* FDBA8 80054698 8E42000C */  lw         $v0, 0xc($s2)
/* FDBAC 8005469C A450001C */  sh         $s0, 0x1c($v0)
/* FDBB0 800546A0 8E43000C */  lw         $v1, 0xc($s2)
/* FDBB4 800546A4 9462001E */  lhu        $v0, 0x1e($v1)
/* FDBB8 800546A8 34420004 */  ori        $v0, $v0, 4
/* FDBBC 800546AC A462001E */  sh         $v0, 0x1e($v1)
/* FDBC0 800546B0 8E42000C */  lw         $v0, 0xc($s2)
/* FDBC4 800546B4 8C420004 */  lw         $v0, 4($v0)
/* FDBC8 800546B8 2404009E */  addiu      $a0, $zero, 0x9e
/* FDBCC 800546BC 240500A1 */  addiu      $a1, $zero, 0xa1
/* FDBD0 800546C0 0C00DD19 */  jal        func_80037464_E0974
/* FDBD4 800546C4 AC510004 */   sw        $s1, 4($v0)
/* FDBD8 800546C8 00409021 */  addu       $s2, $v0, $zero
/* FDBDC 800546CC 8E44000C */  lw         $a0, 0xc($s2)
/* FDBE0 800546D0 24050400 */  addiu      $a1, $zero, 0x400
/* FDBE4 800546D4 0C028D89 */  jal        func_800A3624
/* FDBE8 800546D8 24060210 */   addiu     $a2, $zero, 0x210
/* FDBEC 800546DC 8E42000C */  lw         $v0, 0xc($s2)
/* FDBF0 800546E0 A450001C */  sh         $s0, 0x1c($v0)
/* FDBF4 800546E4 8E43000C */  lw         $v1, 0xc($s2)
/* FDBF8 800546E8 9462001E */  lhu        $v0, 0x1e($v1)
/* FDBFC 800546EC 34420004 */  ori        $v0, $v0, 4
/* FDC00 800546F0 A462001E */  sh         $v0, 0x1e($v1)
/* FDC04 800546F4 8E42000C */  lw         $v0, 0xc($s2)
/* FDC08 800546F8 8C420004 */  lw         $v0, 4($v0)
/* FDC0C 800546FC 2404009C */  addiu      $a0, $zero, 0x9c
/* FDC10 80054700 240500A2 */  addiu      $a1, $zero, 0xa2
/* FDC14 80054704 0C00DD19 */  jal        func_80037464_E0974
/* FDC18 80054708 AC510004 */   sw        $s1, 4($v0)
/* FDC1C 8005470C 00409021 */  addu       $s2, $v0, $zero
/* FDC20 80054710 8E44000C */  lw         $a0, 0xc($s2)
/* FDC24 80054714 24050040 */  addiu      $a1, $zero, 0x40
/* FDC28 80054718 0C028D89 */  jal        func_800A3624
/* FDC2C 8005471C 240601C0 */   addiu     $a2, $zero, 0x1c0
/* FDC30 80054720 8E42000C */  lw         $v0, 0xc($s2)
/* FDC34 80054724 A450001C */  sh         $s0, 0x1c($v0)
/* FDC38 80054728 8E43000C */  lw         $v1, 0xc($s2)
/* FDC3C 8005472C 9462001E */  lhu        $v0, 0x1e($v1)
/* FDC40 80054730 34420004 */  ori        $v0, $v0, 4
/* FDC44 80054734 A462001E */  sh         $v0, 0x1e($v1)
/* FDC48 80054738 8E42000C */  lw         $v0, 0xc($s2)
/* FDC4C 8005473C 2404009D */  addiu      $a0, $zero, 0x9d
/* FDC50 80054740 8C420004 */  lw         $v0, 4($v0)
/* FDC54 80054744 240500A3 */  addiu      $a1, $zero, 0xa3
/* FDC58 80054748 3C118007 */  lui        $s1, %hi(D_80069724_112C34)
/* FDC5C 8005474C 26319724 */  addiu      $s1, $s1, %lo(D_80069724_112C34)
/* FDC60 80054750 0C00DD19 */  jal        func_80037464_E0974
/* FDC64 80054754 AC510004 */   sw        $s1, 4($v0)
/* FDC68 80054758 00409021 */  addu       $s2, $v0, $zero
/* FDC6C 8005475C 8E44000C */  lw         $a0, 0xc($s2)
/* FDC70 80054760 240500C0 */  addiu      $a1, $zero, 0xc0
/* FDC74 80054764 0C028D89 */  jal        func_800A3624
/* FDC78 80054768 240602A8 */   addiu     $a2, $zero, 0x2a8
/* FDC7C 8005476C 8E42000C */  lw         $v0, 0xc($s2)
/* FDC80 80054770 A450001C */  sh         $s0, 0x1c($v0)
/* FDC84 80054774 8E43000C */  lw         $v1, 0xc($s2)
/* FDC88 80054778 9462001E */  lhu        $v0, 0x1e($v1)
/* FDC8C 8005477C 34420004 */  ori        $v0, $v0, 4
/* FDC90 80054780 A462001E */  sh         $v0, 0x1e($v1)
/* FDC94 80054784 8E42000C */  lw         $v0, 0xc($s2)
/* FDC98 80054788 8C420004 */  lw         $v0, 4($v0)
/* FDC9C 8005478C 2404009E */  addiu      $a0, $zero, 0x9e
/* FDCA0 80054790 240500A4 */  addiu      $a1, $zero, 0xa4
/* FDCA4 80054794 0C00DD19 */  jal        func_80037464_E0974
/* FDCA8 80054798 AC510004 */   sw        $s1, 4($v0)
/* FDCAC 8005479C 00409021 */  addu       $s2, $v0, $zero
/* FDCB0 800547A0 8E44000C */  lw         $a0, 0xc($s2)
/* FDCB4 800547A4 8C82000C */  lw         $v0, 0xc($a0)
/* FDCB8 800547A8 84460002 */  lh         $a2, 2($v0)
/* FDCBC 800547AC 0C02912A */  jal        func_800A44A8
/* FDCC0 800547B0 00002821 */   addu      $a1, $zero, $zero
/* FDCC4 800547B4 8E44000C */  lw         $a0, 0xc($s2)
/* FDCC8 800547B8 3C064040 */  lui        $a2, 0x4040
/* FDCCC 800547BC 4407A000 */  mfc1       $a3, $f20
/* FDCD0 800547C0 00000000 */  nop
/* FDCD4 800547C4 0C02915B */  jal        func_800A456C
/* FDCD8 800547C8 00002821 */   addu      $a1, $zero, $zero
/* FDCDC 800547CC 8E44000C */  lw         $a0, 0xc($s2)
/* FDCE0 800547D0 24050400 */  addiu      $a1, $zero, 0x400
/* FDCE4 800547D4 0C028D89 */  jal        func_800A3624
/* FDCE8 800547D8 240604E0 */   addiu     $a2, $zero, 0x4e0
/* FDCEC 800547DC 8E42000C */  lw         $v0, 0xc($s2)
/* FDCF0 800547E0 A450001C */  sh         $s0, 0x1c($v0)
/* FDCF4 800547E4 8E43000C */  lw         $v1, 0xc($s2)
/* FDCF8 800547E8 9462001E */  lhu        $v0, 0x1e($v1)
/* FDCFC 800547EC 34420004 */  ori        $v0, $v0, 4
/* FDD00 800547F0 A462001E */  sh         $v0, 0x1e($v1)
/* FDD04 800547F4 8E42000C */  lw         $v0, 0xc($s2)
/* FDD08 800547F8 8C420004 */  lw         $v0, 4($v0)
/* FDD0C 800547FC 24040002 */  addiu      $a0, $zero, 2
/* FDD10 80054800 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FDD14 80054804 AC510004 */   sw        $s1, 4($v0)
/* FDD18 80054808 0040A821 */  addu       $s5, $v0, $zero
/* FDD1C 8005480C 3C01C150 */  lui        $at, 0xc150
/* FDD20 80054810 44810000 */  mtc1       $at, $f0
/* FDD24 80054814 3C013F07 */  lui        $at, 0x3f07
/* FDD28 80054818 3421AE14 */  ori        $at, $at, 0xae14
/* FDD2C 8005481C 44811000 */  mtc1       $at, $f2
/* FDD30 80054820 3C013CA3 */  lui        $at, 0x3ca3
/* FDD34 80054824 3421D70A */  ori        $at, $at, 0xd70a
/* FDD38 80054828 44812000 */  mtc1       $at, $f4
/* FDD3C 8005482C 3C014307 */  lui        $at, 0x4307
/* FDD40 80054830 44813000 */  mtc1       $at, $f6
/* FDD44 80054834 02A02021 */  addu       $a0, $s5, $zero
/* FDD48 80054838 24050004 */  addiu      $a1, $zero, 4
/* FDD4C 8005483C 240200FF */  addiu      $v0, $zero, 0xff
/* FDD50 80054840 AEA00018 */  sw         $zero, 0x18($s5)
/* FDD54 80054844 AEA0001C */  sw         $zero, 0x1c($s5)
/* FDD58 80054848 AEA00024 */  sw         $zero, 0x24($s5)
/* FDD5C 8005484C A6A20074 */  sh         $v0, 0x74($s5)
/* FDD60 80054850 A6A20076 */  sh         $v0, 0x76($s5)
/* FDD64 80054854 A6A20078 */  sh         $v0, 0x78($s5)
/* FDD68 80054858 A6A2007A */  sh         $v0, 0x7a($s5)
/* FDD6C 8005485C E6A00010 */  swc1       $f0, 0x10($s5)
/* FDD70 80054860 E6A20014 */  swc1       $f2, 0x14($s5)
/* FDD74 80054864 E6A40028 */  swc1       $f4, 0x28($s5)
/* FDD78 80054868 0C00DFE6 */  jal        func_80037F98_E14A8
/* FDD7C 8005486C E6A60020 */   swc1      $f6, 0x20($s5)
/* FDD80 80054870 8EA20004 */  lw         $v0, 4($s5)
/* FDD84 80054874 A0400067 */  sb         $zero, 0x67($v0)
/* FDD88 80054878 8EA30004 */  lw         $v1, 4($s5)
/* FDD8C 8005487C 90620066 */  lbu        $v0, 0x66($v1)
/* FDD90 80054880 34420003 */  ori        $v0, $v0, 3
/* FDD94 80054884 A0620066 */  sb         $v0, 0x66($v1)
/* FDD98 80054888 8EA40004 */  lw         $a0, 4($s5)
/* FDD9C 8005488C 0C028703 */  jal        func_800A1C0C
/* FDDA0 80054890 24050002 */   addiu     $a1, $zero, 2
/* FDDA4 80054894 8EA40004 */  lw         $a0, 4($s5)
/* FDDA8 80054898 3C058007 */  lui        $a1, %hi(D_8006A28C_11379C)
/* FDDAC 8005489C 24A5A28C */  addiu      $a1, $a1, %lo(D_8006A28C_11379C)
/* FDDB0 800548A0 0C0284DC */  jal        func_800A1370
/* FDDB4 800548A4 00008821 */   addu      $s1, $zero, $zero
/* FDDB8 800548A8 8EA40004 */  lw         $a0, 4($s5)
/* FDDBC 800548AC 00021400 */  sll        $v0, $v0, 0x10
/* FDDC0 800548B0 0C0285CC */  jal        func_800A1730
/* FDDC4 800548B4 00022C03 */   sra       $a1, $v0, 0x10
/* FDDC8 800548B8 3403FFFF */  ori        $v1, $zero, 0xffff
/* FDDCC 800548BC 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FDDD0 800548C0 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
.L800548C4:
/* FDDD4 800548C4 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FDDD8 800548C8 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FDDDC 800548CC A4430000 */  sh         $v1, ($v0)
/* FDDE0 800548D0 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FDDE4 800548D4 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FDDE8 800548D8 26310001 */  addiu      $s1, $s1, 1
/* FDDEC 800548DC 24420002 */  addiu      $v0, $v0, 2
/* FDDF0 800548E0 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FDDF4 800548E4 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FDDF8 800548E8 322200FF */  andi       $v0, $s1, 0xff
/* FDDFC 800548EC 2C420010 */  sltiu      $v0, $v0, 0x10
/* FDE00 800548F0 1440FFF4 */  bnez       $v0, .L800548C4
/* FDE04 800548F4 00000000 */   nop
/* FDE08 800548F8 8EA40004 */  lw         $a0, 4($s5)
/* FDE0C 800548FC 3C058007 */  lui        $a1, %hi(D_8006A294_1137A4)
/* FDE10 80054900 24A5A294 */  addiu      $a1, $a1, %lo(D_8006A294_1137A4)
/* FDE14 80054904 0C0284DC */  jal        func_800A1370
/* FDE18 80054908 00008821 */   addu      $s1, $zero, $zero
/* FDE1C 8005490C 8EA40004 */  lw         $a0, 4($s5)
/* FDE20 80054910 00021400 */  sll        $v0, $v0, 0x10
/* FDE24 80054914 0C0285CC */  jal        func_800A1730
/* FDE28 80054918 00022C03 */   sra       $a1, $v0, 0x10
/* FDE2C 8005491C 3403FFFF */  ori        $v1, $zero, 0xffff
/* FDE30 80054920 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FDE34 80054924 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
.L80054928:
/* FDE38 80054928 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FDE3C 8005492C 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FDE40 80054930 A4430000 */  sh         $v1, ($v0)
/* FDE44 80054934 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FDE48 80054938 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FDE4C 8005493C 26310001 */  addiu      $s1, $s1, 1
/* FDE50 80054940 24420002 */  addiu      $v0, $v0, 2
/* FDE54 80054944 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FDE58 80054948 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FDE5C 8005494C 322200FF */  andi       $v0, $s1, 0xff
/* FDE60 80054950 2C420010 */  sltiu      $v0, $v0, 0x10
/* FDE64 80054954 1440FFF4 */  bnez       $v0, .L80054928
/* FDE68 80054958 00000000 */   nop
/* FDE6C 8005495C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FDE70 80054960 24040003 */   addiu     $a0, $zero, 3
/* FDE74 80054964 0040A821 */  addu       $s5, $v0, $zero
/* FDE78 80054968 3C01C150 */  lui        $at, 0xc150
/* FDE7C 8005496C 44810000 */  mtc1       $at, $f0
/* FDE80 80054970 3C013F07 */  lui        $at, 0x3f07
/* FDE84 80054974 3421AE14 */  ori        $at, $at, 0xae14
/* FDE88 80054978 44811000 */  mtc1       $at, $f2
/* FDE8C 8005497C 3C013CA3 */  lui        $at, 0x3ca3
/* FDE90 80054980 3421D70A */  ori        $at, $at, 0xd70a
/* FDE94 80054984 44812000 */  mtc1       $at, $f4
/* FDE98 80054988 3C014307 */  lui        $at, 0x4307
/* FDE9C 8005498C 44813000 */  mtc1       $at, $f6
/* FDEA0 80054990 02A02021 */  addu       $a0, $s5, $zero
/* FDEA4 80054994 24050004 */  addiu      $a1, $zero, 4
/* FDEA8 80054998 240200FF */  addiu      $v0, $zero, 0xff
/* FDEAC 8005499C AEA00018 */  sw         $zero, 0x18($s5)
/* FDEB0 800549A0 AEA0001C */  sw         $zero, 0x1c($s5)
/* FDEB4 800549A4 AEA00024 */  sw         $zero, 0x24($s5)
/* FDEB8 800549A8 A6A20074 */  sh         $v0, 0x74($s5)
/* FDEBC 800549AC A6A20076 */  sh         $v0, 0x76($s5)
/* FDEC0 800549B0 A6A20078 */  sh         $v0, 0x78($s5)
/* FDEC4 800549B4 A6A2007A */  sh         $v0, 0x7a($s5)
/* FDEC8 800549B8 E6A00010 */  swc1       $f0, 0x10($s5)
/* FDECC 800549BC E6A20014 */  swc1       $f2, 0x14($s5)
/* FDED0 800549C0 E6A40028 */  swc1       $f4, 0x28($s5)
/* FDED4 800549C4 0C00DFE6 */  jal        func_80037F98_E14A8
/* FDED8 800549C8 E6A60020 */   swc1      $f6, 0x20($s5)
/* FDEDC 800549CC 8EA20004 */  lw         $v0, 4($s5)
/* FDEE0 800549D0 A0400067 */  sb         $zero, 0x67($v0)
/* FDEE4 800549D4 8EA30004 */  lw         $v1, 4($s5)
/* FDEE8 800549D8 90620066 */  lbu        $v0, 0x66($v1)
/* FDEEC 800549DC 34420003 */  ori        $v0, $v0, 3
/* FDEF0 800549E0 A0620066 */  sb         $v0, 0x66($v1)
/* FDEF4 800549E4 8EA40004 */  lw         $a0, 4($s5)
/* FDEF8 800549E8 0C028703 */  jal        func_800A1C0C
/* FDEFC 800549EC 24050003 */   addiu     $a1, $zero, 3
/* FDF00 800549F0 8EA40004 */  lw         $a0, 4($s5)
/* FDF04 800549F4 3C058007 */  lui        $a1, %hi(D_8006A28C_11379C)
/* FDF08 800549F8 24A5A28C */  addiu      $a1, $a1, %lo(D_8006A28C_11379C)
/* FDF0C 800549FC 0C0284DC */  jal        func_800A1370
/* FDF10 80054A00 00008821 */   addu      $s1, $zero, $zero
/* FDF14 80054A04 8EA40004 */  lw         $a0, 4($s5)
/* FDF18 80054A08 00021400 */  sll        $v0, $v0, 0x10
/* FDF1C 80054A0C 0C0285CC */  jal        func_800A1730
/* FDF20 80054A10 00022C03 */   sra       $a1, $v0, 0x10
/* FDF24 80054A14 3403FFFF */  ori        $v1, $zero, 0xffff
/* FDF28 80054A18 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FDF2C 80054A1C AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
.L80054A20:
/* FDF30 80054A20 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FDF34 80054A24 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FDF38 80054A28 A4430000 */  sh         $v1, ($v0)
/* FDF3C 80054A2C 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FDF40 80054A30 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FDF44 80054A34 26310001 */  addiu      $s1, $s1, 1
/* FDF48 80054A38 24420002 */  addiu      $v0, $v0, 2
/* FDF4C 80054A3C 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FDF50 80054A40 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FDF54 80054A44 322200FF */  andi       $v0, $s1, 0xff
/* FDF58 80054A48 2C420010 */  sltiu      $v0, $v0, 0x10
/* FDF5C 80054A4C 1440FFF4 */  bnez       $v0, .L80054A20
/* FDF60 80054A50 00000000 */   nop
/* FDF64 80054A54 8EA40004 */  lw         $a0, 4($s5)
/* FDF68 80054A58 3C058007 */  lui        $a1, %hi(D_8006A294_1137A4)
/* FDF6C 80054A5C 24A5A294 */  addiu      $a1, $a1, %lo(D_8006A294_1137A4)
/* FDF70 80054A60 0C0284DC */  jal        func_800A1370
/* FDF74 80054A64 00008821 */   addu      $s1, $zero, $zero
/* FDF78 80054A68 8EA40004 */  lw         $a0, 4($s5)
/* FDF7C 80054A6C 00021400 */  sll        $v0, $v0, 0x10
/* FDF80 80054A70 0C0285CC */  jal        func_800A1730
/* FDF84 80054A74 00022C03 */   sra       $a1, $v0, 0x10
/* FDF88 80054A78 3403FFFF */  ori        $v1, $zero, 0xffff
/* FDF8C 80054A7C 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FDF90 80054A80 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
.L80054A84:
/* FDF94 80054A84 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FDF98 80054A88 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FDF9C 80054A8C A4430000 */  sh         $v1, ($v0)
/* FDFA0 80054A90 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FDFA4 80054A94 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FDFA8 80054A98 26310001 */  addiu      $s1, $s1, 1
/* FDFAC 80054A9C 24420002 */  addiu      $v0, $v0, 2
/* FDFB0 80054AA0 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FDFB4 80054AA4 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FDFB8 80054AA8 322200FF */  andi       $v0, $s1, 0xff
/* FDFBC 80054AAC 2C420010 */  sltiu      $v0, $v0, 0x10
/* FDFC0 80054AB0 1440FFF4 */  bnez       $v0, .L80054A84
/* FDFC4 80054AB4 00000000 */   nop
/* FDFC8 80054AB8 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FDFCC 80054ABC 24040018 */   addiu     $a0, $zero, 0x18
/* FDFD0 80054AC0 0040A821 */  addu       $s5, $v0, $zero
/* FDFD4 80054AC4 3C01C150 */  lui        $at, 0xc150
/* FDFD8 80054AC8 4481B000 */  mtc1       $at, $f22
/* FDFDC 80054ACC 3C01C1AC */  lui        $at, 0xc1ac
/* FDFE0 80054AD0 4481C000 */  mtc1       $at, $f24
/* FDFE4 80054AD4 3C013CA3 */  lui        $at, 0x3ca3
/* FDFE8 80054AD8 3421D70A */  ori        $at, $at, 0xd70a
/* FDFEC 80054ADC 4481A000 */  mtc1       $at, $f20
/* FDFF0 80054AE0 3C014307 */  lui        $at, 0x4307
/* FDFF4 80054AE4 4481D000 */  mtc1       $at, $f26
/* FDFF8 80054AE8 02A02021 */  addu       $a0, $s5, $zero
/* FDFFC 80054AEC 24050005 */  addiu      $a1, $zero, 5
/* FE000 80054AF0 24100040 */  addiu      $s0, $zero, 0x40
/* FE004 80054AF4 241100FF */  addiu      $s1, $zero, 0xff
/* FE008 80054AF8 AEA00018 */  sw         $zero, 0x18($s5)
/* FE00C 80054AFC AEA0001C */  sw         $zero, 0x1c($s5)
/* FE010 80054B00 AEA00024 */  sw         $zero, 0x24($s5)
/* FE014 80054B04 A6B00074 */  sh         $s0, 0x74($s5)
/* FE018 80054B08 A6B00076 */  sh         $s0, 0x76($s5)
/* FE01C 80054B0C A6B00078 */  sh         $s0, 0x78($s5)
/* FE020 80054B10 A6B1007A */  sh         $s1, 0x7a($s5)
/* FE024 80054B14 E6B60010 */  swc1       $f22, 0x10($s5)
/* FE028 80054B18 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE02C 80054B1C E6B40028 */  swc1       $f20, 0x28($s5)
/* FE030 80054B20 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE034 80054B24 E6BA0020 */   swc1      $f26, 0x20($s5)
/* FE038 80054B28 8EA20004 */  lw         $v0, 4($s5)
/* FE03C 80054B2C A0400067 */  sb         $zero, 0x67($v0)
/* FE040 80054B30 8EA30004 */  lw         $v1, 4($s5)
/* FE044 80054B34 90620066 */  lbu        $v0, 0x66($v1)
/* FE048 80054B38 24040019 */  addiu      $a0, $zero, 0x19
/* FE04C 80054B3C 34420003 */  ori        $v0, $v0, 3
/* FE050 80054B40 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE054 80054B44 A0620066 */   sb        $v0, 0x66($v1)
/* FE058 80054B48 0040A821 */  addu       $s5, $v0, $zero
/* FE05C 80054B4C 02A02021 */  addu       $a0, $s5, $zero
/* FE060 80054B50 24050006 */  addiu      $a1, $zero, 6
/* FE064 80054B54 E6B60010 */  swc1       $f22, 0x10($s5)
/* FE068 80054B58 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE06C 80054B5C AEA00018 */  sw         $zero, 0x18($s5)
/* FE070 80054B60 E6B40028 */  swc1       $f20, 0x28($s5)
/* FE074 80054B64 AEA0001C */  sw         $zero, 0x1c($s5)
/* FE078 80054B68 E6BA0020 */  swc1       $f26, 0x20($s5)
/* FE07C 80054B6C AEA00024 */  sw         $zero, 0x24($s5)
/* FE080 80054B70 A6B00074 */  sh         $s0, 0x74($s5)
/* FE084 80054B74 A6B00076 */  sh         $s0, 0x76($s5)
/* FE088 80054B78 A6B00078 */  sh         $s0, 0x78($s5)
/* FE08C 80054B7C 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE090 80054B80 A6B1007A */   sh        $s1, 0x7a($s5)
/* FE094 80054B84 8EA20004 */  lw         $v0, 4($s5)
/* FE098 80054B88 A0400067 */  sb         $zero, 0x67($v0)
/* FE09C 80054B8C 8EA30004 */  lw         $v1, 4($s5)
/* FE0A0 80054B90 90620066 */  lbu        $v0, 0x66($v1)
/* FE0A4 80054B94 2404001B */  addiu      $a0, $zero, 0x1b
/* FE0A8 80054B98 34420003 */  ori        $v0, $v0, 3
/* FE0AC 80054B9C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE0B0 80054BA0 A0620066 */   sb        $v0, 0x66($v1)
/* FE0B4 80054BA4 0040A821 */  addu       $s5, $v0, $zero
/* FE0B8 80054BA8 3C014334 */  lui        $at, 0x4334
/* FE0BC 80054BAC 4481B000 */  mtc1       $at, $f22
/* FE0C0 80054BB0 3C0143B1 */  lui        $at, 0x43b1
/* FE0C4 80054BB4 34218000 */  ori        $at, $at, 0x8000
/* FE0C8 80054BB8 44810000 */  mtc1       $at, $f0
/* FE0CC 80054BBC 02A02021 */  addu       $a0, $s5, $zero
/* FE0D0 80054BC0 24050103 */  addiu      $a1, $zero, 0x103
/* FE0D4 80054BC4 AEA00010 */  sw         $zero, 0x10($s5)
/* FE0D8 80054BC8 AEA00014 */  sw         $zero, 0x14($s5)
/* FE0DC 80054BCC AEA00018 */  sw         $zero, 0x18($s5)
/* FE0E0 80054BD0 E6B40028 */  swc1       $f20, 0x28($s5)
/* FE0E4 80054BD4 AEA0001C */  sw         $zero, 0x1c($s5)
/* FE0E8 80054BD8 A6B10074 */  sh         $s1, 0x74($s5)
/* FE0EC 80054BDC A6B10076 */  sh         $s1, 0x76($s5)
/* FE0F0 80054BE0 A6B10078 */  sh         $s1, 0x78($s5)
/* FE0F4 80054BE4 A6B1007A */  sh         $s1, 0x7a($s5)
/* FE0F8 80054BE8 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE0FC 80054BEC 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE100 80054BF0 E6A00024 */   swc1      $f0, 0x24($s5)
/* FE104 80054BF4 8EA20004 */  lw         $v0, 4($s5)
/* FE108 80054BF8 2414000A */  addiu      $s4, $zero, 0xa
/* FE10C 80054BFC A0540067 */  sb         $s4, 0x67($v0)
/* FE110 80054C00 8EA30004 */  lw         $v1, 4($s5)
/* FE114 80054C04 90620066 */  lbu        $v0, 0x66($v1)
/* FE118 80054C08 2404001C */  addiu      $a0, $zero, 0x1c
/* FE11C 80054C0C 34420023 */  ori        $v0, $v0, 0x23
/* FE120 80054C10 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE124 80054C14 A0620066 */   sb        $v0, 0x66($v1)
/* FE128 80054C18 0040A821 */  addu       $s5, $v0, $zero
/* FE12C 80054C1C 3C0141A0 */  lui        $at, 0x41a0
/* FE130 80054C20 4481A000 */  mtc1       $at, $f20
/* FE134 80054C24 3C014040 */  lui        $at, 0x4040
/* FE138 80054C28 4481C000 */  mtc1       $at, $f24
/* FE13C 80054C2C 3C013CBC */  lui        $at, 0x3cbc
/* FE140 80054C30 34216A7F */  ori        $at, $at, 0x6a7f
/* FE144 80054C34 4481D000 */  mtc1       $at, $f26
/* FE148 80054C38 02A02021 */  addu       $a0, $s5, $zero
/* FE14C 80054C3C 24050105 */  addiu      $a1, $zero, 0x105
/* FE150 80054C40 AEA00018 */  sw         $zero, 0x18($s5)
/* FE154 80054C44 AEA0001C */  sw         $zero, 0x1c($s5)
/* FE158 80054C48 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE15C 80054C4C AEA00024 */  sw         $zero, 0x24($s5)
/* FE160 80054C50 A6B10074 */  sh         $s1, 0x74($s5)
/* FE164 80054C54 A6B10076 */  sh         $s1, 0x76($s5)
/* FE168 80054C58 A6B10078 */  sh         $s1, 0x78($s5)
/* FE16C 80054C5C A6B1007A */  sh         $s1, 0x7a($s5)
/* FE170 80054C60 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE174 80054C64 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE178 80054C68 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE17C 80054C6C E6BA0028 */   swc1      $f26, 0x28($s5)
/* FE180 80054C70 8EA20004 */  lw         $v0, 4($s5)
/* FE184 80054C74 A0540067 */  sb         $s4, 0x67($v0)
/* FE188 80054C78 8EA30004 */  lw         $v1, 4($s5)
/* FE18C 80054C7C 90620066 */  lbu        $v0, 0x66($v1)
/* FE190 80054C80 34420023 */  ori        $v0, $v0, 0x23
/* FE194 80054C84 A0620066 */  sb         $v0, 0x66($v1)
/* FE198 80054C88 8EA40004 */  lw         $a0, 4($s5)
/* FE19C 80054C8C 3C108007 */  lui        $s0, %hi(D_8006A298_1137A8)
/* FE1A0 80054C90 2610A298 */  addiu      $s0, $s0, %lo(D_8006A298_1137A8)
/* FE1A4 80054C94 0C0284DC */  jal        func_800A1370
/* FE1A8 80054C98 02002821 */   addu      $a1, $s0, $zero
/* FE1AC 80054C9C 8EA40004 */  lw         $a0, 4($s5)
/* FE1B0 80054CA0 00021400 */  sll        $v0, $v0, 0x10
/* FE1B4 80054CA4 0C0285CC */  jal        func_800A1730
/* FE1B8 80054CA8 00022C03 */   sra       $a1, $v0, 0x10
/* FE1BC 80054CAC 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE1C0 80054CB0 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FE1C4 80054CB4 94430000 */  lhu        $v1, ($v0)
/* FE1C8 80054CB8 2404001D */  addiu      $a0, $zero, 0x1d
/* FE1CC 80054CBC 3063FFFE */  andi       $v1, $v1, 0xfffe
/* FE1D0 80054CC0 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE1D4 80054CC4 A4430000 */   sh        $v1, ($v0)
/* FE1D8 80054CC8 0040A821 */  addu       $s5, $v0, $zero
/* FE1DC 80054CCC 02A02021 */  addu       $a0, $s5, $zero
/* FE1E0 80054CD0 24050105 */  addiu      $a1, $zero, 0x105
/* FE1E4 80054CD4 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE1E8 80054CD8 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE1EC 80054CDC AEA00018 */  sw         $zero, 0x18($s5)
/* FE1F0 80054CE0 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE1F4 80054CE4 AEA0001C */  sw         $zero, 0x1c($s5)
/* FE1F8 80054CE8 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE1FC 80054CEC AEA00024 */  sw         $zero, 0x24($s5)
/* FE200 80054CF0 A6B10074 */  sh         $s1, 0x74($s5)
/* FE204 80054CF4 A6B10076 */  sh         $s1, 0x76($s5)
/* FE208 80054CF8 A6B10078 */  sh         $s1, 0x78($s5)
/* FE20C 80054CFC 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE210 80054D00 A6B1007A */   sh        $s1, 0x7a($s5)
/* FE214 80054D04 8EA20004 */  lw         $v0, 4($s5)
/* FE218 80054D08 3C13001E */  lui        $s3, 0x1e
/* FE21C 80054D0C 26739000 */  addiu      $s3, $s3, -0x7000
/* FE220 80054D10 02602021 */  addu       $a0, $s3, $zero
/* FE224 80054D14 A0540067 */  sb         $s4, 0x67($v0)
/* FE228 80054D18 8EA30004 */  lw         $v1, 4($s5)
/* FE22C 80054D1C 3C12800D */  lui        $s2, %hi(D_800D6AD0)
/* FE230 80054D20 26526AD0 */  addiu      $s2, $s2, %lo(D_800D6AD0)
/* FE234 80054D24 02402821 */  addu       $a1, $s2, $zero
/* FE238 80054D28 90620066 */  lbu        $v0, 0x66($v1)
/* FE23C 80054D2C 24060851 */  addiu      $a2, $zero, 0x851
/* FE240 80054D30 00003821 */  addu       $a3, $zero, $zero
/* FE244 80054D34 34420023 */  ori        $v0, $v0, 0x23
/* FE248 80054D38 0C02648E */  jal        func_80099238
/* FE24C 80054D3C A0620066 */   sb        $v0, 0x66($v1)
/* FE250 80054D40 8EA40004 */  lw         $a0, 4($s5)
/* FE254 80054D44 3C018007 */  lui        $at, %hi(D_8006C1A0)
/* FE258 80054D48 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0)($at)
/* FE25C 80054D4C 0C0284DC */  jal        func_800A1370
/* FE260 80054D50 02002821 */   addu      $a1, $s0, $zero
/* FE264 80054D54 8EA40004 */  lw         $a0, 4($s5)
/* FE268 80054D58 00021400 */  sll        $v0, $v0, 0x10
/* FE26C 80054D5C 0C0285CC */  jal        func_800A1730
/* FE270 80054D60 00022C03 */   sra       $a1, $v0, 0x10
/* FE274 80054D64 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE278 80054D68 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0)($a0)
/* FE27C 80054D6C 24450020 */  addiu      $a1, $v0, 0x20
/* FE280 80054D70 24060400 */  addiu      $a2, $zero, 0x400
/* FE284 80054D74 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE288 80054D78 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4)($at)
/* FE28C 80054D7C 0C03006C */  jal        func_800C01B0
/* FE290 80054D80 24840010 */   addiu     $a0, $a0, 0x10
/* FE294 80054D84 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE298 80054D88 0C0326A1 */  jal        func_800C9A84
/* FE29C 80054D8C 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0)($a0)
/* FE2A0 80054D90 8EA40004 */  lw         $a0, 4($s5)
/* FE2A4 80054D94 0C0284DC */  jal        func_800A1370
/* FE2A8 80054D98 02002821 */   addu      $a1, $s0, $zero
/* FE2AC 80054D9C 8EA40004 */  lw         $a0, 4($s5)
/* FE2B0 80054DA0 00021400 */  sll        $v0, $v0, 0x10
/* FE2B4 80054DA4 0C0285CC */  jal        func_800A1730
/* FE2B8 80054DA8 00022C03 */   sra       $a1, $v0, 0x10
/* FE2BC 80054DAC 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE2C0 80054DB0 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FE2C4 80054DB4 94430000 */  lhu        $v1, ($v0)
/* FE2C8 80054DB8 2404001E */  addiu      $a0, $zero, 0x1e
/* FE2CC 80054DBC 3063FFFE */  andi       $v1, $v1, 0xfffe
/* FE2D0 80054DC0 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE2D4 80054DC4 A4430000 */   sh        $v1, ($v0)
/* FE2D8 80054DC8 0040A821 */  addu       $s5, $v0, $zero
/* FE2DC 80054DCC 02A02021 */  addu       $a0, $s5, $zero
/* FE2E0 80054DD0 24050105 */  addiu      $a1, $zero, 0x105
/* FE2E4 80054DD4 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE2E8 80054DD8 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE2EC 80054DDC AEA00018 */  sw         $zero, 0x18($s5)
/* FE2F0 80054DE0 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE2F4 80054DE4 AEA0001C */  sw         $zero, 0x1c($s5)
/* FE2F8 80054DE8 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE2FC 80054DEC AEA00024 */  sw         $zero, 0x24($s5)
/* FE300 80054DF0 A6B10074 */  sh         $s1, 0x74($s5)
/* FE304 80054DF4 A6B10076 */  sh         $s1, 0x76($s5)
/* FE308 80054DF8 A6B10078 */  sh         $s1, 0x78($s5)
/* FE30C 80054DFC 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE310 80054E00 A6B1007A */   sh        $s1, 0x7a($s5)
/* FE314 80054E04 8EA20004 */  lw         $v0, 4($s5)
/* FE318 80054E08 A0540067 */  sb         $s4, 0x67($v0)
/* FE31C 80054E0C 8EA30004 */  lw         $v1, 4($s5)
/* FE320 80054E10 02602021 */  addu       $a0, $s3, $zero
/* FE324 80054E14 02402821 */  addu       $a1, $s2, $zero
/* FE328 80054E18 90620066 */  lbu        $v0, 0x66($v1)
/* FE32C 80054E1C 24060852 */  addiu      $a2, $zero, 0x852
/* FE330 80054E20 00003821 */  addu       $a3, $zero, $zero
/* FE334 80054E24 34420023 */  ori        $v0, $v0, 0x23
/* FE338 80054E28 0C02648E */  jal        func_80099238
/* FE33C 80054E2C A0620066 */   sb        $v0, 0x66($v1)
/* FE340 80054E30 8EA40004 */  lw         $a0, 4($s5)
/* FE344 80054E34 3C018007 */  lui        $at, %hi(D_8006C1A0)
/* FE348 80054E38 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0)($at)
/* FE34C 80054E3C 0C0284DC */  jal        func_800A1370
/* FE350 80054E40 02002821 */   addu      $a1, $s0, $zero
/* FE354 80054E44 8EA40004 */  lw         $a0, 4($s5)
/* FE358 80054E48 00021400 */  sll        $v0, $v0, 0x10
/* FE35C 80054E4C 0C0285CC */  jal        func_800A1730
/* FE360 80054E50 00022C03 */   sra       $a1, $v0, 0x10
/* FE364 80054E54 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE368 80054E58 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0)($a0)
/* FE36C 80054E5C 24450020 */  addiu      $a1, $v0, 0x20
/* FE370 80054E60 24060400 */  addiu      $a2, $zero, 0x400
/* FE374 80054E64 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE378 80054E68 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4)($at)
/* FE37C 80054E6C 0C03006C */  jal        func_800C01B0
/* FE380 80054E70 24840010 */   addiu     $a0, $a0, 0x10
/* FE384 80054E74 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE388 80054E78 0C0326A1 */  jal        func_800C9A84
/* FE38C 80054E7C 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0)($a0)
/* FE390 80054E80 8EA40004 */  lw         $a0, 4($s5)
/* FE394 80054E84 0C0284DC */  jal        func_800A1370
/* FE398 80054E88 02002821 */   addu      $a1, $s0, $zero
/* FE39C 80054E8C 8EA40004 */  lw         $a0, 4($s5)
/* FE3A0 80054E90 00021400 */  sll        $v0, $v0, 0x10
/* FE3A4 80054E94 0C0285CC */  jal        func_800A1730
/* FE3A8 80054E98 00022C03 */   sra       $a1, $v0, 0x10
/* FE3AC 80054E9C 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE3B0 80054EA0 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FE3B4 80054EA4 94430000 */  lhu        $v1, ($v0)
/* FE3B8 80054EA8 2404001F */  addiu      $a0, $zero, 0x1f
/* FE3BC 80054EAC 3063FFFE */  andi       $v1, $v1, 0xfffe
/* FE3C0 80054EB0 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE3C4 80054EB4 A4430000 */   sh        $v1, ($v0)
/* FE3C8 80054EB8 0040A821 */  addu       $s5, $v0, $zero
/* FE3CC 80054EBC 02A02021 */  addu       $a0, $s5, $zero
/* FE3D0 80054EC0 24050105 */  addiu      $a1, $zero, 0x105
/* FE3D4 80054EC4 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE3D8 80054EC8 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE3DC 80054ECC AEA00018 */  sw         $zero, 0x18($s5)
/* FE3E0 80054ED0 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE3E4 80054ED4 AEA0001C */  sw         $zero, 0x1c($s5)
/* FE3E8 80054ED8 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE3EC 80054EDC AEA00024 */  sw         $zero, 0x24($s5)
/* FE3F0 80054EE0 A6B10074 */  sh         $s1, 0x74($s5)
/* FE3F4 80054EE4 A6B10076 */  sh         $s1, 0x76($s5)
/* FE3F8 80054EE8 A6B10078 */  sh         $s1, 0x78($s5)
/* FE3FC 80054EEC 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE400 80054EF0 A6B1007A */   sh        $s1, 0x7a($s5)
/* FE404 80054EF4 8EA20004 */  lw         $v0, 4($s5)
/* FE408 80054EF8 A0540067 */  sb         $s4, 0x67($v0)
/* FE40C 80054EFC 8EA30004 */  lw         $v1, 4($s5)
/* FE410 80054F00 02602021 */  addu       $a0, $s3, $zero
/* FE414 80054F04 02402821 */  addu       $a1, $s2, $zero
/* FE418 80054F08 90620066 */  lbu        $v0, 0x66($v1)
/* FE41C 80054F0C 24060853 */  addiu      $a2, $zero, 0x853
/* FE420 80054F10 00003821 */  addu       $a3, $zero, $zero
/* FE424 80054F14 34420023 */  ori        $v0, $v0, 0x23
/* FE428 80054F18 0C02648E */  jal        func_80099238
/* FE42C 80054F1C A0620066 */   sb        $v0, 0x66($v1)
/* FE430 80054F20 8EA40004 */  lw         $a0, 4($s5)
/* FE434 80054F24 3C018007 */  lui        $at, %hi(D_8006C1A0)
/* FE438 80054F28 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0)($at)
/* FE43C 80054F2C 0C0284DC */  jal        func_800A1370
/* FE440 80054F30 02002821 */   addu      $a1, $s0, $zero
/* FE444 80054F34 8EA40004 */  lw         $a0, 4($s5)
/* FE448 80054F38 00021400 */  sll        $v0, $v0, 0x10
/* FE44C 80054F3C 0C0285CC */  jal        func_800A1730
/* FE450 80054F40 00022C03 */   sra       $a1, $v0, 0x10
/* FE454 80054F44 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE458 80054F48 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0)($a0)
/* FE45C 80054F4C 24450020 */  addiu      $a1, $v0, 0x20
/* FE460 80054F50 24060400 */  addiu      $a2, $zero, 0x400
/* FE464 80054F54 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE468 80054F58 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4)($at)
/* FE46C 80054F5C 0C03006C */  jal        func_800C01B0
/* FE470 80054F60 24840010 */   addiu     $a0, $a0, 0x10
/* FE474 80054F64 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE478 80054F68 0C0326A1 */  jal        func_800C9A84
/* FE47C 80054F6C 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0)($a0)
/* FE480 80054F70 8EA40004 */  lw         $a0, 4($s5)
/* FE484 80054F74 0C0284DC */  jal        func_800A1370
/* FE488 80054F78 02002821 */   addu      $a1, $s0, $zero
/* FE48C 80054F7C 8EA40004 */  lw         $a0, 4($s5)
/* FE490 80054F80 00021400 */  sll        $v0, $v0, 0x10
/* FE494 80054F84 0C0285CC */  jal        func_800A1730
/* FE498 80054F88 00022C03 */   sra       $a1, $v0, 0x10
/* FE49C 80054F8C 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE4A0 80054F90 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FE4A4 80054F94 94430000 */  lhu        $v1, ($v0)
/* FE4A8 80054F98 3C013F80 */  lui        $at, 0x3f80
/* FE4AC 80054F9C 44810000 */  mtc1       $at, $f0
/* FE4B0 80054FA0 3C01C13D */  lui        $at, 0xc13d
/* FE4B4 80054FA4 34211EB8 */  ori        $at, $at, 0x1eb8
/* FE4B8 80054FA8 44811000 */  mtc1       $at, $f2
/* FE4BC 80054FAC 3C0143B0 */  lui        $at, 0x43b0
/* FE4C0 80054FB0 3421E3D7 */  ori        $at, $at, 0xe3d7
/* FE4C4 80054FB4 44812000 */  mtc1       $at, $f4
/* FE4C8 80054FB8 3C01C2B4 */  lui        $at, 0xc2b4
/* FE4CC 80054FBC 44813000 */  mtc1       $at, $f6
/* FE4D0 80054FC0 3063FFFE */  andi       $v1, $v1, 0xfffe
/* FE4D4 80054FC4 A4430000 */  sh         $v1, ($v0)
/* FE4D8 80054FC8 3C018015 */  lui        $at, %hi(D_8014A070)
/* FE4DC 80054FCC AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* FE4E0 80054FD0 3C018015 */  lui        $at, %hi(D_8014A074)
/* FE4E4 80054FD4 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* FE4E8 80054FD8 3C018015 */  lui        $at, %hi(D_8014A078)
/* FE4EC 80054FDC AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* FE4F0 80054FE0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* FE4F4 80054FE4 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* FE4F8 80054FE8 3C018015 */  lui        $at, %hi(D_8014A080)
/* FE4FC 80054FEC E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* FE500 80054FF0 3C018015 */  lui        $at, %hi(D_8014A084)
/* FE504 80054FF4 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* FE508 80054FF8 3C018015 */  lui        $at, %hi(D_8014A088)
/* FE50C 80054FFC E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* FE510 80055000 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE514 80055004 24040004 */   addiu     $a0, $zero, 4
/* FE518 80055008 0040A821 */  addu       $s5, $v0, $zero
/* FE51C 8005500C 3C013CCC */  lui        $at, 0x3ccc
/* FE520 80055010 3421CCCD */  ori        $at, $at, 0xcccd
/* FE524 80055014 44810000 */  mtc1       $at, $f0
/* FE528 80055018 3C01439D */  lui        $at, 0x439d
/* FE52C 8005501C 34218000 */  ori        $at, $at, 0x8000
/* FE530 80055020 44811000 */  mtc1       $at, $f2
/* FE534 80055024 3C014100 */  lui        $at, 0x4100
/* FE538 80055028 44812000 */  mtc1       $at, $f4
/* FE53C 8005502C 02A02021 */  addu       $a0, $s5, $zero
/* FE540 80055030 24050004 */  addiu      $a1, $zero, 4
/* FE544 80055034 AEA00010 */  sw         $zero, 0x10($s5)
/* FE548 80055038 AEA00014 */  sw         $zero, 0x14($s5)
/* FE54C 8005503C AEA00018 */  sw         $zero, 0x18($s5)
/* FE550 80055040 AEA0001C */  sw         $zero, 0x1c($s5)
/* FE554 80055044 A6B10074 */  sh         $s1, 0x74($s5)
/* FE558 80055048 A6B10076 */  sh         $s1, 0x76($s5)
/* FE55C 8005504C A6B10078 */  sh         $s1, 0x78($s5)
/* FE560 80055050 A6B1007A */  sh         $s1, 0x7a($s5)
/* FE564 80055054 E6A00028 */  swc1       $f0, 0x28($s5)
/* FE568 80055058 E6A20020 */  swc1       $f2, 0x20($s5)
/* FE56C 8005505C 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE570 80055060 E6A40024 */   swc1      $f4, 0x24($s5)
/* FE574 80055064 8EA20004 */  lw         $v0, 4($s5)
/* FE578 80055068 A0400067 */  sb         $zero, 0x67($v0)
/* FE57C 8005506C 8EA30004 */  lw         $v1, 4($s5)
/* FE580 80055070 90620066 */  lbu        $v0, 0x66($v1)
/* FE584 80055074 34420003 */  ori        $v0, $v0, 3
/* FE588 80055078 A0620066 */  sb         $v0, 0x66($v1)
/* FE58C 8005507C 8EA40004 */  lw         $a0, 4($s5)
/* FE590 80055080 0C028703 */  jal        func_800A1C0C
/* FE594 80055084 24050004 */   addiu     $a1, $zero, 4
/* FE598 80055088 8EA40004 */  lw         $a0, 4($s5)
/* FE59C 8005508C 3C058007 */  lui        $a1, %hi(D_8006A28C_11379C)
/* FE5A0 80055090 24A5A28C */  addiu      $a1, $a1, %lo(D_8006A28C_11379C)
/* FE5A4 80055094 0C0284DC */  jal        func_800A1370
/* FE5A8 80055098 00008821 */   addu      $s1, $zero, $zero
/* FE5AC 8005509C 8EA40004 */  lw         $a0, 4($s5)
/* FE5B0 800550A0 00021400 */  sll        $v0, $v0, 0x10
/* FE5B4 800550A4 0C0285CC */  jal        func_800A1730
/* FE5B8 800550A8 00022C03 */   sra       $a1, $v0, 0x10
/* FE5BC 800550AC 3403FFFF */  ori        $v1, $zero, 0xffff
/* FE5C0 800550B0 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE5C4 800550B4 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
.L800550B8:
/* FE5C8 800550B8 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FE5CC 800550BC 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FE5D0 800550C0 A4430000 */  sh         $v1, ($v0)
/* FE5D4 800550C4 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FE5D8 800550C8 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FE5DC 800550CC 26310001 */  addiu      $s1, $s1, 1
/* FE5E0 800550D0 24420002 */  addiu      $v0, $v0, 2
/* FE5E4 800550D4 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE5E8 800550D8 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FE5EC 800550DC 322200FF */  andi       $v0, $s1, 0xff
/* FE5F0 800550E0 2C420010 */  sltiu      $v0, $v0, 0x10
/* FE5F4 800550E4 1440FFF4 */  bnez       $v0, .L800550B8
/* FE5F8 800550E8 00000000 */   nop
/* FE5FC 800550EC 8EA40004 */  lw         $a0, 4($s5)
/* FE600 800550F0 3C058007 */  lui        $a1, %hi(D_8006A294_1137A4)
/* FE604 800550F4 24A5A294 */  addiu      $a1, $a1, %lo(D_8006A294_1137A4)
/* FE608 800550F8 0C0284DC */  jal        func_800A1370
/* FE60C 800550FC 00008821 */   addu      $s1, $zero, $zero
/* FE610 80055100 8EA40004 */  lw         $a0, 4($s5)
/* FE614 80055104 00021400 */  sll        $v0, $v0, 0x10
/* FE618 80055108 0C0285CC */  jal        func_800A1730
/* FE61C 8005510C 00022C03 */   sra       $a1, $v0, 0x10
/* FE620 80055110 3403FFFF */  ori        $v1, $zero, 0xffff
/* FE624 80055114 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE628 80055118 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
.L8005511C:
/* FE62C 8005511C 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FE630 80055120 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FE634 80055124 A4430000 */  sh         $v1, ($v0)
/* FE638 80055128 3C028007 */  lui        $v0, %hi(D_8006C1A4)
/* FE63C 8005512C 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4)($v0)
/* FE640 80055130 26310001 */  addiu      $s1, $s1, 1
/* FE644 80055134 24420002 */  addiu      $v0, $v0, 2
/* FE648 80055138 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE64C 8005513C AC22C1A4 */  sw         $v0, %lo(D_8006C1A4)($at)
/* FE650 80055140 322200FF */  andi       $v0, $s1, 0xff
/* FE654 80055144 2C420010 */  sltiu      $v0, $v0, 0x10
/* FE658 80055148 1440FFF4 */  bnez       $v0, .L8005511C
/* FE65C 8005514C 00000000 */   nop
/* FE660 80055150 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE664 80055154 24040020 */   addiu     $a0, $zero, 0x20
/* FE668 80055158 0040A821 */  addu       $s5, $v0, $zero
/* FE66C 8005515C 3C014180 */  lui        $at, 0x4180
/* FE670 80055160 4481A000 */  mtc1       $at, $f20
/* FE674 80055164 3C0141B4 */  lui        $at, 0x41b4
/* FE678 80055168 4481B000 */  mtc1       $at, $f22
/* FE67C 8005516C 3C01C0E0 */  lui        $at, 0xc0e0
/* FE680 80055170 4481C000 */  mtc1       $at, $f24
/* FE684 80055174 3C013C44 */  lui        $at, 0x3c44
/* FE688 80055178 34219BA6 */  ori        $at, $at, 0x9ba6
/* FE68C 8005517C 4481D000 */  mtc1       $at, $f26
/* FE690 80055180 3C0141BE */  lui        $at, 0x41be
/* FE694 80055184 34217AE1 */  ori        $at, $at, 0x7ae1
/* FE698 80055188 4481E000 */  mtc1       $at, $f28
/* FE69C 8005518C 3C01413A */  lui        $at, 0x413a
/* FE6A0 80055190 34218F5C */  ori        $at, $at, 0x8f5c
/* FE6A4 80055194 4481F000 */  mtc1       $at, $f30
/* FE6A8 80055198 02A02021 */  addu       $a0, $s5, $zero
/* FE6AC 8005519C 24050106 */  addiu      $a1, $zero, 0x106
/* FE6B0 800551A0 241000FF */  addiu      $s0, $zero, 0xff
/* FE6B4 800551A4 AEA00024 */  sw         $zero, 0x24($s5)
/* FE6B8 800551A8 A6B00074 */  sh         $s0, 0x74($s5)
/* FE6BC 800551AC A6B00076 */  sh         $s0, 0x76($s5)
/* FE6C0 800551B0 A6B00078 */  sh         $s0, 0x78($s5)
/* FE6C4 800551B4 A6B0007A */  sh         $s0, 0x7a($s5)
/* FE6C8 800551B8 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE6CC 800551BC E6B60014 */  swc1       $f22, 0x14($s5)
/* FE6D0 800551C0 E6B80018 */  swc1       $f24, 0x18($s5)
/* FE6D4 800551C4 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE6D8 800551C8 E6BC001C */  swc1       $f28, 0x1c($s5)
/* FE6DC 800551CC 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE6E0 800551D0 E6BE0020 */   swc1      $f30, 0x20($s5)
/* FE6E4 800551D4 8EA20004 */  lw         $v0, 4($s5)
/* FE6E8 800551D8 2413000A */  addiu      $s3, $zero, 0xa
/* FE6EC 800551DC A0530067 */  sb         $s3, 0x67($v0)
/* FE6F0 800551E0 8EA30004 */  lw         $v1, 4($s5)
/* FE6F4 800551E4 90620066 */  lbu        $v0, 0x66($v1)
/* FE6F8 800551E8 24040021 */  addiu      $a0, $zero, 0x21
/* FE6FC 800551EC 34420023 */  ori        $v0, $v0, 0x23
/* FE700 800551F0 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE704 800551F4 A0620066 */   sb        $v0, 0x66($v1)
/* FE708 800551F8 0040A821 */  addu       $s5, $v0, $zero
/* FE70C 800551FC 02A02021 */  addu       $a0, $s5, $zero
/* FE710 80055200 24050106 */  addiu      $a1, $zero, 0x106
/* FE714 80055204 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE718 80055208 E6B60014 */  swc1       $f22, 0x14($s5)
/* FE71C 8005520C E6B80018 */  swc1       $f24, 0x18($s5)
/* FE720 80055210 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE724 80055214 E6BC001C */  swc1       $f28, 0x1c($s5)
/* FE728 80055218 E6BE0020 */  swc1       $f30, 0x20($s5)
/* FE72C 8005521C AEA00024 */  sw         $zero, 0x24($s5)
/* FE730 80055220 A6B00074 */  sh         $s0, 0x74($s5)
/* FE734 80055224 A6B00076 */  sh         $s0, 0x76($s5)
/* FE738 80055228 A6B00078 */  sh         $s0, 0x78($s5)
/* FE73C 8005522C 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE740 80055230 A6B0007A */   sh        $s0, 0x7a($s5)
/* FE744 80055234 8EA20004 */  lw         $v0, 4($s5)
/* FE748 80055238 3C14001E */  lui        $s4, 0x1e
/* FE74C 8005523C 26949000 */  addiu      $s4, $s4, -0x7000
/* FE750 80055240 02802021 */  addu       $a0, $s4, $zero
/* FE754 80055244 A0530067 */  sb         $s3, 0x67($v0)
/* FE758 80055248 8EA30004 */  lw         $v1, 4($s5)
/* FE75C 8005524C 3C12800D */  lui        $s2, %hi(D_800D6AD0)
/* FE760 80055250 26526AD0 */  addiu      $s2, $s2, %lo(D_800D6AD0)
/* FE764 80055254 02402821 */  addu       $a1, $s2, $zero
/* FE768 80055258 90620066 */  lbu        $v0, 0x66($v1)
/* FE76C 8005525C 24060855 */  addiu      $a2, $zero, 0x855
/* FE770 80055260 00003821 */  addu       $a3, $zero, $zero
/* FE774 80055264 34420023 */  ori        $v0, $v0, 0x23
/* FE778 80055268 0C02648E */  jal        func_80099238
/* FE77C 8005526C A0620066 */   sb        $v0, 0x66($v1)
/* FE780 80055270 8EA40004 */  lw         $a0, 4($s5)
/* FE784 80055274 3C118007 */  lui        $s1, %hi(D_8006A28C_11379C)
/* FE788 80055278 2631A28C */  addiu      $s1, $s1, %lo(D_8006A28C_11379C)
/* FE78C 8005527C 3C018007 */  lui        $at, %hi(D_8006C1A0)
/* FE790 80055280 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0)($at)
/* FE794 80055284 0C0284DC */  jal        func_800A1370
/* FE798 80055288 02202821 */   addu      $a1, $s1, $zero
/* FE79C 8005528C 8EA40004 */  lw         $a0, 4($s5)
/* FE7A0 80055290 00021400 */  sll        $v0, $v0, 0x10
/* FE7A4 80055294 0C0285CC */  jal        func_800A1730
/* FE7A8 80055298 00022C03 */   sra       $a1, $v0, 0x10
/* FE7AC 8005529C 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE7B0 800552A0 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0)($a0)
/* FE7B4 800552A4 24450020 */  addiu      $a1, $v0, 0x20
/* FE7B8 800552A8 24060400 */  addiu      $a2, $zero, 0x400
/* FE7BC 800552AC 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE7C0 800552B0 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4)($at)
/* FE7C4 800552B4 0C03006C */  jal        func_800C01B0
/* FE7C8 800552B8 24840010 */   addiu     $a0, $a0, 0x10
/* FE7CC 800552BC 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE7D0 800552C0 0C0326A1 */  jal        func_800C9A84
/* FE7D4 800552C4 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0)($a0)
/* FE7D8 800552C8 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE7DC 800552CC 24040022 */   addiu     $a0, $zero, 0x22
/* FE7E0 800552D0 0040A821 */  addu       $s5, $v0, $zero
/* FE7E4 800552D4 02A02021 */  addu       $a0, $s5, $zero
/* FE7E8 800552D8 24050106 */  addiu      $a1, $zero, 0x106
/* FE7EC 800552DC E6B40010 */  swc1       $f20, 0x10($s5)
/* FE7F0 800552E0 E6B60014 */  swc1       $f22, 0x14($s5)
/* FE7F4 800552E4 E6B80018 */  swc1       $f24, 0x18($s5)
/* FE7F8 800552E8 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE7FC 800552EC E6BC001C */  swc1       $f28, 0x1c($s5)
/* FE800 800552F0 E6BE0020 */  swc1       $f30, 0x20($s5)
/* FE804 800552F4 AEA00024 */  sw         $zero, 0x24($s5)
/* FE808 800552F8 A6B00074 */  sh         $s0, 0x74($s5)
/* FE80C 800552FC A6B00076 */  sh         $s0, 0x76($s5)
/* FE810 80055300 A6B00078 */  sh         $s0, 0x78($s5)
/* FE814 80055304 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE818 80055308 A6B0007A */   sh        $s0, 0x7a($s5)
/* FE81C 8005530C 8EA20004 */  lw         $v0, 4($s5)
/* FE820 80055310 A0530067 */  sb         $s3, 0x67($v0)
/* FE824 80055314 8EA30004 */  lw         $v1, 4($s5)
/* FE828 80055318 02802021 */  addu       $a0, $s4, $zero
/* FE82C 8005531C 02402821 */  addu       $a1, $s2, $zero
/* FE830 80055320 90620066 */  lbu        $v0, 0x66($v1)
/* FE834 80055324 24060856 */  addiu      $a2, $zero, 0x856
/* FE838 80055328 00003821 */  addu       $a3, $zero, $zero
/* FE83C 8005532C 34420023 */  ori        $v0, $v0, 0x23
/* FE840 80055330 0C02648E */  jal        func_80099238
/* FE844 80055334 A0620066 */   sb        $v0, 0x66($v1)
/* FE848 80055338 8EA40004 */  lw         $a0, 4($s5)
/* FE84C 8005533C 3C018007 */  lui        $at, %hi(D_8006C1A0)
/* FE850 80055340 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0)($at)
/* FE854 80055344 0C0284DC */  jal        func_800A1370
/* FE858 80055348 02202821 */   addu      $a1, $s1, $zero
/* FE85C 8005534C 8EA40004 */  lw         $a0, 4($s5)
/* FE860 80055350 00021400 */  sll        $v0, $v0, 0x10
/* FE864 80055354 0C0285CC */  jal        func_800A1730
/* FE868 80055358 00022C03 */   sra       $a1, $v0, 0x10
/* FE86C 8005535C 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE870 80055360 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0)($a0)
/* FE874 80055364 24450020 */  addiu      $a1, $v0, 0x20
/* FE878 80055368 24060400 */  addiu      $a2, $zero, 0x400
/* FE87C 8005536C 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE880 80055370 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4)($at)
/* FE884 80055374 0C03006C */  jal        func_800C01B0
/* FE888 80055378 24840010 */   addiu     $a0, $a0, 0x10
/* FE88C 8005537C 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE890 80055380 0C0326A1 */  jal        func_800C9A84
/* FE894 80055384 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0)($a0)
/* FE898 80055388 0C00DFA8 */  jal        func_80037EA0_E13B0
/* FE89C 8005538C 24040023 */   addiu     $a0, $zero, 0x23
/* FE8A0 80055390 0040A821 */  addu       $s5, $v0, $zero
/* FE8A4 80055394 02A02021 */  addu       $a0, $s5, $zero
/* FE8A8 80055398 24050106 */  addiu      $a1, $zero, 0x106
/* FE8AC 8005539C E6B40010 */  swc1       $f20, 0x10($s5)
/* FE8B0 800553A0 E6B60014 */  swc1       $f22, 0x14($s5)
/* FE8B4 800553A4 E6B80018 */  swc1       $f24, 0x18($s5)
/* FE8B8 800553A8 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE8BC 800553AC E6BC001C */  swc1       $f28, 0x1c($s5)
/* FE8C0 800553B0 E6BE0020 */  swc1       $f30, 0x20($s5)
/* FE8C4 800553B4 AEA00024 */  sw         $zero, 0x24($s5)
/* FE8C8 800553B8 A6B00074 */  sh         $s0, 0x74($s5)
/* FE8CC 800553BC A6B00076 */  sh         $s0, 0x76($s5)
/* FE8D0 800553C0 A6B00078 */  sh         $s0, 0x78($s5)
/* FE8D4 800553C4 0C00DFE6 */  jal        func_80037F98_E14A8
/* FE8D8 800553C8 A6B0007A */   sh        $s0, 0x7a($s5)
/* FE8DC 800553CC 8EA20004 */  lw         $v0, 4($s5)
/* FE8E0 800553D0 A0530067 */  sb         $s3, 0x67($v0)
/* FE8E4 800553D4 8EA30004 */  lw         $v1, 4($s5)
/* FE8E8 800553D8 02802021 */  addu       $a0, $s4, $zero
/* FE8EC 800553DC 02402821 */  addu       $a1, $s2, $zero
/* FE8F0 800553E0 90620066 */  lbu        $v0, 0x66($v1)
/* FE8F4 800553E4 24060857 */  addiu      $a2, $zero, 0x857
/* FE8F8 800553E8 00003821 */  addu       $a3, $zero, $zero
/* FE8FC 800553EC 34420023 */  ori        $v0, $v0, 0x23
/* FE900 800553F0 0C02648E */  jal        func_80099238
/* FE904 800553F4 A0620066 */   sb        $v0, 0x66($v1)
/* FE908 800553F8 8EA40004 */  lw         $a0, 4($s5)
/* FE90C 800553FC 3C018007 */  lui        $at, %hi(D_8006C1A0)
/* FE910 80055400 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0)($at)
/* FE914 80055404 0C0284DC */  jal        func_800A1370
/* FE918 80055408 02202821 */   addu      $a1, $s1, $zero
/* FE91C 8005540C 8EA40004 */  lw         $a0, 4($s5)
/* FE920 80055410 00021400 */  sll        $v0, $v0, 0x10
/* FE924 80055414 0C0285CC */  jal        func_800A1730
/* FE928 80055418 00022C03 */   sra       $a1, $v0, 0x10
/* FE92C 8005541C 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE930 80055420 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0)($a0)
/* FE934 80055424 24450020 */  addiu      $a1, $v0, 0x20
/* FE938 80055428 24060400 */  addiu      $a2, $zero, 0x400
/* FE93C 8005542C 3C018007 */  lui        $at, %hi(D_8006C1A4)
/* FE940 80055430 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4)($at)
/* FE944 80055434 0C03006C */  jal        func_800C01B0
/* FE948 80055438 24840010 */   addiu     $a0, $a0, 0x10
/* FE94C 8005543C 3C048007 */  lui        $a0, %hi(D_8006C1A0)
/* FE950 80055440 0C0326A1 */  jal        func_800C9A84
/* FE954 80055444 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0)($a0)
/* FE958 80055448 8FBF0030 */  lw         $ra, 0x30($sp)
/* FE95C 8005544C 8FB5002C */  lw         $s5, 0x2c($sp)
/* FE960 80055450 8FB40028 */  lw         $s4, 0x28($sp)
/* FE964 80055454 8FB30024 */  lw         $s3, 0x24($sp)
/* FE968 80055458 8FB20020 */  lw         $s2, 0x20($sp)
/* FE96C 8005545C 8FB1001C */  lw         $s1, 0x1c($sp)
/* FE970 80055460 8FB00018 */  lw         $s0, 0x18($sp)
/* FE974 80055464 D7BE0060 */  ldc1       $f30, 0x60($sp)
/* FE978 80055468 D7BC0058 */  ldc1       $f28, 0x58($sp)
/* FE97C 8005546C D7BA0050 */  ldc1       $f26, 0x50($sp)
/* FE980 80055470 D7B80048 */  ldc1       $f24, 0x48($sp)
/* FE984 80055474 D7B60040 */  ldc1       $f22, 0x40($sp)
/* FE988 80055478 D7B40038 */  ldc1       $f20, 0x38($sp)
/* FE98C 8005547C 03E00008 */  jr         $ra
/* FE990 80055480 27BD0068 */   addiu     $sp, $sp, 0x68
/* FE994 80055484 00000000 */  nop
/* FE998 80055488 00000000 */  nop
/* FE99C 8005548C 00000000 */  nop
