glabel func_800B5200
/* 1FE00 800B5200 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1FE04 800B5204 AFB00010 */  sw         $s0, 0x10($sp)
/* 1FE08 800B5208 00808021 */  addu       $s0, $a0, $zero
/* 1FE0C 800B520C AFBF0018 */  sw         $ra, 0x18($sp)
/* 1FE10 800B5210 AFB10014 */  sw         $s1, 0x14($sp)
/* 1FE14 800B5214 8E020008 */  lw         $v0, 0x8($s0)
/* 1FE18 800B5218 10400016 */  beqz       $v0, .L800B5274
/* 1FE1C 800B521C 00A08821 */   addu      $s1, $a1, $zero
/* 1FE20 800B5220 0C02D5BA */  jal        func_800B56E8
/* 1FE24 800B5224 00000000 */   nop
/* 1FE28 800B5228 00403021 */  addu       $a2, $v0, $zero
/* 1FE2C 800B522C 10C00011 */  beqz       $a2, .L800B5274
/* 1FE30 800B5230 00000000 */   nop
/* 1FE34 800B5234 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FE38 800B5238 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FE3C 800B523C 8E040008 */  lw         $a0, 0x8($s0)
/* 1FE40 800B5240 8C43001C */  lw         $v1, 0x1C($v0)
/* 1FE44 800B5244 8C840088 */  lw         $a0, 0x88($a0)
/* 1FE48 800B5248 2402000E */  addiu      $v0, $zero, 0xE
/* 1FE4C 800B524C A4C20008 */  sh         $v0, 0x8($a2)
/* 1FE50 800B5250 ACD1000C */  sw         $s1, 0xC($a2)
/* 1FE54 800B5254 ACC00000 */  sw         $zero, 0x0($a2)
/* 1FE58 800B5258 00641821 */  addu       $v1, $v1, $a0
/* 1FE5C 800B525C ACC30004 */  sw         $v1, 0x4($a2)
/* 1FE60 800B5260 9602001A */  lhu        $v0, 0x1A($s0)
/* 1FE64 800B5264 A4C2000A */  sh         $v0, 0xA($a2)
/* 1FE68 800B5268 8E040008 */  lw         $a0, 0x8($s0)
/* 1FE6C 800B526C 0C02CD62 */  jal        func_800B3588
/* 1FE70 800B5270 24050003 */   addiu     $a1, $zero, 0x3
.L800B5274:
/* 1FE74 800B5274 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1FE78 800B5278 8FB10014 */  lw         $s1, 0x14($sp)
/* 1FE7C 800B527C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1FE80 800B5280 03E00008 */  jr         $ra
/* 1FE84 800B5284 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1FE88 800B5288 00000000 */  nop
/* 1FE8C 800B528C 00000000 */  nop
.size func_800B5200, . - func_800B5200
