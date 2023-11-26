glabel func_80035F74_ovl3
/* DF484 80035F74 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF488 80035F78 24041900 */  addiu      $a0, $zero, 0x1900
/* DF48C 80035F7C AFBF0014 */  sw         $ra, 0x14($sp)
/* DF490 80035F80 0C032663 */  jal        func_800C998C
/* DF494 80035F84 AFB00010 */   sw        $s0, 0x10($sp)
/* DF498 80035F88 00408021 */  addu       $s0, $v0, $zero
/* DF49C 80035F8C 02002021 */  addu       $a0, $s0, $zero
/* DF4A0 80035F90 0C030134 */  jal        bzero
/* DF4A4 80035F94 24051900 */   addiu     $a1, $zero, 0x1900
/* DF4A8 80035F98 3C018007 */  lui        $at, %hi(D_8006C3C4_ovl3)
/* DF4AC 80035F9C AC30C3C4 */  sw         $s0, %lo(D_8006C3C4_ovl3)($at)
/* DF4B0 80035FA0 0C032663 */  jal        func_800C998C
/* DF4B4 80035FA4 24040C80 */   addiu     $a0, $zero, 0xC80
/* DF4B8 80035FA8 00408021 */  addu       $s0, $v0, $zero
/* DF4BC 80035FAC 02002021 */  addu       $a0, $s0, $zero
/* DF4C0 80035FB0 0C030134 */  jal        bzero
/* DF4C4 80035FB4 24050C80 */   addiu     $a1, $zero, 0xC80
/* DF4C8 80035FB8 3C018007 */  lui        $at, %hi(D_8006C588_ovl3)
/* DF4CC 80035FBC AC30C588 */  sw         $s0, %lo(D_8006C588_ovl3)($at)
/* DF4D0 80035FC0 8FBF0014 */  lw         $ra, 0x14($sp)
/* DF4D4 80035FC4 8FB00010 */  lw         $s0, 0x10($sp)
/* DF4D8 80035FC8 03E00008 */  jr         $ra
/* DF4DC 80035FCC 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80035F74_ovl3, . - func_80035F74_ovl3
