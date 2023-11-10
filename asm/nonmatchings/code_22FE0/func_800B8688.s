glabel func_800B8688
/* 23288 800B8688 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2328C 800B868C AFBF0010 */  sw         $ra, 0x10($sp)
/* 23290 800B8690 8C84000C */  lw         $a0, 0xC($a0)
/* 23294 800B8694 0C02E149 */  jal        func_800B8524
/* 23298 800B8698 00002821 */   addu      $a1, $zero, $zero
/* 2329C 800B869C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 232A0 800B86A0 03E00008 */  jr         $ra
/* 232A4 800B86A4 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B8688, . - func_800B8688
