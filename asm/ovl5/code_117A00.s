.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80025C00_117A00
/* 117A00 80025C00 3C038005 */  lui        $v1, %hi(D_8005198C)
/* 117A04 80025C04 9063198C */  lbu        $v1, %lo(D_8005198C)($v1)
/* 117A08 80025C08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117A0C 80025C0C 2C620005 */  sltiu      $v0, $v1, 5
/* 117A10 80025C10 10400054 */  beqz       $v0, .L80025D64
/* 117A14 80025C14 AFBF0010 */   sw        $ra, 0x10($sp)
/* 117A18 80025C18 00031080 */  sll        $v0, $v1, 2
/* 117A1C 80025C1C 3C018006 */  lui        $at, %hi(D_8005A638)
/* 117A20 80025C20 00220821 */  addu       $at, $at, $v0
/* 117A24 80025C24 8C22A638 */  lw         $v0, %lo(D_8005A638)($at)
/* 117A28 80025C28 00400008 */  jr         $v0
/* 117A2C 80025C2C 00000000 */   nop
/* 117A30 80025C30 0C00975D */  jal        func_80025D74_117B74
/* 117A34 80025C34 00000000 */   nop
/* 117A38 80025C38 0C02A5AF */  jal        func_800A96BC
/* 117A3C 80025C3C 24040001 */   addiu     $a0, $zero, 1
/* 117A40 80025C40 24020001 */  addiu      $v0, $zero, 1
/* 117A44 80025C44 3C018006 */  lui        $at, %hi(D_8005DB60)
/* 117A48 80025C48 AC20DB60 */  sw         $zero, %lo(D_8005DB60)($at)
/* 117A4C 80025C4C 3C018006 */  lui        $at, %hi(D_8005DB64)
/* 117A50 80025C50 AC20DB64 */  sw         $zero, %lo(D_8005DB64)($at)
/* 117A54 80025C54 3C018005 */  lui        $at, %hi(D_8005198C)
/* 117A58 80025C58 0C02B4A0 */  jal        func_800AD280
/* 117A5C 80025C5C A022198C */   sb        $v0, %lo(D_8005198C)($at)
/* 117A60 80025C60 0800975A */  j          .L80025D68
/* 117A64 80025C64 00001021 */   addu      $v0, $zero, $zero
/* 117A68 80025C68 0C027444 */  jal        func_8009D110
/* 117A6C 80025C6C 00002021 */   addu      $a0, $zero, $zero
/* 117A70 80025C70 3C048005 */  lui        $a0, %hi(D_80051968)
/* 117A74 80025C74 0C027448 */  jal        func_8009D120
/* 117A78 80025C78 24841968 */   addiu     $a0, $a0, %lo(D_80051968)
/* 117A7C 80025C7C 3C018006 */  lui        $at, %hi(D_8005DB64)
/* 117A80 80025C80 AC22DB64 */  sw         $v0, %lo(D_8005DB64)($at)
/* 117A84 80025C84 10400038 */  beqz       $v0, .L80025D68
/* 117A88 80025C88 00001021 */   addu      $v0, $zero, $zero
/* 117A8C 80025C8C 0C02A5C1 */  jal        func_800A9704
/* 117A90 80025C90 24040001 */   addiu     $a0, $zero, 1
/* 117A94 80025C94 24020001 */  addiu      $v0, $zero, 1
/* 117A98 80025C98 3C018006 */  lui        $at, %hi(D_8005DB60)
/* 117A9C 80025C9C AC22DB60 */  sw         $v0, %lo(D_8005DB60)($at)
/* 117AA0 80025CA0 24020002 */  addiu      $v0, $zero, 2
/* 117AA4 80025CA4 3C018005 */  lui        $at, %hi(D_8005198C)
/* 117AA8 80025CA8 A022198C */  sb         $v0, %lo(D_8005198C)($at)
/* 117AAC 80025CAC 0800975A */  j          .L80025D68
/* 117AB0 80025CB0 00001021 */   addu      $v0, $zero, $zero
/* 117AB4 80025CB4 3C048005 */  lui        $a0, %hi(D_80051968)
/* 117AB8 80025CB8 24841968 */  addiu      $a0, $a0, %lo(D_80051968)
/* 117ABC 80025CBC 0C0274BE */  jal        func_8009D2F8
/* 117AC0 80025CC0 24050001 */   addiu     $a1, $zero, 1
/* 117AC4 80025CC4 3C028006 */  lui        $v0, %hi(D_8005DB60)
/* 117AC8 80025CC8 8C42DB60 */  lw         $v0, %lo(D_8005DB60)($v0)
/* 117ACC 80025CCC 2442FFFF */  addiu      $v0, $v0, -1
/* 117AD0 80025CD0 3C018006 */  lui        $at, %hi(D_8005DB60)
/* 117AD4 80025CD4 AC22DB60 */  sw         $v0, %lo(D_8005DB60)($at)
/* 117AD8 80025CD8 14400023 */  bnez       $v0, .L80025D68
/* 117ADC 80025CDC 00001021 */   addu      $v0, $zero, $zero
/* 117AE0 80025CE0 0C02DB14 */  jal        func_800B6C50
/* 117AE4 80025CE4 00002021 */   addu      $a0, $zero, $zero
/* 117AE8 80025CE8 3C038006 */  lui        $v1, %hi(D_8005DB64)
/* 117AEC 80025CEC 8C63DB64 */  lw         $v1, %lo(D_8005DB64)($v1)
/* 117AF0 80025CF0 2402FFFF */  addiu      $v0, $zero, -1
/* 117AF4 80025CF4 14620006 */  bne        $v1, $v0, .L80025D10
/* 117AF8 80025CF8 24020003 */   addiu     $v0, $zero, 3
/* 117AFC 80025CFC 24020004 */  addiu      $v0, $zero, 4
/* 117B00 80025D00 3C018005 */  lui        $at, %hi(D_8005198C)
/* 117B04 80025D04 A022198C */  sb         $v0, %lo(D_8005198C)($at)
/* 117B08 80025D08 0800975A */  j          .L80025D68
/* 117B0C 80025D0C 00001021 */   addu      $v0, $zero, $zero
.L80025D10:
/* 117B10 80025D10 3C018005 */  lui        $at, %hi(D_8005198C)
/* 117B14 80025D14 A022198C */  sb         $v0, %lo(D_8005198C)($at)
/* 117B18 80025D18 0800975A */  j          .L80025D68
/* 117B1C 80025D1C 00001021 */   addu      $v0, $zero, $zero
/* 117B20 80025D20 3C028006 */  lui        $v0, %hi(D_8005DB64)
/* 117B24 80025D24 8C42DB64 */  lw         $v0, %lo(D_8005DB64)($v0)
/* 117B28 80025D28 0040F809 */  jalr       $v0
/* 117B2C 80025D2C 00000000 */   nop
/* 117B30 80025D30 1040000D */  beqz       $v0, .L80025D68
/* 117B34 80025D34 00001021 */   addu      $v0, $zero, $zero
/* 117B38 80025D38 3C018005 */  lui        $at, %hi(D_8005198C)
/* 117B3C 80025D3C 0800975A */  j          .L80025D68
/* 117B40 80025D40 A020198C */   sb        $zero, %lo(D_8005198C)($at)
/* 117B44 80025D44 0C026449 */  jal        func_80099124
/* 117B48 80025D48 24040002 */   addiu     $a0, $zero, 2
/* 117B4C 80025D4C 0C02DB14 */  jal        func_800B6C50
/* 117B50 80025D50 00002021 */   addu      $a0, $zero, $zero
/* 117B54 80025D54 3C018005 */  lui        $at, %hi(D_8005198C)
/* 117B58 80025D58 A020198C */  sb         $zero, %lo(D_8005198C)($at)
/* 117B5C 80025D5C 0800975A */  j          .L80025D68
/* 117B60 80025D60 24020001 */   addiu     $v0, $zero, 1
.L80025D64:
/* 117B64 80025D64 00001021 */  addu       $v0, $zero, $zero
.L80025D68:
/* 117B68 80025D68 8FBF0010 */  lw         $ra, 0x10($sp)
/* 117B6C 80025D6C 03E00008 */  jr         $ra
/* 117B70 80025D70 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80025D74_117B74
/* 117B74 80025D74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 117B78 80025D78 AFBF0010 */  sw         $ra, 0x10($sp)
/* 117B7C 80025D7C 3C04802F */  lui        $a0, 0x802f
/* 117B80 80025D80 34849800 */  ori        $a0, $a0, 0x9800
/* 117B84 80025D84 3C050007 */  lui        $a1, 7
/* 117B88 80025D88 0C025E1F */  jal        func_8009787C
/* 117B8C 80025D8C 34A50800 */   ori       $a1, $a1, 0x800
/* 117B90 80025D90 8FBF0010 */  lw         $ra, 0x10($sp)
/* 117B94 80025D94 03E00008 */  jr         $ra
/* 117B98 80025D98 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80025D9C_117B9C
/* 117B9C 80025D9C 03E00008 */  jr         $ra
/* 117BA0 80025DA0 00000000 */   nop
/* 117BA4 80025DA4 00000000 */  nop
/* 117BA8 80025DA8 00000000 */  nop
/* 117BAC 80025DAC 00000000 */  nop