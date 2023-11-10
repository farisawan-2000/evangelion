glabel func_800BAC30
/* 25830 800BAC30 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 25834 800BAC34 AFB40030 */  sw         $s4, 0x30($sp)
/* 25838 800BAC38 00A0A021 */  addu       $s4, $a1, $zero
/* 2583C 800BAC3C AFB3002C */  sw         $s3, 0x2C($sp)
/* 25840 800BAC40 00C09821 */  addu       $s3, $a2, $zero
/* 25844 800BAC44 AFB50034 */  sw         $s5, 0x34($sp)
/* 25848 800BAC48 00E0A821 */  addu       $s5, $a3, $zero
/* 2584C 800BAC4C 8FA60050 */  lw         $a2, 0x50($sp)
/* 25850 800BAC50 3C030200 */  lui        $v1, (0x20006C0 >> 16)
/* 25854 800BAC54 346306C0 */  ori        $v1, $v1, (0x20006C0 & 0xFFFF)
/* 25858 800BAC58 3C050200 */  lui        $a1, (0x2000800 >> 16)
/* 2585C 800BAC5C 34A50800 */  ori        $a1, $a1, (0x2000800 & 0xFFFF)
/* 25860 800BAC60 AFB20028 */  sw         $s2, 0x28($sp)
/* 25864 800BAC64 00809021 */  addu       $s2, $a0, $zero
/* 25868 800BAC68 AFBF0038 */  sw         $ra, 0x38($sp)
/* 2586C 800BAC6C AFB10024 */  sw         $s1, 0x24($sp)
/* 25870 800BAC70 AFB00020 */  sw         $s0, 0x20($sp)
/* 25874 800BAC74 8E44001C */  lw         $a0, 0x1C($s2)
/* 25878 800BAC78 00C01021 */  addu       $v0, $a2, $zero
/* 2587C 800BAC7C 24C60008 */  addiu      $a2, $a2, 0x8
/* 25880 800BAC80 AC430000 */  sw         $v1, 0x0($v0)
/* 25884 800BAC84 00131840 */  sll        $v1, $s3, 1
/* 25888 800BAC88 AC430004 */  sw         $v1, 0x4($v0)
/* 2588C 800BAC8C 00C01021 */  addu       $v0, $a2, $zero
/* 25890 800BAC90 AC450000 */  sw         $a1, 0x0($v0)
/* 25894 800BAC94 AC430004 */  sw         $v1, 0x4($v0)
/* 25898 800BAC98 8E420014 */  lw         $v0, 0x14($s2)
/* 2589C 800BAC9C 00008821 */  addu       $s1, $zero, $zero
/* 258A0 800BACA0 18400010 */  blez       $v0, .L800BACE4
/* 258A4 800BACA4 24C60008 */   addiu     $a2, $a2, 0x8
/* 258A8 800BACA8 00808021 */  addu       $s0, $a0, $zero
.L800BACAC:
/* 258AC 800BACAC 8E020000 */  lw         $v0, 0x0($s0)
/* 258B0 800BACB0 AFA60010 */  sw         $a2, 0x10($sp)
/* 258B4 800BACB4 8E040000 */  lw         $a0, 0x0($s0)
/* 258B8 800BACB8 26100004 */  addiu      $s0, $s0, 0x4
/* 258BC 800BACBC 02802821 */  addu       $a1, $s4, $zero
/* 258C0 800BACC0 8C420004 */  lw         $v0, 0x4($v0)
/* 258C4 800BACC4 02603021 */  addu       $a2, $s3, $zero
/* 258C8 800BACC8 0040F809 */  jalr       $v0
/* 258CC 800BACCC 02A03821 */   addu      $a3, $s5, $zero
/* 258D0 800BACD0 8E430014 */  lw         $v1, 0x14($s2)
/* 258D4 800BACD4 26310001 */  addiu      $s1, $s1, 0x1
/* 258D8 800BACD8 0223182A */  slt        $v1, $s1, $v1
/* 258DC 800BACDC 1460FFF3 */  bnez       $v1, .L800BACAC
/* 258E0 800BACE0 00403021 */   addu      $a2, $v0, $zero
.L800BACE4:
/* 258E4 800BACE4 00C01021 */  addu       $v0, $a2, $zero
/* 258E8 800BACE8 8FBF0038 */  lw         $ra, 0x38($sp)
/* 258EC 800BACEC 8FB50034 */  lw         $s5, 0x34($sp)
/* 258F0 800BACF0 8FB40030 */  lw         $s4, 0x30($sp)
/* 258F4 800BACF4 8FB3002C */  lw         $s3, 0x2C($sp)
/* 258F8 800BACF8 8FB20028 */  lw         $s2, 0x28($sp)
/* 258FC 800BACFC 8FB10024 */  lw         $s1, 0x24($sp)
/* 25900 800BAD00 8FB00020 */  lw         $s0, 0x20($sp)
/* 25904 800BAD04 03E00008 */  jr         $ra
/* 25908 800BAD08 27BD0040 */   addiu     $sp, $sp, 0x40
.size func_800BAC30, . - func_800BAC30
