.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002EA00_72CE0
/* 72CE0 8002EA00 3C038003 */  lui        $v1, %hi(D_8002FA4C)
/* 72CE4 8002EA04 9063FA4C */  lbu        $v1, %lo(D_8002FA4C)($v1)
/* 72CE8 8002EA08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 72CEC 8002EA0C 10600006 */  beqz       $v1, .L8002EA28
/* 72CF0 8002EA10 AFBF0010 */   sw        $ra, 0x10($sp)
/* 72CF4 8002EA14 24020001 */  addiu      $v0, $zero, 1
/* 72CF8 8002EA18 10620011 */  beq        $v1, $v0, .L8002EA60
/* 72CFC 8002EA1C 00001021 */   addu      $v0, $zero, $zero
/* 72D00 8002EA20 0800BAA5 */  j          .L8002EA94
/* 72D04 8002EA24 00000000 */   nop
.L8002EA28:
/* 72D08 8002EA28 0C02A5AF */  jal        func_800A96BC
/* 72D0C 8002EA2C 24040001 */   addiu     $a0, $zero, 1
/* 72D10 8002EA30 24020001 */  addiu      $v0, $zero, 1
/* 72D14 8002EA34 3C018017 */  lui        $at, %hi(D_8016D5B4)
/* 72D18 8002EA38 AC22D5B4 */  sw         $v0, %lo(D_8016D5B4)($at)
/* 72D1C 8002EA3C 24020001 */  addiu      $v0, $zero, 1
/* 72D20 8002EA40 3C018003 */  lui        $at, %hi(D_80030A20)
/* 72D24 8002EA44 AC200A20 */  sw         $zero, %lo(D_80030A20)($at)
/* 72D28 8002EA48 3C018003 */  lui        $at, %hi(D_80030A24)
/* 72D2C 8002EA4C AC200A24 */  sw         $zero, %lo(D_80030A24)($at)
/* 72D30 8002EA50 3C018003 */  lui        $at, %hi(D_8002FA4C)
/* 72D34 8002EA54 A022FA4C */  sb         $v0, %lo(D_8002FA4C)($at)
/* 72D38 8002EA58 0800BAA5 */  j          .L8002EA94
/* 72D3C 8002EA5C 00001021 */   addu      $v0, $zero, $zero
.L8002EA60:
/* 72D40 8002EA60 0C027444 */  jal        func_8009D110
/* 72D44 8002EA64 00002021 */   addu      $a0, $zero, $zero
/* 72D48 8002EA68 3C048003 */  lui        $a0, %hi(D_8002FA28)
/* 72D4C 8002EA6C 0C027448 */  jal        func_8009D120
/* 72D50 8002EA70 2484FA28 */   addiu     $a0, $a0, %lo(D_8002FA28)
/* 72D54 8002EA74 3C018003 */  lui        $at, %hi(D_80030A24)
/* 72D58 8002EA78 AC220A24 */  sw         $v0, %lo(D_80030A24)($at)
/* 72D5C 8002EA7C 10400005 */  beqz       $v0, .L8002EA94
/* 72D60 8002EA80 00001021 */   addu      $v0, $zero, $zero
/* 72D64 8002EA84 0C02DB14 */  jal        func_800B6C50
/* 72D68 8002EA88 00002021 */   addu      $a0, $zero, $zero
/* 72D6C 8002EA8C 3C028003 */  lui        $v0, %hi(D_80030A24)
/* 72D70 8002EA90 8C420A24 */  lw         $v0, %lo(D_80030A24)($v0)
.L8002EA94:
/* 72D74 8002EA94 8FBF0010 */  lw         $ra, 0x10($sp)
/* 72D78 8002EA98 03E00008 */  jr         $ra
/* 72D7C 8002EA9C 27BD0018 */   addiu     $sp, $sp, 0x18
