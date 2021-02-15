.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6860
/* 21460 800B6860 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21464 800B6864 AFBF0010 */  sw         $ra, 0x10($sp)
/* 21468 800B6868 0C030A40 */  jal        func_800C2900
/* 2146C 800B686C 8C84000C */   lw        $a0, 0xc($a0)
/* 21470 800B6870 8FBF0010 */  lw         $ra, 0x10($sp)
/* 21474 800B6874 03E00008 */  jr         $ra
/* 21478 800B6878 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2147C 800B687C 00000000 */  nop
