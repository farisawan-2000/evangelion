.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8004D410_13F210
/* 13F210 8004D410 3C028005 */  lui        $v0, %hi(D_80052FA6)
/* 13F214 8004D414 90422FA6 */  lbu        $v0, %lo(D_80052FA6)($v0)
/* 13F218 8004D418 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13F21C 8004D41C AFB1001C */  sw         $s1, 0x1c($sp)
/* 13F220 8004D420 00808821 */  addu       $s1, $a0, $zero
/* 13F224 8004D424 AFBF0020 */  sw         $ra, 0x20($sp)
/* 13F228 8004D428 1040006A */  beqz       $v0, .L8004D5D4
/* 13F22C 8004D42C AFB00018 */   sw        $s0, 0x18($sp)
/* 13F230 8004D430 0C02A5D2 */  jal        func_800A9748
/* 13F234 8004D434 24040001 */   addiu     $a0, $zero, 1
/* 13F238 8004D438 0C02725C */  jal        func_8009C970
/* 13F23C 8004D43C 00000000 */   nop
/* 13F240 8004D440 3C038006 */  lui        $v1, %hi(D_8005E13C)
/* 13F244 8004D444 9463E13C */  lhu        $v1, %lo(D_8005E13C)($v1)
/* 13F248 8004D448 24020001 */  addiu      $v0, $zero, 1
/* 13F24C 8004D44C 1462001A */  bne        $v1, $v0, .L8004D4B8
/* 13F250 8004D450 24040053 */   addiu     $a0, $zero, 0x53
/* 13F254 8004D454 3C014040 */  lui        $at, 0x4040
/* 13F258 8004D458 44810000 */  mtc1       $at, $f0
/* 13F25C 8004D45C 3C014258 */  lui        $at, 0x4258
/* 13F260 8004D460 44811000 */  mtc1       $at, $f2
/* 13F264 8004D464 3C01C040 */  lui        $at, 0xc040
/* 13F268 8004D468 44812000 */  mtc1       $at, $f4
/* 13F26C 8004D46C 3C01C140 */  lui        $at, 0xc140
/* 13F270 8004D470 44813000 */  mtc1       $at, $f6
/* 13F274 8004D474 3C01C29E */  lui        $at, 0xc29e
/* 13F278 8004D478 44814000 */  mtc1       $at, $f8
/* 13F27C 8004D47C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 13F280 8004D480 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 13F284 8004D484 3C018015 */  lui        $at, %hi(D_8014A084)
/* 13F288 8004D488 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 13F28C 8004D48C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 13F290 8004D490 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 13F294 8004D494 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13F298 8004D498 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 13F29C 8004D49C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 13F2A0 8004D4A0 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* 13F2A4 8004D4A4 3C018015 */  lui        $at, %hi(D_8014A080)
/* 13F2A8 8004D4A8 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 13F2AC 8004D4AC 3C018015 */  lui        $at, %hi(D_8014A088)
/* 13F2B0 8004D4B0 08013544 */  j          .L8004D510
/* 13F2B4 8004D4B4 E428A088 */   swc1      $f8, %lo(D_8014A088)($at)
.L8004D4B8:
/* 13F2B8 8004D4B8 3C01C040 */  lui        $at, 0xc040
/* 13F2BC 8004D4BC 44810000 */  mtc1       $at, $f0
/* 13F2C0 8004D4C0 3C014258 */  lui        $at, 0x4258
/* 13F2C4 8004D4C4 44811000 */  mtc1       $at, $f2
/* 13F2C8 8004D4C8 3C014140 */  lui        $at, 0x4140
/* 13F2CC 8004D4CC 44812000 */  mtc1       $at, $f4
/* 13F2D0 8004D4D0 3C01C29E */  lui        $at, 0xc29e
/* 13F2D4 8004D4D4 44813000 */  mtc1       $at, $f6
/* 13F2D8 8004D4D8 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 13F2DC 8004D4DC AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 13F2E0 8004D4E0 3C018015 */  lui        $at, %hi(D_8014A084)
/* 13F2E4 8004D4E4 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 13F2E8 8004D4E8 3C018015 */  lui        $at, %hi(D_8014A064)
/* 13F2EC 8004D4EC E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 13F2F0 8004D4F0 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13F2F4 8004D4F4 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 13F2F8 8004D4F8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 13F2FC 8004D4FC E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* 13F300 8004D500 3C018015 */  lui        $at, %hi(D_8014A080)
/* 13F304 8004D504 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* 13F308 8004D508 3C018015 */  lui        $at, %hi(D_8014A088)
/* 13F30C 8004D50C E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
.L8004D510:
/* 13F310 8004D510 24050048 */  addiu      $a1, $zero, 0x48
/* 13F314 8004D514 24060053 */  addiu      $a2, $zero, 0x53
/* 13F318 8004D518 240700FF */  addiu      $a3, $zero, 0xff
/* 13F31C 8004D51C 240200E6 */  addiu      $v0, $zero, 0xe6
/* 13F320 8004D520 AFA20010 */  sw         $v0, 0x10($sp)
/* 13F324 8004D524 240200DC */  addiu      $v0, $zero, 0xdc
/* 13F328 8004D528 0C027101 */  jal        func_8009C404
/* 13F32C 8004D52C AFA20014 */   sw        $v0, 0x14($sp)
/* 13F330 8004D530 3C014170 */  lui        $at, 0x4170
/* 13F334 8004D534 44810000 */  mtc1       $at, $f0
/* 13F338 8004D538 3C014180 */  lui        $at, 0x4180
/* 13F33C 8004D53C 44811000 */  mtc1       $at, $f2
/* 13F340 8004D540 3C01C1C0 */  lui        $at, 0xc1c0
/* 13F344 8004D544 44812000 */  mtc1       $at, $f4
/* 13F348 8004D548 3C014130 */  lui        $at, 0x4130
/* 13F34C 8004D54C 44813000 */  mtc1       $at, $f6
/* 13F350 8004D550 3C0140A0 */  lui        $at, 0x40a0
/* 13F354 8004D554 44814000 */  mtc1       $at, $f8
/* 13F358 8004D558 3C01C190 */  lui        $at, 0xc190
/* 13F35C 8004D55C 44815000 */  mtc1       $at, $f10
/* 13F360 8004D560 3C018017 */  lui        $at, %hi(D_8016E568)
/* 13F364 8004D564 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 13F368 8004D568 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 13F36C 8004D56C E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 13F370 8004D570 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 13F374 8004D574 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 13F378 8004D578 3C018015 */  lui        $at, %hi(D_8014A054)
/* 13F37C 8004D57C E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 13F380 8004D580 3C018015 */  lui        $at, %hi(D_8014A050)
/* 13F384 8004D584 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 13F388 8004D588 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 13F38C 8004D58C 0C013599 */  jal        func_8004D664_13F464
/* 13F390 8004D590 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 13F394 8004D594 3C108008 */  lui        $s0, %hi(D_80080750)
/* 13F398 8004D598 26100750 */  addiu      $s0, $s0, %lo(D_80080750)
/* 13F39C 8004D59C 02002021 */  addu       $a0, $s0, $zero
/* 13F3A0 8004D5A0 3C018006 */  lui        $at, %hi(D_8005E040)
/* 13F3A4 8004D5A4 AC22E040 */  sw         $v0, %lo(D_8005E040)($at)
/* 13F3A8 8004D5A8 0C00A157 */  jal        func_8002855C_11A35C
/* 13F3AC 8004D5AC 2405000D */   addiu     $a1, $zero, 0xd
/* 13F3B0 8004D5B0 3C05C248 */  lui        $a1, 0xc248
/* 13F3B4 8004D5B4 44800000 */  mtc1       $zero, $f0
/* 13F3B8 8004D5B8 00000000 */  nop
/* 13F3BC 8004D5BC 44060000 */  mfc1       $a2, $f0
/* 13F3C0 8004D5C0 02002021 */  addu       $a0, $s0, $zero
/* 13F3C4 8004D5C4 0C00A18C */  jal        func_80028630_11A430
/* 13F3C8 8004D5C8 00C03821 */   addu      $a3, $a2, $zero
/* 13F3CC 8004D5CC 3C018005 */  lui        $at, %hi(D_80052FA6)
/* 13F3D0 8004D5D0 A0202FA6 */  sb         $zero, %lo(D_80052FA6)($at)
.L8004D5D4:
/* 13F3D4 8004D5D4 16200003 */  bnez       $s1, .L8004D5E4
/* 13F3D8 8004D5D8 24020001 */   addiu     $v0, $zero, 1
/* 13F3DC 8004D5DC 3C018005 */  lui        $at, %hi(D_80052FA8)
/* 13F3E0 8004D5E0 AC222FA8 */  sw         $v0, %lo(D_80052FA8)($at)
.L8004D5E4:
/* 13F3E4 8004D5E4 3C028005 */  lui        $v0, %hi(D_80052FA8)
/* 13F3E8 8004D5E8 8C422FA8 */  lw         $v0, %lo(D_80052FA8)($v0)
/* 13F3EC 8004D5EC 1440000C */  bnez       $v0, .L8004D620
/* 13F3F0 8004D5F0 00000000 */   nop
/* 13F3F4 8004D5F4 3C048006 */  lui        $a0, %hi(D_8005E040)
/* 13F3F8 8004D5F8 0C0136FF */  jal        func_8004DBFC_13F9FC
/* 13F3FC 8004D5FC 8C84E040 */   lw        $a0, %lo(D_8005E040)($a0)
/* 13F400 8004D600 3C018005 */  lui        $at, %hi(D_80052FA8)
/* 13F404 8004D604 0C009767 */  jal        func_80025D9C_117B9C
/* 13F408 8004D608 AC222FA8 */   sw        $v0, %lo(D_80052FA8)($at)
/* 13F40C 8004D60C 3C048008 */  lui        $a0, %hi(D_80080750)
/* 13F410 8004D610 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 13F414 8004D614 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 13F418 8004D618 08013594 */  j          .L8004D650
/* 13F41C 8004D61C 00001021 */   addu      $v0, $zero, $zero
.L8004D620:
/* 13F420 8004D620 3C048008 */  lui        $a0, %hi(D_80080750)
/* 13F424 8004D624 0C00A16B */  jal        func_800285AC_11A3AC
/* 13F428 8004D628 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 13F42C 8004D62C 3C048006 */  lui        $a0, %hi(D_8005E040)
/* 13F430 8004D630 0C0138E0 */  jal        func_8004E380_140180
/* 13F434 8004D634 2484E040 */   addiu     $a0, $a0, %lo(D_8005E040)
/* 13F438 8004D638 24020001 */  addiu      $v0, $zero, 1
/* 13F43C 8004D63C 24030001 */  addiu      $v1, $zero, 1
/* 13F440 8004D640 3C018005 */  lui        $at, %hi(D_80052FA8)
/* 13F444 8004D644 AC202FA8 */  sw         $zero, %lo(D_80052FA8)($at)
/* 13F448 8004D648 3C018005 */  lui        $at, %hi(D_80052FA6)
/* 13F44C 8004D64C A0232FA6 */  sb         $v1, %lo(D_80052FA6)($at)
.L8004D650:
/* 13F450 8004D650 8FBF0020 */  lw         $ra, 0x20($sp)
/* 13F454 8004D654 8FB1001C */  lw         $s1, 0x1c($sp)
/* 13F458 8004D658 8FB00018 */  lw         $s0, 0x18($sp)
/* 13F45C 8004D65C 03E00008 */  jr         $ra
/* 13F460 8004D660 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004D664_13F464
/* 13F464 8004D664 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 13F468 8004D668 2404002C */  addiu      $a0, $zero, 0x2c
/* 13F46C 8004D66C AFBF0028 */  sw         $ra, 0x28($sp)
/* 13F470 8004D670 AFB50024 */  sw         $s5, 0x24($sp)
/* 13F474 8004D674 AFB40020 */  sw         $s4, 0x20($sp)
/* 13F478 8004D678 AFB3001C */  sw         $s3, 0x1c($sp)
/* 13F47C 8004D67C AFB20018 */  sw         $s2, 0x18($sp)
/* 13F480 8004D680 AFB10014 */  sw         $s1, 0x14($sp)
/* 13F484 8004D684 0C032663 */  jal        func_800C998C
/* 13F488 8004D688 AFB00010 */   sw        $s0, 0x10($sp)
/* 13F48C 8004D68C 00408021 */  addu       $s0, $v0, $zero
/* 13F490 8004D690 02002021 */  addu       $a0, $s0, $zero
/* 13F494 8004D694 0C030134 */  jal        bzero
/* 13F498 8004D698 2405002C */   addiu     $a1, $zero, 0x2c
/* 13F49C 8004D69C 24020258 */  addiu      $v0, $zero, 0x258
/* 13F4A0 8004D6A0 A602002A */  sh         $v0, 0x2a($s0)
/* 13F4A4 8004D6A4 A6000020 */  sh         $zero, 0x20($s0)
/* 13F4A8 8004D6A8 A600001C */  sh         $zero, 0x1c($s0)
/* 13F4AC 8004D6AC A600001E */  sh         $zero, 0x1e($s0)
/* 13F4B0 8004D6B0 A6000022 */  sh         $zero, 0x22($s0)
/* 13F4B4 8004D6B4 A6000024 */  sh         $zero, 0x24($s0)
/* 13F4B8 8004D6B8 3C018006 */  lui        $at, %hi(D_8005E0C0)
/* 13F4BC 8004D6BC A420E0C0 */  sh         $zero, %lo(D_8005E0C0)($at)
/* 13F4C0 8004D6C0 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13F4C4 8004D6C4 24140007 */   addiu     $s4, $zero, 7
/* 13F4C8 8004D6C8 3C138006 */  lui        $s3, %hi(D_8005E1E0)
/* 13F4CC 8004D6CC 2673E1E0 */  addiu      $s3, $s3, %lo(D_8005E1E0)
/* 13F4D0 8004D6D0 AE020000 */  sw         $v0, ($s0)
/* 13F4D4 8004D6D4 AC54001C */  sw         $s4, 0x1c($v0)
/* 13F4D8 8004D6D8 86640000 */  lh         $a0, ($s3)
/* 13F4DC 8004D6DC 000418C0 */  sll        $v1, $a0, 3
/* 13F4E0 8004D6E0 00641823 */  subu       $v1, $v1, $a0
/* 13F4E4 8004D6E4 00031880 */  sll        $v1, $v1, 2
/* 13F4E8 8004D6E8 3C048006 */  lui        $a0, %hi(D_8005CEF4)
/* 13F4EC 8004D6EC 00832021 */  addu       $a0, $a0, $v1
/* 13F4F0 8004D6F0 8C84CEF4 */  lw         $a0, %lo(D_8005CEF4)($a0)
/* 13F4F4 8004D6F4 3C038006 */  lui        $v1, %hi(D_8005E13C)
/* 13F4F8 8004D6F8 9463E13C */  lhu        $v1, %lo(D_8005E13C)($v1)
/* 13F4FC 8004D6FC 3C0142B4 */  lui        $at, 0x42b4
/* 13F500 8004D700 44810000 */  mtc1       $at, $f0
/* 13F504 8004D704 000318C0 */  sll        $v1, $v1, 3
/* 13F508 8004D708 AC440004 */  sw         $a0, 4($v0)
/* 13F50C 8004D70C 3C018005 */  lui        $at, %hi(D_80052FAE)
/* 13F510 8004D710 00230821 */  addu       $at, $at, $v1
/* 13F514 8004D714 94232FAE */  lhu        $v1, %lo(D_80052FAE)($at)
/* 13F518 8004D718 24120001 */  addiu      $s2, $zero, 1
/* 13F51C 8004D71C 24110001 */  addiu      $s1, $zero, 1
/* 13F520 8004D720 AC400010 */  sw         $zero, 0x10($v0)
/* 13F524 8004D724 AC400044 */  sw         $zero, 0x44($v0)
/* 13F528 8004D728 E4400054 */  swc1       $f0, 0x54($v0)
/* 13F52C 8004D72C AC52000C */  sw         $s2, 0xc($v0)
/* 13F530 8004D730 A44000F2 */  sh         $zero, 0xf2($v0)
/* 13F534 8004D734 A45100F0 */  sh         $s1, 0xf0($v0)
/* 13F538 8004D738 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13F53C 8004D73C AC430008 */   sw        $v1, 8($v0)
/* 13F540 8004D740 AE020004 */  sw         $v0, 4($s0)
/* 13F544 8004D744 AC54001C */  sw         $s4, 0x1c($v0)
/* 13F548 8004D748 3C048006 */  lui        $a0, %hi(D_8005E1E2)
/* 13F54C 8004D74C 8484E1E2 */  lh         $a0, %lo(D_8005E1E2)($a0)
/* 13F550 8004D750 000418C0 */  sll        $v1, $a0, 3
/* 13F554 8004D754 00641823 */  subu       $v1, $v1, $a0
/* 13F558 8004D758 00031880 */  sll        $v1, $v1, 2
/* 13F55C 8004D75C 3C048006 */  lui        $a0, %hi(D_8005CEF4)
/* 13F560 8004D760 00832021 */  addu       $a0, $a0, $v1
/* 13F564 8004D764 8C84CEF4 */  lw         $a0, %lo(D_8005CEF4)($a0)
/* 13F568 8004D768 3C038006 */  lui        $v1, %hi(D_8005E0C2)
/* 13F56C 8004D76C 9463E0C2 */  lhu        $v1, %lo(D_8005E0C2)($v1)
/* 13F570 8004D770 3C01C2B4 */  lui        $at, 0xc2b4
/* 13F574 8004D774 44810000 */  mtc1       $at, $f0
/* 13F578 8004D778 000318C0 */  sll        $v1, $v1, 3
/* 13F57C 8004D77C AC440004 */  sw         $a0, 4($v0)
/* 13F580 8004D780 3C018005 */  lui        $at, %hi(D_80052FAE)
/* 13F584 8004D784 00230821 */  addu       $at, $at, $v1
/* 13F588 8004D788 94232FAE */  lhu        $v1, %lo(D_80052FAE)($at)
/* 13F58C 8004D78C 24050008 */  addiu      $a1, $zero, 8
/* 13F590 8004D790 00402021 */  addu       $a0, $v0, $zero
/* 13F594 8004D794 AC800010 */  sw         $zero, 0x10($a0)
/* 13F598 8004D798 AC800044 */  sw         $zero, 0x44($a0)
/* 13F59C 8004D79C E4800054 */  swc1       $f0, 0x54($a0)
/* 13F5A0 8004D7A0 AC92000C */  sw         $s2, 0xc($a0)
/* 13F5A4 8004D7A4 A49100F2 */  sh         $s1, 0xf2($a0)
/* 13F5A8 8004D7A8 A49100F0 */  sh         $s1, 0xf0($a0)
/* 13F5AC 8004D7AC 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 13F5B0 8004D7B0 AC830008 */   sw        $v1, 8($a0)
/* 13F5B4 8004D7B4 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13F5B8 8004D7B8 24150003 */   addiu     $s5, $zero, 3
/* 13F5BC 8004D7BC 3C013DF5 */  lui        $at, 0x3df5
/* 13F5C0 8004D7C0 3421C28F */  ori        $at, $at, 0xc28f
/* 13F5C4 8004D7C4 44810000 */  mtc1       $at, $f0
/* 13F5C8 8004D7C8 24030011 */  addiu      $v1, $zero, 0x11
/* 13F5CC 8004D7CC AE020008 */  sw         $v0, 8($s0)
/* 13F5D0 8004D7D0 AC43001C */  sw         $v1, 0x1c($v0)
/* 13F5D4 8004D7D4 240300A1 */  addiu      $v1, $zero, 0xa1
/* 13F5D8 8004D7D8 AC430004 */  sw         $v1, 4($v0)
/* 13F5DC 8004D7DC AC400044 */  sw         $zero, 0x44($v0)
/* 13F5E0 8004D7E0 E440005C */  swc1       $f0, 0x5c($v0)
/* 13F5E4 8004D7E4 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13F5E8 8004D7E8 8E040000 */   lw        $a0, ($s0)
/* 13F5EC 8004D7EC 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13F5F0 8004D7F0 00000000 */   nop
/* 13F5F4 8004D7F4 AE02000C */  sw         $v0, 0xc($s0)
/* 13F5F8 8004D7F8 AC54001C */  sw         $s4, 0x1c($v0)
/* 13F5FC 8004D7FC 86640000 */  lh         $a0, ($s3)
/* 13F600 8004D800 000418C0 */  sll        $v1, $a0, 3
/* 13F604 8004D804 00641823 */  subu       $v1, $v1, $a0
/* 13F608 8004D808 00031880 */  sll        $v1, $v1, 2
/* 13F60C 8004D80C 3C018006 */  lui        $at, %hi(D_8005CEF8)
/* 13F610 8004D810 00230821 */  addu       $at, $at, $v1
/* 13F614 8004D814 8C23CEF8 */  lw         $v1, %lo(D_8005CEF8)($at)
/* 13F618 8004D818 AC430004 */  sw         $v1, 4($v0)
/* 13F61C 8004D81C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13F620 8004D820 8E04000C */   lw        $a0, 0xc($s0)
/* 13F624 8004D824 8E020000 */  lw         $v0, ($s0)
/* 13F628 8004D828 8E03000C */  lw         $v1, 0xc($s0)
/* 13F62C 8004D82C 3C128006 */  lui        $s2, %hi(D_8005D400)
/* 13F630 8004D830 2652D400 */  addiu      $s2, $s2, %lo(D_8005D400)
/* 13F634 8004D834 8C440034 */  lw         $a0, 0x34($v0)
/* 13F638 8004D838 8C660034 */  lw         $a2, 0x34($v1)
/* 13F63C 8004D83C 02402821 */  addu       $a1, $s2, $zero
/* 13F640 8004D840 0C02864D */  jal        func_800A1934
/* 13F644 8004D844 02403821 */   addu      $a3, $s2, $zero
/* 13F648 8004D848 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13F64C 8004D84C 00000000 */   nop
/* 13F650 8004D850 AE020010 */  sw         $v0, 0x10($s0)
/* 13F654 8004D854 AC55001C */  sw         $s5, 0x1c($v0)
/* 13F658 8004D858 86640000 */  lh         $a0, ($s3)
/* 13F65C 8004D85C 000418C0 */  sll        $v1, $a0, 3
/* 13F660 8004D860 00641823 */  subu       $v1, $v1, $a0
/* 13F664 8004D864 00031880 */  sll        $v1, $v1, 2
/* 13F668 8004D868 3C018006 */  lui        $at, %hi(D_8005CF00)
/* 13F66C 8004D86C 00230821 */  addu       $at, $at, $v1
/* 13F670 8004D870 8C23CF00 */  lw         $v1, %lo(D_8005CF00)($at)
/* 13F674 8004D874 AC430004 */  sw         $v1, 4($v0)
/* 13F678 8004D878 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13F67C 8004D87C 8E040010 */   lw        $a0, 0x10($s0)
/* 13F680 8004D880 8E020000 */  lw         $v0, ($s0)
/* 13F684 8004D884 8E050010 */  lw         $a1, 0x10($s0)
/* 13F688 8004D888 86630000 */  lh         $v1, ($s3)
/* 13F68C 8004D88C 8C440034 */  lw         $a0, 0x34($v0)
/* 13F690 8004D890 8CA60034 */  lw         $a2, 0x34($a1)
/* 13F694 8004D894 000310C0 */  sll        $v0, $v1, 3
/* 13F698 8004D898 00431023 */  subu       $v0, $v0, $v1
/* 13F69C 8004D89C 00021080 */  sll        $v0, $v0, 2
/* 13F6A0 8004D8A0 3C078006 */  lui        $a3, %hi(D_8005CF0C)
/* 13F6A4 8004D8A4 00E23821 */  addu       $a3, $a3, $v0
/* 13F6A8 8004D8A8 8CE7CF0C */  lw         $a3, %lo(D_8005CF0C)($a3)
/* 13F6AC 8004D8AC 3C118006 */  lui        $s1, %hi(D_8005D408)
/* 13F6B0 8004D8B0 2631D408 */  addiu      $s1, $s1, %lo(D_8005D408)
/* 13F6B4 8004D8B4 0C02864D */  jal        func_800A1934
/* 13F6B8 8004D8B8 02202821 */   addu      $a1, $s1, $zero
/* 13F6BC 8004D8BC 8E020000 */  lw         $v0, ($s0)
/* 13F6C0 8004D8C0 8C440034 */  lw         $a0, 0x34($v0)
/* 13F6C4 8004D8C4 02202821 */  addu       $a1, $s1, $zero
/* 13F6C8 8004D8C8 0C0286A4 */  jal        func_800A1A90
/* 13F6CC 8004D8CC 00003021 */   addu      $a2, $zero, $zero
/* 13F6D0 8004D8D0 8E040004 */  lw         $a0, 4($s0)
/* 13F6D4 8004D8D4 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13F6D8 8004D8D8 00000000 */   nop
/* 13F6DC 8004D8DC 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13F6E0 8004D8E0 00000000 */   nop
/* 13F6E4 8004D8E4 AE020014 */  sw         $v0, 0x14($s0)
/* 13F6E8 8004D8E8 AC54001C */  sw         $s4, 0x1c($v0)
/* 13F6EC 8004D8EC 3C048006 */  lui        $a0, %hi(D_8005E1E2)
/* 13F6F0 8004D8F0 8484E1E2 */  lh         $a0, %lo(D_8005E1E2)($a0)
/* 13F6F4 8004D8F4 000418C0 */  sll        $v1, $a0, 3
/* 13F6F8 8004D8F8 00641823 */  subu       $v1, $v1, $a0
/* 13F6FC 8004D8FC 00031880 */  sll        $v1, $v1, 2
/* 13F700 8004D900 3C018006 */  lui        $at, %hi(D_8005CEF8)
/* 13F704 8004D904 00230821 */  addu       $at, $at, $v1
/* 13F708 8004D908 8C23CEF8 */  lw         $v1, %lo(D_8005CEF8)($at)
/* 13F70C 8004D90C AC430004 */  sw         $v1, 4($v0)
/* 13F710 8004D910 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13F714 8004D914 8E040014 */   lw        $a0, 0x14($s0)
/* 13F718 8004D918 8E020004 */  lw         $v0, 4($s0)
/* 13F71C 8004D91C 8E030014 */  lw         $v1, 0x14($s0)
/* 13F720 8004D920 8C440034 */  lw         $a0, 0x34($v0)
/* 13F724 8004D924 8C660034 */  lw         $a2, 0x34($v1)
/* 13F728 8004D928 02402821 */  addu       $a1, $s2, $zero
/* 13F72C 8004D92C 0C02864D */  jal        func_800A1934
/* 13F730 8004D930 00A03821 */   addu      $a3, $a1, $zero
/* 13F734 8004D934 0C00AEC4 */  jal        func_8002BB10_11D910
/* 13F738 8004D938 00000000 */   nop
/* 13F73C 8004D93C AE020018 */  sw         $v0, 0x18($s0)
/* 13F740 8004D940 AC55001C */  sw         $s5, 0x1c($v0)
/* 13F744 8004D944 3C048006 */  lui        $a0, %hi(D_8005E1E2)
/* 13F748 8004D948 8484E1E2 */  lh         $a0, %lo(D_8005E1E2)($a0)
/* 13F74C 8004D94C 000418C0 */  sll        $v1, $a0, 3
/* 13F750 8004D950 00641823 */  subu       $v1, $v1, $a0
/* 13F754 8004D954 00031880 */  sll        $v1, $v1, 2
/* 13F758 8004D958 3C018006 */  lui        $at, %hi(D_8005CF00)
/* 13F75C 8004D95C 00230821 */  addu       $at, $at, $v1
/* 13F760 8004D960 8C23CF00 */  lw         $v1, %lo(D_8005CF00)($at)
/* 13F764 8004D964 AC430004 */  sw         $v1, 4($v0)
/* 13F768 8004D968 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13F76C 8004D96C 8E040018 */   lw        $a0, 0x18($s0)
/* 13F770 8004D970 8E020004 */  lw         $v0, 4($s0)
/* 13F774 8004D974 8E050018 */  lw         $a1, 0x18($s0)
/* 13F778 8004D978 3C038006 */  lui        $v1, %hi(D_8005E1E2)
/* 13F77C 8004D97C 8463E1E2 */  lh         $v1, %lo(D_8005E1E2)($v1)
/* 13F780 8004D980 8C440034 */  lw         $a0, 0x34($v0)
/* 13F784 8004D984 8CA60034 */  lw         $a2, 0x34($a1)
/* 13F788 8004D988 000310C0 */  sll        $v0, $v1, 3
/* 13F78C 8004D98C 00431023 */  subu       $v0, $v0, $v1
/* 13F790 8004D990 00021080 */  sll        $v0, $v0, 2
/* 13F794 8004D994 3C078006 */  lui        $a3, %hi(D_8005CF0C)
/* 13F798 8004D998 00E23821 */  addu       $a3, $a3, $v0
/* 13F79C 8004D99C 8CE7CF0C */  lw         $a3, %lo(D_8005CF0C)($a3)
/* 13F7A0 8004D9A0 0C02864D */  jal        func_800A1934
/* 13F7A4 8004D9A4 02202821 */   addu      $a1, $s1, $zero
/* 13F7A8 8004D9A8 8E020004 */  lw         $v0, 4($s0)
/* 13F7AC 8004D9AC 8C440034 */  lw         $a0, 0x34($v0)
/* 13F7B0 8004D9B0 02202821 */  addu       $a1, $s1, $zero
/* 13F7B4 8004D9B4 0C0286A4 */  jal        func_800A1A90
/* 13F7B8 8004D9B8 00003021 */   addu      $a2, $zero, $zero
/* 13F7BC 8004D9BC 02001021 */  addu       $v0, $s0, $zero
/* 13F7C0 8004D9C0 A4400026 */  sh         $zero, 0x26($v0)
/* 13F7C4 8004D9C4 A4400028 */  sh         $zero, 0x28($v0)
/* 13F7C8 8004D9C8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 13F7CC 8004D9CC 8FB50024 */  lw         $s5, 0x24($sp)
/* 13F7D0 8004D9D0 8FB40020 */  lw         $s4, 0x20($sp)
/* 13F7D4 8004D9D4 8FB3001C */  lw         $s3, 0x1c($sp)
/* 13F7D8 8004D9D8 8FB20018 */  lw         $s2, 0x18($sp)
/* 13F7DC 8004D9DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 13F7E0 8004D9E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 13F7E4 8004D9E4 03E00008 */  jr         $ra
/* 13F7E8 8004D9E8 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8004D9EC_13F7EC
/* 13F7EC 8004D9EC 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 13F7F0 8004D9F0 AFB00030 */  sw         $s0, 0x30($sp)
/* 13F7F4 8004D9F4 00808021 */  addu       $s0, $a0, $zero
/* 13F7F8 8004D9F8 AFB20038 */  sw         $s2, 0x38($sp)
/* 13F7FC 8004D9FC 00A09021 */  addu       $s2, $a1, $zero
/* 13F800 8004DA00 AFBF003C */  sw         $ra, 0x3c($sp)
/* 13F804 8004DA04 0C00ACDB */  jal        func_8002B36C_11D16C
/* 13F808 8004DA08 AFB10034 */   sw        $s1, 0x34($sp)
/* 13F80C 8004DA0C 24040008 */  addiu      $a0, $zero, 8
/* 13F810 8004DA10 00822023 */  subu       $a0, $a0, $v0
/* 13F814 8004DA14 0C02591A */  jal        func_80096468
/* 13F818 8004DA18 3084FFFF */   andi      $a0, $a0, 0xffff
/* 13F81C 8004DA1C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 13F820 8004DA20 14400007 */  bnez       $v0, .L8004DA40
/* 13F824 8004DA24 00000000 */   nop
/* 13F828 8004DA28 3C028006 */  lui        $v0, %hi(D_8005E0C0)
/* 13F82C 8004DA2C 8442E0C0 */  lh         $v0, %lo(D_8005E0C0)($v0)
/* 13F830 8004DA30 00402021 */  addu       $a0, $v0, $zero
/* 13F834 8004DA34 2842FFEE */  slti       $v0, $v0, -0x12
/* 13F838 8004DA38 10400040 */  beqz       $v0, .L8004DB3C
/* 13F83C 8004DA3C 3242FFFF */   andi      $v0, $s2, 0xffff
.L8004DA40:
/* 13F840 8004DA40 9602001C */  lhu        $v0, 0x1c($s0)
/* 13F844 8004DA44 24420001 */  addiu      $v0, $v0, 1
/* 13F848 8004DA48 A602001C */  sh         $v0, 0x1c($s0)
/* 13F84C 8004DA4C 3242FFFF */  andi       $v0, $s2, 0xffff
/* 13F850 8004DA50 00028840 */  sll        $s1, $v0, 1
/* 13F854 8004DA54 3C038006 */  lui        $v1, %hi(D_8005E12C)
/* 13F858 8004DA58 00711821 */  addu       $v1, $v1, $s1
/* 13F85C 8004DA5C 8463E12C */  lh         $v1, %lo(D_8005E12C)($v1)
/* 13F860 8004DA60 96070026 */  lhu        $a3, 0x26($s0)
/* 13F864 8004DA64 00031080 */  sll        $v0, $v1, 2
/* 13F868 8004DA68 00431021 */  addu       $v0, $v0, $v1
/* 13F86C 8004DA6C 000210C0 */  sll        $v0, $v0, 3
/* 13F870 8004DA70 3C048015 */  lui        $a0, %hi(D_8014CF92)
/* 13F874 8004DA74 00822021 */  addu       $a0, $a0, $v0
/* 13F878 8004DA78 9484CF92 */  lhu        $a0, %lo(D_8014CF92)($a0)
/* 13F87C 8004DA7C 34058000 */  ori        $a1, $zero, 0x8000
/* 13F880 8004DA80 0C00B48F */  jal        func_8002D23C_11F03C
/* 13F884 8004DA84 24060004 */   addiu     $a2, $zero, 4
/* 13F888 8004DA88 3042FFFF */  andi       $v0, $v0, 0xffff
/* 13F88C 8004DA8C 10400015 */  beqz       $v0, .L8004DAE4
/* 13F890 8004DA90 00000000 */   nop
/* 13F894 8004DA94 96020026 */  lhu        $v0, 0x26($s0)
/* 13F898 8004DA98 3C048006 */  lui        $a0, %hi(D_8005E0C0)
/* 13F89C 8004DA9C 8484E0C0 */  lh         $a0, %lo(D_8005E0C0)($a0)
/* 13F8A0 8004DAA0 9603001C */  lhu        $v1, 0x1c($s0)
/* 13F8A4 8004DAA4 24420001 */  addiu      $v0, $v0, 1
/* 13F8A8 8004DAA8 A6020026 */  sh         $v0, 0x26($s0)
/* 13F8AC 8004DAAC 00041040 */  sll        $v0, $a0, 1
/* 13F8B0 8004DAB0 3C018005 */  lui        $at, %hi(D_80052EC8)
/* 13F8B4 8004DAB4 00220821 */  addu       $at, $at, $v0
/* 13F8B8 8004DAB8 94222EC8 */  lhu        $v0, %lo(D_80052EC8)($at)
/* 13F8BC 8004DABC 0043102B */  sltu       $v0, $v0, $v1
/* 13F8C0 8004DAC0 54400008 */  bnezl      $v0, .L8004DAE4
/* 13F8C4 8004DAC4 A600001C */   sh        $zero, 0x1c($s0)
/* 13F8C8 8004DAC8 3C028005 */  lui        $v0, %hi(D_80052FCC)
/* 13F8CC 8004DACC 00511021 */  addu       $v0, $v0, $s1
/* 13F8D0 8004DAD0 94422FCC */  lhu        $v0, %lo(D_80052FCC)($v0)
/* 13F8D4 8004DAD4 00821021 */  addu       $v0, $a0, $v0
/* 13F8D8 8004DAD8 3C018006 */  lui        $at, %hi(D_8005E0C0)
/* 13F8DC 8004DADC A422E0C0 */  sh         $v0, %lo(D_8005E0C0)($at)
/* 13F8E0 8004DAE0 A600001C */  sh         $zero, 0x1c($s0)
.L8004DAE4:
/* 13F8E4 8004DAE4 3C048006 */  lui        $a0, %hi(D_8005E0C0)
/* 13F8E8 8004DAE8 8484E0C0 */  lh         $a0, %lo(D_8005E0C0)($a0)
/* 13F8EC 8004DAEC 9602001C */  lhu        $v0, 0x1c($s0)
/* 13F8F0 8004DAF0 00041840 */  sll        $v1, $a0, 1
/* 13F8F4 8004DAF4 3C018005 */  lui        $at, %hi(D_80052F5C)
/* 13F8F8 8004DAF8 00230821 */  addu       $at, $at, $v1
/* 13F8FC 8004DAFC 94232F5C */  lhu        $v1, %lo(D_80052F5C)($at)
/* 13F900 8004DB00 3C058005 */  lui        $a1, %hi(D_80052F5C)
/* 13F904 8004DB04 24A52F5C */  addiu      $a1, $a1, %lo(D_80052F5C)
/* 13F908 8004DB08 0043102B */  sltu       $v0, $v0, $v1
/* 13F90C 8004DB0C 14400019 */  bnez       $v0, .L8004DB74
/* 13F910 8004DB10 3242FFFF */   andi      $v0, $s2, 0xffff
/* 13F914 8004DB14 00021040 */  sll        $v0, $v0, 1
/* 13F918 8004DB18 3C038005 */  lui        $v1, %hi(D_80052FCC)
/* 13F91C 8004DB1C 00621821 */  addu       $v1, $v1, $v0
/* 13F920 8004DB20 94632FCC */  lhu        $v1, %lo(D_80052FCC)($v1)
/* 13F924 8004DB24 00831823 */  subu       $v1, $a0, $v1
/* 13F928 8004DB28 00031400 */  sll        $v0, $v1, 0x10
/* 13F92C 8004DB2C 000213C3 */  sra        $v0, $v0, 0xf
/* 13F930 8004DB30 00451021 */  addu       $v0, $v0, $a1
/* 13F934 8004DB34 080136D9 */  j          .L8004DB64
/* 13F938 8004DB38 94420000 */   lhu       $v0, ($v0)
.L8004DB3C:
/* 13F93C 8004DB3C 00021040 */  sll        $v0, $v0, 1
/* 13F940 8004DB40 3C038005 */  lui        $v1, %hi(D_80052FCC)
/* 13F944 8004DB44 00621821 */  addu       $v1, $v1, $v0
/* 13F948 8004DB48 94632FCC */  lhu        $v1, %lo(D_80052FCC)($v1)
/* 13F94C 8004DB4C 00831823 */  subu       $v1, $a0, $v1
/* 13F950 8004DB50 00031400 */  sll        $v0, $v1, 0x10
/* 13F954 8004DB54 000213C3 */  sra        $v0, $v0, 0xf
/* 13F958 8004DB58 3C018005 */  lui        $at, %hi(D_80052F5C)
/* 13F95C 8004DB5C 00220821 */  addu       $at, $at, $v0
/* 13F960 8004DB60 94222F5C */  lhu        $v0, %lo(D_80052F5C)($at)
.L8004DB64:
/* 13F964 8004DB64 3C018006 */  lui        $at, %hi(D_8005E0C0)
/* 13F968 8004DB68 A423E0C0 */  sh         $v1, %lo(D_8005E0C0)($at)
/* 13F96C 8004DB6C 2442FFFE */  addiu      $v0, $v0, -2
/* 13F970 8004DB70 A602001C */  sh         $v0, 0x1c($s0)
.L8004DB74:
/* 13F974 8004DB74 9602002A */  lhu        $v0, 0x2a($s0)
/* 13F978 8004DB78 2442FFFF */  addiu      $v0, $v0, -1
/* 13F97C 8004DB7C A602002A */  sh         $v0, 0x2a($s0)
/* 13F980 8004DB80 3042FFFF */  andi       $v0, $v0, 0xffff
/* 13F984 8004DB84 14400002 */  bnez       $v0, .L8004DB90
/* 13F988 8004DB88 24020001 */   addiu     $v0, $zero, 1
/* 13F98C 8004DB8C A602002A */  sh         $v0, 0x2a($s0)
.L8004DB90:
/* 13F990 8004DB90 0C02591A */  jal        func_80096468
/* 13F994 8004DB94 9604002A */   lhu       $a0, 0x2a($s0)
/* 13F998 8004DB98 3042FFFF */  andi       $v0, $v0, 0xffff
/* 13F99C 8004DB9C 14400011 */  bnez       $v0, .L8004DBE4
/* 13F9A0 8004DBA0 3242FFFF */   andi      $v0, $s2, 0xffff
/* 13F9A4 8004DBA4 00021040 */  sll        $v0, $v0, 1
/* 13F9A8 8004DBA8 3C038006 */  lui        $v1, %hi(D_8005E0C0)
/* 13F9AC 8004DBAC 9463E0C0 */  lhu        $v1, %lo(D_8005E0C0)($v1)
/* 13F9B0 8004DBB0 3C018005 */  lui        $at, %hi(D_80052FCC)
/* 13F9B4 8004DBB4 00220821 */  addu       $at, $at, $v0
/* 13F9B8 8004DBB8 94222FCC */  lhu        $v0, %lo(D_80052FCC)($at)
/* 13F9BC 8004DBBC 00621823 */  subu       $v1, $v1, $v0
/* 13F9C0 8004DBC0 00031400 */  sll        $v0, $v1, 0x10
/* 13F9C4 8004DBC4 000213C3 */  sra        $v0, $v0, 0xf
/* 13F9C8 8004DBC8 3C018005 */  lui        $at, %hi(D_80052F5C)
/* 13F9CC 8004DBCC 00220821 */  addu       $at, $at, $v0
/* 13F9D0 8004DBD0 94222F5C */  lhu        $v0, %lo(D_80052F5C)($at)
/* 13F9D4 8004DBD4 3C018006 */  lui        $at, %hi(D_8005E0C0)
/* 13F9D8 8004DBD8 A423E0C0 */  sh         $v1, %lo(D_8005E0C0)($at)
/* 13F9DC 8004DBDC 2442FFFE */  addiu      $v0, $v0, -2
/* 13F9E0 8004DBE0 A602001C */  sh         $v0, 0x1c($s0)
.L8004DBE4:
/* 13F9E4 8004DBE4 8FBF003C */  lw         $ra, 0x3c($sp)
/* 13F9E8 8004DBE8 8FB20038 */  lw         $s2, 0x38($sp)
/* 13F9EC 8004DBEC 8FB10034 */  lw         $s1, 0x34($sp)
/* 13F9F0 8004DBF0 8FB00030 */  lw         $s0, 0x30($sp)
/* 13F9F4 8004DBF4 03E00008 */  jr         $ra
/* 13F9F8 8004DBF8 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004DBFC_13F9FC
/* 13F9FC 8004DBFC 3C038006 */  lui        $v1, %hi(D_8005E0C0)
/* 13FA00 8004DC00 8463E0C0 */  lh         $v1, %lo(D_8005E0C0)($v1)
/* 13FA04 8004DC04 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 13FA08 8004DC08 AFB3001C */  sw         $s3, 0x1c($sp)
/* 13FA0C 8004DC0C 00809821 */  addu       $s3, $a0, $zero
/* 13FA10 8004DC10 AFB40020 */  sw         $s4, 0x20($sp)
/* 13FA14 8004DC14 0000A021 */  addu       $s4, $zero, $zero
/* 13FA18 8004DC18 AFBF0024 */  sw         $ra, 0x24($sp)
/* 13FA1C 8004DC1C AFB20018 */  sw         $s2, 0x18($sp)
/* 13FA20 8004DC20 AFB10014 */  sw         $s1, 0x14($sp)
/* 13FA24 8004DC24 28620024 */  slti       $v0, $v1, 0x24
/* 13FA28 8004DC28 14400003 */  bnez       $v0, .L8004DC38
/* 13FA2C 8004DC2C AFB00010 */   sw        $s0, 0x10($sp)
/* 13FA30 8004DC30 08013712 */  j          .L8004DC48
/* 13FA34 8004DC34 24020001 */   addiu     $v0, $zero, 1
.L8004DC38:
/* 13FA38 8004DC38 2862FFDD */  slti       $v0, $v1, -0x23
/* 13FA3C 8004DC3C 14400002 */  bnez       $v0, .L8004DC48
/* 13FA40 8004DC40 2402FFFF */   addiu     $v0, $zero, -1
/* 13FA44 8004DC44 00001021 */  addu       $v0, $zero, $zero
.L8004DC48:
/* 13FA48 8004DC48 00021400 */  sll        $v0, $v0, 0x10
/* 13FA4C 8004DC4C 144000A1 */  bnez       $v0, .L8004DED4
/* 13FA50 8004DC50 00000000 */   nop
/* 13FA54 8004DC54 96620020 */  lhu        $v0, 0x20($s3)
/* 13FA58 8004DC58 10400003 */  beqz       $v0, .L8004DC68
/* 13FA5C 8004DC5C 2442FFFF */   addiu     $v0, $v0, -1
/* 13FA60 8004DC60 0801378E */  j          .L8004DE38
/* 13FA64 8004DC64 A6620020 */   sh        $v0, 0x20($s3)
.L8004DC68:
/* 13FA68 8004DC68 96620024 */  lhu        $v0, 0x24($s3)
/* 13FA6C 8004DC6C 14400011 */  bnez       $v0, .L8004DCB4
/* 13FA70 8004DC70 2442FFFF */   addiu     $v0, $v0, -1
/* 13FA74 8004DC74 3C028006 */  lui        $v0, %hi(D_8005E12C)
/* 13FA78 8004DC78 8442E12C */  lh         $v0, %lo(D_8005E12C)($v0)
/* 13FA7C 8004DC7C 14400004 */  bnez       $v0, .L8004DC90
/* 13FA80 8004DC80 00002021 */   addu      $a0, $zero, $zero
/* 13FA84 8004DC84 24050040 */  addiu      $a1, $zero, 0x40
/* 13FA88 8004DC88 0C026B15 */  jal        func_8009AC54
/* 13FA8C 8004DC8C 240603E7 */   addiu     $a2, $zero, 0x3e7
.L8004DC90:
/* 13FA90 8004DC90 3C028006 */  lui        $v0, %hi(D_8005E12E)
/* 13FA94 8004DC94 8442E12E */  lh         $v0, %lo(D_8005E12E)($v0)
/* 13FA98 8004DC98 14400006 */  bnez       $v0, .L8004DCB4
/* 13FA9C 8004DC9C 24020014 */   addiu     $v0, $zero, 0x14
/* 13FAA0 8004DCA0 00002021 */  addu       $a0, $zero, $zero
/* 13FAA4 8004DCA4 24050040 */  addiu      $a1, $zero, 0x40
/* 13FAA8 8004DCA8 0C026B15 */  jal        func_8009AC54
/* 13FAAC 8004DCAC 240603E7 */   addiu     $a2, $zero, 0x3e7
/* 13FAB0 8004DCB0 24020014 */  addiu      $v0, $zero, 0x14
.L8004DCB4:
/* 13FAB4 8004DCB4 A6620024 */  sh         $v0, 0x24($s3)
/* 13FAB8 8004DCB8 9662001E */  lhu        $v0, 0x1e($s3)
/* 13FABC 8004DCBC 24420001 */  addiu      $v0, $v0, 1
/* 13FAC0 8004DCC0 30420001 */  andi       $v0, $v0, 1
/* 13FAC4 8004DCC4 A662001E */  sh         $v0, 0x1e($s3)
/* 13FAC8 8004DCC8 3C038006 */  lui        $v1, %hi(D_8005E12C)
/* 13FACC 8004DCCC 8463E12C */  lh         $v1, %lo(D_8005E12C)($v1)
/* 13FAD0 8004DCD0 2404FFFF */  addiu      $a0, $zero, -1
/* 13FAD4 8004DCD4 1464001A */  bne        $v1, $a0, .L8004DD40
/* 13FAD8 8004DCD8 00000000 */   nop
/* 13FADC 8004DCDC 3C028006 */  lui        $v0, %hi(D_8005E12E)
/* 13FAE0 8004DCE0 8442E12E */  lh         $v0, %lo(D_8005E12E)($v0)
/* 13FAE4 8004DCE4 14430051 */  bne        $v0, $v1, .L8004DE2C
/* 13FAE8 8004DCE8 02602021 */   addu      $a0, $s3, $zero
/* 13FAEC 8004DCEC 0C02591A */  jal        func_80096468
/* 13FAF0 8004DCF0 24040003 */   addiu     $a0, $zero, 3
/* 13FAF4 8004DCF4 3043FFFF */  andi       $v1, $v0, 0xffff
/* 13FAF8 8004DCF8 10600005 */  beqz       $v1, .L8004DD10
/* 13FAFC 8004DCFC 24020001 */   addiu     $v0, $zero, 1
/* 13FB00 8004DD00 10620009 */  beq        $v1, $v0, .L8004DD28
/* 13FB04 8004DD04 00000000 */   nop
/* 13FB08 8004DD08 0801378E */  j          .L8004DE38
/* 13FB0C 8004DD0C 00000000 */   nop
.L8004DD10:
/* 13FB10 8004DD10 3C028006 */  lui        $v0, %hi(D_8005E0C0)
/* 13FB14 8004DD14 9442E0C0 */  lhu        $v0, %lo(D_8005E0C0)($v0)
/* 13FB18 8004DD18 24420003 */  addiu      $v0, $v0, 3
/* 13FB1C 8004DD1C 3C018006 */  lui        $at, %hi(D_8005E0C0)
/* 13FB20 8004DD20 0801378E */  j          .L8004DE38
/* 13FB24 8004DD24 A422E0C0 */   sh        $v0, %lo(D_8005E0C0)($at)
.L8004DD28:
/* 13FB28 8004DD28 3C028006 */  lui        $v0, %hi(D_8005E0C0)
/* 13FB2C 8004DD2C 9442E0C0 */  lhu        $v0, %lo(D_8005E0C0)($v0)
/* 13FB30 8004DD30 2442FFFD */  addiu      $v0, $v0, -3
/* 13FB34 8004DD34 3C018006 */  lui        $at, %hi(D_8005E0C0)
/* 13FB38 8004DD38 0801378E */  j          .L8004DE38
/* 13FB3C 8004DD3C A422E0C0 */   sh        $v0, %lo(D_8005E0C0)($at)
.L8004DD40:
/* 13FB40 8004DD40 3C028006 */  lui        $v0, %hi(D_8005E12E)
/* 13FB44 8004DD44 8442E12E */  lh         $v0, %lo(D_8005E12E)($v0)
/* 13FB48 8004DD48 10440034 */  beq        $v0, $a0, .L8004DE1C
/* 13FB4C 8004DD4C 34058000 */   ori       $a1, $zero, 0x8000
/* 13FB50 8004DD50 9662001C */  lhu        $v0, 0x1c($s3)
/* 13FB54 8004DD54 24420001 */  addiu      $v0, $v0, 1
/* 13FB58 8004DD58 A662001C */  sh         $v0, 0x1c($s3)
/* 13FB5C 8004DD5C 3C038006 */  lui        $v1, %hi(D_8005E12C)
/* 13FB60 8004DD60 8463E12C */  lh         $v1, %lo(D_8005E12C)($v1)
/* 13FB64 8004DD64 96670026 */  lhu        $a3, 0x26($s3)
/* 13FB68 8004DD68 00031080 */  sll        $v0, $v1, 2
/* 13FB6C 8004DD6C 00431021 */  addu       $v0, $v0, $v1
/* 13FB70 8004DD70 000210C0 */  sll        $v0, $v0, 3
/* 13FB74 8004DD74 3C048015 */  lui        $a0, %hi(D_8014CF92)
/* 13FB78 8004DD78 00822021 */  addu       $a0, $a0, $v0
/* 13FB7C 8004DD7C 9484CF92 */  lhu        $a0, %lo(D_8014CF92)($a0)
/* 13FB80 8004DD80 0C00B48F */  jal        func_8002D23C_11F03C
/* 13FB84 8004DD84 24060004 */   addiu     $a2, $zero, 4
/* 13FB88 8004DD88 3042FFFF */  andi       $v0, $v0, 0xffff
/* 13FB8C 8004DD8C 1040000A */  beqz       $v0, .L8004DDB8
/* 13FB90 8004DD90 00000000 */   nop
/* 13FB94 8004DD94 96620026 */  lhu        $v0, 0x26($s3)
/* 13FB98 8004DD98 3C038006 */  lui        $v1, %hi(D_8005E0C0)
/* 13FB9C 8004DD9C 9463E0C0 */  lhu        $v1, %lo(D_8005E0C0)($v1)
/* 13FBA0 8004DDA0 A660001C */  sh         $zero, 0x1c($s3)
/* 13FBA4 8004DDA4 24420001 */  addiu      $v0, $v0, 1
/* 13FBA8 8004DDA8 24630003 */  addiu      $v1, $v1, 3
/* 13FBAC 8004DDAC A6620026 */  sh         $v0, 0x26($s3)
/* 13FBB0 8004DDB0 3C018006 */  lui        $at, %hi(D_8005E0C0)
/* 13FBB4 8004DDB4 A423E0C0 */  sh         $v1, %lo(D_8005E0C0)($at)
.L8004DDB8:
/* 13FBB8 8004DDB8 3C028006 */  lui        $v0, %hi(D_8005E12E)
/* 13FBBC 8004DDBC 8442E12E */  lh         $v0, %lo(D_8005E12E)($v0)
/* 13FBC0 8004DDC0 96670028 */  lhu        $a3, 0x28($s3)
/* 13FBC4 8004DDC4 00021880 */  sll        $v1, $v0, 2
/* 13FBC8 8004DDC8 00621821 */  addu       $v1, $v1, $v0
/* 13FBCC 8004DDCC 000318C0 */  sll        $v1, $v1, 3
/* 13FBD0 8004DDD0 3C048015 */  lui        $a0, %hi(D_8014CF92)
/* 13FBD4 8004DDD4 00832021 */  addu       $a0, $a0, $v1
/* 13FBD8 8004DDD8 9484CF92 */  lhu        $a0, %lo(D_8014CF92)($a0)
/* 13FBDC 8004DDDC 34058000 */  ori        $a1, $zero, 0x8000
/* 13FBE0 8004DDE0 0C00B48F */  jal        func_8002D23C_11F03C
/* 13FBE4 8004DDE4 24060004 */   addiu     $a2, $zero, 4
/* 13FBE8 8004DDE8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 13FBEC 8004DDEC 10400012 */  beqz       $v0, .L8004DE38
/* 13FBF0 8004DDF0 00000000 */   nop
/* 13FBF4 8004DDF4 96620028 */  lhu        $v0, 0x28($s3)
/* 13FBF8 8004DDF8 3C038006 */  lui        $v1, %hi(D_8005E0C0)
/* 13FBFC 8004DDFC 9463E0C0 */  lhu        $v1, %lo(D_8005E0C0)($v1)
/* 13FC00 8004DE00 A660001C */  sh         $zero, 0x1c($s3)
/* 13FC04 8004DE04 24420001 */  addiu      $v0, $v0, 1
/* 13FC08 8004DE08 2463FFFD */  addiu      $v1, $v1, -3
/* 13FC0C 8004DE0C A6620028 */  sh         $v0, 0x28($s3)
/* 13FC10 8004DE10 3C018006 */  lui        $at, %hi(D_8005E0C0)
/* 13FC14 8004DE14 0801378E */  j          .L8004DE38
/* 13FC18 8004DE18 A423E0C0 */   sh        $v1, %lo(D_8005E0C0)($at)
.L8004DE1C:
/* 13FC1C 8004DE1C 10620003 */  beq        $v1, $v0, .L8004DE2C
/* 13FC20 8004DE20 02602021 */   addu      $a0, $s3, $zero
/* 13FC24 8004DE24 0801378C */  j          .L8004DE30
/* 13FC28 8004DE28 00002821 */   addu      $a1, $zero, $zero
.L8004DE2C:
/* 13FC2C 8004DE2C 24050001 */  addiu      $a1, $zero, 1
.L8004DE30:
/* 13FC30 8004DE30 0C01367B */  jal        func_8004D9EC_13F7EC
/* 13FC34 8004DE34 00000000 */   nop
.L8004DE38:
/* 13FC38 8004DE38 3C038006 */  lui        $v1, %hi(D_8005E13C)
/* 13FC3C 8004DE3C 9463E13C */  lhu        $v1, %lo(D_8005E13C)($v1)
/* 13FC40 8004DE40 24020001 */  addiu      $v0, $zero, 1
/* 13FC44 8004DE44 14620011 */  bne        $v1, $v0, .L8004DE8C
/* 13FC48 8004DE48 00000000 */   nop
/* 13FC4C 8004DE4C 3C028006 */  lui        $v0, %hi(D_8005E0C0)
/* 13FC50 8004DE50 8442E0C0 */  lh         $v0, %lo(D_8005E0C0)($v0)
/* 13FC54 8004DE54 8E650000 */  lw         $a1, ($s3)
/* 13FC58 8004DE58 24430024 */  addiu      $v1, $v0, 0x24
/* 13FC5C 8004DE5C 04610002 */  bgez       $v1, .L8004DE68
/* 13FC60 8004DE60 00602021 */   addu      $a0, $v1, $zero
/* 13FC64 8004DE64 24440027 */  addiu      $a0, $v0, 0x27
.L8004DE68:
/* 13FC68 8004DE68 9662001E */  lhu        $v0, 0x1e($s3)
/* 13FC6C 8004DE6C 00042083 */  sra        $a0, $a0, 2
/* 13FC70 8004DE70 00821021 */  addu       $v0, $a0, $v0
/* 13FC74 8004DE74 ACA20010 */  sw         $v0, 0x10($a1)
/* 13FC78 8004DE78 8E650004 */  lw         $a1, 4($s3)
/* 13FC7C 8004DE7C 9662001E */  lhu        $v0, 0x1e($s3)
/* 13FC80 8004DE80 00821021 */  addu       $v0, $a0, $v0
/* 13FC84 8004DE84 08013856 */  j          .L8004E158
/* 13FC88 8004DE88 ACA20010 */   sw        $v0, 0x10($a1)
.L8004DE8C:
/* 13FC8C 8004DE8C 3C058006 */  lui        $a1, %hi(D_8005E0C0)
/* 13FC90 8004DE90 84A5E0C0 */  lh         $a1, %lo(D_8005E0C0)($a1)
/* 13FC94 8004DE94 9662001E */  lhu        $v0, 0x1e($s3)
/* 13FC98 8004DE98 8E660000 */  lw         $a2, ($s3)
/* 13FC9C 8004DE9C 24A30024 */  addiu      $v1, $a1, 0x24
/* 13FCA0 8004DEA0 00602021 */  addu       $a0, $v1, $zero
/* 13FCA4 8004DEA4 04610002 */  bgez       $v1, .L8004DEB0
/* 13FCA8 8004DEA8 24420013 */   addiu     $v0, $v0, 0x13
/* 13FCAC 8004DEAC 24A40027 */  addiu      $a0, $a1, 0x27
.L8004DEB0:
/* 13FCB0 8004DEB0 00042883 */  sra        $a1, $a0, 2
/* 13FCB4 8004DEB4 00451023 */  subu       $v0, $v0, $a1
/* 13FCB8 8004DEB8 ACC20010 */  sw         $v0, 0x10($a2)
/* 13FCBC 8004DEBC 9662001E */  lhu        $v0, 0x1e($s3)
/* 13FCC0 8004DEC0 8E640004 */  lw         $a0, 4($s3)
/* 13FCC4 8004DEC4 24420013 */  addiu      $v0, $v0, 0x13
/* 13FCC8 8004DEC8 00451023 */  subu       $v0, $v0, $a1
/* 13FCCC 8004DECC 08013856 */  j          .L8004E158
/* 13FCD0 8004DED0 AC820010 */   sw        $v0, 0x10($a0)
.L8004DED4:
/* 13FCD4 8004DED4 96620022 */  lhu        $v0, 0x22($s3)
/* 13FCD8 8004DED8 14400094 */  bnez       $v0, .L8004E12C
/* 13FCDC 8004DEDC 00000000 */   nop
/* 13FCE0 8004DEE0 0C026B46 */  jal        func_8009AD18
/* 13FCE4 8004DEE4 00000000 */   nop
/* 13FCE8 8004DEE8 3C028006 */  lui        $v0, %hi(D_8005E0C0)
/* 13FCEC 8004DEEC 8442E0C0 */  lh         $v0, %lo(D_8005E0C0)($v0)
/* 13FCF0 8004DEF0 18400049 */  blez       $v0, .L8004E018
/* 13FCF4 8004DEF4 24020001 */   addiu     $v0, $zero, 1
/* 13FCF8 8004DEF8 3C038006 */  lui        $v1, %hi(D_8005E13C)
/* 13FCFC 8004DEFC 9463E13C */  lhu        $v1, %lo(D_8005E13C)($v1)
/* 13FD00 8004DF00 14620018 */  bne        $v1, $v0, .L8004DF64
/* 13FD04 8004DF04 00000000 */   nop
/* 13FD08 8004DF08 3C01423C */  lui        $at, 0x423c
/* 13FD0C 8004DF0C 44810000 */  mtc1       $at, $f0
/* 13FD10 8004DF10 3C01C100 */  lui        $at, 0xc100
/* 13FD14 8004DF14 44811000 */  mtc1       $at, $f2
/* 13FD18 8004DF18 3C01C1C0 */  lui        $at, 0xc1c0
/* 13FD1C 8004DF1C 44812000 */  mtc1       $at, $f4
/* 13FD20 8004DF20 3C01C28A */  lui        $at, 0xc28a
/* 13FD24 8004DF24 44813000 */  mtc1       $at, $f6
/* 13FD28 8004DF28 3C018015 */  lui        $at, %hi(D_8014A064)
/* 13FD2C 8004DF2C AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 13FD30 8004DF30 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 13FD34 8004DF34 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 13FD38 8004DF38 3C018015 */  lui        $at, %hi(D_8014A084)
/* 13FD3C 8004DF3C AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 13FD40 8004DF40 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13FD44 8004DF44 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 13FD48 8004DF48 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 13FD4C 8004DF4C E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 13FD50 8004DF50 3C018015 */  lui        $at, %hi(D_8014A080)
/* 13FD54 8004DF54 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* 13FD58 8004DF58 3C018015 */  lui        $at, %hi(D_8014A088)
/* 13FD5C 8004DF5C 080137F1 */  j          .L8004DFC4
/* 13FD60 8004DF60 E426A088 */   swc1      $f6, %lo(D_8014A088)($at)
.L8004DF64:
/* 13FD64 8004DF64 3C01C170 */  lui        $at, 0xc170
/* 13FD68 8004DF68 44810000 */  mtc1       $at, $f0
/* 13FD6C 8004DF6C 3C014244 */  lui        $at, 0x4244
/* 13FD70 8004DF70 44811000 */  mtc1       $at, $f2
/* 13FD74 8004DF74 3C01C100 */  lui        $at, 0xc100
/* 13FD78 8004DF78 44812000 */  mtc1       $at, $f4
/* 13FD7C 8004DF7C 3C01C210 */  lui        $at, 0xc210
/* 13FD80 8004DF80 44813000 */  mtc1       $at, $f6
/* 13FD84 8004DF84 3C01C284 */  lui        $at, 0xc284
/* 13FD88 8004DF88 44814000 */  mtc1       $at, $f8
/* 13FD8C 8004DF8C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 13FD90 8004DF90 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 13FD94 8004DF94 3C018015 */  lui        $at, %hi(D_8014A084)
/* 13FD98 8004DF98 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 13FD9C 8004DF9C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 13FDA0 8004DFA0 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 13FDA4 8004DFA4 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13FDA8 8004DFA8 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 13FDAC 8004DFAC 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 13FDB0 8004DFB0 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* 13FDB4 8004DFB4 3C018015 */  lui        $at, %hi(D_8014A080)
/* 13FDB8 8004DFB8 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 13FDBC 8004DFBC 3C018015 */  lui        $at, %hi(D_8014A088)
/* 13FDC0 8004DFC0 E428A088 */  swc1       $f8, %lo(D_8014A088)($at)
.L8004DFC4:
/* 13FDC4 8004DFC4 3C028006 */  lui        $v0, %hi(D_8005E13C)
/* 13FDC8 8004DFC8 9442E13C */  lhu        $v0, %lo(D_8005E13C)($v0)
/* 13FDCC 8004DFCC 8E640000 */  lw         $a0, ($s3)
/* 13FDD0 8004DFD0 000210C0 */  sll        $v0, $v0, 3
/* 13FDD4 8004DFD4 3C038005 */  lui        $v1, %hi(D_80052FB0)
/* 13FDD8 8004DFD8 00621821 */  addu       $v1, $v1, $v0
/* 13FDDC 8004DFDC 94632FB0 */  lhu        $v1, %lo(D_80052FB0)($v1)
/* 13FDE0 8004DFE0 3C028006 */  lui        $v0, %hi(D_8005E0C2)
/* 13FDE4 8004DFE4 9442E0C2 */  lhu        $v0, %lo(D_8005E0C2)($v0)
/* 13FDE8 8004DFE8 AC830008 */  sw         $v1, 8($a0)
/* 13FDEC 8004DFEC 8E630004 */  lw         $v1, 4($s3)
/* 13FDF0 8004DFF0 000210C0 */  sll        $v0, $v0, 3
/* 13FDF4 8004DFF4 3C018005 */  lui        $at, %hi(D_80052FB2)
/* 13FDF8 8004DFF8 00220821 */  addu       $at, $at, $v0
/* 13FDFC 8004DFFC 94222FB2 */  lhu        $v0, %lo(D_80052FB2)($at)
/* 13FE00 8004E000 AC620008 */  sw         $v0, 8($v1)
/* 13FE04 8004E004 8E620000 */  lw         $v0, ($s3)
/* 13FE08 8004E008 2403FFFF */  addiu      $v1, $zero, -1
/* 13FE0C 8004E00C AC430010 */  sw         $v1, 0x10($v0)
/* 13FE10 8004E010 8E620004 */  lw         $v0, 4($s3)
/* 13FE14 8004E014 AC430010 */  sw         $v1, 0x10($v0)
.L8004E018:
/* 13FE18 8004E018 3C028006 */  lui        $v0, %hi(D_8005E0C0)
/* 13FE1C 8004E01C 8442E0C0 */  lh         $v0, %lo(D_8005E0C0)($v0)
/* 13FE20 8004E020 04410040 */  bgez       $v0, .L8004E124
/* 13FE24 8004E024 24020001 */   addiu     $v0, $zero, 1
/* 13FE28 8004E028 3C038006 */  lui        $v1, %hi(D_8005E13C)
/* 13FE2C 8004E02C 9463E13C */  lhu        $v1, %lo(D_8005E13C)($v1)
/* 13FE30 8004E030 24020001 */  addiu      $v0, $zero, 1
/* 13FE34 8004E034 1462000D */  bne        $v1, $v0, .L8004E06C
/* 13FE38 8004E038 00000000 */   nop
/* 13FE3C 8004E03C 3C014120 */  lui        $at, 0x4120
/* 13FE40 8004E040 44810000 */  mtc1       $at, $f0
/* 13FE44 8004E044 3C01423C */  lui        $at, 0x423c
/* 13FE48 8004E048 44811000 */  mtc1       $at, $f2
/* 13FE4C 8004E04C 3C01C100 */  lui        $at, 0xc100
/* 13FE50 8004E050 44812000 */  mtc1       $at, $f4
/* 13FE54 8004E054 3C0141C0 */  lui        $at, 0x41c0
/* 13FE58 8004E058 44813000 */  mtc1       $at, $f6
/* 13FE5C 8004E05C 3C01C28A */  lui        $at, 0xc28a
/* 13FE60 8004E060 44814000 */  mtc1       $at, $f8
/* 13FE64 8004E064 08013825 */  j          .L8004E094
/* 13FE68 8004E068 00000000 */   nop
.L8004E06C:
/* 13FE6C 8004E06C 3C014170 */  lui        $at, 0x4170
/* 13FE70 8004E070 44810000 */  mtc1       $at, $f0
/* 13FE74 8004E074 3C014244 */  lui        $at, 0x4244
/* 13FE78 8004E078 44811000 */  mtc1       $at, $f2
/* 13FE7C 8004E07C 3C01C100 */  lui        $at, 0xc100
/* 13FE80 8004E080 44812000 */  mtc1       $at, $f4
/* 13FE84 8004E084 3C014210 */  lui        $at, 0x4210
/* 13FE88 8004E088 44813000 */  mtc1       $at, $f6
/* 13FE8C 8004E08C 3C01C284 */  lui        $at, 0xc284
/* 13FE90 8004E090 44814000 */  mtc1       $at, $f8
.L8004E094:
/* 13FE94 8004E094 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 13FE98 8004E098 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 13FE9C 8004E09C 3C018015 */  lui        $at, %hi(D_8014A084)
/* 13FEA0 8004E0A0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 13FEA4 8004E0A4 3C018015 */  lui        $at, %hi(D_8014A064)
/* 13FEA8 8004E0A8 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 13FEAC 8004E0AC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13FEB0 8004E0B0 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 13FEB4 8004E0B4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 13FEB8 8004E0B8 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* 13FEBC 8004E0BC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 13FEC0 8004E0C0 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 13FEC4 8004E0C4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 13FEC8 8004E0C8 E428A088 */  swc1       $f8, %lo(D_8014A088)($at)
/* 13FECC 8004E0CC 3C028006 */  lui        $v0, %hi(D_8005E13C)
/* 13FED0 8004E0D0 9442E13C */  lhu        $v0, %lo(D_8005E13C)($v0)
/* 13FED4 8004E0D4 8E640000 */  lw         $a0, ($s3)
/* 13FED8 8004E0D8 000210C0 */  sll        $v0, $v0, 3
/* 13FEDC 8004E0DC 3C038005 */  lui        $v1, %hi(D_80052FB2)
/* 13FEE0 8004E0E0 00621821 */  addu       $v1, $v1, $v0
/* 13FEE4 8004E0E4 94632FB2 */  lhu        $v1, %lo(D_80052FB2)($v1)
/* 13FEE8 8004E0E8 3C028006 */  lui        $v0, %hi(D_8005E0C2)
/* 13FEEC 8004E0EC 9442E0C2 */  lhu        $v0, %lo(D_8005E0C2)($v0)
/* 13FEF0 8004E0F0 AC830008 */  sw         $v1, 8($a0)
/* 13FEF4 8004E0F4 8E630004 */  lw         $v1, 4($s3)
/* 13FEF8 8004E0F8 000210C0 */  sll        $v0, $v0, 3
/* 13FEFC 8004E0FC 3C018005 */  lui        $at, %hi(D_80052FB0)
/* 13FF00 8004E100 00220821 */  addu       $at, $at, $v0
/* 13FF04 8004E104 94222FB0 */  lhu        $v0, %lo(D_80052FB0)($at)
/* 13FF08 8004E108 AC620008 */  sw         $v0, 8($v1)
/* 13FF0C 8004E10C 8E620000 */  lw         $v0, ($s3)
/* 13FF10 8004E110 2403FFFF */  addiu      $v1, $zero, -1
/* 13FF14 8004E114 AC430010 */  sw         $v1, 0x10($v0)
/* 13FF18 8004E118 8E620004 */  lw         $v0, 4($s3)
/* 13FF1C 8004E11C AC430010 */  sw         $v1, 0x10($v0)
/* 13FF20 8004E120 24020001 */  addiu      $v0, $zero, 1
.L8004E124:
/* 13FF24 8004E124 08013856 */  j          .L8004E158
/* 13FF28 8004E128 A6620022 */   sh        $v0, 0x22($s3)
.L8004E12C:
/* 13FF2C 8004E12C 8E620000 */  lw         $v0, ($s3)
/* 13FF30 8004E130 8C420038 */  lw         $v0, 0x38($v0)
/* 13FF34 8004E134 8443001E */  lh         $v1, 0x1e($v0)
/* 13FF38 8004E138 240200FF */  addiu      $v0, $zero, 0xff
/* 13FF3C 8004E13C 14620006 */  bne        $v1, $v0, .L8004E158
/* 13FF40 8004E140 00000000 */   nop
/* 13FF44 8004E144 8E620004 */  lw         $v0, 4($s3)
/* 13FF48 8004E148 8C420038 */  lw         $v0, 0x38($v0)
/* 13FF4C 8004E14C 8442001E */  lh         $v0, 0x1e($v0)
/* 13FF50 8004E150 50430001 */  beql       $v0, $v1, .L8004E158
/* 13FF54 8004E154 24140001 */   addiu     $s4, $zero, 1
.L8004E158:
/* 13FF58 8004E158 8E640000 */  lw         $a0, ($s3)
/* 13FF5C 8004E15C 0C00AF2C */  jal        func_8002BCB0_11DAB0
/* 13FF60 8004E160 00000000 */   nop
/* 13FF64 8004E164 3042FFFF */  andi       $v0, $v0, 0xffff
/* 13FF68 8004E168 10400037 */  beqz       $v0, .L8004E248
/* 13FF6C 8004E16C 00000000 */   nop
/* 13FF70 8004E170 8E620000 */  lw         $v0, ($s3)
/* 13FF74 8004E174 8E63000C */  lw         $v1, 0xc($s3)
/* 13FF78 8004E178 3C108006 */  lui        $s0, %hi(D_8005D400)
/* 13FF7C 8004E17C 2610D400 */  addiu      $s0, $s0, %lo(D_8005D400)
/* 13FF80 8004E180 8C440034 */  lw         $a0, 0x34($v0)
/* 13FF84 8004E184 8C660034 */  lw         $a2, 0x34($v1)
/* 13FF88 8004E188 02002821 */  addu       $a1, $s0, $zero
/* 13FF8C 8004E18C 0C02864D */  jal        func_800A1934
/* 13FF90 8004E190 02003821 */   addu      $a3, $s0, $zero
/* 13FF94 8004E194 8E620000 */  lw         $v0, ($s3)
/* 13FF98 8004E198 8E650010 */  lw         $a1, 0x10($s3)
/* 13FF9C 8004E19C 3C128006 */  lui        $s2, %hi(D_8005E1E0)
/* 13FFA0 8004E1A0 2652E1E0 */  addiu      $s2, $s2, %lo(D_8005E1E0)
/* 13FFA4 8004E1A4 86430000 */  lh         $v1, ($s2)
/* 13FFA8 8004E1A8 8C440034 */  lw         $a0, 0x34($v0)
/* 13FFAC 8004E1AC 8CA60034 */  lw         $a2, 0x34($a1)
/* 13FFB0 8004E1B0 000310C0 */  sll        $v0, $v1, 3
/* 13FFB4 8004E1B4 00431023 */  subu       $v0, $v0, $v1
/* 13FFB8 8004E1B8 00021080 */  sll        $v0, $v0, 2
/* 13FFBC 8004E1BC 3C078006 */  lui        $a3, %hi(D_8005CF0C)
/* 13FFC0 8004E1C0 00E23821 */  addu       $a3, $a3, $v0
/* 13FFC4 8004E1C4 8CE7CF0C */  lw         $a3, %lo(D_8005CF0C)($a3)
/* 13FFC8 8004E1C8 3C118006 */  lui        $s1, %hi(D_8005D408)
/* 13FFCC 8004E1CC 2631D408 */  addiu      $s1, $s1, %lo(D_8005D408)
/* 13FFD0 8004E1D0 0C02864D */  jal        func_800A1934
/* 13FFD4 8004E1D4 02202821 */   addu      $a1, $s1, $zero
/* 13FFD8 8004E1D8 8E640000 */  lw         $a0, ($s3)
/* 13FFDC 8004E1DC 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 13FFE0 8004E1E0 00000000 */   nop
/* 13FFE4 8004E1E4 8E620000 */  lw         $v0, ($s3)
/* 13FFE8 8004E1E8 8E63000C */  lw         $v1, 0xc($s3)
/* 13FFEC 8004E1EC 8C440034 */  lw         $a0, 0x34($v0)
/* 13FFF0 8004E1F0 8C660034 */  lw         $a2, 0x34($v1)
/* 13FFF4 8004E1F4 02002821 */  addu       $a1, $s0, $zero
/* 13FFF8 8004E1F8 0C02864D */  jal        func_800A1934
/* 13FFFC 8004E1FC 00A03821 */   addu      $a3, $a1, $zero
/* 140000 8004E200 8E620000 */  lw         $v0, ($s3)
/* 140004 8004E204 8E650010 */  lw         $a1, 0x10($s3)
/* 140008 8004E208 86430000 */  lh         $v1, ($s2)
/* 14000C 8004E20C 8C440034 */  lw         $a0, 0x34($v0)
/* 140010 8004E210 8CA60034 */  lw         $a2, 0x34($a1)
/* 140014 8004E214 000310C0 */  sll        $v0, $v1, 3
/* 140018 8004E218 00431023 */  subu       $v0, $v0, $v1
/* 14001C 8004E21C 00021080 */  sll        $v0, $v0, 2
/* 140020 8004E220 3C078006 */  lui        $a3, %hi(D_8005CF0C)
/* 140024 8004E224 00E23821 */  addu       $a3, $a3, $v0
/* 140028 8004E228 8CE7CF0C */  lw         $a3, %lo(D_8005CF0C)($a3)
/* 14002C 8004E22C 0C02864D */  jal        func_800A1934
/* 140030 8004E230 02202821 */   addu      $a1, $s1, $zero
/* 140034 8004E234 8E620000 */  lw         $v0, ($s3)
/* 140038 8004E238 8C440034 */  lw         $a0, 0x34($v0)
/* 14003C 8004E23C 02202821 */  addu       $a1, $s1, $zero
/* 140040 8004E240 0C0286A4 */  jal        func_800A1A90
/* 140044 8004E244 00003021 */   addu      $a2, $zero, $zero
.L8004E248:
/* 140048 8004E248 8E640004 */  lw         $a0, 4($s3)
/* 14004C 8004E24C 0C00AF2C */  jal        func_8002BCB0_11DAB0
/* 140050 8004E250 00000000 */   nop
/* 140054 8004E254 3042FFFF */  andi       $v0, $v0, 0xffff
/* 140058 8004E258 10400037 */  beqz       $v0, .L8004E338
/* 14005C 8004E25C 00000000 */   nop
/* 140060 8004E260 8E620004 */  lw         $v0, 4($s3)
/* 140064 8004E264 8E630014 */  lw         $v1, 0x14($s3)
/* 140068 8004E268 3C108006 */  lui        $s0, %hi(D_8005D400)
/* 14006C 8004E26C 2610D400 */  addiu      $s0, $s0, %lo(D_8005D400)
/* 140070 8004E270 8C440034 */  lw         $a0, 0x34($v0)
/* 140074 8004E274 8C660034 */  lw         $a2, 0x34($v1)
/* 140078 8004E278 02002821 */  addu       $a1, $s0, $zero
/* 14007C 8004E27C 0C02864D */  jal        func_800A1934
/* 140080 8004E280 02003821 */   addu      $a3, $s0, $zero
/* 140084 8004E284 8E620004 */  lw         $v0, 4($s3)
/* 140088 8004E288 8E650018 */  lw         $a1, 0x18($s3)
/* 14008C 8004E28C 3C128006 */  lui        $s2, %hi(D_8005E1E2)
/* 140090 8004E290 2652E1E2 */  addiu      $s2, $s2, %lo(D_8005E1E2)
/* 140094 8004E294 86430000 */  lh         $v1, ($s2)
/* 140098 8004E298 8C440034 */  lw         $a0, 0x34($v0)
/* 14009C 8004E29C 8CA60034 */  lw         $a2, 0x34($a1)
/* 1400A0 8004E2A0 000310C0 */  sll        $v0, $v1, 3
/* 1400A4 8004E2A4 00431023 */  subu       $v0, $v0, $v1
/* 1400A8 8004E2A8 00021080 */  sll        $v0, $v0, 2
/* 1400AC 8004E2AC 3C078006 */  lui        $a3, %hi(D_8005CF0C)
/* 1400B0 8004E2B0 00E23821 */  addu       $a3, $a3, $v0
/* 1400B4 8004E2B4 8CE7CF0C */  lw         $a3, %lo(D_8005CF0C)($a3)
/* 1400B8 8004E2B8 3C118006 */  lui        $s1, %hi(D_8005D408)
/* 1400BC 8004E2BC 2631D408 */  addiu      $s1, $s1, %lo(D_8005D408)
/* 1400C0 8004E2C0 0C02864D */  jal        func_800A1934
/* 1400C4 8004E2C4 02202821 */   addu      $a1, $s1, $zero
/* 1400C8 8004E2C8 8E640004 */  lw         $a0, 4($s3)
/* 1400CC 8004E2CC 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 1400D0 8004E2D0 00000000 */   nop
/* 1400D4 8004E2D4 8E620004 */  lw         $v0, 4($s3)
/* 1400D8 8004E2D8 8E630014 */  lw         $v1, 0x14($s3)
/* 1400DC 8004E2DC 8C440034 */  lw         $a0, 0x34($v0)
/* 1400E0 8004E2E0 8C660034 */  lw         $a2, 0x34($v1)
/* 1400E4 8004E2E4 02002821 */  addu       $a1, $s0, $zero
/* 1400E8 8004E2E8 0C02864D */  jal        func_800A1934
/* 1400EC 8004E2EC 00A03821 */   addu      $a3, $a1, $zero
/* 1400F0 8004E2F0 8E620004 */  lw         $v0, 4($s3)
/* 1400F4 8004E2F4 8E650018 */  lw         $a1, 0x18($s3)
/* 1400F8 8004E2F8 86430000 */  lh         $v1, ($s2)
/* 1400FC 8004E2FC 8C440034 */  lw         $a0, 0x34($v0)
/* 140100 8004E300 8CA60034 */  lw         $a2, 0x34($a1)
/* 140104 8004E304 000310C0 */  sll        $v0, $v1, 3
/* 140108 8004E308 00431023 */  subu       $v0, $v0, $v1
/* 14010C 8004E30C 00021080 */  sll        $v0, $v0, 2
/* 140110 8004E310 3C078006 */  lui        $a3, %hi(D_8005CF0C)
/* 140114 8004E314 00E23821 */  addu       $a3, $a3, $v0
/* 140118 8004E318 8CE7CF0C */  lw         $a3, %lo(D_8005CF0C)($a3)
/* 14011C 8004E31C 0C02864D */  jal        func_800A1934
/* 140120 8004E320 02202821 */   addu      $a1, $s1, $zero
/* 140124 8004E324 8E620004 */  lw         $v0, 4($s3)
/* 140128 8004E328 8C440034 */  lw         $a0, 0x34($v0)
/* 14012C 8004E32C 02202821 */  addu       $a1, $s1, $zero
/* 140130 8004E330 0C0286A4 */  jal        func_800A1A90
/* 140134 8004E334 00003021 */   addu      $a2, $zero, $zero
.L8004E338:
/* 140138 8004E338 8E640008 */  lw         $a0, 8($s3)
/* 14013C 8004E33C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 140140 8004E340 00000000 */   nop
/* 140144 8004E344 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 140148 8004E348 8E640000 */   lw        $a0, ($s3)
/* 14014C 8004E34C 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 140150 8004E350 8E640004 */   lw        $a0, 4($s3)
/* 140154 8004E354 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 140158 8004E358 8E640008 */   lw        $a0, 8($s3)
/* 14015C 8004E35C 02801021 */  addu       $v0, $s4, $zero
/* 140160 8004E360 8FBF0024 */  lw         $ra, 0x24($sp)
/* 140164 8004E364 8FB40020 */  lw         $s4, 0x20($sp)
/* 140168 8004E368 8FB3001C */  lw         $s3, 0x1c($sp)
/* 14016C 8004E36C 8FB20018 */  lw         $s2, 0x18($sp)
/* 140170 8004E370 8FB10014 */  lw         $s1, 0x14($sp)
/* 140174 8004E374 8FB00010 */  lw         $s0, 0x10($sp)
/* 140178 8004E378 03E00008 */  jr         $ra
/* 14017C 8004E37C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8004E380_140180
/* 140180 8004E380 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 140184 8004E384 AFB00010 */  sw         $s0, 0x10($sp)
/* 140188 8004E388 00808021 */  addu       $s0, $a0, $zero
/* 14018C 8004E38C 1200001C */  beqz       $s0, .L8004E400
/* 140190 8004E390 AFBF0014 */   sw        $ra, 0x14($sp)
/* 140194 8004E394 8E040000 */  lw         $a0, ($s0)
/* 140198 8004E398 10800019 */  beqz       $a0, .L8004E400
/* 14019C 8004E39C 00000000 */   nop
/* 1401A0 8004E3A0 0C00AF04 */  jal        func_8002BC10_11DA10
/* 1401A4 8004E3A4 00000000 */   nop
/* 1401A8 8004E3A8 8E040000 */  lw         $a0, ($s0)
/* 1401AC 8004E3AC 0C00AF04 */  jal        func_8002BC10_11DA10
/* 1401B0 8004E3B0 24840004 */   addiu     $a0, $a0, 4
/* 1401B4 8004E3B4 8E040000 */  lw         $a0, ($s0)
/* 1401B8 8004E3B8 0C00AF04 */  jal        func_8002BC10_11DA10
/* 1401BC 8004E3BC 24840008 */   addiu     $a0, $a0, 8
/* 1401C0 8004E3C0 8E040000 */  lw         $a0, ($s0)
/* 1401C4 8004E3C4 0C00AF04 */  jal        func_8002BC10_11DA10
/* 1401C8 8004E3C8 2484000C */   addiu     $a0, $a0, 0xc
/* 1401CC 8004E3CC 8E040000 */  lw         $a0, ($s0)
/* 1401D0 8004E3D0 0C00AF04 */  jal        func_8002BC10_11DA10
/* 1401D4 8004E3D4 24840010 */   addiu     $a0, $a0, 0x10
/* 1401D8 8004E3D8 8E040000 */  lw         $a0, ($s0)
/* 1401DC 8004E3DC 0C00AF04 */  jal        func_8002BC10_11DA10
/* 1401E0 8004E3E0 24840014 */   addiu     $a0, $a0, 0x14
/* 1401E4 8004E3E4 8E040000 */  lw         $a0, ($s0)
/* 1401E8 8004E3E8 0C00AF04 */  jal        func_8002BC10_11DA10
/* 1401EC 8004E3EC 24840018 */   addiu     $a0, $a0, 0x18
/* 1401F0 8004E3F0 8E040000 */  lw         $a0, ($s0)
/* 1401F4 8004E3F4 0C0326A1 */  jal        func_800C9A84
/* 1401F8 8004E3F8 00000000 */   nop
/* 1401FC 8004E3FC AE000000 */  sw         $zero, ($s0)
.L8004E400:
/* 140200 8004E400 8FBF0014 */  lw         $ra, 0x14($sp)
/* 140204 8004E404 8FB00010 */  lw         $s0, 0x10($sp)
/* 140208 8004E408 03E00008 */  jr         $ra
/* 14020C 8004E40C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004E410_140210
/* 140210 8004E410 3C028005 */  lui        $v0, %hi(D_80052FD0)
/* 140214 8004E414 90422FD0 */  lbu        $v0, %lo(D_80052FD0)($v0)
/* 140218 8004E418 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 14021C 8004E41C AFB00018 */  sw         $s0, 0x18($sp)
/* 140220 8004E420 00808021 */  addu       $s0, $a0, $zero
/* 140224 8004E424 1040003F */  beqz       $v0, .L8004E524
/* 140228 8004E428 AFBF001C */   sw        $ra, 0x1c($sp)
/* 14022C 8004E42C 0C02A5D2 */  jal        func_800A9748
/* 140230 8004E430 24040001 */   addiu     $a0, $zero, 1
/* 140234 8004E434 0C02725C */  jal        func_8009C970
/* 140238 8004E438 00000000 */   nop
/* 14023C 8004E43C 3C014248 */  lui        $at, 0x4248
/* 140240 8004E440 44810000 */  mtc1       $at, $f0
/* 140244 8004E444 3C0141F0 */  lui        $at, 0x41f0
/* 140248 8004E448 44811000 */  mtc1       $at, $f2
/* 14024C 8004E44C 3C01C270 */  lui        $at, 0xc270
/* 140250 8004E450 44812000 */  mtc1       $at, $f4
/* 140254 8004E454 24040053 */  addiu      $a0, $zero, 0x53
/* 140258 8004E458 240200E6 */  addiu      $v0, $zero, 0xe6
/* 14025C 8004E45C AFA20010 */  sw         $v0, 0x10($sp)
/* 140260 8004E460 240200DC */  addiu      $v0, $zero, 0xdc
/* 140264 8004E464 24050048 */  addiu      $a1, $zero, 0x48
/* 140268 8004E468 24060053 */  addiu      $a2, $zero, 0x53
/* 14026C 8004E46C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 140270 8004E470 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 140274 8004E474 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 140278 8004E478 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 14027C 8004E47C 3C018015 */  lui        $at, %hi(D_8014A080)
/* 140280 8004E480 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 140284 8004E484 3C018015 */  lui        $at, %hi(D_8014A084)
/* 140288 8004E488 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 14028C 8004E48C AFA20014 */  sw         $v0, 0x14($sp)
/* 140290 8004E490 3C018015 */  lui        $at, %hi(D_8014A068)
/* 140294 8004E494 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 140298 8004E498 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 14029C 8004E49C E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 1402A0 8004E4A0 3C018015 */  lui        $at, %hi(D_8014A088)
/* 1402A4 8004E4A4 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* 1402A8 8004E4A8 0C027101 */  jal        func_8009C404
/* 1402AC 8004E4AC 240700FF */   addiu     $a3, $zero, 0xff
/* 1402B0 8004E4B0 3C014170 */  lui        $at, 0x4170
/* 1402B4 8004E4B4 44810000 */  mtc1       $at, $f0
/* 1402B8 8004E4B8 3C014180 */  lui        $at, 0x4180
/* 1402BC 8004E4BC 44811000 */  mtc1       $at, $f2
/* 1402C0 8004E4C0 3C01C1C0 */  lui        $at, 0xc1c0
/* 1402C4 8004E4C4 44812000 */  mtc1       $at, $f4
/* 1402C8 8004E4C8 3C014130 */  lui        $at, 0x4130
/* 1402CC 8004E4CC 44813000 */  mtc1       $at, $f6
/* 1402D0 8004E4D0 3C0140A0 */  lui        $at, 0x40a0
/* 1402D4 8004E4D4 44814000 */  mtc1       $at, $f8
/* 1402D8 8004E4D8 3C01C190 */  lui        $at, 0xc190
/* 1402DC 8004E4DC 44815000 */  mtc1       $at, $f10
/* 1402E0 8004E4E0 3C018017 */  lui        $at, %hi(D_8016E568)
/* 1402E4 8004E4E4 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 1402E8 8004E4E8 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 1402EC 8004E4EC E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 1402F0 8004E4F0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 1402F4 8004E4F4 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 1402F8 8004E4F8 3C018015 */  lui        $at, %hi(D_8014A054)
/* 1402FC 8004E4FC E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 140300 8004E500 3C018015 */  lui        $at, %hi(D_8014A050)
/* 140304 8004E504 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 140308 8004E508 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 14030C 8004E50C 0C01398C */  jal        func_8004E630_140430
/* 140310 8004E510 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 140314 8004E514 3C018006 */  lui        $at, %hi(D_8005E050)
/* 140318 8004E518 AC22E050 */  sw         $v0, %lo(D_8005E050)($at)
/* 14031C 8004E51C 3C018005 */  lui        $at, %hi(D_80052FD0)
/* 140320 8004E520 A0202FD0 */  sb         $zero, %lo(D_80052FD0)($at)
.L8004E524:
/* 140324 8004E524 16000003 */  bnez       $s0, .L8004E534
/* 140328 8004E528 24020001 */   addiu     $v0, $zero, 1
/* 14032C 8004E52C 3C018005 */  lui        $at, %hi(D_80052FD4)
/* 140330 8004E530 AC222FD4 */  sw         $v0, %lo(D_80052FD4)($at)
.L8004E534:
/* 140334 8004E534 3C028005 */  lui        $v0, %hi(D_80052FD4)
/* 140338 8004E538 8C422FD4 */  lw         $v0, %lo(D_80052FD4)($v0)
/* 14033C 8004E53C 10400031 */  beqz       $v0, .L8004E604
/* 140340 8004E540 00000000 */   nop
/* 140344 8004E544 3C028006 */  lui        $v0, %hi(D_8005E050)
/* 140348 8004E548 8C42E050 */  lw         $v0, %lo(D_8005E050)($v0)
/* 14034C 8004E54C 0C029393 */  jal        func_800A4E4C
/* 140350 8004E550 8C44001C */   lw        $a0, 0x1c($v0)
/* 140354 8004E554 3C018006 */  lui        $at, %hi(D_8005E054)
/* 140358 8004E558 AC20E054 */  sw         $zero, %lo(D_8005E054)($at)
.L8004E55C:
/* 14035C 8004E55C 3C028006 */  lui        $v0, %hi(D_8005E054)
/* 140360 8004E560 8C42E054 */  lw         $v0, %lo(D_8005E054)($v0)
/* 140364 8004E564 3C038006 */  lui        $v1, %hi(D_8005E050)
/* 140368 8004E568 8C63E050 */  lw         $v1, %lo(D_8005E050)($v1)
/* 14036C 8004E56C 00021080 */  sll        $v0, $v0, 2
/* 140370 8004E570 00431021 */  addu       $v0, $v0, $v1
/* 140374 8004E574 0C028D30 */  jal        func_800A34C0
/* 140378 8004E578 8C440030 */   lw        $a0, 0x30($v0)
/* 14037C 8004E57C 3C028006 */  lui        $v0, %hi(D_8005E054)
/* 140380 8004E580 8C42E054 */  lw         $v0, %lo(D_8005E054)($v0)
/* 140384 8004E584 24420001 */  addiu      $v0, $v0, 1
/* 140388 8004E588 3C018006 */  lui        $at, %hi(D_8005E054)
/* 14038C 8004E58C 1040FFF3 */  beqz       $v0, .L8004E55C
/* 140390 8004E590 AC22E054 */   sw        $v0, %lo(D_8005E054)($at)
/* 140394 8004E594 3C018006 */  lui        $at, %hi(D_8005E054)
/* 140398 8004E598 AC20E054 */  sw         $zero, %lo(D_8005E054)($at)
.L8004E59C:
/* 14039C 8004E59C 3C028006 */  lui        $v0, %hi(D_8005E054)
/* 1403A0 8004E5A0 8C42E054 */  lw         $v0, %lo(D_8005E054)($v0)
/* 1403A4 8004E5A4 3C038006 */  lui        $v1, %hi(D_8005E050)
/* 1403A8 8004E5A8 8C63E050 */  lw         $v1, %lo(D_8005E050)($v1)
/* 1403AC 8004E5AC 00021080 */  sll        $v0, $v0, 2
/* 1403B0 8004E5B0 00431021 */  addu       $v0, $v0, $v1
/* 1403B4 8004E5B4 0C028D30 */  jal        func_800A34C0
/* 1403B8 8004E5B8 8C440020 */   lw        $a0, 0x20($v0)
/* 1403BC 8004E5BC 3C028006 */  lui        $v0, %hi(D_8005E054)
/* 1403C0 8004E5C0 8C42E054 */  lw         $v0, %lo(D_8005E054)($v0)
/* 1403C4 8004E5C4 24420001 */  addiu      $v0, $v0, 1
/* 1403C8 8004E5C8 3C018006 */  lui        $at, %hi(D_8005E054)
/* 1403CC 8004E5CC AC22E054 */  sw         $v0, %lo(D_8005E054)($at)
/* 1403D0 8004E5D0 2C420004 */  sltiu      $v0, $v0, 4
/* 1403D4 8004E5D4 1440FFF1 */  bnez       $v0, .L8004E59C
/* 1403D8 8004E5D8 00000000 */   nop
/* 1403DC 8004E5DC 3C048006 */  lui        $a0, %hi(D_8005E050)
/* 1403E0 8004E5E0 0C013BF2 */  jal        func_8004EFC8_140DC8
/* 1403E4 8004E5E4 2484E050 */   addiu     $a0, $a0, %lo(D_8005E050)
/* 1403E8 8004E5E8 24030001 */  addiu      $v1, $zero, 1
/* 1403EC 8004E5EC 3C018005 */  lui        $at, %hi(D_80052FD4)
/* 1403F0 8004E5F0 AC202FD4 */  sw         $zero, %lo(D_80052FD4)($at)
/* 1403F4 8004E5F4 3C018005 */  lui        $at, %hi(D_80052FD0)
/* 1403F8 8004E5F8 A0232FD0 */  sb         $v1, %lo(D_80052FD0)($at)
/* 1403FC 8004E5FC 08013988 */  j          .L8004E620
/* 140400 8004E600 24020001 */   addiu     $v0, $zero, 1
.L8004E604:
/* 140404 8004E604 3C048006 */  lui        $a0, %hi(D_8005E050)
/* 140408 8004E608 0C013AA6 */  jal        func_8004EA98_140898
/* 14040C 8004E60C 8C84E050 */   lw        $a0, %lo(D_8005E050)($a0)
/* 140410 8004E610 3C018005 */  lui        $at, %hi(D_80052FD4)
/* 140414 8004E614 0C009767 */  jal        func_80025D9C_117B9C
/* 140418 8004E618 AC222FD4 */   sw        $v0, %lo(D_80052FD4)($at)
/* 14041C 8004E61C 00001021 */  addu       $v0, $zero, $zero
.L8004E620:
/* 140420 8004E620 8FBF001C */  lw         $ra, 0x1c($sp)
/* 140424 8004E624 8FB00018 */  lw         $s0, 0x18($sp)
/* 140428 8004E628 03E00008 */  jr         $ra
/* 14042C 8004E62C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004E630_140430
/* 140430 8004E630 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 140434 8004E634 AFBF002C */  sw         $ra, 0x2c($sp)
/* 140438 8004E638 AFB40028 */  sw         $s4, 0x28($sp)
/* 14043C 8004E63C AFB30024 */  sw         $s3, 0x24($sp)
/* 140440 8004E640 AFB20020 */  sw         $s2, 0x20($sp)
/* 140444 8004E644 AFB1001C */  sw         $s1, 0x1c($sp)
/* 140448 8004E648 AFB00018 */  sw         $s0, 0x18($sp)
/* 14044C 8004E64C F7B60038 */  sdc1       $f22, 0x38($sp)
/* 140450 8004E650 F7B40030 */  sdc1       $f20, 0x30($sp)
/* 140454 8004E654 0C032663 */  jal        func_800C998C
/* 140458 8004E658 24040050 */   addiu     $a0, $zero, 0x50
/* 14045C 8004E65C 0040A021 */  addu       $s4, $v0, $zero
/* 140460 8004E660 02802021 */  addu       $a0, $s4, $zero
/* 140464 8004E664 0C030134 */  jal        bzero
/* 140468 8004E668 24050050 */   addiu     $a1, $zero, 0x50
/* 14046C 8004E66C 00009821 */  addu       $s3, $zero, $zero
/* 140470 8004E670 3C014080 */  lui        $at, 0x4080
/* 140474 8004E674 4481B000 */  mtc1       $at, $f22
/* 140478 8004E678 02809021 */  addu       $s2, $s4, $zero
/* 14047C 8004E67C 00008821 */  addu       $s1, $zero, $zero
.L8004E680:
/* 140480 8004E680 3C048006 */  lui        $a0, %hi(D_8005D410)
/* 140484 8004E684 00912021 */  addu       $a0, $a0, $s1
/* 140488 8004E688 9484D410 */  lhu        $a0, %lo(D_8005D410)($a0)
/* 14048C 8004E68C 24050005 */  addiu      $a1, $zero, 5
/* 140490 8004E690 0C028CB7 */  jal        func_800A32DC
/* 140494 8004E694 00003021 */   addu      $a2, $zero, $zero
/* 140498 8004E698 3C018006 */  lui        $at, %hi(D_8005D418)
/* 14049C 8004E69C 00310821 */  addu       $at, $at, $s1
/* 1404A0 8004E6A0 C420D418 */  lwc1       $f0, %lo(D_8005D418)($at)
/* 1404A4 8004E6A4 26730001 */  addiu      $s3, $s3, 1
/* 1404A8 8004E6A8 00408021 */  addu       $s0, $v0, $zero
/* 1404AC 8004E6AC 46160002 */  mul.s      $f0, $f0, $f22
/* 1404B0 8004E6B0 02002021 */  addu       $a0, $s0, $zero
/* 1404B4 8004E6B4 9602001E */  lhu        $v0, 0x1e($s0)
/* 1404B8 8004E6B8 3C038006 */  lui        $v1, %hi(D_8005D414)
/* 1404BC 8004E6BC 00711821 */  addu       $v1, $v1, $s1
/* 1404C0 8004E6C0 9463D414 */  lhu        $v1, %lo(D_8005D414)($v1)
/* 1404C4 8004E6C4 3C018006 */  lui        $at, %hi(D_8005D41C)
/* 1404C8 8004E6C8 00310821 */  addu       $at, $at, $s1
/* 1404CC 8004E6CC C434D41C */  lwc1       $f20, %lo(D_8005D41C)($at)
/* 1404D0 8004E6D0 3C058006 */  lui        $a1, %hi(D_8005D412)
/* 1404D4 8004E6D4 00B12821 */  addu       $a1, $a1, $s1
/* 1404D8 8004E6D8 94A5D412 */  lhu        $a1, %lo(D_8005D412)($a1)
/* 1404DC 8004E6DC 2631001C */  addiu      $s1, $s1, 0x1c
/* 1404E0 8004E6E0 4616A082 */  mul.s      $f2, $f20, $f22
/* 1404E4 8004E6E4 00431025 */  or         $v0, $v0, $v1
/* 1404E8 8004E6E8 A602001E */  sh         $v0, 0x1e($s0)
/* 1404EC 8004E6EC A605001C */  sh         $a1, 0x1c($s0)
/* 1404F0 8004E6F0 4600010D */  trunc.w.s  $f4, $f0
/* 1404F4 8004E6F4 44052000 */  mfc1       $a1, $f4
/* 1404F8 8004E6F8 00000000 */  nop
/* 1404FC 8004E6FC 00052C00 */  sll        $a1, $a1, 0x10
/* 140500 8004E700 00052C03 */  sra        $a1, $a1, 0x10
/* 140504 8004E704 4600100D */  trunc.w.s  $f0, $f2
/* 140508 8004E708 44060000 */  mfc1       $a2, $f0
/* 14050C 8004E70C 00000000 */  nop
/* 140510 8004E710 00063400 */  sll        $a2, $a2, 0x10
/* 140514 8004E714 0C028D89 */  jal        func_800A3624
/* 140518 8004E718 00063403 */   sra       $a2, $a2, 0x10
/* 14051C 8004E71C AE500020 */  sw         $s0, 0x20($s2)
/* 140520 8004E720 E6540034 */  swc1       $f20, 0x34($s2)
/* 140524 8004E724 2E620004 */  sltiu      $v0, $s3, 4
/* 140528 8004E728 1440FFD5 */  bnez       $v0, .L8004E680
/* 14052C 8004E72C 26520004 */   addiu     $s2, $s2, 4
/* 140530 8004E730 00009821 */  addu       $s3, $zero, $zero
/* 140534 8004E734 3C014080 */  lui        $at, 0x4080
/* 140538 8004E738 4481B000 */  mtc1       $at, $f22
/* 14053C 8004E73C 02809021 */  addu       $s2, $s4, $zero
/* 140540 8004E740 00008821 */  addu       $s1, $zero, $zero
.L8004E744:
/* 140544 8004E744 3C048006 */  lui        $a0, %hi(D_8005D480)
/* 140548 8004E748 00912021 */  addu       $a0, $a0, $s1
/* 14054C 8004E74C 9484D480 */  lhu        $a0, %lo(D_8005D480)($a0)
/* 140550 8004E750 24050002 */  addiu      $a1, $zero, 2
/* 140554 8004E754 0C028CB7 */  jal        func_800A32DC
/* 140558 8004E758 00003021 */   addu      $a2, $zero, $zero
/* 14055C 8004E75C 00408021 */  addu       $s0, $v0, $zero
/* 140560 8004E760 02002021 */  addu       $a0, $s0, $zero
/* 140564 8004E764 3C068006 */  lui        $a2, %hi(D_8005D494)
/* 140568 8004E768 00D13021 */  addu       $a2, $a2, $s1
/* 14056C 8004E76C 8CC6D494 */  lw         $a2, %lo(D_8005D494)($a2)
/* 140570 8004E770 3C078006 */  lui        $a3, %hi(D_8005D498)
/* 140574 8004E774 00F13821 */  addu       $a3, $a3, $s1
/* 140578 8004E778 8CE7D498 */  lw         $a3, %lo(D_8005D498)($a3)
/* 14057C 8004E77C 9602001E */  lhu        $v0, 0x1e($s0)
/* 140580 8004E780 3C038006 */  lui        $v1, %hi(D_8005D484)
/* 140584 8004E784 00711821 */  addu       $v1, $v1, $s1
/* 140588 8004E788 9463D484 */  lhu        $v1, %lo(D_8005D484)($v1)
/* 14058C 8004E78C 3C088006 */  lui        $t0, %hi(D_8005D482)
/* 140590 8004E790 01114021 */  addu       $t0, $t0, $s1
/* 140594 8004E794 9508D482 */  lhu        $t0, %lo(D_8005D482)($t0)
/* 140598 8004E798 00002821 */  addu       $a1, $zero, $zero
/* 14059C 8004E79C 00431025 */  or         $v0, $v0, $v1
/* 1405A0 8004E7A0 A602001E */  sh         $v0, 0x1e($s0)
/* 1405A4 8004E7A4 0C02915B */  jal        func_800A456C
/* 1405A8 8004E7A8 A608001C */   sh        $t0, 0x1c($s0)
/* 1405AC 8004E7AC 3C018006 */  lui        $at, %hi(D_8005D488)
/* 1405B0 8004E7B0 00310821 */  addu       $at, $at, $s1
/* 1405B4 8004E7B4 C420D488 */  lwc1       $f0, %lo(D_8005D488)($at)
/* 1405B8 8004E7B8 46160002 */  mul.s      $f0, $f0, $f22
/* 1405BC 8004E7BC 3C018006 */  lui        $at, %hi(D_8005D48C)
/* 1405C0 8004E7C0 00310821 */  addu       $at, $at, $s1
/* 1405C4 8004E7C4 C434D48C */  lwc1       $f20, %lo(D_8005D48C)($at)
/* 1405C8 8004E7C8 4616A082 */  mul.s      $f2, $f20, $f22
/* 1405CC 8004E7CC 26730001 */  addiu      $s3, $s3, 1
/* 1405D0 8004E7D0 02002021 */  addu       $a0, $s0, $zero
/* 1405D4 8004E7D4 2631001C */  addiu      $s1, $s1, 0x1c
/* 1405D8 8004E7D8 4600010D */  trunc.w.s  $f4, $f0
/* 1405DC 8004E7DC 44052000 */  mfc1       $a1, $f4
/* 1405E0 8004E7E0 00000000 */  nop
/* 1405E4 8004E7E4 00052C00 */  sll        $a1, $a1, 0x10
/* 1405E8 8004E7E8 00052C03 */  sra        $a1, $a1, 0x10
/* 1405EC 8004E7EC 4600100D */  trunc.w.s  $f0, $f2
/* 1405F0 8004E7F0 44060000 */  mfc1       $a2, $f0
/* 1405F4 8004E7F4 00000000 */  nop
/* 1405F8 8004E7F8 00063400 */  sll        $a2, $a2, 0x10
/* 1405FC 8004E7FC 0C028D89 */  jal        func_800A3624
/* 140600 8004E800 00063403 */   sra       $a2, $a2, 0x10
/* 140604 8004E804 AE500030 */  sw         $s0, 0x30($s2)
/* 140608 8004E808 E6540044 */  swc1       $f20, 0x44($s2)
/* 14060C 8004E80C 1260FFCD */  beqz       $s3, .L8004E744
/* 140610 8004E810 26520004 */   addiu     $s2, $s2, 4
/* 140614 8004E814 0C029375 */  jal        func_800A4DD4
/* 140618 8004E818 AE800048 */   sw        $zero, 0x48($s4)
/* 14061C 8004E81C AE82001C */  sw         $v0, 0x1c($s4)
/* 140620 8004E820 240200E0 */  addiu      $v0, $zero, 0xe0
/* 140624 8004E824 AFA20010 */  sw         $v0, 0x10($sp)
/* 140628 8004E828 8E84001C */  lw         $a0, 0x1c($s4)
/* 14062C 8004E82C 24050010 */  addiu      $a1, $zero, 0x10
/* 140630 8004E830 24060010 */  addiu      $a2, $zero, 0x10
/* 140634 8004E834 0C02939C */  jal        func_800A4E70
/* 140638 8004E838 24070130 */   addiu     $a3, $zero, 0x130
/* 14063C 8004E83C 8E82001C */  lw         $v0, 0x1c($s4)
/* 140640 8004E840 A440001C */  sh         $zero, 0x1c($v0)
/* 140644 8004E844 8E83001C */  lw         $v1, 0x1c($s4)
/* 140648 8004E848 9462001E */  lhu        $v0, 0x1e($v1)
/* 14064C 8004E84C 34420100 */  ori        $v0, $v0, 0x100
/* 140650 8004E850 A462001E */  sh         $v0, 0x1e($v1)
/* 140654 8004E854 A6800018 */  sh         $zero, 0x18($s4)
/* 140658 8004E858 A680001A */  sh         $zero, 0x1a($s4)
/* 14065C 8004E85C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 140660 8004E860 A680004C */   sh        $zero, 0x4c($s4)
/* 140664 8004E864 24110007 */  addiu      $s1, $zero, 7
/* 140668 8004E868 3C128006 */  lui        $s2, %hi(D_8005E1E0)
/* 14066C 8004E86C 2652E1E0 */  addiu      $s2, $s2, %lo(D_8005E1E0)
/* 140670 8004E870 AE820000 */  sw         $v0, ($s4)
/* 140674 8004E874 AC51001C */  sw         $s1, 0x1c($v0)
/* 140678 8004E878 86430000 */  lh         $v1, ($s2)
/* 14067C 8004E87C 00402021 */  addu       $a0, $v0, $zero
/* 140680 8004E880 3C0142B4 */  lui        $at, 0x42b4
/* 140684 8004E884 44810000 */  mtc1       $at, $f0
/* 140688 8004E888 000310C0 */  sll        $v0, $v1, 3
/* 14068C 8004E88C 00431023 */  subu       $v0, $v0, $v1
/* 140690 8004E890 00021080 */  sll        $v0, $v0, 2
/* 140694 8004E894 3C038006 */  lui        $v1, %hi(D_8005CEF4)
/* 140698 8004E898 00621821 */  addu       $v1, $v1, $v0
/* 14069C 8004E89C 8C63CEF4 */  lw         $v1, %lo(D_8005CEF4)($v1)
/* 1406A0 8004E8A0 24050008 */  addiu      $a1, $zero, 8
/* 1406A4 8004E8A4 24100001 */  addiu      $s0, $zero, 1
/* 1406A8 8004E8A8 AC800010 */  sw         $zero, 0x10($a0)
/* 1406AC 8004E8AC AC800044 */  sw         $zero, 0x44($a0)
/* 1406B0 8004E8B0 AC90000C */  sw         $s0, 0xc($a0)
/* 1406B4 8004E8B4 2402011A */  addiu      $v0, $zero, 0x11a
/* 1406B8 8004E8B8 AC820008 */  sw         $v0, 8($a0)
/* 1406BC 8004E8BC E4800054 */  swc1       $f0, 0x54($a0)
/* 1406C0 8004E8C0 0C00B471 */  jal        func_8002D1C4_11EFC4
/* 1406C4 8004E8C4 AC830004 */   sw        $v1, 4($a0)
/* 1406C8 8004E8C8 0C00AEC4 */  jal        func_8002BB10_11D910
/* 1406CC 8004E8CC 24130003 */   addiu     $s3, $zero, 3
/* 1406D0 8004E8D0 AE820004 */  sw         $v0, 4($s4)
/* 1406D4 8004E8D4 AC51001C */  sw         $s1, 0x1c($v0)
/* 1406D8 8004E8D8 3C048006 */  lui        $a0, %hi(D_8005E1E2)
/* 1406DC 8004E8DC 8484E1E2 */  lh         $a0, %lo(D_8005E1E2)($a0)
/* 1406E0 8004E8E0 3C01C2B4 */  lui        $at, 0xc2b4
/* 1406E4 8004E8E4 44810000 */  mtc1       $at, $f0
/* 1406E8 8004E8E8 000418C0 */  sll        $v1, $a0, 3
/* 1406EC 8004E8EC 00641823 */  subu       $v1, $v1, $a0
/* 1406F0 8004E8F0 00031880 */  sll        $v1, $v1, 2
/* 1406F4 8004E8F4 3C048006 */  lui        $a0, %hi(D_8005CEF4)
/* 1406F8 8004E8F8 00832021 */  addu       $a0, $a0, $v1
/* 1406FC 8004E8FC 8C84CEF4 */  lw         $a0, %lo(D_8005CEF4)($a0)
/* 140700 8004E900 AC400010 */  sw         $zero, 0x10($v0)
/* 140704 8004E904 AC400044 */  sw         $zero, 0x44($v0)
/* 140708 8004E908 AC50000C */  sw         $s0, 0xc($v0)
/* 14070C 8004E90C 24030126 */  addiu      $v1, $zero, 0x126
/* 140710 8004E910 AC430008 */  sw         $v1, 8($v0)
/* 140714 8004E914 E4400054 */  swc1       $f0, 0x54($v0)
/* 140718 8004E918 AC440004 */  sw         $a0, 4($v0)
/* 14071C 8004E91C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 140720 8004E920 8E840000 */   lw        $a0, ($s4)
/* 140724 8004E924 0C00AEC4 */  jal        func_8002BB10_11D910
/* 140728 8004E928 00000000 */   nop
/* 14072C 8004E92C AE820008 */  sw         $v0, 8($s4)
/* 140730 8004E930 AC51001C */  sw         $s1, 0x1c($v0)
/* 140734 8004E934 86440000 */  lh         $a0, ($s2)
/* 140738 8004E938 000418C0 */  sll        $v1, $a0, 3
/* 14073C 8004E93C 00641823 */  subu       $v1, $v1, $a0
/* 140740 8004E940 00031880 */  sll        $v1, $v1, 2
/* 140744 8004E944 3C018006 */  lui        $at, %hi(D_8005CEF8)
/* 140748 8004E948 00230821 */  addu       $at, $at, $v1
/* 14074C 8004E94C 8C23CEF8 */  lw         $v1, %lo(D_8005CEF8)($at)
/* 140750 8004E950 AC430004 */  sw         $v1, 4($v0)
/* 140754 8004E954 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 140758 8004E958 8E840008 */   lw        $a0, 8($s4)
/* 14075C 8004E95C 8E820000 */  lw         $v0, ($s4)
/* 140760 8004E960 8E830008 */  lw         $v1, 8($s4)
/* 140764 8004E964 3C108006 */  lui        $s0, %hi(D_8005D49C)
/* 140768 8004E968 2610D49C */  addiu      $s0, $s0, %lo(D_8005D49C)
/* 14076C 8004E96C 8C440034 */  lw         $a0, 0x34($v0)
/* 140770 8004E970 8C660034 */  lw         $a2, 0x34($v1)
/* 140774 8004E974 02002821 */  addu       $a1, $s0, $zero
/* 140778 8004E978 0C02864D */  jal        func_800A1934
/* 14077C 8004E97C 02003821 */   addu      $a3, $s0, $zero
/* 140780 8004E980 0C00AEC4 */  jal        func_8002BB10_11D910
/* 140784 8004E984 00000000 */   nop
/* 140788 8004E988 AE82000C */  sw         $v0, 0xc($s4)
/* 14078C 8004E98C AC53001C */  sw         $s3, 0x1c($v0)
/* 140790 8004E990 86440000 */  lh         $a0, ($s2)
/* 140794 8004E994 3C013F80 */  lui        $at, 0x3f80
/* 140798 8004E998 4481A000 */  mtc1       $at, $f20
/* 14079C 8004E99C 000418C0 */  sll        $v1, $a0, 3
/* 1407A0 8004E9A0 00641823 */  subu       $v1, $v1, $a0
/* 1407A4 8004E9A4 00031880 */  sll        $v1, $v1, 2
/* 1407A8 8004E9A8 3C018006 */  lui        $at, %hi(D_8005CF00)
/* 1407AC 8004E9AC 00230821 */  addu       $at, $at, $v1
/* 1407B0 8004E9B0 8C23CF00 */  lw         $v1, %lo(D_8005CF00)($at)
/* 1407B4 8004E9B4 E454005C */  swc1       $f20, 0x5c($v0)
/* 1407B8 8004E9B8 AC430004 */  sw         $v1, 4($v0)
/* 1407BC 8004E9BC 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 1407C0 8004E9C0 8E840004 */   lw        $a0, 4($s4)
/* 1407C4 8004E9C4 0C00AEC4 */  jal        func_8002BB10_11D910
/* 1407C8 8004E9C8 00000000 */   nop
/* 1407CC 8004E9CC AE820010 */  sw         $v0, 0x10($s4)
/* 1407D0 8004E9D0 AC51001C */  sw         $s1, 0x1c($v0)
/* 1407D4 8004E9D4 3C048006 */  lui        $a0, %hi(D_8005E1E2)
/* 1407D8 8004E9D8 8484E1E2 */  lh         $a0, %lo(D_8005E1E2)($a0)
/* 1407DC 8004E9DC 000418C0 */  sll        $v1, $a0, 3
/* 1407E0 8004E9E0 00641823 */  subu       $v1, $v1, $a0
/* 1407E4 8004E9E4 00031880 */  sll        $v1, $v1, 2
/* 1407E8 8004E9E8 3C018006 */  lui        $at, %hi(D_8005CEF8)
/* 1407EC 8004E9EC 00230821 */  addu       $at, $at, $v1
/* 1407F0 8004E9F0 8C23CEF8 */  lw         $v1, %lo(D_8005CEF8)($at)
/* 1407F4 8004E9F4 AC430004 */  sw         $v1, 4($v0)
/* 1407F8 8004E9F8 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 1407FC 8004E9FC 8E840010 */   lw        $a0, 0x10($s4)
/* 140800 8004EA00 8E820004 */  lw         $v0, 4($s4)
/* 140804 8004EA04 8E830010 */  lw         $v1, 0x10($s4)
/* 140808 8004EA08 8C440034 */  lw         $a0, 0x34($v0)
/* 14080C 8004EA0C 8C660034 */  lw         $a2, 0x34($v1)
/* 140810 8004EA10 02002821 */  addu       $a1, $s0, $zero
/* 140814 8004EA14 0C02864D */  jal        func_800A1934
/* 140818 8004EA18 00A03821 */   addu      $a3, $a1, $zero
/* 14081C 8004EA1C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 140820 8004EA20 00000000 */   nop
/* 140824 8004EA24 AE820014 */  sw         $v0, 0x14($s4)
/* 140828 8004EA28 AC53001C */  sw         $s3, 0x1c($v0)
/* 14082C 8004EA2C 3C048006 */  lui        $a0, %hi(D_8005E1E2)
/* 140830 8004EA30 8484E1E2 */  lh         $a0, %lo(D_8005E1E2)($a0)
/* 140834 8004EA34 000418C0 */  sll        $v1, $a0, 3
/* 140838 8004EA38 00641823 */  subu       $v1, $v1, $a0
/* 14083C 8004EA3C 00031880 */  sll        $v1, $v1, 2
/* 140840 8004EA40 3C018006 */  lui        $at, %hi(D_8005CF00)
/* 140844 8004EA44 00230821 */  addu       $at, $at, $v1
/* 140848 8004EA48 8C23CF00 */  lw         $v1, %lo(D_8005CF00)($at)
/* 14084C 8004EA4C E454005C */  swc1       $f20, 0x5c($v0)
/* 140850 8004EA50 AC430004 */  sw         $v1, 4($v0)
/* 140854 8004EA54 8E830000 */  lw         $v1, ($s4)
/* 140858 8004EA58 8E82000C */  lw         $v0, 0xc($s4)
/* 14085C 8004EA5C AC620100 */  sw         $v0, 0x100($v1)
/* 140860 8004EA60 8E840004 */  lw         $a0, 4($s4)
/* 140864 8004EA64 8E830014 */  lw         $v1, 0x14($s4)
/* 140868 8004EA68 02801021 */  addu       $v0, $s4, $zero
/* 14086C 8004EA6C AC830100 */  sw         $v1, 0x100($a0)
/* 140870 8004EA70 8FBF002C */  lw         $ra, 0x2c($sp)
/* 140874 8004EA74 8FB40028 */  lw         $s4, 0x28($sp)
/* 140878 8004EA78 8FB30024 */  lw         $s3, 0x24($sp)
/* 14087C 8004EA7C 8FB20020 */  lw         $s2, 0x20($sp)
/* 140880 8004EA80 8FB1001C */  lw         $s1, 0x1c($sp)
/* 140884 8004EA84 8FB00018 */  lw         $s0, 0x18($sp)
/* 140888 8004EA88 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 14088C 8004EA8C D7B40030 */  ldc1       $f20, 0x30($sp)
/* 140890 8004EA90 03E00008 */  jr         $ra
/* 140894 8004EA94 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8004EA98_140898
/* 140898 8004EA98 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 14089C 8004EA9C AFB20038 */  sw         $s2, 0x38($sp)
/* 1408A0 8004EAA0 00809021 */  addu       $s2, $a0, $zero
/* 1408A4 8004EAA4 AFBF0040 */  sw         $ra, 0x40($sp)
/* 1408A8 8004EAA8 AFB3003C */  sw         $s3, 0x3c($sp)
/* 1408AC 8004EAAC AFB10034 */  sw         $s1, 0x34($sp)
/* 1408B0 8004EAB0 AFB00030 */  sw         $s0, 0x30($sp)
/* 1408B4 8004EAB4 F7B80058 */  sdc1       $f24, 0x58($sp)
/* 1408B8 8004EAB8 F7B60050 */  sdc1       $f22, 0x50($sp)
/* 1408BC 8004EABC F7B40048 */  sdc1       $f20, 0x48($sp)
/* 1408C0 8004EAC0 96420018 */  lhu        $v0, 0x18($s2)
/* 1408C4 8004EAC4 24420001 */  addiu      $v0, $v0, 1
/* 1408C8 8004EAC8 3043FFFF */  andi       $v1, $v0, 0xffff
/* 1408CC 8004EACC A6420018 */  sh         $v0, 0x18($s2)
/* 1408D0 8004EAD0 24020061 */  addiu      $v0, $zero, 0x61
/* 1408D4 8004EAD4 10620011 */  beq        $v1, $v0, .L8004EB1C
/* 1408D8 8004EAD8 28620062 */   slti      $v0, $v1, 0x62
/* 1408DC 8004EADC 10400005 */  beqz       $v0, .L8004EAF4
/* 1408E0 8004EAE0 24020001 */   addiu     $v0, $zero, 1
/* 1408E4 8004EAE4 10620008 */  beq        $v1, $v0, .L8004EB08
/* 1408E8 8004EAE8 00002021 */   addu      $a0, $zero, $zero
/* 1408EC 8004EAEC 08013AD9 */  j          .L8004EB64
/* 1408F0 8004EAF0 00008821 */   addu      $s1, $zero, $zero
.L8004EAF4:
/* 1408F4 8004EAF4 240200A1 */  addiu      $v0, $zero, 0xa1
/* 1408F8 8004EAF8 10620011 */  beq        $v1, $v0, .L8004EB40
/* 1408FC 8004EAFC 00002021 */   addu      $a0, $zero, $zero
/* 140900 8004EB00 08013AD9 */  j          .L8004EB64
/* 140904 8004EB04 00008821 */   addu      $s1, $zero, $zero
.L8004EB08:
/* 140908 8004EB08 24050001 */  addiu      $a1, $zero, 1
/* 14090C 8004EB0C 24060001 */  addiu      $a2, $zero, 1
/* 140910 8004EB10 2407002F */  addiu      $a3, $zero, 0x2f
/* 140914 8004EB14 08013AD4 */  j          .L8004EB50
/* 140918 8004EB18 24020054 */   addiu     $v0, $zero, 0x54
.L8004EB1C:
/* 14091C 8004EB1C 00002021 */  addu       $a0, $zero, $zero
/* 140920 8004EB20 24050002 */  addiu      $a1, $zero, 2
/* 140924 8004EB24 24060002 */  addiu      $a2, $zero, 2
/* 140928 8004EB28 24070089 */  addiu      $a3, $zero, 0x89
/* 14092C 8004EB2C 24020040 */  addiu      $v0, $zero, 0x40
/* 140930 8004EB30 AFA20010 */  sw         $v0, 0x10($sp)
/* 140934 8004EB34 24020004 */  addiu      $v0, $zero, 4
/* 140938 8004EB38 08013AD6 */  j          .L8004EB58
/* 14093C 8004EB3C AFA20014 */   sw        $v0, 0x14($sp)
.L8004EB40:
/* 140940 8004EB40 24050001 */  addiu      $a1, $zero, 1
/* 140944 8004EB44 24060001 */  addiu      $a2, $zero, 1
/* 140948 8004EB48 2407002B */  addiu      $a3, $zero, 0x2b
/* 14094C 8004EB4C 24020044 */  addiu      $v0, $zero, 0x44
.L8004EB50:
/* 140950 8004EB50 AFA20010 */  sw         $v0, 0x10($sp)
/* 140954 8004EB54 AFA00014 */  sw         $zero, 0x14($sp)
.L8004EB58:
/* 140958 8004EB58 0C0E5BE4 */  jal        func_80396F90
/* 14095C 8004EB5C AFA00018 */   sw        $zero, 0x18($sp)
/* 140960 8004EB60 00008821 */  addu       $s1, $zero, $zero
.L8004EB64:
/* 140964 8004EB64 3C014080 */  lui        $at, 0x4080
/* 140968 8004EB68 4481A000 */  mtc1       $at, $f20
/* 14096C 8004EB6C 3C01C2C0 */  lui        $at, 0xc2c0
/* 140970 8004EB70 4481C000 */  mtc1       $at, $f24
/* 140974 8004EB74 3C0143C0 */  lui        $at, 0x43c0
/* 140978 8004EB78 4481B000 */  mtc1       $at, $f22
/* 14097C 8004EB7C 00009821 */  addu       $s3, $zero, $zero
/* 140980 8004EB80 02408021 */  addu       $s0, $s2, $zero
.L8004EB84:
/* 140984 8004EB84 C6000034 */  lwc1       $f0, 0x34($s0)
/* 140988 8004EB88 46140001 */  sub.s      $f0, $f0, $f20
/* 14098C 8004EB8C 4618003E */  c.le.s     $f0, $f24
/* 140990 8004EB90 00000000 */  nop
/* 140994 8004EB94 00000000 */  nop
/* 140998 8004EB98 45000003 */  bc1f       .L8004EBA8
/* 14099C 8004EB9C E6000034 */   swc1      $f0, 0x34($s0)
/* 1409A0 8004EBA0 46160000 */  add.s      $f0, $f0, $f22
/* 1409A4 8004EBA4 E6000034 */  swc1       $f0, 0x34($s0)
.L8004EBA8:
/* 1409A8 8004EBA8 3C018006 */  lui        $at, %hi(D_8005D418)
/* 1409AC 8004EBAC 00330821 */  addu       $at, $at, $s3
/* 1409B0 8004EBB0 C420D418 */  lwc1       $f0, %lo(D_8005D418)($at)
/* 1409B4 8004EBB4 46140002 */  mul.s      $f0, $f0, $f20
/* 1409B8 8004EBB8 C6020034 */  lwc1       $f2, 0x34($s0)
/* 1409BC 8004EBBC 8E040020 */  lw         $a0, 0x20($s0)
/* 1409C0 8004EBC0 46141082 */  mul.s      $f2, $f2, $f20
/* 1409C4 8004EBC4 2673001C */  addiu      $s3, $s3, 0x1c
/* 1409C8 8004EBC8 26100004 */  addiu      $s0, $s0, 4
/* 1409CC 8004EBCC 26310001 */  addiu      $s1, $s1, 1
/* 1409D0 8004EBD0 4600010D */  trunc.w.s  $f4, $f0
/* 1409D4 8004EBD4 44052000 */  mfc1       $a1, $f4
/* 1409D8 8004EBD8 00000000 */  nop
/* 1409DC 8004EBDC 00052C00 */  sll        $a1, $a1, 0x10
/* 1409E0 8004EBE0 00052C03 */  sra        $a1, $a1, 0x10
/* 1409E4 8004EBE4 4600100D */  trunc.w.s  $f0, $f2
/* 1409E8 8004EBE8 44060000 */  mfc1       $a2, $f0
/* 1409EC 8004EBEC 00000000 */  nop
/* 1409F0 8004EBF0 00063400 */  sll        $a2, $a2, 0x10
/* 1409F4 8004EBF4 0C028D89 */  jal        func_800A3624
/* 1409F8 8004EBF8 00063403 */   sra       $a2, $a2, 0x10
/* 1409FC 8004EBFC 2E220004 */  sltiu      $v0, $s1, 4
/* 140A00 8004EC00 1440FFE0 */  bnez       $v0, .L8004EB84
/* 140A04 8004EC04 00000000 */   nop
/* 140A08 8004EC08 C6420048 */  lwc1       $f2, 0x48($s2)
/* 140A0C 8004EC0C 3C014100 */  lui        $at, 0x4100
/* 140A10 8004EC10 44810000 */  mtc1       $at, $f0
/* 140A14 8004EC14 00000000 */  nop
/* 140A18 8004EC18 46001000 */  add.s      $f0, $f2, $f0
/* 140A1C 8004EC1C 3C0143B4 */  lui        $at, 0x43b4
/* 140A20 8004EC20 44811000 */  mtc1       $at, $f2
/* 140A24 8004EC24 00000000 */  nop
/* 140A28 8004EC28 4600103C */  c.lt.s     $f2, $f0
/* 140A2C 8004EC2C 00000000 */  nop
/* 140A30 8004EC30 00000000 */  nop
/* 140A34 8004EC34 45000003 */  bc1f       .L8004EC44
/* 140A38 8004EC38 E6400048 */   swc1      $f0, 0x48($s2)
/* 140A3C 8004EC3C 46020001 */  sub.s      $f0, $f0, $f2
/* 140A40 8004EC40 E6400048 */  swc1       $f0, 0x48($s2)
.L8004EC44:
/* 140A44 8004EC44 C64C0048 */  lwc1       $f12, 0x48($s2)
/* 140A48 8004EC48 3C014334 */  lui        $at, 0x4334
/* 140A4C 8004EC4C 44810000 */  mtc1       $at, $f0
/* 140A50 8004EC50 00000000 */  nop
/* 140A54 8004EC54 46006303 */  div.s      $f12, $f12, $f0
/* 140A58 8004EC58 3C018006 */  lui        $at, %hi(D_8005D4B0)
/* 140A5C 8004EC5C D420D4B0 */  ldc1       $f0, %lo(D_8005D4B0)($at)
/* 140A60 8004EC60 46006321 */  cvt.d.s    $f12, $f12
/* 140A64 8004EC64 46206302 */  mul.d      $f12, $f12, $f0
/* 140A68 8004EC68 0C02FF68 */  jal        func_800BFDA0
/* 140A6C 8004EC6C 46206320 */   cvt.s.d   $f12, $f12
/* 140A70 8004EC70 3C014080 */  lui        $at, 0x4080
/* 140A74 8004EC74 44813000 */  mtc1       $at, $f6
/* 140A78 8004EC78 00000000 */  nop
/* 140A7C 8004EC7C 46060002 */  mul.s      $f0, $f0, $f6
/* 140A80 8004EC80 3C018006 */  lui        $at, %hi(D_8005D488)
/* 140A84 8004EC84 C422D488 */  lwc1       $f2, %lo(D_8005D488)($at)
/* 140A88 8004EC88 3C018006 */  lui        $at, %hi(D_8005D48C)
/* 140A8C 8004EC8C C424D48C */  lwc1       $f4, %lo(D_8005D48C)($at)
/* 140A90 8004EC90 46061082 */  mul.s      $f2, $f2, $f6
/* 140A94 8004EC94 46002100 */  add.s      $f4, $f4, $f0
/* 140A98 8004EC98 46062182 */  mul.s      $f6, $f4, $f6
/* 140A9C 8004EC9C 8E440030 */  lw         $a0, 0x30($s2)
/* 140AA0 8004ECA0 4600100D */  trunc.w.s  $f0, $f2
/* 140AA4 8004ECA4 44050000 */  mfc1       $a1, $f0
/* 140AA8 8004ECA8 00000000 */  nop
/* 140AAC 8004ECAC 00052C00 */  sll        $a1, $a1, 0x10
/* 140AB0 8004ECB0 00052C03 */  sra        $a1, $a1, 0x10
/* 140AB4 8004ECB4 E6440044 */  swc1       $f4, 0x44($s2)
/* 140AB8 8004ECB8 4600300D */  trunc.w.s  $f0, $f6
/* 140ABC 8004ECBC 44060000 */  mfc1       $a2, $f0
/* 140AC0 8004ECC0 00000000 */  nop
/* 140AC4 8004ECC4 00063400 */  sll        $a2, $a2, 0x10
/* 140AC8 8004ECC8 0C028D89 */  jal        func_800A3624
/* 140ACC 8004ECCC 00063403 */   sra       $a2, $a2, 0x10
/* 140AD0 8004ECD0 9643001A */  lhu        $v1, 0x1a($s2)
/* 140AD4 8004ECD4 9642004C */  lhu        $v0, 0x4c($s2)
/* 140AD8 8004ECD8 24630001 */  addiu      $v1, $v1, 1
/* 140ADC 8004ECDC 30630001 */  andi       $v1, $v1, 1
/* 140AE0 8004ECE0 24420009 */  addiu      $v0, $v0, 9
/* 140AE4 8004ECE4 3042FFFF */  andi       $v0, $v0, 0xffff
/* 140AE8 8004ECE8 2C420013 */  sltiu      $v0, $v0, 0x13
/* 140AEC 8004ECEC 10400008 */  beqz       $v0, .L8004ED10
/* 140AF0 8004ECF0 A643001A */   sh        $v1, 0x1a($s2)
/* 140AF4 8004ECF4 0C02591A */  jal        func_80096468
/* 140AF8 8004ECF8 24040003 */   addiu     $a0, $zero, 3
/* 140AFC 8004ECFC 9643004C */  lhu        $v1, 0x4c($s2)
/* 140B00 8004ED00 3404FFFF */  ori        $a0, $zero, 0xffff
/* 140B04 8004ED04 00441021 */  addu       $v0, $v0, $a0
/* 140B08 8004ED08 00621821 */  addu       $v1, $v1, $v0
/* 140B0C 8004ED0C A643004C */  sh         $v1, 0x4c($s2)
.L8004ED10:
/* 140B10 8004ED10 8642004C */  lh         $v0, 0x4c($s2)
/* 140B14 8004ED14 00401821 */  addu       $v1, $v0, $zero
/* 140B18 8004ED18 2842000A */  slti       $v0, $v0, 0xa
/* 140B1C 8004ED1C 14400002 */  bnez       $v0, .L8004ED28
/* 140B20 8004ED20 2462FFFF */   addiu     $v0, $v1, -1
/* 140B24 8004ED24 A642004C */  sh         $v0, 0x4c($s2)
.L8004ED28:
/* 140B28 8004ED28 8642004C */  lh         $v0, 0x4c($s2)
/* 140B2C 8004ED2C 00401821 */  addu       $v1, $v0, $zero
/* 140B30 8004ED30 2842FFF7 */  slti       $v0, $v0, -9
/* 140B34 8004ED34 10400002 */  beqz       $v0, .L8004ED40
/* 140B38 8004ED38 24620001 */   addiu     $v0, $v1, 1
/* 140B3C 8004ED3C A642004C */  sh         $v0, 0x4c($s2)
.L8004ED40:
/* 140B40 8004ED40 8642004C */  lh         $v0, 0x4c($s2)
/* 140B44 8004ED44 18400010 */  blez       $v0, .L8004ED88
/* 140B48 8004ED48 2402011A */   addiu     $v0, $zero, 0x11a
/* 140B4C 8004ED4C 8E430000 */  lw         $v1, ($s2)
/* 140B50 8004ED50 AC620008 */  sw         $v0, 8($v1)
/* 140B54 8004ED54 8642004C */  lh         $v0, 0x4c($s2)
/* 140B58 8004ED58 9643001A */  lhu        $v1, 0x1a($s2)
/* 140B5C 8004ED5C 8E440000 */  lw         $a0, ($s2)
/* 140B60 8004ED60 00431021 */  addu       $v0, $v0, $v1
/* 140B64 8004ED64 AC820010 */  sw         $v0, 0x10($a0)
/* 140B68 8004ED68 8E430004 */  lw         $v1, 4($s2)
/* 140B6C 8004ED6C 24020126 */  addiu      $v0, $zero, 0x126
/* 140B70 8004ED70 AC620008 */  sw         $v0, 8($v1)
/* 140B74 8004ED74 8642004C */  lh         $v0, 0x4c($s2)
/* 140B78 8004ED78 9643001A */  lhu        $v1, 0x1a($s2)
/* 140B7C 8004ED7C 8E440004 */  lw         $a0, 4($s2)
/* 140B80 8004ED80 00431021 */  addu       $v0, $v0, $v1
/* 140B84 8004ED84 AC820010 */  sw         $v0, 0x10($a0)
.L8004ED88:
/* 140B88 8004ED88 8642004C */  lh         $v0, 0x4c($s2)
/* 140B8C 8004ED8C 04410012 */  bgez       $v0, .L8004EDD8
/* 140B90 8004ED90 00000000 */   nop
/* 140B94 8004ED94 8E430000 */  lw         $v1, ($s2)
/* 140B98 8004ED98 24020126 */  addiu      $v0, $zero, 0x126
/* 140B9C 8004ED9C AC620008 */  sw         $v0, 8($v1)
/* 140BA0 8004EDA0 8644004C */  lh         $a0, 0x4c($s2)
/* 140BA4 8004EDA4 9642001A */  lhu        $v0, 0x1a($s2)
/* 140BA8 8004EDA8 8E430000 */  lw         $v1, ($s2)
/* 140BAC 8004EDAC 00441023 */  subu       $v0, $v0, $a0
/* 140BB0 8004EDB0 AC620010 */  sw         $v0, 0x10($v1)
/* 140BB4 8004EDB4 8E430004 */  lw         $v1, 4($s2)
/* 140BB8 8004EDB8 2402011A */  addiu      $v0, $zero, 0x11a
/* 140BBC 8004EDBC AC620008 */  sw         $v0, 8($v1)
/* 140BC0 8004EDC0 8644004C */  lh         $a0, 0x4c($s2)
/* 140BC4 8004EDC4 9642001A */  lhu        $v0, 0x1a($s2)
/* 140BC8 8004EDC8 8E430004 */  lw         $v1, 4($s2)
/* 140BCC 8004EDCC 00441023 */  subu       $v0, $v0, $a0
/* 140BD0 8004EDD0 AC620010 */  sw         $v0, 0x10($v1)
/* 140BD4 8004EDD4 8642004C */  lh         $v0, 0x4c($s2)
.L8004EDD8:
/* 140BD8 8004EDD8 14400009 */  bnez       $v0, .L8004EE00
/* 140BDC 8004EDDC 00000000 */   nop
/* 140BE0 8004EDE0 8E430000 */  lw         $v1, ($s2)
/* 140BE4 8004EDE4 9642001A */  lhu        $v0, 0x1a($s2)
/* 140BE8 8004EDE8 AC620010 */  sw         $v0, 0x10($v1)
/* 140BEC 8004EDEC 8642004C */  lh         $v0, 0x4c($s2)
/* 140BF0 8004EDF0 9643001A */  lhu        $v1, 0x1a($s2)
/* 140BF4 8004EDF4 8E440004 */  lw         $a0, 4($s2)
/* 140BF8 8004EDF8 00431021 */  addu       $v0, $v0, $v1
/* 140BFC 8004EDFC AC820010 */  sw         $v0, 0x10($a0)
.L8004EE00:
/* 140C00 8004EE00 0C00AF2C */  jal        func_8002BCB0_11DAB0
/* 140C04 8004EE04 8E440000 */   lw        $a0, ($s2)
/* 140C08 8004EE08 3042FFFF */  andi       $v0, $v0, 0xffff
/* 140C0C 8004EE0C 10400014 */  beqz       $v0, .L8004EE60
/* 140C10 8004EE10 00000000 */   nop
/* 140C14 8004EE14 8E420000 */  lw         $v0, ($s2)
/* 140C18 8004EE18 8E430008 */  lw         $v1, 8($s2)
/* 140C1C 8004EE1C 3C108006 */  lui        $s0, %hi(D_8005D49C)
/* 140C20 8004EE20 2610D49C */  addiu      $s0, $s0, %lo(D_8005D49C)
/* 140C24 8004EE24 8C440034 */  lw         $a0, 0x34($v0)
/* 140C28 8004EE28 8C660034 */  lw         $a2, 0x34($v1)
/* 140C2C 8004EE2C 02002821 */  addu       $a1, $s0, $zero
/* 140C30 8004EE30 0C02864D */  jal        func_800A1934
/* 140C34 8004EE34 02003821 */   addu      $a3, $s0, $zero
/* 140C38 8004EE38 8E440000 */  lw         $a0, ($s2)
/* 140C3C 8004EE3C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 140C40 8004EE40 00000000 */   nop
/* 140C44 8004EE44 8E420000 */  lw         $v0, ($s2)
/* 140C48 8004EE48 8E430008 */  lw         $v1, 8($s2)
/* 140C4C 8004EE4C 8C440034 */  lw         $a0, 0x34($v0)
/* 140C50 8004EE50 8C660034 */  lw         $a2, 0x34($v1)
/* 140C54 8004EE54 02002821 */  addu       $a1, $s0, $zero
/* 140C58 8004EE58 0C02864D */  jal        func_800A1934
/* 140C5C 8004EE5C 00A03821 */   addu      $a3, $a1, $zero
.L8004EE60:
/* 140C60 8004EE60 8E440004 */  lw         $a0, 4($s2)
/* 140C64 8004EE64 0C00AF2C */  jal        func_8002BCB0_11DAB0
/* 140C68 8004EE68 00000000 */   nop
/* 140C6C 8004EE6C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 140C70 8004EE70 10400014 */  beqz       $v0, .L8004EEC4
/* 140C74 8004EE74 00000000 */   nop
/* 140C78 8004EE78 8E420004 */  lw         $v0, 4($s2)
/* 140C7C 8004EE7C 8E430010 */  lw         $v1, 0x10($s2)
/* 140C80 8004EE80 3C108006 */  lui        $s0, %hi(D_8005D49C)
/* 140C84 8004EE84 2610D49C */  addiu      $s0, $s0, %lo(D_8005D49C)
/* 140C88 8004EE88 8C440034 */  lw         $a0, 0x34($v0)
/* 140C8C 8004EE8C 8C660034 */  lw         $a2, 0x34($v1)
/* 140C90 8004EE90 02002821 */  addu       $a1, $s0, $zero
/* 140C94 8004EE94 0C02864D */  jal        func_800A1934
/* 140C98 8004EE98 02003821 */   addu      $a3, $s0, $zero
/* 140C9C 8004EE9C 8E440004 */  lw         $a0, 4($s2)
/* 140CA0 8004EEA0 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 140CA4 8004EEA4 00000000 */   nop
/* 140CA8 8004EEA8 8E420004 */  lw         $v0, 4($s2)
/* 140CAC 8004EEAC 8E430010 */  lw         $v1, 0x10($s2)
/* 140CB0 8004EEB0 8C440034 */  lw         $a0, 0x34($v0)
/* 140CB4 8004EEB4 8C660034 */  lw         $a2, 0x34($v1)
/* 140CB8 8004EEB8 02002821 */  addu       $a1, $s0, $zero
/* 140CBC 8004EEBC 0C02864D */  jal        func_800A1934
/* 140CC0 8004EEC0 00A03821 */   addu      $a3, $a1, $zero
.L8004EEC4:
/* 140CC4 8004EEC4 8E44000C */  lw         $a0, 0xc($s2)
/* 140CC8 8004EEC8 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 140CCC 8004EECC 00008821 */   addu      $s1, $zero, $zero
/* 140CD0 8004EED0 8E440014 */  lw         $a0, 0x14($s2)
/* 140CD4 8004EED4 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 140CD8 8004EED8 02408021 */   addu      $s0, $s2, $zero
/* 140CDC 8004EEDC 8E44001C */  lw         $a0, 0x1c($s2)
/* 140CE0 8004EEE0 0C028A40 */  jal        func_800A2900
/* 140CE4 8004EEE4 00000000 */   nop
.L8004EEE8:
/* 140CE8 8004EEE8 8E040020 */  lw         $a0, 0x20($s0)
/* 140CEC 8004EEEC 26100004 */  addiu      $s0, $s0, 4
/* 140CF0 8004EEF0 0C028A40 */  jal        func_800A2900
/* 140CF4 8004EEF4 26310001 */   addiu     $s1, $s1, 1
/* 140CF8 8004EEF8 2E220004 */  sltiu      $v0, $s1, 4
/* 140CFC 8004EEFC 1440FFFA */  bnez       $v0, .L8004EEE8
/* 140D00 8004EF00 00000000 */   nop
/* 140D04 8004EF04 00008821 */  addu       $s1, $zero, $zero
/* 140D08 8004EF08 02408021 */  addu       $s0, $s2, $zero
.L8004EF0C:
/* 140D0C 8004EF0C 8E040030 */  lw         $a0, 0x30($s0)
/* 140D10 8004EF10 26100004 */  addiu      $s0, $s0, 4
/* 140D14 8004EF14 0C028A40 */  jal        func_800A2900
/* 140D18 8004EF18 26310001 */   addiu     $s1, $s1, 1
/* 140D1C 8004EF1C 1220FFFB */  beqz       $s1, .L8004EF0C
/* 140D20 8004EF20 00000000 */   nop
/* 140D24 8004EF24 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 140D28 8004EF28 8E440000 */   lw        $a0, ($s2)
/* 140D2C 8004EF2C 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 140D30 8004EF30 8E440004 */   lw        $a0, 4($s2)
/* 140D34 8004EF34 8E440000 */  lw         $a0, ($s2)
/* 140D38 8004EF38 3C108006 */  lui        $s0, %hi(D_8005D4A4)
/* 140D3C 8004EF3C 2610D4A4 */  addiu      $s0, $s0, %lo(D_8005D4A4)
/* 140D40 8004EF40 8E47000C */  lw         $a3, 0xc($s2)
/* 140D44 8004EF44 02002821 */  addu       $a1, $s0, $zero
/* 140D48 8004EF48 00003021 */  addu       $a2, $zero, $zero
/* 140D4C 8004EF4C 0C00B361 */  jal        func_8002CD84_11EB84
/* 140D50 8004EF50 24E70060 */   addiu     $a3, $a3, 0x60
/* 140D54 8004EF54 8E43000C */  lw         $v1, 0xc($s2)
/* 140D58 8004EF58 8C620000 */  lw         $v0, ($v1)
/* 140D5C 8004EF5C 34420001 */  ori        $v0, $v0, 1
/* 140D60 8004EF60 AC620000 */  sw         $v0, ($v1)
/* 140D64 8004EF64 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 140D68 8004EF68 8E44000C */   lw        $a0, 0xc($s2)
/* 140D6C 8004EF6C 8E440004 */  lw         $a0, 4($s2)
/* 140D70 8004EF70 8E470014 */  lw         $a3, 0x14($s2)
/* 140D74 8004EF74 02002821 */  addu       $a1, $s0, $zero
/* 140D78 8004EF78 00003021 */  addu       $a2, $zero, $zero
/* 140D7C 8004EF7C 0C00B361 */  jal        func_8002CD84_11EB84
/* 140D80 8004EF80 24E70060 */   addiu     $a3, $a3, 0x60
/* 140D84 8004EF84 8E430014 */  lw         $v1, 0x14($s2)
/* 140D88 8004EF88 8C620000 */  lw         $v0, ($v1)
/* 140D8C 8004EF8C 34420001 */  ori        $v0, $v0, 1
/* 140D90 8004EF90 AC620000 */  sw         $v0, ($v1)
/* 140D94 8004EF94 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 140D98 8004EF98 8E440014 */   lw        $a0, 0x14($s2)
/* 140D9C 8004EF9C 00001021 */  addu       $v0, $zero, $zero
/* 140DA0 8004EFA0 8FBF0040 */  lw         $ra, 0x40($sp)
/* 140DA4 8004EFA4 8FB3003C */  lw         $s3, 0x3c($sp)
/* 140DA8 8004EFA8 8FB20038 */  lw         $s2, 0x38($sp)
/* 140DAC 8004EFAC 8FB10034 */  lw         $s1, 0x34($sp)
/* 140DB0 8004EFB0 8FB00030 */  lw         $s0, 0x30($sp)
/* 140DB4 8004EFB4 D7B80058 */  ldc1       $f24, 0x58($sp)
/* 140DB8 8004EFB8 D7B60050 */  ldc1       $f22, 0x50($sp)
/* 140DBC 8004EFBC D7B40048 */  ldc1       $f20, 0x48($sp)
/* 140DC0 8004EFC0 03E00008 */  jr         $ra
/* 140DC4 8004EFC4 27BD0060 */   addiu     $sp, $sp, 0x60

glabel func_8004EFC8_140DC8
/* 140DC8 8004EFC8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 140DCC 8004EFCC AFB00010 */  sw         $s0, 0x10($sp)
/* 140DD0 8004EFD0 00808021 */  addu       $s0, $a0, $zero
/* 140DD4 8004EFD4 12000019 */  beqz       $s0, .L8004F03C
/* 140DD8 8004EFD8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 140DDC 8004EFDC 8E040000 */  lw         $a0, ($s0)
/* 140DE0 8004EFE0 10800016 */  beqz       $a0, .L8004F03C
/* 140DE4 8004EFE4 00000000 */   nop
/* 140DE8 8004EFE8 0C00AF04 */  jal        func_8002BC10_11DA10
/* 140DEC 8004EFEC 00000000 */   nop
/* 140DF0 8004EFF0 8E040000 */  lw         $a0, ($s0)
/* 140DF4 8004EFF4 0C00AF04 */  jal        func_8002BC10_11DA10
/* 140DF8 8004EFF8 24840004 */   addiu     $a0, $a0, 4
/* 140DFC 8004EFFC 8E040000 */  lw         $a0, ($s0)
/* 140E00 8004F000 0C00AF04 */  jal        func_8002BC10_11DA10
/* 140E04 8004F004 24840008 */   addiu     $a0, $a0, 8
/* 140E08 8004F008 8E040000 */  lw         $a0, ($s0)
/* 140E0C 8004F00C 0C00AF04 */  jal        func_8002BC10_11DA10
/* 140E10 8004F010 24840010 */   addiu     $a0, $a0, 0x10
/* 140E14 8004F014 8E040000 */  lw         $a0, ($s0)
/* 140E18 8004F018 0C00AF04 */  jal        func_8002BC10_11DA10
/* 140E1C 8004F01C 2484000C */   addiu     $a0, $a0, 0xc
/* 140E20 8004F020 8E040000 */  lw         $a0, ($s0)
/* 140E24 8004F024 0C00AF04 */  jal        func_8002BC10_11DA10
/* 140E28 8004F028 24840014 */   addiu     $a0, $a0, 0x14
/* 140E2C 8004F02C 8E040000 */  lw         $a0, ($s0)
/* 140E30 8004F030 0C0326A1 */  jal        func_800C9A84
/* 140E34 8004F034 00000000 */   nop
/* 140E38 8004F038 AE000000 */  sw         $zero, ($s0)
.L8004F03C:
/* 140E3C 8004F03C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 140E40 8004F040 8FB00010 */  lw         $s0, 0x10($sp)
/* 140E44 8004F044 03E00008 */  jr         $ra
/* 140E48 8004F048 27BD0018 */   addiu     $sp, $sp, 0x18
/* 140E4C 8004F04C 00000000 */  nop