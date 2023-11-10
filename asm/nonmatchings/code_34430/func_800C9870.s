glabel func_800C9870
/* 34470 800C9870 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 34474 800C9874 AFBF0014 */  sw         $ra, 0x14($sp)
/* 34478 800C9878 0C03260C */  jal        func_800C9830
/* 3447C 800C987C 00000000 */   nop
/* 34480 800C9880 3C03800F */  lui        $v1, %hi(D_800F7DD0)
/* 34484 800C9884 24637DD0 */  addiu      $v1, $v1, %lo(D_800F7DD0)
/* 34488 800C9888 2401FFFF */  addiu      $at, $zero, -0x1
/* 3448C 800C988C 14410003 */  bne        $v0, $at, .L800C989C
/* 34490 800C9890 AC620000 */   sw        $v0, 0x0($v1)
/* 34494 800C9894 10000002 */  b          .L800C98A0
/* 34498 800C9898 2402FFFF */   addiu     $v0, $zero, -0x1
.L800C989C:
/* 3449C 800C989C 00001025 */  or         $v0, $zero, $zero
.L800C98A0:
/* 344A0 800C98A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 344A4 800C98A4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 344A8 800C98A8 03E00008 */  jr         $ra
/* 344AC 800C98AC 00000000 */   nop
.size func_800C9870, . - func_800C9870
