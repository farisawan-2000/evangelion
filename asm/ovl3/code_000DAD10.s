.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80031800_DAD10
/* DAD10 80031800 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DAD14 80031804 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DAD18 80031808 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DAD1C 8003180C 14400005 */  bnez       $v0, .L80031824
/* DAD20 80031810 AFBF0010 */   sw        $ra, 0x10($sp)
/* DAD24 80031814 0C00C615 */  jal        func_80031854_DAD64
/* DAD28 80031818 00000000 */   nop
/* DAD2C 8003181C 0800C612 */  j          .L80031848
/* DAD30 80031820 00001021 */   addu      $v0, $zero, $zero
.L80031824:
/* DAD34 80031824 8442019A */  lh         $v0, 0x19a($v0)
/* DAD38 80031828 10400005 */  beqz       $v0, .L80031840
/* DAD3C 8003182C 00000000 */   nop
/* DAD40 80031830 0C00C651 */  jal        func_80031944_DAE54
/* DAD44 80031834 00000000 */   nop
/* DAD48 80031838 0800C612 */  j          .L80031848
/* DAD4C 8003183C 00001021 */   addu      $v0, $zero, $zero
.L80031840:
/* DAD50 80031840 0C00C63C */  jal        func_800318F0_DAE00
/* DAD54 80031844 00000000 */   nop
.L80031848:
/* DAD58 80031848 8FBF0010 */  lw         $ra, 0x10($sp)
/* DAD5C 8003184C 03E00008 */  jr         $ra
/* DAD60 80031850 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80031854_DAD64
/* DAD64 80031854 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DAD68 80031858 AFBF0018 */  sw         $ra, 0x18($sp)
/* DAD6C 8003185C 0C026449 */  jal        func_80099124
/* DAD70 80031860 24040002 */   addiu     $a0, $zero, 2
/* DAD74 80031864 0C032663 */  jal        func_800C998C
/* DAD78 80031868 24040240 */   addiu     $a0, $zero, 0x240
/* DAD7C 8003186C 00402021 */  addu       $a0, $v0, $zero
/* DAD80 80031870 3C018006 */  lui        $at, %hi(D_80067E90)
/* DAD84 80031874 AC247E90 */  sw         $a0, %lo(D_80067E90)($at)
/* DAD88 80031878 0C030134 */  jal        bzero
/* DAD8C 8003187C 24050240 */   addiu     $a1, $zero, 0x240
/* DAD90 80031880 0C029375 */  jal        func_800A4DD4
/* DAD94 80031884 00000000 */   nop
/* DAD98 80031888 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DAD9C 8003188C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DADA0 80031890 24050010 */  addiu      $a1, $zero, 0x10
/* DADA4 80031894 AC620004 */  sw         $v0, 4($v1)
/* DADA8 80031898 240200E0 */  addiu      $v0, $zero, 0xe0
/* DADAC 8003189C AFA20010 */  sw         $v0, 0x10($sp)
/* DADB0 800318A0 8C640004 */  lw         $a0, 4($v1)
/* DADB4 800318A4 24060010 */  addiu      $a2, $zero, 0x10
/* DADB8 800318A8 0C02939C */  jal        func_800A4E70
/* DADBC 800318AC 24070130 */   addiu     $a3, $zero, 0x130
/* DADC0 800318B0 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DADC4 800318B4 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DADC8 800318B8 A060019C */  sb         $zero, 0x19c($v1)
/* DADCC 800318BC 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DADD0 800318C0 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DADD4 800318C4 24020015 */  addiu      $v0, $zero, 0x15
/* DADD8 800318C8 A462019A */  sh         $v0, 0x19a($v1)
/* DADDC 800318CC 2402FFFF */  addiu      $v0, $zero, -1
/* DADE0 800318D0 A4600198 */  sh         $zero, 0x198($v1)
/* DADE4 800318D4 A082019D */  sb         $v0, 0x19d($a0)
/* DADE8 800318D8 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DADEC 800318DC 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DADF0 800318E0 8FBF0018 */  lw         $ra, 0x18($sp)
/* DADF4 800318E4 A440019E */  sh         $zero, 0x19e($v0)
/* DADF8 800318E8 03E00008 */  jr         $ra
/* DADFC 800318EC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800318F0_DAE00
/* DAE00 800318F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DAE04 800318F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* DAE08 800318F8 0C00C6F3 */  jal        func_80031BCC_DB0DC
/* DAE0C 800318FC 00000000 */   nop
/* DAE10 80031900 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DAE14 80031904 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DAE18 80031908 0C029393 */  jal        func_800A4E4C
/* DAE1C 8003190C 8C440004 */   lw        $a0, 4($v0)
/* DAE20 80031910 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DAE24 80031914 0C0326A1 */  jal        func_800C9A84
/* DAE28 80031918 8C847E90 */   lw        $a0, %lo(D_80067E90)($a0)
/* DAE2C 8003191C 3C018006 */  lui        $at, %hi(D_80067E90)
/* DAE30 80031920 AC207E90 */  sw         $zero, %lo(D_80067E90)($at)
/* DAE34 80031924 0C026449 */  jal        func_80099124
/* DAE38 80031928 24040002 */   addiu     $a0, $zero, 2
/* DAE3C 8003192C 0C02DB14 */  jal        func_800B6C50
/* DAE40 80031930 00002021 */   addu      $a0, $zero, $zero
/* DAE44 80031934 8FBF0010 */  lw         $ra, 0x10($sp)
/* DAE48 80031938 24020001 */  addiu      $v0, $zero, 1
/* DAE4C 8003193C 03E00008 */  jr         $ra
/* DAE50 80031940 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80031944_DAE54
/* DAE54 80031944 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* DAE58 80031948 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* DAE5C 8003194C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DAE60 80031950 30428000 */  andi       $v0, $v0, 0x8000
/* DAE64 80031954 10400011 */  beqz       $v0, .L8003199C
/* DAE68 80031958 AFBF0020 */   sw        $ra, 0x20($sp)
/* DAE6C 8003195C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DAE70 80031960 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DAE74 80031964 9043019C */  lbu        $v1, 0x19c($v0)
/* DAE78 80031968 24630001 */  addiu      $v1, $v1, 1
/* DAE7C 8003196C A043019C */  sb         $v1, 0x19c($v0)
/* DAE80 80031970 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DAE84 80031974 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DAE88 80031978 8085019C */  lb         $a1, 0x19c($a0)
/* DAE8C 8003197C 28A20009 */  slti       $v0, $a1, 9
/* DAE90 80031980 14400003 */  bnez       $v0, .L80031990
/* DAE94 80031984 00A01821 */   addu      $v1, $a1, $zero
/* DAE98 80031988 0800C666 */  j          .L80031998
/* DAE9C 8003198C 2462FFF7 */   addiu     $v0, $v1, -9
.L80031990:
/* DAEA0 80031990 04A10002 */  bgez       $a1, .L8003199C
/* DAEA4 80031994 24620009 */   addiu     $v0, $v1, 9
.L80031998:
/* DAEA8 80031998 A082019C */  sb         $v0, 0x19c($a0)
.L8003199C:
/* DAEAC 8003199C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DAEB0 800319A0 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DAEB4 800319A4 8064019C */  lb         $a0, 0x19c($v1)
/* DAEB8 800319A8 28820009 */  slti       $v0, $a0, 9
/* DAEBC 800319AC 14400003 */  bnez       $v0, .L800319BC
/* DAEC0 800319B0 24020008 */   addiu     $v0, $zero, 8
/* DAEC4 800319B4 0800C671 */  j          .L800319C4
/* DAEC8 800319B8 A062019C */   sb        $v0, 0x19c($v1)
.L800319BC:
/* DAECC 800319BC 04820001 */  bltzl      $a0, .L800319C4
/* DAED0 800319C0 A060019C */   sb        $zero, 0x19c($v1)
.L800319C4:
/* DAED4 800319C4 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DAED8 800319C8 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DAEDC 800319CC 8083019C */  lb         $v1, 0x19c($a0)
/* DAEE0 800319D0 8082019D */  lb         $v0, 0x19d($a0)
/* DAEE4 800319D4 10620018 */  beq        $v1, $v0, .L80031A38
/* DAEE8 800319D8 00031040 */   sll       $v0, $v1, 1
/* DAEEC 800319DC 00431021 */  addu       $v0, $v0, $v1
/* DAEF0 800319E0 00021080 */  sll        $v0, $v0, 2
/* DAEF4 800319E4 3C018007 */  lui        $at, %hi(D_800684B0)
/* DAEF8 800319E8 00220821 */  addu       $at, $at, $v0
/* DAEFC 800319EC 8C2284B0 */  lw         $v0, %lo(D_800684B0)($at)
/* DAF00 800319F0 9083019C */  lbu        $v1, 0x19c($a0)
/* DAF04 800319F4 A480019E */  sh         $zero, 0x19e($a0)
/* DAF08 800319F8 AC820000 */  sw         $v0, ($a0)
/* DAF0C 800319FC 0C00C6F3 */  jal        func_80031BCC_DB0DC
/* DAF10 80031A00 A083019D */   sb        $v1, 0x19d($a0)
/* DAF14 80031A04 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DAF18 80031A08 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DAF1C 80031A0C 8043019C */  lb         $v1, 0x19c($v0)
/* DAF20 80031A10 00031040 */  sll        $v0, $v1, 1
/* DAF24 80031A14 00431021 */  addu       $v0, $v0, $v1
/* DAF28 80031A18 00021080 */  sll        $v0, $v0, 2
/* DAF2C 80031A1C 3C048007 */  lui        $a0, %hi(D_800684A8)
/* DAF30 80031A20 00822021 */  addu       $a0, $a0, $v0
/* DAF34 80031A24 8C8484A8 */  lw         $a0, %lo(D_800684A8)($a0)
/* DAF38 80031A28 3C058007 */  lui        $a1, %hi(D_800684AC)
/* DAF3C 80031A2C 00A22821 */  addu       $a1, $a1, $v0
/* DAF40 80031A30 0C00C6B1 */  jal        func_80031AC4_DAFD4
/* DAF44 80031A34 84A584AC */   lh        $a1, %lo(D_800684AC)($a1)
.L80031A38:
/* DAF48 80031A38 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DAF4C 80031A3C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DAF50 80031A40 0C028A40 */  jal        func_800A2900
/* DAF54 80031A44 8C440004 */   lw        $a0, 4($v0)
/* DAF58 80031A48 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DAF5C 80031A4C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DAF60 80031A50 8043019C */  lb         $v1, 0x19c($v0)
/* DAF64 80031A54 00031040 */  sll        $v0, $v1, 1
/* DAF68 80031A58 00431021 */  addu       $v0, $v0, $v1
/* DAF6C 80031A5C 00021080 */  sll        $v0, $v0, 2
/* DAF70 80031A60 3C018007 */  lui        $at, %hi(D_800684B0)
/* DAF74 80031A64 00220821 */  addu       $at, $at, $v0
/* DAF78 80031A68 8C2284B0 */  lw         $v0, %lo(D_800684B0)($at)
/* DAF7C 80031A6C 0040F809 */  jalr       $v0
/* DAF80 80031A70 00000000 */   nop
/* DAF84 80031A74 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DAF88 80031A78 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DAF8C 80031A7C 8482019A */  lh         $v0, 0x19a($a0)
/* DAF90 80031A80 00401821 */  addu       $v1, $v0, $zero
/* DAF94 80031A84 28420015 */  slti       $v0, $v0, 0x15
/* DAF98 80031A88 10400003 */  beqz       $v0, .L80031A98
/* DAF9C 80031A8C 2462FFFF */   addiu     $v0, $v1, -1
/* DAFA0 80031A90 0800C6AE */  j          .L80031AB8
/* DAFA4 80031A94 A482019A */   sh        $v0, 0x19a($a0)
.L80031A98:
/* DAFA8 80031A98 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* DAFAC 80031A9C 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* DAFB0 80031AA0 30424000 */  andi       $v0, $v0, 0x4000
/* DAFB4 80031AA4 10400004 */  beqz       $v0, .L80031AB8
/* DAFB8 80031AA8 24020014 */   addiu     $v0, $zero, 0x14
/* DAFBC 80031AAC A482019A */  sh         $v0, 0x19a($a0)
/* DAFC0 80031AB0 0C02A5E5 */  jal        func_800A9794
/* DAFC4 80031AB4 24040014 */   addiu     $a0, $zero, 0x14
.L80031AB8:
/* DAFC8 80031AB8 8FBF0020 */  lw         $ra, 0x20($sp)
/* DAFCC 80031ABC 03E00008 */  jr         $ra
/* DAFD0 80031AC0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80031AC4_DAFD4
/* DAFD4 80031AC4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DAFD8 80031AC8 AFB20018 */  sw         $s2, 0x18($sp)
/* DAFDC 80031ACC 00809021 */  addu       $s2, $a0, $zero
/* DAFE0 80031AD0 AFB40020 */  sw         $s4, 0x20($sp)
/* DAFE4 80031AD4 00A0A021 */  addu       $s4, $a1, $zero
/* DAFE8 80031AD8 00052C00 */  sll        $a1, $a1, 0x10
/* DAFEC 80031ADC 00052C03 */  sra        $a1, $a1, 0x10
/* DAFF0 80031AE0 AFBF0024 */  sw         $ra, 0x24($sp)
/* DAFF4 80031AE4 AFB3001C */  sw         $s3, 0x1c($sp)
/* DAFF8 80031AE8 AFB10014 */  sw         $s1, 0x14($sp)
/* DAFFC 80031AEC 18A0002C */  blez       $a1, .L80031BA0
/* DB000 80031AF0 AFB00010 */   sw        $s0, 0x10($sp)
/* DB004 80031AF4 24900004 */  addiu      $s0, $a0, 4
/* DB008 80031AF8 00008821 */  addu       $s1, $zero, $zero
/* DB00C 80031AFC 00059880 */  sll        $s3, $a1, 2
.L80031B00:
/* DB010 80031B00 92020003 */  lbu        $v0, 3($s0)
/* DB014 80031B04 1040000A */  beqz       $v0, .L80031B30
/* DB018 80031B08 00000000 */   nop
/* DB01C 80031B0C 0C029464 */  jal        func_800A5190
/* DB020 80031B10 96440000 */   lhu       $a0, ($s2)
/* DB024 80031B14 96440000 */  lhu        $a0, ($s2)
/* DB028 80031B18 92060002 */  lbu        $a2, 2($s0)
/* DB02C 80031B1C 3045FFFF */  andi       $a1, $v0, 0xffff
/* DB030 80031B20 0C0293A3 */  jal        func_800A4E8C
/* DB034 80031B24 00003821 */   addu      $a3, $zero, $zero
/* DB038 80031B28 0800C6D0 */  j          .L80031B40
/* DB03C 80031B2C 00000000 */   nop
.L80031B30:
/* DB040 80031B30 96440000 */  lhu        $a0, ($s2)
/* DB044 80031B34 92050002 */  lbu        $a1, 2($s0)
/* DB048 80031B38 0C028CB7 */  jal        func_800A32DC
/* DB04C 80031B3C 00003021 */   addu      $a2, $zero, $zero
.L80031B40:
/* DB050 80031B40 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB054 80031B44 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB058 80031B48 02231821 */  addu       $v1, $s1, $v1
/* DB05C 80031B4C AC620008 */  sw         $v0, 8($v1)
/* DB060 80031B50 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB064 80031B54 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB068 80031B58 96030004 */  lhu        $v1, 4($s0)
/* DB06C 80031B5C 02221021 */  addu       $v0, $s1, $v0
/* DB070 80031B60 8C440008 */  lw         $a0, 8($v0)
/* DB074 80031B64 2652000A */  addiu      $s2, $s2, 0xa
/* DB078 80031B68 26310004 */  addiu      $s1, $s1, 4
/* DB07C 80031B6C A483001E */  sh         $v1, 0x1e($a0)
/* DB080 80031B70 8C440008 */  lw         $a0, 8($v0)
/* DB084 80031B74 9605FFFE */  lhu        $a1, -2($s0)
/* DB088 80031B78 96060000 */  lhu        $a2, ($s0)
/* DB08C 80031B7C 2610000A */  addiu      $s0, $s0, 0xa
/* DB090 80031B80 00052C80 */  sll        $a1, $a1, 0x12
/* DB094 80031B84 00052C03 */  sra        $a1, $a1, 0x10
/* DB098 80031B88 00063480 */  sll        $a2, $a2, 0x12
/* DB09C 80031B8C 0C028D89 */  jal        func_800A3624
/* DB0A0 80031B90 00063403 */   sra       $a2, $a2, 0x10
/* DB0A4 80031B94 0233102A */  slt        $v0, $s1, $s3
/* DB0A8 80031B98 1440FFD9 */  bnez       $v0, .L80031B00
/* DB0AC 80031B9C 00000000 */   nop
.L80031BA0:
/* DB0B0 80031BA0 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB0B4 80031BA4 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB0B8 80031BA8 A4540198 */  sh         $s4, 0x198($v0)
/* DB0BC 80031BAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* DB0C0 80031BB0 8FB40020 */  lw         $s4, 0x20($sp)
/* DB0C4 80031BB4 8FB3001C */  lw         $s3, 0x1c($sp)
/* DB0C8 80031BB8 8FB20018 */  lw         $s2, 0x18($sp)
/* DB0CC 80031BBC 8FB10014 */  lw         $s1, 0x14($sp)
/* DB0D0 80031BC0 8FB00010 */  lw         $s0, 0x10($sp)
/* DB0D4 80031BC4 03E00008 */  jr         $ra
/* DB0D8 80031BC8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80031BCC_DB0DC
/* DB0DC 80031BCC 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB0E0 80031BD0 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB0E4 80031BD4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DB0E8 80031BD8 AFBF001C */  sw         $ra, 0x1c($sp)
/* DB0EC 80031BDC AFB00018 */  sw         $s0, 0x18($sp)
/* DB0F0 80031BE0 84620198 */  lh         $v0, 0x198($v1)
/* DB0F4 80031BE4 1840000C */  blez       $v0, .L80031C18
/* DB0F8 80031BE8 00008021 */   addu      $s0, $zero, $zero
/* DB0FC 80031BEC 00101080 */  sll        $v0, $s0, 2
.L80031BF0:
/* DB100 80031BF0 00431021 */  addu       $v0, $v0, $v1
/* DB104 80031BF4 8C440008 */  lw         $a0, 8($v0)
/* DB108 80031BF8 0C028D30 */  jal        func_800A34C0
/* DB10C 80031BFC 26100001 */   addiu     $s0, $s0, 1
/* DB110 80031C00 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB114 80031C04 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB118 80031C08 84620198 */  lh         $v0, 0x198($v1)
/* DB11C 80031C0C 0202102A */  slt        $v0, $s0, $v0
/* DB120 80031C10 1440FFF7 */  bnez       $v0, .L80031BF0
/* DB124 80031C14 00101080 */   sll       $v0, $s0, 2
.L80031C18:
/* DB128 80031C18 8FBF001C */  lw         $ra, 0x1c($sp)
/* DB12C 80031C1C 8FB00018 */  lw         $s0, 0x18($sp)
/* DB130 80031C20 03E00008 */  jr         $ra
/* DB134 80031C24 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80031C28_DB138
/* DB138 80031C28 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB13C 80031C2C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB140 80031C30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DB144 80031C34 AFBF001C */  sw         $ra, 0x1c($sp)
/* DB148 80031C38 AFB00018 */  sw         $s0, 0x18($sp)
/* DB14C 80031C3C 84620198 */  lh         $v0, 0x198($v1)
/* DB150 80031C40 1840000C */  blez       $v0, .L80031C74
/* DB154 80031C44 00008021 */   addu      $s0, $zero, $zero
/* DB158 80031C48 00101080 */  sll        $v0, $s0, 2
.L80031C4C:
/* DB15C 80031C4C 00431021 */  addu       $v0, $v0, $v1
/* DB160 80031C50 8C440008 */  lw         $a0, 8($v0)
/* DB164 80031C54 0C028A40 */  jal        func_800A2900
/* DB168 80031C58 26100001 */   addiu     $s0, $s0, 1
/* DB16C 80031C5C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB170 80031C60 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB174 80031C64 84620198 */  lh         $v0, 0x198($v1)
/* DB178 80031C68 0202102A */  slt        $v0, $s0, $v0
/* DB17C 80031C6C 1440FFF7 */  bnez       $v0, .L80031C4C
/* DB180 80031C70 00101080 */   sll       $v0, $s0, 2
.L80031C74:
/* DB184 80031C74 8FBF001C */  lw         $ra, 0x1c($sp)
/* DB188 80031C78 8FB00018 */  lw         $s0, 0x18($sp)
/* DB18C 80031C7C 03E00008 */  jr         $ra
/* DB190 80031C80 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80031C84_DB194
/* DB194 80031C84 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB198 80031C88 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB19C 80031C8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DB1A0 80031C90 AFBF001C */  sw         $ra, 0x1c($sp)
/* DB1A4 80031C94 AFB00018 */  sw         $s0, 0x18($sp)
/* DB1A8 80031C98 8483019E */  lh         $v1, 0x19e($a0)
/* DB1AC 80031C9C 24020096 */  addiu      $v0, $zero, 0x96
/* DB1B0 80031CA0 1062000F */  beq        $v1, $v0, .L80031CE0
/* DB1B4 80031CA4 28620097 */   slti      $v0, $v1, 0x97
/* DB1B8 80031CA8 50400005 */  beql       $v0, $zero, .L80031CC0
/* DB1BC 80031CAC 240200B4 */   addiu     $v0, $zero, 0xb4
/* DB1C0 80031CB0 10600007 */  beqz       $v1, .L80031CD0
/* DB1C4 80031CB4 00000000 */   nop
/* DB1C8 80031CB8 0800C740 */  j          .L80031D00
/* DB1CC 80031CBC 00000000 */   nop
.L80031CC0:
/* DB1D0 80031CC0 1062000C */  beq        $v1, $v0, .L80031CF4
/* DB1D4 80031CC4 00000000 */   nop
/* DB1D8 80031CC8 0800C740 */  j          .L80031D00
/* DB1DC 80031CCC 00000000 */   nop
.L80031CD0:
/* DB1E0 80031CD0 0C02A5AF */  jal        func_800A96BC
/* DB1E4 80031CD4 24040014 */   addiu     $a0, $zero, 0x14
/* DB1E8 80031CD8 0800C740 */  j          .L80031D00
/* DB1EC 80031CDC 00000000 */   nop
.L80031CE0:
/* DB1F0 80031CE0 3C048017 */  lui        $a0, %hi(D_8016D168)
/* DB1F4 80031CE4 0C02A5C1 */  jal        func_800A9704
/* DB1F8 80031CE8 8C84D168 */   lw        $a0, %lo(D_8016D168)($a0)
/* DB1FC 80031CEC 0800C740 */  j          .L80031D00
/* DB200 80031CF0 00000000 */   nop
.L80031CF4:
/* DB204 80031CF4 9082019C */  lbu        $v0, 0x19c($a0)
/* DB208 80031CF8 24420001 */  addiu      $v0, $v0, 1
/* DB20C 80031CFC A082019C */  sb         $v0, 0x19c($a0)
.L80031D00:
/* DB210 80031D00 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB214 80031D04 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB218 80031D08 84620198 */  lh         $v0, 0x198($v1)
/* DB21C 80031D0C 1840000E */  blez       $v0, .L80031D48
/* DB220 80031D10 00008021 */   addu      $s0, $zero, $zero
/* DB224 80031D14 00101080 */  sll        $v0, $s0, 2
.L80031D18:
/* DB228 80031D18 00431021 */  addu       $v0, $v0, $v1
/* DB22C 80031D1C 8C440008 */  lw         $a0, 8($v0)
/* DB230 80031D20 0C028A40 */  jal        func_800A2900
/* DB234 80031D24 26100001 */   addiu     $s0, $s0, 1
/* DB238 80031D28 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB23C 80031D2C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB240 80031D30 84620198 */  lh         $v0, 0x198($v1)
/* DB244 80031D34 0202102A */  slt        $v0, $s0, $v0
/* DB248 80031D38 1440FFF7 */  bnez       $v0, .L80031D18
/* DB24C 80031D3C 00101080 */   sll       $v0, $s0, 2
/* DB250 80031D40 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB254 80031D44 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
.L80031D48:
/* DB258 80031D48 9462019E */  lhu        $v0, 0x19e($v1)
/* DB25C 80031D4C 24420001 */  addiu      $v0, $v0, 1
/* DB260 80031D50 A462019E */  sh         $v0, 0x19e($v1)
/* DB264 80031D54 00001021 */  addu       $v0, $zero, $zero
/* DB268 80031D58 8FBF001C */  lw         $ra, 0x1c($sp)
/* DB26C 80031D5C 8FB00018 */  lw         $s0, 0x18($sp)
/* DB270 80031D60 03E00008 */  jr         $ra
/* DB274 80031D64 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80031D68_DB278
/* DB278 80031D68 3C078006 */  lui        $a3, %hi(D_80067E90)
/* DB27C 80031D6C 8CE77E90 */  lw         $a3, %lo(D_80067E90)($a3)
/* DB280 80031D70 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DB284 80031D74 AFBF0024 */  sw         $ra, 0x24($sp)
/* DB288 80031D78 AFB00020 */  sw         $s0, 0x20($sp)
/* DB28C 80031D7C 84E3019E */  lh         $v1, 0x19e($a3)
/* DB290 80031D80 2402012C */  addiu      $v0, $zero, 0x12c
/* DB294 80031D84 10620016 */  beq        $v1, $v0, .L80031DE0
/* DB298 80031D88 2862012D */   slti      $v0, $v1, 0x12d
/* DB29C 80031D8C 50400005 */  beql       $v0, $zero, .L80031DA4
/* DB2A0 80031D90 24020168 */   addiu     $v0, $zero, 0x168
/* DB2A4 80031D94 10600007 */  beqz       $v1, .L80031DB4
/* DB2A8 80031D98 00002821 */   addu      $a1, $zero, $zero
/* DB2AC 80031D9C 0800C781 */  j          .L80031E04
/* DB2B0 80031DA0 00000000 */   nop
.L80031DA4:
/* DB2B4 80031DA4 10620014 */  beq        $v1, $v0, .L80031DF8
/* DB2B8 80031DA8 00000000 */   nop
/* DB2BC 80031DAC 0800C781 */  j          .L80031E04
/* DB2C0 80031DB0 00000000 */   nop
.L80031DB4:
/* DB2C4 80031DB4 8CE40010 */  lw         $a0, 0x10($a3)
/* DB2C8 80031DB8 3C014280 */  lui        $at, 0x4280
/* DB2CC 80031DBC 44810000 */  mtc1       $at, $f0
/* DB2D0 80031DC0 00003021 */  addu       $a2, $zero, $zero
/* DB2D4 80031DC4 ACE001A0 */  sw         $zero, 0x1a0($a3)
/* DB2D8 80031DC8 0C02912A */  jal        func_800A44A8
/* DB2DC 80031DCC E4E001F0 */   swc1      $f0, 0x1f0($a3)
/* DB2E0 80031DD0 0C02A5AF */  jal        func_800A96BC
/* DB2E4 80031DD4 24040001 */   addiu     $a0, $zero, 1
/* DB2E8 80031DD8 0800C781 */  j          .L80031E04
/* DB2EC 80031DDC 00000000 */   nop
.L80031DE0:
/* DB2F0 80031DE0 3C048017 */  lui        $a0, %hi(D_8016D168)
/* DB2F4 80031DE4 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* DB2F8 80031DE8 0C02A5C1 */  jal        func_800A9704
/* DB2FC 80031DEC 00042040 */   sll       $a0, $a0, 1
/* DB300 80031DF0 0800C781 */  j          .L80031E04
/* DB304 80031DF4 00000000 */   nop
.L80031DF8:
/* DB308 80031DF8 90E2019C */  lbu        $v0, 0x19c($a3)
/* DB30C 80031DFC 24420001 */  addiu      $v0, $v0, 1
/* DB310 80031E00 A0E2019C */  sb         $v0, 0x19c($a3)
.L80031E04:
/* DB314 80031E04 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB318 80031E08 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB31C 80031E0C 8482019E */  lh         $v0, 0x19e($a0)
/* DB320 80031E10 28420078 */  slti       $v0, $v0, 0x78
/* DB324 80031E14 14400012 */  bnez       $v0, .L80031E60
/* DB328 80031E18 00000000 */   nop
/* DB32C 80031E1C 8C8201A0 */  lw         $v0, 0x1a0($a0)
/* DB330 80031E20 24430010 */  addiu      $v1, $v0, 0x10
/* DB334 80031E24 28620100 */  slti       $v0, $v1, 0x100
/* DB338 80031E28 14400004 */  bnez       $v0, .L80031E3C
/* DB33C 80031E2C AC8301A0 */   sw        $v1, 0x1a0($a0)
/* DB340 80031E30 240200FF */  addiu      $v0, $zero, 0xff
/* DB344 80031E34 0800C791 */  j          .L80031E44
/* DB348 80031E38 AC8201A0 */   sw        $v0, 0x1a0($a0)
.L80031E3C:
/* DB34C 80031E3C 04620001 */  bltzl      $v1, .L80031E44
/* DB350 80031E40 AC8001A0 */   sw        $zero, 0x1a0($a0)
.L80031E44:
/* DB354 80031E44 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB358 80031E48 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB35C 80031E4C 8C8301A0 */  lw         $v1, 0x1a0($a0)
/* DB360 80031E50 240200FF */  addiu      $v0, $zero, 0xff
/* DB364 80031E54 14620002 */  bne        $v1, $v0, .L80031E60
/* DB368 80031E58 240200D0 */   addiu     $v0, $zero, 0xd0
/* DB36C 80031E5C AC8201A0 */  sw         $v0, 0x1a0($a0)
.L80031E60:
/* DB370 80031E60 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB374 80031E64 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB378 80031E68 906201A3 */  lbu        $v0, 0x1a3($v1)
/* DB37C 80031E6C 240500FF */  addiu      $a1, $zero, 0xff
/* DB380 80031E70 AFA20010 */  sw         $v0, 0x10($sp)
/* DB384 80031E74 8C64000C */  lw         $a0, 0xc($v1)
/* DB388 80031E78 240600FF */  addiu      $a2, $zero, 0xff
/* DB38C 80031E7C 0C028E41 */  jal        func_800A3904
/* DB390 80031E80 240700FF */   addiu     $a3, $zero, 0xff
/* DB394 80031E84 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB398 80031E88 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB39C 80031E8C 3C013E80 */  lui        $at, 0x3e80
/* DB3A0 80031E90 44810000 */  mtc1       $at, $f0
/* DB3A4 80031E94 C44201F0 */  lwc1       $f2, 0x1f0($v0)
/* DB3A8 80031E98 46001080 */  add.s      $f2, $f2, $f0
/* DB3AC 80031E9C 3C014080 */  lui        $at, 0x4080
/* DB3B0 80031EA0 44810000 */  mtc1       $at, $f0
/* DB3B4 80031EA4 00000000 */  nop
/* DB3B8 80031EA8 46001002 */  mul.s      $f0, $f2, $f0
/* DB3BC 80031EAC 8C440010 */  lw         $a0, 0x10($v0)
/* DB3C0 80031EB0 24050040 */  addiu      $a1, $zero, 0x40
/* DB3C4 80031EB4 E44201F0 */  swc1       $f2, 0x1f0($v0)
/* DB3C8 80031EB8 4600008D */  trunc.w.s  $f2, $f0
/* DB3CC 80031EBC 44061000 */  mfc1       $a2, $f2
/* DB3D0 80031EC0 00000000 */  nop
/* DB3D4 80031EC4 00063400 */  sll        $a2, $a2, 0x10
/* DB3D8 80031EC8 0C028D89 */  jal        func_800A3624
/* DB3DC 80031ECC 00063403 */   sra       $a2, $a2, 0x10
/* DB3E0 80031ED0 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB3E4 80031ED4 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB3E8 80031ED8 84620198 */  lh         $v0, 0x198($v1)
/* DB3EC 80031EDC 1840000E */  blez       $v0, .L80031F18
/* DB3F0 80031EE0 00008021 */   addu      $s0, $zero, $zero
/* DB3F4 80031EE4 00101080 */  sll        $v0, $s0, 2
.L80031EE8:
/* DB3F8 80031EE8 00431021 */  addu       $v0, $v0, $v1
/* DB3FC 80031EEC 8C440008 */  lw         $a0, 8($v0)
/* DB400 80031EF0 0C028A40 */  jal        func_800A2900
/* DB404 80031EF4 26100001 */   addiu     $s0, $s0, 1
/* DB408 80031EF8 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB40C 80031EFC 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB410 80031F00 84620198 */  lh         $v0, 0x198($v1)
/* DB414 80031F04 0202102A */  slt        $v0, $s0, $v0
/* DB418 80031F08 1440FFF7 */  bnez       $v0, .L80031EE8
/* DB41C 80031F0C 00101080 */   sll       $v0, $s0, 2
/* DB420 80031F10 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB424 80031F14 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
.L80031F18:
/* DB428 80031F18 9462019E */  lhu        $v0, 0x19e($v1)
/* DB42C 80031F1C 24420001 */  addiu      $v0, $v0, 1
/* DB430 80031F20 A462019E */  sh         $v0, 0x19e($v1)
/* DB434 80031F24 00001021 */  addu       $v0, $zero, $zero
/* DB438 80031F28 8FBF0024 */  lw         $ra, 0x24($sp)
/* DB43C 80031F2C 8FB00020 */  lw         $s0, 0x20($sp)
/* DB440 80031F30 03E00008 */  jr         $ra
/* DB444 80031F34 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80031F38_DB448
/* DB448 80031F38 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB44C 80031F3C 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB450 80031F40 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DB454 80031F44 AFBF0024 */  sw         $ra, 0x24($sp)
/* DB458 80031F48 AFB00020 */  sw         $s0, 0x20($sp)
/* DB45C 80031F4C F7B60030 */  sdc1       $f22, 0x30($sp)
/* DB460 80031F50 F7B40028 */  sdc1       $f20, 0x28($sp)
/* DB464 80031F54 8483019E */  lh         $v1, 0x19e($a0)
/* DB468 80031F58 240200B4 */  addiu      $v0, $zero, 0xb4
/* DB46C 80031F5C 1062004A */  beq        $v1, $v0, .L80032088
/* DB470 80031F60 286200B5 */   slti      $v0, $v1, 0xb5
/* DB474 80031F64 50400005 */  beql       $v0, $zero, .L80031F7C
/* DB478 80031F68 240200F0 */   addiu     $v0, $zero, 0xf0
/* DB47C 80031F6C 10600007 */  beqz       $v1, .L80031F8C
/* DB480 80031F70 00002821 */   addu      $a1, $zero, $zero
/* DB484 80031F74 0800C82B */  j          .L800320AC
/* DB488 80031F78 00000000 */   nop
.L80031F7C:
/* DB48C 80031F7C 10620048 */  beq        $v1, $v0, .L800320A0
/* DB490 80031F80 00000000 */   nop
/* DB494 80031F84 0800C82B */  j          .L800320AC
/* DB498 80031F88 00000000 */   nop
.L80031F8C:
/* DB49C 80031F8C 8C820008 */  lw         $v0, 8($a0)
/* DB4A0 80031F90 8C420014 */  lw         $v0, 0x14($v0)
/* DB4A4 80031F94 00051840 */  sll        $v1, $a1, 1
/* DB4A8 80031F98 00621021 */  addu       $v0, $v1, $v0
/* DB4AC 80031F9C A4400002 */  sh         $zero, 2($v0)
/* DB4B0 80031FA0 8C820008 */  lw         $v0, 8($a0)
/* DB4B4 80031FA4 8C420014 */  lw         $v0, 0x14($v0)
/* DB4B8 80031FA8 00621021 */  addu       $v0, $v1, $v0
/* DB4BC 80031FAC A440000C */  sh         $zero, 0xc($v0)
/* DB4C0 80031FB0 8C820014 */  lw         $v0, 0x14($a0)
/* DB4C4 80031FB4 8C420014 */  lw         $v0, 0x14($v0)
/* DB4C8 80031FB8 00621021 */  addu       $v0, $v1, $v0
/* DB4CC 80031FBC A4400002 */  sh         $zero, 2($v0)
/* DB4D0 80031FC0 8C820014 */  lw         $v0, 0x14($a0)
/* DB4D4 80031FC4 8C420014 */  lw         $v0, 0x14($v0)
/* DB4D8 80031FC8 00621021 */  addu       $v0, $v1, $v0
/* DB4DC 80031FCC A440000C */  sh         $zero, 0xc($v0)
/* DB4E0 80031FD0 8C82000C */  lw         $v0, 0xc($a0)
/* DB4E4 80031FD4 8C420014 */  lw         $v0, 0x14($v0)
/* DB4E8 80031FD8 00621021 */  addu       $v0, $v1, $v0
/* DB4EC 80031FDC A440000C */  sh         $zero, 0xc($v0)
/* DB4F0 80031FE0 8C82000C */  lw         $v0, 0xc($a0)
/* DB4F4 80031FE4 8C420014 */  lw         $v0, 0x14($v0)
/* DB4F8 80031FE8 00621021 */  addu       $v0, $v1, $v0
/* DB4FC 80031FEC A4400016 */  sh         $zero, 0x16($v0)
/* DB500 80031FF0 8C820018 */  lw         $v0, 0x18($a0)
/* DB504 80031FF4 8C420014 */  lw         $v0, 0x14($v0)
/* DB508 80031FF8 00621021 */  addu       $v0, $v1, $v0
/* DB50C 80031FFC A440000C */  sh         $zero, 0xc($v0)
/* DB510 80032000 8C820018 */  lw         $v0, 0x18($a0)
/* DB514 80032004 8C420014 */  lw         $v0, 0x14($v0)
/* DB518 80032008 00621021 */  addu       $v0, $v1, $v0
/* DB51C 8003200C A4400016 */  sh         $zero, 0x16($v0)
/* DB520 80032010 8C820010 */  lw         $v0, 0x10($a0)
/* DB524 80032014 8C420014 */  lw         $v0, 0x14($v0)
/* DB528 80032018 00621021 */  addu       $v0, $v1, $v0
/* DB52C 8003201C A4400002 */  sh         $zero, 2($v0)
/* DB530 80032020 8C820010 */  lw         $v0, 0x10($a0)
/* DB534 80032024 8C420014 */  lw         $v0, 0x14($v0)
/* DB538 80032028 00621021 */  addu       $v0, $v1, $v0
/* DB53C 8003202C A4400016 */  sh         $zero, 0x16($v0)
/* DB540 80032030 8C82001C */  lw         $v0, 0x1c($a0)
/* DB544 80032034 8C420014 */  lw         $v0, 0x14($v0)
/* DB548 80032038 00621021 */  addu       $v0, $v1, $v0
/* DB54C 8003203C A4400002 */  sh         $zero, 2($v0)
/* DB550 80032040 8C82001C */  lw         $v0, 0x1c($a0)
/* DB554 80032044 8C420014 */  lw         $v0, 0x14($v0)
/* DB558 80032048 24A50001 */  addiu      $a1, $a1, 1
/* DB55C 8003204C 00621821 */  addu       $v1, $v1, $v0
/* DB560 80032050 28A20005 */  slti       $v0, $a1, 5
/* DB564 80032054 1440FFCD */  bnez       $v0, .L80031F8C
/* DB568 80032058 A4600016 */   sh        $zero, 0x16($v1)
/* DB56C 8003205C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB570 80032060 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB574 80032064 24040001 */  addiu      $a0, $zero, 1
/* DB578 80032068 24020020 */  addiu      $v0, $zero, 0x20
/* DB57C 8003206C AC6201A8 */  sw         $v0, 0x1a8($v1)
/* DB580 80032070 AC6201A4 */  sw         $v0, 0x1a4($v1)
/* DB584 80032074 AC6201A0 */  sw         $v0, 0x1a0($v1)
/* DB588 80032078 0C02A5AF */  jal        func_800A96BC
/* DB58C 8003207C AC6001AC */   sw        $zero, 0x1ac($v1)
/* DB590 80032080 0800C82B */  j          .L800320AC
/* DB594 80032084 00000000 */   nop
.L80032088:
/* DB598 80032088 3C048017 */  lui        $a0, %hi(D_8016D168)
/* DB59C 8003208C 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* DB5A0 80032090 0C02A5C1 */  jal        func_800A9704
/* DB5A4 80032094 00042040 */   sll       $a0, $a0, 1
/* DB5A8 80032098 0800C82B */  j          .L800320AC
/* DB5AC 8003209C 00000000 */   nop
.L800320A0:
/* DB5B0 800320A0 9082019C */  lbu        $v0, 0x19c($a0)
/* DB5B4 800320A4 24420001 */  addiu      $v0, $v0, 1
/* DB5B8 800320A8 A082019C */  sb         $v0, 0x19c($a0)
.L800320AC:
/* DB5BC 800320AC 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB5C0 800320B0 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB5C4 800320B4 8483019E */  lh         $v1, 0x19e($a0)
/* DB5C8 800320B8 286200B4 */  slti       $v0, $v1, 0xb4
/* DB5CC 800320BC 104000F5 */  beqz       $v0, .L80032494
/* DB5D0 800320C0 00002821 */   addu      $a1, $zero, $zero
/* DB5D4 800320C4 1860004D */  blez       $v1, .L800321FC
/* DB5D8 800320C8 00000000 */   nop
/* DB5DC 800320CC 8C8201A0 */  lw         $v0, 0x1a0($a0)
/* DB5E0 800320D0 10400035 */  beqz       $v0, .L800321A8
/* DB5E4 800320D4 240500FF */   addiu     $a1, $zero, 0xff
/* DB5E8 800320D8 8C830008 */  lw         $v1, 8($a0)
/* DB5EC 800320DC 9462001E */  lhu        $v0, 0x1e($v1)
/* DB5F0 800320E0 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DB5F4 800320E4 A462001E */  sh         $v0, 0x1e($v1)
/* DB5F8 800320E8 8C830014 */  lw         $v1, 0x14($a0)
/* DB5FC 800320EC 9462001E */  lhu        $v0, 0x1e($v1)
/* DB600 800320F0 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DB604 800320F4 A462001E */  sh         $v0, 0x1e($v1)
/* DB608 800320F8 8C8201A0 */  lw         $v0, 0x1a0($a0)
/* DB60C 800320FC 000210C0 */  sll        $v0, $v0, 3
/* DB610 80032100 00021023 */  negu       $v0, $v0
/* DB614 80032104 304200FF */  andi       $v0, $v0, 0xff
/* DB618 80032108 AFA20010 */  sw         $v0, 0x10($sp)
/* DB61C 8003210C 8C840008 */  lw         $a0, 8($a0)
/* DB620 80032110 240600FF */  addiu      $a2, $zero, 0xff
/* DB624 80032114 0C028E41 */  jal        func_800A3904
/* DB628 80032118 240700FF */   addiu     $a3, $zero, 0xff
/* DB62C 8003211C 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB630 80032120 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB634 80032124 8C8301A0 */  lw         $v1, 0x1a0($a0)
/* DB638 80032128 240500FF */  addiu      $a1, $zero, 0xff
/* DB63C 8003212C 2402FF80 */  addiu      $v0, $zero, -0x80
/* DB640 80032130 00031880 */  sll        $v1, $v1, 2
/* DB644 80032134 00431023 */  subu       $v0, $v0, $v1
/* DB648 80032138 304200FF */  andi       $v0, $v0, 0xff
/* DB64C 8003213C AFA20010 */  sw         $v0, 0x10($sp)
/* DB650 80032140 8C840014 */  lw         $a0, 0x14($a0)
/* DB654 80032144 240600FF */  addiu      $a2, $zero, 0xff
/* DB658 80032148 0C028E41 */  jal        func_800A3904
/* DB65C 8003214C 240700FF */   addiu     $a3, $zero, 0xff
/* DB660 80032150 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB664 80032154 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB668 80032158 3C013C80 */  lui        $at, 0x3c80
/* DB66C 8003215C 44811000 */  mtc1       $at, $f2
/* DB670 80032160 C44001A0 */  lwc1       $f0, 0x1a0($v0)
/* DB674 80032164 46800020 */  cvt.s.w    $f0, $f0
/* DB678 80032168 46020002 */  mul.s      $f0, $f0, $f2
/* DB67C 8003216C 3C013F80 */  lui        $at, 0x3f80
/* DB680 80032170 44811000 */  mtc1       $at, $f2
/* DB684 80032174 00000000 */  nop
/* DB688 80032178 46020000 */  add.s      $f0, $f0, $f2
/* DB68C 8003217C 8C440014 */  lw         $a0, 0x14($v0)
/* DB690 80032180 44060000 */  mfc1       $a2, $f0
/* DB694 80032184 00002821 */  addu       $a1, $zero, $zero
/* DB698 80032188 0C02915B */  jal        func_800A456C
/* DB69C 8003218C 00C03821 */   addu      $a3, $a2, $zero
/* DB6A0 80032190 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB6A4 80032194 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB6A8 80032198 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DB6AC 8003219C 2442FFFF */  addiu      $v0, $v0, -1
/* DB6B0 800321A0 0800C87D */  j          .L800321F4
/* DB6B4 800321A4 AC6201A0 */   sw        $v0, 0x1a0($v1)
.L800321A8:
/* DB6B8 800321A8 8C830008 */  lw         $v1, 8($a0)
/* DB6BC 800321AC 9462001E */  lhu        $v0, 0x1e($v1)
/* DB6C0 800321B0 34420400 */  ori        $v0, $v0, 0x400
/* DB6C4 800321B4 A462001E */  sh         $v0, 0x1e($v1)
/* DB6C8 800321B8 240200FF */  addiu      $v0, $zero, 0xff
/* DB6CC 800321BC AFA20010 */  sw         $v0, 0x10($sp)
/* DB6D0 800321C0 8C840014 */  lw         $a0, 0x14($a0)
/* DB6D4 800321C4 240600FF */  addiu      $a2, $zero, 0xff
/* DB6D8 800321C8 0C028E41 */  jal        func_800A3904
/* DB6DC 800321CC 240700FF */   addiu     $a3, $zero, 0xff
/* DB6E0 800321D0 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB6E4 800321D4 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB6E8 800321D8 3C013F80 */  lui        $at, 0x3f80
/* DB6EC 800321DC 44810000 */  mtc1       $at, $f0
/* DB6F0 800321E0 8C440014 */  lw         $a0, 0x14($v0)
/* DB6F4 800321E4 44060000 */  mfc1       $a2, $f0
/* DB6F8 800321E8 00002821 */  addu       $a1, $zero, $zero
/* DB6FC 800321EC 0C02915B */  jal        func_800A456C
/* DB700 800321F0 00C03821 */   addu      $a3, $a2, $zero
.L800321F4:
/* DB704 800321F4 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB708 800321F8 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
.L800321FC:
/* DB70C 800321FC 8482019E */  lh         $v0, 0x19e($a0)
/* DB710 80032200 3C018007 */  lui        $at, %hi(D_80069D20)
/* DB714 80032204 D4229D20 */  ldc1       $f2, %lo(D_80069D20)($at)
/* DB718 80032208 44820000 */  mtc1       $v0, $f0
/* DB71C 8003220C 00000000 */  nop
/* DB720 80032210 46800021 */  cvt.d.w    $f0, $f0
/* DB724 80032214 4620103C */  c.lt.d     $f2, $f0
/* DB728 80032218 00000000 */  nop
/* DB72C 8003221C 4500004B */  bc1f       .L8003234C
/* DB730 80032220 00000000 */   nop
/* DB734 80032224 8C8201A4 */  lw         $v0, 0x1a4($a0)
/* DB738 80032228 10400035 */  beqz       $v0, .L80032300
/* DB73C 8003222C 240500FF */   addiu     $a1, $zero, 0xff
/* DB740 80032230 8C83000C */  lw         $v1, 0xc($a0)
/* DB744 80032234 9462001E */  lhu        $v0, 0x1e($v1)
/* DB748 80032238 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DB74C 8003223C A462001E */  sh         $v0, 0x1e($v1)
/* DB750 80032240 8C830018 */  lw         $v1, 0x18($a0)
/* DB754 80032244 9462001E */  lhu        $v0, 0x1e($v1)
/* DB758 80032248 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DB75C 8003224C A462001E */  sh         $v0, 0x1e($v1)
/* DB760 80032250 8C8201A4 */  lw         $v0, 0x1a4($a0)
/* DB764 80032254 000210C0 */  sll        $v0, $v0, 3
/* DB768 80032258 00021023 */  negu       $v0, $v0
/* DB76C 8003225C 304200FF */  andi       $v0, $v0, 0xff
/* DB770 80032260 AFA20010 */  sw         $v0, 0x10($sp)
/* DB774 80032264 8C84000C */  lw         $a0, 0xc($a0)
/* DB778 80032268 240600FF */  addiu      $a2, $zero, 0xff
/* DB77C 8003226C 0C028E41 */  jal        func_800A3904
/* DB780 80032270 240700FF */   addiu     $a3, $zero, 0xff
/* DB784 80032274 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB788 80032278 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB78C 8003227C 8C8301A4 */  lw         $v1, 0x1a4($a0)
/* DB790 80032280 240500FF */  addiu      $a1, $zero, 0xff
/* DB794 80032284 2402FF80 */  addiu      $v0, $zero, -0x80
/* DB798 80032288 00031880 */  sll        $v1, $v1, 2
/* DB79C 8003228C 00431023 */  subu       $v0, $v0, $v1
/* DB7A0 80032290 304200FF */  andi       $v0, $v0, 0xff
/* DB7A4 80032294 AFA20010 */  sw         $v0, 0x10($sp)
/* DB7A8 80032298 8C840018 */  lw         $a0, 0x18($a0)
/* DB7AC 8003229C 240600FF */  addiu      $a2, $zero, 0xff
/* DB7B0 800322A0 0C028E41 */  jal        func_800A3904
/* DB7B4 800322A4 240700FF */   addiu     $a3, $zero, 0xff
/* DB7B8 800322A8 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB7BC 800322AC 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB7C0 800322B0 3C013C80 */  lui        $at, 0x3c80
/* DB7C4 800322B4 44811000 */  mtc1       $at, $f2
/* DB7C8 800322B8 C44001A4 */  lwc1       $f0, 0x1a4($v0)
/* DB7CC 800322BC 46800020 */  cvt.s.w    $f0, $f0
/* DB7D0 800322C0 46020002 */  mul.s      $f0, $f0, $f2
/* DB7D4 800322C4 3C013F80 */  lui        $at, 0x3f80
/* DB7D8 800322C8 44811000 */  mtc1       $at, $f2
/* DB7DC 800322CC 00000000 */  nop
/* DB7E0 800322D0 46020000 */  add.s      $f0, $f0, $f2
/* DB7E4 800322D4 8C440018 */  lw         $a0, 0x18($v0)
/* DB7E8 800322D8 44060000 */  mfc1       $a2, $f0
/* DB7EC 800322DC 00002821 */  addu       $a1, $zero, $zero
/* DB7F0 800322E0 0C02915B */  jal        func_800A456C
/* DB7F4 800322E4 00C03821 */   addu      $a3, $a2, $zero
/* DB7F8 800322E8 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB7FC 800322EC 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB800 800322F0 8C6201A4 */  lw         $v0, 0x1a4($v1)
/* DB804 800322F4 2442FFFF */  addiu      $v0, $v0, -1
/* DB808 800322F8 0800C8D3 */  j          .L8003234C
/* DB80C 800322FC AC6201A4 */   sw        $v0, 0x1a4($v1)
.L80032300:
/* DB810 80032300 8C83000C */  lw         $v1, 0xc($a0)
/* DB814 80032304 9462001E */  lhu        $v0, 0x1e($v1)
/* DB818 80032308 34420400 */  ori        $v0, $v0, 0x400
/* DB81C 8003230C A462001E */  sh         $v0, 0x1e($v1)
/* DB820 80032310 240200FF */  addiu      $v0, $zero, 0xff
/* DB824 80032314 AFA20010 */  sw         $v0, 0x10($sp)
/* DB828 80032318 8C840018 */  lw         $a0, 0x18($a0)
/* DB82C 8003231C 240600FF */  addiu      $a2, $zero, 0xff
/* DB830 80032320 0C028E41 */  jal        func_800A3904
/* DB834 80032324 240700FF */   addiu     $a3, $zero, 0xff
/* DB838 80032328 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB83C 8003232C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB840 80032330 3C013F80 */  lui        $at, 0x3f80
/* DB844 80032334 44810000 */  mtc1       $at, $f0
/* DB848 80032338 8C440018 */  lw         $a0, 0x18($v0)
/* DB84C 8003233C 44060000 */  mfc1       $a2, $f0
/* DB850 80032340 00002821 */  addu       $a1, $zero, $zero
/* DB854 80032344 0C02915B */  jal        func_800A456C
/* DB858 80032348 00C03821 */   addu      $a3, $a2, $zero
.L8003234C:
/* DB85C 8003234C 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB860 80032350 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB864 80032354 8482019E */  lh         $v0, 0x19e($a0)
/* DB868 80032358 2842001F */  slti       $v0, $v0, 0x1f
/* DB86C 8003235C 14400077 */  bnez       $v0, .L8003253C
/* DB870 80032360 00000000 */   nop
/* DB874 80032364 8C8201A8 */  lw         $v0, 0x1a8($a0)
/* DB878 80032368 10400035 */  beqz       $v0, .L80032440
/* DB87C 8003236C 240500FF */   addiu     $a1, $zero, 0xff
/* DB880 80032370 8C830010 */  lw         $v1, 0x10($a0)
/* DB884 80032374 9462001E */  lhu        $v0, 0x1e($v1)
/* DB888 80032378 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DB88C 8003237C A462001E */  sh         $v0, 0x1e($v1)
/* DB890 80032380 8C83001C */  lw         $v1, 0x1c($a0)
/* DB894 80032384 9462001E */  lhu        $v0, 0x1e($v1)
/* DB898 80032388 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DB89C 8003238C A462001E */  sh         $v0, 0x1e($v1)
/* DB8A0 80032390 8C8201A8 */  lw         $v0, 0x1a8($a0)
/* DB8A4 80032394 000210C0 */  sll        $v0, $v0, 3
/* DB8A8 80032398 00021023 */  negu       $v0, $v0
/* DB8AC 8003239C 304200FF */  andi       $v0, $v0, 0xff
/* DB8B0 800323A0 AFA20010 */  sw         $v0, 0x10($sp)
/* DB8B4 800323A4 8C840010 */  lw         $a0, 0x10($a0)
/* DB8B8 800323A8 240600FF */  addiu      $a2, $zero, 0xff
/* DB8BC 800323AC 0C028E41 */  jal        func_800A3904
/* DB8C0 800323B0 240700FF */   addiu     $a3, $zero, 0xff
/* DB8C4 800323B4 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DB8C8 800323B8 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DB8CC 800323BC 8C8301A8 */  lw         $v1, 0x1a8($a0)
/* DB8D0 800323C0 240500FF */  addiu      $a1, $zero, 0xff
/* DB8D4 800323C4 2402FF80 */  addiu      $v0, $zero, -0x80
/* DB8D8 800323C8 00031880 */  sll        $v1, $v1, 2
/* DB8DC 800323CC 00431023 */  subu       $v0, $v0, $v1
/* DB8E0 800323D0 304200FF */  andi       $v0, $v0, 0xff
/* DB8E4 800323D4 AFA20010 */  sw         $v0, 0x10($sp)
/* DB8E8 800323D8 8C84001C */  lw         $a0, 0x1c($a0)
/* DB8EC 800323DC 240600FF */  addiu      $a2, $zero, 0xff
/* DB8F0 800323E0 0C028E41 */  jal        func_800A3904
/* DB8F4 800323E4 240700FF */   addiu     $a3, $zero, 0xff
/* DB8F8 800323E8 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB8FC 800323EC 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB900 800323F0 3C013C80 */  lui        $at, 0x3c80
/* DB904 800323F4 44811000 */  mtc1       $at, $f2
/* DB908 800323F8 C44001A8 */  lwc1       $f0, 0x1a8($v0)
/* DB90C 800323FC 46800020 */  cvt.s.w    $f0, $f0
/* DB910 80032400 46020002 */  mul.s      $f0, $f0, $f2
/* DB914 80032404 3C013F80 */  lui        $at, 0x3f80
/* DB918 80032408 44811000 */  mtc1       $at, $f2
/* DB91C 8003240C 00000000 */  nop
/* DB920 80032410 46020000 */  add.s      $f0, $f0, $f2
/* DB924 80032414 8C44001C */  lw         $a0, 0x1c($v0)
/* DB928 80032418 44060000 */  mfc1       $a2, $f0
/* DB92C 8003241C 00002821 */  addu       $a1, $zero, $zero
/* DB930 80032420 0C02915B */  jal        func_800A456C
/* DB934 80032424 00C03821 */   addu      $a3, $a2, $zero
/* DB938 80032428 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DB93C 8003242C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DB940 80032430 8C6201A8 */  lw         $v0, 0x1a8($v1)
/* DB944 80032434 2442FFFF */  addiu      $v0, $v0, -1
/* DB948 80032438 0800C94F */  j          .L8003253C
/* DB94C 8003243C AC6201A8 */   sw        $v0, 0x1a8($v1)
.L80032440:
/* DB950 80032440 8C830010 */  lw         $v1, 0x10($a0)
/* DB954 80032444 9462001E */  lhu        $v0, 0x1e($v1)
/* DB958 80032448 34420400 */  ori        $v0, $v0, 0x400
/* DB95C 8003244C A462001E */  sh         $v0, 0x1e($v1)
/* DB960 80032450 240200FF */  addiu      $v0, $zero, 0xff
/* DB964 80032454 AFA20010 */  sw         $v0, 0x10($sp)
/* DB968 80032458 8C84001C */  lw         $a0, 0x1c($a0)
/* DB96C 8003245C 240600FF */  addiu      $a2, $zero, 0xff
/* DB970 80032460 0C028E41 */  jal        func_800A3904
/* DB974 80032464 240700FF */   addiu     $a3, $zero, 0xff
/* DB978 80032468 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB97C 8003246C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB980 80032470 3C013F80 */  lui        $at, 0x3f80
/* DB984 80032474 44810000 */  mtc1       $at, $f0
/* DB988 80032478 8C44001C */  lw         $a0, 0x1c($v0)
/* DB98C 8003247C 44060000 */  mfc1       $a2, $f0
/* DB990 80032480 00002821 */  addu       $a1, $zero, $zero
/* DB994 80032484 0C02915B */  jal        func_800A456C
/* DB998 80032488 00C03821 */   addu      $a3, $a2, $zero
/* DB99C 8003248C 0800C94F */  j          .L8003253C
/* DB9A0 80032490 00000000 */   nop
.L80032494:
/* DB9A4 80032494 3C013C36 */  lui        $at, 0x3c36
/* DB9A8 80032498 34210B61 */  ori        $at, $at, 0xb61
/* DB9AC 8003249C 4481B000 */  mtc1       $at, $f22
/* DB9B0 800324A0 C48001AC */  lwc1       $f0, 0x1ac($a0)
/* DB9B4 800324A4 46800020 */  cvt.s.w    $f0, $f0
/* DB9B8 800324A8 46160002 */  mul.s      $f0, $f0, $f22
/* DB9BC 800324AC 3C013F80 */  lui        $at, 0x3f80
/* DB9C0 800324B0 4481A000 */  mtc1       $at, $f20
/* DB9C4 800324B4 00000000 */  nop
/* DB9C8 800324B8 4600A001 */  sub.s      $f0, $f20, $f0
/* DB9CC 800324BC 8C840014 */  lw         $a0, 0x14($a0)
/* DB9D0 800324C0 44060000 */  mfc1       $a2, $f0
/* DB9D4 800324C4 00000000 */  nop
/* DB9D8 800324C8 0C02915B */  jal        func_800A456C
/* DB9DC 800324CC 00C03821 */   addu      $a3, $a2, $zero
/* DB9E0 800324D0 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DB9E4 800324D4 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DB9E8 800324D8 C44001AC */  lwc1       $f0, 0x1ac($v0)
/* DB9EC 800324DC 46800020 */  cvt.s.w    $f0, $f0
/* DB9F0 800324E0 46160002 */  mul.s      $f0, $f0, $f22
/* DB9F4 800324E4 4600A001 */  sub.s      $f0, $f20, $f0
/* DB9F8 800324E8 8C440018 */  lw         $a0, 0x18($v0)
/* DB9FC 800324EC 44060000 */  mfc1       $a2, $f0
/* DBA00 800324F0 00002821 */  addu       $a1, $zero, $zero
/* DBA04 800324F4 0C02915B */  jal        func_800A456C
/* DBA08 800324F8 00C03821 */   addu      $a3, $a2, $zero
/* DBA0C 800324FC 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBA10 80032500 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBA14 80032504 C44001AC */  lwc1       $f0, 0x1ac($v0)
/* DBA18 80032508 46800020 */  cvt.s.w    $f0, $f0
/* DBA1C 8003250C 46160002 */  mul.s      $f0, $f0, $f22
/* DBA20 80032510 4600A501 */  sub.s      $f20, $f20, $f0
/* DBA24 80032514 8C44001C */  lw         $a0, 0x1c($v0)
/* DBA28 80032518 4406A000 */  mfc1       $a2, $f20
/* DBA2C 8003251C 00002821 */  addu       $a1, $zero, $zero
/* DBA30 80032520 0C02915B */  jal        func_800A456C
/* DBA34 80032524 00C03821 */   addu      $a3, $a2, $zero
/* DBA38 80032528 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBA3C 8003252C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBA40 80032530 8C6201AC */  lw         $v0, 0x1ac($v1)
/* DBA44 80032534 24420001 */  addiu      $v0, $v0, 1
/* DBA48 80032538 AC6201AC */  sw         $v0, 0x1ac($v1)
.L8003253C:
/* DBA4C 8003253C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBA50 80032540 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBA54 80032544 84620198 */  lh         $v0, 0x198($v1)
/* DBA58 80032548 1840000E */  blez       $v0, .L80032584
/* DBA5C 8003254C 00008021 */   addu      $s0, $zero, $zero
/* DBA60 80032550 00101080 */  sll        $v0, $s0, 2
.L80032554:
/* DBA64 80032554 00431021 */  addu       $v0, $v0, $v1
/* DBA68 80032558 8C440008 */  lw         $a0, 8($v0)
/* DBA6C 8003255C 0C028A40 */  jal        func_800A2900
/* DBA70 80032560 26100001 */   addiu     $s0, $s0, 1
/* DBA74 80032564 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBA78 80032568 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBA7C 8003256C 84620198 */  lh         $v0, 0x198($v1)
/* DBA80 80032570 0202102A */  slt        $v0, $s0, $v0
/* DBA84 80032574 1440FFF7 */  bnez       $v0, .L80032554
/* DBA88 80032578 00101080 */   sll       $v0, $s0, 2
/* DBA8C 8003257C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBA90 80032580 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
.L80032584:
/* DBA94 80032584 9462019E */  lhu        $v0, 0x19e($v1)
/* DBA98 80032588 24420001 */  addiu      $v0, $v0, 1
/* DBA9C 8003258C A462019E */  sh         $v0, 0x19e($v1)
/* DBAA0 80032590 00001021 */  addu       $v0, $zero, $zero
/* DBAA4 80032594 8FBF0024 */  lw         $ra, 0x24($sp)
/* DBAA8 80032598 8FB00020 */  lw         $s0, 0x20($sp)
/* DBAAC 8003259C D7B60030 */  ldc1       $f22, 0x30($sp)
/* DBAB0 800325A0 D7B40028 */  ldc1       $f20, 0x28($sp)
/* DBAB4 800325A4 03E00008 */  jr         $ra
/* DBAB8 800325A8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800325AC_DBABC
/* DBABC 800325AC 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBAC0 800325B0 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBAC4 800325B4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DBAC8 800325B8 AFBF0024 */  sw         $ra, 0x24($sp)
/* DBACC 800325BC AFB00020 */  sw         $s0, 0x20($sp)
/* DBAD0 800325C0 8464019E */  lh         $a0, 0x19e($v1)
/* DBAD4 800325C4 10800005 */  beqz       $a0, .L800325DC
/* DBAD8 800325C8 24020258 */   addiu     $v0, $zero, 0x258
/* DBADC 800325CC 10820058 */  beq        $a0, $v0, .L80032730
/* DBAE0 800325D0 00000000 */   nop
/* DBAE4 800325D4 0800C9CF */  j          .L8003273C
/* DBAE8 800325D8 00000000 */   nop
.L800325DC:
/* DBAEC 800325DC 3C014000 */  lui        $at, 0x4000
/* DBAF0 800325E0 44810000 */  mtc1       $at, $f0
/* DBAF4 800325E4 8C640008 */  lw         $a0, 8($v1)
/* DBAF8 800325E8 44060000 */  mfc1       $a2, $f0
/* DBAFC 800325EC 00002821 */  addu       $a1, $zero, $zero
/* DBB00 800325F0 0C02915B */  jal        func_800A456C
/* DBB04 800325F4 00C03821 */   addu      $a3, $a2, $zero
/* DBB08 800325F8 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBB0C 800325FC 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBB10 80032600 8C44000C */  lw         $a0, 0xc($v0)
/* DBB14 80032604 0C028D30 */  jal        func_800A34C0
/* DBB18 80032608 24100080 */   addiu     $s0, $zero, 0x80
/* DBB1C 8003260C 240400C0 */  addiu      $a0, $zero, 0xc0
/* DBB20 80032610 24050005 */  addiu      $a1, $zero, 5
/* DBB24 80032614 24060008 */  addiu      $a2, $zero, 8
/* DBB28 80032618 24070006 */  addiu      $a3, $zero, 6
/* DBB2C 8003261C 0C029476 */  jal        func_800A51D8
/* DBB30 80032620 AFA00010 */   sw        $zero, 0x10($sp)
/* DBB34 80032624 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBB38 80032628 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBB3C 8003262C 8C640010 */  lw         $a0, 0x10($v1)
/* DBB40 80032630 24050229 */  addiu      $a1, $zero, 0x229
/* DBB44 80032634 24060400 */  addiu      $a2, $zero, 0x400
/* DBB48 80032638 0C028F9A */  jal        func_800A3E68
/* DBB4C 8003263C AC62000C */   sw        $v0, 0xc($v1)
/* DBB50 80032640 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBB54 80032644 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBB58 80032648 240500FF */  addiu      $a1, $zero, 0xff
/* DBB5C 8003264C AFB00010 */  sw         $s0, 0x10($sp)
/* DBB60 80032650 8C440010 */  lw         $a0, 0x10($v0)
/* DBB64 80032654 240600FF */  addiu      $a2, $zero, 0xff
/* DBB68 80032658 0C028E41 */  jal        func_800A3904
/* DBB6C 8003265C 240700FF */   addiu     $a3, $zero, 0xff
/* DBB70 80032660 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBB74 80032664 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBB78 80032668 8C440018 */  lw         $a0, 0x18($v0)
/* DBB7C 8003266C 240500F3 */  addiu      $a1, $zero, 0xf3
/* DBB80 80032670 0C028F9A */  jal        func_800A3E68
/* DBB84 80032674 24060400 */   addiu     $a2, $zero, 0x400
/* DBB88 80032678 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBB8C 8003267C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBB90 80032680 240500FF */  addiu      $a1, $zero, 0xff
/* DBB94 80032684 AFB00010 */  sw         $s0, 0x10($sp)
/* DBB98 80032688 8C440018 */  lw         $a0, 0x18($v0)
/* DBB9C 8003268C 240600FF */  addiu      $a2, $zero, 0xff
/* DBBA0 80032690 0C028E41 */  jal        func_800A3904
/* DBBA4 80032694 240700FF */   addiu     $a3, $zero, 0xff
/* DBBA8 80032698 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBBAC 8003269C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBBB0 800326A0 8C440020 */  lw         $a0, 0x20($v0)
/* DBBB4 800326A4 24050060 */  addiu      $a1, $zero, 0x60
/* DBBB8 800326A8 0C028F9A */  jal        func_800A3E68
/* DBBBC 800326AC 24060400 */   addiu     $a2, $zero, 0x400
/* DBBC0 800326B0 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBBC4 800326B4 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBBC8 800326B8 240500FF */  addiu      $a1, $zero, 0xff
/* DBBCC 800326BC AFB00010 */  sw         $s0, 0x10($sp)
/* DBBD0 800326C0 8C440020 */  lw         $a0, 0x20($v0)
/* DBBD4 800326C4 240600FF */  addiu      $a2, $zero, 0xff
/* DBBD8 800326C8 0C028E41 */  jal        func_800A3904
/* DBBDC 800326CC 240700FF */   addiu     $a3, $zero, 0xff
/* DBBE0 800326D0 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBBE4 800326D4 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBBE8 800326D8 8C440038 */  lw         $a0, 0x38($v0)
/* DBBEC 800326DC 24050063 */  addiu      $a1, $zero, 0x63
/* DBBF0 800326E0 0C028F9A */  jal        func_800A3E68
/* DBBF4 800326E4 24060400 */   addiu     $a2, $zero, 0x400
/* DBBF8 800326E8 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBBFC 800326EC 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBC00 800326F0 240500FF */  addiu      $a1, $zero, 0xff
/* DBC04 800326F4 AFB00010 */  sw         $s0, 0x10($sp)
/* DBC08 800326F8 8C440038 */  lw         $a0, 0x38($v0)
/* DBC0C 800326FC 240600FF */  addiu      $a2, $zero, 0xff
/* DBC10 80032700 0C028E41 */  jal        func_800A3904
/* DBC14 80032704 240700FF */   addiu     $a3, $zero, 0xff
/* DBC18 80032708 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBC1C 8003270C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBC20 80032710 24040001 */  addiu      $a0, $zero, 1
/* DBC24 80032714 24020096 */  addiu      $v0, $zero, 0x96
/* DBC28 80032718 AC6201A0 */  sw         $v0, 0x1a0($v1)
/* DBC2C 8003271C AC6001A4 */  sw         $zero, 0x1a4($v1)
/* DBC30 80032720 0C02A5AF */  jal        func_800A96BC
/* DBC34 80032724 AC6001A8 */   sw        $zero, 0x1a8($v1)
/* DBC38 80032728 0800C9CF */  j          .L8003273C
/* DBC3C 8003272C 00000000 */   nop
.L80032730:
/* DBC40 80032730 9062019C */  lbu        $v0, 0x19c($v1)
/* DBC44 80032734 24420001 */  addiu      $v0, $v0, 1
/* DBC48 80032738 A062019C */  sb         $v0, 0x19c($v1)
.L8003273C:
/* DBC4C 8003273C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBC50 80032740 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBC54 80032744 8C64000C */  lw         $a0, 0xc($v1)
/* DBC58 80032748 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DBC5C 8003274C 8C840000 */  lw         $a0, ($a0)
/* DBC60 80032750 30420001 */  andi       $v0, $v0, 1
/* DBC64 80032754 A482001A */  sh         $v0, 0x1a($a0)
/* DBC68 80032758 8C64000C */  lw         $a0, 0xc($v1)
/* DBC6C 8003275C 24050140 */  addiu      $a1, $zero, 0x140
/* DBC70 80032760 0C02933E */  jal        func_800A4CF8
/* DBC74 80032764 00003021 */   addu      $a2, $zero, $zero
/* DBC78 80032768 0C02591A */  jal        func_80096468
/* DBC7C 8003276C 24040032 */   addiu     $a0, $zero, 0x32
/* DBC80 80032770 3042FFFF */  andi       $v0, $v0, 0xffff
/* DBC84 80032774 1440000A */  bnez       $v0, .L800327A0
/* DBC88 80032778 24020006 */   addiu     $v0, $zero, 6
/* DBC8C 8003277C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBC90 80032780 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBC94 80032784 8C64000C */  lw         $a0, 0xc($v1)
/* DBC98 80032788 AC6201A4 */  sw         $v0, 0x1a4($v1)
/* DBC9C 8003278C 24020030 */  addiu      $v0, $zero, 0x30
/* DBCA0 80032790 AC6201A8 */  sw         $v0, 0x1a8($v1)
/* DBCA4 80032794 8C830014 */  lw         $v1, 0x14($a0)
/* DBCA8 80032798 3402FFFF */  ori        $v0, $zero, 0xffff
/* DBCAC 8003279C A4620000 */  sh         $v0, ($v1)
.L800327A0:
/* DBCB0 800327A0 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DBCB4 800327A4 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DBCB8 800327A8 8C8301A4 */  lw         $v1, 0x1a4($a0)
/* DBCBC 800327AC 1060000A */  beqz       $v1, .L800327D8
/* DBCC0 800327B0 2463FFFF */   addiu     $v1, $v1, -1
/* DBCC4 800327B4 8C8201A8 */  lw         $v0, 0x1a8($a0)
/* DBCC8 800327B8 AC8301A4 */  sw         $v1, 0x1a4($a0)
/* DBCCC 800327BC 24420010 */  addiu      $v0, $v0, 0x10
/* DBCD0 800327C0 AC8201A8 */  sw         $v0, 0x1a8($a0)
/* DBCD4 800327C4 304200FF */  andi       $v0, $v0, 0xff
/* DBCD8 800327C8 AFA20010 */  sw         $v0, 0x10($sp)
/* DBCDC 800327CC 8C84000C */  lw         $a0, 0xc($a0)
/* DBCE0 800327D0 0800C9FF */  j          .L800327FC
/* DBCE4 800327D4 240500FF */   addiu     $a1, $zero, 0xff
.L800327D8:
/* DBCE8 800327D8 8C82000C */  lw         $v0, 0xc($a0)
/* DBCEC 800327DC 8C420014 */  lw         $v0, 0x14($v0)
/* DBCF0 800327E0 A4400000 */  sh         $zero, ($v0)
/* DBCF4 800327E4 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBCF8 800327E8 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBCFC 800327EC 240500FF */  addiu      $a1, $zero, 0xff
/* DBD00 800327F0 24020030 */  addiu      $v0, $zero, 0x30
/* DBD04 800327F4 AFA20010 */  sw         $v0, 0x10($sp)
/* DBD08 800327F8 8C64000C */  lw         $a0, 0xc($v1)
.L800327FC:
/* DBD0C 800327FC 240600FF */  addiu      $a2, $zero, 0xff
/* DBD10 80032800 0C028E41 */  jal        func_800A3904
/* DBD14 80032804 240700FF */   addiu     $a3, $zero, 0xff
/* DBD18 80032808 3C058006 */  lui        $a1, %hi(D_80067E90)
/* DBD1C 8003280C 8CA57E90 */  lw         $a1, %lo(D_80067E90)($a1)
/* DBD20 80032810 94A2019E */  lhu        $v0, 0x19e($a1)
/* DBD24 80032814 3C047878 */  lui        $a0, 0x7878
/* DBD28 80032818 34847879 */  ori        $a0, $a0, 0x7879
/* DBD2C 8003281C 00021400 */  sll        $v0, $v0, 0x10
/* DBD30 80032820 00021C03 */  sra        $v1, $v0, 0x10
/* DBD34 80032824 00640018 */  mult       $v1, $a0
/* DBD38 80032828 000217C3 */  sra        $v0, $v0, 0x1f
/* DBD3C 8003282C 00004010 */  mfhi       $t0
/* DBD40 80032830 00082103 */  sra        $a0, $t0, 4
/* DBD44 80032834 00822023 */  subu       $a0, $a0, $v0
/* DBD48 80032838 00041100 */  sll        $v0, $a0, 4
/* DBD4C 8003283C 00441021 */  addu       $v0, $v0, $a0
/* DBD50 80032840 00021040 */  sll        $v0, $v0, 1
/* DBD54 80032844 00621823 */  subu       $v1, $v1, $v0
/* DBD58 80032848 00031C00 */  sll        $v1, $v1, 0x10
/* DBD5C 8003284C 00031C03 */  sra        $v1, $v1, 0x10
/* DBD60 80032850 28630005 */  slti       $v1, $v1, 5
/* DBD64 80032854 14600009 */  bnez       $v1, .L8003287C
/* DBD68 80032858 00000000 */   nop
/* DBD6C 8003285C 8CA30010 */  lw         $v1, 0x10($a1)
/* DBD70 80032860 9462001E */  lhu        $v0, 0x1e($v1)
/* DBD74 80032864 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DBD78 80032868 A462001E */  sh         $v0, 0x1e($v1)
/* DBD7C 8003286C 8CA30014 */  lw         $v1, 0x14($a1)
/* DBD80 80032870 9462001E */  lhu        $v0, 0x1e($v1)
/* DBD84 80032874 0800CA26 */  j          .L80032898
/* DBD88 80032878 3042FBFF */   andi      $v0, $v0, 0xfbff
.L8003287C:
/* DBD8C 8003287C 8CA30010 */  lw         $v1, 0x10($a1)
/* DBD90 80032880 9462001E */  lhu        $v0, 0x1e($v1)
/* DBD94 80032884 34420400 */  ori        $v0, $v0, 0x400
/* DBD98 80032888 A462001E */  sh         $v0, 0x1e($v1)
/* DBD9C 8003288C 8CA30014 */  lw         $v1, 0x14($a1)
/* DBDA0 80032890 9462001E */  lhu        $v0, 0x1e($v1)
/* DBDA4 80032894 34420400 */  ori        $v0, $v0, 0x400
.L80032898:
/* DBDA8 80032898 A462001E */  sh         $v0, 0x1e($v1)
/* DBDAC 8003289C 3C058006 */  lui        $a1, %hi(D_80067E90)
/* DBDB0 800328A0 8CA57E90 */  lw         $a1, %lo(D_80067E90)($a1)
/* DBDB4 800328A4 8CA201A0 */  lw         $v0, 0x1a0($a1)
/* DBDB8 800328A8 3C068888 */  lui        $a2, 0x8888
/* DBDBC 800328AC 34C68889 */  ori        $a2, $a2, 0x8889
/* DBDC0 800328B0 00460018 */  mult       $v0, $a2
/* DBDC4 800328B4 3C076666 */  lui        $a3, 0x6666
/* DBDC8 800328B8 34E76667 */  ori        $a3, $a3, 0x6667
/* DBDCC 800328BC 00004010 */  mfhi       $t0
/* DBDD0 800328C0 01021821 */  addu       $v1, $t0, $v0
/* DBDD4 800328C4 00031903 */  sra        $v1, $v1, 4
/* DBDD8 800328C8 000217C3 */  sra        $v0, $v0, 0x1f
/* DBDDC 800328CC 00621823 */  subu       $v1, $v1, $v0
/* DBDE0 800328D0 00670018 */  mult       $v1, $a3
/* DBDE4 800328D4 000317C3 */  sra        $v0, $v1, 0x1f
/* DBDE8 800328D8 00004010 */  mfhi       $t0
/* DBDEC 800328DC 00082083 */  sra        $a0, $t0, 2
/* DBDF0 800328E0 00822023 */  subu       $a0, $a0, $v0
/* DBDF4 800328E4 00041080 */  sll        $v0, $a0, 2
/* DBDF8 800328E8 00441021 */  addu       $v0, $v0, $a0
/* DBDFC 800328EC 00021040 */  sll        $v0, $v0, 1
/* DBE00 800328F0 00621823 */  subu       $v1, $v1, $v0
/* DBE04 800328F4 00031880 */  sll        $v1, $v1, 2
/* DBE08 800328F8 00A31821 */  addu       $v1, $a1, $v1
/* DBE0C 800328FC 8C630088 */  lw         $v1, 0x88($v1)
/* DBE10 80032900 9462001E */  lhu        $v0, 0x1e($v1)
/* DBE14 80032904 34420400 */  ori        $v0, $v0, 0x400
/* DBE18 80032908 A462001E */  sh         $v0, 0x1e($v1)
/* DBE1C 8003290C 8CA201A0 */  lw         $v0, 0x1a0($a1)
/* DBE20 80032910 00460018 */  mult       $v0, $a2
/* DBE24 80032914 00004010 */  mfhi       $t0
/* DBE28 80032918 01022021 */  addu       $a0, $t0, $v0
/* DBE2C 8003291C 00042103 */  sra        $a0, $a0, 4
/* DBE30 80032920 000217C3 */  sra        $v0, $v0, 0x1f
/* DBE34 80032924 00822023 */  subu       $a0, $a0, $v0
/* DBE38 80032928 00860018 */  mult       $a0, $a2
/* DBE3C 8003292C 000417C3 */  sra        $v0, $a0, 0x1f
/* DBE40 80032930 00004010 */  mfhi       $t0
/* DBE44 80032934 01041821 */  addu       $v1, $t0, $a0
/* DBE48 80032938 00031943 */  sra        $v1, $v1, 5
/* DBE4C 8003293C 00621823 */  subu       $v1, $v1, $v0
/* DBE50 80032940 00031100 */  sll        $v0, $v1, 4
/* DBE54 80032944 00431023 */  subu       $v0, $v0, $v1
/* DBE58 80032948 00021080 */  sll        $v0, $v0, 2
/* DBE5C 8003294C 00822023 */  subu       $a0, $a0, $v0
/* DBE60 80032950 00870018 */  mult       $a0, $a3
/* DBE64 80032954 000427C3 */  sra        $a0, $a0, 0x1f
/* DBE68 80032958 00004010 */  mfhi       $t0
/* DBE6C 8003295C 00081083 */  sra        $v0, $t0, 2
/* DBE70 80032960 00441023 */  subu       $v0, $v0, $a0
/* DBE74 80032964 00021080 */  sll        $v0, $v0, 2
/* DBE78 80032968 00A21021 */  addu       $v0, $a1, $v0
/* DBE7C 8003296C 8C430070 */  lw         $v1, 0x70($v0)
/* DBE80 80032970 9462001E */  lhu        $v0, 0x1e($v1)
/* DBE84 80032974 34420400 */  ori        $v0, $v0, 0x400
/* DBE88 80032978 A462001E */  sh         $v0, 0x1e($v1)
/* DBE8C 8003297C 8CA401A0 */  lw         $a0, 0x1a0($a1)
/* DBE90 80032980 24840001 */  addiu      $a0, $a0, 1
/* DBE94 80032984 00860018 */  mult       $a0, $a2
/* DBE98 80032988 000417C3 */  sra        $v0, $a0, 0x1f
/* DBE9C 8003298C 00004010 */  mfhi       $t0
/* DBEA0 80032990 01041821 */  addu       $v1, $t0, $a0
/* DBEA4 80032994 00031903 */  sra        $v1, $v1, 4
/* DBEA8 80032998 00621823 */  subu       $v1, $v1, $v0
/* DBEAC 8003299C 00670018 */  mult       $v1, $a3
/* DBEB0 800329A0 ACA401A0 */  sw         $a0, 0x1a0($a1)
/* DBEB4 800329A4 000317C3 */  sra        $v0, $v1, 0x1f
/* DBEB8 800329A8 00004010 */  mfhi       $t0
/* DBEBC 800329AC 00082083 */  sra        $a0, $t0, 2
/* DBEC0 800329B0 00822023 */  subu       $a0, $a0, $v0
/* DBEC4 800329B4 00041080 */  sll        $v0, $a0, 2
/* DBEC8 800329B8 00441021 */  addu       $v0, $v0, $a0
/* DBECC 800329BC 00021040 */  sll        $v0, $v0, 1
/* DBED0 800329C0 00621823 */  subu       $v1, $v1, $v0
/* DBED4 800329C4 00031880 */  sll        $v1, $v1, 2
/* DBED8 800329C8 00A31821 */  addu       $v1, $a1, $v1
/* DBEDC 800329CC 8C630088 */  lw         $v1, 0x88($v1)
/* DBEE0 800329D0 9462001E */  lhu        $v0, 0x1e($v1)
/* DBEE4 800329D4 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DBEE8 800329D8 A462001E */  sh         $v0, 0x1e($v1)
/* DBEEC 800329DC 8CA201A0 */  lw         $v0, 0x1a0($a1)
/* DBEF0 800329E0 00460018 */  mult       $v0, $a2
/* DBEF4 800329E4 00004010 */  mfhi       $t0
/* DBEF8 800329E8 01022021 */  addu       $a0, $t0, $v0
/* DBEFC 800329EC 00042103 */  sra        $a0, $a0, 4
/* DBF00 800329F0 000217C3 */  sra        $v0, $v0, 0x1f
/* DBF04 800329F4 00822023 */  subu       $a0, $a0, $v0
/* DBF08 800329F8 00860018 */  mult       $a0, $a2
/* DBF0C 800329FC 000417C3 */  sra        $v0, $a0, 0x1f
/* DBF10 80032A00 00004010 */  mfhi       $t0
/* DBF14 80032A04 01041821 */  addu       $v1, $t0, $a0
/* DBF18 80032A08 00031943 */  sra        $v1, $v1, 5
/* DBF1C 80032A0C 00621823 */  subu       $v1, $v1, $v0
/* DBF20 80032A10 00031100 */  sll        $v0, $v1, 4
/* DBF24 80032A14 00431023 */  subu       $v0, $v0, $v1
/* DBF28 80032A18 00021080 */  sll        $v0, $v0, 2
/* DBF2C 80032A1C 00822023 */  subu       $a0, $a0, $v0
/* DBF30 80032A20 00870018 */  mult       $a0, $a3
/* DBF34 80032A24 000427C3 */  sra        $a0, $a0, 0x1f
/* DBF38 80032A28 00004010 */  mfhi       $t0
/* DBF3C 80032A2C 00081083 */  sra        $v0, $t0, 2
/* DBF40 80032A30 00441023 */  subu       $v0, $v0, $a0
/* DBF44 80032A34 00021080 */  sll        $v0, $v0, 2
/* DBF48 80032A38 00A21021 */  addu       $v0, $a1, $v0
/* DBF4C 80032A3C 8C430070 */  lw         $v1, 0x70($v0)
/* DBF50 80032A40 9462001E */  lhu        $v0, 0x1e($v1)
/* DBF54 80032A44 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DBF58 80032A48 A462001E */  sh         $v0, 0x1e($v1)
/* DBF5C 80032A4C 84A20198 */  lh         $v0, 0x198($a1)
/* DBF60 80032A50 1840000E */  blez       $v0, .L80032A8C
/* DBF64 80032A54 00008021 */   addu      $s0, $zero, $zero
.L80032A58:
/* DBF68 80032A58 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DBF6C 80032A5C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DBF70 80032A60 00101080 */  sll        $v0, $s0, 2
/* DBF74 80032A64 00431021 */  addu       $v0, $v0, $v1
/* DBF78 80032A68 8C440008 */  lw         $a0, 8($v0)
/* DBF7C 80032A6C 0C028A40 */  jal        func_800A2900
/* DBF80 80032A70 26100001 */   addiu     $s0, $s0, 1
/* DBF84 80032A74 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DBF88 80032A78 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DBF8C 80032A7C 84420198 */  lh         $v0, 0x198($v0)
/* DBF90 80032A80 0202102A */  slt        $v0, $s0, $v0
/* DBF94 80032A84 1440FFF4 */  bnez       $v0, .L80032A58
/* DBF98 80032A88 00000000 */   nop
.L80032A8C:
/* DBF9C 80032A8C 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DBFA0 80032A90 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DBFA4 80032A94 9483019E */  lhu        $v1, 0x19e($a0)
/* DBFA8 80032A98 00001021 */  addu       $v0, $zero, $zero
/* DBFAC 80032A9C 24630001 */  addiu      $v1, $v1, 1
/* DBFB0 80032AA0 A483019E */  sh         $v1, 0x19e($a0)
/* DBFB4 80032AA4 8FBF0024 */  lw         $ra, 0x24($sp)
/* DBFB8 80032AA8 8FB00020 */  lw         $s0, 0x20($sp)
/* DBFBC 80032AAC 03E00008 */  jr         $ra
/* DBFC0 80032AB0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80032AB4_DBFC4
/* DBFC4 80032AB4 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DBFC8 80032AB8 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DBFCC 80032ABC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DBFD0 80032AC0 AFBF002C */  sw         $ra, 0x2c($sp)
/* DBFD4 80032AC4 AFB20028 */  sw         $s2, 0x28($sp)
/* DBFD8 80032AC8 AFB10024 */  sw         $s1, 0x24($sp)
/* DBFDC 80032ACC AFB00020 */  sw         $s0, 0x20($sp)
/* DBFE0 80032AD0 F7B40030 */  sdc1       $f20, 0x30($sp)
/* DBFE4 80032AD4 8C9201A0 */  lw         $s2, 0x1a0($a0)
/* DBFE8 80032AD8 8483019E */  lh         $v1, 0x19e($a0)
/* DBFEC 80032ADC 26420001 */  addiu      $v0, $s2, 1
/* DBFF0 80032AE0 AC8201A0 */  sw         $v0, 0x1a0($a0)
/* DBFF4 80032AE4 240200D2 */  addiu      $v0, $zero, 0xd2
/* DBFF8 80032AE8 106200D8 */  beq        $v1, $v0, .L80032E4C
/* DBFFC 80032AEC 286200D3 */   slti      $v0, $v1, 0xd3
/* DC000 80032AF0 50400007 */  beql       $v0, $zero, .L80032B10
/* DC004 80032AF4 24020168 */   addiu     $v0, $zero, 0x168
/* DC008 80032AF8 1060000D */  beqz       $v1, .L80032B30
/* DC00C 80032AFC 00002821 */   addu      $a1, $zero, $zero
/* DC010 80032B00 04600163 */  bltz       $v1, .L80033090
/* DC014 80032B04 3C096666 */   lui       $t1, 0x6666
/* DC018 80032B08 0800CB23 */  j          .L80032C8C
/* DC01C 80032B0C 00000000 */   nop
.L80032B10:
/* DC020 80032B10 10620158 */  beq        $v1, $v0, .L80033074
/* DC024 80032B14 28620168 */   slti      $v0, $v1, 0x168
/* DC028 80032B18 14400122 */  bnez       $v0, .L80032FA4
/* DC02C 80032B1C 24020186 */   addiu     $v0, $zero, 0x186
/* DC030 80032B20 10620158 */  beq        $v1, $v0, .L80033084
/* DC034 80032B24 00000000 */   nop
/* DC038 80032B28 0800CC24 */  j          .L80033090
/* DC03C 80032B2C 00000000 */   nop
.L80032B30:
/* DC040 80032B30 3C014000 */  lui        $at, 0x4000
/* DC044 80032B34 44810000 */  mtc1       $at, $f0
/* DC048 80032B38 8C840008 */  lw         $a0, 8($a0)
/* DC04C 80032B3C 44060000 */  mfc1       $a2, $f0
/* DC050 80032B40 24110001 */  addiu      $s1, $zero, 1
/* DC054 80032B44 4486A000 */  mtc1       $a2, $f20
/* DC058 80032B48 00000000 */  nop
/* DC05C 80032B4C 0C02915B */  jal        func_800A456C
/* DC060 80032B50 00C03821 */   addu      $a3, $a2, $zero
.L80032B54:
/* DC064 80032B54 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC068 80032B58 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC06C 80032B5C 00118080 */  sll        $s0, $s1, 2
/* DC070 80032B60 02021021 */  addu       $v0, $s0, $v0
/* DC074 80032B64 8C440008 */  lw         $a0, 8($v0)
/* DC078 80032B68 00002821 */  addu       $a1, $zero, $zero
/* DC07C 80032B6C 0C02912A */  jal        func_800A44A8
/* DC080 80032B70 00003021 */   addu      $a2, $zero, $zero
/* DC084 80032B74 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC088 80032B78 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC08C 80032B7C 02028021 */  addu       $s0, $s0, $v0
/* DC090 80032B80 8E040008 */  lw         $a0, 8($s0)
/* DC094 80032B84 26310001 */  addiu      $s1, $s1, 1
/* DC098 80032B88 4406A000 */  mfc1       $a2, $f20
/* DC09C 80032B8C 4407A000 */  mfc1       $a3, $f20
/* DC0A0 80032B90 00000000 */  nop
/* DC0A4 80032B94 0C02915B */  jal        func_800A456C
/* DC0A8 80032B98 00002821 */   addu      $a1, $zero, $zero
/* DC0AC 80032B9C 2A22000B */  slti       $v0, $s1, 0xb
/* DC0B0 80032BA0 1440FFEC */  bnez       $v0, .L80032B54
/* DC0B4 80032BA4 00000000 */   nop
/* DC0B8 80032BA8 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC0BC 80032BAC 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC0C0 80032BB0 8C440070 */  lw         $a0, 0x70($v0)
/* DC0C4 80032BB4 24050200 */  addiu      $a1, $zero, 0x200
/* DC0C8 80032BB8 0C0292D4 */  jal        func_800A4B50
/* DC0CC 80032BBC 24060200 */   addiu     $a2, $zero, 0x200
/* DC0D0 80032BC0 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC0D4 80032BC4 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC0D8 80032BC8 240500FF */  addiu      $a1, $zero, 0xff
/* DC0DC 80032BCC 24100080 */  addiu      $s0, $zero, 0x80
/* DC0E0 80032BD0 AFB00010 */  sw         $s0, 0x10($sp)
/* DC0E4 80032BD4 8C440070 */  lw         $a0, 0x70($v0)
/* DC0E8 80032BD8 240600FF */  addiu      $a2, $zero, 0xff
/* DC0EC 80032BDC 0C028E41 */  jal        func_800A3904
/* DC0F0 80032BE0 240700FF */   addiu     $a3, $zero, 0xff
/* DC0F4 80032BE4 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC0F8 80032BE8 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC0FC 80032BEC 0C028D30 */  jal        func_800A34C0
/* DC100 80032BF0 8C440074 */   lw        $a0, 0x74($v0)
/* DC104 80032BF4 240400C0 */  addiu      $a0, $zero, 0xc0
/* DC108 80032BF8 24050005 */  addiu      $a1, $zero, 5
/* DC10C 80032BFC 24060008 */  addiu      $a2, $zero, 8
/* DC110 80032C00 24070006 */  addiu      $a3, $zero, 6
/* DC114 80032C04 0C029476 */  jal        func_800A51D8
/* DC118 80032C08 AFA00010 */   sw        $zero, 0x10($sp)
/* DC11C 80032C0C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC120 80032C10 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC124 80032C14 240500FF */  addiu      $a1, $zero, 0xff
/* DC128 80032C18 AC620074 */  sw         $v0, 0x74($v1)
/* DC12C 80032C1C 24020030 */  addiu      $v0, $zero, 0x30
/* DC130 80032C20 AFA20010 */  sw         $v0, 0x10($sp)
/* DC134 80032C24 8C640074 */  lw         $a0, 0x74($v1)
/* DC138 80032C28 240600FF */  addiu      $a2, $zero, 0xff
/* DC13C 80032C2C 0C028E41 */  jal        func_800A3904
/* DC140 80032C30 240700FF */   addiu     $a3, $zero, 0xff
/* DC144 80032C34 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC148 80032C38 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC14C 80032C3C 8C440078 */  lw         $a0, 0x78($v0)
/* DC150 80032C40 24050072 */  addiu      $a1, $zero, 0x72
/* DC154 80032C44 0C028F9A */  jal        func_800A3E68
/* DC158 80032C48 24060400 */   addiu     $a2, $zero, 0x400
/* DC15C 80032C4C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC160 80032C50 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC164 80032C54 240500FF */  addiu      $a1, $zero, 0xff
/* DC168 80032C58 AFB00010 */  sw         $s0, 0x10($sp)
/* DC16C 80032C5C 8C440078 */  lw         $a0, 0x78($v0)
/* DC170 80032C60 240600FF */  addiu      $a2, $zero, 0xff
/* DC174 80032C64 0C028E41 */  jal        func_800A3904
/* DC178 80032C68 240700FF */   addiu     $a3, $zero, 0xff
/* DC17C 80032C6C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC180 80032C70 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC184 80032C74 24040001 */  addiu      $a0, $zero, 1
/* DC188 80032C78 240205BE */  addiu      $v0, $zero, 0x5be
/* DC18C 80032C7C 0C02A5AF */  jal        func_800A96BC
/* DC190 80032C80 AC6201A0 */   sw        $v0, 0x1a0($v1)
/* DC194 80032C84 0800CC24 */  j          .L80033090
/* DC198 80032C88 00000000 */   nop
.L80032C8C:
/* DC19C 80032C8C 35296667 */  ori        $t1, $t1, 0x6667
/* DC1A0 80032C90 00123FC2 */  srl        $a3, $s2, 0x1f
/* DC1A4 80032C94 02473821 */  addu       $a3, $s2, $a3
/* DC1A8 80032C98 00073043 */  sra        $a2, $a3, 1
/* DC1AC 80032C9C 00C90018 */  mult       $a2, $t1
/* DC1B0 80032CA0 3C088006 */  lui        $t0, %hi(D_80067E90)
/* DC1B4 80032CA4 8D087E90 */  lw         $t0, %lo(D_80067E90)($t0)
/* DC1B8 80032CA8 00073FC3 */  sra        $a3, $a3, 0x1f
/* DC1BC 80032CAC 00001810 */  mfhi       $v1
/* DC1C0 80032CB0 00031043 */  sra        $v0, $v1, 1
/* DC1C4 80032CB4 00471023 */  subu       $v0, $v0, $a3
/* DC1C8 80032CB8 00022880 */  sll        $a1, $v0, 2
/* DC1CC 80032CBC 00A22821 */  addu       $a1, $a1, $v0
/* DC1D0 80032CC0 00C52823 */  subu       $a1, $a2, $a1
/* DC1D4 80032CC4 00052880 */  sll        $a1, $a1, 2
/* DC1D8 80032CC8 01052821 */  addu       $a1, $t0, $a1
/* DC1DC 80032CCC 8CA3000C */  lw         $v1, 0xc($a1)
/* DC1E0 80032CD0 9462001E */  lhu        $v0, 0x1e($v1)
/* DC1E4 80032CD4 34420400 */  ori        $v0, $v0, 0x400
/* DC1E8 80032CD8 A462001E */  sh         $v0, 0x1e($v1)
/* DC1EC 80032CDC 8D0201A0 */  lw         $v0, 0x1a0($t0)
/* DC1F0 80032CE0 00021FC2 */  srl        $v1, $v0, 0x1f
/* DC1F4 80032CE4 00431021 */  addu       $v0, $v0, $v1
/* DC1F8 80032CE8 00021843 */  sra        $v1, $v0, 1
/* DC1FC 80032CEC 00690018 */  mult       $v1, $t1
/* DC200 80032CF0 000217C3 */  sra        $v0, $v0, 0x1f
/* DC204 80032CF4 00005010 */  mfhi       $t2
/* DC208 80032CF8 000A2043 */  sra        $a0, $t2, 1
/* DC20C 80032CFC 00822023 */  subu       $a0, $a0, $v0
/* DC210 80032D00 00041080 */  sll        $v0, $a0, 2
/* DC214 80032D04 00441021 */  addu       $v0, $v0, $a0
/* DC218 80032D08 00621823 */  subu       $v1, $v1, $v0
/* DC21C 80032D0C 00031880 */  sll        $v1, $v1, 2
/* DC220 80032D10 01031821 */  addu       $v1, $t0, $v1
/* DC224 80032D14 8C63000C */  lw         $v1, 0xc($v1)
/* DC228 80032D18 9462001E */  lhu        $v0, 0x1e($v1)
/* DC22C 80032D1C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC230 80032D20 A462001E */  sh         $v0, 0x1e($v1)
/* DC234 80032D24 8CA30020 */  lw         $v1, 0x20($a1)
/* DC238 80032D28 9462001E */  lhu        $v0, 0x1e($v1)
/* DC23C 80032D2C 34420400 */  ori        $v0, $v0, 0x400
/* DC240 80032D30 A462001E */  sh         $v0, 0x1e($v1)
/* DC244 80032D34 8D0201A0 */  lw         $v0, 0x1a0($t0)
/* DC248 80032D38 00021FC2 */  srl        $v1, $v0, 0x1f
/* DC24C 80032D3C 00431021 */  addu       $v0, $v0, $v1
/* DC250 80032D40 00022043 */  sra        $a0, $v0, 1
/* DC254 80032D44 00890018 */  mult       $a0, $t1
/* DC258 80032D48 00001810 */  mfhi       $v1
/* DC25C 80032D4C 3C0538E3 */  lui        $a1, 0x38e3
/* DC260 80032D50 34A58E39 */  ori        $a1, $a1, 0x8e39
/* DC264 80032D54 00C50018 */  mult       $a2, $a1
/* DC268 80032D58 000217C3 */  sra        $v0, $v0, 0x1f
/* DC26C 80032D5C 00031843 */  sra        $v1, $v1, 1
/* DC270 80032D60 00621823 */  subu       $v1, $v1, $v0
/* DC274 80032D64 00031080 */  sll        $v0, $v1, 2
/* DC278 80032D68 00431021 */  addu       $v0, $v0, $v1
/* DC27C 80032D6C 00822023 */  subu       $a0, $a0, $v0
/* DC280 80032D70 00042080 */  sll        $a0, $a0, 2
/* DC284 80032D74 01042021 */  addu       $a0, $t0, $a0
/* DC288 80032D78 00005010 */  mfhi       $t2
/* DC28C 80032D7C 000A1843 */  sra        $v1, $t2, 1
/* DC290 80032D80 00671823 */  subu       $v1, $v1, $a3
/* DC294 80032D84 000310C0 */  sll        $v0, $v1, 3
/* DC298 80032D88 00431021 */  addu       $v0, $v0, $v1
/* DC29C 80032D8C 00C23023 */  subu       $a2, $a2, $v0
/* DC2A0 80032D90 24C60001 */  addiu      $a2, $a2, 1
/* DC2A4 80032D94 00C90018 */  mult       $a2, $t1
/* DC2A8 80032D98 8C830020 */  lw         $v1, 0x20($a0)
/* DC2AC 80032D9C 9462001E */  lhu        $v0, 0x1e($v1)
/* DC2B0 80032DA0 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC2B4 80032DA4 A462001E */  sh         $v0, 0x1e($v1)
/* DC2B8 80032DA8 000617C3 */  sra        $v0, $a2, 0x1f
/* DC2BC 80032DAC 00005010 */  mfhi       $t2
/* DC2C0 80032DB0 000A1843 */  sra        $v1, $t2, 1
/* DC2C4 80032DB4 00621823 */  subu       $v1, $v1, $v0
/* DC2C8 80032DB8 00031080 */  sll        $v0, $v1, 2
/* DC2CC 80032DBC 00431021 */  addu       $v0, $v0, $v1
/* DC2D0 80032DC0 00C23023 */  subu       $a2, $a2, $v0
/* DC2D4 80032DC4 00063080 */  sll        $a2, $a2, 2
/* DC2D8 80032DC8 01063021 */  addu       $a2, $t0, $a2
/* DC2DC 80032DCC 8CC30034 */  lw         $v1, 0x34($a2)
/* DC2E0 80032DD0 9462001E */  lhu        $v0, 0x1e($v1)
/* DC2E4 80032DD4 34420400 */  ori        $v0, $v0, 0x400
/* DC2E8 80032DD8 A462001E */  sh         $v0, 0x1e($v1)
/* DC2EC 80032DDC 8D0201A0 */  lw         $v0, 0x1a0($t0)
/* DC2F0 80032DE0 00021FC2 */  srl        $v1, $v0, 0x1f
/* DC2F4 80032DE4 00431021 */  addu       $v0, $v0, $v1
/* DC2F8 80032DE8 00022043 */  sra        $a0, $v0, 1
/* DC2FC 80032DEC 00850018 */  mult       $a0, $a1
/* DC300 80032DF0 000217C3 */  sra        $v0, $v0, 0x1f
/* DC304 80032DF4 00001810 */  mfhi       $v1
/* DC308 80032DF8 00031843 */  sra        $v1, $v1, 1
/* DC30C 80032DFC 00621823 */  subu       $v1, $v1, $v0
/* DC310 80032E00 000310C0 */  sll        $v0, $v1, 3
/* DC314 80032E04 00431021 */  addu       $v0, $v0, $v1
/* DC318 80032E08 00822023 */  subu       $a0, $a0, $v0
/* DC31C 80032E0C 24840001 */  addiu      $a0, $a0, 1
/* DC320 80032E10 00890018 */  mult       $a0, $t1
/* DC324 80032E14 000417C3 */  sra        $v0, $a0, 0x1f
/* DC328 80032E18 00001810 */  mfhi       $v1
/* DC32C 80032E1C 00031843 */  sra        $v1, $v1, 1
/* DC330 80032E20 00621823 */  subu       $v1, $v1, $v0
/* DC334 80032E24 00031080 */  sll        $v0, $v1, 2
/* DC338 80032E28 00431021 */  addu       $v0, $v0, $v1
/* DC33C 80032E2C 00822023 */  subu       $a0, $a0, $v0
/* DC340 80032E30 00042080 */  sll        $a0, $a0, 2
/* DC344 80032E34 01044021 */  addu       $t0, $t0, $a0
/* DC348 80032E38 8D030034 */  lw         $v1, 0x34($t0)
/* DC34C 80032E3C 9462001E */  lhu        $v0, 0x1e($v1)
/* DC350 80032E40 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC354 80032E44 0800CC24 */  j          .L80033090
/* DC358 80032E48 A462001E */   sh        $v0, 0x1e($v1)
.L80032E4C:
/* DC35C 80032E4C 24110001 */  addiu      $s1, $zero, 1
/* DC360 80032E50 24840004 */  addiu      $a0, $a0, 4
.L80032E54:
/* DC364 80032E54 8C830008 */  lw         $v1, 8($a0)
/* DC368 80032E58 9462001E */  lhu        $v0, 0x1e($v1)
/* DC36C 80032E5C 26310001 */  addiu      $s1, $s1, 1
/* DC370 80032E60 34420400 */  ori        $v0, $v0, 0x400
/* DC374 80032E64 A462001E */  sh         $v0, 0x1e($v1)
/* DC378 80032E68 2A22000B */  slti       $v0, $s1, 0xb
/* DC37C 80032E6C 1440FFF9 */  bnez       $v0, .L80032E54
/* DC380 80032E70 24840004 */   addiu     $a0, $a0, 4
/* DC384 80032E74 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC388 80032E78 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC38C 80032E7C 2411000B */  addiu      $s1, $zero, 0xb
/* DC390 80032E80 2444002C */  addiu      $a0, $v0, 0x2c
.L80032E84:
/* DC394 80032E84 8C830008 */  lw         $v1, 8($a0)
/* DC398 80032E88 9462001E */  lhu        $v0, 0x1e($v1)
/* DC39C 80032E8C 26310001 */  addiu      $s1, $s1, 1
/* DC3A0 80032E90 34420400 */  ori        $v0, $v0, 0x400
/* DC3A4 80032E94 A462001E */  sh         $v0, 0x1e($v1)
/* DC3A8 80032E98 2A220010 */  slti       $v0, $s1, 0x10
/* DC3AC 80032E9C 1440FFF9 */  bnez       $v0, .L80032E84
/* DC3B0 80032EA0 24840004 */   addiu     $a0, $a0, 4
/* DC3B4 80032EA4 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC3B8 80032EA8 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC3BC 80032EAC 3C014000 */  lui        $at, 0x4000
/* DC3C0 80032EB0 44810000 */  mtc1       $at, $f0
/* DC3C4 80032EB4 8C440048 */  lw         $a0, 0x48($v0)
/* DC3C8 80032EB8 44060000 */  mfc1       $a2, $f0
/* DC3CC 80032EBC 00002821 */  addu       $a1, $zero, $zero
/* DC3D0 80032EC0 0C02915B */  jal        func_800A456C
/* DC3D4 80032EC4 00C03821 */   addu      $a3, $a2, $zero
/* DC3D8 80032EC8 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC3DC 80032ECC 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC3E0 80032ED0 8C430048 */  lw         $v1, 0x48($v0)
/* DC3E4 80032ED4 9462001E */  lhu        $v0, 0x1e($v1)
/* DC3E8 80032ED8 3C01400C */  lui        $at, 0x400c
/* DC3EC 80032EDC 3421CCCD */  ori        $at, $at, 0xcccd
/* DC3F0 80032EE0 4481A000 */  mtc1       $at, $f20
/* DC3F4 80032EE4 24110011 */  addiu      $s1, $zero, 0x11
/* DC3F8 80032EE8 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC3FC 80032EEC A462001E */  sh         $v0, 0x1e($v1)
.L80032EF0:
/* DC400 80032EF0 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC404 80032EF4 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC408 80032EF8 8C44004C */  lw         $a0, 0x4c($v0)
/* DC40C 80032EFC 00002821 */  addu       $a1, $zero, $zero
/* DC410 80032F00 4406A000 */  mfc1       $a2, $f20
/* DC414 80032F04 4407A000 */  mfc1       $a3, $f20
/* DC418 80032F08 00000000 */  nop
/* DC41C 80032F0C 0C02915B */  jal        func_800A456C
/* DC420 80032F10 26310001 */   addiu     $s1, $s1, 1
/* DC424 80032F14 2A220019 */  slti       $v0, $s1, 0x19
/* DC428 80032F18 1440FFF5 */  bnez       $v0, .L80032EF0
/* DC42C 80032F1C 00002821 */   addu      $a1, $zero, $zero
/* DC430 80032F20 3C088006 */  lui        $t0, %hi(D_80067E90)
/* DC434 80032F24 8D087E90 */  lw         $t0, %lo(D_80067E90)($t0)
/* DC438 80032F28 3C01439A */  lui        $at, 0x439a
/* DC43C 80032F2C 44810000 */  mtc1       $at, $f0
/* DC440 80032F30 3C014308 */  lui        $at, 0x4308
/* DC444 80032F34 44811000 */  mtc1       $at, $f2
/* DC448 80032F38 8D03004C */  lw         $v1, 0x4c($t0)
/* DC44C 80032F3C 3C01BF00 */  lui        $at, 0xbf00
/* DC450 80032F40 44812000 */  mtc1       $at, $f4
/* DC454 80032F44 3C013C23 */  lui        $at, 0x3c23
/* DC458 80032F48 3421D70A */  ori        $at, $at, 0xd70a
/* DC45C 80032F4C 44813000 */  mtc1       $at, $f6
/* DC460 80032F50 9462001E */  lhu        $v0, 0x1e($v1)
/* DC464 80032F54 4406A000 */  mfc1       $a2, $f20
/* DC468 80032F58 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC46C 80032F5C A462001E */  sh         $v0, 0x1e($v1)
/* DC470 80032F60 8D04006C */  lw         $a0, 0x6c($t0)
/* DC474 80032F64 00C03821 */  addu       $a3, $a2, $zero
/* DC478 80032F68 E50001F0 */  swc1       $f0, 0x1f0($t0)
/* DC47C 80032F6C E50201F4 */  swc1       $f2, 0x1f4($t0)
/* DC480 80032F70 E50401F8 */  swc1       $f4, 0x1f8($t0)
/* DC484 80032F74 0C02915B */  jal        func_800A456C
/* DC488 80032F78 E50601FC */   swc1      $f6, 0x1fc($t0)
/* DC48C 80032F7C 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DC490 80032F80 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DC494 80032F84 8C82006C */  lw         $v0, 0x6c($a0)
/* DC498 80032F88 8C430014 */  lw         $v1, 0x14($v0)
/* DC49C 80032F8C 24023ADC */  addiu      $v0, $zero, 0x3adc
/* DC4A0 80032F90 A462001E */  sh         $v0, 0x1e($v1)
/* DC4A4 80032F94 8C83006C */  lw         $v1, 0x6c($a0)
/* DC4A8 80032F98 9462001E */  lhu        $v0, 0x1e($v1)
/* DC4AC 80032F9C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC4B0 80032FA0 A462001E */  sh         $v0, 0x1e($v1)
.L80032FA4:
/* DC4B4 80032FA4 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC4B8 80032FA8 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC4BC 80032FAC 8462019E */  lh         $v0, 0x19e($v1)
/* DC4C0 80032FB0 28420136 */  slti       $v0, $v0, 0x136
/* DC4C4 80032FB4 10400021 */  beqz       $v0, .L8003303C
/* DC4C8 80032FB8 00000000 */   nop
/* DC4CC 80032FBC C46001F0 */  lwc1       $f0, 0x1f0($v1)
/* DC4D0 80032FC0 3C013F80 */  lui        $at, 0x3f80
/* DC4D4 80032FC4 44811000 */  mtc1       $at, $f2
/* DC4D8 80032FC8 00000000 */  nop
/* DC4DC 80032FCC 46020001 */  sub.s      $f0, $f0, $f2
/* DC4E0 80032FD0 C46201F8 */  lwc1       $f2, 0x1f8($v1)
/* DC4E4 80032FD4 E46001F0 */  swc1       $f0, 0x1f0($v1)
/* DC4E8 80032FD8 C46001F4 */  lwc1       $f0, 0x1f4($v1)
/* DC4EC 80032FDC 3C014080 */  lui        $at, 0x4080
/* DC4F0 80032FE0 44814000 */  mtc1       $at, $f8
/* DC4F4 80032FE4 C46401F0 */  lwc1       $f4, 0x1f0($v1)
/* DC4F8 80032FE8 46020000 */  add.s      $f0, $f0, $f2
/* DC4FC 80032FEC C46601FC */  lwc1       $f6, 0x1fc($v1)
/* DC500 80032FF0 46082102 */  mul.s      $f4, $f4, $f8
/* DC504 80032FF4 E46001F4 */  swc1       $f0, 0x1f4($v1)
/* DC508 80032FF8 C46001F8 */  lwc1       $f0, 0x1f8($v1)
/* DC50C 80032FFC C46201F4 */  lwc1       $f2, 0x1f4($v1)
/* DC510 80033000 8C64004C */  lw         $a0, 0x4c($v1)
/* DC514 80033004 46060000 */  add.s      $f0, $f0, $f6
/* DC518 80033008 46081082 */  mul.s      $f2, $f2, $f8
/* DC51C 8003300C E46001F8 */  swc1       $f0, 0x1f8($v1)
/* DC520 80033010 4600200D */  trunc.w.s  $f0, $f4
/* DC524 80033014 44050000 */  mfc1       $a1, $f0
/* DC528 80033018 00000000 */  nop
/* DC52C 8003301C 00052C00 */  sll        $a1, $a1, 0x10
/* DC530 80033020 00052C03 */  sra        $a1, $a1, 0x10
/* DC534 80033024 4600100D */  trunc.w.s  $f0, $f2
/* DC538 80033028 44060000 */  mfc1       $a2, $f0
/* DC53C 8003302C 00000000 */  nop
/* DC540 80033030 00063400 */  sll        $a2, $a2, 0x10
/* DC544 80033034 0C028D89 */  jal        func_800A3624
/* DC548 80033038 00063403 */   sra       $a2, $a2, 0x10
.L8003303C:
/* DC54C 8003303C 0C02591A */  jal        func_80096468
/* DC550 80033040 24040004 */   addiu     $a0, $zero, 4
/* DC554 80033044 0C02592F */  jal        func_800964BC
/* DC558 80033048 3044FFFF */   andi      $a0, $v0, 0xffff
/* DC55C 8003304C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC560 80033050 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC564 80033054 24050280 */  addiu      $a1, $zero, 0x280
/* DC568 80033058 24420078 */  addiu      $v0, $v0, 0x78
/* DC56C 8003305C 8C64006C */  lw         $a0, 0x6c($v1)
/* DC570 80033060 00021480 */  sll        $v0, $v0, 0x12
/* DC574 80033064 0C028D89 */  jal        func_800A3624
/* DC578 80033068 00023403 */   sra       $a2, $v0, 0x10
/* DC57C 8003306C 0800CC24 */  j          .L80033090
/* DC580 80033070 00000000 */   nop
.L80033074:
/* DC584 80033074 0C02A5E5 */  jal        func_800A9794
/* DC588 80033078 2404001E */   addiu     $a0, $zero, 0x1e
/* DC58C 8003307C 0800CC24 */  j          .L80033090
/* DC590 80033080 00000000 */   nop
.L80033084:
/* DC594 80033084 9082019C */  lbu        $v0, 0x19c($a0)
/* DC598 80033088 24420001 */  addiu      $v0, $v0, 1
/* DC59C 8003308C A082019C */  sb         $v0, 0x19c($a0)
.L80033090:
/* DC5A0 80033090 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DC5A4 80033094 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DC5A8 80033098 8C440070 */  lw         $a0, 0x70($v0)
/* DC5AC 8003309C 2405F940 */  addiu      $a1, $zero, -0x6c0
/* DC5B0 800330A0 0C02933E */  jal        func_800A4CF8
/* DC5B4 800330A4 24060260 */   addiu     $a2, $zero, 0x260
/* DC5B8 800330A8 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC5BC 800330AC 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC5C0 800330B0 8C640074 */  lw         $a0, 0x74($v1)
/* DC5C4 800330B4 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DC5C8 800330B8 8C840000 */  lw         $a0, ($a0)
/* DC5CC 800330BC 30420001 */  andi       $v0, $v0, 1
/* DC5D0 800330C0 A482001A */  sh         $v0, 0x1a($a0)
/* DC5D4 800330C4 8C640074 */  lw         $a0, 0x74($v1)
/* DC5D8 800330C8 24050140 */  addiu      $a1, $zero, 0x140
/* DC5DC 800330CC 0C02933E */  jal        func_800A4CF8
/* DC5E0 800330D0 00003021 */   addu      $a2, $zero, $zero
/* DC5E4 800330D4 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC5E8 800330D8 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC5EC 800330DC 2A420709 */  slti       $v0, $s2, 0x709
/* DC5F0 800330E0 14400002 */  bnez       $v0, .L800330EC
/* DC5F4 800330E4 2462008C */   addiu     $v0, $v1, 0x8c
/* DC5F8 800330E8 24620090 */  addiu      $v0, $v1, 0x90
.L800330EC:
/* DC5FC 800330EC 8C440000 */  lw         $a0, ($v0)
/* DC600 800330F0 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC604 800330F4 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC608 800330F8 2A420709 */  slti       $v0, $s2, 0x709
/* DC60C 800330FC 14400002 */  bnez       $v0, .L80033108
/* DC610 80033100 2462008C */   addiu     $v0, $v1, 0x8c
/* DC614 80033104 24620090 */  addiu      $v0, $v1, 0x90
.L80033108:
/* DC618 80033108 8C420000 */  lw         $v0, ($v0)
/* DC61C 8003310C 9442001E */  lhu        $v0, 0x1e($v0)
/* DC620 80033110 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC624 80033114 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC628 80033118 34420400 */  ori        $v0, $v0, 0x400
/* DC62C 8003311C A482001E */  sh         $v0, 0x1e($a0)
/* DC630 80033120 2A420709 */  slti       $v0, $s2, 0x709
/* DC634 80033124 14400002 */  bnez       $v0, .L80033130
/* DC638 80033128 24620094 */   addiu     $v0, $v1, 0x94
/* DC63C 8003312C 24620098 */  addiu      $v0, $v1, 0x98
.L80033130:
/* DC640 80033130 8C440000 */  lw         $a0, ($v0)
/* DC644 80033134 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC648 80033138 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC64C 8003313C 2A420709 */  slti       $v0, $s2, 0x709
/* DC650 80033140 14400002 */  bnez       $v0, .L8003314C
/* DC654 80033144 24620094 */   addiu     $v0, $v1, 0x94
/* DC658 80033148 24620098 */  addiu      $v0, $v1, 0x98
.L8003314C:
/* DC65C 8003314C 8C420000 */  lw         $v0, ($v0)
/* DC660 80033150 9442001E */  lhu        $v0, 0x1e($v0)
/* DC664 80033154 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC668 80033158 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC66C 8003315C 34420400 */  ori        $v0, $v0, 0x400
/* DC670 80033160 A482001E */  sh         $v0, 0x1e($a0)
/* DC674 80033164 2A420709 */  slti       $v0, $s2, 0x709
/* DC678 80033168 14400002 */  bnez       $v0, .L80033174
/* DC67C 8003316C 2462009C */   addiu     $v0, $v1, 0x9c
/* DC680 80033170 246200A0 */  addiu      $v0, $v1, 0xa0
.L80033174:
/* DC684 80033174 8C440000 */  lw         $a0, ($v0)
/* DC688 80033178 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC68C 8003317C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC690 80033180 2A420709 */  slti       $v0, $s2, 0x709
/* DC694 80033184 54400002 */  bnezl      $v0, .L80033190
/* DC698 80033188 2463009C */   addiu     $v1, $v1, 0x9c
/* DC69C 8003318C 246300A0 */  addiu      $v1, $v1, 0xa0
.L80033190:
/* DC6A0 80033190 3C0291A2 */  lui        $v0, 0x91a2
/* DC6A4 80033194 3442B3C5 */  ori        $v0, $v0, 0xb3c5
/* DC6A8 80033198 02420018 */  mult       $s2, $v0
/* DC6AC 8003319C 8C620000 */  lw         $v0, ($v1)
/* DC6B0 800331A0 3C031B4E */  lui        $v1, 0x1b4e
/* DC6B4 800331A4 346381B5 */  ori        $v1, $v1, 0x81b5
/* DC6B8 800331A8 00004010 */  mfhi       $t0
/* DC6BC 800331AC 9442001E */  lhu        $v0, 0x1e($v0)
/* DC6C0 800331B0 001237C3 */  sra        $a2, $s2, 0x1f
/* DC6C4 800331B4 02430018 */  mult       $s2, $v1
/* DC6C8 800331B8 34420400 */  ori        $v0, $v0, 0x400
/* DC6CC 800331BC A482001E */  sh         $v0, 0x1e($a0)
/* DC6D0 800331C0 01121021 */  addu       $v0, $t0, $s2
/* DC6D4 800331C4 00021283 */  sra        $v0, $v0, 0xa
/* DC6D8 800331C8 00461023 */  subu       $v0, $v0, $a2
/* DC6DC 800331CC 000220C0 */  sll        $a0, $v0, 3
/* DC6E0 800331D0 00822023 */  subu       $a0, $a0, $v0
/* DC6E4 800331D4 00042140 */  sll        $a0, $a0, 5
/* DC6E8 800331D8 00822021 */  addu       $a0, $a0, $v0
/* DC6EC 800331DC 00002810 */  mfhi       $a1
/* DC6F0 800331E0 000420C0 */  sll        $a0, $a0, 3
/* DC6F4 800331E4 02442023 */  subu       $a0, $s2, $a0
/* DC6F8 800331E8 00830018 */  mult       $a0, $v1
/* DC6FC 800331EC 3C078888 */  lui        $a3, 0x8888
/* DC700 800331F0 34E78889 */  ori        $a3, $a3, 0x8889
/* DC704 800331F4 00051143 */  sra        $v0, $a1, 5
/* DC708 800331F8 00461023 */  subu       $v0, $v0, $a2
/* DC70C 800331FC 00021880 */  sll        $v1, $v0, 2
/* DC710 80033200 00621821 */  addu       $v1, $v1, $v0
/* DC714 80033204 00032900 */  sll        $a1, $v1, 4
/* DC718 80033208 00A32823 */  subu       $a1, $a1, $v1
/* DC71C 8003320C 00005010 */  mfhi       $t2
/* DC720 80033210 00052880 */  sll        $a1, $a1, 2
/* DC724 80033214 02452823 */  subu       $a1, $s2, $a1
/* DC728 80033218 00A70018 */  mult       $a1, $a3
/* DC72C 8003321C 3C088006 */  lui        $t0, %hi(D_80067E90)
/* DC730 80033220 8D087E90 */  lw         $t0, %lo(D_80067E90)($t0)
/* DC734 80033224 000427C3 */  sra        $a0, $a0, 0x1f
/* DC738 80033228 000A1143 */  sra        $v0, $t2, 5
/* DC73C 8003322C 00441023 */  subu       $v0, $v0, $a0
/* DC740 80033230 00021080 */  sll        $v0, $v0, 2
/* DC744 80033234 01021021 */  addu       $v0, $t0, $v0
/* DC748 80033238 8C4300A4 */  lw         $v1, 0xa4($v0)
/* DC74C 8003323C 00004810 */  mfhi       $t1
/* DC750 80033240 9462001E */  lhu        $v0, 0x1e($v1)
/* DC754 80033244 00000000 */  nop
/* DC758 80033248 02470018 */  mult       $s2, $a3
/* DC75C 8003324C 34420400 */  ori        $v0, $v0, 0x400
/* DC760 80033250 A462001E */  sh         $v0, 0x1e($v1)
/* DC764 80033254 3C076666 */  lui        $a3, 0x6666
/* DC768 80033258 34E76667 */  ori        $a3, $a3, 0x6667
/* DC76C 8003325C 01252021 */  addu       $a0, $t1, $a1
/* DC770 80033260 00042103 */  sra        $a0, $a0, 4
/* DC774 80033264 00052FC3 */  sra        $a1, $a1, 0x1f
/* DC778 80033268 00852023 */  subu       $a0, $a0, $a1
/* DC77C 8003326C 00042080 */  sll        $a0, $a0, 2
/* DC780 80033270 00005010 */  mfhi       $t2
/* DC784 80033274 01521021 */  addu       $v0, $t2, $s2
/* DC788 80033278 00021103 */  sra        $v0, $v0, 4
/* DC78C 8003327C 00461023 */  subu       $v0, $v0, $a2
/* DC790 80033280 00021900 */  sll        $v1, $v0, 4
/* DC794 80033284 00621823 */  subu       $v1, $v1, $v0
/* DC798 80033288 00031840 */  sll        $v1, $v1, 1
/* DC79C 8003328C 02431823 */  subu       $v1, $s2, $v1
/* DC7A0 80033290 00670018 */  mult       $v1, $a3
/* DC7A4 80033294 01042021 */  addu       $a0, $t0, $a0
/* DC7A8 80033298 8C8400BC */  lw         $a0, 0xbc($a0)
/* DC7AC 8003329C 9482001E */  lhu        $v0, 0x1e($a0)
/* DC7B0 800332A0 00031FC3 */  sra        $v1, $v1, 0x1f
/* DC7B4 800332A4 34420400 */  ori        $v0, $v0, 0x400
/* DC7B8 800332A8 A482001E */  sh         $v0, 0x1e($a0)
/* DC7BC 800332AC 00004810 */  mfhi       $t1
/* DC7C0 800332B0 00091083 */  sra        $v0, $t1, 2
/* DC7C4 800332B4 00431023 */  subu       $v0, $v0, $v1
/* DC7C8 800332B8 00021080 */  sll        $v0, $v0, 2
/* DC7CC 800332BC 02470018 */  mult       $s2, $a3
/* DC7D0 800332C0 01021021 */  addu       $v0, $t0, $v0
/* DC7D4 800332C4 8C4300E4 */  lw         $v1, 0xe4($v0)
/* DC7D8 800332C8 9462001E */  lhu        $v0, 0x1e($v1)
/* DC7DC 800332CC 34420400 */  ori        $v0, $v0, 0x400
/* DC7E0 800332D0 A462001E */  sh         $v0, 0x1e($v1)
/* DC7E4 800332D4 00004810 */  mfhi       $t1
/* DC7E8 800332D8 00091883 */  sra        $v1, $t1, 2
/* DC7EC 800332DC 00661823 */  subu       $v1, $v1, $a2
/* DC7F0 800332E0 00031080 */  sll        $v0, $v1, 2
/* DC7F4 800332E4 00431021 */  addu       $v0, $v0, $v1
/* DC7F8 800332E8 00021040 */  sll        $v0, $v0, 1
/* DC7FC 800332EC 02421023 */  subu       $v0, $s2, $v0
/* DC800 800332F0 00021080 */  sll        $v0, $v0, 2
/* DC804 800332F4 01021021 */  addu       $v0, $t0, $v0
/* DC808 800332F8 8C4300F0 */  lw         $v1, 0xf0($v0)
/* DC80C 800332FC 9462001E */  lhu        $v0, 0x1e($v1)
/* DC810 80033300 34420400 */  ori        $v0, $v0, 0x400
/* DC814 80033304 A462001E */  sh         $v0, 0x1e($v1)
/* DC818 80033308 8D0201A0 */  lw         $v0, 0x1a0($t0)
/* DC81C 8003330C 28420709 */  slti       $v0, $v0, 0x709
/* DC820 80033310 14400002 */  bnez       $v0, .L8003331C
/* DC824 80033314 2504008C */   addiu     $a0, $t0, 0x8c
/* DC828 80033318 25040090 */  addiu      $a0, $t0, 0x90
.L8003331C:
/* DC82C 8003331C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC830 80033320 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC834 80033324 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DC838 80033328 8C840000 */  lw         $a0, ($a0)
/* DC83C 8003332C 28420709 */  slti       $v0, $v0, 0x709
/* DC840 80033330 14400002 */  bnez       $v0, .L8003333C
/* DC844 80033334 2462008C */   addiu     $v0, $v1, 0x8c
/* DC848 80033338 24620090 */  addiu      $v0, $v1, 0x90
.L8003333C:
/* DC84C 8003333C 8C420000 */  lw         $v0, ($v0)
/* DC850 80033340 9442001E */  lhu        $v0, 0x1e($v0)
/* DC854 80033344 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC858 80033348 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC85C 8003334C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC860 80033350 A482001E */  sh         $v0, 0x1e($a0)
/* DC864 80033354 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DC868 80033358 28420709 */  slti       $v0, $v0, 0x709
/* DC86C 8003335C 14400002 */  bnez       $v0, .L80033368
/* DC870 80033360 24640094 */   addiu     $a0, $v1, 0x94
/* DC874 80033364 24640098 */  addiu      $a0, $v1, 0x98
.L80033368:
/* DC878 80033368 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC87C 8003336C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC880 80033370 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DC884 80033374 8C840000 */  lw         $a0, ($a0)
/* DC888 80033378 28420709 */  slti       $v0, $v0, 0x709
/* DC88C 8003337C 14400002 */  bnez       $v0, .L80033388
/* DC890 80033380 24620094 */   addiu     $v0, $v1, 0x94
/* DC894 80033384 24620098 */  addiu      $v0, $v1, 0x98
.L80033388:
/* DC898 80033388 8C420000 */  lw         $v0, ($v0)
/* DC89C 8003338C 9442001E */  lhu        $v0, 0x1e($v0)
/* DC8A0 80033390 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC8A4 80033394 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC8A8 80033398 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC8AC 8003339C A482001E */  sh         $v0, 0x1e($a0)
/* DC8B0 800333A0 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DC8B4 800333A4 28420709 */  slti       $v0, $v0, 0x709
/* DC8B8 800333A8 14400002 */  bnez       $v0, .L800333B4
/* DC8BC 800333AC 2464009C */   addiu     $a0, $v1, 0x9c
/* DC8C0 800333B0 246400A0 */  addiu      $a0, $v1, 0xa0
.L800333B4:
/* DC8C4 800333B4 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DC8C8 800333B8 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DC8CC 800333BC 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DC8D0 800333C0 8C840000 */  lw         $a0, ($a0)
/* DC8D4 800333C4 28420709 */  slti       $v0, $v0, 0x709
/* DC8D8 800333C8 14400002 */  bnez       $v0, .L800333D4
/* DC8DC 800333CC 2462009C */   addiu     $v0, $v1, 0x9c
/* DC8E0 800333D0 246200A0 */  addiu      $v0, $v1, 0xa0
.L800333D4:
/* DC8E4 800333D4 8C420000 */  lw         $v0, ($v0)
/* DC8E8 800333D8 9442001E */  lhu        $v0, 0x1e($v0)
/* DC8EC 800333DC 3C058006 */  lui        $a1, %hi(D_80067E90)
/* DC8F0 800333E0 8CA57E90 */  lw         $a1, %lo(D_80067E90)($a1)
/* DC8F4 800333E4 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC8F8 800333E8 A482001E */  sh         $v0, 0x1e($a0)
/* DC8FC 800333EC 8CA401A0 */  lw         $a0, 0x1a0($a1)
/* DC900 800333F0 3C0291A2 */  lui        $v0, 0x91a2
/* DC904 800333F4 3442B3C5 */  ori        $v0, $v0, 0xb3c5
/* DC908 800333F8 00820018 */  mult       $a0, $v0
/* DC90C 800333FC 3C061B4E */  lui        $a2, 0x1b4e
/* DC910 80033400 34C681B5 */  ori        $a2, $a2, 0x81b5
/* DC914 80033404 000417C3 */  sra        $v0, $a0, 0x1f
/* DC918 80033408 00005810 */  mfhi       $t3
/* DC91C 8003340C 01641821 */  addu       $v1, $t3, $a0
/* DC920 80033410 00031A83 */  sra        $v1, $v1, 0xa
/* DC924 80033414 00621823 */  subu       $v1, $v1, $v0
/* DC928 80033418 000310C0 */  sll        $v0, $v1, 3
/* DC92C 8003341C 00431023 */  subu       $v0, $v0, $v1
/* DC930 80033420 00021140 */  sll        $v0, $v0, 5
/* DC934 80033424 00431021 */  addu       $v0, $v0, $v1
/* DC938 80033428 000210C0 */  sll        $v0, $v0, 3
/* DC93C 8003342C 00822023 */  subu       $a0, $a0, $v0
/* DC940 80033430 00860018 */  mult       $a0, $a2
/* DC944 80033434 000427C3 */  sra        $a0, $a0, 0x1f
/* DC948 80033438 00005810 */  mfhi       $t3
/* DC94C 8003343C 000B1143 */  sra        $v0, $t3, 5
/* DC950 80033440 00441023 */  subu       $v0, $v0, $a0
/* DC954 80033444 00021080 */  sll        $v0, $v0, 2
/* DC958 80033448 00A21021 */  addu       $v0, $a1, $v0
/* DC95C 8003344C 8C4300A4 */  lw         $v1, 0xa4($v0)
/* DC960 80033450 9462001E */  lhu        $v0, 0x1e($v1)
/* DC964 80033454 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC968 80033458 A462001E */  sh         $v0, 0x1e($v1)
/* DC96C 8003345C 8CA401A0 */  lw         $a0, 0x1a0($a1)
/* DC970 80033460 00860018 */  mult       $a0, $a2
/* DC974 80033464 3C068888 */  lui        $a2, 0x8888
/* DC978 80033468 34C68889 */  ori        $a2, $a2, 0x8889
/* DC97C 8003346C 00041FC3 */  sra        $v1, $a0, 0x1f
/* DC980 80033470 00005810 */  mfhi       $t3
/* DC984 80033474 000B1143 */  sra        $v0, $t3, 5
/* DC988 80033478 00431023 */  subu       $v0, $v0, $v1
/* DC98C 8003347C 00021880 */  sll        $v1, $v0, 2
/* DC990 80033480 00621821 */  addu       $v1, $v1, $v0
/* DC994 80033484 00031100 */  sll        $v0, $v1, 4
/* DC998 80033488 00431023 */  subu       $v0, $v0, $v1
/* DC99C 8003348C 00021080 */  sll        $v0, $v0, 2
/* DC9A0 80033490 00822023 */  subu       $a0, $a0, $v0
/* DC9A4 80033494 00860018 */  mult       $a0, $a2
/* DC9A8 80033498 00005810 */  mfhi       $t3
/* DC9AC 8003349C 01641021 */  addu       $v0, $t3, $a0
/* DC9B0 800334A0 00021103 */  sra        $v0, $v0, 4
/* DC9B4 800334A4 000427C3 */  sra        $a0, $a0, 0x1f
/* DC9B8 800334A8 00441023 */  subu       $v0, $v0, $a0
/* DC9BC 800334AC 00021080 */  sll        $v0, $v0, 2
/* DC9C0 800334B0 00A21021 */  addu       $v0, $a1, $v0
/* DC9C4 800334B4 8C4300BC */  lw         $v1, 0xbc($v0)
/* DC9C8 800334B8 9462001E */  lhu        $v0, 0x1e($v1)
/* DC9CC 800334BC 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DC9D0 800334C0 A462001E */  sh         $v0, 0x1e($v1)
/* DC9D4 800334C4 8CA401A0 */  lw         $a0, 0x1a0($a1)
/* DC9D8 800334C8 00860018 */  mult       $a0, $a2
/* DC9DC 800334CC 3C066666 */  lui        $a2, 0x6666
/* DC9E0 800334D0 34C66667 */  ori        $a2, $a2, 0x6667
/* DC9E4 800334D4 000417C3 */  sra        $v0, $a0, 0x1f
/* DC9E8 800334D8 00005810 */  mfhi       $t3
/* DC9EC 800334DC 01641821 */  addu       $v1, $t3, $a0
/* DC9F0 800334E0 00031903 */  sra        $v1, $v1, 4
/* DC9F4 800334E4 00621823 */  subu       $v1, $v1, $v0
/* DC9F8 800334E8 00031100 */  sll        $v0, $v1, 4
/* DC9FC 800334EC 00431023 */  subu       $v0, $v0, $v1
/* DCA00 800334F0 00021040 */  sll        $v0, $v0, 1
/* DCA04 800334F4 00822023 */  subu       $a0, $a0, $v0
/* DCA08 800334F8 00860018 */  mult       $a0, $a2
/* DCA0C 800334FC 000427C3 */  sra        $a0, $a0, 0x1f
/* DCA10 80033500 00005810 */  mfhi       $t3
/* DCA14 80033504 000B1083 */  sra        $v0, $t3, 2
/* DCA18 80033508 00441023 */  subu       $v0, $v0, $a0
/* DCA1C 8003350C 00021080 */  sll        $v0, $v0, 2
/* DCA20 80033510 00A21021 */  addu       $v0, $a1, $v0
/* DCA24 80033514 8C4300E4 */  lw         $v1, 0xe4($v0)
/* DCA28 80033518 9462001E */  lhu        $v0, 0x1e($v1)
/* DCA2C 8003351C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DCA30 80033520 A462001E */  sh         $v0, 0x1e($v1)
/* DCA34 80033524 8CA301A0 */  lw         $v1, 0x1a0($a1)
/* DCA38 80033528 00660018 */  mult       $v1, $a2
/* DCA3C 8003352C 000317C3 */  sra        $v0, $v1, 0x1f
/* DCA40 80033530 00005810 */  mfhi       $t3
/* DCA44 80033534 000B2083 */  sra        $a0, $t3, 2
/* DCA48 80033538 00822023 */  subu       $a0, $a0, $v0
/* DCA4C 8003353C 00041080 */  sll        $v0, $a0, 2
/* DCA50 80033540 00441021 */  addu       $v0, $v0, $a0
/* DCA54 80033544 00021040 */  sll        $v0, $v0, 1
/* DCA58 80033548 00621823 */  subu       $v1, $v1, $v0
/* DCA5C 8003354C 00031880 */  sll        $v1, $v1, 2
/* DCA60 80033550 00A31821 */  addu       $v1, $a1, $v1
/* DCA64 80033554 8C6300F0 */  lw         $v1, 0xf0($v1)
/* DCA68 80033558 9462001E */  lhu        $v0, 0x1e($v1)
/* DCA6C 8003355C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DCA70 80033560 A462001E */  sh         $v0, 0x1e($v1)
/* DCA74 80033564 84A20198 */  lh         $v0, 0x198($a1)
/* DCA78 80033568 1840000E */  blez       $v0, .L800335A4
/* DCA7C 8003356C 00008021 */   addu      $s0, $zero, $zero
.L80033570:
/* DCA80 80033570 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DCA84 80033574 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DCA88 80033578 00101080 */  sll        $v0, $s0, 2
/* DCA8C 8003357C 00431021 */  addu       $v0, $v0, $v1
/* DCA90 80033580 8C440008 */  lw         $a0, 8($v0)
/* DCA94 80033584 0C028A40 */  jal        func_800A2900
/* DCA98 80033588 26100001 */   addiu     $s0, $s0, 1
/* DCA9C 8003358C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DCAA0 80033590 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DCAA4 80033594 84420198 */  lh         $v0, 0x198($v0)
/* DCAA8 80033598 0202102A */  slt        $v0, $s0, $v0
/* DCAAC 8003359C 1440FFF4 */  bnez       $v0, .L80033570
/* DCAB0 800335A0 00000000 */   nop
.L800335A4:
/* DCAB4 800335A4 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DCAB8 800335A8 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DCABC 800335AC 9483019E */  lhu        $v1, 0x19e($a0)
/* DCAC0 800335B0 00001021 */  addu       $v0, $zero, $zero
/* DCAC4 800335B4 24630001 */  addiu      $v1, $v1, 1
/* DCAC8 800335B8 A483019E */  sh         $v1, 0x19e($a0)
/* DCACC 800335BC 8FBF002C */  lw         $ra, 0x2c($sp)
/* DCAD0 800335C0 8FB20028 */  lw         $s2, 0x28($sp)
/* DCAD4 800335C4 8FB10024 */  lw         $s1, 0x24($sp)
/* DCAD8 800335C8 8FB00020 */  lw         $s0, 0x20($sp)
/* DCADC 800335CC D7B40030 */  ldc1       $f20, 0x30($sp)
/* DCAE0 800335D0 03E00008 */  jr         $ra
/* DCAE4 800335D4 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800335D8_DCAE8
/* DCAE8 800335D8 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DCAEC 800335DC 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DCAF0 800335E0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DCAF4 800335E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* DCAF8 800335E8 AFB00020 */  sw         $s0, 0x20($sp)
/* DCAFC 800335EC F7B60030 */  sdc1       $f22, 0x30($sp)
/* DCB00 800335F0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* DCB04 800335F4 8483019E */  lh         $v1, 0x19e($a0)
/* DCB08 800335F8 240200B4 */  addiu      $v0, $zero, 0xb4
/* DCB0C 800335FC 1062003A */  beq        $v1, $v0, .L800336E8
/* DCB10 80033600 286200B5 */   slti      $v0, $v1, 0xb5
/* DCB14 80033604 50400005 */  beql       $v0, $zero, .L8003361C
/* DCB18 80033608 240200F0 */   addiu     $v0, $zero, 0xf0
/* DCB1C 8003360C 10600007 */  beqz       $v1, .L8003362C
/* DCB20 80033610 00002821 */   addu      $a1, $zero, $zero
/* DCB24 80033614 0800CDC3 */  j          .L8003370C
/* DCB28 80033618 00000000 */   nop
.L8003361C:
/* DCB2C 8003361C 10620038 */  beq        $v1, $v0, .L80033700
/* DCB30 80033620 00000000 */   nop
/* DCB34 80033624 0800CDC3 */  j          .L8003370C
/* DCB38 80033628 00000000 */   nop
.L8003362C:
/* DCB3C 8003362C 8C820008 */  lw         $v0, 8($a0)
/* DCB40 80033630 8C420014 */  lw         $v0, 0x14($v0)
/* DCB44 80033634 00051840 */  sll        $v1, $a1, 1
/* DCB48 80033638 00621021 */  addu       $v0, $v1, $v0
/* DCB4C 8003363C A440000C */  sh         $zero, 0xc($v0)
/* DCB50 80033640 8C820008 */  lw         $v0, 8($a0)
/* DCB54 80033644 8C420014 */  lw         $v0, 0x14($v0)
/* DCB58 80033648 00621021 */  addu       $v0, $v1, $v0
/* DCB5C 8003364C A4400016 */  sh         $zero, 0x16($v0)
/* DCB60 80033650 8C820010 */  lw         $v0, 0x10($a0)
/* DCB64 80033654 8C420014 */  lw         $v0, 0x14($v0)
/* DCB68 80033658 00621021 */  addu       $v0, $v1, $v0
/* DCB6C 8003365C A440000C */  sh         $zero, 0xc($v0)
/* DCB70 80033660 8C820010 */  lw         $v0, 0x10($a0)
/* DCB74 80033664 8C420014 */  lw         $v0, 0x14($v0)
/* DCB78 80033668 00621021 */  addu       $v0, $v1, $v0
/* DCB7C 8003366C A4400016 */  sh         $zero, 0x16($v0)
/* DCB80 80033670 8C82000C */  lw         $v0, 0xc($a0)
/* DCB84 80033674 8C420014 */  lw         $v0, 0x14($v0)
/* DCB88 80033678 00621021 */  addu       $v0, $v1, $v0
/* DCB8C 8003367C A4400002 */  sh         $zero, 2($v0)
/* DCB90 80033680 8C82000C */  lw         $v0, 0xc($a0)
/* DCB94 80033684 8C420014 */  lw         $v0, 0x14($v0)
/* DCB98 80033688 00621021 */  addu       $v0, $v1, $v0
/* DCB9C 8003368C A4400016 */  sh         $zero, 0x16($v0)
/* DCBA0 80033690 8C820014 */  lw         $v0, 0x14($a0)
/* DCBA4 80033694 8C420014 */  lw         $v0, 0x14($v0)
/* DCBA8 80033698 00621021 */  addu       $v0, $v1, $v0
/* DCBAC 8003369C A4400002 */  sh         $zero, 2($v0)
/* DCBB0 800336A0 8C820014 */  lw         $v0, 0x14($a0)
/* DCBB4 800336A4 8C420014 */  lw         $v0, 0x14($v0)
/* DCBB8 800336A8 24A50001 */  addiu      $a1, $a1, 1
/* DCBBC 800336AC 00621821 */  addu       $v1, $v1, $v0
/* DCBC0 800336B0 28A20005 */  slti       $v0, $a1, 5
/* DCBC4 800336B4 1440FFDD */  bnez       $v0, .L8003362C
/* DCBC8 800336B8 A4600016 */   sh        $zero, 0x16($v1)
/* DCBCC 800336BC 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DCBD0 800336C0 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DCBD4 800336C4 24040001 */  addiu      $a0, $zero, 1
/* DCBD8 800336C8 24020020 */  addiu      $v0, $zero, 0x20
/* DCBDC 800336CC AC6201A8 */  sw         $v0, 0x1a8($v1)
/* DCBE0 800336D0 AC6201A4 */  sw         $v0, 0x1a4($v1)
/* DCBE4 800336D4 AC6201A0 */  sw         $v0, 0x1a0($v1)
/* DCBE8 800336D8 0C02A5AF */  jal        func_800A96BC
/* DCBEC 800336DC AC6001AC */   sw        $zero, 0x1ac($v1)
/* DCBF0 800336E0 0800CDC3 */  j          .L8003370C
/* DCBF4 800336E4 00000000 */   nop
.L800336E8:
/* DCBF8 800336E8 3C048017 */  lui        $a0, %hi(D_8016D168)
/* DCBFC 800336EC 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* DCC00 800336F0 0C02A5C1 */  jal        func_800A9704
/* DCC04 800336F4 00042040 */   sll       $a0, $a0, 1
/* DCC08 800336F8 0800CDC3 */  j          .L8003370C
/* DCC0C 800336FC 00000000 */   nop
.L80033700:
/* DCC10 80033700 9082019C */  lbu        $v0, 0x19c($a0)
/* DCC14 80033704 24420001 */  addiu      $v0, $v0, 1
/* DCC18 80033708 A082019C */  sb         $v0, 0x19c($a0)
.L8003370C:
/* DCC1C 8003370C 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DCC20 80033710 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DCC24 80033714 8483019E */  lh         $v1, 0x19e($a0)
/* DCC28 80033718 286200B4 */  slti       $v0, $v1, 0xb4
/* DCC2C 8003371C 104000A6 */  beqz       $v0, .L800339B8
/* DCC30 80033720 00002821 */   addu      $a1, $zero, $zero
/* DCC34 80033724 3C018007 */  lui        $at, %hi(D_80069D28)
/* DCC38 80033728 D4229D28 */  ldc1       $f2, %lo(D_80069D28)($at)
/* DCC3C 8003372C 44830000 */  mtc1       $v1, $f0
/* DCC40 80033730 00000000 */  nop
/* DCC44 80033734 46800021 */  cvt.d.w    $f0, $f0
/* DCC48 80033738 4620103C */  c.lt.d     $f2, $f0
/* DCC4C 8003373C 00000000 */  nop
/* DCC50 80033740 4500004D */  bc1f       .L80033878
/* DCC54 80033744 00000000 */   nop
/* DCC58 80033748 8C8201A4 */  lw         $v0, 0x1a4($a0)
/* DCC5C 8003374C 10400035 */  beqz       $v0, .L80033824
/* DCC60 80033750 240500FF */   addiu     $a1, $zero, 0xff
/* DCC64 80033754 8C830008 */  lw         $v1, 8($a0)
/* DCC68 80033758 9462001E */  lhu        $v0, 0x1e($v1)
/* DCC6C 8003375C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DCC70 80033760 A462001E */  sh         $v0, 0x1e($v1)
/* DCC74 80033764 8C830010 */  lw         $v1, 0x10($a0)
/* DCC78 80033768 9462001E */  lhu        $v0, 0x1e($v1)
/* DCC7C 8003376C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DCC80 80033770 A462001E */  sh         $v0, 0x1e($v1)
/* DCC84 80033774 8C8201A4 */  lw         $v0, 0x1a4($a0)
/* DCC88 80033778 000210C0 */  sll        $v0, $v0, 3
/* DCC8C 8003377C 00021023 */  negu       $v0, $v0
/* DCC90 80033780 304200FF */  andi       $v0, $v0, 0xff
/* DCC94 80033784 AFA20010 */  sw         $v0, 0x10($sp)
/* DCC98 80033788 8C840008 */  lw         $a0, 8($a0)
/* DCC9C 8003378C 240600FF */  addiu      $a2, $zero, 0xff
/* DCCA0 80033790 0C028E41 */  jal        func_800A3904
/* DCCA4 80033794 240700FF */   addiu     $a3, $zero, 0xff
/* DCCA8 80033798 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DCCAC 8003379C 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DCCB0 800337A0 8C8301A4 */  lw         $v1, 0x1a4($a0)
/* DCCB4 800337A4 240500FF */  addiu      $a1, $zero, 0xff
/* DCCB8 800337A8 2402FF80 */  addiu      $v0, $zero, -0x80
/* DCCBC 800337AC 00031880 */  sll        $v1, $v1, 2
/* DCCC0 800337B0 00431023 */  subu       $v0, $v0, $v1
/* DCCC4 800337B4 304200FF */  andi       $v0, $v0, 0xff
/* DCCC8 800337B8 AFA20010 */  sw         $v0, 0x10($sp)
/* DCCCC 800337BC 8C840010 */  lw         $a0, 0x10($a0)
/* DCCD0 800337C0 240600FF */  addiu      $a2, $zero, 0xff
/* DCCD4 800337C4 0C028E41 */  jal        func_800A3904
/* DCCD8 800337C8 240700FF */   addiu     $a3, $zero, 0xff
/* DCCDC 800337CC 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DCCE0 800337D0 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DCCE4 800337D4 3C013C80 */  lui        $at, 0x3c80
/* DCCE8 800337D8 44811000 */  mtc1       $at, $f2
/* DCCEC 800337DC C44001A4 */  lwc1       $f0, 0x1a4($v0)
/* DCCF0 800337E0 46800020 */  cvt.s.w    $f0, $f0
/* DCCF4 800337E4 46020002 */  mul.s      $f0, $f0, $f2
/* DCCF8 800337E8 3C013F80 */  lui        $at, 0x3f80
/* DCCFC 800337EC 44811000 */  mtc1       $at, $f2
/* DCD00 800337F0 00000000 */  nop
/* DCD04 800337F4 46020000 */  add.s      $f0, $f0, $f2
/* DCD08 800337F8 8C440010 */  lw         $a0, 0x10($v0)
/* DCD0C 800337FC 44060000 */  mfc1       $a2, $f0
/* DCD10 80033800 00002821 */  addu       $a1, $zero, $zero
/* DCD14 80033804 0C02915B */  jal        func_800A456C
/* DCD18 80033808 00C03821 */   addu      $a3, $a2, $zero
/* DCD1C 8003380C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DCD20 80033810 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DCD24 80033814 8C6201A4 */  lw         $v0, 0x1a4($v1)
/* DCD28 80033818 2442FFFF */  addiu      $v0, $v0, -1
/* DCD2C 8003381C 0800CE1C */  j          .L80033870
/* DCD30 80033820 AC6201A4 */   sw        $v0, 0x1a4($v1)
.L80033824:
/* DCD34 80033824 8C830008 */  lw         $v1, 8($a0)
/* DCD38 80033828 9462001E */  lhu        $v0, 0x1e($v1)
/* DCD3C 8003382C 34420400 */  ori        $v0, $v0, 0x400
/* DCD40 80033830 A462001E */  sh         $v0, 0x1e($v1)
/* DCD44 80033834 240200FF */  addiu      $v0, $zero, 0xff
/* DCD48 80033838 AFA20010 */  sw         $v0, 0x10($sp)
/* DCD4C 8003383C 8C840010 */  lw         $a0, 0x10($a0)
/* DCD50 80033840 240600FF */  addiu      $a2, $zero, 0xff
/* DCD54 80033844 0C028E41 */  jal        func_800A3904
/* DCD58 80033848 240700FF */   addiu     $a3, $zero, 0xff
/* DCD5C 8003384C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DCD60 80033850 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DCD64 80033854 3C013F80 */  lui        $at, 0x3f80
/* DCD68 80033858 44810000 */  mtc1       $at, $f0
/* DCD6C 8003385C 8C440010 */  lw         $a0, 0x10($v0)
/* DCD70 80033860 44060000 */  mfc1       $a2, $f0
/* DCD74 80033864 00002821 */  addu       $a1, $zero, $zero
/* DCD78 80033868 0C02915B */  jal        func_800A456C
/* DCD7C 8003386C 00C03821 */   addu      $a3, $a2, $zero
.L80033870:
/* DCD80 80033870 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DCD84 80033874 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
.L80033878:
/* DCD88 80033878 8482019E */  lh         $v0, 0x19e($a0)
/* DCD8C 8003387C 2842001F */  slti       $v0, $v0, 0x1f
/* DCD90 80033880 1440006C */  bnez       $v0, .L80033A34
/* DCD94 80033884 00000000 */   nop
/* DCD98 80033888 8C8201A8 */  lw         $v0, 0x1a8($a0)
/* DCD9C 8003388C 10400035 */  beqz       $v0, .L80033964
/* DCDA0 80033890 240500FF */   addiu     $a1, $zero, 0xff
/* DCDA4 80033894 8C83000C */  lw         $v1, 0xc($a0)
/* DCDA8 80033898 9462001E */  lhu        $v0, 0x1e($v1)
/* DCDAC 8003389C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DCDB0 800338A0 A462001E */  sh         $v0, 0x1e($v1)
/* DCDB4 800338A4 8C830014 */  lw         $v1, 0x14($a0)
/* DCDB8 800338A8 9462001E */  lhu        $v0, 0x1e($v1)
/* DCDBC 800338AC 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DCDC0 800338B0 A462001E */  sh         $v0, 0x1e($v1)
/* DCDC4 800338B4 8C8201A8 */  lw         $v0, 0x1a8($a0)
/* DCDC8 800338B8 000210C0 */  sll        $v0, $v0, 3
/* DCDCC 800338BC 00021023 */  negu       $v0, $v0
/* DCDD0 800338C0 304200FF */  andi       $v0, $v0, 0xff
/* DCDD4 800338C4 AFA20010 */  sw         $v0, 0x10($sp)
/* DCDD8 800338C8 8C84000C */  lw         $a0, 0xc($a0)
/* DCDDC 800338CC 240600FF */  addiu      $a2, $zero, 0xff
/* DCDE0 800338D0 0C028E41 */  jal        func_800A3904
/* DCDE4 800338D4 240700FF */   addiu     $a3, $zero, 0xff
/* DCDE8 800338D8 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DCDEC 800338DC 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DCDF0 800338E0 8C8301A8 */  lw         $v1, 0x1a8($a0)
/* DCDF4 800338E4 240500FF */  addiu      $a1, $zero, 0xff
/* DCDF8 800338E8 2402FF80 */  addiu      $v0, $zero, -0x80
/* DCDFC 800338EC 00031880 */  sll        $v1, $v1, 2
/* DCE00 800338F0 00431023 */  subu       $v0, $v0, $v1
/* DCE04 800338F4 304200FF */  andi       $v0, $v0, 0xff
/* DCE08 800338F8 AFA20010 */  sw         $v0, 0x10($sp)
/* DCE0C 800338FC 8C840014 */  lw         $a0, 0x14($a0)
/* DCE10 80033900 240600FF */  addiu      $a2, $zero, 0xff
/* DCE14 80033904 0C028E41 */  jal        func_800A3904
/* DCE18 80033908 240700FF */   addiu     $a3, $zero, 0xff
/* DCE1C 8003390C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DCE20 80033910 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DCE24 80033914 3C013C80 */  lui        $at, 0x3c80
/* DCE28 80033918 44811000 */  mtc1       $at, $f2
/* DCE2C 8003391C C44001A8 */  lwc1       $f0, 0x1a8($v0)
/* DCE30 80033920 46800020 */  cvt.s.w    $f0, $f0
/* DCE34 80033924 46020002 */  mul.s      $f0, $f0, $f2
/* DCE38 80033928 3C013F80 */  lui        $at, 0x3f80
/* DCE3C 8003392C 44811000 */  mtc1       $at, $f2
/* DCE40 80033930 00000000 */  nop
/* DCE44 80033934 46020000 */  add.s      $f0, $f0, $f2
/* DCE48 80033938 8C440014 */  lw         $a0, 0x14($v0)
/* DCE4C 8003393C 44060000 */  mfc1       $a2, $f0
/* DCE50 80033940 00002821 */  addu       $a1, $zero, $zero
/* DCE54 80033944 0C02915B */  jal        func_800A456C
/* DCE58 80033948 00C03821 */   addu      $a3, $a2, $zero
/* DCE5C 8003394C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DCE60 80033950 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DCE64 80033954 8C6201A8 */  lw         $v0, 0x1a8($v1)
/* DCE68 80033958 2442FFFF */  addiu      $v0, $v0, -1
/* DCE6C 8003395C 0800CE8D */  j          .L80033A34
/* DCE70 80033960 AC6201A8 */   sw        $v0, 0x1a8($v1)
.L80033964:
/* DCE74 80033964 8C83000C */  lw         $v1, 0xc($a0)
/* DCE78 80033968 9462001E */  lhu        $v0, 0x1e($v1)
/* DCE7C 8003396C 34420400 */  ori        $v0, $v0, 0x400
/* DCE80 80033970 A462001E */  sh         $v0, 0x1e($v1)
/* DCE84 80033974 240200FF */  addiu      $v0, $zero, 0xff
/* DCE88 80033978 AFA20010 */  sw         $v0, 0x10($sp)
/* DCE8C 8003397C 8C840014 */  lw         $a0, 0x14($a0)
/* DCE90 80033980 240600FF */  addiu      $a2, $zero, 0xff
/* DCE94 80033984 0C028E41 */  jal        func_800A3904
/* DCE98 80033988 240700FF */   addiu     $a3, $zero, 0xff
/* DCE9C 8003398C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DCEA0 80033990 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DCEA4 80033994 3C013F80 */  lui        $at, 0x3f80
/* DCEA8 80033998 44810000 */  mtc1       $at, $f0
/* DCEAC 8003399C 8C440014 */  lw         $a0, 0x14($v0)
/* DCEB0 800339A0 44060000 */  mfc1       $a2, $f0
/* DCEB4 800339A4 00002821 */  addu       $a1, $zero, $zero
/* DCEB8 800339A8 0C02915B */  jal        func_800A456C
/* DCEBC 800339AC 00C03821 */   addu      $a3, $a2, $zero
/* DCEC0 800339B0 0800CE8D */  j          .L80033A34
/* DCEC4 800339B4 00000000 */   nop
.L800339B8:
/* DCEC8 800339B8 3C013CB6 */  lui        $at, 0x3cb6
/* DCECC 800339BC 34210B61 */  ori        $at, $at, 0xb61
/* DCED0 800339C0 4481B000 */  mtc1       $at, $f22
/* DCED4 800339C4 C48001AC */  lwc1       $f0, 0x1ac($a0)
/* DCED8 800339C8 46800020 */  cvt.s.w    $f0, $f0
/* DCEDC 800339CC 46160002 */  mul.s      $f0, $f0, $f22
/* DCEE0 800339D0 3C013F80 */  lui        $at, 0x3f80
/* DCEE4 800339D4 4481A000 */  mtc1       $at, $f20
/* DCEE8 800339D8 00000000 */  nop
/* DCEEC 800339DC 46140000 */  add.s      $f0, $f0, $f20
/* DCEF0 800339E0 8C840010 */  lw         $a0, 0x10($a0)
/* DCEF4 800339E4 44060000 */  mfc1       $a2, $f0
/* DCEF8 800339E8 00000000 */  nop
/* DCEFC 800339EC 0C02915B */  jal        func_800A456C
/* DCF00 800339F0 00C03821 */   addu      $a3, $a2, $zero
/* DCF04 800339F4 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DCF08 800339F8 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DCF0C 800339FC C44001AC */  lwc1       $f0, 0x1ac($v0)
/* DCF10 80033A00 46800020 */  cvt.s.w    $f0, $f0
/* DCF14 80033A04 46160002 */  mul.s      $f0, $f0, $f22
/* DCF18 80033A08 46140000 */  add.s      $f0, $f0, $f20
/* DCF1C 80033A0C 8C440014 */  lw         $a0, 0x14($v0)
/* DCF20 80033A10 44060000 */  mfc1       $a2, $f0
/* DCF24 80033A14 00002821 */  addu       $a1, $zero, $zero
/* DCF28 80033A18 0C02915B */  jal        func_800A456C
/* DCF2C 80033A1C 00C03821 */   addu      $a3, $a2, $zero
/* DCF30 80033A20 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DCF34 80033A24 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DCF38 80033A28 8C6201AC */  lw         $v0, 0x1ac($v1)
/* DCF3C 80033A2C 24420001 */  addiu      $v0, $v0, 1
/* DCF40 80033A30 AC6201AC */  sw         $v0, 0x1ac($v1)
.L80033A34:
/* DCF44 80033A34 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DCF48 80033A38 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DCF4C 80033A3C 84620198 */  lh         $v0, 0x198($v1)
/* DCF50 80033A40 1840000E */  blez       $v0, .L80033A7C
/* DCF54 80033A44 00008021 */   addu      $s0, $zero, $zero
/* DCF58 80033A48 00101080 */  sll        $v0, $s0, 2
.L80033A4C:
/* DCF5C 80033A4C 00431021 */  addu       $v0, $v0, $v1
/* DCF60 80033A50 8C440008 */  lw         $a0, 8($v0)
/* DCF64 80033A54 0C028A40 */  jal        func_800A2900
/* DCF68 80033A58 26100001 */   addiu     $s0, $s0, 1
/* DCF6C 80033A5C 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DCF70 80033A60 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DCF74 80033A64 84620198 */  lh         $v0, 0x198($v1)
/* DCF78 80033A68 0202102A */  slt        $v0, $s0, $v0
/* DCF7C 80033A6C 1440FFF7 */  bnez       $v0, .L80033A4C
/* DCF80 80033A70 00101080 */   sll       $v0, $s0, 2
/* DCF84 80033A74 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DCF88 80033A78 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
.L80033A7C:
/* DCF8C 80033A7C 9462019E */  lhu        $v0, 0x19e($v1)
/* DCF90 80033A80 24420001 */  addiu      $v0, $v0, 1
/* DCF94 80033A84 A462019E */  sh         $v0, 0x19e($v1)
/* DCF98 80033A88 00001021 */  addu       $v0, $zero, $zero
/* DCF9C 80033A8C 8FBF0024 */  lw         $ra, 0x24($sp)
/* DCFA0 80033A90 8FB00020 */  lw         $s0, 0x20($sp)
/* DCFA4 80033A94 D7B60030 */  ldc1       $f22, 0x30($sp)
/* DCFA8 80033A98 D7B40028 */  ldc1       $f20, 0x28($sp)
/* DCFAC 80033A9C 03E00008 */  jr         $ra
/* DCFB0 80033AA0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80033AA4_DCFB4
/* DCFB4 80033AA4 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DCFB8 80033AA8 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DCFBC 80033AAC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* DCFC0 80033AB0 AFBF002C */  sw         $ra, 0x2c($sp)
/* DCFC4 80033AB4 AFB20028 */  sw         $s2, 0x28($sp)
/* DCFC8 80033AB8 AFB10024 */  sw         $s1, 0x24($sp)
/* DCFCC 80033ABC AFB00020 */  sw         $s0, 0x20($sp)
/* DCFD0 80033AC0 F7B40030 */  sdc1       $f20, 0x30($sp)
/* DCFD4 80033AC4 8442019E */  lh         $v0, 0x19e($v0)
/* DCFD8 80033AC8 14400013 */  bnez       $v0, .L80033B18
/* DCFDC 80033ACC 00000000 */   nop
/* DCFE0 80033AD0 24110001 */  addiu      $s1, $zero, 1
.L80033AD4:
/* DCFE4 80033AD4 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DCFE8 80033AD8 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DCFEC 80033ADC 24050200 */  addiu      $a1, $zero, 0x200
/* DCFF0 80033AE0 00111880 */  sll        $v1, $s1, 2
/* DCFF4 80033AE4 00621821 */  addu       $v1, $v1, $v0
/* DCFF8 80033AE8 8C640008 */  lw         $a0, 8($v1)
/* DCFFC 80033AEC 24060400 */  addiu      $a2, $zero, 0x400
/* DD000 80033AF0 0C0292D4 */  jal        func_800A4B50
/* DD004 80033AF4 26310001 */   addiu     $s1, $s1, 1
/* DD008 80033AF8 2A220009 */  slti       $v0, $s1, 9
/* DD00C 80033AFC 1440FFF5 */  bnez       $v0, .L80033AD4
/* DD010 80033B00 24040001 */   addiu     $a0, $zero, 1
/* DD014 80033B04 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD018 80033B08 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD01C 80033B0C AC4001F0 */  sw         $zero, 0x1f0($v0)
/* DD020 80033B10 0C02A5AF */  jal        func_800A96BC
/* DD024 80033B14 AC4001F4 */   sw        $zero, 0x1f4($v0)
.L80033B18:
/* DD028 80033B18 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD02C 80033B1C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD030 80033B20 3C013E4C */  lui        $at, 0x3e4c
/* DD034 80033B24 3421CCCD */  ori        $at, $at, 0xcccd
/* DD038 80033B28 44810000 */  mtc1       $at, $f0
/* DD03C 80033B2C C44601F0 */  lwc1       $f6, 0x1f0($v0)
/* DD040 80033B30 46003080 */  add.s      $f2, $f6, $f0
/* DD044 80033B34 C45401F4 */  lwc1       $f20, 0x1f4($v0)
/* DD048 80033B38 3C014100 */  lui        $at, 0x4100
/* DD04C 80033B3C 44812000 */  mtc1       $at, $f4
/* DD050 80033B40 4600A000 */  add.s      $f0, $f20, $f0
/* DD054 80033B44 E44201F0 */  swc1       $f2, 0x1f0($v0)
/* DD058 80033B48 C44201F0 */  lwc1       $f2, 0x1f0($v0)
/* DD05C 80033B4C 4602203E */  c.le.s     $f4, $f2
/* DD060 80033B50 00000000 */  nop
/* DD064 80033B54 00000000 */  nop
/* DD068 80033B58 45000003 */  bc1f       .L80033B68
/* DD06C 80033B5C E44001F4 */   swc1      $f0, 0x1f4($v0)
/* DD070 80033B60 0800CEE1 */  j          .L80033B84
/* DD074 80033B64 46041001 */   sub.s     $f0, $f2, $f4
.L80033B68:
/* DD078 80033B68 44800000 */  mtc1       $zero, $f0
/* DD07C 80033B6C 00000000 */  nop
/* DD080 80033B70 4600103C */  c.lt.s     $f2, $f0
/* DD084 80033B74 00000000 */  nop
/* DD088 80033B78 45000003 */  bc1f       .L80033B88
/* DD08C 80033B7C 00000000 */   nop
/* DD090 80033B80 46041000 */  add.s      $f0, $f2, $f4
.L80033B84:
/* DD094 80033B84 E44001F0 */  swc1       $f0, 0x1f0($v0)
.L80033B88:
/* DD098 80033B88 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD09C 80033B8C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD0A0 80033B90 3C014150 */  lui        $at, 0x4150
/* DD0A4 80033B94 44811000 */  mtc1       $at, $f2
/* DD0A8 80033B98 C44001F4 */  lwc1       $f0, 0x1f4($v0)
/* DD0AC 80033B9C 4600103C */  c.lt.s     $f2, $f0
/* DD0B0 80033BA0 00000000 */  nop
/* DD0B4 80033BA4 00000000 */  nop
/* DD0B8 80033BA8 45030008 */  bc1tl      .L80033BCC
/* DD0BC 80033BAC E44201F4 */   swc1      $f2, 0x1f4($v0)
/* DD0C0 80033BB0 44801000 */  mtc1       $zero, $f2
/* DD0C4 80033BB4 00000000 */  nop
/* DD0C8 80033BB8 4602003C */  c.lt.s     $f0, $f2
/* DD0CC 80033BBC 00000000 */  nop
/* DD0D0 80033BC0 00000000 */  nop
/* DD0D4 80033BC4 45030001 */  bc1tl      .L80033BCC
/* DD0D8 80033BC8 E44201F4 */   swc1      $f2, 0x1f4($v0)
.L80033BCC:
/* DD0DC 80033BCC 3C058006 */  lui        $a1, %hi(D_80067E90)
/* DD0E0 80033BD0 8CA57E90 */  lw         $a1, %lo(D_80067E90)($a1)
/* DD0E4 80033BD4 4600300D */  trunc.w.s  $f0, $f6
/* DD0E8 80033BD8 44040000 */  mfc1       $a0, $f0
/* DD0EC 80033BDC 00000000 */  nop
/* DD0F0 80033BE0 00041080 */  sll        $v0, $a0, 2
/* DD0F4 80033BE4 00A21021 */  addu       $v0, $a1, $v0
/* DD0F8 80033BE8 8C43000C */  lw         $v1, 0xc($v0)
/* DD0FC 80033BEC 9462001E */  lhu        $v0, 0x1e($v1)
/* DD100 80033BF0 34420400 */  ori        $v0, $v0, 0x400
/* DD104 80033BF4 A462001E */  sh         $v0, 0x1e($v1)
/* DD108 80033BF8 C4A001F0 */  lwc1       $f0, 0x1f0($a1)
/* DD10C 80033BFC 4600008D */  trunc.w.s  $f2, $f0
/* DD110 80033C00 44021000 */  mfc1       $v0, $f2
/* DD114 80033C04 00000000 */  nop
/* DD118 80033C08 00021080 */  sll        $v0, $v0, 2
/* DD11C 80033C0C 00A21021 */  addu       $v0, $a1, $v0
/* DD120 80033C10 8C43000C */  lw         $v1, 0xc($v0)
/* DD124 80033C14 9462001E */  lhu        $v0, 0x1e($v1)
/* DD128 80033C18 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DD12C 80033C1C A462001E */  sh         $v0, 0x1e($v1)
/* DD130 80033C20 C4A001F0 */  lwc1       $f0, 0x1f0($a1)
/* DD134 80033C24 4600008D */  trunc.w.s  $f2, $f0
/* DD138 80033C28 44021000 */  mfc1       $v0, $f2
/* DD13C 80033C2C 00000000 */  nop
/* DD140 80033C30 1082000D */  beq        $a0, $v0, .L80033C68
/* DD144 80033C34 00000000 */   nop
/* DD148 80033C38 8CA2002C */  lw         $v0, 0x2c($a1)
/* DD14C 80033C3C 8C440000 */  lw         $a0, ($v0)
/* DD150 80033C40 94830000 */  lhu        $v1, ($a0)
/* DD154 80033C44 24630140 */  addiu      $v1, $v1, 0x140
/* DD158 80033C48 28622400 */  slti       $v0, $v1, 0x2400
/* DD15C 80033C4C 14400003 */  bnez       $v0, .L80033C5C
/* DD160 80033C50 00000000 */   nop
/* DD164 80033C54 0800CF19 */  j          .L80033C64
/* DD168 80033C58 2463DC00 */   addiu     $v1, $v1, -0x2400
.L80033C5C:
/* DD16C 80033C5C 04620001 */  bltzl      $v1, .L80033C64
/* DD170 80033C60 24632400 */   addiu     $v1, $v1, 0x2400
.L80033C64:
/* DD174 80033C64 A4830000 */  sh         $v1, ($a0)
.L80033C68:
/* DD178 80033C68 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD17C 80033C6C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD180 80033C70 C44001F4 */  lwc1       $f0, 0x1f4($v0)
/* DD184 80033C74 4600A08D */  trunc.w.s  $f2, $f20
/* DD188 80033C78 44031000 */  mfc1       $v1, $f2
/* DD18C 80033C7C 4600008D */  trunc.w.s  $f2, $f0
/* DD190 80033C80 44021000 */  mfc1       $v0, $f2
/* DD194 80033C84 00000000 */  nop
/* DD198 80033C88 10620023 */  beq        $v1, $v0, .L80033D18
/* DD19C 80033C8C 2411000A */   addiu     $s1, $zero, 0xa
.L80033C90:
/* DD1A0 80033C90 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD1A4 80033C94 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD1A8 80033C98 00111880 */  sll        $v1, $s1, 2
/* DD1AC 80033C9C 00621821 */  addu       $v1, $v1, $v0
/* DD1B0 80033CA0 8C640008 */  lw         $a0, 8($v1)
/* DD1B4 80033CA4 0C028D30 */  jal        func_800A34C0
/* DD1B8 80033CA8 26310001 */   addiu     $s1, $s1, 1
/* DD1BC 80033CAC 2A22000E */  slti       $v0, $s1, 0xe
/* DD1C0 80033CB0 1440FFF7 */  bnez       $v0, .L80033C90
/* DD1C4 80033CB4 3412F712 */   ori       $s2, $zero, 0xf712
/* DD1C8 80033CB8 2411000A */  addiu      $s1, $zero, 0xa
/* DD1CC 80033CBC 4600A00D */  trunc.w.s  $f0, $f20
/* DD1D0 80033CC0 44020000 */  mfc1       $v0, $f0
/* DD1D4 80033CC4 00000000 */  nop
/* DD1D8 80033CC8 245000B0 */  addiu      $s0, $v0, 0xb0
/* DD1DC 80033CCC 3204FFFF */  andi       $a0, $s0, 0xffff
.L80033CD0:
/* DD1E0 80033CD0 24050006 */  addiu      $a1, $zero, 6
/* DD1E4 80033CD4 0C028CB7 */  jal        func_800A32DC
/* DD1E8 80033CD8 00003021 */   addu      $a2, $zero, $zero
/* DD1EC 80033CDC 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DD1F0 80033CE0 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DD1F4 80033CE4 00111880 */  sll        $v1, $s1, 2
/* DD1F8 80033CE8 00641821 */  addu       $v1, $v1, $a0
/* DD1FC 80033CEC AC620008 */  sw         $v0, 8($v1)
/* DD200 80033CF0 9443001E */  lhu        $v1, 0x1e($v0)
/* DD204 80033CF4 34630044 */  ori        $v1, $v1, 0x44
/* DD208 80033CF8 A443001E */  sh         $v1, 0x1e($v0)
/* DD20C 80033CFC 8C820030 */  lw         $v0, 0x30($a0)
/* DD210 80033D00 8C420014 */  lw         $v0, 0x14($v0)
/* DD214 80033D04 26310001 */  addiu      $s1, $s1, 1
/* DD218 80033D08 A4520000 */  sh         $s2, ($v0)
/* DD21C 80033D0C 2A22000E */  slti       $v0, $s1, 0xe
/* DD220 80033D10 1440FFEF */  bnez       $v0, .L80033CD0
/* DD224 80033D14 3204FFFF */   andi      $a0, $s0, 0xffff
.L80033D18:
/* DD228 80033D18 2411000A */  addiu      $s1, $zero, 0xa
/* DD22C 80033D1C 24120001 */  addiu      $s2, $zero, 1
.L80033D20:
/* DD230 80033D20 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD234 80033D24 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD238 80033D28 00118080 */  sll        $s0, $s1, 2
/* DD23C 80033D2C 02031821 */  addu       $v1, $s0, $v1
/* DD240 80033D30 8C620008 */  lw         $v0, 8($v1)
/* DD244 80033D34 8C420000 */  lw         $v0, ($v0)
/* DD248 80033D38 A452001A */  sh         $s2, 0x1a($v0)
/* DD24C 80033D3C 8C640008 */  lw         $a0, 8($v1)
/* DD250 80033D40 24050040 */  addiu      $a1, $zero, 0x40
/* DD254 80033D44 0C028D89 */  jal        func_800A3624
/* DD258 80033D48 24060040 */   addiu     $a2, $zero, 0x40
/* DD25C 80033D4C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD260 80033D50 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD264 80033D54 26310001 */  addiu      $s1, $s1, 1
/* DD268 80033D58 02028021 */  addu       $s0, $s0, $v0
/* DD26C 80033D5C 8E040008 */  lw         $a0, 8($s0)
/* DD270 80033D60 24050400 */  addiu      $a1, $zero, 0x400
/* DD274 80033D64 0C0292D4 */  jal        func_800A4B50
/* DD278 80033D68 2406025A */   addiu     $a2, $zero, 0x25a
/* DD27C 80033D6C 2A22000C */  slti       $v0, $s1, 0xc
/* DD280 80033D70 1440FFEB */  bnez       $v0, .L80033D20
/* DD284 80033D74 00000000 */   nop
/* DD288 80033D78 2411000C */  addiu      $s1, $zero, 0xc
.L80033D7C:
/* DD28C 80033D7C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD290 80033D80 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD294 80033D84 00118080 */  sll        $s0, $s1, 2
/* DD298 80033D88 02021021 */  addu       $v0, $s0, $v0
/* DD29C 80033D8C 8C440008 */  lw         $a0, 8($v0)
/* DD2A0 80033D90 24050280 */  addiu      $a1, $zero, 0x280
/* DD2A4 80033D94 0C028D89 */  jal        func_800A3624
/* DD2A8 80033D98 24060040 */   addiu     $a2, $zero, 0x40
/* DD2AC 80033D9C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD2B0 80033DA0 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD2B4 80033DA4 26310001 */  addiu      $s1, $s1, 1
/* DD2B8 80033DA8 02028021 */  addu       $s0, $s0, $v0
/* DD2BC 80033DAC 8E040008 */  lw         $a0, 8($s0)
/* DD2C0 80033DB0 24050400 */  addiu      $a1, $zero, 0x400
/* DD2C4 80033DB4 0C0292D4 */  jal        func_800A4B50
/* DD2C8 80033DB8 2406025A */   addiu     $a2, $zero, 0x25a
/* DD2CC 80033DBC 2A22000E */  slti       $v0, $s1, 0xe
/* DD2D0 80033DC0 1440FFEE */  bnez       $v0, .L80033D7C
/* DD2D4 80033DC4 3404F713 */   ori       $a0, $zero, 0xf713
/* DD2D8 80033DC8 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD2DC 80033DCC 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD2E0 80033DD0 8C620030 */  lw         $v0, 0x30($v1)
/* DD2E4 80033DD4 8C420014 */  lw         $v0, 0x14($v0)
/* DD2E8 80033DD8 A4440002 */  sh         $a0, 2($v0)
/* DD2EC 80033DDC 8C620034 */  lw         $v0, 0x34($v1)
/* DD2F0 80033DE0 8C420014 */  lw         $v0, 0x14($v0)
/* DD2F4 80033DE4 3406F712 */  ori        $a2, $zero, 0xf712
/* DD2F8 80033DE8 A4460002 */  sh         $a2, 2($v0)
/* DD2FC 80033DEC 8C620038 */  lw         $v0, 0x38($v1)
/* DD300 80033DF0 8C420014 */  lw         $v0, 0x14($v0)
/* DD304 80033DF4 A4440002 */  sh         $a0, 2($v0)
/* DD308 80033DF8 8C62003C */  lw         $v0, 0x3c($v1)
/* DD30C 80033DFC 8C420014 */  lw         $v0, 0x14($v0)
/* DD310 80033E00 240500FF */  addiu      $a1, $zero, 0xff
/* DD314 80033E04 24100040 */  addiu      $s0, $zero, 0x40
/* DD318 80033E08 A4460002 */  sh         $a2, 2($v0)
/* DD31C 80033E0C AFB00010 */  sw         $s0, 0x10($sp)
/* DD320 80033E10 8C640030 */  lw         $a0, 0x30($v1)
/* DD324 80033E14 240700FF */  addiu      $a3, $zero, 0xff
/* DD328 80033E18 0C028E41 */  jal        func_800A3904
/* DD32C 80033E1C 240600FF */   addiu     $a2, $zero, 0xff
/* DD330 80033E20 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD334 80033E24 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD338 80033E28 240500FF */  addiu      $a1, $zero, 0xff
/* DD33C 80033E2C AFB00010 */  sw         $s0, 0x10($sp)
/* DD340 80033E30 8C440038 */  lw         $a0, 0x38($v0)
/* DD344 80033E34 240600FF */  addiu      $a2, $zero, 0xff
/* DD348 80033E38 0C028E41 */  jal        func_800A3904
/* DD34C 80033E3C 240700FF */   addiu     $a3, $zero, 0xff
/* DD350 80033E40 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD354 80033E44 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD358 80033E48 84620198 */  lh         $v0, 0x198($v1)
/* DD35C 80033E4C 1840000C */  blez       $v0, .L80033E80
/* DD360 80033E50 00008021 */   addu      $s0, $zero, $zero
/* DD364 80033E54 00101080 */  sll        $v0, $s0, 2
.L80033E58:
/* DD368 80033E58 00431021 */  addu       $v0, $v0, $v1
/* DD36C 80033E5C 8C440008 */  lw         $a0, 8($v0)
/* DD370 80033E60 0C028A40 */  jal        func_800A2900
/* DD374 80033E64 26100001 */   addiu     $s0, $s0, 1
/* DD378 80033E68 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD37C 80033E6C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD380 80033E70 84620198 */  lh         $v0, 0x198($v1)
/* DD384 80033E74 0202102A */  slt        $v0, $s0, $v0
/* DD388 80033E78 1440FFF7 */  bnez       $v0, .L80033E58
/* DD38C 80033E7C 00101080 */   sll       $v0, $s0, 2
.L80033E80:
/* DD390 80033E80 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DD394 80033E84 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DD398 80033E88 9483019E */  lhu        $v1, 0x19e($a0)
/* DD39C 80033E8C 00001021 */  addu       $v0, $zero, $zero
/* DD3A0 80033E90 24630001 */  addiu      $v1, $v1, 1
/* DD3A4 80033E94 A483019E */  sh         $v1, 0x19e($a0)
/* DD3A8 80033E98 8FBF002C */  lw         $ra, 0x2c($sp)
/* DD3AC 80033E9C 8FB20028 */  lw         $s2, 0x28($sp)
/* DD3B0 80033EA0 8FB10024 */  lw         $s1, 0x24($sp)
/* DD3B4 80033EA4 8FB00020 */  lw         $s0, 0x20($sp)
/* DD3B8 80033EA8 D7B40030 */  ldc1       $f20, 0x30($sp)
/* DD3BC 80033EAC 03E00008 */  jr         $ra
/* DD3C0 80033EB0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80033EB4_DD3C4
/* DD3C4 80033EB4 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD3C8 80033EB8 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD3CC 80033EBC 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* DD3D0 80033EC0 AFBF002C */  sw         $ra, 0x2c($sp)
/* DD3D4 80033EC4 AFB20028 */  sw         $s2, 0x28($sp)
/* DD3D8 80033EC8 AFB10024 */  sw         $s1, 0x24($sp)
/* DD3DC 80033ECC AFB00020 */  sw         $s0, 0x20($sp)
/* DD3E0 80033ED0 F7BA0048 */  sdc1       $f26, 0x48($sp)
/* DD3E4 80033ED4 F7B80040 */  sdc1       $f24, 0x40($sp)
/* DD3E8 80033ED8 F7B60038 */  sdc1       $f22, 0x38($sp)
/* DD3EC 80033EDC F7B40030 */  sdc1       $f20, 0x30($sp)
/* DD3F0 80033EE0 8462019E */  lh         $v0, 0x19e($v1)
/* DD3F4 80033EE4 14400049 */  bnez       $v0, .L8003400C
/* DD3F8 80033EE8 00000000 */   nop
/* DD3FC 80033EEC 8C640008 */  lw         $a0, 8($v1)
/* DD400 80033EF0 8C82000C */  lw         $v0, 0xc($a0)
/* DD404 80033EF4 94450000 */  lhu        $a1, ($v0)
/* DD408 80033EF8 94460002 */  lhu        $a2, 2($v0)
/* DD40C 80033EFC 00052842 */  srl        $a1, $a1, 1
/* DD410 80033F00 0C02912A */  jal        func_800A44A8
/* DD414 80033F04 00063042 */   srl       $a2, $a2, 1
/* DD418 80033F08 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD41C 80033F0C 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD420 80033F10 3C014000 */  lui        $at, 0x4000
/* DD424 80033F14 44810000 */  mtc1       $at, $f0
/* DD428 80033F18 8C440008 */  lw         $a0, 8($v0)
/* DD42C 80033F1C 44060000 */  mfc1       $a2, $f0
/* DD430 80033F20 00002821 */  addu       $a1, $zero, $zero
/* DD434 80033F24 0C02915B */  jal        func_800A456C
/* DD438 80033F28 00C03821 */   addu      $a3, $a2, $zero
/* DD43C 80033F2C 3C048006 */  lui        $a0, %hi(D_80067E90)
/* DD440 80033F30 8C847E90 */  lw         $a0, %lo(D_80067E90)($a0)
/* DD444 80033F34 8C820030 */  lw         $v0, 0x30($a0)
/* DD448 80033F38 8C430014 */  lw         $v1, 0x14($v0)
/* DD44C 80033F3C 3402F713 */  ori        $v0, $zero, 0xf713
/* DD450 80033F40 A4620002 */  sh         $v0, 2($v1)
/* DD454 80033F44 8C820034 */  lw         $v0, 0x34($a0)
/* DD458 80033F48 24110002 */  addiu      $s1, $zero, 2
/* DD45C 80033F4C 2412FF60 */  addiu      $s2, $zero, -0xa0
/* DD460 80033F50 8C430014 */  lw         $v1, 0x14($v0)
/* DD464 80033F54 240500FF */  addiu      $a1, $zero, 0xff
/* DD468 80033F58 3402F712 */  ori        $v0, $zero, 0xf712
/* DD46C 80033F5C A4620002 */  sh         $v0, 2($v1)
/* DD470 80033F60 24020040 */  addiu      $v0, $zero, 0x40
/* DD474 80033F64 AFA20010 */  sw         $v0, 0x10($sp)
/* DD478 80033F68 8C840030 */  lw         $a0, 0x30($a0)
/* DD47C 80033F6C 240600FF */  addiu      $a2, $zero, 0xff
/* DD480 80033F70 0C028E41 */  jal        func_800A3904
/* DD484 80033F74 240700FF */   addiu     $a3, $zero, 0xff
/* DD488 80033F78 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD48C 80033F7C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD490 80033F80 240500FF */  addiu      $a1, $zero, 0xff
/* DD494 80033F84 240200FF */  addiu      $v0, $zero, 0xff
/* DD498 80033F88 AFA20010 */  sw         $v0, 0x10($sp)
/* DD49C 80033F8C 8C640034 */  lw         $a0, 0x34($v1)
/* DD4A0 80033F90 240600FF */  addiu      $a2, $zero, 0xff
/* DD4A4 80033F94 0C028E41 */  jal        func_800A3904
/* DD4A8 80033F98 240700FF */   addiu     $a3, $zero, 0xff
.L80033F9C:
/* DD4AC 80033F9C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD4B0 80033FA0 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD4B4 80033FA4 00118080 */  sll        $s0, $s1, 2
/* DD4B8 80033FA8 02021021 */  addu       $v0, $s0, $v0
/* DD4BC 80033FAC 8C440008 */  lw         $a0, 8($v0)
/* DD4C0 80033FB0 8C82000C */  lw         $v0, 0xc($a0)
/* DD4C4 80033FB4 94450000 */  lhu        $a1, ($v0)
/* DD4C8 80033FB8 00003021 */  addu       $a2, $zero, $zero
/* DD4CC 80033FBC 26310001 */  addiu      $s1, $s1, 1
/* DD4D0 80033FC0 0C02912A */  jal        func_800A44A8
/* DD4D4 80033FC4 00052842 */   srl       $a1, $a1, 1
/* DD4D8 80033FC8 240500FF */  addiu      $a1, $zero, 0xff
/* DD4DC 80033FCC 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD4E0 80033FD0 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD4E4 80033FD4 240600FF */  addiu      $a2, $zero, 0xff
/* DD4E8 80033FD8 324200FF */  andi       $v0, $s2, 0xff
/* DD4EC 80033FDC AFA20010 */  sw         $v0, 0x10($sp)
/* DD4F0 80033FE0 02038021 */  addu       $s0, $s0, $v1
/* DD4F4 80033FE4 8E040008 */  lw         $a0, 8($s0)
/* DD4F8 80033FE8 240700FF */  addiu      $a3, $zero, 0xff
/* DD4FC 80033FEC 0C028E41 */  jal        func_800A3904
/* DD500 80033FF0 2652FFF0 */   addiu     $s2, $s2, -0x10
/* DD504 80033FF4 2A22000A */  slti       $v0, $s1, 0xa
/* DD508 80033FF8 1440FFE8 */  bnez       $v0, .L80033F9C
/* DD50C 80033FFC 00000000 */   nop
/* DD510 80034000 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD514 80034004 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD518 80034008 AC4001A0 */  sw         $zero, 0x1a0($v0)
.L8003400C:
/* DD51C 8003400C 3C013D4C */  lui        $at, 0x3d4c
/* DD520 80034010 3421CCCD */  ori        $at, $at, 0xcccd
/* DD524 80034014 4481D000 */  mtc1       $at, $f26
/* DD528 80034018 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD52C 8003401C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD530 80034020 3C013F19 */  lui        $at, 0x3f19
/* DD534 80034024 3421999A */  ori        $at, $at, 0x999a
/* DD538 80034028 4481C000 */  mtc1       $at, $f24
/* DD53C 8003402C 3C014448 */  lui        $at, 0x4448
/* DD540 80034030 4481B000 */  mtc1       $at, $f22
/* DD544 80034034 8C6201A0 */  lw         $v0, 0x1a0($v1)
/* DD548 80034038 3C013EE6 */  lui        $at, 0x3ee6
/* DD54C 8003403C 34216666 */  ori        $at, $at, 0x6666
/* DD550 80034040 4481A000 */  mtc1       $at, $f20
/* DD554 80034044 24110002 */  addiu      $s1, $zero, 2
/* DD558 80034048 24420001 */  addiu      $v0, $v0, 1
/* DD55C 8003404C AC6201A0 */  sw         $v0, 0x1a0($v1)
.L80034050:
/* DD560 80034050 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD564 80034054 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD568 80034058 C46401A0 */  lwc1       $f4, 0x1a0($v1)
/* DD56C 8003405C 46802120 */  cvt.s.w    $f4, $f4
/* DD570 80034060 46162103 */  div.s      $f4, $f4, $f22
/* DD574 80034064 44910000 */  mtc1       $s1, $f0
/* DD578 80034068 00000000 */  nop
/* DD57C 8003406C 46800020 */  cvt.s.w    $f0, $f0
/* DD580 80034070 461A0002 */  mul.s      $f0, $f0, $f26
/* DD584 80034074 46180080 */  add.s      $f2, $f0, $f24
/* DD588 80034078 46140000 */  add.s      $f0, $f0, $f20
/* DD58C 8003407C 46041080 */  add.s      $f2, $f2, $f4
/* DD590 80034080 00111080 */  sll        $v0, $s1, 2
/* DD594 80034084 00431021 */  addu       $v0, $v0, $v1
/* DD598 80034088 46040000 */  add.s      $f0, $f0, $f4
/* DD59C 8003408C 8C440008 */  lw         $a0, 8($v0)
/* DD5A0 80034090 24050666 */  addiu      $a1, $zero, 0x666
/* DD5A4 80034094 44061000 */  mfc1       $a2, $f2
/* DD5A8 80034098 44070000 */  mfc1       $a3, $f0
/* DD5AC 8003409C 00000000 */  nop
/* DD5B0 800340A0 0C02915B */  jal        func_800A456C
/* DD5B4 800340A4 26310001 */   addiu     $s1, $s1, 1
/* DD5B8 800340A8 2A22000A */  slti       $v0, $s1, 0xa
/* DD5BC 800340AC 1440FFE8 */  bnez       $v0, .L80034050
/* DD5C0 800340B0 00000000 */   nop
/* DD5C4 800340B4 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD5C8 800340B8 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD5CC 800340BC 84620198 */  lh         $v0, 0x198($v1)
/* DD5D0 800340C0 1840000E */  blez       $v0, .L800340FC
/* DD5D4 800340C4 00008021 */   addu      $s0, $zero, $zero
/* DD5D8 800340C8 00101080 */  sll        $v0, $s0, 2
.L800340CC:
/* DD5DC 800340CC 00431021 */  addu       $v0, $v0, $v1
/* DD5E0 800340D0 8C440008 */  lw         $a0, 8($v0)
/* DD5E4 800340D4 0C028A40 */  jal        func_800A2900
/* DD5E8 800340D8 26100001 */   addiu     $s0, $s0, 1
/* DD5EC 800340DC 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD5F0 800340E0 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD5F4 800340E4 84620198 */  lh         $v0, 0x198($v1)
/* DD5F8 800340E8 0202102A */  slt        $v0, $s0, $v0
/* DD5FC 800340EC 1440FFF7 */  bnez       $v0, .L800340CC
/* DD600 800340F0 00101080 */   sll       $v0, $s0, 2
/* DD604 800340F4 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD608 800340F8 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
.L800340FC:
/* DD60C 800340FC 9462019E */  lhu        $v0, 0x19e($v1)
/* DD610 80034100 24420001 */  addiu      $v0, $v0, 1
/* DD614 80034104 A462019E */  sh         $v0, 0x19e($v1)
/* DD618 80034108 00001021 */  addu       $v0, $zero, $zero
/* DD61C 8003410C 8FBF002C */  lw         $ra, 0x2c($sp)
/* DD620 80034110 8FB20028 */  lw         $s2, 0x28($sp)
/* DD624 80034114 8FB10024 */  lw         $s1, 0x24($sp)
/* DD628 80034118 8FB00020 */  lw         $s0, 0x20($sp)
/* DD62C 8003411C D7BA0048 */  ldc1       $f26, 0x48($sp)
/* DD630 80034120 D7B80040 */  ldc1       $f24, 0x40($sp)
/* DD634 80034124 D7B60038 */  ldc1       $f22, 0x38($sp)
/* DD638 80034128 D7B40030 */  ldc1       $f20, 0x30($sp)
/* DD63C 8003412C 03E00008 */  jr         $ra
/* DD640 80034130 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80034134_DD644
/* DD644 80034134 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD648 80034138 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD64C 8003413C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DD650 80034140 AFBF0024 */  sw         $ra, 0x24($sp)
/* DD654 80034144 AFB00020 */  sw         $s0, 0x20($sp)
/* DD658 80034148 8442019E */  lh         $v0, 0x19e($v0)
/* DD65C 8003414C 14400012 */  bnez       $v0, .L80034198
/* DD660 80034150 00000000 */   nop
/* DD664 80034154 0C02A5AF */  jal        func_800A96BC
/* DD668 80034158 24040014 */   addiu     $a0, $zero, 0x14
/* DD66C 8003415C 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD670 80034160 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD674 80034164 00002821 */  addu       $a1, $zero, $zero
/* DD678 80034168 240300F0 */  addiu      $v1, $zero, 0xf0
/* DD67C 8003416C AFA30010 */  sw         $v1, 0x10($sp)
/* DD680 80034170 8C440004 */  lw         $a0, 4($v0)
/* DD684 80034174 00003021 */  addu       $a2, $zero, $zero
/* DD688 80034178 0C02939C */  jal        func_800A4E70
/* DD68C 8003417C 24070140 */   addiu     $a3, $zero, 0x140
/* DD690 80034180 3C028006 */  lui        $v0, %hi(D_80067E90)
/* DD694 80034184 8C427E90 */  lw         $v0, %lo(D_80067E90)($v0)
/* DD698 80034188 8C440008 */  lw         $a0, 8($v0)
/* DD69C 8003418C 24050033 */  addiu      $a1, $zero, 0x33
/* DD6A0 80034190 0C028F9A */  jal        func_800A3E68
/* DD6A4 80034194 24060044 */   addiu     $a2, $zero, 0x44
.L80034198:
/* DD6A8 80034198 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD6AC 8003419C 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD6B0 800341A0 84620198 */  lh         $v0, 0x198($v1)
/* DD6B4 800341A4 1840000E */  blez       $v0, .L800341E0
/* DD6B8 800341A8 00008021 */   addu      $s0, $zero, $zero
/* DD6BC 800341AC 00101080 */  sll        $v0, $s0, 2
.L800341B0:
/* DD6C0 800341B0 00431021 */  addu       $v0, $v0, $v1
/* DD6C4 800341B4 8C440008 */  lw         $a0, 8($v0)
/* DD6C8 800341B8 0C028A40 */  jal        func_800A2900
/* DD6CC 800341BC 26100001 */   addiu     $s0, $s0, 1
/* DD6D0 800341C0 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD6D4 800341C4 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
/* DD6D8 800341C8 84620198 */  lh         $v0, 0x198($v1)
/* DD6DC 800341CC 0202102A */  slt        $v0, $s0, $v0
/* DD6E0 800341D0 1440FFF7 */  bnez       $v0, .L800341B0
/* DD6E4 800341D4 00101080 */   sll       $v0, $s0, 2
/* DD6E8 800341D8 3C038006 */  lui        $v1, %hi(D_80067E90)
/* DD6EC 800341DC 8C637E90 */  lw         $v1, %lo(D_80067E90)($v1)
.L800341E0:
/* DD6F0 800341E0 9462019E */  lhu        $v0, 0x19e($v1)
/* DD6F4 800341E4 24420001 */  addiu      $v0, $v0, 1
/* DD6F8 800341E8 A462019E */  sh         $v0, 0x19e($v1)
/* DD6FC 800341EC 00001021 */  addu       $v0, $zero, $zero
/* DD700 800341F0 8FBF0024 */  lw         $ra, 0x24($sp)
/* DD704 800341F4 8FB00020 */  lw         $s0, 0x20($sp)
/* DD708 800341F8 03E00008 */  jr         $ra
/* DD70C 800341FC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80034200_DD710
/* DD710 80034200 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DD714 80034204 AFBF0010 */  sw         $ra, 0x10($sp)
/* DD718 80034208 0C032663 */  jal        func_800C998C
/* DD71C 8003420C 24040010 */   addiu     $a0, $zero, 0x10
/* DD720 80034210 00402021 */  addu       $a0, $v0, $zero
/* DD724 80034214 3C018007 */  lui        $at, %hi(D_80068520)
/* DD728 80034218 AC248520 */  sw         $a0, %lo(D_80068520)($at)
/* DD72C 8003421C 0C030134 */  jal        bzero
/* DD730 80034220 24050010 */   addiu     $a1, $zero, 0x10
/* DD734 80034224 3C048007 */  lui        $a0, %hi(D_80068524)
/* DD738 80034228 24848524 */  addiu      $a0, $a0, %lo(D_80068524)
/* DD73C 8003422C 0C00C490 */  jal        func_80031240_DA750
/* DD740 80034230 2405000D */   addiu     $a1, $zero, 0xd
/* DD744 80034234 3C038007 */  lui        $v1, %hi(D_80068520)
/* DD748 80034238 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DD74C 8003423C 3C048007 */  lui        $a0, %hi(D_8006865C)
/* DD750 80034240 2484865C */  addiu      $a0, $a0, %lo(D_8006865C)
/* DD754 80034244 24050001 */  addiu      $a1, $zero, 1
/* DD758 80034248 0C00C537 */  jal        func_800314DC_DA9EC
/* DD75C 8003424C AC620000 */   sw        $v0, ($v1)
/* DD760 80034250 3C038007 */  lui        $v1, %hi(D_80068520)
/* DD764 80034254 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DD768 80034258 AC620004 */  sw         $v0, 4($v1)
/* DD76C 8003425C 8C440008 */  lw         $a0, 8($v0)
/* DD770 80034260 0C028703 */  jal        func_800A1C0C
/* DD774 80034264 00002821 */   addu      $a1, $zero, $zero
/* DD778 80034268 3C028007 */  lui        $v0, %hi(D_80068520)
/* DD77C 8003426C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DD780 80034270 AC400008 */  sw         $zero, 8($v0)
/* DD784 80034274 0C02725C */  jal        func_8009C970
/* DD788 80034278 AC40000C */   sw        $zero, 0xc($v0)
/* DD78C 8003427C 3C01C040 */  lui        $at, 0xc040
/* DD790 80034280 44810000 */  mtc1       $at, $f0
/* DD794 80034284 3C014362 */  lui        $at, 0x4362
/* DD798 80034288 44811000 */  mtc1       $at, $f2
/* DD79C 8003428C 3C01C270 */  lui        $at, 0xc270
/* DD7A0 80034290 44812000 */  mtc1       $at, $f4
/* DD7A4 80034294 3C018015 */  lui        $at, %hi(D_8014A064)
/* DD7A8 80034298 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* DD7AC 8003429C 3C018015 */  lui        $at, %hi(D_8014A068)
/* DD7B0 800342A0 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* DD7B4 800342A4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* DD7B8 800342A8 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* DD7BC 800342AC 3C018015 */  lui        $at, %hi(D_8014A084)
/* DD7C0 800342B0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* DD7C4 800342B4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* DD7C8 800342B8 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* DD7CC 800342BC 3C018015 */  lui        $at, %hi(D_8014A080)
/* DD7D0 800342C0 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* DD7D4 800342C4 3C018015 */  lui        $at, %hi(D_8014A088)
/* DD7D8 800342C8 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* DD7DC 800342CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* DD7E0 800342D0 03E00008 */  jr         $ra
/* DD7E4 800342D4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800342D8_DD7E8
/* DD7E8 800342D8 3C028007 */  lui        $v0, %hi(D_80068520)
/* DD7EC 800342DC 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DD7F0 800342E0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DD7F4 800342E4 AFBF0010 */  sw         $ra, 0x10($sp)
/* DD7F8 800342E8 0C00C505 */  jal        func_80031414_DA924
/* DD7FC 800342EC 8C440000 */   lw        $a0, ($v0)
/* DD800 800342F0 3C028007 */  lui        $v0, %hi(D_80068520)
/* DD804 800342F4 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DD808 800342F8 0C00C59F */  jal        func_8003167C_DAB8C
/* DD80C 800342FC 8C440004 */   lw        $a0, 4($v0)
/* DD810 80034300 3C048007 */  lui        $a0, %hi(D_80068520)
/* DD814 80034304 0C0326A1 */  jal        func_800C9A84
/* DD818 80034308 8C848520 */   lw        $a0, %lo(D_80068520)($a0)
/* DD81C 8003430C 8FBF0010 */  lw         $ra, 0x10($sp)
/* DD820 80034310 03E00008 */  jr         $ra
/* DD824 80034314 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80034318_DD828
/* DD828 80034318 3C028007 */  lui        $v0, %hi(D_80068520)
/* DD82C 8003431C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DD830 80034320 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DD834 80034324 AFBF0010 */  sw         $ra, 0x10($sp)
/* DD838 80034328 F7B40018 */  sdc1       $f20, 0x18($sp)
/* DD83C 8003432C 8C430008 */  lw         $v1, 8($v0)
/* DD840 80034330 3C028017 */  lui        $v0, %hi(D_8016D168)
/* DD844 80034334 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* DD848 80034338 14620003 */  bne        $v1, $v0, .L80034348
/* DD84C 8003433C 00000000 */   nop
/* DD850 80034340 0800D129 */  j          .L800344A4
/* DD854 80034344 2402FFFF */   addiu     $v0, $zero, -1
.L80034348:
/* DD858 80034348 3C018007 */  lui        $at, %hi(D_80069D30)
/* DD85C 8003434C D4349D30 */  ldc1       $f20, %lo(D_80069D30)($at)
/* DD860 80034350 44820000 */  mtc1       $v0, $f0
/* DD864 80034354 00000000 */  nop
/* DD868 80034358 46800021 */  cvt.d.w    $f0, $f0
/* DD86C 8003435C 46340002 */  mul.d      $f0, $f0, $f20
/* DD870 80034360 44831000 */  mtc1       $v1, $f2
/* DD874 80034364 00000000 */  nop
/* DD878 80034368 468010A1 */  cvt.d.w    $f2, $f2
/* DD87C 8003436C 46201032 */  c.eq.d     $f2, $f0
/* DD880 80034370 00000000 */  nop
/* DD884 80034374 45000003 */  bc1f       .L80034384
/* DD888 80034378 00000000 */   nop
/* DD88C 8003437C 0C026DD5 */  jal        func_8009B754
/* DD890 80034380 2404006E */   addiu     $a0, $zero, 0x6e
.L80034384:
/* DD894 80034384 3C018017 */  lui        $at, %hi(D_8016D168)
/* DD898 80034388 C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* DD89C 8003438C 46800021 */  cvt.d.w    $f0, $f0
/* DD8A0 80034390 46340002 */  mul.d      $f0, $f0, $f20
/* DD8A4 80034394 3C048007 */  lui        $a0, %hi(D_80068520)
/* DD8A8 80034398 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DD8AC 8003439C C4820008 */  lwc1       $f2, 8($a0)
/* DD8B0 800343A0 468010A1 */  cvt.d.w    $f2, $f2
/* DD8B4 800343A4 4622003C */  c.lt.d     $f0, $f2
/* DD8B8 800343A8 00000000 */  nop
/* DD8BC 800343AC 4500002F */  bc1f       .L8003446C
/* DD8C0 800343B0 00000000 */   nop
/* DD8C4 800343B4 C482000C */  lwc1       $f2, 0xc($a0)
/* DD8C8 800343B8 3C013ECC */  lui        $at, 0x3ecc
/* DD8CC 800343BC 3421CCCD */  ori        $at, $at, 0xcccd
/* DD8D0 800343C0 44810000 */  mtc1       $at, $f0
/* DD8D4 800343C4 00000000 */  nop
/* DD8D8 800343C8 46001100 */  add.s      $f4, $f2, $f0
/* DD8DC 800343CC 3C0140A0 */  lui        $at, 0x40a0
/* DD8E0 800343D0 44813000 */  mtc1       $at, $f6
/* DD8E4 800343D4 00000000 */  nop
/* DD8E8 800343D8 4604303E */  c.le.s     $f6, $f4
/* DD8EC 800343DC 4600100D */  trunc.w.s  $f0, $f2
/* DD8F0 800343E0 44030000 */  mfc1       $v1, $f0
/* DD8F4 800343E4 00000000 */  nop
/* DD8F8 800343E8 45000003 */  bc1f       .L800343F8
/* DD8FC 800343EC E484000C */   swc1      $f4, 0xc($a0)
/* DD900 800343F0 0800D105 */  j          .L80034414
/* DD904 800343F4 46062001 */   sub.s     $f0, $f4, $f6
.L800343F8:
/* DD908 800343F8 44800000 */  mtc1       $zero, $f0
/* DD90C 800343FC 00000000 */  nop
/* DD910 80034400 4600203C */  c.lt.s     $f4, $f0
/* DD914 80034404 00000000 */  nop
/* DD918 80034408 45000003 */  bc1f       .L80034418
/* DD91C 8003440C 00000000 */   nop
/* DD920 80034410 46062000 */  add.s      $f0, $f4, $f6
.L80034414:
/* DD924 80034414 E480000C */  swc1       $f0, 0xc($a0)
.L80034418:
/* DD928 80034418 3C048007 */  lui        $a0, %hi(D_80068520)
/* DD92C 8003441C 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DD930 80034420 C480000C */  lwc1       $f0, 0xc($a0)
/* DD934 80034424 4600008D */  trunc.w.s  $f2, $f0
/* DD938 80034428 44051000 */  mfc1       $a1, $f2
/* DD93C 8003442C 00000000 */  nop
/* DD940 80034430 10A3000E */  beq        $a1, $v1, .L8003446C
/* DD944 80034434 00031880 */   sll       $v1, $v1, 2
/* DD948 80034438 8C820000 */  lw         $v0, ($a0)
/* DD94C 8003443C 00431021 */  addu       $v0, $v0, $v1
/* DD950 80034440 8C430024 */  lw         $v1, 0x24($v0)
/* DD954 80034444 9462001E */  lhu        $v0, 0x1e($v1)
/* DD958 80034448 34420400 */  ori        $v0, $v0, 0x400
/* DD95C 8003444C A462001E */  sh         $v0, 0x1e($v1)
/* DD960 80034450 8C820000 */  lw         $v0, ($a0)
/* DD964 80034454 00051880 */  sll        $v1, $a1, 2
/* DD968 80034458 00431021 */  addu       $v0, $v0, $v1
/* DD96C 8003445C 8C430024 */  lw         $v1, 0x24($v0)
/* DD970 80034460 9462001E */  lhu        $v0, 0x1e($v1)
/* DD974 80034464 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DD978 80034468 A462001E */  sh         $v0, 0x1e($v1)
.L8003446C:
/* DD97C 8003446C 3C028007 */  lui        $v0, %hi(D_80068520)
/* DD980 80034470 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DD984 80034474 0C00C51F */  jal        func_8003147C_DA98C
/* DD988 80034478 8C440000 */   lw        $a0, ($v0)
/* DD98C 8003447C 3C028007 */  lui        $v0, %hi(D_80068520)
/* DD990 80034480 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DD994 80034484 0C00C5C1 */  jal        func_80031704_DAC14
/* DD998 80034488 8C440004 */   lw        $a0, 4($v0)
/* DD99C 8003448C 3C048007 */  lui        $a0, %hi(D_80068520)
/* DD9A0 80034490 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DD9A4 80034494 8C830008 */  lw         $v1, 8($a0)
/* DD9A8 80034498 00001021 */  addu       $v0, $zero, $zero
/* DD9AC 8003449C 24630001 */  addiu      $v1, $v1, 1
/* DD9B0 800344A0 AC830008 */  sw         $v1, 8($a0)
.L800344A4:
/* DD9B4 800344A4 8FBF0010 */  lw         $ra, 0x10($sp)
/* DD9B8 800344A8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* DD9BC 800344AC 03E00008 */  jr         $ra
/* DD9C0 800344B0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_800344B4_DD9C4
/* DD9C4 800344B4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DD9C8 800344B8 24040010 */  addiu      $a0, $zero, 0x10
/* DD9CC 800344BC AFBF0014 */  sw         $ra, 0x14($sp)
/* DD9D0 800344C0 0C032663 */  jal        func_800C998C
/* DD9D4 800344C4 AFB00010 */   sw        $s0, 0x10($sp)
/* DD9D8 800344C8 00402021 */  addu       $a0, $v0, $zero
/* DD9DC 800344CC 3C018007 */  lui        $at, %hi(D_80068520)
/* DD9E0 800344D0 AC248520 */  sw         $a0, %lo(D_80068520)($at)
/* DD9E4 800344D4 0C030134 */  jal        bzero
/* DD9E8 800344D8 24050010 */   addiu     $a1, $zero, 0x10
/* DD9EC 800344DC 3C048007 */  lui        $a0, %hi(D_80068674)
/* DD9F0 800344E0 24848674 */  addiu      $a0, $a0, %lo(D_80068674)
/* DD9F4 800344E4 0C00C490 */  jal        func_80031240_DA750
/* DD9F8 800344E8 24050018 */   addiu     $a1, $zero, 0x18
/* DD9FC 800344EC 3C038007 */  lui        $v1, %hi(D_80068520)
/* DDA00 800344F0 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DDA04 800344F4 AC620000 */  sw         $v0, ($v1)
/* DDA08 800344F8 8C44000C */  lw         $a0, 0xc($v0)
/* DDA0C 800344FC 00002821 */  addu       $a1, $zero, $zero
/* DDA10 80034500 0C02912A */  jal        func_800A44A8
/* DDA14 80034504 00003021 */   addu      $a2, $zero, $zero
/* DDA18 80034508 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDA1C 8003450C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDA20 80034510 8C420000 */  lw         $v0, ($v0)
/* DDA24 80034514 8C440010 */  lw         $a0, 0x10($v0)
/* DDA28 80034518 00002821 */  addu       $a1, $zero, $zero
/* DDA2C 8003451C 0C02912A */  jal        func_800A44A8
/* DDA30 80034520 00003021 */   addu      $a2, $zero, $zero
/* DDA34 80034524 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDA38 80034528 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDA3C 8003452C 8C420000 */  lw         $v0, ($v0)
/* DDA40 80034530 8C440038 */  lw         $a0, 0x38($v0)
/* DDA44 80034534 00002821 */  addu       $a1, $zero, $zero
/* DDA48 80034538 0C02912A */  jal        func_800A44A8
/* DDA4C 8003453C 00003021 */   addu      $a2, $zero, $zero
/* DDA50 80034540 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDA54 80034544 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDA58 80034548 8C420000 */  lw         $v0, ($v0)
/* DDA5C 8003454C 2410000D */  addiu      $s0, $zero, 0xd
/* DDA60 80034550 8C44003C */  lw         $a0, 0x3c($v0)
/* DDA64 80034554 00002821 */  addu       $a1, $zero, $zero
/* DDA68 80034558 0C02912A */  jal        func_800A44A8
/* DDA6C 8003455C 00003021 */   addu      $a2, $zero, $zero
.L80034560:
/* DDA70 80034560 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDA74 80034564 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDA78 80034568 8C430000 */  lw         $v1, ($v0)
/* DDA7C 8003456C 00101080 */  sll        $v0, $s0, 2
/* DDA80 80034570 00431021 */  addu       $v0, $v0, $v1
/* DDA84 80034574 8C440004 */  lw         $a0, 4($v0)
/* DDA88 80034578 8C82000C */  lw         $v0, 0xc($a0)
/* DDA8C 8003457C 90430004 */  lbu        $v1, 4($v0)
/* DDA90 80034580 84450000 */  lh         $a1, ($v0)
/* DDA94 80034584 84460002 */  lh         $a2, 2($v0)
/* DDA98 80034588 14600002 */  bnez       $v1, .L80034594
/* DDA9C 8003458C 24070001 */   addiu     $a3, $zero, 1
/* DDAA0 80034590 24070002 */  addiu      $a3, $zero, 2
.L80034594:
/* DDAA4 80034594 8C840010 */  lw         $a0, 0x10($a0)
/* DDAA8 80034598 0C029767 */  jal        func_800A5D9C
/* DDAAC 8003459C 26100001 */   addiu     $s0, $s0, 1
/* DDAB0 800345A0 2A020018 */  slti       $v0, $s0, 0x18
/* DDAB4 800345A4 1440FFEE */  bnez       $v0, .L80034560
/* DDAB8 800345A8 00000000 */   nop
/* DDABC 800345AC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDAC0 800345B0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDAC4 800345B4 AC400008 */  sw         $zero, 8($v0)
/* DDAC8 800345B8 AC40000C */  sw         $zero, 0xc($v0)
/* DDACC 800345BC 8FBF0014 */  lw         $ra, 0x14($sp)
/* DDAD0 800345C0 8FB00010 */  lw         $s0, 0x10($sp)
/* DDAD4 800345C4 03E00008 */  jr         $ra
/* DDAD8 800345C8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800345CC_DDADC
/* DDADC 800345CC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDAE0 800345D0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDAE4 800345D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DDAE8 800345D8 AFBF0010 */  sw         $ra, 0x10($sp)
/* DDAEC 800345DC 0C00C505 */  jal        func_80031414_DA924
/* DDAF0 800345E0 8C440000 */   lw        $a0, ($v0)
/* DDAF4 800345E4 3C048007 */  lui        $a0, %hi(D_80068520)
/* DDAF8 800345E8 0C0326A1 */  jal        func_800C9A84
/* DDAFC 800345EC 8C848520 */   lw        $a0, %lo(D_80068520)($a0)
/* DDB00 800345F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* DDB04 800345F4 03E00008 */  jr         $ra
/* DDB08 800345F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800345FC_DDB0C
/* DDB0C 800345FC 3C018007 */  lui        $at, %hi(D_80069D38)
/* DDB10 80034600 D4209D38 */  ldc1       $f0, %lo(D_80069D38)($at)
/* DDB14 80034604 3C018017 */  lui        $at, %hi(D_8016D168)
/* DDB18 80034608 C424D168 */  lwc1       $f4, %lo(D_8016D168)($at)
/* DDB1C 8003460C 46802121 */  cvt.d.w    $f4, $f4
/* DDB20 80034610 46202002 */  mul.d      $f0, $f4, $f0
/* DDB24 80034614 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDB28 80034618 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDB2C 8003461C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DDB30 80034620 AFBF0010 */  sw         $ra, 0x10($sp)
/* DDB34 80034624 F7B40018 */  sdc1       $f20, 0x18($sp)
/* DDB38 80034628 C4420008 */  lwc1       $f2, 8($v0)
/* DDB3C 8003462C 468010A1 */  cvt.d.w    $f2, $f2
/* DDB40 80034630 46201032 */  c.eq.d     $f2, $f0
/* DDB44 80034634 00000000 */  nop
/* DDB48 80034638 00000000 */  nop
/* DDB4C 8003463C 450100AD */  bc1t       .L800348F4
/* DDB50 80034640 2402FFFF */   addiu     $v0, $zero, -1
/* DDB54 80034644 3C018007 */  lui        $at, %hi(D_80069D40)
/* DDB58 80034648 D4349D40 */  ldc1       $f20, %lo(D_80069D40)($at)
/* DDB5C 8003464C 46342002 */  mul.d      $f0, $f4, $f20
/* DDB60 80034650 46201032 */  c.eq.d     $f2, $f0
/* DDB64 80034654 00000000 */  nop
/* DDB68 80034658 45000003 */  bc1f       .L80034668
/* DDB6C 8003465C 00000000 */   nop
/* DDB70 80034660 0C026DD5 */  jal        func_8009B754
/* DDB74 80034664 24040069 */   addiu     $a0, $zero, 0x69
.L80034668:
/* DDB78 80034668 3C018007 */  lui        $at, %hi(D_80069D48)
/* DDB7C 8003466C D4209D48 */  ldc1       $f0, %lo(D_80069D48)($at)
/* DDB80 80034670 3C018017 */  lui        $at, %hi(D_8016D168)
/* DDB84 80034674 C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* DDB88 80034678 468010A1 */  cvt.d.w    $f2, $f2
/* DDB8C 8003467C 46201082 */  mul.d      $f2, $f2, $f0
/* DDB90 80034680 3C048007 */  lui        $a0, %hi(D_80068520)
/* DDB94 80034684 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DDB98 80034688 C4800008 */  lwc1       $f0, 8($a0)
/* DDB9C 8003468C 46800021 */  cvt.d.w    $f0, $f0
/* DDBA0 80034690 46220032 */  c.eq.d     $f0, $f2
/* DDBA4 80034694 00000000 */  nop
/* DDBA8 80034698 45000015 */  bc1f       .L800346F0
/* DDBAC 8003469C 00000000 */   nop
/* DDBB0 800346A0 8C820000 */  lw         $v0, ($a0)
/* DDBB4 800346A4 8C43000C */  lw         $v1, 0xc($v0)
/* DDBB8 800346A8 9462001E */  lhu        $v0, 0x1e($v1)
/* DDBBC 800346AC 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DDBC0 800346B0 A462001E */  sh         $v0, 0x1e($v1)
/* DDBC4 800346B4 8C820000 */  lw         $v0, ($a0)
/* DDBC8 800346B8 8C430038 */  lw         $v1, 0x38($v0)
/* DDBCC 800346BC 9462001E */  lhu        $v0, 0x1e($v1)
/* DDBD0 800346C0 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DDBD4 800346C4 A462001E */  sh         $v0, 0x1e($v1)
/* DDBD8 800346C8 8C820000 */  lw         $v0, ($a0)
/* DDBDC 800346CC 8C430010 */  lw         $v1, 0x10($v0)
/* DDBE0 800346D0 9462001E */  lhu        $v0, 0x1e($v1)
/* DDBE4 800346D4 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DDBE8 800346D8 A462001E */  sh         $v0, 0x1e($v1)
/* DDBEC 800346DC 8C820000 */  lw         $v0, ($a0)
/* DDBF0 800346E0 8C43003C */  lw         $v1, 0x3c($v0)
/* DDBF4 800346E4 9462001E */  lhu        $v0, 0x1e($v1)
/* DDBF8 800346E8 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DDBFC 800346EC A462001E */  sh         $v0, 0x1e($v1)
.L800346F0:
/* DDC00 800346F0 3C018017 */  lui        $at, %hi(D_8016D168)
/* DDC04 800346F4 C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* DDC08 800346F8 46800021 */  cvt.d.w    $f0, $f0
/* DDC0C 800346FC 46340002 */  mul.d      $f0, $f0, $f20
/* DDC10 80034700 3C048007 */  lui        $a0, %hi(D_80068520)
/* DDC14 80034704 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DDC18 80034708 C4820008 */  lwc1       $f2, 8($a0)
/* DDC1C 8003470C 468010A1 */  cvt.d.w    $f2, $f2
/* DDC20 80034710 46201032 */  c.eq.d     $f2, $f0
/* DDC24 80034714 00000000 */  nop
/* DDC28 80034718 4500001F */  bc1f       .L80034798
/* DDC2C 8003471C 00000000 */   nop
/* DDC30 80034720 8C820000 */  lw         $v0, ($a0)
/* DDC34 80034724 8C43000C */  lw         $v1, 0xc($v0)
/* DDC38 80034728 9462001E */  lhu        $v0, 0x1e($v1)
/* DDC3C 8003472C 34420400 */  ori        $v0, $v0, 0x400
/* DDC40 80034730 A462001E */  sh         $v0, 0x1e($v1)
/* DDC44 80034734 8C820000 */  lw         $v0, ($a0)
/* DDC48 80034738 8C430038 */  lw         $v1, 0x38($v0)
/* DDC4C 8003473C 9462001E */  lhu        $v0, 0x1e($v1)
/* DDC50 80034740 34420400 */  ori        $v0, $v0, 0x400
/* DDC54 80034744 A462001E */  sh         $v0, 0x1e($v1)
/* DDC58 80034748 8C820000 */  lw         $v0, ($a0)
/* DDC5C 8003474C 8C430010 */  lw         $v1, 0x10($v0)
/* DDC60 80034750 9462001E */  lhu        $v0, 0x1e($v1)
/* DDC64 80034754 34420400 */  ori        $v0, $v0, 0x400
/* DDC68 80034758 A462001E */  sh         $v0, 0x1e($v1)
/* DDC6C 8003475C 8C820000 */  lw         $v0, ($a0)
/* DDC70 80034760 8C43003C */  lw         $v1, 0x3c($v0)
/* DDC74 80034764 9462001E */  lhu        $v0, 0x1e($v1)
/* DDC78 80034768 34420400 */  ori        $v0, $v0, 0x400
/* DDC7C 8003476C A462001E */  sh         $v0, 0x1e($v1)
/* DDC80 80034770 8C820000 */  lw         $v0, ($a0)
/* DDC84 80034774 8C430014 */  lw         $v1, 0x14($v0)
/* DDC88 80034778 9462001E */  lhu        $v0, 0x1e($v1)
/* DDC8C 8003477C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DDC90 80034780 A462001E */  sh         $v0, 0x1e($v1)
/* DDC94 80034784 8C820000 */  lw         $v0, ($a0)
/* DDC98 80034788 8C430040 */  lw         $v1, 0x40($v0)
/* DDC9C 8003478C 9462001E */  lhu        $v0, 0x1e($v1)
/* DDCA0 80034790 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DDCA4 80034794 A462001E */  sh         $v0, 0x1e($v1)
.L80034798:
/* DDCA8 80034798 3C018017 */  lui        $at, %hi(D_8016D168)
/* DDCAC 8003479C C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* DDCB0 800347A0 46800021 */  cvt.d.w    $f0, $f0
/* DDCB4 800347A4 46340002 */  mul.d      $f0, $f0, $f20
/* DDCB8 800347A8 3C038007 */  lui        $v1, %hi(D_80068520)
/* DDCBC 800347AC 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DDCC0 800347B0 C4620008 */  lwc1       $f2, 8($v1)
/* DDCC4 800347B4 468010A1 */  cvt.d.w    $f2, $f2
/* DDCC8 800347B8 4622003C */  c.lt.d     $f0, $f2
/* DDCCC 800347BC 00000000 */  nop
/* DDCD0 800347C0 45000042 */  bc1f       .L800348CC
/* DDCD4 800347C4 00000000 */   nop
/* DDCD8 800347C8 C464000C */  lwc1       $f4, 0xc($v1)
/* DDCDC 800347CC 3C018007 */  lui        $at, %hi(D_80069D50)
/* DDCE0 800347D0 D4229D50 */  ldc1       $f2, %lo(D_80069D50)($at)
/* DDCE4 800347D4 46002021 */  cvt.d.s    $f0, $f4
/* DDCE8 800347D8 46220000 */  add.d      $f0, $f0, $f2
/* DDCEC 800347DC 3C013EAA */  lui        $at, 0x3eaa
/* DDCF0 800347E0 3421AAAB */  ori        $at, $at, 0xaaab
/* DDCF4 800347E4 44811000 */  mtc1       $at, $f2
/* DDCF8 800347E8 00000000 */  nop
/* DDCFC 800347EC 46022100 */  add.s      $f4, $f4, $f2
/* DDD00 800347F0 3C014100 */  lui        $at, 0x4100
/* DDD04 800347F4 44813000 */  mtc1       $at, $f6
/* DDD08 800347F8 00000000 */  nop
/* DDD0C 800347FC 4604303C */  c.lt.s     $f6, $f4
/* DDD10 80034800 4620008D */  trunc.w.d  $f2, $f0
/* DDD14 80034804 44051000 */  mfc1       $a1, $f2
/* DDD18 80034808 00000000 */  nop
/* DDD1C 8003480C 45000003 */  bc1f       .L8003481C
/* DDD20 80034810 E464000C */   swc1      $f4, 0xc($v1)
/* DDD24 80034814 0800D20E */  j          .L80034838
/* DDD28 80034818 E466000C */   swc1      $f6, 0xc($v1)
.L8003481C:
/* DDD2C 8003481C 44800000 */  mtc1       $zero, $f0
/* DDD30 80034820 00000000 */  nop
/* DDD34 80034824 4600203C */  c.lt.s     $f4, $f0
/* DDD38 80034828 00000000 */  nop
/* DDD3C 8003482C 00000000 */  nop
/* DDD40 80034830 45030001 */  bc1tl      .L80034838
/* DDD44 80034834 E460000C */   swc1      $f0, 0xc($v1)
.L80034838:
/* DDD48 80034838 3C068007 */  lui        $a2, %hi(D_80068520)
/* DDD4C 8003483C 8CC68520 */  lw         $a2, %lo(D_80068520)($a2)
/* DDD50 80034840 C4C0000C */  lwc1       $f0, 0xc($a2)
/* DDD54 80034844 3C018007 */  lui        $at, %hi(D_80069D58)
/* DDD58 80034848 D4229D58 */  ldc1       $f2, %lo(D_80069D58)($at)
/* DDD5C 8003484C 46000021 */  cvt.d.s    $f0, $f0
/* DDD60 80034850 46220000 */  add.d      $f0, $f0, $f2
/* DDD64 80034854 4620008D */  trunc.w.d  $f2, $f0
/* DDD68 80034858 44041000 */  mfc1       $a0, $f2
/* DDD6C 8003485C 00000000 */  nop
/* DDD70 80034860 1085001A */  beq        $a0, $a1, .L800348CC
/* DDD74 80034864 00052880 */   sll       $a1, $a1, 2
/* DDD78 80034868 8CC20000 */  lw         $v0, ($a2)
/* DDD7C 8003486C 00451021 */  addu       $v0, $v0, $a1
/* DDD80 80034870 8C430014 */  lw         $v1, 0x14($v0)
/* DDD84 80034874 9462001E */  lhu        $v0, 0x1e($v1)
/* DDD88 80034878 34420400 */  ori        $v0, $v0, 0x400
/* DDD8C 8003487C A462001E */  sh         $v0, 0x1e($v1)
/* DDD90 80034880 8CC20000 */  lw         $v0, ($a2)
/* DDD94 80034884 00042080 */  sll        $a0, $a0, 2
/* DDD98 80034888 00441021 */  addu       $v0, $v0, $a0
/* DDD9C 8003488C 8C430014 */  lw         $v1, 0x14($v0)
/* DDDA0 80034890 9462001E */  lhu        $v0, 0x1e($v1)
/* DDDA4 80034894 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DDDA8 80034898 A462001E */  sh         $v0, 0x1e($v1)
/* DDDAC 8003489C 8CC20000 */  lw         $v0, ($a2)
/* DDDB0 800348A0 00451021 */  addu       $v0, $v0, $a1
/* DDDB4 800348A4 8C430040 */  lw         $v1, 0x40($v0)
/* DDDB8 800348A8 9462001E */  lhu        $v0, 0x1e($v1)
/* DDDBC 800348AC 34420400 */  ori        $v0, $v0, 0x400
/* DDDC0 800348B0 A462001E */  sh         $v0, 0x1e($v1)
/* DDDC4 800348B4 8CC20000 */  lw         $v0, ($a2)
/* DDDC8 800348B8 00441021 */  addu       $v0, $v0, $a0
/* DDDCC 800348BC 8C430040 */  lw         $v1, 0x40($v0)
/* DDDD0 800348C0 9462001E */  lhu        $v0, 0x1e($v1)
/* DDDD4 800348C4 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DDDD8 800348C8 A462001E */  sh         $v0, 0x1e($v1)
.L800348CC:
/* DDDDC 800348CC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDDE0 800348D0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDDE4 800348D4 0C00C51F */  jal        func_8003147C_DA98C
/* DDDE8 800348D8 8C440000 */   lw        $a0, ($v0)
/* DDDEC 800348DC 3C048007 */  lui        $a0, %hi(D_80068520)
/* DDDF0 800348E0 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DDDF4 800348E4 8C830008 */  lw         $v1, 8($a0)
/* DDDF8 800348E8 00001021 */  addu       $v0, $zero, $zero
/* DDDFC 800348EC 24630001 */  addiu      $v1, $v1, 1
/* DDE00 800348F0 AC830008 */  sw         $v1, 8($a0)
.L800348F4:
/* DDE04 800348F4 8FBF0010 */  lw         $ra, 0x10($sp)
/* DDE08 800348F8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* DDE0C 800348FC 03E00008 */  jr         $ra
/* DDE10 80034900 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80034904_DDE14
/* DDE14 80034904 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DDE18 80034908 24040010 */  addiu      $a0, $zero, 0x10
/* DDE1C 8003490C AFBF0014 */  sw         $ra, 0x14($sp)
/* DDE20 80034910 0C032663 */  jal        func_800C998C
/* DDE24 80034914 AFB00010 */   sw        $s0, 0x10($sp)
/* DDE28 80034918 00402021 */  addu       $a0, $v0, $zero
/* DDE2C 8003491C 3C018007 */  lui        $at, %hi(D_80068520)
/* DDE30 80034920 AC248520 */  sw         $a0, %lo(D_80068520)($at)
/* DDE34 80034924 0C030134 */  jal        bzero
/* DDE38 80034928 24050010 */   addiu     $a1, $zero, 0x10
/* DDE3C 8003492C 3C048007 */  lui        $a0, %hi(func_800688B4_B7864)
/* DDE40 80034930 248488B4 */  addiu      $a0, $a0, %lo(func_800688B4_B7864)
/* DDE44 80034934 0C00C490 */  jal        func_80031240_DA750
/* DDE48 80034938 24050006 */   addiu     $a1, $zero, 6
/* DDE4C 8003493C 3C038007 */  lui        $v1, %hi(D_80068520)
/* DDE50 80034940 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DDE54 80034944 AC620000 */  sw         $v0, ($v1)
/* DDE58 80034948 8C44000C */  lw         $a0, 0xc($v0)
/* DDE5C 8003494C 00002821 */  addu       $a1, $zero, $zero
/* DDE60 80034950 0C02912A */  jal        func_800A44A8
/* DDE64 80034954 00003021 */   addu      $a2, $zero, $zero
/* DDE68 80034958 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDE6C 8003495C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDE70 80034960 8C420000 */  lw         $v0, ($v0)
/* DDE74 80034964 8C440010 */  lw         $a0, 0x10($v0)
/* DDE78 80034968 00002821 */  addu       $a1, $zero, $zero
/* DDE7C 8003496C 0C02912A */  jal        func_800A44A8
/* DDE80 80034970 00003021 */   addu      $a2, $zero, $zero
/* DDE84 80034974 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDE88 80034978 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDE8C 8003497C 8C420000 */  lw         $v0, ($v0)
/* DDE90 80034980 8C440014 */  lw         $a0, 0x14($v0)
/* DDE94 80034984 00002821 */  addu       $a1, $zero, $zero
/* DDE98 80034988 0C02912A */  jal        func_800A44A8
/* DDE9C 8003498C 00003021 */   addu      $a2, $zero, $zero
/* DDEA0 80034990 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDEA4 80034994 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDEA8 80034998 8C420000 */  lw         $v0, ($v0)
/* DDEAC 8003499C 24100004 */  addiu      $s0, $zero, 4
/* DDEB0 800349A0 8C440018 */  lw         $a0, 0x18($v0)
/* DDEB4 800349A4 00002821 */  addu       $a1, $zero, $zero
/* DDEB8 800349A8 0C02912A */  jal        func_800A44A8
/* DDEBC 800349AC 00003021 */   addu      $a2, $zero, $zero
.L800349B0:
/* DDEC0 800349B0 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDEC4 800349B4 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDEC8 800349B8 8C430000 */  lw         $v1, ($v0)
/* DDECC 800349BC 00101080 */  sll        $v0, $s0, 2
/* DDED0 800349C0 00431021 */  addu       $v0, $v0, $v1
/* DDED4 800349C4 8C440004 */  lw         $a0, 4($v0)
/* DDED8 800349C8 8C82000C */  lw         $v0, 0xc($a0)
/* DDEDC 800349CC 90430004 */  lbu        $v1, 4($v0)
/* DDEE0 800349D0 84450000 */  lh         $a1, ($v0)
/* DDEE4 800349D4 84460002 */  lh         $a2, 2($v0)
/* DDEE8 800349D8 14600002 */  bnez       $v1, .L800349E4
/* DDEEC 800349DC 24070001 */   addiu     $a3, $zero, 1
/* DDEF0 800349E0 24070002 */  addiu      $a3, $zero, 2
.L800349E4:
/* DDEF4 800349E4 8C840010 */  lw         $a0, 0x10($a0)
/* DDEF8 800349E8 0C029767 */  jal        func_800A5D9C
/* DDEFC 800349EC 26100001 */   addiu     $s0, $s0, 1
/* DDF00 800349F0 2A020006 */  slti       $v0, $s0, 6
/* DDF04 800349F4 1440FFEE */  bnez       $v0, .L800349B0
/* DDF08 800349F8 00000000 */   nop
/* DDF0C 800349FC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDF10 80034A00 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDF14 80034A04 AC400008 */  sw         $zero, 8($v0)
/* DDF18 80034A08 AC40000C */  sw         $zero, 0xc($v0)
/* DDF1C 80034A0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* DDF20 80034A10 8FB00010 */  lw         $s0, 0x10($sp)
/* DDF24 80034A14 03E00008 */  jr         $ra
/* DDF28 80034A18 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80034A1C_DDF2C
/* DDF2C 80034A1C 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDF30 80034A20 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDF34 80034A24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DDF38 80034A28 AFBF0010 */  sw         $ra, 0x10($sp)
/* DDF3C 80034A2C 0C00C505 */  jal        func_80031414_DA924
/* DDF40 80034A30 8C440000 */   lw        $a0, ($v0)
/* DDF44 80034A34 3C048007 */  lui        $a0, %hi(D_80068520)
/* DDF48 80034A38 0C0326A1 */  jal        func_800C9A84
/* DDF4C 80034A3C 8C848520 */   lw        $a0, %lo(D_80068520)($a0)
/* DDF50 80034A40 8FBF0010 */  lw         $ra, 0x10($sp)
/* DDF54 80034A44 03E00008 */  jr         $ra
/* DDF58 80034A48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80034A4C_DDF5C
/* DDF5C 80034A4C 3C028007 */  lui        $v0, %hi(D_80068520)
/* DDF60 80034A50 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DDF64 80034A54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DDF68 80034A58 AFBF0010 */  sw         $ra, 0x10($sp)
/* DDF6C 80034A5C 8C430008 */  lw         $v1, 8($v0)
/* DDF70 80034A60 3C028017 */  lui        $v0, %hi(D_8016D168)
/* DDF74 80034A64 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* DDF78 80034A68 14620003 */  bne        $v1, $v0, .L80034A78
/* DDF7C 80034A6C 00000000 */   nop
/* DDF80 80034A70 0800D30C */  j          .L80034C30
/* DDF84 80034A74 2402FFFF */   addiu     $v0, $zero, -1
.L80034A78:
/* DDF88 80034A78 44800000 */  mtc1       $zero, $f0
/* DDF8C 80034A7C 44800800 */  mtc1       $zero, $f1
/* DDF90 80034A80 44821000 */  mtc1       $v0, $f2
/* DDF94 80034A84 00000000 */  nop
/* DDF98 80034A88 468010A1 */  cvt.d.w    $f2, $f2
/* DDF9C 80034A8C 46201082 */  mul.d      $f2, $f2, $f0
/* DDFA0 80034A90 44830000 */  mtc1       $v1, $f0
/* DDFA4 80034A94 00000000 */  nop
/* DDFA8 80034A98 46800021 */  cvt.d.w    $f0, $f0
/* DDFAC 80034A9C 46220032 */  c.eq.d     $f0, $f2
/* DDFB0 80034AA0 00000000 */  nop
/* DDFB4 80034AA4 45000003 */  bc1f       .L80034AB4
/* DDFB8 80034AA8 00000000 */   nop
/* DDFBC 80034AAC 0C026DD5 */  jal        func_8009B754
/* DDFC0 80034AB0 24040068 */   addiu     $a0, $zero, 0x68
.L80034AB4:
/* DDFC4 80034AB4 3C018007 */  lui        $at, %hi(D_80069D60)
/* DDFC8 80034AB8 D4209D60 */  ldc1       $f0, %lo(D_80069D60)($at)
/* DDFCC 80034ABC 3C018017 */  lui        $at, %hi(D_8016D168)
/* DDFD0 80034AC0 C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* DDFD4 80034AC4 468010A1 */  cvt.d.w    $f2, $f2
/* DDFD8 80034AC8 46201082 */  mul.d      $f2, $f2, $f0
/* DDFDC 80034ACC 3C038007 */  lui        $v1, %hi(D_80068520)
/* DDFE0 80034AD0 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DDFE4 80034AD4 C4600008 */  lwc1       $f0, 8($v1)
/* DDFE8 80034AD8 46800021 */  cvt.d.w    $f0, $f0
/* DDFEC 80034ADC 4620103C */  c.lt.d     $f2, $f0
/* DDFF0 80034AE0 00000000 */  nop
/* DDFF4 80034AE4 45000048 */  bc1f       .L80034C08
/* DDFF8 80034AE8 00000000 */   nop
/* DDFFC 80034AEC 8C620000 */  lw         $v0, ($v1)
/* DE000 80034AF0 C462000C */  lwc1       $f2, 0xc($v1)
/* DE004 80034AF4 3C014200 */  lui        $at, 0x4200
/* DE008 80034AF8 44810000 */  mtc1       $at, $f0
/* DE00C 80034AFC 8C430000 */  lw         $v1, ($v0)
/* DE010 80034B00 46001082 */  mul.s      $f2, $f2, $f0
/* DE014 80034B04 8462003A */  lh         $v0, 0x3a($v1)
/* DE018 80034B08 44820000 */  mtc1       $v0, $f0
/* DE01C 80034B0C 00000000 */  nop
/* DE020 80034B10 46800020 */  cvt.s.w    $f0, $f0
/* DE024 80034B14 46020001 */  sub.s      $f0, $f0, $f2
/* DE028 80034B18 8466003C */  lh         $a2, 0x3c($v1)
/* DE02C 80034B1C 4600008D */  trunc.w.s  $f2, $f0
/* DE030 80034B20 44051000 */  mfc1       $a1, $f2
/* DE034 80034B24 00000000 */  nop
/* DE038 80034B28 28A20141 */  slti       $v0, $a1, 0x141
/* DE03C 80034B2C 14400003 */  bnez       $v0, .L80034B3C
/* DE040 80034B30 28A2FFE0 */   slti      $v0, $a1, -0x20
/* DE044 80034B34 0800D2D1 */  j          .L80034B44
/* DE048 80034B38 24050140 */   addiu     $a1, $zero, 0x140
.L80034B3C:
/* DE04C 80034B3C 54400001 */  bnezl      $v0, .L80034B44
/* DE050 80034B40 2405FFE0 */   addiu     $a1, $zero, -0x20
.L80034B44:
/* DE054 80034B44 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE058 80034B48 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE05C 80034B4C 8C420000 */  lw         $v0, ($v0)
/* DE060 80034B50 00052C80 */  sll        $a1, $a1, 0x12
/* DE064 80034B54 00052C03 */  sra        $a1, $a1, 0x10
/* DE068 80034B58 8C44000C */  lw         $a0, 0xc($v0)
/* DE06C 80034B5C 00063480 */  sll        $a2, $a2, 0x12
/* DE070 80034B60 0C028D89 */  jal        func_800A3624
/* DE074 80034B64 00063403 */   sra       $a2, $a2, 0x10
/* DE078 80034B68 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE07C 80034B6C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE080 80034B70 3C014200 */  lui        $at, 0x4200
/* DE084 80034B74 44810000 */  mtc1       $at, $f0
/* DE088 80034B78 8C430000 */  lw         $v1, ($v0)
/* DE08C 80034B7C C442000C */  lwc1       $f2, 0xc($v0)
/* DE090 80034B80 8C630000 */  lw         $v1, ($v1)
/* DE094 80034B84 46001082 */  mul.s      $f2, $f2, $f0
/* DE098 80034B88 8462006A */  lh         $v0, 0x6a($v1)
/* DE09C 80034B8C 44820000 */  mtc1       $v0, $f0
/* DE0A0 80034B90 00000000 */  nop
/* DE0A4 80034B94 46800020 */  cvt.s.w    $f0, $f0
/* DE0A8 80034B98 46020001 */  sub.s      $f0, $f0, $f2
/* DE0AC 80034B9C 8466006C */  lh         $a2, 0x6c($v1)
/* DE0B0 80034BA0 4600008D */  trunc.w.s  $f2, $f0
/* DE0B4 80034BA4 44051000 */  mfc1       $a1, $f2
/* DE0B8 80034BA8 00000000 */  nop
/* DE0BC 80034BAC 28A20141 */  slti       $v0, $a1, 0x141
/* DE0C0 80034BB0 14400003 */  bnez       $v0, .L80034BC0
/* DE0C4 80034BB4 28A2FFE0 */   slti      $v0, $a1, -0x20
/* DE0C8 80034BB8 0800D2F2 */  j          .L80034BC8
/* DE0CC 80034BBC 24050140 */   addiu     $a1, $zero, 0x140
.L80034BC0:
/* DE0D0 80034BC0 54400001 */  bnezl      $v0, .L80034BC8
/* DE0D4 80034BC4 2405FFE0 */   addiu     $a1, $zero, -0x20
.L80034BC8:
/* DE0D8 80034BC8 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE0DC 80034BCC 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE0E0 80034BD0 8C420000 */  lw         $v0, ($v0)
/* DE0E4 80034BD4 00052C80 */  sll        $a1, $a1, 0x12
/* DE0E8 80034BD8 00052C03 */  sra        $a1, $a1, 0x10
/* DE0EC 80034BDC 8C440014 */  lw         $a0, 0x14($v0)
/* DE0F0 80034BE0 00063480 */  sll        $a2, $a2, 0x12
/* DE0F4 80034BE4 0C028D89 */  jal        func_800A3624
/* DE0F8 80034BE8 00063403 */   sra       $a2, $a2, 0x10
/* DE0FC 80034BEC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE100 80034BF0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE104 80034BF4 3C013F80 */  lui        $at, 0x3f80
/* DE108 80034BF8 44811000 */  mtc1       $at, $f2
/* DE10C 80034BFC C440000C */  lwc1       $f0, 0xc($v0)
/* DE110 80034C00 46020000 */  add.s      $f0, $f0, $f2
/* DE114 80034C04 E440000C */  swc1       $f0, 0xc($v0)
.L80034C08:
/* DE118 80034C08 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE11C 80034C0C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE120 80034C10 0C00C51F */  jal        func_8003147C_DA98C
/* DE124 80034C14 8C440000 */   lw        $a0, ($v0)
/* DE128 80034C18 3C048007 */  lui        $a0, %hi(D_80068520)
/* DE12C 80034C1C 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DE130 80034C20 8C830008 */  lw         $v1, 8($a0)
/* DE134 80034C24 00001021 */  addu       $v0, $zero, $zero
/* DE138 80034C28 24630001 */  addiu      $v1, $v1, 1
/* DE13C 80034C2C AC830008 */  sw         $v1, 8($a0)
.L80034C30:
/* DE140 80034C30 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE144 80034C34 03E00008 */  jr         $ra
/* DE148 80034C38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80034C3C_DE14C
/* DE14C 80034C3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE150 80034C40 24040010 */  addiu      $a0, $zero, 0x10
/* DE154 80034C44 AFBF0014 */  sw         $ra, 0x14($sp)
/* DE158 80034C48 0C032663 */  jal        func_800C998C
/* DE15C 80034C4C AFB00010 */   sw        $s0, 0x10($sp)
/* DE160 80034C50 00402021 */  addu       $a0, $v0, $zero
/* DE164 80034C54 3C018007 */  lui        $at, %hi(D_80068520)
/* DE168 80034C58 AC248520 */  sw         $a0, %lo(D_80068520)($at)
/* DE16C 80034C5C 0C030134 */  jal        bzero
/* DE170 80034C60 24050010 */   addiu     $a1, $zero, 0x10
/* DE174 80034C64 3C048007 */  lui        $a0, %hi(D_80068944)
/* DE178 80034C68 24848944 */  addiu      $a0, $a0, %lo(D_80068944)
/* DE17C 80034C6C 0C00C490 */  jal        func_80031240_DA750
/* DE180 80034C70 24050004 */   addiu     $a1, $zero, 4
/* DE184 80034C74 3C038007 */  lui        $v1, %hi(D_80068520)
/* DE188 80034C78 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DE18C 80034C7C AC620000 */  sw         $v0, ($v1)
/* DE190 80034C80 8C44000C */  lw         $a0, 0xc($v0)
/* DE194 80034C84 00002821 */  addu       $a1, $zero, $zero
/* DE198 80034C88 0C02912A */  jal        func_800A44A8
/* DE19C 80034C8C 00003021 */   addu      $a2, $zero, $zero
/* DE1A0 80034C90 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE1A4 80034C94 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE1A8 80034C98 8C420000 */  lw         $v0, ($v0)
/* DE1AC 80034C9C 24100003 */  addiu      $s0, $zero, 3
/* DE1B0 80034CA0 8C440010 */  lw         $a0, 0x10($v0)
/* DE1B4 80034CA4 00002821 */  addu       $a1, $zero, $zero
/* DE1B8 80034CA8 0C02912A */  jal        func_800A44A8
/* DE1BC 80034CAC 00003021 */   addu      $a2, $zero, $zero
.L80034CB0:
/* DE1C0 80034CB0 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE1C4 80034CB4 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE1C8 80034CB8 8C430000 */  lw         $v1, ($v0)
/* DE1CC 80034CBC 00101080 */  sll        $v0, $s0, 2
/* DE1D0 80034CC0 00431021 */  addu       $v0, $v0, $v1
/* DE1D4 80034CC4 8C440004 */  lw         $a0, 4($v0)
/* DE1D8 80034CC8 8C82000C */  lw         $v0, 0xc($a0)
/* DE1DC 80034CCC 90430004 */  lbu        $v1, 4($v0)
/* DE1E0 80034CD0 84450000 */  lh         $a1, ($v0)
/* DE1E4 80034CD4 84460002 */  lh         $a2, 2($v0)
/* DE1E8 80034CD8 14600002 */  bnez       $v1, .L80034CE4
/* DE1EC 80034CDC 24070001 */   addiu     $a3, $zero, 1
/* DE1F0 80034CE0 24070002 */  addiu      $a3, $zero, 2
.L80034CE4:
/* DE1F4 80034CE4 8C840010 */  lw         $a0, 0x10($a0)
/* DE1F8 80034CE8 0C029767 */  jal        func_800A5D9C
/* DE1FC 80034CEC 26100001 */   addiu     $s0, $s0, 1
/* DE200 80034CF0 2A020004 */  slti       $v0, $s0, 4
/* DE204 80034CF4 1440FFEE */  bnez       $v0, .L80034CB0
/* DE208 80034CF8 00000000 */   nop
/* DE20C 80034CFC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE210 80034D00 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE214 80034D04 AC400008 */  sw         $zero, 8($v0)
/* DE218 80034D08 AC40000C */  sw         $zero, 0xc($v0)
/* DE21C 80034D0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* DE220 80034D10 8FB00010 */  lw         $s0, 0x10($sp)
/* DE224 80034D14 03E00008 */  jr         $ra
/* DE228 80034D18 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80034D1C_DE22C
/* DE22C 80034D1C 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE230 80034D20 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE234 80034D24 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE238 80034D28 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE23C 80034D2C 0C00C505 */  jal        func_80031414_DA924
/* DE240 80034D30 8C440000 */   lw        $a0, ($v0)
/* DE244 80034D34 3C048007 */  lui        $a0, %hi(D_80068520)
/* DE248 80034D38 0C0326A1 */  jal        func_800C9A84
/* DE24C 80034D3C 8C848520 */   lw        $a0, %lo(D_80068520)($a0)
/* DE250 80034D40 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE254 80034D44 03E00008 */  jr         $ra
/* DE258 80034D48 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80034D4C_DE25C
/* DE25C 80034D4C 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE260 80034D50 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE264 80034D54 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE268 80034D58 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE26C 80034D5C 8C430008 */  lw         $v1, 8($v0)
/* DE270 80034D60 3C028017 */  lui        $v0, %hi(D_8016D168)
/* DE274 80034D64 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* DE278 80034D68 14620003 */  bne        $v1, $v0, .L80034D78
/* DE27C 80034D6C 00000000 */   nop
/* DE280 80034D70 0800D3CC */  j          .L80034F30
/* DE284 80034D74 2402FFFF */   addiu     $v0, $zero, -1
.L80034D78:
/* DE288 80034D78 44800000 */  mtc1       $zero, $f0
/* DE28C 80034D7C 44800800 */  mtc1       $zero, $f1
/* DE290 80034D80 44821000 */  mtc1       $v0, $f2
/* DE294 80034D84 00000000 */  nop
/* DE298 80034D88 468010A1 */  cvt.d.w    $f2, $f2
/* DE29C 80034D8C 46201082 */  mul.d      $f2, $f2, $f0
/* DE2A0 80034D90 44830000 */  mtc1       $v1, $f0
/* DE2A4 80034D94 00000000 */  nop
/* DE2A8 80034D98 46800021 */  cvt.d.w    $f0, $f0
/* DE2AC 80034D9C 46220032 */  c.eq.d     $f0, $f2
/* DE2B0 80034DA0 00000000 */  nop
/* DE2B4 80034DA4 45000003 */  bc1f       .L80034DB4
/* DE2B8 80034DA8 00000000 */   nop
/* DE2BC 80034DAC 0C026DD5 */  jal        func_8009B754
/* DE2C0 80034DB0 24040068 */   addiu     $a0, $zero, 0x68
.L80034DB4:
/* DE2C4 80034DB4 3C018007 */  lui        $at, %hi(D_80069D68)
/* DE2C8 80034DB8 D4209D68 */  ldc1       $f0, %lo(D_80069D68)($at)
/* DE2CC 80034DBC 3C018017 */  lui        $at, %hi(D_8016D168)
/* DE2D0 80034DC0 C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* DE2D4 80034DC4 468010A1 */  cvt.d.w    $f2, $f2
/* DE2D8 80034DC8 46201082 */  mul.d      $f2, $f2, $f0
/* DE2DC 80034DCC 3C038007 */  lui        $v1, %hi(D_80068520)
/* DE2E0 80034DD0 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DE2E4 80034DD4 C4600008 */  lwc1       $f0, 8($v1)
/* DE2E8 80034DD8 46800021 */  cvt.d.w    $f0, $f0
/* DE2EC 80034DDC 4620103C */  c.lt.d     $f2, $f0
/* DE2F0 80034DE0 00000000 */  nop
/* DE2F4 80034DE4 45000048 */  bc1f       .L80034F08
/* DE2F8 80034DE8 00000000 */   nop
/* DE2FC 80034DEC 8C620000 */  lw         $v0, ($v1)
/* DE300 80034DF0 C462000C */  lwc1       $f2, 0xc($v1)
/* DE304 80034DF4 3C014200 */  lui        $at, 0x4200
/* DE308 80034DF8 44810000 */  mtc1       $at, $f0
/* DE30C 80034DFC 8C430000 */  lw         $v1, ($v0)
/* DE310 80034E00 46001082 */  mul.s      $f2, $f2, $f0
/* DE314 80034E04 8462003A */  lh         $v0, 0x3a($v1)
/* DE318 80034E08 44820000 */  mtc1       $v0, $f0
/* DE31C 80034E0C 00000000 */  nop
/* DE320 80034E10 46800020 */  cvt.s.w    $f0, $f0
/* DE324 80034E14 46020001 */  sub.s      $f0, $f0, $f2
/* DE328 80034E18 8466003C */  lh         $a2, 0x3c($v1)
/* DE32C 80034E1C 4600008D */  trunc.w.s  $f2, $f0
/* DE330 80034E20 44051000 */  mfc1       $a1, $f2
/* DE334 80034E24 00000000 */  nop
/* DE338 80034E28 28A20141 */  slti       $v0, $a1, 0x141
/* DE33C 80034E2C 14400003 */  bnez       $v0, .L80034E3C
/* DE340 80034E30 28A2FFE0 */   slti      $v0, $a1, -0x20
/* DE344 80034E34 0800D391 */  j          .L80034E44
/* DE348 80034E38 24050140 */   addiu     $a1, $zero, 0x140
.L80034E3C:
/* DE34C 80034E3C 54400001 */  bnezl      $v0, .L80034E44
/* DE350 80034E40 2405FFE0 */   addiu     $a1, $zero, -0x20
.L80034E44:
/* DE354 80034E44 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE358 80034E48 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE35C 80034E4C 8C420000 */  lw         $v0, ($v0)
/* DE360 80034E50 00052C80 */  sll        $a1, $a1, 0x12
/* DE364 80034E54 00052C03 */  sra        $a1, $a1, 0x10
/* DE368 80034E58 8C44000C */  lw         $a0, 0xc($v0)
/* DE36C 80034E5C 00063480 */  sll        $a2, $a2, 0x12
/* DE370 80034E60 0C028D89 */  jal        func_800A3624
/* DE374 80034E64 00063403 */   sra       $a2, $a2, 0x10
/* DE378 80034E68 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE37C 80034E6C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE380 80034E70 3C014200 */  lui        $at, 0x4200
/* DE384 80034E74 44810000 */  mtc1       $at, $f0
/* DE388 80034E78 8C430000 */  lw         $v1, ($v0)
/* DE38C 80034E7C C442000C */  lwc1       $f2, 0xc($v0)
/* DE390 80034E80 8C630000 */  lw         $v1, ($v1)
/* DE394 80034E84 46001082 */  mul.s      $f2, $f2, $f0
/* DE398 80034E88 84620052 */  lh         $v0, 0x52($v1)
/* DE39C 80034E8C 44820000 */  mtc1       $v0, $f0
/* DE3A0 80034E90 00000000 */  nop
/* DE3A4 80034E94 46800020 */  cvt.s.w    $f0, $f0
/* DE3A8 80034E98 46020001 */  sub.s      $f0, $f0, $f2
/* DE3AC 80034E9C 84660054 */  lh         $a2, 0x54($v1)
/* DE3B0 80034EA0 4600008D */  trunc.w.s  $f2, $f0
/* DE3B4 80034EA4 44051000 */  mfc1       $a1, $f2
/* DE3B8 80034EA8 00000000 */  nop
/* DE3BC 80034EAC 28A20141 */  slti       $v0, $a1, 0x141
/* DE3C0 80034EB0 14400003 */  bnez       $v0, .L80034EC0
/* DE3C4 80034EB4 28A2FFE0 */   slti      $v0, $a1, -0x20
/* DE3C8 80034EB8 0800D3B2 */  j          .L80034EC8
/* DE3CC 80034EBC 24050140 */   addiu     $a1, $zero, 0x140
.L80034EC0:
/* DE3D0 80034EC0 54400001 */  bnezl      $v0, .L80034EC8
/* DE3D4 80034EC4 2405FFE0 */   addiu     $a1, $zero, -0x20
.L80034EC8:
/* DE3D8 80034EC8 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE3DC 80034ECC 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE3E0 80034ED0 8C420000 */  lw         $v0, ($v0)
/* DE3E4 80034ED4 00052C80 */  sll        $a1, $a1, 0x12
/* DE3E8 80034ED8 00052C03 */  sra        $a1, $a1, 0x10
/* DE3EC 80034EDC 8C440010 */  lw         $a0, 0x10($v0)
/* DE3F0 80034EE0 00063480 */  sll        $a2, $a2, 0x12
/* DE3F4 80034EE4 0C028D89 */  jal        func_800A3624
/* DE3F8 80034EE8 00063403 */   sra       $a2, $a2, 0x10
/* DE3FC 80034EEC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE400 80034EF0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE404 80034EF4 3C013F80 */  lui        $at, 0x3f80
/* DE408 80034EF8 44811000 */  mtc1       $at, $f2
/* DE40C 80034EFC C440000C */  lwc1       $f0, 0xc($v0)
/* DE410 80034F00 46020000 */  add.s      $f0, $f0, $f2
/* DE414 80034F04 E440000C */  swc1       $f0, 0xc($v0)
.L80034F08:
/* DE418 80034F08 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE41C 80034F0C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE420 80034F10 0C00C51F */  jal        func_8003147C_DA98C
/* DE424 80034F14 8C440000 */   lw        $a0, ($v0)
/* DE428 80034F18 3C048007 */  lui        $a0, %hi(D_80068520)
/* DE42C 80034F1C 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DE430 80034F20 8C830008 */  lw         $v1, 8($a0)
/* DE434 80034F24 00001021 */  addu       $v0, $zero, $zero
/* DE438 80034F28 24630001 */  addiu      $v1, $v1, 1
/* DE43C 80034F2C AC830008 */  sw         $v1, 8($a0)
.L80034F30:
/* DE440 80034F30 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE444 80034F34 03E00008 */  jr         $ra
/* DE448 80034F38 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80034F3C_DE44C
/* DE44C 80034F3C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE450 80034F40 24040010 */  addiu      $a0, $zero, 0x10
/* DE454 80034F44 AFBF0014 */  sw         $ra, 0x14($sp)
/* DE458 80034F48 0C032663 */  jal        func_800C998C
/* DE45C 80034F4C AFB00010 */   sw        $s0, 0x10($sp)
/* DE460 80034F50 00402021 */  addu       $a0, $v0, $zero
/* DE464 80034F54 3C018007 */  lui        $at, %hi(D_80068520)
/* DE468 80034F58 AC248520 */  sw         $a0, %lo(D_80068520)($at)
/* DE46C 80034F5C 0C030134 */  jal        bzero
/* DE470 80034F60 24050010 */   addiu     $a1, $zero, 0x10
/* DE474 80034F64 3C048007 */  lui        $a0, %hi(func_800689A4_B7954)
/* DE478 80034F68 248489A4 */  addiu      $a0, $a0, %lo(func_800689A4_B7954)
/* DE47C 80034F6C 0C00C490 */  jal        func_80031240_DA750
/* DE480 80034F70 24050004 */   addiu     $a1, $zero, 4
/* DE484 80034F74 3C038007 */  lui        $v1, %hi(D_80068520)
/* DE488 80034F78 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DE48C 80034F7C AC620000 */  sw         $v0, ($v1)
/* DE490 80034F80 8C44000C */  lw         $a0, 0xc($v0)
/* DE494 80034F84 00002821 */  addu       $a1, $zero, $zero
/* DE498 80034F88 0C02912A */  jal        func_800A44A8
/* DE49C 80034F8C 00003021 */   addu      $a2, $zero, $zero
/* DE4A0 80034F90 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE4A4 80034F94 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE4A8 80034F98 8C420000 */  lw         $v0, ($v0)
/* DE4AC 80034F9C 24100003 */  addiu      $s0, $zero, 3
/* DE4B0 80034FA0 8C440010 */  lw         $a0, 0x10($v0)
/* DE4B4 80034FA4 00002821 */  addu       $a1, $zero, $zero
/* DE4B8 80034FA8 0C02912A */  jal        func_800A44A8
/* DE4BC 80034FAC 00003021 */   addu      $a2, $zero, $zero
.L80034FB0:
/* DE4C0 80034FB0 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE4C4 80034FB4 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE4C8 80034FB8 8C430000 */  lw         $v1, ($v0)
/* DE4CC 80034FBC 00101080 */  sll        $v0, $s0, 2
/* DE4D0 80034FC0 00431021 */  addu       $v0, $v0, $v1
/* DE4D4 80034FC4 8C440004 */  lw         $a0, 4($v0)
/* DE4D8 80034FC8 8C82000C */  lw         $v0, 0xc($a0)
/* DE4DC 80034FCC 90430004 */  lbu        $v1, 4($v0)
/* DE4E0 80034FD0 84450000 */  lh         $a1, ($v0)
/* DE4E4 80034FD4 84460002 */  lh         $a2, 2($v0)
/* DE4E8 80034FD8 14600002 */  bnez       $v1, .L80034FE4
/* DE4EC 80034FDC 24070001 */   addiu     $a3, $zero, 1
/* DE4F0 80034FE0 24070002 */  addiu      $a3, $zero, 2
.L80034FE4:
/* DE4F4 80034FE4 8C840010 */  lw         $a0, 0x10($a0)
/* DE4F8 80034FE8 0C029767 */  jal        func_800A5D9C
/* DE4FC 80034FEC 26100001 */   addiu     $s0, $s0, 1
/* DE500 80034FF0 2A020004 */  slti       $v0, $s0, 4
/* DE504 80034FF4 1440FFEE */  bnez       $v0, .L80034FB0
/* DE508 80034FF8 00000000 */   nop
/* DE50C 80034FFC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE510 80035000 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE514 80035004 AC400008 */  sw         $zero, 8($v0)
/* DE518 80035008 AC40000C */  sw         $zero, 0xc($v0)
/* DE51C 8003500C 8FBF0014 */  lw         $ra, 0x14($sp)
/* DE520 80035010 8FB00010 */  lw         $s0, 0x10($sp)
/* DE524 80035014 03E00008 */  jr         $ra
/* DE528 80035018 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003501C_DE52C
/* DE52C 8003501C 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE530 80035020 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE534 80035024 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE538 80035028 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE53C 8003502C 0C00C505 */  jal        func_80031414_DA924
/* DE540 80035030 8C440000 */   lw        $a0, ($v0)
/* DE544 80035034 3C048007 */  lui        $a0, %hi(D_80068520)
/* DE548 80035038 0C0326A1 */  jal        func_800C9A84
/* DE54C 8003503C 8C848520 */   lw        $a0, %lo(D_80068520)($a0)
/* DE550 80035040 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE554 80035044 03E00008 */  jr         $ra
/* DE558 80035048 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8003504C_DE55C
/* DE55C 8003504C 3C038007 */  lui        $v1, %hi(D_80068520)
/* DE560 80035050 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DE564 80035054 3C028017 */  lui        $v0, %hi(D_8016D168)
/* DE568 80035058 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* DE56C 8003505C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE570 80035060 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE574 80035064 8C640008 */  lw         $a0, 8($v1)
/* DE578 80035068 14820003 */  bne        $a0, $v0, .L80035078
/* DE57C 8003506C 00000000 */   nop
/* DE580 80035070 0800D47C */  j          .L800351F0
/* DE584 80035074 2402FFFF */   addiu     $v0, $zero, -1
.L80035078:
/* DE588 80035078 3C018007 */  lui        $at, %hi(D_80069D70)
/* DE58C 8003507C D4209D70 */  ldc1       $f0, %lo(D_80069D70)($at)
/* DE590 80035080 44821000 */  mtc1       $v0, $f2
/* DE594 80035084 00000000 */  nop
/* DE598 80035088 468010A1 */  cvt.d.w    $f2, $f2
/* DE59C 8003508C 46201082 */  mul.d      $f2, $f2, $f0
/* DE5A0 80035090 44840000 */  mtc1       $a0, $f0
/* DE5A4 80035094 00000000 */  nop
/* DE5A8 80035098 46800021 */  cvt.d.w    $f0, $f0
/* DE5AC 8003509C 4620103C */  c.lt.d     $f2, $f0
/* DE5B0 800350A0 00000000 */  nop
/* DE5B4 800350A4 45000048 */  bc1f       .L800351C8
/* DE5B8 800350A8 00000000 */   nop
/* DE5BC 800350AC 8C620000 */  lw         $v0, ($v1)
/* DE5C0 800350B0 C462000C */  lwc1       $f2, 0xc($v1)
/* DE5C4 800350B4 3C014200 */  lui        $at, 0x4200
/* DE5C8 800350B8 44810000 */  mtc1       $at, $f0
/* DE5CC 800350BC 8C430000 */  lw         $v1, ($v0)
/* DE5D0 800350C0 46001082 */  mul.s      $f2, $f2, $f0
/* DE5D4 800350C4 8462003A */  lh         $v0, 0x3a($v1)
/* DE5D8 800350C8 44820000 */  mtc1       $v0, $f0
/* DE5DC 800350CC 00000000 */  nop
/* DE5E0 800350D0 46800020 */  cvt.s.w    $f0, $f0
/* DE5E4 800350D4 46020000 */  add.s      $f0, $f0, $f2
/* DE5E8 800350D8 8466003C */  lh         $a2, 0x3c($v1)
/* DE5EC 800350DC 4600008D */  trunc.w.s  $f2, $f0
/* DE5F0 800350E0 44051000 */  mfc1       $a1, $f2
/* DE5F4 800350E4 00000000 */  nop
/* DE5F8 800350E8 28A20011 */  slti       $v0, $a1, 0x11
/* DE5FC 800350EC 14400003 */  bnez       $v0, .L800350FC
/* DE600 800350F0 28A2FEC0 */   slti      $v0, $a1, -0x140
/* DE604 800350F4 0800D441 */  j          .L80035104
/* DE608 800350F8 24050010 */   addiu     $a1, $zero, 0x10
.L800350FC:
/* DE60C 800350FC 54400001 */  bnezl      $v0, .L80035104
/* DE610 80035100 2405FEC0 */   addiu     $a1, $zero, -0x140
.L80035104:
/* DE614 80035104 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE618 80035108 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE61C 8003510C 8C420000 */  lw         $v0, ($v0)
/* DE620 80035110 00052C80 */  sll        $a1, $a1, 0x12
/* DE624 80035114 00052C03 */  sra        $a1, $a1, 0x10
/* DE628 80035118 8C44000C */  lw         $a0, 0xc($v0)
/* DE62C 8003511C 00063480 */  sll        $a2, $a2, 0x12
/* DE630 80035120 0C028D89 */  jal        func_800A3624
/* DE634 80035124 00063403 */   sra       $a2, $a2, 0x10
/* DE638 80035128 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE63C 8003512C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE640 80035130 3C014200 */  lui        $at, 0x4200
/* DE644 80035134 44810000 */  mtc1       $at, $f0
/* DE648 80035138 8C430000 */  lw         $v1, ($v0)
/* DE64C 8003513C C442000C */  lwc1       $f2, 0xc($v0)
/* DE650 80035140 8C630000 */  lw         $v1, ($v1)
/* DE654 80035144 46001082 */  mul.s      $f2, $f2, $f0
/* DE658 80035148 84620052 */  lh         $v0, 0x52($v1)
/* DE65C 8003514C 44820000 */  mtc1       $v0, $f0
/* DE660 80035150 00000000 */  nop
/* DE664 80035154 46800020 */  cvt.s.w    $f0, $f0
/* DE668 80035158 46020000 */  add.s      $f0, $f0, $f2
/* DE66C 8003515C 84660054 */  lh         $a2, 0x54($v1)
/* DE670 80035160 4600008D */  trunc.w.s  $f2, $f0
/* DE674 80035164 44051000 */  mfc1       $a1, $f2
/* DE678 80035168 00000000 */  nop
/* DE67C 8003516C 28A20011 */  slti       $v0, $a1, 0x11
/* DE680 80035170 14400003 */  bnez       $v0, .L80035180
/* DE684 80035174 28A2FEC0 */   slti      $v0, $a1, -0x140
/* DE688 80035178 0800D462 */  j          .L80035188
/* DE68C 8003517C 24050010 */   addiu     $a1, $zero, 0x10
.L80035180:
/* DE690 80035180 54400001 */  bnezl      $v0, .L80035188
/* DE694 80035184 2405FEC0 */   addiu     $a1, $zero, -0x140
.L80035188:
/* DE698 80035188 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE69C 8003518C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE6A0 80035190 8C420000 */  lw         $v0, ($v0)
/* DE6A4 80035194 00052C80 */  sll        $a1, $a1, 0x12
/* DE6A8 80035198 00052C03 */  sra        $a1, $a1, 0x10
/* DE6AC 8003519C 8C440010 */  lw         $a0, 0x10($v0)
/* DE6B0 800351A0 00063480 */  sll        $a2, $a2, 0x12
/* DE6B4 800351A4 0C028D89 */  jal        func_800A3624
/* DE6B8 800351A8 00063403 */   sra       $a2, $a2, 0x10
/* DE6BC 800351AC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE6C0 800351B0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE6C4 800351B4 3C013F80 */  lui        $at, 0x3f80
/* DE6C8 800351B8 44811000 */  mtc1       $at, $f2
/* DE6CC 800351BC C440000C */  lwc1       $f0, 0xc($v0)
/* DE6D0 800351C0 46020000 */  add.s      $f0, $f0, $f2
/* DE6D4 800351C4 E440000C */  swc1       $f0, 0xc($v0)
.L800351C8:
/* DE6D8 800351C8 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE6DC 800351CC 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE6E0 800351D0 0C00C51F */  jal        func_8003147C_DA98C
/* DE6E4 800351D4 8C440000 */   lw        $a0, ($v0)
/* DE6E8 800351D8 3C048007 */  lui        $a0, %hi(D_80068520)
/* DE6EC 800351DC 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DE6F0 800351E0 8C830008 */  lw         $v1, 8($a0)
/* DE6F4 800351E4 00001021 */  addu       $v0, $zero, $zero
/* DE6F8 800351E8 24630001 */  addiu      $v1, $v1, 1
/* DE6FC 800351EC AC830008 */  sw         $v1, 8($a0)
.L800351F0:
/* DE700 800351F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE704 800351F4 03E00008 */  jr         $ra
/* DE708 800351F8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800351FC_DE70C
/* DE70C 800351FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE710 80035200 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE714 80035204 0C032663 */  jal        func_800C998C
/* DE718 80035208 24040010 */   addiu     $a0, $zero, 0x10
/* DE71C 8003520C 00402021 */  addu       $a0, $v0, $zero
/* DE720 80035210 3C018007 */  lui        $at, %hi(D_80068520)
/* DE724 80035214 AC248520 */  sw         $a0, %lo(D_80068520)($at)
/* DE728 80035218 0C030134 */  jal        bzero
/* DE72C 8003521C 24050010 */   addiu     $a1, $zero, 0x10
/* DE730 80035220 3C048007 */  lui        $a0, %hi(D_80068A04)
/* DE734 80035224 24848A04 */  addiu      $a0, $a0, %lo(D_80068A04)
/* DE738 80035228 0C00C490 */  jal        func_80031240_DA750
/* DE73C 8003522C 2405000D */   addiu     $a1, $zero, 0xd
/* DE740 80035230 3C038007 */  lui        $v1, %hi(D_80068520)
/* DE744 80035234 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DE748 80035238 AC620000 */  sw         $v0, ($v1)
/* DE74C 8003523C 8C440020 */  lw         $a0, 0x20($v0)
/* DE750 80035240 8C82000C */  lw         $v0, 0xc($a0)
/* DE754 80035244 90430004 */  lbu        $v1, 4($v0)
/* DE758 80035248 84450000 */  lh         $a1, ($v0)
/* DE75C 8003524C 84460002 */  lh         $a2, 2($v0)
/* DE760 80035250 14600002 */  bnez       $v1, .L8003525C
/* DE764 80035254 24070001 */   addiu     $a3, $zero, 1
/* DE768 80035258 24070002 */  addiu      $a3, $zero, 2
.L8003525C:
/* DE76C 8003525C 0C0297AC */  jal        func_800A5EB0
/* DE770 80035260 8C840010 */   lw        $a0, 0x10($a0)
/* DE774 80035264 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE778 80035268 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE77C 8003526C 8C420000 */  lw         $v0, ($v0)
/* DE780 80035270 8C440024 */  lw         $a0, 0x24($v0)
/* DE784 80035274 8C82000C */  lw         $v0, 0xc($a0)
/* DE788 80035278 90430004 */  lbu        $v1, 4($v0)
/* DE78C 8003527C 84450000 */  lh         $a1, ($v0)
/* DE790 80035280 84460002 */  lh         $a2, 2($v0)
/* DE794 80035284 14600002 */  bnez       $v1, .L80035290
/* DE798 80035288 24070001 */   addiu     $a3, $zero, 1
/* DE79C 8003528C 24070002 */  addiu      $a3, $zero, 2
.L80035290:
/* DE7A0 80035290 0C0297AC */  jal        func_800A5EB0
/* DE7A4 80035294 8C840010 */   lw        $a0, 0x10($a0)
/* DE7A8 80035298 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE7AC 8003529C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE7B0 800352A0 8C420000 */  lw         $v0, ($v0)
/* DE7B4 800352A4 8C42000C */  lw         $v0, 0xc($v0)
/* DE7B8 800352A8 8C420014 */  lw         $v0, 0x14($v0)
/* DE7BC 800352AC 3403D738 */  ori        $v1, $zero, 0xd738
/* DE7C0 800352B0 A4430000 */  sh         $v1, ($v0)
/* DE7C4 800352B4 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE7C8 800352B8 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE7CC 800352BC 8C420000 */  lw         $v0, ($v0)
/* DE7D0 800352C0 8C420010 */  lw         $v0, 0x10($v0)
/* DE7D4 800352C4 8C420014 */  lw         $v0, 0x14($v0)
/* DE7D8 800352C8 A4430000 */  sh         $v1, ($v0)
/* DE7DC 800352CC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE7E0 800352D0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE7E4 800352D4 8C420000 */  lw         $v0, ($v0)
/* DE7E8 800352D8 8C420014 */  lw         $v0, 0x14($v0)
/* DE7EC 800352DC 8C420014 */  lw         $v0, 0x14($v0)
/* DE7F0 800352E0 A4430000 */  sh         $v1, ($v0)
/* DE7F4 800352E4 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE7F8 800352E8 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE7FC 800352EC 8C420000 */  lw         $v0, ($v0)
/* DE800 800352F0 8C420018 */  lw         $v0, 0x18($v0)
/* DE804 800352F4 8C420014 */  lw         $v0, 0x14($v0)
/* DE808 800352F8 A4430000 */  sh         $v1, ($v0)
/* DE80C 800352FC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE810 80035300 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE814 80035304 8C420000 */  lw         $v0, ($v0)
/* DE818 80035308 8C42001C */  lw         $v0, 0x1c($v0)
/* DE81C 8003530C 8C420014 */  lw         $v0, 0x14($v0)
/* DE820 80035310 A4430000 */  sh         $v1, ($v0)
/* DE824 80035314 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE828 80035318 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE82C 8003531C 8C420000 */  lw         $v0, ($v0)
/* DE830 80035320 8C420020 */  lw         $v0, 0x20($v0)
/* DE834 80035324 8C420014 */  lw         $v0, 0x14($v0)
/* DE838 80035328 3403FEBA */  ori        $v1, $zero, 0xfeba
/* DE83C 8003532C A4430000 */  sh         $v1, ($v0)
/* DE840 80035330 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE844 80035334 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE848 80035338 8C420000 */  lw         $v0, ($v0)
/* DE84C 8003533C 8C420024 */  lw         $v0, 0x24($v0)
/* DE850 80035340 8C420014 */  lw         $v0, 0x14($v0)
/* DE854 80035344 A4430000 */  sh         $v1, ($v0)
/* DE858 80035348 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE85C 8003534C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE860 80035350 8C420000 */  lw         $v0, ($v0)
/* DE864 80035354 8C420028 */  lw         $v0, 0x28($v0)
/* DE868 80035358 8C420014 */  lw         $v0, 0x14($v0)
/* DE86C 8003535C A4430000 */  sh         $v1, ($v0)
/* DE870 80035360 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE874 80035364 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE878 80035368 8C420000 */  lw         $v0, ($v0)
/* DE87C 8003536C 8C42002C */  lw         $v0, 0x2c($v0)
/* DE880 80035370 8C420014 */  lw         $v0, 0x14($v0)
/* DE884 80035374 A4430000 */  sh         $v1, ($v0)
/* DE888 80035378 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE88C 8003537C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE890 80035380 8C420000 */  lw         $v0, ($v0)
/* DE894 80035384 8C420030 */  lw         $v0, 0x30($v0)
/* DE898 80035388 8C420014 */  lw         $v0, 0x14($v0)
/* DE89C 8003538C A4430000 */  sh         $v1, ($v0)
/* DE8A0 80035390 3C048017 */  lui        $a0, %hi(D_8016D168)
/* DE8A4 80035394 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* DE8A8 80035398 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE8AC 8003539C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE8B0 800353A0 00042040 */  sll        $a0, $a0, 1
/* DE8B4 800353A4 AC400008 */  sw         $zero, 8($v0)
/* DE8B8 800353A8 0C02A5D2 */  jal        func_800A9748
/* DE8BC 800353AC AC40000C */   sw        $zero, 0xc($v0)
/* DE8C0 800353B0 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE8C4 800353B4 03E00008 */  jr         $ra
/* DE8C8 800353B8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800353BC_DE8CC
/* DE8CC 800353BC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE8D0 800353C0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE8D4 800353C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE8D8 800353C8 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE8DC 800353CC 0C00C505 */  jal        func_80031414_DA924
/* DE8E0 800353D0 8C440000 */   lw        $a0, ($v0)
/* DE8E4 800353D4 3C048007 */  lui        $a0, %hi(D_80068520)
/* DE8E8 800353D8 0C0326A1 */  jal        func_800C9A84
/* DE8EC 800353DC 8C848520 */   lw        $a0, %lo(D_80068520)($a0)
/* DE8F0 800353E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* DE8F4 800353E4 03E00008 */  jr         $ra
/* DE8F8 800353E8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800353EC_DE8FC
/* DE8FC 800353EC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DE900 800353F0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DE904 800353F4 3C038017 */  lui        $v1, %hi(D_8016D168)
/* DE908 800353F8 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* DE90C 800353FC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DE910 80035400 AFBF0010 */  sw         $ra, 0x10($sp)
/* DE914 80035404 8C440008 */  lw         $a0, 8($v0)
/* DE918 80035408 00031080 */  sll        $v0, $v1, 2
/* DE91C 8003540C 00431021 */  addu       $v0, $v0, $v1
/* DE920 80035410 10820086 */  beq        $a0, $v0, .L8003562C
/* DE924 80035414 2402FFFF */   addiu     $v0, $zero, -1
/* DE928 80035418 44800000 */  mtc1       $zero, $f0
/* DE92C 8003541C 44800800 */  mtc1       $zero, $f1
/* DE930 80035420 44831000 */  mtc1       $v1, $f2
/* DE934 80035424 00000000 */  nop
/* DE938 80035428 468010A1 */  cvt.d.w    $f2, $f2
/* DE93C 8003542C 46201082 */  mul.d      $f2, $f2, $f0
/* DE940 80035430 44840000 */  mtc1       $a0, $f0
/* DE944 80035434 00000000 */  nop
/* DE948 80035438 46800021 */  cvt.d.w    $f0, $f0
/* DE94C 8003543C 46220032 */  c.eq.d     $f0, $f2
/* DE950 80035440 00000000 */  nop
/* DE954 80035444 45000003 */  bc1f       .L80035454
/* DE958 80035448 00000000 */   nop
/* DE95C 8003544C 0C026DD5 */  jal        func_8009B754
/* DE960 80035450 24040015 */   addiu     $a0, $zero, 0x15
.L80035454:
/* DE964 80035454 3C048007 */  lui        $a0, %hi(D_80068520)
/* DE968 80035458 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DE96C 8003545C 8C820008 */  lw         $v0, 8($a0)
/* DE970 80035460 3C035555 */  lui        $v1, 0x5555
/* DE974 80035464 34635556 */  ori        $v1, $v1, 0x5556
/* DE978 80035468 00430018 */  mult       $v0, $v1
/* DE97C 8003546C 000217C3 */  sra        $v0, $v0, 0x1f
/* DE980 80035470 00002810 */  mfhi       $a1
/* DE984 80035474 00A21023 */  subu       $v0, $a1, $v0
/* DE988 80035478 30420001 */  andi       $v0, $v0, 1
/* DE98C 8003547C 10400029 */  beqz       $v0, .L80035524
/* DE990 80035480 00000000 */   nop
/* DE994 80035484 8C820000 */  lw         $v0, ($a0)
/* DE998 80035488 8C43000C */  lw         $v1, 0xc($v0)
/* DE99C 8003548C 9462001E */  lhu        $v0, 0x1e($v1)
/* DE9A0 80035490 34420400 */  ori        $v0, $v0, 0x400
/* DE9A4 80035494 A462001E */  sh         $v0, 0x1e($v1)
/* DE9A8 80035498 8C820000 */  lw         $v0, ($a0)
/* DE9AC 8003549C 8C430018 */  lw         $v1, 0x18($v0)
/* DE9B0 800354A0 9462001E */  lhu        $v0, 0x1e($v1)
/* DE9B4 800354A4 34420400 */  ori        $v0, $v0, 0x400
/* DE9B8 800354A8 A462001E */  sh         $v0, 0x1e($v1)
/* DE9BC 800354AC 8C820000 */  lw         $v0, ($a0)
/* DE9C0 800354B0 8C430020 */  lw         $v1, 0x20($v0)
/* DE9C4 800354B4 9462001E */  lhu        $v0, 0x1e($v1)
/* DE9C8 800354B8 34420400 */  ori        $v0, $v0, 0x400
/* DE9CC 800354BC A462001E */  sh         $v0, 0x1e($v1)
/* DE9D0 800354C0 8C820000 */  lw         $v0, ($a0)
/* DE9D4 800354C4 8C43002C */  lw         $v1, 0x2c($v0)
/* DE9D8 800354C8 9462001E */  lhu        $v0, 0x1e($v1)
/* DE9DC 800354CC 34420400 */  ori        $v0, $v0, 0x400
/* DE9E0 800354D0 A462001E */  sh         $v0, 0x1e($v1)
/* DE9E4 800354D4 8C820000 */  lw         $v0, ($a0)
/* DE9E8 800354D8 8C430010 */  lw         $v1, 0x10($v0)
/* DE9EC 800354DC 9462001E */  lhu        $v0, 0x1e($v1)
/* DE9F0 800354E0 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DE9F4 800354E4 A462001E */  sh         $v0, 0x1e($v1)
/* DE9F8 800354E8 8C820000 */  lw         $v0, ($a0)
/* DE9FC 800354EC 8C43001C */  lw         $v1, 0x1c($v0)
/* DEA00 800354F0 9462001E */  lhu        $v0, 0x1e($v1)
/* DEA04 800354F4 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DEA08 800354F8 A462001E */  sh         $v0, 0x1e($v1)
/* DEA0C 800354FC 8C820000 */  lw         $v0, ($a0)
/* DEA10 80035500 8C430024 */  lw         $v1, 0x24($v0)
/* DEA14 80035504 9462001E */  lhu        $v0, 0x1e($v1)
/* DEA18 80035508 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DEA1C 8003550C A462001E */  sh         $v0, 0x1e($v1)
/* DEA20 80035510 8C820000 */  lw         $v0, ($a0)
/* DEA24 80035514 8C430030 */  lw         $v1, 0x30($v0)
/* DEA28 80035518 9462001E */  lhu        $v0, 0x1e($v1)
/* DEA2C 8003551C 0800D570 */  j          .L800355C0
/* DEA30 80035520 3042FBFF */   andi      $v0, $v0, 0xfbff
.L80035524:
/* DEA34 80035524 8C820000 */  lw         $v0, ($a0)
/* DEA38 80035528 8C43000C */  lw         $v1, 0xc($v0)
/* DEA3C 8003552C 9462001E */  lhu        $v0, 0x1e($v1)
/* DEA40 80035530 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DEA44 80035534 A462001E */  sh         $v0, 0x1e($v1)
/* DEA48 80035538 8C820000 */  lw         $v0, ($a0)
/* DEA4C 8003553C 8C430018 */  lw         $v1, 0x18($v0)
/* DEA50 80035540 9462001E */  lhu        $v0, 0x1e($v1)
/* DEA54 80035544 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DEA58 80035548 A462001E */  sh         $v0, 0x1e($v1)
/* DEA5C 8003554C 8C820000 */  lw         $v0, ($a0)
/* DEA60 80035550 8C430020 */  lw         $v1, 0x20($v0)
/* DEA64 80035554 9462001E */  lhu        $v0, 0x1e($v1)
/* DEA68 80035558 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DEA6C 8003555C A462001E */  sh         $v0, 0x1e($v1)
/* DEA70 80035560 8C820000 */  lw         $v0, ($a0)
/* DEA74 80035564 8C43002C */  lw         $v1, 0x2c($v0)
/* DEA78 80035568 9462001E */  lhu        $v0, 0x1e($v1)
/* DEA7C 8003556C 3042FBFF */  andi       $v0, $v0, 0xfbff
/* DEA80 80035570 A462001E */  sh         $v0, 0x1e($v1)
/* DEA84 80035574 8C820000 */  lw         $v0, ($a0)
/* DEA88 80035578 8C430010 */  lw         $v1, 0x10($v0)
/* DEA8C 8003557C 9462001E */  lhu        $v0, 0x1e($v1)
/* DEA90 80035580 34420400 */  ori        $v0, $v0, 0x400
/* DEA94 80035584 A462001E */  sh         $v0, 0x1e($v1)
/* DEA98 80035588 8C820000 */  lw         $v0, ($a0)
/* DEA9C 8003558C 8C43001C */  lw         $v1, 0x1c($v0)
/* DEAA0 80035590 9462001E */  lhu        $v0, 0x1e($v1)
/* DEAA4 80035594 34420400 */  ori        $v0, $v0, 0x400
/* DEAA8 80035598 A462001E */  sh         $v0, 0x1e($v1)
/* DEAAC 8003559C 8C820000 */  lw         $v0, ($a0)
/* DEAB0 800355A0 8C430024 */  lw         $v1, 0x24($v0)
/* DEAB4 800355A4 9462001E */  lhu        $v0, 0x1e($v1)
/* DEAB8 800355A8 34420400 */  ori        $v0, $v0, 0x400
/* DEABC 800355AC A462001E */  sh         $v0, 0x1e($v1)
/* DEAC0 800355B0 8C820000 */  lw         $v0, ($a0)
/* DEAC4 800355B4 8C430030 */  lw         $v1, 0x30($v0)
/* DEAC8 800355B8 9462001E */  lhu        $v0, 0x1e($v1)
/* DEACC 800355BC 34420400 */  ori        $v0, $v0, 0x400
.L800355C0:
/* DEAD0 800355C0 A462001E */  sh         $v0, 0x1e($v1)
/* DEAD4 800355C4 3C038007 */  lui        $v1, %hi(D_80068520)
/* DEAD8 800355C8 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DEADC 800355CC 8C620008 */  lw         $v0, 8($v1)
/* DEAE0 800355D0 30420001 */  andi       $v0, $v0, 1
/* DEAE4 800355D4 10400006 */  beqz       $v0, .L800355F0
/* DEAE8 800355D8 00000000 */   nop
/* DEAEC 800355DC 8C620000 */  lw         $v0, ($v1)
/* DEAF0 800355E0 8C430034 */  lw         $v1, 0x34($v0)
/* DEAF4 800355E4 9462001E */  lhu        $v0, 0x1e($v1)
/* DEAF8 800355E8 0800D580 */  j          .L80035600
/* DEAFC 800355EC 3042FBFF */   andi      $v0, $v0, 0xfbff
.L800355F0:
/* DEB00 800355F0 8C620000 */  lw         $v0, ($v1)
/* DEB04 800355F4 8C430034 */  lw         $v1, 0x34($v0)
/* DEB08 800355F8 9462001E */  lhu        $v0, 0x1e($v1)
/* DEB0C 800355FC 34420400 */  ori        $v0, $v0, 0x400
.L80035600:
/* DEB10 80035600 A462001E */  sh         $v0, 0x1e($v1)
/* DEB14 80035604 3C028007 */  lui        $v0, %hi(D_80068520)
/* DEB18 80035608 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DEB1C 8003560C 0C00C51F */  jal        func_8003147C_DA98C
/* DEB20 80035610 8C440000 */   lw        $a0, ($v0)
/* DEB24 80035614 3C048007 */  lui        $a0, %hi(D_80068520)
/* DEB28 80035618 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DEB2C 8003561C 8C830008 */  lw         $v1, 8($a0)
/* DEB30 80035620 00001021 */  addu       $v0, $zero, $zero
/* DEB34 80035624 24630001 */  addiu      $v1, $v1, 1
/* DEB38 80035628 AC830008 */  sw         $v1, 8($a0)
.L8003562C:
/* DEB3C 8003562C 8FBF0010 */  lw         $ra, 0x10($sp)
/* DEB40 80035630 03E00008 */  jr         $ra
/* DEB44 80035634 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035638_DEB48
/* DEB48 80035638 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DEB4C 8003563C AFBF0010 */  sw         $ra, 0x10($sp)
/* DEB50 80035640 0C032663 */  jal        func_800C998C
/* DEB54 80035644 24040010 */   addiu     $a0, $zero, 0x10
/* DEB58 80035648 00402021 */  addu       $a0, $v0, $zero
/* DEB5C 8003564C 3C018007 */  lui        $at, %hi(D_80068520)
/* DEB60 80035650 AC248520 */  sw         $a0, %lo(D_80068520)($at)
/* DEB64 80035654 0C030134 */  jal        bzero
/* DEB68 80035658 24050010 */   addiu     $a1, $zero, 0x10
/* DEB6C 8003565C 3C048007 */  lui        $a0, %hi(D_80068B3C)
/* DEB70 80035660 24848B3C */  addiu      $a0, $a0, %lo(D_80068B3C)
/* DEB74 80035664 0C00C490 */  jal        func_80031240_DA750
/* DEB78 80035668 24050006 */   addiu     $a1, $zero, 6
/* DEB7C 8003566C 3C038007 */  lui        $v1, %hi(D_80068520)
/* DEB80 80035670 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DEB84 80035674 3C048007 */  lui        $a0, %hi(D_80068BCC)
/* DEB88 80035678 24848BCC */  addiu      $a0, $a0, %lo(D_80068BCC)
/* DEB8C 8003567C 24050006 */  addiu      $a1, $zero, 6
/* DEB90 80035680 0C00C537 */  jal        func_800314DC_DA9EC
/* DEB94 80035684 AC620000 */   sw        $v0, ($v1)
/* DEB98 80035688 3C038007 */  lui        $v1, %hi(D_80068520)
/* DEB9C 8003568C 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DEBA0 80035690 AC620004 */  sw         $v0, 4($v1)
/* DEBA4 80035694 8C430238 */  lw         $v1, 0x238($v0)
/* DEBA8 80035698 2402000A */  addiu      $v0, $zero, 0xa
/* DEBAC 8003569C A0620067 */  sb         $v0, 0x67($v1)
/* DEBB0 800356A0 3C028007 */  lui        $v0, %hi(D_80068520)
/* DEBB4 800356A4 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DEBB8 800356A8 AC400008 */  sw         $zero, 8($v0)
/* DEBBC 800356AC 0C02725C */  jal        func_8009C970
/* DEBC0 800356B0 AC40000C */   sw        $zero, 0xc($v0)
/* DEBC4 800356B4 3C014080 */  lui        $at, 0x4080
/* DEBC8 800356B8 44810000 */  mtc1       $at, $f0
/* DEBCC 800356BC 3C01C040 */  lui        $at, 0xc040
/* DEBD0 800356C0 44811000 */  mtc1       $at, $f2
/* DEBD4 800356C4 3C01C140 */  lui        $at, 0xc140
/* DEBD8 800356C8 44812000 */  mtc1       $at, $f4
/* DEBDC 800356CC 3C0143AD */  lui        $at, 0x43ad
/* DEBE0 800356D0 44813000 */  mtc1       $at, $f6
/* DEBE4 800356D4 3C0140E0 */  lui        $at, 0x40e0
/* DEBE8 800356D8 44814000 */  mtc1       $at, $f8
/* DEBEC 800356DC 3C01C2C8 */  lui        $at, 0xc2c8
/* DEBF0 800356E0 44815000 */  mtc1       $at, $f10
/* DEBF4 800356E4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* DEBF8 800356E8 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* DEBFC 800356EC 3C018015 */  lui        $at, %hi(D_8014A064)
/* DEC00 800356F0 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* DEC04 800356F4 3C018015 */  lui        $at, %hi(D_8014A068)
/* DEC08 800356F8 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* DEC0C 800356FC 3C018015 */  lui        $at, %hi(D_8014A07C)
/* DEC10 80035700 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* DEC14 80035704 3C018015 */  lui        $at, %hi(D_8014A080)
/* DEC18 80035708 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* DEC1C 8003570C 3C018015 */  lui        $at, %hi(D_8014A084)
/* DEC20 80035710 E428A084 */  swc1       $f8, %lo(D_8014A084)($at)
/* DEC24 80035714 3C018015 */  lui        $at, %hi(D_8014A088)
/* DEC28 80035718 E42AA088 */  swc1       $f10, %lo(D_8014A088)($at)
/* DEC2C 8003571C 8FBF0010 */  lw         $ra, 0x10($sp)
/* DEC30 80035720 03E00008 */  jr         $ra
/* DEC34 80035724 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035728_DEC38
/* DEC38 80035728 3C028007 */  lui        $v0, %hi(D_80068520)
/* DEC3C 8003572C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DEC40 80035730 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DEC44 80035734 AFBF0010 */  sw         $ra, 0x10($sp)
/* DEC48 80035738 0C00C505 */  jal        func_80031414_DA924
/* DEC4C 8003573C 8C440000 */   lw        $a0, ($v0)
/* DEC50 80035740 3C028007 */  lui        $v0, %hi(D_80068520)
/* DEC54 80035744 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DEC58 80035748 0C00C59F */  jal        func_8003167C_DAB8C
/* DEC5C 8003574C 8C440004 */   lw        $a0, 4($v0)
/* DEC60 80035750 3C048007 */  lui        $a0, %hi(D_80068520)
/* DEC64 80035754 0C0326A1 */  jal        func_800C9A84
/* DEC68 80035758 8C848520 */   lw        $a0, %lo(D_80068520)($a0)
/* DEC6C 8003575C 8FBF0010 */  lw         $ra, 0x10($sp)
/* DEC70 80035760 03E00008 */  jr         $ra
/* DEC74 80035764 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035768_DEC78
/* DEC78 80035768 3C028017 */  lui        $v0, %hi(D_8016D168)
/* DEC7C 8003576C 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* DEC80 80035770 3C058007 */  lui        $a1, %hi(D_80068520)
/* DEC84 80035774 8CA58520 */  lw         $a1, %lo(D_80068520)($a1)
/* DEC88 80035778 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* DEC8C 8003577C AFBF0024 */  sw         $ra, 0x24($sp)
/* DEC90 80035780 AFB20020 */  sw         $s2, 0x20($sp)
/* DEC94 80035784 AFB1001C */  sw         $s1, 0x1c($sp)
/* DEC98 80035788 AFB00018 */  sw         $s0, 0x18($sp)
/* DEC9C 8003578C 00021940 */  sll        $v1, $v0, 5
/* DECA0 80035790 00621823 */  subu       $v1, $v1, $v0
/* DECA4 80035794 00031880 */  sll        $v1, $v1, 2
/* DECA8 80035798 00621821 */  addu       $v1, $v1, $v0
/* DECAC 8003579C 8CA40008 */  lw         $a0, 8($a1)
/* DECB0 800357A0 000318C0 */  sll        $v1, $v1, 3
/* DECB4 800357A4 00621823 */  subu       $v1, $v1, $v0
/* DECB8 800357A8 1083012F */  beq        $a0, $v1, .L80035C68
/* DECBC 800357AC 2402FFFF */   addiu     $v0, $zero, -1
/* DECC0 800357B0 8CA40000 */  lw         $a0, ($a1)
/* DECC4 800357B4 0C00C51F */  jal        func_8003147C_DA98C
/* DECC8 800357B8 00000000 */   nop
/* DECCC 800357BC 3C028007 */  lui        $v0, %hi(D_80068520)
/* DECD0 800357C0 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DECD4 800357C4 8C430008 */  lw         $v1, 8($v0)
/* DECD8 800357C8 3C028017 */  lui        $v0, %hi(D_8016D168)
/* DECDC 800357CC 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* DECE0 800357D0 1462000F */  bne        $v1, $v0, .L80035810
/* DECE4 800357D4 00000000 */   nop
/* DECE8 800357D8 0C02A5D2 */  jal        func_800A9748
/* DECEC 800357DC 24040005 */   addiu     $a0, $zero, 5
/* DECF0 800357E0 3C028007 */  lui        $v0, %hi(D_80068520)
/* DECF4 800357E4 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DECF8 800357E8 8C420004 */  lw         $v0, 4($v0)
/* DECFC 800357EC 8C430238 */  lw         $v1, 0x238($v0)
/* DED00 800357F0 3C018007 */  lui        $at, %hi(D_8006A624)
/* DED04 800357F4 AC20A624 */  sw         $zero, %lo(D_8006A624)($at)
/* DED08 800357F8 240200FF */  addiu      $v0, $zero, 0xff
/* DED0C 800357FC 3C018007 */  lui        $at, %hi(D_8006A620)
/* DED10 80035800 AC22A620 */  sw         $v0, %lo(D_8006A620)($at)
/* DED14 80035804 90620066 */  lbu        $v0, 0x66($v1)
/* DED18 80035808 3042007F */  andi       $v0, $v0, 0x7f
/* DED1C 8003580C A0620066 */  sb         $v0, 0x66($v1)
.L80035810:
/* DED20 80035810 3C038007 */  lui        $v1, %hi(D_80068520)
/* DED24 80035814 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DED28 80035818 3C028017 */  lui        $v0, %hi(D_8016D168)
/* DED2C 8003581C 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* DED30 80035820 8C640008 */  lw         $a0, 8($v1)
/* DED34 80035824 0044102A */  slt        $v0, $v0, $a0
/* DED38 80035828 10400035 */  beqz       $v0, .L80035900
/* DED3C 8003582C 30820001 */   andi      $v0, $a0, 1
/* DED40 80035830 10400006 */  beqz       $v0, .L8003584C
/* DED44 80035834 00000000 */   nop
/* DED48 80035838 8C620004 */  lw         $v0, 4($v1)
/* DED4C 8003583C 8C430238 */  lw         $v1, 0x238($v0)
/* DED50 80035840 90620066 */  lbu        $v0, 0x66($v1)
/* DED54 80035844 0800D617 */  j          .L8003585C
/* DED58 80035848 34420080 */   ori       $v0, $v0, 0x80
.L8003584C:
/* DED5C 8003584C 8C620004 */  lw         $v0, 4($v1)
/* DED60 80035850 8C430238 */  lw         $v1, 0x238($v0)
/* DED64 80035854 90620066 */  lbu        $v0, 0x66($v1)
/* DED68 80035858 3042007F */  andi       $v0, $v0, 0x7f
.L8003585C:
/* DED6C 8003585C A0620066 */  sb         $v0, 0x66($v1)
/* DED70 80035860 3C028007 */  lui        $v0, %hi(D_8006A620)
/* DED74 80035864 8C42A620 */  lw         $v0, %lo(D_8006A620)($v0)
/* DED78 80035868 2443FFF0 */  addiu      $v1, $v0, -0x10
/* DED7C 8003586C 28620100 */  slti       $v0, $v1, 0x100
/* DED80 80035870 3C018007 */  lui        $at, %hi(D_8006A620)
/* DED84 80035874 AC23A620 */  sw         $v1, %lo(D_8006A620)($at)
/* DED88 80035878 14400004 */  bnez       $v0, .L8003588C
/* DED8C 8003587C 240200FF */   addiu     $v0, $zero, 0xff
/* DED90 80035880 3C018007 */  lui        $at, %hi(D_8006A620)
/* DED94 80035884 0800D627 */  j          .L8003589C
/* DED98 80035888 AC22A620 */   sw        $v0, %lo(D_8006A620)($at)
.L8003588C:
/* DED9C 8003588C 04610003 */  bgez       $v1, .L8003589C
/* DEDA0 80035890 00000000 */   nop
/* DEDA4 80035894 3C018007 */  lui        $at, %hi(D_8006A620)
/* DEDA8 80035898 AC20A620 */  sw         $zero, %lo(D_8006A620)($at)
.L8003589C:
/* DEDAC 8003589C 3C038007 */  lui        $v1, %hi(D_80068520)
/* DEDB0 800358A0 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DEDB4 800358A4 8C620004 */  lw         $v0, 4($v1)
/* DEDB8 800358A8 3C014120 */  lui        $at, 0x4120
/* DEDBC 800358AC 44811000 */  mtc1       $at, $f2
/* DEDC0 800358B0 C4400138 */  lwc1       $f0, 0x138($v0)
/* DEDC4 800358B4 46020000 */  add.s      $f0, $f0, $f2
/* DEDC8 800358B8 E4400138 */  swc1       $f0, 0x138($v0)
/* DEDCC 800358BC 8C620004 */  lw         $v0, 4($v1)
/* DEDD0 800358C0 C4400138 */  lwc1       $f0, 0x138($v0)
/* DEDD4 800358C4 44801000 */  mtc1       $zero, $f2
/* DEDD8 800358C8 00000000 */  nop
/* DEDDC 800358CC 4600103C */  c.lt.s     $f2, $f0
/* DEDE0 800358D0 00000000 */  nop
/* DEDE4 800358D4 00000000 */  nop
/* DEDE8 800358D8 45030009 */  bc1tl      .L80035900
/* DEDEC 800358DC E4420138 */   swc1      $f2, 0x138($v0)
/* DEDF0 800358E0 3C01C47A */  lui        $at, 0xc47a
/* DEDF4 800358E4 44811000 */  mtc1       $at, $f2
/* DEDF8 800358E8 00000000 */  nop
/* DEDFC 800358EC 4602003C */  c.lt.s     $f0, $f2
/* DEE00 800358F0 00000000 */  nop
/* DEE04 800358F4 00000000 */  nop
/* DEE08 800358F8 45030001 */  bc1tl      .L80035900
/* DEE0C 800358FC E4420138 */   swc1      $f2, 0x138($v0)
.L80035900:
/* DEE10 80035900 3C028007 */  lui        $v0, %hi(D_80068520)
/* DEE14 80035904 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DEE18 80035908 8C430004 */  lw         $v1, 4($v0)
/* DEE1C 8003590C 3C028007 */  lui        $v0, %hi(D_8006A623)
/* DEE20 80035910 9042A623 */  lbu        $v0, %lo(D_8006A623)($v0)
/* DEE24 80035914 240500FF */  addiu      $a1, $zero, 0xff
/* DEE28 80035918 AFA20010 */  sw         $v0, 0x10($sp)
/* DEE2C 8003591C 8C640238 */  lw         $a0, 0x238($v1)
/* DEE30 80035920 240600FF */  addiu      $a2, $zero, 0xff
/* DEE34 80035924 0C027F5E */  jal        func_8009FD78
/* DEE38 80035928 240700FF */   addiu     $a3, $zero, 0xff
/* DEE3C 8003592C 3C048007 */  lui        $a0, %hi(D_80068520)
/* DEE40 80035930 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DEE44 80035934 3C028017 */  lui        $v0, %hi(D_8016D168)
/* DEE48 80035938 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* DEE4C 8003593C 8C830008 */  lw         $v1, 8($a0)
/* DEE50 80035940 24420006 */  addiu      $v0, $v0, 6
/* DEE54 80035944 0043102A */  slt        $v0, $v0, $v1
/* DEE58 80035948 1040006D */  beqz       $v0, .L80035B00
/* DEE5C 8003594C 00000000 */   nop
/* DEE60 80035950 3C018007 */  lui        $at, %hi(D_8006A624)
/* DEE64 80035954 C424A624 */  lwc1       $f4, %lo(D_8006A624)($at)
/* DEE68 80035958 44803000 */  mtc1       $zero, $f6
/* DEE6C 8003595C 00000000 */  nop
/* DEE70 80035960 4604303C */  c.lt.s     $f6, $f4
/* DEE74 80035964 00000000 */  nop
/* DEE78 80035968 45000017 */  bc1f       .L800359C8
/* DEE7C 8003596C 00000000 */   nop
/* DEE80 80035970 8C820004 */  lw         $v0, 4($a0)
/* DEE84 80035974 C4400058 */  lwc1       $f0, 0x58($v0)
/* DEE88 80035978 46040000 */  add.s      $f0, $f0, $f4
/* DEE8C 8003597C E4400058 */  swc1       $f0, 0x58($v0)
/* DEE90 80035980 8C820004 */  lw         $v0, 4($a0)
/* DEE94 80035984 C44000C8 */  lwc1       $f0, 0xc8($v0)
/* DEE98 80035988 46040000 */  add.s      $f0, $f0, $f4
/* DEE9C 8003598C E44000C8 */  swc1       $f0, 0xc8($v0)
/* DEEA0 80035990 8C820004 */  lw         $v0, 4($a0)
/* DEEA4 80035994 C44001A8 */  lwc1       $f0, 0x1a8($v0)
/* DEEA8 80035998 46040000 */  add.s      $f0, $f0, $f4
/* DEEAC 8003599C 3C013CA3 */  lui        $at, 0x3ca3
/* DEEB0 800359A0 3421D70A */  ori        $at, $at, 0xd70a
/* DEEB4 800359A4 44811000 */  mtc1       $at, $f2
/* DEEB8 800359A8 E44001A8 */  swc1       $f0, 0x1a8($v0)
/* DEEBC 800359AC 8C820004 */  lw         $v0, 4($a0)
/* DEEC0 800359B0 46022081 */  sub.s      $f2, $f4, $f2
/* DEEC4 800359B4 C4400218 */  lwc1       $f0, 0x218($v0)
/* DEEC8 800359B8 46040000 */  add.s      $f0, $f0, $f4
/* DEECC 800359BC 3C018007 */  lui        $at, %hi(D_8006A624)
/* DEED0 800359C0 E422A624 */  swc1       $f2, %lo(D_8006A624)($at)
/* DEED4 800359C4 E4400218 */  swc1       $f0, 0x218($v0)
.L800359C8:
/* DEED8 800359C8 3C058007 */  lui        $a1, %hi(D_80068520)
/* DEEDC 800359CC 8CA58520 */  lw         $a1, %lo(D_80068520)($a1)
/* DEEE0 800359D0 3C038017 */  lui        $v1, %hi(D_8016D168)
/* DEEE4 800359D4 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* DEEE8 800359D8 8CA40008 */  lw         $a0, 8($a1)
/* DEEEC 800359DC 24620006 */  addiu      $v0, $v1, 6
/* DEEF0 800359E0 0044102A */  slt        $v0, $v0, $a0
/* DEEF4 800359E4 1040004B */  beqz       $v0, .L80035B14
/* DEEF8 800359E8 24620010 */   addiu     $v0, $v1, 0x10
/* DEEFC 800359EC 0082102A */  slt        $v0, $a0, $v0
/* DEF00 800359F0 10400049 */  beqz       $v0, .L80035B18
/* DEF04 800359F4 24620008 */   addiu     $v0, $v1, 8
/* DEF08 800359F8 8CA20004 */  lw         $v0, 4($a1)
/* DEF0C 800359FC 8C430158 */  lw         $v1, 0x158($v0)
/* DEF10 80035A00 90620066 */  lbu        $v0, 0x66($v1)
/* DEF14 80035A04 3042007F */  andi       $v0, $v0, 0x7f
/* DEF18 80035A08 A0620066 */  sb         $v0, 0x66($v1)
/* DEF1C 80035A0C 3C028007 */  lui        $v0, %hi(D_80068520)
/* DEF20 80035A10 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DEF24 80035A14 3C013EAA */  lui        $at, 0x3eaa
/* DEF28 80035A18 3421AAAB */  ori        $at, $at, 0xaaab
/* DEF2C 80035A1C 44810000 */  mtc1       $at, $f0
/* DEF30 80035A20 C442000C */  lwc1       $f2, 0xc($v0)
/* DEF34 80035A24 46001000 */  add.s      $f0, $f2, $f0
/* DEF38 80035A28 3C014040 */  lui        $at, 0x4040
/* DEF3C 80035A2C 44811000 */  mtc1       $at, $f2
/* DEF40 80035A30 00000000 */  nop
/* DEF44 80035A34 4600103E */  c.le.s     $f2, $f0
/* DEF48 80035A38 00000000 */  nop
/* DEF4C 80035A3C 00000000 */  nop
/* DEF50 80035A40 45000003 */  bc1f       .L80035A50
/* DEF54 80035A44 E440000C */   swc1      $f0, 0xc($v0)
/* DEF58 80035A48 0800D699 */  j          .L80035A64
/* DEF5C 80035A4C 46020001 */   sub.s     $f0, $f0, $f2
.L80035A50:
/* DEF60 80035A50 4606003C */  c.lt.s     $f0, $f6
/* DEF64 80035A54 00000000 */  nop
/* DEF68 80035A58 45000003 */  bc1f       .L80035A68
/* DEF6C 80035A5C 00000000 */   nop
/* DEF70 80035A60 46020000 */  add.s      $f0, $f0, $f2
.L80035A64:
/* DEF74 80035A64 E440000C */  swc1       $f0, 0xc($v0)
.L80035A68:
/* DEF78 80035A68 3C028007 */  lui        $v0, %hi(D_80068520)
/* DEF7C 80035A6C 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DEF80 80035A70 3C0143B9 */  lui        $at, 0x43b9
/* DEF84 80035A74 44811000 */  mtc1       $at, $f2
/* DEF88 80035A78 C440000C */  lwc1       $f0, 0xc($v0)
/* DEF8C 80035A7C 46020000 */  add.s      $f0, $f0, $f2
/* DEF90 80035A80 00002821 */  addu       $a1, $zero, $zero
/* DEF94 80035A84 4600008D */  trunc.w.s  $f2, $f0
/* DEF98 80035A88 44041000 */  mfc1       $a0, $f2
/* DEF9C 80035A8C 00000000 */  nop
/* DEFA0 80035A90 00042400 */  sll        $a0, $a0, 0x10
/* DEFA4 80035A94 0C029816 */  jal        func_800A6058
/* DEFA8 80035A98 00042403 */   sra       $a0, $a0, 0x10
/* DEFAC 80035A9C 00409021 */  addu       $s2, $v0, $zero
/* DEFB0 80035AA0 240400D7 */  addiu      $a0, $zero, 0xd7
/* DEFB4 80035AA4 0C0298D4 */  jal        func_800A6350
/* DEFB8 80035AA8 00002821 */   addu      $a1, $zero, $zero
/* DEFBC 80035AAC 3C038007 */  lui        $v1, %hi(D_80068520)
/* DEFC0 80035AB0 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DEFC4 80035AB4 8C630004 */  lw         $v1, 4($v1)
/* DEFC8 80035AB8 8C640158 */  lw         $a0, 0x158($v1)
/* DEFCC 80035ABC 3C058007 */  lui        $a1, %hi(D_80069D78)
/* DEFD0 80035AC0 24A59D78 */  addiu      $a1, $a1, %lo(D_80069D78)
/* DEFD4 80035AC4 0C0285D4 */  jal        func_800A1750
/* DEFD8 80035AC8 00408821 */   addu      $s1, $v0, $zero
/* DEFDC 80035ACC 00408021 */  addu       $s0, $v0, $zero
/* DEFE0 80035AD0 02202021 */  addu       $a0, $s1, $zero
/* DEFE4 80035AD4 02002821 */  addu       $a1, $s0, $zero
/* DEFE8 80035AD8 0C03006C */  jal        func_800C01B0
/* DEFEC 80035ADC 24060020 */   addiu     $a2, $zero, 0x20
/* DEFF0 80035AE0 26440010 */  addiu      $a0, $s2, 0x10
/* DEFF4 80035AE4 26050020 */  addiu      $a1, $s0, 0x20
/* DEFF8 80035AE8 0C03006C */  jal        func_800C01B0
/* DEFFC 80035AEC 24060200 */   addiu     $a2, $zero, 0x200
/* DF000 80035AF0 0C0326A1 */  jal        func_800C9A84
/* DF004 80035AF4 02202021 */   addu      $a0, $s1, $zero
/* DF008 80035AF8 0C0326A1 */  jal        func_800C9A84
/* DF00C 80035AFC 02402021 */   addu      $a0, $s2, $zero
.L80035B00:
/* DF010 80035B00 3C058007 */  lui        $a1, %hi(D_80068520)
/* DF014 80035B04 8CA58520 */  lw         $a1, %lo(D_80068520)($a1)
/* DF018 80035B08 3C038017 */  lui        $v1, %hi(D_8016D168)
/* DF01C 80035B0C 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* DF020 80035B10 8CA40008 */  lw         $a0, 8($a1)
.L80035B14:
/* DF024 80035B14 24620008 */  addiu      $v0, $v1, 8
.L80035B18:
/* DF028 80035B18 0044102A */  slt        $v0, $v0, $a0
/* DF02C 80035B1C 10400048 */  beqz       $v0, .L80035C40
/* DF030 80035B20 24620010 */   addiu     $v0, $v1, 0x10
/* DF034 80035B24 0082102A */  slt        $v0, $a0, $v0
/* DF038 80035B28 10400045 */  beqz       $v0, .L80035C40
/* DF03C 80035B2C 00000000 */   nop
/* DF040 80035B30 8CA20004 */  lw         $v0, 4($a1)
/* DF044 80035B34 8C4301C8 */  lw         $v1, 0x1c8($v0)
/* DF048 80035B38 90620066 */  lbu        $v0, 0x66($v1)
/* DF04C 80035B3C 3042007F */  andi       $v0, $v0, 0x7f
/* DF050 80035B40 A0620066 */  sb         $v0, 0x66($v1)
/* DF054 80035B44 3C028007 */  lui        $v0, %hi(D_80068520)
/* DF058 80035B48 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DF05C 80035B4C 3C013EAA */  lui        $at, 0x3eaa
/* DF060 80035B50 3421AAAB */  ori        $at, $at, 0xaaab
/* DF064 80035B54 44810000 */  mtc1       $at, $f0
/* DF068 80035B58 C442000C */  lwc1       $f2, 0xc($v0)
/* DF06C 80035B5C 46001080 */  add.s      $f2, $f2, $f0
/* DF070 80035B60 3C014100 */  lui        $at, 0x4100
/* DF074 80035B64 44812000 */  mtc1       $at, $f4
/* DF078 80035B68 00000000 */  nop
/* DF07C 80035B6C 4602203E */  c.le.s     $f4, $f2
/* DF080 80035B70 00000000 */  nop
/* DF084 80035B74 00000000 */  nop
/* DF088 80035B78 45000003 */  bc1f       .L80035B88
/* DF08C 80035B7C E442000C */   swc1      $f2, 0xc($v0)
/* DF090 80035B80 0800D6E9 */  j          .L80035BA4
/* DF094 80035B84 46041001 */   sub.s     $f0, $f2, $f4
.L80035B88:
/* DF098 80035B88 44800000 */  mtc1       $zero, $f0
/* DF09C 80035B8C 00000000 */  nop
/* DF0A0 80035B90 4600103C */  c.lt.s     $f2, $f0
/* DF0A4 80035B94 00000000 */  nop
/* DF0A8 80035B98 45000003 */  bc1f       .L80035BA8
/* DF0AC 80035B9C 00000000 */   nop
/* DF0B0 80035BA0 46041000 */  add.s      $f0, $f2, $f4
.L80035BA4:
/* DF0B4 80035BA4 E440000C */  swc1       $f0, 0xc($v0)
.L80035BA8:
/* DF0B8 80035BA8 3C028007 */  lui        $v0, %hi(D_80068520)
/* DF0BC 80035BAC 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DF0C0 80035BB0 3C014379 */  lui        $at, 0x4379
/* DF0C4 80035BB4 44811000 */  mtc1       $at, $f2
/* DF0C8 80035BB8 C440000C */  lwc1       $f0, 0xc($v0)
/* DF0CC 80035BBC 46020000 */  add.s      $f0, $f0, $f2
/* DF0D0 80035BC0 00002821 */  addu       $a1, $zero, $zero
/* DF0D4 80035BC4 4600008D */  trunc.w.s  $f2, $f0
/* DF0D8 80035BC8 44041000 */  mfc1       $a0, $f2
/* DF0DC 80035BCC 00000000 */  nop
/* DF0E0 80035BD0 00042400 */  sll        $a0, $a0, 0x10
/* DF0E4 80035BD4 0C029816 */  jal        func_800A6058
/* DF0E8 80035BD8 00042403 */   sra       $a0, $a0, 0x10
/* DF0EC 80035BDC 00409021 */  addu       $s2, $v0, $zero
/* DF0F0 80035BE0 24040079 */  addiu      $a0, $zero, 0x79
/* DF0F4 80035BE4 0C0298D4 */  jal        func_800A6350
/* DF0F8 80035BE8 00002821 */   addu      $a1, $zero, $zero
/* DF0FC 80035BEC 3C038007 */  lui        $v1, %hi(D_80068520)
/* DF100 80035BF0 8C638520 */  lw         $v1, %lo(D_80068520)($v1)
/* DF104 80035BF4 8C630004 */  lw         $v1, 4($v1)
/* DF108 80035BF8 8C6401C8 */  lw         $a0, 0x1c8($v1)
/* DF10C 80035BFC 3C058007 */  lui        $a1, %hi(D_80069D80)
/* DF110 80035C00 24A59D80 */  addiu      $a1, $a1, %lo(D_80069D80)
/* DF114 80035C04 0C0285D4 */  jal        func_800A1750
/* DF118 80035C08 00408821 */   addu      $s1, $v0, $zero
/* DF11C 80035C0C 00408021 */  addu       $s0, $v0, $zero
/* DF120 80035C10 02202021 */  addu       $a0, $s1, $zero
/* DF124 80035C14 02002821 */  addu       $a1, $s0, $zero
/* DF128 80035C18 0C03006C */  jal        func_800C01B0
/* DF12C 80035C1C 24060020 */   addiu     $a2, $zero, 0x20
/* DF130 80035C20 26440010 */  addiu      $a0, $s2, 0x10
/* DF134 80035C24 26050020 */  addiu      $a1, $s0, 0x20
/* DF138 80035C28 0C03006C */  jal        func_800C01B0
/* DF13C 80035C2C 24060800 */   addiu     $a2, $zero, 0x800
/* DF140 80035C30 0C0326A1 */  jal        func_800C9A84
/* DF144 80035C34 02202021 */   addu      $a0, $s1, $zero
/* DF148 80035C38 0C0326A1 */  jal        func_800C9A84
/* DF14C 80035C3C 02402021 */   addu      $a0, $s2, $zero
.L80035C40:
/* DF150 80035C40 3C028007 */  lui        $v0, %hi(D_80068520)
/* DF154 80035C44 8C428520 */  lw         $v0, %lo(D_80068520)($v0)
/* DF158 80035C48 0C00C5C1 */  jal        func_80031704_DAC14
/* DF15C 80035C4C 8C440004 */   lw        $a0, 4($v0)
/* DF160 80035C50 3C048007 */  lui        $a0, %hi(D_80068520)
/* DF164 80035C54 8C848520 */  lw         $a0, %lo(D_80068520)($a0)
/* DF168 80035C58 8C830008 */  lw         $v1, 8($a0)
/* DF16C 80035C5C 00001021 */  addu       $v0, $zero, $zero
/* DF170 80035C60 24630001 */  addiu      $v1, $v1, 1
/* DF174 80035C64 AC830008 */  sw         $v1, 8($a0)
.L80035C68:
/* DF178 80035C68 8FBF0024 */  lw         $ra, 0x24($sp)
/* DF17C 80035C6C 8FB20020 */  lw         $s2, 0x20($sp)
/* DF180 80035C70 8FB1001C */  lw         $s1, 0x1c($sp)
/* DF184 80035C74 8FB00018 */  lw         $s0, 0x18($sp)
/* DF188 80035C78 03E00008 */  jr         $ra
/* DF18C 80035C7C 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_80035C80_DF190
/* DF190 80035C80 3C038007 */  lui        $v1, %hi(D_80068CB4)
/* DF194 80035C84 84638CB4 */  lh         $v1, %lo(D_80068CB4)($v1)
/* DF198 80035C88 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DF19C 80035C8C AFB00010 */  sw         $s0, 0x10($sp)
/* DF1A0 80035C90 00808021 */  addu       $s0, $a0, $zero
/* DF1A4 80035C94 AFB10014 */  sw         $s1, 0x14($sp)
/* DF1A8 80035C98 02008821 */  addu       $s1, $s0, $zero
/* DF1AC 80035C9C 2402FFFF */  addiu      $v0, $zero, -1
/* DF1B0 80035CA0 10620003 */  beq        $v1, $v0, .L80035CB0
/* DF1B4 80035CA4 AFBF0018 */   sw        $ra, 0x18($sp)
/* DF1B8 80035CA8 0C00D73C */  jal        func_80035CF0_DF200
/* DF1BC 80035CAC 00000000 */   nop
.L80035CB0:
/* DF1C0 80035CB0 00101400 */  sll        $v0, $s0, 0x10
/* DF1C4 80035CB4 00021403 */  sra        $v0, $v0, 0x10
/* DF1C8 80035CB8 00021840 */  sll        $v1, $v0, 1
/* DF1CC 80035CBC 00621821 */  addu       $v1, $v1, $v0
/* DF1D0 80035CC0 00031880 */  sll        $v1, $v1, 2
/* DF1D4 80035CC4 3C028007 */  lui        $v0, %hi(D_80068C60)
/* DF1D8 80035CC8 00431021 */  addu       $v0, $v0, $v1
/* DF1DC 80035CCC 8C428C60 */  lw         $v0, %lo(D_80068C60)($v0)
/* DF1E0 80035CD0 3C018007 */  lui        $at, %hi(D_80068CB4)
/* DF1E4 80035CD4 0040F809 */  jalr       $v0
/* DF1E8 80035CD8 A4318CB4 */   sh        $s1, %lo(D_80068CB4)($at)
/* DF1EC 80035CDC 8FBF0018 */  lw         $ra, 0x18($sp)
/* DF1F0 80035CE0 8FB10014 */  lw         $s1, 0x14($sp)
/* DF1F4 80035CE4 8FB00010 */  lw         $s0, 0x10($sp)
/* DF1F8 80035CE8 03E00008 */  jr         $ra
/* DF1FC 80035CEC 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80035CF0_DF200
/* DF200 80035CF0 3C038007 */  lui        $v1, %hi(D_80068CB4)
/* DF204 80035CF4 84638CB4 */  lh         $v1, %lo(D_80068CB4)($v1)
/* DF208 80035CF8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF20C 80035CFC 2402FFFF */  addiu      $v0, $zero, -1
/* DF210 80035D00 1062000C */  beq        $v1, $v0, .L80035D34
/* DF214 80035D04 AFBF0010 */   sw        $ra, 0x10($sp)
/* DF218 80035D08 00031040 */  sll        $v0, $v1, 1
/* DF21C 80035D0C 00431021 */  addu       $v0, $v0, $v1
/* DF220 80035D10 00021080 */  sll        $v0, $v0, 2
/* DF224 80035D14 3C018007 */  lui        $at, %hi(D_80068C64)
/* DF228 80035D18 00220821 */  addu       $at, $at, $v0
/* DF22C 80035D1C 8C228C64 */  lw         $v0, %lo(D_80068C64)($at)
/* DF230 80035D20 0040F809 */  jalr       $v0
/* DF234 80035D24 00000000 */   nop
/* DF238 80035D28 2402FFFF */  addiu      $v0, $zero, -1
/* DF23C 80035D2C 3C018007 */  lui        $at, %hi(D_80068CB4)
/* DF240 80035D30 A4228CB4 */  sh         $v0, %lo(D_80068CB4)($at)
.L80035D34:
/* DF244 80035D34 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF248 80035D38 03E00008 */  jr         $ra
/* DF24C 80035D3C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035D40_DF250
/* DF250 80035D40 3C038007 */  lui        $v1, %hi(D_80068CB4)
/* DF254 80035D44 84638CB4 */  lh         $v1, %lo(D_80068CB4)($v1)
/* DF258 80035D48 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF25C 80035D4C 2402FFFF */  addiu      $v0, $zero, -1
/* DF260 80035D50 1062000B */  beq        $v1, $v0, .L80035D80
/* DF264 80035D54 AFBF0010 */   sw        $ra, 0x10($sp)
/* DF268 80035D58 00031040 */  sll        $v0, $v1, 1
/* DF26C 80035D5C 00431021 */  addu       $v0, $v0, $v1
/* DF270 80035D60 00021080 */  sll        $v0, $v0, 2
/* DF274 80035D64 3C018007 */  lui        $at, %hi(D_80068C68)
/* DF278 80035D68 00220821 */  addu       $at, $at, $v0
/* DF27C 80035D6C 8C228C68 */  lw         $v0, %lo(D_80068C68)($at)
/* DF280 80035D70 0040F809 */  jalr       $v0
/* DF284 80035D74 00000000 */   nop
/* DF288 80035D78 0800D761 */  j          .L80035D84
/* DF28C 80035D7C 00000000 */   nop
.L80035D80:
/* DF290 80035D80 00001021 */  addu       $v0, $zero, $zero
.L80035D84:
/* DF294 80035D84 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF298 80035D88 03E00008 */  jr         $ra
/* DF29C 80035D8C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035D90_DF2A0
/* DF2A0 80035D90 3C028007 */  lui        $v0, %hi(D_80068D00)
/* DF2A4 80035D94 90428D00 */  lbu        $v0, %lo(D_80068D00)($v0)
/* DF2A8 80035D98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF2AC 80035D9C 10400007 */  beqz       $v0, .L80035DBC
/* DF2B0 80035DA0 AFBF0010 */   sw        $ra, 0x10($sp)
/* DF2B4 80035DA4 0C00D785 */  jal        func_80035E14_DF324
/* DF2B8 80035DA8 00000000 */   nop
/* DF2BC 80035DAC 3C018007 */  lui        $at, %hi(D_80068D00)
/* DF2C0 80035DB0 A0208D00 */  sb         $zero, %lo(D_80068D00)($at)
/* DF2C4 80035DB4 0800D782 */  j          .L80035E08
/* DF2C8 80035DB8 00001021 */   addu      $v0, $zero, $zero
.L80035DBC:
/* DF2CC 80035DBC 3C028007 */  lui        $v0, %hi(D_80068D01)
/* DF2D0 80035DC0 90428D01 */  lbu        $v0, %lo(D_80068D01)($v0)
/* DF2D4 80035DC4 54400007 */  bnezl      $v0, .L80035DE4
/* DF2D8 80035DC8 24020001 */   addiu     $v0, $zero, 1
/* DF2DC 80035DCC 0C00D7B4 */  jal        func_80035ED0_DF3E0
/* DF2E0 80035DD0 00000000 */   nop
/* DF2E4 80035DD4 3C018007 */  lui        $at, %hi(D_80068D01)
/* DF2E8 80035DD8 A0228D01 */  sb         $v0, %lo(D_80068D01)($at)
/* DF2EC 80035DDC 0800D782 */  j          .L80035E08
/* DF2F0 80035DE0 00001021 */   addu      $v0, $zero, $zero
.L80035DE4:
/* DF2F4 80035DE4 3C018007 */  lui        $at, %hi(D_80068D00)
/* DF2F8 80035DE8 A0228D00 */  sb         $v0, %lo(D_80068D00)($at)
/* DF2FC 80035DEC 3C018007 */  lui        $at, %hi(D_80068D01)
/* DF300 80035DF0 A0208D01 */  sb         $zero, %lo(D_80068D01)($at)
/* DF304 80035DF4 0C02DB14 */  jal        func_800B6C50
/* DF308 80035DF8 00002021 */   addu      $a0, $zero, $zero
/* DF30C 80035DFC 0C00D7A1 */  jal        func_80035E84_DF394
/* DF310 80035E00 00000000 */   nop
/* DF314 80035E04 24020001 */  addiu      $v0, $zero, 1
.L80035E08:
/* DF318 80035E08 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF31C 80035E0C 03E00008 */  jr         $ra
/* DF320 80035E10 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035E14_DF324
/* DF324 80035E14 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF328 80035E18 AFBF0010 */  sw         $ra, 0x10($sp)
/* DF32C 80035E1C 0C02A5AF */  jal        func_800A96BC
/* DF330 80035E20 24040001 */   addiu     $a0, $zero, 1
/* DF334 80035E24 0C026449 */  jal        func_80099124
/* DF338 80035E28 24040002 */   addiu     $a0, $zero, 2
/* DF33C 80035E2C 3C038017 */  lui        $v1, %hi(D_8016D5B4)
/* DF340 80035E30 8C63D5B4 */  lw         $v1, %lo(D_8016D5B4)($v1)
/* DF344 80035E34 3C048017 */  lui        $a0, %hi(D_8016D16C)
/* DF348 80035E38 8C84D16C */  lw         $a0, %lo(D_8016D16C)($a0)
/* DF34C 80035E3C 3C058015 */  lui        $a1, %hi(D_8014C370)
/* DF350 80035E40 8CA5C370 */  lw         $a1, %lo(D_8014C370)($a1)
/* DF354 80035E44 24020001 */  addiu      $v0, $zero, 1
/* DF358 80035E48 3C018017 */  lui        $at, %hi(D_8016D5B4)
/* DF35C 80035E4C AC22D5B4 */  sw         $v0, %lo(D_8016D5B4)($at)
/* DF360 80035E50 3C018017 */  lui        $at, %hi(D_8016D16C)
/* DF364 80035E54 AC20D16C */  sw         $zero, %lo(D_8016D16C)($at)
/* DF368 80035E58 3C018015 */  lui        $at, %hi(D_8014C370)
/* DF36C 80035E5C AC20C370 */  sw         $zero, %lo(D_8014C370)($at)
/* DF370 80035E60 3C018017 */  lui        $at, %hi(D_8016D6BC)
/* DF374 80035E64 AC23D6BC */  sw         $v1, %lo(D_8016D6BC)($at)
/* DF378 80035E68 3C018015 */  lui        $at, %hi(D_8014A0B8)
/* DF37C 80035E6C AC24A0B8 */  sw         $a0, %lo(D_8014A0B8)($at)
/* DF380 80035E70 3C018015 */  lui        $at, %hi(D_8014A048)
/* DF384 80035E74 AC25A048 */  sw         $a1, %lo(D_8014A048)($at)
/* DF388 80035E78 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF38C 80035E7C 03E00008 */  jr         $ra
/* DF390 80035E80 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035E84_DF394
/* DF394 80035E84 3C028017 */  lui        $v0, %hi(D_8016D6BC)
/* DF398 80035E88 8C42D6BC */  lw         $v0, %lo(D_8016D6BC)($v0)
/* DF39C 80035E8C 3C038015 */  lui        $v1, %hi(D_8014A0B8)
/* DF3A0 80035E90 8C63A0B8 */  lw         $v1, %lo(D_8014A0B8)($v1)
/* DF3A4 80035E94 3C048015 */  lui        $a0, %hi(D_8014A048)
/* DF3A8 80035E98 8C84A048 */  lw         $a0, %lo(D_8014A048)($a0)
/* DF3AC 80035E9C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF3B0 80035EA0 AFBF0010 */  sw         $ra, 0x10($sp)
/* DF3B4 80035EA4 3C018015 */  lui        $at, %hi(D_8014C370)
/* DF3B8 80035EA8 AC24C370 */  sw         $a0, %lo(D_8014C370)($at)
/* DF3BC 80035EAC 3C018017 */  lui        $at, %hi(D_8016D5B4)
/* DF3C0 80035EB0 AC22D5B4 */  sw         $v0, %lo(D_8016D5B4)($at)
/* DF3C4 80035EB4 3C018017 */  lui        $at, %hi(D_8016D16C)
/* DF3C8 80035EB8 AC23D16C */  sw         $v1, %lo(D_8016D16C)($at)
/* DF3CC 80035EBC 0C026449 */  jal        func_80099124
/* DF3D0 80035EC0 24040002 */   addiu     $a0, $zero, 2
/* DF3D4 80035EC4 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF3D8 80035EC8 03E00008 */  jr         $ra
/* DF3DC 80035ECC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80035ED0_DF3E0
/* DF3E0 80035ED0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF3E4 80035ED4 AFBF0010 */  sw         $ra, 0x10($sp)
/* DF3E8 80035ED8 0C027444 */  jal        func_8009D110
/* DF3EC 80035EDC 00002021 */   addu      $a0, $zero, $zero
/* DF3F0 80035EE0 3C048007 */  lui        $a0, %hi(D_80068CD8)
/* DF3F4 80035EE4 0C027515 */  jal        func_8009D454
/* DF3F8 80035EE8 24848CD8 */   addiu     $a0, $a0, %lo(D_80068CD8)
/* DF3FC 80035EEC 3C038015 */  lui        $v1, %hi(D_8014CF92)
/* DF400 80035EF0 9463CF92 */  lhu        $v1, %lo(D_8014CF92)($v1)
/* DF404 80035EF4 30624000 */  andi       $v0, $v1, 0x4000
/* DF408 80035EF8 10400005 */  beqz       $v0, .L80035F10
/* DF40C 80035EFC 30628000 */   andi      $v0, $v1, 0x8000
/* DF410 80035F00 0C00D73C */  jal        func_80035CF0_DF200
/* DF414 80035F04 00000000 */   nop
/* DF418 80035F08 0800D7D4 */  j          .L80035F50
/* DF41C 80035F0C 2402FFFF */   addiu     $v0, $zero, -1
.L80035F10:
/* DF420 80035F10 10400008 */  beqz       $v0, .L80035F34
/* DF424 80035F14 00000000 */   nop
/* DF428 80035F18 0C00D73C */  jal        func_80035CF0_DF200
/* DF42C 80035F1C 00000000 */   nop
/* DF430 80035F20 3C048007 */  lui        $a0, %hi(D_8006A632)
/* DF434 80035F24 0C00D720 */  jal        func_80035C80_DF190
/* DF438 80035F28 9484A632 */   lhu       $a0, %lo(D_8006A632)($a0)
/* DF43C 80035F2C 0800D7D4 */  j          .L80035F50
/* DF440 80035F30 00001021 */   addu      $v0, $zero, $zero
.L80035F34:
/* DF444 80035F34 0C00D750 */  jal        func_80035D40_DF250
/* DF448 80035F38 00000000 */   nop
/* DF44C 80035F3C 10400004 */  beqz       $v0, .L80035F50
/* DF450 80035F40 00001021 */   addu      $v0, $zero, $zero
/* DF454 80035F44 0C00D73C */  jal        func_80035CF0_DF200
/* DF458 80035F48 00000000 */   nop
/* DF45C 80035F4C 00001021 */  addu       $v0, $zero, $zero
.L80035F50:
/* DF460 80035F50 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF464 80035F54 03E00008 */  jr         $ra
/* DF468 80035F58 27BD0018 */   addiu     $sp, $sp, 0x18
/* DF46C 80035F5C 00000000 */  nop
