.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8004E220_F7730
/* F7730 8004E220 3C028007 */  lui        $v0, %hi(D_8006C190)
/* F7734 8004E224 9442C190 */  lhu        $v0, %lo(D_8006C190)($v0)
/* F7738 8004E228 27BDFF88 */  addiu      $sp, $sp, -0x78
/* F773C 8004E22C AFB20068 */  sw         $s2, 0x68($sp)
/* F7740 8004E230 AFBF006C */  sw         $ra, 0x6c($sp)
/* F7744 8004E234 AFB10064 */  sw         $s1, 0x64($sp)
/* F7748 8004E238 AFB00060 */  sw         $s0, 0x60($sp)
/* F774C 8004E23C F7B40070 */  sdc1       $f20, 0x70($sp)
/* F7750 8004E240 10400004 */  beqz       $v0, .L8004E254
/* F7754 8004E244 00809021 */   addu      $s2, $a0, $zero
/* F7758 8004E248 24420001 */  addiu      $v0, $v0, 1
/* F775C 8004E24C 3C018007 */  lui        $at, %hi(D_8006C190)
/* F7760 8004E250 A422C190 */  sh         $v0, %lo(D_8006C190)($at)
.L8004E254:
/* F7764 8004E254 0C00D7D8 */  jal        func_80035F60_DF470
/* F7768 8004E258 00000000 */   nop
/* F776C 8004E25C 1040001D */  beqz       $v0, .L8004E2D4
/* F7770 8004E260 00000000 */   nop
/* F7774 8004E264 3C028007 */  lui        $v0, %hi(D_8006C192)
/* F7778 8004E268 9042C192 */  lbu        $v0, %lo(D_8006C192)($v0)
/* F777C 8004E26C 14400009 */  bnez       $v0, .L8004E294
/* F7780 8004E270 24030001 */   addiu     $v1, $zero, 1
/* F7784 8004E274 9642001C */  lhu        $v0, 0x1c($s2)
/* F7788 8004E278 3C018007 */  lui        $at, %hi(D_8006C192)
/* F778C 8004E27C A023C192 */  sb         $v1, %lo(D_8006C192)($at)
/* F7790 8004E280 0002182B */  sltu       $v1, $zero, $v0
/* F7794 8004E284 2C42000D */  sltiu      $v0, $v0, 0xd
/* F7798 8004E288 00621824 */  and        $v1, $v1, $v0
/* F779C 8004E28C 14600505 */  bnez       $v1, .L8004F6A4
/* F77A0 8004E290 2402000D */   addiu     $v0, $zero, 0xd
.L8004E294:
/* F77A4 8004E294 9642001C */  lhu        $v0, 0x1c($s2)
/* F77A8 8004E298 3843000E */  xori       $v1, $v0, 0xe
/* F77AC 8004E29C 2C630001 */  sltiu      $v1, $v1, 1
/* F77B0 8004E2A0 38420010 */  xori       $v0, $v0, 0x10
/* F77B4 8004E2A4 2C420001 */  sltiu      $v0, $v0, 1
/* F77B8 8004E2A8 00621825 */  or         $v1, $v1, $v0
/* F77BC 8004E2AC 10600009 */  beqz       $v1, .L8004E2D4
/* F77C0 8004E2B0 24020001 */   addiu     $v0, $zero, 1
/* F77C4 8004E2B4 3C038007 */  lui        $v1, %hi(D_8006C190)
/* F77C8 8004E2B8 9463C190 */  lhu        $v1, %lo(D_8006C190)($v1)
/* F77CC 8004E2BC 3C018007 */  lui        $at, %hi(D_8006C192)
/* F77D0 8004E2C0 A022C192 */  sb         $v0, %lo(D_8006C192)($at)
/* F77D4 8004E2C4 14600003 */  bnez       $v1, .L8004E2D4
/* F77D8 8004E2C8 24620001 */   addiu     $v0, $v1, 1
/* F77DC 8004E2CC 3C018007 */  lui        $at, %hi(D_8006C190)
/* F77E0 8004E2D0 A422C190 */  sh         $v0, %lo(D_8006C190)($at)
.L8004E2D4:
/* F77E4 8004E2D4 9642001C */  lhu        $v0, 0x1c($s2)
/* F77E8 8004E2D8 2C420002 */  sltiu      $v0, $v0, 2
/* F77EC 8004E2DC 1440000A */  bnez       $v0, .L8004E308
/* F77F0 8004E2E0 00000000 */   nop
/* F77F4 8004E2E4 3C048007 */  lui        $a0, %hi(D_8006C140)
/* F77F8 8004E2E8 0C028A40 */  jal        func_800A2900
/* F77FC 8004E2EC 8C84C140 */   lw        $a0, %lo(D_8006C140)($a0)
/* F7800 8004E2F0 3C048007 */  lui        $a0, %hi(D_8006C144)
/* F7804 8004E2F4 0C028A40 */  jal        func_800A2900
/* F7808 8004E2F8 8C84C144 */   lw        $a0, %lo(D_8006C144)($a0)
/* F780C 8004E2FC 3C048007 */  lui        $a0, %hi(D_8006C148)
/* F7810 8004E300 0C028A40 */  jal        func_800A2900
/* F7814 8004E304 8C84C148 */   lw        $a0, %lo(D_8006C148)($a0)
.L8004E308:
/* F7818 8004E308 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F781C 8004E30C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F7820 8004E310 9644001C */  lhu        $a0, 0x1c($s2)
/* F7824 8004E314 3C038007 */  lui        $v1, %hi(D_8006C14C)
/* F7828 8004E318 9463C14C */  lhu        $v1, %lo(D_8006C14C)($v1)
/* F782C 8004E31C 24420001 */  addiu      $v0, $v0, 1
/* F7830 8004E320 3C018007 */  lui        $at, %hi(D_8006C564)
/* F7834 8004E324 10830008 */  beq        $a0, $v1, .L8004E348
/* F7838 8004E328 AC22C564 */   sw        $v0, %lo(D_8006C564)($at)
/* F783C 8004E32C 9642001C */  lhu        $v0, 0x1c($s2)
/* F7840 8004E330 3C018007 */  lui        $at, %hi(D_8006C564)
/* F7844 8004E334 AC20C564 */  sw         $zero, %lo(D_8006C564)($at)
/* F7848 8004E338 3C018007 */  lui        $at, %hi(D_8006C190)
/* F784C 8004E33C A420C190 */  sh         $zero, %lo(D_8006C190)($at)
/* F7850 8004E340 3C018007 */  lui        $at, %hi(D_8006C14C)
/* F7854 8004E344 A422C14C */  sh         $v0, %lo(D_8006C14C)($at)
.L8004E348:
/* F7858 8004E348 9643001C */  lhu        $v1, 0x1c($s2)
/* F785C 8004E34C 24020009 */  addiu      $v0, $zero, 9
/* F7860 8004E350 106203B4 */  beq        $v1, $v0, .L8004F224
/* F7864 8004E354 2862000A */   slti      $v0, $v1, 0xa
/* F7868 8004E358 1040001E */  beqz       $v0, .L8004E3D4
/* F786C 8004E35C 24020004 */   addiu     $v0, $zero, 4
/* F7870 8004E360 1062016D */  beq        $v1, $v0, .L8004E918
/* F7874 8004E364 28620005 */   slti      $v0, $v1, 5
/* F7878 8004E368 1040000F */  beqz       $v0, .L8004E3A8
/* F787C 8004E36C 24020001 */   addiu     $v0, $zero, 1
/* F7880 8004E370 10620067 */  beq        $v1, $v0, .L8004E510
/* F7884 8004E374 28620002 */   slti      $v0, $v1, 2
/* F7888 8004E378 10400005 */  beqz       $v0, .L8004E390
/* F788C 8004E37C 24100002 */   addiu     $s0, $zero, 2
/* F7890 8004E380 10600036 */  beqz       $v1, .L8004E45C
/* F7894 8004E384 00001021 */   addu      $v0, $zero, $zero
/* F7898 8004E388 08013EF2 */  j          .L8004FBC8
/* F789C 8004E38C 00000000 */   nop
.L8004E390:
/* F78A0 8004E390 1070006D */  beq        $v1, $s0, .L8004E548
/* F78A4 8004E394 24020003 */   addiu     $v0, $zero, 3
/* F78A8 8004E398 10620145 */  beq        $v1, $v0, .L8004E8B0
/* F78AC 8004E39C 00001021 */   addu      $v0, $zero, $zero
/* F78B0 8004E3A0 08013EF2 */  j          .L8004FBC8
/* F78B4 8004E3A4 00000000 */   nop
.L8004E3A8:
/* F78B8 8004E3A8 24020006 */  addiu      $v0, $zero, 6
/* F78BC 8004E3AC 1062027E */  beq        $v1, $v0, .L8004EDA8
/* F78C0 8004E3B0 28620006 */   slti      $v0, $v1, 6
/* F78C4 8004E3B4 1440025F */  bnez       $v0, .L8004ED34
/* F78C8 8004E3B8 24020007 */   addiu     $v0, $zero, 7
/* F78CC 8004E3BC 10620314 */  beq        $v1, $v0, .L8004F010
/* F78D0 8004E3C0 24020008 */   addiu     $v0, $zero, 8
/* F78D4 8004E3C4 1062031E */  beq        $v1, $v0, .L8004F040
/* F78D8 8004E3C8 00001021 */   addu      $v0, $zero, $zero
/* F78DC 8004E3CC 08013EF2 */  j          .L8004FBC8
/* F78E0 8004E3D0 00000000 */   nop
.L8004E3D4:
/* F78E4 8004E3D4 2402000E */  addiu      $v0, $zero, 0xe
/* F78E8 8004E3D8 106204EF */  beq        $v1, $v0, .L8004F798
/* F78EC 8004E3DC 2862000F */   slti      $v0, $v1, 0xf
/* F78F0 8004E3E0 1040000C */  beqz       $v0, .L8004E414
/* F78F4 8004E3E4 2402000B */   addiu     $v0, $zero, 0xb
/* F78F8 8004E3E8 106203FC */  beq        $v1, $v0, .L8004F3DC
/* F78FC 8004E3EC 2862000B */   slti      $v0, $v1, 0xb
/* F7900 8004E3F0 144003A1 */  bnez       $v0, .L8004F278
/* F7904 8004E3F4 2411003C */   addiu     $s1, $zero, 0x3c
/* F7908 8004E3F8 2402000C */  addiu      $v0, $zero, 0xc
/* F790C 8004E3FC 10620409 */  beq        $v1, $v0, .L8004F424
/* F7910 8004E400 2402000D */   addiu     $v0, $zero, 0xd
/* F7914 8004E404 106204A9 */  beq        $v1, $v0, .L8004F6AC
/* F7918 8004E408 00001021 */   addu      $v0, $zero, $zero
/* F791C 8004E40C 08013EF2 */  j          .L8004FBC8
/* F7920 8004E410 00000000 */   nop
.L8004E414:
/* F7924 8004E414 24020011 */  addiu      $v0, $zero, 0x11
/* F7928 8004E418 106205D1 */  beq        $v1, $v0, .L8004FB60
/* F792C 8004E41C 28620012 */   slti      $v0, $v1, 0x12
/* F7930 8004E420 10400007 */  beqz       $v0, .L8004E440
/* F7934 8004E424 2402000F */   addiu     $v0, $zero, 0xf
/* F7938 8004E428 10620523 */  beq        $v1, $v0, .L8004F8B8
/* F793C 8004E42C 24020010 */   addiu     $v0, $zero, 0x10
/* F7940 8004E430 1062052F */  beq        $v1, $v0, .L8004F8F0
/* F7944 8004E434 00001021 */   addu      $v0, $zero, $zero
/* F7948 8004E438 08013EF2 */  j          .L8004FBC8
/* F794C 8004E43C 00000000 */   nop
.L8004E440:
/* F7950 8004E440 3402FFFE */  ori        $v0, $zero, 0xfffe
/* F7954 8004E444 106205CD */  beq        $v1, $v0, .L8004FB7C
/* F7958 8004E448 3402FFFF */   ori       $v0, $zero, 0xffff
/* F795C 8004E44C 106205C4 */  beq        $v1, $v0, .L8004FB60
/* F7960 8004E450 00001021 */   addu      $v0, $zero, $zero
/* F7964 8004E454 08013EF2 */  j          .L8004FBC8
/* F7968 8004E458 00000000 */   nop
.L8004E45C:
/* F796C 8004E45C 0C00D7DD */  jal        func_80035F74_DF484
/* F7970 8004E460 241000E0 */   addiu     $s0, $zero, 0xe0
/* F7974 8004E464 0C029375 */  jal        func_800A4DD4
/* F7978 8004E468 00000000 */   nop
/* F797C 8004E46C 00402021 */  addu       $a0, $v0, $zero
/* F7980 8004E470 24050010 */  addiu      $a1, $zero, 0x10
/* F7984 8004E474 9482001E */  lhu        $v0, 0x1e($a0)
/* F7988 8004E478 24060010 */  addiu      $a2, $zero, 0x10
/* F798C 8004E47C 24070130 */  addiu      $a3, $zero, 0x130
/* F7990 8004E480 3C018007 */  lui        $at, %hi(D_8006C140)
/* F7994 8004E484 AC24C140 */  sw         $a0, %lo(D_8006C140)($at)
/* F7998 8004E488 A480001C */  sh         $zero, 0x1c($a0)
/* F799C 8004E48C 34420100 */  ori        $v0, $v0, 0x100
/* F79A0 8004E490 A482001E */  sh         $v0, 0x1e($a0)
/* F79A4 8004E494 0C02939C */  jal        func_800A4E70
/* F79A8 8004E498 AFB00010 */   sw        $s0, 0x10($sp)
/* F79AC 8004E49C 0C029375 */  jal        func_800A4DD4
/* F79B0 8004E4A0 00000000 */   nop
/* F79B4 8004E4A4 00402021 */  addu       $a0, $v0, $zero
/* F79B8 8004E4A8 24050010 */  addiu      $a1, $zero, 0x10
/* F79BC 8004E4AC 24060010 */  addiu      $a2, $zero, 0x10
/* F79C0 8004E4B0 24070130 */  addiu      $a3, $zero, 0x130
/* F79C4 8004E4B4 3C018007 */  lui        $at, %hi(D_8006C144)
/* F79C8 8004E4B8 AC24C144 */  sw         $a0, %lo(D_8006C144)($at)
/* F79CC 8004E4BC A480001C */  sh         $zero, 0x1c($a0)
/* F79D0 8004E4C0 0C02939C */  jal        func_800A4E70
/* F79D4 8004E4C4 AFB00010 */   sw        $s0, 0x10($sp)
/* F79D8 8004E4C8 0C029375 */  jal        func_800A4DD4
/* F79DC 8004E4CC 00000000 */   nop
/* F79E0 8004E4D0 00402021 */  addu       $a0, $v0, $zero
/* F79E4 8004E4D4 24050010 */  addiu      $a1, $zero, 0x10
/* F79E8 8004E4D8 24060010 */  addiu      $a2, $zero, 0x10
/* F79EC 8004E4DC 24070130 */  addiu      $a3, $zero, 0x130
/* F79F0 8004E4E0 2402004E */  addiu      $v0, $zero, 0x4e
/* F79F4 8004E4E4 3C018007 */  lui        $at, %hi(D_8006C148)
/* F79F8 8004E4E8 AC24C148 */  sw         $a0, %lo(D_8006C148)($at)
/* F79FC 8004E4EC A482001C */  sh         $v0, 0x1c($a0)
/* F7A00 8004E4F0 0C02939C */  jal        func_800A4E70
/* F7A04 8004E4F4 AFB00010 */   sw        $s0, 0x10($sp)
/* F7A08 8004E4F8 00001021 */  addu       $v0, $zero, $zero
/* F7A0C 8004E4FC 24030001 */  addiu      $v1, $zero, 1
/* F7A10 8004E500 3C018007 */  lui        $at, %hi(D_8006C192)
/* F7A14 8004E504 A020C192 */  sb         $zero, %lo(D_8006C192)($at)
/* F7A18 8004E508 08013EF2 */  j          .L8004FBC8
/* F7A1C 8004E50C A643001C */   sh        $v1, 0x1c($s2)
.L8004E510:
/* F7A20 8004E510 0C01345C */  jal        func_8004D170_F6680
/* F7A24 8004E514 00000000 */   nop
/* F7A28 8004E518 0C02A5AF */  jal        func_800A96BC
/* F7A2C 8004E51C 24040001 */   addiu     $a0, $zero, 1
/* F7A30 8004E520 3C014378 */  lui        $at, 0x4378
/* F7A34 8004E524 44810000 */  mtc1       $at, $f0
/* F7A38 8004E528 24030002 */  addiu      $v1, $zero, 2
/* F7A3C 8004E52C 3C018007 */  lui        $at, %hi(D_8006C180)
/* F7A40 8004E530 AC20C180 */  sw         $zero, %lo(D_8006C180)($at)
/* F7A44 8004E534 A643001C */  sh         $v1, 0x1c($s2)
/* F7A48 8004E538 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F7A4C 8004E53C E420C17C */  swc1       $f0, %lo(D_8006C17C)($at)
/* F7A50 8004E540 08013EF2 */  j          .L8004FBC8
/* F7A54 8004E544 00001021 */   addu      $v0, $zero, $zero
.L8004E548:
/* F7A58 8004E548 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F7A5C 8004E54C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F7A60 8004E550 14400009 */  bnez       $v0, .L8004E578
/* F7A64 8004E554 24050040 */   addiu     $a1, $zero, 0x40
/* F7A68 8004E558 24040055 */  addiu      $a0, $zero, 0x55
/* F7A6C 8004E55C 24060080 */  addiu      $a2, $zero, 0x80
/* F7A70 8004E560 24070001 */  addiu      $a3, $zero, 1
/* F7A74 8004E564 24020064 */  addiu      $v0, $zero, 0x64
/* F7A78 8004E568 0C026E0C */  jal        func_8009B830
/* F7A7C 8004E56C AFA20010 */   sw        $v0, 0x10($sp)
/* F7A80 8004E570 3C018007 */  lui        $at, %hi(D_80069270)
/* F7A84 8004E574 AC229270 */  sw         $v0, %lo(D_80069270)($at)
.L8004E578:
/* F7A88 8004E578 0C00D8C1 */  jal        func_80036304_DF814
/* F7A8C 8004E57C 24040019 */   addiu     $a0, $zero, 0x19
/* F7A90 8004E580 8C44000C */  lw         $a0, 0xc($v0)
/* F7A94 8004E584 0C028A40 */  jal        func_800A2900
/* F7A98 8004E588 00000000 */   nop
/* F7A9C 8004E58C 0C00D8C1 */  jal        func_80036304_DF814
/* F7AA0 8004E590 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F7AA4 8004E594 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F7AA8 8004E598 C422C17C */  lwc1       $f2, %lo(D_8006C17C)($at)
/* F7AAC 8004E59C 3C014F00 */  lui        $at, 0x4f00
/* F7AB0 8004E5A0 44810000 */  mtc1       $at, $f0
/* F7AB4 8004E5A4 00000000 */  nop
/* F7AB8 8004E5A8 4602003E */  c.le.s     $f0, $f2
/* F7ABC 8004E5AC 00000000 */  nop
/* F7AC0 8004E5B0 00000000 */  nop
/* F7AC4 8004E5B4 45010006 */  bc1t       .L8004E5D0
/* F7AC8 8004E5B8 00408021 */   addu      $s0, $v0, $zero
/* F7ACC 8004E5BC 4600100D */  trunc.w.s  $f0, $f2
/* F7AD0 8004E5C0 44030000 */  mfc1       $v1, $f0
/* F7AD4 8004E5C4 00000000 */  nop
/* F7AD8 8004E5C8 0801397A */  j          .L8004E5E8
/* F7ADC 8004E5CC 306200FF */   andi      $v0, $v1, 0xff
.L8004E5D0:
/* F7AE0 8004E5D0 46001001 */  sub.s      $f0, $f2, $f0
/* F7AE4 8004E5D4 4600008D */  trunc.w.s  $f2, $f0
/* F7AE8 8004E5D8 44031000 */  mfc1       $v1, $f2
/* F7AEC 8004E5DC 3C028000 */  lui        $v0, 0x8000
/* F7AF0 8004E5E0 00621825 */  or         $v1, $v1, $v0
/* F7AF4 8004E5E4 306200FF */  andi       $v0, $v1, 0xff
.L8004E5E8:
/* F7AF8 8004E5E8 AFA20010 */  sw         $v0, 0x10($sp)
/* F7AFC 8004E5EC 8E04000C */  lw         $a0, 0xc($s0)
/* F7B00 8004E5F0 240500FF */  addiu      $a1, $zero, 0xff
/* F7B04 8004E5F4 240600FF */  addiu      $a2, $zero, 0xff
/* F7B08 8004E5F8 0C028E41 */  jal        func_800A3904
/* F7B0C 8004E5FC 240700FF */   addiu     $a3, $zero, 0xff
/* F7B10 8004E600 8E04000C */  lw         $a0, 0xc($s0)
/* F7B14 8004E604 0C028A40 */  jal        func_800A2900
/* F7B18 8004E608 00000000 */   nop
/* F7B1C 8004E60C 0C00D8C1 */  jal        func_80036304_DF814
/* F7B20 8004E610 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F7B24 8004E614 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F7B28 8004E618 C422C17C */  lwc1       $f2, %lo(D_8006C17C)($at)
/* F7B2C 8004E61C 3C013F4C */  lui        $at, 0x3f4c
/* F7B30 8004E620 3421CCCD */  ori        $at, $at, 0xcccd
/* F7B34 8004E624 44810000 */  mtc1       $at, $f0
/* F7B38 8004E628 00000000 */  nop
/* F7B3C 8004E62C 46001082 */  mul.s      $f2, $f2, $f0
/* F7B40 8004E630 3C014F00 */  lui        $at, 0x4f00
/* F7B44 8004E634 44810000 */  mtc1       $at, $f0
/* F7B48 8004E638 00000000 */  nop
/* F7B4C 8004E63C 4602003E */  c.le.s     $f0, $f2
/* F7B50 8004E640 00000000 */  nop
/* F7B54 8004E644 00000000 */  nop
/* F7B58 8004E648 45010006 */  bc1t       .L8004E664
/* F7B5C 8004E64C 00408021 */   addu      $s0, $v0, $zero
/* F7B60 8004E650 4600100D */  trunc.w.s  $f0, $f2
/* F7B64 8004E654 44030000 */  mfc1       $v1, $f0
/* F7B68 8004E658 00000000 */  nop
/* F7B6C 8004E65C 0801399F */  j          .L8004E67C
/* F7B70 8004E660 306200FF */   andi      $v0, $v1, 0xff
.L8004E664:
/* F7B74 8004E664 46001001 */  sub.s      $f0, $f2, $f0
/* F7B78 8004E668 4600008D */  trunc.w.s  $f2, $f0
/* F7B7C 8004E66C 44031000 */  mfc1       $v1, $f2
/* F7B80 8004E670 3C028000 */  lui        $v0, 0x8000
/* F7B84 8004E674 00621825 */  or         $v1, $v1, $v0
/* F7B88 8004E678 306200FF */  andi       $v0, $v1, 0xff
.L8004E67C:
/* F7B8C 8004E67C AFA20010 */  sw         $v0, 0x10($sp)
/* F7B90 8004E680 8E04000C */  lw         $a0, 0xc($s0)
/* F7B94 8004E684 240500FF */  addiu      $a1, $zero, 0xff
/* F7B98 8004E688 240600FF */  addiu      $a2, $zero, 0xff
/* F7B9C 8004E68C 0C028E41 */  jal        func_800A3904
/* F7BA0 8004E690 240700FF */   addiu     $a3, $zero, 0xff
/* F7BA4 8004E694 8E04000C */  lw         $a0, 0xc($s0)
/* F7BA8 8004E698 0C028A40 */  jal        func_800A2900
/* F7BAC 8004E69C 00000000 */   nop
/* F7BB0 8004E6A0 0C00D8C1 */  jal        func_80036304_DF814
/* F7BB4 8004E6A4 240420CA */   addiu     $a0, $zero, 0x20ca
/* F7BB8 8004E6A8 3C018007 */  lui        $at, %hi(D_8006C180)
/* F7BBC 8004E6AC C422C180 */  lwc1       $f2, %lo(D_8006C180)($at)
/* F7BC0 8004E6B0 3C014F00 */  lui        $at, 0x4f00
/* F7BC4 8004E6B4 44810000 */  mtc1       $at, $f0
/* F7BC8 8004E6B8 00000000 */  nop
/* F7BCC 8004E6BC 4602003E */  c.le.s     $f0, $f2
/* F7BD0 8004E6C0 00000000 */  nop
/* F7BD4 8004E6C4 00000000 */  nop
/* F7BD8 8004E6C8 45010006 */  bc1t       .L8004E6E4
/* F7BDC 8004E6CC 00408021 */   addu      $s0, $v0, $zero
/* F7BE0 8004E6D0 4600100D */  trunc.w.s  $f0, $f2
/* F7BE4 8004E6D4 44030000 */  mfc1       $v1, $f0
/* F7BE8 8004E6D8 00000000 */  nop
/* F7BEC 8004E6DC 080139BF */  j          .L8004E6FC
/* F7BF0 8004E6E0 306200FF */   andi      $v0, $v1, 0xff
.L8004E6E4:
/* F7BF4 8004E6E4 46001001 */  sub.s      $f0, $f2, $f0
/* F7BF8 8004E6E8 4600008D */  trunc.w.s  $f2, $f0
/* F7BFC 8004E6EC 44031000 */  mfc1       $v1, $f2
/* F7C00 8004E6F0 3C028000 */  lui        $v0, 0x8000
/* F7C04 8004E6F4 00621825 */  or         $v1, $v1, $v0
/* F7C08 8004E6F8 306200FF */  andi       $v0, $v1, 0xff
.L8004E6FC:
/* F7C0C 8004E6FC AFA20010 */  sw         $v0, 0x10($sp)
/* F7C10 8004E700 8E04000C */  lw         $a0, 0xc($s0)
/* F7C14 8004E704 240500FF */  addiu      $a1, $zero, 0xff
/* F7C18 8004E708 240600FF */  addiu      $a2, $zero, 0xff
/* F7C1C 8004E70C 0C028E41 */  jal        func_800A3904
/* F7C20 8004E710 240700FF */   addiu     $a3, $zero, 0xff
/* F7C24 8004E714 8E04000C */  lw         $a0, 0xc($s0)
/* F7C28 8004E718 0C028A40 */  jal        func_800A2900
/* F7C2C 8004E71C 00000000 */   nop
/* F7C30 8004E720 0C00D8C1 */  jal        func_80036304_DF814
/* F7C34 8004E724 240420D4 */   addiu     $a0, $zero, 0x20d4
/* F7C38 8004E728 3C018007 */  lui        $at, %hi(D_8006C180)
/* F7C3C 8004E72C C422C180 */  lwc1       $f2, %lo(D_8006C180)($at)
/* F7C40 8004E730 3C013F4C */  lui        $at, 0x3f4c
/* F7C44 8004E734 3421CCCD */  ori        $at, $at, 0xcccd
/* F7C48 8004E738 44810000 */  mtc1       $at, $f0
/* F7C4C 8004E73C 00000000 */  nop
/* F7C50 8004E740 46001082 */  mul.s      $f2, $f2, $f0
/* F7C54 8004E744 3C014F00 */  lui        $at, 0x4f00
/* F7C58 8004E748 44810000 */  mtc1       $at, $f0
/* F7C5C 8004E74C 00000000 */  nop
/* F7C60 8004E750 4602003E */  c.le.s     $f0, $f2
/* F7C64 8004E754 00000000 */  nop
/* F7C68 8004E758 00000000 */  nop
/* F7C6C 8004E75C 45010006 */  bc1t       .L8004E778
/* F7C70 8004E760 00408021 */   addu      $s0, $v0, $zero
/* F7C74 8004E764 4600100D */  trunc.w.s  $f0, $f2
/* F7C78 8004E768 44030000 */  mfc1       $v1, $f0
/* F7C7C 8004E76C 00000000 */  nop
/* F7C80 8004E770 080139E4 */  j          .L8004E790
/* F7C84 8004E774 306200FF */   andi      $v0, $v1, 0xff
.L8004E778:
/* F7C88 8004E778 46001001 */  sub.s      $f0, $f2, $f0
/* F7C8C 8004E77C 4600008D */  trunc.w.s  $f2, $f0
/* F7C90 8004E780 44031000 */  mfc1       $v1, $f2
/* F7C94 8004E784 3C028000 */  lui        $v0, 0x8000
/* F7C98 8004E788 00621825 */  or         $v1, $v1, $v0
/* F7C9C 8004E78C 306200FF */  andi       $v0, $v1, 0xff
.L8004E790:
/* F7CA0 8004E790 AFA20010 */  sw         $v0, 0x10($sp)
/* F7CA4 8004E794 8E04000C */  lw         $a0, 0xc($s0)
/* F7CA8 8004E798 240500FF */  addiu      $a1, $zero, 0xff
/* F7CAC 8004E79C 240600FF */  addiu      $a2, $zero, 0xff
/* F7CB0 8004E7A0 0C028E41 */  jal        func_800A3904
/* F7CB4 8004E7A4 240700FF */   addiu     $a3, $zero, 0xff
/* F7CB8 8004E7A8 8E04000C */  lw         $a0, 0xc($s0)
/* F7CBC 8004E7AC 0C028A40 */  jal        func_800A2900
/* F7CC0 8004E7B0 00000000 */   nop
/* F7CC4 8004E7B4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F7CC8 8004E7B8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F7CCC 8004E7BC 2402003C */  addiu      $v0, $zero, 0x3c
/* F7CD0 8004E7C0 0043001A */  div        $zero, $v0, $v1
/* F7CD4 8004E7C4 14600002 */  bnez       $v1, .L8004E7D0
/* F7CD8 8004E7C8 00000000 */   nop
/* F7CDC 8004E7CC 0007000D */  break      7
.L8004E7D0:
/* F7CE0 8004E7D0 2401FFFF */   addiu     $at, $zero, -1
/* F7CE4 8004E7D4 14610004 */  bne        $v1, $at, .L8004E7E8
/* F7CE8 8004E7D8 3C018000 */   lui       $at, 0x8000
/* F7CEC 8004E7DC 14410002 */  bne        $v0, $at, .L8004E7E8
/* F7CF0 8004E7E0 00000000 */   nop
/* F7CF4 8004E7E4 0006000D */  break      6
.L8004E7E8:
/* F7CF8 8004E7E8 00001012 */   mflo      $v0
/* F7CFC 8004E7EC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F7D00 8004E7F0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F7D04 8004E7F4 00021040 */  sll        $v0, $v0, 1
/* F7D08 8004E7F8 0062182A */  slt        $v1, $v1, $v0
/* F7D0C 8004E7FC 14600014 */  bnez       $v1, .L8004E850
/* F7D10 8004E800 00000000 */   nop
/* F7D14 8004E804 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F7D18 8004E808 C424C17C */  lwc1       $f4, %lo(D_8006C17C)($at)
/* F7D1C 8004E80C 44800000 */  mtc1       $zero, $f0
/* F7D20 8004E810 00000000 */  nop
/* F7D24 8004E814 4604003C */  c.lt.s     $f0, $f4
/* F7D28 8004E818 00000000 */  nop
/* F7D2C 8004E81C 4500000C */  bc1f       .L8004E850
/* F7D30 8004E820 00000000 */   nop
/* F7D34 8004E824 3C014100 */  lui        $at, 0x4100
/* F7D38 8004E828 44810000 */  mtc1       $at, $f0
/* F7D3C 8004E82C 00000000 */  nop
/* F7D40 8004E830 46002101 */  sub.s      $f4, $f4, $f0
/* F7D44 8004E834 3C018007 */  lui        $at, %hi(D_8006C180)
/* F7D48 8004E838 C422C180 */  lwc1       $f2, %lo(D_8006C180)($at)
/* F7D4C 8004E83C 46001080 */  add.s      $f2, $f2, $f0
/* F7D50 8004E840 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F7D54 8004E844 E424C17C */  swc1       $f4, %lo(D_8006C17C)($at)
/* F7D58 8004E848 3C018007 */  lui        $at, %hi(D_8006C180)
/* F7D5C 8004E84C E422C180 */  swc1       $f2, %lo(D_8006C180)($at)
.L8004E850:
/* F7D60 8004E850 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F7D64 8004E854 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F7D68 8004E858 2403003C */  addiu      $v1, $zero, 0x3c
/* F7D6C 8004E85C 0062001A */  div        $zero, $v1, $v0
/* F7D70 8004E860 14400002 */  bnez       $v0, .L8004E86C
/* F7D74 8004E864 00000000 */   nop
/* F7D78 8004E868 0007000D */  break      7
.L8004E86C:
/* F7D7C 8004E86C 2401FFFF */   addiu     $at, $zero, -1
/* F7D80 8004E870 14410004 */  bne        $v0, $at, .L8004E884
/* F7D84 8004E874 3C018000 */   lui       $at, 0x8000
/* F7D88 8004E878 14610002 */  bne        $v1, $at, .L8004E884
/* F7D8C 8004E87C 00000000 */   nop
/* F7D90 8004E880 0006000D */  break      6
.L8004E884:
/* F7D94 8004E884 00001812 */   mflo      $v1
/* F7D98 8004E888 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F7D9C 8004E88C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F7DA0 8004E890 00031080 */  sll        $v0, $v1, 2
/* F7DA4 8004E894 00431021 */  addu       $v0, $v0, $v1
/* F7DA8 8004E898 0082202A */  slt        $a0, $a0, $v0
/* F7DAC 8004E89C 148004CA */  bnez       $a0, .L8004FBC8
/* F7DB0 8004E8A0 00001021 */   addu      $v0, $zero, $zero
/* F7DB4 8004E8A4 24020003 */  addiu      $v0, $zero, 3
/* F7DB8 8004E8A8 08013EF1 */  j          .L8004FBC4
/* F7DBC 8004E8AC A642001C */   sh        $v0, 0x1c($s2)
.L8004E8B0:
/* F7DC0 8004E8B0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F7DC4 8004E8B4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F7DC8 8004E8B8 14400005 */  bnez       $v0, .L8004E8D0
/* F7DCC 8004E8BC 00000000 */   nop
/* F7DD0 8004E8C0 0C013495 */  jal        func_8004D254_F6764
/* F7DD4 8004E8C4 00000000 */   nop
/* F7DD8 8004E8C8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F7DDC 8004E8CC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
.L8004E8D0:
/* F7DE0 8004E8D0 145004BD */  bne        $v0, $s0, .L8004FBC8
/* F7DE4 8004E8D4 00001021 */   addu      $v0, $zero, $zero
/* F7DE8 8004E8D8 0C02A5AF */  jal        func_800A96BC
/* F7DEC 8004E8DC 24040001 */   addiu     $a0, $zero, 1
/* F7DF0 8004E8E0 3C014378 */  lui        $at, 0x4378
/* F7DF4 8004E8E4 44810000 */  mtc1       $at, $f0
/* F7DF8 8004E8E8 24020004 */  addiu      $v0, $zero, 4
/* F7DFC 8004E8EC 3C018007 */  lui        $at, %hi(D_8006C180)
/* F7E00 8004E8F0 AC20C180 */  sw         $zero, %lo(D_8006C180)($at)
/* F7E04 8004E8F4 3C018007 */  lui        $at, %hi(D_8006C154)
/* F7E08 8004E8F8 AC20C154 */  sw         $zero, %lo(D_8006C154)($at)
/* F7E0C 8004E8FC 3C018007 */  lui        $at, %hi(D_8006C150)
/* F7E10 8004E900 AC20C150 */  sw         $zero, %lo(D_8006C150)($at)
/* F7E14 8004E904 A642001C */  sh         $v0, 0x1c($s2)
/* F7E18 8004E908 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F7E1C 8004E90C E420C17C */  swc1       $f0, %lo(D_8006C17C)($at)
/* F7E20 8004E910 08013EF2 */  j          .L8004FBC8
/* F7E24 8004E914 00001021 */   addu      $v0, $zero, $zero
.L8004E918:
/* F7E28 8004E918 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F7E2C 8004E91C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F7E30 8004E920 1440000D */  bnez       $v0, .L8004E958
/* F7E34 8004E924 00000000 */   nop
/* F7E38 8004E928 3C048007 */  lui        $a0, %hi(D_80069270)
/* F7E3C 8004E92C 0C026E4E */  jal        func_8009B938
/* F7E40 8004E930 24849270 */   addiu     $a0, $a0, %lo(D_80069270)
/* F7E44 8004E934 24040059 */  addiu      $a0, $zero, 0x59
/* F7E48 8004E938 24050040 */  addiu      $a1, $zero, 0x40
/* F7E4C 8004E93C 24060080 */  addiu      $a2, $zero, 0x80
/* F7E50 8004E940 24070001 */  addiu      $a3, $zero, 1
/* F7E54 8004E944 24020064 */  addiu      $v0, $zero, 0x64
/* F7E58 8004E948 0C026E0C */  jal        func_8009B830
/* F7E5C 8004E94C AFA20010 */   sw        $v0, 0x10($sp)
/* F7E60 8004E950 3C018007 */  lui        $at, %hi(D_80069270)
/* F7E64 8004E954 AC229270 */  sw         $v0, %lo(D_80069270)($at)
.L8004E958:
/* F7E68 8004E958 0C00DFD6 */  jal        func_80037F58_E1468
/* F7E6C 8004E95C 24040007 */   addiu     $a0, $zero, 7
/* F7E70 8004E960 3C018007 */  lui        $at, %hi(D_8006C154)
/* F7E74 8004E964 C420C154 */  lwc1       $f0, %lo(D_8006C154)($at)
/* F7E78 8004E968 3C018007 */  lui        $at, %hi(D_8006C150)
/* F7E7C 8004E96C C422C150 */  lwc1       $f2, %lo(D_8006C150)($at)
/* F7E80 8004E970 00408021 */  addu       $s0, $v0, $zero
/* F7E84 8004E974 24040007 */  addiu      $a0, $zero, 7
/* F7E88 8004E978 AE000010 */  sw         $zero, 0x10($s0)
/* F7E8C 8004E97C AE000018 */  sw         $zero, 0x18($s0)
/* F7E90 8004E980 AE000020 */  sw         $zero, 0x20($s0)
/* F7E94 8004E984 AE000024 */  sw         $zero, 0x24($s0)
/* F7E98 8004E988 E6000014 */  swc1       $f0, 0x14($s0)
/* F7E9C 8004E98C 0C00E032 */  jal        func_800380C8_E15D8
/* F7EA0 8004E990 E602001C */   swc1      $f2, 0x1c($s0)
/* F7EA4 8004E994 3C018007 */  lui        $at, %hi(D_8006C154)
/* F7EA8 8004E998 C424C154 */  lwc1       $f4, %lo(D_8006C154)($at)
/* F7EAC 8004E99C 3C013CA3 */  lui        $at, 0x3ca3
/* F7EB0 8004E9A0 3421D70A */  ori        $at, $at, 0xd70a
/* F7EB4 8004E9A4 44810000 */  mtc1       $at, $f0
/* F7EB8 8004E9A8 3C018007 */  lui        $at, %hi(D_8006C150)
/* F7EBC 8004E9AC C422C150 */  lwc1       $f2, %lo(D_8006C150)($at)
/* F7EC0 8004E9B0 46002100 */  add.s      $f4, $f4, $f0
/* F7EC4 8004E9B4 3C013CF5 */  lui        $at, 0x3cf5
/* F7EC8 8004E9B8 3421C28F */  ori        $at, $at, 0xc28f
/* F7ECC 8004E9BC 44810000 */  mtc1       $at, $f0
/* F7ED0 8004E9C0 00000000 */  nop
/* F7ED4 8004E9C4 46001081 */  sub.s      $f2, $f2, $f0
/* F7ED8 8004E9C8 3C018007 */  lui        $at, %hi(D_8006C154)
/* F7EDC 8004E9CC E424C154 */  swc1       $f4, %lo(D_8006C154)($at)
/* F7EE0 8004E9D0 3C018007 */  lui        $at, %hi(D_8006C150)
/* F7EE4 8004E9D4 E422C150 */  swc1       $f2, %lo(D_8006C150)($at)
/* F7EE8 8004E9D8 0C00D8C1 */  jal        func_80036304_DF814
/* F7EEC 8004E9DC 24040021 */   addiu     $a0, $zero, 0x21
/* F7EF0 8004E9E0 8C44000C */  lw         $a0, 0xc($v0)
/* F7EF4 8004E9E4 0C028A40 */  jal        func_800A2900
/* F7EF8 8004E9E8 00000000 */   nop
/* F7EFC 8004E9EC 0C00D8C1 */  jal        func_80036304_DF814
/* F7F00 8004E9F0 24040017 */   addiu     $a0, $zero, 0x17
/* F7F04 8004E9F4 8C44000C */  lw         $a0, 0xc($v0)
/* F7F08 8004E9F8 0C028A40 */  jal        func_800A2900
/* F7F0C 8004E9FC 00000000 */   nop
/* F7F10 8004EA00 0C00D8C1 */  jal        func_80036304_DF814
/* F7F14 8004EA04 240420CB */   addiu     $a0, $zero, 0x20cb
/* F7F18 8004EA08 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F7F1C 8004EA0C C422C17C */  lwc1       $f2, %lo(D_8006C17C)($at)
/* F7F20 8004EA10 3C014F00 */  lui        $at, 0x4f00
/* F7F24 8004EA14 44810000 */  mtc1       $at, $f0
/* F7F28 8004EA18 00000000 */  nop
/* F7F2C 8004EA1C 4602003E */  c.le.s     $f0, $f2
/* F7F30 8004EA20 00000000 */  nop
/* F7F34 8004EA24 00000000 */  nop
/* F7F38 8004EA28 45010006 */  bc1t       .L8004EA44
/* F7F3C 8004EA2C 00408021 */   addu      $s0, $v0, $zero
/* F7F40 8004EA30 4600100D */  trunc.w.s  $f0, $f2
/* F7F44 8004EA34 44030000 */  mfc1       $v1, $f0
/* F7F48 8004EA38 00000000 */  nop
/* F7F4C 8004EA3C 08013A97 */  j          .L8004EA5C
/* F7F50 8004EA40 306200FF */   andi      $v0, $v1, 0xff
.L8004EA44:
/* F7F54 8004EA44 46001001 */  sub.s      $f0, $f2, $f0
/* F7F58 8004EA48 4600008D */  trunc.w.s  $f2, $f0
/* F7F5C 8004EA4C 44031000 */  mfc1       $v1, $f2
/* F7F60 8004EA50 3C028000 */  lui        $v0, 0x8000
/* F7F64 8004EA54 00621825 */  or         $v1, $v1, $v0
/* F7F68 8004EA58 306200FF */  andi       $v0, $v1, 0xff
.L8004EA5C:
/* F7F6C 8004EA5C AFA20010 */  sw         $v0, 0x10($sp)
/* F7F70 8004EA60 8E04000C */  lw         $a0, 0xc($s0)
/* F7F74 8004EA64 240500FF */  addiu      $a1, $zero, 0xff
/* F7F78 8004EA68 240600FF */  addiu      $a2, $zero, 0xff
/* F7F7C 8004EA6C 0C028E41 */  jal        func_800A3904
/* F7F80 8004EA70 240700FF */   addiu     $a3, $zero, 0xff
/* F7F84 8004EA74 8E04000C */  lw         $a0, 0xc($s0)
/* F7F88 8004EA78 0C028A40 */  jal        func_800A2900
/* F7F8C 8004EA7C 00000000 */   nop
/* F7F90 8004EA80 0C00D8C1 */  jal        func_80036304_DF814
/* F7F94 8004EA84 240420D5 */   addiu     $a0, $zero, 0x20d5
/* F7F98 8004EA88 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F7F9C 8004EA8C C422C17C */  lwc1       $f2, %lo(D_8006C17C)($at)
/* F7FA0 8004EA90 3C013F4C */  lui        $at, 0x3f4c
/* F7FA4 8004EA94 3421CCCD */  ori        $at, $at, 0xcccd
/* F7FA8 8004EA98 44810000 */  mtc1       $at, $f0
/* F7FAC 8004EA9C 00000000 */  nop
/* F7FB0 8004EAA0 46001082 */  mul.s      $f2, $f2, $f0
/* F7FB4 8004EAA4 3C014F00 */  lui        $at, 0x4f00
/* F7FB8 8004EAA8 44810000 */  mtc1       $at, $f0
/* F7FBC 8004EAAC 00000000 */  nop
/* F7FC0 8004EAB0 4602003E */  c.le.s     $f0, $f2
/* F7FC4 8004EAB4 00000000 */  nop
/* F7FC8 8004EAB8 00000000 */  nop
/* F7FCC 8004EABC 45010006 */  bc1t       .L8004EAD8
/* F7FD0 8004EAC0 00408021 */   addu      $s0, $v0, $zero
/* F7FD4 8004EAC4 4600100D */  trunc.w.s  $f0, $f2
/* F7FD8 8004EAC8 44030000 */  mfc1       $v1, $f0
/* F7FDC 8004EACC 00000000 */  nop
/* F7FE0 8004EAD0 08013ABC */  j          .L8004EAF0
/* F7FE4 8004EAD4 306200FF */   andi      $v0, $v1, 0xff
.L8004EAD8:
/* F7FE8 8004EAD8 46001001 */  sub.s      $f0, $f2, $f0
/* F7FEC 8004EADC 4600008D */  trunc.w.s  $f2, $f0
/* F7FF0 8004EAE0 44031000 */  mfc1       $v1, $f2
/* F7FF4 8004EAE4 3C028000 */  lui        $v0, 0x8000
/* F7FF8 8004EAE8 00621825 */  or         $v1, $v1, $v0
/* F7FFC 8004EAEC 306200FF */  andi       $v0, $v1, 0xff
.L8004EAF0:
/* F8000 8004EAF0 AFA20010 */  sw         $v0, 0x10($sp)
/* F8004 8004EAF4 8E04000C */  lw         $a0, 0xc($s0)
/* F8008 8004EAF8 240500FF */  addiu      $a1, $zero, 0xff
/* F800C 8004EAFC 240600FF */  addiu      $a2, $zero, 0xff
/* F8010 8004EB00 0C028E41 */  jal        func_800A3904
/* F8014 8004EB04 240700FF */   addiu     $a3, $zero, 0xff
/* F8018 8004EB08 8E04000C */  lw         $a0, 0xc($s0)
/* F801C 8004EB0C 0C028A40 */  jal        func_800A2900
/* F8020 8004EB10 00000000 */   nop
/* F8024 8004EB14 0C00D8C1 */  jal        func_80036304_DF814
/* F8028 8004EB18 240420CC */   addiu     $a0, $zero, 0x20cc
/* F802C 8004EB1C 3C018007 */  lui        $at, %hi(D_8006C180)
/* F8030 8004EB20 C422C180 */  lwc1       $f2, %lo(D_8006C180)($at)
/* F8034 8004EB24 3C014F00 */  lui        $at, 0x4f00
/* F8038 8004EB28 44810000 */  mtc1       $at, $f0
/* F803C 8004EB2C 00000000 */  nop
/* F8040 8004EB30 4602003E */  c.le.s     $f0, $f2
/* F8044 8004EB34 00000000 */  nop
/* F8048 8004EB38 00000000 */  nop
/* F804C 8004EB3C 45010006 */  bc1t       .L8004EB58
/* F8050 8004EB40 00408021 */   addu      $s0, $v0, $zero
/* F8054 8004EB44 4600100D */  trunc.w.s  $f0, $f2
/* F8058 8004EB48 44030000 */  mfc1       $v1, $f0
/* F805C 8004EB4C 00000000 */  nop
/* F8060 8004EB50 08013ADC */  j          .L8004EB70
/* F8064 8004EB54 306200FF */   andi      $v0, $v1, 0xff
.L8004EB58:
/* F8068 8004EB58 46001001 */  sub.s      $f0, $f2, $f0
/* F806C 8004EB5C 4600008D */  trunc.w.s  $f2, $f0
/* F8070 8004EB60 44031000 */  mfc1       $v1, $f2
/* F8074 8004EB64 3C028000 */  lui        $v0, 0x8000
/* F8078 8004EB68 00621825 */  or         $v1, $v1, $v0
/* F807C 8004EB6C 306200FF */  andi       $v0, $v1, 0xff
.L8004EB70:
/* F8080 8004EB70 AFA20010 */  sw         $v0, 0x10($sp)
/* F8084 8004EB74 8E04000C */  lw         $a0, 0xc($s0)
/* F8088 8004EB78 240500FF */  addiu      $a1, $zero, 0xff
/* F808C 8004EB7C 240600FF */  addiu      $a2, $zero, 0xff
/* F8090 8004EB80 0C028E41 */  jal        func_800A3904
/* F8094 8004EB84 240700FF */   addiu     $a3, $zero, 0xff
/* F8098 8004EB88 8E04000C */  lw         $a0, 0xc($s0)
/* F809C 8004EB8C 0C028A40 */  jal        func_800A2900
/* F80A0 8004EB90 00000000 */   nop
/* F80A4 8004EB94 0C00D8C1 */  jal        func_80036304_DF814
/* F80A8 8004EB98 240420D6 */   addiu     $a0, $zero, 0x20d6
/* F80AC 8004EB9C 3C018007 */  lui        $at, %hi(D_8006C180)
/* F80B0 8004EBA0 C422C180 */  lwc1       $f2, %lo(D_8006C180)($at)
/* F80B4 8004EBA4 3C013F4C */  lui        $at, 0x3f4c
/* F80B8 8004EBA8 3421CCCD */  ori        $at, $at, 0xcccd
/* F80BC 8004EBAC 44810000 */  mtc1       $at, $f0
/* F80C0 8004EBB0 00000000 */  nop
/* F80C4 8004EBB4 46001082 */  mul.s      $f2, $f2, $f0
/* F80C8 8004EBB8 3C014F00 */  lui        $at, 0x4f00
/* F80CC 8004EBBC 44810000 */  mtc1       $at, $f0
/* F80D0 8004EBC0 00000000 */  nop
/* F80D4 8004EBC4 4602003E */  c.le.s     $f0, $f2
/* F80D8 8004EBC8 00000000 */  nop
/* F80DC 8004EBCC 00000000 */  nop
/* F80E0 8004EBD0 45010006 */  bc1t       .L8004EBEC
/* F80E4 8004EBD4 00408021 */   addu      $s0, $v0, $zero
/* F80E8 8004EBD8 4600100D */  trunc.w.s  $f0, $f2
/* F80EC 8004EBDC 44030000 */  mfc1       $v1, $f0
/* F80F0 8004EBE0 00000000 */  nop
/* F80F4 8004EBE4 08013B01 */  j          .L8004EC04
/* F80F8 8004EBE8 306200FF */   andi      $v0, $v1, 0xff
.L8004EBEC:
/* F80FC 8004EBEC 46001001 */  sub.s      $f0, $f2, $f0
/* F8100 8004EBF0 4600008D */  trunc.w.s  $f2, $f0
/* F8104 8004EBF4 44031000 */  mfc1       $v1, $f2
/* F8108 8004EBF8 3C028000 */  lui        $v0, 0x8000
/* F810C 8004EBFC 00621825 */  or         $v1, $v1, $v0
/* F8110 8004EC00 306200FF */  andi       $v0, $v1, 0xff
.L8004EC04:
/* F8114 8004EC04 AFA20010 */  sw         $v0, 0x10($sp)
/* F8118 8004EC08 8E04000C */  lw         $a0, 0xc($s0)
/* F811C 8004EC0C 240500FF */  addiu      $a1, $zero, 0xff
/* F8120 8004EC10 240600FF */  addiu      $a2, $zero, 0xff
/* F8124 8004EC14 0C028E41 */  jal        func_800A3904
/* F8128 8004EC18 240700FF */   addiu     $a3, $zero, 0xff
/* F812C 8004EC1C 8E04000C */  lw         $a0, 0xc($s0)
/* F8130 8004EC20 0C028A40 */  jal        func_800A2900
/* F8134 8004EC24 00000000 */   nop
/* F8138 8004EC28 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F813C 8004EC2C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F8140 8004EC30 2402003C */  addiu      $v0, $zero, 0x3c
/* F8144 8004EC34 0043001A */  div        $zero, $v0, $v1
/* F8148 8004EC38 14600002 */  bnez       $v1, .L8004EC44
/* F814C 8004EC3C 00000000 */   nop
/* F8150 8004EC40 0007000D */  break      7
.L8004EC44:
/* F8154 8004EC44 2401FFFF */   addiu     $at, $zero, -1
/* F8158 8004EC48 14610004 */  bne        $v1, $at, .L8004EC5C
/* F815C 8004EC4C 3C018000 */   lui       $at, 0x8000
/* F8160 8004EC50 14410002 */  bne        $v0, $at, .L8004EC5C
/* F8164 8004EC54 00000000 */   nop
/* F8168 8004EC58 0006000D */  break      6
.L8004EC5C:
/* F816C 8004EC5C 00001012 */   mflo      $v0
/* F8170 8004EC60 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F8174 8004EC64 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F8178 8004EC68 00021040 */  sll        $v0, $v0, 1
/* F817C 8004EC6C 0062182A */  slt        $v1, $v1, $v0
/* F8180 8004EC70 14600014 */  bnez       $v1, .L8004ECC4
/* F8184 8004EC74 00000000 */   nop
/* F8188 8004EC78 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F818C 8004EC7C C424C17C */  lwc1       $f4, %lo(D_8006C17C)($at)
/* F8190 8004EC80 44800000 */  mtc1       $zero, $f0
/* F8194 8004EC84 00000000 */  nop
/* F8198 8004EC88 4604003C */  c.lt.s     $f0, $f4
/* F819C 8004EC8C 00000000 */  nop
/* F81A0 8004EC90 4500000C */  bc1f       .L8004ECC4
/* F81A4 8004EC94 00000000 */   nop
/* F81A8 8004EC98 3C014100 */  lui        $at, 0x4100
/* F81AC 8004EC9C 44810000 */  mtc1       $at, $f0
/* F81B0 8004ECA0 00000000 */  nop
/* F81B4 8004ECA4 46002101 */  sub.s      $f4, $f4, $f0
/* F81B8 8004ECA8 3C018007 */  lui        $at, %hi(D_8006C180)
/* F81BC 8004ECAC C422C180 */  lwc1       $f2, %lo(D_8006C180)($at)
/* F81C0 8004ECB0 46001080 */  add.s      $f2, $f2, $f0
/* F81C4 8004ECB4 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F81C8 8004ECB8 E424C17C */  swc1       $f4, %lo(D_8006C17C)($at)
/* F81CC 8004ECBC 3C018007 */  lui        $at, %hi(D_8006C180)
/* F81D0 8004ECC0 E422C180 */  swc1       $f2, %lo(D_8006C180)($at)
.L8004ECC4:
/* F81D4 8004ECC4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F81D8 8004ECC8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F81DC 8004ECCC 2402003C */  addiu      $v0, $zero, 0x3c
/* F81E0 8004ECD0 0043001A */  div        $zero, $v0, $v1
/* F81E4 8004ECD4 14600002 */  bnez       $v1, .L8004ECE0
/* F81E8 8004ECD8 00000000 */   nop
/* F81EC 8004ECDC 0007000D */  break      7
.L8004ECE0:
/* F81F0 8004ECE0 2401FFFF */   addiu     $at, $zero, -1
/* F81F4 8004ECE4 14610004 */  bne        $v1, $at, .L8004ECF8
/* F81F8 8004ECE8 3C018000 */   lui       $at, 0x8000
/* F81FC 8004ECEC 14410002 */  bne        $v0, $at, .L8004ECF8
/* F8200 8004ECF0 00000000 */   nop
/* F8204 8004ECF4 0006000D */  break      6
.L8004ECF8:
/* F8208 8004ECF8 00001012 */   mflo      $v0
/* F820C 8004ECFC 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F8210 8004ED00 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F8214 8004ED04 00021840 */  sll        $v1, $v0, 1
/* F8218 8004ED08 00621821 */  addu       $v1, $v1, $v0
/* F821C 8004ED0C 00031840 */  sll        $v1, $v1, 1
/* F8220 8004ED10 0083202A */  slt        $a0, $a0, $v1
/* F8224 8004ED14 148003AC */  bnez       $a0, .L8004FBC8
/* F8228 8004ED18 00001021 */   addu      $v0, $zero, $zero
/* F822C 8004ED1C 3C048007 */  lui        $a0, %hi(D_80069270)
/* F8230 8004ED20 0C026E4E */  jal        func_8009B938
/* F8234 8004ED24 24849270 */   addiu     $a0, $a0, %lo(D_80069270)
/* F8238 8004ED28 24020005 */  addiu      $v0, $zero, 5
/* F823C 8004ED2C 08013EF1 */  j          .L8004FBC4
/* F8240 8004ED30 A642001C */   sh        $v0, 0x1c($s2)
.L8004ED34:
/* F8244 8004ED34 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F8248 8004ED38 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F824C 8004ED3C 14400003 */  bnez       $v0, .L8004ED4C
/* F8250 8004ED40 00000000 */   nop
/* F8254 8004ED44 0C013558 */  jal        func_8004D560_F6A70
/* F8258 8004ED48 00000000 */   nop
.L8004ED4C:
/* F825C 8004ED4C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F8260 8004ED50 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F8264 8004ED54 24020002 */  addiu      $v0, $zero, 2
/* F8268 8004ED58 1462039B */  bne        $v1, $v0, .L8004FBC8
/* F826C 8004ED5C 00001021 */   addu      $v0, $zero, $zero
/* F8270 8004ED60 0C02A5AF */  jal        func_800A96BC
/* F8274 8004ED64 24040001 */   addiu     $a0, $zero, 1
/* F8278 8004ED68 3C014080 */  lui        $at, 0x4080
/* F827C 8004ED6C 44810000 */  mtc1       $at, $f0
/* F8280 8004ED70 3C014000 */  lui        $at, 0x4000
/* F8284 8004ED74 44811000 */  mtc1       $at, $f2
/* F8288 8004ED78 3C013F80 */  lui        $at, 0x3f80
/* F828C 8004ED7C 44812000 */  mtc1       $at, $f4
/* F8290 8004ED80 24020006 */  addiu      $v0, $zero, 6
/* F8294 8004ED84 A642001C */  sh         $v0, 0x1c($s2)
/* F8298 8004ED88 3C018007 */  lui        $at, %hi(D_8006C154)
/* F829C 8004ED8C E420C154 */  swc1       $f0, %lo(D_8006C154)($at)
/* F82A0 8004ED90 3C018007 */  lui        $at, %hi(D_8006C160)
/* F82A4 8004ED94 E422C160 */  swc1       $f2, %lo(D_8006C160)($at)
/* F82A8 8004ED98 3C018007 */  lui        $at, %hi(D_8006C16C)
/* F82AC 8004ED9C E424C16C */  swc1       $f4, %lo(D_8006C16C)($at)
/* F82B0 8004EDA0 08013EF2 */  j          .L8004FBC8
/* F82B4 8004EDA4 00001021 */   addu      $v0, $zero, $zero
.L8004EDA8:
/* F82B8 8004EDA8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F82BC 8004EDAC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F82C0 8004EDB0 1440000F */  bnez       $v0, .L8004EDF0
/* F82C4 8004EDB4 24060080 */   addiu     $a2, $zero, 0x80
/* F82C8 8004EDB8 24040057 */  addiu      $a0, $zero, 0x57
/* F82CC 8004EDBC 3C028015 */  lui        $v0, %hi(D_80149F8C)
/* F82D0 8004EDC0 94429F8C */  lhu        $v0, %lo(D_80149F8C)($v0)
/* F82D4 8004EDC4 24070001 */  addiu      $a3, $zero, 1
/* F82D8 8004EDC8 24030064 */  addiu      $v1, $zero, 0x64
/* F82DC 8004EDCC AFA30010 */  sw         $v1, 0x10($sp)
/* F82E0 8004EDD0 00021400 */  sll        $v0, $v0, 0x10
/* F82E4 8004EDD4 00022C03 */  sra        $a1, $v0, 0x10
/* F82E8 8004EDD8 000217C2 */  srl        $v0, $v0, 0x1f
/* F82EC 8004EDDC 00A22821 */  addu       $a1, $a1, $v0
/* F82F0 8004EDE0 0C026E0C */  jal        func_8009B830
/* F82F4 8004EDE4 00052843 */   sra       $a1, $a1, 1
/* F82F8 8004EDE8 3C018007 */  lui        $at, %hi(D_80069270)
/* F82FC 8004EDEC AC229270 */  sw         $v0, %lo(D_80069270)($at)
.L8004EDF0:
/* F8300 8004EDF0 0C00DFD6 */  jal        func_80037F58_E1468
/* F8304 8004EDF4 24040001 */   addiu     $a0, $zero, 1
/* F8308 8004EDF8 3C01C040 */  lui        $at, 0xc040
/* F830C 8004EDFC 4481A000 */  mtc1       $at, $f20
/* F8310 8004EE00 3C018007 */  lui        $at, %hi(D_8006C154)
/* F8314 8004EE04 C420C154 */  lwc1       $f0, %lo(D_8006C154)($at)
/* F8318 8004EE08 00408021 */  addu       $s0, $v0, $zero
/* F831C 8004EE0C 24040001 */  addiu      $a0, $zero, 1
/* F8320 8004EE10 AE000018 */  sw         $zero, 0x18($s0)
/* F8324 8004EE14 E6140010 */  swc1       $f20, 0x10($s0)
/* F8328 8004EE18 0C00E032 */  jal        func_800380C8_E15D8
/* F832C 8004EE1C E6000014 */   swc1      $f0, 0x14($s0)
/* F8330 8004EE20 0C00DFD6 */  jal        func_80037F58_E1468
/* F8334 8004EE24 24040002 */   addiu     $a0, $zero, 2
/* F8338 8004EE28 3C018007 */  lui        $at, %hi(D_8006C154)
/* F833C 8004EE2C C420C154 */  lwc1       $f0, %lo(D_8006C154)($at)
/* F8340 8004EE30 00408021 */  addu       $s0, $v0, $zero
/* F8344 8004EE34 24040002 */  addiu      $a0, $zero, 2
/* F8348 8004EE38 E6140010 */  swc1       $f20, 0x10($s0)
/* F834C 8004EE3C AE000018 */  sw         $zero, 0x18($s0)
/* F8350 8004EE40 0C00E032 */  jal        func_800380C8_E15D8
/* F8354 8004EE44 E6000014 */   swc1      $f0, 0x14($s0)
/* F8358 8004EE48 0C00DFD6 */  jal        func_80037F58_E1468
/* F835C 8004EE4C 24040003 */   addiu     $a0, $zero, 3
/* F8360 8004EE50 3C018007 */  lui        $at, %hi(D_8006C160)
/* F8364 8004EE54 C420C160 */  lwc1       $f0, %lo(D_8006C160)($at)
/* F8368 8004EE58 3C013FC0 */  lui        $at, 0x3fc0
/* F836C 8004EE5C 44811000 */  mtc1       $at, $f2
/* F8370 8004EE60 00408021 */  addu       $s0, $v0, $zero
/* F8374 8004EE64 3C01C120 */  lui        $at, 0xc120
/* F8378 8004EE68 44812000 */  mtc1       $at, $f4
/* F837C 8004EE6C 46020001 */  sub.s      $f0, $f0, $f2
/* F8380 8004EE70 24040003 */  addiu      $a0, $zero, 3
/* F8384 8004EE74 AE000018 */  sw         $zero, 0x18($s0)
/* F8388 8004EE78 E6040010 */  swc1       $f4, 0x10($s0)
/* F838C 8004EE7C 0C00E032 */  jal        func_800380C8_E15D8
/* F8390 8004EE80 E6000014 */   swc1      $f0, 0x14($s0)
/* F8394 8004EE84 0C00DFD6 */  jal        func_80037F58_E1468
/* F8398 8004EE88 24040004 */   addiu     $a0, $zero, 4
/* F839C 8004EE8C 3C014128 */  lui        $at, 0x4128
/* F83A0 8004EE90 44810000 */  mtc1       $at, $f0
/* F83A4 8004EE94 3C018007 */  lui        $at, %hi(D_8006C160)
/* F83A8 8004EE98 C422C160 */  lwc1       $f2, %lo(D_8006C160)($at)
/* F83AC 8004EE9C 3C01C0A0 */  lui        $at, 0xc0a0
/* F83B0 8004EEA0 44812000 */  mtc1       $at, $f4
/* F83B4 8004EEA4 00408021 */  addu       $s0, $v0, $zero
/* F83B8 8004EEA8 24040004 */  addiu      $a0, $zero, 4
/* F83BC 8004EEAC E6000010 */  swc1       $f0, 0x10($s0)
/* F83C0 8004EEB0 E6020014 */  swc1       $f2, 0x14($s0)
/* F83C4 8004EEB4 0C00E032 */  jal        func_800380C8_E15D8
/* F83C8 8004EEB8 E6040018 */   swc1      $f4, 0x18($s0)
/* F83CC 8004EEBC 0C00DFD6 */  jal        func_80037F58_E1468
/* F83D0 8004EEC0 24040005 */   addiu     $a0, $zero, 5
/* F83D4 8004EEC4 00408021 */  addu       $s0, $v0, $zero
/* F83D8 8004EEC8 3C018007 */  lui        $at, %hi(D_8006C16C)
/* F83DC 8004EECC C420C16C */  lwc1       $f0, %lo(D_8006C16C)($at)
/* F83E0 8004EED0 3C014000 */  lui        $at, 0x4000
/* F83E4 8004EED4 44811000 */  mtc1       $at, $f2
/* F83E8 8004EED8 3C014040 */  lui        $at, 0x4040
/* F83EC 8004EEDC 44812000 */  mtc1       $at, $f4
/* F83F0 8004EEE0 3C01C140 */  lui        $at, 0xc140
/* F83F4 8004EEE4 44813000 */  mtc1       $at, $f6
/* F83F8 8004EEE8 46020001 */  sub.s      $f0, $f0, $f2
/* F83FC 8004EEEC 24040005 */  addiu      $a0, $zero, 5
/* F8400 8004EEF0 E6040010 */  swc1       $f4, 0x10($s0)
/* F8404 8004EEF4 E6060018 */  swc1       $f6, 0x18($s0)
/* F8408 8004EEF8 0C00E032 */  jal        func_800380C8_E15D8
/* F840C 8004EEFC E6000014 */   swc1      $f0, 0x14($s0)
/* F8410 8004EF00 3C018007 */  lui        $at, %hi(D_8006C154)
/* F8414 8004EF04 C426C154 */  lwc1       $f6, %lo(D_8006C154)($at)
/* F8418 8004EF08 3C013D0F */  lui        $at, 0x3d0f
/* F841C 8004EF0C 34215C29 */  ori        $at, $at, 0x5c29
/* F8420 8004EF10 44810000 */  mtc1       $at, $f0
/* F8424 8004EF14 3C018007 */  lui        $at, %hi(D_8006C160)
/* F8428 8004EF18 C424C160 */  lwc1       $f4, %lo(D_8006C160)($at)
/* F842C 8004EF1C 46003181 */  sub.s      $f6, $f6, $f0
/* F8430 8004EF20 3C013CB8 */  lui        $at, 0x3cb8
/* F8434 8004EF24 342151EC */  ori        $at, $at, 0x51ec
/* F8438 8004EF28 44810000 */  mtc1       $at, $f0
/* F843C 8004EF2C 3C018007 */  lui        $at, %hi(D_8006C16C)
/* F8440 8004EF30 C422C16C */  lwc1       $f2, %lo(D_8006C16C)($at)
/* F8444 8004EF34 46002101 */  sub.s      $f4, $f4, $f0
/* F8448 8004EF38 3C013C8F */  lui        $at, 0x3c8f
/* F844C 8004EF3C 34215C29 */  ori        $at, $at, 0x5c29
/* F8450 8004EF40 44810000 */  mtc1       $at, $f0
/* F8454 8004EF44 00000000 */  nop
/* F8458 8004EF48 46001081 */  sub.s      $f2, $f2, $f0
/* F845C 8004EF4C 3C018007 */  lui        $at, %hi(D_8006C154)
/* F8460 8004EF50 E426C154 */  swc1       $f6, %lo(D_8006C154)($at)
/* F8464 8004EF54 3C018007 */  lui        $at, %hi(D_8006C160)
/* F8468 8004EF58 E424C160 */  swc1       $f4, %lo(D_8006C160)($at)
/* F846C 8004EF5C 3C018007 */  lui        $at, %hi(D_8006C16C)
/* F8470 8004EF60 E422C16C */  swc1       $f2, %lo(D_8006C16C)($at)
/* F8474 8004EF64 0C00D8C1 */  jal        func_80036304_DF814
/* F8478 8004EF68 24040021 */   addiu     $a0, $zero, 0x21
/* F847C 8004EF6C 8C44000C */  lw         $a0, 0xc($v0)
/* F8480 8004EF70 0C028A40 */  jal        func_800A2900
/* F8484 8004EF74 00008021 */   addu      $s0, $zero, $zero
/* F8488 8004EF78 2604003B */  addiu      $a0, $s0, 0x3b
.L8004EF7C:
/* F848C 8004EF7C 0C00D8C1 */  jal        func_80036304_DF814
/* F8490 8004EF80 3084FFFF */   andi      $a0, $a0, 0xffff
/* F8494 8004EF84 8C44000C */  lw         $a0, 0xc($v0)
/* F8498 8004EF88 0C028A40 */  jal        func_800A2900
/* F849C 8004EF8C 26100001 */   addiu     $s0, $s0, 1
/* F84A0 8004EF90 3202FFFF */  andi       $v0, $s0, 0xffff
/* F84A4 8004EF94 2C420020 */  sltiu      $v0, $v0, 0x20
/* F84A8 8004EF98 1440FFF8 */  bnez       $v0, .L8004EF7C
/* F84AC 8004EF9C 2604003B */   addiu     $a0, $s0, 0x3b
/* F84B0 8004EFA0 0C00D8C1 */  jal        func_80036304_DF814
/* F84B4 8004EFA4 2404001F */   addiu     $a0, $zero, 0x1f
/* F84B8 8004EFA8 8C44000C */  lw         $a0, 0xc($v0)
/* F84BC 8004EFAC 0C028A40 */  jal        func_800A2900
/* F84C0 8004EFB0 00000000 */   nop
/* F84C4 8004EFB4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F84C8 8004EFB8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F84CC 8004EFBC 2402003C */  addiu      $v0, $zero, 0x3c
/* F84D0 8004EFC0 0043001A */  div        $zero, $v0, $v1
/* F84D4 8004EFC4 14600002 */  bnez       $v1, .L8004EFD0
/* F84D8 8004EFC8 00000000 */   nop
/* F84DC 8004EFCC 0007000D */  break      7
.L8004EFD0:
/* F84E0 8004EFD0 2401FFFF */   addiu     $at, $zero, -1
/* F84E4 8004EFD4 14610004 */  bne        $v1, $at, .L8004EFE8
/* F84E8 8004EFD8 3C018000 */   lui       $at, 0x8000
/* F84EC 8004EFDC 14410002 */  bne        $v0, $at, .L8004EFE8
/* F84F0 8004EFE0 00000000 */   nop
/* F84F4 8004EFE4 0006000D */  break      6
.L8004EFE8:
/* F84F8 8004EFE8 00001012 */   mflo      $v0
/* F84FC 8004EFEC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F8500 8004EFF0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F8504 8004EFF4 000210C0 */  sll        $v0, $v0, 3
/* F8508 8004EFF8 0062182A */  slt        $v1, $v1, $v0
/* F850C 8004EFFC 146002F2 */  bnez       $v1, .L8004FBC8
/* F8510 8004F000 00001021 */   addu      $v0, $zero, $zero
/* F8514 8004F004 24020007 */  addiu      $v0, $zero, 7
/* F8518 8004F008 08013EF1 */  j          .L8004FBC4
/* F851C 8004F00C A642001C */   sh        $v0, 0x1c($s2)
.L8004F010:
/* F8520 8004F010 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F8524 8004F014 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F8528 8004F018 14400003 */  bnez       $v0, .L8004F028
/* F852C 8004F01C 00000000 */   nop
/* F8530 8004F020 0C013686 */  jal        func_8004DA18_F6F28
/* F8534 8004F024 00000000 */   nop
.L8004F028:
/* F8538 8004F028 0C02A5AF */  jal        func_800A96BC
/* F853C 8004F02C 24040001 */   addiu     $a0, $zero, 1
/* F8540 8004F030 24020008 */  addiu      $v0, $zero, 8
/* F8544 8004F034 3C018007 */  lui        $at, %hi(D_8006C154)
/* F8548 8004F038 AC20C154 */  sw         $zero, %lo(D_8006C154)($at)
/* F854C 8004F03C A642001C */  sh         $v0, 0x1c($s2)
.L8004F040:
/* F8550 8004F040 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F8554 8004F044 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F8558 8004F048 14400006 */  bnez       $v0, .L8004F064
/* F855C 8004F04C 00000000 */   nop
/* F8560 8004F050 3C048007 */  lui        $a0, %hi(D_80069270)
/* F8564 8004F054 8C849270 */  lw         $a0, %lo(D_80069270)($a0)
/* F8568 8004F058 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* F856C 8004F05C 0C026E66 */  jal        func_8009B998
/* F8570 8004F060 84A59F8C */   lh        $a1, %lo(D_80149F8C)($a1)
.L8004F064:
/* F8574 8004F064 0C00DFD6 */  jal        func_80037F58_E1468
/* F8578 8004F068 24040006 */   addiu     $a0, $zero, 6
/* F857C 8004F06C 3C01C000 */  lui        $at, 0xc000
/* F8580 8004F070 44810000 */  mtc1       $at, $f0
/* F8584 8004F074 3C018007 */  lui        $at, %hi(D_8006C154)
/* F8588 8004F078 C422C154 */  lwc1       $f2, %lo(D_8006C154)($at)
/* F858C 8004F07C 00408021 */  addu       $s0, $v0, $zero
/* F8590 8004F080 24040006 */  addiu      $a0, $zero, 6
/* F8594 8004F084 AE000018 */  sw         $zero, 0x18($s0)
/* F8598 8004F088 E6000010 */  swc1       $f0, 0x10($s0)
/* F859C 8004F08C 0C00E032 */  jal        func_800380C8_E15D8
/* F85A0 8004F090 E6020014 */   swc1      $f2, 0x14($s0)
/* F85A4 8004F094 3C018007 */  lui        $at, %hi(D_8006C154)
/* F85A8 8004F098 C420C154 */  lwc1       $f0, %lo(D_8006C154)($at)
/* F85AC 8004F09C 3C013D75 */  lui        $at, 0x3d75
/* F85B0 8004F0A0 3421C28F */  ori        $at, $at, 0xc28f
/* F85B4 8004F0A4 44811000 */  mtc1       $at, $f2
/* F85B8 8004F0A8 00000000 */  nop
/* F85BC 8004F0AC 46020001 */  sub.s      $f0, $f0, $f2
/* F85C0 8004F0B0 3C018007 */  lui        $at, %hi(D_8006C154)
/* F85C4 8004F0B4 E420C154 */  swc1       $f0, %lo(D_8006C154)($at)
/* F85C8 8004F0B8 0C00D8C1 */  jal        func_80036304_DF814
/* F85CC 8004F0BC 24040022 */   addiu     $a0, $zero, 0x22
/* F85D0 8004F0C0 8C44000C */  lw         $a0, 0xc($v0)
/* F85D4 8004F0C4 0C028A40 */  jal        func_800A2900
/* F85D8 8004F0C8 00000000 */   nop
/* F85DC 8004F0CC 0C00D8C1 */  jal        func_80036304_DF814
/* F85E0 8004F0D0 24040023 */   addiu     $a0, $zero, 0x23
/* F85E4 8004F0D4 8C44000C */  lw         $a0, 0xc($v0)
/* F85E8 8004F0D8 0C028A40 */  jal        func_800A2900
/* F85EC 8004F0DC 00000000 */   nop
/* F85F0 8004F0E0 0C00D8C1 */  jal        func_80036304_DF814
/* F85F4 8004F0E4 24040024 */   addiu     $a0, $zero, 0x24
/* F85F8 8004F0E8 8C44000C */  lw         $a0, 0xc($v0)
/* F85FC 8004F0EC 0C028A40 */  jal        func_800A2900
/* F8600 8004F0F0 00000000 */   nop
/* F8604 8004F0F4 0C00D8C1 */  jal        func_80036304_DF814
/* F8608 8004F0F8 24040025 */   addiu     $a0, $zero, 0x25
/* F860C 8004F0FC 8C44000C */  lw         $a0, 0xc($v0)
/* F8610 8004F100 0C028A40 */  jal        func_800A2900
/* F8614 8004F104 00000000 */   nop
/* F8618 8004F108 0C00D8C1 */  jal        func_80036304_DF814
/* F861C 8004F10C 24040026 */   addiu     $a0, $zero, 0x26
/* F8620 8004F110 8C44000C */  lw         $a0, 0xc($v0)
/* F8624 8004F114 0C028A40 */  jal        func_800A2900
/* F8628 8004F118 00000000 */   nop
/* F862C 8004F11C 0C00D8C1 */  jal        func_80036304_DF814
/* F8630 8004F120 24040027 */   addiu     $a0, $zero, 0x27
/* F8634 8004F124 8C44000C */  lw         $a0, 0xc($v0)
/* F8638 8004F128 0C028A40 */  jal        func_800A2900
/* F863C 8004F12C 00000000 */   nop
/* F8640 8004F130 0C00D8C1 */  jal        func_80036304_DF814
/* F8644 8004F134 24040028 */   addiu     $a0, $zero, 0x28
/* F8648 8004F138 8C44000C */  lw         $a0, 0xc($v0)
/* F864C 8004F13C 0C028A40 */  jal        func_800A2900
/* F8650 8004F140 00000000 */   nop
/* F8654 8004F144 0C00D8C1 */  jal        func_80036304_DF814
/* F8658 8004F148 24040029 */   addiu     $a0, $zero, 0x29
/* F865C 8004F14C 8C44000C */  lw         $a0, 0xc($v0)
/* F8660 8004F150 0C028A40 */  jal        func_800A2900
/* F8664 8004F154 00000000 */   nop
/* F8668 8004F158 0C00D8C1 */  jal        func_80036304_DF814
/* F866C 8004F15C 2404002A */   addiu     $a0, $zero, 0x2a
/* F8670 8004F160 8C44000C */  lw         $a0, 0xc($v0)
/* F8674 8004F164 0C028A40 */  jal        func_800A2900
/* F8678 8004F168 00000000 */   nop
/* F867C 8004F16C 0C00D8C1 */  jal        func_80036304_DF814
/* F8680 8004F170 2404002B */   addiu     $a0, $zero, 0x2b
/* F8684 8004F174 8C44000C */  lw         $a0, 0xc($v0)
/* F8688 8004F178 0C028A40 */  jal        func_800A2900
/* F868C 8004F17C 00000000 */   nop
/* F8690 8004F180 0C00D8C1 */  jal        func_80036304_DF814
/* F8694 8004F184 2404002C */   addiu     $a0, $zero, 0x2c
/* F8698 8004F188 8C44000C */  lw         $a0, 0xc($v0)
/* F869C 8004F18C 0C028A40 */  jal        func_800A2900
/* F86A0 8004F190 00000000 */   nop
/* F86A4 8004F194 0C00D8C1 */  jal        func_80036304_DF814
/* F86A8 8004F198 2404002D */   addiu     $a0, $zero, 0x2d
/* F86AC 8004F19C 8C44000C */  lw         $a0, 0xc($v0)
/* F86B0 8004F1A0 0C028A40 */  jal        func_800A2900
/* F86B4 8004F1A4 00000000 */   nop
/* F86B8 8004F1A8 0C00D8C1 */  jal        func_80036304_DF814
/* F86BC 8004F1AC 2404002E */   addiu     $a0, $zero, 0x2e
/* F86C0 8004F1B0 8C44000C */  lw         $a0, 0xc($v0)
/* F86C4 8004F1B4 0C028A40 */  jal        func_800A2900
/* F86C8 8004F1B8 00000000 */   nop
/* F86CC 8004F1BC 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F86D0 8004F1C0 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F86D4 8004F1C4 2402003C */  addiu      $v0, $zero, 0x3c
/* F86D8 8004F1C8 0043001A */  div        $zero, $v0, $v1
/* F86DC 8004F1CC 14600002 */  bnez       $v1, .L8004F1D8
/* F86E0 8004F1D0 00000000 */   nop
/* F86E4 8004F1D4 0007000D */  break      7
.L8004F1D8:
/* F86E8 8004F1D8 2401FFFF */   addiu     $at, $zero, -1
/* F86EC 8004F1DC 14610004 */  bne        $v1, $at, .L8004F1F0
/* F86F0 8004F1E0 3C018000 */   lui       $at, 0x8000
/* F86F4 8004F1E4 14410002 */  bne        $v0, $at, .L8004F1F0
/* F86F8 8004F1E8 00000000 */   nop
/* F86FC 8004F1EC 0006000D */  break      6
.L8004F1F0:
/* F8700 8004F1F0 00001012 */   mflo      $v0
/* F8704 8004F1F4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F8708 8004F1F8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F870C 8004F1FC 000210C0 */  sll        $v0, $v0, 3
/* F8710 8004F200 0062182A */  slt        $v1, $v1, $v0
/* F8714 8004F204 14600270 */  bnez       $v1, .L8004FBC8
/* F8718 8004F208 00001021 */   addu      $v0, $zero, $zero
/* F871C 8004F20C 3C048007 */  lui        $a0, %hi(D_80069270)
/* F8720 8004F210 0C026E4E */  jal        func_8009B938
/* F8724 8004F214 24849270 */   addiu     $a0, $a0, %lo(D_80069270)
/* F8728 8004F218 24020009 */  addiu      $v0, $zero, 9
/* F872C 8004F21C 08013EF1 */  j          .L8004FBC4
/* F8730 8004F220 A642001C */   sh        $v0, 0x1c($s2)
.L8004F224:
/* F8734 8004F224 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F8738 8004F228 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F873C 8004F22C 14400003 */  bnez       $v0, .L8004F23C
/* F8740 8004F230 00000000 */   nop
/* F8744 8004F234 0C01374C */  jal        func_8004DD30_F7240
/* F8748 8004F238 00000000 */   nop
.L8004F23C:
/* F874C 8004F23C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F8750 8004F240 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F8754 8004F244 24020002 */  addiu      $v0, $zero, 2
/* F8758 8004F248 1462025F */  bne        $v1, $v0, .L8004FBC8
/* F875C 8004F24C 00001021 */   addu      $v0, $zero, $zero
/* F8760 8004F250 0C02A5AF */  jal        func_800A96BC
/* F8764 8004F254 24040001 */   addiu     $a0, $zero, 1
/* F8768 8004F258 3C014316 */  lui        $at, 0x4316
/* F876C 8004F25C 44810000 */  mtc1       $at, $f0
/* F8770 8004F260 2402000A */  addiu      $v0, $zero, 0xa
/* F8774 8004F264 A642001C */  sh         $v0, 0x1c($s2)
/* F8778 8004F268 3C018007 */  lui        $at, %hi(D_8006C158)
/* F877C 8004F26C E420C158 */  swc1       $f0, %lo(D_8006C158)($at)
/* F8780 8004F270 08013EF2 */  j          .L8004FBC8
/* F8784 8004F274 00001021 */   addu      $v0, $zero, $zero
.L8004F278:
/* F8788 8004F278 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F878C 8004F27C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F8790 8004F280 0222001A */  div        $zero, $s1, $v0
/* F8794 8004F284 14400002 */  bnez       $v0, .L8004F290
/* F8798 8004F288 00000000 */   nop
/* F879C 8004F28C 0007000D */  break      7
.L8004F290:
/* F87A0 8004F290 2401FFFF */   addiu     $at, $zero, -1
/* F87A4 8004F294 14410004 */  bne        $v0, $at, .L8004F2A8
/* F87A8 8004F298 3C018000 */   lui       $at, 0x8000
/* F87AC 8004F29C 16210002 */  bne        $s1, $at, .L8004F2A8
/* F87B0 8004F2A0 00000000 */   nop
/* F87B4 8004F2A4 0006000D */  break      6
.L8004F2A8:
/* F87B8 8004F2A8 00001012 */   mflo      $v0
/* F87BC 8004F2AC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F87C0 8004F2B0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F87C4 8004F2B4 14620005 */  bne        $v1, $v0, .L8004F2CC
/* F87C8 8004F2B8 00000000 */   nop
/* F87CC 8004F2BC 0C026DD5 */  jal        func_8009B754
/* F87D0 8004F2C0 24040059 */   addiu     $a0, $zero, 0x59
/* F87D4 8004F2C4 3C018007 */  lui        $at, %hi(D_80069270)
/* F87D8 8004F2C8 AC229270 */  sw         $v0, %lo(D_80069270)($at)
.L8004F2CC:
/* F87DC 8004F2CC 0C00DFD6 */  jal        func_80037F58_E1468
/* F87E0 8004F2D0 24040007 */   addiu     $a0, $zero, 7
/* F87E4 8004F2D4 3C018007 */  lui        $at, %hi(D_8006C158)
/* F87E8 8004F2D8 C420C158 */  lwc1       $f0, %lo(D_8006C158)($at)
/* F87EC 8004F2DC 00408021 */  addu       $s0, $v0, $zero
/* F87F0 8004F2E0 24040007 */  addiu      $a0, $zero, 7
/* F87F4 8004F2E4 AE000010 */  sw         $zero, 0x10($s0)
/* F87F8 8004F2E8 AE000014 */  sw         $zero, 0x14($s0)
/* F87FC 8004F2EC 0C00E032 */  jal        func_800380C8_E15D8
/* F8800 8004F2F0 E6000018 */   swc1      $f0, 0x18($s0)
/* F8804 8004F2F4 3C018007 */  lui        $at, %hi(D_8006C158)
/* F8808 8004F2F8 C420C158 */  lwc1       $f0, %lo(D_8006C158)($at)
/* F880C 8004F2FC 3C013F80 */  lui        $at, 0x3f80
/* F8810 8004F300 44811000 */  mtc1       $at, $f2
/* F8814 8004F304 00000000 */  nop
/* F8818 8004F308 46020001 */  sub.s      $f0, $f0, $f2
/* F881C 8004F30C 3C018007 */  lui        $at, %hi(D_8006C158)
/* F8820 8004F310 E420C158 */  swc1       $f0, %lo(D_8006C158)($at)
/* F8824 8004F314 0C00D8C1 */  jal        func_80036304_DF814
/* F8828 8004F318 24040021 */   addiu     $a0, $zero, 0x21
/* F882C 8004F31C 8C44000C */  lw         $a0, 0xc($v0)
/* F8830 8004F320 0C028A40 */  jal        func_800A2900
/* F8834 8004F324 00000000 */   nop
/* F8838 8004F328 0C00D8C1 */  jal        func_80036304_DF814
/* F883C 8004F32C 2404002F */   addiu     $a0, $zero, 0x2f
/* F8840 8004F330 8C44000C */  lw         $a0, 0xc($v0)
/* F8844 8004F334 0C028A40 */  jal        func_800A2900
/* F8848 8004F338 00000000 */   nop
/* F884C 8004F33C 0C00D8C1 */  jal        func_80036304_DF814
/* F8850 8004F340 24040030 */   addiu     $a0, $zero, 0x30
/* F8854 8004F344 8C44000C */  lw         $a0, 0xc($v0)
/* F8858 8004F348 0C028A40 */  jal        func_800A2900
/* F885C 8004F34C 00000000 */   nop
/* F8860 8004F350 0C00D8C1 */  jal        func_80036304_DF814
/* F8864 8004F354 24040031 */   addiu     $a0, $zero, 0x31
/* F8868 8004F358 8C44000C */  lw         $a0, 0xc($v0)
/* F886C 8004F35C 0C028A40 */  jal        func_800A2900
/* F8870 8004F360 00000000 */   nop
/* F8874 8004F364 0C00D8C1 */  jal        func_80036304_DF814
/* F8878 8004F368 24040032 */   addiu     $a0, $zero, 0x32
/* F887C 8004F36C 8C44000C */  lw         $a0, 0xc($v0)
/* F8880 8004F370 0C028A40 */  jal        func_800A2900
/* F8884 8004F374 00000000 */   nop
/* F8888 8004F378 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F888C 8004F37C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F8890 8004F380 0222001A */  div        $zero, $s1, $v0
/* F8894 8004F384 14400002 */  bnez       $v0, .L8004F390
/* F8898 8004F388 00000000 */   nop
/* F889C 8004F38C 0007000D */  break      7
.L8004F390:
/* F88A0 8004F390 2401FFFF */   addiu     $at, $zero, -1
/* F88A4 8004F394 14410004 */  bne        $v0, $at, .L8004F3A8
/* F88A8 8004F398 3C018000 */   lui       $at, 0x8000
/* F88AC 8004F39C 16210002 */  bne        $s1, $at, .L8004F3A8
/* F88B0 8004F3A0 00000000 */   nop
/* F88B4 8004F3A4 0006000D */  break      6
.L8004F3A8:
/* F88B8 8004F3A8 00001012 */   mflo      $v0
/* F88BC 8004F3AC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F88C0 8004F3B0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F88C4 8004F3B4 000210C0 */  sll        $v0, $v0, 3
/* F88C8 8004F3B8 0062182A */  slt        $v1, $v1, $v0
/* F88CC 8004F3BC 14600202 */  bnez       $v1, .L8004FBC8
/* F88D0 8004F3C0 00001021 */   addu      $v0, $zero, $zero
/* F88D4 8004F3C4 3C048007 */  lui        $a0, %hi(D_80069270)
/* F88D8 8004F3C8 0C026E4E */  jal        func_8009B938
/* F88DC 8004F3CC 24849270 */   addiu     $a0, $a0, %lo(D_80069270)
/* F88E0 8004F3D0 2402000B */  addiu      $v0, $zero, 0xb
/* F88E4 8004F3D4 08013EF1 */  j          .L8004FBC4
/* F88E8 8004F3D8 A642001C */   sh        $v0, 0x1c($s2)
.L8004F3DC:
/* F88EC 8004F3DC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F88F0 8004F3E0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F88F4 8004F3E4 14400003 */  bnez       $v0, .L8004F3F4
/* F88F8 8004F3E8 00000000 */   nop
/* F88FC 8004F3EC 0C0137C8 */  jal        func_8004DF20_F7430
/* F8900 8004F3F0 00000000 */   nop
.L8004F3F4:
/* F8904 8004F3F4 0C02A5AF */  jal        func_800A96BC
/* F8908 8004F3F8 24040001 */   addiu     $a0, $zero, 1
/* F890C 8004F3FC 3C014240 */  lui        $at, 0x4240
/* F8910 8004F400 44810000 */  mtc1       $at, $f0
/* F8914 8004F404 2403000C */  addiu      $v1, $zero, 0xc
/* F8918 8004F408 3C018007 */  lui        $at, %hi(D_8006C154)
/* F891C 8004F40C AC20C154 */  sw         $zero, %lo(D_8006C154)($at)
/* F8920 8004F410 A643001C */  sh         $v1, 0x1c($s2)
/* F8924 8004F414 3C018007 */  lui        $at, %hi(D_8006C150)
/* F8928 8004F418 E420C150 */  swc1       $f0, %lo(D_8006C150)($at)
/* F892C 8004F41C 08013EF2 */  j          .L8004FBC8
/* F8930 8004F420 00001021 */   addu      $v0, $zero, $zero
.L8004F424:
/* F8934 8004F424 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F8938 8004F428 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F893C 8004F42C 1440000E */  bnez       $v0, .L8004F468
/* F8940 8004F430 00000000 */   nop
/* F8944 8004F434 0C026DD5 */  jal        func_8009B754
/* F8948 8004F438 24040038 */   addiu     $a0, $zero, 0x38
/* F894C 8004F43C 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* F8950 8004F440 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* F8954 8004F444 00402021 */  addu       $a0, $v0, $zero
/* F8958 8004F448 3C018007 */  lui        $at, %hi(D_80069270)
/* F895C 8004F44C AC249270 */  sw         $a0, %lo(D_80069270)($at)
/* F8960 8004F450 00031C00 */  sll        $v1, $v1, 0x10
/* F8964 8004F454 00032C03 */  sra        $a1, $v1, 0x10
/* F8968 8004F458 00031FC2 */  srl        $v1, $v1, 0x1f
/* F896C 8004F45C 00A32821 */  addu       $a1, $a1, $v1
/* F8970 8004F460 0C026E66 */  jal        func_8009B998
/* F8974 8004F464 00052843 */   sra       $a1, $a1, 1
.L8004F468:
/* F8978 8004F468 3C028017 */  lui        $v0, %hi(D_8016D168)
/* F897C 8004F46C 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* F8980 8004F470 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F8984 8004F474 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F8988 8004F478 00021040 */  sll        $v0, $v0, 1
/* F898C 8004F47C 14620003 */  bne        $v1, $v0, .L8004F48C
/* F8990 8004F480 00000000 */   nop
/* F8994 8004F484 0C026DD5 */  jal        func_8009B754
/* F8998 8004F488 240400EA */   addiu     $a0, $zero, 0xea
.L8004F48C:
/* F899C 8004F48C 3C028017 */  lui        $v0, %hi(D_8016D168)
/* F89A0 8004F490 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* F89A4 8004F494 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F89A8 8004F498 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F89AC 8004F49C 00021040 */  sll        $v0, $v0, 1
/* F89B0 8004F4A0 0062182A */  slt        $v1, $v1, $v0
/* F89B4 8004F4A4 1460000B */  bnez       $v1, .L8004F4D4
/* F89B8 8004F4A8 00000000 */   nop
/* F89BC 8004F4AC 0C00D8C1 */  jal        func_80036304_DF814
/* F89C0 8004F4B0 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F89C4 8004F4B4 8C44000C */  lw         $a0, 0xc($v0)
/* F89C8 8004F4B8 0C028A40 */  jal        func_800A2900
/* F89CC 8004F4BC 00000000 */   nop
/* F89D0 8004F4C0 0C00D8C1 */  jal        func_80036304_DF814
/* F89D4 8004F4C4 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F89D8 8004F4C8 8C44000C */  lw         $a0, 0xc($v0)
/* F89DC 8004F4CC 0C028A40 */  jal        func_800A2900
/* F89E0 8004F4D0 00000000 */   nop
.L8004F4D4:
/* F89E4 8004F4D4 0C00DFD6 */  jal        func_80037F58_E1468
/* F89E8 8004F4D8 24040007 */   addiu     $a0, $zero, 7
/* F89EC 8004F4DC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F89F0 8004F4E0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F89F4 8004F4E4 00408021 */  addu       $s0, $v0, $zero
/* F89F8 8004F4E8 AE00001C */  sw         $zero, 0x1c($s0)
/* F89FC 8004F4EC AE000020 */  sw         $zero, 0x20($s0)
/* F8A00 8004F4F0 00032040 */  sll        $a0, $v1, 1
/* F8A04 8004F4F4 00832021 */  addu       $a0, $a0, $v1
/* F8A08 8004F4F8 000420C0 */  sll        $a0, $a0, 3
/* F8A0C 8004F4FC 00832023 */  subu       $a0, $a0, $v1
/* F8A10 8004F500 00042080 */  sll        $a0, $a0, 2
/* F8A14 8004F504 00832023 */  subu       $a0, $a0, $v1
/* F8A18 8004F508 00042040 */  sll        $a0, $a0, 1
/* F8A1C 8004F50C 0C02FFD0 */  jal        func_800BFF40
/* F8A20 8004F510 3084FFFE */   andi      $a0, $a0, 0xfffe
/* F8A24 8004F514 00021400 */  sll        $v0, $v0, 0x10
/* F8A28 8004F518 00021403 */  sra        $v0, $v0, 0x10
/* F8A2C 8004F51C 04420001 */  bltzl      $v0, .L8004F524
/* F8A30 8004F520 24421FFF */   addiu     $v0, $v0, 0x1fff
.L8004F524:
/* F8A34 8004F524 24040007 */  addiu      $a0, $zero, 7
/* F8A38 8004F528 00021343 */  sra        $v0, $v0, 0xd
/* F8A3C 8004F52C 44820000 */  mtc1       $v0, $f0
/* F8A40 8004F530 00000000 */  nop
/* F8A44 8004F534 46800020 */  cvt.s.w    $f0, $f0
/* F8A48 8004F538 0C00E032 */  jal        func_800380C8_E15D8
/* F8A4C 8004F53C E6000024 */   swc1      $f0, 0x24($s0)
/* F8A50 8004F540 0C00D8C1 */  jal        func_80036304_DF814
/* F8A54 8004F544 24040033 */   addiu     $a0, $zero, 0x33
/* F8A58 8004F548 3C018007 */  lui        $at, %hi(D_8006C150)
/* F8A5C 8004F54C C422C150 */  lwc1       $f2, %lo(D_8006C150)($at)
/* F8A60 8004F550 3C01C3F8 */  lui        $at, 0xc3f8
/* F8A64 8004F554 44810000 */  mtc1       $at, $f0
/* F8A68 8004F558 00000000 */  nop
/* F8A6C 8004F55C 46001080 */  add.s      $f2, $f2, $f0
/* F8A70 8004F560 3C014080 */  lui        $at, 0x4080
/* F8A74 8004F564 44813000 */  mtc1       $at, $f6
/* F8A78 8004F568 3C014180 */  lui        $at, 0x4180
/* F8A7C 8004F56C 44812000 */  mtc1       $at, $f4
/* F8A80 8004F570 3C018007 */  lui        $at, %hi(D_8006C154)
/* F8A84 8004F574 C420C154 */  lwc1       $f0, %lo(D_8006C154)($at)
/* F8A88 8004F578 46061082 */  mul.s      $f2, $f2, $f6
/* F8A8C 8004F57C 46040000 */  add.s      $f0, $f0, $f4
/* F8A90 8004F580 46060002 */  mul.s      $f0, $f0, $f6
/* F8A94 8004F584 00408021 */  addu       $s0, $v0, $zero
/* F8A98 8004F588 8E04000C */  lw         $a0, 0xc($s0)
/* F8A9C 8004F58C 4600110D */  trunc.w.s  $f4, $f2
/* F8AA0 8004F590 44052000 */  mfc1       $a1, $f4
/* F8AA4 8004F594 00000000 */  nop
/* F8AA8 8004F598 00052C00 */  sll        $a1, $a1, 0x10
/* F8AAC 8004F59C 00052C03 */  sra        $a1, $a1, 0x10
/* F8AB0 8004F5A0 4600008D */  trunc.w.s  $f2, $f0
/* F8AB4 8004F5A4 44061000 */  mfc1       $a2, $f2
/* F8AB8 8004F5A8 00000000 */  nop
/* F8ABC 8004F5AC 00063400 */  sll        $a2, $a2, 0x10
/* F8AC0 8004F5B0 0C028D89 */  jal        func_800A3624
/* F8AC4 8004F5B4 00063403 */   sra       $a2, $a2, 0x10
/* F8AC8 8004F5B8 8E04000C */  lw         $a0, 0xc($s0)
/* F8ACC 8004F5BC 0C028A40 */  jal        func_800A2900
/* F8AD0 8004F5C0 00000000 */   nop
/* F8AD4 8004F5C4 3C018007 */  lui        $at, %hi(D_8006C150)
/* F8AD8 8004F5C8 C424C150 */  lwc1       $f4, %lo(D_8006C150)($at)
/* F8ADC 8004F5CC 3C013FC0 */  lui        $at, 0x3fc0
/* F8AE0 8004F5D0 44810000 */  mtc1       $at, $f0
/* F8AE4 8004F5D4 3C018007 */  lui        $at, %hi(D_8006C154)
/* F8AE8 8004F5D8 C422C154 */  lwc1       $f2, %lo(D_8006C154)($at)
/* F8AEC 8004F5DC 46002100 */  add.s      $f4, $f4, $f0
/* F8AF0 8004F5E0 3C013F90 */  lui        $at, 0x3f90
/* F8AF4 8004F5E4 44810000 */  mtc1       $at, $f0
/* F8AF8 8004F5E8 00000000 */  nop
/* F8AFC 8004F5EC 46001081 */  sub.s      $f2, $f2, $f0
/* F8B00 8004F5F0 3C018007 */  lui        $at, %hi(D_8006C150)
/* F8B04 8004F5F4 E424C150 */  swc1       $f4, %lo(D_8006C150)($at)
/* F8B08 8004F5F8 3C018007 */  lui        $at, %hi(D_8006C154)
/* F8B0C 8004F5FC E422C154 */  swc1       $f2, %lo(D_8006C154)($at)
/* F8B10 8004F600 0C00D8C1 */  jal        func_80036304_DF814
/* F8B14 8004F604 24040036 */   addiu     $a0, $zero, 0x36
/* F8B18 8004F608 8C44000C */  lw         $a0, 0xc($v0)
/* F8B1C 8004F60C 0C028A40 */  jal        func_800A2900
/* F8B20 8004F610 00000000 */   nop
/* F8B24 8004F614 0C00D8C1 */  jal        func_80036304_DF814
/* F8B28 8004F618 24040037 */   addiu     $a0, $zero, 0x37
/* F8B2C 8004F61C 8C44000C */  lw         $a0, 0xc($v0)
/* F8B30 8004F620 0C028A40 */  jal        func_800A2900
/* F8B34 8004F624 00000000 */   nop
/* F8B38 8004F628 0C00D8C1 */  jal        func_80036304_DF814
/* F8B3C 8004F62C 24040038 */   addiu     $a0, $zero, 0x38
/* F8B40 8004F630 8C44000C */  lw         $a0, 0xc($v0)
/* F8B44 8004F634 0C028A40 */  jal        func_800A2900
/* F8B48 8004F638 00000000 */   nop
/* F8B4C 8004F63C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F8B50 8004F640 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F8B54 8004F644 2402003C */  addiu      $v0, $zero, 0x3c
/* F8B58 8004F648 0043001A */  div        $zero, $v0, $v1
/* F8B5C 8004F64C 14600002 */  bnez       $v1, .L8004F658
/* F8B60 8004F650 00000000 */   nop
/* F8B64 8004F654 0007000D */  break      7
.L8004F658:
/* F8B68 8004F658 2401FFFF */   addiu     $at, $zero, -1
/* F8B6C 8004F65C 14610004 */  bne        $v1, $at, .L8004F670
/* F8B70 8004F660 3C018000 */   lui       $at, 0x8000
/* F8B74 8004F664 14410002 */  bne        $v0, $at, .L8004F670
/* F8B78 8004F668 00000000 */   nop
/* F8B7C 8004F66C 0006000D */  break      6
.L8004F670:
/* F8B80 8004F670 00001012 */   mflo      $v0
/* F8B84 8004F674 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F8B88 8004F678 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F8B8C 8004F67C 00021840 */  sll        $v1, $v0, 1
/* F8B90 8004F680 00621821 */  addu       $v1, $v1, $v0
/* F8B94 8004F684 00031840 */  sll        $v1, $v1, 1
/* F8B98 8004F688 0083202A */  slt        $a0, $a0, $v1
/* F8B9C 8004F68C 1480014E */  bnez       $a0, .L8004FBC8
/* F8BA0 8004F690 00001021 */   addu      $v0, $zero, $zero
/* F8BA4 8004F694 3C048007 */  lui        $a0, %hi(D_80069270)
/* F8BA8 8004F698 0C026E4E */  jal        func_8009B938
/* F8BAC 8004F69C 24849270 */   addiu     $a0, $a0, %lo(D_80069270)
/* F8BB0 8004F6A0 2402000D */  addiu      $v0, $zero, 0xd
.L8004F6A4:
/* F8BB4 8004F6A4 08013EF1 */  j          .L8004FBC4
/* F8BB8 8004F6A8 A642001C */   sh        $v0, 0x1c($s2)
.L8004F6AC:
/* F8BBC 8004F6AC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F8BC0 8004F6B0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F8BC4 8004F6B4 14400003 */  bnez       $v0, .L8004F6C4
/* F8BC8 8004F6B8 00000000 */   nop
/* F8BCC 8004F6BC 0C013871 */  jal        func_8004E1C4_F76D4
/* F8BD0 8004F6C0 00000000 */   nop
.L8004F6C4:
/* F8BD4 8004F6C4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F8BD8 8004F6C8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F8BDC 8004F6CC 2402003C */  addiu      $v0, $zero, 0x3c
/* F8BE0 8004F6D0 0043001A */  div        $zero, $v0, $v1
/* F8BE4 8004F6D4 14600002 */  bnez       $v1, .L8004F6E0
/* F8BE8 8004F6D8 00000000 */   nop
/* F8BEC 8004F6DC 0007000D */  break      7
.L8004F6E0:
/* F8BF0 8004F6E0 2401FFFF */   addiu     $at, $zero, -1
/* F8BF4 8004F6E4 14610004 */  bne        $v1, $at, .L8004F6F8
/* F8BF8 8004F6E8 3C018000 */   lui       $at, 0x8000
/* F8BFC 8004F6EC 14410002 */  bne        $v0, $at, .L8004F6F8
/* F8C00 8004F6F0 00000000 */   nop
/* F8C04 8004F6F4 0006000D */  break      6
.L8004F6F8:
/* F8C08 8004F6F8 00001012 */   mflo      $v0
/* F8C0C 8004F6FC 3C018007 */  lui        $at, %hi(D_8006A210)
/* F8C10 8004F700 D422A210 */  ldc1       $f2, %lo(D_8006A210)($at)
/* F8C14 8004F704 44820000 */  mtc1       $v0, $f0
/* F8C18 8004F708 00000000 */  nop
/* F8C1C 8004F70C 46800021 */  cvt.d.w    $f0, $f0
/* F8C20 8004F710 46220002 */  mul.d      $f0, $f0, $f2
/* F8C24 8004F714 3C018007 */  lui        $at, %hi(D_8006C564)
/* F8C28 8004F718 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F8C2C 8004F71C 468010A1 */  cvt.d.w    $f2, $f2
/* F8C30 8004F720 46201032 */  c.eq.d     $f2, $f0
/* F8C34 8004F724 00000000 */  nop
/* F8C38 8004F728 00000000 */  nop
/* F8C3C 8004F72C 45000126 */  bc1f       .L8004FBC8
/* F8C40 8004F730 00001021 */   addu      $v0, $zero, $zero
/* F8C44 8004F734 0C02A5AF */  jal        func_800A96BC
/* F8C48 8004F738 24040001 */   addiu     $a0, $zero, 1
/* F8C4C 8004F73C 24050010 */  addiu      $a1, $zero, 0x10
/* F8C50 8004F740 24060010 */  addiu      $a2, $zero, 0x10
/* F8C54 8004F744 3C048007 */  lui        $a0, %hi(D_8006C144)
/* F8C58 8004F748 8C84C144 */  lw         $a0, %lo(D_8006C144)($a0)
/* F8C5C 8004F74C 24070130 */  addiu      $a3, $zero, 0x130
/* F8C60 8004F750 240200E0 */  addiu      $v0, $zero, 0xe0
/* F8C64 8004F754 0C02939C */  jal        func_800A4E70
/* F8C68 8004F758 AFA20010 */   sw        $v0, 0x10($sp)
/* F8C6C 8004F75C 24040001 */  addiu      $a0, $zero, 1
/* F8C70 8004F760 2402000E */  addiu      $v0, $zero, 0xe
/* F8C74 8004F764 0C026E5D */  jal        func_8009B974
/* F8C78 8004F768 A642001C */   sh        $v0, 0x1c($s2)
/* F8C7C 8004F76C 2404000B */  addiu      $a0, $zero, 0xb
/* F8C80 8004F770 2405FFFF */  addiu      $a1, $zero, -1
/* F8C84 8004F774 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* F8C88 8004F778 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* F8C8C 8004F77C 24060001 */  addiu      $a2, $zero, 1
/* F8C90 8004F780 24020001 */  addiu      $v0, $zero, 1
/* F8C94 8004F784 AFA20010 */  sw         $v0, 0x10($sp)
/* F8C98 8004F788 0C026C9A */  jal        func_8009B268
/* F8C9C 8004F78C 24E7000A */   addiu     $a3, $a3, 0xa
/* F8CA0 8004F790 08013EF2 */  j          .L8004FBC8
/* F8CA4 8004F794 00001021 */   addu      $v0, $zero, $zero
.L8004F798:
/* F8CA8 8004F798 0C00D8C1 */  jal        func_80036304_DF814
/* F8CAC 8004F79C 24040019 */   addiu     $a0, $zero, 0x19
/* F8CB0 8004F7A0 8C44000C */  lw         $a0, 0xc($v0)
/* F8CB4 8004F7A4 0C028A40 */  jal        func_800A2900
/* F8CB8 8004F7A8 00000000 */   nop
/* F8CBC 8004F7AC 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F8CC0 8004F7B0 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F8CC4 8004F7B4 2403003C */  addiu      $v1, $zero, 0x3c
/* F8CC8 8004F7B8 0062001A */  div        $zero, $v1, $v0
/* F8CCC 8004F7BC 14400002 */  bnez       $v0, .L8004F7C8
/* F8CD0 8004F7C0 00000000 */   nop
/* F8CD4 8004F7C4 0007000D */  break      7
.L8004F7C8:
/* F8CD8 8004F7C8 2401FFFF */   addiu     $at, $zero, -1
/* F8CDC 8004F7CC 14410004 */  bne        $v0, $at, .L8004F7E0
/* F8CE0 8004F7D0 3C018000 */   lui       $at, 0x8000
/* F8CE4 8004F7D4 14610002 */  bne        $v1, $at, .L8004F7E0
/* F8CE8 8004F7D8 00000000 */   nop
/* F8CEC 8004F7DC 0006000D */  break      6
.L8004F7E0:
/* F8CF0 8004F7E0 00001812 */   mflo      $v1
/* F8CF4 8004F7E4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F8CF8 8004F7E8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F8CFC 8004F7EC 00031080 */  sll        $v0, $v1, 2
/* F8D00 8004F7F0 00431021 */  addu       $v0, $v0, $v1
/* F8D04 8004F7F4 14820007 */  bne        $a0, $v0, .L8004F814
/* F8D08 8004F7F8 00000000 */   nop
/* F8D0C 8004F7FC 3C028007 */  lui        $v0, %hi(D_8006C190)
/* F8D10 8004F800 9442C190 */  lhu        $v0, %lo(D_8006C190)($v0)
/* F8D14 8004F804 14400003 */  bnez       $v0, .L8004F814
/* F8D18 8004F808 24420001 */   addiu     $v0, $v0, 1
/* F8D1C 8004F80C 3C018007 */  lui        $at, %hi(D_8006C190)
/* F8D20 8004F810 A422C190 */  sh         $v0, %lo(D_8006C190)($at)
.L8004F814:
/* F8D24 8004F814 3C038007 */  lui        $v1, %hi(D_8006C190)
/* F8D28 8004F818 9463C190 */  lhu        $v1, %lo(D_8006C190)($v1)
/* F8D2C 8004F81C 24020001 */  addiu      $v0, $zero, 1
/* F8D30 8004F820 14620010 */  bne        $v1, $v0, .L8004F864
/* F8D34 8004F824 2404003C */   addiu     $a0, $zero, 0x3c
/* F8D38 8004F828 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F8D3C 8004F82C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F8D40 8004F830 0082001A */  div        $zero, $a0, $v0
/* F8D44 8004F834 14400002 */  bnez       $v0, .L8004F840
/* F8D48 8004F838 00000000 */   nop
/* F8D4C 8004F83C 0007000D */  break      7
.L8004F840:
/* F8D50 8004F840 2401FFFF */   addiu     $at, $zero, -1
/* F8D54 8004F844 14410004 */  bne        $v0, $at, .L8004F858
/* F8D58 8004F848 3C018000 */   lui       $at, 0x8000
/* F8D5C 8004F84C 14810002 */  bne        $a0, $at, .L8004F858
/* F8D60 8004F850 00000000 */   nop
/* F8D64 8004F854 0006000D */  break      6
.L8004F858:
/* F8D68 8004F858 00002012 */   mflo      $a0
/* F8D6C 8004F85C 0C02A5C1 */  jal        func_800A9704
/* F8D70 8004F860 00000000 */   nop
.L8004F864:
/* F8D74 8004F864 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F8D78 8004F868 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F8D7C 8004F86C 2402003C */  addiu      $v0, $zero, 0x3c
/* F8D80 8004F870 0043001A */  div        $zero, $v0, $v1
/* F8D84 8004F874 14600002 */  bnez       $v1, .L8004F880
/* F8D88 8004F878 00000000 */   nop
/* F8D8C 8004F87C 0007000D */  break      7
.L8004F880:
/* F8D90 8004F880 2401FFFF */   addiu     $at, $zero, -1
/* F8D94 8004F884 14610004 */  bne        $v1, $at, .L8004F898
/* F8D98 8004F888 3C018000 */   lui       $at, 0x8000
/* F8D9C 8004F88C 14410002 */  bne        $v0, $at, .L8004F898
/* F8DA0 8004F890 00000000 */   nop
/* F8DA4 8004F894 0006000D */  break      6
.L8004F898:
/* F8DA8 8004F898 00001012 */   mflo      $v0
/* F8DAC 8004F89C 3C038007 */  lui        $v1, %hi(D_8006C190)
/* F8DB0 8004F8A0 9463C190 */  lhu        $v1, %lo(D_8006C190)($v1)
/* F8DB4 8004F8A4 0043102A */  slt        $v0, $v0, $v1
/* F8DB8 8004F8A8 104000C6 */  beqz       $v0, .L8004FBC4
/* F8DBC 8004F8AC 2402000F */   addiu     $v0, $zero, 0xf
/* F8DC0 8004F8B0 08013EF1 */  j          .L8004FBC4
/* F8DC4 8004F8B4 A642001C */   sh        $v0, 0x1c($s2)
.L8004F8B8:
/* F8DC8 8004F8B8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F8DCC 8004F8BC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F8DD0 8004F8C0 14400003 */  bnez       $v0, .L8004F8D0
/* F8DD4 8004F8C4 00000000 */   nop
/* F8DD8 8004F8C8 0C01387E */  jal        func_8004E1F8_F7708
/* F8DDC 8004F8CC 00000000 */   nop
.L8004F8D0:
/* F8DE0 8004F8D0 0C02A5AF */  jal        func_800A96BC
/* F8DE4 8004F8D4 24040001 */   addiu     $a0, $zero, 1
/* F8DE8 8004F8D8 00001021 */  addu       $v0, $zero, $zero
/* F8DEC 8004F8DC 24030010 */  addiu      $v1, $zero, 0x10
/* F8DF0 8004F8E0 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F8DF4 8004F8E4 AC20C17C */  sw         $zero, %lo(D_8006C17C)($at)
/* F8DF8 8004F8E8 08013EF2 */  j          .L8004FBC8
/* F8DFC 8004F8EC A643001C */   sh        $v1, 0x1c($s2)
.L8004F8F0:
/* F8E00 8004F8F0 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* F8E04 8004F8F4 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* F8E08 8004F8F8 30421000 */  andi       $v0, $v0, 0x1000
/* F8E0C 8004F8FC 10400004 */  beqz       $v0, .L8004F910
/* F8E10 8004F900 24020011 */   addiu     $v0, $zero, 0x11
/* F8E14 8004F904 3C018007 */  lui        $at, %hi(D_8006C192)
/* F8E18 8004F908 A020C192 */  sb         $zero, %lo(D_8006C192)($at)
/* F8E1C 8004F90C A642001C */  sh         $v0, 0x1c($s2)
.L8004F910:
/* F8E20 8004F910 27A40058 */  addiu      $a0, $sp, 0x58
/* F8E24 8004F914 27A5005C */  addiu      $a1, $sp, 0x5c
/* F8E28 8004F918 0C0266D6 */  jal        func_80099B58
/* F8E2C 8004F91C 00003021 */   addu      $a2, $zero, $zero
/* F8E30 8004F920 8FA3005C */  lw         $v1, 0x5c($sp)
/* F8E34 8004F924 2402FFFF */  addiu      $v0, $zero, -1
/* F8E38 8004F928 14620009 */  bne        $v1, $v0, .L8004F950
/* F8E3C 8004F92C 24020001 */   addiu     $v0, $zero, 1
/* F8E40 8004F930 3C038007 */  lui        $v1, %hi(D_80069274)
/* F8E44 8004F934 90639274 */  lbu        $v1, %lo(D_80069274)($v1)
/* F8E48 8004F938 14620004 */  bne        $v1, $v0, .L8004F94C
/* F8E4C 8004F93C 00000000 */   nop
/* F8E50 8004F940 3C018007 */  lui        $at, %hi(D_80069274)
/* F8E54 8004F944 08013E5C */  j          .L8004F970
/* F8E58 8004F948 A0209274 */   sb        $zero, %lo(D_80069274)($at)
.L8004F94C:
/* F8E5C 8004F94C 8FA3005C */  lw         $v1, 0x5c($sp)
.L8004F950:
/* F8E60 8004F950 14620009 */  bne        $v1, $v0, .L8004F978
/* F8E64 8004F954 00000000 */   nop
/* F8E68 8004F958 3C028007 */  lui        $v0, %hi(D_80069274)
/* F8E6C 8004F95C 90429274 */  lbu        $v0, %lo(D_80069274)($v0)
/* F8E70 8004F960 14400005 */  bnez       $v0, .L8004F978
/* F8E74 8004F964 24020001 */   addiu     $v0, $zero, 1
/* F8E78 8004F968 3C018007 */  lui        $at, %hi(D_80069274)
/* F8E7C 8004F96C A0229274 */  sb         $v0, %lo(D_80069274)($at)
.L8004F970:
/* F8E80 8004F970 0C026DD5 */  jal        func_8009B754
/* F8E84 8004F974 2404001E */   addiu     $a0, $zero, 0x1e
.L8004F978:
/* F8E88 8004F978 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F8E8C 8004F97C C422C17C */  lwc1       $f2, %lo(D_8006C17C)($at)
/* F8E90 8004F980 3C014378 */  lui        $at, 0x4378
/* F8E94 8004F984 44810000 */  mtc1       $at, $f0
/* F8E98 8004F988 3C028007 */  lui        $v0, %hi(D_80069278)
/* F8E9C 8004F98C 8C429278 */  lw         $v0, %lo(D_80069278)($v0)
/* F8EA0 8004F990 4600103C */  c.lt.s     $f2, $f0
/* F8EA4 8004F994 24420001 */  addiu      $v0, $v0, 1
/* F8EA8 8004F998 3C018007 */  lui        $at, %hi(D_80069278)
/* F8EAC 8004F99C AC229278 */  sw         $v0, %lo(D_80069278)($at)
/* F8EB0 8004F9A0 45000007 */  bc1f       .L8004F9C0
/* F8EB4 8004F9A4 00000000 */   nop
/* F8EB8 8004F9A8 3C014100 */  lui        $at, 0x4100
/* F8EBC 8004F9AC 44810000 */  mtc1       $at, $f0
/* F8EC0 8004F9B0 00000000 */  nop
/* F8EC4 8004F9B4 46001000 */  add.s      $f0, $f2, $f0
/* F8EC8 8004F9B8 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F8ECC 8004F9BC E420C17C */  swc1       $f0, %lo(D_8006C17C)($at)
.L8004F9C0:
/* F8ED0 8004F9C0 3C028007 */  lui        $v0, %hi(D_80069274)
/* F8ED4 8004F9C4 90429274 */  lbu        $v0, %lo(D_80069274)($v0)
/* F8ED8 8004F9C8 14400055 */  bnez       $v0, .L8004FB20
/* F8EDC 8004F9CC 00000000 */   nop
/* F8EE0 8004F9D0 0C00D8C1 */  jal        func_80036304_DF814
/* F8EE4 8004F9D4 240440C9 */   addiu     $a0, $zero, 0x40c9
/* F8EE8 8004F9D8 8C44000C */  lw         $a0, 0xc($v0)
/* F8EEC 8004F9DC 0C028A40 */  jal        func_800A2900
/* F8EF0 8004F9E0 00000000 */   nop
/* F8EF4 8004F9E4 0C00D8C1 */  jal        func_80036304_DF814
/* F8EF8 8004F9E8 240440CA */   addiu     $a0, $zero, 0x40ca
/* F8EFC 8004F9EC 8C44000C */  lw         $a0, 0xc($v0)
/* F8F00 8004F9F0 0C028A40 */  jal        func_800A2900
/* F8F04 8004F9F4 00000000 */   nop
/* F8F08 8004F9F8 0C00D8C1 */  jal        func_80036304_DF814
/* F8F0C 8004F9FC 240440CD */   addiu     $a0, $zero, 0x40cd
/* F8F10 8004FA00 8C44000C */  lw         $a0, 0xc($v0)
/* F8F14 8004FA04 0C028A40 */  jal        func_800A2900
/* F8F18 8004FA08 00000000 */   nop
/* F8F1C 8004FA0C 0C00D8C1 */  jal        func_80036304_DF814
/* F8F20 8004FA10 240440CE */   addiu     $a0, $zero, 0x40ce
/* F8F24 8004FA14 8C44000C */  lw         $a0, 0xc($v0)
/* F8F28 8004FA18 0C028A40 */  jal        func_800A2900
/* F8F2C 8004FA1C 00000000 */   nop
/* F8F30 8004FA20 0C00D8C1 */  jal        func_80036304_DF814
/* F8F34 8004FA24 240440D0 */   addiu     $a0, $zero, 0x40d0
/* F8F38 8004FA28 8C44000C */  lw         $a0, 0xc($v0)
/* F8F3C 8004FA2C 0C028A40 */  jal        func_800A2900
/* F8F40 8004FA30 00000000 */   nop
/* F8F44 8004FA34 0C00D8C1 */  jal        func_80036304_DF814
/* F8F48 8004FA38 240440D1 */   addiu     $a0, $zero, 0x40d1
/* F8F4C 8004FA3C 8C44000C */  lw         $a0, 0xc($v0)
/* F8F50 8004FA40 0C028A40 */  jal        func_800A2900
/* F8F54 8004FA44 00000000 */   nop
/* F8F58 8004FA48 0C00D8C1 */  jal        func_80036304_DF814
/* F8F5C 8004FA4C 240440D3 */   addiu     $a0, $zero, 0x40d3
/* F8F60 8004FA50 8C44000C */  lw         $a0, 0xc($v0)
/* F8F64 8004FA54 0C028A40 */  jal        func_800A2900
/* F8F68 8004FA58 00000000 */   nop
/* F8F6C 8004FA5C 0C00D8C1 */  jal        func_80036304_DF814
/* F8F70 8004FA60 240440D4 */   addiu     $a0, $zero, 0x40d4
/* F8F74 8004FA64 8C44000C */  lw         $a0, 0xc($v0)
/* F8F78 8004FA68 0C028A40 */  jal        func_800A2900
/* F8F7C 8004FA6C 00000000 */   nop
/* F8F80 8004FA70 0C00D8C1 */  jal        func_80036304_DF814
/* F8F84 8004FA74 240440D5 */   addiu     $a0, $zero, 0x40d5
/* F8F88 8004FA78 8C44000C */  lw         $a0, 0xc($v0)
/* F8F8C 8004FA7C 0C028A40 */  jal        func_800A2900
/* F8F90 8004FA80 00000000 */   nop
/* F8F94 8004FA84 0C00D8C1 */  jal        func_80036304_DF814
/* F8F98 8004FA88 240440D6 */   addiu     $a0, $zero, 0x40d6
/* F8F9C 8004FA8C 3C018007 */  lui        $at, %hi(D_8006C17C)
/* F8FA0 8004FA90 C422C17C */  lwc1       $f2, %lo(D_8006C17C)($at)
/* F8FA4 8004FA94 3C014F00 */  lui        $at, 0x4f00
/* F8FA8 8004FA98 44810000 */  mtc1       $at, $f0
/* F8FAC 8004FA9C 00000000 */  nop
/* F8FB0 8004FAA0 4602003E */  c.le.s     $f0, $f2
/* F8FB4 8004FAA4 00000000 */  nop
/* F8FB8 8004FAA8 00000000 */  nop
/* F8FBC 8004FAAC 45010006 */  bc1t       .L8004FAC8
/* F8FC0 8004FAB0 00408021 */   addu      $s0, $v0, $zero
/* F8FC4 8004FAB4 4600100D */  trunc.w.s  $f0, $f2
/* F8FC8 8004FAB8 44030000 */  mfc1       $v1, $f0
/* F8FCC 8004FABC 00000000 */  nop
/* F8FD0 8004FAC0 08013EB8 */  j          .L8004FAE0
/* F8FD4 8004FAC4 306200FF */   andi      $v0, $v1, 0xff
.L8004FAC8:
/* F8FD8 8004FAC8 46001001 */  sub.s      $f0, $f2, $f0
/* F8FDC 8004FACC 4600008D */  trunc.w.s  $f2, $f0
/* F8FE0 8004FAD0 44031000 */  mfc1       $v1, $f2
/* F8FE4 8004FAD4 3C028000 */  lui        $v0, 0x8000
/* F8FE8 8004FAD8 00621825 */  or         $v1, $v1, $v0
/* F8FEC 8004FADC 306200FF */  andi       $v0, $v1, 0xff
.L8004FAE0:
/* F8FF0 8004FAE0 AFA20010 */  sw         $v0, 0x10($sp)
/* F8FF4 8004FAE4 8E04000C */  lw         $a0, 0xc($s0)
/* F8FF8 8004FAE8 240500FF */  addiu      $a1, $zero, 0xff
/* F8FFC 8004FAEC 240600FF */  addiu      $a2, $zero, 0xff
/* F9000 8004FAF0 0C028E41 */  jal        func_800A3904
/* F9004 8004FAF4 240700FF */   addiu     $a3, $zero, 0xff
/* F9008 8004FAF8 8E04000C */  lw         $a0, 0xc($s0)
/* F900C 8004FAFC 0C028A40 */  jal        func_800A2900
/* F9010 8004FB00 00000000 */   nop
/* F9014 8004FB04 3C028007 */  lui        $v0, %hi(D_80069278)
/* F9018 8004FB08 8C429278 */  lw         $v0, %lo(D_80069278)($v0)
/* F901C 8004FB0C 30420004 */  andi       $v0, $v0, 4
/* F9020 8004FB10 1040002C */  beqz       $v0, .L8004FBC4
/* F9024 8004FB14 240440D7 */   addiu     $a0, $zero, 0x40d7
/* F9028 8004FB18 08013ED2 */  j          .L8004FB48
/* F902C 8004FB1C 00000000 */   nop
.L8004FB20:
/* F9030 8004FB20 0C00D8C1 */  jal        func_80036304_DF814
/* F9034 8004FB24 240440D9 */   addiu     $a0, $zero, 0x40d9
/* F9038 8004FB28 8C44000C */  lw         $a0, 0xc($v0)
/* F903C 8004FB2C 0C028A40 */  jal        func_800A2900
/* F9040 8004FB30 00000000 */   nop
/* F9044 8004FB34 3C028007 */  lui        $v0, %hi(D_80069278)
/* F9048 8004FB38 8C429278 */  lw         $v0, %lo(D_80069278)($v0)
/* F904C 8004FB3C 30420004 */  andi       $v0, $v0, 4
/* F9050 8004FB40 10400020 */  beqz       $v0, .L8004FBC4
/* F9054 8004FB44 240440D8 */   addiu     $a0, $zero, 0x40d8
.L8004FB48:
/* F9058 8004FB48 0C00D8C1 */  jal        func_80036304_DF814
/* F905C 8004FB4C 00000000 */   nop
/* F9060 8004FB50 0C028A40 */  jal        func_800A2900
/* F9064 8004FB54 8C44000C */   lw        $a0, 0xc($v0)
/* F9068 8004FB58 08013EF2 */  j          .L8004FBC8
/* F906C 8004FB5C 00001021 */   addu      $v0, $zero, $zero
.L8004FB60:
/* F9070 8004FB60 0C026E5D */  jal        func_8009B974
/* F9074 8004FB64 24040001 */   addiu     $a0, $zero, 1
/* F9078 8004FB68 0C00E339 */  jal        func_80038CE4_E21F4
/* F907C 8004FB6C 00000000 */   nop
/* F9080 8004FB70 3402FFFE */  ori        $v0, $zero, 0xfffe
/* F9084 8004FB74 08013EF1 */  j          .L8004FBC4
/* F9088 8004FB78 A642001C */   sh        $v0, 0x1c($s2)
.L8004FB7C:
/* F908C 8004FB7C 0C02A5C1 */  jal        func_800A9704
/* F9090 8004FB80 24040001 */   addiu     $a0, $zero, 1
/* F9094 8004FB84 3C048007 */  lui        $a0, %hi(D_8006C140)
/* F9098 8004FB88 0C029393 */  jal        func_800A4E4C
/* F909C 8004FB8C 8C84C140 */   lw        $a0, %lo(D_8006C140)($a0)
/* F90A0 8004FB90 3C048007 */  lui        $a0, %hi(D_8006C144)
/* F90A4 8004FB94 0C029393 */  jal        func_800A4E4C
/* F90A8 8004FB98 8C84C144 */   lw        $a0, %lo(D_8006C144)($a0)
/* F90AC 8004FB9C 3C048007 */  lui        $a0, %hi(D_8006C148)
/* F90B0 8004FBA0 0C029393 */  jal        func_800A4E4C
/* F90B4 8004FBA4 8C84C148 */   lw        $a0, %lo(D_8006C148)($a0)
/* F90B8 8004FBA8 0C00D7F4 */  jal        func_80035FD0_DF4E0
/* F90BC 8004FBAC 00000000 */   nop
/* F90C0 8004FBB0 24030001 */  addiu      $v1, $zero, 1
/* F90C4 8004FBB4 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* F90C8 8004FBB8 A023C3C8 */  sb         $v1, %lo(D_8006C3C8)($at)
/* F90CC 8004FBBC 08013EF2 */  j          .L8004FBC8
/* F90D0 8004FBC0 24020001 */   addiu     $v0, $zero, 1
.L8004FBC4:
/* F90D4 8004FBC4 00001021 */  addu       $v0, $zero, $zero
.L8004FBC8:
/* F90D8 8004FBC8 8FBF006C */  lw         $ra, 0x6c($sp)
/* F90DC 8004FBCC 8FB20068 */  lw         $s2, 0x68($sp)
/* F90E0 8004FBD0 8FB10064 */  lw         $s1, 0x64($sp)
/* F90E4 8004FBD4 8FB00060 */  lw         $s0, 0x60($sp)
/* F90E8 8004FBD8 D7B40070 */  ldc1       $f20, 0x70($sp)
/* F90EC 8004FBDC 03E00008 */  jr         $ra
/* F90F0 8004FBE0 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_8004FBE4_F90F4
/* F90F4 8004FBE4 3C028007 */  lui        $v0, %hi(D_8006927C)
/* F90F8 8004FBE8 9042927C */  lbu        $v0, %lo(D_8006927C)($v0)
/* F90FC 8004FBEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F9100 8004FBF0 1040000D */  beqz       $v0, .L8004FC28
/* F9104 8004FBF4 AFBF0010 */   sw        $ra, 0x10($sp)
/* F9108 8004FBF8 3C048005 */  lui        $a0, %hi(func_8004E220_F7730)
/* F910C 8004FBFC 2484E220 */  addiu      $a0, $a0, %lo(func_8004E220_F7730)
/* F9110 8004FC00 00002821 */  addu       $a1, $zero, $zero
/* F9114 8004FC04 2406012C */  addiu      $a2, $zero, 0x12c
/* F9118 8004FC08 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* F911C 8004FC0C A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* F9120 8004FC10 0C025D06 */  jal        func_80097418
/* F9124 8004FC14 00003821 */   addu      $a3, $zero, $zero
/* F9128 8004FC18 0C02A5D2 */  jal        func_800A9748
/* F912C 8004FC1C 24040001 */   addiu     $a0, $zero, 1
/* F9130 8004FC20 3C018007 */  lui        $at, %hi(D_8006927C)
/* F9134 8004FC24 A020927C */  sb         $zero, %lo(D_8006927C)($at)
.L8004FC28:
/* F9138 8004FC28 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* F913C 8004FC2C 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* F9140 8004FC30 24020001 */  addiu      $v0, $zero, 1
/* F9144 8004FC34 14620005 */  bne        $v1, $v0, .L8004FC4C
/* F9148 8004FC38 00001021 */   addu      $v0, $zero, $zero
/* F914C 8004FC3C 24020001 */  addiu      $v0, $zero, 1
/* F9150 8004FC40 3C018007 */  lui        $at, %hi(D_8006927C)
/* F9154 8004FC44 A022927C */  sb         $v0, %lo(D_8006927C)($at)
/* F9158 8004FC48 24020001 */  addiu      $v0, $zero, 1
.L8004FC4C:
/* F915C 8004FC4C 8FBF0010 */  lw         $ra, 0x10($sp)
/* F9160 8004FC50 03E00008 */  jr         $ra
/* F9164 8004FC54 27BD0018 */   addiu     $sp, $sp, 0x18
/* F9168 8004FC58 00000000 */  nop
/* F916C 8004FC5C 00000000 */  nop
