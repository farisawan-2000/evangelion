glabel func_800C05B0
/* 2B1B0 800C05B0 80820000 */  lb         $v0, 0x0($a0)
/* 2B1B4 800C05B4 10400005 */  beqz       $v0, .L800C05CC
/* 2B1B8 800C05B8 00801821 */   addu      $v1, $a0, $zero
/* 2B1BC 800C05BC 24630001 */  addiu      $v1, $v1, 0x1
.L800C05C0:
/* 2B1C0 800C05C0 80620000 */  lb         $v0, 0x0($v1)
/* 2B1C4 800C05C4 5440FFFE */  bnel       $v0, $zero, .L800C05C0
/* 2B1C8 800C05C8 24630001 */   addiu     $v1, $v1, 0x1
.L800C05CC:
/* 2B1CC 800C05CC 03E00008 */  jr         $ra
/* 2B1D0 800C05D0 00641023 */   subu      $v0, $v1, $a0
.size func_800C05B0, . - func_800C05B0
