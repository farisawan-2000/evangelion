glabel func_800A1690
/* C290 800A1690 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C294 800A1694 AFB20020 */  sw         $s2, 0x20($sp)
/* C298 800A1698 00809021 */  addu       $s2, $a0, $zero
/* C29C 800A169C AFBF0028 */  sw         $ra, 0x28($sp)
/* C2A0 800A16A0 AFB30024 */  sw         $s3, 0x24($sp)
/* C2A4 800A16A4 AFB1001C */  sw         $s1, 0x1C($sp)
/* C2A8 800A16A8 AFB00018 */  sw         $s0, 0x18($sp)
/* C2AC 800A16AC 8E420004 */  lw         $v0, 0x4($s2)
/* C2B0 800A16B0 00A09821 */  addu       $s3, $a1, $zero
/* C2B4 800A16B4 8C430008 */  lw         $v1, 0x8($v0)
/* C2B8 800A16B8 86440064 */  lh         $a0, 0x64($s2)
/* C2BC 800A16BC 00008021 */  addu       $s0, $zero, $zero
/* C2C0 800A16C0 1880000C */  blez       $a0, .L800A16F4
/* C2C4 800A16C4 00438821 */   addu      $s1, $v0, $v1
.L800A16C8:
/* C2C8 800A16C8 02202021 */  addu       $a0, $s1, $zero
/* C2CC 800A16CC 0C0325FC */  jal        func_800C97F0
/* C2D0 800A16D0 02602821 */   addu      $a1, $s3, $zero
/* C2D4 800A16D4 54400003 */  bnel       $v0, $zero, .L800A16E4
/* C2D8 800A16D8 26100001 */   addiu     $s0, $s0, 0x1
/* C2DC 800A16DC 080285BE */  j          .L800A16F8
/* C2E0 800A16E0 02001821 */   addu      $v1, $s0, $zero
.L800A16E4:
/* C2E4 800A16E4 86420064 */  lh         $v0, 0x64($s2)
/* C2E8 800A16E8 0202102A */  slt        $v0, $s0, $v0
/* C2EC 800A16EC 1440FFF6 */  bnez       $v0, .L800A16C8
/* C2F0 800A16F0 26310014 */   addiu     $s1, $s1, 0x14
.L800A16F4:
/* C2F4 800A16F4 00001821 */  addu       $v1, $zero, $zero
.L800A16F8:
/* C2F8 800A16F8 8E420008 */  lw         $v0, 0x8($s2)
/* C2FC 800A16FC 00031C00 */  sll        $v1, $v1, 16
/* C300 800A1700 00031B83 */  sra        $v1, $v1, 14
/* C304 800A1704 00621821 */  addu       $v1, $v1, $v0
/* C308 800A1708 8C620000 */  lw         $v0, 0x0($v1)
/* C30C 800A170C 8C420004 */  lw         $v0, 0x4($v0)
/* C310 800A1710 8FBF0028 */  lw         $ra, 0x28($sp)
/* C314 800A1714 8FB30024 */  lw         $s3, 0x24($sp)
/* C318 800A1718 8FB20020 */  lw         $s2, 0x20($sp)
/* C31C 800A171C 8FB1001C */  lw         $s1, 0x1C($sp)
/* C320 800A1720 8FB00018 */  lw         $s0, 0x18($sp)
/* C324 800A1724 27BD0030 */  addiu      $sp, $sp, 0x30
/* C328 800A1728 03E00008 */  jr         $ra
/* C32C 800A172C 00000000 */   nop
.size func_800A1690, . - func_800A1690
