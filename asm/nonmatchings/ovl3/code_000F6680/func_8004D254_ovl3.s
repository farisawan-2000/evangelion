glabel func_8004D254_ovl3
/* F6764 8004D254 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F6768 8004D258 AFBF002C */  sw         $ra, 0x2C($sp)
/* F676C 8004D25C AFB20028 */  sw         $s2, 0x28($sp)
/* F6770 8004D260 AFB10024 */  sw         $s1, 0x24($sp)
/* F6774 8004D264 AFB00020 */  sw         $s0, 0x20($sp)
/* F6778 8004D268 F7B40030 */  sdc1       $f20, 0x30($sp)
/* F677C 8004D26C 0C00E109 */  jal        func_80038424_ovl3
/* F6780 8004D270 2412FFFE */   addiu     $s2, $zero, -0x2
/* F6784 8004D274 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F6788 8004D278 24040007 */   addiu     $a0, $zero, 0x7
/* F678C 8004D27C 00408021 */  addu       $s0, $v0, $zero
/* F6790 8004D280 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* F6794 8004D284 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* F6798 8004D288 44810000 */  mtc1       $at, $f0
/* F679C 8004D28C 02002021 */  addu       $a0, $s0, $zero
/* F67A0 8004D290 24050001 */  addiu      $a1, $zero, 0x1
/* F67A4 8004D294 240200FF */  addiu      $v0, $zero, 0xFF
/* F67A8 8004D298 A6020074 */  sh         $v0, 0x74($s0)
/* F67AC 8004D29C A6020076 */  sh         $v0, 0x76($s0)
/* F67B0 8004D2A0 A6020078 */  sh         $v0, 0x78($s0)
/* F67B4 8004D2A4 A602007A */  sh         $v0, 0x7A($s0)
/* F67B8 8004D2A8 2402FFFF */  addiu      $v0, $zero, -0x1
/* F67BC 8004D2AC AE000010 */  sw         $zero, 0x10($s0)
/* F67C0 8004D2B0 AE000014 */  sw         $zero, 0x14($s0)
/* F67C4 8004D2B4 AE000018 */  sw         $zero, 0x18($s0)
/* F67C8 8004D2B8 AE00001C */  sw         $zero, 0x1C($s0)
/* F67CC 8004D2BC AE000020 */  sw         $zero, 0x20($s0)
/* F67D0 8004D2C0 AE000024 */  sw         $zero, 0x24($s0)
/* F67D4 8004D2C4 A6020070 */  sh         $v0, 0x70($s0)
/* F67D8 8004D2C8 0C00DFE6 */  jal        func_80037F98_ovl3
/* F67DC 8004D2CC E6000028 */   swc1      $f0, 0x28($s0)
/* F67E0 8004D2D0 8E020004 */  lw         $v0, 0x4($s0)
/* F67E4 8004D2D4 A0400067 */  sb         $zero, 0x67($v0)
/* F67E8 8004D2D8 8E030004 */  lw         $v1, 0x4($s0)
/* F67EC 8004D2DC 3C04001E */  lui        $a0, %hi(Image_ROM_START)
/* F67F0 8004D2E0 24849000 */  addiu      $a0, $a0, %lo(Image_ROM_START)
/* F67F4 8004D2E4 3C05800D */  lui        $a1, %hi(Image_tbl)
/* F67F8 8004D2E8 24A56AD0 */  addiu      $a1, $a1, %lo(Image_tbl)
/* F67FC 8004D2EC 90620066 */  lbu        $v0, 0x66($v1)
/* F6800 8004D2F0 2406085A */  addiu      $a2, $zero, 0x85A
/* F6804 8004D2F4 00003821 */  addu       $a3, $zero, $zero
/* F6808 8004D2F8 34420017 */  ori        $v0, $v0, 0x17
/* F680C 8004D2FC 0C02648E */  jal        func_80099238
/* F6810 8004D300 A0620066 */   sb        $v0, 0x66($v1)
/* F6814 8004D304 3C018007 */  lui        $at, %hi(D_8006C130_ovl3)
/* F6818 8004D308 AC22C130 */  sw         $v0, %lo(D_8006C130_ovl3)($at)
/* F681C 8004D30C 0C00DFD6 */  jal        func_80037F58_ovl3
/* F6820 8004D310 24040007 */   addiu     $a0, $zero, 0x7
/* F6824 8004D314 00408021 */  addu       $s0, $v0, $zero
/* F6828 8004D318 8E040004 */  lw         $a0, 0x4($s0)
/* F682C 8004D31C 3C058007 */  lui        $a1, %hi(D_8006A200_ovl3)
/* F6830 8004D320 24A5A200 */  addiu      $a1, $a1, %lo(D_8006A200_ovl3)
/* F6834 8004D324 0C0284DC */  jal        func_800A1370
/* F6838 8004D328 24110001 */   addiu     $s1, $zero, 0x1
/* F683C 8004D32C 8E040004 */  lw         $a0, 0x4($s0)
/* F6840 8004D330 00021400 */  sll        $v0, $v0, 16
/* F6844 8004D334 0C0285CC */  jal        func_800A1730
/* F6848 8004D338 00022C03 */   sra       $a1, $v0, 16
/* F684C 8004D33C 3C048007 */  lui        $a0, %hi(D_8006C130_ovl3)
/* F6850 8004D340 8C84C130 */  lw         $a0, %lo(D_8006C130_ovl3)($a0)
/* F6854 8004D344 24450020 */  addiu      $a1, $v0, 0x20
/* F6858 8004D348 24060400 */  addiu      $a2, $zero, 0x400
/* F685C 8004D34C 3C018007 */  lui        $at, %hi(D_8006C134_ovl3)
/* F6860 8004D350 AC25C134 */  sw         $a1, %lo(D_8006C134_ovl3)($at)
/* F6864 8004D354 0C03006C */  jal        func_800C01B0
/* F6868 8004D358 24840010 */   addiu     $a0, $a0, 0x10
/* F686C 8004D35C 3C048007 */  lui        $a0, %hi(D_8006C130_ovl3)
/* F6870 8004D360 0C0326A1 */  jal        func_800C9A84
/* F6874 8004D364 8C84C130 */   lw        $a0, %lo(D_8006C130_ovl3)($a0)
/* F6878 8004D368 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* F687C 8004D36C 44811000 */  mtc1       $at, $f2
/* F6880 8004D370 3C014040 */  lui        $at, (0x40400000 >> 16)
/* F6884 8004D374 4481A000 */  mtc1       $at, $f20
/* F6888 8004D378 3C01C2C8 */  lui        $at, (0xC2C80000 >> 16)
/* F688C 8004D37C 44810000 */  mtc1       $at, $f0
/* F6890 8004D380 3C018015 */  lui        $at, %hi(D_8014A064)
/* F6894 8004D384 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F6898 8004D388 3C018015 */  lui        $at, %hi(D_8014A068)
/* F689C 8004D38C AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* F68A0 8004D390 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F68A4 8004D394 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F68A8 8004D398 3C018015 */  lui        $at, %hi(D_8014A070)
/* F68AC 8004D39C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F68B0 8004D3A0 3C018015 */  lui        $at, %hi(D_8014A078)
/* F68B4 8004D3A4 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F68B8 8004D3A8 3C018015 */  lui        $at, %hi(D_8014A080)
/* F68BC 8004D3AC AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* F68C0 8004D3B0 3C018015 */  lui        $at, %hi(D_8014A084)
/* F68C4 8004D3B4 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F68C8 8004D3B8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F68CC 8004D3BC E434A07C */  swc1       $f20, %lo(D_8014A07C)($at)
/* F68D0 8004D3C0 3C018015 */  lui        $at, %hi(D_8014A074)
/* F68D4 8004D3C4 E422A074 */  swc1       $f2, %lo(D_8014A074)($at)
/* F68D8 8004D3C8 3C018015 */  lui        $at, %hi(D_8014A088)
/* F68DC 8004D3CC 0C00E339 */  jal        func_80038CE4_ovl3
/* F68E0 8004D3D0 E420A088 */   swc1      $f0, %lo(D_8014A088)($at)
/* F68E4 8004D3D4 3C048030 */  lui        $a0, (0x80308610 >> 16)
/* F68E8 8004D3D8 34848610 */  ori        $a0, $a0, (0x80308610 & 0xFFFF)
/* F68EC 8004D3DC 240501E4 */  addiu      $a1, $zero, 0x1E4
/* F68F0 8004D3E0 3C014000 */  lui        $at, (0x40000000 >> 16)
/* F68F4 8004D3E4 44810000 */  mtc1       $at, $f0
/* F68F8 8004D3E8 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* F68FC 8004D3EC 44811000 */  mtc1       $at, $f2
/* F6900 8004D3F0 24060007 */  addiu      $a2, $zero, 0x7
/* F6904 8004D3F4 3C018015 */  lui        $at, %hi(D_8014A054)
/* F6908 8004D3F8 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F690C 8004D3FC 3C018015 */  lui        $at, %hi(D_8014A050)
/* F6910 8004D400 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* F6914 8004D404 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F6918 8004D408 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F691C 8004D40C 3C018017 */  lui        $at, %hi(D_8016E568)
/* F6920 8004D410 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* F6924 8004D414 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F6928 8004D418 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* F692C 8004D41C 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F6930 8004D420 E422D0D4 */  swc1       $f2, %lo(D_8016D0D4)($at)
/* F6934 8004D424 0C00D9E0 */  jal        func_80036780_ovl3
/* F6938 8004D428 24070021 */   addiu     $a3, $zero, 0x21
/* F693C 8004D42C 00408021 */  addu       $s0, $v0, $zero
/* F6940 8004D430 8E04000C */  lw         $a0, 0xC($s0)
/* F6944 8004D434 4406A000 */  mfc1       $a2, $f20
/* F6948 8004D438 00002821 */  addu       $a1, $zero, $zero
/* F694C 8004D43C 0C02915B */  jal        func_800A456C
/* F6950 8004D440 00C03821 */   addu      $a3, $a2, $zero
/* F6954 8004D444 8E04000C */  lw         $a0, 0xC($s0)
/* F6958 8004D448 8C82000C */  lw         $v0, 0xC($a0)
/* F695C 8004D44C 94450000 */  lhu        $a1, 0x0($v0)
/* F6960 8004D450 00003021 */  addu       $a2, $zero, $zero
/* F6964 8004D454 0C02912A */  jal        func_800A44A8
/* F6968 8004D458 00052842 */   srl       $a1, $a1, 1
/* F696C 8004D45C 8E04000C */  lw         $a0, 0xC($s0)
/* F6970 8004D460 24050280 */  addiu      $a1, $zero, 0x280
/* F6974 8004D464 0C028D89 */  jal        func_800A3624
/* F6978 8004D468 24060040 */   addiu     $a2, $zero, 0x40
/* F697C 8004D46C 8E03000C */  lw         $v1, 0xC($s0)
/* F6980 8004D470 9462001E */  lhu        $v0, 0x1E($v1)
/* F6984 8004D474 24040011 */  addiu      $a0, $zero, 0x11
/* F6988 8004D478 24050001 */  addiu      $a1, $zero, 0x1
/* F698C 8004D47C 34420104 */  ori        $v0, $v0, 0x104
/* F6990 8004D480 A462001E */  sh         $v0, 0x1E($v1)
/* F6994 8004D484 8E03000C */  lw         $v1, 0xC($s0)
/* F6998 8004D488 24060017 */  addiu      $a2, $zero, 0x17
/* F699C 8004D48C 24020001 */  addiu      $v0, $zero, 0x1
/* F69A0 8004D490 0C00D925 */  jal        func_80036494_ovl3
/* F69A4 8004D494 A462001C */   sh        $v0, 0x1C($v1)
/* F69A8 8004D498 00408021 */  addu       $s0, $v0, $zero
/* F69AC 8004D49C 8E04000C */  lw         $a0, 0xC($s0)
/* F69B0 8004D4A0 24050038 */  addiu      $a1, $zero, 0x38
/* F69B4 8004D4A4 0C028F9A */  jal        func_800A3E68
/* F69B8 8004D4A8 2406004E */   addiu     $a2, $zero, 0x4E
/* F69BC 8004D4AC 8E04000C */  lw         $a0, 0xC($s0)
/* F69C0 8004D4B0 24050040 */  addiu      $a1, $zero, 0x40
/* F69C4 8004D4B4 0C028D89 */  jal        func_800A3624
/* F69C8 8004D4B8 24060040 */   addiu     $a2, $zero, 0x40
/* F69CC 8004D4BC 24020080 */  addiu      $v0, $zero, 0x80
/* F69D0 8004D4C0 AFA20010 */  sw         $v0, 0x10($sp)
/* F69D4 8004D4C4 8E04000C */  lw         $a0, 0xC($s0)
/* F69D8 8004D4C8 24050080 */  addiu      $a1, $zero, 0x80
/* F69DC 8004D4CC 240600DD */  addiu      $a2, $zero, 0xDD
/* F69E0 8004D4D0 0C028E41 */  jal        func_800A3904
/* F69E4 8004D4D4 240700FF */   addiu     $a3, $zero, 0xFF
/* F69E8 8004D4D8 8E03000C */  lw         $v1, 0xC($s0)
/* F69EC 8004D4DC 27A40018 */  addiu      $a0, $sp, 0x18
/* F69F0 8004D4E0 240520CB */  addiu      $a1, $zero, 0x20CB
/* F69F4 8004D4E4 24060003 */  addiu      $a2, $zero, 0x3
/* F69F8 8004D4E8 9462001E */  lhu        $v0, 0x1E($v1)
/* F69FC 8004D4EC 24100003 */  addiu      $s0, $zero, 0x3
/* F6A00 8004D4F0 34420002 */  ori        $v0, $v0, 0x2
/* F6A04 8004D4F4 A462001E */  sh         $v0, 0x1E($v1)
/* F6A08 8004D4F8 3C028007 */  lui        $v0, %hi(D_80069218_ovl3)
/* F6A0C 8004D4FC 24429218 */  addiu      $v0, $v0, %lo(D_80069218_ovl3)
/* F6A10 8004D500 AFA20018 */  sw         $v0, 0x18($sp)
/* F6A14 8004D504 A3B2001C */  sb         $s2, 0x1C($sp)
/* F6A18 8004D508 A3A0001D */  sb         $zero, 0x1D($sp)
/* F6A1C 8004D50C A3B1001E */  sb         $s1, 0x1E($sp)
/* F6A20 8004D510 0C00DE82 */  jal        func_80037A08_ovl3
/* F6A24 8004D514 A3B0001F */   sb        $s0, 0x1F($sp)
/* F6A28 8004D518 27A40018 */  addiu      $a0, $sp, 0x18
/* F6A2C 8004D51C 240520CC */  addiu      $a1, $zero, 0x20CC
/* F6A30 8004D520 24060003 */  addiu      $a2, $zero, 0x3
/* F6A34 8004D524 3C028007 */  lui        $v0, %hi(D_80069234_ovl3)
/* F6A38 8004D528 24429234 */  addiu      $v0, $v0, %lo(D_80069234_ovl3)
/* F6A3C 8004D52C AFA20018 */  sw         $v0, 0x18($sp)
/* F6A40 8004D530 A3B2001C */  sb         $s2, 0x1C($sp)
/* F6A44 8004D534 A3A0001D */  sb         $zero, 0x1D($sp)
/* F6A48 8004D538 A3B1001E */  sb         $s1, 0x1E($sp)
/* F6A4C 8004D53C 0C00DE82 */  jal        func_80037A08_ovl3
/* F6A50 8004D540 A3B0001F */   sb        $s0, 0x1F($sp)
/* F6A54 8004D544 8FBF002C */  lw         $ra, 0x2C($sp)
/* F6A58 8004D548 8FB20028 */  lw         $s2, 0x28($sp)
/* F6A5C 8004D54C 8FB10024 */  lw         $s1, 0x24($sp)
/* F6A60 8004D550 8FB00020 */  lw         $s0, 0x20($sp)
/* F6A64 8004D554 D7B40030 */  ldc1       $f20, 0x30($sp)
/* F6A68 8004D558 03E00008 */  jr         $ra
/* F6A6C 8004D55C 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_8004D254_ovl3, . - func_8004D254_ovl3
