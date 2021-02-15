.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009838C
/* 2F8C 8009838C 2CA20020 */  sltiu      $v0, $a1, 0x20
/* 2F90 80098390 1440000C */  bnez       $v0, .L800983C4
/* 2F94 80098394 2403FFFF */   addiu     $v1, $zero, -1
/* 2F98 80098398 2482000F */  addiu      $v0, $a0, 0xf
/* 2F9C 8009839C 2403FFF0 */  addiu      $v1, $zero, -0x10
/* 2FA0 800983A0 00431024 */  and        $v0, $v0, $v1
/* 2FA4 800983A4 00441823 */  subu       $v1, $v0, $a0
/* 2FA8 800983A8 00A32823 */  subu       $a1, $a1, $v1
/* 2FAC 800983AC 00401821 */  addu       $v1, $v0, $zero
/* 2FB0 800983B0 24A2FFF0 */  addiu      $v0, $a1, -0x10
/* 2FB4 800983B4 AC600000 */  sw         $zero, ($v1)
/* 2FB8 800983B8 AC620004 */  sw         $v0, 4($v1)
/* 2FBC 800983BC AC600008 */  sw         $zero, 8($v1)
/* 2FC0 800983C0 AC65000C */  sw         $a1, 0xc($v1)
.L800983C4:
/* 2FC4 800983C4 3C01800D */  lui        $at, %hi(D_800D3A30)
/* 2FC8 800983C8 AC233A30 */  sw         $v1, %lo(D_800D3A30)($at)
/* 2FCC 800983CC 00031027 */  nor        $v0, $zero, $v1
/* 2FD0 800983D0 2C420001 */  sltiu      $v0, $v0, 1
/* 2FD4 800983D4 03E00008 */  jr         $ra
/* 2FD8 800983D8 00021023 */   negu      $v0, $v0
