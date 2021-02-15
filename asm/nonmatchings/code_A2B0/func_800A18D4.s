.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A18D4
/* C4D4 800A18D4 2C820001 */  sltiu      $v0, $a0, 1
/* C4D8 800A18D8 2CC30001 */  sltiu      $v1, $a2, 1
/* C4DC 800A18DC 00431025 */  or         $v0, $v0, $v1
/* C4E0 800A18E0 14400012 */  bnez       $v0, .L800A192C
/* C4E4 800A18E4 00051400 */   sll       $v0, $a1, 0x10
/* C4E8 800A18E8 8C830008 */  lw         $v1, 8($a0)
/* C4EC 800A18EC 00021383 */  sra        $v0, $v0, 0xe
/* C4F0 800A18F0 00431021 */  addu       $v0, $v0, $v1
/* C4F4 800A18F4 8C440000 */  lw         $a0, ($v0)
/* C4F8 800A18F8 8CC30008 */  lw         $v1, 8($a2)
/* C4FC 800A18FC 00071400 */  sll        $v0, $a3, 0x10
/* C500 800A1900 00021383 */  sra        $v0, $v0, 0xe
/* C504 800A1904 00431021 */  addu       $v0, $v0, $v1
/* C508 800A1908 8C430000 */  lw         $v1, ($v0)
/* C50C 800A190C 8C8500A0 */  lw         $a1, 0xa0($a0)
/* C510 800A1910 8C6200A0 */  lw         $v0, 0xa0($v1)
/* C514 800A1914 AC8200A0 */  sw         $v0, 0xa0($a0)
/* C518 800A1918 8C620008 */  lw         $v0, 8($v1)
/* C51C 800A191C AC6500A0 */  sw         $a1, 0xa0($v1)
/* C520 800A1920 8C850008 */  lw         $a1, 8($a0)
/* C524 800A1924 AC820008 */  sw         $v0, 8($a0)
/* C528 800A1928 AC650008 */  sw         $a1, 8($v1)
.L800A192C:
/* C52C 800A192C 03E00008 */  jr         $ra
/* C530 800A1930 00000000 */   nop
