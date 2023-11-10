glabel func_800B5E8C
/* 20A8C 800B5E8C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20A90 800B5E90 AFB00010 */  sw         $s0, 0x10($sp)
/* 20A94 800B5E94 3C108017 */  lui        $s0, %hi(D_8016E2D8)
/* 20A98 800B5E98 8E10E2D8 */  lw         $s0, %lo(D_8016E2D8)($s0)
/* 20A9C 800B5E9C AFB10014 */  sw         $s1, 0x14($sp)
/* 20AA0 800B5EA0 00808821 */  addu       $s1, $a0, $zero
/* 20AA4 800B5EA4 1200000C */  beqz       $s0, .L800B5ED8
/* 20AA8 800B5EA8 AFBF0018 */   sw        $ra, 0x18($sp)
.L800B5EAC:
/* 20AAC 800B5EAC 96020008 */  lhu        $v0, 0x8($s0)
/* 20AB0 800B5EB0 96230000 */  lhu        $v1, 0x0($s1)
/* 20AB4 800B5EB4 00431024 */  and        $v0, $v0, $v1
/* 20AB8 800B5EB8 10400004 */  beqz       $v0, .L800B5ECC
/* 20ABC 800B5EBC 02202821 */   addu      $a1, $s1, $zero
/* 20AC0 800B5EC0 8E040004 */  lw         $a0, 0x4($s0)
/* 20AC4 800B5EC4 0C03024C */  jal        func_800C0930
/* 20AC8 800B5EC8 00003021 */   addu      $a2, $zero, $zero
.L800B5ECC:
/* 20ACC 800B5ECC 8E100000 */  lw         $s0, 0x0($s0)
/* 20AD0 800B5ED0 1600FFF6 */  bnez       $s0, .L800B5EAC
/* 20AD4 800B5ED4 00000000 */   nop
.L800B5ED8:
/* 20AD8 800B5ED8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 20ADC 800B5EDC 8FB10014 */  lw         $s1, 0x14($sp)
/* 20AE0 800B5EE0 8FB00010 */  lw         $s0, 0x10($sp)
/* 20AE4 800B5EE4 03E00008 */  jr         $ra
/* 20AE8 800B5EE8 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B5E8C, . - func_800B5E8C
