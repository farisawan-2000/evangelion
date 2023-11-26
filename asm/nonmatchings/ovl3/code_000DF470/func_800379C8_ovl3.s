glabel func_800379C8_ovl3
/* E0ED8 800379C8 8C830014 */  lw         $v1, 0x14($a0)
/* E0EDC 800379CC 30A500FF */  andi       $a1, $a1, 0xFF
/* E0EE0 800379D0 00052840 */  sll        $a1, $a1, 1
/* E0EE4 800379D4 00651821 */  addu       $v1, $v1, $a1
/* E0EE8 800379D8 94620000 */  lhu        $v0, 0x0($v1)
/* E0EEC 800379DC 30C600FF */  andi       $a2, $a2, 0xFF
/* E0EF0 800379E0 3042FFFE */  andi       $v0, $v0, 0xFFFE
/* E0EF4 800379E4 00C23021 */  addu       $a2, $a2, $v0
/* E0EF8 800379E8 03E00008 */  jr         $ra
/* E0EFC 800379EC A4660000 */   sh        $a2, 0x0($v1)
.size func_800379C8_ovl3, . - func_800379C8_ovl3
