.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AB7CC
/* 163CC 800AB7CC 3C01800D */  lui        $at, %hi(D_800D5114)
/* 163D0 800AB7D0 A4245114 */  sh         $a0, %lo(D_800D5114)($at)
/* 163D4 800AB7D4 03E00008 */  jr         $ra
/* 163D8 800AB7D8 00000000 */   nop
