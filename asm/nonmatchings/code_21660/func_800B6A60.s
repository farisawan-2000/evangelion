glabel func_800B6A60
/* 21660 800B6A60 24020080 */  addiu      $v0, $zero, 0x80
/* 21664 800B6A64 3C018015 */  lui        $at, %hi(D_80149FC8)
/* 21668 800B6A68 03E00008 */  jr         $ra
/* 2166C 800B6A6C AC229FC8 */   sw        $v0, %lo(D_80149FC8)($at)
.size func_800B6A60, . - func_800B6A60
