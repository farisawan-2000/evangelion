glabel func_800C0F60
/* 2BB60 800C0F60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2BB64 800C0F64 AFB20018 */  sw         $s2, 0x18($sp)
/* 2BB68 800C0F68 00809021 */  addu       $s2, $a0, $zero
/* 2BB6C 800C0F6C AFB3001C */  sw         $s3, 0x1C($sp)
/* 2BB70 800C0F70 00A09821 */  addu       $s3, $a1, $zero
/* 2BB74 800C0F74 AFBF0020 */  sw         $ra, 0x20($sp)
/* 2BB78 800C0F78 AFB10014 */  sw         $s1, 0x14($sp)
/* 2BB7C 800C0F7C AFB00010 */  sw         $s0, 0x10($sp)
/* 2BB80 800C0F80 8E500260 */  lw         $s0, 0x260($s2)
/* 2BB84 800C0F84 00008821 */  addu       $s1, $zero, $zero
/* 2BB88 800C0F88 0C02E2DC */  jal        func_800B8B70
/* 2BB8C 800C0F8C 24040001 */   addiu     $a0, $zero, 0x1
/* 2BB90 800C0F90 1200000E */  beqz       $s0, .L800C0FCC
/* 2BB94 800C0F94 00402021 */   addu      $a0, $v0, $zero
.L800C0F98:
/* 2BB98 800C0F98 56130009 */  bnel       $s0, $s3, .L800C0FC0
/* 2BB9C 800C0F9C 02008821 */   addu      $s1, $s0, $zero
/* 2BBA0 800C0FA0 12200004 */  beqz       $s1, .L800C0FB4
/* 2BBA4 800C0FA4 00000000 */   nop
/* 2BBA8 800C0FA8 8E020000 */  lw         $v0, 0x0($s0)
/* 2BBAC 800C0FAC 080303F3 */  j          .L800C0FCC
/* 2BBB0 800C0FB0 AE220000 */   sw        $v0, 0x0($s1)
.L800C0FB4:
/* 2BBB4 800C0FB4 8E020000 */  lw         $v0, 0x0($s0)
/* 2BBB8 800C0FB8 080303F3 */  j          .L800C0FCC
/* 2BBBC 800C0FBC AE420260 */   sw        $v0, 0x260($s2)
.L800C0FC0:
/* 2BBC0 800C0FC0 8E100000 */  lw         $s0, 0x0($s0)
/* 2BBC4 800C0FC4 1600FFF4 */  bnez       $s0, .L800C0F98
/* 2BBC8 800C0FC8 00000000 */   nop
.L800C0FCC:
/* 2BBCC 800C0FCC 0C02E2DC */  jal        func_800B8B70
/* 2BBD0 800C0FD0 00000000 */   nop
/* 2BBD4 800C0FD4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2BBD8 800C0FD8 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2BBDC 800C0FDC 8FB20018 */  lw         $s2, 0x18($sp)
/* 2BBE0 800C0FE0 8FB10014 */  lw         $s1, 0x14($sp)
/* 2BBE4 800C0FE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 2BBE8 800C0FE8 03E00008 */  jr         $ra
/* 2BBEC 800C0FEC 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800C0F60, . - func_800C0F60
