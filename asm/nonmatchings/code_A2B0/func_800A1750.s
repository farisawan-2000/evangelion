glabel func_800A1750
/* C350 800A1750 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C354 800A1754 AFB20020 */  sw         $s2, 0x20($sp)
/* C358 800A1758 00809021 */  addu       $s2, $a0, $zero
/* C35C 800A175C AFBF0028 */  sw         $ra, 0x28($sp)
/* C360 800A1760 AFB30024 */  sw         $s3, 0x24($sp)
/* C364 800A1764 AFB1001C */  sw         $s1, 0x1C($sp)
/* C368 800A1768 AFB00018 */  sw         $s0, 0x18($sp)
/* C36C 800A176C 8E420004 */  lw         $v0, 0x4($s2)
/* C370 800A1770 00A09821 */  addu       $s3, $a1, $zero
/* C374 800A1774 8C430008 */  lw         $v1, 0x8($v0)
/* C378 800A1778 86440064 */  lh         $a0, 0x64($s2)
/* C37C 800A177C 00008021 */  addu       $s0, $zero, $zero
/* C380 800A1780 1880000C */  blez       $a0, .L800A17B4
/* C384 800A1784 00438821 */   addu      $s1, $v0, $v1
.L800A1788:
/* C388 800A1788 02202021 */  addu       $a0, $s1, $zero
/* C38C 800A178C 0C0325FC */  jal        func_800C97F0
/* C390 800A1790 02602821 */   addu      $a1, $s3, $zero
/* C394 800A1794 54400003 */  bnel       $v0, $zero, .L800A17A4
/* C398 800A1798 26100001 */   addiu     $s0, $s0, 0x1
/* C39C 800A179C 080285EE */  j          .L800A17B8
/* C3A0 800A17A0 02001821 */   addu      $v1, $s0, $zero
.L800A17A4:
/* C3A4 800A17A4 86420064 */  lh         $v0, 0x64($s2)
/* C3A8 800A17A8 0202102A */  slt        $v0, $s0, $v0
/* C3AC 800A17AC 1440FFF6 */  bnez       $v0, .L800A1788
/* C3B0 800A17B0 26310014 */   addiu     $s1, $s1, 0x14
.L800A17B4:
/* C3B4 800A17B4 00001821 */  addu       $v1, $zero, $zero
.L800A17B8:
/* C3B8 800A17B8 8E420008 */  lw         $v0, 0x8($s2)
/* C3BC 800A17BC 00031C00 */  sll        $v1, $v1, 16
/* C3C0 800A17C0 00031B83 */  sra        $v1, $v1, 14
/* C3C4 800A17C4 00621821 */  addu       $v1, $v1, $v0
/* C3C8 800A17C8 8C620000 */  lw         $v0, 0x0($v1)
/* C3CC 800A17CC 8C420008 */  lw         $v0, 0x8($v0)
/* C3D0 800A17D0 8FBF0028 */  lw         $ra, 0x28($sp)
/* C3D4 800A17D4 8FB30024 */  lw         $s3, 0x24($sp)
/* C3D8 800A17D8 8FB20020 */  lw         $s2, 0x20($sp)
/* C3DC 800A17DC 8FB1001C */  lw         $s1, 0x1C($sp)
/* C3E0 800A17E0 8FB00018 */  lw         $s0, 0x18($sp)
/* C3E4 800A17E4 27BD0030 */  addiu      $sp, $sp, 0x30
/* C3E8 800A17E8 03E00008 */  jr         $ra
/* C3EC 800A17EC 00000000 */   nop
.size func_800A1750, . - func_800A1750
