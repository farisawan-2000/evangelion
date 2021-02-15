.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A1A74
/* C674 800A1A74 8C820008 */  lw         $v0, 8($a0)
/* C678 800A1A78 30A5FFFF */  andi       $a1, $a1, 0xffff
/* C67C 800A1A7C 00052880 */  sll        $a1, $a1, 2
/* C680 800A1A80 00A22821 */  addu       $a1, $a1, $v0
/* C684 800A1A84 8CA20000 */  lw         $v0, ($a1)
/* C688 800A1A88 03E00008 */  jr         $ra
/* C68C 800A1A8C A04600A4 */   sb        $a2, 0xa4($v0)
