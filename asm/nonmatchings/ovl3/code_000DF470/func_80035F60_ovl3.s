glabel func_80035F60_ovl3
/* DF470 80035F60 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* DF474 80035F64 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* DF478 80035F68 30421000 */  andi       $v0, $v0, 0x1000
/* DF47C 80035F6C 03E00008 */  jr         $ra
/* DF480 80035F70 0002102B */   sltu      $v0, $zero, $v0
.size func_80035F60_ovl3, . - func_80035F60_ovl3
