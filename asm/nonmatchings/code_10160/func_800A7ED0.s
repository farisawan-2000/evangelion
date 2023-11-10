glabel func_800A7ED0
/* 12AD0 800A7ED0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 12AD4 800A7ED4 2404000C */  addiu      $a0, $zero, 0xC
/* 12AD8 800A7ED8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 12ADC 800A7EDC 0C032663 */  jal        func_800C998C
/* 12AE0 800A7EE0 AFB00010 */   sw        $s0, 0x10($sp)
/* 12AE4 800A7EE4 2404000E */  addiu      $a0, $zero, 0xE
/* 12AE8 800A7EE8 00408021 */  addu       $s0, $v0, $zero
/* 12AEC 800A7EEC 24050001 */  addiu      $a1, $zero, 0x1
/* 12AF0 800A7EF0 0C028CB7 */  jal        func_800A32DC
/* 12AF4 800A7EF4 00003021 */   addu      $a2, $zero, $zero
/* 12AF8 800A7EF8 AE020000 */  sw         $v0, 0x0($s0)
/* 12AFC 800A7EFC 02001021 */  addu       $v0, $s0, $zero
/* 12B00 800A7F00 A4400004 */  sh         $zero, 0x4($v0)
/* 12B04 800A7F04 A4400006 */  sh         $zero, 0x6($v0)
/* 12B08 800A7F08 A4400008 */  sh         $zero, 0x8($v0)
/* 12B0C 800A7F0C A440000A */  sh         $zero, 0xA($v0)
/* 12B10 800A7F10 8FBF0014 */  lw         $ra, 0x14($sp)
/* 12B14 800A7F14 8FB00010 */  lw         $s0, 0x10($sp)
/* 12B18 800A7F18 27BD0018 */  addiu      $sp, $sp, 0x18
/* 12B1C 800A7F1C 03E00008 */  jr         $ra
/* 12B20 800A7F20 00000000 */   nop
.size func_800A7ED0, . - func_800A7ED0
