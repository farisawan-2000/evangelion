.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003E4A0_18DEE0
/* 18DEE0 8003E4A0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18DEE4 8003E4A4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18DEE8 8003E4A8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 18DEEC 8003E4AC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 18DEF0 8003E4B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18DEF4 8003E4B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 18DEF8 8003E4B8 8C44002C */  lw         $a0, 0x2c($v0)
/* 18DEFC 8003E4BC 14600003 */  bnez       $v1, .L8003E4CC
/* 18DF00 8003E4C0 24020280 */   addiu     $v0, $zero, 0x280
/* 18DF04 8003E4C4 3C018005 */  lui        $at, %hi(D_80052004)
/* 18DF08 8003E4C8 A4222004 */  sh         $v0, %lo(D_80052004)($at)
.L8003E4CC:
/* 18DF0C 8003E4CC 3C058005 */  lui        $a1, %hi(D_80052004)
/* 18DF10 8003E4D0 94A52004 */  lhu        $a1, %lo(D_80052004)($a1)
/* 18DF14 8003E4D4 8C840000 */  lw         $a0, ($a0)
/* 18DF18 8003E4D8 240601E0 */  addiu      $a2, $zero, 0x1e0
/* 18DF1C 8003E4DC 24A20001 */  addiu      $v0, $a1, 1
/* 18DF20 8003E4E0 00052C00 */  sll        $a1, $a1, 0x10
/* 18DF24 8003E4E4 3C018005 */  lui        $at, %hi(D_80052004)
/* 18DF28 8003E4E8 A4222004 */  sh         $v0, %lo(D_80052004)($at)
/* 18DF2C 8003E4EC 0C028D89 */  jal        func_800A3624
/* 18DF30 8003E4F0 00052C03 */   sra       $a1, $a1, 0x10
/* 18DF34 8003E4F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 18DF38 8003E4F8 03E00008 */  jr         $ra
/* 18DF3C 8003E4FC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003E500_18DF40
/* 18DF40 8003E500 3C028005 */  lui        $v0, %hi(D_80052000)
/* 18DF44 8003E504 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 18DF48 8003E508 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 18DF4C 8003E50C AFBF002C */  sw         $ra, 0x2c($sp)
/* 18DF50 8003E510 AFB40028 */  sw         $s4, 0x28($sp)
/* 18DF54 8003E514 AFB30024 */  sw         $s3, 0x24($sp)
/* 18DF58 8003E518 AFB20020 */  sw         $s2, 0x20($sp)
/* 18DF5C 8003E51C AFB1001C */  sw         $s1, 0x1c($sp)
/* 18DF60 8003E520 AFB00018 */  sw         $s0, 0x18($sp)
/* 18DF64 8003E524 8C53002C */  lw         $s3, 0x2c($v0)
/* 18DF68 8003E528 8C540028 */  lw         $s4, 0x28($v0)
/* 18DF6C 8003E52C 0C02591A */  jal        func_80096468
/* 18DF70 8003E530 24040030 */   addiu     $a0, $zero, 0x30
/* 18DF74 8003E534 240500FF */  addiu      $a1, $zero, 0xff
/* 18DF78 8003E538 24500030 */  addiu      $s0, $v0, 0x30
/* 18DF7C 8003E53C 321000FF */  andi       $s0, $s0, 0xff
/* 18DF80 8003E540 AFB00010 */  sw         $s0, 0x10($sp)
/* 18DF84 8003E544 8E64000C */  lw         $a0, 0xc($s3)
/* 18DF88 8003E548 240600FF */  addiu      $a2, $zero, 0xff
/* 18DF8C 8003E54C 0C028E41 */  jal        func_800A3904
/* 18DF90 8003E550 240700FF */   addiu     $a3, $zero, 0xff
/* 18DF94 8003E554 AFB00010 */  sw         $s0, 0x10($sp)
/* 18DF98 8003E558 8E640024 */  lw         $a0, 0x24($s3)
/* 18DF9C 8003E55C 240500FF */  addiu      $a1, $zero, 0xff
/* 18DFA0 8003E560 240600FF */  addiu      $a2, $zero, 0xff
/* 18DFA4 8003E564 0C028E41 */  jal        func_800A3904
/* 18DFA8 8003E568 240700FF */   addiu     $a3, $zero, 0xff
/* 18DFAC 8003E56C 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18DFB0 8003E570 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18DFB4 8003E574 1440001B */  bnez       $v0, .L8003E5E4
/* 18DFB8 8003E578 2C420078 */   sltiu     $v0, $v0, 0x78
/* 18DFBC 8003E57C 240200EC */  addiu      $v0, $zero, 0xec
/* 18DFC0 8003E580 3C018005 */  lui        $at, %hi(D_80052004)
/* 18DFC4 8003E584 A4222004 */  sh         $v0, %lo(D_80052004)($at)
/* 18DFC8 8003E588 00009021 */  addu       $s2, $zero, $zero
/* 18DFCC 8003E58C 00128E00 */  sll        $s1, $s2, 0x18
.L8003E590:
/* 18DFD0 8003E590 00118E03 */  sra        $s1, $s1, 0x18
/* 18DFD4 8003E594 00118100 */  sll        $s0, $s1, 4
/* 18DFD8 8003E598 02118023 */  subu       $s0, $s0, $s1
/* 18DFDC 8003E59C 001080C0 */  sll        $s0, $s0, 3
/* 18DFE0 8003E5A0 02148021 */  addu       $s0, $s0, $s4
/* 18DFE4 8003E5A4 8E04006C */  lw         $a0, 0x6c($s0)
/* 18DFE8 8003E5A8 0C02795C */  jal        func_8009E570
/* 18DFEC 8003E5AC 3C054000 */   lui       $a1, 0x4000
/* 18DFF0 8003E5B0 8E04006C */  lw         $a0, 0x6c($s0)
/* 18DFF4 8003E5B4 0C027962 */  jal        func_8009E588
/* 18DFF8 8003E5B8 02202821 */   addu      $a1, $s1, $zero
/* 18DFFC 8003E5BC 26420001 */  addiu      $v0, $s2, 1
/* 18E000 8003E5C0 00409021 */  addu       $s2, $v0, $zero
/* 18E004 8003E5C4 00021600 */  sll        $v0, $v0, 0x18
/* 18E008 8003E5C8 00021603 */  sra        $v0, $v0, 0x18
/* 18E00C 8003E5CC 28420009 */  slti       $v0, $v0, 9
/* 18E010 8003E5D0 5440FFEF */  bnezl      $v0, .L8003E590
/* 18E014 8003E5D4 00128E00 */   sll       $s1, $s2, 0x18
/* 18E018 8003E5D8 3C028005 */  lui        $v0, %hi(D_80052038)
/* 18E01C 8003E5DC 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 18E020 8003E5E0 2C420078 */  sltiu      $v0, $v0, 0x78
.L8003E5E4:
/* 18E024 8003E5E4 10400006 */  beqz       $v0, .L8003E600
/* 18E028 8003E5E8 00000000 */   nop
/* 18E02C 8003E5EC 3C028005 */  lui        $v0, %hi(D_80052004)
/* 18E030 8003E5F0 94422004 */  lhu        $v0, %lo(D_80052004)($v0)
/* 18E034 8003E5F4 24420001 */  addiu      $v0, $v0, 1
/* 18E038 8003E5F8 3C018005 */  lui        $at, %hi(D_80052004)
/* 18E03C 8003E5FC A4222004 */  sh         $v0, %lo(D_80052004)($at)
.L8003E600:
/* 18E040 8003E600 8E640000 */  lw         $a0, ($s3)
/* 18E044 8003E604 3C068005 */  lui        $a2, %hi(D_80052004)
/* 18E048 8003E608 84C62004 */  lh         $a2, %lo(D_80052004)($a2)
/* 18E04C 8003E60C 0C028D89 */  jal        func_800A3624
/* 18E050 8003E610 24050283 */   addiu     $a1, $zero, 0x283
/* 18E054 8003E614 8E64000C */  lw         $a0, 0xc($s3)
/* 18E058 8003E618 3C068005 */  lui        $a2, %hi(D_80052004)
/* 18E05C 8003E61C 84C62004 */  lh         $a2, %lo(D_80052004)($a2)
/* 18E060 8003E620 0C028D89 */  jal        func_800A3624
/* 18E064 8003E624 24050283 */   addiu     $a1, $zero, 0x283
/* 18E068 8003E628 3C068005 */  lui        $a2, %hi(D_80052004)
/* 18E06C 8003E62C 94C62004 */  lhu        $a2, %lo(D_80052004)($a2)
/* 18E070 8003E630 8E640018 */  lw         $a0, 0x18($s3)
/* 18E074 8003E634 24050280 */  addiu      $a1, $zero, 0x280
/* 18E078 8003E638 24C6019C */  addiu      $a2, $a2, 0x19c
/* 18E07C 8003E63C 00063400 */  sll        $a2, $a2, 0x10
/* 18E080 8003E640 0C028D89 */  jal        func_800A3624
/* 18E084 8003E644 00063403 */   sra       $a2, $a2, 0x10
/* 18E088 8003E648 3C068005 */  lui        $a2, %hi(D_80052004)
/* 18E08C 8003E64C 94C62004 */  lhu        $a2, %lo(D_80052004)($a2)
/* 18E090 8003E650 8E640024 */  lw         $a0, 0x24($s3)
/* 18E094 8003E654 24050280 */  addiu      $a1, $zero, 0x280
/* 18E098 8003E658 24C6019C */  addiu      $a2, $a2, 0x19c
/* 18E09C 8003E65C 00063400 */  sll        $a2, $a2, 0x10
/* 18E0A0 8003E660 0C028D89 */  jal        func_800A3624
/* 18E0A4 8003E664 00063403 */   sra       $a2, $a2, 0x10
/* 18E0A8 8003E668 8FBF002C */  lw         $ra, 0x2c($sp)
/* 18E0AC 8003E66C 8FB40028 */  lw         $s4, 0x28($sp)
/* 18E0B0 8003E670 8FB30024 */  lw         $s3, 0x24($sp)
/* 18E0B4 8003E674 8FB20020 */  lw         $s2, 0x20($sp)
/* 18E0B8 8003E678 8FB1001C */  lw         $s1, 0x1c($sp)
/* 18E0BC 8003E67C 8FB00018 */  lw         $s0, 0x18($sp)
/* 18E0C0 8003E680 03E00008 */  jr         $ra
/* 18E0C4 8003E684 27BD0030 */   addiu     $sp, $sp, 0x30
/* 18E0C8 8003E688 00000000 */  nop
/* 18E0CC 8003E68C 00000000 */  nop