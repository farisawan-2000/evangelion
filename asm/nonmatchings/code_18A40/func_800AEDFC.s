glabel func_800AEDFC
/* 199FC 800AEDFC 14800006 */  bnez       $a0, .L800AEE18
/* 19A00 800AEE00 27BDFFF8 */   addiu     $sp, $sp, -0x8
/* 19A04 800AEE04 0802BB9B */  j          .L800AEE6C
/* 19A08 800AEE08 00001021 */   addu      $v0, $zero, $zero
.L800AEE0C:
/* 19A0C 800AEE0C 8C420020 */  lw         $v0, 0x20($v0)
/* 19A10 800AEE10 0802BB9B */  j          .L800AEE6C
/* 19A14 800AEE14 00000000 */   nop
.L800AEE18:
/* 19A18 800AEE18 3C038010 */  lui        $v1, %hi(D_80102944)
/* 19A1C 800AEE1C 8C632944 */  lw         $v1, %lo(D_80102944)($v1)
/* 19A20 800AEE20 3C028010 */  lui        $v0, %hi(D_8010294C)
/* 19A24 800AEE24 8C42294C */  lw         $v0, %lo(D_8010294C)($v0)
/* 19A28 800AEE28 1860000F */  blez       $v1, .L800AEE68
/* 19A2C 800AEE2C 00002821 */   addu      $a1, $zero, $zero
/* 19A30 800AEE30 00603021 */  addu       $a2, $v1, $zero
/* 19A34 800AEE34 24430078 */  addiu      $v1, $v0, 0x78
.L800AEE38:
/* 19A38 800AEE38 8C62FFCC */  lw         $v0, -0x34($v1)
/* 19A3C 800AEE3C 54440007 */  bnel       $v0, $a0, .L800AEE5C
/* 19A40 800AEE40 24A50001 */   addiu     $a1, $a1, 0x1
/* 19A44 800AEE44 8C62FFFC */  lw         $v0, -0x4($v1)
/* 19A48 800AEE48 1440FFF0 */  bnez       $v0, .L800AEE0C
/* 19A4C 800AEE4C 00000000 */   nop
/* 19A50 800AEE50 8C620000 */  lw         $v0, 0x0($v1)
/* 19A54 800AEE54 0802BB9B */  j          .L800AEE6C
/* 19A58 800AEE58 8C420014 */   lw        $v0, 0x14($v0)
.L800AEE5C:
/* 19A5C 800AEE5C 00A6102A */  slt        $v0, $a1, $a2
/* 19A60 800AEE60 1440FFF5 */  bnez       $v0, .L800AEE38
/* 19A64 800AEE64 2463013C */   addiu     $v1, $v1, 0x13C
.L800AEE68:
/* 19A68 800AEE68 00001021 */  addu       $v0, $zero, $zero
.L800AEE6C:
/* 19A6C 800AEE6C 03E00008 */  jr         $ra
/* 19A70 800AEE70 27BD0008 */   addiu     $sp, $sp, 0x8
.size func_800AEDFC, . - func_800AEDFC
