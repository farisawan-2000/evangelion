.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002B3B0_11D1B0
/* 11D1B0 8002B3B0 3C028005 */  lui        $v0, %hi(D_80051A20)
/* 11D1B4 8002B3B4 90421A20 */  lbu        $v0, %lo(D_80051A20)($v0)
/* 11D1B8 8002B3B8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11D1BC 8002B3BC AFB00018 */  sw         $s0, 0x18($sp)
/* 11D1C0 8002B3C0 00808021 */  addu       $s0, $a0, $zero
/* 11D1C4 8002B3C4 10400047 */  beqz       $v0, .L8002B4E4
/* 11D1C8 8002B3C8 AFBF001C */   sw        $ra, 0x1c($sp)
/* 11D1CC 8002B3CC 0C02A5D2 */  jal        func_800A9748
/* 11D1D0 8002B3D0 24040001 */   addiu     $a0, $zero, 1
/* 11D1D4 8002B3D4 0C02725C */  jal        func_8009C970
/* 11D1D8 8002B3D8 00000000 */   nop
/* 11D1DC 8002B3DC 3C014160 */  lui        $at, 0x4160
/* 11D1E0 8002B3E0 44810000 */  mtc1       $at, $f0
/* 11D1E4 8002B3E4 3C014248 */  lui        $at, 0x4248
/* 11D1E8 8002B3E8 44811000 */  mtc1       $at, $f2
/* 11D1EC 8002B3EC 3C01C140 */  lui        $at, 0xc140
/* 11D1F0 8002B3F0 44812000 */  mtc1       $at, $f4
/* 11D1F4 8002B3F4 3C014296 */  lui        $at, 0x4296
/* 11D1F8 8002B3F8 44813000 */  mtc1       $at, $f6
/* 11D1FC 8002B3FC 3C01C248 */  lui        $at, 0xc248
/* 11D200 8002B400 44814000 */  mtc1       $at, $f8
/* 11D204 8002B404 24040053 */  addiu      $a0, $zero, 0x53
/* 11D208 8002B408 24050048 */  addiu      $a1, $zero, 0x48
/* 11D20C 8002B40C 240200E6 */  addiu      $v0, $zero, 0xe6
/* 11D210 8002B410 AFA20010 */  sw         $v0, 0x10($sp)
/* 11D214 8002B414 240200DC */  addiu      $v0, $zero, 0xdc
/* 11D218 8002B418 24060053 */  addiu      $a2, $zero, 0x53
/* 11D21C 8002B41C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 11D220 8002B420 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 11D224 8002B424 3C018015 */  lui        $at, %hi(D_8014A084)
/* 11D228 8002B428 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 11D22C 8002B42C AFA20014 */  sw         $v0, 0x14($sp)
/* 11D230 8002B430 3C018015 */  lui        $at, %hi(D_8014A064)
/* 11D234 8002B434 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 11D238 8002B438 3C018015 */  lui        $at, %hi(D_8014A068)
/* 11D23C 8002B43C E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 11D240 8002B440 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 11D244 8002B444 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* 11D248 8002B448 3C018015 */  lui        $at, %hi(D_8014A080)
/* 11D24C 8002B44C E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 11D250 8002B450 3C018015 */  lui        $at, %hi(D_8014A088)
/* 11D254 8002B454 E428A088 */  swc1       $f8, %lo(D_8014A088)($at)
/* 11D258 8002B458 0C027101 */  jal        func_8009C404
/* 11D25C 8002B45C 240700FF */   addiu     $a3, $zero, 0xff
/* 11D260 8002B460 3C014170 */  lui        $at, 0x4170
/* 11D264 8002B464 44810000 */  mtc1       $at, $f0
/* 11D268 8002B468 3C014180 */  lui        $at, 0x4180
/* 11D26C 8002B46C 44811000 */  mtc1       $at, $f2
/* 11D270 8002B470 3C01C1C0 */  lui        $at, 0xc1c0
/* 11D274 8002B474 44812000 */  mtc1       $at, $f4
/* 11D278 8002B478 3C014130 */  lui        $at, 0x4130
/* 11D27C 8002B47C 44813000 */  mtc1       $at, $f6
/* 11D280 8002B480 3C0140A0 */  lui        $at, 0x40a0
/* 11D284 8002B484 44814000 */  mtc1       $at, $f8
/* 11D288 8002B488 3C01C190 */  lui        $at, 0xc190
/* 11D28C 8002B48C 44815000 */  mtc1       $at, $f10
/* 11D290 8002B490 3C018017 */  lui        $at, %hi(D_8016E568)
/* 11D294 8002B494 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 11D298 8002B498 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 11D29C 8002B49C E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 11D2A0 8002B4A0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 11D2A4 8002B4A4 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 11D2A8 8002B4A8 3C018015 */  lui        $at, %hi(D_8014A054)
/* 11D2AC 8002B4AC E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 11D2B0 8002B4B0 3C018015 */  lui        $at, %hi(D_8014A050)
/* 11D2B4 8002B4B4 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 11D2B8 8002B4B8 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 11D2BC 8002B4BC 0C00AD5C */  jal        func_8002B570_11D370
/* 11D2C0 8002B4C0 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 11D2C4 8002B4C4 3C048008 */  lui        $a0, %hi(D_80080750)
/* 11D2C8 8002B4C8 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 11D2CC 8002B4CC 3C018006 */  lui        $at, %hi(D_8005DC70)
/* 11D2D0 8002B4D0 AC22DC70 */  sw         $v0, %lo(D_8005DC70)($at)
/* 11D2D4 8002B4D4 0C00A157 */  jal        func_8002855C_11A35C
/* 11D2D8 8002B4D8 24050002 */   addiu     $a1, $zero, 2
/* 11D2DC 8002B4DC 3C018005 */  lui        $at, %hi(D_80051A20)
/* 11D2E0 8002B4E0 A0201A20 */  sb         $zero, %lo(D_80051A20)($at)
.L8002B4E4:
/* 11D2E4 8002B4E4 16000003 */  bnez       $s0, .L8002B4F4
/* 11D2E8 8002B4E8 24020001 */   addiu     $v0, $zero, 1
/* 11D2EC 8002B4EC 3C018005 */  lui        $at, %hi(D_80051A24)
/* 11D2F0 8002B4F0 AC221A24 */  sw         $v0, %lo(D_80051A24)($at)
.L8002B4F4:
/* 11D2F4 8002B4F4 3C028005 */  lui        $v0, %hi(D_80051A24)
/* 11D2F8 8002B4F8 8C421A24 */  lw         $v0, %lo(D_80051A24)($v0)
/* 11D2FC 8002B4FC 1440000C */  bnez       $v0, .L8002B530
/* 11D300 8002B500 00000000 */   nop
/* 11D304 8002B504 3C048006 */  lui        $a0, %hi(D_8005DC70)
/* 11D308 8002B508 0C00AD83 */  jal        func_8002B60C_11D40C
/* 11D30C 8002B50C 8C84DC70 */   lw        $a0, %lo(D_8005DC70)($a0)
/* 11D310 8002B510 3C018005 */  lui        $at, %hi(D_80051A24)
/* 11D314 8002B514 0C009767 */  jal        func_80025D9C_117B9C
/* 11D318 8002B518 AC221A24 */   sw        $v0, %lo(D_80051A24)($at)
/* 11D31C 8002B51C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 11D320 8002B520 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 11D324 8002B524 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 11D328 8002B528 0800AD58 */  j          .L8002B560
/* 11D32C 8002B52C 00001021 */   addu      $v0, $zero, $zero
.L8002B530:
/* 11D330 8002B530 3C048008 */  lui        $a0, %hi(D_80080750)
/* 11D334 8002B534 0C00A16B */  jal        func_800285AC_11A3AC
/* 11D338 8002B538 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 11D33C 8002B53C 3C048006 */  lui        $a0, %hi(D_8005DC70)
/* 11D340 8002B540 0C00ADAF */  jal        func_8002B6BC_11D4BC
/* 11D344 8002B544 2484DC70 */   addiu     $a0, $a0, %lo(D_8005DC70)
/* 11D348 8002B548 24020001 */  addiu      $v0, $zero, 1
/* 11D34C 8002B54C 24030001 */  addiu      $v1, $zero, 1
/* 11D350 8002B550 3C018005 */  lui        $at, %hi(D_80051A24)
/* 11D354 8002B554 AC201A24 */  sw         $zero, %lo(D_80051A24)($at)
/* 11D358 8002B558 3C018005 */  lui        $at, %hi(D_80051A20)
/* 11D35C 8002B55C A0231A20 */  sb         $v1, %lo(D_80051A20)($at)
.L8002B560:
/* 11D360 8002B560 8FBF001C */  lw         $ra, 0x1c($sp)
/* 11D364 8002B564 8FB00018 */  lw         $s0, 0x18($sp)
/* 11D368 8002B568 03E00008 */  jr         $ra
/* 11D36C 8002B56C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002B570_11D370
/* 11D370 8002B570 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11D374 8002B574 2404000C */  addiu      $a0, $zero, 0xc
/* 11D378 8002B578 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11D37C 8002B57C AFB10014 */  sw         $s1, 0x14($sp)
/* 11D380 8002B580 0C032663 */  jal        func_800C998C
/* 11D384 8002B584 AFB00010 */   sw        $s0, 0x10($sp)
/* 11D388 8002B588 00408021 */  addu       $s0, $v0, $zero
/* 11D38C 8002B58C 02002021 */  addu       $a0, $s0, $zero
/* 11D390 8002B590 0C030134 */  jal        bzero
/* 11D394 8002B594 2405000C */   addiu     $a1, $zero, 0xc
/* 11D398 8002B598 24020050 */  addiu      $v0, $zero, 0x50
/* 11D39C 8002B59C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 11D3A0 8002B5A0 AE020008 */   sw        $v0, 8($s0)
/* 11D3A4 8002B5A4 3C0142B4 */  lui        $at, 0x42b4
/* 11D3A8 8002B5A8 44810000 */  mtc1       $at, $f0
/* 11D3AC 8002B5AC 24110007 */  addiu      $s1, $zero, 7
/* 11D3B0 8002B5B0 240300BF */  addiu      $v1, $zero, 0xbf
/* 11D3B4 8002B5B4 AE020000 */  sw         $v0, ($s0)
/* 11D3B8 8002B5B8 AC51001C */  sw         $s1, 0x1c($v0)
/* 11D3BC 8002B5BC AC430004 */  sw         $v1, 4($v0)
/* 11D3C0 8002B5C0 AC400008 */  sw         $zero, 8($v0)
/* 11D3C4 8002B5C4 AC400044 */  sw         $zero, 0x44($v0)
/* 11D3C8 8002B5C8 0C00AEC4 */  jal        func_8002BB10_11D910
/* 11D3CC 8002B5CC E4400054 */   swc1      $f0, 0x54($v0)
/* 11D3D0 8002B5D0 3C013F80 */  lui        $at, 0x3f80
/* 11D3D4 8002B5D4 44810000 */  mtc1       $at, $f0
/* 11D3D8 8002B5D8 00402021 */  addu       $a0, $v0, $zero
/* 11D3DC 8002B5DC 02001021 */  addu       $v0, $s0, $zero
/* 11D3E0 8002B5E0 240300C0 */  addiu      $v1, $zero, 0xc0
/* 11D3E4 8002B5E4 AC440004 */  sw         $a0, 4($v0)
/* 11D3E8 8002B5E8 AC91001C */  sw         $s1, 0x1c($a0)
/* 11D3EC 8002B5EC AC830004 */  sw         $v1, 4($a0)
/* 11D3F0 8002B5F0 AC800008 */  sw         $zero, 8($a0)
/* 11D3F4 8002B5F4 E480005C */  swc1       $f0, 0x5c($a0)
/* 11D3F8 8002B5F8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11D3FC 8002B5FC 8FB10014 */  lw         $s1, 0x14($sp)
/* 11D400 8002B600 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D404 8002B604 03E00008 */  jr         $ra
/* 11D408 8002B608 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002B60C_11D40C
/* 11D40C 8002B60C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D410 8002B610 AFB00010 */  sw         $s0, 0x10($sp)
/* 11D414 8002B614 00808021 */  addu       $s0, $a0, $zero
/* 11D418 8002B618 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11D41C 8002B61C 8E020008 */  lw         $v0, 8($s0)
/* 11D420 8002B620 2403000A */  addiu      $v1, $zero, 0xa
/* 11D424 8002B624 2442FFFF */  addiu      $v0, $v0, -1
/* 11D428 8002B628 14430003 */  bne        $v0, $v1, .L8002B638
/* 11D42C 8002B62C AE020008 */   sw        $v0, 8($s0)
/* 11D430 8002B630 0C02A5E5 */  jal        func_800A9794
/* 11D434 8002B634 2404000A */   addiu     $a0, $zero, 0xa
.L8002B638:
/* 11D438 8002B638 8E020008 */  lw         $v0, 8($s0)
/* 11D43C 8002B63C 5040001B */  beql       $v0, $zero, .L8002B6AC
/* 11D440 8002B640 24020001 */   addiu     $v0, $zero, 1
/* 11D444 8002B644 8E020000 */  lw         $v0, ($s0)
/* 11D448 8002B648 3C014100 */  lui        $at, 0x4100
/* 11D44C 8002B64C 44811000 */  mtc1       $at, $f2
/* 11D450 8002B650 C4400044 */  lwc1       $f0, 0x44($v0)
/* 11D454 8002B654 46020000 */  add.s      $f0, $f0, $f2
/* 11D458 8002B658 E4400044 */  swc1       $f0, 0x44($v0)
/* 11D45C 8002B65C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 11D460 8002B660 8E040000 */   lw        $a0, ($s0)
/* 11D464 8002B664 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 11D468 8002B668 8E040004 */   lw        $a0, 4($s0)
/* 11D46C 8002B66C 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 11D470 8002B670 8E040000 */   lw        $a0, ($s0)
/* 11D474 8002B674 8E040000 */  lw         $a0, ($s0)
/* 11D478 8002B678 8E070004 */  lw         $a3, 4($s0)
/* 11D47C 8002B67C 3C058006 */  lui        $a1, %hi(D_8005AA54)
/* 11D480 8002B680 24A5AA54 */  addiu      $a1, $a1, %lo(D_8005AA54)
/* 11D484 8002B684 00003021 */  addu       $a2, $zero, $zero
/* 11D488 8002B688 0C00B361 */  jal        func_8002CD84_11EB84
/* 11D48C 8002B68C 24E70060 */   addiu     $a3, $a3, 0x60
/* 11D490 8002B690 8E030004 */  lw         $v1, 4($s0)
/* 11D494 8002B694 8C620000 */  lw         $v0, ($v1)
/* 11D498 8002B698 34420001 */  ori        $v0, $v0, 1
/* 11D49C 8002B69C AC620000 */  sw         $v0, ($v1)
/* 11D4A0 8002B6A0 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 11D4A4 8002B6A4 8E040004 */   lw        $a0, 4($s0)
/* 11D4A8 8002B6A8 00001021 */  addu       $v0, $zero, $zero
.L8002B6AC:
/* 11D4AC 8002B6AC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11D4B0 8002B6B0 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D4B4 8002B6B4 03E00008 */  jr         $ra
/* 11D4B8 8002B6B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002B6BC_11D4BC
/* 11D4BC 8002B6BC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D4C0 8002B6C0 AFB00010 */  sw         $s0, 0x10($sp)
/* 11D4C4 8002B6C4 00808021 */  addu       $s0, $a0, $zero
/* 11D4C8 8002B6C8 1200000D */  beqz       $s0, .L8002B700
/* 11D4CC 8002B6CC AFBF0014 */   sw        $ra, 0x14($sp)
/* 11D4D0 8002B6D0 8E040000 */  lw         $a0, ($s0)
/* 11D4D4 8002B6D4 1080000A */  beqz       $a0, .L8002B700
/* 11D4D8 8002B6D8 00000000 */   nop
/* 11D4DC 8002B6DC 0C00AF04 */  jal        func_8002BC10_11DA10
/* 11D4E0 8002B6E0 00000000 */   nop
/* 11D4E4 8002B6E4 8E040000 */  lw         $a0, ($s0)
/* 11D4E8 8002B6E8 0C00AF04 */  jal        func_8002BC10_11DA10
/* 11D4EC 8002B6EC 24840004 */   addiu     $a0, $a0, 4
/* 11D4F0 8002B6F0 8E040000 */  lw         $a0, ($s0)
/* 11D4F4 8002B6F4 0C0326A1 */  jal        func_800C9A84
/* 11D4F8 8002B6F8 00000000 */   nop
/* 11D4FC 8002B6FC AE000000 */  sw         $zero, ($s0)
.L8002B700:
/* 11D500 8002B700 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11D504 8002B704 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D508 8002B708 03E00008 */  jr         $ra
/* 11D50C 8002B70C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002B710_11D510
/* 11D510 8002B710 3C028005 */  lui        $v0, %hi(D_80051A30)
/* 11D514 8002B714 90421A30 */  lbu        $v0, %lo(D_80051A30)($v0)
/* 11D518 8002B718 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D51C 8002B71C AFB00010 */  sw         $s0, 0x10($sp)
/* 11D520 8002B720 00808021 */  addu       $s0, $a0, $zero
/* 11D524 8002B724 1040000B */  beqz       $v0, .L8002B754
/* 11D528 8002B728 AFBF0014 */   sw        $ra, 0x14($sp)
/* 11D52C 8002B72C 0C02A5D2 */  jal        func_800A9748
/* 11D530 8002B730 24040001 */   addiu     $a0, $zero, 1
/* 11D534 8002B734 0C00AE08 */  jal        func_8002B820_11D620
/* 11D538 8002B738 00000000 */   nop
/* 11D53C 8002B73C 3C018006 */  lui        $at, %hi(D_8005DC80)
/* 11D540 8002B740 AC22DC80 */  sw         $v0, %lo(D_8005DC80)($at)
/* 11D544 8002B744 0C026DD5 */  jal        func_8009B754
/* 11D548 8002B748 24040095 */   addiu     $a0, $zero, 0x95
/* 11D54C 8002B74C 3C018005 */  lui        $at, %hi(D_80051A30)
/* 11D550 8002B750 A0201A30 */  sb         $zero, %lo(D_80051A30)($at)
.L8002B754:
/* 11D554 8002B754 16000003 */  bnez       $s0, .L8002B764
/* 11D558 8002B758 24020001 */   addiu     $v0, $zero, 1
/* 11D55C 8002B75C 3C018005 */  lui        $at, %hi(D_80051A34)
/* 11D560 8002B760 AC221A34 */  sw         $v0, %lo(D_80051A34)($at)
.L8002B764:
/* 11D564 8002B764 3C028005 */  lui        $v0, %hi(D_80051A34)
/* 11D568 8002B768 8C421A34 */  lw         $v0, %lo(D_80051A34)($v0)
/* 11D56C 8002B76C 10400021 */  beqz       $v0, .L8002B7F4
/* 11D570 8002B770 00000000 */   nop
/* 11D574 8002B774 3C028006 */  lui        $v0, %hi(D_8005DC80)
/* 11D578 8002B778 8C42DC80 */  lw         $v0, %lo(D_8005DC80)($v0)
/* 11D57C 8002B77C 0C029393 */  jal        func_800A4E4C
/* 11D580 8002B780 8C440000 */   lw        $a0, ($v0)
/* 11D584 8002B784 3C018006 */  lui        $at, %hi(D_8005DC84)
/* 11D588 8002B788 AC20DC84 */  sw         $zero, %lo(D_8005DC84)($at)
.L8002B78C:
/* 11D58C 8002B78C 3C028006 */  lui        $v0, %hi(D_8005DC84)
/* 11D590 8002B790 8C42DC84 */  lw         $v0, %lo(D_8005DC84)($v0)
/* 11D594 8002B794 3C038006 */  lui        $v1, %hi(D_8005DC80)
/* 11D598 8002B798 8C63DC80 */  lw         $v1, %lo(D_8005DC80)($v1)
/* 11D59C 8002B79C 00021080 */  sll        $v0, $v0, 2
/* 11D5A0 8002B7A0 00431021 */  addu       $v0, $v0, $v1
/* 11D5A4 8002B7A4 0C028D30 */  jal        func_800A34C0
/* 11D5A8 8002B7A8 8C440004 */   lw        $a0, 4($v0)
/* 11D5AC 8002B7AC 3C028006 */  lui        $v0, %hi(D_8005DC84)
/* 11D5B0 8002B7B0 8C42DC84 */  lw         $v0, %lo(D_8005DC84)($v0)
/* 11D5B4 8002B7B4 24420001 */  addiu      $v0, $v0, 1
/* 11D5B8 8002B7B8 3C018006 */  lui        $at, %hi(D_8005DC84)
/* 11D5BC 8002B7BC AC22DC84 */  sw         $v0, %lo(D_8005DC84)($at)
/* 11D5C0 8002B7C0 2C420002 */  sltiu      $v0, $v0, 2
/* 11D5C4 8002B7C4 1440FFF1 */  bnez       $v0, .L8002B78C
/* 11D5C8 8002B7C8 00000000 */   nop
/* 11D5CC 8002B7CC 3C048006 */  lui        $a0, %hi(D_8005DC80)
/* 11D5D0 8002B7D0 0C00AEB5 */  jal        func_8002BAD4_11D8D4
/* 11D5D4 8002B7D4 2484DC80 */   addiu     $a0, $a0, %lo(D_8005DC80)
/* 11D5D8 8002B7D8 24030001 */  addiu      $v1, $zero, 1
/* 11D5DC 8002B7DC 3C018005 */  lui        $at, %hi(D_80051A34)
/* 11D5E0 8002B7E0 AC201A34 */  sw         $zero, %lo(D_80051A34)($at)
/* 11D5E4 8002B7E4 3C018005 */  lui        $at, %hi(D_80051A30)
/* 11D5E8 8002B7E8 A0231A30 */  sb         $v1, %lo(D_80051A30)($at)
/* 11D5EC 8002B7EC 0800AE04 */  j          .L8002B810
/* 11D5F0 8002B7F0 24020001 */   addiu     $v0, $zero, 1
.L8002B7F4:
/* 11D5F4 8002B7F4 3C048006 */  lui        $a0, %hi(D_8005DC80)
/* 11D5F8 8002B7F8 0C00AE7A */  jal        func_8002B9E8_11D7E8
/* 11D5FC 8002B7FC 8C84DC80 */   lw        $a0, %lo(D_8005DC80)($a0)
/* 11D600 8002B800 3C018005 */  lui        $at, %hi(D_80051A34)
/* 11D604 8002B804 0C009767 */  jal        func_80025D9C_117B9C
/* 11D608 8002B808 AC221A34 */   sw        $v0, %lo(D_80051A34)($at)
/* 11D60C 8002B80C 00001021 */  addu       $v0, $zero, $zero
.L8002B810:
/* 11D610 8002B810 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11D614 8002B814 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D618 8002B818 03E00008 */  jr         $ra
/* 11D61C 8002B81C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002B820_11D620
/* 11D620 8002B820 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 11D624 8002B824 AFBF002C */  sw         $ra, 0x2c($sp)
/* 11D628 8002B828 AFB40028 */  sw         $s4, 0x28($sp)
/* 11D62C 8002B82C AFB30024 */  sw         $s3, 0x24($sp)
/* 11D630 8002B830 AFB20020 */  sw         $s2, 0x20($sp)
/* 11D634 8002B834 AFB1001C */  sw         $s1, 0x1c($sp)
/* 11D638 8002B838 AFB00018 */  sw         $s0, 0x18($sp)
/* 11D63C 8002B83C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 11D640 8002B840 0C032663 */  jal        func_800C998C
/* 11D644 8002B844 24040010 */   addiu     $a0, $zero, 0x10
/* 11D648 8002B848 0040A021 */  addu       $s4, $v0, $zero
/* 11D64C 8002B84C 02802021 */  addu       $a0, $s4, $zero
/* 11D650 8002B850 0C030134 */  jal        bzero
/* 11D654 8002B854 24050010 */   addiu     $a1, $zero, 0x10
/* 11D658 8002B858 00009821 */  addu       $s3, $zero, $zero
/* 11D65C 8002B85C 3C014080 */  lui        $at, 0x4080
/* 11D660 8002B860 4481A000 */  mtc1       $at, $f20
.L8002B864:
/* 11D664 8002B864 3271FFFF */  andi       $s1, $s3, 0xffff
/* 11D668 8002B868 001180C0 */  sll        $s0, $s1, 3
/* 11D66C 8002B86C 02118023 */  subu       $s0, $s0, $s1
/* 11D670 8002B870 00108080 */  sll        $s0, $s0, 2
/* 11D674 8002B874 3C048006 */  lui        $a0, %hi(D_8005AA58)
/* 11D678 8002B878 00902021 */  addu       $a0, $a0, $s0
/* 11D67C 8002B87C 9484AA58 */  lhu        $a0, %lo(D_8005AA58)($a0)
/* 11D680 8002B880 24050002 */  addiu      $a1, $zero, 2
/* 11D684 8002B884 0C028CB7 */  jal        func_800A32DC
/* 11D688 8002B888 00003021 */   addu      $a2, $zero, $zero
/* 11D68C 8002B88C 00409021 */  addu       $s2, $v0, $zero
/* 11D690 8002B890 02402021 */  addu       $a0, $s2, $zero
/* 11D694 8002B894 3C068006 */  lui        $a2, %hi(D_8005AA6C)
/* 11D698 8002B898 00D03021 */  addu       $a2, $a2, $s0
/* 11D69C 8002B89C 8CC6AA6C */  lw         $a2, %lo(D_8005AA6C)($a2)
/* 11D6A0 8002B8A0 3C078006 */  lui        $a3, %hi(D_8005AA70)
/* 11D6A4 8002B8A4 00F03821 */  addu       $a3, $a3, $s0
/* 11D6A8 8002B8A8 8CE7AA70 */  lw         $a3, %lo(D_8005AA70)($a3)
/* 11D6AC 8002B8AC 9642001E */  lhu        $v0, 0x1e($s2)
/* 11D6B0 8002B8B0 3C038006 */  lui        $v1, %hi(D_8005AA5C)
/* 11D6B4 8002B8B4 00701821 */  addu       $v1, $v1, $s0
/* 11D6B8 8002B8B8 9463AA5C */  lhu        $v1, %lo(D_8005AA5C)($v1)
/* 11D6BC 8002B8BC 3C088006 */  lui        $t0, %hi(D_8005AA5A)
/* 11D6C0 8002B8C0 01104021 */  addu       $t0, $t0, $s0
/* 11D6C4 8002B8C4 9508AA5A */  lhu        $t0, %lo(D_8005AA5A)($t0)
/* 11D6C8 8002B8C8 00002821 */  addu       $a1, $zero, $zero
/* 11D6CC 8002B8CC 00431025 */  or         $v0, $v0, $v1
/* 11D6D0 8002B8D0 A642001E */  sh         $v0, 0x1e($s2)
/* 11D6D4 8002B8D4 0C02915B */  jal        func_800A456C
/* 11D6D8 8002B8D8 A648001C */   sh        $t0, 0x1c($s2)
/* 11D6DC 8002B8DC 3C018006 */  lui        $at, %hi(D_8005AA60)
/* 11D6E0 8002B8E0 00300821 */  addu       $at, $at, $s0
/* 11D6E4 8002B8E4 C420AA60 */  lwc1       $f0, %lo(D_8005AA60)($at)
/* 11D6E8 8002B8E8 46140002 */  mul.s      $f0, $f0, $f20
/* 11D6EC 8002B8EC 3C018006 */  lui        $at, %hi(D_8005AA64)
/* 11D6F0 8002B8F0 00300821 */  addu       $at, $at, $s0
/* 11D6F4 8002B8F4 C422AA64 */  lwc1       $f2, %lo(D_8005AA64)($at)
/* 11D6F8 8002B8F8 46141082 */  mul.s      $f2, $f2, $f20
/* 11D6FC 8002B8FC 26730001 */  addiu      $s3, $s3, 1
/* 11D700 8002B900 02402021 */  addu       $a0, $s2, $zero
/* 11D704 8002B904 4600010D */  trunc.w.s  $f4, $f0
/* 11D708 8002B908 44052000 */  mfc1       $a1, $f4
/* 11D70C 8002B90C 00000000 */  nop
/* 11D710 8002B910 00052C00 */  sll        $a1, $a1, 0x10
/* 11D714 8002B914 00052C03 */  sra        $a1, $a1, 0x10
/* 11D718 8002B918 4600100D */  trunc.w.s  $f0, $f2
/* 11D71C 8002B91C 44060000 */  mfc1       $a2, $f0
/* 11D720 8002B920 00000000 */  nop
/* 11D724 8002B924 00063400 */  sll        $a2, $a2, 0x10
/* 11D728 8002B928 0C028D89 */  jal        func_800A3624
/* 11D72C 8002B92C 00063403 */   sra       $a2, $a2, 0x10
/* 11D730 8002B930 00118880 */  sll        $s1, $s1, 2
/* 11D734 8002B934 02348821 */  addu       $s1, $s1, $s4
/* 11D738 8002B938 3262FFFF */  andi       $v0, $s3, 0xffff
/* 11D73C 8002B93C 2C420002 */  sltiu      $v0, $v0, 2
/* 11D740 8002B940 1440FFC8 */  bnez       $v0, .L8002B864
/* 11D744 8002B944 AE320004 */   sw        $s2, 4($s1)
/* 11D748 8002B948 24130002 */  addiu      $s3, $zero, 2
.L8002B94C:
/* 11D74C 8002B94C 8E820008 */  lw         $v0, 8($s4)
/* 11D750 8002B950 8C440014 */  lw         $a0, 0x14($v0)
/* 11D754 8002B954 3262FFFF */  andi       $v0, $s3, 0xffff
/* 11D758 8002B958 26730001 */  addiu      $s3, $s3, 1
/* 11D75C 8002B95C 94830002 */  lhu        $v1, 2($a0)
/* 11D760 8002B960 00021040 */  sll        $v0, $v0, 1
/* 11D764 8002B964 00441021 */  addu       $v0, $v0, $a0
/* 11D768 8002B968 A4430000 */  sh         $v1, ($v0)
/* 11D76C 8002B96C 3262FFFF */  andi       $v0, $s3, 0xffff
/* 11D770 8002B970 2C420010 */  sltiu      $v0, $v0, 0x10
/* 11D774 8002B974 1440FFF5 */  bnez       $v0, .L8002B94C
/* 11D778 8002B978 24020001 */   addiu     $v0, $zero, 1
/* 11D77C 8002B97C A680000C */  sh         $zero, 0xc($s4)
/* 11D780 8002B980 0C029375 */  jal        func_800A4DD4
/* 11D784 8002B984 A682000E */   sh        $v0, 0xe($s4)
/* 11D788 8002B988 AE820000 */  sw         $v0, ($s4)
/* 11D78C 8002B98C 240200E0 */  addiu      $v0, $zero, 0xe0
/* 11D790 8002B990 AFA20010 */  sw         $v0, 0x10($sp)
/* 11D794 8002B994 8E840000 */  lw         $a0, ($s4)
/* 11D798 8002B998 24050010 */  addiu      $a1, $zero, 0x10
/* 11D79C 8002B99C 24060010 */  addiu      $a2, $zero, 0x10
/* 11D7A0 8002B9A0 0C02939C */  jal        func_800A4E70
/* 11D7A4 8002B9A4 24070130 */   addiu     $a3, $zero, 0x130
/* 11D7A8 8002B9A8 8E820000 */  lw         $v0, ($s4)
/* 11D7AC 8002B9AC A440001C */  sh         $zero, 0x1c($v0)
/* 11D7B0 8002B9B0 8E840000 */  lw         $a0, ($s4)
/* 11D7B4 8002B9B4 9483001E */  lhu        $v1, 0x1e($a0)
/* 11D7B8 8002B9B8 02801021 */  addu       $v0, $s4, $zero
/* 11D7BC 8002B9BC 34630100 */  ori        $v1, $v1, 0x100
/* 11D7C0 8002B9C0 A483001E */  sh         $v1, 0x1e($a0)
/* 11D7C4 8002B9C4 8FBF002C */  lw         $ra, 0x2c($sp)
/* 11D7C8 8002B9C8 8FB40028 */  lw         $s4, 0x28($sp)
/* 11D7CC 8002B9CC 8FB30024 */  lw         $s3, 0x24($sp)
/* 11D7D0 8002B9D0 8FB20020 */  lw         $s2, 0x20($sp)
/* 11D7D4 8002B9D4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 11D7D8 8002B9D8 8FB00018 */  lw         $s0, 0x18($sp)
/* 11D7DC 8002B9DC D7B40030 */  ldc1       $f20, 0x30($sp)
/* 11D7E0 8002B9E0 03E00008 */  jr         $ra
/* 11D7E4 8002B9E4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8002B9E8_11D7E8
/* 11D7E8 8002B9E8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11D7EC 8002B9EC AFB1001C */  sw         $s1, 0x1c($sp)
/* 11D7F0 8002B9F0 00808821 */  addu       $s1, $a0, $zero
/* 11D7F4 8002B9F4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 11D7F8 8002B9F8 AFB00018 */  sw         $s0, 0x18($sp)
/* 11D7FC 8002B9FC 9624000E */  lhu        $a0, 0xe($s1)
/* 11D800 8002BA00 2C820010 */  sltiu      $v0, $a0, 0x10
/* 11D804 8002BA04 10400007 */  beqz       $v0, .L8002BA24
/* 11D808 8002BA08 00000000 */   nop
/* 11D80C 8002BA0C 8E220008 */  lw         $v0, 8($s1)
/* 11D810 8002BA10 8C430014 */  lw         $v1, 0x14($v0)
/* 11D814 8002BA14 00041040 */  sll        $v0, $a0, 1
/* 11D818 8002BA18 00431021 */  addu       $v0, $v0, $v1
/* 11D81C 8002BA1C 24036F6D */  addiu      $v1, $zero, 0x6f6d
/* 11D820 8002BA20 A4430000 */  sh         $v1, ($v0)
.L8002BA24:
/* 11D824 8002BA24 9622000C */  lhu        $v0, 0xc($s1)
/* 11D828 8002BA28 24420001 */  addiu      $v0, $v0, 1
/* 11D82C 8002BA2C A622000C */  sh         $v0, 0xc($s1)
/* 11D830 8002BA30 30420001 */  andi       $v0, $v0, 1
/* 11D834 8002BA34 14400004 */  bnez       $v0, .L8002BA48
/* 11D838 8002BA38 00000000 */   nop
/* 11D83C 8002BA3C 9622000E */  lhu        $v0, 0xe($s1)
/* 11D840 8002BA40 24420001 */  addiu      $v0, $v0, 1
/* 11D844 8002BA44 A622000E */  sh         $v0, 0xe($s1)
.L8002BA48:
/* 11D848 8002BA48 9623000C */  lhu        $v1, 0xc($s1)
/* 11D84C 8002BA4C 2C620043 */  sltiu      $v0, $v1, 0x43
/* 11D850 8002BA50 14400003 */  bnez       $v0, .L8002BA60
/* 11D854 8002BA54 24020034 */   addiu     $v0, $zero, 0x34
/* 11D858 8002BA58 0800AEB0 */  j          .L8002BAC0
/* 11D85C 8002BA5C 24020001 */   addiu     $v0, $zero, 1
.L8002BA60:
/* 11D860 8002BA60 14620009 */  bne        $v1, $v0, .L8002BA88
/* 11D864 8002BA64 00000000 */   nop
/* 11D868 8002BA68 0C02A5C1 */  jal        func_800A9704
/* 11D86C 8002BA6C 2404000F */   addiu     $a0, $zero, 0xf
/* 11D870 8002BA70 AFA00010 */  sw         $zero, 0x10($sp)
/* 11D874 8002BA74 2404FFFE */  addiu      $a0, $zero, -2
/* 11D878 8002BA78 2405FFFF */  addiu      $a1, $zero, -1
/* 11D87C 8002BA7C 2406000F */  addiu      $a2, $zero, 0xf
/* 11D880 8002BA80 0C026C9A */  jal        func_8009B268
/* 11D884 8002BA84 00003821 */   addu      $a3, $zero, $zero
.L8002BA88:
/* 11D888 8002BA88 8E240000 */  lw         $a0, ($s1)
/* 11D88C 8002BA8C 0C028A40 */  jal        func_800A2900
/* 11D890 8002BA90 00008021 */   addu      $s0, $zero, $zero
/* 11D894 8002BA94 3202FFFF */  andi       $v0, $s0, 0xffff
.L8002BA98:
/* 11D898 8002BA98 00021080 */  sll        $v0, $v0, 2
/* 11D89C 8002BA9C 00511021 */  addu       $v0, $v0, $s1
/* 11D8A0 8002BAA0 8C440004 */  lw         $a0, 4($v0)
/* 11D8A4 8002BAA4 0C028A40 */  jal        func_800A2900
/* 11D8A8 8002BAA8 26100001 */   addiu     $s0, $s0, 1
/* 11D8AC 8002BAAC 3202FFFF */  andi       $v0, $s0, 0xffff
/* 11D8B0 8002BAB0 2C420002 */  sltiu      $v0, $v0, 2
/* 11D8B4 8002BAB4 1440FFF8 */  bnez       $v0, .L8002BA98
/* 11D8B8 8002BAB8 3202FFFF */   andi      $v0, $s0, 0xffff
/* 11D8BC 8002BABC 00001021 */  addu       $v0, $zero, $zero
.L8002BAC0:
/* 11D8C0 8002BAC0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 11D8C4 8002BAC4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 11D8C8 8002BAC8 8FB00018 */  lw         $s0, 0x18($sp)
/* 11D8CC 8002BACC 03E00008 */  jr         $ra
/* 11D8D0 8002BAD0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002BAD4_11D8D4
/* 11D8D4 8002BAD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D8D8 8002BAD8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11D8DC 8002BADC 00808021 */  addu       $s0, $a0, $zero
/* 11D8E0 8002BAE0 12000007 */  beqz       $s0, .L8002BB00
/* 11D8E4 8002BAE4 AFBF0014 */   sw        $ra, 0x14($sp)
/* 11D8E8 8002BAE8 8E040000 */  lw         $a0, ($s0)
/* 11D8EC 8002BAEC 10800004 */  beqz       $a0, .L8002BB00
/* 11D8F0 8002BAF0 00000000 */   nop
/* 11D8F4 8002BAF4 0C0326A1 */  jal        func_800C9A84
/* 11D8F8 8002BAF8 00000000 */   nop
/* 11D8FC 8002BAFC AE000000 */  sw         $zero, ($s0)
.L8002BB00:
/* 11D900 8002BB00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11D904 8002BB04 8FB00010 */  lw         $s0, 0x10($sp)
/* 11D908 8002BB08 03E00008 */  jr         $ra
/* 11D90C 8002BB0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002BB10_11D910
/* 11D910 8002BB10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11D914 8002BB14 24040108 */  addiu      $a0, $zero, 0x108
/* 11D918 8002BB18 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11D91C 8002BB1C 0C032663 */  jal        func_800C998C
/* 11D920 8002BB20 AFB00010 */   sw        $s0, 0x10($sp)
/* 11D924 8002BB24 00408021 */  addu       $s0, $v0, $zero
/* 11D928 8002BB28 02002021 */  addu       $a0, $s0, $zero
/* 11D92C 8002BB2C 0C030134 */  jal        bzero
/* 11D930 8002BB30 24050108 */   addiu     $a1, $zero, 0x108
/* 11D934 8002BB34 AE000004 */  sw         $zero, 4($s0)
/* 11D938 8002BB38 8E050004 */  lw         $a1, 4($s0)
/* 11D93C 8002BB3C 2403FFFF */  addiu      $v1, $zero, -1
/* 11D940 8002BB40 AE030008 */  sw         $v1, 8($s0)
/* 11D944 8002BB44 8E060008 */  lw         $a2, 8($s0)
/* 11D948 8002BB48 AE000014 */  sw         $zero, 0x14($s0)
/* 11D94C 8002BB4C 8E070014 */  lw         $a3, 0x14($s0)
/* 11D950 8002BB50 3C013CA3 */  lui        $at, 0x3ca3
/* 11D954 8002BB54 3421D70A */  ori        $at, $at, 0xd70a
/* 11D958 8002BB58 44810000 */  mtc1       $at, $f0
/* 11D95C 8002BB5C 26040060 */  addiu      $a0, $s0, 0x60
/* 11D960 8002BB60 24020001 */  addiu      $v0, $zero, 1
/* 11D964 8002BB64 AE000000 */  sw         $zero, ($s0)
/* 11D968 8002BB68 AE02000C */  sw         $v0, 0xc($s0)
/* 11D96C 8002BB6C AE030010 */  sw         $v1, 0x10($s0)
/* 11D970 8002BB70 AE000018 */  sw         $zero, 0x18($s0)
/* 11D974 8002BB74 AE00001C */  sw         $zero, 0x1c($s0)
/* 11D978 8002BB78 AE030020 */  sw         $v1, 0x20($s0)
/* 11D97C 8002BB7C AE000024 */  sw         $zero, 0x24($s0)
/* 11D980 8002BB80 AE000034 */  sw         $zero, 0x34($s0)
/* 11D984 8002BB84 AE000038 */  sw         $zero, 0x38($s0)
/* 11D988 8002BB88 AE00003C */  sw         $zero, 0x3c($s0)
/* 11D98C 8002BB8C AE000040 */  sw         $zero, 0x40($s0)
/* 11D990 8002BB90 AE000044 */  sw         $zero, 0x44($s0)
/* 11D994 8002BB94 AE000048 */  sw         $zero, 0x48($s0)
/* 11D998 8002BB98 AE00004C */  sw         $zero, 0x4c($s0)
/* 11D99C 8002BB9C AE000050 */  sw         $zero, 0x50($s0)
/* 11D9A0 8002BBA0 AE000054 */  sw         $zero, 0x54($s0)
/* 11D9A4 8002BBA4 AE000058 */  sw         $zero, 0x58($s0)
/* 11D9A8 8002BBA8 24A5FFFF */  addiu      $a1, $a1, -1
/* 11D9AC 8002BBAC AE050028 */  sw         $a1, 0x28($s0)
/* 11D9B0 8002BBB0 AE06002C */  sw         $a2, 0x2c($s0)
/* 11D9B4 8002BBB4 AE070030 */  sw         $a3, 0x30($s0)
/* 11D9B8 8002BBB8 0C02FAB0 */  jal        func_800BEAC0
/* 11D9BC 8002BBBC E600005C */   swc1      $f0, 0x5c($s0)
/* 11D9C0 8002BBC0 0C02FAB0 */  jal        func_800BEAC0
/* 11D9C4 8002BBC4 260400A0 */   addiu     $a0, $s0, 0xa0
/* 11D9C8 8002BBC8 3C013F80 */  lui        $at, 0x3f80
/* 11D9CC 8002BBCC 44810000 */  mtc1       $at, $f0
/* 11D9D0 8002BBD0 02001021 */  addu       $v0, $s0, $zero
/* 11D9D4 8002BBD4 2403FFFF */  addiu      $v1, $zero, -1
/* 11D9D8 8002BBD8 AC4000F8 */  sw         $zero, 0xf8($v0)
/* 11D9DC 8002BBDC A44300FC */  sh         $v1, 0xfc($v0)
/* 11D9E0 8002BBE0 AC400100 */  sw         $zero, 0x100($v0)
/* 11D9E4 8002BBE4 A44000F0 */  sh         $zero, 0xf0($v0)
/* 11D9E8 8002BBE8 A44000F2 */  sh         $zero, 0xf2($v0)
/* 11D9EC 8002BBEC A44000F4 */  sh         $zero, 0xf4($v0)
/* 11D9F0 8002BBF0 E44000E0 */  swc1       $f0, 0xe0($v0)
/* 11D9F4 8002BBF4 E44000E4 */  swc1       $f0, 0xe4($v0)
/* 11D9F8 8002BBF8 E44000E8 */  swc1       $f0, 0xe8($v0)
/* 11D9FC 8002BBFC E44000EC */  swc1       $f0, 0xec($v0)
/* 11DA00 8002BC00 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11DA04 8002BC04 8FB00010 */  lw         $s0, 0x10($sp)
/* 11DA08 8002BC08 03E00008 */  jr         $ra
/* 11DA0C 8002BC0C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002BC10_11DA10
/* 11DA10 8002BC10 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11DA14 8002BC14 AFB00010 */  sw         $s0, 0x10($sp)
/* 11DA18 8002BC18 00808021 */  addu       $s0, $a0, $zero
/* 11DA1C 8002BC1C 12000020 */  beqz       $s0, .L8002BCA0
/* 11DA20 8002BC20 AFBF0014 */   sw        $ra, 0x14($sp)
/* 11DA24 8002BC24 8E040000 */  lw         $a0, ($s0)
/* 11DA28 8002BC28 1080001D */  beqz       $a0, .L8002BCA0
/* 11DA2C 8002BC2C 00000000 */   nop
/* 11DA30 8002BC30 0C00B481 */  jal        func_8002D204_11F004
/* 11DA34 8002BC34 00002821 */   addu      $a1, $zero, $zero
/* 11DA38 8002BC38 8E020000 */  lw         $v0, ($s0)
/* 11DA3C 8002BC3C 0C027E98 */  jal        func_8009FA60
/* 11DA40 8002BC40 8C440034 */   lw        $a0, 0x34($v0)
/* 11DA44 8002BC44 8E020000 */  lw         $v0, ($s0)
/* 11DA48 8002BC48 AC400034 */  sw         $zero, 0x34($v0)
/* 11DA4C 8002BC4C 8E020000 */  lw         $v0, ($s0)
/* 11DA50 8002BC50 0C027880 */  jal        func_8009E200
/* 11DA54 8002BC54 8C440038 */   lw        $a0, 0x38($v0)
/* 11DA58 8002BC58 8E020000 */  lw         $v0, ($s0)
/* 11DA5C 8002BC5C AC400038 */  sw         $zero, 0x38($v0)
/* 11DA60 8002BC60 8E020000 */  lw         $v0, ($s0)
/* 11DA64 8002BC64 0C027BB8 */  jal        func_8009EEE0
/* 11DA68 8002BC68 8C44003C */   lw        $a0, 0x3c($v0)
/* 11DA6C 8002BC6C 8E020000 */  lw         $v0, ($s0)
/* 11DA70 8002BC70 AC40003C */  sw         $zero, 0x3c($v0)
/* 11DA74 8002BC74 8E020000 */  lw         $v0, ($s0)
/* 11DA78 8002BC78 8C4400F8 */  lw         $a0, 0xf8($v0)
/* 11DA7C 8002BC7C 10800005 */  beqz       $a0, .L8002BC94
/* 11DA80 8002BC80 00000000 */   nop
/* 11DA84 8002BC84 0C0326A1 */  jal        func_800C9A84
/* 11DA88 8002BC88 00000000 */   nop
/* 11DA8C 8002BC8C 8E020000 */  lw         $v0, ($s0)
/* 11DA90 8002BC90 AC4000F8 */  sw         $zero, 0xf8($v0)
.L8002BC94:
/* 11DA94 8002BC94 0C0326A1 */  jal        func_800C9A84
/* 11DA98 8002BC98 8E040000 */   lw        $a0, ($s0)
/* 11DA9C 8002BC9C AE000000 */  sw         $zero, ($s0)
.L8002BCA0:
/* 11DAA0 8002BCA0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11DAA4 8002BCA4 8FB00010 */  lw         $s0, 0x10($sp)
/* 11DAA8 8002BCA8 03E00008 */  jr         $ra
/* 11DAAC 8002BCAC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002BCB0_11DAB0
/* 11DAB0 8002BCB0 00802821 */  addu       $a1, $a0, $zero
/* 11DAB4 8002BCB4 14A00003 */  bnez       $a1, .L8002BCC4
/* 11DAB8 8002BCB8 00000000 */   nop
/* 11DABC 8002BCBC 0800AF3D */  j          .L8002BCF4
/* 11DAC0 8002BCC0 00001021 */   addu      $v0, $zero, $zero
.L8002BCC4:
/* 11DAC4 8002BCC4 8CA40028 */  lw         $a0, 0x28($a1)
/* 11DAC8 8002BCC8 8CA30004 */  lw         $v1, 4($a1)
/* 11DACC 8002BCCC 14830009 */  bne        $a0, $v1, .L8002BCF4
/* 11DAD0 8002BCD0 24020001 */   addiu     $v0, $zero, 1
/* 11DAD4 8002BCD4 8CA40030 */  lw         $a0, 0x30($a1)
/* 11DAD8 8002BCD8 8CA30014 */  lw         $v1, 0x14($a1)
/* 11DADC 8002BCDC 14830005 */  bne        $a0, $v1, .L8002BCF4
/* 11DAE0 8002BCE0 00000000 */   nop
/* 11DAE4 8002BCE4 8CA2002C */  lw         $v0, 0x2c($a1)
/* 11DAE8 8002BCE8 8CA30008 */  lw         $v1, 8($a1)
/* 11DAEC 8002BCEC 00431026 */  xor        $v0, $v0, $v1
/* 11DAF0 8002BCF0 0002102B */  sltu       $v0, $zero, $v0
.L8002BCF4:
/* 11DAF4 8002BCF4 03E00008 */  jr         $ra
/* 11DAF8 8002BCF8 00000000 */   nop

glabel func_8002BCFC_11DAFC
/* 11DAFC 8002BCFC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 11DB00 8002BD00 AFB00018 */  sw         $s0, 0x18($sp)
/* 11DB04 8002BD04 00808021 */  addu       $s0, $a0, $zero
/* 11DB08 8002BD08 AFBF0024 */  sw         $ra, 0x24($sp)
/* 11DB0C 8002BD0C AFB20020 */  sw         $s2, 0x20($sp)
/* 11DB10 8002BD10 1200005A */  beqz       $s0, .L8002BE7C
/* 11DB14 8002BD14 AFB1001C */   sw        $s1, 0x1c($sp)
/* 11DB18 8002BD18 8E030028 */  lw         $v1, 0x28($s0)
/* 11DB1C 8002BD1C 8E020004 */  lw         $v0, 4($s0)
/* 11DB20 8002BD20 1462000A */  bne        $v1, $v0, .L8002BD4C
/* 11DB24 8002BD24 24020001 */   addiu     $v0, $zero, 1
/* 11DB28 8002BD28 8E030030 */  lw         $v1, 0x30($s0)
/* 11DB2C 8002BD2C 8E020014 */  lw         $v0, 0x14($s0)
/* 11DB30 8002BD30 14620006 */  bne        $v1, $v0, .L8002BD4C
/* 11DB34 8002BD34 24020001 */   addiu     $v0, $zero, 1
/* 11DB38 8002BD38 8E03002C */  lw         $v1, 0x2c($s0)
/* 11DB3C 8002BD3C 8E020008 */  lw         $v0, 8($s0)
/* 11DB40 8002BD40 14620002 */  bne        $v1, $v0, .L8002BD4C
/* 11DB44 8002BD44 24020001 */   addiu     $v0, $zero, 1
/* 11DB48 8002BD48 00001021 */  addu       $v0, $zero, $zero
.L8002BD4C:
/* 11DB4C 8002BD4C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11DB50 8002BD50 1040004A */  beqz       $v0, .L8002BE7C
/* 11DB54 8002BD54 00000000 */   nop
/* 11DB58 8002BD58 8E040034 */  lw         $a0, 0x34($s0)
/* 11DB5C 8002BD5C 0C027E98 */  jal        func_8009FA60
/* 11DB60 8002BD60 2411FFFF */   addiu     $s1, $zero, -1
/* 11DB64 8002BD64 86040006 */  lh         $a0, 6($s0)
/* 11DB68 8002BD68 8E050014 */  lw         $a1, 0x14($s0)
/* 11DB6C 8002BD6C 0C027DAC */  jal        func_8009F6B0
/* 11DB70 8002BD70 00003021 */   addu      $a2, $zero, $zero
/* 11DB74 8002BD74 8E040038 */  lw         $a0, 0x38($s0)
/* 11DB78 8002BD78 0C027880 */  jal        func_8009E200
/* 11DB7C 8002BD7C AE020034 */   sw        $v0, 0x34($s0)
/* 11DB80 8002BD80 8E04003C */  lw         $a0, 0x3c($s0)
/* 11DB84 8002BD84 0C027BB8 */  jal        func_8009EEE0
/* 11DB88 8002BD88 AE000038 */   sw        $zero, 0x38($s0)
/* 11DB8C 8002BD8C 8E020008 */  lw         $v0, 8($s0)
/* 11DB90 8002BD90 1051002B */  beq        $v0, $s1, .L8002BE40
/* 11DB94 8002BD94 AE00003C */   sw        $zero, 0x3c($s0)
/* 11DB98 8002BD98 86040006 */  lh         $a0, 6($s0)
/* 11DB9C 8002BD9C 0C027D50 */  jal        func_8009F540
/* 11DBA0 8002BDA0 00000000 */   nop
/* 11DBA4 8002BDA4 00409021 */  addu       $s2, $v0, $zero
/* 11DBA8 8002BDA8 52400025 */  beql       $s2, $zero, .L8002BE40
/* 11DBAC 8002BDAC AE000040 */   sw        $zero, 0x40($s0)
/* 11DBB0 8002BDB0 86420002 */  lh         $v0, 2($s2)
/* 11DBB4 8002BDB4 8E040008 */  lw         $a0, 8($s0)
/* 11DBB8 8002BDB8 2443FFFF */  addiu      $v1, $v0, -1
/* 11DBBC 8002BDBC 0064102A */  slt        $v0, $v1, $a0
/* 11DBC0 8002BDC0 10400003 */  beqz       $v0, .L8002BDD0
/* 11DBC4 8002BDC4 2882FFFF */   slti      $v0, $a0, -1
/* 11DBC8 8002BDC8 0800AF76 */  j          .L8002BDD8
/* 11DBCC 8002BDCC AE030008 */   sw        $v1, 8($s0)
.L8002BDD0:
/* 11DBD0 8002BDD0 54400001 */  bnezl      $v0, .L8002BDD8
/* 11DBD4 8002BDD4 AE110008 */   sw        $s1, 8($s0)
.L8002BDD8:
/* 11DBD8 8002BDD8 8E020008 */  lw         $v0, 8($s0)
/* 11DBDC 8002BDDC 8E510004 */  lw         $s1, 4($s2)
/* 11DBE0 8002BDE0 00021100 */  sll        $v0, $v0, 4
/* 11DBE4 8002BDE4 02228821 */  addu       $s1, $s1, $v0
/* 11DBE8 8002BDE8 86240000 */  lh         $a0, ($s1)
/* 11DBEC 8002BDEC C602000C */  lwc1       $f2, 0xc($s0)
/* 11DBF0 8002BDF0 468010A0 */  cvt.s.w    $f2, $f2
/* 11DBF4 8002BDF4 44051000 */  mfc1       $a1, $f2
/* 11DBF8 8002BDF8 00000000 */  nop
/* 11DBFC 8002BDFC 0C027814 */  jal        func_8009E050
/* 11DC00 8002BE00 00003021 */   addu      $a2, $zero, $zero
/* 11DC04 8002BE04 AE020038 */  sw         $v0, 0x38($s0)
/* 11DC08 8002BE08 86250002 */  lh         $a1, 2($s1)
/* 11DC0C 8002BE0C 2402FFFF */  addiu      $v0, $zero, -1
/* 11DC10 8002BE10 50A2000B */  beql       $a1, $v0, .L8002BE40
/* 11DC14 8002BE14 AE120040 */   sw        $s2, 0x40($s0)
/* 11DC18 8002BE18 92270008 */  lbu        $a3, 8($s1)
/* 11DC1C 8002BE1C C600000C */  lwc1       $f0, 0xc($s0)
/* 11DC20 8002BE20 46800020 */  cvt.s.w    $f0, $f0
/* 11DC24 8002BE24 AFA00010 */  sw         $zero, 0x10($sp)
/* 11DC28 8002BE28 8E040034 */  lw         $a0, 0x34($s0)
/* 11DC2C 8002BE2C 44060000 */  mfc1       $a2, $f0
/* 11DC30 8002BE30 0C027B10 */  jal        func_8009EC40
/* 11DC34 8002BE34 00000000 */   nop
/* 11DC38 8002BE38 AE02003C */  sw         $v0, 0x3c($s0)
/* 11DC3C 8002BE3C AE120040 */  sw         $s2, 0x40($s0)
.L8002BE40:
/* 11DC40 8002BE40 8E050020 */  lw         $a1, 0x20($s0)
/* 11DC44 8002BE44 2402FFFF */  addiu      $v0, $zero, -1
/* 11DC48 8002BE48 10A20004 */  beq        $a1, $v0, .L8002BE5C
/* 11DC4C 8002BE4C 00052C00 */   sll       $a1, $a1, 0x10
/* 11DC50 8002BE50 8E040034 */  lw         $a0, 0x34($s0)
/* 11DC54 8002BE54 0C028703 */  jal        func_800A1C0C
/* 11DC58 8002BE58 00052C03 */   sra       $a1, $a1, 0x10
.L8002BE5C:
/* 11DC5C 8002BE5C 8E020004 */  lw         $v0, 4($s0)
/* 11DC60 8002BE60 8E030014 */  lw         $v1, 0x14($s0)
/* 11DC64 8002BE64 8E050008 */  lw         $a1, 8($s0)
/* 11DC68 8002BE68 02002021 */  addu       $a0, $s0, $zero
/* 11DC6C 8002BE6C AC820028 */  sw         $v0, 0x28($a0)
/* 11DC70 8002BE70 AC830030 */  sw         $v1, 0x30($a0)
/* 11DC74 8002BE74 0C00B3AA */  jal        func_8002CEA8_11ECA8
/* 11DC78 8002BE78 AC85002C */   sw        $a1, 0x2c($a0)
.L8002BE7C:
/* 11DC7C 8002BE7C 8FBF0024 */  lw         $ra, 0x24($sp)
/* 11DC80 8002BE80 8FB20020 */  lw         $s2, 0x20($sp)
/* 11DC84 8002BE84 8FB1001C */  lw         $s1, 0x1c($sp)
/* 11DC88 8002BE88 8FB00018 */  lw         $s0, 0x18($sp)
/* 11DC8C 8002BE8C 03E00008 */  jr         $ra
/* 11DC90 8002BE90 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002BE94_11DC94
/* 11DC94 8002BE94 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 11DC98 8002BE98 AFB00060 */  sw         $s0, 0x60($sp)
/* 11DC9C 8002BE9C 00808021 */  addu       $s0, $a0, $zero
/* 11DCA0 8002BEA0 AFBF0068 */  sw         $ra, 0x68($sp)
/* 11DCA4 8002BEA4 1200013F */  beqz       $s0, .L8002C3A4
/* 11DCA8 8002BEA8 AFB10064 */   sw        $s1, 0x64($sp)
/* 11DCAC 8002BEAC 0C00BB1E */  jal        func_8002EC78_120A78
/* 11DCB0 8002BEB0 00000000 */   nop
/* 11DCB4 8002BEB4 C600005C */  lwc1       $f0, 0x5c($s0)
/* 11DCB8 8002BEB8 E7A00010 */  swc1       $f0, 0x10($sp)
/* 11DCBC 8002BEBC C6000044 */  lwc1       $f0, 0x44($s0)
/* 11DCC0 8002BEC0 E7A00014 */  swc1       $f0, 0x14($sp)
/* 11DCC4 8002BEC4 C6000048 */  lwc1       $f0, 0x48($s0)
/* 11DCC8 8002BEC8 E7A00018 */  swc1       $f0, 0x18($sp)
/* 11DCCC 8002BECC C600004C */  lwc1       $f0, 0x4c($s0)
/* 11DCD0 8002BED0 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 11DCD4 8002BED4 8E050050 */  lw         $a1, 0x50($s0)
/* 11DCD8 8002BED8 8E060054 */  lw         $a2, 0x54($s0)
/* 11DCDC 8002BEDC 8E070058 */  lw         $a3, 0x58($s0)
/* 11DCE0 8002BEE0 0C02FD0E */  jal        func_800BF438
/* 11DCE4 8002BEE4 27A40020 */   addiu     $a0, $sp, 0x20
/* 11DCE8 8002BEE8 8E020000 */  lw         $v0, ($s0)
/* 11DCEC 8002BEEC 30420001 */  andi       $v0, $v0, 1
/* 11DCF0 8002BEF0 10400009 */  beqz       $v0, .L8002BF18
/* 11DCF4 8002BEF4 27A40020 */   addiu     $a0, $sp, 0x20
/* 11DCF8 8002BEF8 26050060 */  addiu      $a1, $s0, 0x60
/* 11DCFC 8002BEFC 0C02FA0C */  jal        func_800BE830
/* 11DD00 8002BF00 00A03021 */   addu      $a2, $a1, $zero
/* 11DD04 8002BF04 8E020000 */  lw         $v0, ($s0)
/* 11DD08 8002BF08 2403FFFE */  addiu      $v1, $zero, -2
/* 11DD0C 8002BF0C 00431024 */  and        $v0, $v0, $v1
/* 11DD10 8002BF10 0800AFD4 */  j          .L8002BF50
/* 11DD14 8002BF14 AE020000 */   sw        $v0, ($s0)
.L8002BF18:
/* 11DD18 8002BF18 26070060 */  addiu      $a3, $s0, 0x60
/* 11DD1C 8002BF1C 27A60020 */  addiu      $a2, $sp, 0x20
/* 11DD20 8002BF20 27A80060 */  addiu      $t0, $sp, 0x60
.L8002BF24:
/* 11DD24 8002BF24 8CC20000 */  lw         $v0, ($a2)
/* 11DD28 8002BF28 8CC30004 */  lw         $v1, 4($a2)
/* 11DD2C 8002BF2C 8CC40008 */  lw         $a0, 8($a2)
/* 11DD30 8002BF30 8CC5000C */  lw         $a1, 0xc($a2)
/* 11DD34 8002BF34 ACE20000 */  sw         $v0, ($a3)
/* 11DD38 8002BF38 ACE30004 */  sw         $v1, 4($a3)
/* 11DD3C 8002BF3C ACE40008 */  sw         $a0, 8($a3)
/* 11DD40 8002BF40 ACE5000C */  sw         $a1, 0xc($a3)
/* 11DD44 8002BF44 24C60010 */  addiu      $a2, $a2, 0x10
/* 11DD48 8002BF48 14C8FFF6 */  bne        $a2, $t0, .L8002BF24
/* 11DD4C 8002BF4C 24E70010 */   addiu     $a3, $a3, 0x10
.L8002BF50:
/* 11DD50 8002BF50 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 11DD54 8002BF54 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 11DD58 8002BF58 3C013F80 */  lui        $at, 0x3f80
/* 11DD5C 8002BF5C 44810000 */  mtc1       $at, $f0
/* 11DD60 8002BF60 3C02DA38 */  lui        $v0, 0xda38
/* 11DD64 8002BF64 34420003 */  ori        $v0, $v0, 3
/* 11DD68 8002BF68 AC620000 */  sw         $v0, ($v1)
/* 11DD6C 8002BF6C 26020060 */  addiu      $v0, $s0, 0x60
/* 11DD70 8002BF70 AC620004 */  sw         $v0, 4($v1)
/* 11DD74 8002BF74 8E040034 */  lw         $a0, 0x34($s0)
/* 11DD78 8002BF78 8E020018 */  lw         $v0, 0x18($s0)
/* 11DD7C 8002BF7C 24630008 */  addiu      $v1, $v1, 8
/* 11DD80 8002BF80 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 11DD84 8002BF84 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 11DD88 8002BF88 A0820067 */  sb         $v0, 0x67($a0)
/* 11DD8C 8002BF8C C60200E0 */  lwc1       $f2, 0xe0($s0)
/* 11DD90 8002BF90 4602003C */  c.lt.s     $f0, $f2
/* 11DD94 8002BF94 00000000 */  nop
/* 11DD98 8002BF98 00000000 */  nop
/* 11DD9C 8002BF9C 45030008 */  bc1tl      .L8002BFC0
/* 11DDA0 8002BFA0 46000086 */   mov.s     $f2, $f0
/* 11DDA4 8002BFA4 44800000 */  mtc1       $zero, $f0
/* 11DDA8 8002BFA8 00000000 */  nop
/* 11DDAC 8002BFAC 4600103C */  c.lt.s     $f2, $f0
/* 11DDB0 8002BFB0 00000000 */  nop
/* 11DDB4 8002BFB4 00000000 */  nop
/* 11DDB8 8002BFB8 45030001 */  bc1tl      .L8002BFC0
/* 11DDBC 8002BFBC 46000086 */   mov.s     $f2, $f0
.L8002BFC0:
/* 11DDC0 8002BFC0 3C01437F */  lui        $at, 0x437f
/* 11DDC4 8002BFC4 44810000 */  mtc1       $at, $f0
/* 11DDC8 8002BFC8 00000000 */  nop
/* 11DDCC 8002BFCC 46001082 */  mul.s      $f2, $f2, $f0
/* 11DDD0 8002BFD0 3C014F00 */  lui        $at, 0x4f00
/* 11DDD4 8002BFD4 44810000 */  mtc1       $at, $f0
/* 11DDD8 8002BFD8 00000000 */  nop
/* 11DDDC 8002BFDC 4602003E */  c.le.s     $f0, $f2
/* 11DDE0 8002BFE0 00000000 */  nop
/* 11DDE4 8002BFE4 00000000 */  nop
/* 11DDE8 8002BFE8 45030005 */  bc1tl      .L8002C000
/* 11DDEC 8002BFEC 46001001 */   sub.s     $f0, $f2, $f0
/* 11DDF0 8002BFF0 4600100D */  trunc.w.s  $f0, $f2
/* 11DDF4 8002BFF4 44050000 */  mfc1       $a1, $f0
/* 11DDF8 8002BFF8 0800B004 */  j          .L8002C010
/* 11DDFC 8002BFFC 00000000 */   nop
.L8002C000:
/* 11DE00 8002C000 4600008D */  trunc.w.s  $f2, $f0
/* 11DE04 8002C004 44051000 */  mfc1       $a1, $f2
/* 11DE08 8002C008 3C028000 */  lui        $v0, 0x8000
/* 11DE0C 8002C00C 00A22825 */  or         $a1, $a1, $v0
.L8002C010:
/* 11DE10 8002C010 C60200E4 */  lwc1       $f2, 0xe4($s0)
/* 11DE14 8002C014 3C013F80 */  lui        $at, 0x3f80
/* 11DE18 8002C018 44810000 */  mtc1       $at, $f0
/* 11DE1C 8002C01C 00000000 */  nop
/* 11DE20 8002C020 4602003C */  c.lt.s     $f0, $f2
/* 11DE24 8002C024 00000000 */  nop
/* 11DE28 8002C028 00000000 */  nop
/* 11DE2C 8002C02C 45030008 */  bc1tl      .L8002C050
/* 11DE30 8002C030 46000086 */   mov.s     $f2, $f0
/* 11DE34 8002C034 44800000 */  mtc1       $zero, $f0
/* 11DE38 8002C038 00000000 */  nop
/* 11DE3C 8002C03C 4600103C */  c.lt.s     $f2, $f0
/* 11DE40 8002C040 00000000 */  nop
/* 11DE44 8002C044 00000000 */  nop
/* 11DE48 8002C048 45030001 */  bc1tl      .L8002C050
/* 11DE4C 8002C04C 46000086 */   mov.s     $f2, $f0
.L8002C050:
/* 11DE50 8002C050 3C01437F */  lui        $at, 0x437f
/* 11DE54 8002C054 44810000 */  mtc1       $at, $f0
/* 11DE58 8002C058 00000000 */  nop
/* 11DE5C 8002C05C 46001082 */  mul.s      $f2, $f2, $f0
/* 11DE60 8002C060 3C014F00 */  lui        $at, 0x4f00
/* 11DE64 8002C064 44810000 */  mtc1       $at, $f0
/* 11DE68 8002C068 00000000 */  nop
/* 11DE6C 8002C06C 4602003E */  c.le.s     $f0, $f2
/* 11DE70 8002C070 00000000 */  nop
/* 11DE74 8002C074 00000000 */  nop
/* 11DE78 8002C078 45030005 */  bc1tl      .L8002C090
/* 11DE7C 8002C07C 46001001 */   sub.s     $f0, $f2, $f0
/* 11DE80 8002C080 4600100D */  trunc.w.s  $f0, $f2
/* 11DE84 8002C084 44060000 */  mfc1       $a2, $f0
/* 11DE88 8002C088 0800B028 */  j          .L8002C0A0
/* 11DE8C 8002C08C 00000000 */   nop
.L8002C090:
/* 11DE90 8002C090 4600008D */  trunc.w.s  $f2, $f0
/* 11DE94 8002C094 44061000 */  mfc1       $a2, $f2
/* 11DE98 8002C098 3C028000 */  lui        $v0, 0x8000
/* 11DE9C 8002C09C 00C23025 */  or         $a2, $a2, $v0
.L8002C0A0:
/* 11DEA0 8002C0A0 C60200E8 */  lwc1       $f2, 0xe8($s0)
/* 11DEA4 8002C0A4 3C013F80 */  lui        $at, 0x3f80
/* 11DEA8 8002C0A8 44810000 */  mtc1       $at, $f0
/* 11DEAC 8002C0AC 00000000 */  nop
/* 11DEB0 8002C0B0 4602003C */  c.lt.s     $f0, $f2
/* 11DEB4 8002C0B4 00000000 */  nop
/* 11DEB8 8002C0B8 00000000 */  nop
/* 11DEBC 8002C0BC 45030008 */  bc1tl      .L8002C0E0
/* 11DEC0 8002C0C0 46000086 */   mov.s     $f2, $f0
/* 11DEC4 8002C0C4 44800000 */  mtc1       $zero, $f0
/* 11DEC8 8002C0C8 00000000 */  nop
/* 11DECC 8002C0CC 4600103C */  c.lt.s     $f2, $f0
/* 11DED0 8002C0D0 00000000 */  nop
/* 11DED4 8002C0D4 00000000 */  nop
/* 11DED8 8002C0D8 45030001 */  bc1tl      .L8002C0E0
/* 11DEDC 8002C0DC 46000086 */   mov.s     $f2, $f0
.L8002C0E0:
/* 11DEE0 8002C0E0 3C01437F */  lui        $at, 0x437f
/* 11DEE4 8002C0E4 44810000 */  mtc1       $at, $f0
/* 11DEE8 8002C0E8 00000000 */  nop
/* 11DEEC 8002C0EC 46001082 */  mul.s      $f2, $f2, $f0
/* 11DEF0 8002C0F0 3C014F00 */  lui        $at, 0x4f00
/* 11DEF4 8002C0F4 44810000 */  mtc1       $at, $f0
/* 11DEF8 8002C0F8 00000000 */  nop
/* 11DEFC 8002C0FC 4602003E */  c.le.s     $f0, $f2
/* 11DF00 8002C100 00000000 */  nop
/* 11DF04 8002C104 00000000 */  nop
/* 11DF08 8002C108 45030005 */  bc1tl      .L8002C120
/* 11DF0C 8002C10C 46001001 */   sub.s     $f0, $f2, $f0
/* 11DF10 8002C110 4600100D */  trunc.w.s  $f0, $f2
/* 11DF14 8002C114 44070000 */  mfc1       $a3, $f0
/* 11DF18 8002C118 0800B04C */  j          .L8002C130
/* 11DF1C 8002C11C 00000000 */   nop
.L8002C120:
/* 11DF20 8002C120 4600008D */  trunc.w.s  $f2, $f0
/* 11DF24 8002C124 44071000 */  mfc1       $a3, $f2
/* 11DF28 8002C128 3C028000 */  lui        $v0, 0x8000
/* 11DF2C 8002C12C 00E23825 */  or         $a3, $a3, $v0
.L8002C130:
/* 11DF30 8002C130 C60200EC */  lwc1       $f2, 0xec($s0)
/* 11DF34 8002C134 3C013F80 */  lui        $at, 0x3f80
/* 11DF38 8002C138 44810000 */  mtc1       $at, $f0
/* 11DF3C 8002C13C 00000000 */  nop
/* 11DF40 8002C140 4602003C */  c.lt.s     $f0, $f2
/* 11DF44 8002C144 00000000 */  nop
/* 11DF48 8002C148 00000000 */  nop
/* 11DF4C 8002C14C 45030008 */  bc1tl      .L8002C170
/* 11DF50 8002C150 46000086 */   mov.s     $f2, $f0
/* 11DF54 8002C154 44800000 */  mtc1       $zero, $f0
/* 11DF58 8002C158 00000000 */  nop
/* 11DF5C 8002C15C 4600103C */  c.lt.s     $f2, $f0
/* 11DF60 8002C160 00000000 */  nop
/* 11DF64 8002C164 00000000 */  nop
/* 11DF68 8002C168 45030001 */  bc1tl      .L8002C170
/* 11DF6C 8002C16C 46000086 */   mov.s     $f2, $f0
.L8002C170:
/* 11DF70 8002C170 3C01437F */  lui        $at, 0x437f
/* 11DF74 8002C174 44810000 */  mtc1       $at, $f0
/* 11DF78 8002C178 00000000 */  nop
/* 11DF7C 8002C17C 46001082 */  mul.s      $f2, $f2, $f0
/* 11DF80 8002C180 3C014F00 */  lui        $at, 0x4f00
/* 11DF84 8002C184 44810000 */  mtc1       $at, $f0
/* 11DF88 8002C188 00000000 */  nop
/* 11DF8C 8002C18C 4602003E */  c.le.s     $f0, $f2
/* 11DF90 8002C190 00000000 */  nop
/* 11DF94 8002C194 00000000 */  nop
/* 11DF98 8002C198 45030006 */  bc1tl      .L8002C1B4
/* 11DF9C 8002C19C 46001001 */   sub.s     $f0, $f2, $f0
/* 11DFA0 8002C1A0 4600100D */  trunc.w.s  $f0, $f2
/* 11DFA4 8002C1A4 44030000 */  mfc1       $v1, $f0
/* 11DFA8 8002C1A8 00000000 */  nop
/* 11DFAC 8002C1AC 0800B072 */  j          .L8002C1C8
/* 11DFB0 8002C1B0 306200FF */   andi      $v0, $v1, 0xff
.L8002C1B4:
/* 11DFB4 8002C1B4 4600008D */  trunc.w.s  $f2, $f0
/* 11DFB8 8002C1B8 44031000 */  mfc1       $v1, $f2
/* 11DFBC 8002C1BC 3C028000 */  lui        $v0, 0x8000
/* 11DFC0 8002C1C0 00621825 */  or         $v1, $v1, $v0
/* 11DFC4 8002C1C4 306200FF */  andi       $v0, $v1, 0xff
.L8002C1C8:
/* 11DFC8 8002C1C8 AFA20010 */  sw         $v0, 0x10($sp)
/* 11DFCC 8002C1CC 8E040034 */  lw         $a0, 0x34($s0)
/* 11DFD0 8002C1D0 30A500FF */  andi       $a1, $a1, 0xff
/* 11DFD4 8002C1D4 30C600FF */  andi       $a2, $a2, 0xff
/* 11DFD8 8002C1D8 0C027F5E */  jal        func_8009FD78
/* 11DFDC 8002C1DC 30E700FF */   andi      $a3, $a3, 0xff
/* 11DFE0 8002C1E0 8E030034 */  lw         $v1, 0x34($s0)
/* 11DFE4 8002C1E4 8E02001C */  lw         $v0, 0x1c($s0)
/* 11DFE8 8002C1E8 A0620066 */  sb         $v0, 0x66($v1)
/* 11DFEC 8002C1EC 8E020010 */  lw         $v0, 0x10($s0)
/* 11DFF0 8002C1F0 0441000D */  bgez       $v0, .L8002C228
/* 11DFF4 8002C1F4 2402FFFF */   addiu     $v0, $zero, -1
/* 11DFF8 8002C1F8 8E040038 */  lw         $a0, 0x38($s0)
/* 11DFFC 8002C1FC 10800003 */  beqz       $a0, .L8002C20C
/* 11E000 8002C200 AE020010 */   sw        $v0, 0x10($s0)
/* 11E004 8002C204 0C027AFA */  jal        func_8009EBE8
/* 11E008 8002C208 00000000 */   nop
.L8002C20C:
/* 11E00C 8002C20C 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E010 8002C210 10800047 */  beqz       $a0, .L8002C330
/* 11E014 8002C214 00000000 */   nop
/* 11E018 8002C218 0C027D3A */  jal        func_8009F4E8
/* 11E01C 8002C21C 00000000 */   nop
/* 11E020 8002C220 0800B0CC */  j          .L8002C330
/* 11E024 8002C224 00000000 */   nop
.L8002C228:
/* 11E028 8002C228 8E040038 */  lw         $a0, 0x38($s0)
/* 11E02C 8002C22C 1080004A */  beqz       $a0, .L8002C358
/* 11E030 8002C230 00000000 */   nop
/* 11E034 8002C234 0C027AF5 */  jal        func_8009EBD4
/* 11E038 8002C238 00000000 */   nop
/* 11E03C 8002C23C 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E040 8002C240 10800003 */  beqz       $a0, .L8002C250
/* 11E044 8002C244 00000000 */   nop
/* 11E048 8002C248 0C027D35 */  jal        func_8009F4D4
/* 11E04C 8002C24C 00000000 */   nop
.L8002C250:
/* 11E050 8002C250 8E040038 */  lw         $a0, 0x38($s0)
/* 11E054 8002C254 8E020010 */  lw         $v0, 0x10($s0)
/* 11E058 8002C258 84830024 */  lh         $v1, 0x24($a0)
/* 11E05C 8002C25C 10620035 */  beq        $v1, $v0, .L8002C334
/* 11E060 8002C260 240200FF */   addiu     $v0, $zero, 0xff
/* 11E064 8002C264 8483001E */  lh         $v1, 0x1e($a0)
/* 11E068 8002C268 14620009 */  bne        $v1, $v0, .L8002C290
/* 11E06C 8002C26C 00000000 */   nop
/* 11E070 8002C270 0C027ABB */  jal        func_8009EAEC
/* 11E074 8002C274 00000000 */   nop
/* 11E078 8002C278 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E07C 8002C27C 10800003 */  beqz       $a0, .L8002C28C
/* 11E080 8002C280 00000000 */   nop
/* 11E084 8002C284 0C027D2B */  jal        func_8009F4AC
/* 11E088 8002C288 00000000 */   nop
.L8002C28C:
/* 11E08C 8002C28C 8E040038 */  lw         $a0, 0x38($s0)
.L8002C290:
/* 11E090 8002C290 8E020010 */  lw         $v0, 0x10($s0)
/* 11E094 8002C294 84830024 */  lh         $v1, 0x24($a0)
/* 11E098 8002C298 0043102A */  slt        $v0, $v0, $v1
/* 11E09C 8002C29C 54400007 */  bnezl      $v0, .L8002C2BC
/* 11E0A0 8002C2A0 24030001 */   addiu     $v1, $zero, 1
/* 11E0A4 8002C2A4 A080002E */  sb         $zero, 0x2e($a0)
/* 11E0A8 8002C2A8 8E02003C */  lw         $v0, 0x3c($s0)
/* 11E0AC 8002C2AC 54400007 */  bnezl      $v0, .L8002C2CC
/* 11E0B0 8002C2B0 A040002E */   sb        $zero, 0x2e($v0)
/* 11E0B4 8002C2B4 0800B0B3 */  j          .L8002C2CC
/* 11E0B8 8002C2B8 00000000 */   nop
.L8002C2BC:
/* 11E0BC 8002C2BC A083002E */  sb         $v1, 0x2e($a0)
/* 11E0C0 8002C2C0 8E02003C */  lw         $v0, 0x3c($s0)
/* 11E0C4 8002C2C4 54400001 */  bnezl      $v0, .L8002C2CC
/* 11E0C8 8002C2C8 A043002E */   sb        $v1, 0x2e($v0)
.L8002C2CC:
/* 11E0CC 8002C2CC 8E040038 */  lw         $a0, 0x38($s0)
/* 11E0D0 8002C2D0 8E020010 */  lw         $v0, 0x10($s0)
/* 11E0D4 8002C2D4 84830024 */  lh         $v1, 0x24($a0)
/* 11E0D8 8002C2D8 10620016 */  beq        $v1, $v0, .L8002C334
/* 11E0DC 8002C2DC 00000000 */   nop
/* 11E0E0 8002C2E0 241100FF */  addiu      $s1, $zero, 0xff
.L8002C2E4:
/* 11E0E4 8002C2E4 8482001E */  lh         $v0, 0x1e($a0)
/* 11E0E8 8002C2E8 10510011 */  beq        $v0, $s1, .L8002C330
/* 11E0EC 8002C2EC 00000000 */   nop
/* 11E0F0 8002C2F0 0C027AFA */  jal        func_8009EBE8
/* 11E0F4 8002C2F4 00000000 */   nop
/* 11E0F8 8002C2F8 0C027AF5 */  jal        func_8009EBD4
/* 11E0FC 8002C2FC 8E040038 */   lw        $a0, 0x38($s0)
/* 11E100 8002C300 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E104 8002C304 10800005 */  beqz       $a0, .L8002C31C
/* 11E108 8002C308 00000000 */   nop
/* 11E10C 8002C30C 0C027D3A */  jal        func_8009F4E8
/* 11E110 8002C310 00000000 */   nop
/* 11E114 8002C314 0C027D35 */  jal        func_8009F4D4
/* 11E118 8002C318 8E04003C */   lw        $a0, 0x3c($s0)
.L8002C31C:
/* 11E11C 8002C31C 8E040038 */  lw         $a0, 0x38($s0)
/* 11E120 8002C320 8E020010 */  lw         $v0, 0x10($s0)
/* 11E124 8002C324 84830024 */  lh         $v1, 0x24($a0)
/* 11E128 8002C328 1462FFEE */  bne        $v1, $v0, .L8002C2E4
/* 11E12C 8002C32C 00000000 */   nop
.L8002C330:
/* 11E130 8002C330 8E040038 */  lw         $a0, 0x38($s0)
.L8002C334:
/* 11E134 8002C334 10800008 */  beqz       $a0, .L8002C358
/* 11E138 8002C338 00000000 */   nop
/* 11E13C 8002C33C C604000C */  lwc1       $f4, 0xc($s0)
/* 11E140 8002C340 46802120 */  cvt.s.w    $f4, $f4
/* 11E144 8002C344 44052000 */  mfc1       $a1, $f4
/* 11E148 8002C348 0C02795C */  jal        func_8009E570
/* 11E14C 8002C34C 00000000 */   nop
/* 11E150 8002C350 0C027A93 */  jal        func_8009EA4C
/* 11E154 8002C354 8E040038 */   lw        $a0, 0x38($s0)
.L8002C358:
/* 11E158 8002C358 8E02003C */  lw         $v0, 0x3c($s0)
/* 11E15C 8002C35C 1040000C */  beqz       $v0, .L8002C390
/* 11E160 8002C360 00000000 */   nop
/* 11E164 8002C364 8E040034 */  lw         $a0, 0x34($s0)
/* 11E168 8002C368 0C027F67 */  jal        func_8009FD9C
/* 11E16C 8002C36C 26050060 */   addiu     $a1, $s0, 0x60
/* 11E170 8002C370 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E174 8002C374 C604000C */  lwc1       $f4, 0xc($s0)
/* 11E178 8002C378 46802120 */  cvt.s.w    $f4, $f4
/* 11E17C 8002C37C 44052000 */  mfc1       $a1, $f4
/* 11E180 8002C380 0C027C5E */  jal        func_8009F178
/* 11E184 8002C384 00000000 */   nop
/* 11E188 8002C388 0C027CED */  jal        func_8009F3B4
/* 11E18C 8002C38C 8E04003C */   lw        $a0, 0x3c($s0)
.L8002C390:
/* 11E190 8002C390 8E040034 */  lw         $a0, 0x34($s0)
/* 11E194 8002C394 0C027F77 */  jal        func_8009FDDC
/* 11E198 8002C398 8E050038 */   lw        $a1, 0x38($s0)
/* 11E19C 8002C39C 0C00B3AA */  jal        func_8002CEA8_11ECA8
/* 11E1A0 8002C3A0 02002021 */   addu      $a0, $s0, $zero
.L8002C3A4:
/* 11E1A4 8002C3A4 8FBF0068 */  lw         $ra, 0x68($sp)
/* 11E1A8 8002C3A8 8FB10064 */  lw         $s1, 0x64($sp)
/* 11E1AC 8002C3AC 8FB00060 */  lw         $s0, 0x60($sp)
/* 11E1B0 8002C3B0 03E00008 */  jr         $ra
/* 11E1B4 8002C3B4 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002C3B8_11E1B8
/* 11E1B8 8002C3B8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 11E1BC 8002C3BC AFB00060 */  sw         $s0, 0x60($sp)
/* 11E1C0 8002C3C0 00808021 */  addu       $s0, $a0, $zero
/* 11E1C4 8002C3C4 AFBF0068 */  sw         $ra, 0x68($sp)
/* 11E1C8 8002C3C8 1200013A */  beqz       $s0, .L8002C8B4
/* 11E1CC 8002C3CC AFB10064 */   sw        $s1, 0x64($sp)
/* 11E1D0 8002C3D0 C600005C */  lwc1       $f0, 0x5c($s0)
/* 11E1D4 8002C3D4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 11E1D8 8002C3D8 C6000044 */  lwc1       $f0, 0x44($s0)
/* 11E1DC 8002C3DC E7A00014 */  swc1       $f0, 0x14($sp)
/* 11E1E0 8002C3E0 C6000048 */  lwc1       $f0, 0x48($s0)
/* 11E1E4 8002C3E4 E7A00018 */  swc1       $f0, 0x18($sp)
/* 11E1E8 8002C3E8 C600004C */  lwc1       $f0, 0x4c($s0)
/* 11E1EC 8002C3EC E7A0001C */  swc1       $f0, 0x1c($sp)
/* 11E1F0 8002C3F0 8E050050 */  lw         $a1, 0x50($s0)
/* 11E1F4 8002C3F4 8E060054 */  lw         $a2, 0x54($s0)
/* 11E1F8 8002C3F8 8E070058 */  lw         $a3, 0x58($s0)
/* 11E1FC 8002C3FC 0C02FD0E */  jal        func_800BF438
/* 11E200 8002C400 27A40020 */   addiu     $a0, $sp, 0x20
/* 11E204 8002C404 8E020000 */  lw         $v0, ($s0)
/* 11E208 8002C408 30420001 */  andi       $v0, $v0, 1
/* 11E20C 8002C40C 10400009 */  beqz       $v0, .L8002C434
/* 11E210 8002C410 27A40020 */   addiu     $a0, $sp, 0x20
/* 11E214 8002C414 26050060 */  addiu      $a1, $s0, 0x60
/* 11E218 8002C418 0C02FA0C */  jal        func_800BE830
/* 11E21C 8002C41C 00A03021 */   addu      $a2, $a1, $zero
/* 11E220 8002C420 8E020000 */  lw         $v0, ($s0)
/* 11E224 8002C424 2403FFFE */  addiu      $v1, $zero, -2
/* 11E228 8002C428 00431024 */  and        $v0, $v0, $v1
/* 11E22C 8002C42C 0800B11B */  j          .L8002C46C
/* 11E230 8002C430 AE020000 */   sw        $v0, ($s0)
.L8002C434:
/* 11E234 8002C434 26070060 */  addiu      $a3, $s0, 0x60
/* 11E238 8002C438 27A60020 */  addiu      $a2, $sp, 0x20
/* 11E23C 8002C43C 27A80060 */  addiu      $t0, $sp, 0x60
.L8002C440:
/* 11E240 8002C440 8CC20000 */  lw         $v0, ($a2)
/* 11E244 8002C444 8CC30004 */  lw         $v1, 4($a2)
/* 11E248 8002C448 8CC40008 */  lw         $a0, 8($a2)
/* 11E24C 8002C44C 8CC5000C */  lw         $a1, 0xc($a2)
/* 11E250 8002C450 ACE20000 */  sw         $v0, ($a3)
/* 11E254 8002C454 ACE30004 */  sw         $v1, 4($a3)
/* 11E258 8002C458 ACE40008 */  sw         $a0, 8($a3)
/* 11E25C 8002C45C ACE5000C */  sw         $a1, 0xc($a3)
/* 11E260 8002C460 24C60010 */  addiu      $a2, $a2, 0x10
/* 11E264 8002C464 14C8FFF6 */  bne        $a2, $t0, .L8002C440
/* 11E268 8002C468 24E70010 */   addiu     $a3, $a3, 0x10
.L8002C46C:
/* 11E26C 8002C46C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 11E270 8002C470 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 11E274 8002C474 3C013F80 */  lui        $at, 0x3f80
/* 11E278 8002C478 44810000 */  mtc1       $at, $f0
/* 11E27C 8002C47C 3C02DA38 */  lui        $v0, 0xda38
/* 11E280 8002C480 34420003 */  ori        $v0, $v0, 3
/* 11E284 8002C484 AC620000 */  sw         $v0, ($v1)
/* 11E288 8002C488 26020060 */  addiu      $v0, $s0, 0x60
/* 11E28C 8002C48C AC620004 */  sw         $v0, 4($v1)
/* 11E290 8002C490 8E040034 */  lw         $a0, 0x34($s0)
/* 11E294 8002C494 8E020018 */  lw         $v0, 0x18($s0)
/* 11E298 8002C498 24630008 */  addiu      $v1, $v1, 8
/* 11E29C 8002C49C 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 11E2A0 8002C4A0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 11E2A4 8002C4A4 A0820067 */  sb         $v0, 0x67($a0)
/* 11E2A8 8002C4A8 C60200E0 */  lwc1       $f2, 0xe0($s0)
/* 11E2AC 8002C4AC 4602003C */  c.lt.s     $f0, $f2
/* 11E2B0 8002C4B0 00000000 */  nop
/* 11E2B4 8002C4B4 00000000 */  nop
/* 11E2B8 8002C4B8 45030008 */  bc1tl      .L8002C4DC
/* 11E2BC 8002C4BC 46000086 */   mov.s     $f2, $f0
/* 11E2C0 8002C4C0 44800000 */  mtc1       $zero, $f0
/* 11E2C4 8002C4C4 00000000 */  nop
/* 11E2C8 8002C4C8 4600103C */  c.lt.s     $f2, $f0
/* 11E2CC 8002C4CC 00000000 */  nop
/* 11E2D0 8002C4D0 00000000 */  nop
/* 11E2D4 8002C4D4 45030001 */  bc1tl      .L8002C4DC
/* 11E2D8 8002C4D8 46000086 */   mov.s     $f2, $f0
.L8002C4DC:
/* 11E2DC 8002C4DC 3C01437F */  lui        $at, 0x437f
/* 11E2E0 8002C4E0 44810000 */  mtc1       $at, $f0
/* 11E2E4 8002C4E4 00000000 */  nop
/* 11E2E8 8002C4E8 46001082 */  mul.s      $f2, $f2, $f0
/* 11E2EC 8002C4EC 3C014F00 */  lui        $at, 0x4f00
/* 11E2F0 8002C4F0 44810000 */  mtc1       $at, $f0
/* 11E2F4 8002C4F4 00000000 */  nop
/* 11E2F8 8002C4F8 4602003E */  c.le.s     $f0, $f2
/* 11E2FC 8002C4FC 00000000 */  nop
/* 11E300 8002C500 00000000 */  nop
/* 11E304 8002C504 45030005 */  bc1tl      .L8002C51C
/* 11E308 8002C508 46001001 */   sub.s     $f0, $f2, $f0
/* 11E30C 8002C50C 4600100D */  trunc.w.s  $f0, $f2
/* 11E310 8002C510 44050000 */  mfc1       $a1, $f0
/* 11E314 8002C514 0800B14B */  j          .L8002C52C
/* 11E318 8002C518 00000000 */   nop
.L8002C51C:
/* 11E31C 8002C51C 4600008D */  trunc.w.s  $f2, $f0
/* 11E320 8002C520 44051000 */  mfc1       $a1, $f2
/* 11E324 8002C524 3C028000 */  lui        $v0, 0x8000
/* 11E328 8002C528 00A22825 */  or         $a1, $a1, $v0
.L8002C52C:
/* 11E32C 8002C52C C60200E4 */  lwc1       $f2, 0xe4($s0)
/* 11E330 8002C530 3C013F80 */  lui        $at, 0x3f80
/* 11E334 8002C534 44810000 */  mtc1       $at, $f0
/* 11E338 8002C538 00000000 */  nop
/* 11E33C 8002C53C 4602003C */  c.lt.s     $f0, $f2
/* 11E340 8002C540 00000000 */  nop
/* 11E344 8002C544 00000000 */  nop
/* 11E348 8002C548 45030008 */  bc1tl      .L8002C56C
/* 11E34C 8002C54C 46000086 */   mov.s     $f2, $f0
/* 11E350 8002C550 44800000 */  mtc1       $zero, $f0
/* 11E354 8002C554 00000000 */  nop
/* 11E358 8002C558 4600103C */  c.lt.s     $f2, $f0
/* 11E35C 8002C55C 00000000 */  nop
/* 11E360 8002C560 00000000 */  nop
/* 11E364 8002C564 45030001 */  bc1tl      .L8002C56C
/* 11E368 8002C568 46000086 */   mov.s     $f2, $f0
.L8002C56C:
/* 11E36C 8002C56C 3C01437F */  lui        $at, 0x437f
/* 11E370 8002C570 44810000 */  mtc1       $at, $f0
/* 11E374 8002C574 00000000 */  nop
/* 11E378 8002C578 46001082 */  mul.s      $f2, $f2, $f0
/* 11E37C 8002C57C 3C014F00 */  lui        $at, 0x4f00
/* 11E380 8002C580 44810000 */  mtc1       $at, $f0
/* 11E384 8002C584 00000000 */  nop
/* 11E388 8002C588 4602003E */  c.le.s     $f0, $f2
/* 11E38C 8002C58C 00000000 */  nop
/* 11E390 8002C590 00000000 */  nop
/* 11E394 8002C594 45030005 */  bc1tl      .L8002C5AC
/* 11E398 8002C598 46001001 */   sub.s     $f0, $f2, $f0
/* 11E39C 8002C59C 4600100D */  trunc.w.s  $f0, $f2
/* 11E3A0 8002C5A0 44060000 */  mfc1       $a2, $f0
/* 11E3A4 8002C5A4 0800B16F */  j          .L8002C5BC
/* 11E3A8 8002C5A8 00000000 */   nop
.L8002C5AC:
/* 11E3AC 8002C5AC 4600008D */  trunc.w.s  $f2, $f0
/* 11E3B0 8002C5B0 44061000 */  mfc1       $a2, $f2
/* 11E3B4 8002C5B4 3C028000 */  lui        $v0, 0x8000
/* 11E3B8 8002C5B8 00C23025 */  or         $a2, $a2, $v0
.L8002C5BC:
/* 11E3BC 8002C5BC C60200E8 */  lwc1       $f2, 0xe8($s0)
/* 11E3C0 8002C5C0 3C013F80 */  lui        $at, 0x3f80
/* 11E3C4 8002C5C4 44810000 */  mtc1       $at, $f0
/* 11E3C8 8002C5C8 00000000 */  nop
/* 11E3CC 8002C5CC 4602003C */  c.lt.s     $f0, $f2
/* 11E3D0 8002C5D0 00000000 */  nop
/* 11E3D4 8002C5D4 00000000 */  nop
/* 11E3D8 8002C5D8 45030008 */  bc1tl      .L8002C5FC
/* 11E3DC 8002C5DC 46000086 */   mov.s     $f2, $f0
/* 11E3E0 8002C5E0 44800000 */  mtc1       $zero, $f0
/* 11E3E4 8002C5E4 00000000 */  nop
/* 11E3E8 8002C5E8 4600103C */  c.lt.s     $f2, $f0
/* 11E3EC 8002C5EC 00000000 */  nop
/* 11E3F0 8002C5F0 00000000 */  nop
/* 11E3F4 8002C5F4 45030001 */  bc1tl      .L8002C5FC
/* 11E3F8 8002C5F8 46000086 */   mov.s     $f2, $f0
.L8002C5FC:
/* 11E3FC 8002C5FC 3C01437F */  lui        $at, 0x437f
/* 11E400 8002C600 44810000 */  mtc1       $at, $f0
/* 11E404 8002C604 00000000 */  nop
/* 11E408 8002C608 46001082 */  mul.s      $f2, $f2, $f0
/* 11E40C 8002C60C 3C014F00 */  lui        $at, 0x4f00
/* 11E410 8002C610 44810000 */  mtc1       $at, $f0
/* 11E414 8002C614 00000000 */  nop
/* 11E418 8002C618 4602003E */  c.le.s     $f0, $f2
/* 11E41C 8002C61C 00000000 */  nop
/* 11E420 8002C620 00000000 */  nop
/* 11E424 8002C624 45030005 */  bc1tl      .L8002C63C
/* 11E428 8002C628 46001001 */   sub.s     $f0, $f2, $f0
/* 11E42C 8002C62C 4600100D */  trunc.w.s  $f0, $f2
/* 11E430 8002C630 44070000 */  mfc1       $a3, $f0
/* 11E434 8002C634 0800B193 */  j          .L8002C64C
/* 11E438 8002C638 00000000 */   nop
.L8002C63C:
/* 11E43C 8002C63C 4600008D */  trunc.w.s  $f2, $f0
/* 11E440 8002C640 44071000 */  mfc1       $a3, $f2
/* 11E444 8002C644 3C028000 */  lui        $v0, 0x8000
/* 11E448 8002C648 00E23825 */  or         $a3, $a3, $v0
.L8002C64C:
/* 11E44C 8002C64C C60200EC */  lwc1       $f2, 0xec($s0)
/* 11E450 8002C650 3C013F80 */  lui        $at, 0x3f80
/* 11E454 8002C654 44810000 */  mtc1       $at, $f0
/* 11E458 8002C658 00000000 */  nop
/* 11E45C 8002C65C 4602003C */  c.lt.s     $f0, $f2
/* 11E460 8002C660 00000000 */  nop
/* 11E464 8002C664 00000000 */  nop
/* 11E468 8002C668 45030008 */  bc1tl      .L8002C68C
/* 11E46C 8002C66C 46000086 */   mov.s     $f2, $f0
/* 11E470 8002C670 44800000 */  mtc1       $zero, $f0
/* 11E474 8002C674 00000000 */  nop
/* 11E478 8002C678 4600103C */  c.lt.s     $f2, $f0
/* 11E47C 8002C67C 00000000 */  nop
/* 11E480 8002C680 00000000 */  nop
/* 11E484 8002C684 45030001 */  bc1tl      .L8002C68C
/* 11E488 8002C688 46000086 */   mov.s     $f2, $f0
.L8002C68C:
/* 11E48C 8002C68C 3C01437F */  lui        $at, 0x437f
/* 11E490 8002C690 44810000 */  mtc1       $at, $f0
/* 11E494 8002C694 00000000 */  nop
/* 11E498 8002C698 46001082 */  mul.s      $f2, $f2, $f0
/* 11E49C 8002C69C 3C014F00 */  lui        $at, 0x4f00
/* 11E4A0 8002C6A0 44810000 */  mtc1       $at, $f0
/* 11E4A4 8002C6A4 00000000 */  nop
/* 11E4A8 8002C6A8 4602003E */  c.le.s     $f0, $f2
/* 11E4AC 8002C6AC 00000000 */  nop
/* 11E4B0 8002C6B0 00000000 */  nop
/* 11E4B4 8002C6B4 45030006 */  bc1tl      .L8002C6D0
/* 11E4B8 8002C6B8 46001001 */   sub.s     $f0, $f2, $f0
/* 11E4BC 8002C6BC 4600100D */  trunc.w.s  $f0, $f2
/* 11E4C0 8002C6C0 44030000 */  mfc1       $v1, $f0
/* 11E4C4 8002C6C4 00000000 */  nop
/* 11E4C8 8002C6C8 0800B1B9 */  j          .L8002C6E4
/* 11E4CC 8002C6CC 306200FF */   andi      $v0, $v1, 0xff
.L8002C6D0:
/* 11E4D0 8002C6D0 4600008D */  trunc.w.s  $f2, $f0
/* 11E4D4 8002C6D4 44031000 */  mfc1       $v1, $f2
/* 11E4D8 8002C6D8 3C028000 */  lui        $v0, 0x8000
/* 11E4DC 8002C6DC 00621825 */  or         $v1, $v1, $v0
/* 11E4E0 8002C6E0 306200FF */  andi       $v0, $v1, 0xff
.L8002C6E4:
/* 11E4E4 8002C6E4 AFA20010 */  sw         $v0, 0x10($sp)
/* 11E4E8 8002C6E8 8E040034 */  lw         $a0, 0x34($s0)
/* 11E4EC 8002C6EC 30A500FF */  andi       $a1, $a1, 0xff
/* 11E4F0 8002C6F0 30C600FF */  andi       $a2, $a2, 0xff
/* 11E4F4 8002C6F4 0C027F5E */  jal        func_8009FD78
/* 11E4F8 8002C6F8 30E700FF */   andi      $a3, $a3, 0xff
/* 11E4FC 8002C6FC 8E030034 */  lw         $v1, 0x34($s0)
/* 11E500 8002C700 8E02001C */  lw         $v0, 0x1c($s0)
/* 11E504 8002C704 A0620066 */  sb         $v0, 0x66($v1)
/* 11E508 8002C708 8E020010 */  lw         $v0, 0x10($s0)
/* 11E50C 8002C70C 0441000D */  bgez       $v0, .L8002C744
/* 11E510 8002C710 2402FFFF */   addiu     $v0, $zero, -1
/* 11E514 8002C714 8E040038 */  lw         $a0, 0x38($s0)
/* 11E518 8002C718 10800003 */  beqz       $a0, .L8002C728
/* 11E51C 8002C71C AE020010 */   sw        $v0, 0x10($s0)
/* 11E520 8002C720 0C027AFA */  jal        func_8009EBE8
/* 11E524 8002C724 00000000 */   nop
.L8002C728:
/* 11E528 8002C728 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E52C 8002C72C 10800047 */  beqz       $a0, .L8002C84C
/* 11E530 8002C730 00000000 */   nop
/* 11E534 8002C734 0C027D3A */  jal        func_8009F4E8
/* 11E538 8002C738 00000000 */   nop
/* 11E53C 8002C73C 0800B213 */  j          .L8002C84C
/* 11E540 8002C740 00000000 */   nop
.L8002C744:
/* 11E544 8002C744 8E040038 */  lw         $a0, 0x38($s0)
/* 11E548 8002C748 1080004A */  beqz       $a0, .L8002C874
/* 11E54C 8002C74C 00000000 */   nop
/* 11E550 8002C750 0C027AF5 */  jal        func_8009EBD4
/* 11E554 8002C754 00000000 */   nop
/* 11E558 8002C758 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E55C 8002C75C 10800003 */  beqz       $a0, .L8002C76C
/* 11E560 8002C760 00000000 */   nop
/* 11E564 8002C764 0C027D35 */  jal        func_8009F4D4
/* 11E568 8002C768 00000000 */   nop
.L8002C76C:
/* 11E56C 8002C76C 8E040038 */  lw         $a0, 0x38($s0)
/* 11E570 8002C770 8E020010 */  lw         $v0, 0x10($s0)
/* 11E574 8002C774 84830024 */  lh         $v1, 0x24($a0)
/* 11E578 8002C778 10620035 */  beq        $v1, $v0, .L8002C850
/* 11E57C 8002C77C 240200FF */   addiu     $v0, $zero, 0xff
/* 11E580 8002C780 8483001E */  lh         $v1, 0x1e($a0)
/* 11E584 8002C784 14620009 */  bne        $v1, $v0, .L8002C7AC
/* 11E588 8002C788 00000000 */   nop
/* 11E58C 8002C78C 0C027ABB */  jal        func_8009EAEC
/* 11E590 8002C790 00000000 */   nop
/* 11E594 8002C794 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E598 8002C798 10800003 */  beqz       $a0, .L8002C7A8
/* 11E59C 8002C79C 00000000 */   nop
/* 11E5A0 8002C7A0 0C027D2B */  jal        func_8009F4AC
/* 11E5A4 8002C7A4 00000000 */   nop
.L8002C7A8:
/* 11E5A8 8002C7A8 8E040038 */  lw         $a0, 0x38($s0)
.L8002C7AC:
/* 11E5AC 8002C7AC 8E020010 */  lw         $v0, 0x10($s0)
/* 11E5B0 8002C7B0 84830024 */  lh         $v1, 0x24($a0)
/* 11E5B4 8002C7B4 0043102A */  slt        $v0, $v0, $v1
/* 11E5B8 8002C7B8 54400007 */  bnezl      $v0, .L8002C7D8
/* 11E5BC 8002C7BC 24030001 */   addiu     $v1, $zero, 1
/* 11E5C0 8002C7C0 A080002E */  sb         $zero, 0x2e($a0)
/* 11E5C4 8002C7C4 8E02003C */  lw         $v0, 0x3c($s0)
/* 11E5C8 8002C7C8 54400007 */  bnezl      $v0, .L8002C7E8
/* 11E5CC 8002C7CC A040002E */   sb        $zero, 0x2e($v0)
/* 11E5D0 8002C7D0 0800B1FA */  j          .L8002C7E8
/* 11E5D4 8002C7D4 00000000 */   nop
.L8002C7D8:
/* 11E5D8 8002C7D8 A083002E */  sb         $v1, 0x2e($a0)
/* 11E5DC 8002C7DC 8E02003C */  lw         $v0, 0x3c($s0)
/* 11E5E0 8002C7E0 54400001 */  bnezl      $v0, .L8002C7E8
/* 11E5E4 8002C7E4 A043002E */   sb        $v1, 0x2e($v0)
.L8002C7E8:
/* 11E5E8 8002C7E8 8E040038 */  lw         $a0, 0x38($s0)
/* 11E5EC 8002C7EC 8E020010 */  lw         $v0, 0x10($s0)
/* 11E5F0 8002C7F0 84830024 */  lh         $v1, 0x24($a0)
/* 11E5F4 8002C7F4 10620016 */  beq        $v1, $v0, .L8002C850
/* 11E5F8 8002C7F8 00000000 */   nop
/* 11E5FC 8002C7FC 241100FF */  addiu      $s1, $zero, 0xff
.L8002C800:
/* 11E600 8002C800 8482001E */  lh         $v0, 0x1e($a0)
/* 11E604 8002C804 10510011 */  beq        $v0, $s1, .L8002C84C
/* 11E608 8002C808 00000000 */   nop
/* 11E60C 8002C80C 0C027AFA */  jal        func_8009EBE8
/* 11E610 8002C810 00000000 */   nop
/* 11E614 8002C814 0C027AF5 */  jal        func_8009EBD4
/* 11E618 8002C818 8E040038 */   lw        $a0, 0x38($s0)
/* 11E61C 8002C81C 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E620 8002C820 10800005 */  beqz       $a0, .L8002C838
/* 11E624 8002C824 00000000 */   nop
/* 11E628 8002C828 0C027D3A */  jal        func_8009F4E8
/* 11E62C 8002C82C 00000000 */   nop
/* 11E630 8002C830 0C027D35 */  jal        func_8009F4D4
/* 11E634 8002C834 8E04003C */   lw        $a0, 0x3c($s0)
.L8002C838:
/* 11E638 8002C838 8E040038 */  lw         $a0, 0x38($s0)
/* 11E63C 8002C83C 8E020010 */  lw         $v0, 0x10($s0)
/* 11E640 8002C840 84830024 */  lh         $v1, 0x24($a0)
/* 11E644 8002C844 1462FFEE */  bne        $v1, $v0, .L8002C800
/* 11E648 8002C848 00000000 */   nop
.L8002C84C:
/* 11E64C 8002C84C 8E040038 */  lw         $a0, 0x38($s0)
.L8002C850:
/* 11E650 8002C850 10800008 */  beqz       $a0, .L8002C874
/* 11E654 8002C854 00000000 */   nop
/* 11E658 8002C858 C604000C */  lwc1       $f4, 0xc($s0)
/* 11E65C 8002C85C 46802120 */  cvt.s.w    $f4, $f4
/* 11E660 8002C860 44052000 */  mfc1       $a1, $f4
/* 11E664 8002C864 0C02795C */  jal        func_8009E570
/* 11E668 8002C868 00000000 */   nop
/* 11E66C 8002C86C 0C027A93 */  jal        func_8009EA4C
/* 11E670 8002C870 8E040038 */   lw        $a0, 0x38($s0)
.L8002C874:
/* 11E674 8002C874 8E02003C */  lw         $v0, 0x3c($s0)
/* 11E678 8002C878 1040000C */  beqz       $v0, .L8002C8AC
/* 11E67C 8002C87C 00000000 */   nop
/* 11E680 8002C880 8E040034 */  lw         $a0, 0x34($s0)
/* 11E684 8002C884 0C027F67 */  jal        func_8009FD9C
/* 11E688 8002C888 26050060 */   addiu     $a1, $s0, 0x60
/* 11E68C 8002C88C 8E04003C */  lw         $a0, 0x3c($s0)
/* 11E690 8002C890 C604000C */  lwc1       $f4, 0xc($s0)
/* 11E694 8002C894 46802120 */  cvt.s.w    $f4, $f4
/* 11E698 8002C898 44052000 */  mfc1       $a1, $f4
/* 11E69C 8002C89C 0C027C5E */  jal        func_8009F178
/* 11E6A0 8002C8A0 00000000 */   nop
/* 11E6A4 8002C8A4 0C027CED */  jal        func_8009F3B4
/* 11E6A8 8002C8A8 8E04003C */   lw        $a0, 0x3c($s0)
.L8002C8AC:
/* 11E6AC 8002C8AC 0C00B3AA */  jal        func_8002CEA8_11ECA8
/* 11E6B0 8002C8B0 02002021 */   addu      $a0, $s0, $zero
.L8002C8B4:
/* 11E6B4 8002C8B4 8FBF0068 */  lw         $ra, 0x68($sp)
/* 11E6B8 8002C8B8 8FB10064 */  lw         $s1, 0x64($sp)
/* 11E6BC 8002C8BC 8FB00060 */  lw         $s0, 0x60($sp)
/* 11E6C0 8002C8C0 03E00008 */  jr         $ra
/* 11E6C4 8002C8C4 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002C8C8_11E6C8
/* 11E6C8 8002C8C8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 11E6CC 8002C8CC AFB00060 */  sw         $s0, 0x60($sp)
/* 11E6D0 8002C8D0 00808021 */  addu       $s0, $a0, $zero
/* 11E6D4 8002C8D4 AFBF0068 */  sw         $ra, 0x68($sp)
/* 11E6D8 8002C8D8 12000125 */  beqz       $s0, .L8002CD70
/* 11E6DC 8002C8DC AFB10064 */   sw        $s1, 0x64($sp)
/* 11E6E0 8002C8E0 C600005C */  lwc1       $f0, 0x5c($s0)
/* 11E6E4 8002C8E4 E7A00010 */  swc1       $f0, 0x10($sp)
/* 11E6E8 8002C8E8 C6000044 */  lwc1       $f0, 0x44($s0)
/* 11E6EC 8002C8EC E7A00014 */  swc1       $f0, 0x14($sp)
/* 11E6F0 8002C8F0 C6000048 */  lwc1       $f0, 0x48($s0)
/* 11E6F4 8002C8F4 E7A00018 */  swc1       $f0, 0x18($sp)
/* 11E6F8 8002C8F8 C600004C */  lwc1       $f0, 0x4c($s0)
/* 11E6FC 8002C8FC E7A0001C */  swc1       $f0, 0x1c($sp)
/* 11E700 8002C900 8E050050 */  lw         $a1, 0x50($s0)
/* 11E704 8002C904 8E060054 */  lw         $a2, 0x54($s0)
/* 11E708 8002C908 8E070058 */  lw         $a3, 0x58($s0)
/* 11E70C 8002C90C 0C02FD0E */  jal        func_800BF438
/* 11E710 8002C910 27A40020 */   addiu     $a0, $sp, 0x20
/* 11E714 8002C914 8E020000 */  lw         $v0, ($s0)
/* 11E718 8002C918 30420001 */  andi       $v0, $v0, 1
/* 11E71C 8002C91C 10400009 */  beqz       $v0, .L8002C944
/* 11E720 8002C920 27A40020 */   addiu     $a0, $sp, 0x20
/* 11E724 8002C924 26050060 */  addiu      $a1, $s0, 0x60
/* 11E728 8002C928 0C02FA0C */  jal        func_800BE830
/* 11E72C 8002C92C 00A03021 */   addu      $a2, $a1, $zero
/* 11E730 8002C930 8E020000 */  lw         $v0, ($s0)
/* 11E734 8002C934 2403FFFE */  addiu      $v1, $zero, -2
/* 11E738 8002C938 00431024 */  and        $v0, $v0, $v1
/* 11E73C 8002C93C 0800B25F */  j          .L8002C97C
/* 11E740 8002C940 AE020000 */   sw        $v0, ($s0)
.L8002C944:
/* 11E744 8002C944 26070060 */  addiu      $a3, $s0, 0x60
/* 11E748 8002C948 27A60020 */  addiu      $a2, $sp, 0x20
/* 11E74C 8002C94C 27A80060 */  addiu      $t0, $sp, 0x60
.L8002C950:
/* 11E750 8002C950 8CC20000 */  lw         $v0, ($a2)
/* 11E754 8002C954 8CC30004 */  lw         $v1, 4($a2)
/* 11E758 8002C958 8CC40008 */  lw         $a0, 8($a2)
/* 11E75C 8002C95C 8CC5000C */  lw         $a1, 0xc($a2)
/* 11E760 8002C960 ACE20000 */  sw         $v0, ($a3)
/* 11E764 8002C964 ACE30004 */  sw         $v1, 4($a3)
/* 11E768 8002C968 ACE40008 */  sw         $a0, 8($a3)
/* 11E76C 8002C96C ACE5000C */  sw         $a1, 0xc($a3)
/* 11E770 8002C970 24C60010 */  addiu      $a2, $a2, 0x10
/* 11E774 8002C974 14C8FFF6 */  bne        $a2, $t0, .L8002C950
/* 11E778 8002C978 24E70010 */   addiu     $a3, $a3, 0x10
.L8002C97C:
/* 11E77C 8002C97C 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 11E780 8002C980 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 11E784 8002C984 3C013F80 */  lui        $at, 0x3f80
/* 11E788 8002C988 44810000 */  mtc1       $at, $f0
/* 11E78C 8002C98C 3C02DA38 */  lui        $v0, 0xda38
/* 11E790 8002C990 34420003 */  ori        $v0, $v0, 3
/* 11E794 8002C994 AC620000 */  sw         $v0, ($v1)
/* 11E798 8002C998 26020060 */  addiu      $v0, $s0, 0x60
/* 11E79C 8002C99C AC620004 */  sw         $v0, 4($v1)
/* 11E7A0 8002C9A0 8E040034 */  lw         $a0, 0x34($s0)
/* 11E7A4 8002C9A4 8E020018 */  lw         $v0, 0x18($s0)
/* 11E7A8 8002C9A8 24630008 */  addiu      $v1, $v1, 8
/* 11E7AC 8002C9AC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 11E7B0 8002C9B0 AC239F94 */  sw         $v1, %lo(gDisplayListHead)($at)
/* 11E7B4 8002C9B4 A0820067 */  sb         $v0, 0x67($a0)
/* 11E7B8 8002C9B8 C60200E0 */  lwc1       $f2, 0xe0($s0)
/* 11E7BC 8002C9BC 4602003C */  c.lt.s     $f0, $f2
/* 11E7C0 8002C9C0 00000000 */  nop
/* 11E7C4 8002C9C4 00000000 */  nop
/* 11E7C8 8002C9C8 45030008 */  bc1tl      .L8002C9EC
/* 11E7CC 8002C9CC 46000086 */   mov.s     $f2, $f0
/* 11E7D0 8002C9D0 44800000 */  mtc1       $zero, $f0
/* 11E7D4 8002C9D4 00000000 */  nop
/* 11E7D8 8002C9D8 4600103C */  c.lt.s     $f2, $f0
/* 11E7DC 8002C9DC 00000000 */  nop
/* 11E7E0 8002C9E0 00000000 */  nop
/* 11E7E4 8002C9E4 45030001 */  bc1tl      .L8002C9EC
/* 11E7E8 8002C9E8 46000086 */   mov.s     $f2, $f0
.L8002C9EC:
/* 11E7EC 8002C9EC 3C01437F */  lui        $at, 0x437f
/* 11E7F0 8002C9F0 44810000 */  mtc1       $at, $f0
/* 11E7F4 8002C9F4 00000000 */  nop
/* 11E7F8 8002C9F8 46001082 */  mul.s      $f2, $f2, $f0
/* 11E7FC 8002C9FC 3C014F00 */  lui        $at, 0x4f00
/* 11E800 8002CA00 44810000 */  mtc1       $at, $f0
/* 11E804 8002CA04 00000000 */  nop
/* 11E808 8002CA08 4602003E */  c.le.s     $f0, $f2
/* 11E80C 8002CA0C 00000000 */  nop
/* 11E810 8002CA10 00000000 */  nop
/* 11E814 8002CA14 45030005 */  bc1tl      .L8002CA2C
/* 11E818 8002CA18 46001001 */   sub.s     $f0, $f2, $f0
/* 11E81C 8002CA1C 4600100D */  trunc.w.s  $f0, $f2
/* 11E820 8002CA20 44050000 */  mfc1       $a1, $f0
/* 11E824 8002CA24 0800B28F */  j          .L8002CA3C
/* 11E828 8002CA28 00000000 */   nop
.L8002CA2C:
/* 11E82C 8002CA2C 4600008D */  trunc.w.s  $f2, $f0
/* 11E830 8002CA30 44051000 */  mfc1       $a1, $f2
/* 11E834 8002CA34 3C028000 */  lui        $v0, 0x8000
/* 11E838 8002CA38 00A22825 */  or         $a1, $a1, $v0
.L8002CA3C:
/* 11E83C 8002CA3C C60200E4 */  lwc1       $f2, 0xe4($s0)
/* 11E840 8002CA40 3C013F80 */  lui        $at, 0x3f80
/* 11E844 8002CA44 44810000 */  mtc1       $at, $f0
/* 11E848 8002CA48 00000000 */  nop
/* 11E84C 8002CA4C 4602003C */  c.lt.s     $f0, $f2
/* 11E850 8002CA50 00000000 */  nop
/* 11E854 8002CA54 00000000 */  nop
/* 11E858 8002CA58 45030008 */  bc1tl      .L8002CA7C
/* 11E85C 8002CA5C 46000086 */   mov.s     $f2, $f0
/* 11E860 8002CA60 44800000 */  mtc1       $zero, $f0
/* 11E864 8002CA64 00000000 */  nop
/* 11E868 8002CA68 4600103C */  c.lt.s     $f2, $f0
/* 11E86C 8002CA6C 00000000 */  nop
/* 11E870 8002CA70 00000000 */  nop
/* 11E874 8002CA74 45030001 */  bc1tl      .L8002CA7C
/* 11E878 8002CA78 46000086 */   mov.s     $f2, $f0
.L8002CA7C:
/* 11E87C 8002CA7C 3C01437F */  lui        $at, 0x437f
/* 11E880 8002CA80 44810000 */  mtc1       $at, $f0
/* 11E884 8002CA84 00000000 */  nop
/* 11E888 8002CA88 46001082 */  mul.s      $f2, $f2, $f0
/* 11E88C 8002CA8C 3C014F00 */  lui        $at, 0x4f00
/* 11E890 8002CA90 44810000 */  mtc1       $at, $f0
/* 11E894 8002CA94 00000000 */  nop
/* 11E898 8002CA98 4602003E */  c.le.s     $f0, $f2
/* 11E89C 8002CA9C 00000000 */  nop
/* 11E8A0 8002CAA0 00000000 */  nop
/* 11E8A4 8002CAA4 45030005 */  bc1tl      .L8002CABC
/* 11E8A8 8002CAA8 46001001 */   sub.s     $f0, $f2, $f0
/* 11E8AC 8002CAAC 4600100D */  trunc.w.s  $f0, $f2
/* 11E8B0 8002CAB0 44060000 */  mfc1       $a2, $f0
/* 11E8B4 8002CAB4 0800B2B3 */  j          .L8002CACC
/* 11E8B8 8002CAB8 00000000 */   nop
.L8002CABC:
/* 11E8BC 8002CABC 4600008D */  trunc.w.s  $f2, $f0
/* 11E8C0 8002CAC0 44061000 */  mfc1       $a2, $f2
/* 11E8C4 8002CAC4 3C028000 */  lui        $v0, 0x8000
/* 11E8C8 8002CAC8 00C23025 */  or         $a2, $a2, $v0
.L8002CACC:
/* 11E8CC 8002CACC C60200E8 */  lwc1       $f2, 0xe8($s0)
/* 11E8D0 8002CAD0 3C013F80 */  lui        $at, 0x3f80
/* 11E8D4 8002CAD4 44810000 */  mtc1       $at, $f0
/* 11E8D8 8002CAD8 00000000 */  nop
/* 11E8DC 8002CADC 4602003C */  c.lt.s     $f0, $f2
/* 11E8E0 8002CAE0 00000000 */  nop
/* 11E8E4 8002CAE4 00000000 */  nop
/* 11E8E8 8002CAE8 45030008 */  bc1tl      .L8002CB0C
/* 11E8EC 8002CAEC 46000086 */   mov.s     $f2, $f0
/* 11E8F0 8002CAF0 44800000 */  mtc1       $zero, $f0
/* 11E8F4 8002CAF4 00000000 */  nop
/* 11E8F8 8002CAF8 4600103C */  c.lt.s     $f2, $f0
/* 11E8FC 8002CAFC 00000000 */  nop
/* 11E900 8002CB00 00000000 */  nop
/* 11E904 8002CB04 45030001 */  bc1tl      .L8002CB0C
/* 11E908 8002CB08 46000086 */   mov.s     $f2, $f0
.L8002CB0C:
/* 11E90C 8002CB0C 3C01437F */  lui        $at, 0x437f
/* 11E910 8002CB10 44810000 */  mtc1       $at, $f0
/* 11E914 8002CB14 00000000 */  nop
/* 11E918 8002CB18 46001082 */  mul.s      $f2, $f2, $f0
/* 11E91C 8002CB1C 3C014F00 */  lui        $at, 0x4f00
/* 11E920 8002CB20 44810000 */  mtc1       $at, $f0
/* 11E924 8002CB24 00000000 */  nop
/* 11E928 8002CB28 4602003E */  c.le.s     $f0, $f2
/* 11E92C 8002CB2C 00000000 */  nop
/* 11E930 8002CB30 00000000 */  nop
/* 11E934 8002CB34 45030005 */  bc1tl      .L8002CB4C
/* 11E938 8002CB38 46001001 */   sub.s     $f0, $f2, $f0
/* 11E93C 8002CB3C 4600100D */  trunc.w.s  $f0, $f2
/* 11E940 8002CB40 44070000 */  mfc1       $a3, $f0
/* 11E944 8002CB44 0800B2D7 */  j          .L8002CB5C
/* 11E948 8002CB48 00000000 */   nop
.L8002CB4C:
/* 11E94C 8002CB4C 4600008D */  trunc.w.s  $f2, $f0
/* 11E950 8002CB50 44071000 */  mfc1       $a3, $f2
/* 11E954 8002CB54 3C028000 */  lui        $v0, 0x8000
/* 11E958 8002CB58 00E23825 */  or         $a3, $a3, $v0
.L8002CB5C:
/* 11E95C 8002CB5C C60200EC */  lwc1       $f2, 0xec($s0)
/* 11E960 8002CB60 3C013F80 */  lui        $at, 0x3f80
/* 11E964 8002CB64 44810000 */  mtc1       $at, $f0
/* 11E968 8002CB68 00000000 */  nop
/* 11E96C 8002CB6C 4602003C */  c.lt.s     $f0, $f2
/* 11E970 8002CB70 00000000 */  nop
/* 11E974 8002CB74 00000000 */  nop
/* 11E978 8002CB78 45030008 */  bc1tl      .L8002CB9C
/* 11E97C 8002CB7C 46000086 */   mov.s     $f2, $f0
/* 11E980 8002CB80 44800000 */  mtc1       $zero, $f0
/* 11E984 8002CB84 00000000 */  nop
/* 11E988 8002CB88 4600103C */  c.lt.s     $f2, $f0
/* 11E98C 8002CB8C 00000000 */  nop
/* 11E990 8002CB90 00000000 */  nop
/* 11E994 8002CB94 45030001 */  bc1tl      .L8002CB9C
/* 11E998 8002CB98 46000086 */   mov.s     $f2, $f0
.L8002CB9C:
/* 11E99C 8002CB9C 3C01437F */  lui        $at, 0x437f
/* 11E9A0 8002CBA0 44810000 */  mtc1       $at, $f0
/* 11E9A4 8002CBA4 00000000 */  nop
/* 11E9A8 8002CBA8 46001082 */  mul.s      $f2, $f2, $f0
/* 11E9AC 8002CBAC 3C014F00 */  lui        $at, 0x4f00
/* 11E9B0 8002CBB0 44810000 */  mtc1       $at, $f0
/* 11E9B4 8002CBB4 00000000 */  nop
/* 11E9B8 8002CBB8 4602003E */  c.le.s     $f0, $f2
/* 11E9BC 8002CBBC 00000000 */  nop
/* 11E9C0 8002CBC0 00000000 */  nop
/* 11E9C4 8002CBC4 45030006 */  bc1tl      .L8002CBE0
/* 11E9C8 8002CBC8 46001001 */   sub.s     $f0, $f2, $f0
/* 11E9CC 8002CBCC 4600100D */  trunc.w.s  $f0, $f2
/* 11E9D0 8002CBD0 44030000 */  mfc1       $v1, $f0
/* 11E9D4 8002CBD4 00000000 */  nop
/* 11E9D8 8002CBD8 0800B2FD */  j          .L8002CBF4
/* 11E9DC 8002CBDC 306200FF */   andi      $v0, $v1, 0xff
.L8002CBE0:
/* 11E9E0 8002CBE0 4600008D */  trunc.w.s  $f2, $f0
/* 11E9E4 8002CBE4 44031000 */  mfc1       $v1, $f2
/* 11E9E8 8002CBE8 3C028000 */  lui        $v0, 0x8000
/* 11E9EC 8002CBEC 00621825 */  or         $v1, $v1, $v0
/* 11E9F0 8002CBF0 306200FF */  andi       $v0, $v1, 0xff
.L8002CBF4:
/* 11E9F4 8002CBF4 AFA20010 */  sw         $v0, 0x10($sp)
/* 11E9F8 8002CBF8 8E040034 */  lw         $a0, 0x34($s0)
/* 11E9FC 8002CBFC 30A500FF */  andi       $a1, $a1, 0xff
/* 11EA00 8002CC00 30C600FF */  andi       $a2, $a2, 0xff
/* 11EA04 8002CC04 0C027F5E */  jal        func_8009FD78
/* 11EA08 8002CC08 30E700FF */   andi      $a3, $a3, 0xff
/* 11EA0C 8002CC0C 8E030034 */  lw         $v1, 0x34($s0)
/* 11EA10 8002CC10 8E02001C */  lw         $v0, 0x1c($s0)
/* 11EA14 8002CC14 A0620066 */  sb         $v0, 0x66($v1)
/* 11EA18 8002CC18 8E020010 */  lw         $v0, 0x10($s0)
/* 11EA1C 8002CC1C 0441000D */  bgez       $v0, .L8002CC54
/* 11EA20 8002CC20 2402FFFF */   addiu     $v0, $zero, -1
/* 11EA24 8002CC24 8E040038 */  lw         $a0, 0x38($s0)
/* 11EA28 8002CC28 10800003 */  beqz       $a0, .L8002CC38
/* 11EA2C 8002CC2C AE020010 */   sw        $v0, 0x10($s0)
/* 11EA30 8002CC30 0C027AFA */  jal        func_8009EBE8
/* 11EA34 8002CC34 00000000 */   nop
.L8002CC38:
/* 11EA38 8002CC38 8E04003C */  lw         $a0, 0x3c($s0)
/* 11EA3C 8002CC3C 10800047 */  beqz       $a0, .L8002CD5C
/* 11EA40 8002CC40 00000000 */   nop
/* 11EA44 8002CC44 0C027D3A */  jal        func_8009F4E8
/* 11EA48 8002CC48 00000000 */   nop
/* 11EA4C 8002CC4C 0800B357 */  j          .L8002CD5C
/* 11EA50 8002CC50 00000000 */   nop
.L8002CC54:
/* 11EA54 8002CC54 8E040038 */  lw         $a0, 0x38($s0)
/* 11EA58 8002CC58 10800040 */  beqz       $a0, .L8002CD5C
/* 11EA5C 8002CC5C 00000000 */   nop
/* 11EA60 8002CC60 0C027AF5 */  jal        func_8009EBD4
/* 11EA64 8002CC64 00000000 */   nop
/* 11EA68 8002CC68 8E04003C */  lw         $a0, 0x3c($s0)
/* 11EA6C 8002CC6C 10800003 */  beqz       $a0, .L8002CC7C
/* 11EA70 8002CC70 00000000 */   nop
/* 11EA74 8002CC74 0C027D35 */  jal        func_8009F4D4
/* 11EA78 8002CC78 00000000 */   nop
.L8002CC7C:
/* 11EA7C 8002CC7C 8E040038 */  lw         $a0, 0x38($s0)
/* 11EA80 8002CC80 8E020010 */  lw         $v0, 0x10($s0)
/* 11EA84 8002CC84 84830024 */  lh         $v1, 0x24($a0)
/* 11EA88 8002CC88 10620034 */  beq        $v1, $v0, .L8002CD5C
/* 11EA8C 8002CC8C 240200FF */   addiu     $v0, $zero, 0xff
/* 11EA90 8002CC90 8483001E */  lh         $v1, 0x1e($a0)
/* 11EA94 8002CC94 14620009 */  bne        $v1, $v0, .L8002CCBC
/* 11EA98 8002CC98 00000000 */   nop
/* 11EA9C 8002CC9C 0C027ABB */  jal        func_8009EAEC
/* 11EAA0 8002CCA0 00000000 */   nop
/* 11EAA4 8002CCA4 8E04003C */  lw         $a0, 0x3c($s0)
/* 11EAA8 8002CCA8 10800003 */  beqz       $a0, .L8002CCB8
/* 11EAAC 8002CCAC 00000000 */   nop
/* 11EAB0 8002CCB0 0C027D2B */  jal        func_8009F4AC
/* 11EAB4 8002CCB4 00000000 */   nop
.L8002CCB8:
/* 11EAB8 8002CCB8 8E040038 */  lw         $a0, 0x38($s0)
.L8002CCBC:
/* 11EABC 8002CCBC 8E020010 */  lw         $v0, 0x10($s0)
/* 11EAC0 8002CCC0 84830024 */  lh         $v1, 0x24($a0)
/* 11EAC4 8002CCC4 0043102A */  slt        $v0, $v0, $v1
/* 11EAC8 8002CCC8 54400007 */  bnezl      $v0, .L8002CCE8
/* 11EACC 8002CCCC 24030001 */   addiu     $v1, $zero, 1
/* 11EAD0 8002CCD0 A080002E */  sb         $zero, 0x2e($a0)
/* 11EAD4 8002CCD4 8E02003C */  lw         $v0, 0x3c($s0)
/* 11EAD8 8002CCD8 54400007 */  bnezl      $v0, .L8002CCF8
/* 11EADC 8002CCDC A040002E */   sb        $zero, 0x2e($v0)
/* 11EAE0 8002CCE0 0800B33E */  j          .L8002CCF8
/* 11EAE4 8002CCE4 00000000 */   nop
.L8002CCE8:
/* 11EAE8 8002CCE8 A083002E */  sb         $v1, 0x2e($a0)
/* 11EAEC 8002CCEC 8E02003C */  lw         $v0, 0x3c($s0)
/* 11EAF0 8002CCF0 54400001 */  bnezl      $v0, .L8002CCF8
/* 11EAF4 8002CCF4 A043002E */   sb        $v1, 0x2e($v0)
.L8002CCF8:
/* 11EAF8 8002CCF8 8E040038 */  lw         $a0, 0x38($s0)
/* 11EAFC 8002CCFC 8E020010 */  lw         $v0, 0x10($s0)
/* 11EB00 8002CD00 84830024 */  lh         $v1, 0x24($a0)
/* 11EB04 8002CD04 10620015 */  beq        $v1, $v0, .L8002CD5C
/* 11EB08 8002CD08 00000000 */   nop
/* 11EB0C 8002CD0C 241100FF */  addiu      $s1, $zero, 0xff
.L8002CD10:
/* 11EB10 8002CD10 8482001E */  lh         $v0, 0x1e($a0)
/* 11EB14 8002CD14 10510011 */  beq        $v0, $s1, .L8002CD5C
/* 11EB18 8002CD18 00000000 */   nop
/* 11EB1C 8002CD1C 0C027AFA */  jal        func_8009EBE8
/* 11EB20 8002CD20 00000000 */   nop
/* 11EB24 8002CD24 0C027AF5 */  jal        func_8009EBD4
/* 11EB28 8002CD28 8E040038 */   lw        $a0, 0x38($s0)
/* 11EB2C 8002CD2C 8E04003C */  lw         $a0, 0x3c($s0)
/* 11EB30 8002CD30 10800005 */  beqz       $a0, .L8002CD48
/* 11EB34 8002CD34 00000000 */   nop
/* 11EB38 8002CD38 0C027D3A */  jal        func_8009F4E8
/* 11EB3C 8002CD3C 00000000 */   nop
/* 11EB40 8002CD40 0C027D35 */  jal        func_8009F4D4
/* 11EB44 8002CD44 8E04003C */   lw        $a0, 0x3c($s0)
.L8002CD48:
/* 11EB48 8002CD48 8E040038 */  lw         $a0, 0x38($s0)
/* 11EB4C 8002CD4C 8E020010 */  lw         $v0, 0x10($s0)
/* 11EB50 8002CD50 84830024 */  lh         $v1, 0x24($a0)
/* 11EB54 8002CD54 1462FFEE */  bne        $v1, $v0, .L8002CD10
/* 11EB58 8002CD58 00000000 */   nop
.L8002CD5C:
/* 11EB5C 8002CD5C 8E040034 */  lw         $a0, 0x34($s0)
/* 11EB60 8002CD60 0C027F77 */  jal        func_8009FDDC
/* 11EB64 8002CD64 8E050038 */   lw        $a1, 0x38($s0)
/* 11EB68 8002CD68 0C00B3AA */  jal        func_8002CEA8_11ECA8
/* 11EB6C 8002CD6C 02002021 */   addu      $a0, $s0, $zero
.L8002CD70:
/* 11EB70 8002CD70 8FBF0068 */  lw         $ra, 0x68($sp)
/* 11EB74 8002CD74 8FB10064 */  lw         $s1, 0x64($sp)
/* 11EB78 8002CD78 8FB00060 */  lw         $s0, 0x60($sp)
/* 11EB7C 8002CD7C 03E00008 */  jr         $ra
/* 11EB80 8002CD80 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002CD84_11EB84
/* 11EB84 8002CD84 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 11EB88 8002CD88 AFB00060 */  sw         $s0, 0x60($sp)
/* 11EB8C 8002CD8C 00808021 */  addu       $s0, $a0, $zero
/* 11EB90 8002CD90 AFBF0074 */  sw         $ra, 0x74($sp)
/* 11EB94 8002CD94 AFB40070 */  sw         $s4, 0x70($sp)
/* 11EB98 8002CD98 AFB3006C */  sw         $s3, 0x6c($sp)
/* 11EB9C 8002CD9C AFB20068 */  sw         $s2, 0x68($sp)
/* 11EBA0 8002CDA0 AFB10064 */  sw         $s1, 0x64($sp)
/* 11EBA4 8002CDA4 8E040034 */  lw         $a0, 0x34($s0)
/* 11EBA8 8002CDA8 00C08821 */  addu       $s1, $a2, $zero
/* 11EBAC 8002CDAC 0C0284DC */  jal        func_800A1370
/* 11EBB0 8002CDB0 00E0A021 */   addu      $s4, $a3, $zero
/* 11EBB4 8002CDB4 00021400 */  sll        $v0, $v0, 0x10
/* 11EBB8 8002CDB8 00029C03 */  sra        $s3, $v0, 0x10
/* 11EBBC 8002CDBC 2E620028 */  sltiu      $v0, $s3, 0x28
/* 11EBC0 8002CDC0 14400005 */  bnez       $v0, .L8002CDD8
/* 11EBC4 8002CDC4 02209021 */   addu      $s2, $s1, $zero
/* 11EBC8 8002CDC8 0C02FAB0 */  jal        func_800BEAC0
/* 11EBCC 8002CDCC 02802021 */   addu      $a0, $s4, $zero
/* 11EBD0 8002CDD0 0800B3A2 */  j          .L8002CE88
/* 11EBD4 8002CDD4 00000000 */   nop
.L8002CDD8:
/* 11EBD8 8002CDD8 860300FC */  lh         $v1, 0xfc($s0)
/* 11EBDC 8002CDDC 00111400 */  sll        $v0, $s1, 0x10
/* 11EBE0 8002CDE0 00028C03 */  sra        $s1, $v0, 0x10
/* 11EBE4 8002CDE4 10710004 */  beq        $v1, $s1, .L8002CDF8
/* 11EBE8 8002CDE8 00000000 */   nop
/* 11EBEC 8002CDEC 0C00B3AA */  jal        func_8002CEA8_11ECA8
/* 11EBF0 8002CDF0 02002021 */   addu      $a0, $s0, $zero
/* 11EBF4 8002CDF4 A61200FC */  sh         $s2, 0xfc($s0)
.L8002CDF8:
/* 11EBF8 8002CDF8 8E0200F8 */  lw         $v0, 0xf8($s0)
/* 11EBFC 8002CDFC 1440000C */  bnez       $v0, .L8002CE30
/* 11EC00 8002CE00 00000000 */   nop
/* 11EC04 8002CE04 0C032663 */  jal        func_800C998C
/* 11EC08 8002CE08 24040A00 */   addiu     $a0, $zero, 0xa00
/* 11EC0C 8002CE0C 00402021 */  addu       $a0, $v0, $zero
/* 11EC10 8002CE10 24050A00 */  addiu      $a1, $zero, 0xa00
/* 11EC14 8002CE14 0C030134 */  jal        bzero
/* 11EC18 8002CE18 AE0400F8 */   sw        $a0, 0xf8($s0)
/* 11EC1C 8002CE1C 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 11EC20 8002CE20 8E050034 */  lw         $a1, 0x34($s0)
/* 11EC24 8002CE24 8E060038 */  lw         $a2, 0x38($s0)
/* 11EC28 8002CE28 0C028370 */  jal        func_800A0DC0
/* 11EC2C 8002CE2C 02203821 */   addu      $a3, $s1, $zero
.L8002CE30:
/* 11EC30 8002CE30 C600005C */  lwc1       $f0, 0x5c($s0)
/* 11EC34 8002CE34 E7A00010 */  swc1       $f0, 0x10($sp)
/* 11EC38 8002CE38 C6000044 */  lwc1       $f0, 0x44($s0)
/* 11EC3C 8002CE3C E7A00014 */  swc1       $f0, 0x14($sp)
/* 11EC40 8002CE40 C6000048 */  lwc1       $f0, 0x48($s0)
/* 11EC44 8002CE44 E7A00018 */  swc1       $f0, 0x18($sp)
/* 11EC48 8002CE48 C600004C */  lwc1       $f0, 0x4c($s0)
/* 11EC4C 8002CE4C E7A0001C */  swc1       $f0, 0x1c($sp)
/* 11EC50 8002CE50 8E050050 */  lw         $a1, 0x50($s0)
/* 11EC54 8002CE54 8E060054 */  lw         $a2, 0x54($s0)
/* 11EC58 8002CE58 8E070058 */  lw         $a3, 0x58($s0)
/* 11EC5C 8002CE5C 0C02FC98 */  jal        func_800BF260
/* 11EC60 8002CE60 27A40020 */   addiu     $a0, $sp, 0x20
/* 11EC64 8002CE64 27A50020 */  addiu      $a1, $sp, 0x20
/* 11EC68 8002CE68 8E0200F8 */  lw         $v0, 0xf8($s0)
/* 11EC6C 8002CE6C 00A03021 */  addu       $a2, $a1, $zero
/* 11EC70 8002CE70 00132180 */  sll        $a0, $s3, 6
/* 11EC74 8002CE74 0C02F9A8 */  jal        func_800BE6A0
/* 11EC78 8002CE78 00442021 */   addu      $a0, $v0, $a0
/* 11EC7C 8002CE7C 27A40020 */  addiu      $a0, $sp, 0x20
/* 11EC80 8002CE80 0C02FA4C */  jal        func_800BE930
/* 11EC84 8002CE84 02802821 */   addu      $a1, $s4, $zero
.L8002CE88:
/* 11EC88 8002CE88 8FBF0074 */  lw         $ra, 0x74($sp)
/* 11EC8C 8002CE8C 8FB40070 */  lw         $s4, 0x70($sp)
/* 11EC90 8002CE90 8FB3006C */  lw         $s3, 0x6c($sp)
/* 11EC94 8002CE94 8FB20068 */  lw         $s2, 0x68($sp)
/* 11EC98 8002CE98 8FB10064 */  lw         $s1, 0x64($sp)
/* 11EC9C 8002CE9C 8FB00060 */  lw         $s0, 0x60($sp)
/* 11ECA0 8002CEA0 03E00008 */  jr         $ra
/* 11ECA4 8002CEA4 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8002CEA8_11ECA8
/* 11ECA8 8002CEA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11ECAC 8002CEAC AFB00010 */  sw         $s0, 0x10($sp)
/* 11ECB0 8002CEB0 00808021 */  addu       $s0, $a0, $zero
/* 11ECB4 8002CEB4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11ECB8 8002CEB8 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 11ECBC 8002CEBC 10800004 */  beqz       $a0, .L8002CED0
/* 11ECC0 8002CEC0 00000000 */   nop
/* 11ECC4 8002CEC4 0C0326A1 */  jal        func_800C9A84
/* 11ECC8 8002CEC8 00000000 */   nop
/* 11ECCC 8002CECC AE0000F8 */  sw         $zero, 0xf8($s0)
.L8002CED0:
/* 11ECD0 8002CED0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11ECD4 8002CED4 8FB00010 */  lw         $s0, 0x10($sp)
/* 11ECD8 8002CED8 03E00008 */  jr         $ra
/* 11ECDC 8002CEDC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002CEE0_11ECE0
/* 11ECE0 8002CEE0 27BDFE48 */  addiu      $sp, $sp, -0x1b8
/* 11ECE4 8002CEE4 AFB001A0 */  sw         $s0, 0x1a0($sp)
/* 11ECE8 8002CEE8 00808021 */  addu       $s0, $a0, $zero
/* 11ECEC 8002CEEC AFB201A8 */  sw         $s2, 0x1a8($sp)
/* 11ECF0 8002CEF0 AFBF01AC */  sw         $ra, 0x1ac($sp)
/* 11ECF4 8002CEF4 AFB101A4 */  sw         $s1, 0x1a4($sp)
/* 11ECF8 8002CEF8 F7B401B0 */  sdc1       $f20, 0x1b0($sp)
/* 11ECFC 8002CEFC 120000AA */  beqz       $s0, .L8002D1A8
/* 11ED00 8002CF00 00C09021 */   addu      $s2, $a2, $zero
/* 11ED04 8002CF04 10A000A8 */  beqz       $a1, .L8002D1A8
/* 11ED08 8002CF08 00000000 */   nop
/* 11ED0C 8002CF0C 0C0284DC */  jal        func_800A1370
/* 11ED10 8002CF10 8E040034 */   lw        $a0, 0x34($s0)
/* 11ED14 8002CF14 00021400 */  sll        $v0, $v0, 0x10
/* 11ED18 8002CF18 00028C03 */  sra        $s1, $v0, 0x10
/* 11ED1C 8002CF1C 2E220028 */  sltiu      $v0, $s1, 0x28
/* 11ED20 8002CF20 14400005 */  bnez       $v0, .L8002CF38
/* 11ED24 8002CF24 00000000 */   nop
/* 11ED28 8002CF28 0C02FAB0 */  jal        func_800BEAC0
/* 11ED2C 8002CF2C 27A400E0 */   addiu     $a0, $sp, 0xe0
/* 11ED30 8002CF30 0800B3F9 */  j          .L8002CFE4
/* 11ED34 8002CF34 27A400E0 */   addiu     $a0, $sp, 0xe0
.L8002CF38:
/* 11ED38 8002CF38 860200FC */  lh         $v0, 0xfc($s0)
/* 11ED3C 8002CF3C 10400004 */  beqz       $v0, .L8002CF50
/* 11ED40 8002CF40 00000000 */   nop
/* 11ED44 8002CF44 0C00B3AA */  jal        func_8002CEA8_11ECA8
/* 11ED48 8002CF48 02002021 */   addu      $a0, $s0, $zero
/* 11ED4C 8002CF4C A60000FC */  sh         $zero, 0xfc($s0)
.L8002CF50:
/* 11ED50 8002CF50 8E0200F8 */  lw         $v0, 0xf8($s0)
/* 11ED54 8002CF54 1440000C */  bnez       $v0, .L8002CF88
/* 11ED58 8002CF58 00000000 */   nop
/* 11ED5C 8002CF5C 0C032663 */  jal        func_800C998C
/* 11ED60 8002CF60 24040A00 */   addiu     $a0, $zero, 0xa00
/* 11ED64 8002CF64 00402021 */  addu       $a0, $v0, $zero
/* 11ED68 8002CF68 24050A00 */  addiu      $a1, $zero, 0xa00
/* 11ED6C 8002CF6C 0C030134 */  jal        bzero
/* 11ED70 8002CF70 AE0400F8 */   sw        $a0, 0xf8($s0)
/* 11ED74 8002CF74 8E0400F8 */  lw         $a0, 0xf8($s0)
/* 11ED78 8002CF78 8E050034 */  lw         $a1, 0x34($s0)
/* 11ED7C 8002CF7C 8E060038 */  lw         $a2, 0x38($s0)
/* 11ED80 8002CF80 0C028370 */  jal        func_800A0DC0
/* 11ED84 8002CF84 00003821 */   addu      $a3, $zero, $zero
.L8002CF88:
/* 11ED88 8002CF88 C600005C */  lwc1       $f0, 0x5c($s0)
/* 11ED8C 8002CF8C E7A00010 */  swc1       $f0, 0x10($sp)
/* 11ED90 8002CF90 C6000044 */  lwc1       $f0, 0x44($s0)
/* 11ED94 8002CF94 E7A00014 */  swc1       $f0, 0x14($sp)
/* 11ED98 8002CF98 C6000048 */  lwc1       $f0, 0x48($s0)
/* 11ED9C 8002CF9C E7A00018 */  swc1       $f0, 0x18($sp)
/* 11EDA0 8002CFA0 C600004C */  lwc1       $f0, 0x4c($s0)
/* 11EDA4 8002CFA4 E7A0001C */  swc1       $f0, 0x1c($sp)
/* 11EDA8 8002CFA8 8E050050 */  lw         $a1, 0x50($s0)
/* 11EDAC 8002CFAC 8E060054 */  lw         $a2, 0x54($s0)
/* 11EDB0 8002CFB0 8E070058 */  lw         $a3, 0x58($s0)
/* 11EDB4 8002CFB4 0C02FC98 */  jal        func_800BF260
/* 11EDB8 8002CFB8 27A40150 */   addiu     $a0, $sp, 0x150
/* 11EDBC 8002CFBC 27A50150 */  addiu      $a1, $sp, 0x150
/* 11EDC0 8002CFC0 8E0200F8 */  lw         $v0, 0xf8($s0)
/* 11EDC4 8002CFC4 00A03021 */  addu       $a2, $a1, $zero
/* 11EDC8 8002CFC8 00112180 */  sll        $a0, $s1, 6
/* 11EDCC 8002CFCC 0C02F9A8 */  jal        func_800BE6A0
/* 11EDD0 8002CFD0 00442021 */   addu      $a0, $v0, $a0
/* 11EDD4 8002CFD4 27A40150 */  addiu      $a0, $sp, 0x150
/* 11EDD8 8002CFD8 0C02FA4C */  jal        func_800BE930
/* 11EDDC 8002CFDC 27A500E0 */   addiu     $a1, $sp, 0xe0
/* 11EDE0 8002CFE0 27A400E0 */  addiu      $a0, $sp, 0xe0
.L8002CFE4:
/* 11EDE4 8002CFE4 4480A000 */  mtc1       $zero, $f20
/* 11EDE8 8002CFE8 27A20190 */  addiu      $v0, $sp, 0x190
/* 11EDEC 8002CFEC AFA20010 */  sw         $v0, 0x10($sp)
/* 11EDF0 8002CFF0 27A20194 */  addiu      $v0, $sp, 0x194
/* 11EDF4 8002CFF4 AFA20014 */  sw         $v0, 0x14($sp)
/* 11EDF8 8002CFF8 4405A000 */  mfc1       $a1, $f20
/* 11EDFC 8002CFFC 4406A000 */  mfc1       $a2, $f20
/* 11EE00 8002D000 4407A000 */  mfc1       $a3, $f20
/* 11EE04 8002D004 27A20198 */  addiu      $v0, $sp, 0x198
/* 11EE08 8002D008 0C02FA29 */  jal        func_800BE8A4
/* 11EE0C 8002D00C AFA20018 */   sw        $v0, 0x18($sp)
/* 11EE10 8002D010 3248FFFF */  andi       $t0, $s2, 0xffff
/* 11EE14 8002D014 24020006 */  addiu      $v0, $zero, 6
/* 11EE18 8002D018 1102001C */  beq        $t0, $v0, .L8002D08C
/* 11EE1C 8002D01C 29020007 */   slti      $v0, $t0, 7
/* 11EE20 8002D020 10400005 */  beqz       $v0, .L8002D038
/* 11EE24 8002D024 24020001 */   addiu     $v0, $zero, 1
/* 11EE28 8002D028 11020032 */  beq        $t0, $v0, .L8002D0F4
/* 11EE2C 8002D02C 00002821 */   addu      $a1, $zero, $zero
/* 11EE30 8002D030 0800B46A */  j          .L8002D1A8
/* 11EE34 8002D034 00000000 */   nop
.L8002D038:
/* 11EE38 8002D038 24020007 */  addiu      $v0, $zero, 7
/* 11EE3C 8002D03C 1502005A */  bne        $t0, $v0, .L8002D1A8
/* 11EE40 8002D040 27A50120 */   addiu     $a1, $sp, 0x120
/* 11EE44 8002D044 3C048002 */  lui        $a0, %hi(func_80026680_118480)
/* 11EE48 8002D048 24846680 */  addiu      $a0, $a0, %lo(func_80026680_118480)
/* 11EE4C 8002D04C 2406012C */  addiu      $a2, $zero, 0x12c
/* 11EE50 8002D050 3C013B80 */  lui        $at, 0x3b80
/* 11EE54 8002D054 44810000 */  mtc1       $at, $f0
/* 11EE58 8002D058 3C013A03 */  lui        $at, 0x3a03
/* 11EE5C 8002D05C 3421126F */  ori        $at, $at, 0x126f
/* 11EE60 8002D060 44811000 */  mtc1       $at, $f2
/* 11EE64 8002D064 C7A40190 */  lwc1       $f4, 0x190($sp)
/* 11EE68 8002D068 C7A60194 */  lwc1       $f6, 0x194($sp)
/* 11EE6C 8002D06C C7A80198 */  lwc1       $f8, 0x198($sp)
/* 11EE70 8002D070 24070001 */  addiu      $a3, $zero, 1
/* 11EE74 8002D074 24020001 */  addiu      $v0, $zero, 1
/* 11EE78 8002D078 AFA20144 */  sw         $v0, 0x144($sp)
/* 11EE7C 8002D07C 24020004 */  addiu      $v0, $zero, 4
/* 11EE80 8002D080 AFA20148 */  sw         $v0, 0x148($sp)
/* 11EE84 8002D084 0800B434 */  j          .L8002D0D0
/* 11EE88 8002D088 24020003 */   addiu     $v0, $zero, 3
.L8002D08C:
/* 11EE8C 8002D08C 3C048002 */  lui        $a0, %hi(func_80026680_118480)
/* 11EE90 8002D090 24846680 */  addiu      $a0, $a0, %lo(func_80026680_118480)
/* 11EE94 8002D094 27A50120 */  addiu      $a1, $sp, 0x120
/* 11EE98 8002D098 2406012C */  addiu      $a2, $zero, 0x12c
/* 11EE9C 8002D09C 3C013C00 */  lui        $at, 0x3c00
/* 11EEA0 8002D0A0 44810000 */  mtc1       $at, $f0
/* 11EEA4 8002D0A4 3C013A03 */  lui        $at, 0x3a03
/* 11EEA8 8002D0A8 3421126F */  ori        $at, $at, 0x126f
/* 11EEAC 8002D0AC 44811000 */  mtc1       $at, $f2
/* 11EEB0 8002D0B0 C7A40190 */  lwc1       $f4, 0x190($sp)
/* 11EEB4 8002D0B4 C7A60194 */  lwc1       $f6, 0x194($sp)
/* 11EEB8 8002D0B8 C7A80198 */  lwc1       $f8, 0x198($sp)
/* 11EEBC 8002D0BC 24070001 */  addiu      $a3, $zero, 1
/* 11EEC0 8002D0C0 24020002 */  addiu      $v0, $zero, 2
/* 11EEC4 8002D0C4 AFA20144 */  sw         $v0, 0x144($sp)
/* 11EEC8 8002D0C8 AFA20148 */  sw         $v0, 0x148($sp)
/* 11EECC 8002D0CC 24020001 */  addiu      $v0, $zero, 1
.L8002D0D0:
/* 11EED0 8002D0D0 AFA2014C */  sw         $v0, 0x14c($sp)
/* 11EED4 8002D0D4 E7A00138 */  swc1       $f0, 0x138($sp)
/* 11EED8 8002D0D8 E7A2013C */  swc1       $f2, 0x13c($sp)
/* 11EEDC 8002D0DC E7A40120 */  swc1       $f4, 0x120($sp)
/* 11EEE0 8002D0E0 E7A60124 */  swc1       $f6, 0x124($sp)
/* 11EEE4 8002D0E4 0C025D06 */  jal        func_80097418
/* 11EEE8 8002D0E8 E7A80128 */   swc1      $f8, 0x128($sp)
/* 11EEEC 8002D0EC 0800B46A */  j          .L8002D1A8
/* 11EEF0 8002D0F0 00000000 */   nop
.L8002D0F4:
/* 11EEF4 8002D0F4 3C048039 */  lui        $a0, %hi(D_80397230)
/* 11EEF8 8002D0F8 24847230 */  addiu      $a0, $a0, %lo(D_80397230)
/* 11EEFC 8002D0FC C7A00190 */  lwc1       $f0, 0x190($sp)
/* 11EF00 8002D100 C7A20194 */  lwc1       $f2, 0x194($sp)
/* 11EF04 8002D104 C7A40198 */  lwc1       $f4, 0x198($sp)
/* 11EF08 8002D108 2406012C */  addiu      $a2, $zero, 0x12c
/* 11EF0C 8002D10C 24030014 */  addiu      $v1, $zero, 0x14
/* 11EF10 8002D110 2402000A */  addiu      $v0, $zero, 0xa
/* 11EF14 8002D114 3C01803B */  lui        $at, %hi(D_803B3EA8)
/* 11EF18 8002D118 AC223EA8 */  sw         $v0, %lo(D_803B3EA8)($at)
/* 11EF1C 8002D11C 24020008 */  addiu      $v0, $zero, 8
/* 11EF20 8002D120 3C01803B */  lui        $at, %hi(D_803B3E28)
/* 11EF24 8002D124 AC283E28 */  sw         $t0, %lo(D_803B3E28)($at)
/* 11EF28 8002D128 3C01803B */  lui        $at, %hi(D_803B3E34)
/* 11EF2C 8002D12C AC233E34 */  sw         $v1, %lo(D_803B3E34)($at)
/* 11EF30 8002D130 3C01803B */  lui        $at, %hi(D_803B3E20)
/* 11EF34 8002D134 AC223E20 */  sw         $v0, %lo(D_803B3E20)($at)
/* 11EF38 8002D138 3C01803B */  lui        $at, %hi(D_803B3E5C)
/* 11EF3C 8002D13C AC233E5C */  sw         $v1, %lo(D_803B3E5C)($at)
/* 11EF40 8002D140 3C01803B */  lui        $at, %hi(D_803B3E24)
/* 11EF44 8002D144 AC203E24 */  sw         $zero, %lo(D_803B3E24)($at)
/* 11EF48 8002D148 3C01803B */  lui        $at, %hi(D_803B3EB8)
/* 11EF4C 8002D14C AC203EB8 */  sw         $zero, %lo(D_803B3EB8)($at)
/* 11EF50 8002D150 3C01803B */  lui        $at, %hi(D_803B3E60)
/* 11EF54 8002D154 AC203E60 */  sw         $zero, %lo(D_803B3E60)($at)
/* 11EF58 8002D158 3C01803B */  lui        $at, %hi(D_803B3E4C)
/* 11EF5C 8002D15C AC203E4C */  sw         $zero, %lo(D_803B3E4C)($at)
/* 11EF60 8002D160 3C01803B */  lui        $at, %hi(D_803B3EAC)
/* 11EF64 8002D164 AC283EAC */  sw         $t0, %lo(D_803B3EAC)($at)
/* 11EF68 8002D168 3C01803B */  lui        $at, %hi(D_803B3EB4)
/* 11EF6C 8002D16C AC203EB4 */  sw         $zero, %lo(D_803B3EB4)($at)
/* 11EF70 8002D170 3C01803B */  lui        $at, %hi(D_803B3E50)
/* 11EF74 8002D174 AC203E50 */  sw         $zero, %lo(D_803B3E50)($at)
/* 11EF78 8002D178 3C01803B */  lui        $at, %hi(D_803B3E54)
/* 11EF7C 8002D17C AC203E54 */  sw         $zero, %lo(D_803B3E54)($at)
/* 11EF80 8002D180 3C01803B */  lui        $at, %hi(D_803B3EBC)
/* 11EF84 8002D184 E4203EBC */  swc1       $f0, %lo(D_803B3EBC)($at)
/* 11EF88 8002D188 3C01803B */  lui        $at, %hi(D_803B3EB0)
/* 11EF8C 8002D18C E4223EB0 */  swc1       $f2, %lo(D_803B3EB0)($at)
/* 11EF90 8002D190 3C01803B */  lui        $at, %hi(D_803B3E2C)
/* 11EF94 8002D194 E4243E2C */  swc1       $f4, %lo(D_803B3E2C)($at)
/* 11EF98 8002D198 0C025D06 */  jal        func_80097418
/* 11EF9C 8002D19C 24070001 */   addiu     $a3, $zero, 1
/* 11EFA0 8002D1A0 3C01803B */  lui        $at, %hi(D_803B3E58)
/* 11EFA4 8002D1A4 E4343E58 */  swc1       $f20, %lo(D_803B3E58)($at)
.L8002D1A8:
/* 11EFA8 8002D1A8 8FBF01AC */  lw         $ra, 0x1ac($sp)
/* 11EFAC 8002D1AC 8FB201A8 */  lw         $s2, 0x1a8($sp)
/* 11EFB0 8002D1B0 8FB101A4 */  lw         $s1, 0x1a4($sp)
/* 11EFB4 8002D1B4 8FB001A0 */  lw         $s0, 0x1a0($sp)
/* 11EFB8 8002D1B8 D7B401B0 */  ldc1       $f20, 0x1b0($sp)
/* 11EFBC 8002D1BC 03E00008 */  jr         $ra
/* 11EFC0 8002D1C0 27BD01B8 */   addiu     $sp, $sp, 0x1b8

glabel func_8002D1C4_11EFC4
/* 11EFC4 8002D1C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11EFC8 8002D1C8 AFB10014 */  sw         $s1, 0x14($sp)
/* 11EFCC 8002D1CC 00808821 */  addu       $s1, $a0, $zero
/* 11EFD0 8002D1D0 AFB00010 */  sw         $s0, 0x10($sp)
/* 11EFD4 8002D1D4 00A08021 */  addu       $s0, $a1, $zero
/* 11EFD8 8002D1D8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 11EFDC 8002D1DC 0C00B481 */  jal        func_8002D204_11F004
/* 11EFE0 8002D1E0 00002821 */   addu      $a1, $zero, $zero
/* 11EFE4 8002D1E4 0C026DD5 */  jal        func_8009B754
/* 11EFE8 8002D1E8 02002021 */   addu      $a0, $s0, $zero
/* 11EFEC 8002D1EC AE220024 */  sw         $v0, 0x24($s1)
/* 11EFF0 8002D1F0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 11EFF4 8002D1F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 11EFF8 8002D1F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 11EFFC 8002D1FC 03E00008 */  jr         $ra
/* 11F000 8002D200 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002D204_11F004
/* 11F004 8002D204 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11F008 8002D208 AFB00010 */  sw         $s0, 0x10($sp)
/* 11F00C 8002D20C 00808021 */  addu       $s0, $a0, $zero
/* 11F010 8002D210 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11F014 8002D214 8E040024 */  lw         $a0, 0x24($s0)
/* 11F018 8002D218 10800004 */  beqz       $a0, .L8002D22C
/* 11F01C 8002D21C 00000000 */   nop
/* 11F020 8002D220 0C026E46 */  jal        func_8009B918
/* 11F024 8002D224 00000000 */   nop
/* 11F028 8002D228 AE000024 */  sw         $zero, 0x24($s0)
.L8002D22C:
/* 11F02C 8002D22C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11F030 8002D230 8FB00010 */  lw         $s0, 0x10($sp)
/* 11F034 8002D234 03E00008 */  jr         $ra
/* 11F038 8002D238 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002D23C_11F03C
/* 11F03C 8002D23C 00804021 */  addu       $t0, $a0, $zero
/* 11F040 8002D240 00A01821 */  addu       $v1, $a1, $zero
/* 11F044 8002D244 30E70001 */  andi       $a3, $a3, 1
/* 11F048 8002D248 14E00009 */  bnez       $a3, .L8002D270
/* 11F04C 8002D24C 00C04821 */   addu      $t1, $a2, $zero
/* 11F050 8002D250 00851024 */  and        $v0, $a0, $a1
/* 11F054 8002D254 3042FFFF */  andi       $v0, $v0, 0xffff
/* 11F058 8002D258 1040000E */  beqz       $v0, .L8002D294
/* 11F05C 8002D25C 3102FFFF */   andi      $v0, $t0, 0xffff
/* 11F060 8002D260 00021027 */  nor        $v0, $zero, $v0
/* 11F064 8002D264 3123FFFF */  andi       $v1, $t1, 0xffff
/* 11F068 8002D268 0800B4A3 */  j          .L8002D28C
/* 11F06C 8002D26C 00431024 */   and       $v0, $v0, $v1
.L8002D270:
/* 11F070 8002D270 3102FFFF */  andi       $v0, $t0, 0xffff
/* 11F074 8002D274 00021027 */  nor        $v0, $zero, $v0
/* 11F078 8002D278 3063FFFF */  andi       $v1, $v1, 0xffff
/* 11F07C 8002D27C 00431024 */  and        $v0, $v0, $v1
/* 11F080 8002D280 10400004 */  beqz       $v0, .L8002D294
/* 11F084 8002D284 00861024 */   and       $v0, $a0, $a2
/* 11F088 8002D288 3042FFFF */  andi       $v0, $v0, 0xffff
.L8002D28C:
/* 11F08C 8002D28C 14400002 */  bnez       $v0, .L8002D298
/* 11F090 8002D290 24020001 */   addiu     $v0, $zero, 1
.L8002D294:
/* 11F094 8002D294 00001021 */  addu       $v0, $zero, $zero
.L8002D298:
/* 11F098 8002D298 03E00008 */  jr         $ra
/* 11F09C 8002D29C 00000000 */   nop

glabel func_8002D2A0_11F0A0
/* 11F0A0 8002D2A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11F0A4 8002D2A4 AFB00010 */  sw         $s0, 0x10($sp)
/* 11F0A8 8002D2A8 00808021 */  addu       $s0, $a0, $zero
/* 11F0AC 8002D2AC AFBF0014 */  sw         $ra, 0x14($sp)
/* 11F0B0 8002D2B0 8E030008 */  lw         $v1, 8($s0)
/* 11F0B4 8002D2B4 24050002 */  addiu      $a1, $zero, 2
/* 11F0B8 8002D2B8 10650005 */  beq        $v1, $a1, .L8002D2D0
/* 11F0BC 8002D2BC 24020004 */   addiu     $v0, $zero, 4
/* 11F0C0 8002D2C0 1062000E */  beq        $v1, $v0, .L8002D2FC
/* 11F0C4 8002D2C4 3C040004 */   lui       $a0, 4
/* 11F0C8 8002D2C8 0800B4F9 */  j          .L8002D3E4
/* 11F0CC 8002D2CC 00000000 */   nop
.L8002D2D0:
/* 11F0D0 8002D2D0 8E020038 */  lw         $v0, 0x38($s0)
/* 11F0D4 8002D2D4 84430022 */  lh         $v1, 0x22($v0)
/* 11F0D8 8002D2D8 8442001E */  lh         $v0, 0x1e($v0)
/* 11F0DC 8002D2DC 00031C00 */  sll        $v1, $v1, 0x10
/* 11F0E0 8002D2E0 00431021 */  addu       $v0, $v0, $v1
/* 11F0E4 8002D2E4 1440003F */  bnez       $v0, .L8002D3E4
/* 11F0E8 8002D2E8 02002021 */   addu      $a0, $s0, $zero
/* 11F0EC 8002D2EC 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 11F0F0 8002D2F0 24050091 */   addiu     $a1, $zero, 0x91
/* 11F0F4 8002D2F4 0800B4F9 */  j          .L8002D3E4
/* 11F0F8 8002D2F8 00000000 */   nop
.L8002D2FC:
/* 11F0FC 8002D2FC 8E020038 */  lw         $v0, 0x38($s0)
/* 11F100 8002D300 84430022 */  lh         $v1, 0x22($v0)
/* 11F104 8002D304 8442001E */  lh         $v0, 0x1e($v0)
/* 11F108 8002D308 34840002 */  ori        $a0, $a0, 2
/* 11F10C 8002D30C 00031C00 */  sll        $v1, $v1, 0x10
/* 11F110 8002D310 00431821 */  addu       $v1, $v0, $v1
/* 11F114 8002D314 10640020 */  beq        $v1, $a0, .L8002D398
/* 11F118 8002D318 0083102A */   slt       $v0, $a0, $v1
/* 11F11C 8002D31C 54400008 */  bnezl      $v0, .L8002D340
/* 11F120 8002D320 3C020006 */   lui       $v0, 6
/* 11F124 8002D324 10650010 */  beq        $v1, $a1, .L8002D368
/* 11F128 8002D328 3C020002 */   lui       $v0, 2
/* 11F12C 8002D32C 34420002 */  ori        $v0, $v0, 2
/* 11F130 8002D330 10620011 */  beq        $v1, $v0, .L8002D378
/* 11F134 8002D334 02002021 */   addu      $a0, $s0, $zero
/* 11F138 8002D338 0800B4F9 */  j          .L8002D3E4
/* 11F13C 8002D33C 00000000 */   nop
.L8002D340:
/* 11F140 8002D340 34420002 */  ori        $v0, $v0, 2
/* 11F144 8002D344 1062001D */  beq        $v1, $v0, .L8002D3BC
/* 11F148 8002D348 3C020007 */   lui       $v0, 7
/* 11F14C 8002D34C 34420002 */  ori        $v0, $v0, 2
/* 11F150 8002D350 14620024 */  bne        $v1, $v0, .L8002D3E4
/* 11F154 8002D354 00000000 */   nop
/* 11F158 8002D358 0C026DD5 */  jal        func_8009B754
/* 11F15C 8002D35C 2404000C */   addiu     $a0, $zero, 0xc
/* 11F160 8002D360 0800B4F9 */  j          .L8002D3E4
/* 11F164 8002D364 00000000 */   nop
.L8002D368:
/* 11F168 8002D368 3C058006 */  lui        $a1, %hi(D_8005AA98)
/* 11F16C 8002D36C 24A5AA98 */  addiu      $a1, $a1, %lo(D_8005AA98)
/* 11F170 8002D370 0800B4F7 */  j          .L8002D3DC
/* 11F174 8002D374 02002021 */   addu      $a0, $s0, $zero
.L8002D378:
/* 11F178 8002D378 3C058006 */  lui        $a1, %hi(D_8005AAA0)
/* 11F17C 8002D37C 24A5AAA0 */  addiu      $a1, $a1, %lo(D_8005AAA0)
/* 11F180 8002D380 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 11F184 8002D384 24060006 */   addiu     $a2, $zero, 6
/* 11F188 8002D388 3C058006 */  lui        $a1, %hi(D_8005AAA8)
/* 11F18C 8002D38C 24A5AAA8 */  addiu      $a1, $a1, %lo(D_8005AAA8)
/* 11F190 8002D390 0800B4F7 */  j          .L8002D3DC
/* 11F194 8002D394 02002021 */   addu      $a0, $s0, $zero
.L8002D398:
/* 11F198 8002D398 02002021 */  addu       $a0, $s0, $zero
/* 11F19C 8002D39C 3C058006 */  lui        $a1, %hi(D_8005AAB0)
/* 11F1A0 8002D3A0 24A5AAB0 */  addiu      $a1, $a1, %lo(D_8005AAB0)
/* 11F1A4 8002D3A4 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 11F1A8 8002D3A8 24060006 */   addiu     $a2, $zero, 6
/* 11F1AC 8002D3AC 3C058006 */  lui        $a1, %hi(D_8005AAB8)
/* 11F1B0 8002D3B0 24A5AAB8 */  addiu      $a1, $a1, %lo(D_8005AAB8)
/* 11F1B4 8002D3B4 0800B4F7 */  j          .L8002D3DC
/* 11F1B8 8002D3B8 02002021 */   addu      $a0, $s0, $zero
.L8002D3BC:
/* 11F1BC 8002D3BC 02002021 */  addu       $a0, $s0, $zero
/* 11F1C0 8002D3C0 3C058006 */  lui        $a1, %hi(D_8005AAC0)
/* 11F1C4 8002D3C4 24A5AAC0 */  addiu      $a1, $a1, %lo(D_8005AAC0)
/* 11F1C8 8002D3C8 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 11F1CC 8002D3CC 24060006 */   addiu     $a2, $zero, 6
/* 11F1D0 8002D3D0 02002021 */  addu       $a0, $s0, $zero
/* 11F1D4 8002D3D4 3C058006 */  lui        $a1, %hi(D_8005AAC8)
/* 11F1D8 8002D3D8 24A5AAC8 */  addiu      $a1, $a1, %lo(D_8005AAC8)
.L8002D3DC:
/* 11F1DC 8002D3DC 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 11F1E0 8002D3E0 24060006 */   addiu     $a2, $zero, 6
.L8002D3E4:
/* 11F1E4 8002D3E4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11F1E8 8002D3E8 8FB00010 */  lw         $s0, 0x10($sp)
/* 11F1EC 8002D3EC 03E00008 */  jr         $ra
/* 11F1F0 8002D3F0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002D3F4_11F1F4
/* 11F1F4 8002D3F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11F1F8 8002D3F8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11F1FC 8002D3FC 00808021 */  addu       $s0, $a0, $zero
/* 11F200 8002D400 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11F204 8002D404 8E030008 */  lw         $v1, 8($s0)
/* 11F208 8002D408 24020009 */  addiu      $v0, $zero, 9
/* 11F20C 8002D40C 10620058 */  beq        $v1, $v0, .L8002D570
/* 11F210 8002D410 2862000A */   slti      $v0, $v1, 0xa
/* 11F214 8002D414 50400005 */  beql       $v0, $zero, .L8002D42C
/* 11F218 8002D418 2402000A */   addiu     $v0, $zero, 0xa
/* 11F21C 8002D41C 10600007 */  beqz       $v1, .L8002D43C
/* 11F220 8002D420 00000000 */   nop
/* 11F224 8002D424 0800B56D */  j          .L8002D5B4
/* 11F228 8002D428 00000000 */   nop
.L8002D42C:
/* 11F22C 8002D42C 10620011 */  beq        $v1, $v0, .L8002D474
/* 11F230 8002D430 00000000 */   nop
/* 11F234 8002D434 0800B56D */  j          .L8002D5B4
/* 11F238 8002D438 00000000 */   nop
.L8002D43C:
/* 11F23C 8002D43C 8E030038 */  lw         $v1, 0x38($s0)
/* 11F240 8002D440 84620022 */  lh         $v0, 0x22($v1)
/* 11F244 8002D444 8463001E */  lh         $v1, 0x1e($v1)
/* 11F248 8002D448 00021400 */  sll        $v0, $v0, 0x10
/* 11F24C 8002D44C 00621821 */  addu       $v1, $v1, $v0
/* 11F250 8002D450 24020001 */  addiu      $v0, $zero, 1
/* 11F254 8002D454 10620003 */  beq        $v1, $v0, .L8002D464
/* 11F258 8002D458 24020005 */   addiu     $v0, $zero, 5
/* 11F25C 8002D45C 14620055 */  bne        $v1, $v0, .L8002D5B4
/* 11F260 8002D460 00000000 */   nop
.L8002D464:
/* 11F264 8002D464 0C026DD5 */  jal        func_8009B754
/* 11F268 8002D468 24040022 */   addiu     $a0, $zero, 0x22
/* 11F26C 8002D46C 0800B56D */  j          .L8002D5B4
/* 11F270 8002D470 00000000 */   nop
.L8002D474:
/* 11F274 8002D474 8E030038 */  lw         $v1, 0x38($s0)
/* 11F278 8002D478 84620022 */  lh         $v0, 0x22($v1)
/* 11F27C 8002D47C 8463001E */  lh         $v1, 0x1e($v1)
/* 11F280 8002D480 00021400 */  sll        $v0, $v0, 0x10
/* 11F284 8002D484 00621821 */  addu       $v1, $v1, $v0
/* 11F288 8002D488 24020005 */  addiu      $v0, $zero, 5
/* 11F28C 8002D48C 1062001D */  beq        $v1, $v0, .L8002D504
/* 11F290 8002D490 28620006 */   slti      $v0, $v1, 6
/* 11F294 8002D494 10400005 */  beqz       $v0, .L8002D4AC
/* 11F298 8002D498 24020001 */   addiu     $v0, $zero, 1
/* 11F29C 8002D49C 1062000B */  beq        $v1, $v0, .L8002D4CC
/* 11F2A0 8002D4A0 00000000 */   nop
/* 11F2A4 8002D4A4 0800B56D */  j          .L8002D5B4
/* 11F2A8 8002D4A8 00000000 */   nop
.L8002D4AC:
/* 11F2AC 8002D4AC 24020006 */  addiu      $v0, $zero, 6
/* 11F2B0 8002D4B0 1062001B */  beq        $v1, $v0, .L8002D520
/* 11F2B4 8002D4B4 3C02000D */   lui       $v0, 0xd
/* 11F2B8 8002D4B8 34420006 */  ori        $v0, $v0, 6
/* 11F2BC 8002D4BC 10620025 */  beq        $v1, $v0, .L8002D554
/* 11F2C0 8002D4C0 00000000 */   nop
/* 11F2C4 8002D4C4 0800B56D */  j          .L8002D5B4
/* 11F2C8 8002D4C8 00000000 */   nop
.L8002D4CC:
/* 11F2CC 8002D4CC 0C026DD5 */  jal        func_8009B754
/* 11F2D0 8002D4D0 2404000C */   addiu     $a0, $zero, 0xc
/* 11F2D4 8002D4D4 00002021 */  addu       $a0, $zero, $zero
/* 11F2D8 8002D4D8 24050100 */  addiu      $a1, $zero, 0x100
/* 11F2DC 8002D4DC 0C026B15 */  jal        func_8009AC54
/* 11F2E0 8002D4E0 24060003 */   addiu     $a2, $zero, 3
/* 11F2E4 8002D4E4 3C048002 */  lui        $a0, %hi(func_80026540_118340)
/* 11F2E8 8002D4E8 24846540 */  addiu      $a0, $a0, %lo(func_80026540_118340)
/* 11F2EC 8002D4EC 00002821 */  addu       $a1, $zero, $zero
/* 11F2F0 8002D4F0 2406012C */  addiu      $a2, $zero, 0x12c
/* 11F2F4 8002D4F4 0C025D06 */  jal        func_80097418
/* 11F2F8 8002D4F8 24070001 */   addiu     $a3, $zero, 1
/* 11F2FC 8002D4FC 0800B56D */  j          .L8002D5B4
/* 11F300 8002D500 00000000 */   nop
.L8002D504:
/* 11F304 8002D504 02002021 */  addu       $a0, $s0, $zero
/* 11F308 8002D508 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 11F30C 8002D50C 2405000B */   addiu     $a1, $zero, 0xb
/* 11F310 8002D510 00002021 */  addu       $a0, $zero, $zero
/* 11F314 8002D514 24050040 */  addiu      $a1, $zero, 0x40
/* 11F318 8002D518 0800B56B */  j          .L8002D5AC
/* 11F31C 8002D51C 240603E7 */   addiu     $a2, $zero, 0x3e7
.L8002D520:
/* 11F320 8002D520 3C018006 */  lui        $at, %hi(D_8005AAD0)
/* 11F324 8002D524 8C26AAD0 */  lw         $a2, %lo(D_8005AAD0)($at)
/* 11F328 8002D528 8C27AAD4 */  lw         $a3, -0x552c($at)
/* 11F32C 8002D52C 2404001B */  addiu      $a0, $zero, 0x1b
/* 11F330 8002D530 0C009A78 */  jal        func_800269E0_1187E0
/* 11F334 8002D534 240500C8 */   addiu     $a1, $zero, 0xc8
/* 11F338 8002D538 2404001C */  addiu      $a0, $zero, 0x1c
/* 11F33C 8002D53C 00003021 */  addu       $a2, $zero, $zero
/* 11F340 8002D540 00003821 */  addu       $a3, $zero, $zero
/* 11F344 8002D544 0C009A78 */  jal        func_800269E0_1187E0
/* 11F348 8002D548 240500C8 */   addiu     $a1, $zero, 0xc8
/* 11F34C 8002D54C 0800B56D */  j          .L8002D5B4
/* 11F350 8002D550 00000000 */   nop
.L8002D554:
/* 11F354 8002D554 0C026B46 */  jal        func_8009AD18
/* 11F358 8002D558 00000000 */   nop
/* 11F35C 8002D55C 02002021 */  addu       $a0, $s0, $zero
/* 11F360 8002D560 0C00B481 */  jal        func_8002D204_11F004
/* 11F364 8002D564 00002821 */   addu      $a1, $zero, $zero
/* 11F368 8002D568 0800B56D */  j          .L8002D5B4
/* 11F36C 8002D56C 00000000 */   nop
.L8002D570:
/* 11F370 8002D570 8E030038 */  lw         $v1, 0x38($s0)
/* 11F374 8002D574 84620022 */  lh         $v0, 0x22($v1)
/* 11F378 8002D578 8463001E */  lh         $v1, 0x1e($v1)
/* 11F37C 8002D57C 00021400 */  sll        $v0, $v0, 0x10
/* 11F380 8002D580 00621821 */  addu       $v1, $v1, $v0
/* 11F384 8002D584 24020001 */  addiu      $v0, $zero, 1
/* 11F388 8002D588 10620003 */  beq        $v1, $v0, .L8002D598
/* 11F38C 8002D58C 24020005 */   addiu     $v0, $zero, 5
/* 11F390 8002D590 14620008 */  bne        $v1, $v0, .L8002D5B4
/* 11F394 8002D594 00000000 */   nop
.L8002D598:
/* 11F398 8002D598 0C026DD5 */  jal        func_8009B754
/* 11F39C 8002D59C 24040022 */   addiu     $a0, $zero, 0x22
/* 11F3A0 8002D5A0 00002021 */  addu       $a0, $zero, $zero
/* 11F3A4 8002D5A4 24050100 */  addiu      $a1, $zero, 0x100
/* 11F3A8 8002D5A8 24060003 */  addiu      $a2, $zero, 3
.L8002D5AC:
/* 11F3AC 8002D5AC 0C026B15 */  jal        func_8009AC54
/* 11F3B0 8002D5B0 00000000 */   nop
.L8002D5B4:
/* 11F3B4 8002D5B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 11F3B8 8002D5B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 11F3BC 8002D5BC 03E00008 */  jr         $ra
/* 11F3C0 8002D5C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002D5C4_11F3C4
/* 11F3C4 8002D5C4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 11F3C8 8002D5C8 AFB00010 */  sw         $s0, 0x10($sp)
/* 11F3CC 8002D5CC 00808021 */  addu       $s0, $a0, $zero
/* 11F3D0 8002D5D0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 11F3D4 8002D5D4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 11F3D8 8002D5D8 8E020008 */  lw         $v0, 8($s0)
/* 11F3DC 8002D5DC 2443FFD0 */  addiu      $v1, $v0, -0x30
/* 11F3E0 8002D5E0 2C62011F */  sltiu      $v0, $v1, 0x11f
/* 11F3E4 8002D5E4 1040059F */  beqz       $v0, .L8002EC64
/* 11F3E8 8002D5E8 00031080 */   sll       $v0, $v1, 2
/* 11F3EC 8002D5EC 3C018006 */  lui        $at, %hi(D_8005AB00)
/* 11F3F0 8002D5F0 00220821 */  addu       $at, $at, $v0
/* 11F3F4 8002D5F4 8C22AB00 */  lw         $v0, %lo(D_8005AB00)($at)
/* 11F3F8 8002D5F8 00400008 */  jr         $v0
/* 11F3FC 8002D5FC 00000000 */   nop
/* 11F400 8002D600 8E030038 */  lw         $v1, 0x38($s0)
/* 11F404 8002D604 84620022 */  lh         $v0, 0x22($v1)
/* 11F408 8002D608 8463001E */  lh         $v1, 0x1e($v1)
/* 11F40C 8002D60C 00021400 */  sll        $v0, $v0, 0x10
/* 11F410 8002D610 00621821 */  addu       $v1, $v1, $v0
/* 11F414 8002D614 24020001 */  addiu      $v0, $zero, 1
/* 11F418 8002D618 10620005 */  beq        $v1, $v0, .L8002D630
/* 11F41C 8002D61C 24020005 */   addiu     $v0, $zero, 5
/* 11F420 8002D620 10620009 */  beq        $v1, $v0, .L8002D648
/* 11F424 8002D624 00000000 */   nop
/* 11F428 8002D628 0800BB19 */  j          .L8002EC64
/* 11F42C 8002D62C 00000000 */   nop
.L8002D630:
/* 11F430 8002D630 0C026DD5 */  jal        func_8009B754
/* 11F434 8002D634 24040022 */   addiu     $a0, $zero, 0x22
/* 11F438 8002D638 00002021 */  addu       $a0, $zero, $zero
/* 11F43C 8002D63C 24050100 */  addiu      $a1, $zero, 0x100
/* 11F440 8002D640 0800BB17 */  j          .L8002EC5C
/* 11F444 8002D644 24060003 */   addiu     $a2, $zero, 3
.L8002D648:
/* 11F448 8002D648 0C026DD5 */  jal        func_8009B754
/* 11F44C 8002D64C 24040022 */   addiu     $a0, $zero, 0x22
/* 11F450 8002D650 00002021 */  addu       $a0, $zero, $zero
/* 11F454 8002D654 24050100 */  addiu      $a1, $zero, 0x100
/* 11F458 8002D658 0800BB17 */  j          .L8002EC5C
/* 11F45C 8002D65C 24060003 */   addiu     $a2, $zero, 3
/* 11F460 8002D660 8E020038 */  lw         $v0, 0x38($s0)
/* 11F464 8002D664 84430022 */  lh         $v1, 0x22($v0)
/* 11F468 8002D668 8442001E */  lh         $v0, 0x1e($v0)
/* 11F46C 8002D66C 00031C00 */  sll        $v1, $v1, 0x10
/* 11F470 8002D670 00431821 */  addu       $v1, $v0, $v1
/* 11F474 8002D674 10600005 */  beqz       $v1, .L8002D68C
/* 11F478 8002D678 24020004 */   addiu     $v0, $zero, 4
/* 11F47C 8002D67C 10620009 */  beq        $v1, $v0, .L8002D6A4
/* 11F480 8002D680 00000000 */   nop
/* 11F484 8002D684 0800BB19 */  j          .L8002EC64
/* 11F488 8002D688 00000000 */   nop
.L8002D68C:
/* 11F48C 8002D68C 0C026DD5 */  jal        func_8009B754
/* 11F490 8002D690 24040075 */   addiu     $a0, $zero, 0x75
/* 11F494 8002D694 00002021 */  addu       $a0, $zero, $zero
/* 11F498 8002D698 24050100 */  addiu      $a1, $zero, 0x100
/* 11F49C 8002D69C 0800BB17 */  j          .L8002EC5C
/* 11F4A0 8002D6A0 24060003 */   addiu     $a2, $zero, 3
.L8002D6A4:
/* 11F4A4 8002D6A4 0C026DD5 */  jal        func_8009B754
/* 11F4A8 8002D6A8 24040075 */   addiu     $a0, $zero, 0x75
/* 11F4AC 8002D6AC 00002021 */  addu       $a0, $zero, $zero
/* 11F4B0 8002D6B0 24050100 */  addiu      $a1, $zero, 0x100
/* 11F4B4 8002D6B4 0800BB17 */  j          .L8002EC5C
/* 11F4B8 8002D6B8 24060003 */   addiu     $a2, $zero, 3
/* 11F4BC 8002D6BC 8E030038 */  lw         $v1, 0x38($s0)
/* 11F4C0 8002D6C0 84620022 */  lh         $v0, 0x22($v1)
/* 11F4C4 8002D6C4 8463001E */  lh         $v1, 0x1e($v1)
/* 11F4C8 8002D6C8 00021400 */  sll        $v0, $v0, 0x10
/* 11F4CC 8002D6CC 00621821 */  addu       $v1, $v1, $v0
/* 11F4D0 8002D6D0 24020005 */  addiu      $v0, $zero, 5
/* 11F4D4 8002D6D4 10620005 */  beq        $v1, $v0, .L8002D6EC
/* 11F4D8 8002D6D8 2402000A */   addiu     $v0, $zero, 0xa
/* 11F4DC 8002D6DC 10620009 */  beq        $v1, $v0, .L8002D704
/* 11F4E0 8002D6E0 00000000 */   nop
/* 11F4E4 8002D6E4 0800BB19 */  j          .L8002EC64
/* 11F4E8 8002D6E8 00000000 */   nop
.L8002D6EC:
/* 11F4EC 8002D6EC 0C026DD5 */  jal        func_8009B754
/* 11F4F0 8002D6F0 24040022 */   addiu     $a0, $zero, 0x22
/* 11F4F4 8002D6F4 00002021 */  addu       $a0, $zero, $zero
/* 11F4F8 8002D6F8 24050100 */  addiu      $a1, $zero, 0x100
/* 11F4FC 8002D6FC 0800BB17 */  j          .L8002EC5C
/* 11F500 8002D700 24060003 */   addiu     $a2, $zero, 3
.L8002D704:
/* 11F504 8002D704 0C026DD5 */  jal        func_8009B754
/* 11F508 8002D708 24040022 */   addiu     $a0, $zero, 0x22
/* 11F50C 8002D70C 00002021 */  addu       $a0, $zero, $zero
/* 11F510 8002D710 24050100 */  addiu      $a1, $zero, 0x100
/* 11F514 8002D714 0800BB17 */  j          .L8002EC5C
/* 11F518 8002D718 24060003 */   addiu     $a2, $zero, 3
/* 11F51C 8002D71C 8E030038 */  lw         $v1, 0x38($s0)
/* 11F520 8002D720 84620022 */  lh         $v0, 0x22($v1)
/* 11F524 8002D724 8463001E */  lh         $v1, 0x1e($v1)
/* 11F528 8002D728 00021400 */  sll        $v0, $v0, 0x10
/* 11F52C 8002D72C 00621821 */  addu       $v1, $v1, $v0
/* 11F530 8002D730 24020002 */  addiu      $v0, $zero, 2
/* 11F534 8002D734 1462054B */  bne        $v1, $v0, .L8002EC64
/* 11F538 8002D738 00000000 */   nop
/* 11F53C 8002D73C 0C026DD5 */  jal        func_8009B754
/* 11F540 8002D740 24040023 */   addiu     $a0, $zero, 0x23
/* 11F544 8002D744 00002021 */  addu       $a0, $zero, $zero
/* 11F548 8002D748 24050100 */  addiu      $a1, $zero, 0x100
/* 11F54C 8002D74C 0C026B15 */  jal        func_8009AC54
/* 11F550 8002D750 24060003 */   addiu     $a2, $zero, 3
/* 11F554 8002D754 02002021 */  addu       $a0, $s0, $zero
/* 11F558 8002D758 3C058006 */  lui        $a1, %hi(D_8005AAD8)
/* 11F55C 8002D75C 24A5AAD8 */  addiu      $a1, $a1, %lo(D_8005AAD8)
/* 11F560 8002D760 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 11F564 8002D764 24060007 */   addiu     $a2, $zero, 7
/* 11F568 8002D768 0800B73D */  j          .L8002DCF4
/* 11F56C 8002D76C 00000000 */   nop
/* 11F570 8002D770 8E020038 */  lw         $v0, 0x38($s0)
/* 11F574 8002D774 84430022 */  lh         $v1, 0x22($v0)
/* 11F578 8002D778 8442001E */  lh         $v0, 0x1e($v0)
/* 11F57C 8002D77C 00031C00 */  sll        $v1, $v1, 0x10
/* 11F580 8002D780 00431821 */  addu       $v1, $v0, $v1
/* 11F584 8002D784 10600005 */  beqz       $v1, .L8002D79C
/* 11F588 8002D788 24020006 */   addiu     $v0, $zero, 6
/* 11F58C 8002D78C 10620007 */  beq        $v1, $v0, .L8002D7AC
/* 11F590 8002D790 00002021 */   addu      $a0, $zero, $zero
/* 11F594 8002D794 0800BB19 */  j          .L8002EC64
/* 11F598 8002D798 00000000 */   nop
.L8002D79C:
/* 11F59C 8002D79C 0C026DD5 */  jal        func_8009B754
/* 11F5A0 8002D7A0 24040020 */   addiu     $a0, $zero, 0x20
/* 11F5A4 8002D7A4 0800BB19 */  j          .L8002EC64
/* 11F5A8 8002D7A8 00000000 */   nop
.L8002D7AC:
/* 11F5AC 8002D7AC 24050100 */  addiu      $a1, $zero, 0x100
/* 11F5B0 8002D7B0 0800BB17 */  j          .L8002EC5C
/* 11F5B4 8002D7B4 24060003 */   addiu     $a2, $zero, 3
/* 11F5B8 8002D7B8 8E030038 */  lw         $v1, 0x38($s0)
/* 11F5BC 8002D7BC 84620022 */  lh         $v0, 0x22($v1)
/* 11F5C0 8002D7C0 8463001E */  lh         $v1, 0x1e($v1)
/* 11F5C4 8002D7C4 00021400 */  sll        $v0, $v0, 0x10
/* 11F5C8 8002D7C8 00621821 */  addu       $v1, $v1, $v0
/* 11F5CC 8002D7CC 24020001 */  addiu      $v0, $zero, 1
/* 11F5D0 8002D7D0 14620524 */  bne        $v1, $v0, .L8002EC64
/* 11F5D4 8002D7D4 00000000 */   nop
/* 11F5D8 8002D7D8 0C026DD5 */  jal        func_8009B754
/* 11F5DC 8002D7DC 24040023 */   addiu     $a0, $zero, 0x23
/* 11F5E0 8002D7E0 0800BB19 */  j          .L8002EC64
/* 11F5E4 8002D7E4 00000000 */   nop
/* 11F5E8 8002D7E8 8E030038 */  lw         $v1, 0x38($s0)
/* 11F5EC 8002D7EC 84620022 */  lh         $v0, 0x22($v1)
/* 11F5F0 8002D7F0 8463001E */  lh         $v1, 0x1e($v1)
/* 11F5F4 8002D7F4 00021400 */  sll        $v0, $v0, 0x10
/* 11F5F8 8002D7F8 00621821 */  addu       $v1, $v1, $v0
/* 11F5FC 8002D7FC 24020001 */  addiu      $v0, $zero, 1
/* 11F600 8002D800 14620518 */  bne        $v1, $v0, .L8002EC64
/* 11F604 8002D804 02002021 */   addu      $a0, $s0, $zero
/* 11F608 8002D808 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 11F60C 8002D80C 2405000B */   addiu     $a1, $zero, 0xb
/* 11F610 8002D810 0800B73D */  j          .L8002DCF4
/* 11F614 8002D814 00000000 */   nop
/* 11F618 8002D818 8E020038 */  lw         $v0, 0x38($s0)
/* 11F61C 8002D81C 84430022 */  lh         $v1, 0x22($v0)
/* 11F620 8002D820 8442001E */  lh         $v0, 0x1e($v0)
/* 11F624 8002D824 00031C00 */  sll        $v1, $v1, 0x10
/* 11F628 8002D828 00431821 */  addu       $v1, $v0, $v1
/* 11F62C 8002D82C 10600006 */  beqz       $v1, .L8002D848
/* 11F630 8002D830 3C020007 */   lui       $v0, 7
/* 11F634 8002D834 34420004 */  ori        $v0, $v0, 4
/* 11F638 8002D838 10620117 */  beq        $v1, $v0, .L8002DC98
/* 11F63C 8002D83C 00000000 */   nop
/* 11F640 8002D840 0800BB19 */  j          .L8002EC64
/* 11F644 8002D844 00000000 */   nop
.L8002D848:
/* 11F648 8002D848 02002021 */  addu       $a0, $s0, $zero
/* 11F64C 8002D84C 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 11F650 8002D850 2405000B */   addiu     $a1, $zero, 0xb
/* 11F654 8002D854 00002021 */  addu       $a0, $zero, $zero
/* 11F658 8002D858 24050040 */  addiu      $a1, $zero, 0x40
/* 11F65C 8002D85C 0800BB17 */  j          .L8002EC5C
/* 11F660 8002D860 240603E7 */   addiu     $a2, $zero, 0x3e7
/* 11F664 8002D864 8E020038 */  lw         $v0, 0x38($s0)
/* 11F668 8002D868 84430022 */  lh         $v1, 0x22($v0)
/* 11F66C 8002D86C 8442001E */  lh         $v0, 0x1e($v0)
/* 11F670 8002D870 00031C00 */  sll        $v1, $v1, 0x10
/* 11F674 8002D874 00431021 */  addu       $v0, $v0, $v1
/* 11F678 8002D878 144004FA */  bnez       $v0, .L8002EC64
/* 11F67C 8002D87C 00000000 */   nop
/* 11F680 8002D880 0C026DD5 */  jal        func_8009B754
/* 11F684 8002D884 2404000D */   addiu     $a0, $zero, 0xd
/* 11F688 8002D888 0800B62B */  j          .L8002D8AC
/* 11F68C 8002D88C 02002021 */   addu      $a0, $s0, $zero
/* 11F690 8002D890 8E020038 */  lw         $v0, 0x38($s0)
/* 11F694 8002D894 84430022 */  lh         $v1, 0x22($v0)
/* 11F698 8002D898 8442001E */  lh         $v0, 0x1e($v0)
/* 11F69C 8002D89C 00031C00 */  sll        $v1, $v1, 0x10
/* 11F6A0 8002D8A0 00431021 */  addu       $v0, $v0, $v1
/* 11F6A4 8002D8A4 144004EF */  bnez       $v0, .L8002EC64
/* 11F6A8 8002D8A8 02002021 */   addu      $a0, $s0, $zero
.L8002D8AC:
/* 11F6AC 8002D8AC 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 11F6B0 8002D8B0 2405002F */   addiu     $a1, $zero, 0x2f
/* 11F6B4 8002D8B4 0800BB19 */  j          .L8002EC64
/* 11F6B8 8002D8B8 00000000 */   nop
/* 11F6BC 8002D8BC 8E030038 */  lw         $v1, 0x38($s0)
/* 11F6C0 8002D8C0 84620022 */  lh         $v0, 0x22($v1)
/* 11F6C4 8002D8C4 8463001E */  lh         $v1, 0x1e($v1)
/* 11F6C8 8002D8C8 00021400 */  sll        $v0, $v0, 0x10
/* 11F6CC 8002D8CC 00621821 */  addu       $v1, $v1, $v0
/* 11F6D0 8002D8D0 24020009 */  addiu      $v0, $zero, 9
/* 11F6D4 8002D8D4 1062005C */  beq        $v1, $v0, .L8002DA48
/* 11F6D8 8002D8D8 2862000A */   slti      $v0, $v1, 0xa
/* 11F6DC 8002D8DC 1040000E */  beqz       $v0, .L8002D918
/* 11F6E0 8002D8E0 24020006 */   addiu     $v0, $zero, 6
/* 11F6E4 8002D8E4 10620021 */  beq        $v1, $v0, .L8002D96C
/* 11F6E8 8002D8E8 28620007 */   slti      $v0, $v1, 7
/* 11F6EC 8002D8EC 10400005 */  beqz       $v0, .L8002D904
/* 11F6F0 8002D8F0 24020005 */   addiu     $v0, $zero, 5
/* 11F6F4 8002D8F4 10620017 */  beq        $v1, $v0, .L8002D954
/* 11F6F8 8002D8F8 00000000 */   nop
/* 11F6FC 8002D8FC 0800BB19 */  j          .L8002EC64
/* 11F700 8002D900 00000000 */   nop
.L8002D904:
/* 11F704 8002D904 24020007 */  addiu      $v0, $zero, 7
/* 11F708 8002D908 10620026 */  beq        $v1, $v0, .L8002D9A4
/* 11F70C 8002D90C 24040018 */   addiu     $a0, $zero, 0x18
/* 11F710 8002D910 0800BB19 */  j          .L8002EC64
/* 11F714 8002D914 00000000 */   nop
.L8002D918:
/* 11F718 8002D918 2402000C */  addiu      $v0, $zero, 0xc
/* 11F71C 8002D91C 106200D6 */  beq        $v1, $v0, .L8002DC78
/* 11F720 8002D920 2862000D */   slti      $v0, $v1, 0xd
/* 11F724 8002D924 10400005 */  beqz       $v0, .L8002D93C
/* 11F728 8002D928 2402000B */   addiu     $v0, $zero, 0xb
/* 11F72C 8002D92C 1062004C */  beq        $v1, $v0, .L8002DA60
/* 11F730 8002D930 02002021 */   addu      $a0, $s0, $zero
/* 11F734 8002D934 0800BB19 */  j          .L8002EC64
/* 11F738 8002D938 00000000 */   nop
.L8002D93C:
/* 11F73C 8002D93C 3C020009 */  lui        $v0, 9
/* 11F740 8002D940 3442000C */  ori        $v0, $v0, 0xc
/* 11F744 8002D944 1062004A */  beq        $v1, $v0, .L8002DA70
/* 11F748 8002D948 00000000 */   nop
/* 11F74C 8002D94C 0800BB19 */  j          .L8002EC64
/* 11F750 8002D950 00000000 */   nop
.L8002D954:
/* 11F754 8002D954 0C026DD5 */  jal        func_8009B754
/* 11F758 8002D958 2404000E */   addiu     $a0, $zero, 0xe
/* 11F75C 8002D95C 00002021 */  addu       $a0, $zero, $zero
/* 11F760 8002D960 24050100 */  addiu      $a1, $zero, 0x100
/* 11F764 8002D964 0800BB17 */  j          .L8002EC5C
/* 11F768 8002D968 24060003 */   addiu     $a2, $zero, 3
.L8002D96C:
/* 11F76C 8002D96C 3C0140C0 */  lui        $at, 0x40c0
/* 11F770 8002D970 44810000 */  mtc1       $at, $f0
/* 11F774 8002D974 3C014250 */  lui        $at, 0x4250
/* 11F778 8002D978 44811000 */  mtc1       $at, $f2
/* 11F77C 8002D97C 3C014120 */  lui        $at, 0x4120
/* 11F780 8002D980 44812000 */  mtc1       $at, $f4
/* 11F784 8002D984 3C01C180 */  lui        $at, 0xc180
/* 11F788 8002D988 44813000 */  mtc1       $at, $f6
/* 11F78C 8002D98C 3C014230 */  lui        $at, 0x4230
/* 11F790 8002D990 44814000 */  mtc1       $at, $f8
/* 11F794 8002D994 3C01C31F */  lui        $at, 0xc31f
/* 11F798 8002D998 44815000 */  mtc1       $at, $f10
/* 11F79C 8002D99C 0800B6DE */  j          .L8002DB78
/* 11F7A0 8002D9A0 00000000 */   nop
.L8002D9A4:
/* 11F7A4 8002D9A4 3C018006 */  lui        $at, %hi(D_8005AF80)
/* 11F7A8 8002D9A8 8C26AF80 */  lw         $a2, %lo(D_8005AF80)($at)
/* 11F7AC 8002D9AC 8C27AF84 */  lw         $a3, -0x507c($at)
/* 11F7B0 8002D9B0 3C018006 */  lui        $at, %hi(D_8005AF88)
/* 11F7B4 8002D9B4 D434AF88 */  ldc1       $f20, %lo(D_8005AF88)($at)
/* 11F7B8 8002D9B8 0C009A78 */  jal        func_800269E0_1187E0
/* 11F7BC 8002D9BC 24050014 */   addiu     $a1, $zero, 0x14
/* 11F7C0 8002D9C0 24040019 */  addiu      $a0, $zero, 0x19
/* 11F7C4 8002D9C4 4407A000 */  mfc1       $a3, $f20
/* 11F7C8 8002D9C8 4406A800 */  mfc1       $a2, $f21
/* 11F7CC 8002D9CC 00000000 */  nop
/* 11F7D0 8002D9D0 0C009A78 */  jal        func_800269E0_1187E0
/* 11F7D4 8002D9D4 24050014 */   addiu     $a1, $zero, 0x14
/* 11F7D8 8002D9D8 3C018006 */  lui        $at, %hi(D_8005AF90)
/* 11F7DC 8002D9DC 8C26AF90 */  lw         $a2, %lo(D_8005AF90)($at)
/* 11F7E0 8002D9E0 8C27AF94 */  lw         $a3, -0x506c($at)
/* 11F7E4 8002D9E4 2404001A */  addiu      $a0, $zero, 0x1a
/* 11F7E8 8002D9E8 0C009A78 */  jal        func_800269E0_1187E0
/* 11F7EC 8002D9EC 24050014 */   addiu     $a1, $zero, 0x14
/* 11F7F0 8002D9F0 2404001C */  addiu      $a0, $zero, 0x1c
/* 11F7F4 8002D9F4 4407A000 */  mfc1       $a3, $f20
/* 11F7F8 8002D9F8 4406A800 */  mfc1       $a2, $f21
/* 11F7FC 8002D9FC 00000000 */  nop
/* 11F800 8002DA00 0C009A78 */  jal        func_800269E0_1187E0
/* 11F804 8002DA04 24050014 */   addiu     $a1, $zero, 0x14
/* 11F808 8002DA08 3C018006 */  lui        $at, %hi(D_8005AF98)
/* 11F80C 8002DA0C 8C26AF98 */  lw         $a2, %lo(D_8005AF98)($at)
/* 11F810 8002DA10 8C27AF9C */  lw         $a3, -0x5064($at)
/* 11F814 8002DA14 2404001D */  addiu      $a0, $zero, 0x1d
/* 11F818 8002DA18 0C009A78 */  jal        func_800269E0_1187E0
/* 11F81C 8002DA1C 24050014 */   addiu     $a1, $zero, 0x14
/* 11F820 8002DA20 2404001E */  addiu      $a0, $zero, 0x1e
/* 11F824 8002DA24 00003021 */  addu       $a2, $zero, $zero
/* 11F828 8002DA28 00003821 */  addu       $a3, $zero, $zero
/* 11F82C 8002DA2C 0C009A78 */  jal        func_800269E0_1187E0
/* 11F830 8002DA30 24050014 */   addiu     $a1, $zero, 0x14
/* 11F834 8002DA34 3C018006 */  lui        $at, %hi(D_8005AFA0)
/* 11F838 8002DA38 8C26AFA0 */  lw         $a2, %lo(D_8005AFA0)($at)
/* 11F83C 8002DA3C 8C27AFA4 */  lw         $a3, -0x505c($at)
/* 11F840 8002DA40 0800B714 */  j          .L8002DC50
/* 11F844 8002DA44 2404001B */   addiu     $a0, $zero, 0x1b
.L8002DA48:
/* 11F848 8002DA48 0C026DD5 */  jal        func_8009B754
/* 11F84C 8002DA4C 2404000C */   addiu     $a0, $zero, 0xc
/* 11F850 8002DA50 00002021 */  addu       $a0, $zero, $zero
/* 11F854 8002DA54 24050040 */  addiu      $a1, $zero, 0x40
/* 11F858 8002DA58 0800B73B */  j          .L8002DCEC
/* 11F85C 8002DA5C 240603E7 */   addiu     $a2, $zero, 0x3e7
.L8002DA60:
/* 11F860 8002DA60 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 11F864 8002DA64 2405000B */   addiu     $a1, $zero, 0xb
/* 11F868 8002DA68 0800BB19 */  j          .L8002EC64
/* 11F86C 8002DA6C 00000000 */   nop
.L8002DA70:
/* 11F870 8002DA70 0C026B46 */  jal        func_8009AD18
/* 11F874 8002DA74 00000000 */   nop
/* 11F878 8002DA78 02002021 */  addu       $a0, $s0, $zero
/* 11F87C 8002DA7C 0C00B481 */  jal        func_8002D204_11F004
/* 11F880 8002DA80 00002821 */   addu      $a1, $zero, $zero
/* 11F884 8002DA84 0800BB19 */  j          .L8002EC64
/* 11F888 8002DA88 00000000 */   nop
/* 11F88C 8002DA8C 8E030038 */  lw         $v1, 0x38($s0)
/* 11F890 8002DA90 84620022 */  lh         $v0, 0x22($v1)
/* 11F894 8002DA94 8463001E */  lh         $v1, 0x1e($v1)
/* 11F898 8002DA98 00021400 */  sll        $v0, $v0, 0x10
/* 11F89C 8002DA9C 00621821 */  addu       $v1, $v1, $v0
/* 11F8A0 8002DAA0 24020005 */  addiu      $v0, $zero, 5
/* 11F8A4 8002DAA4 1062008C */  beq        $v1, $v0, .L8002DCD8
/* 11F8A8 8002DAA8 00000000 */   nop
/* 11F8AC 8002DAAC 0800BB19 */  j          .L8002EC64
/* 11F8B0 8002DAB0 00000000 */   nop
/* 11F8B4 8002DAB4 8E030038 */  lw         $v1, 0x38($s0)
/* 11F8B8 8002DAB8 84620022 */  lh         $v0, 0x22($v1)
/* 11F8BC 8002DABC 8463001E */  lh         $v1, 0x1e($v1)
/* 11F8C0 8002DAC0 00021400 */  sll        $v0, $v0, 0x10
/* 11F8C4 8002DAC4 00621821 */  addu       $v1, $v1, $v0
/* 11F8C8 8002DAC8 24020005 */  addiu      $v0, $zero, 5
/* 11F8CC 8002DACC 10620039 */  beq        $v1, $v0, .L8002DBB4
/* 11F8D0 8002DAD0 28620006 */   slti      $v0, $v1, 6
/* 11F8D4 8002DAD4 10400007 */  beqz       $v0, .L8002DAF4
/* 11F8D8 8002DAD8 24020003 */   addiu     $v0, $zero, 3
/* 11F8DC 8002DADC 10620014 */  beq        $v1, $v0, .L8002DB30
/* 11F8E0 8002DAE0 24020004 */   addiu     $v0, $zero, 4
/* 11F8E4 8002DAE4 10620018 */  beq        $v1, $v0, .L8002DB48
/* 11F8E8 8002DAE8 00000000 */   nop
/* 11F8EC 8002DAEC 0800BB19 */  j          .L8002EC64
/* 11F8F0 8002DAF0 00000000 */   nop
.L8002DAF4:
/* 11F8F4 8002DAF4 2402000A */  addiu      $v0, $zero, 0xa
/* 11F8F8 8002DAF8 1062005F */  beq        $v1, $v0, .L8002DC78
/* 11F8FC 8002DAFC 2862000B */   slti      $v0, $v1, 0xb
/* 11F900 8002DB00 10400005 */  beqz       $v0, .L8002DB18
/* 11F904 8002DB04 24020007 */   addiu     $v0, $zero, 7
/* 11F908 8002DB08 10620055 */  beq        $v1, $v0, .L8002DC60
/* 11F90C 8002DB0C 00000000 */   nop
/* 11F910 8002DB10 0800BB19 */  j          .L8002EC64
/* 11F914 8002DB14 00000000 */   nop
.L8002DB18:
/* 11F918 8002DB18 3C020009 */  lui        $v0, 9
/* 11F91C 8002DB1C 3442000A */  ori        $v0, $v0, 0xa
/* 11F920 8002DB20 1062005D */  beq        $v1, $v0, .L8002DC98
/* 11F924 8002DB24 00000000 */   nop
/* 11F928 8002DB28 0800BB19 */  j          .L8002EC64
/* 11F92C 8002DB2C 00000000 */   nop
.L8002DB30:
/* 11F930 8002DB30 0C026DD5 */  jal        func_8009B754
/* 11F934 8002DB34 2404000E */   addiu     $a0, $zero, 0xe
/* 11F938 8002DB38 00002021 */  addu       $a0, $zero, $zero
/* 11F93C 8002DB3C 24050100 */  addiu      $a1, $zero, 0x100
/* 11F940 8002DB40 0800BB17 */  j          .L8002EC5C
/* 11F944 8002DB44 24060003 */   addiu     $a2, $zero, 3
.L8002DB48:
/* 11F948 8002DB48 3C01428C */  lui        $at, 0x428c
/* 11F94C 8002DB4C 44810000 */  mtc1       $at, $f0
/* 11F950 8002DB50 3C0141E8 */  lui        $at, 0x41e8
/* 11F954 8002DB54 44811000 */  mtc1       $at, $f2
/* 11F958 8002DB58 3C0140E0 */  lui        $at, 0x40e0
/* 11F95C 8002DB5C 44812000 */  mtc1       $at, $f4
/* 11F960 8002DB60 3C01C160 */  lui        $at, 0xc160
/* 11F964 8002DB64 44813000 */  mtc1       $at, $f6
/* 11F968 8002DB68 3C014278 */  lui        $at, 0x4278
/* 11F96C 8002DB6C 44814000 */  mtc1       $at, $f8
/* 11F970 8002DB70 3C01C2E0 */  lui        $at, 0xc2e0
/* 11F974 8002DB74 44815000 */  mtc1       $at, $f10
.L8002DB78:
/* 11F978 8002DB78 3C018015 */  lui        $at, %hi(D_8014A084)
/* 11F97C 8002DB7C AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 11F980 8002DB80 3C018015 */  lui        $at, %hi(D_8014A064)
/* 11F984 8002DB84 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 11F988 8002DB88 3C018015 */  lui        $at, %hi(D_8014A068)
/* 11F98C 8002DB8C E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 11F990 8002DB90 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 11F994 8002DB94 E424A06C */  swc1       $f4, %lo(D_8014A06C)($at)
/* 11F998 8002DB98 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 11F99C 8002DB9C E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* 11F9A0 8002DBA0 3C018015 */  lui        $at, %hi(D_8014A080)
/* 11F9A4 8002DBA4 E428A080 */  swc1       $f8, %lo(D_8014A080)($at)
/* 11F9A8 8002DBA8 3C018015 */  lui        $at, %hi(D_8014A088)
/* 11F9AC 8002DBAC 0800BB19 */  j          .L8002EC64
/* 11F9B0 8002DBB0 E42AA088 */   swc1      $f10, %lo(D_8014A088)($at)
.L8002DBB4:
/* 11F9B4 8002DBB4 3C018006 */  lui        $at, %hi(D_8005AFA8)
/* 11F9B8 8002DBB8 8C26AFA8 */  lw         $a2, %lo(D_8005AFA8)($at)
/* 11F9BC 8002DBBC 8C27AFAC */  lw         $a3, -0x5054($at)
/* 11F9C0 8002DBC0 24040018 */  addiu      $a0, $zero, 0x18
/* 11F9C4 8002DBC4 0C009A78 */  jal        func_800269E0_1187E0
/* 11F9C8 8002DBC8 24050014 */   addiu     $a1, $zero, 0x14
/* 11F9CC 8002DBCC 3C018006 */  lui        $at, %hi(D_8005AFB0)
/* 11F9D0 8002DBD0 8C26AFB0 */  lw         $a2, %lo(D_8005AFB0)($at)
/* 11F9D4 8002DBD4 8C27AFB4 */  lw         $a3, -0x504c($at)
/* 11F9D8 8002DBD8 24040019 */  addiu      $a0, $zero, 0x19
/* 11F9DC 8002DBDC 0C009A78 */  jal        func_800269E0_1187E0
/* 11F9E0 8002DBE0 24050014 */   addiu     $a1, $zero, 0x14
/* 11F9E4 8002DBE4 3C018006 */  lui        $at, %hi(D_8005AFB8)
/* 11F9E8 8002DBE8 8C26AFB8 */  lw         $a2, %lo(D_8005AFB8)($at)
/* 11F9EC 8002DBEC 8C27AFBC */  lw         $a3, -0x5044($at)
/* 11F9F0 8002DBF0 2404001A */  addiu      $a0, $zero, 0x1a
/* 11F9F4 8002DBF4 0C009A78 */  jal        func_800269E0_1187E0
/* 11F9F8 8002DBF8 24050014 */   addiu     $a1, $zero, 0x14
/* 11F9FC 8002DBFC 3C018006 */  lui        $at, %hi(D_8005AFC0)
/* 11FA00 8002DC00 8C26AFC0 */  lw         $a2, %lo(D_8005AFC0)($at)
/* 11FA04 8002DC04 8C27AFC4 */  lw         $a3, -0x503c($at)
/* 11FA08 8002DC08 2404001C */  addiu      $a0, $zero, 0x1c
/* 11FA0C 8002DC0C 0C009A78 */  jal        func_800269E0_1187E0
/* 11FA10 8002DC10 24050014 */   addiu     $a1, $zero, 0x14
/* 11FA14 8002DC14 3C018006 */  lui        $at, %hi(D_8005AFC8)
/* 11FA18 8002DC18 8C26AFC8 */  lw         $a2, %lo(D_8005AFC8)($at)
/* 11FA1C 8002DC1C 8C27AFCC */  lw         $a3, -0x5034($at)
/* 11FA20 8002DC20 2404001D */  addiu      $a0, $zero, 0x1d
/* 11FA24 8002DC24 0C009A78 */  jal        func_800269E0_1187E0
/* 11FA28 8002DC28 24050014 */   addiu     $a1, $zero, 0x14
/* 11FA2C 8002DC2C 2404001E */  addiu      $a0, $zero, 0x1e
/* 11FA30 8002DC30 00003021 */  addu       $a2, $zero, $zero
/* 11FA34 8002DC34 00003821 */  addu       $a3, $zero, $zero
/* 11FA38 8002DC38 0C009A78 */  jal        func_800269E0_1187E0
/* 11FA3C 8002DC3C 24050014 */   addiu     $a1, $zero, 0x14
/* 11FA40 8002DC40 3C018006 */  lui        $at, %hi(D_8005AFD0)
/* 11FA44 8002DC44 8C26AFD0 */  lw         $a2, %lo(D_8005AFD0)($at)
/* 11FA48 8002DC48 8C27AFD4 */  lw         $a3, -0x502c($at)
/* 11FA4C 8002DC4C 2404001B */  addiu      $a0, $zero, 0x1b
.L8002DC50:
/* 11FA50 8002DC50 0C009A78 */  jal        func_800269E0_1187E0
/* 11FA54 8002DC54 24050014 */   addiu     $a1, $zero, 0x14
/* 11FA58 8002DC58 0800BB19 */  j          .L8002EC64
/* 11FA5C 8002DC5C 00000000 */   nop
.L8002DC60:
/* 11FA60 8002DC60 0C026DD5 */  jal        func_8009B754
/* 11FA64 8002DC64 2404000C */   addiu     $a0, $zero, 0xc
/* 11FA68 8002DC68 00002021 */  addu       $a0, $zero, $zero
/* 11FA6C 8002DC6C 24050040 */  addiu      $a1, $zero, 0x40
/* 11FA70 8002DC70 0800B73B */  j          .L8002DCEC
/* 11FA74 8002DC74 240603E7 */   addiu     $a2, $zero, 0x3e7
.L8002DC78:
/* 11FA78 8002DC78 3C018006 */  lui        $at, %hi(D_8005AFD8)
/* 11FA7C 8002DC7C 8C26AFD8 */  lw         $a2, %lo(D_8005AFD8)($at)
/* 11FA80 8002DC80 8C27AFDC */  lw         $a3, -0x5024($at)
/* 11FA84 8002DC84 2404001B */  addiu      $a0, $zero, 0x1b
/* 11FA88 8002DC88 0C009A78 */  jal        func_800269E0_1187E0
/* 11FA8C 8002DC8C 240500C8 */   addiu     $a1, $zero, 0xc8
/* 11FA90 8002DC90 0800BB19 */  j          .L8002EC64
/* 11FA94 8002DC94 00000000 */   nop
.L8002DC98:
/* 11FA98 8002DC98 0C026B46 */  jal        func_8009AD18
/* 11FA9C 8002DC9C 00000000 */   nop
/* 11FAA0 8002DCA0 0800BB19 */  j          .L8002EC64
/* 11FAA4 8002DCA4 00000000 */   nop
/* 11FAA8 8002DCA8 8E030038 */  lw         $v1, 0x38($s0)
/* 11FAAC 8002DCAC 84620022 */  lh         $v0, 0x22($v1)
/* 11FAB0 8002DCB0 8463001E */  lh         $v1, 0x1e($v1)
/* 11FAB4 8002DCB4 00021400 */  sll        $v0, $v0, 0x10
/* 11FAB8 8002DCB8 00621821 */  addu       $v1, $v1, $v0
/* 11FABC 8002DCBC 24020001 */  addiu      $v0, $zero, 1
/* 11FAC0 8002DCC0 10620005 */  beq        $v1, $v0, .L8002DCD8
/* 11FAC4 8002DCC4 24020003 */   addiu     $v0, $zero, 3
/* 11FAC8 8002DCC8 10620012 */  beq        $v1, $v0, .L8002DD14
/* 11FACC 8002DCCC 00000000 */   nop
/* 11FAD0 8002DCD0 0800BB19 */  j          .L8002EC64
/* 11FAD4 8002DCD4 00000000 */   nop
.L8002DCD8:
/* 11FAD8 8002DCD8 0C026DD5 */  jal        func_8009B754
/* 11FADC 8002DCDC 2404000E */   addiu     $a0, $zero, 0xe
/* 11FAE0 8002DCE0 00002021 */  addu       $a0, $zero, $zero
/* 11FAE4 8002DCE4 24050100 */  addiu      $a1, $zero, 0x100
/* 11FAE8 8002DCE8 24060003 */  addiu      $a2, $zero, 3
.L8002DCEC:
/* 11FAEC 8002DCEC 0C026B15 */  jal        func_8009AC54
/* 11FAF0 8002DCF0 00000000 */   nop
.L8002DCF4:
/* 11FAF4 8002DCF4 3C048002 */  lui        $a0, %hi(func_80026540_118340)
/* 11FAF8 8002DCF8 24846540 */  addiu      $a0, $a0, %lo(func_80026540_118340)
/* 11FAFC 8002DCFC 00002821 */  addu       $a1, $zero, $zero
/* 11FB00 8002DD00 2406012C */  addiu      $a2, $zero, 0x12c
/* 11FB04 8002DD04 0C025D06 */  jal        func_80097418
/* 11FB08 8002DD08 24070001 */   addiu     $a3, $zero, 1
/* 11FB0C 8002DD0C 0800BB19 */  j          .L8002EC64
/* 11FB10 8002DD10 00000000 */   nop
.L8002DD14:
/* 11FB14 8002DD14 0C026DD5 */  jal        func_8009B754
/* 11FB18 8002DD18 2404000E */   addiu     $a0, $zero, 0xe
/* 11FB1C 8002DD1C 00002021 */  addu       $a0, $zero, $zero
/* 11FB20 8002DD20 24050100 */  addiu      $a1, $zero, 0x100
/* 11FB24 8002DD24 0800BB17 */  j          .L8002EC5C
/* 11FB28 8002DD28 24060003 */   addiu     $a2, $zero, 3
/* 11FB2C 8002DD2C 8E020038 */  lw         $v0, 0x38($s0)
/* 11FB30 8002DD30 3C040004 */  lui        $a0, 4
/* 11FB34 8002DD34 84430022 */  lh         $v1, 0x22($v0)
/* 11FB38 8002DD38 8442001E */  lh         $v0, 0x1e($v0)
/* 11FB3C 8002DD3C 34840005 */  ori        $a0, $a0, 5
/* 11FB40 8002DD40 00031C00 */  sll        $v1, $v1, 0x10
/* 11FB44 8002DD44 00431821 */  addu       $v1, $v0, $v1
/* 11FB48 8002DD48 10640249 */  beq        $v1, $a0, .L8002E670
/* 11FB4C 8002DD4C 0083102A */   slt       $v0, $a0, $v1
/* 11FB50 8002DD50 14400012 */  bnez       $v0, .L8002DD9C
/* 11FB54 8002DD54 3C020008 */   lui       $v0, 8
/* 11FB58 8002DD58 24020004 */  addiu      $v0, $zero, 4
/* 11FB5C 8002DD5C 10620030 */  beq        $v1, $v0, .L8002DE20
/* 11FB60 8002DD60 28620005 */   slti      $v0, $v1, 5
/* 11FB64 8002DD64 10400005 */  beqz       $v0, .L8002DD7C
/* 11FB68 8002DD68 24020002 */   addiu     $v0, $zero, 2
/* 11FB6C 8002DD6C 1062001E */  beq        $v1, $v0, .L8002DDE8
/* 11FB70 8002DD70 00000000 */   nop
/* 11FB74 8002DD74 0800BB19 */  j          .L8002EC64
/* 11FB78 8002DD78 00000000 */   nop
.L8002DD7C:
/* 11FB7C 8002DD7C 24020005 */  addiu      $v0, $zero, 5
/* 11FB80 8002DD80 10620043 */  beq        $v1, $v0, .L8002DE90
/* 11FB84 8002DD84 3C020004 */   lui       $v0, 4
/* 11FB88 8002DD88 34420004 */  ori        $v0, $v0, 4
/* 11FB8C 8002DD8C 10620034 */  beq        $v1, $v0, .L8002DE60
/* 11FB90 8002DD90 00000000 */   nop
/* 11FB94 8002DD94 0800BB19 */  j          .L8002EC64
/* 11FB98 8002DD98 00000000 */   nop
.L8002DD9C:
/* 11FB9C 8002DD9C 34420005 */  ori        $v0, $v0, 5
/* 11FBA0 8002DDA0 10620233 */  beq        $v1, $v0, .L8002E670
/* 11FBA4 8002DDA4 0043102A */   slt       $v0, $v0, $v1
/* 11FBA8 8002DDA8 14400007 */  bnez       $v0, .L8002DDC8
/* 11FBAC 8002DDAC 3C02000C */   lui       $v0, 0xc
/* 11FBB0 8002DDB0 3C020008 */  lui        $v0, 8
/* 11FBB4 8002DDB4 34420004 */  ori        $v0, $v0, 4
/* 11FBB8 8002DDB8 1062002D */  beq        $v1, $v0, .L8002DE70
/* 11FBBC 8002DDBC 00000000 */   nop
/* 11FBC0 8002DDC0 0800BB19 */  j          .L8002EC64
/* 11FBC4 8002DDC4 00000000 */   nop
.L8002DDC8:
/* 11FBC8 8002DDC8 34420004 */  ori        $v0, $v0, 4
/* 11FBCC 8002DDCC 1062002C */  beq        $v1, $v0, .L8002DE80
/* 11FBD0 8002DDD0 3C02000C */   lui       $v0, 0xc
/* 11FBD4 8002DDD4 34420005 */  ori        $v0, $v0, 5
/* 11FBD8 8002DDD8 10620226 */  beq        $v1, $v0, .L8002E674
/* 11FBDC 8002DDDC 02002021 */   addu      $a0, $s0, $zero
/* 11FBE0 8002DDE0 0800BB19 */  j          .L8002EC64
/* 11FBE4 8002DDE4 00000000 */   nop
.L8002DDE8:
/* 11FBE8 8002DDE8 0C026DD5 */  jal        func_8009B754
/* 11FBEC 8002DDEC 24040022 */   addiu     $a0, $zero, 0x22
/* 11FBF0 8002DDF0 00002021 */  addu       $a0, $zero, $zero
/* 11FBF4 8002DDF4 24050100 */  addiu      $a1, $zero, 0x100
/* 11FBF8 8002DDF8 0C026B15 */  jal        func_8009AC54
/* 11FBFC 8002DDFC 24060003 */   addiu     $a2, $zero, 3
/* 11FC00 8002DE00 3C048002 */  lui        $a0, %hi(func_80026540_118340)
/* 11FC04 8002DE04 24846540 */  addiu      $a0, $a0, %lo(func_80026540_118340)
/* 11FC08 8002DE08 00002821 */  addu       $a1, $zero, $zero
/* 11FC0C 8002DE0C 2406012C */  addiu      $a2, $zero, 0x12c
/* 11FC10 8002DE10 0C025D06 */  jal        func_80097418
/* 11FC14 8002DE14 24070001 */   addiu     $a3, $zero, 1
/* 11FC18 8002DE18 0800B99D */  j          .L8002E674
/* 11FC1C 8002DE1C 02002021 */   addu      $a0, $s0, $zero
.L8002DE20:
/* 11FC20 8002DE20 0C026DD5 */  jal        func_8009B754
/* 11FC24 8002DE24 24040022 */   addiu     $a0, $zero, 0x22
/* 11FC28 8002DE28 00002021 */  addu       $a0, $zero, $zero
/* 11FC2C 8002DE2C 24050100 */  addiu      $a1, $zero, 0x100
/* 11FC30 8002DE30 0C026B15 */  jal        func_8009AC54
/* 11FC34 8002DE34 24060003 */   addiu     $a2, $zero, 3
/* 11FC38 8002DE38 3C048002 */  lui        $a0, %hi(func_80026540_118340)
/* 11FC3C 8002DE3C 24846540 */  addiu      $a0, $a0, %lo(func_80026540_118340)
/* 11FC40 8002DE40 00002821 */  addu       $a1, $zero, $zero
/* 11FC44 8002DE44 2406012C */  addiu      $a2, $zero, 0x12c
/* 11FC48 8002DE48 0C025D06 */  jal        func_80097418
/* 11FC4C 8002DE4C 24070001 */   addiu     $a3, $zero, 1
/* 11FC50 8002DE50 3C058006 */  lui        $a1, %hi(D_8005AAE0)
/* 11FC54 8002DE54 24A5AAE0 */  addiu      $a1, $a1, %lo(D_8005AAE0)
/* 11FC58 8002DE58 0800B99F */  j          .L8002E67C
/* 11FC5C 8002DE5C 02002021 */   addu      $a0, $s0, $zero
.L8002DE60:
/* 11FC60 8002DE60 3C058006 */  lui        $a1, %hi(D_8005AAE0)
/* 11FC64 8002DE64 24A5AAE0 */  addiu      $a1, $a1, %lo(D_8005AAE0)
/* 11FC68 8002DE68 0800B99F */  j          .L8002E67C
/* 11FC6C 8002DE6C 02002021 */   addu      $a0, $s0, $zero
.L8002DE70:
/* 11FC70 8002DE70 3C058006 */  lui        $a1, %hi(D_8005AAE8)
/* 11FC74 8002DE74 24A5AAE8 */  addiu      $a1, $a1, %lo(D_8005AAE8)
/* 11FC78 8002DE78 0800B99F */  j          .L8002E67C
/* 11FC7C 8002DE7C 02002021 */   addu      $a0, $s0, $zero
.L8002DE80:
/* 11FC80 8002DE80 3C058006 */  lui        $a1, %hi(D_8005AAE8)
/* 11FC84 8002DE84 24A5AAE8 */  addiu      $a1, $a1, %lo(D_8005AAE8)
/* 11FC88 8002DE88 0800B99F */  j          .L8002E67C
/* 11FC8C 8002DE8C 02002021 */   addu      $a0, $s0, $zero
.L8002DE90:
/* 11FC90 8002DE90 3C058006 */  lui        $a1, %hi(D_8005AAE8)
/* 11FC94 8002DE94 24A5AAE8 */  addiu      $a1, $a1, %lo(D_8005AAE8)
/* 11FC98 8002DE98 0800B99F */  j          .L8002E67C
/* 11FC9C 8002DE9C 02002021 */   addu      $a0, $s0, $zero
/* 11FCA0 8002DEA0 8E030038 */  lw         $v1, 0x38($s0)
/* 11FCA4 8002DEA4 84620022 */  lh         $v0, 0x22($v1)
/* 11FCA8 8002DEA8 8463001E */  lh         $v1, 0x1e($v1)
/* 11FCAC 8002DEAC 00021400 */  sll        $v0, $v0, 0x10
/* 11FCB0 8002DEB0 00621821 */  addu       $v1, $v1, $v0
/* 11FCB4 8002DEB4 24020003 */  addiu      $v0, $zero, 3
/* 11FCB8 8002DEB8 10620005 */  beq        $v1, $v0, .L8002DED0
/* 11FCBC 8002DEBC 24020007 */   addiu     $v0, $zero, 7
/* 11FCC0 8002DEC0 10620011 */  beq        $v1, $v0, .L8002DF08
/* 11FCC4 8002DEC4 00000000 */   nop
/* 11FCC8 8002DEC8 0800BB19 */  j          .L8002EC64
/* 11FCCC 8002DECC 00000000 */   nop
.L8002DED0:
/* 11FCD0 8002DED0 0C026DD5 */  jal        func_8009B754
/* 11FCD4 8002DED4 24040022 */   addiu     $a0, $zero, 0x22
/* 11FCD8 8002DED8 00002021 */  addu       $a0, $zero, $zero
/* 11FCDC 8002DEDC 24050100 */  addiu      $a1, $zero, 0x100
/* 11FCE0 8002DEE0 0C026B15 */  jal        func_8009AC54
/* 11FCE4 8002DEE4 24060003 */   addiu     $a2, $zero, 3
/* 11FCE8 8002DEE8 3C048002 */  lui        $a0, %hi(func_80026540_118340)
/* 11FCEC 8002DEEC 24846540 */  addiu      $a0, $a0, %lo(func_80026540_118340)
/* 11FCF0 8002DEF0 00002821 */  addu       $a1, $zero, $zero
/* 11FCF4 8002DEF4 2406012C */  addiu      $a2, $zero, 0x12c
/* 11FCF8 8002DEF8 0C025D06 */  jal        func_80097418
/* 11FCFC 8002DEFC 24070001 */   addiu     $a3, $zero, 1
/* 11FD00 8002DF00 0800B99D */  j          .L8002E674
/* 11FD04 8002DF04 02002021 */   addu      $a0, $s0, $zero
.L8002DF08:
/* 11FD08 8002DF08 0C026DD5 */  jal        func_8009B754
/* 11FD0C 8002DF0C 24040022 */   addiu     $a0, $zero, 0x22
/* 11FD10 8002DF10 00002021 */  addu       $a0, $zero, $zero
/* 11FD14 8002DF14 24050100 */  addiu      $a1, $zero, 0x100
/* 11FD18 8002DF18 0C026B15 */  jal        func_8009AC54
/* 11FD1C 8002DF1C 24060003 */   addiu     $a2, $zero, 3
/* 11FD20 8002DF20 3C048002 */  lui        $a0, %hi(func_80026540_118340)
/* 11FD24 8002DF24 24846540 */  addiu      $a0, $a0, %lo(func_80026540_118340)
/* 11FD28 8002DF28 00002821 */  addu       $a1, $zero, $zero
/* 11FD2C 8002DF2C 2406012C */  addiu      $a2, $zero, 0x12c
/* 11FD30 8002DF30 0C025D06 */  jal        func_80097418
/* 11FD34 8002DF34 24070001 */   addiu     $a3, $zero, 1
/* 11FD38 8002DF38 3C058006 */  lui        $a1, %hi(D_8005AAF0)
/* 11FD3C 8002DF3C 24A5AAF0 */  addiu      $a1, $a1, %lo(D_8005AAF0)
/* 11FD40 8002DF40 0800B99F */  j          .L8002E67C
/* 11FD44 8002DF44 02002021 */   addu      $a0, $s0, $zero
/* 11FD48 8002DF48 8E030038 */  lw         $v1, 0x38($s0)
/* 11FD4C 8002DF4C 84620022 */  lh         $v0, 0x22($v1)
/* 11FD50 8002DF50 8463001E */  lh         $v1, 0x1e($v1)
/* 11FD54 8002DF54 00021400 */  sll        $v0, $v0, 0x10
/* 11FD58 8002DF58 00621821 */  addu       $v1, $v1, $v0
/* 11FD5C 8002DF5C 24020002 */  addiu      $v0, $zero, 2
/* 11FD60 8002DF60 14620340 */  bne        $v1, $v0, .L8002EC64
/* 11FD64 8002DF64 00000000 */   nop
/* 11FD68 8002DF68 0C026DD5 */  jal        func_8009B754
/* 11FD6C 8002DF6C 24040029 */   addiu     $a0, $zero, 0x29
/* 11FD70 8002DF70 0800BB19 */  j          .L8002EC64
/* 11FD74 8002DF74 00000000 */   nop
/* 11FD78 8002DF78 8E030038 */  lw         $v1, 0x38($s0)
/* 11FD7C 8002DF7C 3C040005 */  lui        $a0, 5
/* 11FD80 8002DF80 84620022 */  lh         $v0, 0x22($v1)
/* 11FD84 8002DF84 8463001E */  lh         $v1, 0x1e($v1)
/* 11FD88 8002DF88 34840001 */  ori        $a0, $a0, 1
/* 11FD8C 8002DF8C 00021400 */  sll        $v0, $v0, 0x10
/* 11FD90 8002DF90 00621821 */  addu       $v1, $v1, $v0
/* 11FD94 8002DF94 14640333 */  bne        $v1, $a0, .L8002EC64
/* 11FD98 8002DF98 00000000 */   nop
/* 11FD9C 8002DF9C 0C026DD5 */  jal        func_8009B754
/* 11FDA0 8002DFA0 24040012 */   addiu     $a0, $zero, 0x12
/* 11FDA4 8002DFA4 0800BB19 */  j          .L8002EC64
/* 11FDA8 8002DFA8 00000000 */   nop
/* 11FDAC 8002DFAC 8E030038 */  lw         $v1, 0x38($s0)
/* 11FDB0 8002DFB0 84620022 */  lh         $v0, 0x22($v1)
/* 11FDB4 8002DFB4 8463001E */  lh         $v1, 0x1e($v1)
/* 11FDB8 8002DFB8 00021400 */  sll        $v0, $v0, 0x10
/* 11FDBC 8002DFBC 00621821 */  addu       $v1, $v1, $v0
/* 11FDC0 8002DFC0 24020001 */  addiu      $v0, $zero, 1
/* 11FDC4 8002DFC4 10620003 */  beq        $v1, $v0, .L8002DFD4
/* 11FDC8 8002DFC8 24020004 */   addiu     $v0, $zero, 4
/* 11FDCC 8002DFCC 14620325 */  bne        $v1, $v0, .L8002EC64
/* 11FDD0 8002DFD0 00000000 */   nop
.L8002DFD4:
/* 11FDD4 8002DFD4 0C026DD5 */  jal        func_8009B754
/* 11FDD8 8002DFD8 24040022 */   addiu     $a0, $zero, 0x22
/* 11FDDC 8002DFDC 0800BB19 */  j          .L8002EC64
/* 11FDE0 8002DFE0 00000000 */   nop
/* 11FDE4 8002DFE4 8E030038 */  lw         $v1, 0x38($s0)
/* 11FDE8 8002DFE8 84620022 */  lh         $v0, 0x22($v1)
/* 11FDEC 8002DFEC 8463001E */  lh         $v1, 0x1e($v1)
/* 11FDF0 8002DFF0 00021400 */  sll        $v0, $v0, 0x10
/* 11FDF4 8002DFF4 00621821 */  addu       $v1, $v1, $v0
/* 11FDF8 8002DFF8 24020004 */  addiu      $v0, $zero, 4
/* 11FDFC 8002DFFC 14620319 */  bne        $v1, $v0, .L8002EC64
/* 11FE00 8002E000 24040007 */   addiu     $a0, $zero, 7
/* 11FE04 8002E004 0800B836 */  j          .L8002E0D8
/* 11FE08 8002E008 00000000 */   nop
/* 11FE0C 8002E00C 8E030038 */  lw         $v1, 0x38($s0)
/* 11FE10 8002E010 84620022 */  lh         $v0, 0x22($v1)
/* 11FE14 8002E014 8463001E */  lh         $v1, 0x1e($v1)
/* 11FE18 8002E018 00021400 */  sll        $v0, $v0, 0x10
/* 11FE1C 8002E01C 00621821 */  addu       $v1, $v1, $v0
/* 11FE20 8002E020 24020009 */  addiu      $v0, $zero, 9
/* 11FE24 8002E024 10620020 */  beq        $v1, $v0, .L8002E0A8
/* 11FE28 8002E028 2862000A */   slti      $v0, $v1, 0xa
/* 11FE2C 8002E02C 10400005 */  beqz       $v0, .L8002E044
/* 11FE30 8002E030 24020004 */   addiu     $v0, $zero, 4
/* 11FE34 8002E034 10620008 */  beq        $v1, $v0, .L8002E058
/* 11FE38 8002E038 00000000 */   nop
/* 11FE3C 8002E03C 0800BB19 */  j          .L8002EC64
/* 11FE40 8002E040 00000000 */   nop
.L8002E044:
/* 11FE44 8002E044 2402000C */  addiu      $v0, $zero, 0xc
/* 11FE48 8002E048 10620023 */  beq        $v1, $v0, .L8002E0D8
/* 11FE4C 8002E04C 24040009 */   addiu     $a0, $zero, 9
/* 11FE50 8002E050 0800BB19 */  j          .L8002EC64
/* 11FE54 8002E054 00000000 */   nop
.L8002E058:
/* 11FE58 8002E058 0C026DD5 */  jal        func_8009B754
/* 11FE5C 8002E05C 24040001 */   addiu     $a0, $zero, 1
/* 11FE60 8002E060 960200F2 */  lhu        $v0, 0xf2($s0)
/* 11FE64 8002E064 00021040 */  sll        $v0, $v0, 1
/* 11FE68 8002E068 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 11FE6C 8002E06C 00220821 */  addu       $at, $at, $v0
/* 11FE70 8002E070 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 11FE74 8002E074 14400006 */  bnez       $v0, .L8002E090
/* 11FE78 8002E078 02002021 */   addu      $a0, $s0, $zero
/* 11FE7C 8002E07C 00002021 */  addu       $a0, $zero, $zero
/* 11FE80 8002E080 24050100 */  addiu      $a1, $zero, 0x100
/* 11FE84 8002E084 0C026B15 */  jal        func_8009AC54
/* 11FE88 8002E088 24060003 */   addiu     $a2, $zero, 3
/* 11FE8C 8002E08C 02002021 */  addu       $a0, $s0, $zero
.L8002E090:
/* 11FE90 8002E090 3C058006 */  lui        $a1, %hi(D_8005AAF8)
/* 11FE94 8002E094 24A5AAF8 */  addiu      $a1, $a1, %lo(D_8005AAF8)
/* 11FE98 8002E098 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 11FE9C 8002E09C 24060001 */   addiu     $a2, $zero, 1
/* 11FEA0 8002E0A0 0800BB19 */  j          .L8002EC64
/* 11FEA4 8002E0A4 00000000 */   nop
.L8002E0A8:
/* 11FEA8 8002E0A8 0C026DD5 */  jal        func_8009B754
/* 11FEAC 8002E0AC 2404000E */   addiu     $a0, $zero, 0xe
/* 11FEB0 8002E0B0 960200F2 */  lhu        $v0, 0xf2($s0)
/* 11FEB4 8002E0B4 00021040 */  sll        $v0, $v0, 1
/* 11FEB8 8002E0B8 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 11FEBC 8002E0BC 00220821 */  addu       $at, $at, $v0
/* 11FEC0 8002E0C0 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 11FEC4 8002E0C4 144002E7 */  bnez       $v0, .L8002EC64
/* 11FEC8 8002E0C8 00002021 */   addu      $a0, $zero, $zero
/* 11FECC 8002E0CC 24050100 */  addiu      $a1, $zero, 0x100
/* 11FED0 8002E0D0 0800BB17 */  j          .L8002EC5C
/* 11FED4 8002E0D4 24060003 */   addiu     $a2, $zero, 3
.L8002E0D8:
/* 11FED8 8002E0D8 0C026DD5 */  jal        func_8009B754
/* 11FEDC 8002E0DC 00000000 */   nop
/* 11FEE0 8002E0E0 960200F2 */  lhu        $v0, 0xf2($s0)
/* 11FEE4 8002E0E4 00021040 */  sll        $v0, $v0, 1
/* 11FEE8 8002E0E8 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 11FEEC 8002E0EC 00220821 */  addu       $at, $at, $v0
/* 11FEF0 8002E0F0 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 11FEF4 8002E0F4 14400006 */  bnez       $v0, .L8002E110
/* 11FEF8 8002E0F8 02002021 */   addu      $a0, $s0, $zero
/* 11FEFC 8002E0FC 00002021 */  addu       $a0, $zero, $zero
/* 11FF00 8002E100 24050100 */  addiu      $a1, $zero, 0x100
/* 11FF04 8002E104 0C026B15 */  jal        func_8009AC54
/* 11FF08 8002E108 24060003 */   addiu     $a2, $zero, 3
/* 11FF0C 8002E10C 02002021 */  addu       $a0, $s0, $zero
.L8002E110:
/* 11FF10 8002E110 3C058006 */  lui        $a1, %hi(D_8005AAF8)
/* 11FF14 8002E114 24A5AAF8 */  addiu      $a1, $a1, %lo(D_8005AAF8)
/* 11FF18 8002E118 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 11FF1C 8002E11C 24060001 */   addiu     $a2, $zero, 1
/* 11FF20 8002E120 960200F2 */  lhu        $v0, 0xf2($s0)
/* 11FF24 8002E124 00021040 */  sll        $v0, $v0, 1
/* 11FF28 8002E128 3C018006 */  lui        $at, %hi(D_8005AA94)
/* 11FF2C 8002E12C 00220821 */  addu       $at, $at, $v0
/* 11FF30 8002E130 9422AA94 */  lhu        $v0, %lo(D_8005AA94)($at)
/* 11FF34 8002E134 00021080 */  sll        $v0, $v0, 2
/* 11FF38 8002E138 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 11FF3C 8002E13C 00822021 */  addu       $a0, $a0, $v0
/* 11FF40 8002E140 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 11FF44 8002E144 0C0E477B */  jal        func_80391DEC
/* 11FF48 8002E148 2405FFEC */   addiu     $a1, $zero, -0x14
/* 11FF4C 8002E14C 0800BB19 */  j          .L8002EC64
/* 11FF50 8002E150 00000000 */   nop
/* 11FF54 8002E154 8E030038 */  lw         $v1, 0x38($s0)
/* 11FF58 8002E158 84620022 */  lh         $v0, 0x22($v1)
/* 11FF5C 8002E15C 8463001E */  lh         $v1, 0x1e($v1)
/* 11FF60 8002E160 00021400 */  sll        $v0, $v0, 0x10
/* 11FF64 8002E164 00621821 */  addu       $v1, $v1, $v0
/* 11FF68 8002E168 2463FFFD */  addiu      $v1, $v1, -3
/* 11FF6C 8002E16C 2C62001D */  sltiu      $v0, $v1, 0x1d
/* 11FF70 8002E170 104002BC */  beqz       $v0, .L8002EC64
/* 11FF74 8002E174 00031080 */   sll       $v0, $v1, 2
/* 11FF78 8002E178 3C018006 */  lui        $at, %hi(D_8005AFE0)
/* 11FF7C 8002E17C 00220821 */  addu       $at, $at, $v0
/* 11FF80 8002E180 8C22AFE0 */  lw         $v0, %lo(D_8005AFE0)($at)
/* 11FF84 8002E184 00400008 */  jr         $v0
/* 11FF88 8002E188 00000000 */   nop
/* 11FF8C 8002E18C 0C026DD5 */  jal        func_8009B754
/* 11FF90 8002E190 2404000E */   addiu     $a0, $zero, 0xe
/* 11FF94 8002E194 960200F2 */  lhu        $v0, 0xf2($s0)
/* 11FF98 8002E198 00021040 */  sll        $v0, $v0, 1
/* 11FF9C 8002E19C 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 11FFA0 8002E1A0 00220821 */  addu       $at, $at, $v0
/* 11FFA4 8002E1A4 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 11FFA8 8002E1A8 144002AE */  bnez       $v0, .L8002EC64
/* 11FFAC 8002E1AC 00002021 */   addu      $a0, $zero, $zero
/* 11FFB0 8002E1B0 24050100 */  addiu      $a1, $zero, 0x100
/* 11FFB4 8002E1B4 0800BB17 */  j          .L8002EC5C
/* 11FFB8 8002E1B8 24060003 */   addiu     $a2, $zero, 3
/* 11FFBC 8002E1BC 0C026DD5 */  jal        func_8009B754
/* 11FFC0 8002E1C0 24040001 */   addiu     $a0, $zero, 1
/* 11FFC4 8002E1C4 960200F2 */  lhu        $v0, 0xf2($s0)
/* 11FFC8 8002E1C8 00021040 */  sll        $v0, $v0, 1
/* 11FFCC 8002E1CC 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 11FFD0 8002E1D0 00220821 */  addu       $at, $at, $v0
/* 11FFD4 8002E1D4 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 11FFD8 8002E1D8 144002A2 */  bnez       $v0, .L8002EC64
/* 11FFDC 8002E1DC 00002021 */   addu      $a0, $zero, $zero
/* 11FFE0 8002E1E0 24050100 */  addiu      $a1, $zero, 0x100
/* 11FFE4 8002E1E4 0800BB17 */  j          .L8002EC5C
/* 11FFE8 8002E1E8 24060003 */   addiu     $a2, $zero, 3
/* 11FFEC 8002E1EC 02002021 */  addu       $a0, $s0, $zero
/* 11FFF0 8002E1F0 0C00B481 */  jal        func_8002D204_11F004
/* 11FFF4 8002E1F4 00002821 */   addu      $a1, $zero, $zero
/* 11FFF8 8002E1F8 0C026DD5 */  jal        func_8009B754
/* 11FFFC 8002E1FC 24040009 */   addiu     $a0, $zero, 9
/* 120000 8002E200 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120004 8002E204 00021040 */  sll        $v0, $v0, 1
/* 120008 8002E208 3C018006 */  lui        $at, %hi(D_8005AA94)
/* 12000C 8002E20C 00220821 */  addu       $at, $at, $v0
/* 120010 8002E210 9422AA94 */  lhu        $v0, %lo(D_8005AA94)($at)
/* 120014 8002E214 0800BAC0 */  j          .L8002EB00
/* 120018 8002E218 00021080 */   sll       $v0, $v0, 2
/* 12001C 8002E21C 0C026DD5 */  jal        func_8009B754
/* 120020 8002E220 24040001 */   addiu     $a0, $zero, 1
/* 120024 8002E224 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120028 8002E228 00021040 */  sll        $v0, $v0, 1
/* 12002C 8002E22C 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120030 8002E230 00220821 */  addu       $at, $at, $v0
/* 120034 8002E234 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120038 8002E238 14400006 */  bnez       $v0, .L8002E254
/* 12003C 8002E23C 02002021 */   addu      $a0, $s0, $zero
/* 120040 8002E240 00002021 */  addu       $a0, $zero, $zero
/* 120044 8002E244 24050100 */  addiu      $a1, $zero, 0x100
/* 120048 8002E248 0C026B15 */  jal        func_8009AC54
/* 12004C 8002E24C 2406000A */   addiu     $a2, $zero, 0xa
/* 120050 8002E250 02002021 */  addu       $a0, $s0, $zero
.L8002E254:
/* 120054 8002E254 3C058006 */  lui        $a1, %hi(D_8005AAF8)
/* 120058 8002E258 24A5AAF8 */  addiu      $a1, $a1, %lo(D_8005AAF8)
/* 12005C 8002E25C 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 120060 8002E260 24060001 */   addiu     $a2, $zero, 1
/* 120064 8002E264 0800B989 */  j          .L8002E624
/* 120068 8002E268 00000000 */   nop
/* 12006C 8002E26C 8E030038 */  lw         $v1, 0x38($s0)
/* 120070 8002E270 84620022 */  lh         $v0, 0x22($v1)
/* 120074 8002E274 8463001E */  lh         $v1, 0x1e($v1)
/* 120078 8002E278 00021400 */  sll        $v0, $v0, 0x10
/* 12007C 8002E27C 00621821 */  addu       $v1, $v1, $v0
/* 120080 8002E280 24020017 */  addiu      $v0, $zero, 0x17
/* 120084 8002E284 1062026C */  beq        $v1, $v0, .L8002EC38
/* 120088 8002E288 28620018 */   slti      $v0, $v1, 0x18
/* 12008C 8002E28C 10400005 */  beqz       $v0, .L8002E2A4
/* 120090 8002E290 24020007 */   addiu     $v0, $zero, 7
/* 120094 8002E294 10620008 */  beq        $v1, $v0, .L8002E2B8
/* 120098 8002E298 00000000 */   nop
/* 12009C 8002E29C 0800BB19 */  j          .L8002EC64
/* 1200A0 8002E2A0 00000000 */   nop
.L8002E2A4:
/* 1200A4 8002E2A4 2402001F */  addiu      $v0, $zero, 0x1f
/* 1200A8 8002E2A8 10620263 */  beq        $v1, $v0, .L8002EC38
/* 1200AC 8002E2AC 00000000 */   nop
/* 1200B0 8002E2B0 0800BB19 */  j          .L8002EC64
/* 1200B4 8002E2B4 00000000 */   nop
.L8002E2B8:
/* 1200B8 8002E2B8 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1200BC 8002E2BC 00021040 */  sll        $v0, $v0, 1
/* 1200C0 8002E2C0 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 1200C4 8002E2C4 00220821 */  addu       $at, $at, $v0
/* 1200C8 8002E2C8 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 1200CC 8002E2CC 14400265 */  bnez       $v0, .L8002EC64
/* 1200D0 8002E2D0 00002021 */   addu      $a0, $zero, $zero
/* 1200D4 8002E2D4 24050100 */  addiu      $a1, $zero, 0x100
/* 1200D8 8002E2D8 0800BB17 */  j          .L8002EC5C
/* 1200DC 8002E2DC 24060003 */   addiu     $a2, $zero, 3
/* 1200E0 8002E2E0 8E030038 */  lw         $v1, 0x38($s0)
/* 1200E4 8002E2E4 84620022 */  lh         $v0, 0x22($v1)
/* 1200E8 8002E2E8 8463001E */  lh         $v1, 0x1e($v1)
/* 1200EC 8002E2EC 00021400 */  sll        $v0, $v0, 0x10
/* 1200F0 8002E2F0 00621821 */  addu       $v1, $v1, $v0
/* 1200F4 8002E2F4 0800BB0A */  j          .L8002EC28
/* 1200F8 8002E2F8 24020003 */   addiu     $v0, $zero, 3
/* 1200FC 8002E2FC 8E030038 */  lw         $v1, 0x38($s0)
/* 120100 8002E300 84620022 */  lh         $v0, 0x22($v1)
/* 120104 8002E304 8463001E */  lh         $v1, 0x1e($v1)
/* 120108 8002E308 00021400 */  sll        $v0, $v0, 0x10
/* 12010C 8002E30C 00621821 */  addu       $v1, $v1, $v0
/* 120110 8002E310 24020005 */  addiu      $v0, $zero, 5
/* 120114 8002E314 10620010 */  beq        $v1, $v0, .L8002E358
/* 120118 8002E318 28620006 */   slti      $v0, $v1, 6
/* 12011C 8002E31C 50400005 */  beql       $v0, $zero, .L8002E334
/* 120120 8002E320 24020011 */   addiu     $v0, $zero, 0x11
/* 120124 8002E324 10600008 */  beqz       $v1, .L8002E348
/* 120128 8002E328 02002021 */   addu      $a0, $s0, $zero
/* 12012C 8002E32C 0800BB19 */  j          .L8002EC64
/* 120130 8002E330 00000000 */   nop
.L8002E334:
/* 120134 8002E334 10620017 */  beq        $v1, $v0, .L8002E394
/* 120138 8002E338 00000000 */   nop
/* 12013C 8002E33C 0800BB19 */  j          .L8002EC64
/* 120140 8002E340 00000000 */   nop
/* 120144 8002E344 02002021 */  addu       $a0, $s0, $zero
.L8002E348:
/* 120148 8002E348 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 12014C 8002E34C 24050008 */   addiu     $a1, $zero, 8
/* 120150 8002E350 0800BB19 */  j          .L8002EC64
/* 120154 8002E354 00000000 */   nop
.L8002E358:
/* 120158 8002E358 02002021 */  addu       $a0, $s0, $zero
/* 12015C 8002E35C 0C00B481 */  jal        func_8002D204_11F004
/* 120160 8002E360 00002821 */   addu      $a1, $zero, $zero
/* 120164 8002E364 0C026DD5 */  jal        func_8009B754
/* 120168 8002E368 24040009 */   addiu     $a0, $zero, 9
/* 12016C 8002E36C 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120170 8002E370 00021040 */  sll        $v0, $v0, 1
/* 120174 8002E374 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120178 8002E378 00220821 */  addu       $at, $at, $v0
/* 12017C 8002E37C 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120180 8002E380 14400238 */  bnez       $v0, .L8002EC64
/* 120184 8002E384 00002021 */   addu      $a0, $zero, $zero
/* 120188 8002E388 24050100 */  addiu      $a1, $zero, 0x100
/* 12018C 8002E38C 0800BB17 */  j          .L8002EC5C
/* 120190 8002E390 24060003 */   addiu     $a2, $zero, 3
.L8002E394:
/* 120194 8002E394 0C026DD5 */  jal        func_8009B754
/* 120198 8002E398 24040001 */   addiu     $a0, $zero, 1
/* 12019C 8002E39C 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1201A0 8002E3A0 00021040 */  sll        $v0, $v0, 1
/* 1201A4 8002E3A4 3C018006 */  lui        $at, %hi(D_8005AA94)
/* 1201A8 8002E3A8 00220821 */  addu       $at, $at, $v0
/* 1201AC 8002E3AC 9422AA94 */  lhu        $v0, %lo(D_8005AA94)($at)
/* 1201B0 8002E3B0 00021080 */  sll        $v0, $v0, 2
/* 1201B4 8002E3B4 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 1201B8 8002E3B8 00822021 */  addu       $a0, $a0, $v0
/* 1201BC 8002E3BC 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 1201C0 8002E3C0 0C0E477B */  jal        func_80391DEC
/* 1201C4 8002E3C4 2405FFEC */   addiu     $a1, $zero, -0x14
/* 1201C8 8002E3C8 0800BB0E */  j          .L8002EC38
/* 1201CC 8002E3CC 00000000 */   nop
/* 1201D0 8002E3D0 8E030038 */  lw         $v1, 0x38($s0)
/* 1201D4 8002E3D4 84620022 */  lh         $v0, 0x22($v1)
/* 1201D8 8002E3D8 8463001E */  lh         $v1, 0x1e($v1)
/* 1201DC 8002E3DC 00021400 */  sll        $v0, $v0, 0x10
/* 1201E0 8002E3E0 00621821 */  addu       $v1, $v1, $v0
/* 1201E4 8002E3E4 24020005 */  addiu      $v0, $zero, 5
/* 1201E8 8002E3E8 10620005 */  beq        $v1, $v0, .L8002E400
/* 1201EC 8002E3EC 24020011 */   addiu     $v0, $zero, 0x11
/* 1201F0 8002E3F0 10620211 */  beq        $v1, $v0, .L8002EC38
/* 1201F4 8002E3F4 00000000 */   nop
/* 1201F8 8002E3F8 0800BB19 */  j          .L8002EC64
/* 1201FC 8002E3FC 00000000 */   nop
.L8002E400:
/* 120200 8002E400 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120204 8002E404 00021040 */  sll        $v0, $v0, 1
/* 120208 8002E408 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 12020C 8002E40C 00220821 */  addu       $at, $at, $v0
/* 120210 8002E410 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120214 8002E414 14400213 */  bnez       $v0, .L8002EC64
/* 120218 8002E418 00002021 */   addu      $a0, $zero, $zero
/* 12021C 8002E41C 24050100 */  addiu      $a1, $zero, 0x100
/* 120220 8002E420 0800BB17 */  j          .L8002EC5C
/* 120224 8002E424 24060003 */   addiu     $a2, $zero, 3
/* 120228 8002E428 8E030038 */  lw         $v1, 0x38($s0)
/* 12022C 8002E42C 84620022 */  lh         $v0, 0x22($v1)
/* 120230 8002E430 8463001E */  lh         $v1, 0x1e($v1)
/* 120234 8002E434 00021400 */  sll        $v0, $v0, 0x10
/* 120238 8002E438 00621821 */  addu       $v1, $v1, $v0
/* 12023C 8002E43C 24020005 */  addiu      $v0, $zero, 5
/* 120240 8002E440 10620018 */  beq        $v1, $v0, .L8002E4A4
/* 120244 8002E444 28620006 */   slti      $v0, $v1, 6
/* 120248 8002E448 10400005 */  beqz       $v0, .L8002E460
/* 12024C 8002E44C 24020002 */   addiu     $v0, $zero, 2
/* 120250 8002E450 10620008 */  beq        $v1, $v0, .L8002E474
/* 120254 8002E454 00000000 */   nop
/* 120258 8002E458 0800BB19 */  j          .L8002EC64
/* 12025C 8002E45C 00000000 */   nop
.L8002E460:
/* 120260 8002E460 24020008 */  addiu      $v0, $zero, 8
/* 120264 8002E464 1062001B */  beq        $v1, $v0, .L8002E4D4
/* 120268 8002E468 00000000 */   nop
/* 12026C 8002E46C 0800BB19 */  j          .L8002EC64
/* 120270 8002E470 00000000 */   nop
.L8002E474:
/* 120274 8002E474 0C026DD5 */  jal        func_8009B754
/* 120278 8002E478 2404000E */   addiu     $a0, $zero, 0xe
/* 12027C 8002E47C 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120280 8002E480 00021040 */  sll        $v0, $v0, 1
/* 120284 8002E484 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120288 8002E488 00220821 */  addu       $at, $at, $v0
/* 12028C 8002E48C 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120290 8002E490 144001F4 */  bnez       $v0, .L8002EC64
/* 120294 8002E494 00002021 */   addu      $a0, $zero, $zero
/* 120298 8002E498 24050100 */  addiu      $a1, $zero, 0x100
/* 12029C 8002E49C 0800BB17 */  j          .L8002EC5C
/* 1202A0 8002E4A0 24060003 */   addiu     $a2, $zero, 3
.L8002E4A4:
/* 1202A4 8002E4A4 0C026DD5 */  jal        func_8009B754
/* 1202A8 8002E4A8 2404000E */   addiu     $a0, $zero, 0xe
/* 1202AC 8002E4AC 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1202B0 8002E4B0 00021040 */  sll        $v0, $v0, 1
/* 1202B4 8002E4B4 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 1202B8 8002E4B8 00220821 */  addu       $at, $at, $v0
/* 1202BC 8002E4BC 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 1202C0 8002E4C0 144001E8 */  bnez       $v0, .L8002EC64
/* 1202C4 8002E4C4 00002021 */   addu      $a0, $zero, $zero
/* 1202C8 8002E4C8 24050100 */  addiu      $a1, $zero, 0x100
/* 1202CC 8002E4CC 0800BB17 */  j          .L8002EC5C
/* 1202D0 8002E4D0 24060003 */   addiu     $a2, $zero, 3
.L8002E4D4:
/* 1202D4 8002E4D4 0C026DD5 */  jal        func_8009B754
/* 1202D8 8002E4D8 2404000D */   addiu     $a0, $zero, 0xd
/* 1202DC 8002E4DC 02002021 */  addu       $a0, $s0, $zero
/* 1202E0 8002E4E0 3C058006 */  lui        $a1, %hi(D_8005AAD8)
/* 1202E4 8002E4E4 24A5AAD8 */  addiu      $a1, $a1, %lo(D_8005AAD8)
/* 1202E8 8002E4E8 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 1202EC 8002E4EC 24060007 */   addiu     $a2, $zero, 7
/* 1202F0 8002E4F0 0800BB0E */  j          .L8002EC38
/* 1202F4 8002E4F4 00000000 */   nop
/* 1202F8 8002E4F8 8E030038 */  lw         $v1, 0x38($s0)
/* 1202FC 8002E4FC 84620022 */  lh         $v0, 0x22($v1)
/* 120300 8002E500 8463001E */  lh         $v1, 0x1e($v1)
/* 120304 8002E504 00021400 */  sll        $v0, $v0, 0x10
/* 120308 8002E508 00621821 */  addu       $v1, $v1, $v0
/* 12030C 8002E50C 24020003 */  addiu      $v0, $zero, 3
/* 120310 8002E510 10620018 */  beq        $v1, $v0, .L8002E574
/* 120314 8002E514 28620004 */   slti      $v0, $v1, 4
/* 120318 8002E518 10400005 */  beqz       $v0, .L8002E530
/* 12031C 8002E51C 24020001 */   addiu     $v0, $zero, 1
/* 120320 8002E520 10620008 */  beq        $v1, $v0, .L8002E544
/* 120324 8002E524 00000000 */   nop
/* 120328 8002E528 0800BB19 */  j          .L8002EC64
/* 12032C 8002E52C 00000000 */   nop
.L8002E530:
/* 120330 8002E530 24020006 */  addiu      $v0, $zero, 6
/* 120334 8002E534 1062001B */  beq        $v1, $v0, .L8002E5A4
/* 120338 8002E538 00000000 */   nop
/* 12033C 8002E53C 0800BB19 */  j          .L8002EC64
/* 120340 8002E540 00000000 */   nop
.L8002E544:
/* 120344 8002E544 0C026DD5 */  jal        func_8009B754
/* 120348 8002E548 2404000E */   addiu     $a0, $zero, 0xe
/* 12034C 8002E54C 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120350 8002E550 00021040 */  sll        $v0, $v0, 1
/* 120354 8002E554 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120358 8002E558 00220821 */  addu       $at, $at, $v0
/* 12035C 8002E55C 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120360 8002E560 144001C0 */  bnez       $v0, .L8002EC64
/* 120364 8002E564 00002021 */   addu      $a0, $zero, $zero
/* 120368 8002E568 24050100 */  addiu      $a1, $zero, 0x100
/* 12036C 8002E56C 0800BB17 */  j          .L8002EC5C
/* 120370 8002E570 24060003 */   addiu     $a2, $zero, 3
.L8002E574:
/* 120374 8002E574 0C026DD5 */  jal        func_8009B754
/* 120378 8002E578 2404000E */   addiu     $a0, $zero, 0xe
/* 12037C 8002E57C 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120380 8002E580 00021040 */  sll        $v0, $v0, 1
/* 120384 8002E584 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120388 8002E588 00220821 */  addu       $at, $at, $v0
/* 12038C 8002E58C 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120390 8002E590 144001B4 */  bnez       $v0, .L8002EC64
/* 120394 8002E594 00002021 */   addu      $a0, $zero, $zero
/* 120398 8002E598 24050100 */  addiu      $a1, $zero, 0x100
/* 12039C 8002E59C 0800BB17 */  j          .L8002EC5C
/* 1203A0 8002E5A0 24060003 */   addiu     $a2, $zero, 3
.L8002E5A4:
/* 1203A4 8002E5A4 0C026DD5 */  jal        func_8009B754
/* 1203A8 8002E5A8 2404000D */   addiu     $a0, $zero, 0xd
/* 1203AC 8002E5AC 02002021 */  addu       $a0, $s0, $zero
/* 1203B0 8002E5B0 3C058006 */  lui        $a1, %hi(D_8005AAD8)
/* 1203B4 8002E5B4 24A5AAD8 */  addiu      $a1, $a1, %lo(D_8005AAD8)
/* 1203B8 8002E5B8 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 1203BC 8002E5BC 24060007 */   addiu     $a2, $zero, 7
/* 1203C0 8002E5C0 0800BB0E */  j          .L8002EC38
/* 1203C4 8002E5C4 00000000 */   nop
/* 1203C8 8002E5C8 8E030038 */  lw         $v1, 0x38($s0)
/* 1203CC 8002E5CC 84620022 */  lh         $v0, 0x22($v1)
/* 1203D0 8002E5D0 8463001E */  lh         $v1, 0x1e($v1)
/* 1203D4 8002E5D4 00021400 */  sll        $v0, $v0, 0x10
/* 1203D8 8002E5D8 00621821 */  addu       $v1, $v1, $v0
/* 1203DC 8002E5DC 24020004 */  addiu      $v0, $zero, 4
/* 1203E0 8002E5E0 1062001D */  beq        $v1, $v0, .L8002E658
/* 1203E4 8002E5E4 28620005 */   slti      $v0, $v1, 5
/* 1203E8 8002E5E8 10400005 */  beqz       $v0, .L8002E600
/* 1203EC 8002E5EC 24020001 */   addiu     $v0, $zero, 1
/* 1203F0 8002E5F0 1062000A */  beq        $v1, $v0, .L8002E61C
/* 1203F4 8002E5F4 00000000 */   nop
/* 1203F8 8002E5F8 0800BB19 */  j          .L8002EC64
/* 1203FC 8002E5FC 00000000 */   nop
.L8002E600:
/* 120400 8002E600 24020006 */  addiu      $v0, $zero, 6
/* 120404 8002E604 10620014 */  beq        $v1, $v0, .L8002E658
/* 120408 8002E608 24020008 */   addiu     $v0, $zero, 8
/* 12040C 8002E60C 10620016 */  beq        $v1, $v0, .L8002E668
/* 120410 8002E610 00000000 */   nop
/* 120414 8002E614 0800BB19 */  j          .L8002EC64
/* 120418 8002E618 00000000 */   nop
.L8002E61C:
/* 12041C 8002E61C 0C026DD5 */  jal        func_8009B754
/* 120420 8002E620 24040001 */   addiu     $a0, $zero, 1
.L8002E624:
/* 120424 8002E624 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120428 8002E628 00021040 */  sll        $v0, $v0, 1
/* 12042C 8002E62C 3C018006 */  lui        $at, %hi(D_8005AA94)
/* 120430 8002E630 00220821 */  addu       $at, $at, $v0
/* 120434 8002E634 9422AA94 */  lhu        $v0, %lo(D_8005AA94)($at)
/* 120438 8002E638 00021080 */  sll        $v0, $v0, 2
/* 12043C 8002E63C 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 120440 8002E640 00822021 */  addu       $a0, $a0, $v0
/* 120444 8002E644 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 120448 8002E648 0C0E477B */  jal        func_80391DEC
/* 12044C 8002E64C 2405FFF6 */   addiu     $a1, $zero, -0xa
/* 120450 8002E650 0800BB19 */  j          .L8002EC64
/* 120454 8002E654 00000000 */   nop
.L8002E658:
/* 120458 8002E658 0C026DD5 */  jal        func_8009B754
/* 12045C 8002E65C 2404000E */   addiu     $a0, $zero, 0xe
/* 120460 8002E660 0800BB19 */  j          .L8002EC64
/* 120464 8002E664 00000000 */   nop
.L8002E668:
/* 120468 8002E668 0C026DD5 */  jal        func_8009B754
/* 12046C 8002E66C 2404000D */   addiu     $a0, $zero, 0xd
.L8002E670:
/* 120470 8002E670 02002021 */  addu       $a0, $s0, $zero
.L8002E674:
/* 120474 8002E674 3C058006 */  lui        $a1, %hi(D_8005AAD8)
/* 120478 8002E678 24A5AAD8 */  addiu      $a1, $a1, %lo(D_8005AAD8)
.L8002E67C:
/* 12047C 8002E67C 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 120480 8002E680 24060007 */   addiu     $a2, $zero, 7
/* 120484 8002E684 0800BB19 */  j          .L8002EC64
/* 120488 8002E688 00000000 */   nop
/* 12048C 8002E68C 8E030038 */  lw         $v1, 0x38($s0)
/* 120490 8002E690 84620022 */  lh         $v0, 0x22($v1)
/* 120494 8002E694 8463001E */  lh         $v1, 0x1e($v1)
/* 120498 8002E698 00021400 */  sll        $v0, $v0, 0x10
/* 12049C 8002E69C 00621821 */  addu       $v1, $v1, $v0
/* 1204A0 8002E6A0 24020004 */  addiu      $v0, $zero, 4
/* 1204A4 8002E6A4 10620005 */  beq        $v1, $v0, .L8002E6BC
/* 1204A8 8002E6A8 2402000A */   addiu     $v0, $zero, 0xa
/* 1204AC 8002E6AC 1062000F */  beq        $v1, $v0, .L8002E6EC
/* 1204B0 8002E6B0 00000000 */   nop
/* 1204B4 8002E6B4 0800BB19 */  j          .L8002EC64
/* 1204B8 8002E6B8 00000000 */   nop
.L8002E6BC:
/* 1204BC 8002E6BC 0C026DD5 */  jal        func_8009B754
/* 1204C0 8002E6C0 24040021 */   addiu     $a0, $zero, 0x21
/* 1204C4 8002E6C4 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1204C8 8002E6C8 00021040 */  sll        $v0, $v0, 1
/* 1204CC 8002E6CC 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 1204D0 8002E6D0 00220821 */  addu       $at, $at, $v0
/* 1204D4 8002E6D4 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 1204D8 8002E6D8 14400162 */  bnez       $v0, .L8002EC64
/* 1204DC 8002E6DC 00002021 */   addu      $a0, $zero, $zero
/* 1204E0 8002E6E0 24050100 */  addiu      $a1, $zero, 0x100
/* 1204E4 8002E6E4 0800BB17 */  j          .L8002EC5C
/* 1204E8 8002E6E8 24060003 */   addiu     $a2, $zero, 3
.L8002E6EC:
/* 1204EC 8002E6EC 0C026DD5 */  jal        func_8009B754
/* 1204F0 8002E6F0 24040021 */   addiu     $a0, $zero, 0x21
/* 1204F4 8002E6F4 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1204F8 8002E6F8 00021040 */  sll        $v0, $v0, 1
/* 1204FC 8002E6FC 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120500 8002E700 00220821 */  addu       $at, $at, $v0
/* 120504 8002E704 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120508 8002E708 14400156 */  bnez       $v0, .L8002EC64
/* 12050C 8002E70C 00002021 */   addu      $a0, $zero, $zero
/* 120510 8002E710 24050100 */  addiu      $a1, $zero, 0x100
/* 120514 8002E714 0800BB17 */  j          .L8002EC5C
/* 120518 8002E718 24060003 */   addiu     $a2, $zero, 3
/* 12051C 8002E71C 8E030038 */  lw         $v1, 0x38($s0)
/* 120520 8002E720 84620022 */  lh         $v0, 0x22($v1)
/* 120524 8002E724 8463001E */  lh         $v1, 0x1e($v1)
/* 120528 8002E728 00021400 */  sll        $v0, $v0, 0x10
/* 12052C 8002E72C 00621821 */  addu       $v1, $v1, $v0
/* 120530 8002E730 24020002 */  addiu      $v0, $zero, 2
/* 120534 8002E734 10620005 */  beq        $v1, $v0, .L8002E74C
/* 120538 8002E738 24020004 */   addiu     $v0, $zero, 4
/* 12053C 8002E73C 1062000F */  beq        $v1, $v0, .L8002E77C
/* 120540 8002E740 00000000 */   nop
/* 120544 8002E744 0800BB19 */  j          .L8002EC64
/* 120548 8002E748 00000000 */   nop
.L8002E74C:
/* 12054C 8002E74C 0C026DD5 */  jal        func_8009B754
/* 120550 8002E750 24040021 */   addiu     $a0, $zero, 0x21
/* 120554 8002E754 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120558 8002E758 00021040 */  sll        $v0, $v0, 1
/* 12055C 8002E75C 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120560 8002E760 00220821 */  addu       $at, $at, $v0
/* 120564 8002E764 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120568 8002E768 1440013E */  bnez       $v0, .L8002EC64
/* 12056C 8002E76C 00002021 */   addu      $a0, $zero, $zero
/* 120570 8002E770 24050100 */  addiu      $a1, $zero, 0x100
/* 120574 8002E774 0800BB17 */  j          .L8002EC5C
/* 120578 8002E778 24060003 */   addiu     $a2, $zero, 3
.L8002E77C:
/* 12057C 8002E77C 0C026DD5 */  jal        func_8009B754
/* 120580 8002E780 24040021 */   addiu     $a0, $zero, 0x21
/* 120584 8002E784 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120588 8002E788 00021040 */  sll        $v0, $v0, 1
/* 12058C 8002E78C 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120590 8002E790 00220821 */  addu       $at, $at, $v0
/* 120594 8002E794 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120598 8002E798 14400132 */  bnez       $v0, .L8002EC64
/* 12059C 8002E79C 00002021 */   addu      $a0, $zero, $zero
/* 1205A0 8002E7A0 24050100 */  addiu      $a1, $zero, 0x100
/* 1205A4 8002E7A4 0800BB17 */  j          .L8002EC5C
/* 1205A8 8002E7A8 24060003 */   addiu     $a2, $zero, 3
/* 1205AC 8002E7AC 8E030038 */  lw         $v1, 0x38($s0)
/* 1205B0 8002E7B0 84620022 */  lh         $v0, 0x22($v1)
/* 1205B4 8002E7B4 8463001E */  lh         $v1, 0x1e($v1)
/* 1205B8 8002E7B8 00021400 */  sll        $v0, $v0, 0x10
/* 1205BC 8002E7BC 00621821 */  addu       $v1, $v1, $v0
/* 1205C0 8002E7C0 24020005 */  addiu      $v0, $zero, 5
/* 1205C4 8002E7C4 10620006 */  beq        $v1, $v0, .L8002E7E0
/* 1205C8 8002E7C8 3C020003 */   lui       $v0, 3
/* 1205CC 8002E7CC 34420007 */  ori        $v0, $v0, 7
/* 1205D0 8002E7D0 1062000F */  beq        $v1, $v0, .L8002E810
/* 1205D4 8002E7D4 00000000 */   nop
/* 1205D8 8002E7D8 0800BB19 */  j          .L8002EC64
/* 1205DC 8002E7DC 00000000 */   nop
.L8002E7E0:
/* 1205E0 8002E7E0 0C026DD5 */  jal        func_8009B754
/* 1205E4 8002E7E4 24040021 */   addiu     $a0, $zero, 0x21
/* 1205E8 8002E7E8 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1205EC 8002E7EC 00021040 */  sll        $v0, $v0, 1
/* 1205F0 8002E7F0 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 1205F4 8002E7F4 00220821 */  addu       $at, $at, $v0
/* 1205F8 8002E7F8 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 1205FC 8002E7FC 14400119 */  bnez       $v0, .L8002EC64
/* 120600 8002E800 00002021 */   addu      $a0, $zero, $zero
/* 120604 8002E804 24050100 */  addiu      $a1, $zero, 0x100
/* 120608 8002E808 0800BB17 */  j          .L8002EC5C
/* 12060C 8002E80C 24060003 */   addiu     $a2, $zero, 3
.L8002E810:
/* 120610 8002E810 0C026DD5 */  jal        func_8009B754
/* 120614 8002E814 24040021 */   addiu     $a0, $zero, 0x21
/* 120618 8002E818 960200F2 */  lhu        $v0, 0xf2($s0)
/* 12061C 8002E81C 00021040 */  sll        $v0, $v0, 1
/* 120620 8002E820 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120624 8002E824 00220821 */  addu       $at, $at, $v0
/* 120628 8002E828 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 12062C 8002E82C 1440010D */  bnez       $v0, .L8002EC64
/* 120630 8002E830 00002021 */   addu      $a0, $zero, $zero
/* 120634 8002E834 24050100 */  addiu      $a1, $zero, 0x100
/* 120638 8002E838 0800BB17 */  j          .L8002EC5C
/* 12063C 8002E83C 24060003 */   addiu     $a2, $zero, 3
/* 120640 8002E840 8E030038 */  lw         $v1, 0x38($s0)
/* 120644 8002E844 84620022 */  lh         $v0, 0x22($v1)
/* 120648 8002E848 8463001E */  lh         $v1, 0x1e($v1)
/* 12064C 8002E84C 00021400 */  sll        $v0, $v0, 0x10
/* 120650 8002E850 00621821 */  addu       $v1, $v1, $v0
/* 120654 8002E854 24020003 */  addiu      $v0, $zero, 3
/* 120658 8002E858 14620102 */  bne        $v1, $v0, .L8002EC64
/* 12065C 8002E85C 00000000 */   nop
/* 120660 8002E860 0C026DD5 */  jal        func_8009B754
/* 120664 8002E864 24040021 */   addiu     $a0, $zero, 0x21
/* 120668 8002E868 960200F2 */  lhu        $v0, 0xf2($s0)
/* 12066C 8002E86C 00021040 */  sll        $v0, $v0, 1
/* 120670 8002E870 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120674 8002E874 00220821 */  addu       $at, $at, $v0
/* 120678 8002E878 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 12067C 8002E87C 144000F9 */  bnez       $v0, .L8002EC64
/* 120680 8002E880 00002021 */   addu      $a0, $zero, $zero
/* 120684 8002E884 24050100 */  addiu      $a1, $zero, 0x100
/* 120688 8002E888 0800BB17 */  j          .L8002EC5C
/* 12068C 8002E88C 24060003 */   addiu     $a2, $zero, 3
/* 120690 8002E890 8E020038 */  lw         $v0, 0x38($s0)
/* 120694 8002E894 84430022 */  lh         $v1, 0x22($v0)
/* 120698 8002E898 8442001E */  lh         $v0, 0x1e($v0)
/* 12069C 8002E89C 00031C00 */  sll        $v1, $v1, 0x10
/* 1206A0 8002E8A0 00431821 */  addu       $v1, $v0, $v1
/* 1206A4 8002E8A4 10600005 */  beqz       $v1, .L8002E8BC
/* 1206A8 8002E8A8 24020004 */   addiu     $v0, $zero, 4
/* 1206AC 8002E8AC 1062000F */  beq        $v1, $v0, .L8002E8EC
/* 1206B0 8002E8B0 00000000 */   nop
/* 1206B4 8002E8B4 0800BB19 */  j          .L8002EC64
/* 1206B8 8002E8B8 00000000 */   nop
.L8002E8BC:
/* 1206BC 8002E8BC 0C026DD5 */  jal        func_8009B754
/* 1206C0 8002E8C0 24040021 */   addiu     $a0, $zero, 0x21
/* 1206C4 8002E8C4 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1206C8 8002E8C8 00021040 */  sll        $v0, $v0, 1
/* 1206CC 8002E8CC 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 1206D0 8002E8D0 00220821 */  addu       $at, $at, $v0
/* 1206D4 8002E8D4 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 1206D8 8002E8D8 144000E2 */  bnez       $v0, .L8002EC64
/* 1206DC 8002E8DC 00002021 */   addu      $a0, $zero, $zero
/* 1206E0 8002E8E0 24050100 */  addiu      $a1, $zero, 0x100
/* 1206E4 8002E8E4 0800BB17 */  j          .L8002EC5C
/* 1206E8 8002E8E8 24060003 */   addiu     $a2, $zero, 3
.L8002E8EC:
/* 1206EC 8002E8EC 0C026DD5 */  jal        func_8009B754
/* 1206F0 8002E8F0 24040021 */   addiu     $a0, $zero, 0x21
/* 1206F4 8002E8F4 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1206F8 8002E8F8 00021040 */  sll        $v0, $v0, 1
/* 1206FC 8002E8FC 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120700 8002E900 00220821 */  addu       $at, $at, $v0
/* 120704 8002E904 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120708 8002E908 144000D6 */  bnez       $v0, .L8002EC64
/* 12070C 8002E90C 00002021 */   addu      $a0, $zero, $zero
/* 120710 8002E910 24050100 */  addiu      $a1, $zero, 0x100
/* 120714 8002E914 0800BB17 */  j          .L8002EC5C
/* 120718 8002E918 24060003 */   addiu     $a2, $zero, 3
/* 12071C 8002E91C 8E030038 */  lw         $v1, 0x38($s0)
/* 120720 8002E920 84620022 */  lh         $v0, 0x22($v1)
/* 120724 8002E924 8463001E */  lh         $v1, 0x1e($v1)
/* 120728 8002E928 00021400 */  sll        $v0, $v0, 0x10
/* 12072C 8002E92C 00621821 */  addu       $v1, $v1, $v0
/* 120730 8002E930 24020008 */  addiu      $v0, $zero, 8
/* 120734 8002E934 10620005 */  beq        $v1, $v0, .L8002E94C
/* 120738 8002E938 2402000D */   addiu     $v0, $zero, 0xd
/* 12073C 8002E93C 10620017 */  beq        $v1, $v0, .L8002E99C
/* 120740 8002E940 00000000 */   nop
/* 120744 8002E944 0800BB19 */  j          .L8002EC64
/* 120748 8002E948 00000000 */   nop
.L8002E94C:
/* 12074C 8002E94C 0C026DD5 */  jal        func_8009B754
/* 120750 8002E950 24040001 */   addiu     $a0, $zero, 1
/* 120754 8002E954 02002021 */  addu       $a0, $s0, $zero
/* 120758 8002E958 3C058006 */  lui        $a1, %hi(D_8005AAF8)
/* 12075C 8002E95C 24A5AAF8 */  addiu      $a1, $a1, %lo(D_8005AAF8)
/* 120760 8002E960 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 120764 8002E964 24060001 */   addiu     $a2, $zero, 1
/* 120768 8002E968 960200F2 */  lhu        $v0, 0xf2($s0)
/* 12076C 8002E96C 00021040 */  sll        $v0, $v0, 1
/* 120770 8002E970 3C018006 */  lui        $at, %hi(D_8005AA94)
/* 120774 8002E974 00220821 */  addu       $at, $at, $v0
/* 120778 8002E978 9422AA94 */  lhu        $v0, %lo(D_8005AA94)($at)
/* 12077C 8002E97C 00021080 */  sll        $v0, $v0, 2
/* 120780 8002E980 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 120784 8002E984 00822021 */  addu       $a0, $a0, $v0
/* 120788 8002E988 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 12078C 8002E98C 0C0E477B */  jal        func_80391DEC
/* 120790 8002E990 2405FFF6 */   addiu     $a1, $zero, -0xa
/* 120794 8002E994 0800BB0E */  j          .L8002EC38
/* 120798 8002E998 00000000 */   nop
.L8002E99C:
/* 12079C 8002E99C 0C026DD5 */  jal        func_8009B754
/* 1207A0 8002E9A0 24040001 */   addiu     $a0, $zero, 1
/* 1207A4 8002E9A4 02002021 */  addu       $a0, $s0, $zero
/* 1207A8 8002E9A8 3C058006 */  lui        $a1, %hi(D_8005AAF8)
/* 1207AC 8002E9AC 24A5AAF8 */  addiu      $a1, $a1, %lo(D_8005AAF8)
/* 1207B0 8002E9B0 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 1207B4 8002E9B4 24060001 */   addiu     $a2, $zero, 1
/* 1207B8 8002E9B8 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1207BC 8002E9BC 00021040 */  sll        $v0, $v0, 1
/* 1207C0 8002E9C0 3C018006 */  lui        $at, %hi(D_8005AA94)
/* 1207C4 8002E9C4 00220821 */  addu       $at, $at, $v0
/* 1207C8 8002E9C8 9422AA94 */  lhu        $v0, %lo(D_8005AA94)($at)
/* 1207CC 8002E9CC 00021080 */  sll        $v0, $v0, 2
/* 1207D0 8002E9D0 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 1207D4 8002E9D4 00822021 */  addu       $a0, $a0, $v0
/* 1207D8 8002E9D8 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 1207DC 8002E9DC 0C0E477B */  jal        func_80391DEC
/* 1207E0 8002E9E0 2405FFF6 */   addiu     $a1, $zero, -0xa
/* 1207E4 8002E9E4 0800BB0E */  j          .L8002EC38
/* 1207E8 8002E9E8 00000000 */   nop
/* 1207EC 8002E9EC 8E030038 */  lw         $v1, 0x38($s0)
/* 1207F0 8002E9F0 84620022 */  lh         $v0, 0x22($v1)
/* 1207F4 8002E9F4 8463001E */  lh         $v1, 0x1e($v1)
/* 1207F8 8002E9F8 00021400 */  sll        $v0, $v0, 0x10
/* 1207FC 8002E9FC 00621821 */  addu       $v1, $v1, $v0
/* 120800 8002EA00 24020008 */  addiu      $v0, $zero, 8
/* 120804 8002EA04 1062008C */  beq        $v1, $v0, .L8002EC38
/* 120808 8002EA08 2402000D */   addiu     $v0, $zero, 0xd
/* 12080C 8002EA0C 1062008A */  beq        $v1, $v0, .L8002EC38
/* 120810 8002EA10 00000000 */   nop
/* 120814 8002EA14 0800BB19 */  j          .L8002EC64
/* 120818 8002EA18 00000000 */   nop
/* 12081C 8002EA1C 8E030038 */  lw         $v1, 0x38($s0)
/* 120820 8002EA20 84620022 */  lh         $v0, 0x22($v1)
/* 120824 8002EA24 8463001E */  lh         $v1, 0x1e($v1)
/* 120828 8002EA28 00021400 */  sll        $v0, $v0, 0x10
/* 12082C 8002EA2C 00621821 */  addu       $v1, $v1, $v0
/* 120830 8002EA30 2402000F */  addiu      $v0, $zero, 0xf
/* 120834 8002EA34 10620080 */  beq        $v1, $v0, .L8002EC38
/* 120838 8002EA38 00000000 */   nop
/* 12083C 8002EA3C 0800BB19 */  j          .L8002EC64
/* 120840 8002EA40 00000000 */   nop
/* 120844 8002EA44 8E030038 */  lw         $v1, 0x38($s0)
/* 120848 8002EA48 84620022 */  lh         $v0, 0x22($v1)
/* 12084C 8002EA4C 8463001E */  lh         $v1, 0x1e($v1)
/* 120850 8002EA50 00021400 */  sll        $v0, $v0, 0x10
/* 120854 8002EA54 00621821 */  addu       $v1, $v1, $v0
/* 120858 8002EA58 2402000F */  addiu      $v0, $zero, 0xf
/* 12085C 8002EA5C 14620081 */  bne        $v1, $v0, .L8002EC64
/* 120860 8002EA60 00000000 */   nop
/* 120864 8002EA64 0C026DD5 */  jal        func_8009B754
/* 120868 8002EA68 24040001 */   addiu     $a0, $zero, 1
/* 12086C 8002EA6C 02002021 */  addu       $a0, $s0, $zero
/* 120870 8002EA70 3C058006 */  lui        $a1, %hi(D_8005AAF8)
/* 120874 8002EA74 24A5AAF8 */  addiu      $a1, $a1, %lo(D_8005AAF8)
/* 120878 8002EA78 0C00B3B8 */  jal        func_8002CEE0_11ECE0
/* 12087C 8002EA7C 24060001 */   addiu     $a2, $zero, 1
/* 120880 8002EA80 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120884 8002EA84 00021040 */  sll        $v0, $v0, 1
/* 120888 8002EA88 3C018006 */  lui        $at, %hi(D_8005AA94)
/* 12088C 8002EA8C 00220821 */  addu       $at, $at, $v0
/* 120890 8002EA90 9422AA94 */  lhu        $v0, %lo(D_8005AA94)($at)
/* 120894 8002EA94 00021080 */  sll        $v0, $v0, 2
/* 120898 8002EA98 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 12089C 8002EA9C 00822021 */  addu       $a0, $a0, $v0
/* 1208A0 8002EAA0 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 1208A4 8002EAA4 0C0E477B */  jal        func_80391DEC
/* 1208A8 8002EAA8 2405FFF6 */   addiu     $a1, $zero, -0xa
/* 1208AC 8002EAAC 0800BB0E */  j          .L8002EC38
/* 1208B0 8002EAB0 00000000 */   nop
/* 1208B4 8002EAB4 8E020038 */  lw         $v0, 0x38($s0)
/* 1208B8 8002EAB8 84430022 */  lh         $v1, 0x22($v0)
/* 1208BC 8002EABC 8442001E */  lh         $v0, 0x1e($v0)
/* 1208C0 8002EAC0 00031C00 */  sll        $v1, $v1, 0x10
/* 1208C4 8002EAC4 00431021 */  addu       $v0, $v0, $v1
/* 1208C8 8002EAC8 14400066 */  bnez       $v0, .L8002EC64
/* 1208CC 8002EACC 00000000 */   nop
/* 1208D0 8002EAD0 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1208D4 8002EAD4 00021040 */  sll        $v0, $v0, 1
/* 1208D8 8002EAD8 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 1208DC 8002EADC 00220821 */  addu       $at, $at, $v0
/* 1208E0 8002EAE0 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 1208E4 8002EAE4 14400004 */  bnez       $v0, .L8002EAF8
/* 1208E8 8002EAE8 00002021 */   addu      $a0, $zero, $zero
/* 1208EC 8002EAEC 24050100 */  addiu      $a1, $zero, 0x100
/* 1208F0 8002EAF0 0C026B15 */  jal        func_8009AC54
/* 1208F4 8002EAF4 2406000A */   addiu     $a2, $zero, 0xa
.L8002EAF8:
/* 1208F8 8002EAF8 960200F2 */  lhu        $v0, 0xf2($s0)
/* 1208FC 8002EAFC 00021080 */  sll        $v0, $v0, 2
.L8002EB00:
/* 120900 8002EB00 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 120904 8002EB04 00822021 */  addu       $a0, $a0, $v0
/* 120908 8002EB08 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 12090C 8002EB0C 0C0E477B */  jal        func_80391DEC
/* 120910 8002EB10 2405FFFB */   addiu     $a1, $zero, -5
/* 120914 8002EB14 0800BB19 */  j          .L8002EC64
/* 120918 8002EB18 00000000 */   nop
/* 12091C 8002EB1C 8E020038 */  lw         $v0, 0x38($s0)
/* 120920 8002EB20 84430022 */  lh         $v1, 0x22($v0)
/* 120924 8002EB24 8442001E */  lh         $v0, 0x1e($v0)
/* 120928 8002EB28 00031C00 */  sll        $v1, $v1, 0x10
/* 12092C 8002EB2C 00431821 */  addu       $v1, $v0, $v1
/* 120930 8002EB30 10600005 */  beqz       $v1, .L8002EB48
/* 120934 8002EB34 2402000A */   addiu     $v0, $zero, 0xa
/* 120938 8002EB38 1062000C */  beq        $v1, $v0, .L8002EB6C
/* 12093C 8002EB3C 24040019 */   addiu     $a0, $zero, 0x19
/* 120940 8002EB40 0800BB19 */  j          .L8002EC64
/* 120944 8002EB44 00000000 */   nop
.L8002EB48:
/* 120948 8002EB48 960200F2 */  lhu        $v0, 0xf2($s0)
/* 12094C 8002EB4C 00021080 */  sll        $v0, $v0, 2
/* 120950 8002EB50 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 120954 8002EB54 00822021 */  addu       $a0, $a0, $v0
/* 120958 8002EB58 8C84D07C */  lw         $a0, %lo(D_8016D07C)($a0)
/* 12095C 8002EB5C 0C0E477B */  jal        func_80391DEC
/* 120960 8002EB60 2405FFF6 */   addiu     $a1, $zero, -0xa
/* 120964 8002EB64 0800BB0E */  j          .L8002EC38
/* 120968 8002EB68 00000000 */   nop
.L8002EB6C:
/* 12096C 8002EB6C 3C018006 */  lui        $at, %hi(D_8005B058)
/* 120970 8002EB70 8C26B058 */  lw         $a2, %lo(D_8005B058)($at)
/* 120974 8002EB74 8C27B05C */  lw         $a3, -0x4fa4($at)
/* 120978 8002EB78 4480A000 */  mtc1       $zero, $f20
/* 12097C 8002EB7C 4480A800 */  mtc1       $zero, $f21
/* 120980 8002EB80 00000000 */  nop
/* 120984 8002EB84 0C009A78 */  jal        func_800269E0_1187E0
/* 120988 8002EB88 2405003C */   addiu     $a1, $zero, 0x3c
/* 12098C 8002EB8C 2404001C */  addiu      $a0, $zero, 0x1c
/* 120990 8002EB90 4407A000 */  mfc1       $a3, $f20
/* 120994 8002EB94 4406A800 */  mfc1       $a2, $f21
/* 120998 8002EB98 00000000 */  nop
/* 12099C 8002EB9C 0C009A78 */  jal        func_800269E0_1187E0
/* 1209A0 8002EBA0 2405003C */   addiu     $a1, $zero, 0x3c
/* 1209A4 8002EBA4 2404001D */  addiu      $a0, $zero, 0x1d
/* 1209A8 8002EBA8 4407A000 */  mfc1       $a3, $f20
/* 1209AC 8002EBAC 4406A800 */  mfc1       $a2, $f21
/* 1209B0 8002EBB0 00000000 */  nop
/* 1209B4 8002EBB4 0C009A78 */  jal        func_800269E0_1187E0
/* 1209B8 8002EBB8 2405003C */   addiu     $a1, $zero, 0x3c
/* 1209BC 8002EBBC 2404001E */  addiu      $a0, $zero, 0x1e
/* 1209C0 8002EBC0 4407A000 */  mfc1       $a3, $f20
/* 1209C4 8002EBC4 4406A800 */  mfc1       $a2, $f21
/* 1209C8 8002EBC8 00000000 */  nop
/* 1209CC 8002EBCC 0C009A78 */  jal        func_800269E0_1187E0
/* 1209D0 8002EBD0 2405003C */   addiu     $a1, $zero, 0x3c
/* 1209D4 8002EBD4 3C018006 */  lui        $at, %hi(D_8005B060)
/* 1209D8 8002EBD8 8C26B060 */  lw         $a2, %lo(D_8005B060)($at)
/* 1209DC 8002EBDC 8C27B064 */  lw         $a3, -0x4f9c($at)
/* 1209E0 8002EBE0 2404001B */  addiu      $a0, $zero, 0x1b
/* 1209E4 8002EBE4 0C009A78 */  jal        func_800269E0_1187E0
/* 1209E8 8002EBE8 2405003C */   addiu     $a1, $zero, 0x3c
/* 1209EC 8002EBEC 0800BB19 */  j          .L8002EC64
/* 1209F0 8002EBF0 00000000 */   nop
/* 1209F4 8002EBF4 8E030038 */  lw         $v1, 0x38($s0)
/* 1209F8 8002EBF8 84620022 */  lh         $v0, 0x22($v1)
/* 1209FC 8002EBFC 8463001E */  lh         $v1, 0x1e($v1)
/* 120A00 8002EC00 00021400 */  sll        $v0, $v0, 0x10
/* 120A04 8002EC04 00621821 */  addu       $v1, $v1, $v0
/* 120A08 8002EC08 0800BB0A */  j          .L8002EC28
/* 120A0C 8002EC0C 24020007 */   addiu     $v0, $zero, 7
/* 120A10 8002EC10 8E030038 */  lw         $v1, 0x38($s0)
/* 120A14 8002EC14 84620022 */  lh         $v0, 0x22($v1)
/* 120A18 8002EC18 8463001E */  lh         $v1, 0x1e($v1)
/* 120A1C 8002EC1C 00021400 */  sll        $v0, $v0, 0x10
/* 120A20 8002EC20 00621821 */  addu       $v1, $v1, $v0
/* 120A24 8002EC24 24020002 */  addiu      $v0, $zero, 2
.L8002EC28:
/* 120A28 8002EC28 1462000E */  bne        $v1, $v0, .L8002EC64
/* 120A2C 8002EC2C 00000000 */   nop
/* 120A30 8002EC30 0C026DD5 */  jal        func_8009B754
/* 120A34 8002EC34 2404000E */   addiu     $a0, $zero, 0xe
.L8002EC38:
/* 120A38 8002EC38 960200F2 */  lhu        $v0, 0xf2($s0)
/* 120A3C 8002EC3C 00021040 */  sll        $v0, $v0, 1
/* 120A40 8002EC40 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 120A44 8002EC44 00220821 */  addu       $at, $at, $v0
/* 120A48 8002EC48 8422E12C */  lh         $v0, %lo(D_8005E12C)($at)
/* 120A4C 8002EC4C 14400005 */  bnez       $v0, .L8002EC64
/* 120A50 8002EC50 00002021 */   addu      $a0, $zero, $zero
/* 120A54 8002EC54 24050100 */  addiu      $a1, $zero, 0x100
/* 120A58 8002EC58 2406000A */  addiu      $a2, $zero, 0xa
.L8002EC5C:
/* 120A5C 8002EC5C 0C026B15 */  jal        func_8009AC54
/* 120A60 8002EC60 00000000 */   nop
.L8002EC64:
/* 120A64 8002EC64 8FBF0014 */  lw         $ra, 0x14($sp)
/* 120A68 8002EC68 8FB00010 */  lw         $s0, 0x10($sp)
/* 120A6C 8002EC6C D7B40018 */  ldc1       $f20, 0x18($sp)
/* 120A70 8002EC70 03E00008 */  jr         $ra
/* 120A74 8002EC74 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002EC78_120A78
/* 120A78 8002EC78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 120A7C 8002EC7C AFBF0010 */  sw         $ra, 0x10($sp)
/* 120A80 8002EC80 8C850038 */  lw         $a1, 0x38($a0)
/* 120A84 8002EC84 10A0003E */  beqz       $a1, .L8002ED80
/* 120A88 8002EC88 2402008D */   addiu     $v0, $zero, 0x8d
/* 120A8C 8002EC8C 8C830004 */  lw         $v1, 4($a0)
/* 120A90 8002EC90 10620035 */  beq        $v1, $v0, .L8002ED68
/* 120A94 8002EC94 2862008E */   slti      $v0, $v1, 0x8e
/* 120A98 8002EC98 10400010 */  beqz       $v0, .L8002ECDC
/* 120A9C 8002EC9C 24020089 */   addiu     $v0, $zero, 0x89
/* 120AA0 8002ECA0 10620035 */  beq        $v1, $v0, .L8002ED78
/* 120AA4 8002ECA4 2862008A */   slti      $v0, $v1, 0x8a
/* 120AA8 8002ECA8 10400005 */  beqz       $v0, .L8002ECC0
/* 120AAC 8002ECAC 2402000F */   addiu     $v0, $zero, 0xf
/* 120AB0 8002ECB0 10620029 */  beq        $v1, $v0, .L8002ED58
/* 120AB4 8002ECB4 00000000 */   nop
/* 120AB8 8002ECB8 0800BB60 */  j          .L8002ED80
/* 120ABC 8002ECBC 00000000 */   nop
.L8002ECC0:
/* 120AC0 8002ECC0 2402008A */  addiu      $v0, $zero, 0x8a
/* 120AC4 8002ECC4 10620028 */  beq        $v1, $v0, .L8002ED68
/* 120AC8 8002ECC8 2402008C */   addiu     $v0, $zero, 0x8c
/* 120ACC 8002ECCC 1062002A */  beq        $v1, $v0, .L8002ED78
/* 120AD0 8002ECD0 00000000 */   nop
/* 120AD4 8002ECD4 0800BB60 */  j          .L8002ED80
/* 120AD8 8002ECD8 00000000 */   nop
.L8002ECDC:
/* 120ADC 8002ECDC 24020092 */  addiu      $v0, $zero, 0x92
/* 120AE0 8002ECE0 10620025 */  beq        $v1, $v0, .L8002ED78
/* 120AE4 8002ECE4 28620093 */   slti      $v0, $v1, 0x93
/* 120AE8 8002ECE8 10400007 */  beqz       $v0, .L8002ED08
/* 120AEC 8002ECEC 2402008E */   addiu     $v0, $zero, 0x8e
/* 120AF0 8002ECF0 10620021 */  beq        $v1, $v0, .L8002ED78
/* 120AF4 8002ECF4 2402008F */   addiu     $v0, $zero, 0x8f
/* 120AF8 8002ECF8 1062001B */  beq        $v1, $v0, .L8002ED68
/* 120AFC 8002ECFC 00000000 */   nop
/* 120B00 8002ED00 0800BB60 */  j          .L8002ED80
/* 120B04 8002ED04 00000000 */   nop
.L8002ED08:
/* 120B08 8002ED08 24020093 */  addiu      $v0, $zero, 0x93
/* 120B0C 8002ED0C 10620016 */  beq        $v1, $v0, .L8002ED68
/* 120B10 8002ED10 240200BF */   addiu     $v0, $zero, 0xbf
/* 120B14 8002ED14 1462001A */  bne        $v1, $v0, .L8002ED80
/* 120B18 8002ED18 00000000 */   nop
/* 120B1C 8002ED1C 8C820008 */  lw         $v0, 8($a0)
/* 120B20 8002ED20 14400017 */  bnez       $v0, .L8002ED80
/* 120B24 8002ED24 00000000 */   nop
/* 120B28 8002ED28 84A20022 */  lh         $v0, 0x22($a1)
/* 120B2C 8002ED2C 84A3001E */  lh         $v1, 0x1e($a1)
/* 120B30 8002ED30 00021400 */  sll        $v0, $v0, 0x10
/* 120B34 8002ED34 00621821 */  addu       $v1, $v1, $v0
/* 120B38 8002ED38 10600003 */  beqz       $v1, .L8002ED48
/* 120B3C 8002ED3C 24020004 */   addiu     $v0, $zero, 4
/* 120B40 8002ED40 1462000F */  bne        $v1, $v0, .L8002ED80
/* 120B44 8002ED44 00000000 */   nop
.L8002ED48:
/* 120B48 8002ED48 0C026DD5 */  jal        func_8009B754
/* 120B4C 8002ED4C 24040075 */   addiu     $a0, $zero, 0x75
/* 120B50 8002ED50 0800BB60 */  j          .L8002ED80
/* 120B54 8002ED54 00000000 */   nop
.L8002ED58:
/* 120B58 8002ED58 0C00B4A8 */  jal        func_8002D2A0_11F0A0
/* 120B5C 8002ED5C 00000000 */   nop
/* 120B60 8002ED60 0800BB60 */  j          .L8002ED80
/* 120B64 8002ED64 00000000 */   nop
.L8002ED68:
/* 120B68 8002ED68 0C00B571 */  jal        func_8002D5C4_11F3C4
/* 120B6C 8002ED6C 00000000 */   nop
/* 120B70 8002ED70 0800BB60 */  j          .L8002ED80
/* 120B74 8002ED74 00000000 */   nop
.L8002ED78:
/* 120B78 8002ED78 0C00B4FD */  jal        func_8002D3F4_11F1F4
/* 120B7C 8002ED7C 00000000 */   nop
.L8002ED80:
/* 120B80 8002ED80 8FBF0010 */  lw         $ra, 0x10($sp)
/* 120B84 8002ED84 03E00008 */  jr         $ra
/* 120B88 8002ED88 27BD0018 */   addiu     $sp, $sp, 0x18
/* 120B8C 8002ED8C 00000000 */  nop