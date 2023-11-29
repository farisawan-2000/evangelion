glabel func_80052308_ovl3
/* FB818 80052308 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* FB81C 8005230C AFBF0058 */  sw         $ra, 0x58($sp)
/* FB820 80052310 AFB30054 */  sw         $s3, 0x54($sp)
/* FB824 80052314 AFB20050 */  sw         $s2, 0x50($sp)
/* FB828 80052318 AFB1004C */  sw         $s1, 0x4C($sp)
/* FB82C 8005231C 0C00E109 */  jal        func_80038424_ovl3
/* FB830 80052320 AFB00048 */   sw        $s0, 0x48($sp)
/* FB834 80052324 3C04802F */  lui        $a0, (0x802F9800 >> 16)
/* FB838 80052328 34849800 */  ori        $a0, $a0, (0x802F9800 & 0xFFFF)
/* FB83C 8005232C 240505E8 */  addiu      $a1, $zero, 0x5E8
/* FB840 80052330 24060007 */  addiu      $a2, $zero, 0x7
/* FB844 80052334 0C00D9E0 */  jal        func_80036780_ovl3
/* FB848 80052338 24070030 */   addiu     $a3, $zero, 0x30
/* FB84C 8005233C 00409021 */  addu       $s2, $v0, $zero
/* FB850 80052340 3C014001 */  lui        $at, (0x400147AE >> 16)
/* FB854 80052344 342147AE */  ori        $at, $at, (0x400147AE & 0xFFFF)
/* FB858 80052348 44810000 */  mtc1       $at, $f0
/* FB85C 8005234C 8E44000C */  lw         $a0, 0xC($s2)
/* FB860 80052350 44060000 */  mfc1       $a2, $f0
/* FB864 80052354 00002821 */  addu       $a1, $zero, $zero
/* FB868 80052358 0C02915B */  jal        func_800A456C
/* FB86C 8005235C 00C03821 */   addu      $a3, $a2, $zero
/* FB870 80052360 8E44000C */  lw         $a0, 0xC($s2)
/* FB874 80052364 24050040 */  addiu      $a1, $zero, 0x40
/* FB878 80052368 0C028D89 */  jal        func_800A3624
/* FB87C 8005236C 24060040 */   addiu     $a2, $zero, 0x40
/* FB880 80052370 8E43000C */  lw         $v1, 0xC($s2)
/* FB884 80052374 240405FA */  addiu      $a0, $zero, 0x5FA
/* FB888 80052378 9462001E */  lhu        $v0, 0x1E($v1)
/* FB88C 8005237C 24050002 */  addiu      $a1, $zero, 0x2
/* FB890 80052380 2406002F */  addiu      $a2, $zero, 0x2F
/* FB894 80052384 34420104 */  ori        $v0, $v0, 0x104
/* FB898 80052388 0C00D925 */  jal        func_80036494_ovl3
/* FB89C 8005238C A462001E */   sh        $v0, 0x1E($v1)
/* FB8A0 80052390 00409021 */  addu       $s2, $v0, $zero
/* FB8A4 80052394 8E44000C */  lw         $a0, 0xC($s2)
/* FB8A8 80052398 8C82000C */  lw         $v0, 0xC($a0)
/* FB8AC 8005239C 94450000 */  lhu        $a1, 0x0($v0)
/* FB8B0 800523A0 94460002 */  lhu        $a2, 0x2($v0)
/* FB8B4 800523A4 00052842 */  srl        $a1, $a1, 1
/* FB8B8 800523A8 0C02912A */  jal        func_800A44A8
/* FB8BC 800523AC 00063042 */   srl       $a2, $a2, 1
/* FB8C0 800523B0 8E44000C */  lw         $a0, 0xC($s2)
/* FB8C4 800523B4 24050280 */  addiu      $a1, $zero, 0x280
/* FB8C8 800523B8 0C028D89 */  jal        func_800A3624
/* FB8CC 800523BC 24060220 */   addiu     $a2, $zero, 0x220
/* FB8D0 800523C0 24020060 */  addiu      $v0, $zero, 0x60
/* FB8D4 800523C4 AFA20010 */  sw         $v0, 0x10($sp)
/* FB8D8 800523C8 8E44000C */  lw         $a0, 0xC($s2)
/* FB8DC 800523CC 240500FF */  addiu      $a1, $zero, 0xFF
/* FB8E0 800523D0 240600FF */  addiu      $a2, $zero, 0xFF
/* FB8E4 800523D4 0C028E41 */  jal        func_800A3904
/* FB8E8 800523D8 240700FF */   addiu     $a3, $zero, 0xFF
/* FB8EC 800523DC 8E43000C */  lw         $v1, 0xC($s2)
/* FB8F0 800523E0 9462001E */  lhu        $v0, 0x1E($v1)
/* FB8F4 800523E4 24040001 */  addiu      $a0, $zero, 0x1
/* FB8F8 800523E8 34420104 */  ori        $v0, $v0, 0x104
/* FB8FC 800523EC 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FB900 800523F0 A462001E */   sh        $v0, 0x1E($v1)
/* FB904 800523F4 00408021 */  addu       $s0, $v0, $zero
/* FB908 800523F8 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* FB90C 800523FC 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* FB910 80052400 44810000 */  mtc1       $at, $f0
/* FB914 80052404 3C014334 */  lui        $at, (0x43340000 >> 16)
/* FB918 80052408 44811000 */  mtc1       $at, $f2
/* FB91C 8005240C 02002021 */  addu       $a0, $s0, $zero
/* FB920 80052410 24050007 */  addiu      $a1, $zero, 0x7
/* FB924 80052414 240200FF */  addiu      $v0, $zero, 0xFF
/* FB928 80052418 A6020074 */  sh         $v0, 0x74($s0)
/* FB92C 8005241C A6020076 */  sh         $v0, 0x76($s0)
/* FB930 80052420 A6020078 */  sh         $v0, 0x78($s0)
/* FB934 80052424 24020080 */  addiu      $v0, $zero, 0x80
/* FB938 80052428 AE000010 */  sw         $zero, 0x10($s0)
/* FB93C 8005242C AE000014 */  sw         $zero, 0x14($s0)
/* FB940 80052430 AE000018 */  sw         $zero, 0x18($s0)
/* FB944 80052434 AE00001C */  sw         $zero, 0x1C($s0)
/* FB948 80052438 AE000024 */  sw         $zero, 0x24($s0)
/* FB94C 8005243C A602007A */  sh         $v0, 0x7A($s0)
/* FB950 80052440 E6000028 */  swc1       $f0, 0x28($s0)
/* FB954 80052444 0C00DFE6 */  jal        func_80037F98_ovl3
/* FB958 80052448 E6020020 */   swc1      $f2, 0x20($s0)
/* FB95C 8005244C 8E030004 */  lw         $v1, 0x4($s0)
/* FB960 80052450 2402000A */  addiu      $v0, $zero, 0xA
/* FB964 80052454 240405EF */  addiu      $a0, $zero, 0x5EF
/* FB968 80052458 A0620067 */  sb         $v0, 0x67($v1)
/* FB96C 8005245C 8E030004 */  lw         $v1, 0x4($s0)
/* FB970 80052460 24050002 */  addiu      $a1, $zero, 0x2
/* FB974 80052464 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* FB978 80052468 44810000 */  mtc1       $at, $f0
/* FB97C 8005246C 90620066 */  lbu        $v0, 0x66($v1)
/* FB980 80052470 3C01C29A */  lui        $at, (0xC29A0000 >> 16)
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
/* FB9E0 800524D0 0C00D925 */  jal        func_80036494_ovl3
/* FB9E4 800524D4 24060027 */   addiu     $a2, $zero, 0x27
/* FB9E8 800524D8 00409021 */  addu       $s2, $v0, $zero
/* FB9EC 800524DC 8E44000C */  lw         $a0, 0xC($s2)
/* FB9F0 800524E0 8C82000C */  lw         $v0, 0xC($a0)
/* FB9F4 800524E4 84450000 */  lh         $a1, 0x0($v0)
/* FB9F8 800524E8 0C02912A */  jal        func_800A44A8
/* FB9FC 800524EC 00003021 */   addu      $a2, $zero, $zero
/* FBA00 800524F0 8E44000C */  lw         $a0, 0xC($s2)
/* FBA04 800524F4 240504FC */  addiu      $a1, $zero, 0x4FC
/* FBA08 800524F8 0C028D89 */  jal        func_800A3624
/* FBA0C 800524FC 00003021 */   addu      $a2, $zero, $zero
/* FBA10 80052500 240405EF */  addiu      $a0, $zero, 0x5EF
/* FBA14 80052504 24050002 */  addiu      $a1, $zero, 0x2
/* FBA18 80052508 0C00D925 */  jal        func_80036494_ovl3
/* FBA1C 8005250C 24060028 */   addiu     $a2, $zero, 0x28
/* FBA20 80052510 00409021 */  addu       $s2, $v0, $zero
/* FBA24 80052514 8E44000C */  lw         $a0, 0xC($s2)
/* FBA28 80052518 00002821 */  addu       $a1, $zero, $zero
/* FBA2C 8005251C 0C028D89 */  jal        func_800A3624
/* FBA30 80052520 00003021 */   addu      $a2, $zero, $zero
/* FBA34 80052524 8E44000C */  lw         $a0, 0xC($s2)
/* FBA38 80052528 8C82000C */  lw         $v0, 0xC($a0)
/* FBA3C 8005252C 90430004 */  lbu        $v1, 0x4($v0)
/* FBA40 80052530 84450000 */  lh         $a1, 0x0($v0)
/* FBA44 80052534 84460002 */  lh         $a2, 0x2($v0)
/* FBA48 80052538 10600002 */  beqz       $v1, .L80052544_ovl3
/* FBA4C 8005253C 24070002 */   addiu     $a3, $zero, 0x2
/* FBA50 80052540 24070001 */  addiu      $a3, $zero, 0x1
.L80052544_ovl3:
/* FBA54 80052544 0C0297AC */  jal        func_800A5EB0
/* FBA58 80052548 8C840010 */   lw        $a0, 0x10($a0)
/* FBA5C 8005254C 240405F0 */  addiu      $a0, $zero, 0x5F0
/* FBA60 80052550 24050002 */  addiu      $a1, $zero, 0x2
/* FBA64 80052554 0C00D925 */  jal        func_80036494_ovl3
/* FBA68 80052558 24060029 */   addiu     $a2, $zero, 0x29
/* FBA6C 8005255C 00409021 */  addu       $s2, $v0, $zero
/* FBA70 80052560 8E44000C */  lw         $a0, 0xC($s2)
/* FBA74 80052564 8C82000C */  lw         $v0, 0xC($a0)
/* FBA78 80052568 84450000 */  lh         $a1, 0x0($v0)
/* FBA7C 8005256C 0C02912A */  jal        func_800A44A8
/* FBA80 80052570 00003021 */   addu      $a2, $zero, $zero
/* FBA84 80052574 8E44000C */  lw         $a0, 0xC($s2)
/* FBA88 80052578 240504FC */  addiu      $a1, $zero, 0x4FC
/* FBA8C 8005257C 0C028D89 */  jal        func_800A3624
/* FBA90 80052580 24060064 */   addiu     $a2, $zero, 0x64
/* FBA94 80052584 240405F0 */  addiu      $a0, $zero, 0x5F0
/* FBA98 80052588 24050002 */  addiu      $a1, $zero, 0x2
/* FBA9C 8005258C 0C00D925 */  jal        func_80036494_ovl3
/* FBAA0 80052590 2406002A */   addiu     $a2, $zero, 0x2A
/* FBAA4 80052594 00409021 */  addu       $s2, $v0, $zero
/* FBAA8 80052598 8E44000C */  lw         $a0, 0xC($s2)
/* FBAAC 8005259C 00002821 */  addu       $a1, $zero, $zero
/* FBAB0 800525A0 0C028D89 */  jal        func_800A3624
/* FBAB4 800525A4 24060064 */   addiu     $a2, $zero, 0x64
/* FBAB8 800525A8 8E44000C */  lw         $a0, 0xC($s2)
/* FBABC 800525AC 8C82000C */  lw         $v0, 0xC($a0)
/* FBAC0 800525B0 90430004 */  lbu        $v1, 0x4($v0)
/* FBAC4 800525B4 84450000 */  lh         $a1, 0x0($v0)
/* FBAC8 800525B8 84460002 */  lh         $a2, 0x2($v0)
/* FBACC 800525BC 10600002 */  beqz       $v1, .L800525C8_ovl3
/* FBAD0 800525C0 24070002 */   addiu     $a3, $zero, 0x2
/* FBAD4 800525C4 24070001 */  addiu      $a3, $zero, 0x1
.L800525C8_ovl3:
/* FBAD8 800525C8 0C0297AC */  jal        func_800A5EB0
/* FBADC 800525CC 8C840010 */   lw        $a0, 0x10($a0)
/* FBAE0 800525D0 240405F1 */  addiu      $a0, $zero, 0x5F1
/* FBAE4 800525D4 24050002 */  addiu      $a1, $zero, 0x2
/* FBAE8 800525D8 0C00D925 */  jal        func_80036494_ovl3
/* FBAEC 800525DC 2406002B */   addiu     $a2, $zero, 0x2B
/* FBAF0 800525E0 00409021 */  addu       $s2, $v0, $zero
/* FBAF4 800525E4 8E44000C */  lw         $a0, 0xC($s2)
/* FBAF8 800525E8 8C82000C */  lw         $v0, 0xC($a0)
/* FBAFC 800525EC 84450000 */  lh         $a1, 0x0($v0)
/* FBB00 800525F0 0C02912A */  jal        func_800A44A8
/* FBB04 800525F4 84460002 */   lh        $a2, 0x2($v0)
/* FBB08 800525F8 8E44000C */  lw         $a0, 0xC($s2)
/* FBB0C 800525FC 240504FC */  addiu      $a1, $zero, 0x4FC
/* FBB10 80052600 0C028D89 */  jal        func_800A3624
/* FBB14 80052604 240603BC */   addiu     $a2, $zero, 0x3BC
/* FBB18 80052608 240405F1 */  addiu      $a0, $zero, 0x5F1
/* FBB1C 8005260C 24050002 */  addiu      $a1, $zero, 0x2
/* FBB20 80052610 0C00D925 */  jal        func_80036494_ovl3
/* FBB24 80052614 2406002C */   addiu     $a2, $zero, 0x2C
/* FBB28 80052618 00409021 */  addu       $s2, $v0, $zero
/* FBB2C 8005261C 8E44000C */  lw         $a0, 0xC($s2)
/* FBB30 80052620 8C82000C */  lw         $v0, 0xC($a0)
/* FBB34 80052624 84460002 */  lh         $a2, 0x2($v0)
/* FBB38 80052628 0C02912A */  jal        func_800A44A8
/* FBB3C 8005262C 00002821 */   addu      $a1, $zero, $zero
/* FBB40 80052630 8E44000C */  lw         $a0, 0xC($s2)
/* FBB44 80052634 00002821 */  addu       $a1, $zero, $zero
/* FBB48 80052638 0C028D89 */  jal        func_800A3624
/* FBB4C 8005263C 240603BC */   addiu     $a2, $zero, 0x3BC
/* FBB50 80052640 8E44000C */  lw         $a0, 0xC($s2)
/* FBB54 80052644 8C82000C */  lw         $v0, 0xC($a0)
/* FBB58 80052648 90430004 */  lbu        $v1, 0x4($v0)
/* FBB5C 8005264C 84450000 */  lh         $a1, 0x0($v0)
/* FBB60 80052650 84460002 */  lh         $a2, 0x2($v0)
/* FBB64 80052654 10600002 */  beqz       $v1, .L80052660_ovl3
/* FBB68 80052658 24070002 */   addiu     $a3, $zero, 0x2
/* FBB6C 8005265C 24070001 */  addiu      $a3, $zero, 0x1
.L80052660_ovl3:
/* FBB70 80052660 8C840010 */  lw         $a0, 0x10($a0)
/* FBB74 80052664 0C0297AC */  jal        func_800A5EB0
/* FBB78 80052668 241100C0 */   addiu     $s1, $zero, 0xC0
/* FBB7C 8005266C 240405F5 */  addiu      $a0, $zero, 0x5F5
/* FBB80 80052670 24050006 */  addiu      $a1, $zero, 0x6
/* FBB84 80052674 0C00D925 */  jal        func_80036494_ovl3
/* FBB88 80052678 2406004B */   addiu     $a2, $zero, 0x4B
/* FBB8C 8005267C 00409021 */  addu       $s2, $v0, $zero
/* FBB90 80052680 8E44000C */  lw         $a0, 0xC($s2)
/* FBB94 80052684 24050024 */  addiu      $a1, $zero, 0x24
/* FBB98 80052688 0C028D89 */  jal        func_800A3624
/* FBB9C 8005268C 24060080 */   addiu     $a2, $zero, 0x80
/* FBBA0 80052690 AFB10010 */  sw         $s1, 0x10($sp)
/* FBBA4 80052694 8E44000C */  lw         $a0, 0xC($s2)
/* FBBA8 80052698 240500FF */  addiu      $a1, $zero, 0xFF
/* FBBAC 8005269C 240600FF */  addiu      $a2, $zero, 0xFF
/* FBBB0 800526A0 0C028E41 */  jal        func_800A3904
/* FBBB4 800526A4 240700FF */   addiu     $a3, $zero, 0xFF
/* FBBB8 800526A8 240405F6 */  addiu      $a0, $zero, 0x5F6
/* FBBBC 800526AC 24050006 */  addiu      $a1, $zero, 0x6
/* FBBC0 800526B0 8E42000C */  lw         $v0, 0xC($s2)
/* FBBC4 800526B4 2406004C */  addiu      $a2, $zero, 0x4C
/* FBBC8 800526B8 24100032 */  addiu      $s0, $zero, 0x32
/* FBBCC 800526BC 0C00D925 */  jal        func_80036494_ovl3
/* FBBD0 800526C0 A450001C */   sh        $s0, 0x1C($v0)
/* FBBD4 800526C4 00409021 */  addu       $s2, $v0, $zero
/* FBBD8 800526C8 8E44000C */  lw         $a0, 0xC($s2)
/* FBBDC 800526CC 24050024 */  addiu      $a1, $zero, 0x24
/* FBBE0 800526D0 0C028D89 */  jal        func_800A3624
/* FBBE4 800526D4 24060080 */   addiu     $a2, $zero, 0x80
/* FBBE8 800526D8 AFB10010 */  sw         $s1, 0x10($sp)
/* FBBEC 800526DC 8E44000C */  lw         $a0, 0xC($s2)
/* FBBF0 800526E0 240500FF */  addiu      $a1, $zero, 0xFF
/* FBBF4 800526E4 240600FF */  addiu      $a2, $zero, 0xFF
/* FBBF8 800526E8 0C028E41 */  jal        func_800A3904
/* FBBFC 800526EC 240700FF */   addiu     $a3, $zero, 0xFF
/* FBC00 800526F0 240405F9 */  addiu      $a0, $zero, 0x5F9
/* FBC04 800526F4 8E42000C */  lw         $v0, 0xC($s2)
/* FBC08 800526F8 24050006 */  addiu      $a1, $zero, 0x6
/* FBC0C 800526FC 24060032 */  addiu      $a2, $zero, 0x32
/* FBC10 80052700 0C00D925 */  jal        func_80036494_ovl3
/* FBC14 80052704 A450001C */   sh        $s0, 0x1C($v0)
/* FBC18 80052708 00409021 */  addu       $s2, $v0, $zero
/* FBC1C 8005270C 8E44000C */  lw         $a0, 0xC($s2)
/* FBC20 80052710 24050418 */  addiu      $a1, $zero, 0x418
/* FBC24 80052714 0C028D89 */  jal        func_800A3624
/* FBC28 80052718 24060200 */   addiu     $a2, $zero, 0x200
/* FBC2C 8005271C AFB10010 */  sw         $s1, 0x10($sp)
/* FBC30 80052720 8E44000C */  lw         $a0, 0xC($s2)
/* FBC34 80052724 240500FF */  addiu      $a1, $zero, 0xFF
/* FBC38 80052728 240600FF */  addiu      $a2, $zero, 0xFF
/* FBC3C 8005272C 0C028E41 */  jal        func_800A3904
/* FBC40 80052730 240700FF */   addiu     $a3, $zero, 0xFF
/* FBC44 80052734 240405F8 */  addiu      $a0, $zero, 0x5F8
/* FBC48 80052738 24050006 */  addiu      $a1, $zero, 0x6
/* FBC4C 8005273C 0C00D925 */  jal        func_80036494_ovl3
/* FBC50 80052740 24060033 */   addiu     $a2, $zero, 0x33
/* FBC54 80052744 00409021 */  addu       $s2, $v0, $zero
/* FBC58 80052748 8E44000C */  lw         $a0, 0xC($s2)
/* FBC5C 8005274C 2405027C */  addiu      $a1, $zero, 0x27C
/* FBC60 80052750 0C028D89 */  jal        func_800A3624
/* FBC64 80052754 240602F0 */   addiu     $a2, $zero, 0x2F0
/* FBC68 80052758 AFB10010 */  sw         $s1, 0x10($sp)
/* FBC6C 8005275C 8E44000C */  lw         $a0, 0xC($s2)
/* FBC70 80052760 240500FF */  addiu      $a1, $zero, 0xFF
/* FBC74 80052764 240600FF */  addiu      $a2, $zero, 0xFF
/* FBC78 80052768 0C028E41 */  jal        func_800A3904
/* FBC7C 8005276C 240700FF */   addiu     $a3, $zero, 0xFF
/* FBC80 80052770 24040033 */  addiu      $a0, $zero, 0x33
/* FBC84 80052774 0C00DD19 */  jal        func_80037464_ovl3
/* FBC88 80052778 24050034 */   addiu     $a1, $zero, 0x34
/* FBC8C 8005277C 00409021 */  addu       $s2, $v0, $zero
/* FBC90 80052780 8E42000C */  lw         $v0, 0xC($s2)
/* FBC94 80052784 00009821 */  addu       $s3, $zero, $zero
/* FBC98 80052788 8C430000 */  lw         $v1, 0x0($v0)
/* FBC9C 8005278C 241000C0 */  addiu      $s0, $zero, 0xC0
/* FBCA0 80052790 24020001 */  addiu      $v0, $zero, 0x1
/* FBCA4 80052794 A462001A */  sh         $v0, 0x1A($v1)
/* FBCA8 80052798 8E44000C */  lw         $a0, 0xC($s2)
/* FBCAC 8005279C 24050148 */  addiu      $a1, $zero, 0x148
/* FBCB0 800527A0 0C028D89 */  jal        func_800A3624
/* FBCB4 800527A4 240602F0 */   addiu     $a2, $zero, 0x2F0
/* FBCB8 800527A8 AFB10010 */  sw         $s1, 0x10($sp)
/* FBCBC 800527AC 8E44000C */  lw         $a0, 0xC($s2)
/* FBCC0 800527B0 240500FF */  addiu      $a1, $zero, 0xFF
/* FBCC4 800527B4 240600FF */  addiu      $a2, $zero, 0xFF
/* FBCC8 800527B8 0C028E41 */  jal        func_800A3904
/* FBCCC 800527BC 240700FF */   addiu     $a3, $zero, 0xFF
/* FBCD0 800527C0 240405F7 */  addiu      $a0, $zero, 0x5F7
/* FBCD4 800527C4 24050001 */  addiu      $a1, $zero, 0x1
/* FBCD8 800527C8 0C00D925 */  jal        func_80036494_ovl3
/* FBCDC 800527CC 24060035 */   addiu     $a2, $zero, 0x35
/* FBCE0 800527D0 00409021 */  addu       $s2, $v0, $zero
/* FBCE4 800527D4 8E44000C */  lw         $a0, 0xC($s2)
/* FBCE8 800527D8 24050388 */  addiu      $a1, $zero, 0x388
/* FBCEC 800527DC 0C028D89 */  jal        func_800A3624
/* FBCF0 800527E0 2406006C */   addiu     $a2, $zero, 0x6C
/* FBCF4 800527E4 AFB10010 */  sw         $s1, 0x10($sp)
/* FBCF8 800527E8 8E44000C */  lw         $a0, 0xC($s2)
/* FBCFC 800527EC 240500FF */  addiu      $a1, $zero, 0xFF
/* FBD00 800527F0 240600FF */  addiu      $a2, $zero, 0xFF
/* FBD04 800527F4 0C028E41 */  jal        func_800A3904
/* FBD08 800527F8 240700FF */   addiu     $a3, $zero, 0xFF
/* FBD0C 800527FC 24040035 */  addiu      $a0, $zero, 0x35
.L80052800_ovl3:
/* FBD10 80052800 326500FF */  andi       $a1, $s3, 0xFF
/* FBD14 80052804 0C00DD19 */  jal        func_80037464_ovl3
/* FBD18 80052808 24A50036 */   addiu     $a1, $a1, 0x36
/* FBD1C 8005280C 00409021 */  addu       $s2, $v0, $zero
/* FBD20 80052810 8E42000C */  lw         $v0, 0xC($s2)
/* FBD24 80052814 8C420000 */  lw         $v0, 0x0($v0)
/* FBD28 80052818 24050388 */  addiu      $a1, $zero, 0x388
/* FBD2C 8005281C A040002F */  sb         $zero, 0x2F($v0)
/* FBD30 80052820 8E44000C */  lw         $a0, 0xC($s2)
/* FBD34 80052824 326200FF */  andi       $v0, $s3, 0xFF
/* FBD38 80052828 00023040 */  sll        $a2, $v0, 1
/* FBD3C 8005282C 00C23021 */  addu       $a2, $a2, $v0
/* FBD40 80052830 00063080 */  sll        $a2, $a2, 2
/* FBD44 80052834 00C23023 */  subu       $a2, $a2, $v0
/* FBD48 80052838 24C60026 */  addiu      $a2, $a2, 0x26
/* FBD4C 8005283C 00063480 */  sll        $a2, $a2, 18
/* FBD50 80052840 00063403 */  sra        $a2, $a2, 16
/* FBD54 80052844 0C028D89 */  jal        func_800A3624
/* FBD58 80052848 26730001 */   addiu     $s3, $s3, 0x1
/* FBD5C 8005284C AFB00010 */  sw         $s0, 0x10($sp)
/* FBD60 80052850 8E44000C */  lw         $a0, 0xC($s2)
/* FBD64 80052854 240500FF */  addiu      $a1, $zero, 0xFF
/* FBD68 80052858 240600FF */  addiu      $a2, $zero, 0xFF
/* FBD6C 8005285C 0C028E41 */  jal        func_800A3904
/* FBD70 80052860 240700FF */   addiu     $a3, $zero, 0xFF
/* FBD74 80052864 326200FF */  andi       $v0, $s3, 0xFF
/* FBD78 80052868 2C420013 */  sltiu      $v0, $v0, 0x13
/* FBD7C 8005286C 1440FFE4 */  bnez       $v0, .L80052800_ovl3
/* FBD80 80052870 24040035 */   addiu     $a0, $zero, 0x35
/* FBD84 80052874 240405F4 */  addiu      $a0, $zero, 0x5F4
/* FBD88 80052878 24050001 */  addiu      $a1, $zero, 0x1
/* FBD8C 8005287C 0C00D925 */  jal        func_80036494_ovl3
/* FBD90 80052880 24060024 */   addiu     $a2, $zero, 0x24
/* FBD94 80052884 00409021 */  addu       $s2, $v0, $zero
/* FBD98 80052888 8E44000C */  lw         $a0, 0xC($s2)
/* FBD9C 8005288C 24050128 */  addiu      $a1, $zero, 0x128
/* FBDA0 80052890 0C028D89 */  jal        func_800A3624
/* FBDA4 80052894 24060270 */   addiu     $a2, $zero, 0x270
/* FBDA8 80052898 241100FF */  addiu      $s1, $zero, 0xFF
/* FBDAC 8005289C AFB10010 */  sw         $s1, 0x10($sp)
/* FBDB0 800528A0 8E44000C */  lw         $a0, 0xC($s2)
/* FBDB4 800528A4 00002821 */  addu       $a1, $zero, $zero
/* FBDB8 800528A8 240600FF */  addiu      $a2, $zero, 0xFF
/* FBDBC 800528AC 0C028E41 */  jal        func_800A3904
/* FBDC0 800528B0 240700FF */   addiu     $a3, $zero, 0xFF
/* FBDC4 800528B4 24040024 */  addiu      $a0, $zero, 0x24
/* FBDC8 800528B8 0C00DD19 */  jal        func_80037464_ovl3
/* FBDCC 800528BC 24050023 */   addiu     $a1, $zero, 0x23
/* FBDD0 800528C0 00409021 */  addu       $s2, $v0, $zero
/* FBDD4 800528C4 8E42000C */  lw         $v0, 0xC($s2)
/* FBDD8 800528C8 8C420000 */  lw         $v0, 0x0($v0)
/* FBDDC 800528CC A040002F */  sb         $zero, 0x2F($v0)
/* FBDE0 800528D0 8E44000C */  lw         $a0, 0xC($s2)
/* FBDE4 800528D4 24050190 */  addiu      $a1, $zero, 0x190
/* FBDE8 800528D8 0C028D89 */  jal        func_800A3624
/* FBDEC 800528DC 24060270 */   addiu     $a2, $zero, 0x270
/* FBDF0 800528E0 AFB10010 */  sw         $s1, 0x10($sp)
/* FBDF4 800528E4 8E44000C */  lw         $a0, 0xC($s2)
/* FBDF8 800528E8 00002821 */  addu       $a1, $zero, $zero
/* FBDFC 800528EC 240600FF */  addiu      $a2, $zero, 0xFF
/* FBE00 800528F0 0C028E41 */  jal        func_800A3904
/* FBE04 800528F4 240700FF */   addiu     $a3, $zero, 0xFF
/* FBE08 800528F8 24040024 */  addiu      $a0, $zero, 0x24
/* FBE0C 800528FC 0C00DD19 */  jal        func_80037464_ovl3
/* FBE10 80052900 24050022 */   addiu     $a1, $zero, 0x22
/* FBE14 80052904 00409021 */  addu       $s2, $v0, $zero
/* FBE18 80052908 8E42000C */  lw         $v0, 0xC($s2)
/* FBE1C 8005290C 8C420000 */  lw         $v0, 0x0($v0)
/* FBE20 80052910 A040002F */  sb         $zero, 0x2F($v0)
/* FBE24 80052914 8E44000C */  lw         $a0, 0xC($s2)
/* FBE28 80052918 240501F8 */  addiu      $a1, $zero, 0x1F8
/* FBE2C 8005291C 0C028D89 */  jal        func_800A3624
/* FBE30 80052920 24060270 */   addiu     $a2, $zero, 0x270
/* FBE34 80052924 AFB10010 */  sw         $s1, 0x10($sp)
/* FBE38 80052928 8E44000C */  lw         $a0, 0xC($s2)
/* FBE3C 8005292C 00002821 */  addu       $a1, $zero, $zero
/* FBE40 80052930 240600FF */  addiu      $a2, $zero, 0xFF
/* FBE44 80052934 0C028E41 */  jal        func_800A3904
/* FBE48 80052938 240700FF */   addiu     $a3, $zero, 0xFF
/* FBE4C 8005293C 240405F2 */  addiu      $a0, $zero, 0x5F2
/* FBE50 80052940 24050001 */  addiu      $a1, $zero, 0x1
/* FBE54 80052944 0C00D925 */  jal        func_80036494_ovl3
/* FBE58 80052948 24060025 */   addiu     $a2, $zero, 0x25
/* FBE5C 8005294C 00409021 */  addu       $s2, $v0, $zero
/* FBE60 80052950 8E44000C */  lw         $a0, 0xC($s2)
/* FBE64 80052954 24050080 */  addiu      $a1, $zero, 0x80
/* FBE68 80052958 0C028D89 */  jal        func_800A3624
/* FBE6C 8005295C 240602C0 */   addiu     $a2, $zero, 0x2C0
/* FBE70 80052960 AFA00010 */  sw         $zero, 0x10($sp)
/* FBE74 80052964 8E44000C */  lw         $a0, 0xC($s2)
/* FBE78 80052968 240500FF */  addiu      $a1, $zero, 0xFF
/* FBE7C 8005296C 240600FF */  addiu      $a2, $zero, 0xFF
/* FBE80 80052970 0C028E41 */  jal        func_800A3904
/* FBE84 80052974 240700FF */   addiu     $a3, $zero, 0xFF
/* FBE88 80052978 240405F3 */  addiu      $a0, $zero, 0x5F3
/* FBE8C 8005297C 24050001 */  addiu      $a1, $zero, 0x1
/* FBE90 80052980 0C00D925 */  jal        func_80036494_ovl3
/* FBE94 80052984 24060026 */   addiu     $a2, $zero, 0x26
/* FBE98 80052988 00409021 */  addu       $s2, $v0, $zero
/* FBE9C 8005298C 8E44000C */  lw         $a0, 0xC($s2)
/* FBEA0 80052990 24050080 */  addiu      $a1, $zero, 0x80
/* FBEA4 80052994 0C028D89 */  jal        func_800A3624
/* FBEA8 80052998 240602C0 */   addiu     $a2, $zero, 0x2C0
/* FBEAC 8005299C AFB10010 */  sw         $s1, 0x10($sp)
/* FBEB0 800529A0 8E44000C */  lw         $a0, 0xC($s2)
/* FBEB4 800529A4 240500FF */  addiu      $a1, $zero, 0xFF
/* FBEB8 800529A8 240600FF */  addiu      $a2, $zero, 0xFF
/* FBEBC 800529AC 0C028E41 */  jal        func_800A3904
/* FBEC0 800529B0 240700FF */   addiu     $a3, $zero, 0xFF
/* FBEC4 800529B4 240405FE */  addiu      $a0, $zero, 0x5FE
/* FBEC8 800529B8 24050001 */  addiu      $a1, $zero, 0x1
/* FBECC 800529BC 0C00D925 */  jal        func_80036494_ovl3
/* FBED0 800529C0 24060021 */   addiu     $a2, $zero, 0x21
/* FBED4 800529C4 8C44000C */  lw         $a0, 0xC($v0)
/* FBED8 800529C8 24050340 */  addiu      $a1, $zero, 0x340
/* FBEDC 800529CC 0C028D89 */  jal        func_800A3624
/* FBEE0 800529D0 24060288 */   addiu     $a2, $zero, 0x288
/* FBEE4 800529D4 240405FF */  addiu      $a0, $zero, 0x5FF
/* FBEE8 800529D8 24050001 */  addiu      $a1, $zero, 0x1
/* FBEEC 800529DC 0C00D925 */  jal        func_80036494_ovl3
/* FBEF0 800529E0 2406001F */   addiu     $a2, $zero, 0x1F
/* FBEF4 800529E4 8C44000C */  lw         $a0, 0xC($v0)
/* FBEF8 800529E8 24050340 */  addiu      $a1, $zero, 0x340
/* FBEFC 800529EC 0C028D89 */  jal        func_800A3624
/* FBF00 800529F0 24060290 */   addiu     $a2, $zero, 0x290
/* FBF04 800529F4 240405FB */  addiu      $a0, $zero, 0x5FB
/* FBF08 800529F8 24050002 */  addiu      $a1, $zero, 0x2
/* FBF0C 800529FC 0C00D925 */  jal        func_80036494_ovl3
/* FBF10 80052A00 2406004D */   addiu     $a2, $zero, 0x4D
/* FBF14 80052A04 00409021 */  addu       $s2, $v0, $zero
/* FBF18 80052A08 8E44000C */  lw         $a0, 0xC($s2)
/* FBF1C 80052A0C 24050020 */  addiu      $a1, $zero, 0x20
/* FBF20 80052A10 0C02912A */  jal        func_800A44A8
/* FBF24 80052A14 24060012 */   addiu     $a2, $zero, 0x12
/* FBF28 80052A18 8E44000C */  lw         $a0, 0xC($s2)
/* FBF2C 80052A1C 24050280 */  addiu      $a1, $zero, 0x280
/* FBF30 80052A20 0C028D89 */  jal        func_800A3624
/* FBF34 80052A24 240601E0 */   addiu     $a2, $zero, 0x1E0
/* FBF38 80052A28 AFB10010 */  sw         $s1, 0x10($sp)
/* FBF3C 80052A2C 8E44000C */  lw         $a0, 0xC($s2)
/* FBF40 80052A30 240500FF */  addiu      $a1, $zero, 0xFF
/* FBF44 80052A34 240600FF */  addiu      $a2, $zero, 0xFF
/* FBF48 80052A38 0C028E41 */  jal        func_800A3904
/* FBF4C 80052A3C 240700FF */   addiu     $a3, $zero, 0xFF
/* FBF50 80052A40 240405FC */  addiu      $a0, $zero, 0x5FC
/* FBF54 80052A44 24050002 */  addiu      $a1, $zero, 0x2
/* FBF58 80052A48 8E42000C */  lw         $v0, 0xC($s2)
/* FBF5C 80052A4C 2406004E */  addiu      $a2, $zero, 0x4E
/* FBF60 80052A50 24100036 */  addiu      $s0, $zero, 0x36
/* FBF64 80052A54 0C00D925 */  jal        func_80036494_ovl3
/* FBF68 80052A58 A450001C */   sh        $s0, 0x1C($v0)
/* FBF6C 80052A5C 00409021 */  addu       $s2, $v0, $zero
/* FBF70 80052A60 8E44000C */  lw         $a0, 0xC($s2)
/* FBF74 80052A64 2405001F */  addiu      $a1, $zero, 0x1F
/* FBF78 80052A68 0C02912A */  jal        func_800A44A8
/* FBF7C 80052A6C 2406001E */   addiu     $a2, $zero, 0x1E
/* FBF80 80052A70 8E44000C */  lw         $a0, 0xC($s2)
/* FBF84 80052A74 24050280 */  addiu      $a1, $zero, 0x280
/* FBF88 80052A78 0C028D89 */  jal        func_800A3624
/* FBF8C 80052A7C 240601E0 */   addiu     $a2, $zero, 0x1E0
/* FBF90 80052A80 AFB10010 */  sw         $s1, 0x10($sp)
/* FBF94 80052A84 8E44000C */  lw         $a0, 0xC($s2)
/* FBF98 80052A88 240500FF */  addiu      $a1, $zero, 0xFF
/* FBF9C 80052A8C 240600FF */  addiu      $a2, $zero, 0xFF
/* FBFA0 80052A90 0C028E41 */  jal        func_800A3904
/* FBFA4 80052A94 240700FF */   addiu     $a3, $zero, 0xFF
/* FBFA8 80052A98 240405FD */  addiu      $a0, $zero, 0x5FD
/* FBFAC 80052A9C 8E42000C */  lw         $v0, 0xC($s2)
/* FBFB0 80052AA0 24050002 */  addiu      $a1, $zero, 0x2
/* FBFB4 80052AA4 2406004F */  addiu      $a2, $zero, 0x4F
/* FBFB8 80052AA8 0C00D925 */  jal        func_80036494_ovl3
/* FBFBC 80052AAC A450001C */   sh        $s0, 0x1C($v0)
/* FBFC0 80052AB0 00409021 */  addu       $s2, $v0, $zero
/* FBFC4 80052AB4 8E44000C */  lw         $a0, 0xC($s2)
/* FBFC8 80052AB8 24050037 */  addiu      $a1, $zero, 0x37
/* FBFCC 80052ABC 0C02912A */  jal        func_800A44A8
/* FBFD0 80052AC0 24060030 */   addiu     $a2, $zero, 0x30
/* FBFD4 80052AC4 8E44000C */  lw         $a0, 0xC($s2)
/* FBFD8 80052AC8 24050280 */  addiu      $a1, $zero, 0x280
/* FBFDC 80052ACC 0C028D89 */  jal        func_800A3624
/* FBFE0 80052AD0 240601E0 */   addiu     $a2, $zero, 0x1E0
/* FBFE4 80052AD4 AFB10010 */  sw         $s1, 0x10($sp)
/* FBFE8 80052AD8 8E44000C */  lw         $a0, 0xC($s2)
/* FBFEC 80052ADC 240500FF */  addiu      $a1, $zero, 0xFF
/* FBFF0 80052AE0 240600FF */  addiu      $a2, $zero, 0xFF
/* FBFF4 80052AE4 0C028E41 */  jal        func_800A3904
/* FBFF8 80052AE8 240700FF */   addiu     $a3, $zero, 0xFF
/* FBFFC 80052AEC 27A40018 */  addiu      $a0, $sp, 0x18
/* FC000 80052AF0 8E42000C */  lw         $v0, 0xC($s2)
/* FC004 80052AF4 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FC008 80052AF8 24060003 */  addiu      $a2, $zero, 0x3
/* FC00C 80052AFC 2412FFFE */  addiu      $s2, $zero, -0x2
/* FC010 80052B00 24110001 */  addiu      $s1, $zero, 0x1
/* FC014 80052B04 A450001C */  sh         $s0, 0x1C($v0)
/* FC018 80052B08 3C028007 */  lui        $v0, %hi(D_80069610_ovl3)
/* FC01C 80052B0C 24429610 */  addiu      $v0, $v0, %lo(D_80069610_ovl3)
/* FC020 80052B10 24100003 */  addiu      $s0, $zero, 0x3
/* FC024 80052B14 AFA20018 */  sw         $v0, 0x18($sp)
/* FC028 80052B18 A3B2001C */  sb         $s2, 0x1C($sp)
/* FC02C 80052B1C A3A0001D */  sb         $zero, 0x1D($sp)
/* FC030 80052B20 A3B1001E */  sb         $s1, 0x1E($sp)
/* FC034 80052B24 0C00DE82 */  jal        func_80037A08_ovl3
/* FC038 80052B28 A3B0001F */   sb        $s0, 0x1F($sp)
/* FC03C 80052B2C 27A40018 */  addiu      $a0, $sp, 0x18
/* FC040 80052B30 240520CA */  addiu      $a1, $zero, 0x20CA
/* FC044 80052B34 24060003 */  addiu      $a2, $zero, 0x3
/* FC048 80052B38 3C028007 */  lui        $v0, %hi(D_80069620_ovl3)
/* FC04C 80052B3C 24429620 */  addiu      $v0, $v0, %lo(D_80069620_ovl3)
/* FC050 80052B40 AFA20018 */  sw         $v0, 0x18($sp)
/* FC054 80052B44 A3B2001C */  sb         $s2, 0x1C($sp)
/* FC058 80052B48 A3A0001D */  sb         $zero, 0x1D($sp)
/* FC05C 80052B4C A3B1001E */  sb         $s1, 0x1E($sp)
/* FC060 80052B50 0C00DE82 */  jal        func_80037A08_ovl3
/* FC064 80052B54 A3B0001F */   sb        $s0, 0x1F($sp)
/* FC068 80052B58 27A40018 */  addiu      $a0, $sp, 0x18
/* FC06C 80052B5C 240520CB */  addiu      $a1, $zero, 0x20CB
/* FC070 80052B60 24060003 */  addiu      $a2, $zero, 0x3
/* FC074 80052B64 3C028007 */  lui        $v0, %hi(D_80069630_ovl3)
/* FC078 80052B68 24429630 */  addiu      $v0, $v0, %lo(D_80069630_ovl3)
/* FC07C 80052B6C AFA20018 */  sw         $v0, 0x18($sp)
/* FC080 80052B70 A3B2001C */  sb         $s2, 0x1C($sp)
/* FC084 80052B74 A3A0001D */  sb         $zero, 0x1D($sp)
/* FC088 80052B78 A3B1001E */  sb         $s1, 0x1E($sp)
/* FC08C 80052B7C 0C00DE82 */  jal        func_80037A08_ovl3
/* FC090 80052B80 A3B0001F */   sb        $s0, 0x1F($sp)
/* FC094 80052B84 27A40018 */  addiu      $a0, $sp, 0x18
/* FC098 80052B88 240520CC */  addiu      $a1, $zero, 0x20CC
/* FC09C 80052B8C 24060003 */  addiu      $a2, $zero, 0x3
/* FC0A0 80052B90 3C028007 */  lui        $v0, %hi(D_80069650_ovl3)
/* FC0A4 80052B94 24429650 */  addiu      $v0, $v0, %lo(D_80069650_ovl3)
/* FC0A8 80052B98 AFA20018 */  sw         $v0, 0x18($sp)
/* FC0AC 80052B9C A3B2001C */  sb         $s2, 0x1C($sp)
/* FC0B0 80052BA0 A3A0001D */  sb         $zero, 0x1D($sp)
/* FC0B4 80052BA4 A3B1001E */  sb         $s1, 0x1E($sp)
/* FC0B8 80052BA8 0C00DE82 */  jal        func_80037A08_ovl3
/* FC0BC 80052BAC A3B0001F */   sb        $s0, 0x1F($sp)
/* FC0C0 80052BB0 27A40018 */  addiu      $a0, $sp, 0x18
/* FC0C4 80052BB4 240520CD */  addiu      $a1, $zero, 0x20CD
/* FC0C8 80052BB8 24060003 */  addiu      $a2, $zero, 0x3
/* FC0CC 80052BBC 3C028007 */  lui        $v0, %hi(D_80069668_ovl3)
/* FC0D0 80052BC0 24429668 */  addiu      $v0, $v0, %lo(D_80069668_ovl3)
/* FC0D4 80052BC4 AFA20018 */  sw         $v0, 0x18($sp)
/* FC0D8 80052BC8 A3B2001C */  sb         $s2, 0x1C($sp)
/* FC0DC 80052BCC A3A0001D */  sb         $zero, 0x1D($sp)
/* FC0E0 80052BD0 A3B1001E */  sb         $s1, 0x1E($sp)
/* FC0E4 80052BD4 0C00DE82 */  jal        func_80037A08_ovl3
/* FC0E8 80052BD8 A3B0001F */   sb        $s0, 0x1F($sp)
/* FC0EC 80052BDC 27A40018 */  addiu      $a0, $sp, 0x18
/* FC0F0 80052BE0 240520CE */  addiu      $a1, $zero, 0x20CE
/* FC0F4 80052BE4 24060003 */  addiu      $a2, $zero, 0x3
/* FC0F8 80052BE8 3C028007 */  lui        $v0, %hi(D_8006967C_ovl3)
/* FC0FC 80052BEC 2442967C */  addiu      $v0, $v0, %lo(D_8006967C_ovl3)
/* FC100 80052BF0 AFA20018 */  sw         $v0, 0x18($sp)
/* FC104 80052BF4 A3B2001C */  sb         $s2, 0x1C($sp)
/* FC108 80052BF8 A3A0001D */  sb         $zero, 0x1D($sp)
/* FC10C 80052BFC A3B1001E */  sb         $s1, 0x1E($sp)
/* FC110 80052C00 0C00DE82 */  jal        func_80037A08_ovl3
/* FC114 80052C04 A3B0001F */   sb        $s0, 0x1F($sp)
/* FC118 80052C08 27A40018 */  addiu      $a0, $sp, 0x18
/* FC11C 80052C0C 240520CF */  addiu      $a1, $zero, 0x20CF
/* FC120 80052C10 24060003 */  addiu      $a2, $zero, 0x3
/* FC124 80052C14 3C028007 */  lui        $v0, %hi(D_80069694_ovl3)
/* FC128 80052C18 24429694 */  addiu      $v0, $v0, %lo(D_80069694_ovl3)
/* FC12C 80052C1C AFA20018 */  sw         $v0, 0x18($sp)
/* FC130 80052C20 A3B2001C */  sb         $s2, 0x1C($sp)
/* FC134 80052C24 A3A0001D */  sb         $zero, 0x1D($sp)
/* FC138 80052C28 A3B1001E */  sb         $s1, 0x1E($sp)
/* FC13C 80052C2C 0C00DE82 */  jal        func_80037A08_ovl3
/* FC140 80052C30 A3B0001F */   sb        $s0, 0x1F($sp)
/* FC144 80052C34 27A40018 */  addiu      $a0, $sp, 0x18
/* FC148 80052C38 240520D0 */  addiu      $a1, $zero, 0x20D0
/* FC14C 80052C3C 24060003 */  addiu      $a2, $zero, 0x3
/* FC150 80052C40 3C028007 */  lui        $v0, %hi(D_800696A4_ovl3)
/* FC154 80052C44 244296A4 */  addiu      $v0, $v0, %lo(D_800696A4_ovl3)
/* FC158 80052C48 AFA20018 */  sw         $v0, 0x18($sp)
/* FC15C 80052C4C A3B2001C */  sb         $s2, 0x1C($sp)
/* FC160 80052C50 A3A0001D */  sb         $zero, 0x1D($sp)
/* FC164 80052C54 A3B1001E */  sb         $s1, 0x1E($sp)
/* FC168 80052C58 0C00DE82 */  jal        func_80037A08_ovl3
/* FC16C 80052C5C A3B0001F */   sb        $s0, 0x1F($sp)
/* FC170 80052C60 27A40018 */  addiu      $a0, $sp, 0x18
/* FC174 80052C64 240520D1 */  addiu      $a1, $zero, 0x20D1
/* FC178 80052C68 24060003 */  addiu      $a2, $zero, 0x3
/* FC17C 80052C6C 3C028007 */  lui        $v0, %hi(D_800696B4_ovl3)
/* FC180 80052C70 244296B4 */  addiu      $v0, $v0, %lo(D_800696B4_ovl3)
/* FC184 80052C74 AFA20018 */  sw         $v0, 0x18($sp)
/* FC188 80052C78 A3B2001C */  sb         $s2, 0x1C($sp)
/* FC18C 80052C7C A3A0001D */  sb         $zero, 0x1D($sp)
/* FC190 80052C80 A3B1001E */  sb         $s1, 0x1E($sp)
/* FC194 80052C84 0C00DE82 */  jal        func_80037A08_ovl3
/* FC198 80052C88 A3B0001F */   sb        $s0, 0x1F($sp)
/* FC19C 80052C8C 27A40018 */  addiu      $a0, $sp, 0x18
/* FC1A0 80052C90 240520D2 */  addiu      $a1, $zero, 0x20D2
/* FC1A4 80052C94 24060003 */  addiu      $a2, $zero, 0x3
/* FC1A8 80052C98 3C028007 */  lui        $v0, %hi(D_800696C8_ovl3)
/* FC1AC 80052C9C 244296C8 */  addiu      $v0, $v0, %lo(D_800696C8_ovl3)
/* FC1B0 80052CA0 AFA20018 */  sw         $v0, 0x18($sp)
/* FC1B4 80052CA4 A3B2001C */  sb         $s2, 0x1C($sp)
/* FC1B8 80052CA8 A3A0001D */  sb         $zero, 0x1D($sp)
/* FC1BC 80052CAC A3B1001E */  sb         $s1, 0x1E($sp)
/* FC1C0 80052CB0 0C00DE82 */  jal        func_80037A08_ovl3
/* FC1C4 80052CB4 A3B0001F */   sb        $s0, 0x1F($sp)
/* FC1C8 80052CB8 24040011 */  addiu      $a0, $zero, 0x11
/* FC1CC 80052CBC 24050001 */  addiu      $a1, $zero, 0x1
/* FC1D0 80052CC0 0C00D925 */  jal        func_80036494_ovl3
/* FC1D4 80052CC4 24060050 */   addiu     $a2, $zero, 0x50
/* FC1D8 80052CC8 00409021 */  addu       $s2, $v0, $zero
/* FC1DC 80052CCC 8E44000C */  lw         $a0, 0xC($s2)
/* FC1E0 80052CD0 24050038 */  addiu      $a1, $zero, 0x38
/* FC1E4 80052CD4 0C028F9A */  jal        func_800A3E68
/* FC1E8 80052CD8 2406004E */   addiu     $a2, $zero, 0x4E
/* FC1EC 80052CDC 8E44000C */  lw         $a0, 0xC($s2)
/* FC1F0 80052CE0 24050040 */  addiu      $a1, $zero, 0x40
/* FC1F4 80052CE4 0C028D89 */  jal        func_800A3624
/* FC1F8 80052CE8 24060040 */   addiu     $a2, $zero, 0x40
/* FC1FC 80052CEC 8E43000C */  lw         $v1, 0xC($s2)
/* FC200 80052CF0 24020035 */  addiu      $v0, $zero, 0x35
/* FC204 80052CF4 A462001C */  sh         $v0, 0x1C($v1)
/* FC208 80052CF8 8E43000C */  lw         $v1, 0xC($s2)
/* FC20C 80052CFC 24040011 */  addiu      $a0, $zero, 0x11
/* FC210 80052D00 9462001E */  lhu        $v0, 0x1E($v1)
/* FC214 80052D04 24050001 */  addiu      $a1, $zero, 0x1
/* FC218 80052D08 24060051 */  addiu      $a2, $zero, 0x51
/* FC21C 80052D0C 34420104 */  ori        $v0, $v0, 0x104
/* FC220 80052D10 0C00D925 */  jal        func_80036494_ovl3
/* FC224 80052D14 A462001E */   sh        $v0, 0x1E($v1)
/* FC228 80052D18 00409021 */  addu       $s2, $v0, $zero
/* FC22C 80052D1C 8E44000C */  lw         $a0, 0xC($s2)
/* FC230 80052D20 24050038 */  addiu      $a1, $zero, 0x38
/* FC234 80052D24 0C028F9A */  jal        func_800A3E68
/* FC238 80052D28 2406004E */   addiu     $a2, $zero, 0x4E
/* FC23C 80052D2C 8E44000C */  lw         $a0, 0xC($s2)
/* FC240 80052D30 24050040 */  addiu      $a1, $zero, 0x40
/* FC244 80052D34 0C028D89 */  jal        func_800A3624
/* FC248 80052D38 24060040 */   addiu     $a2, $zero, 0x40
/* FC24C 80052D3C 8E42000C */  lw         $v0, 0xC($s2)
/* FC250 80052D40 240500FF */  addiu      $a1, $zero, 0xFF
/* FC254 80052D44 A440001C */  sh         $zero, 0x1C($v0)
/* FC258 80052D48 24020018 */  addiu      $v0, $zero, 0x18
/* FC25C 80052D4C AFA20010 */  sw         $v0, 0x10($sp)
/* FC260 80052D50 8E44000C */  lw         $a0, 0xC($s2)
/* FC264 80052D54 240600FF */  addiu      $a2, $zero, 0xFF
/* FC268 80052D58 0C028E41 */  jal        func_800A3904
/* FC26C 80052D5C 240700FF */   addiu     $a3, $zero, 0xFF
/* FC270 80052D60 8E43000C */  lw         $v1, 0xC($s2)
/* FC274 80052D64 9462001E */  lhu        $v0, 0x1E($v1)
/* FC278 80052D68 24040017 */  addiu      $a0, $zero, 0x17
/* FC27C 80052D6C 34420006 */  ori        $v0, $v0, 0x6
/* FC280 80052D70 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FC284 80052D74 A462001E */   sh        $v0, 0x1E($v1)
/* FC288 80052D78 00408021 */  addu       $s0, $v0, $zero
/* FC28C 80052D7C 3C01C163 */  lui        $at, (0xC163D70A >> 16)
/* FC290 80052D80 3421D70A */  ori        $at, $at, (0xC163D70A & 0xFFFF)
/* FC294 80052D84 44810000 */  mtc1       $at, $f0
/* FC298 80052D88 3C01C223 */  lui        $at, (0xC22351EC >> 16)
/* FC29C 80052D8C 342151EC */  ori        $at, $at, (0xC22351EC & 0xFFFF)
/* FC2A0 80052D90 44811000 */  mtc1       $at, $f2
/* FC2A4 80052D94 3C014212 */  lui        $at, (0x42125C29 >> 16)
/* FC2A8 80052D98 34215C29 */  ori        $at, $at, (0x42125C29 & 0xFFFF)
/* FC2AC 80052D9C 44812000 */  mtc1       $at, $f4
/* FC2B0 80052DA0 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* FC2B4 80052DA4 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* FC2B8 80052DA8 44813000 */  mtc1       $at, $f6
/* FC2BC 80052DAC 3C014334 */  lui        $at, (0x43340000 >> 16)
/* FC2C0 80052DB0 44814000 */  mtc1       $at, $f8
/* FC2C4 80052DB4 02002021 */  addu       $a0, $s0, $zero
/* FC2C8 80052DB8 2405008A */  addiu      $a1, $zero, 0x8A
/* FC2CC 80052DBC 240200FF */  addiu      $v0, $zero, 0xFF
/* FC2D0 80052DC0 A6020074 */  sh         $v0, 0x74($s0)
/* FC2D4 80052DC4 A6020076 */  sh         $v0, 0x76($s0)
/* FC2D8 80052DC8 A6020078 */  sh         $v0, 0x78($s0)
/* FC2DC 80052DCC A602007A */  sh         $v0, 0x7A($s0)
/* FC2E0 80052DD0 2402002F */  addiu      $v0, $zero, 0x2F
/* FC2E4 80052DD4 AE00001C */  sw         $zero, 0x1C($s0)
/* FC2E8 80052DD8 AE000024 */  sw         $zero, 0x24($s0)
/* FC2EC 80052DDC A6020070 */  sh         $v0, 0x70($s0)
/* FC2F0 80052DE0 E6000010 */  swc1       $f0, 0x10($s0)
/* FC2F4 80052DE4 E6020014 */  swc1       $f2, 0x14($s0)
/* FC2F8 80052DE8 E6040018 */  swc1       $f4, 0x18($s0)
/* FC2FC 80052DEC E6060028 */  swc1       $f6, 0x28($s0)
/* FC300 80052DF0 0C00DFE6 */  jal        func_80037F98_ovl3
/* FC304 80052DF4 E6080020 */   swc1      $f8, 0x20($s0)
/* FC308 80052DF8 8E020004 */  lw         $v0, 0x4($s0)
/* FC30C 80052DFC A0400067 */  sb         $zero, 0x67($v0)
/* FC310 80052E00 8E030004 */  lw         $v1, 0x4($s0)
/* FC314 80052E04 90620066 */  lbu        $v0, 0x66($v1)
/* FC318 80052E08 34420007 */  ori        $v0, $v0, 0x7
/* FC31C 80052E0C A0620066 */  sb         $v0, 0x66($v1)
/* FC320 80052E10 8E040004 */  lw         $a0, 0x4($s0)
/* FC324 80052E14 3C058007 */  lui        $a1, %hi(D_8006A244_ovl3)
/* FC328 80052E18 24A5A244 */  addiu      $a1, $a1, %lo(D_8006A244_ovl3)
/* FC32C 80052E1C 0C0284DC */  jal        func_800A1370
/* FC330 80052E20 00009821 */   addu      $s3, $zero, $zero
/* FC334 80052E24 8E040004 */  lw         $a0, 0x4($s0)
/* FC338 80052E28 00021400 */  sll        $v0, $v0, 16
/* FC33C 80052E2C 0C0285CC */  jal        func_800A1730
/* FC340 80052E30 00022C03 */   sra       $a1, $v0, 16
/* FC344 80052E34 AFA20020 */  sw         $v0, 0x20($sp)
/* FC348 80052E38 8E040004 */  lw         $a0, 0x4($s0)
/* FC34C 80052E3C 3C058007 */  lui        $a1, %hi(D_8006A24C_ovl3)
/* FC350 80052E40 0C0284DC */  jal        func_800A1370
/* FC354 80052E44 24A5A24C */   addiu     $a1, $a1, %lo(D_8006A24C_ovl3)
/* FC358 80052E48 8E040004 */  lw         $a0, 0x4($s0)
/* FC35C 80052E4C 00021400 */  sll        $v0, $v0, 16
/* FC360 80052E50 0C0285CC */  jal        func_800A1730
/* FC364 80052E54 00022C03 */   sra       $a1, $v0, 16
/* FC368 80052E58 AFA20024 */  sw         $v0, 0x24($sp)
/* FC36C 80052E5C 8E040004 */  lw         $a0, 0x4($s0)
/* FC370 80052E60 3C058007 */  lui        $a1, %hi(D_8006A254_ovl3)
/* FC374 80052E64 0C0284DC */  jal        func_800A1370
/* FC378 80052E68 24A5A254 */   addiu     $a1, $a1, %lo(D_8006A254_ovl3)
/* FC37C 80052E6C 8E040004 */  lw         $a0, 0x4($s0)
/* FC380 80052E70 00021400 */  sll        $v0, $v0, 16
/* FC384 80052E74 0C0285CC */  jal        func_800A1730
/* FC388 80052E78 00022C03 */   sra       $a1, $v0, 16
/* FC38C 80052E7C AFA20028 */  sw         $v0, 0x28($sp)
/* FC390 80052E80 8E040004 */  lw         $a0, 0x4($s0)
/* FC394 80052E84 3C058007 */  lui        $a1, %hi(D_8006A25C_ovl3)
/* FC398 80052E88 0C0284DC */  jal        func_800A1370
/* FC39C 80052E8C 24A5A25C */   addiu     $a1, $a1, %lo(D_8006A25C_ovl3)
/* FC3A0 80052E90 8E040004 */  lw         $a0, 0x4($s0)
/* FC3A4 80052E94 00021400 */  sll        $v0, $v0, 16
/* FC3A8 80052E98 0C0285CC */  jal        func_800A1730
/* FC3AC 80052E9C 00022C03 */   sra       $a1, $v0, 16
/* FC3B0 80052EA0 AFA2002C */  sw         $v0, 0x2C($sp)
/* FC3B4 80052EA4 8E040004 */  lw         $a0, 0x4($s0)
/* FC3B8 80052EA8 3C058007 */  lui        $a1, %hi(D_8006A264_ovl3)
/* FC3BC 80052EAC 0C0284DC */  jal        func_800A1370
/* FC3C0 80052EB0 24A5A264 */   addiu     $a1, $a1, %lo(D_8006A264_ovl3)
/* FC3C4 80052EB4 8E040004 */  lw         $a0, 0x4($s0)
/* FC3C8 80052EB8 00021400 */  sll        $v0, $v0, 16
/* FC3CC 80052EBC 0C0285CC */  jal        func_800A1730
/* FC3D0 80052EC0 00022C03 */   sra       $a1, $v0, 16
/* FC3D4 80052EC4 AFA20030 */  sw         $v0, 0x30($sp)
/* FC3D8 80052EC8 8E040004 */  lw         $a0, 0x4($s0)
/* FC3DC 80052ECC 3C058007 */  lui        $a1, %hi(D_8006A26C_ovl3)
/* FC3E0 80052ED0 0C0284DC */  jal        func_800A1370
/* FC3E4 80052ED4 24A5A26C */   addiu     $a1, $a1, %lo(D_8006A26C_ovl3)
/* FC3E8 80052ED8 8E040004 */  lw         $a0, 0x4($s0)
/* FC3EC 80052EDC 00021400 */  sll        $v0, $v0, 16
/* FC3F0 80052EE0 0C0285CC */  jal        func_800A1730
/* FC3F4 80052EE4 00022C03 */   sra       $a1, $v0, 16
/* FC3F8 80052EE8 AFA20034 */  sw         $v0, 0x34($sp)
/* FC3FC 80052EEC 8E040004 */  lw         $a0, 0x4($s0)
/* FC400 80052EF0 3C058007 */  lui        $a1, %hi(D_8006A274_ovl3)
/* FC404 80052EF4 0C0284DC */  jal        func_800A1370
/* FC408 80052EF8 24A5A274 */   addiu     $a1, $a1, %lo(D_8006A274_ovl3)
/* FC40C 80052EFC 8E040004 */  lw         $a0, 0x4($s0)
/* FC410 80052F00 00021400 */  sll        $v0, $v0, 16
/* FC414 80052F04 0C0285CC */  jal        func_800A1730
/* FC418 80052F08 00022C03 */   sra       $a1, $v0, 16
/* FC41C 80052F0C AFA20038 */  sw         $v0, 0x38($sp)
/* FC420 80052F10 8E040004 */  lw         $a0, 0x4($s0)
/* FC424 80052F14 3C058007 */  lui        $a1, %hi(D_8006A27C_ovl3)
/* FC428 80052F18 0C0284DC */  jal        func_800A1370
/* FC42C 80052F1C 24A5A27C */   addiu     $a1, $a1, %lo(D_8006A27C_ovl3)
/* FC430 80052F20 8E040004 */  lw         $a0, 0x4($s0)
/* FC434 80052F24 00021400 */  sll        $v0, $v0, 16
/* FC438 80052F28 0C0285CC */  jal        func_800A1730
/* FC43C 80052F2C 00022C03 */   sra       $a1, $v0, 16
/* FC440 80052F30 AFA2003C */  sw         $v0, 0x3C($sp)
/* FC444 80052F34 8E040004 */  lw         $a0, 0x4($s0)
/* FC448 80052F38 3C058007 */  lui        $a1, %hi(D_8006A284_ovl3)
/* FC44C 80052F3C 0C0284DC */  jal        func_800A1370
/* FC450 80052F40 24A5A284 */   addiu     $a1, $a1, %lo(D_8006A284_ovl3)
/* FC454 80052F44 8E040004 */  lw         $a0, 0x4($s0)
/* FC458 80052F48 00021400 */  sll        $v0, $v0, 16
/* FC45C 80052F4C 0C0285CC */  jal        func_800A1730
/* FC460 80052F50 00022C03 */   sra       $a1, $v0, 16
/* FC464 80052F54 27B00018 */  addiu      $s0, $sp, 0x18
/* FC468 80052F58 240FF800 */  addiu      $t7, $zero, -0x800
/* FC46C 80052F5C AFA20040 */  sw         $v0, 0x40($sp)
/* FC470 80052F60 00006821 */  addu       $t5, $zero, $zero
.L80052F64_ovl3:
/* FC474 80052F64 326200FF */  andi       $v0, $s3, 0xFF
/* FC478 80052F68 00021080 */  sll        $v0, $v0, 2
/* FC47C 80052F6C 00506021 */  addu       $t4, $v0, $s0
.L80052F70_ovl3:
/* FC480 80052F70 8D8A0008 */  lw         $t2, 0x8($t4)
/* FC484 80052F74 95430000 */  lhu        $v1, 0x0($t2)
/* FC488 80052F78 00035AC2 */  srl        $t3, $v1, 11
/* FC48C 80052F7C 3062003E */  andi       $v0, $v1, 0x3E
/* FC490 80052F80 00024842 */  srl        $t1, $v0, 1
/* FC494 80052F84 306207C0 */  andi       $v0, $v1, 0x7C0
/* FC498 80052F88 00023182 */  srl        $a2, $v0, 6
/* FC49C 80052F8C 30680001 */  andi       $t0, $v1, 0x1
/* FC4A0 80052F90 316700FF */  andi       $a3, $t3, 0xFF
/* FC4A4 80052F94 00C02821 */  addu       $a1, $a2, $zero
/* FC4A8 80052F98 00E51826 */  xor        $v1, $a3, $a1
/* FC4AC 80052F9C 2C630001 */  sltiu      $v1, $v1, 0x1
/* FC4B0 80052FA0 312400FF */  andi       $a0, $t1, 0xFF
/* FC4B4 80052FA4 00A41026 */  xor        $v0, $a1, $a0
/* FC4B8 80052FA8 2C420001 */  sltiu      $v0, $v0, 0x1
/* FC4BC 80052FAC 00621824 */  and        $v1, $v1, $v0
/* FC4C0 80052FB0 1060000A */  beqz       $v1, .L80052FDC_ovl3
/* FC4C4 80052FB4 01007021 */   addu      $t6, $t0, $zero
/* FC4C8 80052FB8 000412C0 */  sll        $v0, $a0, 11
/* FC4CC 80052FBC 004F1024 */  and        $v0, $v0, $t7
/* FC4D0 80052FC0 00051980 */  sll        $v1, $a1, 6
/* FC4D4 80052FC4 00431025 */  or         $v0, $v0, $v1
/* FC4D8 80052FC8 00071840 */  sll        $v1, $a3, 1
/* FC4DC 80052FCC 00431025 */  or         $v0, $v0, $v1
/* FC4E0 80052FD0 01021025 */  or         $v0, $t0, $v0
/* FC4E4 80052FD4 08014C0A */  j          .L80053028_ovl3
/* FC4E8 80052FD8 A5420000 */   sh        $v0, 0x0($t2)
.L80052FDC_ovl3:
/* FC4EC 80052FDC 24C50002 */  addiu      $a1, $a2, 0x2
/* FC4F0 80052FE0 30A300FF */  andi       $v1, $a1, 0xFF
/* FC4F4 80052FE4 2C620020 */  sltiu      $v0, $v1, 0x20
/* FC4F8 80052FE8 14400003 */  bnez       $v0, .L80052FF8_ovl3
/* FC4FC 80052FEC 00000000 */   nop
/* FC500 80052FF0 08014C00 */  j          .L80053000_ovl3
/* FC504 80052FF4 2405001F */   addiu     $a1, $zero, 0x1F
.L80052FF8_ovl3:
/* FC508 80052FF8 50600001 */  beql       $v1, $zero, .L80053000_ovl3
/* FC50C 80052FFC 24050001 */   addiu     $a1, $zero, 0x1
.L80053000_ovl3:
/* FC510 80053000 8D840008 */  lw         $a0, 0x8($t4)
/* FC514 80053004 00091AC0 */  sll        $v1, $t1, 11
/* FC518 80053008 006F1824 */  and        $v1, $v1, $t7
/* FC51C 8005300C 00051180 */  sll        $v0, $a1, 6
/* FC520 80053010 304207C0 */  andi       $v0, $v0, 0x7C0
/* FC524 80053014 00621825 */  or         $v1, $v1, $v0
/* FC528 80053018 000B1040 */  sll        $v0, $t3, 1
/* FC52C 8005301C 00621825 */  or         $v1, $v1, $v0
/* FC530 80053020 01C31825 */  or         $v1, $t6, $v1
/* FC534 80053024 A4830000 */  sh         $v1, 0x0($a0)
.L80053028_ovl3:
/* FC538 80053028 8D820008 */  lw         $v0, 0x8($t4)
/* FC53C 8005302C 25AD0001 */  addiu      $t5, $t5, 0x1
/* FC540 80053030 24420002 */  addiu      $v0, $v0, 0x2
/* FC544 80053034 AD820008 */  sw         $v0, 0x8($t4)
/* FC548 80053038 31A200FF */  andi       $v0, $t5, 0xFF
/* FC54C 8005303C 2C420010 */  sltiu      $v0, $v0, 0x10
/* FC550 80053040 1440FFCB */  bnez       $v0, .L80052F70_ovl3
/* FC554 80053044 00000000 */   nop
/* FC558 80053048 26730001 */  addiu      $s3, $s3, 0x1
/* FC55C 8005304C 326200FF */  andi       $v0, $s3, 0xFF
/* FC560 80053050 2C420009 */  sltiu      $v0, $v0, 0x9
/* FC564 80053054 1440FFC3 */  bnez       $v0, .L80052F64_ovl3
/* FC568 80053058 00006821 */   addu      $t5, $zero, $zero
/* FC56C 8005305C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FC570 80053060 2404001A */   addiu     $a0, $zero, 0x1A
/* FC574 80053064 00408021 */  addu       $s0, $v0, $zero
/* FC578 80053068 3C01C163 */  lui        $at, (0xC163D70A >> 16)
/* FC57C 8005306C 3421D70A */  ori        $at, $at, (0xC163D70A & 0xFFFF)
/* FC580 80053070 44810000 */  mtc1       $at, $f0
/* FC584 80053074 3C01C223 */  lui        $at, (0xC22351EC >> 16)
/* FC588 80053078 342151EC */  ori        $at, $at, (0xC22351EC & 0xFFFF)
/* FC58C 8005307C 44811000 */  mtc1       $at, $f2
/* FC590 80053080 3C014212 */  lui        $at, (0x42125C29 >> 16)
/* FC594 80053084 34215C29 */  ori        $at, $at, (0x42125C29 & 0xFFFF)
/* FC598 80053088 44812000 */  mtc1       $at, $f4
/* FC59C 8005308C 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* FC5A0 80053090 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* FC5A4 80053094 44813000 */  mtc1       $at, $f6
/* FC5A8 80053098 3C014334 */  lui        $at, (0x43340000 >> 16)
/* FC5AC 8005309C 44814000 */  mtc1       $at, $f8
/* FC5B0 800530A0 02002021 */  addu       $a0, $s0, $zero
/* FC5B4 800530A4 2405012B */  addiu      $a1, $zero, 0x12B
/* FC5B8 800530A8 240200FF */  addiu      $v0, $zero, 0xFF
/* FC5BC 800530AC AE00001C */  sw         $zero, 0x1C($s0)
/* FC5C0 800530B0 AE000024 */  sw         $zero, 0x24($s0)
/* FC5C4 800530B4 A6020074 */  sh         $v0, 0x74($s0)
/* FC5C8 800530B8 A6020076 */  sh         $v0, 0x76($s0)
/* FC5CC 800530BC A6020078 */  sh         $v0, 0x78($s0)
/* FC5D0 800530C0 A602007A */  sh         $v0, 0x7A($s0)
/* FC5D4 800530C4 E6000010 */  swc1       $f0, 0x10($s0)
/* FC5D8 800530C8 E6020014 */  swc1       $f2, 0x14($s0)
/* FC5DC 800530CC E6040018 */  swc1       $f4, 0x18($s0)
/* FC5E0 800530D0 E6060028 */  swc1       $f6, 0x28($s0)
/* FC5E4 800530D4 0C00DFE6 */  jal        func_80037F98_ovl3
/* FC5E8 800530D8 E6080020 */   swc1      $f8, 0x20($s0)
/* FC5EC 800530DC 8E020004 */  lw         $v0, 0x4($s0)
/* FC5F0 800530E0 A0400067 */  sb         $zero, 0x67($v0)
/* FC5F4 800530E4 8E030004 */  lw         $v1, 0x4($s0)
/* FC5F8 800530E8 24040046 */  addiu      $a0, $zero, 0x46
/* FC5FC 800530EC 24050046 */  addiu      $a1, $zero, 0x46
/* FC600 800530F0 90620066 */  lbu        $v0, 0x66($v1)
/* FC604 800530F4 24060046 */  addiu      $a2, $zero, 0x46
/* FC608 800530F8 240700FF */  addiu      $a3, $zero, 0xFF
/* FC60C 800530FC 34420003 */  ori        $v0, $v0, 0x3
/* FC610 80053100 A0620066 */  sb         $v0, 0x66($v1)
/* FC614 80053104 240200FF */  addiu      $v0, $zero, 0xFF
/* FC618 80053108 AFA20010 */  sw         $v0, 0x10($sp)
/* FC61C 8005310C 0C00E34F */  jal        func_80038D3C_ovl3
/* FC620 80053110 AFA20014 */   sw        $v0, 0x14($sp)
/* FC624 80053114 3C014000 */  lui        $at, (0x40000000 >> 16)
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
/* FC668 80053158 8FB1004C */  lw         $s1, 0x4C($sp)
/* FC66C 8005315C 8FB00048 */  lw         $s0, 0x48($sp)
/* FC670 80053160 03E00008 */  jr         $ra
/* FC674 80053164 27BD0060 */   addiu     $sp, $sp, 0x60
.size func_80052308_ovl3, . - func_80052308_ovl3
