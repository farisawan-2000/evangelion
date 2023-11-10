glabel func_800C1940
/* 2C540 800C1940 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C544 800C1944 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2C548 800C1948 3C048017 */  lui        $a0, %hi(D_801765A0)
/* 2C54C 800C194C 248465A0 */  addiu      $a0, $a0, %lo(D_801765A0)
/* 2C550 800C1950 00002821 */  addu       $a1, $zero, $zero
/* 2C554 800C1954 0C03024C */  jal        func_800C0930
/* 2C558 800C1958 00003021 */   addu      $a2, $zero, $zero
/* 2C55C 800C195C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2C560 800C1960 03E00008 */  jr         $ra
/* 2C564 800C1964 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2C568 800C1968 00000000 */  nop
/* 2C56C 800C196C 00000000 */  nop
.size func_800C1940, . - func_800C1940
