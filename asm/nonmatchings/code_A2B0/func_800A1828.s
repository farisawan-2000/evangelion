.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A1828
/* C428 800A1828 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C42C 800A182C AFB20020 */  sw         $s2, 0x20($sp)
/* C430 800A1830 00809021 */  addu       $s2, $a0, $zero
/* C434 800A1834 AFBF0028 */  sw         $ra, 0x28($sp)
/* C438 800A1838 AFB30024 */  sw         $s3, 0x24($sp)
/* C43C 800A183C AFB1001C */  sw         $s1, 0x1c($sp)
/* C440 800A1840 AFB00018 */  sw         $s0, 0x18($sp)
/* C444 800A1844 8E420004 */  lw         $v0, 4($s2)
/* C448 800A1848 00A09821 */  addu       $s3, $a1, $zero
/* C44C 800A184C 8C430008 */  lw         $v1, 8($v0)
/* C450 800A1850 86440064 */  lh         $a0, 0x64($s2)
/* C454 800A1854 00008021 */  addu       $s0, $zero, $zero
/* C458 800A1858 1880000B */  blez       $a0, .L800A1888
/* C45C 800A185C 00438821 */   addu      $s1, $v0, $v1
.L800A1860:
/* C460 800A1860 02202021 */  addu       $a0, $s1, $zero
/* C464 800A1864 0C0325FC */  jal        func_800C97F0
/* C468 800A1868 02602821 */   addu      $a1, $s3, $zero
/* C46C 800A186C 10400007 */  beqz       $v0, .L800A188C
/* C470 800A1870 02001821 */   addu      $v1, $s0, $zero
/* C474 800A1874 86420064 */  lh         $v0, 0x64($s2)
/* C478 800A1878 26100001 */  addiu      $s0, $s0, 1
/* C47C 800A187C 0202102A */  slt        $v0, $s0, $v0
/* C480 800A1880 1440FFF7 */  bnez       $v0, .L800A1860
/* C484 800A1884 26310014 */   addiu     $s1, $s1, 0x14
.L800A1888:
/* C488 800A1888 00001821 */  addu       $v1, $zero, $zero
.L800A188C:
/* C48C 800A188C 8E420008 */  lw         $v0, 8($s2)
/* C490 800A1890 00031C00 */  sll        $v1, $v1, 0x10
/* C494 800A1894 00031B83 */  sra        $v1, $v1, 0xe
/* C498 800A1898 00621821 */  addu       $v1, $v1, $v0
/* C49C 800A189C 8C620000 */  lw         $v0, ($v1)
/* C4A0 800A18A0 8C420004 */  lw         $v0, 4($v0)
/* C4A4 800A18A4 50400003 */  beql       $v0, $zero, .L800A18B4
/* C4A8 800A18A8 00001021 */   addu      $v0, $zero, $zero
/* C4AC 800A18AC 90420005 */  lbu        $v0, 5($v0)
/* C4B0 800A18B0 000210C0 */  sll        $v0, $v0, 3
.L800A18B4:
/* C4B4 800A18B4 8FBF0028 */  lw         $ra, 0x28($sp)
/* C4B8 800A18B8 8FB30024 */  lw         $s3, 0x24($sp)
/* C4BC 800A18BC 8FB20020 */  lw         $s2, 0x20($sp)
/* C4C0 800A18C0 8FB1001C */  lw         $s1, 0x1c($sp)
/* C4C4 800A18C4 8FB00018 */  lw         $s0, 0x18($sp)
/* C4C8 800A18C8 27BD0030 */  addiu      $sp, $sp, 0x30
/* C4CC 800A18CC 03E00008 */  jr         $ra
/* C4D0 800A18D0 00000000 */   nop
