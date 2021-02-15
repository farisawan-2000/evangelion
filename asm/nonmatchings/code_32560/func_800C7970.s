.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7970
/* 32570 800C7970 3C02A404 */  lui        $v0, 0xa404
/* 32574 800C7974 34420010 */  ori        $v0, $v0, 0x10
/* 32578 800C7978 03E00008 */  jr         $ra
/* 3257C 800C797C AC440000 */   sw        $a0, ($v0)
