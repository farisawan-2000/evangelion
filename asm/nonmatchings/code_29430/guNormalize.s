glabel guNormalize
/* 297B0 800BEBB0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 297B4 800BEBB4 AFB00010 */  sw         $s0, 0x10($sp)
/* 297B8 800BEBB8 00808021 */  addu       $s0, $a0, $zero
/* 297BC 800BEBBC AFBF001C */  sw         $ra, 0x1C($sp)
/* 297C0 800BEBC0 AFB20018 */  sw         $s2, 0x18($sp)
/* 297C4 800BEBC4 AFB10014 */  sw         $s1, 0x14($sp)
/* 297C8 800BEBC8 C6040000 */  lwc1       $f4, 0x0($s0)
/* 297CC 800BEBCC 46042102 */  mul.s      $f4, $f4, $f4
/* 297D0 800BEBD0 00A08821 */  addu       $s1, $a1, $zero
/* 297D4 800BEBD4 C6220000 */  lwc1       $f2, 0x0($s1)
/* 297D8 800BEBD8 46021082 */  mul.s      $f2, $f2, $f2
/* 297DC 800BEBDC 00C09021 */  addu       $s2, $a2, $zero
/* 297E0 800BEBE0 C6400000 */  lwc1       $f0, 0x0($s2)
/* 297E4 800BEBE4 46000002 */  mul.s      $f0, $f0, $f0
/* 297E8 800BEBE8 46022100 */  add.s      $f4, $f4, $f2
/* 297EC 800BEBEC 46002300 */  add.s      $f12, $f4, $f0
/* 297F0 800BEBF0 46006004 */  sqrt.s     $f0, $f12
/* 297F4 800BEBF4 46000032 */  c.eq.s     $f0, $f0
/* 297F8 800BEBF8 00000000 */  nop
/* 297FC 800BEBFC 45010003 */  bc1t       .L800BEC0C
/* 29800 800BEC00 00000000 */   nop
/* 29804 800BEC04 0C02F698 */  jal        func_800BDA60
/* 29808 800BEC08 00000000 */   nop
.L800BEC0C:
/* 2980C 800BEC0C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 29810 800BEC10 44811000 */  mtc1       $at, $f2
/* 29814 800BEC14 00000000 */  nop
/* 29818 800BEC18 46001083 */  div.s      $f2, $f2, $f0
/* 2981C 800BEC1C C6000000 */  lwc1       $f0, 0x0($s0)
/* 29820 800BEC20 46020002 */  mul.s      $f0, $f0, $f2
/* 29824 800BEC24 E6000000 */  swc1       $f0, 0x0($s0)
/* 29828 800BEC28 C6200000 */  lwc1       $f0, 0x0($s1)
/* 2982C 800BEC2C 46020002 */  mul.s      $f0, $f0, $f2
/* 29830 800BEC30 E6200000 */  swc1       $f0, 0x0($s1)
/* 29834 800BEC34 C6400000 */  lwc1       $f0, 0x0($s2)
/* 29838 800BEC38 46020002 */  mul.s      $f0, $f0, $f2
/* 2983C 800BEC3C E6400000 */  swc1       $f0, 0x0($s2)
/* 29840 800BEC40 8FBF001C */  lw         $ra, 0x1C($sp)
/* 29844 800BEC44 8FB20018 */  lw         $s2, 0x18($sp)
/* 29848 800BEC48 8FB10014 */  lw         $s1, 0x14($sp)
/* 2984C 800BEC4C 8FB00010 */  lw         $s0, 0x10($sp)
/* 29850 800BEC50 03E00008 */  jr         $ra
/* 29854 800BEC54 27BD0020 */   addiu     $sp, $sp, 0x20
/* 29858 800BEC58 00000000 */  nop
/* 2985C 800BEC5C 00000000 */  nop
.size guNormalize, . - guNormalize
