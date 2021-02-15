.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A15A4
/* C1A4 800A15A4 8C820008 */  lw         $v0, 8($a0)
/* C1A8 800A15A8 00052C00 */  sll        $a1, $a1, 0x10
/* C1AC 800A15AC 00052B83 */  sra        $a1, $a1, 0xe
/* C1B0 800A15B0 00A22821 */  addu       $a1, $a1, $v0
/* C1B4 800A15B4 8CA20000 */  lw         $v0, ($a1)
/* C1B8 800A15B8 8C420010 */  lw         $v0, 0x10($v0)
/* C1BC 800A15BC 00021300 */  sll        $v0, $v0, 0xc
/* C1C0 800A15C0 03E00008 */  jr         $ra
/* C1C4 800A15C4 00021403 */   sra       $v0, $v0, 0x10
