.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80025C00_69EE0
/* 69EE0 80025C00 3C038003 */  lui        $v1, %hi(D_8002EB3C)
/* 69EE4 80025C04 9063EB3C */  lbu        $v1, %lo(D_8002EB3C)($v1)
/* 69EE8 80025C08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 69EEC 80025C0C 2C620005 */  sltiu      $v0, $v1, 5
/* 69EF0 80025C10 1040004E */  beqz       $v0, .L80025D4C
/* 69EF4 80025C14 AFBF0010 */   sw        $ra, 0x10($sp)
/* 69EF8 80025C18 00031080 */  sll        $v0, $v1, 2
/* 69EFC 80025C1C 3C018003 */  lui        $at, %hi(D_8002FAF8)
/* 69F00 80025C20 00220821 */  addu       $at, $at, $v0
/* 69F04 80025C24 8C22FAF8 */  lw         $v0, %lo(D_8002FAF8)($at)
/* 69F08 80025C28 00400008 */  jr         $v0
/* 69F0C 80025C2C 00000000 */   nop
/* 69F10 80025C30 0C02A5AF */  jal        func_800A96BC
/* 69F14 80025C34 24040001 */   addiu     $a0, $zero, 1
/* 69F18 80025C38 24020001 */  addiu      $v0, $zero, 1
/* 69F1C 80025C3C 3C018003 */  lui        $at, %hi(D_80030A30)
/* 69F20 80025C40 A0200A30 */  sb         $zero, %lo(D_80030A30)($at)
/* 69F24 80025C44 3C018003 */  lui        $at, %hi(D_800308D0)
/* 69F28 80025C48 AC2008D0 */  sw         $zero, %lo(D_800308D0)($at)
/* 69F2C 80025C4C 3C018003 */  lui        $at, %hi(D_800308D4)
/* 69F30 80025C50 AC2008D4 */  sw         $zero, %lo(D_800308D4)($at)
/* 69F34 80025C54 3C018003 */  lui        $at, %hi(D_8002EB3C)
/* 69F38 80025C58 A022EB3C */  sb         $v0, %lo(D_8002EB3C)($at)
/* 69F3C 80025C5C 08009754 */  j          .L80025D50
/* 69F40 80025C60 00001021 */   addu      $v0, $zero, $zero
/* 69F44 80025C64 0C027444 */  jal        func_8009D110
/* 69F48 80025C68 00002021 */   addu      $a0, $zero, $zero
/* 69F4C 80025C6C 3C048003 */  lui        $a0, %hi(D_8002EB18)
/* 69F50 80025C70 0C027448 */  jal        func_8009D120
/* 69F54 80025C74 2484EB18 */   addiu     $a0, $a0, %lo(D_8002EB18)
/* 69F58 80025C78 3C018003 */  lui        $at, %hi(D_800308D4)
/* 69F5C 80025C7C AC2208D4 */  sw         $v0, %lo(D_800308D4)($at)
/* 69F60 80025C80 10400032 */  beqz       $v0, .L80025D4C
/* 69F64 80025C84 24020002 */   addiu     $v0, $zero, 2
/* 69F68 80025C88 3C018003 */  lui        $at, %hi(D_8002EB3C)
/* 69F6C 80025C8C A022EB3C */  sb         $v0, %lo(D_8002EB3C)($at)
/* 69F70 80025C90 08009754 */  j          .L80025D50
/* 69F74 80025C94 00001021 */   addu      $v0, $zero, $zero
/* 69F78 80025C98 3C048003 */  lui        $a0, %hi(D_8002EB18)
/* 69F7C 80025C9C 2484EB18 */  addiu      $a0, $a0, %lo(D_8002EB18)
/* 69F80 80025CA0 0C0274BE */  jal        func_8009D2F8
/* 69F84 80025CA4 24050001 */   addiu     $a1, $zero, 1
/* 69F88 80025CA8 3C028003 */  lui        $v0, %hi(D_800308D0)
/* 69F8C 80025CAC 8C4208D0 */  lw         $v0, %lo(D_800308D0)($v0)
/* 69F90 80025CB0 2442FFFF */  addiu      $v0, $v0, -1
/* 69F94 80025CB4 3C018003 */  lui        $at, %hi(D_800308D0)
/* 69F98 80025CB8 AC2208D0 */  sw         $v0, %lo(D_800308D0)($at)
/* 69F9C 80025CBC 1C400024 */  bgtz       $v0, .L80025D50
/* 69FA0 80025CC0 00001021 */   addu      $v0, $zero, $zero
/* 69FA4 80025CC4 0C02DB14 */  jal        func_800B6C50
/* 69FA8 80025CC8 00002021 */   addu      $a0, $zero, $zero
/* 69FAC 80025CCC 3C048003 */  lui        $a0, %hi(D_800308D4)
/* 69FB0 80025CD0 8C8408D4 */  lw         $a0, %lo(D_800308D4)($a0)
/* 69FB4 80025CD4 2402FFFF */  addiu      $v0, $zero, -1
/* 69FB8 80025CD8 14820006 */  bne        $a0, $v0, .L80025CF4
/* 69FBC 80025CDC 00002821 */   addu      $a1, $zero, $zero
/* 69FC0 80025CE0 24020004 */  addiu      $v0, $zero, 4
/* 69FC4 80025CE4 3C018003 */  lui        $at, %hi(D_8002EB3C)
/* 69FC8 80025CE8 A022EB3C */  sb         $v0, %lo(D_8002EB3C)($at)
/* 69FCC 80025CEC 08009754 */  j          .L80025D50
/* 69FD0 80025CF0 00001021 */   addu      $v0, $zero, $zero
.L80025CF4:
/* 69FD4 80025CF4 2406012C */  addiu      $a2, $zero, 0x12c
/* 69FD8 80025CF8 0C025D06 */  jal        func_80097418
/* 69FDC 80025CFC 24070001 */   addiu     $a3, $zero, 1
/* 69FE0 80025D00 24020003 */  addiu      $v0, $zero, 3
/* 69FE4 80025D04 3C018003 */  lui        $at, %hi(D_8002EB3C)
/* 69FE8 80025D08 A022EB3C */  sb         $v0, %lo(D_8002EB3C)($at)
/* 69FEC 80025D0C 08009754 */  j          .L80025D50
/* 69FF0 80025D10 00001021 */   addu      $v0, $zero, $zero
/* 69FF4 80025D14 3C038003 */  lui        $v1, %hi(D_80030A30)
/* 69FF8 80025D18 90630A30 */  lbu        $v1, %lo(D_80030A30)($v1)
/* 69FFC 80025D1C 24020001 */  addiu      $v0, $zero, 1
/* 6A000 80025D20 1462000B */  bne        $v1, $v0, .L80025D50
/* 6A004 80025D24 00001021 */   addu      $v0, $zero, $zero
/* 6A008 80025D28 3C018003 */  lui        $at, %hi(D_8002EB3C)
/* 6A00C 80025D2C 08009754 */  j          .L80025D50
/* 6A010 80025D30 A020EB3C */   sb        $zero, %lo(D_8002EB3C)($at)
/* 6A014 80025D34 0C02DB14 */  jal        func_800B6C50
/* 6A018 80025D38 00002021 */   addu      $a0, $zero, $zero
/* 6A01C 80025D3C 3C018003 */  lui        $at, %hi(D_8002EB3C)
/* 6A020 80025D40 A020EB3C */  sb         $zero, %lo(D_8002EB3C)($at)
/* 6A024 80025D44 08009754 */  j          .L80025D50
/* 6A028 80025D48 24020001 */   addiu     $v0, $zero, 1
.L80025D4C:
/* 6A02C 80025D4C 00001021 */  addu       $v0, $zero, $zero
.L80025D50:
/* 6A030 80025D50 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6A034 80025D54 03E00008 */  jr         $ra
/* 6A038 80025D58 27BD0018 */   addiu     $sp, $sp, 0x18
/* 6A03C 80025D5C 00000000 */  nop
