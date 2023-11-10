# Handwritten function
glabel func_800BD440
/* 28040 800BD440 3C088000 */  lui        $t0, 0x8000
/* 28044 800BD444 240A2000 */  addiu      $t2, $zero, 0x2000
/* 28048 800BD448 010A4821 */  addu       $t1, $t0, $t2
/* 2804C 800BD44C 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800BD450:
/* 28050 800BD450 BD010000 */  cache      0x01, 0x0($t0) # handwritten instruction
/* 28054 800BD454 0109082B */  sltu       $at, $t0, $t1
/* 28058 800BD458 1420FFFD */  bnez       $at, .L800BD450
/* 2805C 800BD45C 25080010 */   addiu     $t0, $t0, (0x80000010 & 0xFFFF)
/* 28060 800BD460 03E00008 */  jr         $ra
/* 28064 800BD464 00000000 */   nop
/* 28068 800BD468 00000000 */  nop
/* 2806C 800BD46C 00000000 */  nop
.size func_800BD440, . - func_800BD440
