.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8F90
/* 23B90 800B8F90 3C02800F */  lui        $v0, %hi(D_800F5E20)
/* 23B94 800B8F94 8C425E20 */  lw         $v0, %lo(D_800F5E20)($v0)
/* 23B98 800B8F98 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 23B9C 800B8F9C AFB00010 */  sw         $s0, 0x10($sp)
/* 23BA0 800B8FA0 00A08021 */  addu       $s0, $a1, $zero
/* 23BA4 800B8FA4 14400003 */  bnez       $v0, .L800B8FB4
/* 23BA8 800B8FA8 AFBF0014 */   sw        $ra, 0x14($sp)
/* 23BAC 800B8FAC 0802E405 */  j          .L800B9014
/* 23BB0 800B8FB0 2402FFFF */   addiu     $v0, $zero, -1
.L800B8FB4:
/* 23BB4 800B8FB4 14C00003 */  bnez       $a2, .L800B8FC4
/* 23BB8 800B8FB8 AE040014 */   sw        $a0, 0x14($s0)
/* 23BBC 800B8FBC 0802E3F2 */  j          .L800B8FC8
/* 23BC0 800B8FC0 2402000F */   addiu     $v0, $zero, 0xf
.L800B8FC4:
/* 23BC4 800B8FC4 24020010 */  addiu      $v0, $zero, 0x10
.L800B8FC8:
/* 23BC8 800B8FC8 A6020000 */  sh         $v0, ($s0)
/* 23BCC 800B8FCC 92030002 */  lbu        $v1, 2($s0)
/* 23BD0 800B8FD0 24020001 */  addiu      $v0, $zero, 1
/* 23BD4 800B8FD4 14620009 */  bne        $v1, $v0, .L800B8FFC
/* 23BD8 800B8FD8 00000000 */   nop
/* 23BDC 800B8FDC 0C031A4C */  jal        func_800C6930
/* 23BE0 800B8FE0 00000000 */   nop
/* 23BE4 800B8FE4 00402021 */  addu       $a0, $v0, $zero
/* 23BE8 800B8FE8 02002821 */  addu       $a1, $s0, $zero
/* 23BEC 800B8FEC 0C0301B0 */  jal        func_800C06C0
/* 23BF0 800B8FF0 00003021 */   addu      $a2, $zero, $zero
/* 23BF4 800B8FF4 0802E405 */  j          .L800B9014
/* 23BF8 800B8FF8 00000000 */   nop
.L800B8FFC:
/* 23BFC 800B8FFC 0C031A4C */  jal        func_800C6930
/* 23C00 800B9000 00000000 */   nop
/* 23C04 800B9004 00402021 */  addu       $a0, $v0, $zero
/* 23C08 800B9008 02002821 */  addu       $a1, $s0, $zero
/* 23C0C 800B900C 0C03024C */  jal        func_800C0930
/* 23C10 800B9010 00003021 */   addu      $a2, $zero, $zero
.L800B9014:
/* 23C14 800B9014 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23C18 800B9018 8FB00010 */  lw         $s0, 0x10($sp)
/* 23C1C 800B901C 03E00008 */  jr         $ra
/* 23C20 800B9020 27BD0018 */   addiu     $sp, $sp, 0x18
/* 23C24 800B9024 00000000 */  nop
/* 23C28 800B9028 00000000 */  nop
/* 23C2C 800B902C 00000000 */  nop
