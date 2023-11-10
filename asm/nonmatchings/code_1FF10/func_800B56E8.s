glabel func_800B56E8
/* 202E8 800B56E8 3C04800F */  lui        $a0, %hi(D_800F17F4)
/* 202EC 800B56EC 8C8417F4 */  lw         $a0, %lo(D_800F17F4)($a0)
/* 202F0 800B56F0 8C82002C */  lw         $v0, 0x2C($a0)
/* 202F4 800B56F4 10400005 */  beqz       $v0, .L800B570C
/* 202F8 800B56F8 00001821 */   addu      $v1, $zero, $zero
/* 202FC 800B56FC 00401821 */  addu       $v1, $v0, $zero
/* 20300 800B5700 8C620000 */  lw         $v0, 0x0($v1)
/* 20304 800B5704 AC82002C */  sw         $v0, 0x2C($a0)
/* 20308 800B5708 AC600000 */  sw         $zero, 0x0($v1)
.L800B570C:
/* 2030C 800B570C 03E00008 */  jr         $ra
/* 20310 800B5710 00601021 */   addu      $v0, $v1, $zero
.size func_800B56E8, . - func_800B56E8
