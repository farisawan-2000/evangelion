glabel osViSwapBuffer
/* 2D500 800C2900 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D504 800C2904 AFB00010 */  sw         $s0, 0x10($sp)
/* 2D508 800C2908 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D50C 800C290C 0C0319D0 */  jal        __osDisableInt
/* 2D510 800C2910 00808021 */   addu      $s0, $a0, $zero
/* 2D514 800C2914 3C04800F */  lui        $a0, %hi(D_800F7CA4)
/* 2D518 800C2918 8C847CA4 */  lw         $a0, %lo(D_800F7CA4)($a0)
/* 2D51C 800C291C 94830000 */  lhu        $v1, 0x0($a0)
/* 2D520 800C2920 AC900004 */  sw         $s0, 0x4($a0)
/* 2D524 800C2924 34630010 */  ori        $v1, $v1, 0x10
/* 2D528 800C2928 A4830000 */  sh         $v1, 0x0($a0)
/* 2D52C 800C292C 0C0319EC */  jal        __osRestoreInt
/* 2D530 800C2930 00402021 */   addu      $a0, $v0, $zero
/* 2D534 800C2934 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D538 800C2938 8FB00010 */  lw         $s0, 0x10($sp)
/* 2D53C 800C293C 03E00008 */  jr         $ra
/* 2D540 800C2940 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2D544 800C2944 00000000 */  nop
/* 2D548 800C2948 00000000 */  nop
/* 2D54C 800C294C 00000000 */  nop
.size osViSwapBuffer, . - osViSwapBuffer
