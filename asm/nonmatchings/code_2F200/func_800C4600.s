glabel func_800C4600
/* 2F200 800C4600 27BDFFF8 */  addiu      $sp, $sp, -0x8
/* 2F204 800C4604 00001821 */  addu       $v1, $zero, $zero
/* 2F208 800C4608 18A00007 */  blez       $a1, .L800C4628
/* 2F20C 800C460C 00003021 */   addu      $a2, $zero, $zero
.L800C4610:
/* 2F210 800C4610 90820000 */  lbu        $v0, 0x0($a0)
/* 2F214 800C4614 24630001 */  addiu      $v1, $v1, 0x1
/* 2F218 800C4618 00C23021 */  addu       $a2, $a2, $v0
/* 2F21C 800C461C 0065102A */  slt        $v0, $v1, $a1
/* 2F220 800C4620 1440FFFB */  bnez       $v0, .L800C4610
/* 2F224 800C4624 24840001 */   addiu     $a0, $a0, 0x1
.L800C4628:
/* 2F228 800C4628 30C2FFFF */  andi       $v0, $a2, 0xFFFF
/* 2F22C 800C462C 03E00008 */  jr         $ra
/* 2F230 800C4630 27BD0008 */   addiu     $sp, $sp, 0x8
.size func_800C4600, . - func_800C4600
