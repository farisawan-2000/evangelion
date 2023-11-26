glabel func_80036344_ovl3
/* DF854 80036344 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* DF858 80036348 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* DF85C 8003634C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DF860 80036350 00002021 */  addu       $a0, $zero, $zero
/* DF864 80036354 AFBF0010 */  sw         $ra, 0x10($sp)
.L80036358_ovl3:
/* DF868 80036358 94620000 */  lhu        $v0, 0x0($v1)
/* DF86C 8003635C 10400007 */  beqz       $v0, .L8003637C_ovl3
/* DF870 80036360 24840001 */   addiu     $a0, $a0, 0x1
/* DF874 80036364 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* DF878 80036368 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* DF87C 8003636C 1440FFFA */  bnez       $v0, .L80036358_ovl3
/* DF880 80036370 24630010 */   addiu     $v1, $v1, 0x10
/* DF884 80036374 0C032934 */  jal        func_800CA4D0
/* DF888 80036378 00000000 */   nop
.L8003637C_ovl3:
/* DF88C 8003637C 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF890 80036380 00601021 */  addu       $v0, $v1, $zero
/* DF894 80036384 03E00008 */  jr         $ra
/* DF898 80036388 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_80036344_ovl3, . - func_80036344_ovl3
