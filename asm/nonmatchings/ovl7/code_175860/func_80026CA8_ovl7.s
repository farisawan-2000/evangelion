glabel func_80026CA8_ovl7
/* 1766E8 80026CA8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1766EC 80026CAC AFBF001C */  sw         $ra, 0x1C($sp)
/* 1766F0 80026CB0 0C029375 */  jal        func_800A4DD4
/* 1766F4 80026CB4 AFB00018 */   sw        $s0, 0x18($sp)
/* 1766F8 80026CB8 00402021 */  addu       $a0, $v0, $zero
/* 1766FC 80026CBC 24050010 */  addiu      $a1, $zero, 0x10
/* 176700 80026CC0 9482001E */  lhu        $v0, 0x1E($a0)
/* 176704 80026CC4 24060010 */  addiu      $a2, $zero, 0x10
/* 176708 80026CC8 24070130 */  addiu      $a3, $zero, 0x130
/* 17670C 80026CCC 241000E0 */  addiu      $s0, $zero, 0xE0
/* 176710 80026CD0 3C018005 */  lui        $at, %hi(D_8005200C_ovl7)
/* 176714 80026CD4 AC24200C */  sw         $a0, %lo(D_8005200C_ovl7)($at)
/* 176718 80026CD8 A480001C */  sh         $zero, 0x1C($a0)
/* 17671C 80026CDC 34420100 */  ori        $v0, $v0, 0x100
/* 176720 80026CE0 A482001E */  sh         $v0, 0x1E($a0)
/* 176724 80026CE4 0C02939C */  jal        func_800A4E70
/* 176728 80026CE8 AFB00010 */   sw        $s0, 0x10($sp)
/* 17672C 80026CEC 0C029375 */  jal        func_800A4DD4
/* 176730 80026CF0 00000000 */   nop
/* 176734 80026CF4 00402021 */  addu       $a0, $v0, $zero
/* 176738 80026CF8 24050010 */  addiu      $a1, $zero, 0x10
/* 17673C 80026CFC 9482001E */  lhu        $v0, 0x1E($a0)
/* 176740 80026D00 24060010 */  addiu      $a2, $zero, 0x10
/* 176744 80026D04 24070130 */  addiu      $a3, $zero, 0x130
/* 176748 80026D08 3C018005 */  lui        $at, %hi(D_80052094_ovl7)
/* 17674C 80026D0C AC242094 */  sw         $a0, %lo(D_80052094_ovl7)($at)
/* 176750 80026D10 A480001C */  sh         $zero, 0x1C($a0)
/* 176754 80026D14 A482001E */  sh         $v0, 0x1E($a0)
/* 176758 80026D18 0C02939C */  jal        func_800A4E70
/* 17675C 80026D1C AFB00010 */   sw        $s0, 0x10($sp)
/* 176760 80026D20 8FBF001C */  lw         $ra, 0x1C($sp)
/* 176764 80026D24 8FB00018 */  lw         $s0, 0x18($sp)
/* 176768 80026D28 03E00008 */  jr         $ra
/* 17676C 80026D2C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_80026CA8_ovl7, . - func_80026CA8_ovl7
