glabel func_800C28B0
/* 2D4B0 800C28B0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2D4B4 800C28B4 F7B40018 */  sdc1       $f20, 0x18($sp)
/* 2D4B8 800C28B8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2D4BC 800C28BC 0C0319D0 */  jal        __osDisableInt
/* 2D4C0 800C28C0 46006506 */   mov.s     $f20, $f12
/* 2D4C4 800C28C4 3C04800F */  lui        $a0, %hi(D_800F7CA4)
/* 2D4C8 800C28C8 8C847CA4 */  lw         $a0, %lo(D_800F7CA4)($a0)
/* 2D4CC 800C28CC 94830000 */  lhu        $v1, 0x0($a0)
/* 2D4D0 800C28D0 E4940024 */  swc1       $f20, 0x24($a0)
/* 2D4D4 800C28D4 34630004 */  ori        $v1, $v1, 0x4
/* 2D4D8 800C28D8 A4830000 */  sh         $v1, 0x0($a0)
/* 2D4DC 800C28DC 0C0319EC */  jal        __osRestoreInt
/* 2D4E0 800C28E0 00402021 */   addu      $a0, $v0, $zero
/* 2D4E4 800C28E4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2D4E8 800C28E8 D7B40018 */  ldc1       $f20, 0x18($sp)
/* 2D4EC 800C28EC 03E00008 */  jr         $ra
/* 2D4F0 800C28F0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2D4F4 800C28F4 00000000 */  nop
/* 2D4F8 800C28F8 00000000 */  nop
/* 2D4FC 800C28FC 00000000 */  nop
.size func_800C28B0, . - func_800C28B0
