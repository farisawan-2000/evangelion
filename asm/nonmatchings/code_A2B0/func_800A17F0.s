glabel func_800A17F0
/* C3F0 800A17F0 8C820008 */  lw         $v0, 0x8($a0)
/* C3F4 800A17F4 00052C00 */  sll        $a1, $a1, 16
/* C3F8 800A17F8 00052B83 */  sra        $a1, $a1, 14
/* C3FC 800A17FC 00A22821 */  addu       $a1, $a1, $v0
/* C400 800A1800 8CA20000 */  lw         $v0, 0x0($a1)
/* C404 800A1804 8C420004 */  lw         $v0, 0x4($v0)
/* C408 800A1808 14400003 */  bnez       $v0, .L800A1818
/* C40C 800A180C 00000000 */   nop
/* C410 800A1810 08028608 */  j          .L800A1820
/* C414 800A1814 00001021 */   addu      $v0, $zero, $zero
.L800A1818:
/* C418 800A1818 90420005 */  lbu        $v0, 0x5($v0)
/* C41C 800A181C 000210C0 */  sll        $v0, $v0, 3
.L800A1820:
/* C420 800A1820 03E00008 */  jr         $ra
/* C424 800A1824 00000000 */   nop
.size func_800A17F0, . - func_800A17F0