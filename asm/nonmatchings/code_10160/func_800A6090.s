glabel func_800A6090
/* 10C90 800A6090 308400FF */  andi       $a0, $a0, 0xFF
/* 10C94 800A6094 00042080 */  sll        $a0, $a0, 2
/* 10C98 800A6098 3C02800D */  lui        $v0, %hi(D_800D3E70)
/* 10C9C 800A609C 24423E70 */  addiu      $v0, $v0, %lo(D_800D3E70)
/* 10CA0 800A60A0 03E00008 */  jr         $ra
/* 10CA4 800A60A4 00821021 */   addu      $v0, $a0, $v0
.size func_800A6090, . - func_800A6090
