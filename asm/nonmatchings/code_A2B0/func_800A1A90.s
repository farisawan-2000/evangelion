.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A1A90
/* C690 800A1A90 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* C694 800A1A94 AFB20020 */  sw         $s2, 0x20($sp)
/* C698 800A1A98 00809021 */  addu       $s2, $a0, $zero
/* C69C 800A1A9C AFBF002C */  sw         $ra, 0x2c($sp)
/* C6A0 800A1AA0 AFB40028 */  sw         $s4, 0x28($sp)
/* C6A4 800A1AA4 AFB30024 */  sw         $s3, 0x24($sp)
/* C6A8 800A1AA8 AFB1001C */  sw         $s1, 0x1c($sp)
/* C6AC 800A1AAC AFB00018 */  sw         $s0, 0x18($sp)
/* C6B0 800A1AB0 8E420004 */  lw         $v0, 4($s2)
/* C6B4 800A1AB4 00A09821 */  addu       $s3, $a1, $zero
/* C6B8 800A1AB8 00008021 */  addu       $s0, $zero, $zero
/* C6BC 800A1ABC 8C430008 */  lw         $v1, 8($v0)
/* C6C0 800A1AC0 86440064 */  lh         $a0, 0x64($s2)
/* C6C4 800A1AC4 00C0A021 */  addu       $s4, $a2, $zero
/* C6C8 800A1AC8 1880000C */  blez       $a0, .L800A1AFC
/* C6CC 800A1ACC 00438821 */   addu      $s1, $v0, $v1
.L800A1AD0:
/* C6D0 800A1AD0 02202021 */  addu       $a0, $s1, $zero
/* C6D4 800A1AD4 0C0325FC */  jal        func_800C97F0
/* C6D8 800A1AD8 02602821 */   addu      $a1, $s3, $zero
/* C6DC 800A1ADC 54400003 */  bnezl      $v0, .L800A1AEC
/* C6E0 800A1AE0 26100001 */   addiu     $s0, $s0, 1
/* C6E4 800A1AE4 080286C0 */  j          .L800A1B00
/* C6E8 800A1AE8 02001821 */   addu      $v1, $s0, $zero
.L800A1AEC:
/* C6EC 800A1AEC 86420064 */  lh         $v0, 0x64($s2)
/* C6F0 800A1AF0 0202102A */  slt        $v0, $s0, $v0
/* C6F4 800A1AF4 1440FFF6 */  bnez       $v0, .L800A1AD0
/* C6F8 800A1AF8 26310014 */   addiu     $s1, $s1, 0x14
.L800A1AFC:
/* C6FC 800A1AFC 00001821 */  addu       $v1, $zero, $zero
.L800A1B00:
/* C700 800A1B00 8E420008 */  lw         $v0, 8($s2)
/* C704 800A1B04 3063FFFF */  andi       $v1, $v1, 0xffff
/* C708 800A1B08 00031880 */  sll        $v1, $v1, 2
/* C70C 800A1B0C 00621821 */  addu       $v1, $v1, $v0
/* C710 800A1B10 8C620000 */  lw         $v0, ($v1)
/* C714 800A1B14 A05400A4 */  sb         $s4, 0xa4($v0)
/* C718 800A1B18 8FBF002C */  lw         $ra, 0x2c($sp)
/* C71C 800A1B1C 8FB40028 */  lw         $s4, 0x28($sp)
/* C720 800A1B20 8FB30024 */  lw         $s3, 0x24($sp)
/* C724 800A1B24 8FB20020 */  lw         $s2, 0x20($sp)
/* C728 800A1B28 8FB1001C */  lw         $s1, 0x1c($sp)
/* C72C 800A1B2C 8FB00018 */  lw         $s0, 0x18($sp)
/* C730 800A1B30 27BD0030 */  addiu      $sp, $sp, 0x30
/* C734 800A1B34 03E00008 */  jr         $ra
/* C738 800A1B38 00000000 */   nop
