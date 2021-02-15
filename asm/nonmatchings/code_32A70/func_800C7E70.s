.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7E70
/* 32A70 800C7E70 3C02800F */  lui        $v0, %hi(D_800F7CA0)
/* 32A74 800C7E74 03E00008 */  jr         $ra
/* 32A78 800C7E78 8C427CA0 */   lw        $v0, %lo(D_800F7CA0)($v0)
/* 32A7C 800C7E7C 00000000 */  nop
