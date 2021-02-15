.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BB6C8
/* 262C8 800BB6C8 10C00006 */  beqz       $a2, .L800BB6E4
/* 262CC 800BB6CC 24020001 */   addiu     $v0, $zero, 1
/* 262D0 800BB6D0 00C21004 */  sllv       $v0, $v0, $a2
/* 262D4 800BB6D4 44820000 */  mtc1       $v0, $f0
/* 262D8 800BB6D8 00000000 */  nop
/* 262DC 800BB6DC 46800021 */  cvt.d.w    $f0, $f0
/* 262E0 800BB6E0 46206302 */  mul.d      $f12, $f12, $f0
.L800BB6E4:
/* 262E4 800BB6E4 03E00008 */  jr         $ra
/* 262E8 800BB6E8 46206006 */   mov.d     $f0, $f12
