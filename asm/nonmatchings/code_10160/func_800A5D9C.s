glabel func_800A5D9C
/* 1099C 800A5D9C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 109A0 800A5DA0 00052C00 */  sll        $a1, $a1, 16
/* 109A4 800A5DA4 00052C03 */  sra        $a1, $a1, 16
/* 109A8 800A5DA8 30E700FF */  andi       $a3, $a3, 0xFF
/* 109AC 800A5DAC AFB1001C */  sw         $s1, 0x1C($sp)
/* 109B0 800A5DB0 00A7001A */  div        $zero, $a1, $a3
/* 109B4 800A5DB4 14E00002 */  bnez       $a3, .L800A5DC0
/* 109B8 800A5DB8 00000000 */   nop
/* 109BC 800A5DBC 0007000D */  break      7
.L800A5DC0:
/* 109C0 800A5DC0 2401FFFF */  addiu      $at, $zero, -0x1
/* 109C4 800A5DC4 14E10004 */  bne        $a3, $at, .L800A5DD8
/* 109C8 800A5DC8 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 109CC 800A5DCC 14A10002 */  bne        $a1, $at, .L800A5DD8
/* 109D0 800A5DD0 00000000 */   nop
/* 109D4 800A5DD4 0006000D */  break      6
.L800A5DD8:
/* 109D8 800A5DD8 00008812 */  mflo       $s1
/* 109DC 800A5DDC 00000000 */  nop
/* 109E0 800A5DE0 00000000 */  nop
/* 109E4 800A5DE4 00063400 */  sll        $a2, $a2, 16
/* 109E8 800A5DE8 AFB20020 */  sw         $s2, 0x20($sp)
/* 109EC 800A5DEC 00069403 */  sra        $s2, $a2, 16
/* 109F0 800A5DF0 AFB00018 */  sw         $s0, 0x18($sp)
/* 109F4 800A5DF4 00000000 */  nop
/* 109F8 800A5DF8 02320018 */  mult       $s1, $s2
/* 109FC 800A5DFC 00008012 */  mflo       $s0
/* 10A00 800A5E00 00000000 */  nop
/* 10A04 800A5E04 00000000 */  nop
/* 10A08 800A5E08 AFB40028 */  sw         $s4, 0x28($sp)
/* 10A0C 800A5E0C 0080A021 */  addu       $s4, $a0, $zero
/* 10A10 800A5E10 AFBF002C */  sw         $ra, 0x2C($sp)
/* 10A14 800A5E14 AFB30024 */  sw         $s3, 0x24($sp)
/* 10A18 800A5E18 0C032663 */  jal        func_800C998C
/* 10A1C 800A5E1C 02002021 */   addu      $a0, $s0, $zero
/* 10A20 800A5E20 02802021 */  addu       $a0, $s4, $zero
/* 10A24 800A5E24 00409821 */  addu       $s3, $v0, $zero
/* 10A28 800A5E28 02602821 */  addu       $a1, $s3, $zero
/* 10A2C 800A5E2C 0C03006C */  jal        func_800C01B0
/* 10A30 800A5E30 02003021 */   addu      $a2, $s0, $zero
/* 10A34 800A5E34 1A400013 */  blez       $s2, .L800A5E84
/* 10A38 800A5E38 00008021 */   addu      $s0, $zero, $zero
.L800A5E3C:
/* 10A3C 800A5E3C 00000000 */  nop
/* 10A40 800A5E40 02300018 */  mult       $s1, $s0
/* 10A44 800A5E44 00002012 */  mflo       $a0
/* 10A48 800A5E48 00000000 */  nop
/* 10A4C 800A5E4C 00000000 */  nop
/* 10A50 800A5E50 26100001 */  addiu      $s0, $s0, 0x1
/* 10A54 800A5E54 02502823 */  subu       $a1, $s2, $s0
/* 10A58 800A5E58 02250018 */  mult       $s1, $a1
/* 10A5C 800A5E5C 00002812 */  mflo       $a1
/* 10A60 800A5E60 00000000 */  nop
/* 10A64 800A5E64 00000000 */  nop
/* 10A68 800A5E68 02203021 */  addu       $a2, $s1, $zero
/* 10A6C 800A5E6C 02642021 */  addu       $a0, $s3, $a0
/* 10A70 800A5E70 0C03006C */  jal        func_800C01B0
/* 10A74 800A5E74 02852821 */   addu      $a1, $s4, $a1
/* 10A78 800A5E78 0212102A */  slt        $v0, $s0, $s2
/* 10A7C 800A5E7C 1440FFEF */  bnez       $v0, .L800A5E3C
/* 10A80 800A5E80 00000000 */   nop
.L800A5E84:
/* 10A84 800A5E84 0C0326A1 */  jal        func_800C9A84
/* 10A88 800A5E88 02602021 */   addu      $a0, $s3, $zero
/* 10A8C 800A5E8C 8FBF002C */  lw         $ra, 0x2C($sp)
/* 10A90 800A5E90 8FB40028 */  lw         $s4, 0x28($sp)
/* 10A94 800A5E94 8FB30024 */  lw         $s3, 0x24($sp)
/* 10A98 800A5E98 8FB20020 */  lw         $s2, 0x20($sp)
/* 10A9C 800A5E9C 8FB1001C */  lw         $s1, 0x1C($sp)
/* 10AA0 800A5EA0 8FB00018 */  lw         $s0, 0x18($sp)
/* 10AA4 800A5EA4 27BD0030 */  addiu      $sp, $sp, 0x30
/* 10AA8 800A5EA8 03E00008 */  jr         $ra
/* 10AAC 800A5EAC 00000000 */   nop
.size func_800A5D9C, . - func_800A5D9C
