glabel func_800BAD0C
/* 2590C 800BAD0C 8C87001C */  lw         $a3, 0x1C($a0)
/* 25910 800BAD10 24020002 */  addiu      $v0, $zero, 0x2
/* 25914 800BAD14 14A20007 */  bne        $a1, $v0, .L800BAD34
/* 25918 800BAD18 00000000 */   nop
/* 2591C 800BAD1C 8C820014 */  lw         $v0, 0x14($a0)
/* 25920 800BAD20 24430001 */  addiu      $v1, $v0, 0x1
/* 25924 800BAD24 00021080 */  sll        $v0, $v0, 2
/* 25928 800BAD28 00471021 */  addu       $v0, $v0, $a3
/* 2592C 800BAD2C AC830014 */  sw         $v1, 0x14($a0)
/* 25930 800BAD30 AC460000 */  sw         $a2, 0x0($v0)
.L800BAD34:
/* 25934 800BAD34 03E00008 */  jr         $ra
/* 25938 800BAD38 00001021 */   addu      $v0, $zero, $zero
/* 2593C 800BAD3C 00000000 */  nop
.size func_800BAD0C, . - func_800BAD0C
