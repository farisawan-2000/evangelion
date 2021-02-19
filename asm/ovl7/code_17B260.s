.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002B820_17B260
/* 17B260 8002B820 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17B264 8002B824 AFBF0060 */  sw         $ra, 0x60($sp)
/* 17B268 8002B828 27A70030 */  addiu      $a3, $sp, 0x30
/* 17B26C 8002B82C 3C068005 */  lui        $a2, %hi(D_80050820)
/* 17B270 8002B830 24C60820 */  addiu      $a2, $a2, %lo(D_80050820)
/* 17B274 8002B834 24C80020 */  addiu      $t0, $a2, 0x20
.L8002B838:
/* 17B278 8002B838 8CC20000 */  lw         $v0, ($a2)
/* 17B27C 8002B83C 8CC30004 */  lw         $v1, 4($a2)
/* 17B280 8002B840 8CC40008 */  lw         $a0, 8($a2)
/* 17B284 8002B844 8CC5000C */  lw         $a1, 0xc($a2)
/* 17B288 8002B848 ACE20000 */  sw         $v0, ($a3)
/* 17B28C 8002B84C ACE30004 */  sw         $v1, 4($a3)
/* 17B290 8002B850 ACE40008 */  sw         $a0, 8($a3)
/* 17B294 8002B854 ACE5000C */  sw         $a1, 0xc($a3)
/* 17B298 8002B858 24C60010 */  addiu      $a2, $a2, 0x10
/* 17B29C 8002B85C 14C8FFF6 */  bne        $a2, $t0, .L8002B838
/* 17B2A0 8002B860 24E70010 */   addiu     $a3, $a3, 0x10
/* 17B2A4 8002B864 8CC20000 */  lw         $v0, ($a2)
/* 17B2A8 8002B868 8CC30004 */  lw         $v1, 4($a2)
/* 17B2AC 8002B86C 8CC40008 */  lw         $a0, 8($a2)
/* 17B2B0 8002B870 ACE20000 */  sw         $v0, ($a3)
/* 17B2B4 8002B874 ACE30004 */  sw         $v1, 4($a3)
/* 17B2B8 8002B878 ACE40008 */  sw         $a0, 8($a3)
/* 17B2BC 8002B87C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17B2C0 8002B880 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17B2C4 8002B884 10600005 */  beqz       $v1, .L8002B89C
/* 17B2C8 8002B888 240200AA */   addiu     $v0, $zero, 0xaa
/* 17B2CC 8002B88C 10620027 */  beq        $v1, $v0, .L8002B92C
/* 17B2D0 8002B890 00000000 */   nop
/* 17B2D4 8002B894 0800AE50 */  j          .L8002B940
/* 17B2D8 8002B898 00000000 */   nop
.L8002B89C:
/* 17B2DC 8002B89C 8FA20040 */  lw         $v0, 0x40($sp)
/* 17B2E0 8002B8A0 8FA30044 */  lw         $v1, 0x44($sp)
/* 17B2E4 8002B8A4 8FA40048 */  lw         $a0, 0x48($sp)
/* 17B2E8 8002B8A8 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17B2EC 8002B8AC AFA20010 */  sw         $v0, 0x10($sp)
/* 17B2F0 8002B8B0 AFA30014 */  sw         $v1, 0x14($sp)
/* 17B2F4 8002B8B4 AFA40018 */  sw         $a0, 0x18($sp)
/* 17B2F8 8002B8B8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17B2FC 8002B8BC 8FA20050 */  lw         $v0, 0x50($sp)
/* 17B300 8002B8C0 8FA30054 */  lw         $v1, 0x54($sp)
/* 17B304 8002B8C4 8FA40058 */  lw         $a0, 0x58($sp)
/* 17B308 8002B8C8 AFA20020 */  sw         $v0, 0x20($sp)
/* 17B30C 8002B8CC AFA30024 */  sw         $v1, 0x24($sp)
/* 17B310 8002B8D0 AFA40028 */  sw         $a0, 0x28($sp)
/* 17B314 8002B8D4 8FA40030 */  lw         $a0, 0x30($sp)
/* 17B318 8002B8D8 8FA50034 */  lw         $a1, 0x34($sp)
/* 17B31C 8002B8DC 8FA60038 */  lw         $a2, 0x38($sp)
/* 17B320 8002B8E0 0C0099F7 */  jal        func_800267DC_17621C
/* 17B324 8002B8E4 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17B328 8002B8E8 24040009 */  addiu      $a0, $zero, 9
/* 17B32C 8002B8EC 2405FFFF */  addiu      $a1, $zero, -1
/* 17B330 8002B8F0 00003021 */  addu       $a2, $zero, $zero
/* 17B334 8002B8F4 24070050 */  addiu      $a3, $zero, 0x50
/* 17B338 8002B8F8 0C026C9A */  jal        func_8009B268
/* 17B33C 8002B8FC AFA00010 */   sw        $zero, 0x10($sp)
/* 17B340 8002B900 24040073 */  addiu      $a0, $zero, 0x73
/* 17B344 8002B904 24050080 */  addiu      $a1, $zero, 0x80
/* 17B348 8002B908 24060080 */  addiu      $a2, $zero, 0x80
/* 17B34C 8002B90C 24070001 */  addiu      $a3, $zero, 1
/* 17B350 8002B910 24020064 */  addiu      $v0, $zero, 0x64
/* 17B354 8002B914 0C026E0C */  jal        func_8009B830
/* 17B358 8002B918 AFA20010 */   sw        $v0, 0x10($sp)
/* 17B35C 8002B91C 3C038005 */  lui        $v1, %hi(D_80052244)
/* 17B360 8002B920 8C632244 */  lw         $v1, %lo(D_80052244)($v1)
/* 17B364 8002B924 0800AE50 */  j          .L8002B940
/* 17B368 8002B928 AC620000 */   sw        $v0, ($v1)
.L8002B92C:
/* 17B36C 8002B92C 3C028005 */  lui        $v0, %hi(D_80052244)
/* 17B370 8002B930 8C422244 */  lw         $v0, %lo(D_80052244)($v0)
/* 17B374 8002B934 8C440000 */  lw         $a0, ($v0)
/* 17B378 8002B938 0C026E46 */  jal        func_8009B918
/* 17B37C 8002B93C 24050078 */   addiu     $a1, $zero, 0x78
.L8002B940:
/* 17B380 8002B940 3C028015 */  lui        $v0, %hi(D_8014A06C)
/* 17B384 8002B944 2442A06C */  addiu      $v0, $v0, %lo(D_8014A06C)
/* 17B388 8002B948 C4400000 */  lwc1       $f0, ($v0)
/* 17B38C 8002B94C 3C013D4C */  lui        $at, 0x3d4c
/* 17B390 8002B950 3421CCCD */  ori        $at, $at, 0xcccd
/* 17B394 8002B954 44811000 */  mtc1       $at, $f2
/* 17B398 8002B958 00000000 */  nop
/* 17B39C 8002B95C 46020001 */  sub.s      $f0, $f0, $f2
/* 17B3A0 8002B960 8FBF0060 */  lw         $ra, 0x60($sp)
/* 17B3A4 8002B964 E4400000 */  swc1       $f0, ($v0)
/* 17B3A8 8002B968 03E00008 */  jr         $ra
/* 17B3AC 8002B96C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002B970_17B3B0
/* 17B3B0 8002B970 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 17B3B4 8002B974 27A70030 */  addiu      $a3, $sp, 0x30
/* 17B3B8 8002B978 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17B3BC 8002B97C 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17B3C0 8002B980 3C068005 */  lui        $a2, %hi(D_8005084C)
/* 17B3C4 8002B984 24C6084C */  addiu      $a2, $a2, %lo(D_8005084C)
/* 17B3C8 8002B988 24C80020 */  addiu      $t0, $a2, 0x20
/* 17B3CC 8002B98C AFBF0068 */  sw         $ra, 0x68($sp)
/* 17B3D0 8002B990 AFB10064 */  sw         $s1, 0x64($sp)
/* 17B3D4 8002B994 AFB00060 */  sw         $s0, 0x60($sp)
/* 17B3D8 8002B998 8C51002C */  lw         $s1, 0x2c($v0)
.L8002B99C:
/* 17B3DC 8002B99C 8CC20000 */  lw         $v0, ($a2)
/* 17B3E0 8002B9A0 8CC30004 */  lw         $v1, 4($a2)
/* 17B3E4 8002B9A4 8CC40008 */  lw         $a0, 8($a2)
/* 17B3E8 8002B9A8 8CC5000C */  lw         $a1, 0xc($a2)
/* 17B3EC 8002B9AC ACE20000 */  sw         $v0, ($a3)
/* 17B3F0 8002B9B0 ACE30004 */  sw         $v1, 4($a3)
/* 17B3F4 8002B9B4 ACE40008 */  sw         $a0, 8($a3)
/* 17B3F8 8002B9B8 ACE5000C */  sw         $a1, 0xc($a3)
/* 17B3FC 8002B9BC 24C60010 */  addiu      $a2, $a2, 0x10
/* 17B400 8002B9C0 14C8FFF6 */  bne        $a2, $t0, .L8002B99C
/* 17B404 8002B9C4 24E70010 */   addiu     $a3, $a3, 0x10
/* 17B408 8002B9C8 8CC20000 */  lw         $v0, ($a2)
/* 17B40C 8002B9CC 8CC30004 */  lw         $v1, 4($a2)
/* 17B410 8002B9D0 8CC40008 */  lw         $a0, 8($a2)
/* 17B414 8002B9D4 ACE20000 */  sw         $v0, ($a3)
/* 17B418 8002B9D8 ACE30004 */  sw         $v1, 4($a3)
/* 17B41C 8002B9DC ACE40008 */  sw         $a0, 8($a3)
/* 17B420 8002B9E0 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17B424 8002B9E4 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17B428 8002B9E8 2402003C */  addiu      $v0, $zero, 0x3c
/* 17B42C 8002B9EC 1062003F */  beq        $v1, $v0, .L8002BAEC
/* 17B430 8002B9F0 2862003D */   slti      $v0, $v1, 0x3d
/* 17B434 8002B9F4 10400049 */  beqz       $v0, .L8002BB1C
/* 17B438 8002B9F8 00000000 */   nop
/* 17B43C 8002B9FC 10600005 */  beqz       $v1, .L8002BA14
/* 17B440 8002BA00 2402000A */   addiu     $v0, $zero, 0xa
/* 17B444 8002BA04 10620031 */  beq        $v1, $v0, .L8002BACC
/* 17B448 8002BA08 24020063 */   addiu     $v0, $zero, 0x63
/* 17B44C 8002BA0C 0800AEC7 */  j          .L8002BB1C
/* 17B450 8002BA10 00000000 */   nop
.L8002BA14:
/* 17B454 8002BA14 8FA20040 */  lw         $v0, 0x40($sp)
/* 17B458 8002BA18 8FA30044 */  lw         $v1, 0x44($sp)
/* 17B45C 8002BA1C 8FA40048 */  lw         $a0, 0x48($sp)
/* 17B460 8002BA20 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17B464 8002BA24 AFA20010 */  sw         $v0, 0x10($sp)
/* 17B468 8002BA28 AFA30014 */  sw         $v1, 0x14($sp)
/* 17B46C 8002BA2C AFA40018 */  sw         $a0, 0x18($sp)
/* 17B470 8002BA30 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17B474 8002BA34 8FA20050 */  lw         $v0, 0x50($sp)
/* 17B478 8002BA38 8FA30054 */  lw         $v1, 0x54($sp)
/* 17B47C 8002BA3C 8FA40058 */  lw         $a0, 0x58($sp)
/* 17B480 8002BA40 AFA20020 */  sw         $v0, 0x20($sp)
/* 17B484 8002BA44 AFA30024 */  sw         $v1, 0x24($sp)
/* 17B488 8002BA48 AFA40028 */  sw         $a0, 0x28($sp)
/* 17B48C 8002BA4C 8FA40030 */  lw         $a0, 0x30($sp)
/* 17B490 8002BA50 8FA50034 */  lw         $a1, 0x34($sp)
/* 17B494 8002BA54 8FA60038 */  lw         $a2, 0x38($sp)
/* 17B498 8002BA58 8FA7003C */  lw         $a3, 0x3c($sp)
/* 17B49C 8002BA5C 3C018005 */  lui        $at, %hi(D_80051E80)
/* 17B4A0 8002BA60 A4201E80 */  sh         $zero, %lo(D_80051E80)($at)
/* 17B4A4 8002BA64 0C0099F7 */  jal        func_800267DC_17621C
/* 17B4A8 8002BA68 24100001 */   addiu     $s0, $zero, 1
/* 17B4AC 8002BA6C 320200FF */  andi       $v0, $s0, 0xff
.L8002BA70:
/* 17B4B0 8002BA70 00021840 */  sll        $v1, $v0, 1
/* 17B4B4 8002BA74 00621821 */  addu       $v1, $v1, $v0
/* 17B4B8 8002BA78 00031880 */  sll        $v1, $v1, 2
/* 17B4BC 8002BA7C 00711821 */  addu       $v1, $v1, $s1
/* 17B4C0 8002BA80 8C640000 */  lw         $a0, ($v1)
/* 17B4C4 8002BA84 00002821 */  addu       $a1, $zero, $zero
/* 17B4C8 8002BA88 00003021 */  addu       $a2, $zero, $zero
/* 17B4CC 8002BA8C 0C02912A */  jal        func_800A44A8
/* 17B4D0 8002BA90 26100001 */   addiu     $s0, $s0, 1
/* 17B4D4 8002BA94 320200FF */  andi       $v0, $s0, 0xff
/* 17B4D8 8002BA98 2C420003 */  sltiu      $v0, $v0, 3
/* 17B4DC 8002BA9C 1440FFF4 */  bnez       $v0, .L8002BA70
/* 17B4E0 8002BAA0 320200FF */   andi      $v0, $s0, 0xff
/* 17B4E4 8002BAA4 8E240024 */  lw         $a0, 0x24($s1)
/* 17B4E8 8002BAA8 24050030 */  addiu      $a1, $zero, 0x30
/* 17B4EC 8002BAAC 0C02912A */  jal        func_800A44A8
/* 17B4F0 8002BAB0 24060048 */   addiu     $a2, $zero, 0x48
/* 17B4F4 8002BAB4 8E240024 */  lw         $a0, 0x24($s1)
/* 17B4F8 8002BAB8 00002821 */  addu       $a1, $zero, $zero
/* 17B4FC 8002BABC 0C009A4D */  jal        func_80026934_176374
/* 17B500 8002BAC0 24060001 */   addiu     $a2, $zero, 1
/* 17B504 8002BAC4 0800AEC7 */  j          .L8002BB1C
/* 17B508 8002BAC8 00000000 */   nop
.L8002BACC:
/* 17B50C 8002BACC AFA20010 */  sw         $v0, 0x10($sp)
/* 17B510 8002BAD0 2404000D */  addiu      $a0, $zero, 0xd
/* 17B514 8002BAD4 24050080 */  addiu      $a1, $zero, 0x80
/* 17B518 8002BAD8 24060080 */  addiu      $a2, $zero, 0x80
/* 17B51C 8002BADC 0C026E0C */  jal        func_8009B830
/* 17B520 8002BAE0 24070001 */   addiu     $a3, $zero, 1
/* 17B524 8002BAE4 0800AEC7 */  j          .L8002BB1C
/* 17B528 8002BAE8 00000000 */   nop
.L8002BAEC:
/* 17B52C 8002BAEC 00002021 */  addu       $a0, $zero, $zero
/* 17B530 8002BAF0 24050002 */  addiu      $a1, $zero, 2
/* 17B534 8002BAF4 00003021 */  addu       $a2, $zero, $zero
/* 17B538 8002BAF8 24070058 */  addiu      $a3, $zero, 0x58
/* 17B53C 8002BAFC 24030001 */  addiu      $v1, $zero, 1
/* 17B540 8002BB00 24020011 */  addiu      $v0, $zero, 0x11
/* 17B544 8002BB04 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 17B548 8002BB08 AC239FA8 */  sw         $v1, %lo(D_80149FA8)($at)
/* 17B54C 8002BB0C AFA20010 */  sw         $v0, 0x10($sp)
/* 17B550 8002BB10 AFA30014 */  sw         $v1, 0x14($sp)
/* 17B554 8002BB14 0C0E5BE4 */  jal        func_80396F90
/* 17B558 8002BB18 AFA00018 */   sw        $zero, 0x18($sp)
.L8002BB1C:
/* 17B55C 8002BB1C 3C048005 */  lui        $a0, %hi(D_80052038)
/* 17B560 8002BB20 94842038 */  lhu        $a0, %lo(D_80052038)($a0)
/* 17B564 8002BB24 2482FFF5 */  addiu      $v0, $a0, -0xb
/* 17B568 8002BB28 2C42006E */  sltiu      $v0, $v0, 0x6e
/* 17B56C 8002BB2C 10400038 */  beqz       $v0, .L8002BC10
/* 17B570 8002BB30 3C035555 */   lui       $v1, 0x5555
/* 17B574 8002BB34 34635556 */  ori        $v1, $v1, 0x5556
/* 17B578 8002BB38 2482FFF6 */  addiu      $v0, $a0, -0xa
/* 17B57C 8002BB3C 00430018 */  mult       $v0, $v1
/* 17B580 8002BB40 000217C3 */  sra        $v0, $v0, 0x1f
/* 17B584 8002BB44 240307D0 */  addiu      $v1, $zero, 0x7d0
/* 17B588 8002BB48 00004810 */  mfhi       $t1
/* 17B58C 8002BB4C 01221023 */  subu       $v0, $t1, $v0
/* 17B590 8002BB50 3042FFFF */  andi       $v0, $v0, 0xffff
/* 17B594 8002BB54 24420001 */  addiu      $v0, $v0, 1
/* 17B598 8002BB58 0062001A */  div        $zero, $v1, $v0
/* 17B59C 8002BB5C 14400002 */  bnez       $v0, .L8002BB68
/* 17B5A0 8002BB60 00000000 */   nop
/* 17B5A4 8002BB64 0007000D */  break      7
.L8002BB68:
/* 17B5A8 8002BB68 2401FFFF */   addiu     $at, $zero, -1
/* 17B5AC 8002BB6C 14410004 */  bne        $v0, $at, .L8002BB80
/* 17B5B0 8002BB70 3C018000 */   lui       $at, 0x8000
/* 17B5B4 8002BB74 14610002 */  bne        $v1, $at, .L8002BB80
/* 17B5B8 8002BB78 00000000 */   nop
/* 17B5BC 8002BB7C 0006000D */  break      6
.L8002BB80:
/* 17B5C0 8002BB80 00001812 */   mflo      $v1
/* 17B5C4 8002BB84 3C028005 */  lui        $v0, %hi(D_80051E80)
/* 17B5C8 8002BB88 94421E80 */  lhu        $v0, %lo(D_80051E80)($v0)
/* 17B5CC 8002BB8C 00431021 */  addu       $v0, $v0, $v1
/* 17B5D0 8002BB90 3C018005 */  lui        $at, %hi(D_80051E80)
/* 17B5D4 8002BB94 A4221E80 */  sh         $v0, %lo(D_80051E80)($at)
/* 17B5D8 8002BB98 000213C2 */  srl        $v0, $v0, 0xf
/* 17B5DC 8002BB9C 30420001 */  andi       $v0, $v0, 1
/* 17B5E0 8002BBA0 10400003 */  beqz       $v0, .L8002BBB0
/* 17B5E4 8002BBA4 24023FFF */   addiu     $v0, $zero, 0x3fff
/* 17B5E8 8002BBA8 3C018005 */  lui        $at, %hi(D_80051E80)
/* 17B5EC 8002BBAC A4221E80 */  sh         $v0, %lo(D_80051E80)($at)
.L8002BBB0:
/* 17B5F0 8002BBB0 3C048005 */  lui        $a0, %hi(D_80051E80)
/* 17B5F4 8002BBB4 0C02FFD0 */  jal        func_800BFF40
/* 17B5F8 8002BBB8 94841E80 */   lhu       $a0, %lo(D_80051E80)($a0)
/* 17B5FC 8002BBBC 00021400 */  sll        $v0, $v0, 0x10
/* 17B600 8002BBC0 3C014700 */  lui        $at, 0x4700
/* 17B604 8002BBC4 44811000 */  mtc1       $at, $f2
/* 17B608 8002BBC8 00021403 */  sra        $v0, $v0, 0x10
/* 17B60C 8002BBCC 44820000 */  mtc1       $v0, $f0
/* 17B610 8002BBD0 00000000 */  nop
/* 17B614 8002BBD4 46800020 */  cvt.s.w    $f0, $f0
/* 17B618 8002BBD8 46020003 */  div.s      $f0, $f0, $f2
/* 17B61C 8002BBDC 46000080 */  add.s      $f2, $f0, $f0
/* 17B620 8002BBE0 44800000 */  mtc1       $zero, $f0
/* 17B624 8002BBE4 00000000 */  nop
/* 17B628 8002BBE8 4602003E */  c.le.s     $f0, $f2
/* 17B62C 8002BBEC 00000000 */  nop
/* 17B630 8002BBF0 45000007 */  bc1f       .L8002BC10
/* 17B634 8002BBF4 00000000 */   nop
/* 17B638 8002BBF8 8E240024 */  lw         $a0, 0x24($s1)
/* 17B63C 8002BBFC 3C063F80 */  lui        $a2, 0x3f80
/* 17B640 8002BC00 44071000 */  mfc1       $a3, $f2
/* 17B644 8002BC04 00000000 */  nop
/* 17B648 8002BC08 0C02915B */  jal        func_800A456C
/* 17B64C 8002BC0C 00002821 */   addu      $a1, $zero, $zero
.L8002BC10:
/* 17B650 8002BC10 8FBF0068 */  lw         $ra, 0x68($sp)
/* 17B654 8002BC14 8FB10064 */  lw         $s1, 0x64($sp)
/* 17B658 8002BC18 8FB00060 */  lw         $s0, 0x60($sp)
/* 17B65C 8002BC1C 03E00008 */  jr         $ra
/* 17B660 8002BC20 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002BC24_17B664
/* 17B664 8002BC24 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 17B668 8002BC28 27A70030 */  addiu      $a3, $sp, 0x30
/* 17B66C 8002BC2C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17B670 8002BC30 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17B674 8002BC34 3C068005 */  lui        $a2, %hi(D_80050878)
/* 17B678 8002BC38 24C60878 */  addiu      $a2, $a2, %lo(D_80050878)
/* 17B67C 8002BC3C 24C80020 */  addiu      $t0, $a2, 0x20
/* 17B680 8002BC40 AFBF0064 */  sw         $ra, 0x64($sp)
/* 17B684 8002BC44 AFB00060 */  sw         $s0, 0x60($sp)
/* 17B688 8002BC48 8C50002C */  lw         $s0, 0x2c($v0)
.L8002BC4C:
/* 17B68C 8002BC4C 8CC20000 */  lw         $v0, ($a2)
/* 17B690 8002BC50 8CC30004 */  lw         $v1, 4($a2)
/* 17B694 8002BC54 8CC40008 */  lw         $a0, 8($a2)
/* 17B698 8002BC58 8CC5000C */  lw         $a1, 0xc($a2)
/* 17B69C 8002BC5C ACE20000 */  sw         $v0, ($a3)
/* 17B6A0 8002BC60 ACE30004 */  sw         $v1, 4($a3)
/* 17B6A4 8002BC64 ACE40008 */  sw         $a0, 8($a3)
/* 17B6A8 8002BC68 ACE5000C */  sw         $a1, 0xc($a3)
/* 17B6AC 8002BC6C 24C60010 */  addiu      $a2, $a2, 0x10
/* 17B6B0 8002BC70 14C8FFF6 */  bne        $a2, $t0, .L8002BC4C
/* 17B6B4 8002BC74 24E70010 */   addiu     $a3, $a3, 0x10
/* 17B6B8 8002BC78 8CC20000 */  lw         $v0, ($a2)
/* 17B6BC 8002BC7C 8CC30004 */  lw         $v1, 4($a2)
/* 17B6C0 8002BC80 8CC40008 */  lw         $a0, 8($a2)
/* 17B6C4 8002BC84 ACE20000 */  sw         $v0, ($a3)
/* 17B6C8 8002BC88 ACE30004 */  sw         $v1, 4($a3)
/* 17B6CC 8002BC8C ACE40008 */  sw         $a0, 8($a3)
/* 17B6D0 8002BC90 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17B6D4 8002BC94 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17B6D8 8002BC98 10600005 */  beqz       $v1, .L8002BCB0
/* 17B6DC 8002BC9C 24020014 */   addiu     $v0, $zero, 0x14
/* 17B6E0 8002BCA0 1062001F */  beq        $v1, $v0, .L8002BD20
/* 17B6E4 8002BCA4 00002021 */   addu      $a0, $zero, $zero
/* 17B6E8 8002BCA8 0800AF53 */  j          .L8002BD4C
/* 17B6EC 8002BCAC 00000000 */   nop
.L8002BCB0:
/* 17B6F0 8002BCB0 8FA20040 */  lw         $v0, 0x40($sp)
/* 17B6F4 8002BCB4 8FA30044 */  lw         $v1, 0x44($sp)
/* 17B6F8 8002BCB8 8FA40048 */  lw         $a0, 0x48($sp)
/* 17B6FC 8002BCBC 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17B700 8002BCC0 AFA20010 */  sw         $v0, 0x10($sp)
/* 17B704 8002BCC4 AFA30014 */  sw         $v1, 0x14($sp)
/* 17B708 8002BCC8 AFA40018 */  sw         $a0, 0x18($sp)
/* 17B70C 8002BCCC AFA5001C */  sw         $a1, 0x1c($sp)
/* 17B710 8002BCD0 8FA20050 */  lw         $v0, 0x50($sp)
/* 17B714 8002BCD4 8FA30054 */  lw         $v1, 0x54($sp)
/* 17B718 8002BCD8 8FA40058 */  lw         $a0, 0x58($sp)
/* 17B71C 8002BCDC AFA20020 */  sw         $v0, 0x20($sp)
/* 17B720 8002BCE0 AFA30024 */  sw         $v1, 0x24($sp)
/* 17B724 8002BCE4 AFA40028 */  sw         $a0, 0x28($sp)
/* 17B728 8002BCE8 8FA40030 */  lw         $a0, 0x30($sp)
/* 17B72C 8002BCEC 8FA50034 */  lw         $a1, 0x34($sp)
/* 17B730 8002BCF0 8FA60038 */  lw         $a2, 0x38($sp)
/* 17B734 8002BCF4 0C0099F7 */  jal        func_800267DC_17621C
/* 17B738 8002BCF8 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17B73C 8002BCFC 24040023 */  addiu      $a0, $zero, 0x23
/* 17B740 8002BD00 24050080 */  addiu      $a1, $zero, 0x80
/* 17B744 8002BD04 24060080 */  addiu      $a2, $zero, 0x80
/* 17B748 8002BD08 24070001 */  addiu      $a3, $zero, 1
/* 17B74C 8002BD0C 24020064 */  addiu      $v0, $zero, 0x64
/* 17B750 8002BD10 0C026E0C */  jal        func_8009B830
/* 17B754 8002BD14 AFA20010 */   sw        $v0, 0x10($sp)
/* 17B758 8002BD18 0800AF53 */  j          .L8002BD4C
/* 17B75C 8002BD1C 00000000 */   nop
.L8002BD20:
/* 17B760 8002BD20 24050002 */  addiu      $a1, $zero, 2
/* 17B764 8002BD24 00003021 */  addu       $a2, $zero, $zero
/* 17B768 8002BD28 24070032 */  addiu      $a3, $zero, 0x32
/* 17B76C 8002BD2C 24030001 */  addiu      $v1, $zero, 1
/* 17B770 8002BD30 24020019 */  addiu      $v0, $zero, 0x19
/* 17B774 8002BD34 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 17B778 8002BD38 AC239FA8 */  sw         $v1, %lo(D_80149FA8)($at)
/* 17B77C 8002BD3C AFA20010 */  sw         $v0, 0x10($sp)
/* 17B780 8002BD40 AFA30014 */  sw         $v1, 0x14($sp)
/* 17B784 8002BD44 0C0E5BE4 */  jal        func_80396F90
/* 17B788 8002BD48 AFA00018 */   sw        $zero, 0x18($sp)
.L8002BD4C:
/* 17B78C 8002BD4C 8E040000 */  lw         $a0, ($s0)
/* 17B790 8002BD50 00002821 */  addu       $a1, $zero, $zero
/* 17B794 8002BD54 0C02933E */  jal        func_800A4CF8
/* 17B798 8002BD58 240601E0 */   addiu     $a2, $zero, 0x1e0
/* 17B79C 8002BD5C 8FBF0064 */  lw         $ra, 0x64($sp)
/* 17B7A0 8002BD60 8FB00060 */  lw         $s0, 0x60($sp)
/* 17B7A4 8002BD64 03E00008 */  jr         $ra
/* 17B7A8 8002BD68 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_8002BD6C_17B7AC
/* 17B7AC 8002BD6C 27BDFF30 */  addiu      $sp, $sp, -0xd0
/* 17B7B0 8002BD70 27A70030 */  addiu      $a3, $sp, 0x30
/* 17B7B4 8002BD74 3C068005 */  lui        $a2, %hi(D_800508A4)
/* 17B7B8 8002BD78 24C608A4 */  addiu      $a2, $a2, %lo(D_800508A4)
/* 17B7BC 8002BD7C 24C80020 */  addiu      $t0, $a2, 0x20
/* 17B7C0 8002BD80 AFBF00C0 */  sw         $ra, 0xc0($sp)
/* 17B7C4 8002BD84 F7B400C8 */  sdc1       $f20, 0xc8($sp)
.L8002BD88:
/* 17B7C8 8002BD88 8CC20000 */  lw         $v0, ($a2)
/* 17B7CC 8002BD8C 8CC30004 */  lw         $v1, 4($a2)
/* 17B7D0 8002BD90 8CC40008 */  lw         $a0, 8($a2)
/* 17B7D4 8002BD94 8CC5000C */  lw         $a1, 0xc($a2)
/* 17B7D8 8002BD98 ACE20000 */  sw         $v0, ($a3)
/* 17B7DC 8002BD9C ACE30004 */  sw         $v1, 4($a3)
/* 17B7E0 8002BDA0 ACE40008 */  sw         $a0, 8($a3)
/* 17B7E4 8002BDA4 ACE5000C */  sw         $a1, 0xc($a3)
/* 17B7E8 8002BDA8 24C60010 */  addiu      $a2, $a2, 0x10
/* 17B7EC 8002BDAC 14C8FFF6 */  bne        $a2, $t0, .L8002BD88
/* 17B7F0 8002BDB0 24E70010 */   addiu     $a3, $a3, 0x10
/* 17B7F4 8002BDB4 8CC20000 */  lw         $v0, ($a2)
/* 17B7F8 8002BDB8 8CC30004 */  lw         $v1, 4($a2)
/* 17B7FC 8002BDBC 8CC40008 */  lw         $a0, 8($a2)
/* 17B800 8002BDC0 ACE20000 */  sw         $v0, ($a3)
/* 17B804 8002BDC4 ACE30004 */  sw         $v1, 4($a3)
/* 17B808 8002BDC8 ACE40008 */  sw         $a0, 8($a3)
/* 17B80C 8002BDCC 27A70060 */  addiu      $a3, $sp, 0x60
/* 17B810 8002BDD0 3C068005 */  lui        $a2, %hi(D_800508D0)
/* 17B814 8002BDD4 24C608D0 */  addiu      $a2, $a2, %lo(D_800508D0)
/* 17B818 8002BDD8 24C80020 */  addiu      $t0, $a2, 0x20
.L8002BDDC:
/* 17B81C 8002BDDC 8CC20000 */  lw         $v0, ($a2)
/* 17B820 8002BDE0 8CC30004 */  lw         $v1, 4($a2)
/* 17B824 8002BDE4 8CC40008 */  lw         $a0, 8($a2)
/* 17B828 8002BDE8 8CC5000C */  lw         $a1, 0xc($a2)
/* 17B82C 8002BDEC ACE20000 */  sw         $v0, ($a3)
/* 17B830 8002BDF0 ACE30004 */  sw         $v1, 4($a3)
/* 17B834 8002BDF4 ACE40008 */  sw         $a0, 8($a3)
/* 17B838 8002BDF8 ACE5000C */  sw         $a1, 0xc($a3)
/* 17B83C 8002BDFC 24C60010 */  addiu      $a2, $a2, 0x10
/* 17B840 8002BE00 14C8FFF6 */  bne        $a2, $t0, .L8002BDDC
/* 17B844 8002BE04 24E70010 */   addiu     $a3, $a3, 0x10
/* 17B848 8002BE08 8CC20000 */  lw         $v0, ($a2)
/* 17B84C 8002BE0C 8CC30004 */  lw         $v1, 4($a2)
/* 17B850 8002BE10 8CC40008 */  lw         $a0, 8($a2)
/* 17B854 8002BE14 ACE20000 */  sw         $v0, ($a3)
/* 17B858 8002BE18 ACE30004 */  sw         $v1, 4($a3)
/* 17B85C 8002BE1C ACE40008 */  sw         $a0, 8($a3)
/* 17B860 8002BE20 27A70090 */  addiu      $a3, $sp, 0x90
/* 17B864 8002BE24 3C068005 */  lui        $a2, %hi(D_800508FC)
/* 17B868 8002BE28 24C608FC */  addiu      $a2, $a2, %lo(D_800508FC)
/* 17B86C 8002BE2C 24C80020 */  addiu      $t0, $a2, 0x20
.L8002BE30:
/* 17B870 8002BE30 8CC20000 */  lw         $v0, ($a2)
/* 17B874 8002BE34 8CC30004 */  lw         $v1, 4($a2)
/* 17B878 8002BE38 8CC40008 */  lw         $a0, 8($a2)
/* 17B87C 8002BE3C 8CC5000C */  lw         $a1, 0xc($a2)
/* 17B880 8002BE40 ACE20000 */  sw         $v0, ($a3)
/* 17B884 8002BE44 ACE30004 */  sw         $v1, 4($a3)
/* 17B888 8002BE48 ACE40008 */  sw         $a0, 8($a3)
/* 17B88C 8002BE4C ACE5000C */  sw         $a1, 0xc($a3)
/* 17B890 8002BE50 24C60010 */  addiu      $a2, $a2, 0x10
/* 17B894 8002BE54 14C8FFF6 */  bne        $a2, $t0, .L8002BE30
/* 17B898 8002BE58 24E70010 */   addiu     $a3, $a3, 0x10
/* 17B89C 8002BE5C 8CC20000 */  lw         $v0, ($a2)
/* 17B8A0 8002BE60 8CC30004 */  lw         $v1, 4($a2)
/* 17B8A4 8002BE64 8CC40008 */  lw         $a0, 8($a2)
/* 17B8A8 8002BE68 ACE20000 */  sw         $v0, ($a3)
/* 17B8AC 8002BE6C ACE30004 */  sw         $v1, 4($a3)
/* 17B8B0 8002BE70 ACE40008 */  sw         $a0, 8($a3)
/* 17B8B4 8002BE74 C7A20078 */  lwc1       $f2, 0x78($sp)
/* 17B8B8 8002BE78 C7A000A8 */  lwc1       $f0, 0xa8($sp)
/* 17B8BC 8002BE7C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17B8C0 8002BE80 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17B8C4 8002BE84 24020014 */  addiu      $v0, $zero, 0x14
/* 17B8C8 8002BE88 10620021 */  beq        $v1, $v0, .L8002BF10
/* 17B8CC 8002BE8C 46001501 */   sub.s     $f20, $f2, $f0
/* 17B8D0 8002BE90 28620015 */  slti       $v0, $v1, 0x15
/* 17B8D4 8002BE94 50400005 */  beql       $v0, $zero, .L8002BEAC
/* 17B8D8 8002BE98 24020050 */   addiu     $v0, $zero, 0x50
/* 17B8DC 8002BE9C 10600007 */  beqz       $v1, .L8002BEBC
/* 17B8E0 8002BEA0 00000000 */   nop
/* 17B8E4 8002BEA4 0800AFEC */  j          .L8002BFB0
/* 17B8E8 8002BEA8 00000000 */   nop
.L8002BEAC:
/* 17B8EC 8002BEAC 10620021 */  beq        $v1, $v0, .L8002BF34
/* 17B8F0 8002BEB0 00000000 */   nop
/* 17B8F4 8002BEB4 0800AFEC */  j          .L8002BFB0
/* 17B8F8 8002BEB8 00000000 */   nop
.L8002BEBC:
/* 17B8FC 8002BEBC 8FA20040 */  lw         $v0, 0x40($sp)
/* 17B900 8002BEC0 8FA30044 */  lw         $v1, 0x44($sp)
/* 17B904 8002BEC4 8FA40048 */  lw         $a0, 0x48($sp)
/* 17B908 8002BEC8 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17B90C 8002BECC AFA20010 */  sw         $v0, 0x10($sp)
/* 17B910 8002BED0 AFA30014 */  sw         $v1, 0x14($sp)
/* 17B914 8002BED4 AFA40018 */  sw         $a0, 0x18($sp)
/* 17B918 8002BED8 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17B91C 8002BEDC 8FA20050 */  lw         $v0, 0x50($sp)
/* 17B920 8002BEE0 8FA30054 */  lw         $v1, 0x54($sp)
/* 17B924 8002BEE4 8FA40058 */  lw         $a0, 0x58($sp)
/* 17B928 8002BEE8 AFA20020 */  sw         $v0, 0x20($sp)
/* 17B92C 8002BEEC AFA30024 */  sw         $v1, 0x24($sp)
/* 17B930 8002BEF0 AFA40028 */  sw         $a0, 0x28($sp)
/* 17B934 8002BEF4 8FA40030 */  lw         $a0, 0x30($sp)
/* 17B938 8002BEF8 8FA50034 */  lw         $a1, 0x34($sp)
/* 17B93C 8002BEFC 8FA60038 */  lw         $a2, 0x38($sp)
/* 17B940 8002BF00 0C0099F7 */  jal        func_800267DC_17621C
/* 17B944 8002BF04 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17B948 8002BF08 0800AFEC */  j          .L8002BFB0
/* 17B94C 8002BF0C 00000000 */   nop
.L8002BF10:
/* 17B950 8002BF10 24020064 */  addiu      $v0, $zero, 0x64
/* 17B954 8002BF14 AFA20010 */  sw         $v0, 0x10($sp)
/* 17B958 8002BF18 2404007A */  addiu      $a0, $zero, 0x7a
/* 17B95C 8002BF1C 24050080 */  addiu      $a1, $zero, 0x80
/* 17B960 8002BF20 24060080 */  addiu      $a2, $zero, 0x80
/* 17B964 8002BF24 0C026E0C */  jal        func_8009B830
/* 17B968 8002BF28 24070001 */   addiu     $a3, $zero, 1
/* 17B96C 8002BF2C 0800AFEC */  j          .L8002BFB0
/* 17B970 8002BF30 00000000 */   nop
.L8002BF34:
/* 17B974 8002BF34 8FA20070 */  lw         $v0, 0x70($sp)
/* 17B978 8002BF38 8FA30074 */  lw         $v1, 0x74($sp)
/* 17B97C 8002BF3C 8FA40078 */  lw         $a0, 0x78($sp)
/* 17B980 8002BF40 8FA5007C */  lw         $a1, 0x7c($sp)
/* 17B984 8002BF44 AFA20010 */  sw         $v0, 0x10($sp)
/* 17B988 8002BF48 AFA30014 */  sw         $v1, 0x14($sp)
/* 17B98C 8002BF4C AFA40018 */  sw         $a0, 0x18($sp)
/* 17B990 8002BF50 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17B994 8002BF54 8FA20080 */  lw         $v0, 0x80($sp)
/* 17B998 8002BF58 8FA30084 */  lw         $v1, 0x84($sp)
/* 17B99C 8002BF5C 8FA40088 */  lw         $a0, 0x88($sp)
/* 17B9A0 8002BF60 AFA20020 */  sw         $v0, 0x20($sp)
/* 17B9A4 8002BF64 AFA30024 */  sw         $v1, 0x24($sp)
/* 17B9A8 8002BF68 AFA40028 */  sw         $a0, 0x28($sp)
/* 17B9AC 8002BF6C 8FA40060 */  lw         $a0, 0x60($sp)
/* 17B9B0 8002BF70 8FA50064 */  lw         $a1, 0x64($sp)
/* 17B9B4 8002BF74 8FA60068 */  lw         $a2, 0x68($sp)
/* 17B9B8 8002BF78 0C0099F7 */  jal        func_800267DC_17621C
/* 17B9BC 8002BF7C 8FA7006C */   lw        $a3, 0x6c($sp)
/* 17B9C0 8002BF80 00002021 */  addu       $a0, $zero, $zero
/* 17B9C4 8002BF84 24050002 */  addiu      $a1, $zero, 2
/* 17B9C8 8002BF88 00003021 */  addu       $a2, $zero, $zero
/* 17B9CC 8002BF8C 24070059 */  addiu      $a3, $zero, 0x59
/* 17B9D0 8002BF90 24030001 */  addiu      $v1, $zero, 1
/* 17B9D4 8002BF94 2402003E */  addiu      $v0, $zero, 0x3e
/* 17B9D8 8002BF98 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 17B9DC 8002BF9C AC239FA8 */  sw         $v1, %lo(D_80149FA8)($at)
/* 17B9E0 8002BFA0 AFA20010 */  sw         $v0, 0x10($sp)
/* 17B9E4 8002BFA4 AFA30014 */  sw         $v1, 0x14($sp)
/* 17B9E8 8002BFA8 0C0E5BE4 */  jal        func_80396F90
/* 17B9EC 8002BFAC AFA00018 */   sw        $zero, 0x18($sp)
.L8002BFB0:
/* 17B9F0 8002BFB0 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17B9F4 8002BFB4 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17B9F8 8002BFB8 2C420051 */  sltiu      $v0, $v0, 0x51
/* 17B9FC 8002BFBC 1440000A */  bnez       $v0, .L8002BFE8
/* 17BA00 8002BFC0 00000000 */   nop
/* 17BA04 8002BFC4 3C014387 */  lui        $at, 0x4387
/* 17BA08 8002BFC8 44810000 */  mtc1       $at, $f0
/* 17BA0C 8002BFCC 00000000 */  nop
/* 17BA10 8002BFD0 4600A503 */  div.s      $f20, $f20, $f0
/* 17BA14 8002BFD4 3C028015 */  lui        $v0, %hi(D_8014A088)
/* 17BA18 8002BFD8 2442A088 */  addiu      $v0, $v0, %lo(D_8014A088)
/* 17BA1C 8002BFDC C4400000 */  lwc1       $f0, ($v0)
/* 17BA20 8002BFE0 46140001 */  sub.s      $f0, $f0, $f20
/* 17BA24 8002BFE4 E4400000 */  swc1       $f0, ($v0)
.L8002BFE8:
/* 17BA28 8002BFE8 8FBF00C0 */  lw         $ra, 0xc0($sp)
/* 17BA2C 8002BFEC D7B400C8 */  ldc1       $f20, 0xc8($sp)
/* 17BA30 8002BFF0 03E00008 */  jr         $ra
/* 17BA34 8002BFF4 27BD00D0 */   addiu     $sp, $sp, 0xd0

glabel func_8002BFF8_17BA38
/* 17BA38 8002BFF8 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 17BA3C 8002BFFC 27A70030 */  addiu      $a3, $sp, 0x30
/* 17BA40 8002C000 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17BA44 8002C004 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17BA48 8002C008 3C068005 */  lui        $a2, %hi(D_80050928)
/* 17BA4C 8002C00C 24C60928 */  addiu      $a2, $a2, %lo(D_80050928)
/* 17BA50 8002C010 24C80020 */  addiu      $t0, $a2, 0x20
/* 17BA54 8002C014 AFBF0094 */  sw         $ra, 0x94($sp)
/* 17BA58 8002C018 AFB00090 */  sw         $s0, 0x90($sp)
/* 17BA5C 8002C01C F7B40098 */  sdc1       $f20, 0x98($sp)
/* 17BA60 8002C020 8C500028 */  lw         $s0, 0x28($v0)
.L8002C024:
/* 17BA64 8002C024 8CC20000 */  lw         $v0, ($a2)
/* 17BA68 8002C028 8CC30004 */  lw         $v1, 4($a2)
/* 17BA6C 8002C02C 8CC40008 */  lw         $a0, 8($a2)
/* 17BA70 8002C030 8CC5000C */  lw         $a1, 0xc($a2)
/* 17BA74 8002C034 ACE20000 */  sw         $v0, ($a3)
/* 17BA78 8002C038 ACE30004 */  sw         $v1, 4($a3)
/* 17BA7C 8002C03C ACE40008 */  sw         $a0, 8($a3)
/* 17BA80 8002C040 ACE5000C */  sw         $a1, 0xc($a3)
/* 17BA84 8002C044 24C60010 */  addiu      $a2, $a2, 0x10
/* 17BA88 8002C048 14C8FFF6 */  bne        $a2, $t0, .L8002C024
/* 17BA8C 8002C04C 24E70010 */   addiu     $a3, $a3, 0x10
/* 17BA90 8002C050 8CC20000 */  lw         $v0, ($a2)
/* 17BA94 8002C054 8CC30004 */  lw         $v1, 4($a2)
/* 17BA98 8002C058 8CC40008 */  lw         $a0, 8($a2)
/* 17BA9C 8002C05C ACE20000 */  sw         $v0, ($a3)
/* 17BAA0 8002C060 ACE30004 */  sw         $v1, 4($a3)
/* 17BAA4 8002C064 ACE40008 */  sw         $a0, 8($a3)
/* 17BAA8 8002C068 27A70060 */  addiu      $a3, $sp, 0x60
/* 17BAAC 8002C06C 3C068005 */  lui        $a2, %hi(D_80050954)
/* 17BAB0 8002C070 24C60954 */  addiu      $a2, $a2, %lo(D_80050954)
/* 17BAB4 8002C074 24C80020 */  addiu      $t0, $a2, 0x20
.L8002C078:
/* 17BAB8 8002C078 8CC20000 */  lw         $v0, ($a2)
/* 17BABC 8002C07C 8CC30004 */  lw         $v1, 4($a2)
/* 17BAC0 8002C080 8CC40008 */  lw         $a0, 8($a2)
/* 17BAC4 8002C084 8CC5000C */  lw         $a1, 0xc($a2)
/* 17BAC8 8002C088 ACE20000 */  sw         $v0, ($a3)
/* 17BACC 8002C08C ACE30004 */  sw         $v1, 4($a3)
/* 17BAD0 8002C090 ACE40008 */  sw         $a0, 8($a3)
/* 17BAD4 8002C094 ACE5000C */  sw         $a1, 0xc($a3)
/* 17BAD8 8002C098 24C60010 */  addiu      $a2, $a2, 0x10
/* 17BADC 8002C09C 14C8FFF6 */  bne        $a2, $t0, .L8002C078
/* 17BAE0 8002C0A0 24E70010 */   addiu     $a3, $a3, 0x10
/* 17BAE4 8002C0A4 8CC20000 */  lw         $v0, ($a2)
/* 17BAE8 8002C0A8 8CC30004 */  lw         $v1, 4($a2)
/* 17BAEC 8002C0AC 8CC40008 */  lw         $a0, 8($a2)
/* 17BAF0 8002C0B0 ACE20000 */  sw         $v0, ($a3)
/* 17BAF4 8002C0B4 ACE30004 */  sw         $v1, 4($a3)
/* 17BAF8 8002C0B8 ACE40008 */  sw         $a0, 8($a3)
/* 17BAFC 8002C0BC C7A20048 */  lwc1       $f2, 0x48($sp)
/* 17BB00 8002C0C0 C7A00078 */  lwc1       $f0, 0x78($sp)
/* 17BB04 8002C0C4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17BB08 8002C0C8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17BB0C 8002C0CC 10600006 */  beqz       $v1, .L8002C0E8
/* 17BB10 8002C0D0 46001501 */   sub.s     $f20, $f2, $f0
/* 17BB14 8002C0D4 2402003C */  addiu      $v0, $zero, 0x3c
/* 17BB18 8002C0D8 1062003D */  beq        $v1, $v0, .L8002C1D0
/* 17BB1C 8002C0DC 00002021 */   addu      $a0, $zero, $zero
/* 17BB20 8002C0E0 0800B080 */  j          .L8002C200
/* 17BB24 8002C0E4 00000000 */   nop
.L8002C0E8:
/* 17BB28 8002C0E8 8FA20040 */  lw         $v0, 0x40($sp)
/* 17BB2C 8002C0EC 8FA30044 */  lw         $v1, 0x44($sp)
/* 17BB30 8002C0F0 8FA40048 */  lw         $a0, 0x48($sp)
/* 17BB34 8002C0F4 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17BB38 8002C0F8 AFA20010 */  sw         $v0, 0x10($sp)
/* 17BB3C 8002C0FC AFA30014 */  sw         $v1, 0x14($sp)
/* 17BB40 8002C100 AFA40018 */  sw         $a0, 0x18($sp)
/* 17BB44 8002C104 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17BB48 8002C108 8FA20050 */  lw         $v0, 0x50($sp)
/* 17BB4C 8002C10C 8FA30054 */  lw         $v1, 0x54($sp)
/* 17BB50 8002C110 8FA40058 */  lw         $a0, 0x58($sp)
/* 17BB54 8002C114 AFA20020 */  sw         $v0, 0x20($sp)
/* 17BB58 8002C118 AFA30024 */  sw         $v1, 0x24($sp)
/* 17BB5C 8002C11C AFA40028 */  sw         $a0, 0x28($sp)
/* 17BB60 8002C120 8FA40030 */  lw         $a0, 0x30($sp)
/* 17BB64 8002C124 8FA50034 */  lw         $a1, 0x34($sp)
/* 17BB68 8002C128 8FA60038 */  lw         $a2, 0x38($sp)
/* 17BB6C 8002C12C 0C0099F7 */  jal        func_800267DC_17621C
/* 17BB70 8002C130 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17BB74 8002C134 8E0401D0 */  lw         $a0, 0x1d0($s0)
/* 17BB78 8002C138 3C058005 */  lui        $a1, %hi(D_80050980)
/* 17BB7C 8002C13C 24A50980 */  addiu      $a1, $a1, %lo(D_80050980)
/* 17BB80 8002C140 0C009A55 */  jal        func_80026954_176394
/* 17BB84 8002C144 240605C2 */   addiu     $a2, $zero, 0x5c2
/* 17BB88 8002C148 8E0401D0 */  lw         $a0, 0x1d0($s0)
/* 17BB8C 8002C14C 3C058005 */  lui        $a1, %hi(D_80050988)
/* 17BB90 8002C150 24A50988 */  addiu      $a1, $a1, %lo(D_80050988)
/* 17BB94 8002C154 0C009A55 */  jal        func_80026954_176394
/* 17BB98 8002C158 240605C3 */   addiu     $a2, $zero, 0x5c3
/* 17BB9C 8002C15C 8E0401D0 */  lw         $a0, 0x1d0($s0)
/* 17BBA0 8002C160 3C058005 */  lui        $a1, %hi(D_80050990)
/* 17BBA4 8002C164 24A50990 */  addiu      $a1, $a1, %lo(D_80050990)
/* 17BBA8 8002C168 0C009A55 */  jal        func_80026954_176394
/* 17BBAC 8002C16C 240605C4 */   addiu     $a2, $zero, 0x5c4
/* 17BBB0 8002C170 8E0401D0 */  lw         $a0, 0x1d0($s0)
/* 17BBB4 8002C174 3C058005 */  lui        $a1, %hi(D_80050998)
/* 17BBB8 8002C178 24A50998 */  addiu      $a1, $a1, %lo(D_80050998)
/* 17BBBC 8002C17C 0C009A55 */  jal        func_80026954_176394
/* 17BBC0 8002C180 240605C5 */   addiu     $a2, $zero, 0x5c5
/* 17BBC4 8002C184 8E0401D0 */  lw         $a0, 0x1d0($s0)
/* 17BBC8 8002C188 3C058005 */  lui        $a1, %hi(D_800509A0)
/* 17BBCC 8002C18C 24A509A0 */  addiu      $a1, $a1, %lo(D_800509A0)
/* 17BBD0 8002C190 0C009A55 */  jal        func_80026954_176394
/* 17BBD4 8002C194 240605C6 */   addiu     $a2, $zero, 0x5c6
/* 17BBD8 8002C198 8E0401D0 */  lw         $a0, 0x1d0($s0)
/* 17BBDC 8002C19C 3C058005 */  lui        $a1, %hi(D_800509A8)
/* 17BBE0 8002C1A0 24A509A8 */  addiu      $a1, $a1, %lo(D_800509A8)
/* 17BBE4 8002C1A4 0C009A55 */  jal        func_80026954_176394
/* 17BBE8 8002C1A8 240605C7 */   addiu     $a2, $zero, 0x5c7
/* 17BBEC 8002C1AC 2404007B */  addiu      $a0, $zero, 0x7b
/* 17BBF0 8002C1B0 24050080 */  addiu      $a1, $zero, 0x80
/* 17BBF4 8002C1B4 24060080 */  addiu      $a2, $zero, 0x80
/* 17BBF8 8002C1B8 24070001 */  addiu      $a3, $zero, 1
/* 17BBFC 8002C1BC 24020064 */  addiu      $v0, $zero, 0x64
/* 17BC00 8002C1C0 0C026E0C */  jal        func_8009B830
/* 17BC04 8002C1C4 AFA20010 */   sw        $v0, 0x10($sp)
/* 17BC08 8002C1C8 0800B080 */  j          .L8002C200
/* 17BC0C 8002C1CC 00000000 */   nop
.L8002C1D0:
/* 17BC10 8002C1D0 24050004 */  addiu      $a1, $zero, 4
/* 17BC14 8002C1D4 24060001 */  addiu      $a2, $zero, 1
/* 17BC18 8002C1D8 240700B1 */  addiu      $a3, $zero, 0xb1
/* 17BC1C 8002C1DC 24020001 */  addiu      $v0, $zero, 1
/* 17BC20 8002C1E0 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 17BC24 8002C1E4 AC229FA8 */  sw         $v0, %lo(D_80149FA8)($at)
/* 17BC28 8002C1E8 2402002C */  addiu      $v0, $zero, 0x2c
/* 17BC2C 8002C1EC AFA20010 */  sw         $v0, 0x10($sp)
/* 17BC30 8002C1F0 24020005 */  addiu      $v0, $zero, 5
/* 17BC34 8002C1F4 AFA20014 */  sw         $v0, 0x14($sp)
/* 17BC38 8002C1F8 0C0E5BE4 */  jal        func_80396F90
/* 17BC3C 8002C1FC AFA00018 */   sw        $zero, 0x18($sp)
.L8002C200:
/* 17BC40 8002C200 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17BC44 8002C204 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17BC48 8002C208 2C42003C */  sltiu      $v0, $v0, 0x3c
/* 17BC4C 8002C20C 1040000A */  beqz       $v0, .L8002C238
/* 17BC50 8002C210 00000000 */   nop
/* 17BC54 8002C214 3C014270 */  lui        $at, 0x4270
/* 17BC58 8002C218 44810000 */  mtc1       $at, $f0
/* 17BC5C 8002C21C 00000000 */  nop
/* 17BC60 8002C220 4600A503 */  div.s      $f20, $f20, $f0
/* 17BC64 8002C224 3C028015 */  lui        $v0, %hi(D_8014A088)
/* 17BC68 8002C228 2442A088 */  addiu      $v0, $v0, %lo(D_8014A088)
/* 17BC6C 8002C22C C4400000 */  lwc1       $f0, ($v0)
/* 17BC70 8002C230 46140001 */  sub.s      $f0, $f0, $f20
/* 17BC74 8002C234 E4400000 */  swc1       $f0, ($v0)
.L8002C238:
/* 17BC78 8002C238 8FBF0094 */  lw         $ra, 0x94($sp)
/* 17BC7C 8002C23C 8FB00090 */  lw         $s0, 0x90($sp)
/* 17BC80 8002C240 D7B40098 */  ldc1       $f20, 0x98($sp)
/* 17BC84 8002C244 03E00008 */  jr         $ra
/* 17BC88 8002C248 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_8002C24C_17BC8C
/* 17BC8C 8002C24C 27BDFF60 */  addiu      $sp, $sp, -0xa0
/* 17BC90 8002C250 27A70030 */  addiu      $a3, $sp, 0x30
/* 17BC94 8002C254 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17BC98 8002C258 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17BC9C 8002C25C 3C068005 */  lui        $a2, %hi(D_800509B0)
/* 17BCA0 8002C260 24C609B0 */  addiu      $a2, $a2, %lo(D_800509B0)
/* 17BCA4 8002C264 24C80020 */  addiu      $t0, $a2, 0x20
/* 17BCA8 8002C268 AFBF0094 */  sw         $ra, 0x94($sp)
/* 17BCAC 8002C26C AFB00090 */  sw         $s0, 0x90($sp)
/* 17BCB0 8002C270 F7B40098 */  sdc1       $f20, 0x98($sp)
/* 17BCB4 8002C274 8C500028 */  lw         $s0, 0x28($v0)
.L8002C278:
/* 17BCB8 8002C278 8CC20000 */  lw         $v0, ($a2)
/* 17BCBC 8002C27C 8CC30004 */  lw         $v1, 4($a2)
/* 17BCC0 8002C280 8CC40008 */  lw         $a0, 8($a2)
/* 17BCC4 8002C284 8CC5000C */  lw         $a1, 0xc($a2)
/* 17BCC8 8002C288 ACE20000 */  sw         $v0, ($a3)
/* 17BCCC 8002C28C ACE30004 */  sw         $v1, 4($a3)
/* 17BCD0 8002C290 ACE40008 */  sw         $a0, 8($a3)
/* 17BCD4 8002C294 ACE5000C */  sw         $a1, 0xc($a3)
/* 17BCD8 8002C298 24C60010 */  addiu      $a2, $a2, 0x10
/* 17BCDC 8002C29C 14C8FFF6 */  bne        $a2, $t0, .L8002C278
/* 17BCE0 8002C2A0 24E70010 */   addiu     $a3, $a3, 0x10
/* 17BCE4 8002C2A4 8CC20000 */  lw         $v0, ($a2)
/* 17BCE8 8002C2A8 8CC30004 */  lw         $v1, 4($a2)
/* 17BCEC 8002C2AC 8CC40008 */  lw         $a0, 8($a2)
/* 17BCF0 8002C2B0 ACE20000 */  sw         $v0, ($a3)
/* 17BCF4 8002C2B4 ACE30004 */  sw         $v1, 4($a3)
/* 17BCF8 8002C2B8 ACE40008 */  sw         $a0, 8($a3)
/* 17BCFC 8002C2BC 27A70060 */  addiu      $a3, $sp, 0x60
/* 17BD00 8002C2C0 3C068005 */  lui        $a2, %hi(D_800509DC)
/* 17BD04 8002C2C4 24C609DC */  addiu      $a2, $a2, %lo(D_800509DC)
/* 17BD08 8002C2C8 24C80020 */  addiu      $t0, $a2, 0x20
.L8002C2CC:
/* 17BD0C 8002C2CC 8CC20000 */  lw         $v0, ($a2)
/* 17BD10 8002C2D0 8CC30004 */  lw         $v1, 4($a2)
/* 17BD14 8002C2D4 8CC40008 */  lw         $a0, 8($a2)
/* 17BD18 8002C2D8 8CC5000C */  lw         $a1, 0xc($a2)
/* 17BD1C 8002C2DC ACE20000 */  sw         $v0, ($a3)
/* 17BD20 8002C2E0 ACE30004 */  sw         $v1, 4($a3)
/* 17BD24 8002C2E4 ACE40008 */  sw         $a0, 8($a3)
/* 17BD28 8002C2E8 ACE5000C */  sw         $a1, 0xc($a3)
/* 17BD2C 8002C2EC 24C60010 */  addiu      $a2, $a2, 0x10
/* 17BD30 8002C2F0 14C8FFF6 */  bne        $a2, $t0, .L8002C2CC
/* 17BD34 8002C2F4 24E70010 */   addiu     $a3, $a3, 0x10
/* 17BD38 8002C2F8 8CC20000 */  lw         $v0, ($a2)
/* 17BD3C 8002C2FC 8CC30004 */  lw         $v1, 4($a2)
/* 17BD40 8002C300 8CC40008 */  lw         $a0, 8($a2)
/* 17BD44 8002C304 ACE20000 */  sw         $v0, ($a3)
/* 17BD48 8002C308 ACE30004 */  sw         $v1, 4($a3)
/* 17BD4C 8002C30C ACE40008 */  sw         $a0, 8($a3)
/* 17BD50 8002C310 C7A20034 */  lwc1       $f2, 0x34($sp)
/* 17BD54 8002C314 C7A00064 */  lwc1       $f0, 0x64($sp)
/* 17BD58 8002C318 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17BD5C 8002C31C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17BD60 8002C320 10600006 */  beqz       $v1, .L8002C33C
/* 17BD64 8002C324 46001501 */   sub.s     $f20, $f2, $f0
/* 17BD68 8002C328 2402001E */  addiu      $v0, $zero, 0x1e
/* 17BD6C 8002C32C 1062003D */  beq        $v1, $v0, .L8002C424
/* 17BD70 8002C330 00000000 */   nop
/* 17BD74 8002C334 0800B10B */  j          .L8002C42C
/* 17BD78 8002C338 00000000 */   nop
.L8002C33C:
/* 17BD7C 8002C33C 8FA20040 */  lw         $v0, 0x40($sp)
/* 17BD80 8002C340 8FA30044 */  lw         $v1, 0x44($sp)
/* 17BD84 8002C344 8FA40048 */  lw         $a0, 0x48($sp)
/* 17BD88 8002C348 8FA5004C */  lw         $a1, 0x4c($sp)
/* 17BD8C 8002C34C AFA20010 */  sw         $v0, 0x10($sp)
/* 17BD90 8002C350 AFA30014 */  sw         $v1, 0x14($sp)
/* 17BD94 8002C354 AFA40018 */  sw         $a0, 0x18($sp)
/* 17BD98 8002C358 AFA5001C */  sw         $a1, 0x1c($sp)
/* 17BD9C 8002C35C 8FA20050 */  lw         $v0, 0x50($sp)
/* 17BDA0 8002C360 8FA30054 */  lw         $v1, 0x54($sp)
/* 17BDA4 8002C364 8FA40058 */  lw         $a0, 0x58($sp)
/* 17BDA8 8002C368 AFA20020 */  sw         $v0, 0x20($sp)
/* 17BDAC 8002C36C AFA30024 */  sw         $v1, 0x24($sp)
/* 17BDB0 8002C370 AFA40028 */  sw         $a0, 0x28($sp)
/* 17BDB4 8002C374 8FA40030 */  lw         $a0, 0x30($sp)
/* 17BDB8 8002C378 8FA50034 */  lw         $a1, 0x34($sp)
/* 17BDBC 8002C37C 8FA60038 */  lw         $a2, 0x38($sp)
/* 17BDC0 8002C380 0C0099F7 */  jal        func_800267DC_17621C
/* 17BDC4 8002C384 8FA7003C */   lw        $a3, 0x3c($sp)
/* 17BDC8 8002C388 8E040068 */  lw         $a0, 0x68($s0)
/* 17BDCC 8002C38C 3C058005 */  lui        $a1, %hi(D_80050980)
/* 17BDD0 8002C390 24A50980 */  addiu      $a1, $a1, %lo(D_80050980)
/* 17BDD4 8002C394 0C009A55 */  jal        func_80026954_176394
/* 17BDD8 8002C398 240605C2 */   addiu     $a2, $zero, 0x5c2
/* 17BDDC 8002C39C 8E040068 */  lw         $a0, 0x68($s0)
/* 17BDE0 8002C3A0 3C058005 */  lui        $a1, %hi(D_80050988)
/* 17BDE4 8002C3A4 24A50988 */  addiu      $a1, $a1, %lo(D_80050988)
/* 17BDE8 8002C3A8 0C009A55 */  jal        func_80026954_176394
/* 17BDEC 8002C3AC 240605C3 */   addiu     $a2, $zero, 0x5c3
/* 17BDF0 8002C3B0 8E040068 */  lw         $a0, 0x68($s0)
/* 17BDF4 8002C3B4 3C058005 */  lui        $a1, %hi(D_80050990)
/* 17BDF8 8002C3B8 24A50990 */  addiu      $a1, $a1, %lo(D_80050990)
/* 17BDFC 8002C3BC 0C009A55 */  jal        func_80026954_176394
/* 17BE00 8002C3C0 240605C4 */   addiu     $a2, $zero, 0x5c4
/* 17BE04 8002C3C4 8E040068 */  lw         $a0, 0x68($s0)
/* 17BE08 8002C3C8 3C058005 */  lui        $a1, %hi(D_80050998)
/* 17BE0C 8002C3CC 24A50998 */  addiu      $a1, $a1, %lo(D_80050998)
/* 17BE10 8002C3D0 0C009A55 */  jal        func_80026954_176394
/* 17BE14 8002C3D4 240605C5 */   addiu     $a2, $zero, 0x5c5
/* 17BE18 8002C3D8 8E040068 */  lw         $a0, 0x68($s0)
/* 17BE1C 8002C3DC 3C058005 */  lui        $a1, %hi(D_800509A0)
/* 17BE20 8002C3E0 24A509A0 */  addiu      $a1, $a1, %lo(D_800509A0)
/* 17BE24 8002C3E4 0C009A55 */  jal        func_80026954_176394
/* 17BE28 8002C3E8 240605C6 */   addiu     $a2, $zero, 0x5c6
/* 17BE2C 8002C3EC 8E040068 */  lw         $a0, 0x68($s0)
/* 17BE30 8002C3F0 3C058005 */  lui        $a1, %hi(D_800509A8)
/* 17BE34 8002C3F4 24A509A8 */  addiu      $a1, $a1, %lo(D_800509A8)
/* 17BE38 8002C3F8 0C009A55 */  jal        func_80026954_176394
/* 17BE3C 8002C3FC 240605C7 */   addiu     $a2, $zero, 0x5c7
/* 17BE40 8002C400 24040052 */  addiu      $a0, $zero, 0x52
/* 17BE44 8002C404 24050080 */  addiu      $a1, $zero, 0x80
/* 17BE48 8002C408 24060080 */  addiu      $a2, $zero, 0x80
/* 17BE4C 8002C40C 24070001 */  addiu      $a3, $zero, 1
/* 17BE50 8002C410 24020064 */  addiu      $v0, $zero, 0x64
/* 17BE54 8002C414 0C026E0C */  jal        func_8009B830
/* 17BE58 8002C418 AFA20010 */   sw        $v0, 0x10($sp)
/* 17BE5C 8002C41C 0800B10B */  j          .L8002C42C
/* 17BE60 8002C420 00000000 */   nop
.L8002C424:
/* 17BE64 8002C424 0C026DBB */  jal        func_8009B6EC
/* 17BE68 8002C428 24040078 */   addiu     $a0, $zero, 0x78
.L8002C42C:
/* 17BE6C 8002C42C 3C014248 */  lui        $at, 0x4248
/* 17BE70 8002C430 44810000 */  mtc1       $at, $f0
/* 17BE74 8002C434 00000000 */  nop
/* 17BE78 8002C438 4600A503 */  div.s      $f20, $f20, $f0
/* 17BE7C 8002C43C 3C028015 */  lui        $v0, %hi(D_8014A068)
/* 17BE80 8002C440 2442A068 */  addiu      $v0, $v0, %lo(D_8014A068)
/* 17BE84 8002C444 C4400000 */  lwc1       $f0, ($v0)
/* 17BE88 8002C448 46140001 */  sub.s      $f0, $f0, $f20
/* 17BE8C 8002C44C C7A20064 */  lwc1       $f2, 0x64($sp)
/* 17BE90 8002C450 4602003E */  c.le.s     $f0, $f2
/* 17BE94 8002C454 00000000 */  nop
/* 17BE98 8002C458 00000000 */  nop
/* 17BE9C 8002C45C 45000002 */  bc1f       .L8002C468
/* 17BEA0 8002C460 E4400000 */   swc1      $f0, ($v0)
/* 17BEA4 8002C464 E4420000 */  swc1       $f2, ($v0)
.L8002C468:
/* 17BEA8 8002C468 8FBF0094 */  lw         $ra, 0x94($sp)
/* 17BEAC 8002C46C 8FB00090 */  lw         $s0, 0x90($sp)
/* 17BEB0 8002C470 D7B40098 */  ldc1       $f20, 0x98($sp)
/* 17BEB4 8002C474 03E00008 */  jr         $ra
/* 17BEB8 8002C478 27BD00A0 */   addiu     $sp, $sp, 0xa0

glabel func_8002C47C_17BEBC
/* 17BEBC 8002C47C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17BEC0 8002C480 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17BEC4 8002C484 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17BEC8 8002C488 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17BECC 8002C48C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17BED0 8002C490 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17BED4 8002C494 AFBF0020 */  sw         $ra, 0x20($sp)
/* 17BED8 8002C498 AFB00018 */  sw         $s0, 0x18($sp)
/* 17BEDC 8002C49C 8C50002C */  lw         $s0, 0x2c($v0)
/* 17BEE0 8002C4A0 14600008 */  bnez       $v1, .L8002C4C4
/* 17BEE4 8002C4A4 24110280 */   addiu     $s1, $zero, 0x280
/* 17BEE8 8002C4A8 24020064 */  addiu      $v0, $zero, 0x64
/* 17BEEC 8002C4AC AFA20010 */  sw         $v0, 0x10($sp)
/* 17BEF0 8002C4B0 2404007C */  addiu      $a0, $zero, 0x7c
/* 17BEF4 8002C4B4 24050080 */  addiu      $a1, $zero, 0x80
/* 17BEF8 8002C4B8 24060080 */  addiu      $a2, $zero, 0x80
/* 17BEFC 8002C4BC 0C026E0C */  jal        func_8009B830
/* 17BF00 8002C4C0 24070001 */   addiu     $a3, $zero, 1
.L8002C4C4:
/* 17BF04 8002C4C4 8E020000 */  lw         $v0, ($s0)
/* 17BF08 8002C4C8 8C430008 */  lw         $v1, 8($v0)
/* 17BF0C 8002C4CC 94620010 */  lhu        $v0, 0x10($v1)
/* 17BF10 8002C4D0 2442FF10 */  addiu      $v0, $v0, -0xf0
/* 17BF14 8002C4D4 A4620010 */  sh         $v0, 0x10($v1)
/* 17BF18 8002C4D8 00021400 */  sll        $v0, $v0, 0x10
/* 17BF1C 8002C4DC 00021403 */  sra        $v0, $v0, 0x10
/* 17BF20 8002C4E0 28420280 */  slti       $v0, $v0, 0x280
/* 17BF24 8002C4E4 10400004 */  beqz       $v0, .L8002C4F8
/* 17BF28 8002C4E8 00000000 */   nop
/* 17BF2C 8002C4EC 8E020000 */  lw         $v0, ($s0)
/* 17BF30 8002C4F0 8C420008 */  lw         $v0, 8($v0)
/* 17BF34 8002C4F4 A4510010 */  sh         $s1, 0x10($v0)
.L8002C4F8:
/* 17BF38 8002C4F8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17BF3C 8002C4FC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17BF40 8002C500 8FB00018 */  lw         $s0, 0x18($sp)
/* 17BF44 8002C504 03E00008 */  jr         $ra
/* 17BF48 8002C508 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002C50C_17BF4C
/* 17BF4C 8002C50C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17BF50 8002C510 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17BF54 8002C514 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17BF58 8002C518 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17BF5C 8002C51C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17BF60 8002C520 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17BF64 8002C524 AFBF0020 */  sw         $ra, 0x20($sp)
/* 17BF68 8002C528 AFB00018 */  sw         $s0, 0x18($sp)
/* 17BF6C 8002C52C 8C50002C */  lw         $s0, 0x2c($v0)
/* 17BF70 8002C530 14600008 */  bnez       $v1, .L8002C554
/* 17BF74 8002C534 24110280 */   addiu     $s1, $zero, 0x280
/* 17BF78 8002C538 24020064 */  addiu      $v0, $zero, 0x64
/* 17BF7C 8002C53C AFA20010 */  sw         $v0, 0x10($sp)
/* 17BF80 8002C540 2404007C */  addiu      $a0, $zero, 0x7c
/* 17BF84 8002C544 24050080 */  addiu      $a1, $zero, 0x80
/* 17BF88 8002C548 24060080 */  addiu      $a2, $zero, 0x80
/* 17BF8C 8002C54C 0C026E0C */  jal        func_8009B830
/* 17BF90 8002C550 24070001 */   addiu     $a3, $zero, 1
.L8002C554:
/* 17BF94 8002C554 8E020000 */  lw         $v0, ($s0)
/* 17BF98 8002C558 8C430008 */  lw         $v1, 8($v0)
/* 17BF9C 8002C55C 94620010 */  lhu        $v0, 0x10($v1)
/* 17BFA0 8002C560 2442FF10 */  addiu      $v0, $v0, -0xf0
/* 17BFA4 8002C564 A4620010 */  sh         $v0, 0x10($v1)
/* 17BFA8 8002C568 00021400 */  sll        $v0, $v0, 0x10
/* 17BFAC 8002C56C 00021403 */  sra        $v0, $v0, 0x10
/* 17BFB0 8002C570 28420280 */  slti       $v0, $v0, 0x280
/* 17BFB4 8002C574 10400004 */  beqz       $v0, .L8002C588
/* 17BFB8 8002C578 00000000 */   nop
/* 17BFBC 8002C57C 8E020000 */  lw         $v0, ($s0)
/* 17BFC0 8002C580 8C420008 */  lw         $v0, 8($v0)
/* 17BFC4 8002C584 A4510010 */  sh         $s1, 0x10($v0)
.L8002C588:
/* 17BFC8 8002C588 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17BFCC 8002C58C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17BFD0 8002C590 8FB00018 */  lw         $s0, 0x18($sp)
/* 17BFD4 8002C594 03E00008 */  jr         $ra
/* 17BFD8 8002C598 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002C59C_17BFDC
/* 17BFDC 8002C59C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17BFE0 8002C5A0 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17BFE4 8002C5A4 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17BFE8 8002C5A8 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17BFEC 8002C5AC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17BFF0 8002C5B0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17BFF4 8002C5B4 AFBF0020 */  sw         $ra, 0x20($sp)
/* 17BFF8 8002C5B8 AFB00018 */  sw         $s0, 0x18($sp)
/* 17BFFC 8002C5BC 8C50002C */  lw         $s0, 0x2c($v0)
/* 17C000 8002C5C0 14600008 */  bnez       $v1, .L8002C5E4
/* 17C004 8002C5C4 24110280 */   addiu     $s1, $zero, 0x280
/* 17C008 8002C5C8 24020064 */  addiu      $v0, $zero, 0x64
/* 17C00C 8002C5CC AFA20010 */  sw         $v0, 0x10($sp)
/* 17C010 8002C5D0 2404007C */  addiu      $a0, $zero, 0x7c
/* 17C014 8002C5D4 24050080 */  addiu      $a1, $zero, 0x80
/* 17C018 8002C5D8 24060080 */  addiu      $a2, $zero, 0x80
/* 17C01C 8002C5DC 0C026E0C */  jal        func_8009B830
/* 17C020 8002C5E0 24070001 */   addiu     $a3, $zero, 1
.L8002C5E4:
/* 17C024 8002C5E4 8E020000 */  lw         $v0, ($s0)
/* 17C028 8002C5E8 8C430008 */  lw         $v1, 8($v0)
/* 17C02C 8002C5EC 94620010 */  lhu        $v0, 0x10($v1)
/* 17C030 8002C5F0 2442FF10 */  addiu      $v0, $v0, -0xf0
/* 17C034 8002C5F4 A4620010 */  sh         $v0, 0x10($v1)
/* 17C038 8002C5F8 00021400 */  sll        $v0, $v0, 0x10
/* 17C03C 8002C5FC 00021403 */  sra        $v0, $v0, 0x10
/* 17C040 8002C600 28420280 */  slti       $v0, $v0, 0x280
/* 17C044 8002C604 10400004 */  beqz       $v0, .L8002C618
/* 17C048 8002C608 00000000 */   nop
/* 17C04C 8002C60C 8E020000 */  lw         $v0, ($s0)
/* 17C050 8002C610 8C420008 */  lw         $v0, 8($v0)
/* 17C054 8002C614 A4510010 */  sh         $s1, 0x10($v0)
.L8002C618:
/* 17C058 8002C618 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17C05C 8002C61C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17C060 8002C620 8FB00018 */  lw         $s0, 0x18($sp)
/* 17C064 8002C624 03E00008 */  jr         $ra
/* 17C068 8002C628 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002C62C_17C06C
/* 17C06C 8002C62C 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17C070 8002C630 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17C074 8002C634 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 17C078 8002C638 14400009 */  bnez       $v0, .L8002C660
/* 17C07C 8002C63C AFBF0018 */   sw        $ra, 0x18($sp)
/* 17C080 8002C640 0C026E5D */  jal        func_8009B974
/* 17C084 8002C644 24040005 */   addiu     $a0, $zero, 5
/* 17C088 8002C648 AFA00010 */  sw         $zero, 0x10($sp)
/* 17C08C 8002C64C 2404FFFE */  addiu      $a0, $zero, -2
/* 17C090 8002C650 2405FFFF */  addiu      $a1, $zero, -1
/* 17C094 8002C654 24060005 */  addiu      $a2, $zero, 5
/* 17C098 8002C658 0C026C9A */  jal        func_8009B268
/* 17C09C 8002C65C 00003821 */   addu      $a3, $zero, $zero
.L8002C660:
/* 17C0A0 8002C660 8FBF0018 */  lw         $ra, 0x18($sp)
/* 17C0A4 8002C664 03E00008 */  jr         $ra
/* 17C0A8 8002C668 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002C66C_17C0AC
/* 17C0AC 8002C66C 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 17C0B0 8002C670 27A70018 */  addiu      $a3, $sp, 0x18
/* 17C0B4 8002C674 3C068005 */  lui        $a2, %hi(D_80050A08)
/* 17C0B8 8002C678 24C60A08 */  addiu      $a2, $a2, %lo(D_80050A08)
/* 17C0BC 8002C67C 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17C0C0 8002C680 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17C0C4 8002C684 00E61025 */  or         $v0, $a3, $a2
/* 17C0C8 8002C688 30420003 */  andi       $v0, $v0, 3
/* 17C0CC 8002C68C AFBF0068 */  sw         $ra, 0x68($sp)
/* 17C0D0 8002C690 AFB10064 */  sw         $s1, 0x64($sp)
/* 17C0D4 8002C694 AFB00060 */  sw         $s0, 0x60($sp)
/* 17C0D8 8002C698 8C71002C */  lw         $s1, 0x2c($v1)
/* 17C0DC 8002C69C 10400016 */  beqz       $v0, .L8002C6F8
/* 17C0E0 8002C6A0 24C80020 */   addiu     $t0, $a2, 0x20
.L8002C6A4:
/* 17C0E4 8002C6A4 88C20000 */  lwl        $v0, ($a2)
/* 17C0E8 8002C6A8 98C20003 */  lwr        $v0, 3($a2)
/* 17C0EC 8002C6AC 88C30004 */  lwl        $v1, 4($a2)
/* 17C0F0 8002C6B0 98C30007 */  lwr        $v1, 7($a2)
/* 17C0F4 8002C6B4 88C40008 */  lwl        $a0, 8($a2)
/* 17C0F8 8002C6B8 98C4000B */  lwr        $a0, 0xb($a2)
/* 17C0FC 8002C6BC 88C5000C */  lwl        $a1, 0xc($a2)
/* 17C100 8002C6C0 98C5000F */  lwr        $a1, 0xf($a2)
/* 17C104 8002C6C4 A8E20000 */  swl        $v0, ($a3)
/* 17C108 8002C6C8 B8E20003 */  swr        $v0, 3($a3)
/* 17C10C 8002C6CC A8E30004 */  swl        $v1, 4($a3)
/* 17C110 8002C6D0 B8E30007 */  swr        $v1, 7($a3)
/* 17C114 8002C6D4 A8E40008 */  swl        $a0, 8($a3)
/* 17C118 8002C6D8 B8E4000B */  swr        $a0, 0xb($a3)
/* 17C11C 8002C6DC A8E5000C */  swl        $a1, 0xc($a3)
/* 17C120 8002C6E0 B8E5000F */  swr        $a1, 0xf($a3)
/* 17C124 8002C6E4 24C60010 */  addiu      $a2, $a2, 0x10
/* 17C128 8002C6E8 14C8FFEE */  bne        $a2, $t0, .L8002C6A4
/* 17C12C 8002C6EC 24E70010 */   addiu     $a3, $a3, 0x10
/* 17C130 8002C6F0 0800B1C9 */  j          .L8002C724
/* 17C134 8002C6F4 00000000 */   nop
.L8002C6F8:
/* 17C138 8002C6F8 8CC20000 */  lw         $v0, ($a2)
/* 17C13C 8002C6FC 8CC30004 */  lw         $v1, 4($a2)
/* 17C140 8002C700 8CC40008 */  lw         $a0, 8($a2)
/* 17C144 8002C704 8CC5000C */  lw         $a1, 0xc($a2)
/* 17C148 8002C708 ACE20000 */  sw         $v0, ($a3)
/* 17C14C 8002C70C ACE30004 */  sw         $v1, 4($a3)
/* 17C150 8002C710 ACE40008 */  sw         $a0, 8($a3)
/* 17C154 8002C714 ACE5000C */  sw         $a1, 0xc($a3)
/* 17C158 8002C718 24C60010 */  addiu      $a2, $a2, 0x10
/* 17C15C 8002C71C 14C8FFF6 */  bne        $a2, $t0, .L8002C6F8
/* 17C160 8002C720 24E70010 */   addiu     $a3, $a3, 0x10
.L8002C724:
/* 17C164 8002C724 88C20000 */  lwl        $v0, ($a2)
/* 17C168 8002C728 98C20003 */  lwr        $v0, 3($a2)
/* 17C16C 8002C72C 88C30004 */  lwl        $v1, 4($a2)
/* 17C170 8002C730 98C30007 */  lwr        $v1, 7($a2)
/* 17C174 8002C734 A8E20000 */  swl        $v0, ($a3)
/* 17C178 8002C738 B8E20003 */  swr        $v0, 3($a3)
/* 17C17C 8002C73C A8E30004 */  swl        $v1, 4($a3)
/* 17C180 8002C740 B8E30007 */  swr        $v1, 7($a3)
/* 17C184 8002C744 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17C188 8002C748 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17C18C 8002C74C 2402001E */  addiu      $v0, $zero, 0x1e
/* 17C190 8002C750 A7A20050 */  sh         $v0, 0x50($sp)
/* 17C194 8002C754 24020028 */  addiu      $v0, $zero, 0x28
/* 17C198 8002C758 A3A20052 */  sb         $v0, 0x52($sp)
/* 17C19C 8002C75C 24020004 */  addiu      $v0, $zero, 4
/* 17C1A0 8002C760 A3A20053 */  sb         $v0, 0x53($sp)
/* 17C1A4 8002C764 27A20018 */  addiu      $v0, $sp, 0x18
/* 17C1A8 8002C768 A3A00054 */  sb         $zero, 0x54($sp)
/* 17C1AC 8002C76C A3A00055 */  sb         $zero, 0x55($sp)
/* 17C1B0 8002C770 AFA20058 */  sw         $v0, 0x58($sp)
/* 17C1B4 8002C774 8FA20050 */  lw         $v0, 0x50($sp)
/* 17C1B8 8002C778 8FA40054 */  lw         $a0, 0x54($sp)
/* 17C1BC 8002C77C 8FA50058 */  lw         $a1, 0x58($sp)
/* 17C1C0 8002C780 AFA20040 */  sw         $v0, 0x40($sp)
/* 17C1C4 8002C784 AFA40044 */  sw         $a0, 0x44($sp)
/* 17C1C8 8002C788 AFA50048 */  sw         $a1, 0x48($sp)
/* 17C1CC 8002C78C 14600015 */  bnez       $v1, .L8002C7E4
/* 17C1D0 8002C790 2404000E */   addiu     $a0, $zero, 0xe
/* 17C1D4 8002C794 AFA00010 */  sw         $zero, 0x10($sp)
/* 17C1D8 8002C798 2405FFFF */  addiu      $a1, $zero, -1
/* 17C1DC 8002C79C 00003021 */  addu       $a2, $zero, $zero
/* 17C1E0 8002C7A0 0C026C9A */  jal        func_8009B268
/* 17C1E4 8002C7A4 24070050 */   addiu     $a3, $zero, 0x50
/* 17C1E8 8002C7A8 24100001 */  addiu      $s0, $zero, 1
/* 17C1EC 8002C7AC 320200FF */  andi       $v0, $s0, 0xff
.L8002C7B0:
/* 17C1F0 8002C7B0 00021840 */  sll        $v1, $v0, 1
/* 17C1F4 8002C7B4 00621821 */  addu       $v1, $v1, $v0
/* 17C1F8 8002C7B8 00031880 */  sll        $v1, $v1, 2
/* 17C1FC 8002C7BC 00711821 */  addu       $v1, $v1, $s1
/* 17C200 8002C7C0 8C640000 */  lw         $a0, ($v1)
/* 17C204 8002C7C4 00002821 */  addu       $a1, $zero, $zero
/* 17C208 8002C7C8 00003021 */  addu       $a2, $zero, $zero
/* 17C20C 8002C7CC 0C02912A */  jal        func_800A44A8
/* 17C210 8002C7D0 26100001 */   addiu     $s0, $s0, 1
/* 17C214 8002C7D4 320200FF */  andi       $v0, $s0, 0xff
/* 17C218 8002C7D8 2C42000B */  sltiu      $v0, $v0, 0xb
/* 17C21C 8002C7DC 1440FFF4 */  bnez       $v0, .L8002C7B0
/* 17C220 8002C7E0 320200FF */   andi      $v0, $s0, 0xff
.L8002C7E4:
/* 17C224 8002C7E4 8E230024 */  lw         $v1, 0x24($s1)
/* 17C228 8002C7E8 9462001E */  lhu        $v0, 0x1e($v1)
/* 17C22C 8002C7EC 34420400 */  ori        $v0, $v0, 0x400
/* 17C230 8002C7F0 A462001E */  sh         $v0, 0x1e($v1)
/* 17C234 8002C7F4 8E230030 */  lw         $v1, 0x30($s1)
/* 17C238 8002C7F8 9462001E */  lhu        $v0, 0x1e($v1)
/* 17C23C 8002C7FC 3C078005 */  lui        $a3, %hi(D_80052038)
/* 17C240 8002C800 84E72038 */  lh         $a3, %lo(D_80052038)($a3)
/* 17C244 8002C804 34420400 */  ori        $v0, $v0, 0x400
/* 17C248 8002C808 A462001E */  sh         $v0, 0x1e($v1)
/* 17C24C 8002C80C 8FA40040 */  lw         $a0, 0x40($sp)
/* 17C250 8002C810 8FA50044 */  lw         $a1, 0x44($sp)
/* 17C254 8002C814 0C00D4EF */  jal        func_800353BC_184DFC
/* 17C258 8002C818 8FA60048 */   lw        $a2, 0x48($sp)
/* 17C25C 8002C81C 00401821 */  addu       $v1, $v0, $zero
/* 17C260 8002C820 10600008 */  beqz       $v1, .L8002C844
/* 17C264 8002C824 00031040 */   sll       $v0, $v1, 1
/* 17C268 8002C828 00431021 */  addu       $v0, $v0, $v1
/* 17C26C 8002C82C 00021080 */  sll        $v0, $v0, 2
/* 17C270 8002C830 00511021 */  addu       $v0, $v0, $s1
/* 17C274 8002C834 8C430000 */  lw         $v1, ($v0)
/* 17C278 8002C838 9462001E */  lhu        $v0, 0x1e($v1)
/* 17C27C 8002C83C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* 17C280 8002C840 A462001E */  sh         $v0, 0x1e($v1)
.L8002C844:
/* 17C284 8002C844 0C028A40 */  jal        func_800A2900
/* 17C288 8002C848 8E24003C */   lw        $a0, 0x3c($s1)
/* 17C28C 8002C84C 8FBF0068 */  lw         $ra, 0x68($sp)
/* 17C290 8002C850 8FB10064 */  lw         $s1, 0x64($sp)
/* 17C294 8002C854 8FB00060 */  lw         $s0, 0x60($sp)
/* 17C298 8002C858 03E00008 */  jr         $ra
/* 17C29C 8002C85C 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002C860_17C2A0
/* 17C2A0 8002C860 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17C2A4 8002C864 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17C2A8 8002C868 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17C2AC 8002C86C 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17C2B0 8002C870 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17C2B4 8002C874 AFBF0024 */  sw         $ra, 0x24($sp)
/* 17C2B8 8002C878 AFB40020 */  sw         $s4, 0x20($sp)
/* 17C2BC 8002C87C AFB3001C */  sw         $s3, 0x1c($sp)
/* 17C2C0 8002C880 AFB20018 */  sw         $s2, 0x18($sp)
/* 17C2C4 8002C884 AFB10014 */  sw         $s1, 0x14($sp)
/* 17C2C8 8002C888 AFB00010 */  sw         $s0, 0x10($sp)
/* 17C2CC 8002C88C 8C53002C */  lw         $s3, 0x2c($v0)
/* 17C2D0 8002C890 14600015 */  bnez       $v1, .L8002C8E8
/* 17C2D4 8002C894 00009021 */   addu      $s2, $zero, $zero
/* 17C2D8 8002C898 24100001 */  addiu      $s0, $zero, 1
/* 17C2DC 8002C89C 320200FF */  andi       $v0, $s0, 0xff
.L8002C8A0:
/* 17C2E0 8002C8A0 00021840 */  sll        $v1, $v0, 1
/* 17C2E4 8002C8A4 00621821 */  addu       $v1, $v1, $v0
/* 17C2E8 8002C8A8 00031880 */  sll        $v1, $v1, 2
/* 17C2EC 8002C8AC 00731821 */  addu       $v1, $v1, $s3
/* 17C2F0 8002C8B0 8C640000 */  lw         $a0, ($v1)
/* 17C2F4 8002C8B4 26100001 */  addiu      $s0, $s0, 1
/* 17C2F8 8002C8B8 00002821 */  addu       $a1, $zero, $zero
/* 17C2FC 8002C8BC 0C02912A */  jal        func_800A44A8
/* 17C300 8002C8C0 00003021 */   addu      $a2, $zero, $zero
/* 17C304 8002C8C4 320200FF */  andi       $v0, $s0, 0xff
/* 17C308 8002C8C8 2C420009 */  sltiu      $v0, $v0, 9
/* 17C30C 8002C8CC 1440FFF4 */  bnez       $v0, .L8002C8A0
/* 17C310 8002C8D0 320200FF */   andi      $v0, $s0, 0xff
/* 17C314 8002C8D4 3C018005 */  lui        $at, %hi(D_80051E83)
/* 17C318 8002C8D8 A0201E83 */  sb         $zero, %lo(D_80051E83)($at)
/* 17C31C 8002C8DC 3C018005 */  lui        $at, %hi(D_80051E82)
/* 17C320 8002C8E0 A0201E82 */  sb         $zero, %lo(D_80051E82)($at)
/* 17C324 8002C8E4 00009021 */  addu       $s2, $zero, $zero
.L8002C8E8:
/* 17C328 8002C8E8 24100002 */  addiu      $s0, $zero, 2
/* 17C32C 8002C8EC 24140001 */  addiu      $s4, $zero, 1
.L8002C8F0:
/* 17C330 8002C8F0 325100FF */  andi       $s1, $s2, 0xff
/* 17C334 8002C8F4 3C038005 */  lui        $v1, %hi(D_80051E82)
/* 17C338 8002C8F8 00711821 */  addu       $v1, $v1, $s1
/* 17C33C 8002C8FC 90631E82 */  lbu        $v1, %lo(D_80051E82)($v1)
/* 17C340 8002C900 10600028 */  beqz       $v1, .L8002C9A4
/* 17C344 8002C904 0003102B */   sltu      $v0, $zero, $v1
/* 17C348 8002C908 2C630004 */  sltiu      $v1, $v1, 4
/* 17C34C 8002C90C 00431024 */  and        $v0, $v0, $v1
/* 17C350 8002C910 10400007 */  beqz       $v0, .L8002C930
/* 17C354 8002C914 320300FF */   andi      $v1, $s0, 0xff
/* 17C358 8002C918 00031040 */  sll        $v0, $v1, 1
/* 17C35C 8002C91C 00431021 */  addu       $v0, $v0, $v1
/* 17C360 8002C920 00021080 */  sll        $v0, $v0, 2
/* 17C364 8002C924 00531021 */  addu       $v0, $v0, $s3
/* 17C368 8002C928 0C028A40 */  jal        func_800A2900
/* 17C36C 8002C92C 8C440000 */   lw        $a0, ($v0)
.L8002C930:
/* 17C370 8002C930 3C028005 */  lui        $v0, %hi(D_80051E82)
/* 17C374 8002C934 00511021 */  addu       $v0, $v0, $s1
/* 17C378 8002C938 90421E82 */  lbu        $v0, %lo(D_80051E82)($v0)
/* 17C37C 8002C93C 2442FFFC */  addiu      $v0, $v0, -4
/* 17C380 8002C940 2C420003 */  sltiu      $v0, $v0, 3
/* 17C384 8002C944 10400007 */  beqz       $v0, .L8002C964
/* 17C388 8002C948 320300FF */   andi      $v1, $s0, 0xff
/* 17C38C 8002C94C 00031040 */  sll        $v0, $v1, 1
/* 17C390 8002C950 00431021 */  addu       $v0, $v0, $v1
/* 17C394 8002C954 00021080 */  sll        $v0, $v0, 2
/* 17C398 8002C958 00531021 */  addu       $v0, $v0, $s3
/* 17C39C 8002C95C 0C028A40 */  jal        func_800A2900
/* 17C3A0 8002C960 8C44000C */   lw        $a0, 0xc($v0)
.L8002C964:
/* 17C3A4 8002C964 3C038005 */  lui        $v1, %hi(D_80051E82)
/* 17C3A8 8002C968 00711821 */  addu       $v1, $v1, $s1
/* 17C3AC 8002C96C 90631E82 */  lbu        $v1, %lo(D_80051E82)($v1)
/* 17C3B0 8002C970 2C620007 */  sltiu      $v0, $v1, 7
/* 17C3B4 8002C974 14400006 */  bnez       $v0, .L8002C990
/* 17C3B8 8002C978 24620001 */   addiu     $v0, $v1, 1
/* 17C3BC 8002C97C 3C018005 */  lui        $at, %hi(D_80051E82)
/* 17C3C0 8002C980 00310821 */  addu       $at, $at, $s1
/* 17C3C4 8002C984 A0201E82 */  sb         $zero, %lo(D_80051E82)($at)
/* 17C3C8 8002C988 0800B272 */  j          .L8002C9C8
/* 17C3CC 8002C98C 26520001 */   addiu     $s2, $s2, 1
.L8002C990:
/* 17C3D0 8002C990 3C018005 */  lui        $at, %hi(D_80051E82)
/* 17C3D4 8002C994 00310821 */  addu       $at, $at, $s1
/* 17C3D8 8002C998 A0221E82 */  sb         $v0, %lo(D_80051E82)($at)
/* 17C3DC 8002C99C 0800B272 */  j          .L8002C9C8
/* 17C3E0 8002C9A0 26520001 */   addiu     $s2, $s2, 1
.L8002C9A4:
/* 17C3E4 8002C9A4 0C02591A */  jal        func_80096468
/* 17C3E8 8002C9A8 2404000F */   addiu     $a0, $zero, 0xf
/* 17C3EC 8002C9AC 304200FF */  andi       $v0, $v0, 0xff
/* 17C3F0 8002C9B0 2C42000E */  sltiu      $v0, $v0, 0xe
/* 17C3F4 8002C9B4 14400004 */  bnez       $v0, .L8002C9C8
/* 17C3F8 8002C9B8 26520001 */   addiu     $s2, $s2, 1
/* 17C3FC 8002C9BC 3C018005 */  lui        $at, %hi(D_80051E82)
/* 17C400 8002C9C0 00310821 */  addu       $at, $at, $s1
/* 17C404 8002C9C4 A0341E82 */  sb         $s4, %lo(D_80051E82)($at)
.L8002C9C8:
/* 17C408 8002C9C8 324200FF */  andi       $v0, $s2, 0xff
/* 17C40C 8002C9CC 2C420002 */  sltiu      $v0, $v0, 2
/* 17C410 8002C9D0 1440FFC7 */  bnez       $v0, .L8002C8F0
/* 17C414 8002C9D4 26100003 */   addiu     $s0, $s0, 3
/* 17C418 8002C9D8 8FBF0024 */  lw         $ra, 0x24($sp)
/* 17C41C 8002C9DC 8FB40020 */  lw         $s4, 0x20($sp)
/* 17C420 8002C9E0 8FB3001C */  lw         $s3, 0x1c($sp)
/* 17C424 8002C9E4 8FB20018 */  lw         $s2, 0x18($sp)
/* 17C428 8002C9E8 8FB10014 */  lw         $s1, 0x14($sp)
/* 17C42C 8002C9EC 8FB00010 */  lw         $s0, 0x10($sp)
/* 17C430 8002C9F0 03E00008 */  jr         $ra
/* 17C434 8002C9F4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002C9F8_17C438
/* 17C438 8002C9F8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* 17C43C 8002C9FC 27A70018 */  addiu      $a3, $sp, 0x18
/* 17C440 8002CA00 3C068005 */  lui        $a2, %hi(D_80050A30)
/* 17C444 8002CA04 24C60A30 */  addiu      $a2, $a2, %lo(D_80050A30)
/* 17C448 8002CA08 3C038005 */  lui        $v1, %hi(D_80052000)
/* 17C44C 8002CA0C 8C632000 */  lw         $v1, %lo(D_80052000)($v1)
/* 17C450 8002CA10 00E61025 */  or         $v0, $a3, $a2
/* 17C454 8002CA14 30420003 */  andi       $v0, $v0, 3
/* 17C458 8002CA18 AFBF0068 */  sw         $ra, 0x68($sp)
/* 17C45C 8002CA1C AFB10064 */  sw         $s1, 0x64($sp)
/* 17C460 8002CA20 AFB00060 */  sw         $s0, 0x60($sp)
/* 17C464 8002CA24 8C71002C */  lw         $s1, 0x2c($v1)
/* 17C468 8002CA28 10400016 */  beqz       $v0, .L8002CA84
/* 17C46C 8002CA2C 24C80020 */   addiu     $t0, $a2, 0x20
.L8002CA30:
/* 17C470 8002CA30 88C20000 */  lwl        $v0, ($a2)
/* 17C474 8002CA34 98C20003 */  lwr        $v0, 3($a2)
/* 17C478 8002CA38 88C30004 */  lwl        $v1, 4($a2)
/* 17C47C 8002CA3C 98C30007 */  lwr        $v1, 7($a2)
/* 17C480 8002CA40 88C40008 */  lwl        $a0, 8($a2)
/* 17C484 8002CA44 98C4000B */  lwr        $a0, 0xb($a2)
/* 17C488 8002CA48 88C5000C */  lwl        $a1, 0xc($a2)
/* 17C48C 8002CA4C 98C5000F */  lwr        $a1, 0xf($a2)
/* 17C490 8002CA50 A8E20000 */  swl        $v0, ($a3)
/* 17C494 8002CA54 B8E20003 */  swr        $v0, 3($a3)
/* 17C498 8002CA58 A8E30004 */  swl        $v1, 4($a3)
/* 17C49C 8002CA5C B8E30007 */  swr        $v1, 7($a3)
/* 17C4A0 8002CA60 A8E40008 */  swl        $a0, 8($a3)
/* 17C4A4 8002CA64 B8E4000B */  swr        $a0, 0xb($a3)
/* 17C4A8 8002CA68 A8E5000C */  swl        $a1, 0xc($a3)
/* 17C4AC 8002CA6C B8E5000F */  swr        $a1, 0xf($a3)
/* 17C4B0 8002CA70 24C60010 */  addiu      $a2, $a2, 0x10
/* 17C4B4 8002CA74 14C8FFEE */  bne        $a2, $t0, .L8002CA30
/* 17C4B8 8002CA78 24E70010 */   addiu     $a3, $a3, 0x10
/* 17C4BC 8002CA7C 0800B2AC */  j          .L8002CAB0
/* 17C4C0 8002CA80 00000000 */   nop
.L8002CA84:
/* 17C4C4 8002CA84 8CC20000 */  lw         $v0, ($a2)
/* 17C4C8 8002CA88 8CC30004 */  lw         $v1, 4($a2)
/* 17C4CC 8002CA8C 8CC40008 */  lw         $a0, 8($a2)
/* 17C4D0 8002CA90 8CC5000C */  lw         $a1, 0xc($a2)
/* 17C4D4 8002CA94 ACE20000 */  sw         $v0, ($a3)
/* 17C4D8 8002CA98 ACE30004 */  sw         $v1, 4($a3)
/* 17C4DC 8002CA9C ACE40008 */  sw         $a0, 8($a3)
/* 17C4E0 8002CAA0 ACE5000C */  sw         $a1, 0xc($a3)
/* 17C4E4 8002CAA4 24C60010 */  addiu      $a2, $a2, 0x10
/* 17C4E8 8002CAA8 14C8FFF6 */  bne        $a2, $t0, .L8002CA84
/* 17C4EC 8002CAAC 24E70010 */   addiu     $a3, $a3, 0x10
.L8002CAB0:
/* 17C4F0 8002CAB0 88C20000 */  lwl        $v0, ($a2)
/* 17C4F4 8002CAB4 98C20003 */  lwr        $v0, 3($a2)
/* 17C4F8 8002CAB8 88C30004 */  lwl        $v1, 4($a2)
/* 17C4FC 8002CABC 98C30007 */  lwr        $v1, 7($a2)
/* 17C500 8002CAC0 A8E20000 */  swl        $v0, ($a3)
/* 17C504 8002CAC4 B8E20003 */  swr        $v0, 3($a3)
/* 17C508 8002CAC8 A8E30004 */  swl        $v1, 4($a3)
/* 17C50C 8002CACC B8E30007 */  swr        $v1, 7($a3)
/* 17C510 8002CAD0 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17C514 8002CAD4 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17C518 8002CAD8 2402001E */  addiu      $v0, $zero, 0x1e
/* 17C51C 8002CADC A7A20050 */  sh         $v0, 0x50($sp)
/* 17C520 8002CAE0 24020028 */  addiu      $v0, $zero, 0x28
/* 17C524 8002CAE4 A3A20052 */  sb         $v0, 0x52($sp)
/* 17C528 8002CAE8 24020006 */  addiu      $v0, $zero, 6
/* 17C52C 8002CAEC A3A20053 */  sb         $v0, 0x53($sp)
/* 17C530 8002CAF0 27A20018 */  addiu      $v0, $sp, 0x18
/* 17C534 8002CAF4 A3A00054 */  sb         $zero, 0x54($sp)
/* 17C538 8002CAF8 A3A00055 */  sb         $zero, 0x55($sp)
/* 17C53C 8002CAFC AFA20058 */  sw         $v0, 0x58($sp)
/* 17C540 8002CB00 8FA20050 */  lw         $v0, 0x50($sp)
/* 17C544 8002CB04 8FA40054 */  lw         $a0, 0x54($sp)
/* 17C548 8002CB08 8FA50058 */  lw         $a1, 0x58($sp)
/* 17C54C 8002CB0C AFA20040 */  sw         $v0, 0x40($sp)
/* 17C550 8002CB10 AFA40044 */  sw         $a0, 0x44($sp)
/* 17C554 8002CB14 14600010 */  bnez       $v1, .L8002CB58
/* 17C558 8002CB18 AFA50048 */   sw        $a1, 0x48($sp)
/* 17C55C 8002CB1C 24100001 */  addiu      $s0, $zero, 1
/* 17C560 8002CB20 320200FF */  andi       $v0, $s0, 0xff
.L8002CB24:
/* 17C564 8002CB24 00021840 */  sll        $v1, $v0, 1
/* 17C568 8002CB28 00621821 */  addu       $v1, $v1, $v0
/* 17C56C 8002CB2C 00031880 */  sll        $v1, $v1, 2
/* 17C570 8002CB30 00711821 */  addu       $v1, $v1, $s1
/* 17C574 8002CB34 8C640000 */  lw         $a0, ($v1)
/* 17C578 8002CB38 00002821 */  addu       $a1, $zero, $zero
/* 17C57C 8002CB3C 00003021 */  addu       $a2, $zero, $zero
/* 17C580 8002CB40 0C02912A */  jal        func_800A44A8
/* 17C584 8002CB44 26100001 */   addiu     $s0, $s0, 1
/* 17C588 8002CB48 320200FF */  andi       $v0, $s0, 0xff
/* 17C58C 8002CB4C 2C42000B */  sltiu      $v0, $v0, 0xb
/* 17C590 8002CB50 1440FFF4 */  bnez       $v0, .L8002CB24
/* 17C594 8002CB54 320200FF */   andi      $v0, $s0, 0xff
.L8002CB58:
/* 17C598 8002CB58 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17C59C 8002CB5C 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17C5A0 8002CB60 2C42001E */  sltiu      $v0, $v0, 0x1e
/* 17C5A4 8002CB64 10400003 */  beqz       $v0, .L8002CB74
/* 17C5A8 8002CB68 00000000 */   nop
/* 17C5AC 8002CB6C 0C028A40 */  jal        func_800A2900
/* 17C5B0 8002CB70 8E24003C */   lw        $a0, 0x3c($s1)
.L8002CB74:
/* 17C5B4 8002CB74 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17C5B8 8002CB78 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17C5BC 8002CB7C 2442FFE2 */  addiu      $v0, $v0, -0x1e
/* 17C5C0 8002CB80 2C420002 */  sltiu      $v0, $v0, 2
/* 17C5C4 8002CB84 10400003 */  beqz       $v0, .L8002CB94
/* 17C5C8 8002CB88 00000000 */   nop
/* 17C5CC 8002CB8C 0C028A40 */  jal        func_800A2900
/* 17C5D0 8002CB90 8E240048 */   lw        $a0, 0x48($s1)
.L8002CB94:
/* 17C5D4 8002CB94 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17C5D8 8002CB98 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17C5DC 8002CB9C 2442FFE0 */  addiu      $v0, $v0, -0x20
/* 17C5E0 8002CBA0 2C420003 */  sltiu      $v0, $v0, 3
/* 17C5E4 8002CBA4 10400003 */  beqz       $v0, .L8002CBB4
/* 17C5E8 8002CBA8 00000000 */   nop
/* 17C5EC 8002CBAC 0C028A40 */  jal        func_800A2900
/* 17C5F0 8002CBB0 8E240054 */   lw        $a0, 0x54($s1)
.L8002CBB4:
/* 17C5F4 8002CBB4 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17C5F8 8002CBB8 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17C5FC 8002CBBC 2C420023 */  sltiu      $v0, $v0, 0x23
/* 17C600 8002CBC0 14400003 */  bnez       $v0, .L8002CBD0
/* 17C604 8002CBC4 00000000 */   nop
/* 17C608 8002CBC8 0C028A40 */  jal        func_800A2900
/* 17C60C 8002CBCC 8E240060 */   lw        $a0, 0x60($s1)
.L8002CBD0:
/* 17C610 8002CBD0 8E230024 */  lw         $v1, 0x24($s1)
/* 17C614 8002CBD4 9462001E */  lhu        $v0, 0x1e($v1)
/* 17C618 8002CBD8 34420400 */  ori        $v0, $v0, 0x400
/* 17C61C 8002CBDC A462001E */  sh         $v0, 0x1e($v1)
/* 17C620 8002CBE0 8E230030 */  lw         $v1, 0x30($s1)
/* 17C624 8002CBE4 9462001E */  lhu        $v0, 0x1e($v1)
/* 17C628 8002CBE8 3C078005 */  lui        $a3, %hi(D_80052038)
/* 17C62C 8002CBEC 84E72038 */  lh         $a3, %lo(D_80052038)($a3)
/* 17C630 8002CBF0 34420400 */  ori        $v0, $v0, 0x400
/* 17C634 8002CBF4 A462001E */  sh         $v0, 0x1e($v1)
/* 17C638 8002CBF8 8FA40040 */  lw         $a0, 0x40($sp)
/* 17C63C 8002CBFC 8FA50044 */  lw         $a1, 0x44($sp)
/* 17C640 8002CC00 0C00D4EF */  jal        func_800353BC_184DFC
/* 17C644 8002CC04 8FA60048 */   lw        $a2, 0x48($sp)
/* 17C648 8002CC08 00401821 */  addu       $v1, $v0, $zero
/* 17C64C 8002CC0C 10600008 */  beqz       $v1, .L8002CC30
/* 17C650 8002CC10 00031040 */   sll       $v0, $v1, 1
/* 17C654 8002CC14 00431021 */  addu       $v0, $v0, $v1
/* 17C658 8002CC18 00021080 */  sll        $v0, $v0, 2
/* 17C65C 8002CC1C 00511021 */  addu       $v0, $v0, $s1
/* 17C660 8002CC20 8C430000 */  lw         $v1, ($v0)
/* 17C664 8002CC24 9462001E */  lhu        $v0, 0x1e($v1)
/* 17C668 8002CC28 3042FBFF */  andi       $v0, $v0, 0xfbff
/* 17C66C 8002CC2C A462001E */  sh         $v0, 0x1e($v1)
.L8002CC30:
/* 17C670 8002CC30 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17C674 8002CC34 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17C678 8002CC38 9442000A */  lhu        $v0, 0xa($v0)
/* 17C67C 8002CC3C 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17C680 8002CC40 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17C684 8002CC44 2442FFE2 */  addiu      $v0, $v0, -0x1e
/* 17C688 8002CC48 14620006 */  bne        $v1, $v0, .L8002CC64
/* 17C68C 8002CC4C 2404FFFE */   addiu     $a0, $zero, -2
/* 17C690 8002CC50 AFA00010 */  sw         $zero, 0x10($sp)
/* 17C694 8002CC54 2405FFFF */  addiu      $a1, $zero, -1
/* 17C698 8002CC58 2406001E */  addiu      $a2, $zero, 0x1e
/* 17C69C 8002CC5C 0C026C9A */  jal        func_8009B268
/* 17C6A0 8002CC60 00003821 */   addu      $a3, $zero, $zero
.L8002CC64:
/* 17C6A4 8002CC64 8FBF0068 */  lw         $ra, 0x68($sp)
/* 17C6A8 8002CC68 8FB10064 */  lw         $s1, 0x64($sp)
/* 17C6AC 8002CC6C 8FB00060 */  lw         $s0, 0x60($sp)
/* 17C6B0 8002CC70 03E00008 */  jr         $ra
/* 17C6B4 8002CC74 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_8002CC78_17C6B8
/* 17C6B8 8002CC78 3C028004 */  lui        $v0, %hi(D_80045784)
/* 17C6BC 8002CC7C 90425784 */  lbu        $v0, %lo(D_80045784)($v0)
/* 17C6C0 8002CC80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17C6C4 8002CC84 10400020 */  beqz       $v0, .L8002CD08
/* 17C6C8 8002CC88 AFBF0010 */   sw        $ra, 0x10($sp)
/* 17C6CC 8002CC8C 0C009758 */  jal        func_80025D60_1757A0
/* 17C6D0 8002CC90 00000000 */   nop
/* 17C6D4 8002CC94 0C02A5D2 */  jal        func_800A9748
/* 17C6D8 8002CC98 24040001 */   addiu     $a0, $zero, 1
/* 17C6DC 8002CC9C 24020005 */  addiu      $v0, $zero, 5
/* 17C6E0 8002CCA0 3C018005 */  lui        $at, %hi(D_80052061)
/* 17C6E4 8002CCA4 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 17C6E8 8002CCA8 24020001 */  addiu      $v0, $zero, 1
/* 17C6EC 8002CCAC 3C018005 */  lui        $at, %hi(D_80052006)
/* 17C6F0 8002CCB0 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 17C6F4 8002CCB4 3C028004 */  lui        $v0, %hi(D_80045754)
/* 17C6F8 8002CCB8 24425754 */  addiu      $v0, $v0, %lo(D_80045754)
/* 17C6FC 8002CCBC 3C018004 */  lui        $at, %hi(D_80045784)
/* 17C700 8002CCC0 A0205784 */  sb         $zero, %lo(D_80045784)($at)
/* 17C704 8002CCC4 3C018005 */  lui        $at, %hi(D_80052060)
/* 17C708 8002CCC8 A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 17C70C 8002CCCC 3C018005 */  lui        $at, %hi(D_80052000)
/* 17C710 8002CCD0 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 17C714 8002CCD4 0C032663 */  jal        func_800C998C
/* 17C718 8002CCD8 2404000C */   addiu     $a0, $zero, 0xc
/* 17C71C 8002CCDC 00402021 */  addu       $a0, $v0, $zero
/* 17C720 8002CCE0 3C018005 */  lui        $at, %hi(D_80052244)
/* 17C724 8002CCE4 AC242244 */  sw         $a0, %lo(D_80052244)($at)
/* 17C728 8002CCE8 0C030134 */  jal        bzero
/* 17C72C 8002CCEC 2405000C */   addiu     $a1, $zero, 0xc
/* 17C730 8002CCF0 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 17C734 8002CCF4 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 17C738 8002CCF8 00002821 */  addu       $a1, $zero, $zero
/* 17C73C 8002CCFC 2406012C */  addiu      $a2, $zero, 0x12c
/* 17C740 8002CD00 0C025D06 */  jal        func_80097418
/* 17C744 8002CD04 00003821 */   addu      $a3, $zero, $zero
.L8002CD08:
/* 17C748 8002CD08 3C038005 */  lui        $v1, %hi(D_80052060)
/* 17C74C 8002CD0C 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 17C750 8002CD10 24020001 */  addiu      $v0, $zero, 1
/* 17C754 8002CD14 14620008 */  bne        $v1, $v0, .L8002CD38
/* 17C758 8002CD18 00001021 */   addu      $v0, $zero, $zero
/* 17C75C 8002CD1C 3C048005 */  lui        $a0, %hi(D_80052244)
/* 17C760 8002CD20 8C842244 */  lw         $a0, %lo(D_80052244)($a0)
/* 17C764 8002CD24 24020001 */  addiu      $v0, $zero, 1
/* 17C768 8002CD28 3C018004 */  lui        $at, %hi(D_80045784)
/* 17C76C 8002CD2C 0C0326A1 */  jal        func_800C9A84
/* 17C770 8002CD30 A0225784 */   sb        $v0, %lo(D_80045784)($at)
/* 17C774 8002CD34 24020001 */  addiu      $v0, $zero, 1
.L8002CD38:
/* 17C778 8002CD38 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17C77C 8002CD3C 03E00008 */  jr         $ra
/* 17C780 8002CD40 27BD0018 */   addiu     $sp, $sp, 0x18
/* 17C784 8002CD44 00000000 */  nop
/* 17C788 8002CD48 00000000 */  nop
/* 17C78C 8002CD4C 00000000 */  nop
