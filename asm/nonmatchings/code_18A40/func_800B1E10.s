glabel func_800B1E10
/* 1CA10 800B1E10 24020006 */  addiu      $v0, $zero, 0x6
/* 1CA14 800B1E14 A082001C */  sb         $v0, 0x1C($a0)
/* 1CA18 800B1E18 3C02800F */  lui        $v0, %hi(D_800F1378)
/* 1CA1C 800B1E1C 24421378 */  addiu      $v0, $v0, %lo(D_800F1378)
/* 1CA20 800B1E20 03E00008 */  jr         $ra
/* 1CA24 800B1E24 AC820020 */   sw        $v0, 0x20($a0)
.size func_800B1E10, . - func_800B1E10
