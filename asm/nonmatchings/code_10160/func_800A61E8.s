.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A61E8
/* 10DE8 800A61E8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10DEC 800A61EC 10800003 */  beqz       $a0, .L800A61FC
/* 10DF0 800A61F0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 10DF4 800A61F4 0C0326A1 */  jal        func_800C9A84
/* 10DF8 800A61F8 00000000 */   nop
.L800A61FC:
/* 10DFC 800A61FC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10E00 800A6200 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10E04 800A6204 03E00008 */  jr         $ra
/* 10E08 800A6208 00000000 */   nop
