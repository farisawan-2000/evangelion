.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8004D170_F6680
/* F6680 8004D170 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F6684 8004D174 AFBF0028 */  sw         $ra, 0x28($sp)
/* F6688 8004D178 AFB10024 */  sw         $s1, 0x24($sp)
/* F668C 8004D17C 0C00E109 */  jal        func_80038424_E1934
/* F6690 8004D180 AFB00020 */   sw        $s0, 0x20($sp)
/* F6694 8004D184 3C04802F */  lui        $a0, 0x802f
/* F6698 8004D188 34849800 */  ori        $a0, $a0, 0x9800
/* F669C 8004D18C 240501B3 */  addiu      $a1, $zero, 0x1b3
/* F66A0 8004D190 24060009 */  addiu      $a2, $zero, 9
/* F66A4 8004D194 0C00D9E0 */  jal        func_80036780_DFC90
/* F66A8 8004D198 24070019 */   addiu     $a3, $zero, 0x19
/* F66AC 8004D19C 8C44000C */  lw         $a0, 0xc($v0)
/* F66B0 8004D1A0 24050040 */  addiu      $a1, $zero, 0x40
/* F66B4 8004D1A4 0C028D89 */  jal        func_800A3624
/* F66B8 8004D1A8 240600C0 */   addiu     $a2, $zero, 0xc0
/* F66BC 8004D1AC 3C048007 */  lui        $a0, %hi(D_800691D0)
/* F66C0 8004D1B0 248491D0 */  addiu      $a0, $a0, %lo(D_800691D0)
/* F66C4 8004D1B4 2405FFFE */  addiu      $a1, $zero, -2
/* F66C8 8004D1B8 2410FFFE */  addiu      $s0, $zero, -2
/* F66CC 8004D1BC 24110001 */  addiu      $s1, $zero, 1
/* F66D0 8004D1C0 24020002 */  addiu      $v0, $zero, 2
/* F66D4 8004D1C4 AFA40018 */  sw         $a0, 0x18($sp)
/* F66D8 8004D1C8 A3B0001C */  sb         $s0, 0x1c($sp)
/* F66DC 8004D1CC A3B0001D */  sb         $s0, 0x1d($sp)
/* F66E0 8004D1D0 A3B1001E */  sb         $s1, 0x1e($sp)
/* F66E4 8004D1D4 0C029D2A */  jal        func_800A74A8
/* F66E8 8004D1D8 A3A2001F */   sb        $v0, 0x1f($sp)
/* F66EC 8004D1DC 27A40018 */  addiu      $a0, $sp, 0x18
/* F66F0 8004D1E0 240520C9 */  addiu      $a1, $zero, 0x20c9
/* F66F4 8004D1E4 240620D3 */  addiu      $a2, $zero, 0x20d3
/* F66F8 8004D1E8 00021FC2 */  srl        $v1, $v0, 0x1f
/* F66FC 8004D1EC 00621821 */  addu       $v1, $v1, $v0
/* F6700 8004D1F0 00031843 */  sra        $v1, $v1, 1
/* F6704 8004D1F4 240700A0 */  addiu      $a3, $zero, 0xa0
/* F6708 8004D1F8 00E33823 */  subu       $a3, $a3, $v1
/* F670C 8004D1FC 00073C00 */  sll        $a3, $a3, 0x10
/* F6710 8004D200 00073C03 */  sra        $a3, $a3, 0x10
/* F6714 8004D204 240200A7 */  addiu      $v0, $zero, 0xa7
/* F6718 8004D208 0C00DEF7 */  jal        func_80037BDC_E10EC
/* F671C 8004D20C AFA20010 */   sw        $v0, 0x10($sp)
/* F6720 8004D210 27A40018 */  addiu      $a0, $sp, 0x18
/* F6724 8004D214 240520CA */  addiu      $a1, $zero, 0x20ca
/* F6728 8004D218 24060002 */  addiu      $a2, $zero, 2
/* F672C 8004D21C 3C028007 */  lui        $v0, %hi(D_800691FC)
/* F6730 8004D220 244291FC */  addiu      $v0, $v0, %lo(D_800691FC)
/* F6734 8004D224 AFA20018 */  sw         $v0, 0x18($sp)
/* F6738 8004D228 24020003 */  addiu      $v0, $zero, 3
/* F673C 8004D22C A3B0001C */  sb         $s0, 0x1c($sp)
/* F6740 8004D230 A3B0001D */  sb         $s0, 0x1d($sp)
/* F6744 8004D234 A3B1001E */  sb         $s1, 0x1e($sp)
/* F6748 8004D238 0C00DE82 */  jal        func_80037A08_E0F18
/* F674C 8004D23C A3A2001F */   sb        $v0, 0x1f($sp)
/* F6750 8004D240 8FBF0028 */  lw         $ra, 0x28($sp)
/* F6754 8004D244 8FB10024 */  lw         $s1, 0x24($sp)
/* F6758 8004D248 8FB00020 */  lw         $s0, 0x20($sp)
/* F675C 8004D24C 03E00008 */  jr         $ra
/* F6760 8004D250 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004D254_F6764
/* F6764 8004D254 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* F6768 8004D258 AFBF002C */  sw         $ra, 0x2c($sp)
/* F676C 8004D25C AFB20028 */  sw         $s2, 0x28($sp)
/* F6770 8004D260 AFB10024 */  sw         $s1, 0x24($sp)
/* F6774 8004D264 AFB00020 */  sw         $s0, 0x20($sp)
/* F6778 8004D268 F7B40030 */  sdc1       $f20, 0x30($sp)
/* F677C 8004D26C 0C00E109 */  jal        func_80038424_E1934
/* F6780 8004D270 2412FFFE */   addiu     $s2, $zero, -2
/* F6784 8004D274 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F6788 8004D278 24040007 */   addiu     $a0, $zero, 7
/* F678C 8004D27C 00408021 */  addu       $s0, $v0, $zero
/* F6790 8004D280 3C013CA3 */  lui        $at, 0x3ca3
/* F6794 8004D284 3421D70A */  ori        $at, $at, 0xd70a
/* F6798 8004D288 44810000 */  mtc1       $at, $f0
/* F679C 8004D28C 02002021 */  addu       $a0, $s0, $zero
/* F67A0 8004D290 24050001 */  addiu      $a1, $zero, 1
/* F67A4 8004D294 240200FF */  addiu      $v0, $zero, 0xff
/* F67A8 8004D298 A6020074 */  sh         $v0, 0x74($s0)
/* F67AC 8004D29C A6020076 */  sh         $v0, 0x76($s0)
/* F67B0 8004D2A0 A6020078 */  sh         $v0, 0x78($s0)
/* F67B4 8004D2A4 A602007A */  sh         $v0, 0x7a($s0)
/* F67B8 8004D2A8 2402FFFF */  addiu      $v0, $zero, -1
/* F67BC 8004D2AC AE000010 */  sw         $zero, 0x10($s0)
/* F67C0 8004D2B0 AE000014 */  sw         $zero, 0x14($s0)
/* F67C4 8004D2B4 AE000018 */  sw         $zero, 0x18($s0)
/* F67C8 8004D2B8 AE00001C */  sw         $zero, 0x1c($s0)
/* F67CC 8004D2BC AE000020 */  sw         $zero, 0x20($s0)
/* F67D0 8004D2C0 AE000024 */  sw         $zero, 0x24($s0)
/* F67D4 8004D2C4 A6020070 */  sh         $v0, 0x70($s0)
/* F67D8 8004D2C8 0C00DFE6 */  jal        func_80037F98_E14A8
/* F67DC 8004D2CC E6000028 */   swc1      $f0, 0x28($s0)
/* F67E0 8004D2D0 8E020004 */  lw         $v0, 4($s0)
/* F67E4 8004D2D4 A0400067 */  sb         $zero, 0x67($v0)
/* F67E8 8004D2D8 8E030004 */  lw         $v1, 4($s0)
/* F67EC 8004D2DC 3C04001E */  lui        $a0, 0x1e
/* F67F0 8004D2E0 24849000 */  addiu      $a0, $a0, -0x7000
/* F67F4 8004D2E4 3C05800D */  lui        $a1, %hi(D_800D6AD0)
/* F67F8 8004D2E8 24A56AD0 */  addiu      $a1, $a1, %lo(D_800D6AD0)
/* F67FC 8004D2EC 90620066 */  lbu        $v0, 0x66($v1)
/* F6800 8004D2F0 2406085A */  addiu      $a2, $zero, 0x85a
/* F6804 8004D2F4 00003821 */  addu       $a3, $zero, $zero
/* F6808 8004D2F8 34420017 */  ori        $v0, $v0, 0x17
/* F680C 8004D2FC 0C02648E */  jal        func_80099238
/* F6810 8004D300 A0620066 */   sb        $v0, 0x66($v1)
/* F6814 8004D304 3C018007 */  lui        $at, %hi(D_8006C130)
/* F6818 8004D308 AC22C130 */  sw         $v0, %lo(D_8006C130)($at)
/* F681C 8004D30C 0C00DFD6 */  jal        func_80037F58_E1468
/* F6820 8004D310 24040007 */   addiu     $a0, $zero, 7
/* F6824 8004D314 00408021 */  addu       $s0, $v0, $zero
/* F6828 8004D318 8E040004 */  lw         $a0, 4($s0)
/* F682C 8004D31C 3C058007 */  lui        $a1, %hi(D_8006A200)
/* F6830 8004D320 24A5A200 */  addiu      $a1, $a1, %lo(D_8006A200)
/* F6834 8004D324 0C0284DC */  jal        func_800A1370
/* F6838 8004D328 24110001 */   addiu     $s1, $zero, 1
/* F683C 8004D32C 8E040004 */  lw         $a0, 4($s0)
/* F6840 8004D330 00021400 */  sll        $v0, $v0, 0x10
/* F6844 8004D334 0C0285CC */  jal        func_800A1730
/* F6848 8004D338 00022C03 */   sra       $a1, $v0, 0x10
/* F684C 8004D33C 3C048007 */  lui        $a0, %hi(D_8006C130)
/* F6850 8004D340 8C84C130 */  lw         $a0, %lo(D_8006C130)($a0)
/* F6854 8004D344 24450020 */  addiu      $a1, $v0, 0x20
/* F6858 8004D348 24060400 */  addiu      $a2, $zero, 0x400
/* F685C 8004D34C 3C018007 */  lui        $at, %hi(D_8006C134)
/* F6860 8004D350 AC25C134 */  sw         $a1, %lo(D_8006C134)($at)
/* F6864 8004D354 0C03006C */  jal        func_800C01B0
/* F6868 8004D358 24840010 */   addiu     $a0, $a0, 0x10
/* F686C 8004D35C 3C048007 */  lui        $a0, %hi(D_8006C130)
/* F6870 8004D360 0C0326A1 */  jal        func_800C9A84
/* F6874 8004D364 8C84C130 */   lw        $a0, %lo(D_8006C130)($a0)
/* F6878 8004D368 3C013F80 */  lui        $at, 0x3f80
/* F687C 8004D36C 44811000 */  mtc1       $at, $f2
/* F6880 8004D370 3C014040 */  lui        $at, 0x4040
/* F6884 8004D374 4481A000 */  mtc1       $at, $f20
/* F6888 8004D378 3C01C2C8 */  lui        $at, 0xc2c8
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
/* F68DC 8004D3CC 0C00E339 */  jal        func_80038CE4_E21F4
/* F68E0 8004D3D0 E420A088 */   swc1      $f0, %lo(D_8014A088)($at)
/* F68E4 8004D3D4 3C048030 */  lui        $a0, 0x8030
/* F68E8 8004D3D8 34848610 */  ori        $a0, $a0, 0x8610
/* F68EC 8004D3DC 240501E4 */  addiu      $a1, $zero, 0x1e4
/* F68F0 8004D3E0 3C014000 */  lui        $at, 0x4000
/* F68F4 8004D3E4 44810000 */  mtc1       $at, $f0
/* F68F8 8004D3E8 3C01C0A0 */  lui        $at, 0xc0a0
/* F68FC 8004D3EC 44811000 */  mtc1       $at, $f2
/* F6900 8004D3F0 24060007 */  addiu      $a2, $zero, 7
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
/* F6934 8004D424 0C00D9E0 */  jal        func_80036780_DFC90
/* F6938 8004D428 24070021 */   addiu     $a3, $zero, 0x21
/* F693C 8004D42C 00408021 */  addu       $s0, $v0, $zero
/* F6940 8004D430 8E04000C */  lw         $a0, 0xc($s0)
/* F6944 8004D434 4406A000 */  mfc1       $a2, $f20
/* F6948 8004D438 00002821 */  addu       $a1, $zero, $zero
/* F694C 8004D43C 0C02915B */  jal        func_800A456C
/* F6950 8004D440 00C03821 */   addu      $a3, $a2, $zero
/* F6954 8004D444 8E04000C */  lw         $a0, 0xc($s0)
/* F6958 8004D448 8C82000C */  lw         $v0, 0xc($a0)
/* F695C 8004D44C 94450000 */  lhu        $a1, ($v0)
/* F6960 8004D450 00003021 */  addu       $a2, $zero, $zero
/* F6964 8004D454 0C02912A */  jal        func_800A44A8
/* F6968 8004D458 00052842 */   srl       $a1, $a1, 1
/* F696C 8004D45C 8E04000C */  lw         $a0, 0xc($s0)
/* F6970 8004D460 24050280 */  addiu      $a1, $zero, 0x280
/* F6974 8004D464 0C028D89 */  jal        func_800A3624
/* F6978 8004D468 24060040 */   addiu     $a2, $zero, 0x40
/* F697C 8004D46C 8E03000C */  lw         $v1, 0xc($s0)
/* F6980 8004D470 9462001E */  lhu        $v0, 0x1e($v1)
/* F6984 8004D474 24040011 */  addiu      $a0, $zero, 0x11
/* F6988 8004D478 24050001 */  addiu      $a1, $zero, 1
/* F698C 8004D47C 34420104 */  ori        $v0, $v0, 0x104
/* F6990 8004D480 A462001E */  sh         $v0, 0x1e($v1)
/* F6994 8004D484 8E03000C */  lw         $v1, 0xc($s0)
/* F6998 8004D488 24060017 */  addiu      $a2, $zero, 0x17
/* F699C 8004D48C 24020001 */  addiu      $v0, $zero, 1
/* F69A0 8004D490 0C00D925 */  jal        func_80036494_DF9A4
/* F69A4 8004D494 A462001C */   sh        $v0, 0x1c($v1)
/* F69A8 8004D498 00408021 */  addu       $s0, $v0, $zero
/* F69AC 8004D49C 8E04000C */  lw         $a0, 0xc($s0)
/* F69B0 8004D4A0 24050038 */  addiu      $a1, $zero, 0x38
/* F69B4 8004D4A4 0C028F9A */  jal        func_800A3E68
/* F69B8 8004D4A8 2406004E */   addiu     $a2, $zero, 0x4e
/* F69BC 8004D4AC 8E04000C */  lw         $a0, 0xc($s0)
/* F69C0 8004D4B0 24050040 */  addiu      $a1, $zero, 0x40
/* F69C4 8004D4B4 0C028D89 */  jal        func_800A3624
/* F69C8 8004D4B8 24060040 */   addiu     $a2, $zero, 0x40
/* F69CC 8004D4BC 24020080 */  addiu      $v0, $zero, 0x80
/* F69D0 8004D4C0 AFA20010 */  sw         $v0, 0x10($sp)
/* F69D4 8004D4C4 8E04000C */  lw         $a0, 0xc($s0)
/* F69D8 8004D4C8 24050080 */  addiu      $a1, $zero, 0x80
/* F69DC 8004D4CC 240600DD */  addiu      $a2, $zero, 0xdd
/* F69E0 8004D4D0 0C028E41 */  jal        func_800A3904
/* F69E4 8004D4D4 240700FF */   addiu     $a3, $zero, 0xff
/* F69E8 8004D4D8 8E03000C */  lw         $v1, 0xc($s0)
/* F69EC 8004D4DC 27A40018 */  addiu      $a0, $sp, 0x18
/* F69F0 8004D4E0 240520CB */  addiu      $a1, $zero, 0x20cb
/* F69F4 8004D4E4 24060003 */  addiu      $a2, $zero, 3
/* F69F8 8004D4E8 9462001E */  lhu        $v0, 0x1e($v1)
/* F69FC 8004D4EC 24100003 */  addiu      $s0, $zero, 3
/* F6A00 8004D4F0 34420002 */  ori        $v0, $v0, 2
/* F6A04 8004D4F4 A462001E */  sh         $v0, 0x1e($v1)
/* F6A08 8004D4F8 3C028007 */  lui        $v0, %hi(D_80069218)
/* F6A0C 8004D4FC 24429218 */  addiu      $v0, $v0, %lo(D_80069218)
/* F6A10 8004D500 AFA20018 */  sw         $v0, 0x18($sp)
/* F6A14 8004D504 A3B2001C */  sb         $s2, 0x1c($sp)
/* F6A18 8004D508 A3A0001D */  sb         $zero, 0x1d($sp)
/* F6A1C 8004D50C A3B1001E */  sb         $s1, 0x1e($sp)
/* F6A20 8004D510 0C00DE82 */  jal        func_80037A08_E0F18
/* F6A24 8004D514 A3B0001F */   sb        $s0, 0x1f($sp)
/* F6A28 8004D518 27A40018 */  addiu      $a0, $sp, 0x18
/* F6A2C 8004D51C 240520CC */  addiu      $a1, $zero, 0x20cc
/* F6A30 8004D520 24060003 */  addiu      $a2, $zero, 3
/* F6A34 8004D524 3C028007 */  lui        $v0, %hi(D_80069234)
/* F6A38 8004D528 24429234 */  addiu      $v0, $v0, %lo(D_80069234)
/* F6A3C 8004D52C AFA20018 */  sw         $v0, 0x18($sp)
/* F6A40 8004D530 A3B2001C */  sb         $s2, 0x1c($sp)
/* F6A44 8004D534 A3A0001D */  sb         $zero, 0x1d($sp)
/* F6A48 8004D538 A3B1001E */  sb         $s1, 0x1e($sp)
/* F6A4C 8004D53C 0C00DE82 */  jal        func_80037A08_E0F18
/* F6A50 8004D540 A3B0001F */   sb        $s0, 0x1f($sp)
/* F6A54 8004D544 8FBF002C */  lw         $ra, 0x2c($sp)
/* F6A58 8004D548 8FB20028 */  lw         $s2, 0x28($sp)
/* F6A5C 8004D54C 8FB10024 */  lw         $s1, 0x24($sp)
/* F6A60 8004D550 8FB00020 */  lw         $s0, 0x20($sp)
/* F6A64 8004D554 D7B40030 */  ldc1       $f20, 0x30($sp)
/* F6A68 8004D558 03E00008 */  jr         $ra
/* F6A6C 8004D55C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8004D560_F6A70
/* F6A70 8004D560 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* F6A74 8004D564 AFBF0030 */  sw         $ra, 0x30($sp)
/* F6A78 8004D568 AFB3002C */  sw         $s3, 0x2c($sp)
/* F6A7C 8004D56C AFB20028 */  sw         $s2, 0x28($sp)
/* F6A80 8004D570 AFB10024 */  sw         $s1, 0x24($sp)
/* F6A84 8004D574 AFB00020 */  sw         $s0, 0x20($sp)
/* F6A88 8004D578 F7B60040 */  sdc1       $f22, 0x40($sp)
/* F6A8C 8004D57C F7B40038 */  sdc1       $f20, 0x38($sp)
/* F6A90 8004D580 0C00E109 */  jal        func_80038424_E1934
/* F6A94 8004D584 241000FF */   addiu     $s0, $zero, 0xff
/* F6A98 8004D588 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F6A9C 8004D58C 24040001 */   addiu     $a0, $zero, 1
/* F6AA0 8004D590 00408821 */  addu       $s1, $v0, $zero
/* F6AA4 8004D594 3C01C040 */  lui        $at, 0xc040
/* F6AA8 8004D598 4481A000 */  mtc1       $at, $f20
/* F6AAC 8004D59C 3C013CA3 */  lui        $at, 0x3ca3
/* F6AB0 8004D5A0 3421D70A */  ori        $at, $at, 0xd70a
/* F6AB4 8004D5A4 4481B000 */  mtc1       $at, $f22
/* F6AB8 8004D5A8 02202021 */  addu       $a0, $s1, $zero
/* F6ABC 8004D5AC 240500E5 */  addiu      $a1, $zero, 0xe5
/* F6AC0 8004D5B0 AE200014 */  sw         $zero, 0x14($s1)
/* F6AC4 8004D5B4 AE200018 */  sw         $zero, 0x18($s1)
/* F6AC8 8004D5B8 AE20001C */  sw         $zero, 0x1c($s1)
/* F6ACC 8004D5BC AE200020 */  sw         $zero, 0x20($s1)
/* F6AD0 8004D5C0 AE200024 */  sw         $zero, 0x24($s1)
/* F6AD4 8004D5C4 A6300074 */  sh         $s0, 0x74($s1)
/* F6AD8 8004D5C8 A6300076 */  sh         $s0, 0x76($s1)
/* F6ADC 8004D5CC A6300078 */  sh         $s0, 0x78($s1)
/* F6AE0 8004D5D0 A630007A */  sh         $s0, 0x7a($s1)
/* F6AE4 8004D5D4 E6340010 */  swc1       $f20, 0x10($s1)
/* F6AE8 8004D5D8 0C00DFE6 */  jal        func_80037F98_E14A8
/* F6AEC 8004D5DC E6360028 */   swc1      $f22, 0x28($s1)
/* F6AF0 8004D5E0 8E220004 */  lw         $v0, 4($s1)
/* F6AF4 8004D5E4 A0400067 */  sb         $zero, 0x67($v0)
/* F6AF8 8004D5E8 8E230004 */  lw         $v1, 4($s1)
/* F6AFC 8004D5EC 90620066 */  lbu        $v0, 0x66($v1)
/* F6B00 8004D5F0 24040002 */  addiu      $a0, $zero, 2
/* F6B04 8004D5F4 34420007 */  ori        $v0, $v0, 7
/* F6B08 8004D5F8 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F6B0C 8004D5FC A0620066 */   sb        $v0, 0x66($v1)
/* F6B10 8004D600 00408821 */  addu       $s1, $v0, $zero
/* F6B14 8004D604 02202021 */  addu       $a0, $s1, $zero
/* F6B18 8004D608 240500EA */  addiu      $a1, $zero, 0xea
/* F6B1C 8004D60C 24020080 */  addiu      $v0, $zero, 0x80
/* F6B20 8004D610 E6340010 */  swc1       $f20, 0x10($s1)
/* F6B24 8004D614 AE200014 */  sw         $zero, 0x14($s1)
/* F6B28 8004D618 AE200018 */  sw         $zero, 0x18($s1)
/* F6B2C 8004D61C E6360028 */  swc1       $f22, 0x28($s1)
/* F6B30 8004D620 AE20001C */  sw         $zero, 0x1c($s1)
/* F6B34 8004D624 AE200020 */  sw         $zero, 0x20($s1)
/* F6B38 8004D628 AE200024 */  sw         $zero, 0x24($s1)
/* F6B3C 8004D62C A6300074 */  sh         $s0, 0x74($s1)
/* F6B40 8004D630 A6300076 */  sh         $s0, 0x76($s1)
/* F6B44 8004D634 A6300078 */  sh         $s0, 0x78($s1)
/* F6B48 8004D638 0C00DFE6 */  jal        func_80037F98_E14A8
/* F6B4C 8004D63C A622007A */   sh        $v0, 0x7a($s1)
/* F6B50 8004D640 8E230004 */  lw         $v1, 4($s1)
/* F6B54 8004D644 2402000A */  addiu      $v0, $zero, 0xa
/* F6B58 8004D648 A0620067 */  sb         $v0, 0x67($v1)
/* F6B5C 8004D64C 8E230004 */  lw         $v1, 4($s1)
/* F6B60 8004D650 90620066 */  lbu        $v0, 0x66($v1)
/* F6B64 8004D654 24040003 */  addiu      $a0, $zero, 3
/* F6B68 8004D658 34420020 */  ori        $v0, $v0, 0x20
/* F6B6C 8004D65C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F6B70 8004D660 A0620066 */   sb        $v0, 0x66($v1)
/* F6B74 8004D664 00408821 */  addu       $s1, $v0, $zero
/* F6B78 8004D668 3C01C120 */  lui        $at, 0xc120
/* F6B7C 8004D66C 44810000 */  mtc1       $at, $f0
/* F6B80 8004D670 3C01BFC0 */  lui        $at, 0xbfc0
/* F6B84 8004D674 44811000 */  mtc1       $at, $f2
/* F6B88 8004D678 3C013CAC */  lui        $at, 0x3cac
/* F6B8C 8004D67C 34210831 */  ori        $at, $at, 0x831
/* F6B90 8004D680 44812000 */  mtc1       $at, $f4
/* F6B94 8004D684 3C014100 */  lui        $at, 0x4100
/* F6B98 8004D688 44813000 */  mtc1       $at, $f6
/* F6B9C 8004D68C 02202021 */  addu       $a0, $s1, $zero
/* F6BA0 8004D690 240500E6 */  addiu      $a1, $zero, 0xe6
/* F6BA4 8004D694 AE200018 */  sw         $zero, 0x18($s1)
/* F6BA8 8004D698 AE20001C */  sw         $zero, 0x1c($s1)
/* F6BAC 8004D69C AE200024 */  sw         $zero, 0x24($s1)
/* F6BB0 8004D6A0 A6300074 */  sh         $s0, 0x74($s1)
/* F6BB4 8004D6A4 A6300076 */  sh         $s0, 0x76($s1)
/* F6BB8 8004D6A8 A6300078 */  sh         $s0, 0x78($s1)
/* F6BBC 8004D6AC A630007A */  sh         $s0, 0x7a($s1)
/* F6BC0 8004D6B0 E6200010 */  swc1       $f0, 0x10($s1)
/* F6BC4 8004D6B4 E6220014 */  swc1       $f2, 0x14($s1)
/* F6BC8 8004D6B8 E6240028 */  swc1       $f4, 0x28($s1)
/* F6BCC 8004D6BC 0C00DFE6 */  jal        func_80037F98_E14A8
/* F6BD0 8004D6C0 E6260020 */   swc1      $f6, 0x20($s1)
/* F6BD4 8004D6C4 8E220004 */  lw         $v0, 4($s1)
/* F6BD8 8004D6C8 A0400067 */  sb         $zero, 0x67($v0)
/* F6BDC 8004D6CC 8E230004 */  lw         $v1, 4($s1)
/* F6BE0 8004D6D0 90620066 */  lbu        $v0, 0x66($v1)
/* F6BE4 8004D6D4 24040004 */  addiu      $a0, $zero, 4
/* F6BE8 8004D6D8 34420007 */  ori        $v0, $v0, 7
/* F6BEC 8004D6DC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F6BF0 8004D6E0 A0620066 */   sb        $v0, 0x66($v1)
/* F6BF4 8004D6E4 00408821 */  addu       $s1, $v0, $zero
/* F6BF8 8004D6E8 3C014128 */  lui        $at, 0x4128
/* F6BFC 8004D6EC 44810000 */  mtc1       $at, $f0
/* F6C00 8004D6F0 3C01C0A0 */  lui        $at, 0xc0a0
/* F6C04 8004D6F4 44811000 */  mtc1       $at, $f2
/* F6C08 8004D6F8 3C014170 */  lui        $at, 0x4170
/* F6C0C 8004D6FC 44812000 */  mtc1       $at, $f4
/* F6C10 8004D700 02202021 */  addu       $a0, $s1, $zero
/* F6C14 8004D704 240500E7 */  addiu      $a1, $zero, 0xe7
/* F6C18 8004D708 AE200014 */  sw         $zero, 0x14($s1)
/* F6C1C 8004D70C E6360028 */  swc1       $f22, 0x28($s1)
/* F6C20 8004D710 AE20001C */  sw         $zero, 0x1c($s1)
/* F6C24 8004D714 AE200024 */  sw         $zero, 0x24($s1)
/* F6C28 8004D718 A6300074 */  sh         $s0, 0x74($s1)
/* F6C2C 8004D71C A6300076 */  sh         $s0, 0x76($s1)
/* F6C30 8004D720 A6300078 */  sh         $s0, 0x78($s1)
/* F6C34 8004D724 A630007A */  sh         $s0, 0x7a($s1)
/* F6C38 8004D728 E6200010 */  swc1       $f0, 0x10($s1)
/* F6C3C 8004D72C E6220018 */  swc1       $f2, 0x18($s1)
/* F6C40 8004D730 0C00DFE6 */  jal        func_80037F98_E14A8
/* F6C44 8004D734 E6240020 */   swc1      $f4, 0x20($s1)
/* F6C48 8004D738 8E220004 */  lw         $v0, 4($s1)
/* F6C4C 8004D73C A0400067 */  sb         $zero, 0x67($v0)
/* F6C50 8004D740 8E230004 */  lw         $v1, 4($s1)
/* F6C54 8004D744 90620066 */  lbu        $v0, 0x66($v1)
/* F6C58 8004D748 24040005 */  addiu      $a0, $zero, 5
/* F6C5C 8004D74C 34420007 */  ori        $v0, $v0, 7
/* F6C60 8004D750 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F6C64 8004D754 A0620066 */   sb        $v0, 0x66($v1)
/* F6C68 8004D758 00408821 */  addu       $s1, $v0, $zero
/* F6C6C 8004D75C 3C014040 */  lui        $at, 0x4040
/* F6C70 8004D760 44810000 */  mtc1       $at, $f0
/* F6C74 8004D764 3C01C000 */  lui        $at, 0xc000
/* F6C78 8004D768 44811000 */  mtc1       $at, $f2
/* F6C7C 8004D76C 3C01C140 */  lui        $at, 0xc140
/* F6C80 8004D770 44812000 */  mtc1       $at, $f4
/* F6C84 8004D774 3C014120 */  lui        $at, 0x4120
/* F6C88 8004D778 44813000 */  mtc1       $at, $f6
/* F6C8C 8004D77C 02202021 */  addu       $a0, $s1, $zero
/* F6C90 8004D780 240500E8 */  addiu      $a1, $zero, 0xe8
/* F6C94 8004D784 E6360028 */  swc1       $f22, 0x28($s1)
/* F6C98 8004D788 AE20001C */  sw         $zero, 0x1c($s1)
/* F6C9C 8004D78C AE200024 */  sw         $zero, 0x24($s1)
/* F6CA0 8004D790 A6300074 */  sh         $s0, 0x74($s1)
/* F6CA4 8004D794 A6300076 */  sh         $s0, 0x76($s1)
/* F6CA8 8004D798 A6300078 */  sh         $s0, 0x78($s1)
/* F6CAC 8004D79C A630007A */  sh         $s0, 0x7a($s1)
/* F6CB0 8004D7A0 E6200010 */  swc1       $f0, 0x10($s1)
/* F6CB4 8004D7A4 E6220014 */  swc1       $f2, 0x14($s1)
/* F6CB8 8004D7A8 E6240018 */  swc1       $f4, 0x18($s1)
/* F6CBC 8004D7AC 0C00DFE6 */  jal        func_80037F98_E14A8
/* F6CC0 8004D7B0 E6260020 */   swc1      $f6, 0x20($s1)
/* F6CC4 8004D7B4 8E220004 */  lw         $v0, 4($s1)
/* F6CC8 8004D7B8 3C014110 */  lui        $at, 0x4110
/* F6CCC 8004D7BC 44810000 */  mtc1       $at, $f0
/* F6CD0 8004D7C0 3C013F80 */  lui        $at, 0x3f80
/* F6CD4 8004D7C4 4481A000 */  mtc1       $at, $f20
/* F6CD8 8004D7C8 A0400067 */  sb         $zero, 0x67($v0)
/* F6CDC 8004D7CC 8E230004 */  lw         $v1, 4($s1)
/* F6CE0 8004D7D0 3C01C0E0 */  lui        $at, 0xc0e0
/* F6CE4 8004D7D4 44811000 */  mtc1       $at, $f2
/* F6CE8 8004D7D8 3C01433E */  lui        $at, 0x433e
/* F6CEC 8004D7DC 44812000 */  mtc1       $at, $f4
/* F6CF0 8004D7E0 90620066 */  lbu        $v0, 0x66($v1)
/* F6CF4 8004D7E4 3C01C210 */  lui        $at, 0xc210
/* F6CF8 8004D7E8 44813000 */  mtc1       $at, $f6
/* F6CFC 8004D7EC 34420007 */  ori        $v0, $v0, 7
/* F6D00 8004D7F0 A0620066 */  sb         $v0, 0x66($v1)
/* F6D04 8004D7F4 3C018015 */  lui        $at, %hi(D_8014A064)
/* F6D08 8004D7F8 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F6D0C 8004D7FC 3C018015 */  lui        $at, %hi(D_8014A068)
/* F6D10 8004D800 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* F6D14 8004D804 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F6D18 8004D808 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F6D1C 8004D80C 3C018015 */  lui        $at, %hi(D_8014A070)
/* F6D20 8004D810 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F6D24 8004D814 3C018015 */  lui        $at, %hi(D_8014A074)
/* F6D28 8004D818 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* F6D2C 8004D81C 3C018015 */  lui        $at, %hi(D_8014A078)
/* F6D30 8004D820 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F6D34 8004D824 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F6D38 8004D828 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F6D3C 8004D82C 3C018015 */  lui        $at, %hi(D_8014A080)
/* F6D40 8004D830 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F6D44 8004D834 3C018015 */  lui        $at, %hi(D_8014A084)
/* F6D48 8004D838 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F6D4C 8004D83C 3C018015 */  lui        $at, %hi(D_8014A088)
/* F6D50 8004D840 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* F6D54 8004D844 0C00E339 */  jal        func_80038CE4_E21F4
/* F6D58 8004D848 24120001 */   addiu     $s2, $zero, 1
/* F6D5C 8004D84C 240401C7 */  addiu      $a0, $zero, 0x1c7
/* F6D60 8004D850 3C01406C */  lui        $at, 0x406c
/* F6D64 8004D854 3421CCCD */  ori        $at, $at, 0xcccd
/* F6D68 8004D858 44810000 */  mtc1       $at, $f0
/* F6D6C 8004D85C 24050006 */  addiu      $a1, $zero, 6
/* F6D70 8004D860 3C018015 */  lui        $at, %hi(D_8014A054)
/* F6D74 8004D864 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F6D78 8004D868 3C018015 */  lui        $at, %hi(D_8014A050)
/* F6D7C 8004D86C AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* F6D80 8004D870 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F6D84 8004D874 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F6D88 8004D878 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F6D8C 8004D87C E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* F6D90 8004D880 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F6D94 8004D884 E434D0D4 */  swc1       $f20, %lo(D_8016D0D4)($at)
/* F6D98 8004D888 3C018017 */  lui        $at, %hi(D_8016E568)
/* F6D9C 8004D88C E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* F6DA0 8004D890 0C00D925 */  jal        func_80036494_DF9A4
/* F6DA4 8004D894 24060021 */   addiu     $a2, $zero, 0x21
/* F6DA8 8004D898 00408821 */  addu       $s1, $v0, $zero
/* F6DAC 8004D89C 8E24000C */  lw         $a0, 0xc($s1)
/* F6DB0 8004D8A0 24050040 */  addiu      $a1, $zero, 0x40
/* F6DB4 8004D8A4 0C028D89 */  jal        func_800A3624
/* F6DB8 8004D8A8 24060040 */   addiu     $a2, $zero, 0x40
/* F6DBC 8004D8AC 8E24000C */  lw         $a0, 0xc($s1)
/* F6DC0 8004D8B0 24050200 */  addiu      $a1, $zero, 0x200
/* F6DC4 8004D8B4 0C0292D4 */  jal        func_800A4B50
/* F6DC8 8004D8B8 24060200 */   addiu     $a2, $zero, 0x200
/* F6DCC 8004D8BC 8E23000C */  lw         $v1, 0xc($s1)
/* F6DD0 8004D8C0 9462001E */  lhu        $v0, 0x1e($v1)
/* F6DD4 8004D8C4 24040008 */  addiu      $a0, $zero, 8
/* F6DD8 8004D8C8 24050001 */  addiu      $a1, $zero, 1
/* F6DDC 8004D8CC 34420104 */  ori        $v0, $v0, 0x104
/* F6DE0 8004D8D0 A462001E */  sh         $v0, 0x1e($v1)
/* F6DE4 8004D8D4 8E23000C */  lw         $v1, 0xc($s1)
/* F6DE8 8004D8D8 2406003B */  addiu      $a2, $zero, 0x3b
/* F6DEC 8004D8DC 24020001 */  addiu      $v0, $zero, 1
/* F6DF0 8004D8E0 0C00D925 */  jal        func_80036494_DF9A4
/* F6DF4 8004D8E4 A462001C */   sh        $v0, 0x1c($v1)
/* F6DF8 8004D8E8 00408821 */  addu       $s1, $v0, $zero
/* F6DFC 8004D8EC 8E24000C */  lw         $a0, 0xc($s1)
/* F6E00 8004D8F0 24050066 */  addiu      $a1, $zero, 0x66
/* F6E04 8004D8F4 0C028F9A */  jal        func_800A3E68
/* F6E08 8004D8F8 24061400 */   addiu     $a2, $zero, 0x1400
/* F6E0C 8004D8FC 8E24000C */  lw         $a0, 0xc($s1)
/* F6E10 8004D900 24050040 */  addiu      $a1, $zero, 0x40
/* F6E14 8004D904 0C028D89 */  jal        func_800A3624
/* F6E18 8004D908 240601A0 */   addiu     $a2, $zero, 0x1a0
/* F6E1C 8004D90C AFA00010 */  sw         $zero, 0x10($sp)
/* F6E20 8004D910 8E24000C */  lw         $a0, 0xc($s1)
/* F6E24 8004D914 240500FF */  addiu      $a1, $zero, 0xff
/* F6E28 8004D918 240600FF */  addiu      $a2, $zero, 0xff
/* F6E2C 8004D91C 0C028E41 */  jal        func_800A3904
/* F6E30 8004D920 240700FF */   addiu     $a3, $zero, 0xff
/* F6E34 8004D924 8E23000C */  lw         $v1, 0xc($s1)
/* F6E38 8004D928 24130043 */  addiu      $s3, $zero, 0x43
/* F6E3C 8004D92C 24020043 */  addiu      $v0, $zero, 0x43
/* F6E40 8004D930 A462001C */  sh         $v0, 0x1c($v1)
/* F6E44 8004D934 2404003B */  addiu      $a0, $zero, 0x3b
.L8004D938:
/* F6E48 8004D938 324500FF */  andi       $a1, $s2, 0xff
/* F6E4C 8004D93C 0C00DD19 */  jal        func_80037464_E0974
/* F6E50 8004D940 24A5003B */   addiu     $a1, $a1, 0x3b
/* F6E54 8004D944 00408821 */  addu       $s1, $v0, $zero
/* F6E58 8004D948 8E24000C */  lw         $a0, 0xc($s1)
/* F6E5C 8004D94C 24050066 */  addiu      $a1, $zero, 0x66
/* F6E60 8004D950 0C028F9A */  jal        func_800A3E68
/* F6E64 8004D954 24061400 */   addiu     $a2, $zero, 0x1400
/* F6E68 8004D958 8E24000C */  lw         $a0, 0xc($s1)
/* F6E6C 8004D95C 24050040 */  addiu      $a1, $zero, 0x40
/* F6E70 8004D960 325000FF */  andi       $s0, $s2, 0xff
/* F6E74 8004D964 001030C0 */  sll        $a2, $s0, 3
/* F6E78 8004D968 0C028D89 */  jal        func_800A3624
/* F6E7C 8004D96C 24C601A0 */   addiu     $a2, $a2, 0x1a0
/* F6E80 8004D970 001080C0 */  sll        $s0, $s0, 3
/* F6E84 8004D974 321000FF */  andi       $s0, $s0, 0xff
/* F6E88 8004D978 AFB00010 */  sw         $s0, 0x10($sp)
/* F6E8C 8004D97C 8E24000C */  lw         $a0, 0xc($s1)
/* F6E90 8004D980 240500FF */  addiu      $a1, $zero, 0xff
/* F6E94 8004D984 240600FF */  addiu      $a2, $zero, 0xff
/* F6E98 8004D988 0C028E41 */  jal        func_800A3904
/* F6E9C 8004D98C 240700FF */   addiu     $a3, $zero, 0xff
/* F6EA0 8004D990 8E22000C */  lw         $v0, 0xc($s1)
/* F6EA4 8004D994 26520001 */  addiu      $s2, $s2, 1
/* F6EA8 8004D998 A453001C */  sh         $s3, 0x1c($v0)
/* F6EAC 8004D99C 324200FF */  andi       $v0, $s2, 0xff
/* F6EB0 8004D9A0 2C420020 */  sltiu      $v0, $v0, 0x20
/* F6EB4 8004D9A4 1440FFE4 */  bnez       $v0, .L8004D938
/* F6EB8 8004D9A8 2404003B */   addiu     $a0, $zero, 0x3b
/* F6EBC 8004D9AC 8E24000C */  lw         $a0, 0xc($s1)
/* F6EC0 8004D9B0 24050066 */  addiu      $a1, $zero, 0x66
/* F6EC4 8004D9B4 0C028F9A */  jal        func_800A3E68
/* F6EC8 8004D9B8 24060155 */   addiu     $a2, $zero, 0x155
/* F6ECC 8004D9BC 240401BC */  addiu      $a0, $zero, 0x1bc
/* F6ED0 8004D9C0 24050002 */  addiu      $a1, $zero, 2
/* F6ED4 8004D9C4 0C00D925 */  jal        func_80036494_DF9A4
/* F6ED8 8004D9C8 2406001F */   addiu     $a2, $zero, 0x1f
/* F6EDC 8004D9CC 00408821 */  addu       $s1, $v0, $zero
/* F6EE0 8004D9D0 8E24000C */  lw         $a0, 0xc($s1)
/* F6EE4 8004D9D4 8C82000C */  lw         $v0, 0xc($a0)
/* F6EE8 8004D9D8 84460002 */  lh         $a2, 2($v0)
/* F6EEC 8004D9DC 0C02912A */  jal        func_800A44A8
/* F6EF0 8004D9E0 00002821 */   addu      $a1, $zero, $zero
/* F6EF4 8004D9E4 8E24000C */  lw         $a0, 0xc($s1)
/* F6EF8 8004D9E8 24050040 */  addiu      $a1, $zero, 0x40
/* F6EFC 8004D9EC 0C028D89 */  jal        func_800A3624
/* F6F00 8004D9F0 24060380 */   addiu     $a2, $zero, 0x380
/* F6F04 8004D9F4 8FBF0030 */  lw         $ra, 0x30($sp)
/* F6F08 8004D9F8 8FB3002C */  lw         $s3, 0x2c($sp)
/* F6F0C 8004D9FC 8FB20028 */  lw         $s2, 0x28($sp)
/* F6F10 8004DA00 8FB10024 */  lw         $s1, 0x24($sp)
/* F6F14 8004DA04 8FB00020 */  lw         $s0, 0x20($sp)
/* F6F18 8004DA08 D7B60040 */  ldc1       $f22, 0x40($sp)
/* F6F1C 8004DA0C D7B40038 */  ldc1       $f20, 0x38($sp)
/* F6F20 8004DA10 03E00008 */  jr         $ra
/* F6F24 8004DA14 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8004DA18_F6F28
/* F6F28 8004DA18 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F6F2C 8004DA1C AFBF001C */  sw         $ra, 0x1c($sp)
/* F6F30 8004DA20 AFB00018 */  sw         $s0, 0x18($sp)
/* F6F34 8004DA24 0C00E109 */  jal        func_80038424_E1934
/* F6F38 8004DA28 F7B40020 */   sdc1      $f20, 0x20($sp)
/* F6F3C 8004DA2C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F6F40 8004DA30 24040006 */   addiu     $a0, $zero, 6
/* F6F44 8004DA34 00408021 */  addu       $s0, $v0, $zero
/* F6F48 8004DA38 3C01C000 */  lui        $at, 0xc000
/* F6F4C 8004DA3C 44810000 */  mtc1       $at, $f0
/* F6F50 8004DA40 3C013CA3 */  lui        $at, 0x3ca3
/* F6F54 8004DA44 3421D70A */  ori        $at, $at, 0xd70a
/* F6F58 8004DA48 44811000 */  mtc1       $at, $f2
/* F6F5C 8004DA4C 3C01BF00 */  lui        $at, 0xbf00
/* F6F60 8004DA50 44812000 */  mtc1       $at, $f4
/* F6F64 8004DA54 02002021 */  addu       $a0, $s0, $zero
/* F6F68 8004DA58 240500E9 */  addiu      $a1, $zero, 0xe9
/* F6F6C 8004DA5C 240200FF */  addiu      $v0, $zero, 0xff
/* F6F70 8004DA60 AE000014 */  sw         $zero, 0x14($s0)
/* F6F74 8004DA64 AE000018 */  sw         $zero, 0x18($s0)
/* F6F78 8004DA68 AE00001C */  sw         $zero, 0x1c($s0)
/* F6F7C 8004DA6C AE000020 */  sw         $zero, 0x20($s0)
/* F6F80 8004DA70 A6020074 */  sh         $v0, 0x74($s0)
/* F6F84 8004DA74 A6020076 */  sh         $v0, 0x76($s0)
/* F6F88 8004DA78 A6020078 */  sh         $v0, 0x78($s0)
/* F6F8C 8004DA7C A602007A */  sh         $v0, 0x7a($s0)
/* F6F90 8004DA80 E6000010 */  swc1       $f0, 0x10($s0)
/* F6F94 8004DA84 E6020028 */  swc1       $f2, 0x28($s0)
/* F6F98 8004DA88 0C00DFE6 */  jal        func_80037F98_E14A8
/* F6F9C 8004DA8C E6040024 */   swc1      $f4, 0x24($s0)
/* F6FA0 8004DA90 8E020004 */  lw         $v0, 4($s0)
/* F6FA4 8004DA94 3C0140C0 */  lui        $at, 0x40c0
/* F6FA8 8004DA98 44810000 */  mtc1       $at, $f0
/* F6FAC 8004DA9C A0400067 */  sb         $zero, 0x67($v0)
/* F6FB0 8004DAA0 8E030004 */  lw         $v1, 4($s0)
/* F6FB4 8004DAA4 3C013F80 */  lui        $at, 0x3f80
/* F6FB8 8004DAA8 4481A000 */  mtc1       $at, $f20
/* F6FBC 8004DAAC 3C014324 */  lui        $at, 0x4324
/* F6FC0 8004DAB0 44811000 */  mtc1       $at, $f2
/* F6FC4 8004DAB4 90620066 */  lbu        $v0, 0x66($v1)
/* F6FC8 8004DAB8 3C01C1D0 */  lui        $at, 0xc1d0
/* F6FCC 8004DABC 44812000 */  mtc1       $at, $f4
/* F6FD0 8004DAC0 34420015 */  ori        $v0, $v0, 0x15
/* F6FD4 8004DAC4 A0620066 */  sb         $v0, 0x66($v1)
/* F6FD8 8004DAC8 3C018015 */  lui        $at, %hi(D_8014A064)
/* F6FDC 8004DACC AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F6FE0 8004DAD0 3C018015 */  lui        $at, %hi(D_8014A068)
/* F6FE4 8004DAD4 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* F6FE8 8004DAD8 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F6FEC 8004DADC AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F6FF0 8004DAE0 3C018015 */  lui        $at, %hi(D_8014A070)
/* F6FF4 8004DAE4 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F6FF8 8004DAE8 3C018015 */  lui        $at, %hi(D_8014A074)
/* F6FFC 8004DAEC E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* F7000 8004DAF0 3C018015 */  lui        $at, %hi(D_8014A078)
/* F7004 8004DAF4 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F7008 8004DAF8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F700C 8004DAFC AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* F7010 8004DB00 3C018015 */  lui        $at, %hi(D_8014A080)
/* F7014 8004DB04 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* F7018 8004DB08 3C018015 */  lui        $at, %hi(D_8014A084)
/* F701C 8004DB0C AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F7020 8004DB10 3C018015 */  lui        $at, %hi(D_8014A088)
/* F7024 8004DB14 0C00E339 */  jal        func_80038CE4_E21F4
/* F7028 8004DB18 E424A088 */   swc1      $f4, %lo(D_8014A088)($at)
/* F702C 8004DB1C 240401C6 */  addiu      $a0, $zero, 0x1c6
/* F7030 8004DB20 3C013FD9 */  lui        $at, 0x3fd9
/* F7034 8004DB24 3421999A */  ori        $at, $at, 0x999a
/* F7038 8004DB28 44810000 */  mtc1       $at, $f0
/* F703C 8004DB2C 24050002 */  addiu      $a1, $zero, 2
/* F7040 8004DB30 3C018015 */  lui        $at, %hi(D_8014A054)
/* F7044 8004DB34 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F7048 8004DB38 3C018015 */  lui        $at, %hi(D_8014A050)
/* F704C 8004DB3C AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* F7050 8004DB40 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F7054 8004DB44 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F7058 8004DB48 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F705C 8004DB4C E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* F7060 8004DB50 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F7064 8004DB54 E434D0D4 */  swc1       $f20, %lo(D_8016D0D4)($at)
/* F7068 8004DB58 3C018017 */  lui        $at, %hi(D_8016E568)
/* F706C 8004DB5C E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* F7070 8004DB60 0C00D925 */  jal        func_80036494_DF9A4
/* F7074 8004DB64 24060022 */   addiu     $a2, $zero, 0x22
/* F7078 8004DB68 00408021 */  addu       $s0, $v0, $zero
/* F707C 8004DB6C 8E04000C */  lw         $a0, 0xc($s0)
/* F7080 8004DB70 24050040 */  addiu      $a1, $zero, 0x40
/* F7084 8004DB74 0C028D89 */  jal        func_800A3624
/* F7088 8004DB78 24060040 */   addiu     $a2, $zero, 0x40
/* F708C 8004DB7C 240200C0 */  addiu      $v0, $zero, 0xc0
/* F7090 8004DB80 AFA20010 */  sw         $v0, 0x10($sp)
/* F7094 8004DB84 8E04000C */  lw         $a0, 0xc($s0)
/* F7098 8004DB88 240500FF */  addiu      $a1, $zero, 0xff
/* F709C 8004DB8C 240600FF */  addiu      $a2, $zero, 0xff
/* F70A0 8004DB90 0C028E41 */  jal        func_800A3904
/* F70A4 8004DB94 240700FF */   addiu     $a3, $zero, 0xff
/* F70A8 8004DB98 8E03000C */  lw         $v1, 0xc($s0)
/* F70AC 8004DB9C 240401C5 */  addiu      $a0, $zero, 0x1c5
/* F70B0 8004DBA0 9462001E */  lhu        $v0, 0x1e($v1)
/* F70B4 8004DBA4 24050005 */  addiu      $a1, $zero, 5
/* F70B8 8004DBA8 24060023 */  addiu      $a2, $zero, 0x23
/* F70BC 8004DBAC 34420004 */  ori        $v0, $v0, 4
/* F70C0 8004DBB0 0C00D925 */  jal        func_80036494_DF9A4
/* F70C4 8004DBB4 A462001E */   sh        $v0, 0x1e($v1)
/* F70C8 8004DBB8 8C44000C */  lw         $a0, 0xc($v0)
/* F70CC 8004DBBC 24050440 */  addiu      $a1, $zero, 0x440
/* F70D0 8004DBC0 0C028D89 */  jal        func_800A3624
/* F70D4 8004DBC4 24060040 */   addiu     $a2, $zero, 0x40
/* F70D8 8004DBC8 240401C1 */  addiu      $a0, $zero, 0x1c1
/* F70DC 8004DBCC 00002821 */  addu       $a1, $zero, $zero
/* F70E0 8004DBD0 0C00D925 */  jal        func_80036494_DF9A4
/* F70E4 8004DBD4 24060024 */   addiu     $a2, $zero, 0x24
/* F70E8 8004DBD8 8C44000C */  lw         $a0, 0xc($v0)
/* F70EC 8004DBDC 2405040C */  addiu      $a1, $zero, 0x40c
/* F70F0 8004DBE0 0C028D89 */  jal        func_800A3624
/* F70F4 8004DBE4 240602CC */   addiu     $a2, $zero, 0x2cc
/* F70F8 8004DBE8 240401BD */  addiu      $a0, $zero, 0x1bd
/* F70FC 8004DBEC 00002821 */  addu       $a1, $zero, $zero
/* F7100 8004DBF0 0C00D925 */  jal        func_80036494_DF9A4
/* F7104 8004DBF4 24060025 */   addiu     $a2, $zero, 0x25
/* F7108 8004DBF8 8C44000C */  lw         $a0, 0xc($v0)
/* F710C 8004DBFC 24050284 */  addiu      $a1, $zero, 0x284
/* F7110 8004DC00 0C028D89 */  jal        func_800A3624
/* F7114 8004DC04 24060174 */   addiu     $a2, $zero, 0x174
/* F7118 8004DC08 240401BE */  addiu      $a0, $zero, 0x1be
/* F711C 8004DC0C 00002821 */  addu       $a1, $zero, $zero
/* F7120 8004DC10 0C00D925 */  jal        func_80036494_DF9A4
/* F7124 8004DC14 24060026 */   addiu     $a2, $zero, 0x26
/* F7128 8004DC18 8C44000C */  lw         $a0, 0xc($v0)
/* F712C 8004DC1C 24050318 */  addiu      $a1, $zero, 0x318
/* F7130 8004DC20 0C028D89 */  jal        func_800A3624
/* F7134 8004DC24 240601C4 */   addiu     $a2, $zero, 0x1c4
/* F7138 8004DC28 240401BF */  addiu      $a0, $zero, 0x1bf
/* F713C 8004DC2C 00002821 */  addu       $a1, $zero, $zero
/* F7140 8004DC30 0C00D925 */  jal        func_80036494_DF9A4
/* F7144 8004DC34 24060027 */   addiu     $a2, $zero, 0x27
/* F7148 8004DC38 8C44000C */  lw         $a0, 0xc($v0)
/* F714C 8004DC3C 240503A8 */  addiu      $a1, $zero, 0x3a8
/* F7150 8004DC40 0C028D89 */  jal        func_800A3624
/* F7154 8004DC44 24060178 */   addiu     $a2, $zero, 0x178
/* F7158 8004DC48 240401C4 */  addiu      $a0, $zero, 0x1c4
/* F715C 8004DC4C 24050005 */  addiu      $a1, $zero, 5
/* F7160 8004DC50 0C00D925 */  jal        func_80036494_DF9A4
/* F7164 8004DC54 24060028 */   addiu     $a2, $zero, 0x28
/* F7168 8004DC58 8C44000C */  lw         $a0, 0xc($v0)
/* F716C 8004DC5C 24050100 */  addiu      $a1, $zero, 0x100
/* F7170 8004DC60 0C028D89 */  jal        func_800A3624
/* F7174 8004DC64 24060170 */   addiu     $a2, $zero, 0x170
/* F7178 8004DC68 240401C3 */  addiu      $a0, $zero, 0x1c3
/* F717C 8004DC6C 24050005 */  addiu      $a1, $zero, 5
/* F7180 8004DC70 0C00D925 */  jal        func_80036494_DF9A4
/* F7184 8004DC74 24060029 */   addiu     $a2, $zero, 0x29
/* F7188 8004DC78 8C44000C */  lw         $a0, 0xc($v0)
/* F718C 8004DC7C 24050040 */  addiu      $a1, $zero, 0x40
/* F7190 8004DC80 0C028D89 */  jal        func_800A3624
/* F7194 8004DC84 24060040 */   addiu     $a2, $zero, 0x40
/* F7198 8004DC88 240401C2 */  addiu      $a0, $zero, 0x1c2
/* F719C 8004DC8C 00002821 */  addu       $a1, $zero, $zero
/* F71A0 8004DC90 0C00D925 */  jal        func_80036494_DF9A4
/* F71A4 8004DC94 2406002A */   addiu     $a2, $zero, 0x2a
/* F71A8 8004DC98 8C44000C */  lw         $a0, 0xc($v0)
/* F71AC 8004DC9C 24050354 */  addiu      $a1, $zero, 0x354
/* F71B0 8004DCA0 0C028D89 */  jal        func_800A3624
/* F71B4 8004DCA4 24060220 */   addiu     $a2, $zero, 0x220
/* F71B8 8004DCA8 2404002A */  addiu      $a0, $zero, 0x2a
/* F71BC 8004DCAC 0C00DD19 */  jal        func_80037464_E0974
/* F71C0 8004DCB0 2405002B */   addiu     $a1, $zero, 0x2b
/* F71C4 8004DCB4 8C44000C */  lw         $a0, 0xc($v0)
/* F71C8 8004DCB8 2405028C */  addiu      $a1, $zero, 0x28c
/* F71CC 8004DCBC 0C028D89 */  jal        func_800A3624
/* F71D0 8004DCC0 24060220 */   addiu     $a2, $zero, 0x220
/* F71D4 8004DCC4 2404002A */  addiu      $a0, $zero, 0x2a
/* F71D8 8004DCC8 0C00DD19 */  jal        func_80037464_E0974
/* F71DC 8004DCCC 2405002C */   addiu     $a1, $zero, 0x2c
/* F71E0 8004DCD0 8C44000C */  lw         $a0, 0xc($v0)
/* F71E4 8004DCD4 240501B8 */  addiu      $a1, $zero, 0x1b8
/* F71E8 8004DCD8 0C028D89 */  jal        func_800A3624
/* F71EC 8004DCDC 24060228 */   addiu     $a2, $zero, 0x228
/* F71F0 8004DCE0 2404002A */  addiu      $a0, $zero, 0x2a
/* F71F4 8004DCE4 0C00DD19 */  jal        func_80037464_E0974
/* F71F8 8004DCE8 2405002D */   addiu     $a1, $zero, 0x2d
/* F71FC 8004DCEC 8C44000C */  lw         $a0, 0xc($v0)
/* F7200 8004DCF0 24050020 */  addiu      $a1, $zero, 0x20
/* F7204 8004DCF4 0C028D89 */  jal        func_800A3624
/* F7208 8004DCF8 24060218 */   addiu     $a2, $zero, 0x218
/* F720C 8004DCFC 240401C0 */  addiu      $a0, $zero, 0x1c0
/* F7210 8004DD00 24050005 */  addiu      $a1, $zero, 5
/* F7214 8004DD04 0C00D925 */  jal        func_80036494_DF9A4
/* F7218 8004DD08 2406002E */   addiu     $a2, $zero, 0x2e
/* F721C 8004DD0C 8C44000C */  lw         $a0, 0xc($v0)
/* F7220 8004DD10 24050310 */  addiu      $a1, $zero, 0x310
/* F7224 8004DD14 0C028D89 */  jal        func_800A3624
/* F7228 8004DD18 240602E4 */   addiu     $a2, $zero, 0x2e4
/* F722C 8004DD1C 8FBF001C */  lw         $ra, 0x1c($sp)
/* F7230 8004DD20 8FB00018 */  lw         $s0, 0x18($sp)
/* F7234 8004DD24 D7B40020 */  ldc1       $f20, 0x20($sp)
/* F7238 8004DD28 03E00008 */  jr         $ra
/* F723C 8004DD2C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004DD30_F7240
/* F7240 8004DD30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F7244 8004DD34 AFBF001C */  sw         $ra, 0x1c($sp)
/* F7248 8004DD38 0C00E109 */  jal        func_80038424_E1934
/* F724C 8004DD3C AFB00018 */   sw        $s0, 0x18($sp)
/* F7250 8004DD40 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F7254 8004DD44 24040007 */   addiu     $a0, $zero, 7
/* F7258 8004DD48 00408021 */  addu       $s0, $v0, $zero
/* F725C 8004DD4C 3C014316 */  lui        $at, 0x4316
/* F7260 8004DD50 44810000 */  mtc1       $at, $f0
/* F7264 8004DD54 3C013CA3 */  lui        $at, 0x3ca3
/* F7268 8004DD58 3421D70A */  ori        $at, $at, 0xd70a
/* F726C 8004DD5C 44811000 */  mtc1       $at, $f2
/* F7270 8004DD60 02002021 */  addu       $a0, $s0, $zero
/* F7274 8004DD64 24050001 */  addiu      $a1, $zero, 1
/* F7278 8004DD68 240200FF */  addiu      $v0, $zero, 0xff
/* F727C 8004DD6C A6020074 */  sh         $v0, 0x74($s0)
/* F7280 8004DD70 A6020076 */  sh         $v0, 0x76($s0)
/* F7284 8004DD74 A6020078 */  sh         $v0, 0x78($s0)
/* F7288 8004DD78 A602007A */  sh         $v0, 0x7a($s0)
/* F728C 8004DD7C 2402FFFF */  addiu      $v0, $zero, -1
/* F7290 8004DD80 AE000010 */  sw         $zero, 0x10($s0)
/* F7294 8004DD84 AE000014 */  sw         $zero, 0x14($s0)
/* F7298 8004DD88 AE00001C */  sw         $zero, 0x1c($s0)
/* F729C 8004DD8C AE000020 */  sw         $zero, 0x20($s0)
/* F72A0 8004DD90 AE000024 */  sw         $zero, 0x24($s0)
/* F72A4 8004DD94 A6020070 */  sh         $v0, 0x70($s0)
/* F72A8 8004DD98 E6000018 */  swc1       $f0, 0x18($s0)
/* F72AC 8004DD9C 0C00DFE6 */  jal        func_80037F98_E14A8
/* F72B0 8004DDA0 E6020028 */   swc1      $f2, 0x28($s0)
/* F72B4 8004DDA4 8E020004 */  lw         $v0, 4($s0)
/* F72B8 8004DDA8 3C048031 */  lui        $a0, 0x8031
/* F72BC 8004DDAC 34847420 */  ori        $a0, $a0, 0x7420
/* F72C0 8004DDB0 3C013F80 */  lui        $at, 0x3f80
/* F72C4 8004DDB4 44810000 */  mtc1       $at, $f0
/* F72C8 8004DDB8 240501C8 */  addiu      $a1, $zero, 0x1c8
/* F72CC 8004DDBC 24060007 */  addiu      $a2, $zero, 7
/* F72D0 8004DDC0 A0400067 */  sb         $zero, 0x67($v0)
/* F72D4 8004DDC4 8E030004 */  lw         $v1, 4($s0)
/* F72D8 8004DDC8 3C01C0A0 */  lui        $at, 0xc0a0
/* F72DC 8004DDCC 44811000 */  mtc1       $at, $f2
/* F72E0 8004DDD0 3C01429E */  lui        $at, 0x429e
/* F72E4 8004DDD4 44812000 */  mtc1       $at, $f4
/* F72E8 8004DDD8 90620066 */  lbu        $v0, 0x66($v1)
/* F72EC 8004DDDC 3C01C270 */  lui        $at, 0xc270
/* F72F0 8004DDE0 44813000 */  mtc1       $at, $f6
/* F72F4 8004DDE4 34420011 */  ori        $v0, $v0, 0x11
/* F72F8 8004DDE8 A0620066 */  sb         $v0, 0x66($v1)
/* F72FC 8004DDEC 3C018015 */  lui        $at, %hi(D_8014A064)
/* F7300 8004DDF0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F7304 8004DDF4 3C018015 */  lui        $at, %hi(D_8014A068)
/* F7308 8004DDF8 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* F730C 8004DDFC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F7310 8004DE00 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F7314 8004DE04 3C018015 */  lui        $at, %hi(D_8014A070)
/* F7318 8004DE08 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F731C 8004DE0C 3C018015 */  lui        $at, %hi(D_8014A074)
/* F7320 8004DE10 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* F7324 8004DE14 3C018015 */  lui        $at, %hi(D_8014A078)
/* F7328 8004DE18 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F732C 8004DE1C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F7330 8004DE20 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F7334 8004DE24 3C018015 */  lui        $at, %hi(D_8014A080)
/* F7338 8004DE28 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F733C 8004DE2C 3C018015 */  lui        $at, %hi(D_8014A084)
/* F7340 8004DE30 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F7344 8004DE34 3C018015 */  lui        $at, %hi(D_8014A088)
/* F7348 8004DE38 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* F734C 8004DE3C 0C00D9E0 */  jal        func_80036780_DFC90
/* F7350 8004DE40 24070021 */   addiu     $a3, $zero, 0x21
/* F7354 8004DE44 00408021 */  addu       $s0, $v0, $zero
/* F7358 8004DE48 8E04000C */  lw         $a0, 0xc($s0)
/* F735C 8004DE4C 24050044 */  addiu      $a1, $zero, 0x44
/* F7360 8004DE50 0C028D89 */  jal        func_800A3624
/* F7364 8004DE54 24060040 */   addiu     $a2, $zero, 0x40
/* F7368 8004DE58 3C014000 */  lui        $at, 0x4000
/* F736C 8004DE5C 44810000 */  mtc1       $at, $f0
/* F7370 8004DE60 8E04000C */  lw         $a0, 0xc($s0)
/* F7374 8004DE64 44060000 */  mfc1       $a2, $f0
/* F7378 8004DE68 00002821 */  addu       $a1, $zero, $zero
/* F737C 8004DE6C 0C02915B */  jal        func_800A456C
/* F7380 8004DE70 00C03821 */   addu      $a3, $a2, $zero
/* F7384 8004DE74 8E03000C */  lw         $v1, 0xc($s0)
/* F7388 8004DE78 9462001E */  lhu        $v0, 0x1e($v1)
/* F738C 8004DE7C 240401CF */  addiu      $a0, $zero, 0x1cf
/* F7390 8004DE80 24050005 */  addiu      $a1, $zero, 5
/* F7394 8004DE84 34420104 */  ori        $v0, $v0, 0x104
/* F7398 8004DE88 A462001E */  sh         $v0, 0x1e($v1)
/* F739C 8004DE8C 8E03000C */  lw         $v1, 0xc($s0)
/* F73A0 8004DE90 24060032 */  addiu      $a2, $zero, 0x32
/* F73A4 8004DE94 24020001 */  addiu      $v0, $zero, 1
/* F73A8 8004DE98 0C00D925 */  jal        func_80036494_DF9A4
/* F73AC 8004DE9C A462001C */   sh        $v0, 0x1c($v1)
/* F73B0 8004DEA0 8C44000C */  lw         $a0, 0xc($v0)
/* F73B4 8004DEA4 240500F0 */  addiu      $a1, $zero, 0xf0
/* F73B8 8004DEA8 0C028D89 */  jal        func_800A3624
/* F73BC 8004DEAC 24060270 */   addiu     $a2, $zero, 0x270
/* F73C0 8004DEB0 240401D0 */  addiu      $a0, $zero, 0x1d0
/* F73C4 8004DEB4 24050005 */  addiu      $a1, $zero, 5
/* F73C8 8004DEB8 0C00D925 */  jal        func_80036494_DF9A4
/* F73CC 8004DEBC 2406002F */   addiu     $a2, $zero, 0x2f
/* F73D0 8004DEC0 8C44000C */  lw         $a0, 0xc($v0)
/* F73D4 8004DEC4 24050368 */  addiu      $a1, $zero, 0x368
/* F73D8 8004DEC8 0C028D89 */  jal        func_800A3624
/* F73DC 8004DECC 24060060 */   addiu     $a2, $zero, 0x60
/* F73E0 8004DED0 240401D1 */  addiu      $a0, $zero, 0x1d1
/* F73E4 8004DED4 24050005 */  addiu      $a1, $zero, 5
/* F73E8 8004DED8 0C00D925 */  jal        func_80036494_DF9A4
/* F73EC 8004DEDC 24060030 */   addiu     $a2, $zero, 0x30
/* F73F0 8004DEE0 8C44000C */  lw         $a0, 0xc($v0)
/* F73F4 8004DEE4 240503C8 */  addiu      $a1, $zero, 0x3c8
/* F73F8 8004DEE8 0C028D89 */  jal        func_800A3624
/* F73FC 8004DEEC 240600B8 */   addiu     $a2, $zero, 0xb8
/* F7400 8004DEF0 240401D2 */  addiu      $a0, $zero, 0x1d2
/* F7404 8004DEF4 24050005 */  addiu      $a1, $zero, 5
/* F7408 8004DEF8 0C00D925 */  jal        func_80036494_DF9A4
/* F740C 8004DEFC 24060031 */   addiu     $a2, $zero, 0x31
/* F7410 8004DF00 8C44000C */  lw         $a0, 0xc($v0)
/* F7414 8004DF04 24050240 */  addiu      $a1, $zero, 0x240
/* F7418 8004DF08 0C028D89 */  jal        func_800A3624
/* F741C 8004DF0C 24060350 */   addiu     $a2, $zero, 0x350
/* F7420 8004DF10 8FBF001C */  lw         $ra, 0x1c($sp)
/* F7424 8004DF14 8FB00018 */  lw         $s0, 0x18($sp)
/* F7428 8004DF18 03E00008 */  jr         $ra
/* F742C 8004DF1C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004DF20_F7430
/* F7430 8004DF20 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F7434 8004DF24 AFBF002C */  sw         $ra, 0x2c($sp)
/* F7438 8004DF28 AFB20028 */  sw         $s2, 0x28($sp)
/* F743C 8004DF2C AFB10024 */  sw         $s1, 0x24($sp)
/* F7440 8004DF30 0C00E109 */  jal        func_80038424_E1934
/* F7444 8004DF34 AFB00020 */   sw        $s0, 0x20($sp)
/* F7448 8004DF38 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F744C 8004DF3C 24040007 */   addiu     $a0, $zero, 7
/* F7450 8004DF40 00408021 */  addu       $s0, $v0, $zero
/* F7454 8004DF44 3C014130 */  lui        $at, 0x4130
/* F7458 8004DF48 44810000 */  mtc1       $at, $f0
/* F745C 8004DF4C 3C013CA3 */  lui        $at, 0x3ca3
/* F7460 8004DF50 3421D70A */  ori        $at, $at, 0xd70a
/* F7464 8004DF54 44811000 */  mtc1       $at, $f2
/* F7468 8004DF58 02002021 */  addu       $a0, $s0, $zero
/* F746C 8004DF5C 24050001 */  addiu      $a1, $zero, 1
/* F7470 8004DF60 240200FF */  addiu      $v0, $zero, 0xff
/* F7474 8004DF64 A6020074 */  sh         $v0, 0x74($s0)
/* F7478 8004DF68 A6020076 */  sh         $v0, 0x76($s0)
/* F747C 8004DF6C A6020078 */  sh         $v0, 0x78($s0)
/* F7480 8004DF70 A602007A */  sh         $v0, 0x7a($s0)
/* F7484 8004DF74 2402FFFF */  addiu      $v0, $zero, -1
/* F7488 8004DF78 AE000010 */  sw         $zero, 0x10($s0)
/* F748C 8004DF7C AE000014 */  sw         $zero, 0x14($s0)
/* F7490 8004DF80 AE00001C */  sw         $zero, 0x1c($s0)
/* F7494 8004DF84 AE000020 */  sw         $zero, 0x20($s0)
/* F7498 8004DF88 AE000024 */  sw         $zero, 0x24($s0)
/* F749C 8004DF8C A6020070 */  sh         $v0, 0x70($s0)
/* F74A0 8004DF90 E6000018 */  swc1       $f0, 0x18($s0)
/* F74A4 8004DF94 0C00DFE6 */  jal        func_80037F98_E14A8
/* F74A8 8004DF98 E6020028 */   swc1      $f2, 0x28($s0)
/* F74AC 8004DF9C 8E020004 */  lw         $v0, 4($s0)
/* F74B0 8004DFA0 00002021 */  addu       $a0, $zero, $zero
/* F74B4 8004DFA4 3C013F80 */  lui        $at, 0x3f80
/* F74B8 8004DFA8 44810000 */  mtc1       $at, $f0
/* F74BC 8004DFAC 3C014240 */  lui        $at, 0x4240
/* F74C0 8004DFB0 44811000 */  mtc1       $at, $f2
/* F74C4 8004DFB4 240501D4 */  addiu      $a1, $zero, 0x1d4
/* F74C8 8004DFB8 24060003 */  addiu      $a2, $zero, 3
/* F74CC 8004DFBC A0400067 */  sb         $zero, 0x67($v0)
/* F74D0 8004DFC0 8E030004 */  lw         $v1, 4($s0)
/* F74D4 8004DFC4 3C014234 */  lui        $at, 0x4234
/* F74D8 8004DFC8 44812000 */  mtc1       $at, $f4
/* F74DC 8004DFCC 3C01C324 */  lui        $at, 0xc324
/* F74E0 8004DFD0 44813000 */  mtc1       $at, $f6
/* F74E4 8004DFD4 90620066 */  lbu        $v0, 0x66($v1)
/* F74E8 8004DFD8 24070002 */  addiu      $a3, $zero, 2
/* F74EC 8004DFDC 24110001 */  addiu      $s1, $zero, 1
/* F74F0 8004DFE0 34420011 */  ori        $v0, $v0, 0x11
/* F74F4 8004DFE4 A0620066 */  sb         $v0, 0x66($v1)
/* F74F8 8004DFE8 24020033 */  addiu      $v0, $zero, 0x33
/* F74FC 8004DFEC 3C018015 */  lui        $at, %hi(D_8014A064)
/* F7500 8004DFF0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F7504 8004DFF4 3C018015 */  lui        $at, %hi(D_8014A068)
/* F7508 8004DFF8 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* F750C 8004DFFC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F7510 8004E000 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F7514 8004E004 3C018015 */  lui        $at, %hi(D_8014A070)
/* F7518 8004E008 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F751C 8004E00C 3C018015 */  lui        $at, %hi(D_8014A074)
/* F7520 8004E010 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* F7524 8004E014 3C018015 */  lui        $at, %hi(D_8014A078)
/* F7528 8004E018 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F752C 8004E01C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F7530 8004E020 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F7534 8004E024 3C018015 */  lui        $at, %hi(D_8014A080)
/* F7538 8004E028 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F753C 8004E02C 3C018015 */  lui        $at, %hi(D_8014A084)
/* F7540 8004E030 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F7544 8004E034 3C018015 */  lui        $at, %hi(D_8014A088)
/* F7548 8004E038 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* F754C 8004E03C AFB10010 */  sw         $s1, 0x10($sp)
/* F7550 8004E040 0C00DB46 */  jal        func_80036D18_E0228
/* F7554 8004E044 AFA20014 */   sw        $v0, 0x14($sp)
/* F7558 8004E048 00409021 */  addu       $s2, $v0, $zero
/* F755C 8004E04C 3C014080 */  lui        $at, 0x4080
/* F7560 8004E050 44810000 */  mtc1       $at, $f0
/* F7564 8004E054 8E44000C */  lw         $a0, 0xc($s2)
/* F7568 8004E058 44060000 */  mfc1       $a2, $f0
/* F756C 8004E05C 00002821 */  addu       $a1, $zero, $zero
/* F7570 8004E060 0C02915B */  jal        func_800A456C
/* F7574 8004E064 00C03821 */   addu      $a3, $a2, $zero
/* F7578 8004E068 8E43000C */  lw         $v1, 0xc($s2)
/* F757C 8004E06C 00002021 */  addu       $a0, $zero, $zero
/* F7580 8004E070 9462001E */  lhu        $v0, 0x1e($v1)
/* F7584 8004E074 240501D3 */  addiu      $a1, $zero, 0x1d3
/* F7588 8004E078 24060006 */  addiu      $a2, $zero, 6
/* F758C 8004E07C 34420104 */  ori        $v0, $v0, 0x104
/* F7590 8004E080 A462001E */  sh         $v0, 0x1e($v1)
/* F7594 8004E084 8E43000C */  lw         $v1, 0xc($s2)
/* F7598 8004E088 24070005 */  addiu      $a3, $zero, 5
/* F759C 8004E08C 24020001 */  addiu      $v0, $zero, 1
/* F75A0 8004E090 A462001C */  sh         $v0, 0x1c($v1)
/* F75A4 8004E094 24020036 */  addiu      $v0, $zero, 0x36
/* F75A8 8004E098 AFA00010 */  sw         $zero, 0x10($sp)
/* F75AC 8004E09C 0C00DB46 */  jal        func_80036D18_E0228
/* F75B0 8004E0A0 AFA20014 */   sw        $v0, 0x14($sp)
/* F75B4 8004E0A4 00409021 */  addu       $s2, $v0, $zero
/* F75B8 8004E0A8 8E44000C */  lw         $a0, 0xc($s2)
/* F75BC 8004E0AC 24050040 */  addiu      $a1, $zero, 0x40
/* F75C0 8004E0B0 0C028D89 */  jal        func_800A3624
/* F75C4 8004E0B4 24060001 */   addiu     $a2, $zero, 1
/* F75C8 8004E0B8 24040036 */  addiu      $a0, $zero, 0x36
/* F75CC 8004E0BC 8E43000C */  lw         $v1, 0xc($s2)
/* F75D0 8004E0C0 24050037 */  addiu      $a1, $zero, 0x37
/* F75D4 8004E0C4 2402004B */  addiu      $v0, $zero, 0x4b
/* F75D8 8004E0C8 0C00DD19 */  jal        func_80037464_E0974
/* F75DC 8004E0CC A462001C */   sh        $v0, 0x1c($v1)
/* F75E0 8004E0D0 00409021 */  addu       $s2, $v0, $zero
/* F75E4 8004E0D4 8E44000C */  lw         $a0, 0xc($s2)
/* F75E8 8004E0D8 24050038 */  addiu      $a1, $zero, 0x38
/* F75EC 8004E0DC 0C028D89 */  jal        func_800A3624
/* F75F0 8004E0E0 24060001 */   addiu     $a2, $zero, 1
/* F75F4 8004E0E4 AFB10010 */  sw         $s1, 0x10($sp)
/* F75F8 8004E0E8 8E44000C */  lw         $a0, 0xc($s2)
/* F75FC 8004E0EC 240500FF */  addiu      $a1, $zero, 0xff
/* F7600 8004E0F0 240600FF */  addiu      $a2, $zero, 0xff
/* F7604 8004E0F4 0C028E41 */  jal        func_800A3904
/* F7608 8004E0F8 240700FF */   addiu     $a3, $zero, 0xff
/* F760C 8004E0FC 24040036 */  addiu      $a0, $zero, 0x36
/* F7610 8004E100 8E42000C */  lw         $v0, 0xc($s2)
/* F7614 8004E104 24050038 */  addiu      $a1, $zero, 0x38
/* F7618 8004E108 2410004A */  addiu      $s0, $zero, 0x4a
/* F761C 8004E10C 0C00DD19 */  jal        func_80037464_E0974
/* F7620 8004E110 A450001C */   sh        $s0, 0x1c($v0)
/* F7624 8004E114 00409021 */  addu       $s2, $v0, $zero
/* F7628 8004E118 8E44000C */  lw         $a0, 0xc($s2)
/* F762C 8004E11C 24050048 */  addiu      $a1, $zero, 0x48
/* F7630 8004E120 0C028D89 */  jal        func_800A3624
/* F7634 8004E124 24060001 */   addiu     $a2, $zero, 1
/* F7638 8004E128 AFB10010 */  sw         $s1, 0x10($sp)
/* F763C 8004E12C 8E44000C */  lw         $a0, 0xc($s2)
/* F7640 8004E130 240500FF */  addiu      $a1, $zero, 0xff
/* F7644 8004E134 240600FF */  addiu      $a2, $zero, 0xff
/* F7648 8004E138 0C028E41 */  jal        func_800A3904
/* F764C 8004E13C 240700FF */   addiu     $a3, $zero, 0xff
/* F7650 8004E140 8E42000C */  lw         $v0, 0xc($s2)
/* F7654 8004E144 3C048007 */  lui        $a0, %hi(D_80069250)
/* F7658 8004E148 24849250 */  addiu      $a0, $a0, %lo(D_80069250)
/* F765C 8004E14C 2405FFFE */  addiu      $a1, $zero, -2
/* F7660 8004E150 A450001C */  sh         $s0, 0x1c($v0)
/* F7664 8004E154 2402FFFE */  addiu      $v0, $zero, -2
/* F7668 8004E158 A3A2001C */  sb         $v0, 0x1c($sp)
/* F766C 8004E15C 24020001 */  addiu      $v0, $zero, 1
/* F7670 8004E160 A3A2001E */  sb         $v0, 0x1e($sp)
/* F7674 8004E164 24020002 */  addiu      $v0, $zero, 2
/* F7678 8004E168 AFA40018 */  sw         $a0, 0x18($sp)
/* F767C 8004E16C A3A0001D */  sb         $zero, 0x1d($sp)
/* F7680 8004E170 0C029D2A */  jal        func_800A74A8
/* F7684 8004E174 A3A2001F */   sb        $v0, 0x1f($sp)
/* F7688 8004E178 27A40018 */  addiu      $a0, $sp, 0x18
/* F768C 8004E17C 240520C9 */  addiu      $a1, $zero, 0x20c9
/* F7690 8004E180 240620D3 */  addiu      $a2, $zero, 0x20d3
/* F7694 8004E184 00021FC2 */  srl        $v1, $v0, 0x1f
/* F7698 8004E188 00621821 */  addu       $v1, $v1, $v0
/* F769C 8004E18C 00031843 */  sra        $v1, $v1, 1
/* F76A0 8004E190 240700A0 */  addiu      $a3, $zero, 0xa0
/* F76A4 8004E194 00E33823 */  subu       $a3, $a3, $v1
/* F76A8 8004E198 00073C00 */  sll        $a3, $a3, 0x10
/* F76AC 8004E19C 00073C03 */  sra        $a3, $a3, 0x10
/* F76B0 8004E1A0 240200AF */  addiu      $v0, $zero, 0xaf
/* F76B4 8004E1A4 0C00DEF7 */  jal        func_80037BDC_E10EC
/* F76B8 8004E1A8 AFA20010 */   sw        $v0, 0x10($sp)
/* F76BC 8004E1AC 8FBF002C */  lw         $ra, 0x2c($sp)
/* F76C0 8004E1B0 8FB20028 */  lw         $s2, 0x28($sp)
/* F76C4 8004E1B4 8FB10024 */  lw         $s1, 0x24($sp)
/* F76C8 8004E1B8 8FB00020 */  lw         $s0, 0x20($sp)
/* F76CC 8004E1BC 03E00008 */  jr         $ra
/* F76D0 8004E1C0 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004E1C4_F76D4
/* F76D4 8004E1C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F76D8 8004E1C8 240401D5 */  addiu      $a0, $zero, 0x1d5
/* F76DC 8004E1CC 24050005 */  addiu      $a1, $zero, 5
/* F76E0 8004E1D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* F76E4 8004E1D4 0C00D925 */  jal        func_80036494_DF9A4
/* F76E8 8004E1D8 24060019 */   addiu     $a2, $zero, 0x19
/* F76EC 8004E1DC 8C44000C */  lw         $a0, 0xc($v0)
/* F76F0 8004E1E0 24050040 */  addiu      $a1, $zero, 0x40
/* F76F4 8004E1E4 0C028D89 */  jal        func_800A3624
/* F76F8 8004E1E8 24060040 */   addiu     $a2, $zero, 0x40
/* F76FC 8004E1EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* F7700 8004E1F0 03E00008 */  jr         $ra
/* F7704 8004E1F4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004E1F8_F7708
/* F7708 8004E1F8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F770C 8004E1FC AFBF0010 */  sw         $ra, 0x10($sp)
/* F7710 8004E200 0C00E109 */  jal        func_80038424_E1934
/* F7714 8004E204 00000000 */   nop
/* F7718 8004E208 0C00E1B4 */  jal        func_800386D0_E1BE0
/* F771C 8004E20C 24040002 */   addiu     $a0, $zero, 2
/* F7720 8004E210 8FBF0010 */  lw         $ra, 0x10($sp)
/* F7724 8004E214 03E00008 */  jr         $ra
/* F7728 8004E218 27BD0018 */   addiu     $sp, $sp, 0x18
/* F772C 8004E21C 00000000 */  nop
