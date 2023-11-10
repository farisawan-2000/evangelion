glabel func_800A1C80
/* C880 800A1C80 84890064 */  lh         $t1, 0x64($a0)
/* C884 800A1C84 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* C888 800A1C88 1920001E */  blez       $t1, .L800A1D04
/* C88C 800A1C8C 00003821 */   addu      $a3, $zero, $zero
.L800A1C90:
/* C890 800A1C90 8C830008 */  lw         $v1, 0x8($a0)
/* C894 800A1C94 00071400 */  sll        $v0, $a3, 16
/* C898 800A1C98 00021383 */  sra        $v0, $v0, 14
/* C89C 800A1C9C 00431021 */  addu       $v0, $v0, $v1
/* C8A0 800A1CA0 8C430000 */  lw         $v1, 0x0($v0)
/* C8A4 800A1CA4 8C620010 */  lw         $v0, 0x10($v1)
/* C8A8 800A1CA8 8C63000C */  lw         $v1, 0xC($v1)
/* C8AC 800A1CAC 00021300 */  sll        $v0, $v0, 12
/* C8B0 800A1CB0 00024403 */  sra        $t0, $v0, 16
/* C8B4 800A1CB4 1900000F */  blez       $t0, .L800A1CF4
/* C8B8 800A1CB8 00003021 */   addu      $a2, $zero, $zero
/* C8BC 800A1CBC 2463000E */  addiu      $v1, $v1, 0xE
.L800A1CC0:
/* C8C0 800A1CC0 90A20000 */  lbu        $v0, 0x0($a1)
/* C8C4 800A1CC4 24A50001 */  addiu      $a1, $a1, 0x1
/* C8C8 800A1CC8 A062FFFE */  sb         $v0, -0x2($v1)
/* C8CC 800A1CCC 90A20000 */  lbu        $v0, 0x0($a1)
/* C8D0 800A1CD0 24A50001 */  addiu      $a1, $a1, 0x1
/* C8D4 800A1CD4 A062FFFF */  sb         $v0, -0x1($v1)
/* C8D8 800A1CD8 90A20000 */  lbu        $v0, 0x0($a1)
/* C8DC 800A1CDC 24C60001 */  addiu      $a2, $a2, 0x1
/* C8E0 800A1CE0 24A50001 */  addiu      $a1, $a1, 0x1
/* C8E4 800A1CE4 A0620000 */  sb         $v0, 0x0($v1)
/* C8E8 800A1CE8 00C8102A */  slt        $v0, $a2, $t0
/* C8EC 800A1CEC 1440FFF4 */  bnez       $v0, .L800A1CC0
/* C8F0 800A1CF0 24630010 */   addiu     $v1, $v1, 0x10
.L800A1CF4:
/* C8F4 800A1CF4 24E70001 */  addiu      $a3, $a3, 0x1
/* C8F8 800A1CF8 00E9102A */  slt        $v0, $a3, $t1
/* C8FC 800A1CFC 1440FFE4 */  bnez       $v0, .L800A1C90
/* C900 800A1D00 00000000 */   nop
.L800A1D04:
/* C904 800A1D04 27BD0010 */  addiu      $sp, $sp, 0x10
/* C908 800A1D08 03E00008 */  jr         $ra
/* C90C 800A1D0C 00000000 */   nop
.size func_800A1C80, . - func_800A1C80
