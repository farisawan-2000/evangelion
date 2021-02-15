.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8360
/* 22F60 800B8360 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 22F64 800B8364 AFB10014 */  sw         $s1, 0x14($sp)
/* 22F68 800B8368 3C11800F */  lui        $s1, %hi(D_800F5DE0)
/* 22F6C 800B836C 26315DE0 */  addiu      $s1, $s1, %lo(D_800F5DE0)
/* 22F70 800B8370 AFBF0018 */  sw         $ra, 0x18($sp)
/* 22F74 800B8374 AFB00010 */  sw         $s0, 0x10($sp)
/* 22F78 800B8378 8E220000 */  lw         $v0, ($s1)
/* 22F7C 800B837C 10400011 */  beqz       $v0, .L800B83C4
/* 22F80 800B8380 00000000 */   nop
.L800B8384:
/* 22F84 800B8384 8E220000 */  lw         $v0, ($s1)
/* 22F88 800B8388 8C500000 */  lw         $s0, ($v0)
/* 22F8C 800B838C 1604000B */  bne        $s0, $a0, .L800B83BC
/* 22F90 800B8390 00000000 */   nop
/* 22F94 800B8394 0C02E2DC */  jal        func_800B8B70
/* 22F98 800B8398 24040001 */   addiu     $a0, $zero, 1
/* 22F9C 800B839C 8E250000 */  lw         $a1, ($s1)
/* 22FA0 800B83A0 8E030000 */  lw         $v1, ($s0)
/* 22FA4 800B83A4 00402021 */  addu       $a0, $v0, $zero
/* 22FA8 800B83A8 ACA30000 */  sw         $v1, ($a1)
/* 22FAC 800B83AC 0C02E2DC */  jal        func_800B8B70
/* 22FB0 800B83B0 AE000000 */   sw        $zero, ($s0)
/* 22FB4 800B83B4 0802E0F1 */  j          .L800B83C4
/* 22FB8 800B83B8 00000000 */   nop
.L800B83BC:
/* 22FBC 800B83BC 1600FFF1 */  bnez       $s0, .L800B8384
/* 22FC0 800B83C0 00408821 */   addu      $s1, $v0, $zero
.L800B83C4:
/* 22FC4 800B83C4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 22FC8 800B83C8 8FB10014 */  lw         $s1, 0x14($sp)
/* 22FCC 800B83CC 8FB00010 */  lw         $s0, 0x10($sp)
/* 22FD0 800B83D0 03E00008 */  jr         $ra
/* 22FD4 800B83D4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 22FD8 800B83D8 00000000 */  nop
/* 22FDC 800B83DC 00000000 */  nop
