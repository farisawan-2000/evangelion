glabel func_800A1444
/* C044 800A1444 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C048 800A1448 AFB20020 */  sw         $s2, 0x20($sp)
/* C04C 800A144C 00809021 */  addu       $s2, $a0, $zero
/* C050 800A1450 AFBF0028 */  sw         $ra, 0x28($sp)
/* C054 800A1454 AFB30024 */  sw         $s3, 0x24($sp)
/* C058 800A1458 AFB1001C */  sw         $s1, 0x1C($sp)
/* C05C 800A145C AFB00018 */  sw         $s0, 0x18($sp)
/* C060 800A1460 8E420004 */  lw         $v0, 0x4($s2)
/* C064 800A1464 00A09821 */  addu       $s3, $a1, $zero
/* C068 800A1468 8C430008 */  lw         $v1, 0x8($v0)
/* C06C 800A146C 86440064 */  lh         $a0, 0x64($s2)
/* C070 800A1470 00008021 */  addu       $s0, $zero, $zero
/* C074 800A1474 1880000C */  blez       $a0, .L800A14A8
/* C078 800A1478 00438821 */   addu      $s1, $v0, $v1
.L800A147C:
/* C07C 800A147C 02202021 */  addu       $a0, $s1, $zero
/* C080 800A1480 0C0325FC */  jal        func_800C97F0
/* C084 800A1484 02602821 */   addu      $a1, $s3, $zero
/* C088 800A1488 54400003 */  bnel       $v0, $zero, .L800A1498
/* C08C 800A148C 26100001 */   addiu     $s0, $s0, 0x1
/* C090 800A1490 0802852B */  j          .L800A14AC
/* C094 800A1494 02001821 */   addu      $v1, $s0, $zero
.L800A1498:
/* C098 800A1498 86420064 */  lh         $v0, 0x64($s2)
/* C09C 800A149C 0202102A */  slt        $v0, $s0, $v0
/* C0A0 800A14A0 1440FFF6 */  bnez       $v0, .L800A147C
/* C0A4 800A14A4 26310014 */   addiu     $s1, $s1, 0x14
.L800A14A8:
/* C0A8 800A14A8 00001821 */  addu       $v1, $zero, $zero
.L800A14AC:
/* C0AC 800A14AC 8E420008 */  lw         $v0, 0x8($s2)
/* C0B0 800A14B0 00031C00 */  sll        $v1, $v1, 16
/* C0B4 800A14B4 00031B83 */  sra        $v1, $v1, 14
/* C0B8 800A14B8 00621821 */  addu       $v1, $v1, $v0
/* C0BC 800A14BC 8C620000 */  lw         $v0, 0x0($v1)
/* C0C0 800A14C0 8C42000C */  lw         $v0, 0xC($v0)
/* C0C4 800A14C4 8FBF0028 */  lw         $ra, 0x28($sp)
/* C0C8 800A14C8 8FB30024 */  lw         $s3, 0x24($sp)
/* C0CC 800A14CC 8FB20020 */  lw         $s2, 0x20($sp)
/* C0D0 800A14D0 8FB1001C */  lw         $s1, 0x1C($sp)
/* C0D4 800A14D4 8FB00018 */  lw         $s0, 0x18($sp)
/* C0D8 800A14D8 27BD0030 */  addiu      $sp, $sp, 0x30
/* C0DC 800A14DC 03E00008 */  jr         $ra
/* C0E0 800A14E0 00000000 */   nop
.size func_800A1444, . - func_800A1444
