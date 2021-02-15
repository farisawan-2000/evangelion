.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A56A8
/* 102A8 800A56A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 102AC 800A56AC 10800003 */  beqz       $a0, .L800A56BC
/* 102B0 800A56B0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 102B4 800A56B4 0C0326A1 */  jal        func_800C9A84
/* 102B8 800A56B8 00000000 */   nop
.L800A56BC:
/* 102BC 800A56BC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 102C0 800A56C0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 102C4 800A56C4 03E00008 */  jr         $ra
/* 102C8 800A56C8 00000000 */   nop
