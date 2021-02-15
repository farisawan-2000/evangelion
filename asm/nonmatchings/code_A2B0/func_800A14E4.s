.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A14E4
/* C0E4 800A14E4 8C820008 */  lw         $v0, 8($a0)
/* C0E8 800A14E8 00052C00 */  sll        $a1, $a1, 0x10
/* C0EC 800A14EC 00052B83 */  sra        $a1, $a1, 0xe
/* C0F0 800A14F0 00A22821 */  addu       $a1, $a1, $v0
/* C0F4 800A14F4 8CA20000 */  lw         $v0, ($a1)
/* C0F8 800A14F8 8C420010 */  lw         $v0, 0x10($v0)
/* C0FC 800A14FC 03E00008 */  jr         $ra
/* C100 800A1500 00000000 */   nop
