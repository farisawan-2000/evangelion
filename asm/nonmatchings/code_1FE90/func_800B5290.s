glabel func_800B5290
/* 1FE90 800B5290 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1FE94 800B5294 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FE98 800B5298 00808021 */  addu       $s0, $a0, $zero
/* 1FE9C 800B529C AFBF0014 */  sw         $ra, 0x14($sp)
/* 1FEA0 800B52A0 8E020008 */  lw         $v0, 0x8($s0)
/* 1FEA4 800B52A4 10400013 */  beqz       $v0, .L800B52F4
/* 1FEA8 800B52A8 00000000 */   nop
/* 1FEAC 800B52AC 0C02D5BA */  jal        func_800B56E8
/* 1FEB0 800B52B0 00000000 */   nop
/* 1FEB4 800B52B4 00403021 */  addu       $a2, $v0, $zero
/* 1FEB8 800B52B8 10C0000E */  beqz       $a2, .L800B52F4
/* 1FEBC 800B52BC 00000000 */   nop
/* 1FEC0 800B52C0 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FEC4 800B52C4 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FEC8 800B52C8 8E040008 */  lw         $a0, 0x8($s0)
/* 1FECC 800B52CC 8C43001C */  lw         $v1, 0x1C($v0)
/* 1FED0 800B52D0 8C840088 */  lw         $a0, 0x88($a0)
/* 1FED4 800B52D4 2402000F */  addiu      $v0, $zero, 0xF
/* 1FED8 800B52D8 A4C20008 */  sh         $v0, 0x8($a2)
/* 1FEDC 800B52DC ACC00000 */  sw         $zero, 0x0($a2)
/* 1FEE0 800B52E0 00641821 */  addu       $v1, $v1, $a0
/* 1FEE4 800B52E4 ACC30004 */  sw         $v1, 0x4($a2)
/* 1FEE8 800B52E8 8E040008 */  lw         $a0, 0x8($s0)
/* 1FEEC 800B52EC 0C02CD62 */  jal        func_800B3588
/* 1FEF0 800B52F0 24050003 */   addiu     $a1, $zero, 0x3
.L800B52F4:
/* 1FEF4 800B52F4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1FEF8 800B52F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FEFC 800B52FC 03E00008 */  jr         $ra
/* 1FF00 800B5300 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1FF04 800B5304 00000000 */  nop
/* 1FF08 800B5308 00000000 */  nop
/* 1FF0C 800B530C 00000000 */  nop
.size func_800B5290, . - func_800B5290
