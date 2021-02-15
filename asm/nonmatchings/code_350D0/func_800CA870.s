.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800CA870
.L800CA870:
/* 35470 800CA870 14C00008 */  bnez       $a2, .L800CA894
/* 35474 800CA874 00000000 */   nop
/* 35478 800CA878 03E06821 */  addu       $t5, $ra, $zero
/* 3547C 800CA87C 0C032985 */  jal        func_800CA614
/* 35480 800CA880 00000000 */   nop
/* 35484 800CA884 01A0F821 */  addu       $ra, $t5, $zero
/* 35488 800CA888 01201821 */  addu       $v1, $t1, $zero
/* 3548C 800CA88C 03E00008 */  jr         $ra
/* 35490 800CA890 00421026 */   xor       $v0, $v0, $v0
.L800CA894:
/* 35494 800CA894 03E06821 */  addu       $t5, $ra, $zero
/* 35498 800CA898 0C032946 */  jal        func_800CA518
/* 3549C 800CA89C 00000000 */   nop
/* 354A0 800CA8A0 01A0F821 */  addu       $ra, $t5, $zero
/* 354A4 800CA8A4 00A01821 */  addu       $v1, $a1, $zero
/* 354A8 800CA8A8 03E00008 */  jr         $ra
/* 354AC 800CA8AC 00801021 */   addu      $v0, $a0, $zero
