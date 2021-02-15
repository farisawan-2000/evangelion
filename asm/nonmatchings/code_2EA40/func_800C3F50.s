.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C3F50
/* 2EB50 800C3F50 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 2EB54 800C3F54 AFB00038 */  sw         $s0, 0x38($sp)
/* 2EB58 800C3F58 00808021 */  addu       $s0, $a0, $zero
/* 2EB5C 800C3F5C AFB40048 */  sw         $s4, 0x48($sp)
/* 2EB60 800C3F60 00A0A021 */  addu       $s4, $a1, $zero
/* 2EB64 800C3F64 AFBF004C */  sw         $ra, 0x4c($sp)
/* 2EB68 800C3F68 AFB30044 */  sw         $s3, 0x44($sp)
/* 2EB6C 800C3F6C AFB20040 */  sw         $s2, 0x40($sp)
/* 2EB70 800C3F70 AFB1003C */  sw         $s1, 0x3c($sp)
/* 2EB74 800C3F74 8E020000 */  lw         $v0, ($s0)
/* 2EB78 800C3F78 00C09821 */  addu       $s3, $a2, $zero
/* 2EB7C 800C3F7C 30420001 */  andi       $v0, $v0, 1
/* 2EB80 800C3F80 14400003 */  bnez       $v0, .L800C3F90
/* 2EB84 800C3F84 00009021 */   addu      $s2, $zero, $zero
/* 2EB88 800C3F88 0803100C */  j          .L800C4030
/* 2EB8C 800C3F8C 24020005 */   addiu     $v0, $zero, 5
.L800C3F90:
/* 2EB90 800C3F90 0C031325 */  jal        func_800C4C94
/* 2EB94 800C3F94 02002021 */   addu      $a0, $s0, $zero
/* 2EB98 800C3F98 14400025 */  bnez       $v0, .L800C4030
/* 2EB9C 800C3F9C 00000000 */   nop
/* 2EBA0 800C3FA0 92020065 */  lbu        $v0, 0x65($s0)
/* 2EBA4 800C3FA4 10400005 */  beqz       $v0, .L800C3FBC
/* 2EBA8 800C3FA8 02002021 */   addu      $a0, $s0, $zero
/* 2EBAC 800C3FAC 0C031164 */  jal        func_800C4590
/* 2EBB0 800C3FB0 00002821 */   addu      $a1, $zero, $zero
/* 2EBB4 800C3FB4 1440001E */  bnez       $v0, .L800C4030
/* 2EBB8 800C3FB8 00000000 */   nop
.L800C3FBC:
/* 2EBBC 800C3FBC 8E020050 */  lw         $v0, 0x50($s0)
/* 2EBC0 800C3FC0 18400015 */  blez       $v0, .L800C4018
/* 2EBC4 800C3FC4 00008821 */   addu      $s1, $zero, $zero
.L800C3FC8:
/* 2EBC8 800C3FC8 8E06005C */  lw         $a2, 0x5c($s0)
/* 2EBCC 800C3FCC 8E040004 */  lw         $a0, 4($s0)
/* 2EBD0 800C3FD0 8E050008 */  lw         $a1, 8($s0)
/* 2EBD4 800C3FD4 27A70010 */  addiu      $a3, $sp, 0x10
/* 2EBD8 800C3FD8 00D13021 */  addu       $a2, $a2, $s1
/* 2EBDC 800C3FDC 0C031424 */  jal        func_800C5090
/* 2EBE0 800C3FE0 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 2EBE4 800C3FE4 14400012 */  bnez       $v0, .L800C4030
/* 2EBE8 800C3FE8 00000000 */   nop
/* 2EBEC 800C3FEC 97A20014 */  lhu        $v0, 0x14($sp)
/* 2EBF0 800C3FF0 10400004 */  beqz       $v0, .L800C4004
/* 2EBF4 800C3FF4 00000000 */   nop
/* 2EBF8 800C3FF8 8FA20010 */  lw         $v0, 0x10($sp)
/* 2EBFC 800C3FFC 0002102B */  sltu       $v0, $zero, $v0
/* 2EC00 800C4000 02429021 */  addu       $s2, $s2, $v0
.L800C4004:
/* 2EC04 800C4004 8E020050 */  lw         $v0, 0x50($s0)
/* 2EC08 800C4008 26310001 */  addiu      $s1, $s1, 1
/* 2EC0C 800C400C 0222102A */  slt        $v0, $s1, $v0
/* 2EC10 800C4010 1440FFED */  bnez       $v0, .L800C3FC8
/* 2EC14 800C4014 00000000 */   nop
.L800C4018:
/* 2EC18 800C4018 AE720000 */  sw         $s2, ($s3)
/* 2EC1C 800C401C 8E020050 */  lw         $v0, 0x50($s0)
/* 2EC20 800C4020 AE820000 */  sw         $v0, ($s4)
/* 2EC24 800C4024 8E040004 */  lw         $a0, 4($s0)
/* 2EC28 800C4028 0C0310E0 */  jal        func_800C4380
/* 2EC2C 800C402C 8E050008 */   lw        $a1, 8($s0)
.L800C4030:
/* 2EC30 800C4030 8FBF004C */  lw         $ra, 0x4c($sp)
/* 2EC34 800C4034 8FB40048 */  lw         $s4, 0x48($sp)
/* 2EC38 800C4038 8FB30044 */  lw         $s3, 0x44($sp)
/* 2EC3C 800C403C 8FB20040 */  lw         $s2, 0x40($sp)
/* 2EC40 800C4040 8FB1003C */  lw         $s1, 0x3c($sp)
/* 2EC44 800C4044 8FB00038 */  lw         $s0, 0x38($sp)
/* 2EC48 800C4048 03E00008 */  jr         $ra
/* 2EC4C 800C404C 27BD0050 */   addiu     $sp, $sp, 0x50
