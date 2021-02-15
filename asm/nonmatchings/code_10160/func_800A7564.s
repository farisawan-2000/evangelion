.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A7564
/* 12164 800A7564 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12168 800A7568 AFB00010 */  sw         $s0, 0x10($sp)
/* 1216C 800A756C 00808021 */  addu       $s0, $a0, $zero
/* 12170 800A7570 24040180 */  addiu      $a0, $zero, 0x180
/* 12174 800A7574 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12178 800A7578 0C032663 */  jal        func_800C998C
/* 1217C 800A757C AFB10014 */   sw        $s1, 0x14($sp)
/* 12180 800A7580 00408821 */  addu       $s1, $v0, $zero
/* 12184 800A7584 02202021 */  addu       $a0, $s1, $zero
/* 12188 800A7588 00108400 */  sll        $s0, $s0, 0x10
/* 1218C 800A758C 0C029D6C */  jal        func_800A75B0
/* 12190 800A7590 00102C03 */   sra       $a1, $s0, 0x10
/* 12194 800A7594 02201021 */  addu       $v0, $s1, $zero
/* 12198 800A7598 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1219C 800A759C 8FB10014 */  lw         $s1, 0x14($sp)
/* 121A0 800A75A0 8FB00010 */  lw         $s0, 0x10($sp)
/* 121A4 800A75A4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 121A8 800A75A8 03E00008 */  jr         $ra
/* 121AC 800A75AC 00000000 */   nop
