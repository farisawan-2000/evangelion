glabel func_800B578C
/* 2038C 800B578C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20390 800B5790 AFB00010 */  sw         $s0, 0x10($sp)
/* 20394 800B5794 AFBF0014 */  sw         $ra, 0x14($sp)
/* 20398 800B5798 0C02F2C7 */  jal        func_800BCB1C
/* 2039C 800B579C 00808021 */   addu      $s0, $a0, $zero
/* 203A0 800B57A0 3C05800F */  lui        $a1, %hi(D_800F17F4)
/* 203A4 800B57A4 8CA517F4 */  lw         $a1, %lo(D_800F17F4)($a1)
/* 203A8 800B57A8 02002021 */  addu       $a0, $s0, $zero
/* 203AC 800B57AC 0C02F2BF */  jal        func_800BCAFC
/* 203B0 800B57B0 24A50014 */   addiu     $a1, $a1, 0x14
/* 203B4 800B57B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 203B8 800B57B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 203BC 800B57BC 03E00008 */  jr         $ra
/* 203C0 800B57C0 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B578C, . - func_800B578C
