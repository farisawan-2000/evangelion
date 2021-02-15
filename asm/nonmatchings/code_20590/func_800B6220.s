.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6220
/* 20E20 800B6220 3C028017 */  lui        $v0, %hi(D_8016E2EC)
/* 20E24 800B6224 03E00008 */  jr         $ra
/* 20E28 800B6228 9042E2EC */   lbu       $v0, %lo(D_8016E2EC)($v0)
/* 20E2C 800B622C 00000000 */  nop
