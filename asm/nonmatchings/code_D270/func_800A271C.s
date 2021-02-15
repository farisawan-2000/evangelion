.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A271C
/* D31C 800A271C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D320 800A2720 10800003 */  beqz       $a0, .L800A2730
/* D324 800A2724 AFBF0010 */   sw        $ra, 0x10($sp)
/* D328 800A2728 0C0326A1 */  jal        func_800C9A84
/* D32C 800A272C 00000000 */   nop
.L800A2730:
/* D330 800A2730 8FBF0010 */  lw         $ra, 0x10($sp)
/* D334 800A2734 27BD0018 */  addiu      $sp, $sp, 0x18
/* D338 800A2738 03E00008 */  jr         $ra
/* D33C 800A273C 00000000 */   nop
