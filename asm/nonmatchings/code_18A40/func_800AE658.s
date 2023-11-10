glabel func_800AE658
/* 19258 800AE658 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 1925C 800AE65C 14A00002 */  bnez       $a1, .L800AE668
/* 19260 800AE660 00A04021 */   addu      $t0, $a1, $zero
/* 19264 800AE664 24080001 */  addiu      $t0, $zero, 0x1
.L800AE668:
/* 19268 800AE668 3C028010 */  lui        $v0, %hi(D_80102944)
/* 1926C 800AE66C 8C422944 */  lw         $v0, %lo(D_80102944)($v0)
/* 19270 800AE670 3C068010 */  lui        $a2, %hi(D_8010294C)
/* 19274 800AE674 8CC6294C */  lw         $a2, %lo(D_8010294C)($a2)
/* 19278 800AE678 18400027 */  blez       $v0, .L800AE718
/* 1927C 800AE67C 00003821 */   addu      $a3, $zero, $zero
/* 19280 800AE680 308A0001 */  andi       $t2, $a0, 0x1
/* 19284 800AE684 30840002 */  andi       $a0, $a0, 0x2
/* 19288 800AE688 240DFFFF */  addiu      $t5, $zero, -0x1
/* 1928C 800AE68C 240C0001 */  addiu      $t4, $zero, 0x1
/* 19290 800AE690 240BFFFE */  addiu      $t3, $zero, -0x2
/* 19294 800AE694 00404821 */  addu       $t1, $v0, $zero
/* 19298 800AE698 24C30010 */  addiu      $v1, $a2, 0x10
.L800AE69C:
/* 1929C 800AE69C 8C620068 */  lw         $v0, 0x68($v1)
/* 192A0 800AE6A0 10400005 */  beqz       $v0, .L800AE6B8
/* 192A4 800AE6A4 00000000 */   nop
/* 192A8 800AE6A8 15400005 */  bnez       $t2, .L800AE6C0
/* 192AC 800AE6AC 00000000 */   nop
/* 192B0 800AE6B0 0802B9C2 */  j          .L800AE708
/* 192B4 800AE6B4 24E70001 */   addiu     $a3, $a3, 0x1
.L800AE6B8:
/* 192B8 800AE6B8 50800013 */  beql       $a0, $zero, .L800AE708
/* 192BC 800AE6BC 24E70001 */   addiu     $a3, $a3, 0x1
.L800AE6C0:
/* 192C0 800AE6C0 8C62FFF4 */  lw         $v0, -0xC($v1)
/* 192C4 800AE6C4 50400010 */  beql       $v0, $zero, .L800AE708
/* 192C8 800AE6C8 24E70001 */   addiu     $a3, $a3, 0x1
/* 192CC 800AE6CC 8C620000 */  lw         $v0, 0x0($v1)
/* 192D0 800AE6D0 544D000D */  bnel       $v0, $t5, .L800AE708
/* 192D4 800AE6D4 24E70001 */   addiu     $a3, $a3, 0x1
/* 192D8 800AE6D8 8CC20000 */  lw         $v0, 0x0($a2)
/* 192DC 800AE6DC 30420001 */  andi       $v0, $v0, 0x1
/* 192E0 800AE6E0 50400007 */  beql       $v0, $zero, .L800AE700
/* 192E4 800AE6E4 AC68000C */   sw        $t0, 0xC($v1)
/* 192E8 800AE6E8 AC6C000C */  sw         $t4, 0xC($v1)
/* 192EC 800AE6EC AC600000 */  sw         $zero, 0x0($v1)
/* 192F0 800AE6F0 8CC20000 */  lw         $v0, 0x0($a2)
/* 192F4 800AE6F4 004B1024 */  and        $v0, $v0, $t3
/* 192F8 800AE6F8 0802B9C1 */  j          .L800AE704
/* 192FC 800AE6FC ACC20000 */   sw        $v0, 0x0($a2)
.L800AE700:
/* 19300 800AE700 AC650000 */  sw         $a1, 0x0($v1)
.L800AE704:
/* 19304 800AE704 24E70001 */  addiu      $a3, $a3, 0x1
.L800AE708:
/* 19308 800AE708 2463013C */  addiu      $v1, $v1, 0x13C
/* 1930C 800AE70C 00E9102A */  slt        $v0, $a3, $t1
/* 19310 800AE710 1440FFE2 */  bnez       $v0, .L800AE69C
/* 19314 800AE714 24C6013C */   addiu     $a2, $a2, 0x13C
.L800AE718:
/* 19318 800AE718 27BD0008 */  addiu      $sp, $sp, 0x8
/* 1931C 800AE71C 03E00008 */  jr         $ra
/* 19320 800AE720 00000000 */   nop
.size func_800AE658, . - func_800AE658
