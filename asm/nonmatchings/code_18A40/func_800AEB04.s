.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEB04
/* 19704 800AEB04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19708 800AEB08 AFB00010 */  sw         $s0, 0x10($sp)
/* 1970C 800AEB0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 19710 800AEB10 0C02C097 */  jal        func_800B025C
/* 19714 800AEB14 00808021 */   addu      $s0, $a0, $zero
/* 19718 800AEB18 3C028010 */  lui        $v0, %hi(D_8010296C)
/* 1971C 800AEB1C 8C42296C */  lw         $v0, %lo(D_8010296C)($v0)
/* 19720 800AEB20 14400003 */  bnez       $v0, .L800AEB30
/* 19724 800AEB24 00000000 */   nop
/* 19728 800AEB28 3C018010 */  lui        $at, %hi(D_8010296C)
/* 1972C 800AEB2C AC30296C */  sw         $s0, %lo(D_8010296C)($at)
.L800AEB30:
/* 19730 800AEB30 8FBF0014 */  lw         $ra, 0x14($sp)
/* 19734 800AEB34 8FB00010 */  lw         $s0, 0x10($sp)
/* 19738 800AEB38 03E00008 */  jr         $ra
/* 1973C 800AEB3C 27BD0018 */   addiu     $sp, $sp, 0x18
