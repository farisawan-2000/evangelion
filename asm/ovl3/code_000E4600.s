.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003B0F0_E4600
/* E4600 8003B0F0 3C028007 */  lui        $v0, %hi(D_8006BFC8)
/* E4604 8003B0F4 9442BFC8 */  lhu        $v0, %lo(D_8006BFC8)($v0)
/* E4608 8003B0F8 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* E460C 8003B0FC AFB40070 */  sw         $s4, 0x70($sp)
/* E4610 8003B100 AFBF0078 */  sw         $ra, 0x78($sp)
/* E4614 8003B104 AFB50074 */  sw         $s5, 0x74($sp)
/* E4618 8003B108 AFB3006C */  sw         $s3, 0x6c($sp)
/* E461C 8003B10C AFB20068 */  sw         $s2, 0x68($sp)
/* E4620 8003B110 AFB10064 */  sw         $s1, 0x64($sp)
/* E4624 8003B114 AFB00060 */  sw         $s0, 0x60($sp)
/* E4628 8003B118 F7BA0098 */  sdc1       $f26, 0x98($sp)
/* E462C 8003B11C F7B80090 */  sdc1       $f24, 0x90($sp)
/* E4630 8003B120 F7B60088 */  sdc1       $f22, 0x88($sp)
/* E4634 8003B124 F7B40080 */  sdc1       $f20, 0x80($sp)
/* E4638 8003B128 10400004 */  beqz       $v0, .L8003B13C
/* E463C 8003B12C 0080A021 */   addu      $s4, $a0, $zero
/* E4640 8003B130 24420001 */  addiu      $v0, $v0, 1
/* E4644 8003B134 3C018007 */  lui        $at, %hi(D_8006BFC8)
/* E4648 8003B138 A422BFC8 */  sh         $v0, %lo(D_8006BFC8)($at)
.L8003B13C:
/* E464C 8003B13C 0C00D7D8 */  jal        func_80035F60_DF470
/* E4650 8003B140 00000000 */   nop
/* E4654 8003B144 10400009 */  beqz       $v0, .L8003B16C
/* E4658 8003B148 00000000 */   nop
/* E465C 8003B14C 9682001C */  lhu        $v0, 0x1c($s4)
/* E4660 8003B150 2C420002 */  sltiu      $v0, $v0, 2
/* E4664 8003B154 1440000C */  bnez       $v0, .L8003B188
/* E4668 8003B158 00000000 */   nop
/* E466C 8003B15C 0C026DD5 */  jal        func_8009B754
/* E4670 8003B160 24040026 */   addiu     $a0, $zero, 0x26
/* E4674 8003B164 24020017 */  addiu      $v0, $zero, 0x17
/* E4678 8003B168 A682001C */  sh         $v0, 0x1c($s4)
.L8003B16C:
/* E467C 8003B16C 9682001C */  lhu        $v0, 0x1c($s4)
/* E4680 8003B170 2C420002 */  sltiu      $v0, $v0, 2
/* E4684 8003B174 14400004 */  bnez       $v0, .L8003B188
/* E4688 8003B178 00000000 */   nop
/* E468C 8003B17C 3C048007 */  lui        $a0, %hi(D_8006BF84)
/* E4690 8003B180 0C028A40 */  jal        func_800A2900
/* E4694 8003B184 8C84BF84 */   lw        $a0, %lo(D_8006BF84)($a0)
.L8003B188:
/* E4698 8003B188 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E469C 8003B18C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E46A0 8003B190 9684001C */  lhu        $a0, 0x1c($s4)
/* E46A4 8003B194 3C038007 */  lui        $v1, %hi(D_8006BF88)
/* E46A8 8003B198 9463BF88 */  lhu        $v1, %lo(D_8006BF88)($v1)
/* E46AC 8003B19C 24420001 */  addiu      $v0, $v0, 1
/* E46B0 8003B1A0 3C018007 */  lui        $at, %hi(D_8006C564)
/* E46B4 8003B1A4 10830008 */  beq        $a0, $v1, .L8003B1C8
/* E46B8 8003B1A8 AC22C564 */   sw        $v0, %lo(D_8006C564)($at)
/* E46BC 8003B1AC 9682001C */  lhu        $v0, 0x1c($s4)
/* E46C0 8003B1B0 3C018007 */  lui        $at, %hi(D_8006C564)
/* E46C4 8003B1B4 AC20C564 */  sw         $zero, %lo(D_8006C564)($at)
/* E46C8 8003B1B8 3C018007 */  lui        $at, %hi(D_8006BFC8)
/* E46CC 8003B1BC A420BFC8 */  sh         $zero, %lo(D_8006BFC8)($at)
/* E46D0 8003B1C0 3C018007 */  lui        $at, %hi(D_8006BF88)
/* E46D4 8003B1C4 A422BF88 */  sh         $v0, %lo(D_8006BF88)($at)
.L8003B1C8:
/* E46D8 8003B1C8 9683001C */  lhu        $v1, 0x1c($s4)
/* E46DC 8003B1CC 2402000D */  addiu      $v0, $zero, 0xd
/* E46E0 8003B1D0 10620A8E */  beq        $v1, $v0, .L8003DC0C
/* E46E4 8003B1D4 2862000E */   slti      $v0, $v1, 0xe
/* E46E8 8003B1D8 10400027 */  beqz       $v0, .L8003B278
/* E46EC 8003B1DC 24020006 */   addiu     $v0, $zero, 6
/* E46F0 8003B1E0 106201AF */  beq        $v1, $v0, .L8003B8A0
/* E46F4 8003B1E4 28620007 */   slti      $v0, $v1, 7
/* E46F8 8003B1E8 10400011 */  beqz       $v0, .L8003B230
/* E46FC 8003B1EC 24020002 */   addiu     $v0, $zero, 2
/* E4700 8003B1F0 10620078 */  beq        $v1, $v0, .L8003B3D4
/* E4704 8003B1F4 28620003 */   slti      $v0, $v1, 3
/* E4708 8003B1F8 50400007 */  beql       $v0, $zero, .L8003B218
/* E470C 8003B1FC 24020004 */   addiu     $v0, $zero, 4
/* E4710 8003B200 1060004E */  beqz       $v1, .L8003B33C
/* E4714 8003B204 24020001 */   addiu     $v0, $zero, 1
/* E4718 8003B208 10620062 */  beq        $v1, $v0, .L8003B394
/* E471C 8003B20C 00001021 */   addu      $v0, $zero, $zero
/* E4720 8003B210 0800FF4B */  j          .L8003FD2C
/* E4724 8003B214 00000000 */   nop
.L8003B218:
/* E4728 8003B218 106200B5 */  beq        $v1, $v0, .L8003B4F0
/* E472C 8003B21C 28620005 */   slti      $v0, $v1, 5
/* E4730 8003B220 10400180 */  beqz       $v0, .L8003B824
/* E4734 8003B224 00000000 */   nop
/* E4738 8003B228 0800ED27 */  j          .L8003B49C
/* E473C 8003B22C 00000000 */   nop
.L8003B230:
/* E4740 8003B230 24020009 */  addiu      $v0, $zero, 9
/* E4744 8003B234 106204D9 */  beq        $v1, $v0, .L8003C59C
/* E4748 8003B238 2862000A */   slti      $v0, $v1, 0xa
/* E474C 8003B23C 10400007 */  beqz       $v0, .L8003B25C
/* E4750 8003B240 24020007 */   addiu     $v0, $zero, 7
/* E4754 8003B244 10620365 */  beq        $v1, $v0, .L8003BFDC
/* E4758 8003B248 24020008 */   addiu     $v0, $zero, 8
/* E475C 8003B24C 10620385 */  beq        $v1, $v0, .L8003C064
/* E4760 8003B250 00001021 */   addu      $v0, $zero, $zero
/* E4764 8003B254 0800FF4B */  j          .L8003FD2C
/* E4768 8003B258 00000000 */   nop
.L8003B25C:
/* E476C 8003B25C 2402000B */  addiu      $v0, $zero, 0xb
/* E4770 8003B260 106206D9 */  beq        $v1, $v0, .L8003CDC8
/* E4774 8003B264 2862000C */   slti      $v0, $v1, 0xc
/* E4778 8003B268 104006F3 */  beqz       $v0, .L8003CE38
/* E477C 8003B26C 00000000 */   nop
/* E4780 8003B270 0800F189 */  j          .L8003C624
/* E4784 8003B274 00000000 */   nop
.L8003B278:
/* E4788 8003B278 24020014 */  addiu      $v0, $zero, 0x14
/* E478C 8003B27C 10620DA8 */  beq        $v1, $v0, .L8003E920
/* E4790 8003B280 28620015 */   slti      $v0, $v1, 0x15
/* E4794 8003B284 10400013 */  beqz       $v0, .L8003B2D4
/* E4798 8003B288 24020010 */   addiu     $v0, $zero, 0x10
/* E479C 8003B28C 10620C00 */  beq        $v1, $v0, .L8003E290
/* E47A0 8003B290 00000000 */   nop
/* E47A4 8003B294 28620011 */  slti       $v0, $v1, 0x11
/* E47A8 8003B298 10400007 */  beqz       $v0, .L8003B2B8
/* E47AC 8003B29C 2402000E */   addiu     $v0, $zero, 0xe
/* E47B0 8003B2A0 10620A82 */  beq        $v1, $v0, .L8003DCAC
/* E47B4 8003B2A4 2402000F */   addiu     $v0, $zero, 0xf
/* E47B8 8003B2A8 10620BDD */  beq        $v1, $v0, .L8003E220
/* E47BC 8003B2AC 00001021 */   addu      $v0, $zero, $zero
/* E47C0 8003B2B0 0800FF4B */  j          .L8003FD2C
/* E47C4 8003B2B4 00000000 */   nop
.L8003B2B8:
/* E47C8 8003B2B8 24020012 */  addiu      $v0, $zero, 0x12
/* E47CC 8003B2BC 10620CFB */  beq        $v1, $v0, .L8003E6AC
/* E47D0 8003B2C0 28620013 */   slti      $v0, $v1, 0x13
/* E47D4 8003B2C4 10400D94 */  beqz       $v0, .L8003E918
/* E47D8 8003B2C8 24020014 */   addiu     $v0, $zero, 0x14
/* E47DC 8003B2CC 0800F994 */  j          .L8003E650
/* E47E0 8003B2D0 00000000 */   nop
.L8003B2D4:
/* E47E4 8003B2D4 24020018 */  addiu      $v0, $zero, 0x18
/* E47E8 8003B2D8 10620FA9 */  beq        $v1, $v0, .L8003F180
/* E47EC 8003B2DC 28620019 */   slti      $v0, $v1, 0x19
/* E47F0 8003B2E0 10400007 */  beqz       $v0, .L8003B300
/* E47F4 8003B2E4 24020016 */   addiu     $v0, $zero, 0x16
/* E47F8 8003B2E8 10620EE7 */  beq        $v1, $v0, .L8003EE88
/* E47FC 8003B2EC 28620017 */   slti      $v0, $v1, 0x17
/* E4800 8003B2F0 10400F9D */  beqz       $v0, .L8003F168
/* E4804 8003B2F4 00001021 */   addu      $v0, $zero, $zero
/* E4808 8003B2F8 0800FA96 */  j          .L8003EA58
/* E480C 8003B2FC 00000000 */   nop
.L8003B300:
/* E4810 8003B300 3402FFFE */  ori        $v0, $zero, 0xfffe
/* E4814 8003B304 10621279 */  beq        $v1, $v0, .L8003FCEC
/* E4818 8003B308 00000000 */   nop
/* E481C 8003B30C 0043102A */  slt        $v0, $v0, $v1
/* E4820 8003B310 14400006 */  bnez       $v0, .L8003B32C
/* E4824 8003B314 3402FFFF */   ori       $v0, $zero, 0xffff
/* E4828 8003B318 24020019 */  addiu      $v0, $zero, 0x19
/* E482C 8003B31C 106210D9 */  beq        $v1, $v0, .L8003F684
/* E4830 8003B320 3C028888 */   lui       $v0, 0x8888
/* E4834 8003B324 0800FF4B */  j          .L8003FD2C
/* E4838 8003B328 00001021 */   addu      $v0, $zero, $zero
.L8003B32C:
/* E483C 8003B32C 10621268 */  beq        $v1, $v0, .L8003FCD0
/* E4840 8003B330 24020001 */   addiu     $v0, $zero, 1
/* E4844 8003B334 0800FF4B */  j          .L8003FD2C
/* E4848 8003B338 00001021 */   addu      $v0, $zero, $zero
.L8003B33C:
/* E484C 8003B33C 24020001 */  addiu      $v0, $zero, 1
/* E4850 8003B340 3C018007 */  lui        $at, %hi(D_80068ED0)
/* E4854 8003B344 0C00D7DD */  jal        func_80035F74_DF484
/* E4858 8003B348 A0228ED0 */   sb        $v0, %lo(D_80068ED0)($at)
/* E485C 8003B34C 0C029375 */  jal        func_800A4DD4
/* E4860 8003B350 00000000 */   nop
/* E4864 8003B354 00402021 */  addu       $a0, $v0, $zero
/* E4868 8003B358 24050010 */  addiu      $a1, $zero, 0x10
/* E486C 8003B35C 24060010 */  addiu      $a2, $zero, 0x10
/* E4870 8003B360 2407012F */  addiu      $a3, $zero, 0x12f
/* E4874 8003B364 240200DF */  addiu      $v0, $zero, 0xdf
/* E4878 8003B368 3C018007 */  lui        $at, %hi(D_8006BF84)
/* E487C 8003B36C AC24BF84 */  sw         $a0, %lo(D_8006BF84)($at)
/* E4880 8003B370 A480001C */  sh         $zero, 0x1c($a0)
/* E4884 8003B374 0C02939C */  jal        func_800A4E70
/* E4888 8003B378 AFA20010 */   sw        $v0, 0x10($sp)
/* E488C 8003B37C 00001021 */  addu       $v0, $zero, $zero
/* E4890 8003B380 24030001 */  addiu      $v1, $zero, 1
/* E4894 8003B384 3C018007 */  lui        $at, %hi(D_8006BFCA)
/* E4898 8003B388 A020BFCA */  sb         $zero, %lo(D_8006BFCA)($at)
/* E489C 8003B38C 0800FF4B */  j          .L8003FD2C
/* E48A0 8003B390 A683001C */   sh        $v1, 0x1c($s4)
.L8003B394:
/* E48A4 8003B394 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E48A8 8003B398 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E48AC 8003B39C 14400006 */  bnez       $v0, .L8003B3B8
/* E48B0 8003B3A0 28420002 */   slti      $v0, $v0, 2
/* E48B4 8003B3A4 0C00E370 */  jal        func_80038DC0_E22D0
/* E48B8 8003B3A8 00000000 */   nop
/* E48BC 8003B3AC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E48C0 8003B3B0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E48C4 8003B3B4 28420002 */  slti       $v0, $v0, 2
.L8003B3B8:
/* E48C8 8003B3B8 1440125C */  bnez       $v0, .L8003FD2C
/* E48CC 8003B3BC 00001021 */   addu      $v0, $zero, $zero
/* E48D0 8003B3C0 0C02A5AF */  jal        func_800A96BC
/* E48D4 8003B3C4 24040001 */   addiu     $a0, $zero, 1
/* E48D8 8003B3C8 24020002 */  addiu      $v0, $zero, 2
/* E48DC 8003B3CC 0800FF4A */  j          .L8003FD28
/* E48E0 8003B3D0 A682001C */   sh        $v0, 0x1c($s4)
.L8003B3D4:
/* E48E4 8003B3D4 0C00D8C1 */  jal        func_80036304_DF814
/* E48E8 8003B3D8 24040017 */   addiu     $a0, $zero, 0x17
/* E48EC 8003B3DC 8C44000C */  lw         $a0, 0xc($v0)
/* E48F0 8003B3E0 0C028A40 */  jal        func_800A2900
/* E48F4 8003B3E4 2410003C */   addiu     $s0, $zero, 0x3c
/* E48F8 8003B3E8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E48FC 8003B3EC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E4900 8003B3F0 0202001A */  div        $zero, $s0, $v0
/* E4904 8003B3F4 14400002 */  bnez       $v0, .L8003B400
/* E4908 8003B3F8 00000000 */   nop
/* E490C 8003B3FC 0007000D */  break      7
.L8003B400:
/* E4910 8003B400 2401FFFF */   addiu     $at, $zero, -1
/* E4914 8003B404 14410004 */  bne        $v0, $at, .L8003B418
/* E4918 8003B408 3C018000 */   lui       $at, 0x8000
/* E491C 8003B40C 16010002 */  bne        $s0, $at, .L8003B418
/* E4920 8003B410 00000000 */   nop
/* E4924 8003B414 0006000D */  break      6
.L8003B418:
/* E4928 8003B418 00002012 */   mflo      $a0
/* E492C 8003B41C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E4930 8003B420 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E4934 8003B424 00041080 */  sll        $v0, $a0, 2
/* E4938 8003B428 00441021 */  addu       $v0, $v0, $a0
/* E493C 8003B42C 14620003 */  bne        $v1, $v0, .L8003B43C
/* E4940 8003B430 00000000 */   nop
/* E4944 8003B434 0C02A5C1 */  jal        func_800A9704
/* E4948 8003B438 00000000 */   nop
.L8003B43C:
/* E494C 8003B43C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E4950 8003B440 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E4954 8003B444 0202001A */  div        $zero, $s0, $v0
/* E4958 8003B448 14400002 */  bnez       $v0, .L8003B454
/* E495C 8003B44C 00000000 */   nop
/* E4960 8003B450 0007000D */  break      7
.L8003B454:
/* E4964 8003B454 2401FFFF */   addiu     $at, $zero, -1
/* E4968 8003B458 14410004 */  bne        $v0, $at, .L8003B46C
/* E496C 8003B45C 3C018000 */   lui       $at, 0x8000
/* E4970 8003B460 16010002 */  bne        $s0, $at, .L8003B46C
/* E4974 8003B464 00000000 */   nop
/* E4978 8003B468 0006000D */  break      6
.L8003B46C:
/* E497C 8003B46C 00001012 */   mflo      $v0
/* E4980 8003B470 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E4984 8003B474 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E4988 8003B478 00021840 */  sll        $v1, $v0, 1
/* E498C 8003B47C 00621821 */  addu       $v1, $v1, $v0
/* E4990 8003B480 00031840 */  sll        $v1, $v1, 1
/* E4994 8003B484 0083202A */  slt        $a0, $a0, $v1
/* E4998 8003B488 14801228 */  bnez       $a0, .L8003FD2C
/* E499C 8003B48C 00001021 */   addu      $v0, $zero, $zero
/* E49A0 8003B490 24020003 */  addiu      $v0, $zero, 3
/* E49A4 8003B494 0800FF4A */  j          .L8003FD28
/* E49A8 8003B498 A682001C */   sh        $v0, 0x1c($s4)
.L8003B49C:
/* E49AC 8003B49C 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E49B0 8003B4A0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E49B4 8003B4A4 14400006 */  bnez       $v0, .L8003B4C0
/* E49B8 8003B4A8 28420002 */   slti      $v0, $v0, 2
/* E49BC 8003B4AC 0C00E387 */  jal        func_80038E1C_E232C
/* E49C0 8003B4B0 00000000 */   nop
/* E49C4 8003B4B4 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E49C8 8003B4B8 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E49CC 8003B4BC 28420002 */  slti       $v0, $v0, 2
.L8003B4C0:
/* E49D0 8003B4C0 1440121A */  bnez       $v0, .L8003FD2C
/* E49D4 8003B4C4 00001021 */   addu      $v0, $zero, $zero
/* E49D8 8003B4C8 0C02A5AF */  jal        func_800A96BC
/* E49DC 8003B4CC 24040001 */   addiu     $a0, $zero, 1
/* E49E0 8003B4D0 3C014280 */  lui        $at, 0x4280
/* E49E4 8003B4D4 44810000 */  mtc1       $at, $f0
/* E49E8 8003B4D8 24020004 */  addiu      $v0, $zero, 4
/* E49EC 8003B4DC A682001C */  sh         $v0, 0x1c($s4)
/* E49F0 8003B4E0 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E49F4 8003B4E4 E420BF90 */  swc1       $f0, %lo(D_8006BF90)($at)
/* E49F8 8003B4E8 0800FF4B */  j          .L8003FD2C
/* E49FC 8003B4EC 00001021 */   addu      $v0, $zero, $zero
.L8003B4F0:
/* E4A00 8003B4F0 0C00D8C1 */  jal        func_80036304_DF814
/* E4A04 8003B4F4 2404001F */   addiu     $a0, $zero, 0x1f
/* E4A08 8003B4F8 8C44000C */  lw         $a0, 0xc($v0)
/* E4A0C 8003B4FC 0C028A40 */  jal        func_800A2900
/* E4A10 8003B500 00000000 */   nop
/* E4A14 8003B504 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E4A18 8003B508 C420BF90 */  lwc1       $f0, %lo(D_8006BF90)($at)
/* E4A1C 8003B50C 3C013E00 */  lui        $at, 0x3e00
/* E4A20 8003B510 44811000 */  mtc1       $at, $f2
/* E4A24 8003B514 00000000 */  nop
/* E4A28 8003B518 46020000 */  add.s      $f0, $f0, $f2
/* E4A2C 8003B51C 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E4A30 8003B520 E420BF90 */  swc1       $f0, %lo(D_8006BF90)($at)
/* E4A34 8003B524 0C00D8C1 */  jal        func_80036304_DF814
/* E4A38 8003B528 2404001D */   addiu     $a0, $zero, 0x1d
/* E4A3C 8003B52C 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E4A40 8003B530 C422BF90 */  lwc1       $f2, %lo(D_8006BF90)($at)
/* E4A44 8003B534 3C014080 */  lui        $at, 0x4080
/* E4A48 8003B538 44810000 */  mtc1       $at, $f0
/* E4A4C 8003B53C 00000000 */  nop
/* E4A50 8003B540 46001082 */  mul.s      $f2, $f2, $f0
/* E4A54 8003B544 00408821 */  addu       $s1, $v0, $zero
/* E4A58 8003B548 8E24000C */  lw         $a0, 0xc($s1)
/* E4A5C 8003B54C 24050040 */  addiu      $a1, $zero, 0x40
/* E4A60 8003B550 4600100D */  trunc.w.s  $f0, $f2
/* E4A64 8003B554 44060000 */  mfc1       $a2, $f0
/* E4A68 8003B558 00000000 */  nop
/* E4A6C 8003B55C 00063400 */  sll        $a2, $a2, 0x10
/* E4A70 8003B560 0C028D89 */  jal        func_800A3624
/* E4A74 8003B564 00063403 */   sra       $a2, $a2, 0x10
/* E4A78 8003B568 8E24000C */  lw         $a0, 0xc($s1)
/* E4A7C 8003B56C 0C028A40 */  jal        func_800A2900
/* E4A80 8003B570 00000000 */   nop
/* E4A84 8003B574 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E4A88 8003B578 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E4A8C 8003B57C 2402003C */  addiu      $v0, $zero, 0x3c
/* E4A90 8003B580 0043001A */  div        $zero, $v0, $v1
/* E4A94 8003B584 14600002 */  bnez       $v1, .L8003B590
/* E4A98 8003B588 00000000 */   nop
/* E4A9C 8003B58C 0007000D */  break      7
.L8003B590:
/* E4AA0 8003B590 2401FFFF */   addiu     $at, $zero, -1
/* E4AA4 8003B594 14610004 */  bne        $v1, $at, .L8003B5A8
/* E4AA8 8003B598 3C018000 */   lui       $at, 0x8000
/* E4AAC 8003B59C 14410002 */  bne        $v0, $at, .L8003B5A8
/* E4AB0 8003B5A0 00000000 */   nop
/* E4AB4 8003B5A4 0006000D */  break      6
.L8003B5A8:
/* E4AB8 8003B5A8 00001012 */   mflo      $v0
/* E4ABC 8003B5AC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E4AC0 8003B5B0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E4AC4 8003B5B4 00021080 */  sll        $v0, $v0, 2
/* E4AC8 8003B5B8 0062182A */  slt        $v1, $v1, $v0
/* E4ACC 8003B5BC 14600014 */  bnez       $v1, .L8003B610
/* E4AD0 8003B5C0 00000000 */   nop
/* E4AD4 8003B5C4 3C028007 */  lui        $v0, %hi(D_8006C3F4)
/* E4AD8 8003B5C8 2442C3F4 */  addiu      $v0, $v0, %lo(D_8006C3F4)
/* E4ADC 8003B5CC C4400000 */  lwc1       $f0, ($v0)
/* E4AE0 8003B5D0 3C014180 */  lui        $at, 0x4180
/* E4AE4 8003B5D4 44811000 */  mtc1       $at, $f2
/* E4AE8 8003B5D8 00000000 */  nop
/* E4AEC 8003B5DC 46020000 */  add.s      $f0, $f0, $f2
/* E4AF0 8003B5E0 3C01437F */  lui        $at, 0x437f
/* E4AF4 8003B5E4 44811000 */  mtc1       $at, $f2
/* E4AF8 8003B5E8 00000000 */  nop
/* E4AFC 8003B5EC 4600103E */  c.le.s     $f2, $f0
/* E4B00 8003B5F0 00000000 */  nop
/* E4B04 8003B5F4 00000000 */  nop
/* E4B08 8003B5F8 45000005 */  bc1f       .L8003B610
/* E4B0C 8003B5FC E4400000 */   swc1      $f0, ($v0)
/* E4B10 8003B600 3C014350 */  lui        $at, 0x4350
/* E4B14 8003B604 44810000 */  mtc1       $at, $f0
/* E4B18 8003B608 00000000 */  nop
/* E4B1C 8003B60C E4400000 */  swc1       $f0, ($v0)
.L8003B610:
/* E4B20 8003B610 0C00D8C1 */  jal        func_80036304_DF814
/* E4B24 8003B614 2404001E */   addiu     $a0, $zero, 0x1e
/* E4B28 8003B618 3C018007 */  lui        $at, %hi(D_8006C3E8)
/* E4B2C 8003B61C C422C3E8 */  lwc1       $f2, %lo(D_8006C3E8)($at)
/* E4B30 8003B620 3C014F00 */  lui        $at, 0x4f00
/* E4B34 8003B624 44810000 */  mtc1       $at, $f0
/* E4B38 8003B628 00000000 */  nop
/* E4B3C 8003B62C 4602003E */  c.le.s     $f0, $f2
/* E4B40 8003B630 00000000 */  nop
/* E4B44 8003B634 00000000 */  nop
/* E4B48 8003B638 45010005 */  bc1t       .L8003B650
/* E4B4C 8003B63C 00408821 */   addu      $s1, $v0, $zero
/* E4B50 8003B640 4600100D */  trunc.w.s  $f0, $f2
/* E4B54 8003B644 44050000 */  mfc1       $a1, $f0
/* E4B58 8003B648 0800ED99 */  j          .L8003B664
/* E4B5C 8003B64C 00000000 */   nop
.L8003B650:
/* E4B60 8003B650 46001001 */  sub.s      $f0, $f2, $f0
/* E4B64 8003B654 4600008D */  trunc.w.s  $f2, $f0
/* E4B68 8003B658 44051000 */  mfc1       $a1, $f2
/* E4B6C 8003B65C 3C028000 */  lui        $v0, 0x8000
/* E4B70 8003B660 00A22825 */  or         $a1, $a1, $v0
.L8003B664:
/* E4B74 8003B664 3C018007 */  lui        $at, %hi(D_8006C3EC)
/* E4B78 8003B668 C422C3EC */  lwc1       $f2, %lo(D_8006C3EC)($at)
/* E4B7C 8003B66C 3C014F00 */  lui        $at, 0x4f00
/* E4B80 8003B670 44810000 */  mtc1       $at, $f0
/* E4B84 8003B674 00000000 */  nop
/* E4B88 8003B678 4602003E */  c.le.s     $f0, $f2
/* E4B8C 8003B67C 00000000 */  nop
/* E4B90 8003B680 00000000 */  nop
/* E4B94 8003B684 45010005 */  bc1t       .L8003B69C
/* E4B98 8003B688 30A500FF */   andi      $a1, $a1, 0xff
/* E4B9C 8003B68C 4600100D */  trunc.w.s  $f0, $f2
/* E4BA0 8003B690 44060000 */  mfc1       $a2, $f0
/* E4BA4 8003B694 0800EDAC */  j          .L8003B6B0
/* E4BA8 8003B698 00000000 */   nop
.L8003B69C:
/* E4BAC 8003B69C 46001001 */  sub.s      $f0, $f2, $f0
/* E4BB0 8003B6A0 4600008D */  trunc.w.s  $f2, $f0
/* E4BB4 8003B6A4 44061000 */  mfc1       $a2, $f2
/* E4BB8 8003B6A8 3C028000 */  lui        $v0, 0x8000
/* E4BBC 8003B6AC 00C23025 */  or         $a2, $a2, $v0
.L8003B6B0:
/* E4BC0 8003B6B0 3C018007 */  lui        $at, %hi(D_8006C3F0)
/* E4BC4 8003B6B4 C422C3F0 */  lwc1       $f2, %lo(D_8006C3F0)($at)
/* E4BC8 8003B6B8 3C014F00 */  lui        $at, 0x4f00
/* E4BCC 8003B6BC 44810000 */  mtc1       $at, $f0
/* E4BD0 8003B6C0 00000000 */  nop
/* E4BD4 8003B6C4 4602003E */  c.le.s     $f0, $f2
/* E4BD8 8003B6C8 00000000 */  nop
/* E4BDC 8003B6CC 00000000 */  nop
/* E4BE0 8003B6D0 45010005 */  bc1t       .L8003B6E8
/* E4BE4 8003B6D4 30C600FF */   andi      $a2, $a2, 0xff
/* E4BE8 8003B6D8 4600100D */  trunc.w.s  $f0, $f2
/* E4BEC 8003B6DC 44070000 */  mfc1       $a3, $f0
/* E4BF0 8003B6E0 0800EDBF */  j          .L8003B6FC
/* E4BF4 8003B6E4 00000000 */   nop
.L8003B6E8:
/* E4BF8 8003B6E8 46001001 */  sub.s      $f0, $f2, $f0
/* E4BFC 8003B6EC 4600008D */  trunc.w.s  $f2, $f0
/* E4C00 8003B6F0 44071000 */  mfc1       $a3, $f2
/* E4C04 8003B6F4 3C028000 */  lui        $v0, 0x8000
/* E4C08 8003B6F8 00E23825 */  or         $a3, $a3, $v0
.L8003B6FC:
/* E4C0C 8003B6FC 3C018007 */  lui        $at, %hi(D_8006C3F4)
/* E4C10 8003B700 C422C3F4 */  lwc1       $f2, %lo(D_8006C3F4)($at)
/* E4C14 8003B704 3C014F00 */  lui        $at, 0x4f00
/* E4C18 8003B708 44810000 */  mtc1       $at, $f0
/* E4C1C 8003B70C 00000000 */  nop
/* E4C20 8003B710 4602003E */  c.le.s     $f0, $f2
/* E4C24 8003B714 00000000 */  nop
/* E4C28 8003B718 00000000 */  nop
/* E4C2C 8003B71C 45010006 */  bc1t       .L8003B738
/* E4C30 8003B720 30E700FF */   andi      $a3, $a3, 0xff
/* E4C34 8003B724 4600100D */  trunc.w.s  $f0, $f2
/* E4C38 8003B728 44030000 */  mfc1       $v1, $f0
/* E4C3C 8003B72C 00000000 */  nop
/* E4C40 8003B730 0800EDD4 */  j          .L8003B750
/* E4C44 8003B734 306200FF */   andi      $v0, $v1, 0xff
.L8003B738:
/* E4C48 8003B738 46001001 */  sub.s      $f0, $f2, $f0
/* E4C4C 8003B73C 4600008D */  trunc.w.s  $f2, $f0
/* E4C50 8003B740 44031000 */  mfc1       $v1, $f2
/* E4C54 8003B744 3C028000 */  lui        $v0, 0x8000
/* E4C58 8003B748 00621825 */  or         $v1, $v1, $v0
/* E4C5C 8003B74C 306200FF */  andi       $v0, $v1, 0xff
.L8003B750:
/* E4C60 8003B750 AFA20010 */  sw         $v0, 0x10($sp)
/* E4C64 8003B754 8E24000C */  lw         $a0, 0xc($s1)
/* E4C68 8003B758 0C028E41 */  jal        func_800A3904
/* E4C6C 8003B75C 2410003C */   addiu     $s0, $zero, 0x3c
/* E4C70 8003B760 8E24000C */  lw         $a0, 0xc($s1)
/* E4C74 8003B764 0C028A40 */  jal        func_800A2900
/* E4C78 8003B768 00000000 */   nop
/* E4C7C 8003B76C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E4C80 8003B770 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E4C84 8003B774 0202001A */  div        $zero, $s0, $v0
/* E4C88 8003B778 14400002 */  bnez       $v0, .L8003B784
/* E4C8C 8003B77C 00000000 */   nop
/* E4C90 8003B780 0007000D */  break      7
.L8003B784:
/* E4C94 8003B784 2401FFFF */   addiu     $at, $zero, -1
/* E4C98 8003B788 14410004 */  bne        $v0, $at, .L8003B79C
/* E4C9C 8003B78C 3C018000 */   lui       $at, 0x8000
/* E4CA0 8003B790 16010002 */  bne        $s0, $at, .L8003B79C
/* E4CA4 8003B794 00000000 */   nop
/* E4CA8 8003B798 0006000D */  break      6
.L8003B79C:
/* E4CAC 8003B79C 00002012 */   mflo      $a0
/* E4CB0 8003B7A0 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E4CB4 8003B7A4 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E4CB8 8003B7A8 00041080 */  sll        $v0, $a0, 2
/* E4CBC 8003B7AC 00441021 */  addu       $v0, $v0, $a0
/* E4CC0 8003B7B0 00021040 */  sll        $v0, $v0, 1
/* E4CC4 8003B7B4 14620003 */  bne        $v1, $v0, .L8003B7C4
/* E4CC8 8003B7B8 00000000 */   nop
/* E4CCC 8003B7BC 0C02A5C1 */  jal        func_800A9704
/* E4CD0 8003B7C0 00042040 */   sll       $a0, $a0, 1
.L8003B7C4:
/* E4CD4 8003B7C4 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E4CD8 8003B7C8 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E4CDC 8003B7CC 0202001A */  div        $zero, $s0, $v0
/* E4CE0 8003B7D0 14400002 */  bnez       $v0, .L8003B7DC
/* E4CE4 8003B7D4 00000000 */   nop
/* E4CE8 8003B7D8 0007000D */  break      7
.L8003B7DC:
/* E4CEC 8003B7DC 2401FFFF */   addiu     $at, $zero, -1
/* E4CF0 8003B7E0 14410004 */  bne        $v0, $at, .L8003B7F4
/* E4CF4 8003B7E4 3C018000 */   lui       $at, 0x8000
/* E4CF8 8003B7E8 16010002 */  bne        $s0, $at, .L8003B7F4
/* E4CFC 8003B7EC 00000000 */   nop
/* E4D00 8003B7F0 0006000D */  break      6
.L8003B7F4:
/* E4D04 8003B7F4 00001012 */   mflo      $v0
/* E4D08 8003B7F8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E4D0C 8003B7FC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E4D10 8003B800 00021840 */  sll        $v1, $v0, 1
/* E4D14 8003B804 00621821 */  addu       $v1, $v1, $v0
/* E4D18 8003B808 00031880 */  sll        $v1, $v1, 2
/* E4D1C 8003B80C 0083202A */  slt        $a0, $a0, $v1
/* E4D20 8003B810 14801146 */  bnez       $a0, .L8003FD2C
/* E4D24 8003B814 00001021 */   addu      $v0, $zero, $zero
/* E4D28 8003B818 24020005 */  addiu      $v0, $zero, 5
/* E4D2C 8003B81C 0800FF4A */  j          .L8003FD28
/* E4D30 8003B820 A682001C */   sh        $v0, 0x1c($s4)
.L8003B824:
/* E4D34 8003B824 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E4D38 8003B828 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E4D3C 8003B82C 14400006 */  bnez       $v0, .L8003B848
/* E4D40 8003B830 28420002 */   slti      $v0, $v0, 2
/* E4D44 8003B834 0C00E3AE */  jal        func_80038EB8_E23C8
/* E4D48 8003B838 00000000 */   nop
/* E4D4C 8003B83C 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E4D50 8003B840 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E4D54 8003B844 28420002 */  slti       $v0, $v0, 2
.L8003B848:
/* E4D58 8003B848 14401138 */  bnez       $v0, .L8003FD2C
/* E4D5C 8003B84C 00001021 */   addu      $v0, $zero, $zero
/* E4D60 8003B850 0C02A5AF */  jal        func_800A96BC
/* E4D64 8003B854 24040001 */   addiu     $a0, $zero, 1
/* E4D68 8003B858 24040007 */  addiu      $a0, $zero, 7
/* E4D6C 8003B85C 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* E4D70 8003B860 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* E4D74 8003B864 2405FFFF */  addiu      $a1, $zero, -1
/* E4D78 8003B868 24060001 */  addiu      $a2, $zero, 1
/* E4D7C 8003B86C 24020006 */  addiu      $v0, $zero, 6
/* E4D80 8003B870 A682001C */  sh         $v0, 0x1c($s4)
/* E4D84 8003B874 24020001 */  addiu      $v0, $zero, 1
/* E4D88 8003B878 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E4D8C 8003B87C A420BFA4 */  sh         $zero, %lo(D_8006BFA4)($at)
/* E4D90 8003B880 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E4D94 8003B884 A420BFA6 */  sh         $zero, %lo(D_8006BFA6)($at)
/* E4D98 8003B888 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E4D9C 8003B88C A420BFA8 */  sh         $zero, %lo(D_8006BFA8)($at)
/* E4DA0 8003B890 0C026C9A */  jal        func_8009B268
/* E4DA4 8003B894 AFA20010 */   sw        $v0, 0x10($sp)
/* E4DA8 8003B898 0800FF4B */  j          .L8003FD2C
/* E4DAC 8003B89C 00001021 */   addu      $v0, $zero, $zero
.L8003B8A0:
/* E4DB0 8003B8A0 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E4DB4 8003B8A4 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E4DB8 8003B8A8 2410003C */  addiu      $s0, $zero, 0x3c
/* E4DBC 8003B8AC 0203001A */  div        $zero, $s0, $v1
/* E4DC0 8003B8B0 14600002 */  bnez       $v1, .L8003B8BC
/* E4DC4 8003B8B4 00000000 */   nop
/* E4DC8 8003B8B8 0007000D */  break      7
.L8003B8BC:
/* E4DCC 8003B8BC 2401FFFF */   addiu     $at, $zero, -1
/* E4DD0 8003B8C0 14610004 */  bne        $v1, $at, .L8003B8D4
/* E4DD4 8003B8C4 3C018000 */   lui       $at, 0x8000
/* E4DD8 8003B8C8 16010002 */  bne        $s0, $at, .L8003B8D4
/* E4DDC 8003B8CC 00000000 */   nop
/* E4DE0 8003B8D0 0006000D */  break      6
.L8003B8D4:
/* E4DE4 8003B8D4 00001812 */   mflo      $v1
/* E4DE8 8003B8D8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E4DEC 8003B8DC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E4DF0 8003B8E0 00031040 */  sll        $v0, $v1, 1
/* E4DF4 8003B8E4 00431021 */  addu       $v0, $v0, $v1
/* E4DF8 8003B8E8 00021840 */  sll        $v1, $v0, 1
/* E4DFC 8003B8EC 0083102A */  slt        $v0, $a0, $v1
/* E4E00 8003B8F0 10400114 */  beqz       $v0, .L8003BD44
/* E4E04 8003B8F4 00000000 */   nop
/* E4E08 8003B8F8 0C00D8C1 */  jal        func_80036304_DF814
/* E4E0C 8003B8FC 2404001A */   addiu     $a0, $zero, 0x1a
/* E4E10 8003B900 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E4E14 8003B904 8463BFA4 */  lh         $v1, %lo(D_8006BFA4)($v1)
/* E4E18 8003B908 00408821 */  addu       $s1, $v0, $zero
/* E4E1C 8003B90C 240500FF */  addiu      $a1, $zero, 0xff
/* E4E20 8003B910 000318C0 */  sll        $v1, $v1, 3
/* E4E24 8003B914 306300FF */  andi       $v1, $v1, 0xff
/* E4E28 8003B918 AFA30010 */  sw         $v1, 0x10($sp)
/* E4E2C 8003B91C 8E24000C */  lw         $a0, 0xc($s1)
/* E4E30 8003B920 240600FF */  addiu      $a2, $zero, 0xff
/* E4E34 8003B924 0C028E41 */  jal        func_800A3904
/* E4E38 8003B928 240700FF */   addiu     $a3, $zero, 0xff
/* E4E3C 8003B92C 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E4E40 8003B930 8442BFA4 */  lh         $v0, %lo(D_8006BFA4)($v0)
/* E4E44 8003B934 24120020 */  addiu      $s2, $zero, 0x20
/* E4E48 8003B938 14520007 */  bne        $v0, $s2, .L8003B958
/* E4E4C 8003B93C 240200FF */   addiu     $v0, $zero, 0xff
/* E4E50 8003B940 AFA20010 */  sw         $v0, 0x10($sp)
/* E4E54 8003B944 8E24000C */  lw         $a0, 0xc($s1)
/* E4E58 8003B948 240500FF */  addiu      $a1, $zero, 0xff
/* E4E5C 8003B94C 240600FF */  addiu      $a2, $zero, 0xff
/* E4E60 8003B950 0C028E41 */  jal        func_800A3904
/* E4E64 8003B954 240700FF */   addiu     $a3, $zero, 0xff
.L8003B958:
/* E4E68 8003B958 3C013F80 */  lui        $at, 0x3f80
/* E4E6C 8003B95C 4481A000 */  mtc1       $at, $f20
/* E4E70 8003B960 8E24000C */  lw         $a0, 0xc($s1)
/* E4E74 8003B964 4406A000 */  mfc1       $a2, $f20
/* E4E78 8003B968 4407A000 */  mfc1       $a3, $f20
/* E4E7C 8003B96C 00000000 */  nop
/* E4E80 8003B970 0C02915B */  jal        func_800A456C
/* E4E84 8003B974 00002821 */   addu      $a1, $zero, $zero
/* E4E88 8003B978 8E24000C */  lw         $a0, 0xc($s1)
/* E4E8C 8003B97C 0C028A40 */  jal        func_800A2900
/* E4E90 8003B980 00000000 */   nop
/* E4E94 8003B984 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E4E98 8003B988 8442BFA4 */  lh         $v0, %lo(D_8006BFA4)($v0)
/* E4E9C 8003B98C 28420020 */  slti       $v0, $v0, 0x20
/* E4EA0 8003B990 10400027 */  beqz       $v0, .L8003BA30
/* E4EA4 8003B994 00000000 */   nop
/* E4EA8 8003B998 0C00D8C1 */  jal        func_80036304_DF814
/* E4EAC 8003B99C 24040017 */   addiu     $a0, $zero, 0x17
/* E4EB0 8003B9A0 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E4EB4 8003B9A4 8463BFA4 */  lh         $v1, %lo(D_8006BFA4)($v1)
/* E4EB8 8003B9A8 00408821 */  addu       $s1, $v0, $zero
/* E4EBC 8003B9AC 240500FF */  addiu      $a1, $zero, 0xff
/* E4EC0 8003B9B0 00031880 */  sll        $v1, $v1, 2
/* E4EC4 8003B9B4 306300FF */  andi       $v1, $v1, 0xff
/* E4EC8 8003B9B8 AFA30010 */  sw         $v1, 0x10($sp)
/* E4ECC 8003B9BC 8E24000C */  lw         $a0, 0xc($s1)
/* E4ED0 8003B9C0 240600FF */  addiu      $a2, $zero, 0xff
/* E4ED4 8003B9C4 0C028E41 */  jal        func_800A3904
/* E4ED8 8003B9C8 240700FF */   addiu     $a3, $zero, 0xff
/* E4EDC 8003B9CC 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E4EE0 8003B9D0 8442BFA4 */  lh         $v0, %lo(D_8006BFA4)($v0)
/* E4EE4 8003B9D4 3C013C80 */  lui        $at, 0x3c80
/* E4EE8 8003B9D8 44811000 */  mtc1       $at, $f2
/* E4EEC 8003B9DC 44820000 */  mtc1       $v0, $f0
/* E4EF0 8003B9E0 00000000 */  nop
/* E4EF4 8003B9E4 46800020 */  cvt.s.w    $f0, $f0
/* E4EF8 8003B9E8 46020002 */  mul.s      $f0, $f0, $f2
/* E4EFC 8003B9EC 3C013FC0 */  lui        $at, 0x3fc0
/* E4F00 8003B9F0 44811000 */  mtc1       $at, $f2
/* E4F04 8003B9F4 00000000 */  nop
/* E4F08 8003B9F8 46001081 */  sub.s      $f2, $f2, $f0
/* E4F0C 8003B9FC 8E24000C */  lw         $a0, 0xc($s1)
/* E4F10 8003BA00 44061000 */  mfc1       $a2, $f2
/* E4F14 8003BA04 00002821 */  addu       $a1, $zero, $zero
/* E4F18 8003BA08 0C02915B */  jal        func_800A456C
/* E4F1C 8003BA0C 00C03821 */   addu      $a3, $a2, $zero
/* E4F20 8003BA10 8E24000C */  lw         $a0, 0xc($s1)
/* E4F24 8003BA14 0C028A40 */  jal        func_800A2900
/* E4F28 8003BA18 00000000 */   nop
/* E4F2C 8003BA1C 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E4F30 8003BA20 9442BFA4 */  lhu        $v0, %lo(D_8006BFA4)($v0)
/* E4F34 8003BA24 24420001 */  addiu      $v0, $v0, 1
/* E4F38 8003BA28 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E4F3C 8003BA2C A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
.L8003BA30:
/* E4F40 8003BA30 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E4F44 8003BA34 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E4F48 8003BA38 0202001A */  div        $zero, $s0, $v0
/* E4F4C 8003BA3C 14400002 */  bnez       $v0, .L8003BA48
/* E4F50 8003BA40 00000000 */   nop
/* E4F54 8003BA44 0007000D */  break      7
.L8003BA48:
/* E4F58 8003BA48 2401FFFF */   addiu     $at, $zero, -1
/* E4F5C 8003BA4C 14410004 */  bne        $v0, $at, .L8003BA60
/* E4F60 8003BA50 3C018000 */   lui       $at, 0x8000
/* E4F64 8003BA54 16010002 */  bne        $s0, $at, .L8003BA60
/* E4F68 8003BA58 00000000 */   nop
/* E4F6C 8003BA5C 0006000D */  break      6
.L8003BA60:
/* E4F70 8003BA60 00001012 */   mflo      $v0
/* E4F74 8003BA64 3C018007 */  lui        $at, %hi(D_80069F20)
/* E4F78 8003BA68 D4229F20 */  ldc1       $f2, %lo(D_80069F20)($at)
/* E4F7C 8003BA6C 44820000 */  mtc1       $v0, $f0
/* E4F80 8003BA70 00000000 */  nop
/* E4F84 8003BA74 46800021 */  cvt.d.w    $f0, $f0
/* E4F88 8003BA78 46220002 */  mul.d      $f0, $f0, $f2
/* E4F8C 8003BA7C 3C018007 */  lui        $at, %hi(D_8006C564)
/* E4F90 8003BA80 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* E4F94 8003BA84 468010A1 */  cvt.d.w    $f2, $f2
/* E4F98 8003BA88 4622003C */  c.lt.d     $f0, $f2
/* E4F9C 8003BA8C 00000000 */  nop
/* E4FA0 8003BA90 4500004B */  bc1f       .L8003BBC0
/* E4FA4 8003BA94 00000000 */   nop
/* E4FA8 8003BA98 0C00D8C1 */  jal        func_80036304_DF814
/* E4FAC 8003BA9C 2404001B */   addiu     $a0, $zero, 0x1b
/* E4FB0 8003BAA0 3C038007 */  lui        $v1, %hi(D_8006BFA6)
/* E4FB4 8003BAA4 8463BFA6 */  lh         $v1, %lo(D_8006BFA6)($v1)
/* E4FB8 8003BAA8 00408821 */  addu       $s1, $v0, $zero
/* E4FBC 8003BAAC 240500FF */  addiu      $a1, $zero, 0xff
/* E4FC0 8003BAB0 000318C0 */  sll        $v1, $v1, 3
/* E4FC4 8003BAB4 306300FF */  andi       $v1, $v1, 0xff
/* E4FC8 8003BAB8 AFA30010 */  sw         $v1, 0x10($sp)
/* E4FCC 8003BABC 8E24000C */  lw         $a0, 0xc($s1)
/* E4FD0 8003BAC0 240600FF */  addiu      $a2, $zero, 0xff
/* E4FD4 8003BAC4 0C028E41 */  jal        func_800A3904
/* E4FD8 8003BAC8 240700FF */   addiu     $a3, $zero, 0xff
/* E4FDC 8003BACC 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E4FE0 8003BAD0 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E4FE4 8003BAD4 14520007 */  bne        $v0, $s2, .L8003BAF4
/* E4FE8 8003BAD8 240200FF */   addiu     $v0, $zero, 0xff
/* E4FEC 8003BADC AFA20010 */  sw         $v0, 0x10($sp)
/* E4FF0 8003BAE0 8E24000C */  lw         $a0, 0xc($s1)
/* E4FF4 8003BAE4 240500FF */  addiu      $a1, $zero, 0xff
/* E4FF8 8003BAE8 240600FF */  addiu      $a2, $zero, 0xff
/* E4FFC 8003BAEC 0C028E41 */  jal        func_800A3904
/* E5000 8003BAF0 240700FF */   addiu     $a3, $zero, 0xff
.L8003BAF4:
/* E5004 8003BAF4 8E24000C */  lw         $a0, 0xc($s1)
/* E5008 8003BAF8 4406A000 */  mfc1       $a2, $f20
/* E500C 8003BAFC 00002821 */  addu       $a1, $zero, $zero
/* E5010 8003BB00 0C02915B */  jal        func_800A456C
/* E5014 8003BB04 00C03821 */   addu      $a3, $a2, $zero
/* E5018 8003BB08 8E24000C */  lw         $a0, 0xc($s1)
/* E501C 8003BB0C 0C028A40 */  jal        func_800A2900
/* E5020 8003BB10 00000000 */   nop
/* E5024 8003BB14 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E5028 8003BB18 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E502C 8003BB1C 28420020 */  slti       $v0, $v0, 0x20
/* E5030 8003BB20 10400027 */  beqz       $v0, .L8003BBC0
/* E5034 8003BB24 00000000 */   nop
/* E5038 8003BB28 0C00D8C1 */  jal        func_80036304_DF814
/* E503C 8003BB2C 24040018 */   addiu     $a0, $zero, 0x18
/* E5040 8003BB30 3C038007 */  lui        $v1, %hi(D_8006BFA6)
/* E5044 8003BB34 8463BFA6 */  lh         $v1, %lo(D_8006BFA6)($v1)
/* E5048 8003BB38 00408821 */  addu       $s1, $v0, $zero
/* E504C 8003BB3C 240500FF */  addiu      $a1, $zero, 0xff
/* E5050 8003BB40 00031880 */  sll        $v1, $v1, 2
/* E5054 8003BB44 306300FF */  andi       $v1, $v1, 0xff
/* E5058 8003BB48 AFA30010 */  sw         $v1, 0x10($sp)
/* E505C 8003BB4C 8E24000C */  lw         $a0, 0xc($s1)
/* E5060 8003BB50 240600FF */  addiu      $a2, $zero, 0xff
/* E5064 8003BB54 0C028E41 */  jal        func_800A3904
/* E5068 8003BB58 240700FF */   addiu     $a3, $zero, 0xff
/* E506C 8003BB5C 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E5070 8003BB60 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E5074 8003BB64 3C013C80 */  lui        $at, 0x3c80
/* E5078 8003BB68 44811000 */  mtc1       $at, $f2
/* E507C 8003BB6C 44820000 */  mtc1       $v0, $f0
/* E5080 8003BB70 00000000 */  nop
/* E5084 8003BB74 46800020 */  cvt.s.w    $f0, $f0
/* E5088 8003BB78 46020002 */  mul.s      $f0, $f0, $f2
/* E508C 8003BB7C 3C013FC0 */  lui        $at, 0x3fc0
/* E5090 8003BB80 44811000 */  mtc1       $at, $f2
/* E5094 8003BB84 00000000 */  nop
/* E5098 8003BB88 46001081 */  sub.s      $f2, $f2, $f0
/* E509C 8003BB8C 8E24000C */  lw         $a0, 0xc($s1)
/* E50A0 8003BB90 44061000 */  mfc1       $a2, $f2
/* E50A4 8003BB94 00002821 */  addu       $a1, $zero, $zero
/* E50A8 8003BB98 0C02915B */  jal        func_800A456C
/* E50AC 8003BB9C 00C03821 */   addu      $a3, $a2, $zero
/* E50B0 8003BBA0 8E24000C */  lw         $a0, 0xc($s1)
/* E50B4 8003BBA4 0C028A40 */  jal        func_800A2900
/* E50B8 8003BBA8 00000000 */   nop
/* E50BC 8003BBAC 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E50C0 8003BBB0 9442BFA6 */  lhu        $v0, %lo(D_8006BFA6)($v0)
/* E50C4 8003BBB4 24420001 */  addiu      $v0, $v0, 1
/* E50C8 8003BBB8 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E50CC 8003BBBC A422BFA6 */  sh         $v0, %lo(D_8006BFA6)($at)
.L8003BBC0:
/* E50D0 8003BBC0 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E50D4 8003BBC4 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E50D8 8003BBC8 2402003C */  addiu      $v0, $zero, 0x3c
/* E50DC 8003BBCC 0043001A */  div        $zero, $v0, $v1
/* E50E0 8003BBD0 14600002 */  bnez       $v1, .L8003BBDC
/* E50E4 8003BBD4 00000000 */   nop
/* E50E8 8003BBD8 0007000D */  break      7
.L8003BBDC:
/* E50EC 8003BBDC 2401FFFF */   addiu     $at, $zero, -1
/* E50F0 8003BBE0 14610004 */  bne        $v1, $at, .L8003BBF4
/* E50F4 8003BBE4 3C018000 */   lui       $at, 0x8000
/* E50F8 8003BBE8 14410002 */  bne        $v0, $at, .L8003BBF4
/* E50FC 8003BBEC 00000000 */   nop
/* E5100 8003BBF0 0006000D */  break      6
.L8003BBF4:
/* E5104 8003BBF4 00001012 */   mflo      $v0
/* E5108 8003BBF8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E510C 8003BBFC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E5110 8003BC00 0043102A */  slt        $v0, $v0, $v1
/* E5114 8003BC04 104000C8 */  beqz       $v0, .L8003BF28
/* E5118 8003BC08 00000000 */   nop
/* E511C 8003BC0C 0C00D8C1 */  jal        func_80036304_DF814
/* E5120 8003BC10 2404001C */   addiu     $a0, $zero, 0x1c
/* E5124 8003BC14 3C038007 */  lui        $v1, %hi(D_8006BFA8)
/* E5128 8003BC18 8463BFA8 */  lh         $v1, %lo(D_8006BFA8)($v1)
/* E512C 8003BC1C 00408821 */  addu       $s1, $v0, $zero
/* E5130 8003BC20 240500FF */  addiu      $a1, $zero, 0xff
/* E5134 8003BC24 000318C0 */  sll        $v1, $v1, 3
/* E5138 8003BC28 306300FF */  andi       $v1, $v1, 0xff
/* E513C 8003BC2C AFA30010 */  sw         $v1, 0x10($sp)
/* E5140 8003BC30 8E24000C */  lw         $a0, 0xc($s1)
/* E5144 8003BC34 240600FF */  addiu      $a2, $zero, 0xff
/* E5148 8003BC38 0C028E41 */  jal        func_800A3904
/* E514C 8003BC3C 240700FF */   addiu     $a3, $zero, 0xff
/* E5150 8003BC40 3C038007 */  lui        $v1, %hi(D_8006BFA8)
/* E5154 8003BC44 8463BFA8 */  lh         $v1, %lo(D_8006BFA8)($v1)
/* E5158 8003BC48 24020020 */  addiu      $v0, $zero, 0x20
/* E515C 8003BC4C 14620007 */  bne        $v1, $v0, .L8003BC6C
/* E5160 8003BC50 240200FF */   addiu     $v0, $zero, 0xff
/* E5164 8003BC54 AFA20010 */  sw         $v0, 0x10($sp)
/* E5168 8003BC58 8E24000C */  lw         $a0, 0xc($s1)
/* E516C 8003BC5C 240500FF */  addiu      $a1, $zero, 0xff
/* E5170 8003BC60 240600FF */  addiu      $a2, $zero, 0xff
/* E5174 8003BC64 0C028E41 */  jal        func_800A3904
/* E5178 8003BC68 240700FF */   addiu     $a3, $zero, 0xff
.L8003BC6C:
/* E517C 8003BC6C 3C013F80 */  lui        $at, 0x3f80
/* E5180 8003BC70 44810000 */  mtc1       $at, $f0
/* E5184 8003BC74 8E24000C */  lw         $a0, 0xc($s1)
/* E5188 8003BC78 44060000 */  mfc1       $a2, $f0
/* E518C 8003BC7C 00002821 */  addu       $a1, $zero, $zero
/* E5190 8003BC80 0C02915B */  jal        func_800A456C
/* E5194 8003BC84 00C03821 */   addu      $a3, $a2, $zero
/* E5198 8003BC88 8E24000C */  lw         $a0, 0xc($s1)
/* E519C 8003BC8C 0C028A40 */  jal        func_800A2900
/* E51A0 8003BC90 00000000 */   nop
/* E51A4 8003BC94 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E51A8 8003BC98 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E51AC 8003BC9C 28420020 */  slti       $v0, $v0, 0x20
/* E51B0 8003BCA0 104000A1 */  beqz       $v0, .L8003BF28
/* E51B4 8003BCA4 00000000 */   nop
/* E51B8 8003BCA8 0C00D8C1 */  jal        func_80036304_DF814
/* E51BC 8003BCAC 24040019 */   addiu     $a0, $zero, 0x19
/* E51C0 8003BCB0 3C038007 */  lui        $v1, %hi(D_8006BFA8)
/* E51C4 8003BCB4 8463BFA8 */  lh         $v1, %lo(D_8006BFA8)($v1)
/* E51C8 8003BCB8 00408821 */  addu       $s1, $v0, $zero
/* E51CC 8003BCBC 240500FF */  addiu      $a1, $zero, 0xff
/* E51D0 8003BCC0 00031880 */  sll        $v1, $v1, 2
/* E51D4 8003BCC4 306300FF */  andi       $v1, $v1, 0xff
/* E51D8 8003BCC8 AFA30010 */  sw         $v1, 0x10($sp)
/* E51DC 8003BCCC 8E24000C */  lw         $a0, 0xc($s1)
/* E51E0 8003BCD0 240600FF */  addiu      $a2, $zero, 0xff
/* E51E4 8003BCD4 0C028E41 */  jal        func_800A3904
/* E51E8 8003BCD8 240700FF */   addiu     $a3, $zero, 0xff
/* E51EC 8003BCDC 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E51F0 8003BCE0 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E51F4 8003BCE4 3C013C80 */  lui        $at, 0x3c80
/* E51F8 8003BCE8 44811000 */  mtc1       $at, $f2
/* E51FC 8003BCEC 44820000 */  mtc1       $v0, $f0
/* E5200 8003BCF0 00000000 */  nop
/* E5204 8003BCF4 46800020 */  cvt.s.w    $f0, $f0
/* E5208 8003BCF8 46020002 */  mul.s      $f0, $f0, $f2
/* E520C 8003BCFC 3C013FC0 */  lui        $at, 0x3fc0
/* E5210 8003BD00 44811000 */  mtc1       $at, $f2
/* E5214 8003BD04 00000000 */  nop
/* E5218 8003BD08 46001081 */  sub.s      $f2, $f2, $f0
/* E521C 8003BD0C 8E24000C */  lw         $a0, 0xc($s1)
/* E5220 8003BD10 44061000 */  mfc1       $a2, $f2
/* E5224 8003BD14 00002821 */  addu       $a1, $zero, $zero
/* E5228 8003BD18 0C02915B */  jal        func_800A456C
/* E522C 8003BD1C 00C03821 */   addu      $a3, $a2, $zero
/* E5230 8003BD20 8E24000C */  lw         $a0, 0xc($s1)
/* E5234 8003BD24 0C028A40 */  jal        func_800A2900
/* E5238 8003BD28 00000000 */   nop
/* E523C 8003BD2C 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E5240 8003BD30 9442BFA8 */  lhu        $v0, %lo(D_8006BFA8)($v0)
/* E5244 8003BD34 24420001 */  addiu      $v0, $v0, 1
/* E5248 8003BD38 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E524C 8003BD3C 0800EFCA */  j          .L8003BF28
/* E5250 8003BD40 A422BFA8 */   sh        $v0, %lo(D_8006BFA8)($at)
.L8003BD44:
/* E5254 8003BD44 14830009 */  bne        $a0, $v1, .L8003BD6C
/* E5258 8003BD48 240200C8 */   addiu     $v0, $zero, 0xc8
/* E525C 8003BD4C 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E5260 8003BD50 A422BFA8 */  sh         $v0, %lo(D_8006BFA8)($at)
/* E5264 8003BD54 240200FF */  addiu      $v0, $zero, 0xff
/* E5268 8003BD58 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E526C 8003BD5C A420BFA6 */  sh         $zero, %lo(D_8006BFA6)($at)
/* E5270 8003BD60 3C018007 */  lui        $at, %hi(D_8006BFAA)
/* E5274 8003BD64 0800EF6A */  j          .L8003BDA8
/* E5278 8003BD68 A422BFAA */   sh        $v0, %lo(D_8006BFAA)($at)
.L8003BD6C:
/* E527C 8003BD6C 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E5280 8003BD70 9442BFA6 */  lhu        $v0, %lo(D_8006BFA6)($v0)
/* E5284 8003BD74 3C038007 */  lui        $v1, %hi(D_8006BFA8)
/* E5288 8003BD78 9463BFA8 */  lhu        $v1, %lo(D_8006BFA8)($v1)
/* E528C 8003BD7C 3C048007 */  lui        $a0, %hi(D_8006BFAA)
/* E5290 8003BD80 9484BFAA */  lhu        $a0, %lo(D_8006BFAA)($a0)
/* E5294 8003BD84 24420001 */  addiu      $v0, $v0, 1
/* E5298 8003BD88 2463FFFF */  addiu      $v1, $v1, -1
/* E529C 8003BD8C 2484FFFF */  addiu      $a0, $a0, -1
/* E52A0 8003BD90 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E52A4 8003BD94 A422BFA6 */  sh         $v0, %lo(D_8006BFA6)($at)
/* E52A8 8003BD98 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E52AC 8003BD9C A423BFA8 */  sh         $v1, %lo(D_8006BFA8)($at)
/* E52B0 8003BDA0 3C018007 */  lui        $at, %hi(D_8006BFAA)
/* E52B4 8003BDA4 A424BFAA */  sh         $a0, %lo(D_8006BFAA)($at)
.L8003BDA8:
/* E52B8 8003BDA8 0C00D8C1 */  jal        func_80036304_DF814
/* E52BC 8003BDAC 24040017 */   addiu     $a0, $zero, 0x17
/* E52C0 8003BDB0 3C068007 */  lui        $a2, %hi(D_8006BFAB)
/* E52C4 8003BDB4 90C6BFAB */  lbu        $a2, %lo(D_8006BFAB)($a2)
/* E52C8 8003BDB8 00408821 */  addu       $s1, $v0, $zero
/* E52CC 8003BDBC 241000FF */  addiu      $s0, $zero, 0xff
/* E52D0 8003BDC0 AFB00010 */  sw         $s0, 0x10($sp)
/* E52D4 8003BDC4 8E24000C */  lw         $a0, 0xc($s1)
/* E52D8 8003BDC8 240500FF */  addiu      $a1, $zero, 0xff
/* E52DC 8003BDCC 0C028E41 */  jal        func_800A3904
/* E52E0 8003BDD0 00C03821 */   addu      $a3, $a2, $zero
/* E52E4 8003BDD4 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E52E8 8003BDD8 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E52EC 8003BDDC 3C013F80 */  lui        $at, 0x3f80
/* E52F0 8003BDE0 4481A000 */  mtc1       $at, $f20
/* E52F4 8003BDE4 44821000 */  mtc1       $v0, $f2
/* E52F8 8003BDE8 00000000 */  nop
/* E52FC 8003BDEC 468010A0 */  cvt.s.w    $f2, $f2
/* E5300 8003BDF0 4602A083 */  div.s      $f2, $f20, $f2
/* E5304 8003BDF4 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E5308 8003BDF8 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E530C 8003BDFC 44820000 */  mtc1       $v0, $f0
/* E5310 8003BE00 00000000 */  nop
/* E5314 8003BE04 46800020 */  cvt.s.w    $f0, $f0
/* E5318 8003BE08 46020002 */  mul.s      $f0, $f0, $f2
/* E531C 8003BE0C 4600A001 */  sub.s      $f0, $f20, $f0
/* E5320 8003BE10 8E24000C */  lw         $a0, 0xc($s1)
/* E5324 8003BE14 44060000 */  mfc1       $a2, $f0
/* E5328 8003BE18 00002821 */  addu       $a1, $zero, $zero
/* E532C 8003BE1C 0C02915B */  jal        func_800A456C
/* E5330 8003BE20 00C03821 */   addu      $a3, $a2, $zero
/* E5334 8003BE24 8E24000C */  lw         $a0, 0xc($s1)
/* E5338 8003BE28 0C028A40 */  jal        func_800A2900
/* E533C 8003BE2C 00000000 */   nop
/* E5340 8003BE30 0C00D8C1 */  jal        func_80036304_DF814
/* E5344 8003BE34 24040018 */   addiu     $a0, $zero, 0x18
/* E5348 8003BE38 3C068007 */  lui        $a2, %hi(D_8006BFAB)
/* E534C 8003BE3C 90C6BFAB */  lbu        $a2, %lo(D_8006BFAB)($a2)
/* E5350 8003BE40 00408821 */  addu       $s1, $v0, $zero
/* E5354 8003BE44 AFB00010 */  sw         $s0, 0x10($sp)
/* E5358 8003BE48 8E24000C */  lw         $a0, 0xc($s1)
/* E535C 8003BE4C 240500FF */  addiu      $a1, $zero, 0xff
/* E5360 8003BE50 0C028E41 */  jal        func_800A3904
/* E5364 8003BE54 00C03821 */   addu      $a3, $a2, $zero
/* E5368 8003BE58 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E536C 8003BE5C 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E5370 8003BE60 44821000 */  mtc1       $v0, $f2
/* E5374 8003BE64 00000000 */  nop
/* E5378 8003BE68 468010A0 */  cvt.s.w    $f2, $f2
/* E537C 8003BE6C 4602A083 */  div.s      $f2, $f20, $f2
/* E5380 8003BE70 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E5384 8003BE74 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E5388 8003BE78 44820000 */  mtc1       $v0, $f0
/* E538C 8003BE7C 00000000 */  nop
/* E5390 8003BE80 46800020 */  cvt.s.w    $f0, $f0
/* E5394 8003BE84 46020002 */  mul.s      $f0, $f0, $f2
/* E5398 8003BE88 4600A001 */  sub.s      $f0, $f20, $f0
/* E539C 8003BE8C 8E24000C */  lw         $a0, 0xc($s1)
/* E53A0 8003BE90 44060000 */  mfc1       $a2, $f0
/* E53A4 8003BE94 00002821 */  addu       $a1, $zero, $zero
/* E53A8 8003BE98 0C02915B */  jal        func_800A456C
/* E53AC 8003BE9C 00C03821 */   addu      $a3, $a2, $zero
/* E53B0 8003BEA0 8E24000C */  lw         $a0, 0xc($s1)
/* E53B4 8003BEA4 0C028A40 */  jal        func_800A2900
/* E53B8 8003BEA8 00000000 */   nop
/* E53BC 8003BEAC 0C00D8C1 */  jal        func_80036304_DF814
/* E53C0 8003BEB0 24040019 */   addiu     $a0, $zero, 0x19
/* E53C4 8003BEB4 3C068007 */  lui        $a2, %hi(D_8006BFAB)
/* E53C8 8003BEB8 90C6BFAB */  lbu        $a2, %lo(D_8006BFAB)($a2)
/* E53CC 8003BEBC 00408821 */  addu       $s1, $v0, $zero
/* E53D0 8003BEC0 AFB00010 */  sw         $s0, 0x10($sp)
/* E53D4 8003BEC4 8E24000C */  lw         $a0, 0xc($s1)
/* E53D8 8003BEC8 240500FF */  addiu      $a1, $zero, 0xff
/* E53DC 8003BECC 0C028E41 */  jal        func_800A3904
/* E53E0 8003BED0 00C03821 */   addu      $a3, $a2, $zero
/* E53E4 8003BED4 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E53E8 8003BED8 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E53EC 8003BEDC 44821000 */  mtc1       $v0, $f2
/* E53F0 8003BEE0 00000000 */  nop
/* E53F4 8003BEE4 468010A0 */  cvt.s.w    $f2, $f2
/* E53F8 8003BEE8 4602A083 */  div.s      $f2, $f20, $f2
/* E53FC 8003BEEC 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E5400 8003BEF0 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E5404 8003BEF4 44820000 */  mtc1       $v0, $f0
/* E5408 8003BEF8 00000000 */  nop
/* E540C 8003BEFC 46800020 */  cvt.s.w    $f0, $f0
/* E5410 8003BF00 46020002 */  mul.s      $f0, $f0, $f2
/* E5414 8003BF04 4600A501 */  sub.s      $f20, $f20, $f0
/* E5418 8003BF08 8E24000C */  lw         $a0, 0xc($s1)
/* E541C 8003BF0C 4406A000 */  mfc1       $a2, $f20
/* E5420 8003BF10 00002821 */  addu       $a1, $zero, $zero
/* E5424 8003BF14 0C02915B */  jal        func_800A456C
/* E5428 8003BF18 00C03821 */   addu      $a3, $a2, $zero
/* E542C 8003BF1C 8E24000C */  lw         $a0, 0xc($s1)
/* E5430 8003BF20 0C028A40 */  jal        func_800A2900
/* E5434 8003BF24 00000000 */   nop
.L8003BF28:
/* E5438 8003BF28 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E543C 8003BF2C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E5440 8003BF30 2410003C */  addiu      $s0, $zero, 0x3c
/* E5444 8003BF34 0202001A */  div        $zero, $s0, $v0
/* E5448 8003BF38 14400002 */  bnez       $v0, .L8003BF44
/* E544C 8003BF3C 00000000 */   nop
/* E5450 8003BF40 0007000D */  break      7
.L8003BF44:
/* E5454 8003BF44 2401FFFF */   addiu     $at, $zero, -1
/* E5458 8003BF48 14410004 */  bne        $v0, $at, .L8003BF5C
/* E545C 8003BF4C 3C018000 */   lui       $at, 0x8000
/* E5460 8003BF50 16010002 */  bne        $s0, $at, .L8003BF5C
/* E5464 8003BF54 00000000 */   nop
/* E5468 8003BF58 0006000D */  break      6
.L8003BF5C:
/* E546C 8003BF5C 00001012 */   mflo      $v0
/* E5470 8003BF60 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E5474 8003BF64 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E5478 8003BF68 00022040 */  sll        $a0, $v0, 1
/* E547C 8003BF6C 00821021 */  addu       $v0, $a0, $v0
/* E5480 8003BF70 00021040 */  sll        $v0, $v0, 1
/* E5484 8003BF74 14620003 */  bne        $v1, $v0, .L8003BF84
/* E5488 8003BF78 00000000 */   nop
/* E548C 8003BF7C 0C02A5C1 */  jal        func_800A9704
/* E5490 8003BF80 00000000 */   nop
.L8003BF84:
/* E5494 8003BF84 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E5498 8003BF88 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E549C 8003BF8C 0202001A */  div        $zero, $s0, $v0
/* E54A0 8003BF90 14400002 */  bnez       $v0, .L8003BF9C
/* E54A4 8003BF94 00000000 */   nop
/* E54A8 8003BF98 0007000D */  break      7
.L8003BF9C:
/* E54AC 8003BF9C 2401FFFF */   addiu     $at, $zero, -1
/* E54B0 8003BFA0 14410004 */  bne        $v0, $at, .L8003BFB4
/* E54B4 8003BFA4 3C018000 */   lui       $at, 0x8000
/* E54B8 8003BFA8 16010002 */  bne        $s0, $at, .L8003BFB4
/* E54BC 8003BFAC 00000000 */   nop
/* E54C0 8003BFB0 0006000D */  break      6
.L8003BFB4:
/* E54C4 8003BFB4 00001012 */   mflo      $v0
/* E54C8 8003BFB8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E54CC 8003BFBC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E54D0 8003BFC0 000210C0 */  sll        $v0, $v0, 3
/* E54D4 8003BFC4 0062182A */  slt        $v1, $v1, $v0
/* E54D8 8003BFC8 14600F58 */  bnez       $v1, .L8003FD2C
/* E54DC 8003BFCC 00001021 */   addu      $v0, $zero, $zero
/* E54E0 8003BFD0 24020007 */  addiu      $v0, $zero, 7
/* E54E4 8003BFD4 0800FF4A */  j          .L8003FD28
/* E54E8 8003BFD8 A682001C */   sh        $v0, 0x1c($s4)
.L8003BFDC:
/* E54EC 8003BFDC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E54F0 8003BFE0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E54F4 8003BFE4 14400006 */  bnez       $v0, .L8003C000
/* E54F8 8003BFE8 28420002 */   slti      $v0, $v0, 2
/* E54FC 8003BFEC 0C00E45C */  jal        func_80039170_E2680
/* E5500 8003BFF0 00000000 */   nop
/* E5504 8003BFF4 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E5508 8003BFF8 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E550C 8003BFFC 28420002 */  slti       $v0, $v0, 2
.L8003C000:
/* E5510 8003C000 14400F4A */  bnez       $v0, .L8003FD2C
/* E5514 8003C004 00001021 */   addu      $v0, $zero, $zero
/* E5518 8003C008 0C02A5AF */  jal        func_800A96BC
/* E551C 8003C00C 24040001 */   addiu     $a0, $zero, 1
/* E5520 8003C010 240200D2 */  addiu      $v0, $zero, 0xd2
/* E5524 8003C014 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E5528 8003C018 A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
/* E552C 8003C01C 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E5530 8003C020 AC20BFB0 */  sw         $zero, %lo(D_8006BFB0)($at)
/* E5534 8003C024 0C026DD5 */  jal        func_8009B754
/* E5538 8003C028 2404002F */   addiu     $a0, $zero, 0x2f
/* E553C 8003C02C 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* E5540 8003C030 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* E5544 8003C034 00402021 */  addu       $a0, $v0, $zero
/* E5548 8003C038 3C018007 */  lui        $at, %hi(D_80068ED4)
/* E554C 8003C03C AC248ED4 */  sw         $a0, %lo(D_80068ED4)($at)
/* E5550 8003C040 00031C00 */  sll        $v1, $v1, 0x10
/* E5554 8003C044 00032C03 */  sra        $a1, $v1, 0x10
/* E5558 8003C048 00031FC2 */  srl        $v1, $v1, 0x1f
/* E555C 8003C04C 00A32821 */  addu       $a1, $a1, $v1
/* E5560 8003C050 0C026E66 */  jal        func_8009B998
/* E5564 8003C054 00052843 */   sra       $a1, $a1, 1
/* E5568 8003C058 24020008 */  addiu      $v0, $zero, 8
/* E556C 8003C05C 0800FF4A */  j          .L8003FD28
/* E5570 8003C060 A682001C */   sh        $v0, 0x1c($s4)
.L8003C064:
/* E5574 8003C064 0C00D8C1 */  jal        func_80036304_DF814
/* E5578 8003C068 24040025 */   addiu     $a0, $zero, 0x25
/* E557C 8003C06C 8C44000C */  lw         $a0, 0xc($v0)
/* E5580 8003C070 0C028A40 */  jal        func_800A2900
/* E5584 8003C074 00000000 */   nop
/* E5588 8003C078 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E558C 8003C07C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E5590 8003C080 3C028888 */  lui        $v0, 0x8888
/* E5594 8003C084 34428889 */  ori        $v0, $v0, 0x8889
/* E5598 8003C088 00820018 */  mult       $a0, $v0
/* E559C 8003C08C 000417C3 */  sra        $v0, $a0, 0x1f
/* E55A0 8003C090 00004010 */  mfhi       $t0
/* E55A4 8003C094 01041821 */  addu       $v1, $t0, $a0
/* E55A8 8003C098 00031903 */  sra        $v1, $v1, 4
/* E55AC 8003C09C 00621823 */  subu       $v1, $v1, $v0
/* E55B0 8003C0A0 00031100 */  sll        $v0, $v1, 4
/* E55B4 8003C0A4 00431023 */  subu       $v0, $v0, $v1
/* E55B8 8003C0A8 00021040 */  sll        $v0, $v0, 1
/* E55BC 8003C0AC 00822023 */  subu       $a0, $a0, $v0
/* E55C0 8003C0B0 2884000F */  slti       $a0, $a0, 0xf
/* E55C4 8003C0B4 5480000B */  bnezl      $a0, .L8003C0E4
/* E55C8 8003C0B8 24120002 */   addiu     $s2, $zero, 2
/* E55CC 8003C0BC 0C00D8C1 */  jal        func_80036304_DF814
/* E55D0 8003C0C0 24040057 */   addiu     $a0, $zero, 0x57
/* E55D4 8003C0C4 8C44000C */  lw         $a0, 0xc($v0)
/* E55D8 8003C0C8 0C028A40 */  jal        func_800A2900
/* E55DC 8003C0CC 24120002 */   addiu     $s2, $zero, 2
/* E55E0 8003C0D0 0C00D8C1 */  jal        func_80036304_DF814
/* E55E4 8003C0D4 24040058 */   addiu     $a0, $zero, 0x58
/* E55E8 8003C0D8 8C44000C */  lw         $a0, 0xc($v0)
/* E55EC 8003C0DC 0C028A40 */  jal        func_800A2900
/* E55F0 8003C0E0 00000000 */   nop
.L8003C0E4:
/* E55F4 8003C0E4 26440057 */  addiu      $a0, $s2, 0x57
.L8003C0E8:
/* E55F8 8003C0E8 0C00D8C1 */  jal        func_80036304_DF814
/* E55FC 8003C0EC 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5600 8003C0F0 8C44000C */  lw         $a0, 0xc($v0)
/* E5604 8003C0F4 0C028A40 */  jal        func_800A2900
/* E5608 8003C0F8 26520001 */   addiu     $s2, $s2, 1
/* E560C 8003C0FC 3242FFFF */  andi       $v0, $s2, 0xffff
/* E5610 8003C100 2C420018 */  sltiu      $v0, $v0, 0x18
/* E5614 8003C104 5440FFF8 */  bnezl      $v0, .L8003C0E8
/* E5618 8003C108 26440057 */   addiu     $a0, $s2, 0x57
/* E561C 8003C10C 3C058007 */  lui        $a1, %hi(D_8006BFA4)
/* E5620 8003C110 94A5BFA4 */  lhu        $a1, %lo(D_8006BFA4)($a1)
/* E5624 8003C114 3C108888 */  lui        $s0, 0x8888
/* E5628 8003C118 36108889 */  ori        $s0, $s0, 0x8889
/* E562C 8003C11C 24A50001 */  addiu      $a1, $a1, 1
/* E5630 8003C120 00051C00 */  sll        $v1, $a1, 0x10
/* E5634 8003C124 00031403 */  sra        $v0, $v1, 0x10
/* E5638 8003C128 00500018 */  mult       $v0, $s0
/* E563C 8003C12C 3C116666 */  lui        $s1, 0x6666
/* E5640 8003C130 36316667 */  ori        $s1, $s1, 0x6667
/* E5644 8003C134 00031FC3 */  sra        $v1, $v1, 0x1f
/* E5648 8003C138 00004010 */  mfhi       $t0
/* E564C 8003C13C 01021021 */  addu       $v0, $t0, $v0
/* E5650 8003C140 00021103 */  sra        $v0, $v0, 4
/* E5654 8003C144 00431023 */  subu       $v0, $v0, $v1
/* E5658 8003C148 00021400 */  sll        $v0, $v0, 0x10
/* E565C 8003C14C 00022403 */  sra        $a0, $v0, 0x10
/* E5660 8003C150 00910018 */  mult       $a0, $s1
/* E5664 8003C154 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E5668 8003C158 A425BFA4 */  sh         $a1, %lo(D_8006BFA4)($at)
/* E566C 8003C15C 000217C3 */  sra        $v0, $v0, 0x1f
/* E5670 8003C160 00004010 */  mfhi       $t0
/* E5674 8003C164 00081883 */  sra        $v1, $t0, 2
/* E5678 8003C168 00621823 */  subu       $v1, $v1, $v0
/* E567C 8003C16C 00031080 */  sll        $v0, $v1, 2
/* E5680 8003C170 00431021 */  addu       $v0, $v0, $v1
/* E5684 8003C174 00021040 */  sll        $v0, $v0, 1
/* E5688 8003C178 00822023 */  subu       $a0, $a0, $v0
/* E568C 8003C17C 24840075 */  addiu      $a0, $a0, 0x75
/* E5690 8003C180 0C00D8C1 */  jal        func_80036304_DF814
/* E5694 8003C184 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5698 8003C188 8C44000C */  lw         $a0, 0xc($v0)
/* E569C 8003C18C 0C028A40 */  jal        func_800A2900
/* E56A0 8003C190 00009021 */   addu      $s2, $zero, $zero
/* E56A4 8003C194 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E56A8 8003C198 9463BFA4 */  lhu        $v1, %lo(D_8006BFA4)($v1)
/* E56AC 8003C19C 00031C00 */  sll        $v1, $v1, 0x10
/* E56B0 8003C1A0 00031403 */  sra        $v0, $v1, 0x10
/* E56B4 8003C1A4 00500018 */  mult       $v0, $s0
/* E56B8 8003C1A8 00031FC3 */  sra        $v1, $v1, 0x1f
/* E56BC 8003C1AC 00004010 */  mfhi       $t0
/* E56C0 8003C1B0 01021021 */  addu       $v0, $t0, $v0
/* E56C4 8003C1B4 00021103 */  sra        $v0, $v0, 4
/* E56C8 8003C1B8 00431023 */  subu       $v0, $v0, $v1
/* E56CC 8003C1BC 00021400 */  sll        $v0, $v0, 0x10
/* E56D0 8003C1C0 00022C03 */  sra        $a1, $v0, 0x10
/* E56D4 8003C1C4 00B00018 */  mult       $a1, $s0
/* E56D8 8003C1C8 000217C3 */  sra        $v0, $v0, 0x1f
/* E56DC 8003C1CC 00004010 */  mfhi       $t0
/* E56E0 8003C1D0 01051821 */  addu       $v1, $t0, $a1
/* E56E4 8003C1D4 00031943 */  sra        $v1, $v1, 5
/* E56E8 8003C1D8 00621823 */  subu       $v1, $v1, $v0
/* E56EC 8003C1DC 00031100 */  sll        $v0, $v1, 4
/* E56F0 8003C1E0 00431023 */  subu       $v0, $v0, $v1
/* E56F4 8003C1E4 00021080 */  sll        $v0, $v0, 2
/* E56F8 8003C1E8 00A22823 */  subu       $a1, $a1, $v0
/* E56FC 8003C1EC 00052C00 */  sll        $a1, $a1, 0x10
/* E5700 8003C1F0 00051403 */  sra        $v0, $a1, 0x10
/* E5704 8003C1F4 00510018 */  mult       $v0, $s1
/* E5708 8003C1F8 00052FC3 */  sra        $a1, $a1, 0x1f
/* E570C 8003C1FC 00004010 */  mfhi       $t0
/* E5710 8003C200 00082083 */  sra        $a0, $t0, 2
/* E5714 8003C204 00852023 */  subu       $a0, $a0, $a1
/* E5718 8003C208 2484006F */  addiu      $a0, $a0, 0x6f
/* E571C 8003C20C 0C00D8C1 */  jal        func_80036304_DF814
/* E5720 8003C210 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5724 8003C214 8C44000C */  lw         $a0, 0xc($v0)
/* E5728 8003C218 0C028A40 */  jal        func_800A2900
/* E572C 8003C21C 00000000 */   nop
/* E5730 8003C220 26440089 */  addiu      $a0, $s2, 0x89
.L8003C224:
/* E5734 8003C224 0C00D8C1 */  jal        func_80036304_DF814
/* E5738 8003C228 3084FFFF */   andi      $a0, $a0, 0xffff
/* E573C 8003C22C 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E5740 8003C230 9484BFA4 */  lhu        $a0, %lo(D_8006BFA4)($a0)
/* E5744 8003C234 00408821 */  addu       $s1, $v0, $zero
/* E5748 8003C238 8E23000C */  lw         $v1, 0xc($s1)
/* E574C 8003C23C 00041400 */  sll        $v0, $a0, 0x10
/* E5750 8003C240 00022C03 */  sra        $a1, $v0, 0x10
/* E5754 8003C244 00A01021 */  addu       $v0, $a1, $zero
/* E5758 8003C248 8C630000 */  lw         $v1, ($v1)
/* E575C 8003C24C 30840001 */  andi       $a0, $a0, 1
/* E5760 8003C250 04A10002 */  bgez       $a1, .L8003C25C
/* E5764 8003C254 00803021 */   addu      $a2, $a0, $zero
/* E5768 8003C258 24A20003 */  addiu      $v0, $a1, 3
.L8003C25C:
/* E576C 8003C25C 00021083 */  sra        $v0, $v0, 2
/* E5770 8003C260 00021080 */  sll        $v0, $v0, 2
/* E5774 8003C264 00A21023 */  subu       $v0, $a1, $v0
/* E5778 8003C268 00021400 */  sll        $v0, $v0, 0x10
/* E577C 8003C26C 00021403 */  sra        $v0, $v0, 0x10
/* E5780 8003C270 28420003 */  slti       $v0, $v0, 3
/* E5784 8003C274 14400002 */  bnez       $v0, .L8003C280
/* E5788 8003C278 00C01021 */   addu      $v0, $a2, $zero
/* E578C 8003C27C 34820010 */  ori        $v0, $a0, 0x10
.L8003C280:
/* E5790 8003C280 A062002F */  sb         $v0, 0x2f($v1)
/* E5794 8003C284 8E24000C */  lw         $a0, 0xc($s1)
/* E5798 8003C288 0C028A40 */  jal        func_800A2900
/* E579C 8003C28C 26520001 */   addiu     $s2, $s2, 1
/* E57A0 8003C290 3242FFFF */  andi       $v0, $s2, 0xffff
/* E57A4 8003C294 2C420028 */  sltiu      $v0, $v0, 0x28
/* E57A8 8003C298 1440FFE2 */  bnez       $v0, .L8003C224
/* E57AC 8003C29C 26440089 */   addiu     $a0, $s2, 0x89
/* E57B0 8003C2A0 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E57B4 8003C2A4 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E57B8 8003C2A8 3C014180 */  lui        $at, 0x4180
/* E57BC 8003C2AC 44810000 */  mtc1       $at, $f0
/* E57C0 8003C2B0 00000000 */  nop
/* E57C4 8003C2B4 46001081 */  sub.s      $f2, $f2, $f0
/* E57C8 8003C2B8 3C01437F */  lui        $at, 0x437f
/* E57CC 8003C2BC 44810000 */  mtc1       $at, $f0
/* E57D0 8003C2C0 00000000 */  nop
/* E57D4 8003C2C4 4602003C */  c.lt.s     $f0, $f2
/* E57D8 8003C2C8 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E57DC 8003C2CC E422BFB0 */  swc1       $f2, %lo(D_8006BFB0)($at)
/* E57E0 8003C2D0 45010007 */  bc1t       .L8003C2F0
/* E57E4 8003C2D4 00000000 */   nop
/* E57E8 8003C2D8 44800000 */  mtc1       $zero, $f0
/* E57EC 8003C2DC 00000000 */  nop
/* E57F0 8003C2E0 4600103C */  c.lt.s     $f2, $f0
/* E57F4 8003C2E4 00000000 */  nop
/* E57F8 8003C2E8 45000003 */  bc1f       .L8003C2F8
/* E57FC 8003C2EC 00000000 */   nop
.L8003C2F0:
/* E5800 8003C2F0 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E5804 8003C2F4 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003C2F8:
/* E5808 8003C2F8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E580C 8003C2FC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E5810 8003C300 30420001 */  andi       $v0, $v0, 1
/* E5814 8003C304 1040000D */  beqz       $v0, .L8003C33C
/* E5818 8003C308 00000000 */   nop
/* E581C 8003C30C 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E5820 8003C310 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E5824 8003C314 44800000 */  mtc1       $zero, $f0
/* E5828 8003C318 00000000 */  nop
/* E582C 8003C31C 46001032 */  c.eq.s     $f2, $f0
/* E5830 8003C320 00000000 */  nop
/* E5834 8003C324 45000005 */  bc1f       .L8003C33C
/* E5838 8003C328 00000000 */   nop
/* E583C 8003C32C 3C014180 */  lui        $at, 0x4180
/* E5840 8003C330 44810000 */  mtc1       $at, $f0
/* E5844 8003C334 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E5848 8003C338 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003C33C:
/* E584C 8003C33C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E5850 8003C340 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E5854 8003C344 2402003C */  addiu      $v0, $zero, 0x3c
/* E5858 8003C348 0043001A */  div        $zero, $v0, $v1
/* E585C 8003C34C 14600002 */  bnez       $v1, .L8003C358
/* E5860 8003C350 00000000 */   nop
/* E5864 8003C354 0007000D */  break      7
.L8003C358:
/* E5868 8003C358 2401FFFF */   addiu     $at, $zero, -1
/* E586C 8003C35C 14610004 */  bne        $v1, $at, .L8003C370
/* E5870 8003C360 3C018000 */   lui       $at, 0x8000
/* E5874 8003C364 14410002 */  bne        $v0, $at, .L8003C370
/* E5878 8003C368 00000000 */   nop
/* E587C 8003C36C 0006000D */  break      6
.L8003C370:
/* E5880 8003C370 00001812 */   mflo      $v1
/* E5884 8003C374 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E5888 8003C378 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E588C 8003C37C 00031080 */  sll        $v0, $v1, 2
/* E5890 8003C380 14820005 */  bne        $a0, $v0, .L8003C398
/* E5894 8003C384 00431021 */   addu      $v0, $v0, $v1
/* E5898 8003C388 3C014300 */  lui        $at, 0x4300
/* E589C 8003C38C 44810000 */  mtc1       $at, $f0
/* E58A0 8003C390 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E58A4 8003C394 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003C398:
/* E58A8 8003C398 00021040 */  sll        $v0, $v0, 1
/* E58AC 8003C39C 14820005 */  bne        $a0, $v0, .L8003C3B4
/* E58B0 8003C3A0 00032900 */   sll       $a1, $v1, 4
/* E58B4 8003C3A4 3C014340 */  lui        $at, 0x4340
/* E58B8 8003C3A8 44810000 */  mtc1       $at, $f0
/* E58BC 8003C3AC 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E58C0 8003C3B0 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003C3B4:
/* E58C4 8003C3B4 00A31023 */  subu       $v0, $a1, $v1
/* E58C8 8003C3B8 14820005 */  bne        $a0, $v0, .L8003C3D0
/* E58CC 8003C3BC 00000000 */   nop
/* E58D0 8003C3C0 3C014320 */  lui        $at, 0x4320
/* E58D4 8003C3C4 44810000 */  mtc1       $at, $f0
/* E58D8 8003C3C8 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E58DC 8003C3CC E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003C3D0:
/* E58E0 8003C3D0 14850005 */  bne        $a0, $a1, .L8003C3E8
/* E58E4 8003C3D4 00000000 */   nop
/* E58E8 8003C3D8 3C014320 */  lui        $at, 0x4320
/* E58EC 8003C3DC 44810000 */  mtc1       $at, $f0
/* E58F0 8003C3E0 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E58F4 8003C3E4 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003C3E8:
/* E58F8 8003C3E8 0C02591A */  jal        func_80096468
/* E58FC 8003C3EC 240403E8 */   addiu     $a0, $zero, 0x3e8
/* E5900 8003C3F0 3042FFFF */  andi       $v0, $v0, 0xffff
/* E5904 8003C3F4 2C4203D5 */  sltiu      $v0, $v0, 0x3d5
/* E5908 8003C3F8 1440000B */  bnez       $v0, .L8003C428
/* E590C 8003C3FC 00000000 */   nop
/* E5910 8003C400 0C02591A */  jal        func_80096468
/* E5914 8003C404 2404000A */   addiu     $a0, $zero, 0xa
/* E5918 8003C408 3042FFFF */  andi       $v0, $v0, 0xffff
/* E591C 8003C40C 000210C0 */  sll        $v0, $v0, 3
/* E5920 8003C410 24420080 */  addiu      $v0, $v0, 0x80
/* E5924 8003C414 44820000 */  mtc1       $v0, $f0
/* E5928 8003C418 00000000 */  nop
/* E592C 8003C41C 46800020 */  cvt.s.w    $f0, $f0
/* E5930 8003C420 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E5934 8003C424 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003C428:
/* E5938 8003C428 0C00D8C1 */  jal        func_80036304_DF814
/* E593C 8003C42C 24040024 */   addiu     $a0, $zero, 0x24
/* E5940 8003C430 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E5944 8003C434 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E5948 8003C438 3C01437F */  lui        $at, 0x437f
/* E594C 8003C43C 44810000 */  mtc1       $at, $f0
/* E5950 8003C440 00000000 */  nop
/* E5954 8003C444 46020081 */  sub.s      $f2, $f0, $f2
/* E5958 8003C448 3C014F00 */  lui        $at, 0x4f00
/* E595C 8003C44C 44810000 */  mtc1       $at, $f0
/* E5960 8003C450 00000000 */  nop
/* E5964 8003C454 4602003E */  c.le.s     $f0, $f2
/* E5968 8003C458 00000000 */  nop
/* E596C 8003C45C 00000000 */  nop
/* E5970 8003C460 45010006 */  bc1t       .L8003C47C
/* E5974 8003C464 00408821 */   addu      $s1, $v0, $zero
/* E5978 8003C468 4600100D */  trunc.w.s  $f0, $f2
/* E597C 8003C46C 44030000 */  mfc1       $v1, $f0
/* E5980 8003C470 00000000 */  nop
/* E5984 8003C474 0800F125 */  j          .L8003C494
/* E5988 8003C478 306200FF */   andi      $v0, $v1, 0xff
.L8003C47C:
/* E598C 8003C47C 46001001 */  sub.s      $f0, $f2, $f0
/* E5990 8003C480 4600008D */  trunc.w.s  $f2, $f0
/* E5994 8003C484 44031000 */  mfc1       $v1, $f2
/* E5998 8003C488 3C028000 */  lui        $v0, 0x8000
/* E599C 8003C48C 00621825 */  or         $v1, $v1, $v0
/* E59A0 8003C490 306200FF */  andi       $v0, $v1, 0xff
.L8003C494:
/* E59A4 8003C494 AFA20010 */  sw         $v0, 0x10($sp)
/* E59A8 8003C498 8E24000C */  lw         $a0, 0xc($s1)
/* E59AC 8003C49C 240500FF */  addiu      $a1, $zero, 0xff
/* E59B0 8003C4A0 240600FF */  addiu      $a2, $zero, 0xff
/* E59B4 8003C4A4 0C028E41 */  jal        func_800A3904
/* E59B8 8003C4A8 240700FF */   addiu     $a3, $zero, 0xff
/* E59BC 8003C4AC 8E24000C */  lw         $a0, 0xc($s1)
/* E59C0 8003C4B0 0C028A40 */  jal        func_800A2900
/* E59C4 8003C4B4 00000000 */   nop
/* E59C8 8003C4B8 0C00D8C1 */  jal        func_80036304_DF814
/* E59CC 8003C4BC 24040022 */   addiu     $a0, $zero, 0x22
/* E59D0 8003C4C0 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E59D4 8003C4C4 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E59D8 8003C4C8 3C014F00 */  lui        $at, 0x4f00
/* E59DC 8003C4CC 44810000 */  mtc1       $at, $f0
/* E59E0 8003C4D0 00000000 */  nop
/* E59E4 8003C4D4 4602003E */  c.le.s     $f0, $f2
/* E59E8 8003C4D8 00000000 */  nop
/* E59EC 8003C4DC 00000000 */  nop
/* E59F0 8003C4E0 45010006 */  bc1t       .L8003C4FC
/* E59F4 8003C4E4 00408821 */   addu      $s1, $v0, $zero
/* E59F8 8003C4E8 4600100D */  trunc.w.s  $f0, $f2
/* E59FC 8003C4EC 44030000 */  mfc1       $v1, $f0
/* E5A00 8003C4F0 00000000 */  nop
/* E5A04 8003C4F4 0800F145 */  j          .L8003C514
/* E5A08 8003C4F8 306200FF */   andi      $v0, $v1, 0xff
.L8003C4FC:
/* E5A0C 8003C4FC 46001001 */  sub.s      $f0, $f2, $f0
/* E5A10 8003C500 4600008D */  trunc.w.s  $f2, $f0
/* E5A14 8003C504 44031000 */  mfc1       $v1, $f2
/* E5A18 8003C508 3C028000 */  lui        $v0, 0x8000
/* E5A1C 8003C50C 00621825 */  or         $v1, $v1, $v0
/* E5A20 8003C510 306200FF */  andi       $v0, $v1, 0xff
.L8003C514:
/* E5A24 8003C514 AFA20010 */  sw         $v0, 0x10($sp)
/* E5A28 8003C518 8E24000C */  lw         $a0, 0xc($s1)
/* E5A2C 8003C51C 240500FF */  addiu      $a1, $zero, 0xff
/* E5A30 8003C520 240600FF */  addiu      $a2, $zero, 0xff
/* E5A34 8003C524 0C028E41 */  jal        func_800A3904
/* E5A38 8003C528 240700FF */   addiu     $a3, $zero, 0xff
/* E5A3C 8003C52C 8E24000C */  lw         $a0, 0xc($s1)
/* E5A40 8003C530 0C028A40 */  jal        func_800A2900
/* E5A44 8003C534 00000000 */   nop
/* E5A48 8003C538 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E5A4C 8003C53C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E5A50 8003C540 2402003C */  addiu      $v0, $zero, 0x3c
/* E5A54 8003C544 0043001A */  div        $zero, $v0, $v1
/* E5A58 8003C548 14600002 */  bnez       $v1, .L8003C554
/* E5A5C 8003C54C 00000000 */   nop
/* E5A60 8003C550 0007000D */  break      7
.L8003C554:
/* E5A64 8003C554 2401FFFF */   addiu     $at, $zero, -1
/* E5A68 8003C558 14610004 */  bne        $v1, $at, .L8003C56C
/* E5A6C 8003C55C 3C018000 */   lui       $at, 0x8000
/* E5A70 8003C560 14410002 */  bne        $v0, $at, .L8003C56C
/* E5A74 8003C564 00000000 */   nop
/* E5A78 8003C568 0006000D */  break      6
.L8003C56C:
/* E5A7C 8003C56C 00001012 */   mflo      $v0
/* E5A80 8003C570 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E5A84 8003C574 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E5A88 8003C578 00021880 */  sll        $v1, $v0, 2
/* E5A8C 8003C57C 00621821 */  addu       $v1, $v1, $v0
/* E5A90 8003C580 00031840 */  sll        $v1, $v1, 1
/* E5A94 8003C584 0083202A */  slt        $a0, $a0, $v1
/* E5A98 8003C588 14800DE8 */  bnez       $a0, .L8003FD2C
/* E5A9C 8003C58C 00001021 */   addu      $v0, $zero, $zero
/* E5AA0 8003C590 24020009 */  addiu      $v0, $zero, 9
/* E5AA4 8003C594 0800FF4A */  j          .L8003FD28
/* E5AA8 8003C598 A682001C */   sh        $v0, 0x1c($s4)
.L8003C59C:
/* E5AAC 8003C59C 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E5AB0 8003C5A0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E5AB4 8003C5A4 14400008 */  bnez       $v0, .L8003C5C8
/* E5AB8 8003C5A8 28420002 */   slti      $v0, $v0, 2
/* E5ABC 8003C5AC 0C00E652 */  jal        func_80039948_E2E58
/* E5AC0 8003C5B0 00000000 */   nop
/* E5AC4 8003C5B4 0C00E7E7 */  jal        func_80039F9C_E34AC
/* E5AC8 8003C5B8 00000000 */   nop
/* E5ACC 8003C5BC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E5AD0 8003C5C0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E5AD4 8003C5C4 28420002 */  slti       $v0, $v0, 2
.L8003C5C8:
/* E5AD8 8003C5C8 14400DD8 */  bnez       $v0, .L8003FD2C
/* E5ADC 8003C5CC 00001021 */   addu      $v0, $zero, $zero
/* E5AE0 8003C5D0 0C02A5AF */  jal        func_800A96BC
/* E5AE4 8003C5D4 24040001 */   addiu     $a0, $zero, 1
/* E5AE8 8003C5D8 3C048007 */  lui        $a0, %hi(D_80068ED4)
/* E5AEC 8003C5DC 8C848ED4 */  lw         $a0, %lo(D_80068ED4)($a0)
/* E5AF0 8003C5E0 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* E5AF4 8003C5E4 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* E5AF8 8003C5E8 3C01434F */  lui        $at, 0x434f
/* E5AFC 8003C5EC 44810000 */  mtc1       $at, $f0
/* E5B00 8003C5F0 24020636 */  addiu      $v0, $zero, 0x636
/* E5B04 8003C5F4 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E5B08 8003C5F8 A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
/* E5B0C 8003C5FC 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E5B10 8003C600 AC20BF8C */  sw         $zero, %lo(D_8006BF8C)($at)
/* E5B14 8003C604 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E5B18 8003C608 AC20BFB0 */  sw         $zero, %lo(D_8006BFB0)($at)
/* E5B1C 8003C60C 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E5B20 8003C610 0C026E66 */  jal        func_8009B998
/* E5B24 8003C614 E420BF90 */   swc1      $f0, %lo(D_8006BF90)($at)
/* E5B28 8003C618 2402000A */  addiu      $v0, $zero, 0xa
/* E5B2C 8003C61C 0800FF4A */  j          .L8003FD28
/* E5B30 8003C620 A682001C */   sh        $v0, 0x1c($s4)
.L8003C624:
/* E5B34 8003C624 0C00D8C1 */  jal        func_80036304_DF814
/* E5B38 8003C628 24040039 */   addiu     $a0, $zero, 0x39
/* E5B3C 8003C62C 8C44000C */  lw         $a0, 0xc($v0)
/* E5B40 8003C630 0C028A40 */  jal        func_800A2900
/* E5B44 8003C634 00009021 */   addu      $s2, $zero, $zero
/* E5B48 8003C638 26440057 */  addiu      $a0, $s2, 0x57
.L8003C63C:
/* E5B4C 8003C63C 0C00D8C1 */  jal        func_80036304_DF814
/* E5B50 8003C640 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5B54 8003C644 8C44000C */  lw         $a0, 0xc($v0)
/* E5B58 8003C648 0C028A40 */  jal        func_800A2900
/* E5B5C 8003C64C 26520001 */   addiu     $s2, $s2, 1
/* E5B60 8003C650 3242FFFF */  andi       $v0, $s2, 0xffff
/* E5B64 8003C654 2C420005 */  sltiu      $v0, $v0, 5
/* E5B68 8003C658 5440FFF8 */  bnezl      $v0, .L8003C63C
/* E5B6C 8003C65C 26440057 */   addiu     $a0, $s2, 0x57
/* E5B70 8003C660 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E5B74 8003C664 9463BFA4 */  lhu        $v1, %lo(D_8006BFA4)($v1)
/* E5B78 8003C668 3C126666 */  lui        $s2, 0x6666
/* E5B7C 8003C66C 36526667 */  ori        $s2, $s2, 0x6667
/* E5B80 8003C670 24630001 */  addiu      $v1, $v1, 1
/* E5B84 8003C674 00031400 */  sll        $v0, $v1, 0x10
/* E5B88 8003C678 00022403 */  sra        $a0, $v0, 0x10
/* E5B8C 8003C67C 00920018 */  mult       $a0, $s2
/* E5B90 8003C680 000217C3 */  sra        $v0, $v0, 0x1f
/* E5B94 8003C684 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E5B98 8003C688 A423BFA4 */  sh         $v1, %lo(D_8006BFA4)($at)
/* E5B9C 8003C68C 00004010 */  mfhi       $t0
/* E5BA0 8003C690 00081883 */  sra        $v1, $t0, 2
/* E5BA4 8003C694 00621823 */  subu       $v1, $v1, $v0
/* E5BA8 8003C698 00031080 */  sll        $v0, $v1, 2
/* E5BAC 8003C69C 00431021 */  addu       $v0, $v0, $v1
/* E5BB0 8003C6A0 00021040 */  sll        $v0, $v0, 1
/* E5BB4 8003C6A4 00822023 */  subu       $a0, $a0, $v0
/* E5BB8 8003C6A8 24840075 */  addiu      $a0, $a0, 0x75
/* E5BBC 8003C6AC 0C00D8C1 */  jal        func_80036304_DF814
/* E5BC0 8003C6B0 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5BC4 8003C6B4 8C44000C */  lw         $a0, 0xc($v0)
/* E5BC8 8003C6B8 0C028A40 */  jal        func_800A2900
/* E5BCC 8003C6BC 3C108888 */   lui       $s0, 0x8888
/* E5BD0 8003C6C0 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E5BD4 8003C6C4 9442BFA4 */  lhu        $v0, %lo(D_8006BFA4)($v0)
/* E5BD8 8003C6C8 36108889 */  ori        $s0, $s0, 0x8889
/* E5BDC 8003C6CC 00021400 */  sll        $v0, $v0, 0x10
/* E5BE0 8003C6D0 00022C03 */  sra        $a1, $v0, 0x10
/* E5BE4 8003C6D4 00B00018 */  mult       $a1, $s0
/* E5BE8 8003C6D8 000217C3 */  sra        $v0, $v0, 0x1f
/* E5BEC 8003C6DC 00004010 */  mfhi       $t0
/* E5BF0 8003C6E0 01051821 */  addu       $v1, $t0, $a1
/* E5BF4 8003C6E4 00031903 */  sra        $v1, $v1, 4
/* E5BF8 8003C6E8 00621823 */  subu       $v1, $v1, $v0
/* E5BFC 8003C6EC 00031100 */  sll        $v0, $v1, 4
/* E5C00 8003C6F0 00431023 */  subu       $v0, $v0, $v1
/* E5C04 8003C6F4 00021040 */  sll        $v0, $v0, 1
/* E5C08 8003C6F8 00A22823 */  subu       $a1, $a1, $v0
/* E5C0C 8003C6FC 00052C00 */  sll        $a1, $a1, 0x10
/* E5C10 8003C700 00051403 */  sra        $v0, $a1, 0x10
/* E5C14 8003C704 00520018 */  mult       $v0, $s2
/* E5C18 8003C708 00052FC3 */  sra        $a1, $a1, 0x1f
/* E5C1C 8003C70C 00004010 */  mfhi       $t0
/* E5C20 8003C710 00082083 */  sra        $a0, $t0, 2
/* E5C24 8003C714 00852023 */  subu       $a0, $a0, $a1
/* E5C28 8003C718 24840068 */  addiu      $a0, $a0, 0x68
/* E5C2C 8003C71C 0C00D8C1 */  jal        func_80036304_DF814
/* E5C30 8003C720 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5C34 8003C724 8C44000C */  lw         $a0, 0xc($v0)
/* E5C38 8003C728 0C028A40 */  jal        func_800A2900
/* E5C3C 8003C72C 3C111B4E */   lui       $s1, 0x1b4e
/* E5C40 8003C730 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E5C44 8003C734 9463BFA4 */  lhu        $v1, %lo(D_8006BFA4)($v1)
/* E5C48 8003C738 363181B5 */  ori        $s1, $s1, 0x81b5
/* E5C4C 8003C73C 00031C00 */  sll        $v1, $v1, 0x10
/* E5C50 8003C740 00032C03 */  sra        $a1, $v1, 0x10
/* E5C54 8003C744 00B10018 */  mult       $a1, $s1
/* E5C58 8003C748 00031FC3 */  sra        $v1, $v1, 0x1f
/* E5C5C 8003C74C 00004010 */  mfhi       $t0
/* E5C60 8003C750 00081143 */  sra        $v0, $t0, 5
/* E5C64 8003C754 00431023 */  subu       $v0, $v0, $v1
/* E5C68 8003C758 00021880 */  sll        $v1, $v0, 2
/* E5C6C 8003C75C 00621821 */  addu       $v1, $v1, $v0
/* E5C70 8003C760 00031100 */  sll        $v0, $v1, 4
/* E5C74 8003C764 00431023 */  subu       $v0, $v0, $v1
/* E5C78 8003C768 00021080 */  sll        $v0, $v0, 2
/* E5C7C 8003C76C 00A22823 */  subu       $a1, $a1, $v0
/* E5C80 8003C770 00052C00 */  sll        $a1, $a1, 0x10
/* E5C84 8003C774 00052403 */  sra        $a0, $a1, 0x10
/* E5C88 8003C778 00900018 */  mult       $a0, $s0
/* E5C8C 8003C77C 00052FC3 */  sra        $a1, $a1, 0x1f
/* E5C90 8003C780 00004010 */  mfhi       $t0
/* E5C94 8003C784 01042021 */  addu       $a0, $t0, $a0
/* E5C98 8003C788 00042103 */  sra        $a0, $a0, 4
/* E5C9C 8003C78C 00852023 */  subu       $a0, $a0, $a1
/* E5CA0 8003C790 2484006B */  addiu      $a0, $a0, 0x6b
/* E5CA4 8003C794 0C00D8C1 */  jal        func_80036304_DF814
/* E5CA8 8003C798 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5CAC 8003C79C 8C44000C */  lw         $a0, 0xc($v0)
/* E5CB0 8003C7A0 0C028A40 */  jal        func_800A2900
/* E5CB4 8003C7A4 00000000 */   nop
/* E5CB8 8003C7A8 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E5CBC 8003C7AC 9442BFA4 */  lhu        $v0, %lo(D_8006BFA4)($v0)
/* E5CC0 8003C7B0 3C0391A2 */  lui        $v1, 0x91a2
/* E5CC4 8003C7B4 3463B3C5 */  ori        $v1, $v1, 0xb3c5
/* E5CC8 8003C7B8 00021400 */  sll        $v0, $v0, 0x10
/* E5CCC 8003C7BC 00022C03 */  sra        $a1, $v0, 0x10
/* E5CD0 8003C7C0 00A30018 */  mult       $a1, $v1
/* E5CD4 8003C7C4 000217C3 */  sra        $v0, $v0, 0x1f
/* E5CD8 8003C7C8 00004010 */  mfhi       $t0
/* E5CDC 8003C7CC 01051821 */  addu       $v1, $t0, $a1
/* E5CE0 8003C7D0 00031A83 */  sra        $v1, $v1, 0xa
/* E5CE4 8003C7D4 00621823 */  subu       $v1, $v1, $v0
/* E5CE8 8003C7D8 000310C0 */  sll        $v0, $v1, 3
/* E5CEC 8003C7DC 00431023 */  subu       $v0, $v0, $v1
/* E5CF0 8003C7E0 00021140 */  sll        $v0, $v0, 5
/* E5CF4 8003C7E4 00431021 */  addu       $v0, $v0, $v1
/* E5CF8 8003C7E8 000210C0 */  sll        $v0, $v0, 3
/* E5CFC 8003C7EC 00A22823 */  subu       $a1, $a1, $v0
/* E5D00 8003C7F0 00052C00 */  sll        $a1, $a1, 0x10
/* E5D04 8003C7F4 00051403 */  sra        $v0, $a1, 0x10
/* E5D08 8003C7F8 00510018 */  mult       $v0, $s1
/* E5D0C 8003C7FC 00052FC3 */  sra        $a1, $a1, 0x1f
/* E5D10 8003C800 00004010 */  mfhi       $t0
/* E5D14 8003C804 00082143 */  sra        $a0, $t0, 5
/* E5D18 8003C808 00852023 */  subu       $a0, $a0, $a1
/* E5D1C 8003C80C 24840062 */  addiu      $a0, $a0, 0x62
/* E5D20 8003C810 0C00D8C1 */  jal        func_80036304_DF814
/* E5D24 8003C814 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5D28 8003C818 8C44000C */  lw         $a0, 0xc($v0)
/* E5D2C 8003C81C 0C028A40 */  jal        func_800A2900
/* E5D30 8003C820 00000000 */   nop
/* E5D34 8003C824 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E5D38 8003C828 8484BFA4 */  lh         $a0, %lo(D_8006BFA4)($a0)
/* E5D3C 8003C82C 28840709 */  slti       $a0, $a0, 0x709
/* E5D40 8003C830 38840001 */  xori       $a0, $a0, 1
/* E5D44 8003C834 00042023 */  negu       $a0, $a0
/* E5D48 8003C838 30840061 */  andi       $a0, $a0, 0x61
/* E5D4C 8003C83C 0C00D8C1 */  jal        func_80036304_DF814
/* E5D50 8003C840 34840060 */   ori       $a0, $a0, 0x60
/* E5D54 8003C844 8C44000C */  lw         $a0, 0xc($v0)
/* E5D58 8003C848 0C028A40 */  jal        func_800A2900
/* E5D5C 8003C84C 00000000 */   nop
/* E5D60 8003C850 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E5D64 8003C854 8484BFA4 */  lh         $a0, %lo(D_8006BFA4)($a0)
/* E5D68 8003C858 28840709 */  slti       $a0, $a0, 0x709
/* E5D6C 8003C85C 38840001 */  xori       $a0, $a0, 1
/* E5D70 8003C860 00042023 */  negu       $a0, $a0
/* E5D74 8003C864 3084005F */  andi       $a0, $a0, 0x5f
/* E5D78 8003C868 0C00D8C1 */  jal        func_80036304_DF814
/* E5D7C 8003C86C 3484005E */   ori       $a0, $a0, 0x5e
/* E5D80 8003C870 8C44000C */  lw         $a0, 0xc($v0)
/* E5D84 8003C874 0C028A40 */  jal        func_800A2900
/* E5D88 8003C878 00000000 */   nop
/* E5D8C 8003C87C 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E5D90 8003C880 8484BFA4 */  lh         $a0, %lo(D_8006BFA4)($a0)
/* E5D94 8003C884 28840709 */  slti       $a0, $a0, 0x709
/* E5D98 8003C888 38840001 */  xori       $a0, $a0, 1
/* E5D9C 8003C88C 00042023 */  negu       $a0, $a0
/* E5DA0 8003C890 3084005D */  andi       $a0, $a0, 0x5d
/* E5DA4 8003C894 0C00D8C1 */  jal        func_80036304_DF814
/* E5DA8 8003C898 3484005C */   ori       $a0, $a0, 0x5c
/* E5DAC 8003C89C 8C44000C */  lw         $a0, 0xc($v0)
/* E5DB0 8003C8A0 0C028A40 */  jal        func_800A2900
/* E5DB4 8003C8A4 00000000 */   nop
/* E5DB8 8003C8A8 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E5DBC 8003C8AC 9463BFA4 */  lhu        $v1, %lo(D_8006BFA4)($v1)
/* E5DC0 8003C8B0 3C0538E3 */  lui        $a1, 0x38e3
/* E5DC4 8003C8B4 34A58E39 */  ori        $a1, $a1, 0x8e39
/* E5DC8 8003C8B8 00031C00 */  sll        $v1, $v1, 0x10
/* E5DCC 8003C8BC 00031403 */  sra        $v0, $v1, 0x10
/* E5DD0 8003C8C0 00031FC2 */  srl        $v1, $v1, 0x1f
/* E5DD4 8003C8C4 00431021 */  addu       $v0, $v0, $v1
/* E5DD8 8003C8C8 00021043 */  sra        $v0, $v0, 1
/* E5DDC 8003C8CC 00021400 */  sll        $v0, $v0, 0x10
/* E5DE0 8003C8D0 00022403 */  sra        $a0, $v0, 0x10
/* E5DE4 8003C8D4 00850018 */  mult       $a0, $a1
/* E5DE8 8003C8D8 000217C3 */  sra        $v0, $v0, 0x1f
/* E5DEC 8003C8DC 00004010 */  mfhi       $t0
/* E5DF0 8003C8E0 00081843 */  sra        $v1, $t0, 1
/* E5DF4 8003C8E4 00621823 */  subu       $v1, $v1, $v0
/* E5DF8 8003C8E8 000310C0 */  sll        $v0, $v1, 3
/* E5DFC 8003C8EC 00431021 */  addu       $v0, $v0, $v1
/* E5E00 8003C8F0 00822023 */  subu       $a0, $a0, $v0
/* E5E04 8003C8F4 00042400 */  sll        $a0, $a0, 0x10
/* E5E08 8003C8F8 00042403 */  sra        $a0, $a0, 0x10
/* E5E0C 8003C8FC 24840001 */  addiu      $a0, $a0, 1
/* E5E10 8003C900 00920018 */  mult       $a0, $s2
/* E5E14 8003C904 000417C3 */  sra        $v0, $a0, 0x1f
/* E5E18 8003C908 00004010 */  mfhi       $t0
/* E5E1C 8003C90C 00081843 */  sra        $v1, $t0, 1
/* E5E20 8003C910 00621823 */  subu       $v1, $v1, $v0
/* E5E24 8003C914 00031080 */  sll        $v0, $v1, 2
/* E5E28 8003C918 00431021 */  addu       $v0, $v0, $v1
/* E5E2C 8003C91C 00822023 */  subu       $a0, $a0, $v0
/* E5E30 8003C920 2484002A */  addiu      $a0, $a0, 0x2a
/* E5E34 8003C924 0C00D8C1 */  jal        func_80036304_DF814
/* E5E38 8003C928 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5E3C 8003C92C 8C44000C */  lw         $a0, 0xc($v0)
/* E5E40 8003C930 0C028A40 */  jal        func_800A2900
/* E5E44 8003C934 00000000 */   nop
/* E5E48 8003C938 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E5E4C 8003C93C 9463BFA4 */  lhu        $v1, %lo(D_8006BFA4)($v1)
/* E5E50 8003C940 00031C00 */  sll        $v1, $v1, 0x10
/* E5E54 8003C944 00031403 */  sra        $v0, $v1, 0x10
/* E5E58 8003C948 00031FC2 */  srl        $v1, $v1, 0x1f
/* E5E5C 8003C94C 00431021 */  addu       $v0, $v0, $v1
/* E5E60 8003C950 00021043 */  sra        $v0, $v0, 1
/* E5E64 8003C954 00021400 */  sll        $v0, $v0, 0x10
/* E5E68 8003C958 00022403 */  sra        $a0, $v0, 0x10
/* E5E6C 8003C95C 00920018 */  mult       $a0, $s2
/* E5E70 8003C960 000217C3 */  sra        $v0, $v0, 0x1f
/* E5E74 8003C964 00004010 */  mfhi       $t0
/* E5E78 8003C968 00081843 */  sra        $v1, $t0, 1
/* E5E7C 8003C96C 00621823 */  subu       $v1, $v1, $v0
/* E5E80 8003C970 00031080 */  sll        $v0, $v1, 2
/* E5E84 8003C974 00431021 */  addu       $v0, $v0, $v1
/* E5E88 8003C978 00822023 */  subu       $a0, $a0, $v0
/* E5E8C 8003C97C 2484002F */  addiu      $a0, $a0, 0x2f
/* E5E90 8003C980 0C00D8C1 */  jal        func_80036304_DF814
/* E5E94 8003C984 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5E98 8003C988 8C44000C */  lw         $a0, 0xc($v0)
/* E5E9C 8003C98C 0C028A40 */  jal        func_800A2900
/* E5EA0 8003C990 00000000 */   nop
/* E5EA4 8003C994 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E5EA8 8003C998 9463BFA4 */  lhu        $v1, %lo(D_8006BFA4)($v1)
/* E5EAC 8003C99C 00031C00 */  sll        $v1, $v1, 0x10
/* E5EB0 8003C9A0 00031403 */  sra        $v0, $v1, 0x10
/* E5EB4 8003C9A4 00031FC2 */  srl        $v1, $v1, 0x1f
/* E5EB8 8003C9A8 00431021 */  addu       $v0, $v0, $v1
/* E5EBC 8003C9AC 00021043 */  sra        $v0, $v0, 1
/* E5EC0 8003C9B0 00021400 */  sll        $v0, $v0, 0x10
/* E5EC4 8003C9B4 00022403 */  sra        $a0, $v0, 0x10
/* E5EC8 8003C9B8 00920018 */  mult       $a0, $s2
/* E5ECC 8003C9BC 000217C3 */  sra        $v0, $v0, 0x1f
/* E5ED0 8003C9C0 00004010 */  mfhi       $t0
/* E5ED4 8003C9C4 00081843 */  sra        $v1, $t0, 1
/* E5ED8 8003C9C8 00621823 */  subu       $v1, $v1, $v0
/* E5EDC 8003C9CC 00031080 */  sll        $v0, $v1, 2
/* E5EE0 8003C9D0 00431021 */  addu       $v0, $v0, $v1
/* E5EE4 8003C9D4 00822023 */  subu       $a0, $a0, $v0
/* E5EE8 8003C9D8 24840034 */  addiu      $a0, $a0, 0x34
/* E5EEC 8003C9DC 0C00D8C1 */  jal        func_80036304_DF814
/* E5EF0 8003C9E0 3084FFFF */   andi      $a0, $a0, 0xffff
/* E5EF4 8003C9E4 8C44000C */  lw         $a0, 0xc($v0)
/* E5EF8 8003C9E8 0C028A40 */  jal        func_800A2900
/* E5EFC 8003C9EC 00000000 */   nop
/* E5F00 8003C9F0 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E5F04 8003C9F4 C422BF8C */  lwc1       $f2, %lo(D_8006BF8C)($at)
/* E5F08 8003C9F8 3C0142E6 */  lui        $at, 0x42e6
/* E5F0C 8003C9FC 34216666 */  ori        $at, $at, 0x6666
/* E5F10 8003CA00 44810000 */  mtc1       $at, $f0
/* E5F14 8003CA04 00000000 */  nop
/* E5F18 8003CA08 46001000 */  add.s      $f0, $f2, $f0
/* E5F1C 8003CA0C 3C01438F */  lui        $at, 0x438f
/* E5F20 8003CA10 34218000 */  ori        $at, $at, 0x8000
/* E5F24 8003CA14 44811000 */  mtc1       $at, $f2
/* E5F28 8003CA18 00000000 */  nop
/* E5F2C 8003CA1C 4600103E */  c.le.s     $f2, $f0
/* E5F30 8003CA20 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E5F34 8003CA24 E420BF8C */  swc1       $f0, %lo(D_8006BF8C)($at)
/* E5F38 8003CA28 45000004 */  bc1f       .L8003CA3C
/* E5F3C 8003CA2C 00000000 */   nop
/* E5F40 8003CA30 46020001 */  sub.s      $f0, $f0, $f2
/* E5F44 8003CA34 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E5F48 8003CA38 E420BF8C */  swc1       $f0, %lo(D_8006BF8C)($at)
.L8003CA3C:
/* E5F4C 8003CA3C 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E5F50 8003CA40 C420BF90 */  lwc1       $f0, %lo(D_8006BF90)($at)
/* E5F54 8003CA44 3C0142A6 */  lui        $at, 0x42a6
/* E5F58 8003CA48 34216666 */  ori        $at, $at, 0x6666
/* E5F5C 8003CA4C 44811000 */  mtc1       $at, $f2
/* E5F60 8003CA50 00000000 */  nop
/* E5F64 8003CA54 46020081 */  sub.s      $f2, $f0, $f2
/* E5F68 8003CA58 44800000 */  mtc1       $zero, $f0
/* E5F6C 8003CA5C 00000000 */  nop
/* E5F70 8003CA60 4600103E */  c.le.s     $f2, $f0
/* E5F74 8003CA64 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E5F78 8003CA68 E422BF90 */  swc1       $f2, %lo(D_8006BF90)($at)
/* E5F7C 8003CA6C 45000007 */  bc1f       .L8003CA8C
/* E5F80 8003CA70 00000000 */   nop
/* E5F84 8003CA74 3C01434F */  lui        $at, 0x434f
/* E5F88 8003CA78 44810000 */  mtc1       $at, $f0
/* E5F8C 8003CA7C 00000000 */  nop
/* E5F90 8003CA80 46001000 */  add.s      $f0, $f2, $f0
/* E5F94 8003CA84 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E5F98 8003CA88 E420BF90 */  swc1       $f0, %lo(D_8006BF90)($at)
.L8003CA8C:
/* E5F9C 8003CA8C 0C00D8C1 */  jal        func_80036304_DF814
/* E5FA0 8003CA90 24040026 */   addiu     $a0, $zero, 0x26
/* E5FA4 8003CA94 3C014000 */  lui        $at, 0x4000
/* E5FA8 8003CA98 44810000 */  mtc1       $at, $f0
/* E5FAC 8003CA9C 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E5FB0 8003CAA0 C422BF90 */  lwc1       $f2, %lo(D_8006BF90)($at)
/* E5FB4 8003CAA4 46001083 */  div.s      $f2, $f2, $f0
/* E5FB8 8003CAA8 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E5FBC 8003CAAC C424BF8C */  lwc1       $f4, %lo(D_8006BF8C)($at)
/* E5FC0 8003CAB0 46002103 */  div.s      $f4, $f4, $f0
/* E5FC4 8003CAB4 3C01435F */  lui        $at, 0x435f
/* E5FC8 8003CAB8 44810000 */  mtc1       $at, $f0
/* E5FCC 8003CABC 00000000 */  nop
/* E5FD0 8003CAC0 46001080 */  add.s      $f2, $f2, $f0
/* E5FD4 8003CAC4 3C014180 */  lui        $at, 0x4180
/* E5FD8 8003CAC8 44810000 */  mtc1       $at, $f0
/* E5FDC 8003CACC 00408821 */  addu       $s1, $v0, $zero
/* E5FE0 8003CAD0 8E24000C */  lw         $a0, 0xc($s1)
/* E5FE4 8003CAD4 46001081 */  sub.s      $f2, $f2, $f0
/* E5FE8 8003CAD8 4600200D */  trunc.w.s  $f0, $f4
/* E5FEC 8003CADC 44050000 */  mfc1       $a1, $f0
/* E5FF0 8003CAE0 00000000 */  nop
/* E5FF4 8003CAE4 00052C00 */  sll        $a1, $a1, 0x10
/* E5FF8 8003CAE8 00052C03 */  sra        $a1, $a1, 0x10
/* E5FFC 8003CAEC 4600100D */  trunc.w.s  $f0, $f2
/* E6000 8003CAF0 44060000 */  mfc1       $a2, $f0
/* E6004 8003CAF4 00000000 */  nop
/* E6008 8003CAF8 00063400 */  sll        $a2, $a2, 0x10
/* E600C 8003CAFC 0C02912A */  jal        func_800A44A8
/* E6010 8003CB00 00063403 */   sra       $a2, $a2, 0x10
/* E6014 8003CB04 8E24000C */  lw         $a0, 0xc($s1)
/* E6018 8003CB08 0C028A40 */  jal        func_800A2900
/* E601C 8003CB0C 00009021 */   addu      $s2, $zero, $zero
/* E6020 8003CB10 26440089 */  addiu      $a0, $s2, 0x89
.L8003CB14:
/* E6024 8003CB14 0C00D8C1 */  jal        func_80036304_DF814
/* E6028 8003CB18 3084FFFF */   andi      $a0, $a0, 0xffff
/* E602C 8003CB1C 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E6030 8003CB20 9484BFA4 */  lhu        $a0, %lo(D_8006BFA4)($a0)
/* E6034 8003CB24 00408821 */  addu       $s1, $v0, $zero
/* E6038 8003CB28 8E23000C */  lw         $v1, 0xc($s1)
/* E603C 8003CB2C 00041400 */  sll        $v0, $a0, 0x10
/* E6040 8003CB30 00022C03 */  sra        $a1, $v0, 0x10
/* E6044 8003CB34 00A01021 */  addu       $v0, $a1, $zero
/* E6048 8003CB38 8C630000 */  lw         $v1, ($v1)
/* E604C 8003CB3C 30840001 */  andi       $a0, $a0, 1
/* E6050 8003CB40 04A10002 */  bgez       $a1, .L8003CB4C
/* E6054 8003CB44 00803021 */   addu      $a2, $a0, $zero
/* E6058 8003CB48 24A20003 */  addiu      $v0, $a1, 3
.L8003CB4C:
/* E605C 8003CB4C 00021083 */  sra        $v0, $v0, 2
/* E6060 8003CB50 00021080 */  sll        $v0, $v0, 2
/* E6064 8003CB54 00A21023 */  subu       $v0, $a1, $v0
/* E6068 8003CB58 00021400 */  sll        $v0, $v0, 0x10
/* E606C 8003CB5C 00021403 */  sra        $v0, $v0, 0x10
/* E6070 8003CB60 28420003 */  slti       $v0, $v0, 3
/* E6074 8003CB64 14400002 */  bnez       $v0, .L8003CB70
/* E6078 8003CB68 00C01021 */   addu      $v0, $a2, $zero
/* E607C 8003CB6C 34820010 */  ori        $v0, $a0, 0x10
.L8003CB70:
/* E6080 8003CB70 A062002F */  sb         $v0, 0x2f($v1)
/* E6084 8003CB74 8E24000C */  lw         $a0, 0xc($s1)
/* E6088 8003CB78 0C028A40 */  jal        func_800A2900
/* E608C 8003CB7C 26520001 */   addiu     $s2, $s2, 1
/* E6090 8003CB80 3242FFFF */  andi       $v0, $s2, 0xffff
/* E6094 8003CB84 2C420028 */  sltiu      $v0, $v0, 0x28
/* E6098 8003CB88 1440FFE2 */  bnez       $v0, .L8003CB14
/* E609C 8003CB8C 26440089 */   addiu     $a0, $s2, 0x89
/* E60A0 8003CB90 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E60A4 8003CB94 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E60A8 8003CB98 3C014200 */  lui        $at, 0x4200
/* E60AC 8003CB9C 44810000 */  mtc1       $at, $f0
/* E60B0 8003CBA0 00000000 */  nop
/* E60B4 8003CBA4 46001081 */  sub.s      $f2, $f2, $f0
/* E60B8 8003CBA8 3C01437F */  lui        $at, 0x437f
/* E60BC 8003CBAC 44810000 */  mtc1       $at, $f0
/* E60C0 8003CBB0 00000000 */  nop
/* E60C4 8003CBB4 4602003C */  c.lt.s     $f0, $f2
/* E60C8 8003CBB8 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E60CC 8003CBBC E422BFB0 */  swc1       $f2, %lo(D_8006BFB0)($at)
/* E60D0 8003CBC0 45010007 */  bc1t       .L8003CBE0
/* E60D4 8003CBC4 00000000 */   nop
/* E60D8 8003CBC8 44800000 */  mtc1       $zero, $f0
/* E60DC 8003CBCC 00000000 */  nop
/* E60E0 8003CBD0 4600103C */  c.lt.s     $f2, $f0
/* E60E4 8003CBD4 00000000 */  nop
/* E60E8 8003CBD8 45000003 */  bc1f       .L8003CBE8
/* E60EC 8003CBDC 00000000 */   nop
.L8003CBE0:
/* E60F0 8003CBE0 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E60F4 8003CBE4 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003CBE8:
/* E60F8 8003CBE8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E60FC 8003CBEC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E6100 8003CBF0 30420001 */  andi       $v0, $v0, 1
/* E6104 8003CBF4 1040000D */  beqz       $v0, .L8003CC2C
/* E6108 8003CBF8 00000000 */   nop
/* E610C 8003CBFC 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6110 8003CC00 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E6114 8003CC04 44800000 */  mtc1       $zero, $f0
/* E6118 8003CC08 00000000 */  nop
/* E611C 8003CC0C 46001032 */  c.eq.s     $f2, $f0
/* E6120 8003CC10 00000000 */  nop
/* E6124 8003CC14 45000005 */  bc1f       .L8003CC2C
/* E6128 8003CC18 00000000 */   nop
/* E612C 8003CC1C 3C014180 */  lui        $at, 0x4180
/* E6130 8003CC20 44810000 */  mtc1       $at, $f0
/* E6134 8003CC24 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6138 8003CC28 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003CC2C:
/* E613C 8003CC2C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E6140 8003CC30 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E6144 8003CC34 2402003C */  addiu      $v0, $zero, 0x3c
/* E6148 8003CC38 0043001A */  div        $zero, $v0, $v1
/* E614C 8003CC3C 14600002 */  bnez       $v1, .L8003CC48
/* E6150 8003CC40 00000000 */   nop
/* E6154 8003CC44 0007000D */  break      7
.L8003CC48:
/* E6158 8003CC48 2401FFFF */   addiu     $at, $zero, -1
/* E615C 8003CC4C 14610004 */  bne        $v1, $at, .L8003CC60
/* E6160 8003CC50 3C018000 */   lui       $at, 0x8000
/* E6164 8003CC54 14410002 */  bne        $v0, $at, .L8003CC60
/* E6168 8003CC58 00000000 */   nop
/* E616C 8003CC5C 0006000D */  break      6
.L8003CC60:
/* E6170 8003CC60 00001812 */   mflo      $v1
/* E6174 8003CC64 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E6178 8003CC68 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E617C 8003CC6C 00031040 */  sll        $v0, $v1, 1
/* E6180 8003CC70 14820005 */  bne        $a0, $v0, .L8003CC88
/* E6184 8003CC74 00031080 */   sll       $v0, $v1, 2
/* E6188 8003CC78 3C014340 */  lui        $at, 0x4340
/* E618C 8003CC7C 44810000 */  mtc1       $at, $f0
/* E6190 8003CC80 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6194 8003CC84 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003CC88:
/* E6198 8003CC88 00431021 */  addu       $v0, $v0, $v1
/* E619C 8003CC8C 00021040 */  sll        $v0, $v0, 1
/* E61A0 8003CC90 14820005 */  bne        $a0, $v0, .L8003CCA8
/* E61A4 8003CC94 00000000 */   nop
/* E61A8 8003CC98 3C01437F */  lui        $at, 0x437f
/* E61AC 8003CC9C 44810000 */  mtc1       $at, $f0
/* E61B0 8003CCA0 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E61B4 8003CCA4 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003CCA8:
/* E61B8 8003CCA8 0C02591A */  jal        func_80096468
/* E61BC 8003CCAC 240403E8 */   addiu     $a0, $zero, 0x3e8
/* E61C0 8003CCB0 3042FFFF */  andi       $v0, $v0, 0xffff
/* E61C4 8003CCB4 2C4203D5 */  sltiu      $v0, $v0, 0x3d5
/* E61C8 8003CCB8 1440000B */  bnez       $v0, .L8003CCE8
/* E61CC 8003CCBC 00000000 */   nop
/* E61D0 8003CCC0 0C02591A */  jal        func_80096468
/* E61D4 8003CCC4 24040008 */   addiu     $a0, $zero, 8
/* E61D8 8003CCC8 3042FFFF */  andi       $v0, $v0, 0xffff
/* E61DC 8003CCCC 000210C0 */  sll        $v0, $v0, 3
/* E61E0 8003CCD0 244200BF */  addiu      $v0, $v0, 0xbf
/* E61E4 8003CCD4 44820000 */  mtc1       $v0, $f0
/* E61E8 8003CCD8 00000000 */  nop
/* E61EC 8003CCDC 46800020 */  cvt.s.w    $f0, $f0
/* E61F0 8003CCE0 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E61F4 8003CCE4 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003CCE8:
/* E61F8 8003CCE8 0C00D8C1 */  jal        func_80036304_DF814
/* E61FC 8003CCEC 24040022 */   addiu     $a0, $zero, 0x22
/* E6200 8003CCF0 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6204 8003CCF4 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E6208 8003CCF8 3C014F00 */  lui        $at, 0x4f00
/* E620C 8003CCFC 44810000 */  mtc1       $at, $f0
/* E6210 8003CD00 00000000 */  nop
/* E6214 8003CD04 4602003E */  c.le.s     $f0, $f2
/* E6218 8003CD08 00000000 */  nop
/* E621C 8003CD0C 00000000 */  nop
/* E6220 8003CD10 45010006 */  bc1t       .L8003CD2C
/* E6224 8003CD14 00408821 */   addu      $s1, $v0, $zero
/* E6228 8003CD18 4600100D */  trunc.w.s  $f0, $f2
/* E622C 8003CD1C 44030000 */  mfc1       $v1, $f0
/* E6230 8003CD20 00000000 */  nop
/* E6234 8003CD24 0800F351 */  j          .L8003CD44
/* E6238 8003CD28 306200FF */   andi      $v0, $v1, 0xff
.L8003CD2C:
/* E623C 8003CD2C 46001001 */  sub.s      $f0, $f2, $f0
/* E6240 8003CD30 4600008D */  trunc.w.s  $f2, $f0
/* E6244 8003CD34 44031000 */  mfc1       $v1, $f2
/* E6248 8003CD38 3C028000 */  lui        $v0, 0x8000
/* E624C 8003CD3C 00621825 */  or         $v1, $v1, $v0
/* E6250 8003CD40 306200FF */  andi       $v0, $v1, 0xff
.L8003CD44:
/* E6254 8003CD44 AFA20010 */  sw         $v0, 0x10($sp)
/* E6258 8003CD48 8E24000C */  lw         $a0, 0xc($s1)
/* E625C 8003CD4C 240500FF */  addiu      $a1, $zero, 0xff
/* E6260 8003CD50 240600FF */  addiu      $a2, $zero, 0xff
/* E6264 8003CD54 0C028E41 */  jal        func_800A3904
/* E6268 8003CD58 240700FF */   addiu     $a3, $zero, 0xff
/* E626C 8003CD5C 8E24000C */  lw         $a0, 0xc($s1)
/* E6270 8003CD60 0C028A40 */  jal        func_800A2900
/* E6274 8003CD64 00000000 */   nop
/* E6278 8003CD68 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E627C 8003CD6C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E6280 8003CD70 2403003C */  addiu      $v1, $zero, 0x3c
/* E6284 8003CD74 0062001A */  div        $zero, $v1, $v0
/* E6288 8003CD78 14400002 */  bnez       $v0, .L8003CD84
/* E628C 8003CD7C 00000000 */   nop
/* E6290 8003CD80 0007000D */  break      7
.L8003CD84:
/* E6294 8003CD84 2401FFFF */   addiu     $at, $zero, -1
/* E6298 8003CD88 14410004 */  bne        $v0, $at, .L8003CD9C
/* E629C 8003CD8C 3C018000 */   lui       $at, 0x8000
/* E62A0 8003CD90 14610002 */  bne        $v1, $at, .L8003CD9C
/* E62A4 8003CD94 00000000 */   nop
/* E62A8 8003CD98 0006000D */  break      6
.L8003CD9C:
/* E62AC 8003CD9C 00001812 */   mflo      $v1
/* E62B0 8003CDA0 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E62B4 8003CDA4 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E62B8 8003CDA8 00031080 */  sll        $v0, $v1, 2
/* E62BC 8003CDAC 00431021 */  addu       $v0, $v0, $v1
/* E62C0 8003CDB0 0082202A */  slt        $a0, $a0, $v0
/* E62C4 8003CDB4 14800BDD */  bnez       $a0, .L8003FD2C
/* E62C8 8003CDB8 00001021 */   addu      $v0, $zero, $zero
/* E62CC 8003CDBC 2402000B */  addiu      $v0, $zero, 0xb
/* E62D0 8003CDC0 0800FF4A */  j          .L8003FD28
/* E62D4 8003CDC4 A682001C */   sh        $v0, 0x1c($s4)
.L8003CDC8:
/* E62D8 8003CDC8 3C01437F */  lui        $at, 0x437f
/* E62DC 8003CDCC 44810000 */  mtc1       $at, $f0
/* E62E0 8003CDD0 3C01439F */  lui        $at, 0x439f
/* E62E4 8003CDD4 34218000 */  ori        $at, $at, 0x8000
/* E62E8 8003CDD8 44811000 */  mtc1       $at, $f2
/* E62EC 8003CDDC 2402003A */  addiu      $v0, $zero, 0x3a
/* E62F0 8003CDE0 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E62F4 8003CDE4 A422BFA8 */  sh         $v0, %lo(D_8006BFA8)($at)
/* E62F8 8003CDE8 2402000C */  addiu      $v0, $zero, 0xc
/* E62FC 8003CDEC 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E6300 8003CDF0 A420BFA6 */  sh         $zero, %lo(D_8006BFA6)($at)
/* E6304 8003CDF4 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E6308 8003CDF8 AC20BF98 */  sw         $zero, %lo(D_8006BF98)($at)
/* E630C 8003CDFC 3C018007 */  lui        $at, %hi(D_8006BF9C)
/* E6310 8003CE00 AC20BF9C */  sw         $zero, %lo(D_8006BF9C)($at)
/* E6314 8003CE04 3C018007 */  lui        $at, %hi(D_8006BFA0)
/* E6318 8003CE08 AC20BFA0 */  sw         $zero, %lo(D_8006BFA0)($at)
/* E631C 8003CE0C 3C018007 */  lui        $at, %hi(D_8006BFAA)
/* E6320 8003CE10 A420BFAA */  sh         $zero, %lo(D_8006BFAA)($at)
/* E6324 8003CE14 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6328 8003CE18 AC20BFB0 */  sw         $zero, %lo(D_8006BFB0)($at)
/* E632C 8003CE1C 3C018007 */  lui        $at, %hi(D_8006BFB4)
/* E6330 8003CE20 AC20BFB4 */  sw         $zero, %lo(D_8006BFB4)($at)
/* E6334 8003CE24 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E6338 8003CE28 E420C3E4 */  swc1       $f0, %lo(D_8006C3E4)($at)
/* E633C 8003CE2C 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E6340 8003CE30 E422BF94 */  swc1       $f2, %lo(D_8006BF94)($at)
/* E6344 8003CE34 A682001C */  sh         $v0, 0x1c($s4)
.L8003CE38:
/* E6348 8003CE38 0C02591A */  jal        func_80096468
/* E634C 8003CE3C 24040004 */   addiu     $a0, $zero, 4
/* E6350 8003CE40 3C014000 */  lui        $at, 0x4000
/* E6354 8003CE44 44811000 */  mtc1       $at, $f2
/* E6358 8003CE48 3042FFFF */  andi       $v0, $v0, 0xffff
/* E635C 8003CE4C 44820000 */  mtc1       $v0, $f0
/* E6360 8003CE50 00000000 */  nop
/* E6364 8003CE54 46800020 */  cvt.s.w    $f0, $f0
/* E6368 8003CE58 46020001 */  sub.s      $f0, $f0, $f2
/* E636C 8003CE5C 3C018007 */  lui        $at, %hi(D_8006BFA0)
/* E6370 8003CE60 E420BFA0 */  swc1       $f0, %lo(D_8006BFA0)($at)
/* E6374 8003CE64 0C00D8C1 */  jal        func_80036304_DF814
/* E6378 8003CE68 24040043 */   addiu     $a0, $zero, 0x43
/* E637C 8003CE6C 8C44000C */  lw         $a0, 0xc($v0)
/* E6380 8003CE70 0C028A40 */  jal        func_800A2900
/* E6384 8003CE74 00009021 */   addu      $s2, $zero, $zero
/* E6388 8003CE78 0C00D8C1 */  jal        func_80036304_DF814
/* E638C 8003CE7C 2404003A */   addiu     $a0, $zero, 0x3a
/* E6390 8003CE80 3C018007 */  lui        $at, %hi(D_8006BF9C)
/* E6394 8003CE84 C422BF9C */  lwc1       $f2, %lo(D_8006BF9C)($at)
/* E6398 8003CE88 3C014320 */  lui        $at, 0x4320
/* E639C 8003CE8C 44810000 */  mtc1       $at, $f0
/* E63A0 8003CE90 00000000 */  nop
/* E63A4 8003CE94 46001080 */  add.s      $f2, $f2, $f0
/* E63A8 8003CE98 3C014080 */  lui        $at, 0x4080
/* E63AC 8003CE9C 44813000 */  mtc1       $at, $f6
/* E63B0 8003CEA0 3C0142F0 */  lui        $at, 0x42f0
/* E63B4 8003CEA4 44812000 */  mtc1       $at, $f4
/* E63B8 8003CEA8 3C018007 */  lui        $at, %hi(D_8006BFA0)
/* E63BC 8003CEAC C420BFA0 */  lwc1       $f0, %lo(D_8006BFA0)($at)
/* E63C0 8003CEB0 46061082 */  mul.s      $f2, $f2, $f6
/* E63C4 8003CEB4 46040000 */  add.s      $f0, $f0, $f4
/* E63C8 8003CEB8 46060002 */  mul.s      $f0, $f0, $f6
/* E63CC 8003CEBC 00408821 */  addu       $s1, $v0, $zero
/* E63D0 8003CEC0 8E24000C */  lw         $a0, 0xc($s1)
/* E63D4 8003CEC4 4600110D */  trunc.w.s  $f4, $f2
/* E63D8 8003CEC8 44052000 */  mfc1       $a1, $f4
/* E63DC 8003CECC 00000000 */  nop
/* E63E0 8003CED0 00052C00 */  sll        $a1, $a1, 0x10
/* E63E4 8003CED4 00052C03 */  sra        $a1, $a1, 0x10
/* E63E8 8003CED8 4600008D */  trunc.w.s  $f2, $f0
/* E63EC 8003CEDC 44061000 */  mfc1       $a2, $f2
/* E63F0 8003CEE0 00000000 */  nop
/* E63F4 8003CEE4 00063400 */  sll        $a2, $a2, 0x10
/* E63F8 8003CEE8 0C028D89 */  jal        func_800A3624
/* E63FC 8003CEEC 00063403 */   sra       $a2, $a2, 0x10
/* E6400 8003CEF0 8E24000C */  lw         $a0, 0xc($s1)
/* E6404 8003CEF4 0C028A40 */  jal        func_800A2900
/* E6408 8003CEF8 00000000 */   nop
/* E640C 8003CEFC 26440057 */  addiu      $a0, $s2, 0x57
.L8003CF00:
/* E6410 8003CF00 0C00D8C1 */  jal        func_80036304_DF814
/* E6414 8003CF04 3084FFFF */   andi      $a0, $a0, 0xffff
/* E6418 8003CF08 8C44000C */  lw         $a0, 0xc($v0)
/* E641C 8003CF0C 0C028A40 */  jal        func_800A2900
/* E6420 8003CF10 26520001 */   addiu     $s2, $s2, 1
/* E6424 8003CF14 3242FFFF */  andi       $v0, $s2, 0xffff
/* E6428 8003CF18 2C420005 */  sltiu      $v0, $v0, 5
/* E642C 8003CF1C 5440FFF8 */  bnezl      $v0, .L8003CF00
/* E6430 8003CF20 26440057 */   addiu     $a0, $s2, 0x57
/* E6434 8003CF24 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E6438 8003CF28 9463BFA4 */  lhu        $v1, %lo(D_8006BFA4)($v1)
/* E643C 8003CF2C 3C106666 */  lui        $s0, 0x6666
/* E6440 8003CF30 36106667 */  ori        $s0, $s0, 0x6667
/* E6444 8003CF34 24630001 */  addiu      $v1, $v1, 1
/* E6448 8003CF38 00031400 */  sll        $v0, $v1, 0x10
/* E644C 8003CF3C 00022403 */  sra        $a0, $v0, 0x10
/* E6450 8003CF40 00900018 */  mult       $a0, $s0
/* E6454 8003CF44 000217C3 */  sra        $v0, $v0, 0x1f
/* E6458 8003CF48 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E645C 8003CF4C A423BFA4 */  sh         $v1, %lo(D_8006BFA4)($at)
/* E6460 8003CF50 00004010 */  mfhi       $t0
/* E6464 8003CF54 00081883 */  sra        $v1, $t0, 2
/* E6468 8003CF58 00621823 */  subu       $v1, $v1, $v0
/* E646C 8003CF5C 00031080 */  sll        $v0, $v1, 2
/* E6470 8003CF60 00431021 */  addu       $v0, $v0, $v1
/* E6474 8003CF64 00021040 */  sll        $v0, $v0, 1
/* E6478 8003CF68 00822023 */  subu       $a0, $a0, $v0
/* E647C 8003CF6C 24840075 */  addiu      $a0, $a0, 0x75
/* E6480 8003CF70 0C00D8C1 */  jal        func_80036304_DF814
/* E6484 8003CF74 3084FFFF */   andi      $a0, $a0, 0xffff
/* E6488 8003CF78 8C44000C */  lw         $a0, 0xc($v0)
/* E648C 8003CF7C 0C028A40 */  jal        func_800A2900
/* E6490 8003CF80 3C118888 */   lui       $s1, 0x8888
/* E6494 8003CF84 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E6498 8003CF88 9442BFA4 */  lhu        $v0, %lo(D_8006BFA4)($v0)
/* E649C 8003CF8C 36318889 */  ori        $s1, $s1, 0x8889
/* E64A0 8003CF90 00021400 */  sll        $v0, $v0, 0x10
/* E64A4 8003CF94 00022C03 */  sra        $a1, $v0, 0x10
/* E64A8 8003CF98 00B10018 */  mult       $a1, $s1
/* E64AC 8003CF9C 000217C3 */  sra        $v0, $v0, 0x1f
/* E64B0 8003CFA0 00004010 */  mfhi       $t0
/* E64B4 8003CFA4 01051821 */  addu       $v1, $t0, $a1
/* E64B8 8003CFA8 00031903 */  sra        $v1, $v1, 4
/* E64BC 8003CFAC 00621823 */  subu       $v1, $v1, $v0
/* E64C0 8003CFB0 00031100 */  sll        $v0, $v1, 4
/* E64C4 8003CFB4 00431023 */  subu       $v0, $v0, $v1
/* E64C8 8003CFB8 00021040 */  sll        $v0, $v0, 1
/* E64CC 8003CFBC 00A22823 */  subu       $a1, $a1, $v0
/* E64D0 8003CFC0 00052C00 */  sll        $a1, $a1, 0x10
/* E64D4 8003CFC4 00051403 */  sra        $v0, $a1, 0x10
/* E64D8 8003CFC8 00500018 */  mult       $v0, $s0
/* E64DC 8003CFCC 00052FC3 */  sra        $a1, $a1, 0x1f
/* E64E0 8003CFD0 00004010 */  mfhi       $t0
/* E64E4 8003CFD4 00082083 */  sra        $a0, $t0, 2
/* E64E8 8003CFD8 00852023 */  subu       $a0, $a0, $a1
/* E64EC 8003CFDC 24840068 */  addiu      $a0, $a0, 0x68
/* E64F0 8003CFE0 0C00D8C1 */  jal        func_80036304_DF814
/* E64F4 8003CFE4 3084FFFF */   andi      $a0, $a0, 0xffff
/* E64F8 8003CFE8 8C44000C */  lw         $a0, 0xc($v0)
/* E64FC 8003CFEC 0C028A40 */  jal        func_800A2900
/* E6500 8003CFF0 3C101B4E */   lui       $s0, 0x1b4e
/* E6504 8003CFF4 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E6508 8003CFF8 9463BFA4 */  lhu        $v1, %lo(D_8006BFA4)($v1)
/* E650C 8003CFFC 361081B5 */  ori        $s0, $s0, 0x81b5
/* E6510 8003D000 00031C00 */  sll        $v1, $v1, 0x10
/* E6514 8003D004 00032C03 */  sra        $a1, $v1, 0x10
/* E6518 8003D008 00B00018 */  mult       $a1, $s0
/* E651C 8003D00C 00031FC3 */  sra        $v1, $v1, 0x1f
/* E6520 8003D010 00004010 */  mfhi       $t0
/* E6524 8003D014 00081143 */  sra        $v0, $t0, 5
/* E6528 8003D018 00431023 */  subu       $v0, $v0, $v1
/* E652C 8003D01C 00021880 */  sll        $v1, $v0, 2
/* E6530 8003D020 00621821 */  addu       $v1, $v1, $v0
/* E6534 8003D024 00031100 */  sll        $v0, $v1, 4
/* E6538 8003D028 00431023 */  subu       $v0, $v0, $v1
/* E653C 8003D02C 00021080 */  sll        $v0, $v0, 2
/* E6540 8003D030 00A22823 */  subu       $a1, $a1, $v0
/* E6544 8003D034 00052C00 */  sll        $a1, $a1, 0x10
/* E6548 8003D038 00052403 */  sra        $a0, $a1, 0x10
/* E654C 8003D03C 00910018 */  mult       $a0, $s1
/* E6550 8003D040 00052FC3 */  sra        $a1, $a1, 0x1f
/* E6554 8003D044 00004010 */  mfhi       $t0
/* E6558 8003D048 01042021 */  addu       $a0, $t0, $a0
/* E655C 8003D04C 00042103 */  sra        $a0, $a0, 4
/* E6560 8003D050 00852023 */  subu       $a0, $a0, $a1
/* E6564 8003D054 2484006B */  addiu      $a0, $a0, 0x6b
/* E6568 8003D058 0C00D8C1 */  jal        func_80036304_DF814
/* E656C 8003D05C 3084FFFF */   andi      $a0, $a0, 0xffff
/* E6570 8003D060 8C44000C */  lw         $a0, 0xc($v0)
/* E6574 8003D064 0C028A40 */  jal        func_800A2900
/* E6578 8003D068 00000000 */   nop
/* E657C 8003D06C 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E6580 8003D070 9442BFA4 */  lhu        $v0, %lo(D_8006BFA4)($v0)
/* E6584 8003D074 3C0391A2 */  lui        $v1, 0x91a2
/* E6588 8003D078 3463B3C5 */  ori        $v1, $v1, 0xb3c5
/* E658C 8003D07C 00021400 */  sll        $v0, $v0, 0x10
/* E6590 8003D080 00022C03 */  sra        $a1, $v0, 0x10
/* E6594 8003D084 00A30018 */  mult       $a1, $v1
/* E6598 8003D088 000217C3 */  sra        $v0, $v0, 0x1f
/* E659C 8003D08C 00004010 */  mfhi       $t0
/* E65A0 8003D090 01051821 */  addu       $v1, $t0, $a1
/* E65A4 8003D094 00031A83 */  sra        $v1, $v1, 0xa
/* E65A8 8003D098 00621823 */  subu       $v1, $v1, $v0
/* E65AC 8003D09C 000310C0 */  sll        $v0, $v1, 3
/* E65B0 8003D0A0 00431023 */  subu       $v0, $v0, $v1
/* E65B4 8003D0A4 00021140 */  sll        $v0, $v0, 5
/* E65B8 8003D0A8 00431021 */  addu       $v0, $v0, $v1
/* E65BC 8003D0AC 000210C0 */  sll        $v0, $v0, 3
/* E65C0 8003D0B0 00A22823 */  subu       $a1, $a1, $v0
/* E65C4 8003D0B4 00052C00 */  sll        $a1, $a1, 0x10
/* E65C8 8003D0B8 00051403 */  sra        $v0, $a1, 0x10
/* E65CC 8003D0BC 00500018 */  mult       $v0, $s0
/* E65D0 8003D0C0 00052FC3 */  sra        $a1, $a1, 0x1f
/* E65D4 8003D0C4 00004010 */  mfhi       $t0
/* E65D8 8003D0C8 00082143 */  sra        $a0, $t0, 5
/* E65DC 8003D0CC 00852023 */  subu       $a0, $a0, $a1
/* E65E0 8003D0D0 24840062 */  addiu      $a0, $a0, 0x62
/* E65E4 8003D0D4 0C00D8C1 */  jal        func_80036304_DF814
/* E65E8 8003D0D8 3084FFFF */   andi      $a0, $a0, 0xffff
/* E65EC 8003D0DC 8C44000C */  lw         $a0, 0xc($v0)
/* E65F0 8003D0E0 0C028A40 */  jal        func_800A2900
/* E65F4 8003D0E4 00000000 */   nop
/* E65F8 8003D0E8 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E65FC 8003D0EC 8484BFA4 */  lh         $a0, %lo(D_8006BFA4)($a0)
/* E6600 8003D0F0 28840709 */  slti       $a0, $a0, 0x709
/* E6604 8003D0F4 38840001 */  xori       $a0, $a0, 1
/* E6608 8003D0F8 00042023 */  negu       $a0, $a0
/* E660C 8003D0FC 30840061 */  andi       $a0, $a0, 0x61
/* E6610 8003D100 0C00D8C1 */  jal        func_80036304_DF814
/* E6614 8003D104 34840060 */   ori       $a0, $a0, 0x60
/* E6618 8003D108 8C44000C */  lw         $a0, 0xc($v0)
/* E661C 8003D10C 0C028A40 */  jal        func_800A2900
/* E6620 8003D110 00000000 */   nop
/* E6624 8003D114 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E6628 8003D118 8484BFA4 */  lh         $a0, %lo(D_8006BFA4)($a0)
/* E662C 8003D11C 28840709 */  slti       $a0, $a0, 0x709
/* E6630 8003D120 38840001 */  xori       $a0, $a0, 1
/* E6634 8003D124 00042023 */  negu       $a0, $a0
/* E6638 8003D128 3084005F */  andi       $a0, $a0, 0x5f
/* E663C 8003D12C 0C00D8C1 */  jal        func_80036304_DF814
/* E6640 8003D130 3484005E */   ori       $a0, $a0, 0x5e
/* E6644 8003D134 8C44000C */  lw         $a0, 0xc($v0)
/* E6648 8003D138 0C028A40 */  jal        func_800A2900
/* E664C 8003D13C 00000000 */   nop
/* E6650 8003D140 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E6654 8003D144 8484BFA4 */  lh         $a0, %lo(D_8006BFA4)($a0)
/* E6658 8003D148 28840709 */  slti       $a0, $a0, 0x709
/* E665C 8003D14C 38840001 */  xori       $a0, $a0, 1
/* E6660 8003D150 00042023 */  negu       $a0, $a0
/* E6664 8003D154 3084005D */  andi       $a0, $a0, 0x5d
/* E6668 8003D158 0C00D8C1 */  jal        func_80036304_DF814
/* E666C 8003D15C 3484005C */   ori       $a0, $a0, 0x5c
/* E6670 8003D160 8C44000C */  lw         $a0, 0xc($v0)
/* E6674 8003D164 0C028A40 */  jal        func_800A2900
/* E6678 8003D168 00000000 */   nop
/* E667C 8003D16C 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E6680 8003D170 C422BF8C */  lwc1       $f2, %lo(D_8006BF8C)($at)
/* E6684 8003D174 3C0142E6 */  lui        $at, 0x42e6
/* E6688 8003D178 34216666 */  ori        $at, $at, 0x6666
/* E668C 8003D17C 44810000 */  mtc1       $at, $f0
/* E6690 8003D180 00000000 */  nop
/* E6694 8003D184 46001000 */  add.s      $f0, $f2, $f0
/* E6698 8003D188 3C01438F */  lui        $at, 0x438f
/* E669C 8003D18C 34218000 */  ori        $at, $at, 0x8000
/* E66A0 8003D190 44811000 */  mtc1       $at, $f2
/* E66A4 8003D194 00000000 */  nop
/* E66A8 8003D198 4600103E */  c.le.s     $f2, $f0
/* E66AC 8003D19C 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E66B0 8003D1A0 E420BF8C */  swc1       $f0, %lo(D_8006BF8C)($at)
/* E66B4 8003D1A4 45000004 */  bc1f       .L8003D1B8
/* E66B8 8003D1A8 00000000 */   nop
/* E66BC 8003D1AC 46020001 */  sub.s      $f0, $f0, $f2
/* E66C0 8003D1B0 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E66C4 8003D1B4 E420BF8C */  swc1       $f0, %lo(D_8006BF8C)($at)
.L8003D1B8:
/* E66C8 8003D1B8 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E66CC 8003D1BC C420BF90 */  lwc1       $f0, %lo(D_8006BF90)($at)
/* E66D0 8003D1C0 3C0142C8 */  lui        $at, 0x42c8
/* E66D4 8003D1C4 44811000 */  mtc1       $at, $f2
/* E66D8 8003D1C8 00000000 */  nop
/* E66DC 8003D1CC 46020081 */  sub.s      $f2, $f0, $f2
/* E66E0 8003D1D0 3C01C2C8 */  lui        $at, 0xc2c8
/* E66E4 8003D1D4 44810000 */  mtc1       $at, $f0
/* E66E8 8003D1D8 00000000 */  nop
/* E66EC 8003D1DC 4600103C */  c.lt.s     $f2, $f0
/* E66F0 8003D1E0 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E66F4 8003D1E4 E422BF90 */  swc1       $f2, %lo(D_8006BF90)($at)
/* E66F8 8003D1E8 45000007 */  bc1f       .L8003D208
/* E66FC 8003D1EC 00000000 */   nop
/* E6700 8003D1F0 3C0143C8 */  lui        $at, 0x43c8
/* E6704 8003D1F4 44810000 */  mtc1       $at, $f0
/* E6708 8003D1F8 00000000 */  nop
/* E670C 8003D1FC 46001000 */  add.s      $f0, $f2, $f0
/* E6710 8003D200 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E6714 8003D204 E420BF90 */  swc1       $f0, %lo(D_8006BF90)($at)
.L8003D208:
/* E6718 8003D208 0C00D8C1 */  jal        func_80036304_DF814
/* E671C 8003D20C 24040026 */   addiu     $a0, $zero, 0x26
/* E6720 8003D210 00408821 */  addu       $s1, $v0, $zero
/* E6724 8003D214 8E24000C */  lw         $a0, 0xc($s1)
/* E6728 8003D218 8C82000C */  lw         $v0, 0xc($a0)
/* E672C 8003D21C 94450000 */  lhu        $a1, ($v0)
/* E6730 8003D220 94460002 */  lhu        $a2, 2($v0)
/* E6734 8003D224 00052842 */  srl        $a1, $a1, 1
/* E6738 8003D228 0C02912A */  jal        func_800A44A8
/* E673C 8003D22C 00063042 */   srl       $a2, $a2, 1
/* E6740 8003D230 3C014000 */  lui        $at, 0x4000
/* E6744 8003D234 44810000 */  mtc1       $at, $f0
/* E6748 8003D238 8E24000C */  lw         $a0, 0xc($s1)
/* E674C 8003D23C 44060000 */  mfc1       $a2, $f0
/* E6750 8003D240 3405D776 */  ori        $a1, $zero, 0xd776
/* E6754 8003D244 0C02915B */  jal        func_800A456C
/* E6758 8003D248 00C03821 */   addu      $a3, $a2, $zero
/* E675C 8003D24C 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E6760 8003D250 C422BF90 */  lwc1       $f2, %lo(D_8006BF90)($at)
/* E6764 8003D254 3C014080 */  lui        $at, 0x4080
/* E6768 8003D258 44810000 */  mtc1       $at, $f0
/* E676C 8003D25C 00000000 */  nop
/* E6770 8003D260 46001082 */  mul.s      $f2, $f2, $f0
/* E6774 8003D264 8E24000C */  lw         $a0, 0xc($s1)
/* E6778 8003D268 00002821 */  addu       $a1, $zero, $zero
/* E677C 8003D26C 4600100D */  trunc.w.s  $f0, $f2
/* E6780 8003D270 44060000 */  mfc1       $a2, $f0
/* E6784 8003D274 00000000 */  nop
/* E6788 8003D278 00063400 */  sll        $a2, $a2, 0x10
/* E678C 8003D27C 0C028D89 */  jal        func_800A3624
/* E6790 8003D280 00063403 */   sra       $a2, $a2, 0x10
/* E6794 8003D284 8E24000C */  lw         $a0, 0xc($s1)
/* E6798 8003D288 0C028A40 */  jal        func_800A2900
/* E679C 8003D28C 00009021 */   addu      $s2, $zero, $zero
/* E67A0 8003D290 26440089 */  addiu      $a0, $s2, 0x89
.L8003D294:
/* E67A4 8003D294 0C00D8C1 */  jal        func_80036304_DF814
/* E67A8 8003D298 3084FFFF */   andi      $a0, $a0, 0xffff
/* E67AC 8003D29C 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E67B0 8003D2A0 9484BFA4 */  lhu        $a0, %lo(D_8006BFA4)($a0)
/* E67B4 8003D2A4 00408821 */  addu       $s1, $v0, $zero
/* E67B8 8003D2A8 8E23000C */  lw         $v1, 0xc($s1)
/* E67BC 8003D2AC 00041400 */  sll        $v0, $a0, 0x10
/* E67C0 8003D2B0 00022C03 */  sra        $a1, $v0, 0x10
/* E67C4 8003D2B4 00A01021 */  addu       $v0, $a1, $zero
/* E67C8 8003D2B8 8C630000 */  lw         $v1, ($v1)
/* E67CC 8003D2BC 30840001 */  andi       $a0, $a0, 1
/* E67D0 8003D2C0 04A10002 */  bgez       $a1, .L8003D2CC
/* E67D4 8003D2C4 00803021 */   addu      $a2, $a0, $zero
/* E67D8 8003D2C8 24A20003 */  addiu      $v0, $a1, 3
.L8003D2CC:
/* E67DC 8003D2CC 00021083 */  sra        $v0, $v0, 2
/* E67E0 8003D2D0 00021080 */  sll        $v0, $v0, 2
/* E67E4 8003D2D4 00A21023 */  subu       $v0, $a1, $v0
/* E67E8 8003D2D8 00021400 */  sll        $v0, $v0, 0x10
/* E67EC 8003D2DC 00021403 */  sra        $v0, $v0, 0x10
/* E67F0 8003D2E0 28420003 */  slti       $v0, $v0, 3
/* E67F4 8003D2E4 14400002 */  bnez       $v0, .L8003D2F0
/* E67F8 8003D2E8 00C01021 */   addu      $v0, $a2, $zero
/* E67FC 8003D2EC 34820010 */  ori        $v0, $a0, 0x10
.L8003D2F0:
/* E6800 8003D2F0 A062002F */  sb         $v0, 0x2f($v1)
/* E6804 8003D2F4 8E24000C */  lw         $a0, 0xc($s1)
/* E6808 8003D2F8 0C028A40 */  jal        func_800A2900
/* E680C 8003D2FC 26520001 */   addiu     $s2, $s2, 1
/* E6810 8003D300 3242FFFF */  andi       $v0, $s2, 0xffff
/* E6814 8003D304 2C420028 */  sltiu      $v0, $v0, 0x28
/* E6818 8003D308 1440FFE2 */  bnez       $v0, .L8003D294
/* E681C 8003D30C 26440089 */   addiu     $a0, $s2, 0x89
/* E6820 8003D310 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6824 8003D314 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E6828 8003D318 3C014200 */  lui        $at, 0x4200
/* E682C 8003D31C 44810000 */  mtc1       $at, $f0
/* E6830 8003D320 00000000 */  nop
/* E6834 8003D324 46001081 */  sub.s      $f2, $f2, $f0
/* E6838 8003D328 3C01437F */  lui        $at, 0x437f
/* E683C 8003D32C 44810000 */  mtc1       $at, $f0
/* E6840 8003D330 00000000 */  nop
/* E6844 8003D334 4602003C */  c.lt.s     $f0, $f2
/* E6848 8003D338 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E684C 8003D33C E422BFB0 */  swc1       $f2, %lo(D_8006BFB0)($at)
/* E6850 8003D340 45010007 */  bc1t       .L8003D360
/* E6854 8003D344 00000000 */   nop
/* E6858 8003D348 44800000 */  mtc1       $zero, $f0
/* E685C 8003D34C 00000000 */  nop
/* E6860 8003D350 4600103C */  c.lt.s     $f2, $f0
/* E6864 8003D354 00000000 */  nop
/* E6868 8003D358 45000003 */  bc1f       .L8003D368
/* E686C 8003D35C 00000000 */   nop
.L8003D360:
/* E6870 8003D360 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6874 8003D364 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003D368:
/* E6878 8003D368 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E687C 8003D36C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E6880 8003D370 30420001 */  andi       $v0, $v0, 1
/* E6884 8003D374 1040000D */  beqz       $v0, .L8003D3AC
/* E6888 8003D378 00000000 */   nop
/* E688C 8003D37C 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6890 8003D380 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E6894 8003D384 44800000 */  mtc1       $zero, $f0
/* E6898 8003D388 00000000 */  nop
/* E689C 8003D38C 46001032 */  c.eq.s     $f2, $f0
/* E68A0 8003D390 00000000 */  nop
/* E68A4 8003D394 45000005 */  bc1f       .L8003D3AC
/* E68A8 8003D398 00000000 */   nop
/* E68AC 8003D39C 3C014180 */  lui        $at, 0x4180
/* E68B0 8003D3A0 44810000 */  mtc1       $at, $f0
/* E68B4 8003D3A4 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E68B8 8003D3A8 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003D3AC:
/* E68BC 8003D3AC 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E68C0 8003D3B0 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E68C4 8003D3B4 2402003C */  addiu      $v0, $zero, 0x3c
/* E68C8 8003D3B8 0043001A */  div        $zero, $v0, $v1
/* E68CC 8003D3BC 14600002 */  bnez       $v1, .L8003D3C8
/* E68D0 8003D3C0 00000000 */   nop
/* E68D4 8003D3C4 0007000D */  break      7
.L8003D3C8:
/* E68D8 8003D3C8 2401FFFF */   addiu     $at, $zero, -1
/* E68DC 8003D3CC 14610004 */  bne        $v1, $at, .L8003D3E0
/* E68E0 8003D3D0 3C018000 */   lui       $at, 0x8000
/* E68E4 8003D3D4 14410002 */  bne        $v0, $at, .L8003D3E0
/* E68E8 8003D3D8 00000000 */   nop
/* E68EC 8003D3DC 0006000D */  break      6
.L8003D3E0:
/* E68F0 8003D3E0 00001012 */   mflo      $v0
/* E68F4 8003D3E4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E68F8 8003D3E8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E68FC 8003D3EC 00021840 */  sll        $v1, $v0, 1
/* E6900 8003D3F0 00621021 */  addu       $v0, $v1, $v0
/* E6904 8003D3F4 14820005 */  bne        $a0, $v0, .L8003D40C
/* E6908 8003D3F8 00021040 */   sll       $v0, $v0, 1
/* E690C 8003D3FC 3C014300 */  lui        $at, 0x4300
/* E6910 8003D400 44810000 */  mtc1       $at, $f0
/* E6914 8003D404 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6918 8003D408 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003D40C:
/* E691C 8003D40C 0082102A */  slt        $v0, $a0, $v0
/* E6920 8003D410 10400011 */  beqz       $v0, .L8003D458
/* E6924 8003D414 00000000 */   nop
/* E6928 8003D418 0C02591A */  jal        func_80096468
/* E692C 8003D41C 240403E8 */   addiu     $a0, $zero, 0x3e8
/* E6930 8003D420 3042FFFF */  andi       $v0, $v0, 0xffff
/* E6934 8003D424 2C4203D5 */  sltiu      $v0, $v0, 0x3d5
/* E6938 8003D428 1440000B */  bnez       $v0, .L8003D458
/* E693C 8003D42C 00000000 */   nop
/* E6940 8003D430 0C02591A */  jal        func_80096468
/* E6944 8003D434 2404000A */   addiu     $a0, $zero, 0xa
/* E6948 8003D438 3042FFFF */  andi       $v0, $v0, 0xffff
/* E694C 8003D43C 000210C0 */  sll        $v0, $v0, 3
/* E6950 8003D440 244200AF */  addiu      $v0, $v0, 0xaf
/* E6954 8003D444 44820000 */  mtc1       $v0, $f0
/* E6958 8003D448 00000000 */  nop
/* E695C 8003D44C 46800020 */  cvt.s.w    $f0, $f0
/* E6960 8003D450 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6964 8003D454 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
.L8003D458:
/* E6968 8003D458 0C00D8C1 */  jal        func_80036304_DF814
/* E696C 8003D45C 24040022 */   addiu     $a0, $zero, 0x22
/* E6970 8003D460 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E6974 8003D464 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E6978 8003D468 3C014F00 */  lui        $at, 0x4f00
/* E697C 8003D46C 44810000 */  mtc1       $at, $f0
/* E6980 8003D470 00000000 */  nop
/* E6984 8003D474 4602003E */  c.le.s     $f0, $f2
/* E6988 8003D478 00000000 */  nop
/* E698C 8003D47C 00000000 */  nop
/* E6990 8003D480 45010006 */  bc1t       .L8003D49C
/* E6994 8003D484 00408821 */   addu      $s1, $v0, $zero
/* E6998 8003D488 4600100D */  trunc.w.s  $f0, $f2
/* E699C 8003D48C 44030000 */  mfc1       $v1, $f0
/* E69A0 8003D490 00000000 */  nop
/* E69A4 8003D494 0800F52D */  j          .L8003D4B4
/* E69A8 8003D498 306200FF */   andi      $v0, $v1, 0xff
.L8003D49C:
/* E69AC 8003D49C 46001001 */  sub.s      $f0, $f2, $f0
/* E69B0 8003D4A0 4600008D */  trunc.w.s  $f2, $f0
/* E69B4 8003D4A4 44031000 */  mfc1       $v1, $f2
/* E69B8 8003D4A8 3C028000 */  lui        $v0, 0x8000
/* E69BC 8003D4AC 00621825 */  or         $v1, $v1, $v0
/* E69C0 8003D4B0 306200FF */  andi       $v0, $v1, 0xff
.L8003D4B4:
/* E69C4 8003D4B4 AFA20010 */  sw         $v0, 0x10($sp)
/* E69C8 8003D4B8 8E24000C */  lw         $a0, 0xc($s1)
/* E69CC 8003D4BC 240500FF */  addiu      $a1, $zero, 0xff
/* E69D0 8003D4C0 240600FF */  addiu      $a2, $zero, 0xff
/* E69D4 8003D4C4 0C028E41 */  jal        func_800A3904
/* E69D8 8003D4C8 240700FF */   addiu     $a3, $zero, 0xff
/* E69DC 8003D4CC 8E24000C */  lw         $a0, 0xc($s1)
/* E69E0 8003D4D0 0C028A40 */  jal        func_800A2900
/* E69E4 8003D4D4 00000000 */   nop
/* E69E8 8003D4D8 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E69EC 8003D4DC 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E69F0 8003D4E0 2402003C */  addiu      $v0, $zero, 0x3c
/* E69F4 8003D4E4 0043001A */  div        $zero, $v0, $v1
/* E69F8 8003D4E8 14600002 */  bnez       $v1, .L8003D4F4
/* E69FC 8003D4EC 00000000 */   nop
/* E6A00 8003D4F0 0007000D */  break      7
.L8003D4F4:
/* E6A04 8003D4F4 2401FFFF */   addiu     $at, $zero, -1
/* E6A08 8003D4F8 14610004 */  bne        $v1, $at, .L8003D50C
/* E6A0C 8003D4FC 3C018000 */   lui       $at, 0x8000
/* E6A10 8003D500 14410002 */  bne        $v0, $at, .L8003D50C
/* E6A14 8003D504 00000000 */   nop
/* E6A18 8003D508 0006000D */  break      6
.L8003D50C:
/* E6A1C 8003D50C 00001012 */   mflo      $v0
/* E6A20 8003D510 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E6A24 8003D514 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E6A28 8003D518 00021080 */  sll        $v0, $v0, 2
/* E6A2C 8003D51C 0043102A */  slt        $v0, $v0, $v1
/* E6A30 8003D520 14400088 */  bnez       $v0, .L8003D744
/* E6A34 8003D524 00000000 */   nop
/* E6A38 8003D528 0C00D8C1 */  jal        func_80036304_DF814
/* E6A3C 8003D52C 2404003B */   addiu     $a0, $zero, 0x3b
/* E6A40 8003D530 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E6A44 8003D534 C420BF94 */  lwc1       $f0, %lo(D_8006BF94)($at)
/* E6A48 8003D538 3C014080 */  lui        $at, 0x4080
/* E6A4C 8003D53C 44812000 */  mtc1       $at, $f4
/* E6A50 8003D540 00000000 */  nop
/* E6A54 8003D544 46040002 */  mul.s      $f0, $f0, $f4
/* E6A58 8003D548 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E6A5C 8003D54C C422BF98 */  lwc1       $f2, %lo(D_8006BF98)($at)
/* E6A60 8003D550 46041082 */  mul.s      $f2, $f2, $f4
/* E6A64 8003D554 00408821 */  addu       $s1, $v0, $zero
/* E6A68 8003D558 8E24000C */  lw         $a0, 0xc($s1)
/* E6A6C 8003D55C 4600010D */  trunc.w.s  $f4, $f0
/* E6A70 8003D560 44052000 */  mfc1       $a1, $f4
/* E6A74 8003D564 00000000 */  nop
/* E6A78 8003D568 00052C00 */  sll        $a1, $a1, 0x10
/* E6A7C 8003D56C 00052C03 */  sra        $a1, $a1, 0x10
/* E6A80 8003D570 4600100D */  trunc.w.s  $f0, $f2
/* E6A84 8003D574 44060000 */  mfc1       $a2, $f0
/* E6A88 8003D578 00000000 */  nop
/* E6A8C 8003D57C 00063400 */  sll        $a2, $a2, 0x10
/* E6A90 8003D580 0C028D89 */  jal        func_800A3624
/* E6A94 8003D584 00063403 */   sra       $a2, $a2, 0x10
/* E6A98 8003D588 3C018007 */  lui        $at, %hi(D_8006BFB4)
/* E6A9C 8003D58C C422BFB4 */  lwc1       $f2, %lo(D_8006BFB4)($at)
/* E6AA0 8003D590 3C014F00 */  lui        $at, 0x4f00
/* E6AA4 8003D594 44810000 */  mtc1       $at, $f0
/* E6AA8 8003D598 00000000 */  nop
/* E6AAC 8003D59C 4602003E */  c.le.s     $f0, $f2
/* E6AB0 8003D5A0 00000000 */  nop
/* E6AB4 8003D5A4 00000000 */  nop
/* E6AB8 8003D5A8 45030006 */  bc1tl      .L8003D5C4
/* E6ABC 8003D5AC 46001001 */   sub.s     $f0, $f2, $f0
/* E6AC0 8003D5B0 4600100D */  trunc.w.s  $f0, $f2
/* E6AC4 8003D5B4 44030000 */  mfc1       $v1, $f0
/* E6AC8 8003D5B8 00000000 */  nop
/* E6ACC 8003D5BC 0800F576 */  j          .L8003D5D8
/* E6AD0 8003D5C0 306200FF */   andi      $v0, $v1, 0xff
.L8003D5C4:
/* E6AD4 8003D5C4 4600008D */  trunc.w.s  $f2, $f0
/* E6AD8 8003D5C8 44031000 */  mfc1       $v1, $f2
/* E6ADC 8003D5CC 3C028000 */  lui        $v0, 0x8000
/* E6AE0 8003D5D0 00621825 */  or         $v1, $v1, $v0
/* E6AE4 8003D5D4 306200FF */  andi       $v0, $v1, 0xff
.L8003D5D8:
/* E6AE8 8003D5D8 AFA20010 */  sw         $v0, 0x10($sp)
/* E6AEC 8003D5DC 8E24000C */  lw         $a0, 0xc($s1)
/* E6AF0 8003D5E0 240500FF */  addiu      $a1, $zero, 0xff
/* E6AF4 8003D5E4 240600FF */  addiu      $a2, $zero, 0xff
/* E6AF8 8003D5E8 0C028E41 */  jal        func_800A3904
/* E6AFC 8003D5EC 240700FF */   addiu     $a3, $zero, 0xff
/* E6B00 8003D5F0 8E24000C */  lw         $a0, 0xc($s1)
/* E6B04 8003D5F4 0C028A40 */  jal        func_800A2900
/* E6B08 8003D5F8 00000000 */   nop
/* E6B0C 8003D5FC 3C018007 */  lui        $at, %hi(D_8006BFB4)
/* E6B10 8003D600 C422BFB4 */  lwc1       $f2, %lo(D_8006BFB4)($at)
/* E6B14 8003D604 3C014000 */  lui        $at, 0x4000
/* E6B18 8003D608 44810000 */  mtc1       $at, $f0
/* E6B1C 8003D60C 00000000 */  nop
/* E6B20 8003D610 46001080 */  add.s      $f2, $f2, $f0
/* E6B24 8003D614 3C01437F */  lui        $at, 0x437f
/* E6B28 8003D618 44810000 */  mtc1       $at, $f0
/* E6B2C 8003D61C 00000000 */  nop
/* E6B30 8003D620 4602003C */  c.lt.s     $f0, $f2
/* E6B34 8003D624 3C018007 */  lui        $at, %hi(D_8006BFB4)
/* E6B38 8003D628 E422BFB4 */  swc1       $f2, %lo(D_8006BFB4)($at)
/* E6B3C 8003D62C 45010007 */  bc1t       .L8003D64C
/* E6B40 8003D630 00000000 */   nop
/* E6B44 8003D634 44800000 */  mtc1       $zero, $f0
/* E6B48 8003D638 00000000 */  nop
/* E6B4C 8003D63C 4600103C */  c.lt.s     $f2, $f0
/* E6B50 8003D640 00000000 */  nop
/* E6B54 8003D644 45000003 */  bc1f       .L8003D654
/* E6B58 8003D648 00000000 */   nop
.L8003D64C:
/* E6B5C 8003D64C 3C018007 */  lui        $at, %hi(D_8006BFB4)
/* E6B60 8003D650 E420BFB4 */  swc1       $f0, %lo(D_8006BFB4)($at)
.L8003D654:
/* E6B64 8003D654 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E6B68 8003D658 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E6B6C 8003D65C 3C014000 */  lui        $at, 0x4000
/* E6B70 8003D660 44812000 */  mtc1       $at, $f4
/* E6B74 8003D664 44820000 */  mtc1       $v0, $f0
/* E6B78 8003D668 00000000 */  nop
/* E6B7C 8003D66C 46800020 */  cvt.s.w    $f0, $f0
/* E6B80 8003D670 28420005 */  slti       $v0, $v0, 5
/* E6B84 8003D674 14400009 */  bnez       $v0, .L8003D69C
/* E6B88 8003D678 46040083 */   div.s     $f2, $f0, $f4
/* E6B8C 8003D67C 44800000 */  mtc1       $zero, $f0
/* E6B90 8003D680 00000000 */  nop
/* E6B94 8003D684 46001082 */  mul.s      $f2, $f2, $f0
/* E6B98 8003D688 46041080 */  add.s      $f2, $f2, $f4
/* E6B9C 8003D68C 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E6BA0 8003D690 C420BF94 */  lwc1       $f0, %lo(D_8006BF94)($at)
/* E6BA4 8003D694 0800F5AD */  j          .L8003D6B4
/* E6BA8 8003D698 46020001 */   sub.s     $f0, $f0, $f2
.L8003D69C:
/* E6BAC 8003D69C 44800000 */  mtc1       $zero, $f0
/* E6BB0 8003D6A0 00000000 */  nop
/* E6BB4 8003D6A4 46001000 */  add.s      $f0, $f2, $f0
/* E6BB8 8003D6A8 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E6BBC 8003D6AC C422BF94 */  lwc1       $f2, %lo(D_8006BF94)($at)
/* E6BC0 8003D6B0 46001001 */  sub.s      $f0, $f2, $f0
.L8003D6B4:
/* E6BC4 8003D6B4 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E6BC8 8003D6B8 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E6BCC 8003D6BC 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E6BD0 8003D6C0 E420BF94 */  swc1       $f0, %lo(D_8006BF94)($at)
/* E6BD4 8003D6C4 10400004 */  beqz       $v0, .L8003D6D8
/* E6BD8 8003D6C8 00401821 */   addu      $v1, $v0, $zero
/* E6BDC 8003D6CC 2462FFFF */  addiu      $v0, $v1, -1
/* E6BE0 8003D6D0 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E6BE4 8003D6D4 A422BFA8 */  sh         $v0, %lo(D_8006BFA8)($at)
.L8003D6D8:
/* E6BE8 8003D6D8 3C028007 */  lui        $v0, %hi(D_8006BFAA)
/* E6BEC 8003D6DC 8442BFAA */  lh         $v0, %lo(D_8006BFAA)($v0)
/* E6BF0 8003D6E0 3C018007 */  lui        $at, %hi(D_80069F28)
/* E6BF4 8003D6E4 D4209F28 */  ldc1       $f0, %lo(D_80069F28)($at)
/* E6BF8 8003D6E8 44826000 */  mtc1       $v0, $f12
/* E6BFC 8003D6EC 00000000 */  nop
/* E6C00 8003D6F0 46806321 */  cvt.d.w    $f12, $f12
/* E6C04 8003D6F4 46206302 */  mul.d      $f12, $f12, $f0
/* E6C08 8003D6F8 0C02F784 */  jal        func_800BDE10
/* E6C0C 8003D6FC 46206320 */   cvt.s.d   $f12, $f12
/* E6C10 8003D700 3C014180 */  lui        $at, 0x4180
/* E6C14 8003D704 44811000 */  mtc1       $at, $f2
/* E6C18 8003D708 00000000 */  nop
/* E6C1C 8003D70C 46020002 */  mul.s      $f0, $f0, $f2
/* E6C20 8003D710 3C0142F0 */  lui        $at, 0x42f0
/* E6C24 8003D714 44811000 */  mtc1       $at, $f2
/* E6C28 8003D718 3C028007 */  lui        $v0, %hi(D_8006BFAA)
/* E6C2C 8003D71C 8442BFAA */  lh         $v0, %lo(D_8006BFAA)($v0)
/* E6C30 8003D720 46020000 */  add.s      $f0, $f0, $f2
/* E6C34 8003D724 00401821 */  addu       $v1, $v0, $zero
/* E6C38 8003D728 28420168 */  slti       $v0, $v0, 0x168
/* E6C3C 8003D72C 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E6C40 8003D730 E420BF98 */  swc1       $f0, %lo(D_8006BF98)($at)
/* E6C44 8003D734 10400003 */  beqz       $v0, .L8003D744
/* E6C48 8003D738 24620006 */   addiu     $v0, $v1, 6
/* E6C4C 8003D73C 3C018007 */  lui        $at, %hi(D_8006BFAA)
/* E6C50 8003D740 A422BFAA */  sh         $v0, %lo(D_8006BFAA)($at)
.L8003D744:
/* E6C54 8003D744 3C058007 */  lui        $a1, %hi(D_8006BFA6)
/* E6C58 8003D748 84A5BFA6 */  lh         $a1, %lo(D_8006BFA6)($a1)
/* E6C5C 8003D74C 24020007 */  addiu      $v0, $zero, 7
/* E6C60 8003D750 14A20025 */  bne        $a1, $v0, .L8003D7E8
/* E6C64 8003D754 00A02021 */   addu      $a0, $a1, $zero
/* E6C68 8003D758 0C00D8C1 */  jal        func_80036304_DF814
/* E6C6C 8003D75C 24040042 */   addiu     $a0, $zero, 0x42
/* E6C70 8003D760 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E6C74 8003D764 C420BF94 */  lwc1       $f0, %lo(D_8006BF94)($at)
/* E6C78 8003D768 3C014080 */  lui        $at, 0x4080
/* E6C7C 8003D76C 44812000 */  mtc1       $at, $f4
/* E6C80 8003D770 00000000 */  nop
/* E6C84 8003D774 46040002 */  mul.s      $f0, $f0, $f4
/* E6C88 8003D778 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E6C8C 8003D77C C422BF98 */  lwc1       $f2, %lo(D_8006BF98)($at)
/* E6C90 8003D780 46041082 */  mul.s      $f2, $f2, $f4
/* E6C94 8003D784 00408821 */  addu       $s1, $v0, $zero
/* E6C98 8003D788 8E24000C */  lw         $a0, 0xc($s1)
/* E6C9C 8003D78C 4600010D */  trunc.w.s  $f4, $f0
/* E6CA0 8003D790 44052000 */  mfc1       $a1, $f4
/* E6CA4 8003D794 00000000 */  nop
/* E6CA8 8003D798 00052C00 */  sll        $a1, $a1, 0x10
/* E6CAC 8003D79C 00052C03 */  sra        $a1, $a1, 0x10
/* E6CB0 8003D7A0 4600100D */  trunc.w.s  $f0, $f2
/* E6CB4 8003D7A4 44060000 */  mfc1       $a2, $f0
/* E6CB8 8003D7A8 00000000 */  nop
/* E6CBC 8003D7AC 00063400 */  sll        $a2, $a2, 0x10
/* E6CC0 8003D7B0 0C028D89 */  jal        func_800A3624
/* E6CC4 8003D7B4 00063403 */   sra       $a2, $a2, 0x10
/* E6CC8 8003D7B8 240200FF */  addiu      $v0, $zero, 0xff
/* E6CCC 8003D7BC AFA20010 */  sw         $v0, 0x10($sp)
/* E6CD0 8003D7C0 8E24000C */  lw         $a0, 0xc($s1)
/* E6CD4 8003D7C4 240500FF */  addiu      $a1, $zero, 0xff
/* E6CD8 8003D7C8 240600FF */  addiu      $a2, $zero, 0xff
/* E6CDC 8003D7CC 0C028E41 */  jal        func_800A3904
/* E6CE0 8003D7D0 240700FF */   addiu     $a3, $zero, 0xff
/* E6CE4 8003D7D4 8E24000C */  lw         $a0, 0xc($s1)
/* E6CE8 8003D7D8 0C028A40 */  jal        func_800A2900
/* E6CEC 8003D7DC 00000000 */   nop
/* E6CF0 8003D7E0 0800F6C7 */  j          .L8003DB1C
/* E6CF4 8003D7E4 00000000 */   nop
.L8003D7E8:
/* E6CF8 8003D7E8 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E6CFC 8003D7EC 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E6D00 8003D7F0 2402003C */  addiu      $v0, $zero, 0x3c
/* E6D04 8003D7F4 0043001A */  div        $zero, $v0, $v1
/* E6D08 8003D7F8 14600002 */  bnez       $v1, .L8003D804
/* E6D0C 8003D7FC 00000000 */   nop
/* E6D10 8003D800 0007000D */  break      7
.L8003D804:
/* E6D14 8003D804 2401FFFF */   addiu     $at, $zero, -1
/* E6D18 8003D808 14610004 */  bne        $v1, $at, .L8003D81C
/* E6D1C 8003D80C 3C018000 */   lui       $at, 0x8000
/* E6D20 8003D810 14410002 */  bne        $v0, $at, .L8003D81C
/* E6D24 8003D814 00000000 */   nop
/* E6D28 8003D818 0006000D */  break      6
.L8003D81C:
/* E6D2C 8003D81C 00001012 */   mflo      $v0
/* E6D30 8003D820 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E6D34 8003D824 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E6D38 8003D828 00021080 */  sll        $v0, $v0, 2
/* E6D3C 8003D82C 0043102A */  slt        $v0, $v0, $v1
/* E6D40 8003D830 104000BA */  beqz       $v0, .L8003DB1C
/* E6D44 8003D834 24A20001 */   addiu     $v0, $a1, 1
/* E6D48 8003D838 00021100 */  sll        $v0, $v0, 4
/* E6D4C 8003D83C 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E6D50 8003D840 00220821 */  addu       $at, $at, $v0
/* E6D54 8003D844 C422C3E4 */  lwc1       $f2, %lo(D_8006C3E4)($at)
/* E6D58 8003D848 3C014180 */  lui        $at, 0x4180
/* E6D5C 8003D84C 44810000 */  mtc1       $at, $f0
/* E6D60 8003D850 00000000 */  nop
/* E6D64 8003D854 46001080 */  add.s      $f2, $f2, $f0
/* E6D68 8003D858 2484003B */  addiu      $a0, $a0, 0x3b
/* E6D6C 8003D85C 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E6D70 8003D860 00220821 */  addu       $at, $at, $v0
/* E6D74 8003D864 E422C3E4 */  swc1       $f2, %lo(D_8006C3E4)($at)
/* E6D78 8003D868 0C00D8C1 */  jal        func_80036304_DF814
/* E6D7C 8003D86C 3084FFFF */   andi      $a0, $a0, 0xffff
/* E6D80 8003D870 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E6D84 8003D874 C420BF94 */  lwc1       $f0, %lo(D_8006BF94)($at)
/* E6D88 8003D878 3C014080 */  lui        $at, 0x4080
/* E6D8C 8003D87C 4481A000 */  mtc1       $at, $f20
/* E6D90 8003D880 00000000 */  nop
/* E6D94 8003D884 46140002 */  mul.s      $f0, $f0, $f20
/* E6D98 8003D888 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E6D9C 8003D88C C422BF98 */  lwc1       $f2, %lo(D_8006BF98)($at)
/* E6DA0 8003D890 46141082 */  mul.s      $f2, $f2, $f20
/* E6DA4 8003D894 00408821 */  addu       $s1, $v0, $zero
/* E6DA8 8003D898 8E24000C */  lw         $a0, 0xc($s1)
/* E6DAC 8003D89C 4600010D */  trunc.w.s  $f4, $f0
/* E6DB0 8003D8A0 44052000 */  mfc1       $a1, $f4
/* E6DB4 8003D8A4 00000000 */  nop
/* E6DB8 8003D8A8 00052C00 */  sll        $a1, $a1, 0x10
/* E6DBC 8003D8AC 00052C03 */  sra        $a1, $a1, 0x10
/* E6DC0 8003D8B0 4600100D */  trunc.w.s  $f0, $f2
/* E6DC4 8003D8B4 44060000 */  mfc1       $a2, $f0
/* E6DC8 8003D8B8 00000000 */  nop
/* E6DCC 8003D8BC 00063400 */  sll        $a2, $a2, 0x10
/* E6DD0 8003D8C0 0C028D89 */  jal        func_800A3624
/* E6DD4 8003D8C4 00063403 */   sra       $a2, $a2, 0x10
/* E6DD8 8003D8C8 240200FF */  addiu      $v0, $zero, 0xff
/* E6DDC 8003D8CC AFA20010 */  sw         $v0, 0x10($sp)
/* E6DE0 8003D8D0 8E24000C */  lw         $a0, 0xc($s1)
/* E6DE4 8003D8D4 240500FF */  addiu      $a1, $zero, 0xff
/* E6DE8 8003D8D8 240600FF */  addiu      $a2, $zero, 0xff
/* E6DEC 8003D8DC 0C028E41 */  jal        func_800A3904
/* E6DF0 8003D8E0 240700FF */   addiu     $a3, $zero, 0xff
/* E6DF4 8003D8E4 8E24000C */  lw         $a0, 0xc($s1)
/* E6DF8 8003D8E8 0C028A40 */  jal        func_800A2900
/* E6DFC 8003D8EC 00000000 */   nop
/* E6E00 8003D8F0 3C048007 */  lui        $a0, %hi(D_8006BFA6)
/* E6E04 8003D8F4 9484BFA6 */  lhu        $a0, %lo(D_8006BFA6)($a0)
/* E6E08 8003D8F8 2484003C */  addiu      $a0, $a0, 0x3c
/* E6E0C 8003D8FC 0C00D8C1 */  jal        func_80036304_DF814
/* E6E10 8003D900 3084FFFF */   andi      $a0, $a0, 0xffff
/* E6E14 8003D904 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E6E18 8003D908 C420BF94 */  lwc1       $f0, %lo(D_8006BF94)($at)
/* E6E1C 8003D90C 46140002 */  mul.s      $f0, $f0, $f20
/* E6E20 8003D910 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E6E24 8003D914 C422BF98 */  lwc1       $f2, %lo(D_8006BF98)($at)
/* E6E28 8003D918 46141082 */  mul.s      $f2, $f2, $f20
/* E6E2C 8003D91C 00408821 */  addu       $s1, $v0, $zero
/* E6E30 8003D920 8E24000C */  lw         $a0, 0xc($s1)
/* E6E34 8003D924 4600010D */  trunc.w.s  $f4, $f0
/* E6E38 8003D928 44052000 */  mfc1       $a1, $f4
/* E6E3C 8003D92C 00000000 */  nop
/* E6E40 8003D930 00052C00 */  sll        $a1, $a1, 0x10
/* E6E44 8003D934 00052C03 */  sra        $a1, $a1, 0x10
/* E6E48 8003D938 4600100D */  trunc.w.s  $f0, $f2
/* E6E4C 8003D93C 44060000 */  mfc1       $a2, $f0
/* E6E50 8003D940 00000000 */  nop
/* E6E54 8003D944 00063400 */  sll        $a2, $a2, 0x10
/* E6E58 8003D948 0C028D89 */  jal        func_800A3624
/* E6E5C 8003D94C 00063403 */   sra       $a2, $a2, 0x10
/* E6E60 8003D950 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E6E64 8003D954 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E6E68 8003D958 3C014F00 */  lui        $at, 0x4f00
/* E6E6C 8003D95C 44810000 */  mtc1       $at, $f0
/* E6E70 8003D960 24420001 */  addiu      $v0, $v0, 1
/* E6E74 8003D964 00021100 */  sll        $v0, $v0, 4
/* E6E78 8003D968 3C018007 */  lui        $at, %hi(D_8006C3D8)
/* E6E7C 8003D96C 00220821 */  addu       $at, $at, $v0
/* E6E80 8003D970 C422C3D8 */  lwc1       $f2, %lo(D_8006C3D8)($at)
/* E6E84 8003D974 4602003E */  c.le.s     $f0, $f2
/* E6E88 8003D978 00000000 */  nop
/* E6E8C 8003D97C 00000000 */  nop
/* E6E90 8003D980 45030005 */  bc1tl      .L8003D998
/* E6E94 8003D984 46001001 */   sub.s     $f0, $f2, $f0
/* E6E98 8003D988 4600100D */  trunc.w.s  $f0, $f2
/* E6E9C 8003D98C 44050000 */  mfc1       $a1, $f0
/* E6EA0 8003D990 0800F66A */  j          .L8003D9A8
/* E6EA4 8003D994 00000000 */   nop
.L8003D998:
/* E6EA8 8003D998 4600008D */  trunc.w.s  $f2, $f0
/* E6EAC 8003D99C 44051000 */  mfc1       $a1, $f2
/* E6EB0 8003D9A0 3C028000 */  lui        $v0, 0x8000
/* E6EB4 8003D9A4 00A22825 */  or         $a1, $a1, $v0
.L8003D9A8:
/* E6EB8 8003D9A8 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E6EBC 8003D9AC 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E6EC0 8003D9B0 3C014F00 */  lui        $at, 0x4f00
/* E6EC4 8003D9B4 44810000 */  mtc1       $at, $f0
/* E6EC8 8003D9B8 24420001 */  addiu      $v0, $v0, 1
/* E6ECC 8003D9BC 00021100 */  sll        $v0, $v0, 4
/* E6ED0 8003D9C0 3C018007 */  lui        $at, %hi(D_8006C3DC)
/* E6ED4 8003D9C4 00220821 */  addu       $at, $at, $v0
/* E6ED8 8003D9C8 C422C3DC */  lwc1       $f2, %lo(D_8006C3DC)($at)
/* E6EDC 8003D9CC 4602003E */  c.le.s     $f0, $f2
/* E6EE0 8003D9D0 00000000 */  nop
/* E6EE4 8003D9D4 00000000 */  nop
/* E6EE8 8003D9D8 45010005 */  bc1t       .L8003D9F0
/* E6EEC 8003D9DC 30A500FF */   andi      $a1, $a1, 0xff
/* E6EF0 8003D9E0 4600100D */  trunc.w.s  $f0, $f2
/* E6EF4 8003D9E4 44060000 */  mfc1       $a2, $f0
/* E6EF8 8003D9E8 0800F681 */  j          .L8003DA04
/* E6EFC 8003D9EC 00000000 */   nop
.L8003D9F0:
/* E6F00 8003D9F0 46001001 */  sub.s      $f0, $f2, $f0
/* E6F04 8003D9F4 4600008D */  trunc.w.s  $f2, $f0
/* E6F08 8003D9F8 44061000 */  mfc1       $a2, $f2
/* E6F0C 8003D9FC 3C028000 */  lui        $v0, 0x8000
/* E6F10 8003DA00 00C23025 */  or         $a2, $a2, $v0
.L8003DA04:
/* E6F14 8003DA04 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E6F18 8003DA08 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E6F1C 8003DA0C 3C014F00 */  lui        $at, 0x4f00
/* E6F20 8003DA10 44810000 */  mtc1       $at, $f0
/* E6F24 8003DA14 24420001 */  addiu      $v0, $v0, 1
/* E6F28 8003DA18 00021100 */  sll        $v0, $v0, 4
/* E6F2C 8003DA1C 3C018007 */  lui        $at, %hi(D_8006C3E0)
/* E6F30 8003DA20 00220821 */  addu       $at, $at, $v0
/* E6F34 8003DA24 C422C3E0 */  lwc1       $f2, %lo(D_8006C3E0)($at)
/* E6F38 8003DA28 4602003E */  c.le.s     $f0, $f2
/* E6F3C 8003DA2C 00000000 */  nop
/* E6F40 8003DA30 00000000 */  nop
/* E6F44 8003DA34 45010005 */  bc1t       .L8003DA4C
/* E6F48 8003DA38 30C600FF */   andi      $a2, $a2, 0xff
/* E6F4C 8003DA3C 4600100D */  trunc.w.s  $f0, $f2
/* E6F50 8003DA40 44070000 */  mfc1       $a3, $f0
/* E6F54 8003DA44 0800F698 */  j          .L8003DA60
/* E6F58 8003DA48 00000000 */   nop
.L8003DA4C:
/* E6F5C 8003DA4C 46001001 */  sub.s      $f0, $f2, $f0
/* E6F60 8003DA50 4600008D */  trunc.w.s  $f2, $f0
/* E6F64 8003DA54 44071000 */  mfc1       $a3, $f2
/* E6F68 8003DA58 3C028000 */  lui        $v0, 0x8000
/* E6F6C 8003DA5C 00E23825 */  or         $a3, $a3, $v0
.L8003DA60:
/* E6F70 8003DA60 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E6F74 8003DA64 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E6F78 8003DA68 3C014F00 */  lui        $at, 0x4f00
/* E6F7C 8003DA6C 44810000 */  mtc1       $at, $f0
/* E6F80 8003DA70 24420001 */  addiu      $v0, $v0, 1
/* E6F84 8003DA74 00021100 */  sll        $v0, $v0, 4
/* E6F88 8003DA78 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E6F8C 8003DA7C 00220821 */  addu       $at, $at, $v0
/* E6F90 8003DA80 C422C3E4 */  lwc1       $f2, %lo(D_8006C3E4)($at)
/* E6F94 8003DA84 4602003E */  c.le.s     $f0, $f2
/* E6F98 8003DA88 00000000 */  nop
/* E6F9C 8003DA8C 00000000 */  nop
/* E6FA0 8003DA90 45010006 */  bc1t       .L8003DAAC
/* E6FA4 8003DA94 30E700FF */   andi      $a3, $a3, 0xff
/* E6FA8 8003DA98 4600100D */  trunc.w.s  $f0, $f2
/* E6FAC 8003DA9C 44030000 */  mfc1       $v1, $f0
/* E6FB0 8003DAA0 00000000 */  nop
/* E6FB4 8003DAA4 0800F6B1 */  j          .L8003DAC4
/* E6FB8 8003DAA8 306200FF */   andi      $v0, $v1, 0xff
.L8003DAAC:
/* E6FBC 8003DAAC 46001001 */  sub.s      $f0, $f2, $f0
/* E6FC0 8003DAB0 4600008D */  trunc.w.s  $f2, $f0
/* E6FC4 8003DAB4 44031000 */  mfc1       $v1, $f2
/* E6FC8 8003DAB8 3C028000 */  lui        $v0, 0x8000
/* E6FCC 8003DABC 00621825 */  or         $v1, $v1, $v0
/* E6FD0 8003DAC0 306200FF */  andi       $v0, $v1, 0xff
.L8003DAC4:
/* E6FD4 8003DAC4 AFA20010 */  sw         $v0, 0x10($sp)
/* E6FD8 8003DAC8 0C028E41 */  jal        func_800A3904
/* E6FDC 8003DACC 8E24000C */   lw        $a0, 0xc($s1)
/* E6FE0 8003DAD0 0C028A40 */  jal        func_800A2900
/* E6FE4 8003DAD4 8E24000C */   lw        $a0, 0xc($s1)
/* E6FE8 8003DAD8 3C038007 */  lui        $v1, %hi(D_8006BFA6)
/* E6FEC 8003DADC 8463BFA6 */  lh         $v1, %lo(D_8006BFA6)($v1)
/* E6FF0 8003DAE0 3C014360 */  lui        $at, 0x4360
/* E6FF4 8003DAE4 44810000 */  mtc1       $at, $f0
/* E6FF8 8003DAE8 24620001 */  addiu      $v0, $v1, 1
/* E6FFC 8003DAEC 00021100 */  sll        $v0, $v0, 4
/* E7000 8003DAF0 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E7004 8003DAF4 00220821 */  addu       $at, $at, $v0
/* E7008 8003DAF8 C422C3E4 */  lwc1       $f2, %lo(D_8006C3E4)($at)
/* E700C 8003DAFC 4602003E */  c.le.s     $f0, $f2
/* E7010 8003DB00 00000000 */  nop
/* E7014 8003DB04 00000000 */  nop
/* E7018 8003DB08 45000004 */  bc1f       .L8003DB1C
/* E701C 8003DB0C 00601021 */   addu      $v0, $v1, $zero
/* E7020 8003DB10 24420001 */  addiu      $v0, $v0, 1
/* E7024 8003DB14 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E7028 8003DB18 A422BFA6 */  sh         $v0, %lo(D_8006BFA6)($at)
.L8003DB1C:
/* E702C 8003DB1C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E7030 8003DB20 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E7034 8003DB24 2410003C */  addiu      $s0, $zero, 0x3c
/* E7038 8003DB28 0202001A */  div        $zero, $s0, $v0
/* E703C 8003DB2C 14400002 */  bnez       $v0, .L8003DB38
/* E7040 8003DB30 00000000 */   nop
/* E7044 8003DB34 0007000D */  break      7
.L8003DB38:
/* E7048 8003DB38 2401FFFF */   addiu     $at, $zero, -1
/* E704C 8003DB3C 14410004 */  bne        $v0, $at, .L8003DB50
/* E7050 8003DB40 3C018000 */   lui       $at, 0x8000
/* E7054 8003DB44 16010002 */  bne        $s0, $at, .L8003DB50
/* E7058 8003DB48 00000000 */   nop
/* E705C 8003DB4C 0006000D */  break      6
.L8003DB50:
/* E7060 8003DB50 00002012 */   mflo      $a0
/* E7064 8003DB54 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E7068 8003DB58 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E706C 8003DB5C 00041040 */  sll        $v0, $a0, 1
/* E7070 8003DB60 00441021 */  addu       $v0, $v0, $a0
/* E7074 8003DB64 00021040 */  sll        $v0, $v0, 1
/* E7078 8003DB68 1462000B */  bne        $v1, $v0, .L8003DB98
/* E707C 8003DB6C 00000000 */   nop
/* E7080 8003DB70 3C018007 */  lui        $at, %hi(D_80069F30)
/* E7084 8003DB74 D4229F30 */  ldc1       $f2, %lo(D_80069F30)($at)
/* E7088 8003DB78 44840000 */  mtc1       $a0, $f0
/* E708C 8003DB7C 00000000 */  nop
/* E7090 8003DB80 46800021 */  cvt.d.w    $f0, $f0
/* E7094 8003DB84 46220002 */  mul.d      $f0, $f0, $f2
/* E7098 8003DB88 4620008D */  trunc.w.d  $f2, $f0
/* E709C 8003DB8C 44041000 */  mfc1       $a0, $f2
/* E70A0 8003DB90 0C02A5E5 */  jal        func_800A9794
/* E70A4 8003DB94 00000000 */   nop
.L8003DB98:
/* E70A8 8003DB98 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E70AC 8003DB9C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E70B0 8003DBA0 0202001A */  div        $zero, $s0, $v0
/* E70B4 8003DBA4 14400002 */  bnez       $v0, .L8003DBB0
/* E70B8 8003DBA8 00000000 */   nop
/* E70BC 8003DBAC 0007000D */  break      7
.L8003DBB0:
/* E70C0 8003DBB0 2401FFFF */   addiu     $at, $zero, -1
/* E70C4 8003DBB4 14410004 */  bne        $v0, $at, .L8003DBC8
/* E70C8 8003DBB8 3C018000 */   lui       $at, 0x8000
/* E70CC 8003DBBC 16010002 */  bne        $s0, $at, .L8003DBC8
/* E70D0 8003DBC0 00000000 */   nop
/* E70D4 8003DBC4 0006000D */  break      6
.L8003DBC8:
/* E70D8 8003DBC8 00001012 */   mflo      $v0
/* E70DC 8003DBCC 3C018007 */  lui        $at, %hi(D_80069F38)
/* E70E0 8003DBD0 D4229F38 */  ldc1       $f2, %lo(D_80069F38)($at)
/* E70E4 8003DBD4 44820000 */  mtc1       $v0, $f0
/* E70E8 8003DBD8 00000000 */  nop
/* E70EC 8003DBDC 46800021 */  cvt.d.w    $f0, $f0
/* E70F0 8003DBE0 46220002 */  mul.d      $f0, $f0, $f2
/* E70F4 8003DBE4 3C018007 */  lui        $at, %hi(D_8006C564)
/* E70F8 8003DBE8 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* E70FC 8003DBEC 468010A1 */  cvt.d.w    $f2, $f2
/* E7100 8003DBF0 4622003E */  c.le.d     $f0, $f2
/* E7104 8003DBF4 00000000 */  nop
/* E7108 8003DBF8 00000000 */  nop
/* E710C 8003DBFC 4500084A */  bc1f       .L8003FD28
/* E7110 8003DC00 2402000D */   addiu     $v0, $zero, 0xd
/* E7114 8003DC04 0800FF4A */  j          .L8003FD28
/* E7118 8003DC08 A682001C */   sh        $v0, 0x1c($s4)
.L8003DC0C:
/* E711C 8003DC0C 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E7120 8003DC10 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E7124 8003DC14 14400006 */  bnez       $v0, .L8003DC30
/* E7128 8003DC18 28420002 */   slti      $v0, $v0, 2
/* E712C 8003DC1C 0C00E870 */  jal        func_8003A1C0_E36D0
/* E7130 8003DC20 00000000 */   nop
/* E7134 8003DC24 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E7138 8003DC28 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E713C 8003DC2C 28420002 */  slti       $v0, $v0, 2
.L8003DC30:
/* E7140 8003DC30 1440083E */  bnez       $v0, .L8003FD2C
/* E7144 8003DC34 00001021 */   addu      $v0, $zero, $zero
/* E7148 8003DC38 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E714C 8003DC3C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E7150 8003DC40 2404003C */  addiu      $a0, $zero, 0x3c
/* E7154 8003DC44 0082001A */  div        $zero, $a0, $v0
/* E7158 8003DC48 14400002 */  bnez       $v0, .L8003DC54
/* E715C 8003DC4C 00000000 */   nop
/* E7160 8003DC50 0007000D */  break      7
.L8003DC54:
/* E7164 8003DC54 2401FFFF */   addiu     $at, $zero, -1
/* E7168 8003DC58 14410004 */  bne        $v0, $at, .L8003DC6C
/* E716C 8003DC5C 3C018000 */   lui       $at, 0x8000
/* E7170 8003DC60 14810002 */  bne        $a0, $at, .L8003DC6C
/* E7174 8003DC64 00000000 */   nop
/* E7178 8003DC68 0006000D */  break      6
.L8003DC6C:
/* E717C 8003DC6C 00002012 */   mflo      $a0
/* E7180 8003DC70 0C02A5D2 */  jal        func_800A9748
/* E7184 8003DC74 00000000 */   nop
/* E7188 8003DC78 3C048007 */  lui        $a0, %hi(D_80068ED4)
/* E718C 8003DC7C 8C848ED4 */  lw         $a0, %lo(D_80068ED4)($a0)
/* E7190 8003DC80 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E7194 8003DC84 A420BFA4 */  sh         $zero, %lo(D_8006BFA4)($at)
/* E7198 8003DC88 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E719C 8003DC8C A420BFA6 */  sh         $zero, %lo(D_8006BFA6)($at)
/* E71A0 8003DC90 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E71A4 8003DC94 A420BFA8 */  sh         $zero, %lo(D_8006BFA8)($at)
/* E71A8 8003DC98 0C026E46 */  jal        func_8009B918
/* E71AC 8003DC9C 24050258 */   addiu     $a1, $zero, 0x258
/* E71B0 8003DCA0 2402000E */  addiu      $v0, $zero, 0xe
/* E71B4 8003DCA4 0800FF4A */  j          .L8003FD28
/* E71B8 8003DCA8 A682001C */   sh        $v0, 0x1c($s4)
.L8003DCAC:
/* E71BC 8003DCAC 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E71C0 8003DCB0 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E71C4 8003DCB4 2402003C */  addiu      $v0, $zero, 0x3c
/* E71C8 8003DCB8 0043001A */  div        $zero, $v0, $v1
/* E71CC 8003DCBC 14600002 */  bnez       $v1, .L8003DCC8
/* E71D0 8003DCC0 00000000 */   nop
/* E71D4 8003DCC4 0007000D */  break      7
.L8003DCC8:
/* E71D8 8003DCC8 2401FFFF */   addiu     $at, $zero, -1
/* E71DC 8003DCCC 14610004 */  bne        $v1, $at, .L8003DCE0
/* E71E0 8003DCD0 3C018000 */   lui       $at, 0x8000
/* E71E4 8003DCD4 14410002 */  bne        $v0, $at, .L8003DCE0
/* E71E8 8003DCD8 00000000 */   nop
/* E71EC 8003DCDC 0006000D */  break      6
.L8003DCE0:
/* E71F0 8003DCE0 00001812 */   mflo      $v1
/* E71F4 8003DCE4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E71F8 8003DCE8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E71FC 8003DCEC 00031040 */  sll        $v0, $v1, 1
/* E7200 8003DCF0 00431021 */  addu       $v0, $v0, $v1
/* E7204 8003DCF4 00022840 */  sll        $a1, $v0, 1
/* E7208 8003DCF8 0085102A */  slt        $v0, $a0, $a1
/* E720C 8003DCFC 104000BC */  beqz       $v0, .L8003DFF0
/* E7210 8003DD00 00000000 */   nop
/* E7214 8003DD04 3C018007 */  lui        $at, %hi(D_80069F40)
/* E7218 8003DD08 D4209F40 */  ldc1       $f0, %lo(D_80069F40)($at)
/* E721C 8003DD0C 44831000 */  mtc1       $v1, $f2
/* E7220 8003DD10 00000000 */  nop
/* E7224 8003DD14 468010A1 */  cvt.d.w    $f2, $f2
/* E7228 8003DD18 46201082 */  mul.d      $f2, $f2, $f0
/* E722C 8003DD1C 44840000 */  mtc1       $a0, $f0
/* E7230 8003DD20 00000000 */  nop
/* E7234 8003DD24 46800021 */  cvt.d.w    $f0, $f0
/* E7238 8003DD28 4620103C */  c.lt.d     $f2, $f0
/* E723C 8003DD2C 00000000 */  nop
/* E7240 8003DD30 4500004E */  bc1f       .L8003DE6C
/* E7244 8003DD34 00000000 */   nop
/* E7248 8003DD38 0C00D8C1 */  jal        func_80036304_DF814
/* E724C 8003DD3C 2404001B */   addiu     $a0, $zero, 0x1b
/* E7250 8003DD40 3C038007 */  lui        $v1, %hi(D_8006BFA6)
/* E7254 8003DD44 8463BFA6 */  lh         $v1, %lo(D_8006BFA6)($v1)
/* E7258 8003DD48 00408821 */  addu       $s1, $v0, $zero
/* E725C 8003DD4C 240500FF */  addiu      $a1, $zero, 0xff
/* E7260 8003DD50 000318C0 */  sll        $v1, $v1, 3
/* E7264 8003DD54 306300FF */  andi       $v1, $v1, 0xff
/* E7268 8003DD58 AFA30010 */  sw         $v1, 0x10($sp)
/* E726C 8003DD5C 8E24000C */  lw         $a0, 0xc($s1)
/* E7270 8003DD60 240600FF */  addiu      $a2, $zero, 0xff
/* E7274 8003DD64 0C028E41 */  jal        func_800A3904
/* E7278 8003DD68 240700FF */   addiu     $a3, $zero, 0xff
/* E727C 8003DD6C 3C038007 */  lui        $v1, %hi(D_8006BFA6)
/* E7280 8003DD70 8463BFA6 */  lh         $v1, %lo(D_8006BFA6)($v1)
/* E7284 8003DD74 24020020 */  addiu      $v0, $zero, 0x20
/* E7288 8003DD78 14620007 */  bne        $v1, $v0, .L8003DD98
/* E728C 8003DD7C 240200FF */   addiu     $v0, $zero, 0xff
/* E7290 8003DD80 AFA20010 */  sw         $v0, 0x10($sp)
/* E7294 8003DD84 8E24000C */  lw         $a0, 0xc($s1)
/* E7298 8003DD88 240500FF */  addiu      $a1, $zero, 0xff
/* E729C 8003DD8C 240600FF */  addiu      $a2, $zero, 0xff
/* E72A0 8003DD90 0C028E41 */  jal        func_800A3904
/* E72A4 8003DD94 240700FF */   addiu     $a3, $zero, 0xff
.L8003DD98:
/* E72A8 8003DD98 3C013F80 */  lui        $at, 0x3f80
/* E72AC 8003DD9C 44810000 */  mtc1       $at, $f0
/* E72B0 8003DDA0 8E24000C */  lw         $a0, 0xc($s1)
/* E72B4 8003DDA4 44060000 */  mfc1       $a2, $f0
/* E72B8 8003DDA8 00002821 */  addu       $a1, $zero, $zero
/* E72BC 8003DDAC 0C02915B */  jal        func_800A456C
/* E72C0 8003DDB0 00C03821 */   addu      $a3, $a2, $zero
/* E72C4 8003DDB4 8E24000C */  lw         $a0, 0xc($s1)
/* E72C8 8003DDB8 0C028A40 */  jal        func_800A2900
/* E72CC 8003DDBC 00000000 */   nop
/* E72D0 8003DDC0 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E72D4 8003DDC4 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E72D8 8003DDC8 28420020 */  slti       $v0, $v0, 0x20
/* E72DC 8003DDCC 10400027 */  beqz       $v0, .L8003DE6C
/* E72E0 8003DDD0 00000000 */   nop
/* E72E4 8003DDD4 0C00D8C1 */  jal        func_80036304_DF814
/* E72E8 8003DDD8 24040018 */   addiu     $a0, $zero, 0x18
/* E72EC 8003DDDC 3C038007 */  lui        $v1, %hi(D_8006BFA6)
/* E72F0 8003DDE0 8463BFA6 */  lh         $v1, %lo(D_8006BFA6)($v1)
/* E72F4 8003DDE4 00408821 */  addu       $s1, $v0, $zero
/* E72F8 8003DDE8 240500FF */  addiu      $a1, $zero, 0xff
/* E72FC 8003DDEC 00031880 */  sll        $v1, $v1, 2
/* E7300 8003DDF0 306300FF */  andi       $v1, $v1, 0xff
/* E7304 8003DDF4 AFA30010 */  sw         $v1, 0x10($sp)
/* E7308 8003DDF8 8E24000C */  lw         $a0, 0xc($s1)
/* E730C 8003DDFC 240600FF */  addiu      $a2, $zero, 0xff
/* E7310 8003DE00 0C028E41 */  jal        func_800A3904
/* E7314 8003DE04 240700FF */   addiu     $a3, $zero, 0xff
/* E7318 8003DE08 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E731C 8003DE0C 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E7320 8003DE10 3C013C80 */  lui        $at, 0x3c80
/* E7324 8003DE14 44811000 */  mtc1       $at, $f2
/* E7328 8003DE18 44820000 */  mtc1       $v0, $f0
/* E732C 8003DE1C 00000000 */  nop
/* E7330 8003DE20 46800020 */  cvt.s.w    $f0, $f0
/* E7334 8003DE24 46020002 */  mul.s      $f0, $f0, $f2
/* E7338 8003DE28 3C013FC0 */  lui        $at, 0x3fc0
/* E733C 8003DE2C 44811000 */  mtc1       $at, $f2
/* E7340 8003DE30 00000000 */  nop
/* E7344 8003DE34 46001081 */  sub.s      $f2, $f2, $f0
/* E7348 8003DE38 8E24000C */  lw         $a0, 0xc($s1)
/* E734C 8003DE3C 44061000 */  mfc1       $a2, $f2
/* E7350 8003DE40 00002821 */  addu       $a1, $zero, $zero
/* E7354 8003DE44 0C02915B */  jal        func_800A456C
/* E7358 8003DE48 00C03821 */   addu      $a3, $a2, $zero
/* E735C 8003DE4C 8E24000C */  lw         $a0, 0xc($s1)
/* E7360 8003DE50 0C028A40 */  jal        func_800A2900
/* E7364 8003DE54 00000000 */   nop
/* E7368 8003DE58 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E736C 8003DE5C 9442BFA6 */  lhu        $v0, %lo(D_8006BFA6)($v0)
/* E7370 8003DE60 24420001 */  addiu      $v0, $v0, 1
/* E7374 8003DE64 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E7378 8003DE68 A422BFA6 */  sh         $v0, %lo(D_8006BFA6)($at)
.L8003DE6C:
/* E737C 8003DE6C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E7380 8003DE70 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E7384 8003DE74 2402003C */  addiu      $v0, $zero, 0x3c
/* E7388 8003DE78 0043001A */  div        $zero, $v0, $v1
/* E738C 8003DE7C 14600002 */  bnez       $v1, .L8003DE88
/* E7390 8003DE80 00000000 */   nop
/* E7394 8003DE84 0007000D */  break      7
.L8003DE88:
/* E7398 8003DE88 2401FFFF */   addiu     $at, $zero, -1
/* E739C 8003DE8C 14610004 */  bne        $v1, $at, .L8003DEA0
/* E73A0 8003DE90 3C018000 */   lui       $at, 0x8000
/* E73A4 8003DE94 14410002 */  bne        $v0, $at, .L8003DEA0
/* E73A8 8003DE98 00000000 */   nop
/* E73AC 8003DE9C 0006000D */  break      6
.L8003DEA0:
/* E73B0 8003DEA0 00001012 */   mflo      $v0
/* E73B4 8003DEA4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E73B8 8003DEA8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E73BC 8003DEAC 0043102A */  slt        $v0, $v0, $v1
/* E73C0 8003DEB0 104000AE */  beqz       $v0, .L8003E16C
/* E73C4 8003DEB4 00000000 */   nop
/* E73C8 8003DEB8 0C00D8C1 */  jal        func_80036304_DF814
/* E73CC 8003DEBC 2404001C */   addiu     $a0, $zero, 0x1c
/* E73D0 8003DEC0 3C038007 */  lui        $v1, %hi(D_8006BFA8)
/* E73D4 8003DEC4 8463BFA8 */  lh         $v1, %lo(D_8006BFA8)($v1)
/* E73D8 8003DEC8 00408821 */  addu       $s1, $v0, $zero
/* E73DC 8003DECC 240500FF */  addiu      $a1, $zero, 0xff
/* E73E0 8003DED0 000318C0 */  sll        $v1, $v1, 3
/* E73E4 8003DED4 306300FF */  andi       $v1, $v1, 0xff
/* E73E8 8003DED8 AFA30010 */  sw         $v1, 0x10($sp)
/* E73EC 8003DEDC 8E24000C */  lw         $a0, 0xc($s1)
/* E73F0 8003DEE0 240600FF */  addiu      $a2, $zero, 0xff
/* E73F4 8003DEE4 0C028E41 */  jal        func_800A3904
/* E73F8 8003DEE8 240700FF */   addiu     $a3, $zero, 0xff
/* E73FC 8003DEEC 3C038007 */  lui        $v1, %hi(D_8006BFA8)
/* E7400 8003DEF0 8463BFA8 */  lh         $v1, %lo(D_8006BFA8)($v1)
/* E7404 8003DEF4 24020020 */  addiu      $v0, $zero, 0x20
/* E7408 8003DEF8 14620007 */  bne        $v1, $v0, .L8003DF18
/* E740C 8003DEFC 240200FF */   addiu     $v0, $zero, 0xff
/* E7410 8003DF00 AFA20010 */  sw         $v0, 0x10($sp)
/* E7414 8003DF04 8E24000C */  lw         $a0, 0xc($s1)
/* E7418 8003DF08 240500FF */  addiu      $a1, $zero, 0xff
/* E741C 8003DF0C 240600FF */  addiu      $a2, $zero, 0xff
/* E7420 8003DF10 0C028E41 */  jal        func_800A3904
/* E7424 8003DF14 240700FF */   addiu     $a3, $zero, 0xff
.L8003DF18:
/* E7428 8003DF18 3C013F80 */  lui        $at, 0x3f80
/* E742C 8003DF1C 44810000 */  mtc1       $at, $f0
/* E7430 8003DF20 8E24000C */  lw         $a0, 0xc($s1)
/* E7434 8003DF24 44060000 */  mfc1       $a2, $f0
/* E7438 8003DF28 00002821 */  addu       $a1, $zero, $zero
/* E743C 8003DF2C 0C02915B */  jal        func_800A456C
/* E7440 8003DF30 00C03821 */   addu      $a3, $a2, $zero
/* E7444 8003DF34 8E24000C */  lw         $a0, 0xc($s1)
/* E7448 8003DF38 0C028A40 */  jal        func_800A2900
/* E744C 8003DF3C 00000000 */   nop
/* E7450 8003DF40 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E7454 8003DF44 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E7458 8003DF48 28420020 */  slti       $v0, $v0, 0x20
/* E745C 8003DF4C 10400087 */  beqz       $v0, .L8003E16C
/* E7460 8003DF50 00000000 */   nop
/* E7464 8003DF54 0C00D8C1 */  jal        func_80036304_DF814
/* E7468 8003DF58 24040019 */   addiu     $a0, $zero, 0x19
/* E746C 8003DF5C 3C038007 */  lui        $v1, %hi(D_8006BFA8)
/* E7470 8003DF60 8463BFA8 */  lh         $v1, %lo(D_8006BFA8)($v1)
/* E7474 8003DF64 00408821 */  addu       $s1, $v0, $zero
/* E7478 8003DF68 240500FF */  addiu      $a1, $zero, 0xff
/* E747C 8003DF6C 00031880 */  sll        $v1, $v1, 2
/* E7480 8003DF70 306300FF */  andi       $v1, $v1, 0xff
/* E7484 8003DF74 AFA30010 */  sw         $v1, 0x10($sp)
/* E7488 8003DF78 8E24000C */  lw         $a0, 0xc($s1)
/* E748C 8003DF7C 240600FF */  addiu      $a2, $zero, 0xff
/* E7490 8003DF80 0C028E41 */  jal        func_800A3904
/* E7494 8003DF84 240700FF */   addiu     $a3, $zero, 0xff
/* E7498 8003DF88 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E749C 8003DF8C 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E74A0 8003DF90 3C013C80 */  lui        $at, 0x3c80
/* E74A4 8003DF94 44811000 */  mtc1       $at, $f2
/* E74A8 8003DF98 44820000 */  mtc1       $v0, $f0
/* E74AC 8003DF9C 00000000 */  nop
/* E74B0 8003DFA0 46800020 */  cvt.s.w    $f0, $f0
/* E74B4 8003DFA4 46020002 */  mul.s      $f0, $f0, $f2
/* E74B8 8003DFA8 3C013FC0 */  lui        $at, 0x3fc0
/* E74BC 8003DFAC 44811000 */  mtc1       $at, $f2
/* E74C0 8003DFB0 00000000 */  nop
/* E74C4 8003DFB4 46001081 */  sub.s      $f2, $f2, $f0
/* E74C8 8003DFB8 8E24000C */  lw         $a0, 0xc($s1)
/* E74CC 8003DFBC 44061000 */  mfc1       $a2, $f2
/* E74D0 8003DFC0 00002821 */  addu       $a1, $zero, $zero
/* E74D4 8003DFC4 0C02915B */  jal        func_800A456C
/* E74D8 8003DFC8 00C03821 */   addu      $a3, $a2, $zero
/* E74DC 8003DFCC 8E24000C */  lw         $a0, 0xc($s1)
/* E74E0 8003DFD0 0C028A40 */  jal        func_800A2900
/* E74E4 8003DFD4 00000000 */   nop
/* E74E8 8003DFD8 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E74EC 8003DFDC 9442BFA8 */  lhu        $v0, %lo(D_8006BFA8)($v0)
/* E74F0 8003DFE0 24420001 */  addiu      $v0, $v0, 1
/* E74F4 8003DFE4 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E74F8 8003DFE8 0800F85B */  j          .L8003E16C
/* E74FC 8003DFEC A422BFA8 */   sh        $v0, %lo(D_8006BFA8)($at)
.L8003DFF0:
/* E7500 8003DFF0 14850009 */  bne        $a0, $a1, .L8003E018
/* E7504 8003DFF4 24020064 */   addiu     $v0, $zero, 0x64
/* E7508 8003DFF8 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E750C 8003DFFC A422BFA8 */  sh         $v0, %lo(D_8006BFA8)($at)
/* E7510 8003E000 240200FF */  addiu      $v0, $zero, 0xff
/* E7514 8003E004 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E7518 8003E008 A420BFA6 */  sh         $zero, %lo(D_8006BFA6)($at)
/* E751C 8003E00C 3C018007 */  lui        $at, %hi(D_8006BFAA)
/* E7520 8003E010 0800F815 */  j          .L8003E054
/* E7524 8003E014 A422BFAA */   sh        $v0, %lo(D_8006BFAA)($at)
.L8003E018:
/* E7528 8003E018 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E752C 8003E01C 9442BFA6 */  lhu        $v0, %lo(D_8006BFA6)($v0)
/* E7530 8003E020 3C038007 */  lui        $v1, %hi(D_8006BFA8)
/* E7534 8003E024 9463BFA8 */  lhu        $v1, %lo(D_8006BFA8)($v1)
/* E7538 8003E028 3C048007 */  lui        $a0, %hi(D_8006BFAA)
/* E753C 8003E02C 9484BFAA */  lhu        $a0, %lo(D_8006BFAA)($a0)
/* E7540 8003E030 2442FFFF */  addiu      $v0, $v0, -1
/* E7544 8003E034 2463FFFF */  addiu      $v1, $v1, -1
/* E7548 8003E038 2484FFFF */  addiu      $a0, $a0, -1
/* E754C 8003E03C 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E7550 8003E040 A422BFA6 */  sh         $v0, %lo(D_8006BFA6)($at)
/* E7554 8003E044 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E7558 8003E048 A423BFA8 */  sh         $v1, %lo(D_8006BFA8)($at)
/* E755C 8003E04C 3C018007 */  lui        $at, %hi(D_8006BFAA)
/* E7560 8003E050 A424BFAA */  sh         $a0, %lo(D_8006BFAA)($at)
.L8003E054:
/* E7564 8003E054 0C00D8C1 */  jal        func_80036304_DF814
/* E7568 8003E058 24040018 */   addiu     $a0, $zero, 0x18
/* E756C 8003E05C 3C068007 */  lui        $a2, %hi(D_8006BFAB)
/* E7570 8003E060 90C6BFAB */  lbu        $a2, %lo(D_8006BFAB)($a2)
/* E7574 8003E064 00408821 */  addu       $s1, $v0, $zero
/* E7578 8003E068 241000FF */  addiu      $s0, $zero, 0xff
/* E757C 8003E06C AFB00010 */  sw         $s0, 0x10($sp)
/* E7580 8003E070 8E24000C */  lw         $a0, 0xc($s1)
/* E7584 8003E074 240500FF */  addiu      $a1, $zero, 0xff
/* E7588 8003E078 0C028E41 */  jal        func_800A3904
/* E758C 8003E07C 00C03821 */   addu      $a3, $a2, $zero
/* E7590 8003E080 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E7594 8003E084 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E7598 8003E088 3C013F80 */  lui        $at, 0x3f80
/* E759C 8003E08C 4481A000 */  mtc1       $at, $f20
/* E75A0 8003E090 44821000 */  mtc1       $v0, $f2
/* E75A4 8003E094 00000000 */  nop
/* E75A8 8003E098 468010A0 */  cvt.s.w    $f2, $f2
/* E75AC 8003E09C 4602A083 */  div.s      $f2, $f20, $f2
/* E75B0 8003E0A0 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E75B4 8003E0A4 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E75B8 8003E0A8 44820000 */  mtc1       $v0, $f0
/* E75BC 8003E0AC 00000000 */  nop
/* E75C0 8003E0B0 46800020 */  cvt.s.w    $f0, $f0
/* E75C4 8003E0B4 46020002 */  mul.s      $f0, $f0, $f2
/* E75C8 8003E0B8 4600A001 */  sub.s      $f0, $f20, $f0
/* E75CC 8003E0BC 8E24000C */  lw         $a0, 0xc($s1)
/* E75D0 8003E0C0 44060000 */  mfc1       $a2, $f0
/* E75D4 8003E0C4 00002821 */  addu       $a1, $zero, $zero
/* E75D8 8003E0C8 0C02915B */  jal        func_800A456C
/* E75DC 8003E0CC 00C03821 */   addu      $a3, $a2, $zero
/* E75E0 8003E0D0 8E24000C */  lw         $a0, 0xc($s1)
/* E75E4 8003E0D4 0C028A40 */  jal        func_800A2900
/* E75E8 8003E0D8 00000000 */   nop
/* E75EC 8003E0DC 0C00D8C1 */  jal        func_80036304_DF814
/* E75F0 8003E0E0 24040019 */   addiu     $a0, $zero, 0x19
/* E75F4 8003E0E4 3C068007 */  lui        $a2, %hi(D_8006BFAB)
/* E75F8 8003E0E8 90C6BFAB */  lbu        $a2, %lo(D_8006BFAB)($a2)
/* E75FC 8003E0EC 00408821 */  addu       $s1, $v0, $zero
/* E7600 8003E0F0 AFB00010 */  sw         $s0, 0x10($sp)
/* E7604 8003E0F4 8E24000C */  lw         $a0, 0xc($s1)
/* E7608 8003E0F8 240500FF */  addiu      $a1, $zero, 0xff
/* E760C 8003E0FC 0C028E41 */  jal        func_800A3904
/* E7610 8003E100 00C03821 */   addu      $a3, $a2, $zero
/* E7614 8003E104 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E7618 8003E108 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E761C 8003E10C 44821000 */  mtc1       $v0, $f2
/* E7620 8003E110 00000000 */  nop
/* E7624 8003E114 468010A0 */  cvt.s.w    $f2, $f2
/* E7628 8003E118 4602A083 */  div.s      $f2, $f20, $f2
/* E762C 8003E11C 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E7630 8003E120 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E7634 8003E124 44820000 */  mtc1       $v0, $f0
/* E7638 8003E128 00000000 */  nop
/* E763C 8003E12C 46800020 */  cvt.s.w    $f0, $f0
/* E7640 8003E130 46020002 */  mul.s      $f0, $f0, $f2
/* E7644 8003E134 4600A501 */  sub.s      $f20, $f20, $f0
/* E7648 8003E138 8E24000C */  lw         $a0, 0xc($s1)
/* E764C 8003E13C 4406A000 */  mfc1       $a2, $f20
/* E7650 8003E140 00002821 */  addu       $a1, $zero, $zero
/* E7654 8003E144 0C02915B */  jal        func_800A456C
/* E7658 8003E148 00C03821 */   addu      $a3, $a2, $zero
/* E765C 8003E14C 8E24000C */  lw         $a0, 0xc($s1)
/* E7660 8003E150 0C028A40 */  jal        func_800A2900
/* E7664 8003E154 00000000 */   nop
/* E7668 8003E158 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E766C 8003E15C 9442BFA4 */  lhu        $v0, %lo(D_8006BFA4)($v0)
/* E7670 8003E160 2442FFFF */  addiu      $v0, $v0, -1
/* E7674 8003E164 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E7678 8003E168 A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
.L8003E16C:
/* E767C 8003E16C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E7680 8003E170 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E7684 8003E174 2410003C */  addiu      $s0, $zero, 0x3c
/* E7688 8003E178 0202001A */  div        $zero, $s0, $v0
/* E768C 8003E17C 14400002 */  bnez       $v0, .L8003E188
/* E7690 8003E180 00000000 */   nop
/* E7694 8003E184 0007000D */  break      7
.L8003E188:
/* E7698 8003E188 2401FFFF */   addiu     $at, $zero, -1
/* E769C 8003E18C 14410004 */  bne        $v0, $at, .L8003E1A0
/* E76A0 8003E190 3C018000 */   lui       $at, 0x8000
/* E76A4 8003E194 16010002 */  bne        $s0, $at, .L8003E1A0
/* E76A8 8003E198 00000000 */   nop
/* E76AC 8003E19C 0006000D */  break      6
.L8003E1A0:
/* E76B0 8003E1A0 00001012 */   mflo      $v0
/* E76B4 8003E1A4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E76B8 8003E1A8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E76BC 8003E1AC 00022040 */  sll        $a0, $v0, 1
/* E76C0 8003E1B0 00821021 */  addu       $v0, $a0, $v0
/* E76C4 8003E1B4 00021040 */  sll        $v0, $v0, 1
/* E76C8 8003E1B8 14620003 */  bne        $v1, $v0, .L8003E1C8
/* E76CC 8003E1BC 00000000 */   nop
/* E76D0 8003E1C0 0C02A5C1 */  jal        func_800A9704
/* E76D4 8003E1C4 00000000 */   nop
.L8003E1C8:
/* E76D8 8003E1C8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E76DC 8003E1CC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E76E0 8003E1D0 0202001A */  div        $zero, $s0, $v0
/* E76E4 8003E1D4 14400002 */  bnez       $v0, .L8003E1E0
/* E76E8 8003E1D8 00000000 */   nop
/* E76EC 8003E1DC 0007000D */  break      7
.L8003E1E0:
/* E76F0 8003E1E0 2401FFFF */   addiu     $at, $zero, -1
/* E76F4 8003E1E4 14410004 */  bne        $v0, $at, .L8003E1F8
/* E76F8 8003E1E8 3C018000 */   lui       $at, 0x8000
/* E76FC 8003E1EC 16010002 */  bne        $s0, $at, .L8003E1F8
/* E7700 8003E1F0 00000000 */   nop
/* E7704 8003E1F4 0006000D */  break      6
.L8003E1F8:
/* E7708 8003E1F8 00001012 */   mflo      $v0
/* E770C 8003E1FC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E7710 8003E200 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E7714 8003E204 000210C0 */  sll        $v0, $v0, 3
/* E7718 8003E208 0062182A */  slt        $v1, $v1, $v0
/* E771C 8003E20C 146006C7 */  bnez       $v1, .L8003FD2C
/* E7720 8003E210 00001021 */   addu      $v0, $zero, $zero
/* E7724 8003E214 2402000F */  addiu      $v0, $zero, 0xf
/* E7728 8003E218 0800FF4A */  j          .L8003FD28
/* E772C 8003E21C A682001C */   sh        $v0, 0x1c($s4)
.L8003E220:
/* E7730 8003E220 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E7734 8003E224 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E7738 8003E228 14400006 */  bnez       $v0, .L8003E244
/* E773C 8003E22C 28420002 */   slti      $v0, $v0, 2
/* E7740 8003E230 0C00E8E8 */  jal        func_8003A3A0_E38B0
/* E7744 8003E234 00000000 */   nop
/* E7748 8003E238 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E774C 8003E23C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E7750 8003E240 28420002 */  slti       $v0, $v0, 2
.L8003E244:
/* E7754 8003E244 144006B9 */  bnez       $v0, .L8003FD2C
/* E7758 8003E248 00001021 */   addu      $v0, $zero, $zero
/* E775C 8003E24C 0C02A5AF */  jal        func_800A96BC
/* E7760 8003E250 24040001 */   addiu     $a0, $zero, 1
/* E7764 8003E254 3C01437F */  lui        $at, 0x437f
/* E7768 8003E258 44810000 */  mtc1       $at, $f0
/* E776C 8003E25C 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E7770 8003E260 A420BFA4 */  sh         $zero, %lo(D_8006BFA4)($at)
/* E7774 8003E264 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E7778 8003E268 A420BFA6 */  sh         $zero, %lo(D_8006BFA6)($at)
/* E777C 8003E26C 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E7780 8003E270 A420BFA8 */  sh         $zero, %lo(D_8006BFA8)($at)
/* E7784 8003E274 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E7788 8003E278 E420C3E4 */  swc1       $f0, %lo(D_8006C3E4)($at)
/* E778C 8003E27C 0C026DD5 */  jal        func_8009B754
/* E7790 8003E280 240400B7 */   addiu     $a0, $zero, 0xb7
/* E7794 8003E284 24020010 */  addiu      $v0, $zero, 0x10
/* E7798 8003E288 0800FF4A */  j          .L8003FD28
/* E779C 8003E28C A682001C */   sh        $v0, 0x1c($s4)
.L8003E290:
/* E77A0 8003E290 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E77A4 8003E294 9484BFA4 */  lhu        $a0, %lo(D_8006BFA4)($a0)
/* E77A8 8003E298 00041400 */  sll        $v0, $a0, 0x10
/* E77AC 8003E29C 00021303 */  sra        $v0, $v0, 0xc
/* E77B0 8003E2A0 3C058007 */  lui        $a1, %hi(D_8006C3E4)
/* E77B4 8003E2A4 00A22821 */  addu       $a1, $a1, $v0
/* E77B8 8003E2A8 8CA5C3E4 */  lw         $a1, %lo(D_8006C3E4)($a1)
/* E77BC 8003E2AC 0C00E966 */  jal        func_8003A598_E3AA8
/* E77C0 8003E2B0 308400FF */   andi      $a0, $a0, 0xff
/* E77C4 8003E2B4 3C048007 */  lui        $a0, %hi(D_8006BFA4)
/* E77C8 8003E2B8 9484BFA4 */  lhu        $a0, %lo(D_8006BFA4)($a0)
/* E77CC 8003E2BC 00041400 */  sll        $v0, $a0, 0x10
/* E77D0 8003E2C0 00021303 */  sra        $v0, $v0, 0xc
/* E77D4 8003E2C4 3C058007 */  lui        $a1, %hi(D_8006C3F4)
/* E77D8 8003E2C8 00A22821 */  addu       $a1, $a1, $v0
/* E77DC 8003E2CC 8CA5C3F4 */  lw         $a1, %lo(D_8006C3F4)($a1)
/* E77E0 8003E2D0 24840001 */  addiu      $a0, $a0, 1
/* E77E4 8003E2D4 0C00E966 */  jal        func_8003A598_E3AA8
/* E77E8 8003E2D8 308400FF */   andi      $a0, $a0, 0xff
/* E77EC 8003E2DC 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E77F0 8003E2E0 8463BFA4 */  lh         $v1, %lo(D_8006BFA4)($v1)
/* E77F4 8003E2E4 3C0141A0 */  lui        $at, 0x41a0
/* E77F8 8003E2E8 44811000 */  mtc1       $at, $f2
/* E77FC 8003E2EC 00032900 */  sll        $a1, $v1, 4
/* E7800 8003E2F0 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E7804 8003E2F4 00250821 */  addu       $at, $at, $a1
/* E7808 8003E2F8 C420C3E4 */  lwc1       $f0, %lo(D_8006C3E4)($at)
/* E780C 8003E2FC 46020001 */  sub.s      $f0, $f0, $f2
/* E7810 8003E300 3C0141C0 */  lui        $at, 0x41c0
/* E7814 8003E304 44811000 */  mtc1       $at, $f2
/* E7818 8003E308 24620001 */  addiu      $v0, $v1, 1
/* E781C 8003E30C 00022100 */  sll        $a0, $v0, 4
/* E7820 8003E310 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E7824 8003E314 00250821 */  addu       $at, $at, $a1
/* E7828 8003E318 E420C3E4 */  swc1       $f0, %lo(D_8006C3E4)($at)
/* E782C 8003E31C 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E7830 8003E320 00240821 */  addu       $at, $at, $a0
/* E7834 8003E324 C420C3E4 */  lwc1       $f0, %lo(D_8006C3E4)($at)
/* E7838 8003E328 46020000 */  add.s      $f0, $f0, $f2
/* E783C 8003E32C 3C014370 */  lui        $at, 0x4370
/* E7840 8003E330 44811000 */  mtc1       $at, $f2
/* E7844 8003E334 00000000 */  nop
/* E7848 8003E338 4600103E */  c.le.s     $f2, $f0
/* E784C 8003E33C 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E7850 8003E340 00240821 */  addu       $at, $at, $a0
/* E7854 8003E344 E420C3E4 */  swc1       $f0, %lo(D_8006C3E4)($at)
/* E7858 8003E348 4500000A */  bc1f       .L8003E374
/* E785C 8003E34C 00601021 */   addu      $v0, $v1, $zero
/* E7860 8003E350 24420001 */  addiu      $v0, $v0, 1
/* E7864 8003E354 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E7868 8003E358 00250821 */  addu       $at, $at, $a1
/* E786C 8003E35C AC20C3E4 */  sw         $zero, %lo(D_8006C3E4)($at)
/* E7870 8003E360 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E7874 8003E364 00240821 */  addu       $at, $at, $a0
/* E7878 8003E368 E422C3E4 */  swc1       $f2, %lo(D_8006C3E4)($at)
/* E787C 8003E36C 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E7880 8003E370 A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
.L8003E374:
/* E7884 8003E374 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E7888 8003E378 8442BFA6 */  lh         $v0, %lo(D_8006BFA6)($v0)
/* E788C 8003E37C 04410002 */  bgez       $v0, .L8003E388
/* E7890 8003E380 00402021 */   addu      $a0, $v0, $zero
/* E7894 8003E384 24440007 */  addiu      $a0, $v0, 7
.L8003E388:
/* E7898 8003E388 000420C3 */  sra        $a0, $a0, 3
/* E789C 8003E38C 000420C0 */  sll        $a0, $a0, 3
/* E78A0 8003E390 00442023 */  subu       $a0, $v0, $a0
/* E78A4 8003E394 2484001D */  addiu      $a0, $a0, 0x1d
/* E78A8 8003E398 0C00D8C1 */  jal        func_80036304_DF814
/* E78AC 8003E39C 3084FFFF */   andi      $a0, $a0, 0xffff
/* E78B0 8003E3A0 00408821 */  addu       $s1, $v0, $zero
/* E78B4 8003E3A4 8E23000C */  lw         $v1, 0xc($s1)
/* E78B8 8003E3A8 240500FF */  addiu      $a1, $zero, 0xff
/* E78BC 8003E3AC 24020046 */  addiu      $v0, $zero, 0x46
/* E78C0 8003E3B0 A462001C */  sh         $v0, 0x1c($v1)
/* E78C4 8003E3B4 240200FF */  addiu      $v0, $zero, 0xff
/* E78C8 8003E3B8 AFA20010 */  sw         $v0, 0x10($sp)
/* E78CC 8003E3BC 8E24000C */  lw         $a0, 0xc($s1)
/* E78D0 8003E3C0 240600FF */  addiu      $a2, $zero, 0xff
/* E78D4 8003E3C4 0C028E41 */  jal        func_800A3904
/* E78D8 8003E3C8 240700FF */   addiu     $a3, $zero, 0xff
/* E78DC 8003E3CC 8E24000C */  lw         $a0, 0xc($s1)
/* E78E0 8003E3D0 0C028A40 */  jal        func_800A2900
/* E78E4 8003E3D4 00000000 */   nop
/* E78E8 8003E3D8 3C038007 */  lui        $v1, %hi(D_8006BFA6)
/* E78EC 8003E3DC 8463BFA6 */  lh         $v1, %lo(D_8006BFA6)($v1)
/* E78F0 8003E3E0 24620001 */  addiu      $v0, $v1, 1
/* E78F4 8003E3E4 04410002 */  bgez       $v0, .L8003E3F0
/* E78F8 8003E3E8 00402021 */   addu      $a0, $v0, $zero
/* E78FC 8003E3EC 24640008 */  addiu      $a0, $v1, 8
.L8003E3F0:
/* E7900 8003E3F0 000420C3 */  sra        $a0, $a0, 3
/* E7904 8003E3F4 000420C0 */  sll        $a0, $a0, 3
/* E7908 8003E3F8 00442023 */  subu       $a0, $v0, $a0
/* E790C 8003E3FC 2484001D */  addiu      $a0, $a0, 0x1d
/* E7910 8003E400 0C00D8C1 */  jal        func_80036304_DF814
/* E7914 8003E404 3084FFFF */   andi      $a0, $a0, 0xffff
/* E7918 8003E408 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E791C 8003E40C C422BFAC */  lwc1       $f2, %lo(D_8006BFAC)($at)
/* E7920 8003E410 3C014F00 */  lui        $at, 0x4f00
/* E7924 8003E414 44810000 */  mtc1       $at, $f0
/* E7928 8003E418 00408821 */  addu       $s1, $v0, $zero
/* E792C 8003E41C 8E23000C */  lw         $v1, 0xc($s1)
/* E7930 8003E420 4602003E */  c.le.s     $f0, $f2
/* E7934 8003E424 24020045 */  addiu      $v0, $zero, 0x45
/* E7938 8003E428 00000000 */  nop
/* E793C 8003E42C 45010006 */  bc1t       .L8003E448
/* E7940 8003E430 A462001C */   sh        $v0, 0x1c($v1)
/* E7944 8003E434 4600100D */  trunc.w.s  $f0, $f2
/* E7948 8003E438 44030000 */  mfc1       $v1, $f0
/* E794C 8003E43C 00000000 */  nop
/* E7950 8003E440 0800F918 */  j          .L8003E460
/* E7954 8003E444 306200FF */   andi      $v0, $v1, 0xff
.L8003E448:
/* E7958 8003E448 46001001 */  sub.s      $f0, $f2, $f0
/* E795C 8003E44C 4600008D */  trunc.w.s  $f2, $f0
/* E7960 8003E450 44031000 */  mfc1       $v1, $f2
/* E7964 8003E454 3C028000 */  lui        $v0, 0x8000
/* E7968 8003E458 00621825 */  or         $v1, $v1, $v0
/* E796C 8003E45C 306200FF */  andi       $v0, $v1, 0xff
.L8003E460:
/* E7970 8003E460 AFA20010 */  sw         $v0, 0x10($sp)
/* E7974 8003E464 8E24000C */  lw         $a0, 0xc($s1)
/* E7978 8003E468 240500FF */  addiu      $a1, $zero, 0xff
/* E797C 8003E46C 240600FF */  addiu      $a2, $zero, 0xff
/* E7980 8003E470 0C028E41 */  jal        func_800A3904
/* E7984 8003E474 240700FF */   addiu     $a3, $zero, 0xff
/* E7988 8003E478 8E24000C */  lw         $a0, 0xc($s1)
/* E798C 8003E47C 0C028A40 */  jal        func_800A2900
/* E7990 8003E480 00000000 */   nop
/* E7994 8003E484 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E7998 8003E488 C420BFAC */  lwc1       $f0, %lo(D_8006BFAC)($at)
/* E799C 8003E48C 3C014200 */  lui        $at, 0x4200
/* E79A0 8003E490 44811000 */  mtc1       $at, $f2
/* E79A4 8003E494 00000000 */  nop
/* E79A8 8003E498 46020000 */  add.s      $f0, $f0, $f2
/* E79AC 8003E49C 3C014370 */  lui        $at, 0x4370
/* E79B0 8003E4A0 44811000 */  mtc1       $at, $f2
/* E79B4 8003E4A4 00000000 */  nop
/* E79B8 8003E4A8 4600103E */  c.le.s     $f2, $f0
/* E79BC 8003E4AC 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E79C0 8003E4B0 E420BFAC */  swc1       $f0, %lo(D_8006BFAC)($at)
/* E79C4 8003E4B4 45000008 */  bc1f       .L8003E4D8
/* E79C8 8003E4B8 00000000 */   nop
/* E79CC 8003E4BC 3C028007 */  lui        $v0, %hi(D_8006BFA6)
/* E79D0 8003E4C0 9442BFA6 */  lhu        $v0, %lo(D_8006BFA6)($v0)
/* E79D4 8003E4C4 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E79D8 8003E4C8 AC20BFAC */  sw         $zero, %lo(D_8006BFAC)($at)
/* E79DC 8003E4CC 24420001 */  addiu      $v0, $v0, 1
/* E79E0 8003E4D0 3C018007 */  lui        $at, %hi(D_8006BFA6)
/* E79E4 8003E4D4 A422BFA6 */  sh         $v0, %lo(D_8006BFA6)($at)
.L8003E4D8:
/* E79E8 8003E4D8 0C00D8C1 */  jal        func_80036304_DF814
/* E79EC 8003E4DC 24040025 */   addiu     $a0, $zero, 0x25
/* E79F0 8003E4E0 00408821 */  addu       $s1, $v0, $zero
/* E79F4 8003E4E4 240200FF */  addiu      $v0, $zero, 0xff
/* E79F8 8003E4E8 AFA20010 */  sw         $v0, 0x10($sp)
/* E79FC 8003E4EC 8E24000C */  lw         $a0, 0xc($s1)
/* E7A00 8003E4F0 240500FF */  addiu      $a1, $zero, 0xff
/* E7A04 8003E4F4 240600FF */  addiu      $a2, $zero, 0xff
/* E7A08 8003E4F8 0C028E41 */  jal        func_800A3904
/* E7A0C 8003E4FC 240700FF */   addiu     $a3, $zero, 0xff
/* E7A10 8003E500 8E24000C */  lw         $a0, 0xc($s1)
/* E7A14 8003E504 24050280 */  addiu      $a1, $zero, 0x280
/* E7A18 8003E508 0C028D89 */  jal        func_800A3624
/* E7A1C 8003E50C 24060210 */   addiu     $a2, $zero, 0x210
/* E7A20 8003E510 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E7A24 8003E514 8442BFA8 */  lh         $v0, %lo(D_8006BFA8)($v0)
/* E7A28 8003E518 3C014334 */  lui        $at, 0x4334
/* E7A2C 8003E51C 44811000 */  mtc1       $at, $f2
/* E7A30 8003E520 44820000 */  mtc1       $v0, $f0
/* E7A34 8003E524 00000000 */  nop
/* E7A38 8003E528 46800020 */  cvt.s.w    $f0, $f0
/* E7A3C 8003E52C 46020003 */  div.s      $f0, $f0, $f2
/* E7A40 8003E530 3C013FDC */  lui        $at, 0x3fdc
/* E7A44 8003E534 342128F6 */  ori        $at, $at, 0x28f6
/* E7A48 8003E538 44811000 */  mtc1       $at, $f2
/* E7A4C 8003E53C 00000000 */  nop
/* E7A50 8003E540 46001081 */  sub.s      $f2, $f2, $f0
/* E7A54 8003E544 8E24000C */  lw         $a0, 0xc($s1)
/* E7A58 8003E548 44061000 */  mfc1       $a2, $f2
/* E7A5C 8003E54C 00002821 */  addu       $a1, $zero, $zero
/* E7A60 8003E550 0C02915B */  jal        func_800A456C
/* E7A64 8003E554 00C03821 */   addu      $a3, $a2, $zero
/* E7A68 8003E558 8E24000C */  lw         $a0, 0xc($s1)
/* E7A6C 8003E55C 0C028A40 */  jal        func_800A2900
/* E7A70 8003E560 00000000 */   nop
/* E7A74 8003E564 0C00D8C1 */  jal        func_80036304_DF814
/* E7A78 8003E568 2404001C */   addiu     $a0, $zero, 0x1c
/* E7A7C 8003E56C 00408821 */  addu       $s1, $v0, $zero
/* E7A80 8003E570 8E24000C */  lw         $a0, 0xc($s1)
/* E7A84 8003E574 24050040 */  addiu      $a1, $zero, 0x40
/* E7A88 8003E578 0C02933E */  jal        func_800A4CF8
/* E7A8C 8003E57C 00003021 */   addu      $a2, $zero, $zero
/* E7A90 8003E580 24020098 */  addiu      $v0, $zero, 0x98
/* E7A94 8003E584 AFA20010 */  sw         $v0, 0x10($sp)
/* E7A98 8003E588 8E24000C */  lw         $a0, 0xc($s1)
/* E7A9C 8003E58C 240500FF */  addiu      $a1, $zero, 0xff
/* E7AA0 8003E590 240600FF */  addiu      $a2, $zero, 0xff
/* E7AA4 8003E594 0C028E41 */  jal        func_800A3904
/* E7AA8 8003E598 240700FF */   addiu     $a3, $zero, 0xff
/* E7AAC 8003E59C 8E24000C */  lw         $a0, 0xc($s1)
/* E7AB0 8003E5A0 0C028A40 */  jal        func_800A2900
/* E7AB4 8003E5A4 00000000 */   nop
/* E7AB8 8003E5A8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E7ABC 8003E5AC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E7AC0 8003E5B0 2403003C */  addiu      $v1, $zero, 0x3c
/* E7AC4 8003E5B4 0062001A */  div        $zero, $v1, $v0
/* E7AC8 8003E5B8 14400002 */  bnez       $v0, .L8003E5C4
/* E7ACC 8003E5BC 00000000 */   nop
/* E7AD0 8003E5C0 0007000D */  break      7
.L8003E5C4:
/* E7AD4 8003E5C4 2401FFFF */   addiu     $at, $zero, -1
/* E7AD8 8003E5C8 14410004 */  bne        $v0, $at, .L8003E5DC
/* E7ADC 8003E5CC 3C018000 */   lui       $at, 0x8000
/* E7AE0 8003E5D0 14610002 */  bne        $v1, $at, .L8003E5DC
/* E7AE4 8003E5D4 00000000 */   nop
/* E7AE8 8003E5D8 0006000D */  break      6
.L8003E5DC:
/* E7AEC 8003E5DC 00001812 */   mflo      $v1
/* E7AF0 8003E5E0 3C028007 */  lui        $v0, %hi(D_8006BFA8)
/* E7AF4 8003E5E4 9442BFA8 */  lhu        $v0, %lo(D_8006BFA8)($v0)
/* E7AF8 8003E5E8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E7AFC 8003E5EC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E7B00 8003E5F0 24420001 */  addiu      $v0, $v0, 1
/* E7B04 8003E5F4 3C018007 */  lui        $at, %hi(D_8006BFA8)
/* E7B08 8003E5F8 1483000D */  bne        $a0, $v1, .L8003E630
/* E7B0C 8003E5FC A422BFA8 */   sh        $v0, %lo(D_8006BFA8)($at)
/* E7B10 8003E600 0C026DD5 */  jal        func_8009B754
/* E7B14 8003E604 2404002F */   addiu     $a0, $zero, 0x2f
/* E7B18 8003E608 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* E7B1C 8003E60C 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* E7B20 8003E610 00402021 */  addu       $a0, $v0, $zero
/* E7B24 8003E614 3C018007 */  lui        $at, %hi(D_80068ED4)
/* E7B28 8003E618 0C026E66 */  jal        func_8009B998
/* E7B2C 8003E61C AC248ED4 */   sw        $a0, %lo(D_80068ED4)($at)
/* E7B30 8003E620 3C048007 */  lui        $a0, %hi(D_80068ED4)
/* E7B34 8003E624 8C848ED4 */  lw         $a0, %lo(D_80068ED4)($a0)
/* E7B38 8003E628 0C026E46 */  jal        func_8009B918
/* E7B3C 8003E62C 24050258 */   addiu     $a1, $zero, 0x258
.L8003E630:
/* E7B40 8003E630 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E7B44 8003E634 8463BFA4 */  lh         $v1, %lo(D_8006BFA4)($v1)
/* E7B48 8003E638 2402000D */  addiu      $v0, $zero, 0xd
/* E7B4C 8003E63C 146205BB */  bne        $v1, $v0, .L8003FD2C
/* E7B50 8003E640 00001021 */   addu      $v0, $zero, $zero
/* E7B54 8003E644 24020011 */  addiu      $v0, $zero, 0x11
/* E7B58 8003E648 0800FF4A */  j          .L8003FD28
/* E7B5C 8003E64C A682001C */   sh        $v0, 0x1c($s4)
.L8003E650:
/* E7B60 8003E650 0C00EA5D */  jal        func_8003A974_E3E84
/* E7B64 8003E654 00000000 */   nop
/* E7B68 8003E658 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E7B6C 8003E65C A420BFA4 */  sh         $zero, %lo(D_8006BFA4)($at)
/* E7B70 8003E660 0C026DD5 */  jal        func_8009B754
/* E7B74 8003E664 2404002F */   addiu     $a0, $zero, 0x2f
/* E7B78 8003E668 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* E7B7C 8003E66C 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* E7B80 8003E670 00402021 */  addu       $a0, $v0, $zero
/* E7B84 8003E674 3C018007 */  lui        $at, %hi(D_80068ED4)
/* E7B88 8003E678 AC248ED4 */  sw         $a0, %lo(D_80068ED4)($at)
/* E7B8C 8003E67C 00031C00 */  sll        $v1, $v1, 0x10
/* E7B90 8003E680 00032C03 */  sra        $a1, $v1, 0x10
/* E7B94 8003E684 00031FC2 */  srl        $v1, $v1, 0x1f
/* E7B98 8003E688 00A32821 */  addu       $a1, $a1, $v1
/* E7B9C 8003E68C 0C026E66 */  jal        func_8009B998
/* E7BA0 8003E690 00052843 */   sra       $a1, $a1, 1
/* E7BA4 8003E694 3C048007 */  lui        $a0, %hi(D_80068ED4)
/* E7BA8 8003E698 8C848ED4 */  lw         $a0, %lo(D_80068ED4)($a0)
/* E7BAC 8003E69C 0C026E46 */  jal        func_8009B918
/* E7BB0 8003E6A0 24050258 */   addiu     $a1, $zero, 0x258
/* E7BB4 8003E6A4 24020012 */  addiu      $v0, $zero, 0x12
/* E7BB8 8003E6A8 A682001C */  sh         $v0, 0x1c($s4)
.L8003E6AC:
/* E7BBC 8003E6AC 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E7BC0 8003E6B0 9442BFA4 */  lhu        $v0, %lo(D_8006BFA4)($v0)
/* E7BC4 8003E6B4 24420001 */  addiu      $v0, $v0, 1
/* E7BC8 8003E6B8 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E7BCC 8003E6BC A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
/* E7BD0 8003E6C0 0C00D8C1 */  jal        func_80036304_DF814
/* E7BD4 8003E6C4 24040055 */   addiu     $a0, $zero, 0x55
/* E7BD8 8003E6C8 8C44000C */  lw         $a0, 0xc($v0)
/* E7BDC 8003E6CC 0C028A40 */  jal        func_800A2900
/* E7BE0 8003E6D0 00009021 */   addu      $s2, $zero, $zero
/* E7BE4 8003E6D4 0C00D8C1 */  jal        func_80036304_DF814
/* E7BE8 8003E6D8 24040044 */   addiu     $a0, $zero, 0x44
/* E7BEC 8003E6DC 8C44000C */  lw         $a0, 0xc($v0)
/* E7BF0 8003E6E0 0C028A40 */  jal        func_800A2900
/* E7BF4 8003E6E4 00000000 */   nop
/* E7BF8 8003E6E8 0C00D8C1 */  jal        func_80036304_DF814
/* E7BFC 8003E6EC 24040045 */   addiu     $a0, $zero, 0x45
/* E7C00 8003E6F0 8C44000C */  lw         $a0, 0xc($v0)
/* E7C04 8003E6F4 0C028A40 */  jal        func_800A2900
/* E7C08 8003E6F8 00000000 */   nop
/* E7C0C 8003E6FC 0C00D8C1 */  jal        func_80036304_DF814
/* E7C10 8003E700 24040056 */   addiu     $a0, $zero, 0x56
/* E7C14 8003E704 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E7C18 8003E708 8463BFA4 */  lh         $v1, %lo(D_8006BFA4)($v1)
/* E7C1C 8003E70C 3C014140 */  lui        $at, 0x4140
/* E7C20 8003E710 44811000 */  mtc1       $at, $f2
/* E7C24 8003E714 44830000 */  mtc1       $v1, $f0
/* E7C28 8003E718 00000000 */  nop
/* E7C2C 8003E71C 46800020 */  cvt.s.w    $f0, $f0
/* E7C30 8003E720 46020003 */  div.s      $f0, $f0, $f2
/* E7C34 8003E724 3C0142E6 */  lui        $at, 0x42e6
/* E7C38 8003E728 44811000 */  mtc1       $at, $f2
/* E7C3C 8003E72C 00000000 */  nop
/* E7C40 8003E730 46001081 */  sub.s      $f2, $f2, $f0
/* E7C44 8003E734 3C014080 */  lui        $at, 0x4080
/* E7C48 8003E738 44810000 */  mtc1       $at, $f0
/* E7C4C 8003E73C 00000000 */  nop
/* E7C50 8003E740 46001082 */  mul.s      $f2, $f2, $f0
/* E7C54 8003E744 3C013D4C */  lui        $at, 0x3d4c
/* E7C58 8003E748 3421CCCD */  ori        $at, $at, 0xcccd
/* E7C5C 8003E74C 4481D000 */  mtc1       $at, $f26
/* E7C60 8003E750 00408821 */  addu       $s1, $v0, $zero
/* E7C64 8003E754 8E24000C */  lw         $a0, 0xc($s1)
/* E7C68 8003E758 24050280 */  addiu      $a1, $zero, 0x280
/* E7C6C 8003E75C 4600100D */  trunc.w.s  $f0, $f2
/* E7C70 8003E760 44060000 */  mfc1       $a2, $f0
/* E7C74 8003E764 00000000 */  nop
/* E7C78 8003E768 00063400 */  sll        $a2, $a2, 0x10
/* E7C7C 8003E76C 0C028D89 */  jal        func_800A3624
/* E7C80 8003E770 00063403 */   sra       $a2, $a2, 0x10
/* E7C84 8003E774 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E7C88 8003E778 9442BFA4 */  lhu        $v0, %lo(D_8006BFA4)($v0)
/* E7C8C 8003E77C 3C013F19 */  lui        $at, 0x3f19
/* E7C90 8003E780 3421999A */  ori        $at, $at, 0x999a
/* E7C94 8003E784 4481C000 */  mtc1       $at, $f24
/* E7C98 8003E788 240500FF */  addiu      $a1, $zero, 0xff
/* E7C9C 8003E78C 00021400 */  sll        $v0, $v0, 0x10
/* E7CA0 8003E790 00021C03 */  sra        $v1, $v0, 0x10
/* E7CA4 8003E794 000217C2 */  srl        $v0, $v0, 0x1f
/* E7CA8 8003E798 00621021 */  addu       $v0, $v1, $v0
/* E7CAC 8003E79C 00021043 */  sra        $v0, $v0, 1
/* E7CB0 8003E7A0 00021040 */  sll        $v0, $v0, 1
/* E7CB4 8003E7A4 00621823 */  subu       $v1, $v1, $v0
/* E7CB8 8003E7A8 00031C00 */  sll        $v1, $v1, 0x10
/* E7CBC 8003E7AC 00031AC3 */  sra        $v1, $v1, 0xb
/* E7CC0 8003E7B0 2463FFC0 */  addiu      $v1, $v1, -0x40
/* E7CC4 8003E7B4 306300FF */  andi       $v1, $v1, 0xff
/* E7CC8 8003E7B8 AFA30010 */  sw         $v1, 0x10($sp)
/* E7CCC 8003E7BC 8E24000C */  lw         $a0, 0xc($s1)
/* E7CD0 8003E7C0 240600FF */  addiu      $a2, $zero, 0xff
/* E7CD4 8003E7C4 0C028E41 */  jal        func_800A3904
/* E7CD8 8003E7C8 240700FF */   addiu     $a3, $zero, 0xff
/* E7CDC 8003E7CC 8E24000C */  lw         $a0, 0xc($s1)
/* E7CE0 8003E7D0 3C014448 */  lui        $at, 0x4448
/* E7CE4 8003E7D4 4481B000 */  mtc1       $at, $f22
/* E7CE8 8003E7D8 3C013EE6 */  lui        $at, 0x3ee6
/* E7CEC 8003E7DC 34216666 */  ori        $at, $at, 0x6666
/* E7CF0 8003E7E0 4481A000 */  mtc1       $at, $f20
/* E7CF4 8003E7E4 0C028A40 */  jal        func_800A2900
/* E7CF8 8003E7E8 00000000 */   nop
/* E7CFC 8003E7EC 26440046 */  addiu      $a0, $s2, 0x46
.L8003E7F0:
/* E7D00 8003E7F0 0C00D8C1 */  jal        func_80036304_DF814
/* E7D04 8003E7F4 3084FFFF */   andi      $a0, $a0, 0xffff
/* E7D08 8003E7F8 3C038007 */  lui        $v1, %hi(D_8006BFA4)
/* E7D0C 8003E7FC 8463BFA4 */  lh         $v1, %lo(D_8006BFA4)($v1)
/* E7D10 8003E800 44832000 */  mtc1       $v1, $f4
/* E7D14 8003E804 00000000 */  nop
/* E7D18 8003E808 46802120 */  cvt.s.w    $f4, $f4
/* E7D1C 8003E80C 46162103 */  div.s      $f4, $f4, $f22
/* E7D20 8003E810 3243FFFF */  andi       $v1, $s2, 0xffff
/* E7D24 8003E814 44831000 */  mtc1       $v1, $f2
/* E7D28 8003E818 00000000 */  nop
/* E7D2C 8003E81C 468010A0 */  cvt.s.w    $f2, $f2
/* E7D30 8003E820 461A1082 */  mul.s      $f2, $f2, $f26
/* E7D34 8003E824 46181000 */  add.s      $f0, $f2, $f24
/* E7D38 8003E828 46141080 */  add.s      $f2, $f2, $f20
/* E7D3C 8003E82C 46040000 */  add.s      $f0, $f0, $f4
/* E7D40 8003E830 00408821 */  addu       $s1, $v0, $zero
/* E7D44 8003E834 46041080 */  add.s      $f2, $f2, $f4
/* E7D48 8003E838 8E24000C */  lw         $a0, 0xc($s1)
/* E7D4C 8003E83C 44060000 */  mfc1       $a2, $f0
/* E7D50 8003E840 44071000 */  mfc1       $a3, $f2
/* E7D54 8003E844 00000000 */  nop
/* E7D58 8003E848 0C02915B */  jal        func_800A456C
/* E7D5C 8003E84C 24050666 */   addiu     $a1, $zero, 0x666
/* E7D60 8003E850 8E24000C */  lw         $a0, 0xc($s1)
/* E7D64 8003E854 0C028A40 */  jal        func_800A2900
/* E7D68 8003E858 26520001 */   addiu     $s2, $s2, 1
/* E7D6C 8003E85C 3242FFFF */  andi       $v0, $s2, 0xffff
/* E7D70 8003E860 2C420008 */  sltiu      $v0, $v0, 8
/* E7D74 8003E864 1440FFE2 */  bnez       $v0, .L8003E7F0
/* E7D78 8003E868 26440046 */   addiu     $a0, $s2, 0x46
/* E7D7C 8003E86C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E7D80 8003E870 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E7D84 8003E874 2410003C */  addiu      $s0, $zero, 0x3c
/* E7D88 8003E878 0202001A */  div        $zero, $s0, $v0
/* E7D8C 8003E87C 14400002 */  bnez       $v0, .L8003E888
/* E7D90 8003E880 00000000 */   nop
/* E7D94 8003E884 0007000D */  break      7
.L8003E888:
/* E7D98 8003E888 2401FFFF */   addiu     $at, $zero, -1
/* E7D9C 8003E88C 14410004 */  bne        $v0, $at, .L8003E8A0
/* E7DA0 8003E890 3C018000 */   lui       $at, 0x8000
/* E7DA4 8003E894 16010002 */  bne        $s0, $at, .L8003E8A0
/* E7DA8 8003E898 00000000 */   nop
/* E7DAC 8003E89C 0006000D */  break      6
.L8003E8A0:
/* E7DB0 8003E8A0 00002012 */   mflo      $a0
/* E7DB4 8003E8A4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E7DB8 8003E8A8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E7DBC 8003E8AC 00041080 */  sll        $v0, $a0, 2
/* E7DC0 8003E8B0 00441021 */  addu       $v0, $v0, $a0
/* E7DC4 8003E8B4 14620003 */  bne        $v1, $v0, .L8003E8C4
/* E7DC8 8003E8B8 00000000 */   nop
/* E7DCC 8003E8BC 0C02A5C1 */  jal        func_800A9704
/* E7DD0 8003E8C0 00042040 */   sll       $a0, $a0, 1
.L8003E8C4:
/* E7DD4 8003E8C4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E7DD8 8003E8C8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E7DDC 8003E8CC 0203001A */  div        $zero, $s0, $v1
/* E7DE0 8003E8D0 14600002 */  bnez       $v1, .L8003E8DC
/* E7DE4 8003E8D4 00000000 */   nop
/* E7DE8 8003E8D8 0007000D */  break      7
.L8003E8DC:
/* E7DEC 8003E8DC 2401FFFF */   addiu     $at, $zero, -1
/* E7DF0 8003E8E0 14610004 */  bne        $v1, $at, .L8003E8F4
/* E7DF4 8003E8E4 3C018000 */   lui       $at, 0x8000
/* E7DF8 8003E8E8 16010002 */  bne        $s0, $at, .L8003E8F4
/* E7DFC 8003E8EC 00000000 */   nop
/* E7E00 8003E8F0 0006000D */  break      6
.L8003E8F4:
/* E7E04 8003E8F4 00001812 */   mflo      $v1
/* E7E08 8003E8F8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E7E0C 8003E8FC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E7E10 8003E900 000310C0 */  sll        $v0, $v1, 3
/* E7E14 8003E904 00431023 */  subu       $v0, $v0, $v1
/* E7E18 8003E908 0082202A */  slt        $a0, $a0, $v0
/* E7E1C 8003E90C 14800507 */  bnez       $a0, .L8003FD2C
/* E7E20 8003E910 00001021 */   addu      $v0, $zero, $zero
/* E7E24 8003E914 24020014 */  addiu      $v0, $zero, 0x14
.L8003E918:
/* E7E28 8003E918 0800FF4A */  j          .L8003FD28
/* E7E2C 8003E91C A682001C */   sh        $v0, 0x1c($s4)
.L8003E920:
/* E7E30 8003E920 0C026E5D */  jal        func_8009B974
/* E7E34 8003E924 24040001 */   addiu     $a0, $zero, 1
/* E7E38 8003E928 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E7E3C 8003E92C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E7E40 8003E930 14400015 */  bnez       $v0, .L8003E988
/* E7E44 8003E934 00000000 */   nop
/* E7E48 8003E938 0C00EAF2 */  jal        func_8003ABC8_E40D8
/* E7E4C 8003E93C 00000000 */   nop
/* E7E50 8003E940 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E7E54 8003E944 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E7E58 8003E948 2404003C */  addiu      $a0, $zero, 0x3c
/* E7E5C 8003E94C 0082001A */  div        $zero, $a0, $v0
/* E7E60 8003E950 14400002 */  bnez       $v0, .L8003E95C
/* E7E64 8003E954 00000000 */   nop
/* E7E68 8003E958 0007000D */  break      7
.L8003E95C:
/* E7E6C 8003E95C 2401FFFF */   addiu     $at, $zero, -1
/* E7E70 8003E960 14410004 */  bne        $v0, $at, .L8003E974
/* E7E74 8003E964 3C018000 */   lui       $at, 0x8000
/* E7E78 8003E968 14810002 */  bne        $a0, $at, .L8003E974
/* E7E7C 8003E96C 00000000 */   nop
/* E7E80 8003E970 0006000D */  break      6
.L8003E974:
/* E7E84 8003E974 00002012 */   mflo      $a0
/* E7E88 8003E978 00000000 */  nop
/* E7E8C 8003E97C 00000000 */  nop
/* E7E90 8003E980 0C02A5E5 */  jal        func_800A9794
/* E7E94 8003E984 00042040 */   sll       $a0, $a0, 1
.L8003E988:
/* E7E98 8003E988 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E7E9C 8003E98C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E7EA0 8003E990 2402003C */  addiu      $v0, $zero, 0x3c
/* E7EA4 8003E994 0043001A */  div        $zero, $v0, $v1
/* E7EA8 8003E998 14600002 */  bnez       $v1, .L8003E9A4
/* E7EAC 8003E99C 00000000 */   nop
/* E7EB0 8003E9A0 0007000D */  break      7
.L8003E9A4:
/* E7EB4 8003E9A4 2401FFFF */   addiu     $at, $zero, -1
/* E7EB8 8003E9A8 14610004 */  bne        $v1, $at, .L8003E9BC
/* E7EBC 8003E9AC 3C018000 */   lui       $at, 0x8000
/* E7EC0 8003E9B0 14410002 */  bne        $v0, $at, .L8003E9BC
/* E7EC4 8003E9B4 00000000 */   nop
/* E7EC8 8003E9B8 0006000D */  break      6
.L8003E9BC:
/* E7ECC 8003E9BC 00001012 */   mflo      $v0
/* E7ED0 8003E9C0 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E7ED4 8003E9C4 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E7ED8 8003E9C8 00021040 */  sll        $v0, $v0, 1
/* E7EDC 8003E9CC 0062182A */  slt        $v1, $v1, $v0
/* E7EE0 8003E9D0 146004D6 */  bnez       $v1, .L8003FD2C
/* E7EE4 8003E9D4 00001021 */   addu      $v0, $zero, $zero
/* E7EE8 8003E9D8 00002821 */  addu       $a1, $zero, $zero
/* E7EEC 8003E9DC 00003021 */  addu       $a2, $zero, $zero
/* E7EF0 8003E9E0 3C0142DC */  lui        $at, 0x42dc
/* E7EF4 8003E9E4 44810000 */  mtc1       $at, $f0
/* E7EF8 8003E9E8 3C01430C */  lui        $at, 0x430c
/* E7EFC 8003E9EC 44811000 */  mtc1       $at, $f2
/* E7F00 8003E9F0 3C01432A */  lui        $at, 0x432a
/* E7F04 8003E9F4 44812000 */  mtc1       $at, $f4
/* E7F08 8003E9F8 3C01C220 */  lui        $at, 0xc220
/* E7F0C 8003E9FC 44813000 */  mtc1       $at, $f6
/* E7F10 8003EA00 3C048007 */  lui        $a0, %hi(D_8006BF84)
/* E7F14 8003EA04 8C84BF84 */  lw         $a0, %lo(D_8006BF84)($a0)
/* E7F18 8003EA08 24020001 */  addiu      $v0, $zero, 1
/* E7F1C 8003EA0C 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E7F20 8003EA10 A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
/* E7F24 8003EA14 240200EF */  addiu      $v0, $zero, 0xef
/* E7F28 8003EA18 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E7F2C 8003EA1C AC20BFAC */  sw         $zero, %lo(D_8006BFAC)($at)
/* E7F30 8003EA20 AFA20010 */  sw         $v0, 0x10($sp)
/* E7F34 8003EA24 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E7F38 8003EA28 E420BF8C */  swc1       $f0, %lo(D_8006BF8C)($at)
/* E7F3C 8003EA2C 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E7F40 8003EA30 E422BF94 */  swc1       $f2, %lo(D_8006BF94)($at)
/* E7F44 8003EA34 3C018007 */  lui        $at, %hi(D_8006BF9C)
/* E7F48 8003EA38 E424BF9C */  swc1       $f4, %lo(D_8006BF9C)($at)
/* E7F4C 8003EA3C 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E7F50 8003EA40 E426BF90 */  swc1       $f6, %lo(D_8006BF90)($at)
/* E7F54 8003EA44 0C02939C */  jal        func_800A4E70
/* E7F58 8003EA48 2407013F */   addiu     $a3, $zero, 0x13f
/* E7F5C 8003EA4C 24020015 */  addiu      $v0, $zero, 0x15
/* E7F60 8003EA50 0800FF4A */  j          .L8003FD28
/* E7F64 8003EA54 A682001C */   sh        $v0, 0x1c($s4)
.L8003EA58:
/* E7F68 8003EA58 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E7F6C 8003EA5C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E7F70 8003EA60 14400003 */  bnez       $v0, .L8003EA70
/* E7F74 8003EA64 00000000 */   nop
/* E7F78 8003EA68 0C02A5D2 */  jal        func_800A9748
/* E7F7C 8003EA6C 24040001 */   addiu     $a0, $zero, 1
.L8003EA70:
/* E7F80 8003EA70 0C00D8C1 */  jal        func_80036304_DF814
/* E7F84 8003EA74 24040030 */   addiu     $a0, $zero, 0x30
/* E7F88 8003EA78 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E7F8C 8003EA7C C422BF8C */  lwc1       $f2, %lo(D_8006BF8C)($at)
/* E7F90 8003EA80 3C014F00 */  lui        $at, 0x4f00
/* E7F94 8003EA84 44810000 */  mtc1       $at, $f0
/* E7F98 8003EA88 00000000 */  nop
/* E7F9C 8003EA8C 4602003E */  c.le.s     $f0, $f2
/* E7FA0 8003EA90 00000000 */  nop
/* E7FA4 8003EA94 00000000 */  nop
/* E7FA8 8003EA98 45010005 */  bc1t       .L8003EAB0
/* E7FAC 8003EA9C 00408821 */   addu      $s1, $v0, $zero
/* E7FB0 8003EAA0 4600100D */  trunc.w.s  $f0, $f2
/* E7FB4 8003EAA4 44050000 */  mfc1       $a1, $f0
/* E7FB8 8003EAA8 0800FAB1 */  j          .L8003EAC4
/* E7FBC 8003EAAC 00000000 */   nop
.L8003EAB0:
/* E7FC0 8003EAB0 46001001 */  sub.s      $f0, $f2, $f0
/* E7FC4 8003EAB4 4600008D */  trunc.w.s  $f2, $f0
/* E7FC8 8003EAB8 44051000 */  mfc1       $a1, $f2
/* E7FCC 8003EABC 3C028000 */  lui        $v0, 0x8000
/* E7FD0 8003EAC0 00A22825 */  or         $a1, $a1, $v0
.L8003EAC4:
/* E7FD4 8003EAC4 8E24000C */  lw         $a0, 0xc($s1)
/* E7FD8 8003EAC8 24A50010 */  addiu      $a1, $a1, 0x10
/* E7FDC 8003EACC 00052C80 */  sll        $a1, $a1, 0x12
/* E7FE0 8003EAD0 00052C03 */  sra        $a1, $a1, 0x10
/* E7FE4 8003EAD4 0C028D89 */  jal        func_800A3624
/* E7FE8 8003EAD8 24060070 */   addiu     $a2, $zero, 0x70
/* E7FEC 8003EADC 8E24000C */  lw         $a0, 0xc($s1)
/* E7FF0 8003EAE0 0C028A40 */  jal        func_800A2900
/* E7FF4 8003EAE4 00000000 */   nop
/* E7FF8 8003EAE8 0C00D8C1 */  jal        func_80036304_DF814
/* E7FFC 8003EAEC 24040031 */   addiu     $a0, $zero, 0x31
/* E8000 8003EAF0 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E8004 8003EAF4 C422BF94 */  lwc1       $f2, %lo(D_8006BF94)($at)
/* E8008 8003EAF8 3C014F00 */  lui        $at, 0x4f00
/* E800C 8003EAFC 44810000 */  mtc1       $at, $f0
/* E8010 8003EB00 00000000 */  nop
/* E8014 8003EB04 4602003E */  c.le.s     $f0, $f2
/* E8018 8003EB08 00000000 */  nop
/* E801C 8003EB0C 00000000 */  nop
/* E8020 8003EB10 45010005 */  bc1t       .L8003EB28
/* E8024 8003EB14 00408821 */   addu      $s1, $v0, $zero
/* E8028 8003EB18 4600100D */  trunc.w.s  $f0, $f2
/* E802C 8003EB1C 44050000 */  mfc1       $a1, $f0
/* E8030 8003EB20 0800FACF */  j          .L8003EB3C
/* E8034 8003EB24 00000000 */   nop
.L8003EB28:
/* E8038 8003EB28 46001001 */  sub.s      $f0, $f2, $f0
/* E803C 8003EB2C 4600008D */  trunc.w.s  $f2, $f0
/* E8040 8003EB30 44051000 */  mfc1       $a1, $f2
/* E8044 8003EB34 3C028000 */  lui        $v0, 0x8000
/* E8048 8003EB38 00A22825 */  or         $a1, $a1, $v0
.L8003EB3C:
/* E804C 8003EB3C 8E24000C */  lw         $a0, 0xc($s1)
/* E8050 8003EB40 24A50010 */  addiu      $a1, $a1, 0x10
/* E8054 8003EB44 00052C80 */  sll        $a1, $a1, 0x12
/* E8058 8003EB48 00052C03 */  sra        $a1, $a1, 0x10
/* E805C 8003EB4C 0C028D89 */  jal        func_800A3624
/* E8060 8003EB50 240600F4 */   addiu     $a2, $zero, 0xf4
/* E8064 8003EB54 8E24000C */  lw         $a0, 0xc($s1)
/* E8068 8003EB58 0C028A40 */  jal        func_800A2900
/* E806C 8003EB5C 00000000 */   nop
/* E8070 8003EB60 0C00D8C1 */  jal        func_80036304_DF814
/* E8074 8003EB64 24040032 */   addiu     $a0, $zero, 0x32
/* E8078 8003EB68 3C018007 */  lui        $at, %hi(D_8006BF9C)
/* E807C 8003EB6C C422BF9C */  lwc1       $f2, %lo(D_8006BF9C)($at)
/* E8080 8003EB70 3C014F00 */  lui        $at, 0x4f00
/* E8084 8003EB74 44810000 */  mtc1       $at, $f0
/* E8088 8003EB78 00000000 */  nop
/* E808C 8003EB7C 4602003E */  c.le.s     $f0, $f2
/* E8090 8003EB80 00000000 */  nop
/* E8094 8003EB84 00000000 */  nop
/* E8098 8003EB88 45010005 */  bc1t       .L8003EBA0
/* E809C 8003EB8C 00408821 */   addu      $s1, $v0, $zero
/* E80A0 8003EB90 4600100D */  trunc.w.s  $f0, $f2
/* E80A4 8003EB94 44050000 */  mfc1       $a1, $f0
/* E80A8 8003EB98 0800FAED */  j          .L8003EBB4
/* E80AC 8003EB9C 00000000 */   nop
.L8003EBA0:
/* E80B0 8003EBA0 46001001 */  sub.s      $f0, $f2, $f0
/* E80B4 8003EBA4 4600008D */  trunc.w.s  $f2, $f0
/* E80B8 8003EBA8 44051000 */  mfc1       $a1, $f2
/* E80BC 8003EBAC 3C028000 */  lui        $v0, 0x8000
/* E80C0 8003EBB0 00A22825 */  or         $a1, $a1, $v0
.L8003EBB4:
/* E80C4 8003EBB4 8E24000C */  lw         $a0, 0xc($s1)
/* E80C8 8003EBB8 24A50010 */  addiu      $a1, $a1, 0x10
/* E80CC 8003EBBC 00052C80 */  sll        $a1, $a1, 0x12
/* E80D0 8003EBC0 00052C03 */  sra        $a1, $a1, 0x10
/* E80D4 8003EBC4 0C028D89 */  jal        func_800A3624
/* E80D8 8003EBC8 24060174 */   addiu     $a2, $zero, 0x174
/* E80DC 8003EBCC 8E24000C */  lw         $a0, 0xc($s1)
/* E80E0 8003EBD0 0C028A40 */  jal        func_800A2900
/* E80E4 8003EBD4 00000000 */   nop
/* E80E8 8003EBD8 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E80EC 8003EBDC C422BF8C */  lwc1       $f2, %lo(D_8006BF8C)($at)
/* E80F0 8003EBE0 3C014140 */  lui        $at, 0x4140
/* E80F4 8003EBE4 44812000 */  mtc1       $at, $f4
/* E80F8 8003EBE8 00000000 */  nop
/* E80FC 8003EBEC 4602203C */  c.lt.s     $f4, $f2
/* E8100 8003EBF0 00000000 */  nop
/* E8104 8003EBF4 45000007 */  bc1f       .L8003EC14
/* E8108 8003EBF8 00000000 */   nop
/* E810C 8003EBFC 3C013F80 */  lui        $at, 0x3f80
/* E8110 8003EC00 44810000 */  mtc1       $at, $f0
/* E8114 8003EC04 00000000 */  nop
/* E8118 8003EC08 46001001 */  sub.s      $f0, $f2, $f0
/* E811C 8003EC0C 3C018007 */  lui        $at, %hi(D_8006BF8C)
/* E8120 8003EC10 E420BF8C */  swc1       $f0, %lo(D_8006BF8C)($at)
.L8003EC14:
/* E8124 8003EC14 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E8128 8003EC18 C422BF94 */  lwc1       $f2, %lo(D_8006BF94)($at)
/* E812C 8003EC1C 4602203C */  c.lt.s     $f4, $f2
/* E8130 8003EC20 00000000 */  nop
/* E8134 8003EC24 45000007 */  bc1f       .L8003EC44
/* E8138 8003EC28 00000000 */   nop
/* E813C 8003EC2C 3C013F80 */  lui        $at, 0x3f80
/* E8140 8003EC30 44810000 */  mtc1       $at, $f0
/* E8144 8003EC34 00000000 */  nop
/* E8148 8003EC38 46001001 */  sub.s      $f0, $f2, $f0
/* E814C 8003EC3C 3C018007 */  lui        $at, %hi(D_8006BF94)
/* E8150 8003EC40 E420BF94 */  swc1       $f0, %lo(D_8006BF94)($at)
.L8003EC44:
/* E8154 8003EC44 3C018007 */  lui        $at, %hi(D_8006BF9C)
/* E8158 8003EC48 C422BF9C */  lwc1       $f2, %lo(D_8006BF9C)($at)
/* E815C 8003EC4C 4602203C */  c.lt.s     $f4, $f2
/* E8160 8003EC50 00000000 */  nop
/* E8164 8003EC54 45000007 */  bc1f       .L8003EC74
/* E8168 8003EC58 00000000 */   nop
/* E816C 8003EC5C 3C013F80 */  lui        $at, 0x3f80
/* E8170 8003EC60 44810000 */  mtc1       $at, $f0
/* E8174 8003EC64 00000000 */  nop
/* E8178 8003EC68 46001001 */  sub.s      $f0, $f2, $f0
/* E817C 8003EC6C 3C018007 */  lui        $at, %hi(D_8006BF9C)
/* E8180 8003EC70 E420BF9C */  swc1       $f0, %lo(D_8006BF9C)($at)
.L8003EC74:
/* E8184 8003EC74 0C00D8C1 */  jal        func_80036304_DF814
/* E8188 8003EC78 24040033 */   addiu     $a0, $zero, 0x33
/* E818C 8003EC7C 8C44000C */  lw         $a0, 0xc($v0)
/* E8190 8003EC80 0C028A40 */  jal        func_800A2900
/* E8194 8003EC84 00009021 */   addu      $s2, $zero, $zero
/* E8198 8003EC88 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E819C 8003EC8C C420BF90 */  lwc1       $f0, %lo(D_8006BF90)($at)
/* E81A0 8003EC90 3C014F00 */  lui        $at, 0x4f00
/* E81A4 8003EC94 4481A000 */  mtc1       $at, $f20
/* E81A8 8003EC98 3C108000 */  lui        $s0, 0x8000
/* E81AC 8003EC9C 4600008D */  trunc.w.s  $f2, $f0
/* E81B0 8003ECA0 44021000 */  mfc1       $v0, $f2
/* E81B4 8003ECA4 00000000 */  nop
/* E81B8 8003ECA8 00021400 */  sll        $v0, $v0, 0x10
/* E81BC 8003ECAC 00021403 */  sra        $v0, $v0, 0x10
/* E81C0 8003ECB0 44820000 */  mtc1       $v0, $f0
/* E81C4 8003ECB4 00000000 */  nop
/* E81C8 8003ECB8 46800020 */  cvt.s.w    $f0, $f0
/* E81CC 8003ECBC 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E81D0 8003ECC0 E420BF98 */  swc1       $f0, %lo(D_8006BF98)($at)
.L8003ECC4:
/* E81D4 8003ECC4 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E81D8 8003ECC8 C422BF98 */  lwc1       $f2, %lo(D_8006BF98)($at)
/* E81DC 8003ECCC 3C01C220 */  lui        $at, 0xc220
/* E81E0 8003ECD0 44810000 */  mtc1       $at, $f0
/* E81E4 8003ECD4 00000000 */  nop
/* E81E8 8003ECD8 4602003E */  c.le.s     $f0, $f2
/* E81EC 8003ECDC 00000000 */  nop
/* E81F0 8003ECE0 45000041 */  bc1f       .L8003EDE8
/* E81F4 8003ECE4 00000000 */   nop
/* E81F8 8003ECE8 3C014334 */  lui        $at, 0x4334
/* E81FC 8003ECEC 44810000 */  mtc1       $at, $f0
/* E8200 8003ECF0 00000000 */  nop
/* E8204 8003ECF4 4600103E */  c.le.s     $f2, $f0
/* E8208 8003ECF8 00000000 */  nop
/* E820C 8003ECFC 00000000 */  nop
/* E8210 8003ED00 45000039 */  bc1f       .L8003EDE8
/* E8214 8003ED04 26440034 */   addiu     $a0, $s2, 0x34
/* E8218 8003ED08 0C00D8C1 */  jal        func_80036304_DF814
/* E821C 8003ED0C 3084FFFF */   andi      $a0, $a0, 0xffff
/* E8220 8003ED10 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E8224 8003ED14 C422BF98 */  lwc1       $f2, %lo(D_8006BF98)($at)
/* E8228 8003ED18 3C014080 */  lui        $at, 0x4080
/* E822C 8003ED1C 44810000 */  mtc1       $at, $f0
/* E8230 8003ED20 00000000 */  nop
/* E8234 8003ED24 46001082 */  mul.s      $f2, $f2, $f0
/* E8238 8003ED28 4602A03E */  c.le.s     $f20, $f2
/* E823C 8003ED2C 00000000 */  nop
/* E8240 8003ED30 00000000 */  nop
/* E8244 8003ED34 45010005 */  bc1t       .L8003ED4C
/* E8248 8003ED38 00408821 */   addu      $s1, $v0, $zero
/* E824C 8003ED3C 4600100D */  trunc.w.s  $f0, $f2
/* E8250 8003ED40 44060000 */  mfc1       $a2, $f0
/* E8254 8003ED44 0800FB58 */  j          .L8003ED60
/* E8258 8003ED48 00000000 */   nop
.L8003ED4C:
/* E825C 8003ED4C 46141001 */  sub.s      $f0, $f2, $f20
/* E8260 8003ED50 4600008D */  trunc.w.s  $f2, $f0
/* E8264 8003ED54 44061000 */  mfc1       $a2, $f2
/* E8268 8003ED58 00000000 */  nop
/* E826C 8003ED5C 00D03025 */  or         $a2, $a2, $s0
.L8003ED60:
/* E8270 8003ED60 8E24000C */  lw         $a0, 0xc($s1)
/* E8274 8003ED64 00002821 */  addu       $a1, $zero, $zero
/* E8278 8003ED68 00063400 */  sll        $a2, $a2, 0x10
/* E827C 8003ED6C 0C028D89 */  jal        func_800A3624
/* E8280 8003ED70 00063403 */   sra       $a2, $a2, 0x10
/* E8284 8003ED74 3242FFFF */  andi       $v0, $s2, 0xffff
/* E8288 8003ED78 1440000D */  bnez       $v0, .L8003EDB0
/* E828C 8003ED7C 2442FFFF */   addiu     $v0, $v0, -1
/* E8290 8003ED80 240200FF */  addiu      $v0, $zero, 0xff
/* E8294 8003ED84 AFA20010 */  sw         $v0, 0x10($sp)
/* E8298 8003ED88 8E24000C */  lw         $a0, 0xc($s1)
/* E829C 8003ED8C 240500FF */  addiu      $a1, $zero, 0xff
/* E82A0 8003ED90 240600FF */  addiu      $a2, $zero, 0xff
/* E82A4 8003ED94 0C028E41 */  jal        func_800A3904
/* E82A8 8003ED98 240700FF */   addiu     $a3, $zero, 0xff
/* E82AC 8003ED9C 8E23000C */  lw         $v1, 0xc($s1)
/* E82B0 8003EDA0 9462001E */  lhu        $v0, 0x1e($v1)
/* E82B4 8003EDA4 3042FFBF */  andi       $v0, $v0, 0xffbf
/* E82B8 8003EDA8 0800FB75 */  j          .L8003EDD4
/* E82BC 8003EDAC A462001E */   sh        $v0, 0x1e($v1)
.L8003EDB0:
/* E82C0 8003EDB0 000210C0 */  sll        $v0, $v0, 3
/* E82C4 8003EDB4 00021027 */  nor        $v0, $zero, $v0
/* E82C8 8003EDB8 304200FF */  andi       $v0, $v0, 0xff
/* E82CC 8003EDBC AFA20010 */  sw         $v0, 0x10($sp)
/* E82D0 8003EDC0 8E24000C */  lw         $a0, 0xc($s1)
/* E82D4 8003EDC4 240500FF */  addiu      $a1, $zero, 0xff
/* E82D8 8003EDC8 240600FF */  addiu      $a2, $zero, 0xff
/* E82DC 8003EDCC 0C028E41 */  jal        func_800A3904
/* E82E0 8003EDD0 240700FF */   addiu     $a3, $zero, 0xff
.L8003EDD4:
/* E82E4 8003EDD4 8E24000C */  lw         $a0, 0xc($s1)
/* E82E8 8003EDD8 0C028A40 */  jal        func_800A2900
/* E82EC 8003EDDC 00000000 */   nop
/* E82F0 8003EDE0 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E82F4 8003EDE4 C422BF98 */  lwc1       $f2, %lo(D_8006BF98)($at)
.L8003EDE8:
/* E82F8 8003EDE8 3C014100 */  lui        $at, 0x4100
/* E82FC 8003EDEC 44810000 */  mtc1       $at, $f0
/* E8300 8003EDF0 00000000 */  nop
/* E8304 8003EDF4 46001081 */  sub.s      $f2, $f2, $f0
/* E8308 8003EDF8 26520001 */  addiu      $s2, $s2, 1
/* E830C 8003EDFC 3242FFFF */  andi       $v0, $s2, 0xffff
/* E8310 8003EE00 2C420021 */  sltiu      $v0, $v0, 0x21
/* E8314 8003EE04 3C018007 */  lui        $at, %hi(D_8006BF98)
/* E8318 8003EE08 E422BF98 */  swc1       $f2, %lo(D_8006BF98)($at)
/* E831C 8003EE0C 1440FFAD */  bnez       $v0, .L8003ECC4
/* E8320 8003EE10 2402003C */   addiu     $v0, $zero, 0x3c
/* E8324 8003EE14 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E8328 8003EE18 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E832C 8003EE1C 0043001A */  div        $zero, $v0, $v1
/* E8330 8003EE20 14600002 */  bnez       $v1, .L8003EE2C
/* E8334 8003EE24 00000000 */   nop
/* E8338 8003EE28 0007000D */  break      7
.L8003EE2C:
/* E833C 8003EE2C 2401FFFF */   addiu     $at, $zero, -1
/* E8340 8003EE30 14610004 */  bne        $v1, $at, .L8003EE44
/* E8344 8003EE34 3C018000 */   lui       $at, 0x8000
/* E8348 8003EE38 14410002 */  bne        $v0, $at, .L8003EE44
/* E834C 8003EE3C 00000000 */   nop
/* E8350 8003EE40 0006000D */  break      6
.L8003EE44:
/* E8354 8003EE44 00001012 */   mflo      $v0
/* E8358 8003EE48 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E835C 8003EE4C C420BF90 */  lwc1       $f0, %lo(D_8006BF90)($at)
/* E8360 8003EE50 3C014000 */  lui        $at, 0x4000
/* E8364 8003EE54 44811000 */  mtc1       $at, $f2
/* E8368 8003EE58 00000000 */  nop
/* E836C 8003EE5C 46020000 */  add.s      $f0, $f0, $f2
/* E8370 8003EE60 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E8374 8003EE64 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E8378 8003EE68 3C018007 */  lui        $at, %hi(D_8006BF90)
/* E837C 8003EE6C E420BF90 */  swc1       $f0, %lo(D_8006BF90)($at)
/* E8380 8003EE70 000210C0 */  sll        $v0, $v0, 3
/* E8384 8003EE74 146203AD */  bne        $v1, $v0, .L8003FD2C
/* E8388 8003EE78 00001021 */   addu      $v0, $zero, $zero
/* E838C 8003EE7C 24020016 */  addiu      $v0, $zero, 0x16
/* E8390 8003EE80 0800FF4A */  j          .L8003FD28
/* E8394 8003EE84 A682001C */   sh        $v0, 0x1c($s4)
.L8003EE88:
/* E8398 8003EE88 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E839C 8003EE8C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E83A0 8003EE90 14400003 */  bnez       $v0, .L8003EEA0
/* E83A4 8003EE94 00000000 */   nop
/* E83A8 8003EE98 0C02A5D2 */  jal        func_800A9748
/* E83AC 8003EE9C 24040001 */   addiu     $a0, $zero, 1
.L8003EEA0:
/* E83B0 8003EEA0 0C00D8C1 */  jal        func_80036304_DF814
/* E83B4 8003EEA4 24040030 */   addiu     $a0, $zero, 0x30
/* E83B8 8003EEA8 00408821 */  addu       $s1, $v0, $zero
/* E83BC 8003EEAC 8E24000C */  lw         $a0, 0xc($s1)
/* E83C0 8003EEB0 24050070 */  addiu      $a1, $zero, 0x70
/* E83C4 8003EEB4 0C028D89 */  jal        func_800A3624
/* E83C8 8003EEB8 24060070 */   addiu     $a2, $zero, 0x70
/* E83CC 8003EEBC 8E24000C */  lw         $a0, 0xc($s1)
/* E83D0 8003EEC0 0C028A40 */  jal        func_800A2900
/* E83D4 8003EEC4 00000000 */   nop
/* E83D8 8003EEC8 0C00D8C1 */  jal        func_80036304_DF814
/* E83DC 8003EECC 24040031 */   addiu     $a0, $zero, 0x31
/* E83E0 8003EED0 00408821 */  addu       $s1, $v0, $zero
/* E83E4 8003EED4 8E24000C */  lw         $a0, 0xc($s1)
/* E83E8 8003EED8 24050070 */  addiu      $a1, $zero, 0x70
/* E83EC 8003EEDC 0C028D89 */  jal        func_800A3624
/* E83F0 8003EEE0 240600F4 */   addiu     $a2, $zero, 0xf4
/* E83F4 8003EEE4 8E24000C */  lw         $a0, 0xc($s1)
/* E83F8 8003EEE8 0C028A40 */  jal        func_800A2900
/* E83FC 8003EEEC 00000000 */   nop
/* E8400 8003EEF0 0C00D8C1 */  jal        func_80036304_DF814
/* E8404 8003EEF4 24040032 */   addiu     $a0, $zero, 0x32
/* E8408 8003EEF8 00408821 */  addu       $s1, $v0, $zero
/* E840C 8003EEFC 8E24000C */  lw         $a0, 0xc($s1)
/* E8410 8003EF00 24050070 */  addiu      $a1, $zero, 0x70
/* E8414 8003EF04 0C028D89 */  jal        func_800A3624
/* E8418 8003EF08 24060174 */   addiu     $a2, $zero, 0x174
/* E841C 8003EF0C 8E24000C */  lw         $a0, 0xc($s1)
/* E8420 8003EF10 0C028A40 */  jal        func_800A2900
/* E8424 8003EF14 00000000 */   nop
/* E8428 8003EF18 0C00D8C1 */  jal        func_80036304_DF814
/* E842C 8003EF1C 24040033 */   addiu     $a0, $zero, 0x33
/* E8430 8003EF20 8C44000C */  lw         $a0, 0xc($v0)
/* E8434 8003EF24 0C028A40 */  jal        func_800A2900
/* E8438 8003EF28 00000000 */   nop
/* E843C 8003EF2C 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E8440 8003EF30 8442BFA4 */  lh         $v0, %lo(D_8006BFA4)($v0)
/* E8444 8003EF34 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E8448 8003EF38 C422BFAC */  lwc1       $f2, %lo(D_8006BFAC)($at)
/* E844C 8003EF3C 44820000 */  mtc1       $v0, $f0
/* E8450 8003EF40 00000000 */  nop
/* E8454 8003EF44 46800020 */  cvt.s.w    $f0, $f0
/* E8458 8003EF48 46001080 */  add.s      $f2, $f2, $f0
/* E845C 8003EF4C 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E8460 8003EF50 E422BFAC */  swc1       $f2, %lo(D_8006BFAC)($at)
/* E8464 8003EF54 1840000D */  blez       $v0, .L8003EF8C
/* E8468 8003EF58 00401821 */   addu      $v1, $v0, $zero
/* E846C 8003EF5C 3C014240 */  lui        $at, 0x4240
/* E8470 8003EF60 44810000 */  mtc1       $at, $f0
/* E8474 8003EF64 00000000 */  nop
/* E8478 8003EF68 4602003C */  c.lt.s     $f0, $f2
/* E847C 8003EF6C 00000000 */  nop
/* E8480 8003EF70 45000006 */  bc1f       .L8003EF8C
/* E8484 8003EF74 00000000 */   nop
/* E8488 8003EF78 3C0142C0 */  lui        $at, 0x42c0
/* E848C 8003EF7C 44810000 */  mtc1       $at, $f0
/* E8490 8003EF80 00000000 */  nop
/* E8494 8003EF84 0800FBF0 */  j          .L8003EFC0
/* E8498 8003EF88 46020001 */   sub.s     $f0, $f0, $f2
.L8003EF8C:
/* E849C 8003EF8C 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E84A0 8003EF90 8442BFA4 */  lh         $v0, %lo(D_8006BFA4)($v0)
/* E84A4 8003EF94 0441000F */  bgez       $v0, .L8003EFD4
/* E84A8 8003EF98 00401821 */   addu      $v1, $v0, $zero
/* E84AC 8003EF9C 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E84B0 8003EFA0 C422BFAC */  lwc1       $f2, %lo(D_8006BFAC)($at)
/* E84B4 8003EFA4 44800000 */  mtc1       $zero, $f0
/* E84B8 8003EFA8 00000000 */  nop
/* E84BC 8003EFAC 4600103C */  c.lt.s     $f2, $f0
/* E84C0 8003EFB0 00000000 */  nop
/* E84C4 8003EFB4 45000007 */  bc1f       .L8003EFD4
/* E84C8 8003EFB8 00000000 */   nop
/* E84CC 8003EFBC 46020001 */  sub.s      $f0, $f0, $f2
.L8003EFC0:
/* E84D0 8003EFC0 00031023 */  negu       $v0, $v1
/* E84D4 8003EFC4 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E84D8 8003EFC8 A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
/* E84DC 8003EFCC 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E84E0 8003EFD0 E420BFAC */  swc1       $f0, %lo(D_8006BFAC)($at)
.L8003EFD4:
/* E84E4 8003EFD4 0C00D8C1 */  jal        func_80036304_DF814
/* E84E8 8003EFD8 24040018 */   addiu     $a0, $zero, 0x18
/* E84EC 8003EFDC 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E84F0 8003EFE0 C422BFAC */  lwc1       $f2, %lo(D_8006BFAC)($at)
/* E84F4 8003EFE4 3C014080 */  lui        $at, 0x4080
/* E84F8 8003EFE8 44810000 */  mtc1       $at, $f0
/* E84FC 8003EFEC 00000000 */  nop
/* E8500 8003EFF0 46001082 */  mul.s      $f2, $f2, $f0
/* E8504 8003EFF4 3C014F00 */  lui        $at, 0x4f00
/* E8508 8003EFF8 44810000 */  mtc1       $at, $f0
/* E850C 8003EFFC 00000000 */  nop
/* E8510 8003F000 4602003E */  c.le.s     $f0, $f2
/* E8514 8003F004 00000000 */  nop
/* E8518 8003F008 00000000 */  nop
/* E851C 8003F00C 45010006 */  bc1t       .L8003F028
/* E8520 8003F010 00408821 */   addu      $s1, $v0, $zero
/* E8524 8003F014 4600100D */  trunc.w.s  $f0, $f2
/* E8528 8003F018 44030000 */  mfc1       $v1, $f0
/* E852C 8003F01C 00000000 */  nop
/* E8530 8003F020 0800FC10 */  j          .L8003F040
/* E8534 8003F024 306200FF */   andi      $v0, $v1, 0xff
.L8003F028:
/* E8538 8003F028 46001001 */  sub.s      $f0, $f2, $f0
/* E853C 8003F02C 4600008D */  trunc.w.s  $f2, $f0
/* E8540 8003F030 44031000 */  mfc1       $v1, $f2
/* E8544 8003F034 3C028000 */  lui        $v0, 0x8000
/* E8548 8003F038 00621825 */  or         $v1, $v1, $v0
/* E854C 8003F03C 306200FF */  andi       $v0, $v1, 0xff
.L8003F040:
/* E8550 8003F040 AFA20010 */  sw         $v0, 0x10($sp)
/* E8554 8003F044 8E24000C */  lw         $a0, 0xc($s1)
/* E8558 8003F048 240500FF */  addiu      $a1, $zero, 0xff
/* E855C 8003F04C 240600FF */  addiu      $a2, $zero, 0xff
/* E8560 8003F050 0C028E41 */  jal        func_800A3904
/* E8564 8003F054 240700FF */   addiu     $a3, $zero, 0xff
/* E8568 8003F058 8E24000C */  lw         $a0, 0xc($s1)
/* E856C 8003F05C 0C028A40 */  jal        func_800A2900
/* E8570 8003F060 2410003C */   addiu     $s0, $zero, 0x3c
/* E8574 8003F064 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E8578 8003F068 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E857C 8003F06C 0203001A */  div        $zero, $s0, $v1
/* E8580 8003F070 14600002 */  bnez       $v1, .L8003F07C
/* E8584 8003F074 00000000 */   nop
/* E8588 8003F078 0007000D */  break      7
.L8003F07C:
/* E858C 8003F07C 2401FFFF */   addiu     $at, $zero, -1
/* E8590 8003F080 14610004 */  bne        $v1, $at, .L8003F094
/* E8594 8003F084 3C018000 */   lui       $at, 0x8000
/* E8598 8003F088 16010002 */  bne        $s0, $at, .L8003F094
/* E859C 8003F08C 00000000 */   nop
/* E85A0 8003F090 0006000D */  break      6
.L8003F094:
/* E85A4 8003F094 00001812 */   mflo      $v1
/* E85A8 8003F098 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E85AC 8003F09C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E85B0 8003F0A0 00031100 */  sll        $v0, $v1, 4
/* E85B4 8003F0A4 00431023 */  subu       $v0, $v0, $v1
/* E85B8 8003F0A8 1482001A */  bne        $a0, $v0, .L8003F114
/* E85BC 8003F0AC 2404FFFE */   addiu     $a0, $zero, -2
/* E85C0 8003F0B0 3C068017 */  lui        $a2, %hi(D_8016D168)
/* E85C4 8003F0B4 8CC6D168 */  lw         $a2, %lo(D_8016D168)($a2)
/* E85C8 8003F0B8 2405FFFF */  addiu      $a1, $zero, -1
/* E85CC 8003F0BC 00003821 */  addu       $a3, $zero, $zero
/* E85D0 8003F0C0 AFA00010 */  sw         $zero, 0x10($sp)
/* E85D4 8003F0C4 00063040 */  sll        $a2, $a2, 1
/* E85D8 8003F0C8 0C026C9A */  jal        func_8009B268
/* E85DC 8003F0CC 30C6FFFE */   andi      $a2, $a2, 0xfffe
/* E85E0 8003F0D0 3C048015 */  lui        $a0, %hi(D_80149F90)
/* E85E4 8003F0D4 8C849F90 */  lw         $a0, %lo(D_80149F90)($a0)
/* E85E8 8003F0D8 0204001A */  div        $zero, $s0, $a0
/* E85EC 8003F0DC 14800002 */  bnez       $a0, .L8003F0E8
/* E85F0 8003F0E0 00000000 */   nop
/* E85F4 8003F0E4 0007000D */  break      7
.L8003F0E8:
/* E85F8 8003F0E8 2401FFFF */   addiu     $at, $zero, -1
/* E85FC 8003F0EC 14810004 */  bne        $a0, $at, .L8003F100
/* E8600 8003F0F0 3C018000 */   lui       $at, 0x8000
/* E8604 8003F0F4 16010002 */  bne        $s0, $at, .L8003F100
/* E8608 8003F0F8 00000000 */   nop
/* E860C 8003F0FC 0006000D */  break      6
.L8003F100:
/* E8610 8003F100 00002012 */   mflo      $a0
/* E8614 8003F104 00000000 */  nop
/* E8618 8003F108 00000000 */  nop
/* E861C 8003F10C 0C02A5C1 */  jal        func_800A9704
/* E8620 8003F110 00042040 */   sll       $a0, $a0, 1
.L8003F114:
/* E8624 8003F114 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E8628 8003F118 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E862C 8003F11C 0203001A */  div        $zero, $s0, $v1
/* E8630 8003F120 14600002 */  bnez       $v1, .L8003F12C
/* E8634 8003F124 00000000 */   nop
/* E8638 8003F128 0007000D */  break      7
.L8003F12C:
/* E863C 8003F12C 2401FFFF */   addiu     $at, $zero, -1
/* E8640 8003F130 14610004 */  bne        $v1, $at, .L8003F144
/* E8644 8003F134 3C018000 */   lui       $at, 0x8000
/* E8648 8003F138 16010002 */  bne        $s0, $at, .L8003F144
/* E864C 8003F13C 00000000 */   nop
/* E8650 8003F140 0006000D */  break      6
.L8003F144:
/* E8654 8003F144 00001812 */   mflo      $v1
/* E8658 8003F148 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E865C 8003F14C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E8660 8003F150 00031100 */  sll        $v0, $v1, 4
/* E8664 8003F154 00431021 */  addu       $v0, $v0, $v1
/* E8668 8003F158 148202F4 */  bne        $a0, $v0, .L8003FD2C
/* E866C 8003F15C 00001021 */   addu      $v0, $zero, $zero
/* E8670 8003F160 0800FF32 */  j          .L8003FCC8
/* E8674 8003F164 3402FFFF */   ori       $v0, $zero, 0xffff
.L8003F168:
/* E8678 8003F168 24030011 */  addiu      $v1, $zero, 0x11
/* E867C 8003F16C 3C018007 */  lui        $at, %hi(D_80068ED0)
/* E8680 8003F170 A0238ED0 */  sb         $v1, %lo(D_80068ED0)($at)
/* E8684 8003F174 3403FFFF */  ori        $v1, $zero, 0xffff
/* E8688 8003F178 0800FF4B */  j          .L8003FD2C
/* E868C 8003F17C A683001C */   sh        $v1, 0x1c($s4)
.L8003F180:
/* E8690 8003F180 3C028007 */  lui        $v0, %hi(D_8006C564)
/* E8694 8003F184 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* E8698 8003F188 14400003 */  bnez       $v0, .L8003F198
/* E869C 8003F18C 00000000 */   nop
/* E86A0 8003F190 0C02A5AF */  jal        func_800A96BC
/* E86A4 8003F194 24040001 */   addiu     $a0, $zero, 1
.L8003F198:
/* E86A8 8003F198 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E86AC 8003F19C C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E86B0 8003F1A0 3C0141F8 */  lui        $at, 0x41f8
/* E86B4 8003F1A4 44812000 */  mtc1       $at, $f4
/* E86B8 8003F1A8 00000000 */  nop
/* E86BC 8003F1AC 4604103C */  c.lt.s     $f2, $f4
/* E86C0 8003F1B0 00000000 */  nop
/* E86C4 8003F1B4 45000009 */  bc1f       .L8003F1DC
/* E86C8 8003F1B8 00000000 */   nop
/* E86CC 8003F1BC 3C013F80 */  lui        $at, 0x3f80
/* E86D0 8003F1C0 44810000 */  mtc1       $at, $f0
/* E86D4 8003F1C4 00000000 */  nop
/* E86D8 8003F1C8 46001000 */  add.s      $f0, $f2, $f0
/* E86DC 8003F1CC 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E86E0 8003F1D0 E420BFB0 */  swc1       $f0, %lo(D_8006BFB0)($at)
/* E86E4 8003F1D4 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E86E8 8003F1D8 C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
.L8003F1DC:
/* E86EC 8003F1DC 3C014120 */  lui        $at, 0x4120
/* E86F0 8003F1E0 44810000 */  mtc1       $at, $f0
/* E86F4 8003F1E4 00000000 */  nop
/* E86F8 8003F1E8 4602003C */  c.lt.s     $f0, $f2
/* E86FC 8003F1EC 00000000 */  nop
/* E8700 8003F1F0 4500000D */  bc1f       .L8003F228
/* E8704 8003F1F4 00000000 */   nop
/* E8708 8003F1F8 3C018007 */  lui        $at, %hi(D_8006BFB4)
/* E870C 8003F1FC C422BFB4 */  lwc1       $f2, %lo(D_8006BFB4)($at)
/* E8710 8003F200 4604103C */  c.lt.s     $f2, $f4
/* E8714 8003F204 00000000 */  nop
/* E8718 8003F208 45000007 */  bc1f       .L8003F228
/* E871C 8003F20C 00000000 */   nop
/* E8720 8003F210 3C013F80 */  lui        $at, 0x3f80
/* E8724 8003F214 44810000 */  mtc1       $at, $f0
/* E8728 8003F218 00000000 */  nop
/* E872C 8003F21C 46001000 */  add.s      $f0, $f2, $f0
/* E8730 8003F220 3C018007 */  lui        $at, %hi(D_8006BFB4)
/* E8734 8003F224 E420BFB4 */  swc1       $f0, %lo(D_8006BFB4)($at)
.L8003F228:
/* E8738 8003F228 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E873C 8003F22C C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E8740 8003F230 3C0141A0 */  lui        $at, 0x41a0
/* E8744 8003F234 44810000 */  mtc1       $at, $f0
/* E8748 8003F238 00000000 */  nop
/* E874C 8003F23C 4602003C */  c.lt.s     $f0, $f2
/* E8750 8003F240 00000000 */  nop
/* E8754 8003F244 45000012 */  bc1f       .L8003F290
/* E8758 8003F248 00000000 */   nop
/* E875C 8003F24C 3C018007 */  lui        $at, %hi(D_8006BFB8)
/* E8760 8003F250 C422BFB8 */  lwc1       $f2, %lo(D_8006BFB8)($at)
/* E8764 8003F254 3C0141F8 */  lui        $at, 0x41f8
/* E8768 8003F258 44810000 */  mtc1       $at, $f0
/* E876C 8003F25C 00000000 */  nop
/* E8770 8003F260 4600103C */  c.lt.s     $f2, $f0
/* E8774 8003F264 00000000 */  nop
/* E8778 8003F268 45000007 */  bc1f       .L8003F288
/* E877C 8003F26C 00000000 */   nop
/* E8780 8003F270 3C013F80 */  lui        $at, 0x3f80
/* E8784 8003F274 44810000 */  mtc1       $at, $f0
/* E8788 8003F278 00000000 */  nop
/* E878C 8003F27C 46001000 */  add.s      $f0, $f2, $f0
/* E8790 8003F280 3C018007 */  lui        $at, %hi(D_8006BFB8)
/* E8794 8003F284 E420BFB8 */  swc1       $f0, %lo(D_8006BFB8)($at)
.L8003F288:
/* E8798 8003F288 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E879C 8003F28C C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
.L8003F290:
/* E87A0 8003F290 3C0141C8 */  lui        $at, 0x41c8
/* E87A4 8003F294 44810000 */  mtc1       $at, $f0
/* E87A8 8003F298 00000000 */  nop
/* E87AC 8003F29C 4602003C */  c.lt.s     $f0, $f2
/* E87B0 8003F2A0 00000000 */  nop
/* E87B4 8003F2A4 45000010 */  bc1f       .L8003F2E8
/* E87B8 8003F2A8 00000000 */   nop
/* E87BC 8003F2AC 3C018007 */  lui        $at, %hi(D_8006BFBC)
/* E87C0 8003F2B0 C422BFBC */  lwc1       $f2, %lo(D_8006BFBC)($at)
/* E87C4 8003F2B4 3C0141F8 */  lui        $at, 0x41f8
/* E87C8 8003F2B8 44810000 */  mtc1       $at, $f0
/* E87CC 8003F2BC 00000000 */  nop
/* E87D0 8003F2C0 4600103C */  c.lt.s     $f2, $f0
/* E87D4 8003F2C4 00000000 */  nop
/* E87D8 8003F2C8 45000007 */  bc1f       .L8003F2E8
/* E87DC 8003F2CC 00000000 */   nop
/* E87E0 8003F2D0 3C013F80 */  lui        $at, 0x3f80
/* E87E4 8003F2D4 44810000 */  mtc1       $at, $f0
/* E87E8 8003F2D8 00000000 */  nop
/* E87EC 8003F2DC 46001000 */  add.s      $f0, $f2, $f0
/* E87F0 8003F2E0 3C018007 */  lui        $at, %hi(D_8006BFBC)
/* E87F4 8003F2E4 E420BFBC */  swc1       $f0, %lo(D_8006BFBC)($at)
.L8003F2E8:
/* E87F8 8003F2E8 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E87FC 8003F2EC C422BFB0 */  lwc1       $f2, %lo(D_8006BFB0)($at)
/* E8800 8003F2F0 3C0141F0 */  lui        $at, 0x41f0
/* E8804 8003F2F4 44810000 */  mtc1       $at, $f0
/* E8808 8003F2F8 00000000 */  nop
/* E880C 8003F2FC 4602003C */  c.lt.s     $f0, $f2
/* E8810 8003F300 00000000 */  nop
/* E8814 8003F304 00000000 */  nop
/* E8818 8003F308 45000012 */  bc1f       .L8003F354
/* E881C 8003F30C 24120022 */   addiu     $s2, $zero, 0x22
/* E8820 8003F310 3C018007 */  lui        $at, %hi(D_8006BFC0)
/* E8824 8003F314 C422BFC0 */  lwc1       $f2, %lo(D_8006BFC0)($at)
/* E8828 8003F318 3C0141F8 */  lui        $at, 0x41f8
/* E882C 8003F31C 44810000 */  mtc1       $at, $f0
/* E8830 8003F320 00000000 */  nop
/* E8834 8003F324 4600103C */  c.lt.s     $f2, $f0
/* E8838 8003F328 00000000 */  nop
/* E883C 8003F32C 00000000 */  nop
/* E8840 8003F330 45000009 */  bc1f       .L8003F358
/* E8844 8003F334 241500FF */   addiu     $s5, $zero, 0xff
/* E8848 8003F338 3C013F80 */  lui        $at, 0x3f80
/* E884C 8003F33C 44810000 */  mtc1       $at, $f0
/* E8850 8003F340 00000000 */  nop
/* E8854 8003F344 46001000 */  add.s      $f0, $f2, $f0
/* E8858 8003F348 3C018007 */  lui        $at, %hi(D_8006BFC0)
/* E885C 8003F34C E420BFC0 */  swc1       $f0, %lo(D_8006BFC0)($at)
/* E8860 8003F350 24120022 */  addiu      $s2, $zero, 0x22
.L8003F354:
/* E8864 8003F354 241500FF */  addiu      $s5, $zero, 0xff
.L8003F358:
/* E8868 8003F358 3C014100 */  lui        $at, 0x4100
/* E886C 8003F35C 4481B000 */  mtc1       $at, $f22
/* E8870 8003F360 3C014F00 */  lui        $at, 0x4f00
/* E8874 8003F364 4481A000 */  mtc1       $at, $f20
/* E8878 8003F368 3C138000 */  lui        $s3, 0x8000
/* E887C 8003F36C 3250FFFF */  andi       $s0, $s2, 0xffff
.L8003F370:
/* E8880 8003F370 0C00D8C1 */  jal        func_80036304_DF814
/* E8884 8003F374 02002021 */   addu      $a0, $s0, $zero
/* E8888 8003F378 00408821 */  addu       $s1, $v0, $zero
/* E888C 8003F37C 12200020 */  beqz       $s1, .L8003F400
/* E8890 8003F380 2E020028 */   sltiu     $v0, $s0, 0x28
/* E8894 8003F384 14400003 */  bnez       $v0, .L8003F394
/* E8898 8003F388 00000000 */   nop
/* E889C 8003F38C 0800FCF8 */  j          .L8003F3E0
/* E88A0 8003F390 AFB50010 */   sw        $s5, 0x10($sp)
.L8003F394:
/* E88A4 8003F394 3C018007 */  lui        $at, %hi(D_8006BFB0)
/* E88A8 8003F398 C420BFB0 */  lwc1       $f0, %lo(D_8006BFB0)($at)
/* E88AC 8003F39C 46160082 */  mul.s      $f2, $f0, $f22
/* E88B0 8003F3A0 4602A03E */  c.le.s     $f20, $f2
/* E88B4 8003F3A4 00000000 */  nop
/* E88B8 8003F3A8 00000000 */  nop
/* E88BC 8003F3AC 45030006 */  bc1tl      .L8003F3C8
/* E88C0 8003F3B0 46141001 */   sub.s     $f0, $f2, $f20
/* E88C4 8003F3B4 4600100D */  trunc.w.s  $f0, $f2
/* E88C8 8003F3B8 44030000 */  mfc1       $v1, $f0
/* E88CC 8003F3BC 00000000 */  nop
/* E88D0 8003F3C0 0800FCF7 */  j          .L8003F3DC
/* E88D4 8003F3C4 306200FF */   andi      $v0, $v1, 0xff
.L8003F3C8:
/* E88D8 8003F3C8 4600008D */  trunc.w.s  $f2, $f0
/* E88DC 8003F3CC 44031000 */  mfc1       $v1, $f2
/* E88E0 8003F3D0 00000000 */  nop
/* E88E4 8003F3D4 00731825 */  or         $v1, $v1, $s3
/* E88E8 8003F3D8 306200FF */  andi       $v0, $v1, 0xff
.L8003F3DC:
/* E88EC 8003F3DC AFA20010 */  sw         $v0, 0x10($sp)
.L8003F3E0:
/* E88F0 8003F3E0 8E24000C */  lw         $a0, 0xc($s1)
/* E88F4 8003F3E4 240500FF */  addiu      $a1, $zero, 0xff
/* E88F8 8003F3E8 240600FF */  addiu      $a2, $zero, 0xff
/* E88FC 8003F3EC 0C028E41 */  jal        func_800A3904
/* E8900 8003F3F0 240700FF */   addiu     $a3, $zero, 0xff
/* E8904 8003F3F4 8E24000C */  lw         $a0, 0xc($s1)
/* E8908 8003F3F8 0C028A40 */  jal        func_800A2900
/* E890C 8003F3FC 00000000 */   nop
.L8003F400:
/* E8910 8003F400 26520001 */  addiu      $s2, $s2, 1
/* E8914 8003F404 3242FFFF */  andi       $v0, $s2, 0xffff
/* E8918 8003F408 2C420030 */  sltiu      $v0, $v0, 0x30
/* E891C 8003F40C 1440FFD8 */  bnez       $v0, .L8003F370
/* E8920 8003F410 3250FFFF */   andi      $s0, $s2, 0xffff
/* E8924 8003F414 0C00D8C1 */  jal        func_80036304_DF814
/* E8928 8003F418 2404001D */   addiu     $a0, $zero, 0x1d
/* E892C 8003F41C 3C018007 */  lui        $at, %hi(D_8006BFB4)
/* E8930 8003F420 C422BFB4 */  lwc1       $f2, %lo(D_8006BFB4)($at)
/* E8934 8003F424 3C014100 */  lui        $at, 0x4100
/* E8938 8003F428 44810000 */  mtc1       $at, $f0
/* E893C 8003F42C 00000000 */  nop
/* E8940 8003F430 46001082 */  mul.s      $f2, $f2, $f0
/* E8944 8003F434 3C014F00 */  lui        $at, 0x4f00
/* E8948 8003F438 44810000 */  mtc1       $at, $f0
/* E894C 8003F43C 00000000 */  nop
/* E8950 8003F440 4602003E */  c.le.s     $f0, $f2
/* E8954 8003F444 00000000 */  nop
/* E8958 8003F448 00000000 */  nop
/* E895C 8003F44C 45010006 */  bc1t       .L8003F468
/* E8960 8003F450 00408821 */   addu      $s1, $v0, $zero
/* E8964 8003F454 4600100D */  trunc.w.s  $f0, $f2
/* E8968 8003F458 44030000 */  mfc1       $v1, $f0
/* E896C 8003F45C 00000000 */  nop
/* E8970 8003F460 0800FD20 */  j          .L8003F480
/* E8974 8003F464 306200FF */   andi      $v0, $v1, 0xff
.L8003F468:
/* E8978 8003F468 46001001 */  sub.s      $f0, $f2, $f0
/* E897C 8003F46C 4600008D */  trunc.w.s  $f2, $f0
/* E8980 8003F470 44031000 */  mfc1       $v1, $f2
/* E8984 8003F474 3C028000 */  lui        $v0, 0x8000
/* E8988 8003F478 00621825 */  or         $v1, $v1, $v0
/* E898C 8003F47C 306200FF */  andi       $v0, $v1, 0xff
.L8003F480:
/* E8990 8003F480 AFA20010 */  sw         $v0, 0x10($sp)
/* E8994 8003F484 8E24000C */  lw         $a0, 0xc($s1)
/* E8998 8003F488 240500FF */  addiu      $a1, $zero, 0xff
/* E899C 8003F48C 240600FF */  addiu      $a2, $zero, 0xff
/* E89A0 8003F490 0C028E41 */  jal        func_800A3904
/* E89A4 8003F494 240700FF */   addiu     $a3, $zero, 0xff
/* E89A8 8003F498 8E24000C */  lw         $a0, 0xc($s1)
/* E89AC 8003F49C 0C028A40 */  jal        func_800A2900
/* E89B0 8003F4A0 00000000 */   nop
/* E89B4 8003F4A4 0C00D8C1 */  jal        func_80036304_DF814
/* E89B8 8003F4A8 2404001E */   addiu     $a0, $zero, 0x1e
/* E89BC 8003F4AC 3C018007 */  lui        $at, %hi(D_8006BFB8)
/* E89C0 8003F4B0 C422BFB8 */  lwc1       $f2, %lo(D_8006BFB8)($at)
/* E89C4 8003F4B4 3C014100 */  lui        $at, 0x4100
/* E89C8 8003F4B8 44810000 */  mtc1       $at, $f0
/* E89CC 8003F4BC 00000000 */  nop
/* E89D0 8003F4C0 46001082 */  mul.s      $f2, $f2, $f0
/* E89D4 8003F4C4 3C014F00 */  lui        $at, 0x4f00
/* E89D8 8003F4C8 44810000 */  mtc1       $at, $f0
/* E89DC 8003F4CC 00000000 */  nop
/* E89E0 8003F4D0 4602003E */  c.le.s     $f0, $f2
/* E89E4 8003F4D4 00000000 */  nop
/* E89E8 8003F4D8 00000000 */  nop
/* E89EC 8003F4DC 45010006 */  bc1t       .L8003F4F8
/* E89F0 8003F4E0 00408821 */   addu      $s1, $v0, $zero
/* E89F4 8003F4E4 4600100D */  trunc.w.s  $f0, $f2
/* E89F8 8003F4E8 44030000 */  mfc1       $v1, $f0
/* E89FC 8003F4EC 00000000 */  nop
/* E8A00 8003F4F0 0800FD44 */  j          .L8003F510
/* E8A04 8003F4F4 306200FF */   andi      $v0, $v1, 0xff
.L8003F4F8:
/* E8A08 8003F4F8 46001001 */  sub.s      $f0, $f2, $f0
/* E8A0C 8003F4FC 4600008D */  trunc.w.s  $f2, $f0
/* E8A10 8003F500 44031000 */  mfc1       $v1, $f2
/* E8A14 8003F504 3C028000 */  lui        $v0, 0x8000
/* E8A18 8003F508 00621825 */  or         $v1, $v1, $v0
/* E8A1C 8003F50C 306200FF */  andi       $v0, $v1, 0xff
.L8003F510:
/* E8A20 8003F510 AFA20010 */  sw         $v0, 0x10($sp)
/* E8A24 8003F514 8E24000C */  lw         $a0, 0xc($s1)
/* E8A28 8003F518 240500FF */  addiu      $a1, $zero, 0xff
/* E8A2C 8003F51C 240600FF */  addiu      $a2, $zero, 0xff
/* E8A30 8003F520 0C028E41 */  jal        func_800A3904
/* E8A34 8003F524 240700FF */   addiu     $a3, $zero, 0xff
/* E8A38 8003F528 8E24000C */  lw         $a0, 0xc($s1)
/* E8A3C 8003F52C 0C028A40 */  jal        func_800A2900
/* E8A40 8003F530 00000000 */   nop
/* E8A44 8003F534 0C00D8C1 */  jal        func_80036304_DF814
/* E8A48 8003F538 2404001F */   addiu     $a0, $zero, 0x1f
/* E8A4C 8003F53C 3C018007 */  lui        $at, %hi(D_8006BFBC)
/* E8A50 8003F540 C422BFBC */  lwc1       $f2, %lo(D_8006BFBC)($at)
/* E8A54 8003F544 3C014100 */  lui        $at, 0x4100
/* E8A58 8003F548 44810000 */  mtc1       $at, $f0
/* E8A5C 8003F54C 00000000 */  nop
/* E8A60 8003F550 46001082 */  mul.s      $f2, $f2, $f0
/* E8A64 8003F554 3C014F00 */  lui        $at, 0x4f00
/* E8A68 8003F558 44810000 */  mtc1       $at, $f0
/* E8A6C 8003F55C 00000000 */  nop
/* E8A70 8003F560 4602003E */  c.le.s     $f0, $f2
/* E8A74 8003F564 00000000 */  nop
/* E8A78 8003F568 00000000 */  nop
/* E8A7C 8003F56C 45010006 */  bc1t       .L8003F588
/* E8A80 8003F570 00408821 */   addu      $s1, $v0, $zero
/* E8A84 8003F574 4600100D */  trunc.w.s  $f0, $f2
/* E8A88 8003F578 44030000 */  mfc1       $v1, $f0
/* E8A8C 8003F57C 00000000 */  nop
/* E8A90 8003F580 0800FD68 */  j          .L8003F5A0
/* E8A94 8003F584 306200FF */   andi      $v0, $v1, 0xff
.L8003F588:
/* E8A98 8003F588 46001001 */  sub.s      $f0, $f2, $f0
/* E8A9C 8003F58C 4600008D */  trunc.w.s  $f2, $f0
/* E8AA0 8003F590 44031000 */  mfc1       $v1, $f2
/* E8AA4 8003F594 3C028000 */  lui        $v0, 0x8000
/* E8AA8 8003F598 00621825 */  or         $v1, $v1, $v0
/* E8AAC 8003F59C 306200FF */  andi       $v0, $v1, 0xff
.L8003F5A0:
/* E8AB0 8003F5A0 AFA20010 */  sw         $v0, 0x10($sp)
/* E8AB4 8003F5A4 8E24000C */  lw         $a0, 0xc($s1)
/* E8AB8 8003F5A8 240500FF */  addiu      $a1, $zero, 0xff
/* E8ABC 8003F5AC 240600FF */  addiu      $a2, $zero, 0xff
/* E8AC0 8003F5B0 0C028E41 */  jal        func_800A3904
/* E8AC4 8003F5B4 240700FF */   addiu     $a3, $zero, 0xff
/* E8AC8 8003F5B8 8E24000C */  lw         $a0, 0xc($s1)
/* E8ACC 8003F5BC 0C028A40 */  jal        func_800A2900
/* E8AD0 8003F5C0 00000000 */   nop
/* E8AD4 8003F5C4 0C00D8C1 */  jal        func_80036304_DF814
/* E8AD8 8003F5C8 24040020 */   addiu     $a0, $zero, 0x20
/* E8ADC 8003F5CC 3C018007 */  lui        $at, %hi(D_8006BFC0)
/* E8AE0 8003F5D0 C422BFC0 */  lwc1       $f2, %lo(D_8006BFC0)($at)
/* E8AE4 8003F5D4 3C014100 */  lui        $at, 0x4100
/* E8AE8 8003F5D8 44810000 */  mtc1       $at, $f0
/* E8AEC 8003F5DC 00000000 */  nop
/* E8AF0 8003F5E0 46001082 */  mul.s      $f2, $f2, $f0
/* E8AF4 8003F5E4 3C014F00 */  lui        $at, 0x4f00
/* E8AF8 8003F5E8 44810000 */  mtc1       $at, $f0
/* E8AFC 8003F5EC 00000000 */  nop
/* E8B00 8003F5F0 4602003E */  c.le.s     $f0, $f2
/* E8B04 8003F5F4 00000000 */  nop
/* E8B08 8003F5F8 00000000 */  nop
/* E8B0C 8003F5FC 45010006 */  bc1t       .L8003F618
/* E8B10 8003F600 00408821 */   addu      $s1, $v0, $zero
/* E8B14 8003F604 4600100D */  trunc.w.s  $f0, $f2
/* E8B18 8003F608 44030000 */  mfc1       $v1, $f0
/* E8B1C 8003F60C 00000000 */  nop
/* E8B20 8003F610 0800FD8C */  j          .L8003F630
/* E8B24 8003F614 306200FF */   andi      $v0, $v1, 0xff
.L8003F618:
/* E8B28 8003F618 46001001 */  sub.s      $f0, $f2, $f0
/* E8B2C 8003F61C 4600008D */  trunc.w.s  $f2, $f0
/* E8B30 8003F620 44031000 */  mfc1       $v1, $f2
/* E8B34 8003F624 3C028000 */  lui        $v0, 0x8000
/* E8B38 8003F628 00621825 */  or         $v1, $v1, $v0
/* E8B3C 8003F62C 306200FF */  andi       $v0, $v1, 0xff
.L8003F630:
/* E8B40 8003F630 AFA20010 */  sw         $v0, 0x10($sp)
/* E8B44 8003F634 8E24000C */  lw         $a0, 0xc($s1)
/* E8B48 8003F638 240500FF */  addiu      $a1, $zero, 0xff
/* E8B4C 8003F63C 240600FF */  addiu      $a2, $zero, 0xff
/* E8B50 8003F640 0C028E41 */  jal        func_800A3904
/* E8B54 8003F644 240700FF */   addiu     $a3, $zero, 0xff
/* E8B58 8003F648 8E24000C */  lw         $a0, 0xc($s1)
/* E8B5C 8003F64C 0C028A40 */  jal        func_800A2900
/* E8B60 8003F650 00000000 */   nop
/* E8B64 8003F654 3C018007 */  lui        $at, %hi(D_8006BFC0)
/* E8B68 8003F658 C422BFC0 */  lwc1       $f2, %lo(D_8006BFC0)($at)
/* E8B6C 8003F65C 3C0141F8 */  lui        $at, 0x41f8
/* E8B70 8003F660 44810000 */  mtc1       $at, $f0
/* E8B74 8003F664 00000000 */  nop
/* E8B78 8003F668 46001032 */  c.eq.s     $f2, $f0
/* E8B7C 8003F66C 00000000 */  nop
/* E8B80 8003F670 00000000 */  nop
/* E8B84 8003F674 450001AC */  bc1f       .L8003FD28
/* E8B88 8003F678 24020019 */   addiu     $v0, $zero, 0x19
/* E8B8C 8003F67C 0800FF4A */  j          .L8003FD28
/* E8B90 8003F680 A682001C */   sh        $v0, 0x1c($s4)
.L8003F684:
/* E8B94 8003F684 3C048007 */  lui        $a0, %hi(D_8006C564)
/* E8B98 8003F688 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* E8B9C 8003F68C 34428889 */  ori        $v0, $v0, 0x8889
/* E8BA0 8003F690 00820018 */  mult       $a0, $v0
/* E8BA4 8003F694 2412001D */  addiu      $s2, $zero, 0x1d
/* E8BA8 8003F698 24150021 */  addiu      $s5, $zero, 0x21
/* E8BAC 8003F69C 000417C3 */  sra        $v0, $a0, 0x1f
/* E8BB0 8003F6A0 00004010 */  mfhi       $t0
/* E8BB4 8003F6A4 01041821 */  addu       $v1, $t0, $a0
/* E8BB8 8003F6A8 00031903 */  sra        $v1, $v1, 4
/* E8BBC 8003F6AC 00621823 */  subu       $v1, $v1, $v0
/* E8BC0 8003F6B0 00031100 */  sll        $v0, $v1, 4
/* E8BC4 8003F6B4 00431023 */  subu       $v0, $v0, $v1
/* E8BC8 8003F6B8 00021040 */  sll        $v0, $v0, 1
/* E8BCC 8003F6BC 00822023 */  subu       $a0, $a0, $v0
/* E8BD0 8003F6C0 2884000F */  slti       $a0, $a0, 0xf
/* E8BD4 8003F6C4 00041200 */  sll        $v0, $a0, 8
/* E8BD8 8003F6C8 00441023 */  subu       $v0, $v0, $a0
/* E8BDC 8003F6CC 305300FF */  andi       $s3, $v0, 0xff
/* E8BE0 8003F6D0 3250FFFF */  andi       $s0, $s2, 0xffff
.L8003F6D4:
/* E8BE4 8003F6D4 0C00D8C1 */  jal        func_80036304_DF814
/* E8BE8 8003F6D8 02002021 */   addu      $a0, $s0, $zero
/* E8BEC 8003F6DC 16150007 */  bne        $s0, $s5, .L8003F6FC
/* E8BF0 8003F6E0 00408821 */   addu      $s1, $v0, $zero
/* E8BF4 8003F6E4 AFB30010 */  sw         $s3, 0x10($sp)
/* E8BF8 8003F6E8 8E24000C */  lw         $a0, 0xc($s1)
/* E8BFC 8003F6EC 240500FF */  addiu      $a1, $zero, 0xff
/* E8C00 8003F6F0 240600FF */  addiu      $a2, $zero, 0xff
/* E8C04 8003F6F4 0C028E41 */  jal        func_800A3904
/* E8C08 8003F6F8 240700FF */   addiu     $a3, $zero, 0xff
.L8003F6FC:
/* E8C0C 8003F6FC 12200004 */  beqz       $s1, .L8003F710
/* E8C10 8003F700 26520001 */   addiu     $s2, $s2, 1
/* E8C14 8003F704 8E24000C */  lw         $a0, 0xc($s1)
/* E8C18 8003F708 0C028A40 */  jal        func_800A2900
/* E8C1C 8003F70C 00000000 */   nop
.L8003F710:
/* E8C20 8003F710 3242FFFF */  andi       $v0, $s2, 0xffff
/* E8C24 8003F714 2C420030 */  sltiu      $v0, $v0, 0x30
/* E8C28 8003F718 1440FFEE */  bnez       $v0, .L8003F6D4
/* E8C2C 8003F71C 3250FFFF */   andi      $s0, $s2, 0xffff
/* E8C30 8003F720 3C038007 */  lui        $v1, %hi(D_8006BF80)
/* E8C34 8003F724 9063BF80 */  lbu        $v1, %lo(D_8006BF80)($v1)
/* E8C38 8003F728 3C028007 */  lui        $v0, %hi(D_8006BF81)
/* E8C3C 8003F72C 9042BF81 */  lbu        $v0, %lo(D_8006BF81)($v0)
/* E8C40 8003F730 1062001C */  beq        $v1, $v0, .L8003F7A4
/* E8C44 8003F734 00000000 */   nop
/* E8C48 8003F738 0C026DD5 */  jal        func_8009B754
/* E8C4C 8003F73C 2404001C */   addiu     $a0, $zero, 0x1c
/* E8C50 8003F740 3C038007 */  lui        $v1, %hi(D_8006BF80)
/* E8C54 8003F744 9063BF80 */  lbu        $v1, %lo(D_8006BF80)($v1)
/* E8C58 8003F748 2462FFFF */  addiu      $v0, $v1, -1
/* E8C5C 8003F74C 2C420002 */  sltiu      $v0, $v0, 2
/* E8C60 8003F750 10400003 */  beqz       $v0, .L8003F760
/* E8C64 8003F754 24020001 */   addiu     $v0, $zero, 1
/* E8C68 8003F758 3C018007 */  lui        $at, %hi(D_8006C55A)
/* E8C6C 8003F75C A422C55A */  sh         $v0, %lo(D_8006C55A)($at)
.L8003F760:
/* E8C70 8003F760 14600008 */  bnez       $v1, .L8003F784
/* E8C74 8003F764 00002821 */   addu      $a1, $zero, $zero
/* E8C78 8003F768 3C018007 */  lui        $at, %hi(D_8006C55A)
/* E8C7C 8003F76C A420C55A */  sh         $zero, %lo(D_8006C55A)($at)
/* E8C80 8003F770 3C048006 */  lui        $a0, %hi(D_80063AB0_10CFC0)
/* E8C84 8003F774 24843AB0 */  addiu      $a0, $a0, %lo(D_80063AB0_10CFC0)
/* E8C88 8003F778 2406012C */  addiu      $a2, $zero, 0x12c
/* E8C8C 8003F77C 0C025D06 */  jal        func_80097418
/* E8C90 8003F780 00003821 */   addu      $a3, $zero, $zero
.L8003F784:
/* E8C94 8003F784 3C028007 */  lui        $v0, %hi(D_8006BF80)
/* E8C98 8003F788 9042BF80 */  lbu        $v0, %lo(D_8006BF80)($v0)
/* E8C9C 8003F78C 3C0141F8 */  lui        $at, 0x41f8
/* E8CA0 8003F790 44810000 */  mtc1       $at, $f0
/* E8CA4 8003F794 3C018007 */  lui        $at, %hi(D_8006BF81)
/* E8CA8 8003F798 A022BF81 */  sb         $v0, %lo(D_8006BF81)($at)
/* E8CAC 8003F79C 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E8CB0 8003F7A0 E420BFAC */  swc1       $f0, %lo(D_8006BFAC)($at)
.L8003F7A4:
/* E8CB4 8003F7A4 3C028007 */  lui        $v0, %hi(D_8006BFC8)
/* E8CB8 8003F7A8 9442BFC8 */  lhu        $v0, %lo(D_8006BFC8)($v0)
/* E8CBC 8003F7AC 1440011B */  bnez       $v0, .L8003FC1C
/* E8CC0 8003F7B0 00000000 */   nop
/* E8CC4 8003F7B4 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E8CC8 8003F7B8 8442BFA4 */  lh         $v0, %lo(D_8006BFA4)($v0)
/* E8CCC 8003F7BC 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E8CD0 8003F7C0 C422BFAC */  lwc1       $f2, %lo(D_8006BFAC)($at)
/* E8CD4 8003F7C4 44820000 */  mtc1       $v0, $f0
/* E8CD8 8003F7C8 00000000 */  nop
/* E8CDC 8003F7CC 46800020 */  cvt.s.w    $f0, $f0
/* E8CE0 8003F7D0 46001080 */  add.s      $f2, $f2, $f0
/* E8CE4 8003F7D4 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E8CE8 8003F7D8 E422BFAC */  swc1       $f2, %lo(D_8006BFAC)($at)
/* E8CEC 8003F7DC 1840000D */  blez       $v0, .L8003F814
/* E8CF0 8003F7E0 00401821 */   addu      $v1, $v0, $zero
/* E8CF4 8003F7E4 3C0141F8 */  lui        $at, 0x41f8
/* E8CF8 8003F7E8 44810000 */  mtc1       $at, $f0
/* E8CFC 8003F7EC 00000000 */  nop
/* E8D00 8003F7F0 4602003C */  c.lt.s     $f0, $f2
/* E8D04 8003F7F4 00000000 */  nop
/* E8D08 8003F7F8 45000006 */  bc1f       .L8003F814
/* E8D0C 8003F7FC 00000000 */   nop
/* E8D10 8003F800 3C014278 */  lui        $at, 0x4278
/* E8D14 8003F804 44810000 */  mtc1       $at, $f0
/* E8D18 8003F808 00000000 */  nop
/* E8D1C 8003F80C 0800FE12 */  j          .L8003F848
/* E8D20 8003F810 46020001 */   sub.s     $f0, $f0, $f2
.L8003F814:
/* E8D24 8003F814 3C028007 */  lui        $v0, %hi(D_8006BFA4)
/* E8D28 8003F818 8442BFA4 */  lh         $v0, %lo(D_8006BFA4)($v0)
/* E8D2C 8003F81C 0441000F */  bgez       $v0, .L8003F85C
/* E8D30 8003F820 00401821 */   addu      $v1, $v0, $zero
/* E8D34 8003F824 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E8D38 8003F828 C422BFAC */  lwc1       $f2, %lo(D_8006BFAC)($at)
/* E8D3C 8003F82C 44800000 */  mtc1       $zero, $f0
/* E8D40 8003F830 00000000 */  nop
/* E8D44 8003F834 4600103C */  c.lt.s     $f2, $f0
/* E8D48 8003F838 00000000 */  nop
/* E8D4C 8003F83C 45000007 */  bc1f       .L8003F85C
/* E8D50 8003F840 00000000 */   nop
/* E8D54 8003F844 46020001 */  sub.s      $f0, $f0, $f2
.L8003F848:
/* E8D58 8003F848 00031023 */  negu       $v0, $v1
/* E8D5C 8003F84C 3C018007 */  lui        $at, %hi(D_8006BFA4)
/* E8D60 8003F850 A422BFA4 */  sh         $v0, %lo(D_8006BFA4)($at)
/* E8D64 8003F854 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E8D68 8003F858 E420BFAC */  swc1       $f0, %lo(D_8006BFAC)($at)
.L8003F85C:
/* E8D6C 8003F85C 3C048007 */  lui        $a0, %hi(D_8006BF80)
/* E8D70 8003F860 9084BF80 */  lbu        $a0, %lo(D_8006BF80)($a0)
/* E8D74 8003F864 0C00D8C1 */  jal        func_80036304_DF814
/* E8D78 8003F868 2484001A */   addiu     $a0, $a0, 0x1a
/* E8D7C 8003F86C 3C018007 */  lui        $at, %hi(D_8006BFAC)
/* E8D80 8003F870 C420BFAC */  lwc1       $f0, %lo(D_8006BFAC)($at)
/* E8D84 8003F874 3C014080 */  lui        $at, 0x4080
/* E8D88 8003F878 44811000 */  mtc1       $at, $f2
/* E8D8C 8003F87C 00000000 */  nop
/* E8D90 8003F880 46020002 */  mul.s      $f0, $f0, $f2
/* E8D94 8003F884 3C014300 */  lui        $at, 0x4300
/* E8D98 8003F888 44811000 */  mtc1       $at, $f2
/* E8D9C 8003F88C 00000000 */  nop
/* E8DA0 8003F890 46020080 */  add.s      $f2, $f0, $f2
/* E8DA4 8003F894 3C014F00 */  lui        $at, 0x4f00
/* E8DA8 8003F898 44810000 */  mtc1       $at, $f0
/* E8DAC 8003F89C 00000000 */  nop
/* E8DB0 8003F8A0 4602003E */  c.le.s     $f0, $f2
/* E8DB4 8003F8A4 00000000 */  nop
/* E8DB8 8003F8A8 00000000 */  nop
/* E8DBC 8003F8AC 45010006 */  bc1t       .L8003F8C8
/* E8DC0 8003F8B0 00408821 */   addu      $s1, $v0, $zero
/* E8DC4 8003F8B4 4600100D */  trunc.w.s  $f0, $f2
/* E8DC8 8003F8B8 44030000 */  mfc1       $v1, $f0
/* E8DCC 8003F8BC 00000000 */  nop
/* E8DD0 8003F8C0 0800FE38 */  j          .L8003F8E0
/* E8DD4 8003F8C4 306200FF */   andi      $v0, $v1, 0xff
.L8003F8C8:
/* E8DD8 8003F8C8 46001001 */  sub.s      $f0, $f2, $f0
/* E8DDC 8003F8CC 4600008D */  trunc.w.s  $f2, $f0
/* E8DE0 8003F8D0 44031000 */  mfc1       $v1, $f2
/* E8DE4 8003F8D4 3C028000 */  lui        $v0, 0x8000
/* E8DE8 8003F8D8 00621825 */  or         $v1, $v1, $v0
/* E8DEC 8003F8DC 306200FF */  andi       $v0, $v1, 0xff
.L8003F8E0:
/* E8DF0 8003F8E0 AFA20010 */  sw         $v0, 0x10($sp)
/* E8DF4 8003F8E4 8E24000C */  lw         $a0, 0xc($s1)
/* E8DF8 8003F8E8 240500FF */  addiu      $a1, $zero, 0xff
/* E8DFC 8003F8EC 240600FF */  addiu      $a2, $zero, 0xff
/* E8E00 8003F8F0 0C028E41 */  jal        func_800A3904
/* E8E04 8003F8F4 240700FF */   addiu     $a3, $zero, 0xff
/* E8E08 8003F8F8 8E24000C */  lw         $a0, 0xc($s1)
/* E8E0C 8003F8FC 0C028A40 */  jal        func_800A2900
/* E8E10 8003F900 00000000 */   nop
/* E8E14 8003F904 3C038007 */  lui        $v1, %hi(D_8006BF80)
/* E8E18 8003F908 9063BF80 */  lbu        $v1, %lo(D_8006BF80)($v1)
/* E8E1C 8003F90C 24020001 */  addiu      $v0, $zero, 1
/* E8E20 8003F910 10620030 */  beq        $v1, $v0, .L8003F9D4
/* E8E24 8003F914 28620002 */   slti      $v0, $v1, 2
/* E8E28 8003F918 50400005 */  beql       $v0, $zero, .L8003F930
/* E8E2C 8003F91C 24020002 */   addiu     $v0, $zero, 2
/* E8E30 8003F920 10600007 */  beqz       $v1, .L8003F940
/* E8E34 8003F924 00000000 */   nop
/* E8E38 8003F928 0800FEC7 */  j          .L8003FB1C
/* E8E3C 8003F92C 00000000 */   nop
.L8003F930:
/* E8E40 8003F930 1062005A */  beq        $v1, $v0, .L8003FA9C
/* E8E44 8003F934 00000000 */   nop
/* E8E48 8003F938 0800FEC7 */  j          .L8003FB1C
/* E8E4C 8003F93C 00000000 */   nop
.L8003F940:
/* E8E50 8003F940 3C038015 */  lui        $v1, %hi(D_8014CF92)
/* E8E54 8003F944 9463CF92 */  lhu        $v1, %lo(D_8014CF92)($v1)
/* E8E58 8003F948 30620C00 */  andi       $v0, $v1, 0xc00
/* E8E5C 8003F94C 10400003 */  beqz       $v0, .L8003F95C
/* E8E60 8003F950 24020001 */   addiu     $v0, $zero, 1
/* E8E64 8003F954 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8E68 8003F958 A022BF80 */  sb         $v0, %lo(D_8006BF80)($at)
.L8003F95C:
/* E8E6C 8003F95C 30620300 */  andi       $v0, $v1, 0x300
/* E8E70 8003F960 10400003 */  beqz       $v0, .L8003F970
/* E8E74 8003F964 24020002 */   addiu     $v0, $zero, 2
/* E8E78 8003F968 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8E7C 8003F96C A022BF80 */  sb         $v0, %lo(D_8006BF80)($at)
.L8003F970:
/* E8E80 8003F970 3C018015 */  lui        $at, %hi(D_8014CFA0)
/* E8E84 8003F974 C422CFA0 */  lwc1       $f2, %lo(D_8014CFA0)($at)
/* E8E88 8003F978 3C014220 */  lui        $at, 0x4220
/* E8E8C 8003F97C 44810000 */  mtc1       $at, $f0
/* E8E90 8003F980 00000000 */  nop
/* E8E94 8003F984 4602003C */  c.lt.s     $f0, $f2
/* E8E98 8003F988 00000000 */  nop
/* E8E9C 8003F98C 00000000 */  nop
/* E8EA0 8003F990 45000003 */  bc1f       .L8003F9A0
/* E8EA4 8003F994 24020001 */   addiu     $v0, $zero, 1
/* E8EA8 8003F998 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8EAC 8003F99C A022BF80 */  sb         $v0, %lo(D_8006BF80)($at)
.L8003F9A0:
/* E8EB0 8003F9A0 3C018015 */  lui        $at, %hi(D_8014CF9C)
/* E8EB4 8003F9A4 C422CF9C */  lwc1       $f2, %lo(D_8014CF9C)($at)
/* E8EB8 8003F9A8 3C01C220 */  lui        $at, 0xc220
/* E8EBC 8003F9AC 44810000 */  mtc1       $at, $f0
/* E8EC0 8003F9B0 00000000 */  nop
/* E8EC4 8003F9B4 4600103C */  c.lt.s     $f2, $f0
/* E8EC8 8003F9B8 00000000 */  nop
/* E8ECC 8003F9BC 00000000 */  nop
/* E8ED0 8003F9C0 45000056 */  bc1f       .L8003FB1C
/* E8ED4 8003F9C4 24020002 */   addiu     $v0, $zero, 2
/* E8ED8 8003F9C8 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8EDC 8003F9CC 0800FEC7 */  j          .L8003FB1C
/* E8EE0 8003F9D0 A022BF80 */   sb        $v0, %lo(D_8006BF80)($at)
.L8003F9D4:
/* E8EE4 8003F9D4 3C038015 */  lui        $v1, %hi(D_8014CF92)
/* E8EE8 8003F9D8 9463CF92 */  lhu        $v1, %lo(D_8014CF92)($v1)
/* E8EEC 8003F9DC 30620600 */  andi       $v0, $v1, 0x600
/* E8EF0 8003F9E0 10400003 */  beqz       $v0, .L8003F9F0
/* E8EF4 8003F9E4 24020002 */   addiu     $v0, $zero, 2
/* E8EF8 8003F9E8 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8EFC 8003F9EC A022BF80 */  sb         $v0, %lo(D_8006BF80)($at)
.L8003F9F0:
/* E8F00 8003F9F0 30620900 */  andi       $v0, $v1, 0x900
/* E8F04 8003F9F4 10400003 */  beqz       $v0, .L8003FA04
/* E8F08 8003F9F8 00000000 */   nop
/* E8F0C 8003F9FC 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8F10 8003FA00 A020BF80 */  sb         $zero, %lo(D_8006BF80)($at)
.L8003FA04:
/* E8F14 8003FA04 3C018015 */  lui        $at, %hi(D_8014CF9C)
/* E8F18 8003FA08 C422CF9C */  lwc1       $f2, %lo(D_8014CF9C)($at)
/* E8F1C 8003FA0C 3C01C220 */  lui        $at, 0xc220
/* E8F20 8003FA10 44810000 */  mtc1       $at, $f0
/* E8F24 8003FA14 00000000 */  nop
/* E8F28 8003FA18 4600103C */  c.lt.s     $f2, $f0
/* E8F2C 8003FA1C 00000000 */  nop
/* E8F30 8003FA20 4500000F */  bc1f       .L8003FA60
/* E8F34 8003FA24 00000000 */   nop
/* E8F38 8003FA28 3C018015 */  lui        $at, %hi(D_8014CFA0)
/* E8F3C 8003FA2C C422CFA0 */  lwc1       $f2, %lo(D_8014CFA0)($at)
/* E8F40 8003FA30 3C014120 */  lui        $at, 0x4120
/* E8F44 8003FA34 44810000 */  mtc1       $at, $f0
/* E8F48 8003FA38 00000000 */  nop
/* E8F4C 8003FA3C 4600103C */  c.lt.s     $f2, $f0
/* E8F50 8003FA40 00000000 */  nop
/* E8F54 8003FA44 00000000 */  nop
/* E8F58 8003FA48 45000003 */  bc1f       .L8003FA58
/* E8F5C 8003FA4C 24020002 */   addiu     $v0, $zero, 2
/* E8F60 8003FA50 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8F64 8003FA54 A022BF80 */  sb         $v0, %lo(D_8006BF80)($at)
.L8003FA58:
/* E8F68 8003FA58 3C018015 */  lui        $at, %hi(D_8014CF9C)
/* E8F6C 8003FA5C C422CF9C */  lwc1       $f2, %lo(D_8014CF9C)($at)
.L8003FA60:
/* E8F70 8003FA60 3C014220 */  lui        $at, 0x4220
/* E8F74 8003FA64 44810000 */  mtc1       $at, $f0
/* E8F78 8003FA68 00000000 */  nop
/* E8F7C 8003FA6C 4602003C */  c.lt.s     $f0, $f2
/* E8F80 8003FA70 00000000 */  nop
/* E8F84 8003FA74 45000029 */  bc1f       .L8003FB1C
/* E8F88 8003FA78 00000000 */   nop
/* E8F8C 8003FA7C 3C018015 */  lui        $at, %hi(D_8014CFA0)
/* E8F90 8003FA80 C422CFA0 */  lwc1       $f2, %lo(D_8014CFA0)($at)
/* E8F94 8003FA84 3C014120 */  lui        $at, 0x4120
/* E8F98 8003FA88 44810000 */  mtc1       $at, $f0
/* E8F9C 8003FA8C 00000000 */  nop
/* E8FA0 8003FA90 4600103C */  c.lt.s     $f2, $f0
/* E8FA4 8003FA94 0800FEC3 */  j          .L8003FB0C
/* E8FA8 8003FA98 00000000 */   nop
.L8003FA9C:
/* E8FAC 8003FA9C 3C038015 */  lui        $v1, %hi(D_8014CF92)
/* E8FB0 8003FAA0 9463CF92 */  lhu        $v1, %lo(D_8014CF92)($v1)
/* E8FB4 8003FAA4 30620C00 */  andi       $v0, $v1, 0xc00
/* E8FB8 8003FAA8 10400003 */  beqz       $v0, .L8003FAB8
/* E8FBC 8003FAAC 24020001 */   addiu     $v0, $zero, 1
/* E8FC0 8003FAB0 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8FC4 8003FAB4 A022BF80 */  sb         $v0, %lo(D_8006BF80)($at)
.L8003FAB8:
/* E8FC8 8003FAB8 30620300 */  andi       $v0, $v1, 0x300
/* E8FCC 8003FABC 10400003 */  beqz       $v0, .L8003FACC
/* E8FD0 8003FAC0 00000000 */   nop
/* E8FD4 8003FAC4 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E8FD8 8003FAC8 A020BF80 */  sb         $zero, %lo(D_8006BF80)($at)
.L8003FACC:
/* E8FDC 8003FACC 3C018015 */  lui        $at, %hi(D_8014CFA0)
/* E8FE0 8003FAD0 C420CFA0 */  lwc1       $f0, %lo(D_8014CFA0)($at)
/* E8FE4 8003FAD4 3C014220 */  lui        $at, 0x4220
/* E8FE8 8003FAD8 44811000 */  mtc1       $at, $f2
/* E8FEC 8003FADC 00000000 */  nop
/* E8FF0 8003FAE0 4600103C */  c.lt.s     $f2, $f0
/* E8FF4 8003FAE4 00000000 */  nop
/* E8FF8 8003FAE8 00000000 */  nop
/* E8FFC 8003FAEC 45000003 */  bc1f       .L8003FAFC
/* E9000 8003FAF0 24020001 */   addiu     $v0, $zero, 1
/* E9004 8003FAF4 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E9008 8003FAF8 A022BF80 */  sb         $v0, %lo(D_8006BF80)($at)
.L8003FAFC:
/* E900C 8003FAFC 3C018015 */  lui        $at, %hi(D_8014CF9C)
/* E9010 8003FB00 C420CF9C */  lwc1       $f0, %lo(D_8014CF9C)($at)
/* E9014 8003FB04 4600103C */  c.lt.s     $f2, $f0
/* E9018 8003FB08 00000000 */  nop
.L8003FB0C:
/* E901C 8003FB0C 45000003 */  bc1f       .L8003FB1C
/* E9020 8003FB10 00000000 */   nop
/* E9024 8003FB14 3C018007 */  lui        $at, %hi(D_8006BF80)
/* E9028 8003FB18 A020BF80 */  sb         $zero, %lo(D_8006BF80)($at)
.L8003FB1C:
/* E902C 8003FB1C 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* E9030 8003FB20 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* E9034 8003FB24 30429000 */  andi       $v0, $v0, 0x9000
/* E9038 8003FB28 10400032 */  beqz       $v0, .L8003FBF4
/* E903C 8003FB2C 00000000 */   nop
/* E9040 8003FB30 3C028007 */  lui        $v0, %hi(D_8006BFC8)
/* E9044 8003FB34 9442BFC8 */  lhu        $v0, %lo(D_8006BFC8)($v0)
/* E9048 8003FB38 1440002E */  bnez       $v0, .L8003FBF4
/* E904C 8003FB3C 24020001 */   addiu     $v0, $zero, 1
/* E9050 8003FB40 3C038007 */  lui        $v1, %hi(D_8006BF80)
/* E9054 8003FB44 9063BF80 */  lbu        $v1, %lo(D_8006BF80)($v1)
/* E9058 8003FB48 1062000E */  beq        $v1, $v0, .L8003FB84
/* E905C 8003FB4C 28620002 */   slti      $v0, $v1, 2
/* E9060 8003FB50 50400005 */  beql       $v0, $zero, .L8003FB68
/* E9064 8003FB54 24020002 */   addiu     $v0, $zero, 2
/* E9068 8003FB58 10600007 */  beqz       $v1, .L8003FB78
/* E906C 8003FB5C 00000000 */   nop
/* E9070 8003FB60 0800FEFD */  j          .L8003FBF4
/* E9074 8003FB64 00000000 */   nop
.L8003FB68:
/* E9078 8003FB68 10620009 */  beq        $v1, $v0, .L8003FB90
/* E907C 8003FB6C 2404001D */   addiu     $a0, $zero, 0x1d
/* E9080 8003FB70 0800FEFD */  j          .L8003FBF4
/* E9084 8003FB74 00000000 */   nop
.L8003FB78:
/* E9088 8003FB78 3C018007 */  lui        $at, %hi(D_80068ED0)
/* E908C 8003FB7C 0800FEFD */  j          .L8003FBF4
/* E9090 8003FB80 A0208ED0 */   sb        $zero, %lo(D_80068ED0)($at)
.L8003FB84:
/* E9094 8003FB84 2404001D */  addiu      $a0, $zero, 0x1d
/* E9098 8003FB88 0800FEE5 */  j          .L8003FB94
/* E909C 8003FB8C 24020012 */   addiu     $v0, $zero, 0x12
.L8003FB90:
/* E90A0 8003FB90 24020014 */  addiu      $v0, $zero, 0x14
.L8003FB94:
/* E90A4 8003FB94 3C018007 */  lui        $at, %hi(D_80068ED0)
/* E90A8 8003FB98 0C026DD5 */  jal        func_8009B754
/* E90AC 8003FB9C A0228ED0 */   sb        $v0, %lo(D_80068ED0)($at)
/* E90B0 8003FBA0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* E90B4 8003FBA4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* E90B8 8003FBA8 2404003C */  addiu      $a0, $zero, 0x3c
/* E90BC 8003FBAC 0082001A */  div        $zero, $a0, $v0
/* E90C0 8003FBB0 14400002 */  bnez       $v0, .L8003FBBC
/* E90C4 8003FBB4 00000000 */   nop
/* E90C8 8003FBB8 0007000D */  break      7
.L8003FBBC:
/* E90CC 8003FBBC 2401FFFF */   addiu     $at, $zero, -1
/* E90D0 8003FBC0 14410004 */  bne        $v0, $at, .L8003FBD4
/* E90D4 8003FBC4 3C018000 */   lui       $at, 0x8000
/* E90D8 8003FBC8 14810002 */  bne        $a0, $at, .L8003FBD4
/* E90DC 8003FBCC 00000000 */   nop
/* E90E0 8003FBD0 0006000D */  break      6
.L8003FBD4:
/* E90E4 8003FBD4 00002012 */   mflo      $a0
/* E90E8 8003FBD8 0C02A5C1 */  jal        func_800A9704
/* E90EC 8003FBDC 00000000 */   nop
/* E90F0 8003FBE0 3C028007 */  lui        $v0, %hi(D_8006BFC8)
/* E90F4 8003FBE4 9442BFC8 */  lhu        $v0, %lo(D_8006BFC8)($v0)
/* E90F8 8003FBE8 24420001 */  addiu      $v0, $v0, 1
/* E90FC 8003FBEC 3C018007 */  lui        $at, %hi(D_8006BFC8)
/* E9100 8003FBF0 A422BFC8 */  sh         $v0, %lo(D_8006BFC8)($at)
.L8003FBF4:
/* E9104 8003FBF4 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* E9108 8003FBF8 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* E910C 8003FBFC 30424000 */  andi       $v0, $v0, 0x4000
/* E9110 8003FC00 1040001E */  beqz       $v0, .L8003FC7C
/* E9114 8003FC04 24020001 */   addiu     $v0, $zero, 1
/* E9118 8003FC08 3C018007 */  lui        $at, %hi(D_8006C55A)
/* E911C 8003FC0C A422C55A */  sh         $v0, %lo(D_8006C55A)($at)
/* E9120 8003FC10 24020014 */  addiu      $v0, $zero, 0x14
/* E9124 8003FC14 0800FF1F */  j          .L8003FC7C
/* E9128 8003FC18 A682001C */   sh        $v0, 0x1c($s4)
.L8003FC1C:
/* E912C 8003FC1C 3C048007 */  lui        $a0, %hi(D_8006BF80)
/* E9130 8003FC20 9084BF80 */  lbu        $a0, %lo(D_8006BF80)($a0)
/* E9134 8003FC24 0C00D8C1 */  jal        func_80036304_DF814
/* E9138 8003FC28 2484001A */   addiu     $a0, $a0, 0x1a
/* E913C 8003FC2C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* E9140 8003FC30 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* E9144 8003FC34 00408821 */  addu       $s1, $v0, $zero
/* E9148 8003FC38 240500FF */  addiu      $a1, $zero, 0xff
/* E914C 8003FC3C 000317C2 */  srl        $v0, $v1, 0x1f
/* E9150 8003FC40 00621021 */  addu       $v0, $v1, $v0
/* E9154 8003FC44 00021043 */  sra        $v0, $v0, 1
/* E9158 8003FC48 00021040 */  sll        $v0, $v0, 1
/* E915C 8003FC4C 00621823 */  subu       $v1, $v1, $v0
/* E9160 8003FC50 00031200 */  sll        $v0, $v1, 8
/* E9164 8003FC54 00431023 */  subu       $v0, $v0, $v1
/* E9168 8003FC58 304200FF */  andi       $v0, $v0, 0xff
/* E916C 8003FC5C AFA20010 */  sw         $v0, 0x10($sp)
/* E9170 8003FC60 8E24000C */  lw         $a0, 0xc($s1)
/* E9174 8003FC64 240600FF */  addiu      $a2, $zero, 0xff
/* E9178 8003FC68 0C028E41 */  jal        func_800A3904
/* E917C 8003FC6C 240700FF */   addiu     $a3, $zero, 0xff
/* E9180 8003FC70 8E24000C */  lw         $a0, 0xc($s1)
/* E9184 8003FC74 0C028A40 */  jal        func_800A2900
/* E9188 8003FC78 00000000 */   nop
.L8003FC7C:
/* E918C 8003FC7C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* E9190 8003FC80 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* E9194 8003FC84 2402003C */  addiu      $v0, $zero, 0x3c
/* E9198 8003FC88 0043001A */  div        $zero, $v0, $v1
/* E919C 8003FC8C 14600002 */  bnez       $v1, .L8003FC98
/* E91A0 8003FC90 00000000 */   nop
/* E91A4 8003FC94 0007000D */  break      7
.L8003FC98:
/* E91A8 8003FC98 2401FFFF */   addiu     $at, $zero, -1
/* E91AC 8003FC9C 14610004 */  bne        $v1, $at, .L8003FCB0
/* E91B0 8003FCA0 3C018000 */   lui       $at, 0x8000
/* E91B4 8003FCA4 14410002 */  bne        $v0, $at, .L8003FCB0
/* E91B8 8003FCA8 00000000 */   nop
/* E91BC 8003FCAC 0006000D */  break      6
.L8003FCB0:
/* E91C0 8003FCB0 00001012 */   mflo      $v0
/* E91C4 8003FCB4 3C038007 */  lui        $v1, %hi(D_8006BFC8)
/* E91C8 8003FCB8 9463BFC8 */  lhu        $v1, %lo(D_8006BFC8)($v1)
/* E91CC 8003FCBC 1462001B */  bne        $v1, $v0, .L8003FD2C
/* E91D0 8003FCC0 00001021 */   addu      $v0, $zero, $zero
/* E91D4 8003FCC4 3402FFFF */  ori        $v0, $zero, 0xffff
.L8003FCC8:
/* E91D8 8003FCC8 0800FF4A */  j          .L8003FD28
/* E91DC 8003FCCC A682001C */   sh        $v0, 0x1c($s4)
.L8003FCD0:
/* E91E0 8003FCD0 3C018007 */  lui        $at, %hi(D_8006C55A)
/* E91E4 8003FCD4 0C00E339 */  jal        func_80038CE4_E21F4
/* E91E8 8003FCD8 A422C55A */   sh        $v0, %lo(D_8006C55A)($at)
/* E91EC 8003FCDC 00001021 */  addu       $v0, $zero, $zero
/* E91F0 8003FCE0 3403FFFE */  ori        $v1, $zero, 0xfffe
/* E91F4 8003FCE4 0800FF4B */  j          .L8003FD2C
/* E91F8 8003FCE8 A683001C */   sh        $v1, 0x1c($s4)
.L8003FCEC:
/* E91FC 8003FCEC 0C02A5C1 */  jal        func_800A9704
/* E9200 8003FCF0 24040001 */   addiu     $a0, $zero, 1
/* E9204 8003FCF4 3C048007 */  lui        $a0, %hi(D_8006BF84)
/* E9208 8003FCF8 0C029393 */  jal        func_800A4E4C
/* E920C 8003FCFC 8C84BF84 */   lw        $a0, %lo(D_8006BF84)($a0)
/* E9210 8003FD00 0C00D7F4 */  jal        func_80035FD0_DF4E0
/* E9214 8003FD04 00000000 */   nop
/* E9218 8003FD08 3C048007 */  lui        $a0, %hi(D_80068ED4)
/* E921C 8003FD0C 24848ED4 */  addiu      $a0, $a0, %lo(D_80068ED4)
/* E9220 8003FD10 24020001 */  addiu      $v0, $zero, 1
/* E9224 8003FD14 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* E9228 8003FD18 0C026E4E */  jal        func_8009B938
/* E922C 8003FD1C A022C3C8 */   sb        $v0, %lo(D_8006C3C8)($at)
/* E9230 8003FD20 0800FF4B */  j          .L8003FD2C
/* E9234 8003FD24 24020001 */   addiu     $v0, $zero, 1
.L8003FD28:
/* E9238 8003FD28 00001021 */  addu       $v0, $zero, $zero
.L8003FD2C:
/* E923C 8003FD2C 8FBF0078 */  lw         $ra, 0x78($sp)
/* E9240 8003FD30 8FB50074 */  lw         $s5, 0x74($sp)
/* E9244 8003FD34 8FB40070 */  lw         $s4, 0x70($sp)
/* E9248 8003FD38 8FB3006C */  lw         $s3, 0x6c($sp)
/* E924C 8003FD3C 8FB20068 */  lw         $s2, 0x68($sp)
/* E9250 8003FD40 8FB10064 */  lw         $s1, 0x64($sp)
/* E9254 8003FD44 8FB00060 */  lw         $s0, 0x60($sp)
/* E9258 8003FD48 D7BA0098 */  ldc1       $f26, 0x98($sp)
/* E925C 8003FD4C D7B80090 */  ldc1       $f24, 0x90($sp)
/* E9260 8003FD50 D7B60088 */  ldc1       $f22, 0x88($sp)
/* E9264 8003FD54 D7B40080 */  ldc1       $f20, 0x80($sp)
/* E9268 8003FD58 03E00008 */  jr         $ra
/* E926C 8003FD5C 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_8003FD60_E9270
/* E9270 8003FD60 3C028007 */  lui        $v0, %hi(D_80068ED8)
/* E9274 8003FD64 90428ED8 */  lbu        $v0, %lo(D_80068ED8)($v0)
/* E9278 8003FD68 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E927C 8003FD6C 1040000D */  beqz       $v0, .L8003FDA4
/* E9280 8003FD70 AFBF0010 */   sw        $ra, 0x10($sp)
/* E9284 8003FD74 3C048004 */  lui        $a0, %hi(func_8003B0F0_E4600)
/* E9288 8003FD78 2484B0F0 */  addiu      $a0, $a0, %lo(func_8003B0F0_E4600)
/* E928C 8003FD7C 00002821 */  addu       $a1, $zero, $zero
/* E9290 8003FD80 2406012C */  addiu      $a2, $zero, 0x12c
/* E9294 8003FD84 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* E9298 8003FD88 A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* E929C 8003FD8C 0C025D06 */  jal        func_80097418
/* E92A0 8003FD90 00003821 */   addu      $a3, $zero, $zero
/* E92A4 8003FD94 0C02A5D2 */  jal        func_800A9748
/* E92A8 8003FD98 24040001 */   addiu     $a0, $zero, 1
/* E92AC 8003FD9C 3C018007 */  lui        $at, %hi(D_80068ED8)
/* E92B0 8003FDA0 A0208ED8 */  sb         $zero, %lo(D_80068ED8)($at)
.L8003FDA4:
/* E92B4 8003FDA4 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* E92B8 8003FDA8 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* E92BC 8003FDAC 24020001 */  addiu      $v0, $zero, 1
/* E92C0 8003FDB0 14620006 */  bne        $v1, $v0, .L8003FDCC
/* E92C4 8003FDB4 00001021 */   addu      $v0, $zero, $zero
/* E92C8 8003FDB8 3C028007 */  lui        $v0, %hi(D_80068ED0)
/* E92CC 8003FDBC 90428ED0 */  lbu        $v0, %lo(D_80068ED0)($v0)
/* E92D0 8003FDC0 24030001 */  addiu      $v1, $zero, 1
/* E92D4 8003FDC4 3C018007 */  lui        $at, %hi(D_80068ED8)
/* E92D8 8003FDC8 A0238ED8 */  sb         $v1, %lo(D_80068ED8)($at)
.L8003FDCC:
/* E92DC 8003FDCC 8FBF0010 */  lw         $ra, 0x10($sp)
/* E92E0 8003FDD0 03E00008 */  jr         $ra
/* E92E4 8003FDD4 27BD0018 */   addiu     $sp, $sp, 0x18
/* E92E8 8003FDD8 00000000 */  nop
/* E92EC 8003FDDC 00000000 */  nop