.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A1370
/* BF70 800A1370 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* BF74 800A1374 AFB20020 */  sw         $s2, 0x20($sp)
/* BF78 800A1378 00809021 */  addu       $s2, $a0, $zero
/* BF7C 800A137C AFBF0028 */  sw         $ra, 0x28($sp)
/* BF80 800A1380 AFB30024 */  sw         $s3, 0x24($sp)
/* BF84 800A1384 AFB1001C */  sw         $s1, 0x1c($sp)
/* BF88 800A1388 AFB00018 */  sw         $s0, 0x18($sp)
/* BF8C 800A138C 8E420004 */  lw         $v0, 4($s2)
/* BF90 800A1390 00A09821 */  addu       $s3, $a1, $zero
/* BF94 800A1394 8C430008 */  lw         $v1, 8($v0)
/* BF98 800A1398 86440064 */  lh         $a0, 0x64($s2)
/* BF9C 800A139C 00008021 */  addu       $s0, $zero, $zero
/* BFA0 800A13A0 1880000D */  blez       $a0, .L800A13D8
/* BFA4 800A13A4 00438821 */   addu      $s1, $v0, $v1
.L800A13A8:
/* BFA8 800A13A8 02202021 */  addu       $a0, $s1, $zero
/* BFAC 800A13AC 0C0325FC */  jal        func_800C97F0
/* BFB0 800A13B0 02602821 */   addu      $a1, $s3, $zero
/* BFB4 800A13B4 54400004 */  bnezl      $v0, .L800A13C8
/* BFB8 800A13B8 26100001 */   addiu     $s0, $s0, 1
/* BFBC 800A13BC 00101400 */  sll        $v0, $s0, 0x10
/* BFC0 800A13C0 080284F7 */  j          .L800A13DC
/* BFC4 800A13C4 00021403 */   sra       $v0, $v0, 0x10
.L800A13C8:
/* BFC8 800A13C8 86420064 */  lh         $v0, 0x64($s2)
/* BFCC 800A13CC 0202102A */  slt        $v0, $s0, $v0
/* BFD0 800A13D0 1440FFF5 */  bnez       $v0, .L800A13A8
/* BFD4 800A13D4 26310014 */   addiu     $s1, $s1, 0x14
.L800A13D8:
/* BFD8 800A13D8 00001021 */  addu       $v0, $zero, $zero
.L800A13DC:
/* BFDC 800A13DC 8FBF0028 */  lw         $ra, 0x28($sp)
/* BFE0 800A13E0 8FB30024 */  lw         $s3, 0x24($sp)
/* BFE4 800A13E4 8FB20020 */  lw         $s2, 0x20($sp)
/* BFE8 800A13E8 8FB1001C */  lw         $s1, 0x1c($sp)
/* BFEC 800A13EC 8FB00018 */  lw         $s0, 0x18($sp)
/* BFF0 800A13F0 27BD0030 */  addiu      $sp, $sp, 0x30
/* BFF4 800A13F4 03E00008 */  jr         $ra
/* BFF8 800A13F8 00000000 */   nop
