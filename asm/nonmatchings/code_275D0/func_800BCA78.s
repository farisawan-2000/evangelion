glabel func_800BCA78
/* 27678 800BCA78 24020001 */  addiu      $v0, $zero, 0x1
/* 2767C 800BCA7C 10A20005 */  beq        $a1, $v0, .L800BCA94
/* 27680 800BCA80 24020006 */   addiu     $v0, $zero, 0x6
/* 27684 800BCA84 50A20004 */  beql       $a1, $v0, .L800BCA98
/* 27688 800BCA88 AC860014 */   sw        $a2, 0x14($a0)
/* 2768C 800BCA8C 0802F2A6 */  j          .L800BCA98
/* 27690 800BCA90 00000000 */   nop
.L800BCA94:
/* 27694 800BCA94 AC860000 */  sw         $a2, 0x0($a0)
.L800BCA98:
/* 27698 800BCA98 03E00008 */  jr         $ra
/* 2769C 800BCA9C 00001021 */   addu      $v0, $zero, $zero
.size func_800BCA78, . - func_800BCA78
