.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BA900
/* 25500 800BA900 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 25504 800BA904 AFBF0010 */  sw         $ra, 0x10($sp)
/* 25508 800BA908 24020004 */  addiu      $v0, $zero, 4
/* 2550C 800BA90C 10A20051 */  beq        $a1, $v0, .L800BAA54
/* 25510 800BA910 00803821 */   addu      $a3, $a0, $zero
/* 25514 800BA914 24020005 */  addiu      $v0, $zero, 5
/* 25518 800BA918 14A20061 */  bne        $a1, $v0, .L800BAAA0
/* 2551C 800BA91C 00000000 */   nop
/* 25520 800BA920 ACE60028 */  sw         $a2, 0x28($a3)
/* 25524 800BA924 8CC20000 */  lw         $v0, ($a2)
/* 25528 800BA928 8CE30028 */  lw         $v1, 0x28($a3)
/* 2552C 800BA92C ACE00038 */  sw         $zero, 0x38($a3)
/* 25530 800BA930 ACE20044 */  sw         $v0, 0x44($a3)
/* 25534 800BA934 90630008 */  lbu        $v1, 8($v1)
/* 25538 800BA938 10600005 */  beqz       $v1, .L800BA950
/* 2553C 800BA93C 24020001 */   addiu     $v0, $zero, 1
/* 25540 800BA940 10620030 */  beq        $v1, $v0, .L800BAA04
/* 25544 800BA944 00000000 */   nop
/* 25548 800BA948 0802EAA8 */  j          .L800BAAA0
/* 2554C 800BA94C 00000000 */   nop
.L800BA950:
/* 25550 800BA950 8CE40028 */  lw         $a0, 0x28($a3)
/* 25554 800BA954 3C02800C */  lui        $v0, %hi(func_800BA120)
/* 25558 800BA958 2442A120 */  addiu      $v0, $v0, %lo(func_800BA120)
/* 2555C 800BA95C ACE20004 */  sw         $v0, 4($a3)
/* 25560 800BA960 8C820004 */  lw         $v0, 4($a0)
/* 25564 800BA964 3C0338E3 */  lui        $v1, 0x38e3
/* 25568 800BA968 34638E39 */  ori        $v1, $v1, 0x8e39
/* 2556C 800BA96C 00430018 */  mult       $v0, $v1
/* 25570 800BA970 000217C3 */  sra        $v0, $v0, 0x1f
/* 25574 800BA974 00004010 */  mfhi       $t0
/* 25578 800BA978 00081843 */  sra        $v1, $t0, 1
/* 2557C 800BA97C 00621823 */  subu       $v1, $v1, $v0
/* 25580 800BA980 000310C0 */  sll        $v0, $v1, 3
/* 25584 800BA984 00431021 */  addu       $v0, $v0, $v1
/* 25588 800BA988 AC820004 */  sw         $v0, 4($a0)
/* 2558C 800BA98C 8CE20028 */  lw         $v0, 0x28($a3)
/* 25590 800BA990 8C430010 */  lw         $v1, 0x10($v0)
/* 25594 800BA994 8C620004 */  lw         $v0, 4($v1)
/* 25598 800BA998 8C630000 */  lw         $v1, ($v1)
/* 2559C 800BA99C 00021040 */  sll        $v0, $v0, 1
/* 255A0 800BA9A0 00620018 */  mult       $v1, $v0
/* 255A4 800BA9A4 00001812 */  mflo       $v1
/* 255A8 800BA9A8 8CE20028 */  lw         $v0, 0x28($a3)
/* 255AC 800BA9AC 000318C0 */  sll        $v1, $v1, 3
/* 255B0 800BA9B0 ACE3002C */  sw         $v1, 0x2c($a3)
/* 255B4 800BA9B4 8C42000C */  lw         $v0, 0xc($v0)
/* 255B8 800BA9B8 10400022 */  beqz       $v0, .L800BAA44
/* 255BC 800BA9BC 24060020 */   addiu     $a2, $zero, 0x20
/* 255C0 800BA9C0 8C420000 */  lw         $v0, ($v0)
/* 255C4 800BA9C4 8CE30028 */  lw         $v1, 0x28($a3)
/* 255C8 800BA9C8 ACE2001C */  sw         $v0, 0x1c($a3)
/* 255CC 800BA9CC 8C62000C */  lw         $v0, 0xc($v1)
/* 255D0 800BA9D0 8CE30028 */  lw         $v1, 0x28($a3)
/* 255D4 800BA9D4 8C420004 */  lw         $v0, 4($v0)
/* 255D8 800BA9D8 ACE20020 */  sw         $v0, 0x20($a3)
/* 255DC 800BA9DC 8C62000C */  lw         $v0, 0xc($v1)
/* 255E0 800BA9E0 8CE30028 */  lw         $v1, 0x28($a3)
/* 255E4 800BA9E4 8C420008 */  lw         $v0, 8($v0)
/* 255E8 800BA9E8 ACE20024 */  sw         $v0, 0x24($a3)
/* 255EC 800BA9EC 8C64000C */  lw         $a0, 0xc($v1)
/* 255F0 800BA9F0 8CE50018 */  lw         $a1, 0x18($a3)
/* 255F4 800BA9F4 0C02F2F8 */  jal        func_800BCBE0
/* 255F8 800BA9F8 2484000C */   addiu     $a0, $a0, 0xc
/* 255FC 800BA9FC 0802EAA8 */  j          .L800BAAA0
/* 25600 800BAA00 00000000 */   nop
.L800BAA04:
/* 25604 800BAA04 8CE30028 */  lw         $v1, 0x28($a3)
/* 25608 800BAA08 3C02800C */  lui        $v0, %hi(func_800BA564)
/* 2560C 800BAA0C 2442A564 */  addiu      $v0, $v0, %lo(func_800BA564)
/* 25610 800BAA10 ACE20004 */  sw         $v0, 4($a3)
/* 25614 800BAA14 8C62000C */  lw         $v0, 0xc($v1)
/* 25618 800BAA18 5040000B */  beql       $v0, $zero, .L800BAA48
/* 2561C 800BAA1C ACE00024 */   sw        $zero, 0x24($a3)
/* 25620 800BAA20 8C420000 */  lw         $v0, ($v0)
/* 25624 800BAA24 8CE30028 */  lw         $v1, 0x28($a3)
/* 25628 800BAA28 ACE2001C */  sw         $v0, 0x1c($a3)
/* 2562C 800BAA2C 8C62000C */  lw         $v0, 0xc($v1)
/* 25630 800BAA30 8CE30028 */  lw         $v1, 0x28($a3)
/* 25634 800BAA34 8C420004 */  lw         $v0, 4($v0)
/* 25638 800BAA38 ACE20020 */  sw         $v0, 0x20($a3)
/* 2563C 800BAA3C 0802EAA6 */  j          .L800BAA98
/* 25640 800BAA40 8C62000C */   lw        $v0, 0xc($v1)
.L800BAA44:
/* 25644 800BAA44 ACE00024 */  sw         $zero, 0x24($a3)
.L800BAA48:
/* 25648 800BAA48 ACE00020 */  sw         $zero, 0x20($a3)
/* 2564C 800BAA4C 0802EAA8 */  j          .L800BAAA0
/* 25650 800BAA50 ACE0001C */   sw        $zero, 0x1c($a3)
.L800BAA54:
/* 25654 800BAA54 8CE20028 */  lw         $v0, 0x28($a3)
/* 25658 800BAA58 24040001 */  addiu      $a0, $zero, 1
/* 2565C 800BAA5C ACE0003C */  sw         $zero, 0x3c($a3)
/* 25660 800BAA60 ACE40040 */  sw         $a0, 0x40($a3)
/* 25664 800BAA64 1040000E */  beqz       $v0, .L800BAAA0
/* 25668 800BAA68 ACE00038 */   sw        $zero, 0x38($a3)
/* 2566C 800BAA6C 8C420000 */  lw         $v0, ($v0)
/* 25670 800BAA70 8CE30028 */  lw         $v1, 0x28($a3)
/* 25674 800BAA74 ACE20044 */  sw         $v0, 0x44($a3)
/* 25678 800BAA78 90620008 */  lbu        $v0, 8($v1)
/* 2567C 800BAA7C 10400003 */  beqz       $v0, .L800BAA8C
/* 25680 800BAA80 00000000 */   nop
/* 25684 800BAA84 14440006 */  bne        $v0, $a0, .L800BAAA0
/* 25688 800BAA88 00000000 */   nop
.L800BAA8C:
/* 2568C 800BAA8C 8C62000C */  lw         $v0, 0xc($v1)
/* 25690 800BAA90 10400003 */  beqz       $v0, .L800BAAA0
/* 25694 800BAA94 00000000 */   nop
.L800BAA98:
/* 25698 800BAA98 8C420008 */  lw         $v0, 8($v0)
/* 2569C 800BAA9C ACE20024 */  sw         $v0, 0x24($a3)
.L800BAAA0:
/* 256A0 800BAAA0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 256A4 800BAAA4 03E00008 */  jr         $ra
/* 256A8 800BAAA8 27BD0018 */   addiu     $sp, $sp, 0x18
