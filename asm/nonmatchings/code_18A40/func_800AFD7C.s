glabel func_800AFD7C
/* 1A97C 800AFD7C 908600D4 */  lbu        $a2, 0xD4($a0)
/* 1A980 800AFD80 2408007F */  addiu      $t0, $zero, 0x7F
/* 1A984 800AFD84 24070001 */  addiu      $a3, $zero, 0x1
.L800AFD88:
/* 1A988 800AFD88 908200D9 */  lbu        $v0, 0xD9($a0)
/* 1A98C 800AFD8C 8C830094 */  lw         $v1, 0x94($a0)
/* 1A990 800AFD90 00462821 */  addu       $a1, $v0, $a2
/* 1A994 800AFD94 24630100 */  addiu      $v1, $v1, 0x100
/* 1A998 800AFD98 2CA20040 */  sltiu      $v0, $a1, 0x40
/* 1A99C 800AFD9C 10400003 */  beqz       $v0, .L800AFDAC
/* 1A9A0 800AFDA0 AC830094 */   sw        $v1, 0x94($a0)
/* 1A9A4 800AFDA4 0802BF86 */  j          .L800AFE18
/* 1A9A8 800AFDA8 A08500D9 */   sb        $a1, 0xD9($a0)
.L800AFDAC:
/* 1A9AC 800AFDAC 908300DA */  lbu        $v1, 0xDA($a0)
/* 1A9B0 800AFDB0 30A2003F */  andi       $v0, $a1, 0x3F
/* 1A9B4 800AFDB4 00052982 */  srl        $a1, $a1, 6
/* 1A9B8 800AFDB8 1460000B */  bnez       $v1, .L800AFDE8
/* 1A9BC 800AFDBC A08200D9 */   sb        $v0, 0xD9($a0)
/* 1A9C0 800AFDC0 908200BD */  lbu        $v0, 0xBD($a0)
/* 1A9C4 800AFDC4 00451021 */  addu       $v0, $v0, $a1
/* 1A9C8 800AFDC8 A08200BD */  sb         $v0, 0xBD($a0)
/* 1A9CC 800AFDCC 304200FF */  andi       $v0, $v0, 0xFF
/* 1A9D0 800AFDD0 2C420080 */  sltiu      $v0, $v0, 0x80
/* 1A9D4 800AFDD4 14400010 */  bnez       $v0, .L800AFE18
/* 1A9D8 800AFDD8 00000000 */   nop
/* 1A9DC 800AFDDC A08800BD */  sb         $t0, 0xBD($a0)
/* 1A9E0 800AFDE0 0802BF86 */  j          .L800AFE18
/* 1A9E4 800AFDE4 A08700DA */   sb        $a3, 0xDA($a0)
.L800AFDE8:
/* 1A9E8 800AFDE8 908200BD */  lbu        $v0, 0xBD($a0)
/* 1A9EC 800AFDEC 00451023 */  subu       $v0, $v0, $a1
/* 1A9F0 800AFDF0 A08200BD */  sb         $v0, 0xBD($a0)
/* 1A9F4 800AFDF4 304200FF */  andi       $v0, $v0, 0xFF
/* 1A9F8 800AFDF8 2C430080 */  sltiu      $v1, $v0, 0x80
/* 1A9FC 800AFDFC 38630001 */  xori       $v1, $v1, 0x1
/* 1AA00 800AFE00 2C420001 */  sltiu      $v0, $v0, 0x1
/* 1AA04 800AFE04 00621825 */  or         $v1, $v1, $v0
/* 1AA08 800AFE08 10600003 */  beqz       $v1, .L800AFE18
/* 1AA0C 800AFE0C 00000000 */   nop
/* 1AA10 800AFE10 A08000BD */  sb         $zero, 0xBD($a0)
/* 1AA14 800AFE14 A08000DA */  sb         $zero, 0xDA($a0)
.L800AFE18:
/* 1AA18 800AFE18 8C820094 */  lw         $v0, 0x94($a0)
/* 1AA1C 800AFE1C 8C83000C */  lw         $v1, 0xC($a0)
/* 1AA20 800AFE20 00431023 */  subu       $v0, $v0, $v1
/* 1AA24 800AFE24 0440FFD8 */  bltz       $v0, .L800AFD88
/* 1AA28 800AFE28 00000000 */   nop
/* 1AA2C 800AFE2C 03E00008 */  jr         $ra
/* 1AA30 800AFE30 00000000 */   nop
.size func_800AFD7C, . - func_800AFD7C
