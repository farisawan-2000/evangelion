glabel func_800A3E68
/* EA68 800A3E68 8C830000 */  lw         $v1, 0x0($a0)
/* EA6C 800A3E6C 24020001 */  addiu      $v0, $zero, 0x1
/* EA70 800A3E70 A0820020 */  sb         $v0, 0x20($a0)
/* EA74 800A3E74 A465001A */  sh         $a1, 0x1A($v1)
/* EA78 800A3E78 03E00008 */  jr         $ra
/* EA7C 800A3E7C A4660022 */   sh        $a2, 0x22($v1)
.size func_800A3E68, . - func_800A3E68
