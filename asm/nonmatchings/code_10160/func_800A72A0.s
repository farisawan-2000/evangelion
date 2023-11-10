glabel func_800A72A0
/* 11EA0 800A72A0 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 11EA4 800A72A4 00003021 */  addu       $a2, $zero, $zero
/* 11EA8 800A72A8 84820000 */  lh         $v0, 0x0($a0)
/* 11EAC 800A72AC 94830000 */  lhu        $v1, 0x0($a0)
/* 11EB0 800A72B0 1040000F */  beqz       $v0, .L800A72F0
/* 11EB4 800A72B4 00002821 */   addu      $a1, $zero, $zero
/* 11EB8 800A72B8 24070001 */  addiu      $a3, $zero, 0x1
/* 11EBC 800A72BC 00031400 */  sll        $v0, $v1, 16
.L800A72C0:
/* 11EC0 800A72C0 00021403 */  sra        $v0, $v0, 16
/* 11EC4 800A72C4 54470005 */  bnel       $v0, $a3, .L800A72DC
/* 11EC8 800A72C8 24A50001 */   addiu     $a1, $a1, 0x1
/* 11ECC 800A72CC 00C5102A */  slt        $v0, $a2, $a1
/* 11ED0 800A72D0 54400001 */  bnel       $v0, $zero, .L800A72D8
/* 11ED4 800A72D4 00A03021 */   addu      $a2, $a1, $zero
.L800A72D8:
/* 11ED8 800A72D8 00002821 */  addu       $a1, $zero, $zero
.L800A72DC:
/* 11EDC 800A72DC 24840002 */  addiu      $a0, $a0, 0x2
/* 11EE0 800A72E0 84820000 */  lh         $v0, 0x0($a0)
/* 11EE4 800A72E4 94830000 */  lhu        $v1, 0x0($a0)
/* 11EE8 800A72E8 1440FFF5 */  bnez       $v0, .L800A72C0
/* 11EEC 800A72EC 00031400 */   sll       $v0, $v1, 16
.L800A72F0:
/* 11EF0 800A72F0 00C5102A */  slt        $v0, $a2, $a1
/* 11EF4 800A72F4 54400001 */  bnel       $v0, $zero, .L800A72FC
/* 11EF8 800A72F8 00A03021 */   addu      $a2, $a1, $zero
.L800A72FC:
/* 11EFC 800A72FC 00C01021 */  addu       $v0, $a2, $zero
/* 11F00 800A7300 27BD0010 */  addiu      $sp, $sp, 0x10
/* 11F04 800A7304 03E00008 */  jr         $ra
/* 11F08 800A7308 00000000 */   nop
.size func_800A72A0, . - func_800A72A0
