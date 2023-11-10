glabel func_800AFEF0
/* 1AAF0 800AFEF0 00803021 */  addu       $a2, $a0, $zero
/* 1AAF4 800AFEF4 24070001 */  addiu      $a3, $zero, 0x1
.L800AFEF8:
/* 1AAF8 800AFEF8 94C300A2 */  lhu        $v1, 0xA2($a2)
/* 1AAFC 800AFEFC 8CC20014 */  lw         $v0, 0x14($a2)
/* 1AB00 800AFF00 2463FFFF */  addiu      $v1, $v1, -0x1
/* 1AB04 800AFF04 24420100 */  addiu      $v0, $v0, 0x100
/* 1AB08 800AFF08 A4C300A2 */  sh         $v1, 0xA2($a2)
/* 1AB0C 800AFF0C 3063FFFF */  andi       $v1, $v1, 0xFFFF
/* 1AB10 800AFF10 14600021 */  bnez       $v1, .L800AFF98
/* 1AB14 800AFF14 ACC20014 */   sw        $v0, 0x14($a2)
/* 1AB18 800AFF18 8CC30038 */  lw         $v1, 0x38($a2)
/* 1AB1C 800AFF1C 24620001 */  addiu      $v0, $v1, 0x1
/* 1AB20 800AFF20 ACC20038 */  sw         $v0, 0x38($a2)
/* 1AB24 800AFF24 90650000 */  lbu        $a1, 0x0($v1)
/* 1AB28 800AFF28 30A200FF */  andi       $v0, $a1, 0xFF
/* 1AB2C 800AFF2C 2C420080 */  sltiu      $v0, $v0, 0x80
/* 1AB30 800AFF30 54400018 */  bnel       $v0, $zero, .L800AFF94
/* 1AB34 800AFF34 A0C500BC */   sb        $a1, 0xBC($a2)
/* 1AB38 800AFF38 8CC30038 */  lw         $v1, 0x38($a2)
/* 1AB3C 800AFF3C 30A2007F */  andi       $v0, $a1, 0x7F
/* 1AB40 800AFF40 A0C200BC */  sb         $v0, 0xBC($a2)
/* 1AB44 800AFF44 24620001 */  addiu      $v0, $v1, 0x1
/* 1AB48 800AFF48 ACC20038 */  sw         $v0, 0x38($a2)
/* 1AB4C 800AFF4C 90650000 */  lbu        $a1, 0x0($v1)
/* 1AB50 800AFF50 30A200FF */  andi       $v0, $a1, 0xFF
/* 1AB54 800AFF54 2C420080 */  sltiu      $v0, $v0, 0x80
/* 1AB58 800AFF58 1440000C */  bnez       $v0, .L800AFF8C
/* 1AB5C 800AFF5C 24A20002 */   addiu     $v0, $a1, 0x2
/* 1AB60 800AFF60 8CC40038 */  lw         $a0, 0x38($a2)
/* 1AB64 800AFF64 30A3007F */  andi       $v1, $a1, 0x7F
/* 1AB68 800AFF68 00031A00 */  sll        $v1, $v1, 8
/* 1AB6C 800AFF6C A4C300A2 */  sh         $v1, 0xA2($a2)
/* 1AB70 800AFF70 24820001 */  addiu      $v0, $a0, 0x1
/* 1AB74 800AFF74 ACC20038 */  sw         $v0, 0x38($a2)
/* 1AB78 800AFF78 90820000 */  lbu        $v0, 0x0($a0)
/* 1AB7C 800AFF7C 24630002 */  addiu      $v1, $v1, 0x2
/* 1AB80 800AFF80 00431021 */  addu       $v0, $v0, $v1
/* 1AB84 800AFF84 0802BFE6 */  j          .L800AFF98
/* 1AB88 800AFF88 A4C200A2 */   sh        $v0, 0xA2($a2)
.L800AFF8C:
/* 1AB8C 800AFF8C 0802BFE6 */  j          .L800AFF98
/* 1AB90 800AFF90 A4C200A2 */   sh        $v0, 0xA2($a2)
.L800AFF94:
/* 1AB94 800AFF94 A4C700A2 */  sh         $a3, 0xA2($a2)
.L800AFF98:
/* 1AB98 800AFF98 8CC20014 */  lw         $v0, 0x14($a2)
/* 1AB9C 800AFF9C 8CC3000C */  lw         $v1, 0xC($a2)
/* 1ABA0 800AFFA0 00431023 */  subu       $v0, $v0, $v1
/* 1ABA4 800AFFA4 0440FFD4 */  bltz       $v0, .L800AFEF8
/* 1ABA8 800AFFA8 00000000 */   nop
/* 1ABAC 800AFFAC 03E00008 */  jr         $ra
/* 1ABB0 800AFFB0 00000000 */   nop
.size func_800AFEF0, . - func_800AFEF0
