glabel func_800C2310
/* 2CF10 800C2310 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CF14 800C2314 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CF18 800C2318 0C0319D0 */  jal        __osDisableInt
/* 2CF1C 800C231C AFB00010 */   sw        $s0, 0x10($sp)
/* 2CF20 800C2320 3C03800F */  lui        $v1, %hi(D_800F7CA0)
/* 2CF24 800C2324 8C637CA0 */  lw         $v1, %lo(D_800F7CA0)($v1)
/* 2CF28 800C2328 8C630008 */  lw         $v1, 0x8($v1)
/* 2CF2C 800C232C 90700000 */  lbu        $s0, 0x0($v1)
/* 2CF30 800C2330 0C0319EC */  jal        __osRestoreInt
/* 2CF34 800C2334 00402021 */   addu      $a0, $v0, $zero
/* 2CF38 800C2338 02001021 */  addu       $v0, $s0, $zero
/* 2CF3C 800C233C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CF40 800C2340 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CF44 800C2344 03E00008 */  jr         $ra
/* 2CF48 800C2348 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2CF4C 800C234C 00000000 */  nop
.size func_800C2310, . - func_800C2310
