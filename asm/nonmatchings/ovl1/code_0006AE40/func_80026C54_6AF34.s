glabel func_80026C54_6AF34
/* 6AF34 80026C54 24020001 */  addiu      $v0, $zero, 1
/* 6AF38 80026C58 3C018003 */  lui        $at, %hi(D_80030A30)
/* 6AF3C 80026C5C 03E00008 */  jr         $ra
/* 6AF40 80026C60 A0220A30 */   sb        $v0, %lo(D_80030A30)($at)
