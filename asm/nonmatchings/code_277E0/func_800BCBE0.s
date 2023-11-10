glabel func_800BCBE0
/* 277E0 800BCBE0 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 277E4 800BCBE4 18C00008 */  blez       $a2, .L800BCC08
/* 277E8 800BCBE8 00001821 */   addu      $v1, $zero, $zero
.L800BCBEC:
/* 277EC 800BCBEC 90820000 */  lbu        $v0, 0x0($a0)
/* 277F0 800BCBF0 24840001 */  addiu      $a0, $a0, 0x1
/* 277F4 800BCBF4 24630001 */  addiu      $v1, $v1, 0x1
/* 277F8 800BCBF8 A0A20000 */  sb         $v0, 0x0($a1)
/* 277FC 800BCBFC 0066102A */  slt        $v0, $v1, $a2
/* 27800 800BCC00 1440FFFA */  bnez       $v0, .L800BCBEC
/* 27804 800BCC04 24A50001 */   addiu     $a1, $a1, 0x1
.L800BCC08:
/* 27808 800BCC08 27BD0008 */  addiu      $sp, $sp, 0x8
/* 2780C 800BCC0C 03E00008 */  jr         $ra
/* 27810 800BCC10 00000000 */   nop
/* 27814 800BCC14 00000000 */  nop
/* 27818 800BCC18 00000000 */  nop
/* 2781C 800BCC1C 00000000 */  nop
.size func_800BCBE0, . - func_800BCBE0
