.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BBA10
/* 26610 800BBA10 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 26614 800BBA14 AFBE0048 */  sw         $fp, 0x48($sp)
/* 26618 800BBA18 00A0F021 */  addu       $fp, $a1, $zero
/* 2661C 800BBA1C AFB40038 */  sw         $s4, 0x38($sp)
/* 26620 800BBA20 00C0A021 */  addu       $s4, $a2, $zero
/* 26624 800BBA24 8FA60060 */  lw         $a2, 0x60($sp)
/* 26628 800BBA28 3C030200 */  lui        $v1, 0x200
/* 2662C 800BBA2C 34630440 */  ori        $v1, $v1, 0x440
/* 26630 800BBA30 3C050200 */  lui        $a1, 0x200
/* 26634 800BBA34 34A50580 */  ori        $a1, $a1, 0x580
/* 26638 800BBA38 AFB30034 */  sw         $s3, 0x34($sp)
/* 2663C 800BBA3C 00809821 */  addu       $s3, $a0, $zero
/* 26640 800BBA40 AFBF004C */  sw         $ra, 0x4c($sp)
/* 26644 800BBA44 AFB70044 */  sw         $s7, 0x44($sp)
/* 26648 800BBA48 AFB60040 */  sw         $s6, 0x40($sp)
/* 2664C 800BBA4C AFB5003C */  sw         $s5, 0x3c($sp)
/* 26650 800BBA50 AFB20030 */  sw         $s2, 0x30($sp)
/* 26654 800BBA54 AFB1002C */  sw         $s1, 0x2c($sp)
/* 26658 800BBA58 AFB00028 */  sw         $s0, 0x28($sp)
/* 2665C 800BBA5C AFA7001C */  sw         $a3, 0x1c($sp)
/* 26660 800BBA60 8E64001C */  lw         $a0, 0x1c($s3)
/* 26664 800BBA64 00C01021 */  addu       $v0, $a2, $zero
/* 26668 800BBA68 24C60008 */  addiu      $a2, $a2, 8
/* 2666C 800BBA6C AC430000 */  sw         $v1, ($v0)
/* 26670 800BBA70 00141840 */  sll        $v1, $s4, 1
/* 26674 800BBA74 AC430004 */  sw         $v1, 4($v0)
/* 26678 800BBA78 00C01021 */  addu       $v0, $a2, $zero
/* 2667C 800BBA7C AC450000 */  sw         $a1, ($v0)
/* 26680 800BBA80 AC430004 */  sw         $v1, 4($v0)
/* 26684 800BBA84 8E620014 */  lw         $v0, 0x14($s3)
/* 26688 800BBA88 00008821 */  addu       $s1, $zero, $zero
/* 2668C 800BBA8C 18400023 */  blez       $v0, .L800BBB1C
/* 26690 800BBA90 24C60008 */   addiu     $a2, $a2, 8
/* 26694 800BBA94 3077FFFF */  andi       $s7, $v1, 0xffff
/* 26698 800BBA98 3C120C00 */  lui        $s2, 0xc00
/* 2669C 800BBA9C 36527FFF */  ori        $s2, $s2, 0x7fff
/* 266A0 800BBAA0 3C1606C0 */  lui        $s6, 0x6c0
/* 266A4 800BBAA4 36D60440 */  ori        $s6, $s6, 0x440
/* 266A8 800BBAA8 3C150800 */  lui        $s5, 0x800
/* 266AC 800BBAAC 36B50580 */  ori        $s5, $s5, 0x580
/* 266B0 800BBAB0 00808021 */  addu       $s0, $a0, $zero
.L800BBAB4:
/* 266B4 800BBAB4 8E020000 */  lw         $v0, ($s0)
/* 266B8 800BBAB8 AFA60010 */  sw         $a2, 0x10($sp)
/* 266BC 800BBABC 8E040000 */  lw         $a0, ($s0)
/* 266C0 800BBAC0 26100004 */  addiu      $s0, $s0, 4
/* 266C4 800BBAC4 8FA7001C */  lw         $a3, 0x1c($sp)
/* 266C8 800BBAC8 8C420004 */  lw         $v0, 4($v0)
/* 266CC 800BBACC 03C02821 */  addu       $a1, $fp, $zero
/* 266D0 800BBAD0 0040F809 */  jalr       $v0
/* 266D4 800BBAD4 02803021 */   addu      $a2, $s4, $zero
/* 266D8 800BBAD8 00403021 */  addu       $a2, $v0, $zero
/* 266DC 800BBADC 24C60008 */  addiu      $a2, $a2, 8
/* 266E0 800BBAE0 00C01821 */  addu       $v1, $a2, $zero
/* 266E4 800BBAE4 24C60008 */  addiu      $a2, $a2, 8
/* 266E8 800BBAE8 3C080800 */  lui        $t0, 0x800
/* 266EC 800BBAEC AC480000 */  sw         $t0, ($v0)
/* 266F0 800BBAF0 AC570004 */  sw         $s7, 4($v0)
/* 266F4 800BBAF4 00C01021 */  addu       $v0, $a2, $zero
/* 266F8 800BBAF8 AC720000 */  sw         $s2, ($v1)
/* 266FC 800BBAFC AC760004 */  sw         $s6, 4($v1)
/* 26700 800BBB00 AC520000 */  sw         $s2, ($v0)
/* 26704 800BBB04 AC550004 */  sw         $s5, 4($v0)
/* 26708 800BBB08 8E620014 */  lw         $v0, 0x14($s3)
/* 2670C 800BBB0C 26310001 */  addiu      $s1, $s1, 1
/* 26710 800BBB10 0222102A */  slt        $v0, $s1, $v0
/* 26714 800BBB14 1440FFE7 */  bnez       $v0, .L800BBAB4
/* 26718 800BBB18 24C60008 */   addiu     $a2, $a2, 8
.L800BBB1C:
/* 2671C 800BBB1C 00C01021 */  addu       $v0, $a2, $zero
/* 26720 800BBB20 8FBF004C */  lw         $ra, 0x4c($sp)
/* 26724 800BBB24 8FBE0048 */  lw         $fp, 0x48($sp)
/* 26728 800BBB28 8FB70044 */  lw         $s7, 0x44($sp)
/* 2672C 800BBB2C 8FB60040 */  lw         $s6, 0x40($sp)
/* 26730 800BBB30 8FB5003C */  lw         $s5, 0x3c($sp)
/* 26734 800BBB34 8FB40038 */  lw         $s4, 0x38($sp)
/* 26738 800BBB38 8FB30034 */  lw         $s3, 0x34($sp)
/* 2673C 800BBB3C 8FB20030 */  lw         $s2, 0x30($sp)
/* 26740 800BBB40 8FB1002C */  lw         $s1, 0x2c($sp)
/* 26744 800BBB44 8FB00028 */  lw         $s0, 0x28($sp)
/* 26748 800BBB48 03E00008 */  jr         $ra
/* 2674C 800BBB4C 27BD0050 */   addiu     $sp, $sp, 0x50
