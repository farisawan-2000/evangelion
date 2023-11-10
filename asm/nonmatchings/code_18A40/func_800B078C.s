glabel func_800B078C
/* 1B38C 800B078C 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1B390 800B0790 18C00009 */  blez       $a2, .L800B07B8
/* 1B394 800B0794 00001821 */   addu      $v1, $zero, $zero
.L800B0798:
/* 1B398 800B0798 8C820000 */  lw         $v0, 0x0($a0)
/* 1B39C 800B079C 10400003 */  beqz       $v0, .L800B07AC
/* 1B3A0 800B07A0 24630001 */   addiu     $v1, $v1, 0x1
/* 1B3A4 800B07A4 00451021 */  addu       $v0, $v0, $a1
/* 1B3A8 800B07A8 AC820000 */  sw         $v0, 0x0($a0)
.L800B07AC:
/* 1B3AC 800B07AC 0066102A */  slt        $v0, $v1, $a2
/* 1B3B0 800B07B0 1440FFF9 */  bnez       $v0, .L800B0798
/* 1B3B4 800B07B4 24840004 */   addiu     $a0, $a0, 0x4
.L800B07B8:
/* 1B3B8 800B07B8 27BD0008 */  addiu      $sp, $sp, 0x8
/* 1B3BC 800B07BC 03E00008 */  jr         $ra
/* 1B3C0 800B07C0 00000000 */   nop
.size func_800B078C, . - func_800B078C
