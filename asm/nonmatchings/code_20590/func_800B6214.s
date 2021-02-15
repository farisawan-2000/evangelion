.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6214
/* 20E14 800B6214 3C018017 */  lui        $at, %hi(D_8016E2ED)
/* 20E18 800B6218 03E00008 */  jr         $ra
/* 20E1C 800B621C A024E2ED */   sb        $a0, %lo(D_8016E2ED)($at)
