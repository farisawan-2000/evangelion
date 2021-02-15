.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B84D4
/* 230D4 800B84D4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 230D8 800B84D8 AFBF0010 */  sw         $ra, 0x10($sp)
/* 230DC 800B84DC 3C048017 */  lui        $a0, %hi(D_801765C0)
/* 230E0 800B84E0 248465C0 */  addiu      $a0, $a0, %lo(D_801765C0)
/* 230E4 800B84E4 00002821 */  addu       $a1, $zero, $zero
/* 230E8 800B84E8 0C03024C */  jal        func_800C0930
/* 230EC 800B84EC 24060001 */   addiu     $a2, $zero, 1
/* 230F0 800B84F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 230F4 800B84F4 03E00008 */  jr         $ra
/* 230F8 800B84F8 27BD0018 */   addiu     $sp, $sp, 0x18
