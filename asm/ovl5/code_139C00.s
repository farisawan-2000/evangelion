.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80047E00_139C00
/* 139C00 80047E00 3C038005 */  lui        $v1, %hi(D_800523BC)
/* 139C04 80047E04 906323BC */  lbu        $v1, %lo(D_800523BC)($v1)
/* 139C08 80047E08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139C0C 80047E0C 2C620005 */  sltiu      $v0, $v1, 5
/* 139C10 80047E10 10400058 */  beqz       $v0, .L80047F74
/* 139C14 80047E14 AFBF0010 */   sw        $ra, 0x10($sp)
/* 139C18 80047E18 00031080 */  sll        $v0, $v1, 2
/* 139C1C 80047E1C 3C018006 */  lui        $at, %hi(D_8005CE40)
/* 139C20 80047E20 00220821 */  addu       $at, $at, $v0
/* 139C24 80047E24 8C22CE40 */  lw         $v0, %lo(D_8005CE40)($at)
/* 139C28 80047E28 00400008 */  jr         $v0
/* 139C2C 80047E2C 00000000 */   nop
/* 139C30 80047E30 0C02A5AF */  jal        func_800A96BC
/* 139C34 80047E34 24040001 */   addiu     $a0, $zero, 1
/* 139C38 80047E38 24020001 */  addiu      $v0, $zero, 1
/* 139C3C 80047E3C 3C018005 */  lui        $at, %hi(D_800523BC)
/* 139C40 80047E40 A02223BC */  sb         $v0, %lo(D_800523BC)($at)
/* 139C44 80047E44 2402000B */  addiu      $v0, $zero, 0xb
/* 139C48 80047E48 3C018006 */  lui        $at, %hi(D_8005DFD0)
/* 139C4C 80047E4C AC20DFD0 */  sw         $zero, %lo(D_8005DFD0)($at)
/* 139C50 80047E50 3C018006 */  lui        $at, %hi(D_8005DFD4)
/* 139C54 80047E54 AC20DFD4 */  sw         $zero, %lo(D_8005DFD4)($at)
/* 139C58 80047E58 3C018017 */  lui        $at, %hi(D_801765B8)
/* 139C5C 80047E5C 0C009BCC */  jal        func_80026F30_118D30
/* 139C60 80047E60 AC2265B8 */   sw        $v0, %lo(D_801765B8)($at)
/* 139C64 80047E64 08011FDE */  j          .L80047F78
/* 139C68 80047E68 00001021 */   addu      $v0, $zero, $zero
/* 139C6C 80047E6C 0C027444 */  jal        func_8009D110
/* 139C70 80047E70 00002021 */   addu      $a0, $zero, $zero
/* 139C74 80047E74 3C048005 */  lui        $a0, %hi(D_80052398)
/* 139C78 80047E78 0C027448 */  jal        func_8009D120
/* 139C7C 80047E7C 24842398 */   addiu     $a0, $a0, %lo(D_80052398)
/* 139C80 80047E80 3C018006 */  lui        $at, %hi(D_8005DFD4)
/* 139C84 80047E84 AC22DFD4 */  sw         $v0, %lo(D_8005DFD4)($at)
/* 139C88 80047E88 1040003B */  beqz       $v0, .L80047F78
/* 139C8C 80047E8C 00001021 */   addu      $v0, $zero, $zero
/* 139C90 80047E90 0C02A5C1 */  jal        func_800A9704
/* 139C94 80047E94 24040001 */   addiu     $a0, $zero, 1
/* 139C98 80047E98 24020001 */  addiu      $v0, $zero, 1
/* 139C9C 80047E9C 3C018006 */  lui        $at, %hi(D_8005DFD0)
/* 139CA0 80047EA0 AC22DFD0 */  sw         $v0, %lo(D_8005DFD0)($at)
/* 139CA4 80047EA4 24020002 */  addiu      $v0, $zero, 2
/* 139CA8 80047EA8 3C018005 */  lui        $at, %hi(D_800523BC)
/* 139CAC 80047EAC A02223BC */  sb         $v0, %lo(D_800523BC)($at)
/* 139CB0 80047EB0 08011FDE */  j          .L80047F78
/* 139CB4 80047EB4 00001021 */   addu      $v0, $zero, $zero
/* 139CB8 80047EB8 3C048005 */  lui        $a0, %hi(D_80052398)
/* 139CBC 80047EBC 24842398 */  addiu      $a0, $a0, %lo(D_80052398)
/* 139CC0 80047EC0 0C0274BE */  jal        func_8009D2F8
/* 139CC4 80047EC4 24050001 */   addiu     $a1, $zero, 1
/* 139CC8 80047EC8 3C028006 */  lui        $v0, %hi(D_8005DFD0)
/* 139CCC 80047ECC 8C42DFD0 */  lw         $v0, %lo(D_8005DFD0)($v0)
/* 139CD0 80047ED0 2442FFFF */  addiu      $v0, $v0, -1
/* 139CD4 80047ED4 3C018006 */  lui        $at, %hi(D_8005DFD0)
/* 139CD8 80047ED8 AC22DFD0 */  sw         $v0, %lo(D_8005DFD0)($at)
/* 139CDC 80047EDC 14400026 */  bnez       $v0, .L80047F78
/* 139CE0 80047EE0 00001021 */   addu      $v0, $zero, $zero
/* 139CE4 80047EE4 0C02DB14 */  jal        func_800B6C50
/* 139CE8 80047EE8 00002021 */   addu      $a0, $zero, $zero
/* 139CEC 80047EEC 3C038006 */  lui        $v1, %hi(D_8005DFD4)
/* 139CF0 80047EF0 8C63DFD4 */  lw         $v1, %lo(D_8005DFD4)($v1)
/* 139CF4 80047EF4 2402FFFF */  addiu      $v0, $zero, -1
/* 139CF8 80047EF8 14620006 */  bne        $v1, $v0, .L80047F14
/* 139CFC 80047EFC 24020003 */   addiu     $v0, $zero, 3
/* 139D00 80047F00 24020004 */  addiu      $v0, $zero, 4
/* 139D04 80047F04 3C018005 */  lui        $at, %hi(D_800523BC)
/* 139D08 80047F08 A02223BC */  sb         $v0, %lo(D_800523BC)($at)
/* 139D0C 80047F0C 08011FDE */  j          .L80047F78
/* 139D10 80047F10 00001021 */   addu      $v0, $zero, $zero
.L80047F14:
/* 139D14 80047F14 3C018005 */  lui        $at, %hi(D_800523BC)
/* 139D18 80047F18 A02223BC */  sb         $v0, %lo(D_800523BC)($at)
/* 139D1C 80047F1C 08011FDE */  j          .L80047F78
/* 139D20 80047F20 00001021 */   addu      $v0, $zero, $zero
/* 139D24 80047F24 3C028006 */  lui        $v0, %hi(D_8005DFD4)
/* 139D28 80047F28 8C42DFD4 */  lw         $v0, %lo(D_8005DFD4)($v0)
/* 139D2C 80047F2C 0040F809 */  jalr       $v0
/* 139D30 80047F30 00000000 */   nop
/* 139D34 80047F34 10400010 */  beqz       $v0, .L80047F78
/* 139D38 80047F38 00001021 */   addu      $v0, $zero, $zero
/* 139D3C 80047F3C 0C009BD9 */  jal        func_80026F64_118D64
/* 139D40 80047F40 00000000 */   nop
/* 139D44 80047F44 3C018005 */  lui        $at, %hi(D_800523BC)
/* 139D48 80047F48 A02023BC */  sb         $zero, %lo(D_800523BC)($at)
/* 139D4C 80047F4C 08011FDE */  j          .L80047F78
/* 139D50 80047F50 00001021 */   addu      $v0, $zero, $zero
/* 139D54 80047F54 0C009BD9 */  jal        func_80026F64_118D64
/* 139D58 80047F58 00000000 */   nop
/* 139D5C 80047F5C 0C02DB14 */  jal        func_800B6C50
/* 139D60 80047F60 00002021 */   addu      $a0, $zero, $zero
/* 139D64 80047F64 3C018005 */  lui        $at, %hi(D_800523BC)
/* 139D68 80047F68 A02023BC */  sb         $zero, %lo(D_800523BC)($at)
/* 139D6C 80047F6C 08011FDE */  j          .L80047F78
/* 139D70 80047F70 24020001 */   addiu     $v0, $zero, 1
.L80047F74:
/* 139D74 80047F74 00001021 */  addu       $v0, $zero, $zero
.L80047F78:
/* 139D78 80047F78 8FBF0010 */  lw         $ra, 0x10($sp)
/* 139D7C 80047F7C 03E00008 */  jr         $ra
/* 139D80 80047F80 27BD0018 */   addiu     $sp, $sp, 0x18
/* 139D84 80047F84 00000000 */  nop
/* 139D88 80047F88 00000000 */  nop
/* 139D8C 80047F8C 00000000 */  nop