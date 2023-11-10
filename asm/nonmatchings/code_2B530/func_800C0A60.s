glabel func_800C0A60
/* 2B660 800C0A60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 2B664 800C0A64 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B668 800C0A68 00808021 */  addu       $s0, $a0, $zero
/* 2B66C 800C0A6C AFB10014 */  sw         $s1, 0x14($sp)
/* 2B670 800C0A70 00A08821 */  addu       $s1, $a1, $zero
/* 2B674 800C0A74 AFB20018 */  sw         $s2, 0x18($sp)
/* 2B678 800C0A78 00C09021 */  addu       $s2, $a2, $zero
/* 2B67C 800C0A7C AFBF0020 */  sw         $ra, 0x20($sp)
/* 2B680 800C0A80 0C0319D0 */  jal        __osDisableInt
/* 2B684 800C0A84 AFB3001C */   sw        $s3, 0x1C($sp)
/* 2B688 800C0A88 001018C0 */  sll        $v1, $s0, 3
/* 2B68C 800C0A8C 3C048017 */  lui        $a0, %hi(D_8016D770)
/* 2B690 800C0A90 2484D770 */  addiu      $a0, $a0, %lo(D_8016D770)
/* 2B694 800C0A94 00641821 */  addu       $v1, $v1, $a0
/* 2B698 800C0A98 00409821 */  addu       $s3, $v0, $zero
/* 2B69C 800C0A9C 2402000E */  addiu      $v0, $zero, 0xE
/* 2B6A0 800C0AA0 AC710000 */  sw         $s1, 0x0($v1)
/* 2B6A4 800C0AA4 16020010 */  bne        $s0, $v0, .L800C0AE8
/* 2B6A8 800C0AA8 AC720004 */   sw        $s2, 0x4($v1)
/* 2B6AC 800C0AAC 3C02800F */  lui        $v0, %hi(D_800F7BAC)
/* 2B6B0 800C0AB0 8C427BAC */  lw         $v0, %lo(D_800F7BAC)($v0)
/* 2B6B4 800C0AB4 1040000A */  beqz       $v0, .L800C0AE0
/* 2B6B8 800C0AB8 24020001 */   addiu     $v0, $zero, 0x1
/* 2B6BC 800C0ABC 3C02800F */  lui        $v0, %hi(D_800F6980)
/* 2B6C0 800C0AC0 8C426980 */  lw         $v0, %lo(D_800F6980)($v0)
/* 2B6C4 800C0AC4 14400006 */  bnez       $v0, .L800C0AE0
/* 2B6C8 800C0AC8 24020001 */   addiu     $v0, $zero, 0x1
/* 2B6CC 800C0ACC 02202021 */  addu       $a0, $s1, $zero
/* 2B6D0 800C0AD0 02402821 */  addu       $a1, $s2, $zero
/* 2B6D4 800C0AD4 0C03024C */  jal        func_800C0930
/* 2B6D8 800C0AD8 00003021 */   addu      $a2, $zero, $zero
/* 2B6DC 800C0ADC 24020001 */  addiu      $v0, $zero, 0x1
.L800C0AE0:
/* 2B6E0 800C0AE0 3C01800F */  lui        $at, %hi(D_800F6980)
/* 2B6E4 800C0AE4 AC226980 */  sw         $v0, %lo(D_800F6980)($at)
.L800C0AE8:
/* 2B6E8 800C0AE8 0C0319EC */  jal        __osRestoreInt
/* 2B6EC 800C0AEC 02602021 */   addu      $a0, $s3, $zero
/* 2B6F0 800C0AF0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 2B6F4 800C0AF4 8FB3001C */  lw         $s3, 0x1C($sp)
/* 2B6F8 800C0AF8 8FB20018 */  lw         $s2, 0x18($sp)
/* 2B6FC 800C0AFC 8FB10014 */  lw         $s1, 0x14($sp)
/* 2B700 800C0B00 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B704 800C0B04 03E00008 */  jr         $ra
/* 2B708 800C0B08 27BD0028 */   addiu     $sp, $sp, 0x28
/* 2B70C 800C0B0C 00000000 */  nop
.size func_800C0A60, . - func_800C0A60
