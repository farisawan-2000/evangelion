.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A3E80
/* EA80 800A3E80 8C830000 */  lw         $v1, ($a0)
/* EA84 800A3E84 24020400 */  addiu      $v0, $zero, 0x400
/* EA88 800A3E88 A0800020 */  sb         $zero, 0x20($a0)
/* EA8C 800A3E8C A462001A */  sh         $v0, 0x1a($v1)
/* EA90 800A3E90 03E00008 */  jr         $ra
/* EA94 800A3E94 A4620022 */   sh        $v0, 0x22($v1)
