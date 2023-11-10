glabel func_800B3E28
/* 1EA28 800B3E28 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1EA2C 800B3E2C AFBF0010 */  sw         $ra, 0x10($sp)
/* 1EA30 800B3E30 24020004 */  addiu      $v0, $zero, 0x4
/* 1EA34 800B3E34 10A20049 */  beq        $a1, $v0, .L800B3F5C
/* 1EA38 800B3E38 00803821 */   addu      $a3, $a0, $zero
/* 1EA3C 800B3E3C 24020005 */  addiu      $v0, $zero, 0x5
/* 1EA40 800B3E40 14A20059 */  bne        $a1, $v0, .L800B3FA8
/* 1EA44 800B3E44 00000000 */   nop
/* 1EA48 800B3E48 ACE60020 */  sw         $a2, 0x20($a3)
/* 1EA4C 800B3E4C 8CC20000 */  lw         $v0, 0x0($a2)
/* 1EA50 800B3E50 8CE40020 */  lw         $a0, 0x20($a3)
/* 1EA54 800B3E54 ACE00030 */  sw         $zero, 0x30($a3)
/* 1EA58 800B3E58 ACE2003C */  sw         $v0, 0x3C($a3)
/* 1EA5C 800B3E5C 90830008 */  lbu        $v1, 0x8($a0)
/* 1EA60 800B3E60 10600005 */  beqz       $v1, .L800B3E78
/* 1EA64 800B3E64 24020001 */   addiu     $v0, $zero, 0x1
/* 1EA68 800B3E68 1062002C */  beq        $v1, $v0, .L800B3F1C
/* 1EA6C 800B3E6C 00000000 */   nop
/* 1EA70 800B3E70 0802CFEA */  j          .L800B3FA8
/* 1EA74 800B3E74 00000000 */   nop
.L800B3E78:
/* 1EA78 800B3E78 8C820004 */  lw         $v0, 0x4($a0)
/* 1EA7C 800B3E7C 3C0338E3 */  lui        $v1, (0x38E38E39 >> 16)
/* 1EA80 800B3E80 34638E39 */  ori        $v1, $v1, (0x38E38E39 & 0xFFFF)
/* 1EA84 800B3E84 00430018 */  mult       $v0, $v1
/* 1EA88 800B3E88 000217C3 */  sra        $v0, $v0, 31
/* 1EA8C 800B3E8C 00004010 */  mfhi       $t0
/* 1EA90 800B3E90 00081843 */  sra        $v1, $t0, 1
/* 1EA94 800B3E94 00621823 */  subu       $v1, $v1, $v0
/* 1EA98 800B3E98 000310C0 */  sll        $v0, $v1, 3
/* 1EA9C 800B3E9C 00431021 */  addu       $v0, $v0, $v1
/* 1EAA0 800B3EA0 AC820004 */  sw         $v0, 0x4($a0)
/* 1EAA4 800B3EA4 8CE20020 */  lw         $v0, 0x20($a3)
/* 1EAA8 800B3EA8 8C430010 */  lw         $v1, 0x10($v0)
/* 1EAAC 800B3EAC 8C620004 */  lw         $v0, 0x4($v1)
/* 1EAB0 800B3EB0 8C630000 */  lw         $v1, 0x0($v1)
/* 1EAB4 800B3EB4 00021040 */  sll        $v0, $v0, 1
/* 1EAB8 800B3EB8 00620018 */  mult       $v1, $v0
/* 1EABC 800B3EBC 00001812 */  mflo       $v1
/* 1EAC0 800B3EC0 8CE20020 */  lw         $v0, 0x20($a3)
/* 1EAC4 800B3EC4 000318C0 */  sll        $v1, $v1, 3
/* 1EAC8 800B3EC8 ACE30024 */  sw         $v1, 0x24($a3)
/* 1EACC 800B3ECC 8C42000C */  lw         $v0, 0xC($v0)
/* 1EAD0 800B3ED0 1040001E */  beqz       $v0, .L800B3F4C
/* 1EAD4 800B3ED4 24060020 */   addiu     $a2, $zero, 0x20
/* 1EAD8 800B3ED8 8C420000 */  lw         $v0, 0x0($v0)
/* 1EADC 800B3EDC 8CE30020 */  lw         $v1, 0x20($a3)
/* 1EAE0 800B3EE0 ACE20014 */  sw         $v0, 0x14($a3)
/* 1EAE4 800B3EE4 8C62000C */  lw         $v0, 0xC($v1)
/* 1EAE8 800B3EE8 8CE30020 */  lw         $v1, 0x20($a3)
/* 1EAEC 800B3EEC 8C420004 */  lw         $v0, 0x4($v0)
/* 1EAF0 800B3EF0 ACE20018 */  sw         $v0, 0x18($a3)
/* 1EAF4 800B3EF4 8C62000C */  lw         $v0, 0xC($v1)
/* 1EAF8 800B3EF8 8CE30020 */  lw         $v1, 0x20($a3)
/* 1EAFC 800B3EFC 8C420008 */  lw         $v0, 0x8($v0)
/* 1EB00 800B3F00 ACE2001C */  sw         $v0, 0x1C($a3)
/* 1EB04 800B3F04 8C64000C */  lw         $a0, 0xC($v1)
/* 1EB08 800B3F08 8CE50010 */  lw         $a1, 0x10($a3)
/* 1EB0C 800B3F0C 0C02F2F8 */  jal        func_800BCBE0
/* 1EB10 800B3F10 2484000C */   addiu     $a0, $a0, 0xC
/* 1EB14 800B3F14 0802CFEA */  j          .L800B3FA8
/* 1EB18 800B3F18 00000000 */   nop
.L800B3F1C:
/* 1EB1C 800B3F1C 8C82000C */  lw         $v0, 0xC($a0)
/* 1EB20 800B3F20 5040000B */  beql       $v0, $zero, .L800B3F50
/* 1EB24 800B3F24 ACE0001C */   sw        $zero, 0x1C($a3)
/* 1EB28 800B3F28 8C420000 */  lw         $v0, 0x0($v0)
/* 1EB2C 800B3F2C 8CE30020 */  lw         $v1, 0x20($a3)
/* 1EB30 800B3F30 ACE20014 */  sw         $v0, 0x14($a3)
/* 1EB34 800B3F34 8C62000C */  lw         $v0, 0xC($v1)
/* 1EB38 800B3F38 8CE30020 */  lw         $v1, 0x20($a3)
/* 1EB3C 800B3F3C 8C420004 */  lw         $v0, 0x4($v0)
/* 1EB40 800B3F40 ACE20018 */  sw         $v0, 0x18($a3)
/* 1EB44 800B3F44 0802CFE8 */  j          .L800B3FA0
/* 1EB48 800B3F48 8C62000C */   lw        $v0, 0xC($v1)
.L800B3F4C:
/* 1EB4C 800B3F4C ACE0001C */  sw         $zero, 0x1C($a3)
.L800B3F50:
/* 1EB50 800B3F50 ACE00018 */  sw         $zero, 0x18($a3)
/* 1EB54 800B3F54 0802CFEA */  j          .L800B3FA8
/* 1EB58 800B3F58 ACE00014 */   sw        $zero, 0x14($a3)
.L800B3F5C:
/* 1EB5C 800B3F5C 8CE20020 */  lw         $v0, 0x20($a3)
/* 1EB60 800B3F60 24040001 */  addiu      $a0, $zero, 0x1
/* 1EB64 800B3F64 ACE00034 */  sw         $zero, 0x34($a3)
/* 1EB68 800B3F68 ACE40038 */  sw         $a0, 0x38($a3)
/* 1EB6C 800B3F6C 1040000E */  beqz       $v0, .L800B3FA8
/* 1EB70 800B3F70 ACE00030 */   sw        $zero, 0x30($a3)
/* 1EB74 800B3F74 8C420000 */  lw         $v0, 0x0($v0)
/* 1EB78 800B3F78 8CE30020 */  lw         $v1, 0x20($a3)
/* 1EB7C 800B3F7C ACE2003C */  sw         $v0, 0x3C($a3)
/* 1EB80 800B3F80 90620008 */  lbu        $v0, 0x8($v1)
/* 1EB84 800B3F84 10400003 */  beqz       $v0, .L800B3F94
/* 1EB88 800B3F88 00000000 */   nop
/* 1EB8C 800B3F8C 14440006 */  bne        $v0, $a0, .L800B3FA8
/* 1EB90 800B3F90 00000000 */   nop
.L800B3F94:
/* 1EB94 800B3F94 8C62000C */  lw         $v0, 0xC($v1)
/* 1EB98 800B3F98 10400003 */  beqz       $v0, .L800B3FA8
/* 1EB9C 800B3F9C 00000000 */   nop
.L800B3FA0:
/* 1EBA0 800B3FA0 8C420008 */  lw         $v0, 0x8($v0)
/* 1EBA4 800B3FA4 ACE2001C */  sw         $v0, 0x1C($a3)
.L800B3FA8:
/* 1EBA8 800B3FA8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1EBAC 800B3FAC 03E00008 */  jr         $ra
/* 1EBB0 800B3FB0 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B3E28, . - func_800B3E28
