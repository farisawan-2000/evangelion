glabel func_800379B0_ovl3
/* E0EC0 800379B0 8C820014 */  lw         $v0, 0x14($a0)
/* E0EC4 800379B4 30A500FF */  andi       $a1, $a1, 0xFF
/* E0EC8 800379B8 00052840 */  sll        $a1, $a1, 1
/* E0ECC 800379BC 00451021 */  addu       $v0, $v0, $a1
/* E0ED0 800379C0 03E00008 */  jr         $ra
/* E0ED4 800379C4 A4460000 */   sh        $a2, 0x0($v0)
.size func_800379B0_ovl3, . - func_800379B0_ovl3
