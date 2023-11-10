glabel func_800B9630
/* 24230 800B9630 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24234 800B9634 AFBF0010 */  sw         $ra, 0x10($sp)
/* 24238 800B9638 3C048015 */  lui        $a0, %hi(D_8014A2A8)
/* 2423C 800B963C 2484A2A8 */  addiu      $a0, $a0, %lo(D_8014A2A8)
/* 24240 800B9640 00002821 */  addu       $a1, $zero, $zero
/* 24244 800B9644 0C03024C */  jal        func_800C0930
/* 24248 800B9648 00003021 */   addu      $a2, $zero, $zero
/* 2424C 800B964C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 24250 800B9650 03E00008 */  jr         $ra
/* 24254 800B9654 27BD0018 */   addiu     $sp, $sp, 0x18
/* 24258 800B9658 00000000 */  nop
/* 2425C 800B965C 00000000 */  nop
.size func_800B9630, . - func_800B9630
