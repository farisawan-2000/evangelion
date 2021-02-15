.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A1424
/* C024 800A1424 8C820008 */  lw         $v0, 8($a0)
/* C028 800A1428 00052C00 */  sll        $a1, $a1, 0x10
/* C02C 800A142C 00052B83 */  sra        $a1, $a1, 0xe
/* C030 800A1430 00A22821 */  addu       $a1, $a1, $v0
/* C034 800A1434 8CA20000 */  lw         $v0, ($a1)
/* C038 800A1438 8C42000C */  lw         $v0, 0xc($v0)
/* C03C 800A143C 03E00008 */  jr         $ra
/* C040 800A1440 00000000 */   nop
