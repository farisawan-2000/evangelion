.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7BC8
/* 227C8 800B7BC8 8C82000C */  lw         $v0, 0xc($a0)
/* 227CC 800B7BCC 90430000 */  lbu        $v1, ($v0)
/* 227D0 800B7BD0 00031080 */  sll        $v0, $v1, 2
/* 227D4 800B7BD4 00431021 */  addu       $v0, $v0, $v1
/* 227D8 800B7BD8 00021040 */  sll        $v0, $v0, 1
/* 227DC 800B7BDC 3C018015 */  lui        $at, %hi(D_8014A002)
/* 227E0 800B7BE0 00220821 */  addu       $at, $at, $v0
/* 227E4 800B7BE4 A420A002 */  sh         $zero, %lo(D_8014A002)($at)
/* 227E8 800B7BE8 03E00008 */  jr         $ra
/* 227EC 800B7BEC 00001021 */   addu      $v0, $zero, $zero
