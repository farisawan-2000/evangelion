glabel func_800A4E70
/* FA70 800A4E70 8C820000 */  lw         $v0, 0x0($a0)
/* FA74 800A4E74 97A30012 */  lhu        $v1, 0x12($sp)
/* FA78 800A4E78 A4450000 */  sh         $a1, 0x0($v0)
/* FA7C 800A4E7C A4460002 */  sh         $a2, 0x2($v0)
/* FA80 800A4E80 A4470004 */  sh         $a3, 0x4($v0)
/* FA84 800A4E84 03E00008 */  jr         $ra
/* FA88 800A4E88 A4430006 */   sh        $v1, 0x6($v0)
.size func_800A4E70, . - func_800A4E70
