.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800ADB70
/* 18770 800ADB70 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18774 800ADB74 AFBF0010 */  sw         $ra, 0x10($sp)
/* 18778 800ADB78 0C02B774 */  jal        func_800ADDD0
/* 1877C 800ADB7C 00000000 */   nop
/* 18780 800ADB80 3C01800F */  lui        $at, %hi(D_800F1230)
/* 18784 800ADB84 AC221230 */  sw         $v0, %lo(D_800F1230)($at)
/* 18788 800ADB88 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1878C 800ADB8C 03E00008 */  jr         $ra
/* 18790 800ADB90 27BD0018 */   addiu     $sp, $sp, 0x18
/* 18794 800ADB94 00000000 */  nop
/* 18798 800ADB98 00000000 */  nop
/* 1879C 800ADB9C 00000000 */  nop
