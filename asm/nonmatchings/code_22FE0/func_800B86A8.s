glabel func_800B86A8
/* 232A8 800B86A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 232AC 800B86AC AFB00010 */  sw         $s0, 0x10($sp)
/* 232B0 800B86B0 00808021 */  addu       $s0, $a0, $zero
/* 232B4 800B86B4 3C048015 */  lui        $a0, %hi(D_80149DA0)
/* 232B8 800B86B8 24849DA0 */  addiu      $a0, $a0, %lo(D_80149DA0)
/* 232BC 800B86BC 00002821 */  addu       $a1, $zero, $zero
/* 232C0 800B86C0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 232C4 800B86C4 0C030200 */  jal        func_800C0800
/* 232C8 800B86C8 00003021 */   addu      $a2, $zero, $zero
/* 232CC 800B86CC 3C048015 */  lui        $a0, %hi(D_8014A030)
/* 232D0 800B86D0 2484A030 */  addiu      $a0, $a0, %lo(D_8014A030)
/* 232D4 800B86D4 0C02E149 */  jal        func_800B8524
/* 232D8 800B86D8 00002821 */   addu      $a1, $zero, $zero
/* 232DC 800B86DC 14400009 */  bnez       $v0, .L800B8704
/* 232E0 800B86E0 00000000 */   nop
/* 232E4 800B86E4 3C02800F */  lui        $v0, %hi(D_800F5DF0)
/* 232E8 800B86E8 8C425DF0 */  lw         $v0, %lo(D_800F5DF0)($v0)
/* 232EC 800B86EC 50400005 */  beql       $v0, $zero, .L800B8704
/* 232F0 800B86F0 00001021 */   addu      $v0, $zero, $zero
/* 232F4 800B86F4 86040000 */  lh         $a0, 0x0($s0)
/* 232F8 800B86F8 0040F809 */  jalr       $v0
/* 232FC 800B86FC 00000000 */   nop
/* 23300 800B8700 00001021 */  addu       $v0, $zero, $zero
.L800B8704:
/* 23304 800B8704 8FBF0014 */  lw         $ra, 0x14($sp)
/* 23308 800B8708 8FB00010 */  lw         $s0, 0x10($sp)
/* 2330C 800B870C 03E00008 */  jr         $ra
/* 23310 800B8710 27BD0018 */   addiu     $sp, $sp, 0x18
/* 23314 800B8714 00000000 */  nop
/* 23318 800B8718 00000000 */  nop
/* 2331C 800B871C 00000000 */  nop
.size func_800B86A8, . - func_800B86A8
