glabel func_800C1A60
/* 2C660 800C1A60 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2C664 800C1A64 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C668 800C1A68 00808021 */  addu       $s0, $a0, $zero
/* 2C66C 800C1A6C AFB10014 */  sw         $s1, 0x14($sp)
/* 2C670 800C1A70 00A08821 */  addu       $s1, $a1, $zero
/* 2C674 800C1A74 AFBF001C */  sw         $ra, 0x1C($sp)
/* 2C678 800C1A78 0C0319D0 */  jal        __osDisableInt
/* 2C67C 800C1A7C AFB20018 */   sw        $s2, 0x18($sp)
/* 2C680 800C1A80 16000003 */  bnez       $s0, .L800C1A90
/* 2C684 800C1A84 00409021 */   addu      $s2, $v0, $zero
/* 2C688 800C1A88 3C10800F */  lui        $s0, %hi(__osRunningThread)
/* 2C68C 800C1A8C 8E1069C0 */  lw         $s0, %lo(__osRunningThread)($s0)
.L800C1A90:
/* 2C690 800C1A90 8E020004 */  lw         $v0, 0x4($s0)
/* 2C694 800C1A94 1051001C */  beq        $v0, $s1, .L800C1B08
/* 2C698 800C1A98 00000000 */   nop
/* 2C69C 800C1A9C 3C02800F */  lui        $v0, %hi(__osRunningThread)
/* 2C6A0 800C1AA0 8C4269C0 */  lw         $v0, %lo(__osRunningThread)($v0)
/* 2C6A4 800C1AA4 1202000B */  beq        $s0, $v0, .L800C1AD4
/* 2C6A8 800C1AA8 AE110004 */   sw        $s1, 0x4($s0)
/* 2C6AC 800C1AAC 96030010 */  lhu        $v1, 0x10($s0)
/* 2C6B0 800C1AB0 24020001 */  addiu      $v0, $zero, 0x1
/* 2C6B4 800C1AB4 10620007 */  beq        $v1, $v0, .L800C1AD4
/* 2C6B8 800C1AB8 00000000 */   nop
/* 2C6BC 800C1ABC 8E040008 */  lw         $a0, 0x8($s0)
/* 2C6C0 800C1AC0 0C030744 */  jal        func_800C1D10
/* 2C6C4 800C1AC4 02002821 */   addu      $a1, $s0, $zero
/* 2C6C8 800C1AC8 8E040008 */  lw         $a0, 0x8($s0)
/* 2C6CC 800C1ACC 0C031955 */  jal        __osEnqueueThread
/* 2C6D0 800C1AD0 02002821 */   addu      $a1, $s0, $zero
.L800C1AD4:
/* 2C6D4 800C1AD4 3C04800F */  lui        $a0, %hi(__osRunningThread)
/* 2C6D8 800C1AD8 8C8469C0 */  lw         $a0, %lo(__osRunningThread)($a0)
/* 2C6DC 800C1ADC 3C02800F */  lui        $v0, %hi(__osRunQueue)
/* 2C6E0 800C1AE0 8C4269B8 */  lw         $v0, %lo(__osRunQueue)($v0)
/* 2C6E4 800C1AE4 8C830004 */  lw         $v1, 0x4($a0)
/* 2C6E8 800C1AE8 8C420004 */  lw         $v0, 0x4($v0)
/* 2C6EC 800C1AEC 0062182A */  slt        $v1, $v1, $v0
/* 2C6F0 800C1AF0 10600005 */  beqz       $v1, .L800C1B08
/* 2C6F4 800C1AF4 24020002 */   addiu     $v0, $zero, 0x2
/* 2C6F8 800C1AF8 A4820010 */  sh         $v0, 0x10($a0)
/* 2C6FC 800C1AFC 3C04800F */  lui        $a0, %hi(__osRunQueue)
/* 2C700 800C1B00 0C031913 */  jal        __osEnqueueAndYield
/* 2C704 800C1B04 248469B8 */   addiu     $a0, $a0, %lo(__osRunQueue)
.L800C1B08:
/* 2C708 800C1B08 0C0319EC */  jal        __osRestoreInt
/* 2C70C 800C1B0C 02402021 */   addu      $a0, $s2, $zero
/* 2C710 800C1B10 8FBF001C */  lw         $ra, 0x1C($sp)
/* 2C714 800C1B14 8FB20018 */  lw         $s2, 0x18($sp)
/* 2C718 800C1B18 8FB10014 */  lw         $s1, 0x14($sp)
/* 2C71C 800C1B1C 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C720 800C1B20 03E00008 */  jr         $ra
/* 2C724 800C1B24 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2C728 800C1B28 00000000 */  nop
/* 2C72C 800C1B2C 00000000 */  nop
.size func_800C1A60, . - func_800C1A60
