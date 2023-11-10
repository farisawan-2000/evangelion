glabel func_800BBB50
/* 26750 800BBB50 8C87001C */  lw         $a3, 0x1C($a0)
/* 26754 800BBB54 24020002 */  addiu      $v0, $zero, 0x2
/* 26758 800BBB58 14A20007 */  bne        $a1, $v0, .L800BBB78
/* 2675C 800BBB5C 00000000 */   nop
/* 26760 800BBB60 8C820014 */  lw         $v0, 0x14($a0)
/* 26764 800BBB64 24430001 */  addiu      $v1, $v0, 0x1
/* 26768 800BBB68 00021080 */  sll        $v0, $v0, 2
/* 2676C 800BBB6C 00471021 */  addu       $v0, $v0, $a3
/* 26770 800BBB70 AC830014 */  sw         $v1, 0x14($a0)
/* 26774 800BBB74 AC460000 */  sw         $a2, 0x0($v0)
.L800BBB78:
/* 26778 800BBB78 03E00008 */  jr         $ra
/* 2677C 800BBB7C 00001021 */   addu      $v0, $zero, $zero
.size func_800BBB50, . - func_800BBB50
