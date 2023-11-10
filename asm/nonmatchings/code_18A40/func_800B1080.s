glabel func_800B1080
/* 1BC80 800B1080 00A01021 */  addu       $v0, $a1, $zero
/* 1BC84 800B1084 A08000D5 */  sb         $zero, 0xD5($a0)
/* 1BC88 800B1088 03E00008 */  jr         $ra
/* 1BC8C 800B108C AC800068 */   sw        $zero, 0x68($a0)
.size func_800B1080, . - func_800B1080
