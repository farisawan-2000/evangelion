.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B6C4
/* 62C4 8009B6C4 3C048015 */  lui        $a0, %hi(D_80149FF0)
/* 62C8 8009B6C8 8C849FF0 */  lw         $a0, %lo(D_80149FF0)($a0)
/* 62CC 8009B6CC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 62D0 8009B6D0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 62D4 8009B6D4 0C02B9E9 */  jal        func_800AE7A4
/* 62D8 8009B6D8 00000000 */   nop
/* 62DC 8009B6DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 62E0 8009B6E0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 62E4 8009B6E4 03E00008 */  jr         $ra
/* 62E8 8009B6E8 00000000 */   nop
