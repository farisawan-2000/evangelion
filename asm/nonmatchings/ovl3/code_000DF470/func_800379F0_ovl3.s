glabel func_800379F0_ovl3
/* E0F00 800379F0 8C820014 */  lw         $v0, 0x14($a0)
/* E0F04 800379F4 30A500FF */  andi       $a1, $a1, 0xFF
/* E0F08 800379F8 00052840 */  sll        $a1, $a1, 1
/* E0F0C 800379FC 00451021 */  addu       $v0, $v0, $a1
/* E0F10 80037A00 03E00008 */  jr         $ra
/* E0F14 80037A04 94420000 */   lhu       $v0, 0x0($v0)
.size func_800379F0_ovl3, . - func_800379F0_ovl3
