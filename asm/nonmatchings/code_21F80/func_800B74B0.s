glabel func_800B74B0
/* 220B0 800B74B0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 220B4 800B74B4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 220B8 800B74B8 8C85000C */  lw         $a1, 0xC($a0)
/* 220BC 800B74BC 8CA20000 */  lw         $v0, 0x0($a1)
/* 220C0 800B74C0 8C440000 */  lw         $a0, 0x0($v0)
/* 220C4 800B74C4 0C030F90 */  jal        func_800C3E40
/* 220C8 800B74C8 24A50004 */   addiu     $a1, $a1, 0x4
/* 220CC 800B74CC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 220D0 800B74D0 03E00008 */  jr         $ra
/* 220D4 800B74D4 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B74B0, . - func_800B74B0
