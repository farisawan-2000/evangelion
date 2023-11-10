glabel func_800A6C60
/* 11860 800A6C60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11864 800A6C64 AFB00010 */  sw         $s0, 0x10($sp)
/* 11868 800A6C68 00808021 */  addu       $s0, $a0, $zero
/* 1186C 800A6C6C 1200000F */  beqz       $s0, .L800A6CAC
/* 11870 800A6C70 AFBF0014 */   sw        $ra, 0x14($sp)
/* 11874 800A6C74 8E040000 */  lw         $a0, 0x0($s0)
/* 11878 800A6C78 0C028D30 */  jal        func_800A34C0
/* 1187C 800A6C7C 00000000 */   nop
/* 11880 800A6C80 8E040004 */  lw         $a0, 0x4($s0)
/* 11884 800A6C84 0C028D30 */  jal        func_800A34C0
/* 11888 800A6C88 00000000 */   nop
/* 1188C 800A6C8C 8E040008 */  lw         $a0, 0x8($s0)
/* 11890 800A6C90 0C028D30 */  jal        func_800A34C0
/* 11894 800A6C94 00000000 */   nop
/* 11898 800A6C98 8E04000C */  lw         $a0, 0xC($s0)
/* 1189C 800A6C9C 0C028D30 */  jal        func_800A34C0
/* 118A0 800A6CA0 00000000 */   nop
/* 118A4 800A6CA4 0C0326A1 */  jal        func_800C9A84
/* 118A8 800A6CA8 02002021 */   addu      $a0, $s0, $zero
.L800A6CAC:
/* 118AC 800A6CAC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 118B0 800A6CB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 118B4 800A6CB4 27BD0018 */  addiu      $sp, $sp, 0x18
/* 118B8 800A6CB8 03E00008 */  jr         $ra
/* 118BC 800A6CBC 00000000 */   nop
.size func_800A6C60, . - func_800A6C60
