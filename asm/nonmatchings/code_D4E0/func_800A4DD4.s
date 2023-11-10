glabel func_800A4DD4
/* F9D4 800A4DD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F9D8 800A4DD8 AFBF0010 */  sw         $ra, 0x10($sp)
/* F9DC 800A4DDC 0C032663 */  jal        func_800C998C
/* F9E0 800A4DE0 24040038 */   addiu     $a0, $zero, 0x38
/* F9E4 800A4DE4 24430030 */  addiu      $v1, $v0, 0x30
/* F9E8 800A4DE8 AC430000 */  sw         $v1, 0x0($v0)
/* F9EC 800A4DEC 2403000A */  addiu      $v1, $zero, 0xA
/* F9F0 800A4DF0 A443001C */  sh         $v1, 0x1C($v0)
/* F9F4 800A4DF4 24030007 */  addiu      $v1, $zero, 0x7
/* F9F8 800A4DF8 A0430020 */  sb         $v1, 0x20($v0)
/* F9FC 800A4DFC 24030140 */  addiu      $v1, $zero, 0x140
/* FA00 800A4E00 A4430034 */  sh         $v1, 0x34($v0)
/* FA04 800A4E04 240300F0 */  addiu      $v1, $zero, 0xF0
/* FA08 800A4E08 AC400004 */  sw         $zero, 0x4($v0)
/* FA0C 800A4E0C AC400008 */  sw         $zero, 0x8($v0)
/* FA10 800A4E10 AC400010 */  sw         $zero, 0x10($v0)
/* FA14 800A4E14 AC400014 */  sw         $zero, 0x14($v0)
/* FA18 800A4E18 A0400018 */  sb         $zero, 0x18($v0)
/* FA1C 800A4E1C A0400019 */  sb         $zero, 0x19($v0)
/* FA20 800A4E20 A040001A */  sb         $zero, 0x1A($v0)
/* FA24 800A4E24 A040001B */  sb         $zero, 0x1B($v0)
/* FA28 800A4E28 A0400021 */  sb         $zero, 0x21($v0)
/* FA2C 800A4E2C A0400022 */  sb         $zero, 0x22($v0)
/* FA30 800A4E30 A440001E */  sh         $zero, 0x1E($v0)
/* FA34 800A4E34 A4400030 */  sh         $zero, 0x30($v0)
/* FA38 800A4E38 A4400032 */  sh         $zero, 0x32($v0)
/* FA3C 800A4E3C 8FBF0010 */  lw         $ra, 0x10($sp)
/* FA40 800A4E40 A4430036 */  sh         $v1, 0x36($v0)
/* FA44 800A4E44 03E00008 */  jr         $ra
/* FA48 800A4E48 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800A4DD4, . - func_800A4DD4
