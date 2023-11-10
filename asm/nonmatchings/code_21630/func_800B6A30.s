glabel func_800B6A30
/* 21630 800B6A30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21634 800B6A34 AFBF0010 */  sw         $ra, 0x10($sp)
/* 21638 800B6A38 3C018015 */  lui        $at, %hi(D_80149FC8)
/* 2163C 800B6A3C AC209FC8 */  sw         $zero, %lo(D_80149FC8)($at)
/* 21640 800B6A40 0C030B18 */  jal        func_800C2C60
/* 21644 800B6A44 24040001 */   addiu     $a0, $zero, 0x1
/* 21648 800B6A48 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2164C 800B6A4C 03E00008 */  jr         $ra
/* 21650 800B6A50 27BD0018 */   addiu     $sp, $sp, 0x18
/* 21654 800B6A54 00000000 */  nop
/* 21658 800B6A58 00000000 */  nop
/* 2165C 800B6A5C 00000000 */  nop
.size func_800B6A30, . - func_800B6A30
