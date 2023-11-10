glabel func_800C1C50
/* 2C850 800C1C50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C854 800C1C54 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C858 800C1C58 00808021 */  addu       $s0, $a0, $zero
/* 2C85C 800C1C5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 2C860 800C1C60 0C0319D0 */  jal        __osDisableInt
/* 2C864 800C1C64 AFB10014 */   sw        $s1, 0x14($sp)
/* 2C868 800C1C68 24030004 */  addiu      $v1, $zero, 0x4
/* 2C86C 800C1C6C 12000002 */  beqz       $s0, .L800C1C78
/* 2C870 800C1C70 00408821 */   addu      $s1, $v0, $zero
/* 2C874 800C1C74 96030010 */  lhu        $v1, 0x10($s0)
.L800C1C78:
/* 2C878 800C1C78 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 2C87C 800C1C7C 24020004 */  addiu      $v0, $zero, 0x4
/* 2C880 800C1C80 1062000C */  beq        $v1, $v0, .L800C1CB4
/* 2C884 800C1C84 28620005 */   slti      $v0, $v1, 0x5
/* 2C888 800C1C88 10400005 */  beqz       $v0, .L800C1CA0
/* 2C88C 800C1C8C 24020002 */   addiu     $v0, $zero, 0x2
/* 2C890 800C1C90 10620010 */  beq        $v1, $v0, .L800C1CD4
/* 2C894 800C1C94 00000000 */   nop
/* 2C898 800C1C98 0803073A */  j          .L800C1CE8
/* 2C89C 800C1C9C 00000000 */   nop
.L800C1CA0:
/* 2C8A0 800C1CA0 24020008 */  addiu      $v0, $zero, 0x8
/* 2C8A4 800C1CA4 1062000B */  beq        $v1, $v0, .L800C1CD4
/* 2C8A8 800C1CA8 00000000 */   nop
/* 2C8AC 800C1CAC 0803073A */  j          .L800C1CE8
/* 2C8B0 800C1CB0 00000000 */   nop
.L800C1CB4:
/* 2C8B4 800C1CB4 3C03800F */  lui        $v1, %hi(__osRunningThread)
/* 2C8B8 800C1CB8 8C6369C0 */  lw         $v1, %lo(__osRunningThread)($v1)
/* 2C8BC 800C1CBC 00002021 */  addu       $a0, $zero, $zero
/* 2C8C0 800C1CC0 24020001 */  addiu      $v0, $zero, 0x1
/* 2C8C4 800C1CC4 0C031913 */  jal        __osEnqueueAndYield
/* 2C8C8 800C1CC8 A4620010 */   sh        $v0, 0x10($v1)
/* 2C8CC 800C1CCC 0803073A */  j          .L800C1CE8
/* 2C8D0 800C1CD0 00000000 */   nop
.L800C1CD4:
/* 2C8D4 800C1CD4 8E040008 */  lw         $a0, 0x8($s0)
/* 2C8D8 800C1CD8 24020001 */  addiu      $v0, $zero, 0x1
/* 2C8DC 800C1CDC 02002821 */  addu       $a1, $s0, $zero
/* 2C8E0 800C1CE0 0C030744 */  jal        func_800C1D10
/* 2C8E4 800C1CE4 A6020010 */   sh        $v0, 0x10($s0)
.L800C1CE8:
/* 2C8E8 800C1CE8 0C0319EC */  jal        __osRestoreInt
/* 2C8EC 800C1CEC 02202021 */   addu      $a0, $s1, $zero
/* 2C8F0 800C1CF0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2C8F4 800C1CF4 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C8F8 800C1CF8 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C8FC 800C1CFC 03E00008 */  jr         $ra
/* 2C900 800C1D00 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2C904 800C1D04 00000000 */  nop
/* 2C908 800C1D08 00000000 */  nop
/* 2C90C 800C1D0C 00000000 */  nop
.size func_800C1C50, . - func_800C1C50
