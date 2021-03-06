.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80025C00_74BB0
/* 74BB0 80025C00 3C038007 */  lui        $v1, %hi(D_80069C90_B8C40)
/* 74BB4 80025C04 90639C90 */  lbu        $v1, %lo(D_80069C90_B8C40)($v1)
/* 74BB8 80025C08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74BBC 80025C0C 2C620005 */  sltiu      $v0, $v1, 5
/* 74BC0 80025C10 10400052 */  beqz       $v0, .L80025D5C
/* 74BC4 80025C14 AFBF0010 */   sw        $ra, 0x10($sp)
/* 74BC8 80025C18 00031080 */  sll        $v0, $v1, 2
/* 74BCC 80025C1C 3C018008 */  lui        $at, %hi(jtbl_8007D648_CC5F8)
/* 74BD0 80025C20 00220821 */  addu       $at, $at, $v0
/* 74BD4 80025C24 8C22D648 */  lw         $v0, %lo(jtbl_8007D648_CC5F8)($at)
/* 74BD8 80025C28 00400008 */  jr         $v0
/* 74BDC 80025C2C 00000000 */   nop
glabel L80025C30_74BE0
/* 74BE0 80025C30 0C02B4A0 */  jal        func_800AD280
/* 74BE4 80025C34 00000000 */   nop
/* 74BE8 80025C38 0C02A5F7 */  jal        func_800A97DC
/* 74BEC 80025C3C 24040063 */   addiu     $a0, $zero, 0x63
/* 74BF0 80025C40 0C02A5AF */  jal        func_800A96BC
/* 74BF4 80025C44 24040001 */   addiu     $a0, $zero, 1
/* 74BF8 80025C48 24020001 */  addiu      $v0, $zero, 1
/* 74BFC 80025C4C 3C018008 */  lui        $at, %hi(D_80080160)
/* 74C00 80025C50 AC200160 */  sw         $zero, %lo(D_80080160)($at)
/* 74C04 80025C54 3C018008 */  lui        $at, %hi(D_80080164)
/* 74C08 80025C58 AC200164 */  sw         $zero, %lo(D_80080164)($at)
/* 74C0C 80025C5C 3C018007 */  lui        $at, %hi(D_80069C90_B8C40)
/* 74C10 80025C60 A0229C90 */  sb         $v0, %lo(D_80069C90_B8C40)($at)
/* 74C14 80025C64 08009758 */  j          .L80025D60
/* 74C18 80025C68 00001021 */   addu      $v0, $zero, $zero
glabel L80025C6C_74C1C
/* 74C1C 80025C6C 0C027444 */  jal        func_8009D110
/* 74C20 80025C70 00002021 */   addu      $a0, $zero, $zero
/* 74C24 80025C74 3C048007 */  lui        $a0, %hi(D_80069C6C_B8C1C)
/* 74C28 80025C78 24849C6C */  addiu      $a0, $a0, %lo(D_80069C6C_B8C1C)
/* 74C2C 80025C7C 0C027448 */  jal        func_8009D120
/* 74C30 80025C80 00000000 */   nop
/* 74C34 80025C84 3C018008 */  lui        $at, %hi(D_80080164)
/* 74C38 80025C88 AC220164 */  sw         $v0, %lo(D_80080164)($at)
/* 74C3C 80025C8C 10400033 */  beqz       $v0, .L80025D5C
/* 74C40 80025C90 24020001 */   addiu     $v0, $zero, 1
/* 74C44 80025C94 3C018008 */  lui        $at, %hi(D_80080160)
/* 74C48 80025C98 AC220160 */  sw         $v0, %lo(D_80080160)($at)
/* 74C4C 80025C9C 24020002 */  addiu      $v0, $zero, 2
/* 74C50 80025CA0 3C018007 */  lui        $at, %hi(D_80069C90_B8C40)
/* 74C54 80025CA4 A0229C90 */  sb         $v0, %lo(D_80069C90_B8C40)($at)
/* 74C58 80025CA8 08009758 */  j          .L80025D60
/* 74C5C 80025CAC 00001021 */   addu      $v0, $zero, $zero
glabel L80025CB0_74C60
/* 74C60 80025CB0 3C048007 */  lui        $a0, %hi(D_80069C6C_B8C1C)
/* 74C64 80025CB4 24849C6C */  addiu      $a0, $a0, %lo(D_80069C6C_B8C1C)
/* 74C68 80025CB8 0C0274BE */  jal        func_8009D2F8
/* 74C6C 80025CBC 24050001 */   addiu     $a1, $zero, 1
/* 74C70 80025CC0 3C028008 */  lui        $v0, %hi(D_80080160)
/* 74C74 80025CC4 8C420160 */  lw         $v0, %lo(D_80080160)($v0)
/* 74C78 80025CC8 2442FFFF */  addiu      $v0, $v0, -1
/* 74C7C 80025CCC 3C018008 */  lui        $at, %hi(D_80080160)
/* 74C80 80025CD0 AC220160 */  sw         $v0, %lo(D_80080160)($at)
/* 74C84 80025CD4 14400022 */  bnez       $v0, .L80025D60
/* 74C88 80025CD8 00001021 */   addu      $v0, $zero, $zero
/* 74C8C 80025CDC 0C02DB14 */  jal        func_800B6C50
/* 74C90 80025CE0 00002021 */   addu      $a0, $zero, $zero
/* 74C94 80025CE4 3C038008 */  lui        $v1, %hi(D_80080164)
/* 74C98 80025CE8 8C630164 */  lw         $v1, %lo(D_80080164)($v1)
/* 74C9C 80025CEC 2402FFFF */  addiu      $v0, $zero, -1
/* 74CA0 80025CF0 14620006 */  bne        $v1, $v0, .L80025D0C
/* 74CA4 80025CF4 24020003 */   addiu     $v0, $zero, 3
/* 74CA8 80025CF8 24020004 */  addiu      $v0, $zero, 4
/* 74CAC 80025CFC 3C018007 */  lui        $at, %hi(D_80069C90_B8C40)
/* 74CB0 80025D00 A0229C90 */  sb         $v0, %lo(D_80069C90_B8C40)($at)
/* 74CB4 80025D04 08009758 */  j          .L80025D60
/* 74CB8 80025D08 00001021 */   addu      $v0, $zero, $zero
.L80025D0C:
/* 74CBC 80025D0C 3C018007 */  lui        $at, %hi(D_80069C90_B8C40)
/* 74CC0 80025D10 A0229C90 */  sb         $v0, %lo(D_80069C90_B8C40)($at)
/* 74CC4 80025D14 08009758 */  j          .L80025D60
/* 74CC8 80025D18 00001021 */   addu      $v0, $zero, $zero
glabel L80025D1C_74CCC
/* 74CCC 80025D1C 3C028008 */  lui        $v0, %hi(D_80080164)
/* 74CD0 80025D20 8C420164 */  lw         $v0, %lo(D_80080164)($v0)
/* 74CD4 80025D24 0040F809 */  jalr       $v0
/* 74CD8 80025D28 00000000 */   nop
/* 74CDC 80025D2C 1040000C */  beqz       $v0, .L80025D60
/* 74CE0 80025D30 00001021 */   addu      $v0, $zero, $zero
/* 74CE4 80025D34 3C018007 */  lui        $at, %hi(D_80069C90_B8C40)
/* 74CE8 80025D38 A0209C90 */  sb         $zero, %lo(D_80069C90_B8C40)($at)
/* 74CEC 80025D3C 08009758 */  j          .L80025D60
/* 74CF0 80025D40 00000000 */   nop
glabel L80025D44_74CF4
/* 74CF4 80025D44 0C02DB14 */  jal        func_800B6C50
/* 74CF8 80025D48 00002021 */   addu      $a0, $zero, $zero
/* 74CFC 80025D4C 3C018007 */  lui        $at, %hi(D_80069C90_B8C40)
/* 74D00 80025D50 A0209C90 */  sb         $zero, %lo(D_80069C90_B8C40)($at)
/* 74D04 80025D54 08009758 */  j          .L80025D60
/* 74D08 80025D58 24020001 */   addiu     $v0, $zero, 1
.L80025D5C:
/* 74D0C 80025D5C 00001021 */  addu       $v0, $zero, $zero
.L80025D60:
/* 74D10 80025D60 8FBF0010 */  lw         $ra, 0x10($sp)
/* 74D14 80025D64 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74D18 80025D68 03E00008 */  jr         $ra
/* 74D1C 80025D6C 00000000 */   nop

glabel func_80025D70_74D20
/* 74D20 80025D70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 74D24 80025D74 AFBF0010 */  sw         $ra, 0x10($sp)
/* 74D28 80025D78 3C04802F */  lui        $a0, 0x802f
/* 74D2C 80025D7C 34849800 */  ori        $a0, $a0, 0x9800
/* 74D30 80025D80 3C050007 */  lui        $a1, 7
/* 74D34 80025D84 0C025E1F */  jal        func_8009787C
/* 74D38 80025D88 34A50800 */   ori       $a1, $a1, 0x800
/* 74D3C 80025D8C 0C025E63 */  jal        func_8009798C
/* 74D40 80025D90 24040001 */   addiu     $a0, $zero, 1
/* 74D44 80025D94 8FBF0010 */  lw         $ra, 0x10($sp)
/* 74D48 80025D98 27BD0018 */  addiu      $sp, $sp, 0x18
/* 74D4C 80025D9C 03E00008 */  jr         $ra
/* 74D50 80025DA0 00000000 */   nop

glabel func_80025DA4_74D54
/* 74D54 80025DA4 03E00008 */  jr         $ra
/* 74D58 80025DA8 00000000 */   nop
/* 74D5C 80025DAC 00000000 */  nop
