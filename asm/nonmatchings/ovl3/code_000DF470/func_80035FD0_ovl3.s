glabel func_80035FD0_ovl3
/* DF4E0 80035FD0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF4E4 80035FD4 AFBF0010 */  sw         $ra, 0x10($sp)
/* DF4E8 80035FD8 0C00E15C */  jal        func_80038570_ovl3
/* DF4EC 80035FDC 00000000 */   nop
/* DF4F0 80035FE0 3C048007 */  lui        $a0, %hi(D_8006C588_ovl3)
/* DF4F4 80035FE4 0C0326A1 */  jal        func_800C9A84
/* DF4F8 80035FE8 8C84C588 */   lw        $a0, %lo(D_8006C588_ovl3)($a0)
/* DF4FC 80035FEC 3C048007 */  lui        $a0, %hi(D_8006C3C4_ovl3)
/* DF500 80035FF0 0C0326A1 */  jal        func_800C9A84
/* DF504 80035FF4 8C84C3C4 */   lw        $a0, %lo(D_8006C3C4_ovl3)($a0)
/* DF508 80035FF8 3C018007 */  lui        $at, %hi(D_8006C588_ovl3)
/* DF50C 80035FFC AC20C588 */  sw         $zero, %lo(D_8006C588_ovl3)($at)
/* DF510 80036000 3C018007 */  lui        $at, %hi(D_8006C3C4_ovl3)
/* DF514 80036004 AC20C3C4 */  sw         $zero, %lo(D_8006C3C4_ovl3)($at)
/* DF518 80036008 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF51C 8003600C 03E00008 */  jr         $ra
/* DF520 80036010 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80035FD0_ovl3, . - func_80035FD0_ovl3
