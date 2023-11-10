glabel func_800C26F0
/* 2D2F0 800C26F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D2F4 800C26F4 AFB00010 */  sw         $s0, 0x10($sp)
/* 2D2F8 800C26F8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D2FC 800C26FC 0C0319D0 */  jal        __osDisableInt
/* 2D300 800C2700 00808021 */   addu      $s0, $a0, $zero
/* 2D304 800C2704 3C04800F */  lui        $a0, %hi(D_800F7CA4)
/* 2D308 800C2708 8C847CA4 */  lw         $a0, %lo(D_800F7CA4)($a0)
/* 2D30C 800C270C AC900008 */  sw         $s0, 0x8($a0)
/* 2D310 800C2710 8C850008 */  lw         $a1, 0x8($a0)
/* 2D314 800C2714 24030001 */  addiu      $v1, $zero, 0x1
/* 2D318 800C2718 A4830000 */  sh         $v1, 0x0($a0)
/* 2D31C 800C271C 8CA30004 */  lw         $v1, 0x4($a1)
/* 2D320 800C2720 AC83000C */  sw         $v1, 0xC($a0)
/* 2D324 800C2724 0C0319EC */  jal        __osRestoreInt
/* 2D328 800C2728 00402021 */   addu      $a0, $v0, $zero
/* 2D32C 800C272C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D330 800C2730 8FB00010 */  lw         $s0, 0x10($sp)
/* 2D334 800C2734 03E00008 */  jr         $ra
/* 2D338 800C2738 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2D33C 800C273C 00000000 */  nop
.size func_800C26F0, . - func_800C26F0
