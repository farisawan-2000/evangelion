.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80055490_FE9A0
/* FE9A0 80055490 27BDFE28 */  addiu      $sp, $sp, -0x1d8
/* FE9A4 80055494 AFB601C0 */  sw         $s6, 0x1c0($sp)
/* FE9A8 80055498 27A70058 */  addiu      $a3, $sp, 0x58
/* FE9AC 8005549C 3C068007 */  lui        $a2, %hi(D_8006A2A0)
/* FE9B0 800554A0 24C6A2A0 */  addiu      $a2, $a2, %lo(D_8006A2A0)
/* FE9B4 800554A4 00E61025 */  or         $v0, $a3, $a2
/* FE9B8 800554A8 30420003 */  andi       $v0, $v0, 3
/* FE9BC 800554AC AFBF01C4 */  sw         $ra, 0x1c4($sp)
/* FE9C0 800554B0 AFB501BC */  sw         $s5, 0x1bc($sp)
/* FE9C4 800554B4 AFB401B8 */  sw         $s4, 0x1b8($sp)
/* FE9C8 800554B8 AFB301B4 */  sw         $s3, 0x1b4($sp)
/* FE9CC 800554BC AFB201B0 */  sw         $s2, 0x1b0($sp)
/* FE9D0 800554C0 AFB101AC */  sw         $s1, 0x1ac($sp)
/* FE9D4 800554C4 AFB001A8 */  sw         $s0, 0x1a8($sp)
/* FE9D8 800554C8 F7B601D0 */  sdc1       $f22, 0x1d0($sp)
/* FE9DC 800554CC F7B401C8 */  sdc1       $f20, 0x1c8($sp)
/* FE9E0 800554D0 10400017 */  beqz       $v0, .L80055530
/* FE9E4 800554D4 0080B021 */   addu      $s6, $a0, $zero
/* FE9E8 800554D8 24C80020 */  addiu      $t0, $a2, 0x20
.L800554DC:
/* FE9EC 800554DC 88C20000 */  lwl        $v0, ($a2)
/* FE9F0 800554E0 98C20003 */  lwr        $v0, 3($a2)
/* FE9F4 800554E4 88C30004 */  lwl        $v1, 4($a2)
/* FE9F8 800554E8 98C30007 */  lwr        $v1, 7($a2)
/* FE9FC 800554EC 88C40008 */  lwl        $a0, 8($a2)
/* FEA00 800554F0 98C4000B */  lwr        $a0, 0xb($a2)
/* FEA04 800554F4 88C5000C */  lwl        $a1, 0xc($a2)
/* FEA08 800554F8 98C5000F */  lwr        $a1, 0xf($a2)
/* FEA0C 800554FC A8E20000 */  swl        $v0, ($a3)
/* FEA10 80055500 B8E20003 */  swr        $v0, 3($a3)
/* FEA14 80055504 A8E30004 */  swl        $v1, 4($a3)
/* FEA18 80055508 B8E30007 */  swr        $v1, 7($a3)
/* FEA1C 8005550C A8E40008 */  swl        $a0, 8($a3)
/* FEA20 80055510 B8E4000B */  swr        $a0, 0xb($a3)
/* FEA24 80055514 A8E5000C */  swl        $a1, 0xc($a3)
/* FEA28 80055518 B8E5000F */  swr        $a1, 0xf($a3)
/* FEA2C 8005551C 24C60010 */  addiu      $a2, $a2, 0x10
/* FEA30 80055520 14C8FFEE */  bne        $a2, $t0, .L800554DC
/* FEA34 80055524 24E70010 */   addiu     $a3, $a3, 0x10
/* FEA38 80055528 08015558 */  j          .L80055560
/* FEA3C 8005552C 00000000 */   nop
.L80055530:
/* FEA40 80055530 24C80020 */  addiu      $t0, $a2, 0x20
.L80055534:
/* FEA44 80055534 8CC20000 */  lw         $v0, ($a2)
/* FEA48 80055538 8CC30004 */  lw         $v1, 4($a2)
/* FEA4C 8005553C 8CC40008 */  lw         $a0, 8($a2)
/* FEA50 80055540 8CC5000C */  lw         $a1, 0xc($a2)
/* FEA54 80055544 ACE20000 */  sw         $v0, ($a3)
/* FEA58 80055548 ACE30004 */  sw         $v1, 4($a3)
/* FEA5C 8005554C ACE40008 */  sw         $a0, 8($a3)
/* FEA60 80055550 ACE5000C */  sw         $a1, 0xc($a3)
/* FEA64 80055554 24C60010 */  addiu      $a2, $a2, 0x10
/* FEA68 80055558 14C8FFF6 */  bne        $a2, $t0, .L80055534
/* FEA6C 8005555C 24E70010 */   addiu     $a3, $a3, 0x10
.L80055560:
/* FEA70 80055560 88C20000 */  lwl        $v0, ($a2)
/* FEA74 80055564 98C20003 */  lwr        $v0, 3($a2)
/* FEA78 80055568 88C30004 */  lwl        $v1, 4($a2)
/* FEA7C 8005556C 98C30007 */  lwr        $v1, 7($a2)
/* FEA80 80055570 80C40008 */  lb         $a0, 8($a2)
/* FEA84 80055574 80C50009 */  lb         $a1, 9($a2)
/* FEA88 80055578 A8E20000 */  swl        $v0, ($a3)
/* FEA8C 8005557C B8E20003 */  swr        $v0, 3($a3)
/* FEA90 80055580 A8E30004 */  swl        $v1, 4($a3)
/* FEA94 80055584 B8E30007 */  swr        $v1, 7($a3)
/* FEA98 80055588 A0E40008 */  sb         $a0, 8($a3)
/* FEA9C 8005558C A0E50009 */  sb         $a1, 9($a3)
/* FEAA0 80055590 27A70088 */  addiu      $a3, $sp, 0x88
/* FEAA4 80055594 3C068007 */  lui        $a2, %hi(D_8006A2CC)
/* FEAA8 80055598 24C6A2CC */  addiu      $a2, $a2, %lo(D_8006A2CC)
/* FEAAC 8005559C 00E61025 */  or         $v0, $a3, $a2
/* FEAB0 800555A0 30420003 */  andi       $v0, $v0, 3
/* FEAB4 800555A4 10400016 */  beqz       $v0, .L80055600
/* FEAB8 800555A8 24C80040 */   addiu     $t0, $a2, 0x40
.L800555AC:
/* FEABC 800555AC 88C20000 */  lwl        $v0, ($a2)
/* FEAC0 800555B0 98C20003 */  lwr        $v0, 3($a2)
/* FEAC4 800555B4 88C30004 */  lwl        $v1, 4($a2)
/* FEAC8 800555B8 98C30007 */  lwr        $v1, 7($a2)
/* FEACC 800555BC 88C40008 */  lwl        $a0, 8($a2)
/* FEAD0 800555C0 98C4000B */  lwr        $a0, 0xb($a2)
/* FEAD4 800555C4 88C5000C */  lwl        $a1, 0xc($a2)
/* FEAD8 800555C8 98C5000F */  lwr        $a1, 0xf($a2)
/* FEADC 800555CC A8E20000 */  swl        $v0, ($a3)
/* FEAE0 800555D0 B8E20003 */  swr        $v0, 3($a3)
/* FEAE4 800555D4 A8E30004 */  swl        $v1, 4($a3)
/* FEAE8 800555D8 B8E30007 */  swr        $v1, 7($a3)
/* FEAEC 800555DC A8E40008 */  swl        $a0, 8($a3)
/* FEAF0 800555E0 B8E4000B */  swr        $a0, 0xb($a3)
/* FEAF4 800555E4 A8E5000C */  swl        $a1, 0xc($a3)
/* FEAF8 800555E8 B8E5000F */  swr        $a1, 0xf($a3)
/* FEAFC 800555EC 24C60010 */  addiu      $a2, $a2, 0x10
/* FEB00 800555F0 14C8FFEE */  bne        $a2, $t0, .L800555AC
/* FEB04 800555F4 24E70010 */   addiu     $a3, $a3, 0x10
/* FEB08 800555F8 0801558B */  j          .L8005562C
/* FEB0C 800555FC 00000000 */   nop
.L80055600:
/* FEB10 80055600 8CC20000 */  lw         $v0, ($a2)
/* FEB14 80055604 8CC30004 */  lw         $v1, 4($a2)
/* FEB18 80055608 8CC40008 */  lw         $a0, 8($a2)
/* FEB1C 8005560C 8CC5000C */  lw         $a1, 0xc($a2)
/* FEB20 80055610 ACE20000 */  sw         $v0, ($a3)
/* FEB24 80055614 ACE30004 */  sw         $v1, 4($a3)
/* FEB28 80055618 ACE40008 */  sw         $a0, 8($a3)
/* FEB2C 8005561C ACE5000C */  sw         $a1, 0xc($a3)
/* FEB30 80055620 24C60010 */  addiu      $a2, $a2, 0x10
/* FEB34 80055624 14C8FFF6 */  bne        $a2, $t0, .L80055600
/* FEB38 80055628 24E70010 */   addiu     $a3, $a3, 0x10
.L8005562C:
/* FEB3C 8005562C 88C20000 */  lwl        $v0, ($a2)
/* FEB40 80055630 98C20003 */  lwr        $v0, 3($a2)
/* FEB44 80055634 80C30004 */  lb         $v1, 4($a2)
/* FEB48 80055638 A8E20000 */  swl        $v0, ($a3)
/* FEB4C 8005563C B8E20003 */  swr        $v0, 3($a3)
/* FEB50 80055640 A0E30004 */  sb         $v1, 4($a3)
/* FEB54 80055644 27A700D0 */  addiu      $a3, $sp, 0xd0
/* FEB58 80055648 3C068007 */  lui        $a2, %hi(D_8006A314)
/* FEB5C 8005564C 24C6A314 */  addiu      $a2, $a2, %lo(D_8006A314)
/* FEB60 80055650 00E61025 */  or         $v0, $a3, $a2
/* FEB64 80055654 30420003 */  andi       $v0, $v0, 3
/* FEB68 80055658 10400016 */  beqz       $v0, .L800556B4
/* FEB6C 8005565C 24C80040 */   addiu     $t0, $a2, 0x40
.L80055660:
/* FEB70 80055660 88C20000 */  lwl        $v0, ($a2)
/* FEB74 80055664 98C20003 */  lwr        $v0, 3($a2)
/* FEB78 80055668 88C30004 */  lwl        $v1, 4($a2)
/* FEB7C 8005566C 98C30007 */  lwr        $v1, 7($a2)
/* FEB80 80055670 88C40008 */  lwl        $a0, 8($a2)
/* FEB84 80055674 98C4000B */  lwr        $a0, 0xb($a2)
/* FEB88 80055678 88C5000C */  lwl        $a1, 0xc($a2)
/* FEB8C 8005567C 98C5000F */  lwr        $a1, 0xf($a2)
/* FEB90 80055680 A8E20000 */  swl        $v0, ($a3)
/* FEB94 80055684 B8E20003 */  swr        $v0, 3($a3)
/* FEB98 80055688 A8E30004 */  swl        $v1, 4($a3)
/* FEB9C 8005568C B8E30007 */  swr        $v1, 7($a3)
/* FEBA0 80055690 A8E40008 */  swl        $a0, 8($a3)
/* FEBA4 80055694 B8E4000B */  swr        $a0, 0xb($a3)
/* FEBA8 80055698 A8E5000C */  swl        $a1, 0xc($a3)
/* FEBAC 8005569C B8E5000F */  swr        $a1, 0xf($a3)
/* FEBB0 800556A0 24C60010 */  addiu      $a2, $a2, 0x10
/* FEBB4 800556A4 14C8FFEE */  bne        $a2, $t0, .L80055660
/* FEBB8 800556A8 24E70010 */   addiu     $a3, $a3, 0x10
/* FEBBC 800556AC 080155B8 */  j          .L800556E0
/* FEBC0 800556B0 00000000 */   nop
.L800556B4:
/* FEBC4 800556B4 8CC20000 */  lw         $v0, ($a2)
/* FEBC8 800556B8 8CC30004 */  lw         $v1, 4($a2)
/* FEBCC 800556BC 8CC40008 */  lw         $a0, 8($a2)
/* FEBD0 800556C0 8CC5000C */  lw         $a1, 0xc($a2)
/* FEBD4 800556C4 ACE20000 */  sw         $v0, ($a3)
/* FEBD8 800556C8 ACE30004 */  sw         $v1, 4($a3)
/* FEBDC 800556CC ACE40008 */  sw         $a0, 8($a3)
/* FEBE0 800556D0 ACE5000C */  sw         $a1, 0xc($a3)
/* FEBE4 800556D4 24C60010 */  addiu      $a2, $a2, 0x10
/* FEBE8 800556D8 14C8FFF6 */  bne        $a2, $t0, .L800556B4
/* FEBEC 800556DC 24E70010 */   addiu     $a3, $a3, 0x10
.L800556E0:
/* FEBF0 800556E0 88C20000 */  lwl        $v0, ($a2)
/* FEBF4 800556E4 98C20003 */  lwr        $v0, 3($a2)
/* FEBF8 800556E8 80C30004 */  lb         $v1, 4($a2)
/* FEBFC 800556EC 80C40005 */  lb         $a0, 5($a2)
/* FEC00 800556F0 A8E20000 */  swl        $v0, ($a3)
/* FEC04 800556F4 B8E20003 */  swr        $v0, 3($a3)
/* FEC08 800556F8 A0E30004 */  sb         $v1, 4($a3)
/* FEC0C 800556FC A0E40005 */  sb         $a0, 5($a3)
/* FEC10 80055700 27A70118 */  addiu      $a3, $sp, 0x118
/* FEC14 80055704 3C068007 */  lui        $a2, %hi(D_8006A35C)
/* FEC18 80055708 24C6A35C */  addiu      $a2, $a2, %lo(D_8006A35C)
/* FEC1C 8005570C 00E61025 */  or         $v0, $a3, $a2
/* FEC20 80055710 30420003 */  andi       $v0, $v0, 3
/* FEC24 80055714 10400016 */  beqz       $v0, .L80055770
/* FEC28 80055718 24C80020 */   addiu     $t0, $a2, 0x20
.L8005571C:
/* FEC2C 8005571C 88C20000 */  lwl        $v0, ($a2)
/* FEC30 80055720 98C20003 */  lwr        $v0, 3($a2)
/* FEC34 80055724 88C30004 */  lwl        $v1, 4($a2)
/* FEC38 80055728 98C30007 */  lwr        $v1, 7($a2)
/* FEC3C 8005572C 88C40008 */  lwl        $a0, 8($a2)
/* FEC40 80055730 98C4000B */  lwr        $a0, 0xb($a2)
/* FEC44 80055734 88C5000C */  lwl        $a1, 0xc($a2)
/* FEC48 80055738 98C5000F */  lwr        $a1, 0xf($a2)
/* FEC4C 8005573C A8E20000 */  swl        $v0, ($a3)
/* FEC50 80055740 B8E20003 */  swr        $v0, 3($a3)
/* FEC54 80055744 A8E30004 */  swl        $v1, 4($a3)
/* FEC58 80055748 B8E30007 */  swr        $v1, 7($a3)
/* FEC5C 8005574C A8E40008 */  swl        $a0, 8($a3)
/* FEC60 80055750 B8E4000B */  swr        $a0, 0xb($a3)
/* FEC64 80055754 A8E5000C */  swl        $a1, 0xc($a3)
/* FEC68 80055758 B8E5000F */  swr        $a1, 0xf($a3)
/* FEC6C 8005575C 24C60010 */  addiu      $a2, $a2, 0x10
/* FEC70 80055760 14C8FFEE */  bne        $a2, $t0, .L8005571C
/* FEC74 80055764 24E70010 */   addiu     $a3, $a3, 0x10
/* FEC78 80055768 080155E7 */  j          .L8005579C
/* FEC7C 8005576C 00000000 */   nop
.L80055770:
/* FEC80 80055770 8CC20000 */  lw         $v0, ($a2)
/* FEC84 80055774 8CC30004 */  lw         $v1, 4($a2)
/* FEC88 80055778 8CC40008 */  lw         $a0, 8($a2)
/* FEC8C 8005577C 8CC5000C */  lw         $a1, 0xc($a2)
/* FEC90 80055780 ACE20000 */  sw         $v0, ($a3)
/* FEC94 80055784 ACE30004 */  sw         $v1, 4($a3)
/* FEC98 80055788 ACE40008 */  sw         $a0, 8($a3)
/* FEC9C 8005578C ACE5000C */  sw         $a1, 0xc($a3)
/* FECA0 80055790 24C60010 */  addiu      $a2, $a2, 0x10
/* FECA4 80055794 14C8FFF6 */  bne        $a2, $t0, .L80055770
/* FECA8 80055798 24E70010 */   addiu     $a3, $a3, 0x10
.L8005579C:
/* FECAC 8005579C 88C20000 */  lwl        $v0, ($a2)
/* FECB0 800557A0 98C20003 */  lwr        $v0, 3($a2)
/* FECB4 800557A4 88C30004 */  lwl        $v1, 4($a2)
/* FECB8 800557A8 98C30007 */  lwr        $v1, 7($a2)
/* FECBC 800557AC 80C40008 */  lb         $a0, 8($a2)
/* FECC0 800557B0 80C50009 */  lb         $a1, 9($a2)
/* FECC4 800557B4 A8E20000 */  swl        $v0, ($a3)
/* FECC8 800557B8 B8E20003 */  swr        $v0, 3($a3)
/* FECCC 800557BC A8E30004 */  swl        $v1, 4($a3)
/* FECD0 800557C0 B8E30007 */  swr        $v1, 7($a3)
/* FECD4 800557C4 A0E40008 */  sb         $a0, 8($a3)
/* FECD8 800557C8 A0E50009 */  sb         $a1, 9($a3)
/* FECDC 800557CC 27A70148 */  addiu      $a3, $sp, 0x148
/* FECE0 800557D0 3C068007 */  lui        $a2, %hi(D_8006A388)
/* FECE4 800557D4 24C6A388 */  addiu      $a2, $a2, %lo(D_8006A388)
/* FECE8 800557D8 00E61025 */  or         $v0, $a3, $a2
/* FECEC 800557DC 30420003 */  andi       $v0, $v0, 3
/* FECF0 800557E0 10400016 */  beqz       $v0, .L8005583C
/* FECF4 800557E4 24C80020 */   addiu     $t0, $a2, 0x20
.L800557E8:
/* FECF8 800557E8 88C20000 */  lwl        $v0, ($a2)
/* FECFC 800557EC 98C20003 */  lwr        $v0, 3($a2)
/* FED00 800557F0 88C30004 */  lwl        $v1, 4($a2)
/* FED04 800557F4 98C30007 */  lwr        $v1, 7($a2)
/* FED08 800557F8 88C40008 */  lwl        $a0, 8($a2)
/* FED0C 800557FC 98C4000B */  lwr        $a0, 0xb($a2)
/* FED10 80055800 88C5000C */  lwl        $a1, 0xc($a2)
/* FED14 80055804 98C5000F */  lwr        $a1, 0xf($a2)
/* FED18 80055808 A8E20000 */  swl        $v0, ($a3)
/* FED1C 8005580C B8E20003 */  swr        $v0, 3($a3)
/* FED20 80055810 A8E30004 */  swl        $v1, 4($a3)
/* FED24 80055814 B8E30007 */  swr        $v1, 7($a3)
/* FED28 80055818 A8E40008 */  swl        $a0, 8($a3)
/* FED2C 8005581C B8E4000B */  swr        $a0, 0xb($a3)
/* FED30 80055820 A8E5000C */  swl        $a1, 0xc($a3)
/* FED34 80055824 B8E5000F */  swr        $a1, 0xf($a3)
/* FED38 80055828 24C60010 */  addiu      $a2, $a2, 0x10
/* FED3C 8005582C 14C8FFEE */  bne        $a2, $t0, .L800557E8
/* FED40 80055830 24E70010 */   addiu     $a3, $a3, 0x10
/* FED44 80055834 0801561A */  j          .L80055868
/* FED48 80055838 00000000 */   nop
.L8005583C:
/* FED4C 8005583C 8CC20000 */  lw         $v0, ($a2)
/* FED50 80055840 8CC30004 */  lw         $v1, 4($a2)
/* FED54 80055844 8CC40008 */  lw         $a0, 8($a2)
/* FED58 80055848 8CC5000C */  lw         $a1, 0xc($a2)
/* FED5C 8005584C ACE20000 */  sw         $v0, ($a3)
/* FED60 80055850 ACE30004 */  sw         $v1, 4($a3)
/* FED64 80055854 ACE40008 */  sw         $a0, 8($a3)
/* FED68 80055858 ACE5000C */  sw         $a1, 0xc($a3)
/* FED6C 8005585C 24C60010 */  addiu      $a2, $a2, 0x10
/* FED70 80055860 14C8FFF6 */  bne        $a2, $t0, .L8005583C
/* FED74 80055864 24E70010 */   addiu     $a3, $a3, 0x10
.L80055868:
/* FED78 80055868 88C20000 */  lwl        $v0, ($a2)
/* FED7C 8005586C 98C20003 */  lwr        $v0, 3($a2)
/* FED80 80055870 88C30004 */  lwl        $v1, 4($a2)
/* FED84 80055874 98C30007 */  lwr        $v1, 7($a2)
/* FED88 80055878 88C40008 */  lwl        $a0, 8($a2)
/* FED8C 8005587C 98C4000B */  lwr        $a0, 0xb($a2)
/* FED90 80055880 80C5000C */  lb         $a1, 0xc($a2)
/* FED94 80055884 A8E20000 */  swl        $v0, ($a3)
/* FED98 80055888 B8E20003 */  swr        $v0, 3($a3)
/* FED9C 8005588C A8E30004 */  swl        $v1, 4($a3)
/* FEDA0 80055890 B8E30007 */  swr        $v1, 7($a3)
/* FEDA4 80055894 A8E40008 */  swl        $a0, 8($a3)
/* FEDA8 80055898 B8E4000B */  swr        $a0, 0xb($a3)
/* FEDAC 8005589C A0E5000C */  sb         $a1, 0xc($a3)
/* FEDB0 800558A0 80C2000D */  lb         $v0, 0xd($a2)
/* FEDB4 800558A4 80C3000E */  lb         $v1, 0xe($a2)
/* FEDB8 800558A8 A0E2000D */  sb         $v0, 0xd($a3)
/* FEDBC 800558AC A0E3000E */  sb         $v1, 0xe($a3)
/* FEDC0 800558B0 3C028007 */  lui        $v0, %hi(D_8006C200)
/* FEDC4 800558B4 9442C200 */  lhu        $v0, %lo(D_8006C200)($v0)
/* FEDC8 800558B8 10400003 */  beqz       $v0, .L800558C8
/* FEDCC 800558BC 24420001 */   addiu     $v0, $v0, 1
/* FEDD0 800558C0 3C018007 */  lui        $at, %hi(D_8006C200)
/* FEDD4 800558C4 A422C200 */  sh         $v0, %lo(D_8006C200)($at)
.L800558C8:
/* FEDD8 800558C8 0C00D7D8 */  jal        func_80035F60_DF470
/* FEDDC 800558CC 00000000 */   nop
/* FEDE0 800558D0 10400028 */  beqz       $v0, .L80055974
/* FEDE4 800558D4 00000000 */   nop
/* FEDE8 800558D8 3C028007 */  lui        $v0, %hi(D_8006C202)
/* FEDEC 800558DC 9042C202 */  lbu        $v0, %lo(D_8006C202)($v0)
/* FEDF0 800558E0 14400014 */  bnez       $v0, .L80055934
/* FEDF4 800558E4 24020001 */   addiu     $v0, $zero, 1
/* FEDF8 800558E8 96C4001C */  lhu        $a0, 0x1c($s6)
/* FEDFC 800558EC 3C018007 */  lui        $at, %hi(D_8006C202)
/* FEE00 800558F0 A022C202 */  sb         $v0, %lo(D_8006C202)($at)
/* FEE04 800558F4 3082FFFF */  andi       $v0, $a0, 0xffff
/* FEE08 800558F8 0002182B */  sltu       $v1, $zero, $v0
/* FEE0C 800558FC 2C420007 */  sltiu      $v0, $v0, 7
/* FEE10 80055900 00621824 */  and        $v1, $v1, $v0
/* FEE14 80055904 14600391 */  bnez       $v1, .L8005674C
/* FEE18 80055908 24020007 */   addiu     $v0, $zero, 7
/* FEE1C 8005590C 2482FFF7 */  addiu      $v0, $a0, -9
/* FEE20 80055910 2C42000B */  sltiu      $v0, $v0, 0xb
/* FEE24 80055914 14400CE4 */  bnez       $v0, .L80058CA8
/* FEE28 80055918 24020014 */   addiu     $v0, $zero, 0x14
/* FEE2C 8005591C 2482FFDF */  addiu      $v0, $a0, -0x21
/* FEE30 80055920 2C420002 */  sltiu      $v0, $v0, 2
/* FEE34 80055924 10400003 */  beqz       $v0, .L80055934
/* FEE38 80055928 00001021 */   addu      $v0, $zero, $zero
/* FEE3C 8005592C 0801572C */  j          .L80055CB0
/* FEE40 80055930 24030023 */   addiu     $v1, $zero, 0x23
.L80055934:
/* FEE44 80055934 96C2001C */  lhu        $v0, 0x1c($s6)
/* FEE48 80055938 38430008 */  xori       $v1, $v0, 8
/* FEE4C 8005593C 2C630001 */  sltiu      $v1, $v1, 1
/* FEE50 80055940 38420015 */  xori       $v0, $v0, 0x15
/* FEE54 80055944 2C420001 */  sltiu      $v0, $v0, 1
/* FEE58 80055948 00621825 */  or         $v1, $v1, $v0
/* FEE5C 8005594C 10600009 */  beqz       $v1, .L80055974
/* FEE60 80055950 24020001 */   addiu     $v0, $zero, 1
/* FEE64 80055954 3C038007 */  lui        $v1, %hi(D_8006C200)
/* FEE68 80055958 9463C200 */  lhu        $v1, %lo(D_8006C200)($v1)
/* FEE6C 8005595C 3C018007 */  lui        $at, %hi(D_8006C202)
/* FEE70 80055960 A022C202 */  sb         $v0, %lo(D_8006C202)($at)
/* FEE74 80055964 14600003 */  bnez       $v1, .L80055974
/* FEE78 80055968 24620001 */   addiu     $v0, $v1, 1
/* FEE7C 8005596C 3C018007 */  lui        $at, %hi(D_8006C200)
/* FEE80 80055970 A422C200 */  sh         $v0, %lo(D_8006C200)($at)
.L80055974:
/* FEE84 80055974 3C048007 */  lui        $a0, %hi(D_8006C202)
/* FEE88 80055978 9084C202 */  lbu        $a0, %lo(D_8006C202)($a0)
/* FEE8C 8005597C 24020001 */  addiu      $v0, $zero, 1
/* FEE90 80055980 14820010 */  bne        $a0, $v0, .L800559C4
/* FEE94 80055984 24020009 */   addiu     $v0, $zero, 9
/* FEE98 80055988 96C3001C */  lhu        $v1, 0x1c($s6)
/* FEE9C 8005598C 14620002 */  bne        $v1, $v0, .L80055998
/* FEEA0 80055990 24020014 */   addiu     $v0, $zero, 0x14
/* FEEA4 80055994 A6C2001C */  sh         $v0, 0x1c($s6)
.L80055998:
/* FEEA8 80055998 3C028007 */  lui        $v0, %hi(D_8006C202)
/* FEEAC 8005599C 9042C202 */  lbu        $v0, %lo(D_8006C202)($v0)
/* FEEB0 800559A0 14440008 */  bne        $v0, $a0, .L800559C4
/* FEEB4 800559A4 00000000 */   nop
/* FEEB8 800559A8 96C2001C */  lhu        $v0, 0x1c($s6)
/* FEEBC 800559AC 2C420017 */  sltiu      $v0, $v0, 0x17
/* FEEC0 800559B0 14400004 */  bnez       $v0, .L800559C4
/* FEEC4 800559B4 24020021 */   addiu     $v0, $zero, 0x21
/* FEEC8 800559B8 3C018007 */  lui        $at, %hi(D_8006C202)
/* FEECC 800559BC A020C202 */  sb         $zero, %lo(D_8006C202)($at)
/* FEED0 800559C0 A6C2001C */  sh         $v0, 0x1c($s6)
.L800559C4:
/* FEED4 800559C4 96C2001C */  lhu        $v0, 0x1c($s6)
/* FEED8 800559C8 2C420002 */  sltiu      $v0, $v0, 2
/* FEEDC 800559CC 1440000A */  bnez       $v0, .L800559F8
/* FEEE0 800559D0 00000000 */   nop
/* FEEE4 800559D4 3C048007 */  lui        $a0, %hi(D_8006C1B0)
/* FEEE8 800559D8 0C028A40 */  jal        func_800A2900
/* FEEEC 800559DC 8C84C1B0 */   lw        $a0, %lo(D_8006C1B0)($a0)
/* FEEF0 800559E0 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* FEEF4 800559E4 0C028A40 */  jal        func_800A2900
/* FEEF8 800559E8 8C84C1B4 */   lw        $a0, %lo(D_8006C1B4)($a0)
/* FEEFC 800559EC 3C048007 */  lui        $a0, %hi(D_8006C1B8)
/* FEF00 800559F0 0C028A40 */  jal        func_800A2900
/* FEF04 800559F4 8C84C1B8 */   lw        $a0, %lo(D_8006C1B8)($a0)
.L800559F8:
/* FEF08 800559F8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* FEF0C 800559FC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* FEF10 80055A00 96C4001C */  lhu        $a0, 0x1c($s6)
/* FEF14 80055A04 3C038007 */  lui        $v1, %hi(D_8006C1BC)
/* FEF18 80055A08 9463C1BC */  lhu        $v1, %lo(D_8006C1BC)($v1)
/* FEF1C 80055A0C 24420001 */  addiu      $v0, $v0, 1
/* FEF20 80055A10 3C018007 */  lui        $at, %hi(D_8006C564)
/* FEF24 80055A14 10830008 */  beq        $a0, $v1, .L80055A38
/* FEF28 80055A18 AC22C564 */   sw        $v0, %lo(D_8006C564)($at)
/* FEF2C 80055A1C 96C2001C */  lhu        $v0, 0x1c($s6)
/* FEF30 80055A20 3C018007 */  lui        $at, %hi(D_8006C564)
/* FEF34 80055A24 AC20C564 */  sw         $zero, %lo(D_8006C564)($at)
/* FEF38 80055A28 3C018007 */  lui        $at, %hi(D_8006C200)
/* FEF3C 80055A2C A420C200 */  sh         $zero, %lo(D_8006C200)($at)
/* FEF40 80055A30 3C018007 */  lui        $at, %hi(D_8006C1BC)
/* FEF44 80055A34 A422C1BC */  sh         $v0, %lo(D_8006C1BC)($at)
.L80055A38:
/* FEF48 80055A38 96C3001C */  lhu        $v1, 0x1c($s6)
/* FEF4C 80055A3C 24020012 */  addiu      $v0, $zero, 0x12
/* FEF50 80055A40 10620BCF */  beq        $v1, $v0, .L80058980
/* FEF54 80055A44 28620013 */   slti      $v0, $v1, 0x13
/* FEF58 80055A48 10400036 */  beqz       $v0, .L80055B24
/* FEF5C 80055A4C 24020008 */   addiu     $v0, $zero, 8
/* FEF60 80055A50 10620367 */  beq        $v1, $v0, .L800567F0
/* FEF64 80055A54 28620009 */   slti      $v0, $v1, 9
/* FEF68 80055A58 10400018 */  beqz       $v0, .L80055ABC
/* FEF6C 80055A5C 24020003 */   addiu     $v0, $zero, 3
/* FEF70 80055A60 1062010F */  beq        $v1, $v0, .L80055EA0
/* FEF74 80055A64 28620004 */   slti      $v0, $v1, 4
/* FEF78 80055A68 10400009 */  beqz       $v0, .L80055A90
/* FEF7C 80055A6C 24020001 */   addiu     $v0, $zero, 1
/* FEF80 80055A70 10620093 */  beq        $v1, $v0, .L80055CC0
/* FEF84 80055A74 28620002 */   slti      $v0, $v1, 2
/* FEF88 80055A78 104000AB */  beqz       $v0, .L80055D28
/* FEF8C 80055A7C 00000000 */   nop
/* FEF90 80055A80 10600062 */  beqz       $v1, .L80055C0C
/* FEF94 80055A84 00001021 */   addu      $v0, $zero, $zero
/* FEF98 80055A88 08016A16 */  j          .L8005A858
/* FEF9C 80055A8C 00000000 */   nop
.L80055A90:
/* FEFA0 80055A90 24020005 */  addiu      $v0, $zero, 5
/* FEFA4 80055A94 1062021C */  beq        $v1, $v0, .L80056308
/* FEFA8 80055A98 28620005 */   slti      $v0, $v1, 5
/* FEFAC 80055A9C 1440011B */  bnez       $v0, .L80055F0C
/* FEFB0 80055AA0 24020006 */   addiu     $v0, $zero, 6
/* FEFB4 80055AA4 10620237 */  beq        $v1, $v0, .L80056384
/* FEFB8 80055AA8 24020007 */   addiu     $v0, $zero, 7
/* FEFBC 80055AAC 10620329 */  beq        $v1, $v0, .L80056754
/* FEFC0 80055AB0 00001021 */   addu      $v0, $zero, $zero
/* FEFC4 80055AB4 08016A16 */  j          .L8005A858
/* FEFC8 80055AB8 00000000 */   nop
.L80055ABC:
/* FEFCC 80055ABC 2402000D */  addiu      $v0, $zero, 0xd
/* FEFD0 80055AC0 106206EC */  beq        $v1, $v0, .L80057674
/* FEFD4 80055AC4 2862000E */   slti      $v0, $v1, 0xe
/* FEFD8 80055AC8 1040000B */  beqz       $v0, .L80055AF8
/* FEFDC 80055ACC 2402000A */   addiu     $v0, $zero, 0xa
/* FEFE0 80055AD0 106203CE */  beq        $v1, $v0, .L80056A0C
/* FEFE4 80055AD4 2862000A */   slti      $v0, $v1, 0xa
/* FEFE8 80055AD8 1440038D */  bnez       $v0, .L80056910
/* FEFEC 80055ADC 2402000B */   addiu     $v0, $zero, 0xb
/* FEFF0 80055AE0 106204AD */  beq        $v1, $v0, .L80056D98
/* FEFF4 80055AE4 2402000C */   addiu     $v0, $zero, 0xc
/* FEFF8 80055AE8 106205C0 */  beq        $v1, $v0, .L800571EC
/* FEFFC 80055AEC 2410003C */   addiu     $s0, $zero, 0x3c
/* FF000 80055AF0 08016A16 */  j          .L8005A858
/* FF004 80055AF4 00001021 */   addu      $v0, $zero, $zero
.L80055AF8:
/* FF008 80055AF8 2402000F */  addiu      $v0, $zero, 0xf
/* FF00C 80055AFC 106207F8 */  beq        $v1, $v0, .L80057AE0
/* FF010 80055B00 2862000F */   slti      $v0, $v1, 0xf
/* FF014 80055B04 144007CE */  bnez       $v0, .L80057A40
/* FF018 80055B08 24020010 */   addiu     $v0, $zero, 0x10
/* FF01C 80055B0C 10620A74 */  beq        $v1, $v0, .L800584E0
/* FF020 80055B10 24020011 */   addiu     $v0, $zero, 0x11
/* FF024 80055B14 10620A9D */  beq        $v1, $v0, .L8005858C
/* FF028 80055B18 00001021 */   addu      $v0, $zero, $zero
/* FF02C 80055B1C 08016A16 */  j          .L8005A858
/* FF030 80055B20 00000000 */   nop
.L80055B24:
/* FF034 80055B24 2402001C */  addiu      $v0, $zero, 0x1c
/* FF038 80055B28 10620F2E */  beq        $v1, $v0, .L800597E4
/* FF03C 80055B2C 2862001D */   slti      $v0, $v1, 0x1d
/* FF040 80055B30 1040001B */  beqz       $v0, .L80055BA0
/* FF044 80055B34 24020017 */   addiu     $v0, $zero, 0x17
/* FF048 80055B38 10620D2F */  beq        $v1, $v0, .L80058FF8
/* FF04C 80055B3C 28620018 */   slti      $v0, $v1, 0x18
/* FF050 80055B40 1040000C */  beqz       $v0, .L80055B74
/* FF054 80055B44 24020014 */   addiu     $v0, $zero, 0x14
/* FF058 80055B48 10620C59 */  beq        $v1, $v0, .L80058CB0
/* FF05C 80055B4C 28620014 */   slti      $v0, $v1, 0x14
/* FF060 80055B50 14400BA7 */  bnez       $v0, .L800589F0
/* FF064 80055B54 2410003C */   addiu     $s0, $zero, 0x3c
/* FF068 80055B58 24020015 */  addiu      $v0, $zero, 0x15
/* FF06C 80055B5C 10620C70 */  beq        $v1, $v0, .L80058D20
/* FF070 80055B60 24020016 */   addiu     $v0, $zero, 0x16
/* FF074 80055B64 10620D0A */  beq        $v1, $v0, .L80058F90
/* FF078 80055B68 00001021 */   addu      $v0, $zero, $zero
/* FF07C 80055B6C 08016A16 */  j          .L8005A858
/* FF080 80055B70 00000000 */   nop
.L80055B74:
/* FF084 80055B74 24020019 */  addiu      $v0, $zero, 0x19
/* FF088 80055B78 10620DAC */  beq        $v1, $v0, .L8005922C
/* FF08C 80055B7C 28620019 */   slti      $v0, $v1, 0x19
/* FF090 80055B80 14400D8E */  bnez       $v0, .L800591BC
/* FF094 80055B84 2402001A */   addiu     $v0, $zero, 0x1a
/* FF098 80055B88 10620E7D */  beq        $v1, $v0, .L80059580
/* FF09C 80055B8C 2402001B */   addiu     $v0, $zero, 0x1b
/* FF0A0 80055B90 10620E93 */  beq        $v1, $v0, .L800595E0
/* FF0A4 80055B94 2410003C */   addiu     $s0, $zero, 0x3c
/* FF0A8 80055B98 08016A16 */  j          .L8005A858
/* FF0AC 80055B9C 00001021 */   addu      $v0, $zero, $zero
.L80055BA0:
/* FF0B0 80055BA0 24020021 */  addiu      $v0, $zero, 0x21
/* FF0B4 80055BA4 1062123C */  beq        $v1, $v0, .L8005A498
/* FF0B8 80055BA8 28620022 */   slti      $v0, $v1, 0x22
/* FF0BC 80055BAC 1040000B */  beqz       $v0, .L80055BDC
/* FF0C0 80055BB0 2402001E */   addiu     $v0, $zero, 0x1e
/* FF0C4 80055BB4 10620FDD */  beq        $v1, $v0, .L80059B2C
/* FF0C8 80055BB8 2862001E */   slti      $v0, $v1, 0x1e
/* FF0CC 80055BBC 14400F35 */  bnez       $v0, .L80059894
/* FF0D0 80055BC0 2402001F */   addiu     $v0, $zero, 0x1f
/* FF0D4 80055BC4 1062116E */  beq        $v1, $v0, .L8005A180
/* FF0D8 80055BC8 24020020 */   addiu     $v0, $zero, 0x20
/* FF0DC 80055BCC 10621186 */  beq        $v1, $v0, .L8005A1E8
/* FF0E0 80055BD0 00001021 */   addu      $v0, $zero, $zero
/* FF0E4 80055BD4 08016A16 */  j          .L8005A858
/* FF0E8 80055BD8 00000000 */   nop
.L80055BDC:
/* FF0EC 80055BDC 24020023 */  addiu      $v0, $zero, 0x23
/* FF0F0 80055BE0 10621303 */  beq        $v1, $v0, .L8005A7F0
/* FF0F4 80055BE4 28620023 */   slti      $v0, $v1, 0x23
/* FF0F8 80055BE8 1440123F */  bnez       $v0, .L8005A4E8
/* FF0FC 80055BEC 2410003C */   addiu     $s0, $zero, 0x3c
/* FF100 80055BF0 3402FFFE */  ori        $v0, $zero, 0xfffe
/* FF104 80055BF4 10621305 */  beq        $v1, $v0, .L8005A80C
/* FF108 80055BF8 3402FFFF */   ori       $v0, $zero, 0xffff
/* FF10C 80055BFC 106212FC */  beq        $v1, $v0, .L8005A7F0
/* FF110 80055C00 00001021 */   addu      $v0, $zero, $zero
/* FF114 80055C04 08016A16 */  j          .L8005A858
/* FF118 80055C08 00000000 */   nop
.L80055C0C:
/* FF11C 80055C0C 0C00D7DD */  jal        func_80035F74_DF484
/* FF120 80055C10 241000E0 */   addiu     $s0, $zero, 0xe0
/* FF124 80055C14 0C029375 */  jal        func_800A4DD4
/* FF128 80055C18 00000000 */   nop
/* FF12C 80055C1C 00402021 */  addu       $a0, $v0, $zero
/* FF130 80055C20 24050010 */  addiu      $a1, $zero, 0x10
/* FF134 80055C24 9482001E */  lhu        $v0, 0x1e($a0)
/* FF138 80055C28 24060010 */  addiu      $a2, $zero, 0x10
/* FF13C 80055C2C 24070130 */  addiu      $a3, $zero, 0x130
/* FF140 80055C30 3C018007 */  lui        $at, %hi(D_8006C1B0)
/* FF144 80055C34 AC24C1B0 */  sw         $a0, %lo(D_8006C1B0)($at)
/* FF148 80055C38 A480001C */  sh         $zero, 0x1c($a0)
/* FF14C 80055C3C 34420100 */  ori        $v0, $v0, 0x100
/* FF150 80055C40 A482001E */  sh         $v0, 0x1e($a0)
/* FF154 80055C44 0C02939C */  jal        func_800A4E70
/* FF158 80055C48 AFB00010 */   sw        $s0, 0x10($sp)
/* FF15C 80055C4C 0C029375 */  jal        func_800A4DD4
/* FF160 80055C50 00000000 */   nop
/* FF164 80055C54 00402021 */  addu       $a0, $v0, $zero
/* FF168 80055C58 24050010 */  addiu      $a1, $zero, 0x10
/* FF16C 80055C5C 24060010 */  addiu      $a2, $zero, 0x10
/* FF170 80055C60 24070130 */  addiu      $a3, $zero, 0x130
/* FF174 80055C64 3C018007 */  lui        $at, %hi(D_8006C1B4)
/* FF178 80055C68 AC24C1B4 */  sw         $a0, %lo(D_8006C1B4)($at)
/* FF17C 80055C6C A480001C */  sh         $zero, 0x1c($a0)
/* FF180 80055C70 0C02939C */  jal        func_800A4E70
/* FF184 80055C74 AFB00010 */   sw        $s0, 0x10($sp)
/* FF188 80055C78 0C029375 */  jal        func_800A4DD4
/* FF18C 80055C7C 00000000 */   nop
/* FF190 80055C80 00402021 */  addu       $a0, $v0, $zero
/* FF194 80055C84 24050010 */  addiu      $a1, $zero, 0x10
/* FF198 80055C88 24060010 */  addiu      $a2, $zero, 0x10
/* FF19C 80055C8C 24070130 */  addiu      $a3, $zero, 0x130
/* FF1A0 80055C90 2402004E */  addiu      $v0, $zero, 0x4e
/* FF1A4 80055C94 3C018007 */  lui        $at, %hi(D_8006C1B8)
/* FF1A8 80055C98 AC24C1B8 */  sw         $a0, %lo(D_8006C1B8)($at)
/* FF1AC 80055C9C A482001C */  sh         $v0, 0x1c($a0)
/* FF1B0 80055CA0 0C02939C */  jal        func_800A4E70
/* FF1B4 80055CA4 AFB00010 */   sw        $s0, 0x10($sp)
/* FF1B8 80055CA8 00001021 */  addu       $v0, $zero, $zero
/* FF1BC 80055CAC 24030001 */  addiu      $v1, $zero, 1
.L80055CB0:
/* FF1C0 80055CB0 3C018007 */  lui        $at, %hi(D_8006C202)
/* FF1C4 80055CB4 A020C202 */  sb         $zero, %lo(D_8006C202)($at)
/* FF1C8 80055CB8 08016A16 */  j          .L8005A858
/* FF1CC 80055CBC A6C3001C */   sh        $v1, 0x1c($s6)
.L80055CC0:
/* FF1D0 80055CC0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* FF1D4 80055CC4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* FF1D8 80055CC8 14400003 */  bnez       $v0, .L80055CD8
/* FF1DC 80055CCC 00000000 */   nop
/* FF1E0 80055CD0 0C013F18 */  jal        func_8004FC60_F9170
/* FF1E4 80055CD4 00000000 */   nop
.L80055CD8:
/* FF1E8 80055CD8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* FF1EC 80055CDC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* FF1F0 80055CE0 24020002 */  addiu      $v0, $zero, 2
/* FF1F4 80055CE4 146212DC */  bne        $v1, $v0, .L8005A858
/* FF1F8 80055CE8 00001021 */   addu      $v0, $zero, $zero
/* FF1FC 80055CEC 0C02A5AF */  jal        func_800A96BC
/* FF200 80055CF0 24040001 */   addiu     $a0, $zero, 1
/* FF204 80055CF4 3C0142F8 */  lui        $at, 0x42f8
/* FF208 80055CF8 44810000 */  mtc1       $at, $f0
/* FF20C 80055CFC 3C013F4C */  lui        $at, 0x3f4c
/* FF210 80055D00 3421CCCD */  ori        $at, $at, 0xcccd
/* FF214 80055D04 44811000 */  mtc1       $at, $f2
/* FF218 80055D08 24020002 */  addiu      $v0, $zero, 2
/* FF21C 80055D0C A6C2001C */  sh         $v0, 0x1c($s6)
/* FF220 80055D10 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FF224 80055D14 E420C1C4 */  swc1       $f0, %lo(D_8006C1C4)($at)
/* FF228 80055D18 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* FF22C 80055D1C E422C1C8 */  swc1       $f2, %lo(D_8006C1C8)($at)
/* FF230 80055D20 08016A16 */  j          .L8005A858
/* FF234 80055D24 00001021 */   addu      $v0, $zero, $zero
.L80055D28:
/* FF238 80055D28 3C028007 */  lui        $v0, %hi(D_8006C564)
/* FF23C 80055D2C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* FF240 80055D30 14400009 */  bnez       $v0, .L80055D58
/* FF244 80055D34 24050040 */   addiu     $a1, $zero, 0x40
/* FF248 80055D38 2404006F */  addiu      $a0, $zero, 0x6f
/* FF24C 80055D3C 24060080 */  addiu      $a2, $zero, 0x80
/* FF250 80055D40 24070001 */  addiu      $a3, $zero, 1
/* FF254 80055D44 24020064 */  addiu      $v0, $zero, 0x64
/* FF258 80055D48 0C026E0C */  jal        func_8009B830
/* FF25C 80055D4C AFA20010 */   sw        $v0, 0x10($sp)
/* FF260 80055D50 3C018007 */  lui        $at, %hi(D_80069790)
/* FF264 80055D54 AC229790 */  sw         $v0, %lo(D_80069790)($at)
.L80055D58:
/* FF268 80055D58 0C00D8C1 */  jal        func_80036304_DF814
/* FF26C 80055D5C 24040021 */   addiu     $a0, $zero, 0x21
/* FF270 80055D60 8C44000C */  lw         $a0, 0xc($v0)
/* FF274 80055D64 0C028A40 */  jal        func_800A2900
/* FF278 80055D68 00000000 */   nop
/* FF27C 80055D6C 0C00D8C1 */  jal        func_80036304_DF814
/* FF280 80055D70 2404001E */   addiu     $a0, $zero, 0x1e
/* FF284 80055D74 00408021 */  addu       $s0, $v0, $zero
/* FF288 80055D78 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* FF28C 80055D7C C420C1C8 */  lwc1       $f0, %lo(D_8006C1C8)($at)
/* FF290 80055D80 8E04000C */  lw         $a0, 0xc($s0)
/* FF294 80055D84 44060000 */  mfc1       $a2, $f0
/* FF298 80055D88 00002821 */  addu       $a1, $zero, $zero
/* FF29C 80055D8C 0C02915B */  jal        func_800A456C
/* FF2A0 80055D90 00C03821 */   addu      $a3, $a2, $zero
/* FF2A4 80055D94 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FF2A8 80055D98 C422C1C4 */  lwc1       $f2, %lo(D_8006C1C4)($at)
/* FF2AC 80055D9C 3C014080 */  lui        $at, 0x4080
/* FF2B0 80055DA0 44810000 */  mtc1       $at, $f0
/* FF2B4 80055DA4 00000000 */  nop
/* FF2B8 80055DA8 46001082 */  mul.s      $f2, $f2, $f0
/* FF2BC 80055DAC 8E04000C */  lw         $a0, 0xc($s0)
/* FF2C0 80055DB0 24050260 */  addiu      $a1, $zero, 0x260
/* FF2C4 80055DB4 4600100D */  trunc.w.s  $f0, $f2
/* FF2C8 80055DB8 44060000 */  mfc1       $a2, $f0
/* FF2CC 80055DBC 00000000 */  nop
/* FF2D0 80055DC0 00063400 */  sll        $a2, $a2, 0x10
/* FF2D4 80055DC4 0C028D89 */  jal        func_800A3624
/* FF2D8 80055DC8 00063403 */   sra       $a2, $a2, 0x10
/* FF2DC 80055DCC 8E04000C */  lw         $a0, 0xc($s0)
/* FF2E0 80055DD0 0C028A40 */  jal        func_800A2900
/* FF2E4 80055DD4 00000000 */   nop
/* FF2E8 80055DD8 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FF2EC 80055DDC C424C1C4 */  lwc1       $f4, %lo(D_8006C1C4)($at)
/* FF2F0 80055DE0 3C013DA3 */  lui        $at, 0x3da3
/* FF2F4 80055DE4 3421D70A */  ori        $at, $at, 0xd70a
/* FF2F8 80055DE8 44810000 */  mtc1       $at, $f0
/* FF2FC 80055DEC 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* FF300 80055DF0 C422C1C8 */  lwc1       $f2, %lo(D_8006C1C8)($at)
/* FF304 80055DF4 46002101 */  sub.s      $f4, $f4, $f0
/* FF308 80055DF8 3C013A83 */  lui        $at, 0x3a83
/* FF30C 80055DFC 3421126F */  ori        $at, $at, 0x126f
/* FF310 80055E00 44810000 */  mtc1       $at, $f0
/* FF314 80055E04 00000000 */  nop
/* FF318 80055E08 46001080 */  add.s      $f2, $f2, $f0
/* FF31C 80055E0C 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FF320 80055E10 E424C1C4 */  swc1       $f4, %lo(D_8006C1C4)($at)
/* FF324 80055E14 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* FF328 80055E18 E422C1C8 */  swc1       $f2, %lo(D_8006C1C8)($at)
/* FF32C 80055E1C 0C00D8C1 */  jal        func_80036304_DF814
/* FF330 80055E20 240420C9 */   addiu     $a0, $zero, 0x20c9
/* FF334 80055E24 8C44000C */  lw         $a0, 0xc($v0)
/* FF338 80055E28 0C028A40 */  jal        func_800A2900
/* FF33C 80055E2C 00000000 */   nop
/* FF340 80055E30 0C00D8C1 */  jal        func_80036304_DF814
/* FF344 80055E34 240420D3 */   addiu     $a0, $zero, 0x20d3
/* FF348 80055E38 8C44000C */  lw         $a0, 0xc($v0)
/* FF34C 80055E3C 0C028A40 */  jal        func_800A2900
/* FF350 80055E40 00000000 */   nop
/* FF354 80055E44 3C038015 */  lui        $v1, %hi(D_80149F90)
/* FF358 80055E48 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* FF35C 80055E4C 2402003C */  addiu      $v0, $zero, 0x3c
/* FF360 80055E50 0043001A */  div        $zero, $v0, $v1
/* FF364 80055E54 14600002 */  bnez       $v1, .L80055E60
/* FF368 80055E58 00000000 */   nop
/* FF36C 80055E5C 0007000D */  break      7
.L80055E60:
/* FF370 80055E60 2401FFFF */   addiu     $at, $zero, -1
/* FF374 80055E64 14610004 */  bne        $v1, $at, .L80055E78
/* FF378 80055E68 3C018000 */   lui       $at, 0x8000
/* FF37C 80055E6C 14410002 */  bne        $v0, $at, .L80055E78
/* FF380 80055E70 00000000 */   nop
/* FF384 80055E74 0006000D */  break      6
.L80055E78:
/* FF388 80055E78 00001012 */   mflo      $v0
/* FF38C 80055E7C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* FF390 80055E80 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* FF394 80055E84 00021080 */  sll        $v0, $v0, 2
/* FF398 80055E88 0062182A */  slt        $v1, $v1, $v0
/* FF39C 80055E8C 14601272 */  bnez       $v1, .L8005A858
/* FF3A0 80055E90 00001021 */   addu      $v0, $zero, $zero
/* FF3A4 80055E94 24020003 */  addiu      $v0, $zero, 3
/* FF3A8 80055E98 08016A15 */  j          .L8005A854
/* FF3AC 80055E9C A6C2001C */   sh        $v0, 0x1c($s6)
.L80055EA0:
/* FF3B0 80055EA0 0C013F61 */  jal        func_8004FD84_F9294
/* FF3B4 80055EA4 00000000 */   nop
/* FF3B8 80055EA8 3C048007 */  lui        $a0, %hi(D_80069790)
/* FF3BC 80055EAC 8C849790 */  lw         $a0, %lo(D_80069790)($a0)
/* FF3C0 80055EB0 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* FF3C4 80055EB4 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* FF3C8 80055EB8 3C014370 */  lui        $at, 0x4370
/* FF3CC 80055EBC 44810000 */  mtc1       $at, $f0
/* FF3D0 80055EC0 3C014100 */  lui        $at, 0x4100
/* FF3D4 80055EC4 44811000 */  mtc1       $at, $f2
/* FF3D8 80055EC8 24020004 */  addiu      $v0, $zero, 4
/* FF3DC 80055ECC 3C018007 */  lui        $at, %hi(D_8006C1E0)
/* FF3E0 80055ED0 AC20C1E0 */  sw         $zero, %lo(D_8006C1E0)($at)
/* FF3E4 80055ED4 A6C2001C */  sh         $v0, 0x1c($s6)
/* FF3E8 80055ED8 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* FF3EC 80055EDC E420C1EC */  swc1       $f0, %lo(D_8006C1EC)($at)
/* FF3F0 80055EE0 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* FF3F4 80055EE4 0C026E66 */  jal        func_8009B998
/* FF3F8 80055EE8 E422C1F0 */   swc1      $f2, %lo(D_8006C1F0)($at)
/* FF3FC 80055EEC 24040008 */  addiu      $a0, $zero, 8
/* FF400 80055EF0 2405FFFF */  addiu      $a1, $zero, -1
/* FF404 80055EF4 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* FF408 80055EF8 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* FF40C 80055EFC 24060001 */  addiu      $a2, $zero, 1
/* FF410 80055F00 24020001 */  addiu      $v0, $zero, 1
/* FF414 80055F04 0C026C9A */  jal        func_8009B268
/* FF418 80055F08 AFA20010 */   sw        $v0, 0x10($sp)
.L80055F0C:
/* FF41C 80055F0C 0C00DFD6 */  jal        func_80037F58_E1468
/* FF420 80055F10 24040001 */   addiu     $a0, $zero, 1
/* FF424 80055F14 00408021 */  addu       $s0, $v0, $zero
/* FF428 80055F18 8E040004 */  lw         $a0, 4($s0)
/* FF42C 80055F1C 3C014000 */  lui        $at, 0x4000
/* FF430 80055F20 44810000 */  mtc1       $at, $f0
/* FF434 80055F24 3C018007 */  lui        $at, %hi(D_8006C1E0)
/* FF438 80055F28 C422C1E0 */  lwc1       $f2, %lo(D_8006C1E0)($at)
/* FF43C 80055F2C 3C058007 */  lui        $a1, %hi(D_8006A3B8)
/* FF440 80055F30 24A5A3B8 */  addiu      $a1, $a1, %lo(D_8006A3B8)
/* FF444 80055F34 AE000014 */  sw         $zero, 0x14($s0)
/* FF448 80055F38 E6000010 */  swc1       $f0, 0x10($s0)
/* FF44C 80055F3C 0C0284DC */  jal        func_800A1370
/* FF450 80055F40 E6020018 */   swc1      $f2, 0x18($s0)
/* FF454 80055F44 8E040004 */  lw         $a0, 4($s0)
/* FF458 80055F48 00021400 */  sll        $v0, $v0, 0x10
/* FF45C 80055F4C 0C028509 */  jal        func_800A1424
/* FF460 80055F50 00022C03 */   sra       $a1, $v0, 0x10
/* FF464 80055F54 00403021 */  addu       $a2, $v0, $zero
/* FF468 80055F58 94C2000A */  lhu        $v0, 0xa($a2)
/* FF46C 80055F5C 94C3001A */  lhu        $v1, 0x1a($a2)
/* FF470 80055F60 94C5002A */  lhu        $a1, 0x2a($a2)
/* FF474 80055F64 24040001 */  addiu      $a0, $zero, 1
/* FF478 80055F68 24420004 */  addiu      $v0, $v0, 4
/* FF47C 80055F6C 24630004 */  addiu      $v1, $v1, 4
/* FF480 80055F70 24A50004 */  addiu      $a1, $a1, 4
/* FF484 80055F74 A4C2000A */  sh         $v0, 0xa($a2)
/* FF488 80055F78 A4C3001A */  sh         $v1, 0x1a($a2)
/* FF48C 80055F7C 0C00E032 */  jal        func_800380C8_E15D8
/* FF490 80055F80 A4C5002A */   sh        $a1, 0x2a($a2)
/* FF494 80055F84 3C018007 */  lui        $at, %hi(D_8006C1E0)
/* FF498 80055F88 C420C1E0 */  lwc1       $f0, %lo(D_8006C1E0)($at)
/* FF49C 80055F8C 3C013CA3 */  lui        $at, 0x3ca3
/* FF4A0 80055F90 3421D70A */  ori        $at, $at, 0xd70a
/* FF4A4 80055F94 44811000 */  mtc1       $at, $f2
/* FF4A8 80055F98 00000000 */  nop
/* FF4AC 80055F9C 46020000 */  add.s      $f0, $f0, $f2
/* FF4B0 80055FA0 3C018007 */  lui        $at, %hi(D_8006C1E0)
/* FF4B4 80055FA4 E420C1E0 */  swc1       $f0, %lo(D_8006C1E0)($at)
/* FF4B8 80055FA8 0C00D8C1 */  jal        func_80036304_DF814
/* FF4BC 80055FAC 24040022 */   addiu     $a0, $zero, 0x22
/* FF4C0 80055FB0 8C44000C */  lw         $a0, 0xc($v0)
/* FF4C4 80055FB4 0C028A40 */  jal        func_800A2900
/* FF4C8 80055FB8 00000000 */   nop
/* FF4CC 80055FBC 0C00D8C1 */  jal        func_80036304_DF814
/* FF4D0 80055FC0 2404001F */   addiu     $a0, $zero, 0x1f
/* FF4D4 80055FC4 8C44000C */  lw         $a0, 0xc($v0)
/* FF4D8 80055FC8 0C028A40 */  jal        func_800A2900
/* FF4DC 80055FCC 00000000 */   nop
/* FF4E0 80055FD0 0C00D8C1 */  jal        func_80036304_DF814
/* FF4E4 80055FD4 24040020 */   addiu     $a0, $zero, 0x20
/* FF4E8 80055FD8 8C44000C */  lw         $a0, 0xc($v0)
/* FF4EC 80055FDC 0C028A40 */  jal        func_800A2900
/* FF4F0 80055FE0 00000000 */   nop
/* FF4F4 80055FE4 0C00D8C1 */  jal        func_80036304_DF814
/* FF4F8 80055FE8 240420CA */   addiu     $a0, $zero, 0x20ca
/* FF4FC 80055FEC 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* FF500 80055FF0 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* FF504 80055FF4 3C014F00 */  lui        $at, 0x4f00
/* FF508 80055FF8 44810000 */  mtc1       $at, $f0
/* FF50C 80055FFC 00000000 */  nop
/* FF510 80056000 4602003E */  c.le.s     $f0, $f2
/* FF514 80056004 00000000 */  nop
/* FF518 80056008 00000000 */  nop
/* FF51C 8005600C 45010006 */  bc1t       .L80056028
/* FF520 80056010 00408021 */   addu      $s0, $v0, $zero
/* FF524 80056014 4600100D */  trunc.w.s  $f0, $f2
/* FF528 80056018 44030000 */  mfc1       $v1, $f0
/* FF52C 8005601C 00000000 */  nop
/* FF530 80056020 08015810 */  j          .L80056040
/* FF534 80056024 306200FF */   andi      $v0, $v1, 0xff
.L80056028:
/* FF538 80056028 46001001 */  sub.s      $f0, $f2, $f0
/* FF53C 8005602C 4600008D */  trunc.w.s  $f2, $f0
/* FF540 80056030 44031000 */  mfc1       $v1, $f2
/* FF544 80056034 3C028000 */  lui        $v0, 0x8000
/* FF548 80056038 00621825 */  or         $v1, $v1, $v0
/* FF54C 8005603C 306200FF */  andi       $v0, $v1, 0xff
.L80056040:
/* FF550 80056040 AFA20010 */  sw         $v0, 0x10($sp)
/* FF554 80056044 8E04000C */  lw         $a0, 0xc($s0)
/* FF558 80056048 240500FF */  addiu      $a1, $zero, 0xff
/* FF55C 8005604C 240600FF */  addiu      $a2, $zero, 0xff
/* FF560 80056050 0C028E41 */  jal        func_800A3904
/* FF564 80056054 240700FF */   addiu     $a3, $zero, 0xff
/* FF568 80056058 8E04000C */  lw         $a0, 0xc($s0)
/* FF56C 8005605C 0C028A40 */  jal        func_800A2900
/* FF570 80056060 00000000 */   nop
/* FF574 80056064 0C00D8C1 */  jal        func_80036304_DF814
/* FF578 80056068 240420D4 */   addiu     $a0, $zero, 0x20d4
/* FF57C 8005606C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* FF580 80056070 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* FF584 80056074 3C013F4C */  lui        $at, 0x3f4c
/* FF588 80056078 3421CCCD */  ori        $at, $at, 0xcccd
/* FF58C 8005607C 44810000 */  mtc1       $at, $f0
/* FF590 80056080 00000000 */  nop
/* FF594 80056084 46001082 */  mul.s      $f2, $f2, $f0
/* FF598 80056088 3C014F00 */  lui        $at, 0x4f00
/* FF59C 8005608C 44810000 */  mtc1       $at, $f0
/* FF5A0 80056090 00000000 */  nop
/* FF5A4 80056094 4602003E */  c.le.s     $f0, $f2
/* FF5A8 80056098 00000000 */  nop
/* FF5AC 8005609C 00000000 */  nop
/* FF5B0 800560A0 45010006 */  bc1t       .L800560BC
/* FF5B4 800560A4 00408021 */   addu      $s0, $v0, $zero
/* FF5B8 800560A8 4600100D */  trunc.w.s  $f0, $f2
/* FF5BC 800560AC 44030000 */  mfc1       $v1, $f0
/* FF5C0 800560B0 00000000 */  nop
/* FF5C4 800560B4 08015835 */  j          .L800560D4
/* FF5C8 800560B8 306200FF */   andi      $v0, $v1, 0xff
.L800560BC:
/* FF5CC 800560BC 46001001 */  sub.s      $f0, $f2, $f0
/* FF5D0 800560C0 4600008D */  trunc.w.s  $f2, $f0
/* FF5D4 800560C4 44031000 */  mfc1       $v1, $f2
/* FF5D8 800560C8 3C028000 */  lui        $v0, 0x8000
/* FF5DC 800560CC 00621825 */  or         $v1, $v1, $v0
/* FF5E0 800560D0 306200FF */  andi       $v0, $v1, 0xff
.L800560D4:
/* FF5E4 800560D4 AFA20010 */  sw         $v0, 0x10($sp)
/* FF5E8 800560D8 8E04000C */  lw         $a0, 0xc($s0)
/* FF5EC 800560DC 240500FF */  addiu      $a1, $zero, 0xff
/* FF5F0 800560E0 240600FF */  addiu      $a2, $zero, 0xff
/* FF5F4 800560E4 0C028E41 */  jal        func_800A3904
/* FF5F8 800560E8 240700FF */   addiu     $a3, $zero, 0xff
/* FF5FC 800560EC 8E04000C */  lw         $a0, 0xc($s0)
/* FF600 800560F0 0C028A40 */  jal        func_800A2900
/* FF604 800560F4 00000000 */   nop
/* FF608 800560F8 0C00D8C1 */  jal        func_80036304_DF814
/* FF60C 800560FC 240420CB */   addiu     $a0, $zero, 0x20cb
/* FF610 80056100 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* FF614 80056104 C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* FF618 80056108 3C014F00 */  lui        $at, 0x4f00
/* FF61C 8005610C 44810000 */  mtc1       $at, $f0
/* FF620 80056110 00000000 */  nop
/* FF624 80056114 4602003E */  c.le.s     $f0, $f2
/* FF628 80056118 00000000 */  nop
/* FF62C 8005611C 00000000 */  nop
/* FF630 80056120 45010006 */  bc1t       .L8005613C
/* FF634 80056124 00408021 */   addu      $s0, $v0, $zero
/* FF638 80056128 4600100D */  trunc.w.s  $f0, $f2
/* FF63C 8005612C 44030000 */  mfc1       $v1, $f0
/* FF640 80056130 00000000 */  nop
/* FF644 80056134 08015855 */  j          .L80056154
/* FF648 80056138 306200FF */   andi      $v0, $v1, 0xff
.L8005613C:
/* FF64C 8005613C 46001001 */  sub.s      $f0, $f2, $f0
/* FF650 80056140 4600008D */  trunc.w.s  $f2, $f0
/* FF654 80056144 44031000 */  mfc1       $v1, $f2
/* FF658 80056148 3C028000 */  lui        $v0, 0x8000
/* FF65C 8005614C 00621825 */  or         $v1, $v1, $v0
/* FF660 80056150 306200FF */  andi       $v0, $v1, 0xff
.L80056154:
/* FF664 80056154 AFA20010 */  sw         $v0, 0x10($sp)
/* FF668 80056158 8E04000C */  lw         $a0, 0xc($s0)
/* FF66C 8005615C 240500FF */  addiu      $a1, $zero, 0xff
/* FF670 80056160 240600FF */  addiu      $a2, $zero, 0xff
/* FF674 80056164 0C028E41 */  jal        func_800A3904
/* FF678 80056168 240700FF */   addiu     $a3, $zero, 0xff
/* FF67C 8005616C 8E04000C */  lw         $a0, 0xc($s0)
/* FF680 80056170 0C028A40 */  jal        func_800A2900
/* FF684 80056174 00000000 */   nop
/* FF688 80056178 0C00D8C1 */  jal        func_80036304_DF814
/* FF68C 8005617C 240420D5 */   addiu     $a0, $zero, 0x20d5
/* FF690 80056180 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* FF694 80056184 C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* FF698 80056188 3C013F4C */  lui        $at, 0x3f4c
/* FF69C 8005618C 3421CCCD */  ori        $at, $at, 0xcccd
/* FF6A0 80056190 44810000 */  mtc1       $at, $f0
/* FF6A4 80056194 00000000 */  nop
/* FF6A8 80056198 46001082 */  mul.s      $f2, $f2, $f0
/* FF6AC 8005619C 3C014F00 */  lui        $at, 0x4f00
/* FF6B0 800561A0 44810000 */  mtc1       $at, $f0
/* FF6B4 800561A4 00000000 */  nop
/* FF6B8 800561A8 4602003E */  c.le.s     $f0, $f2
/* FF6BC 800561AC 00000000 */  nop
/* FF6C0 800561B0 00000000 */  nop
/* FF6C4 800561B4 45010006 */  bc1t       .L800561D0
/* FF6C8 800561B8 00408021 */   addu      $s0, $v0, $zero
/* FF6CC 800561BC 4600100D */  trunc.w.s  $f0, $f2
/* FF6D0 800561C0 44030000 */  mfc1       $v1, $f0
/* FF6D4 800561C4 00000000 */  nop
/* FF6D8 800561C8 0801587A */  j          .L800561E8
/* FF6DC 800561CC 306200FF */   andi      $v0, $v1, 0xff
.L800561D0:
/* FF6E0 800561D0 46001001 */  sub.s      $f0, $f2, $f0
/* FF6E4 800561D4 4600008D */  trunc.w.s  $f2, $f0
/* FF6E8 800561D8 44031000 */  mfc1       $v1, $f2
/* FF6EC 800561DC 3C028000 */  lui        $v0, 0x8000
/* FF6F0 800561E0 00621825 */  or         $v1, $v1, $v0
/* FF6F4 800561E4 306200FF */  andi       $v0, $v1, 0xff
.L800561E8:
/* FF6F8 800561E8 AFA20010 */  sw         $v0, 0x10($sp)
/* FF6FC 800561EC 8E04000C */  lw         $a0, 0xc($s0)
/* FF700 800561F0 240500FF */  addiu      $a1, $zero, 0xff
/* FF704 800561F4 240600FF */  addiu      $a2, $zero, 0xff
/* FF708 800561F8 0C028E41 */  jal        func_800A3904
/* FF70C 800561FC 240700FF */   addiu     $a3, $zero, 0xff
/* FF710 80056200 8E04000C */  lw         $a0, 0xc($s0)
/* FF714 80056204 0C028A40 */  jal        func_800A2900
/* FF718 80056208 00000000 */   nop
/* FF71C 8005620C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* FF720 80056210 C424C1EC */  lwc1       $f4, %lo(D_8006C1EC)($at)
/* FF724 80056214 44800000 */  mtc1       $zero, $f0
/* FF728 80056218 00000000 */  nop
/* FF72C 8005621C 4604003C */  c.lt.s     $f0, $f4
/* FF730 80056220 00000000 */  nop
/* FF734 80056224 4500000C */  bc1f       .L80056258
/* FF738 80056228 00000000 */   nop
/* FF73C 8005622C 3C014100 */  lui        $at, 0x4100
/* FF740 80056230 44810000 */  mtc1       $at, $f0
/* FF744 80056234 00000000 */  nop
/* FF748 80056238 46002101 */  sub.s      $f4, $f4, $f0
/* FF74C 8005623C 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* FF750 80056240 C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* FF754 80056244 46001080 */  add.s      $f2, $f2, $f0
/* FF758 80056248 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* FF75C 8005624C E424C1EC */  swc1       $f4, %lo(D_8006C1EC)($at)
/* FF760 80056250 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* FF764 80056254 E422C1F0 */  swc1       $f2, %lo(D_8006C1F0)($at)
.L80056258:
/* FF768 80056258 3C028015 */  lui        $v0, %hi(D_80149F90)
/* FF76C 8005625C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* FF770 80056260 2410003C */  addiu      $s0, $zero, 0x3c
/* FF774 80056264 0202001A */  div        $zero, $s0, $v0
/* FF778 80056268 14400002 */  bnez       $v0, .L80056274
/* FF77C 8005626C 00000000 */   nop
/* FF780 80056270 0007000D */  break      7
.L80056274:
/* FF784 80056274 2401FFFF */   addiu     $at, $zero, -1
/* FF788 80056278 14410004 */  bne        $v0, $at, .L8005628C
/* FF78C 8005627C 3C018000 */   lui       $at, 0x8000
/* FF790 80056280 16010002 */  bne        $s0, $at, .L8005628C
/* FF794 80056284 00000000 */   nop
/* FF798 80056288 0006000D */  break      6
.L8005628C:
/* FF79C 8005628C 00002012 */   mflo      $a0
/* FF7A0 80056290 3C038007 */  lui        $v1, %hi(D_8006C564)
/* FF7A4 80056294 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* FF7A8 80056298 000410C0 */  sll        $v0, $a0, 3
/* FF7AC 8005629C 00441023 */  subu       $v0, $v0, $a0
/* FF7B0 800562A0 14620003 */  bne        $v1, $v0, .L800562B0
/* FF7B4 800562A4 00000000 */   nop
/* FF7B8 800562A8 0C02A5C1 */  jal        func_800A9704
/* FF7BC 800562AC 00000000 */   nop
.L800562B0:
/* FF7C0 800562B0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* FF7C4 800562B4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* FF7C8 800562B8 0202001A */  div        $zero, $s0, $v0
/* FF7CC 800562BC 14400002 */  bnez       $v0, .L800562C8
/* FF7D0 800562C0 00000000 */   nop
/* FF7D4 800562C4 0007000D */  break      7
.L800562C8:
/* FF7D8 800562C8 2401FFFF */   addiu     $at, $zero, -1
/* FF7DC 800562CC 14410004 */  bne        $v0, $at, .L800562E0
/* FF7E0 800562D0 3C018000 */   lui       $at, 0x8000
/* FF7E4 800562D4 16010002 */  bne        $s0, $at, .L800562E0
/* FF7E8 800562D8 00000000 */   nop
/* FF7EC 800562DC 0006000D */  break      6
.L800562E0:
/* FF7F0 800562E0 00001012 */   mflo      $v0
/* FF7F4 800562E4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* FF7F8 800562E8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* FF7FC 800562EC 000210C0 */  sll        $v0, $v0, 3
/* FF800 800562F0 0062182A */  slt        $v1, $v1, $v0
/* FF804 800562F4 14601158 */  bnez       $v1, .L8005A858
/* FF808 800562F8 00001021 */   addu      $v0, $zero, $zero
/* FF80C 800562FC 24020005 */  addiu      $v0, $zero, 5
/* FF810 80056300 08016A15 */  j          .L8005A854
/* FF814 80056304 A6C2001C */   sh        $v0, 0x1c($s6)
.L80056308:
/* FF818 80056308 0C013FFD */  jal        func_8004FFF4_F9504
/* FF81C 8005630C 00000000 */   nop
/* FF820 80056310 3C028015 */  lui        $v0, %hi(D_80149F90)
/* FF824 80056314 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* FF828 80056318 2404003C */  addiu      $a0, $zero, 0x3c
/* FF82C 8005631C 0082001A */  div        $zero, $a0, $v0
/* FF830 80056320 14400002 */  bnez       $v0, .L8005632C
/* FF834 80056324 00000000 */   nop
/* FF838 80056328 0007000D */  break      7
.L8005632C:
/* FF83C 8005632C 2401FFFF */   addiu     $at, $zero, -1
/* FF840 80056330 14410004 */  bne        $v0, $at, .L80056344
/* FF844 80056334 3C018000 */   lui       $at, 0x8000
/* FF848 80056338 14810002 */  bne        $a0, $at, .L80056344
/* FF84C 8005633C 00000000 */   nop
/* FF850 80056340 0006000D */  break      6
.L80056344:
/* FF854 80056344 00002012 */   mflo      $a0
/* FF858 80056348 3C01C100 */  lui        $at, 0xc100
/* FF85C 8005634C 44810000 */  mtc1       $at, $f0
/* FF860 80056350 3C0142BE */  lui        $at, 0x42be
/* FF864 80056354 44811000 */  mtc1       $at, $f2
/* FF868 80056358 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* FF86C 8005635C A420C1E4 */  sh         $zero, %lo(D_8006C1E4)($at)
/* FF870 80056360 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FF874 80056364 E420C1C0 */  swc1       $f0, %lo(D_8006C1C0)($at)
/* FF878 80056368 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FF87C 8005636C 0C02A5AF */  jal        func_800A96BC
/* FF880 80056370 E422C1C4 */   swc1      $f2, %lo(D_8006C1C4)($at)
/* FF884 80056374 00001021 */  addu       $v0, $zero, $zero
/* FF888 80056378 24030006 */  addiu      $v1, $zero, 6
/* FF88C 8005637C 08016A16 */  j          .L8005A858
/* FF890 80056380 A6C3001C */   sh        $v1, 0x1c($s6)
.L80056384:
/* FF894 80056384 3C038015 */  lui        $v1, %hi(D_80149F90)
/* FF898 80056388 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* FF89C 8005638C 2402003C */  addiu      $v0, $zero, 0x3c
/* FF8A0 80056390 0043001A */  div        $zero, $v0, $v1
/* FF8A4 80056394 14600002 */  bnez       $v1, .L800563A0
/* FF8A8 80056398 00000000 */   nop
/* FF8AC 8005639C 0007000D */  break      7
.L800563A0:
/* FF8B0 800563A0 2401FFFF */   addiu     $at, $zero, -1
/* FF8B4 800563A4 14610004 */  bne        $v1, $at, .L800563B8
/* FF8B8 800563A8 3C018000 */   lui       $at, 0x8000
/* FF8BC 800563AC 14410002 */  bne        $v0, $at, .L800563B8
/* FF8C0 800563B0 00000000 */   nop
/* FF8C4 800563B4 0006000D */  break      6
.L800563B8:
/* FF8C8 800563B8 00001012 */   mflo      $v0
/* FF8CC 800563BC 3C048007 */  lui        $a0, %hi(D_8006C564)
/* FF8D0 800563C0 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* FF8D4 800563C4 00021840 */  sll        $v1, $v0, 1
/* FF8D8 800563C8 00621821 */  addu       $v1, $v1, $v0
/* FF8DC 800563CC 00031840 */  sll        $v1, $v1, 1
/* FF8E0 800563D0 1483000D */  bne        $a0, $v1, .L80056408
/* FF8E4 800563D4 00000000 */   nop
/* FF8E8 800563D8 3C048007 */  lui        $a0, %hi(D_80069790)
/* FF8EC 800563DC 0C026E4E */  jal        func_8009B938
/* FF8F0 800563E0 24849790 */   addiu     $a0, $a0, %lo(D_80069790)
/* FF8F4 800563E4 24040070 */  addiu      $a0, $zero, 0x70
/* FF8F8 800563E8 24050060 */  addiu      $a1, $zero, 0x60
/* FF8FC 800563EC 24060080 */  addiu      $a2, $zero, 0x80
/* FF900 800563F0 24070001 */  addiu      $a3, $zero, 1
/* FF904 800563F4 24020064 */  addiu      $v0, $zero, 0x64
/* FF908 800563F8 0C026E0C */  jal        func_8009B830
/* FF90C 800563FC AFA20010 */   sw        $v0, 0x10($sp)
/* FF910 80056400 3C018007 */  lui        $at, %hi(D_80069790)
/* FF914 80056404 AC229790 */  sw         $v0, %lo(D_80069790)($at)
.L80056408:
/* FF918 80056408 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FF91C 8005640C C422C1C0 */  lwc1       $f2, %lo(D_8006C1C0)($at)
/* FF920 80056410 44803000 */  mtc1       $zero, $f6
/* FF924 80056414 00000000 */  nop
/* FF928 80056418 4606103C */  c.lt.s     $f2, $f6
/* FF92C 8005641C 00000000 */  nop
/* FF930 80056420 4500001E */  bc1f       .L8005649C
/* FF934 80056424 00000000 */   nop
/* FF938 80056428 3C013D4C */  lui        $at, 0x3d4c
/* FF93C 8005642C 3421CCCD */  ori        $at, $at, 0xcccd
/* FF940 80056430 44810000 */  mtc1       $at, $f0
/* FF944 80056434 00000000 */  nop
/* FF948 80056438 46001000 */  add.s      $f0, $f2, $f0
/* FF94C 8005643C 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FF950 80056440 E420C1C0 */  swc1       $f0, %lo(D_8006C1C0)($at)
/* FF954 80056444 0C00DFD6 */  jal        func_80037F58_E1468
/* FF958 80056448 24040002 */   addiu     $a0, $zero, 2
/* FF95C 8005644C 00408021 */  addu       $s0, $v0, $zero
/* FF960 80056450 8E040004 */  lw         $a0, 4($s0)
/* FF964 80056454 3C058007 */  lui        $a1, %hi(D_8006A3B8)
/* FF968 80056458 0C0284DC */  jal        func_800A1370
/* FF96C 8005645C 24A5A3B8 */   addiu     $a1, $a1, %lo(D_8006A3B8)
/* FF970 80056460 8E040004 */  lw         $a0, 4($s0)
/* FF974 80056464 00021400 */  sll        $v0, $v0, 0x10
/* FF978 80056468 0C028509 */  jal        func_800A1424
/* FF97C 8005646C 00022C03 */   sra       $a1, $v0, 0x10
/* FF980 80056470 00403021 */  addu       $a2, $v0, $zero
/* FF984 80056474 94C2000A */  lhu        $v0, 0xa($a2)
/* FF988 80056478 94C3001A */  lhu        $v1, 0x1a($a2)
/* FF98C 8005647C 94C4002A */  lhu        $a0, 0x2a($a2)
/* FF990 80056480 24420004 */  addiu      $v0, $v0, 4
/* FF994 80056484 24630004 */  addiu      $v1, $v1, 4
/* FF998 80056488 24840004 */  addiu      $a0, $a0, 4
/* FF99C 8005648C A4C2000A */  sh         $v0, 0xa($a2)
/* FF9A0 80056490 A4C3001A */  sh         $v1, 0x1a($a2)
/* FF9A4 80056494 08015955 */  j          .L80056554
/* FF9A8 80056498 A4C4002A */   sh        $a0, 0x2a($a2)
.L8005649C:
/* FF9AC 8005649C 3C028015 */  lui        $v0, %hi(D_8014A068)
/* FF9B0 800564A0 2442A068 */  addiu      $v0, $v0, %lo(D_8014A068)
/* FF9B4 800564A4 C4420000 */  lwc1       $f2, ($v0)
/* FF9B8 800564A8 3C013D23 */  lui        $at, 0x3d23
/* FF9BC 800564AC 3421D70A */  ori        $at, $at, 0xd70a
/* FF9C0 800564B0 44810000 */  mtc1       $at, $f0
/* FF9C4 800564B4 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FF9C8 800564B8 C424C1C4 */  lwc1       $f4, %lo(D_8006C1C4)($at)
/* FF9CC 800564BC 46001081 */  sub.s      $f2, $f2, $f0
/* FF9D0 800564C0 3C013DCC */  lui        $at, 0x3dcc
/* FF9D4 800564C4 3421CCCD */  ori        $at, $at, 0xcccd
/* FF9D8 800564C8 44810000 */  mtc1       $at, $f0
/* FF9DC 800564CC 00000000 */  nop
/* FF9E0 800564D0 46002101 */  sub.s      $f4, $f4, $f0
/* FF9E4 800564D4 3C0142C8 */  lui        $at, 0x42c8
/* FF9E8 800564D8 44810000 */  mtc1       $at, $f0
/* FF9EC 800564DC 00000000 */  nop
/* FF9F0 800564E0 4604003C */  c.lt.s     $f0, $f4
/* FF9F4 800564E4 E4420000 */  swc1       $f2, ($v0)
/* FF9F8 800564E8 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FF9FC 800564EC E424C1C4 */  swc1       $f4, %lo(D_8006C1C4)($at)
/* FFA00 800564F0 45000004 */  bc1f       .L80056504
/* FFA04 800564F4 00000000 */   nop
/* FFA08 800564F8 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FFA0C 800564FC 08015947 */  j          .L8005651C
/* FFA10 80056500 E420C1C4 */   swc1      $f0, %lo(D_8006C1C4)($at)
.L80056504:
/* FFA14 80056504 4606203C */  c.lt.s     $f4, $f6
/* FFA18 80056508 00000000 */  nop
/* FFA1C 8005650C 45000003 */  bc1f       .L8005651C
/* FFA20 80056510 00000000 */   nop
/* FFA24 80056514 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FFA28 80056518 E426C1C4 */  swc1       $f6, %lo(D_8006C1C4)($at)
.L8005651C:
/* FFA2C 8005651C 3C038007 */  lui        $v1, %hi(D_8006C1E4)
/* FFA30 80056520 9463C1E4 */  lhu        $v1, %lo(D_8006C1E4)($v1)
/* FFA34 80056524 2462FFF9 */  addiu      $v0, $v1, -7
/* FFA38 80056528 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* FFA3C 8005652C A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
/* FFA40 80056530 00021400 */  sll        $v0, $v0, 0x10
/* FFA44 80056534 00022403 */  sra        $a0, $v0, 0x10
/* FFA48 80056538 28820168 */  slti       $v0, $a0, 0x168
/* FFA4C 8005653C 10400003 */  beqz       $v0, .L8005654C
/* FFA50 80056540 2462FE91 */   addiu     $v0, $v1, -0x16f
/* FFA54 80056544 04810003 */  bgez       $a0, .L80056554
/* FFA58 80056548 24620161 */   addiu     $v0, $v1, 0x161
.L8005654C:
/* FFA5C 8005654C 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* FFA60 80056550 A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
.L80056554:
/* FFA64 80056554 0C00DFD6 */  jal        func_80037F58_E1468
/* FFA68 80056558 24040002 */   addiu     $a0, $zero, 2
/* FFA6C 8005655C 00408021 */  addu       $s0, $v0, $zero
/* FFA70 80056560 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FFA74 80056564 C420C1C0 */  lwc1       $f0, %lo(D_8006C1C0)($at)
/* FFA78 80056568 3C0142D2 */  lui        $at, 0x42d2
/* FFA7C 8005656C 44811000 */  mtc1       $at, $f2
/* FFA80 80056570 24040002 */  addiu      $a0, $zero, 2
/* FFA84 80056574 00009021 */  addu       $s2, $zero, $zero
/* FFA88 80056578 AE000018 */  sw         $zero, 0x18($s0)
/* FFA8C 8005657C E6000010 */  swc1       $f0, 0x10($s0)
/* FFA90 80056580 0C00E032 */  jal        func_800380C8_E15D8
/* FFA94 80056584 E6020014 */   swc1      $f2, 0x14($s0)
/* FFA98 80056588 0C00DFD6 */  jal        func_80037F58_E1468
/* FFA9C 8005658C 24040003 */   addiu     $a0, $zero, 3
/* FFAA0 80056590 00408021 */  addu       $s0, $v0, $zero
/* FFAA4 80056594 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* FFAA8 80056598 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* FFAAC 8005659C 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FFAB0 800565A0 C424C1C0 */  lwc1       $f4, %lo(D_8006C1C0)($at)
/* FFAB4 800565A4 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FFAB8 800565A8 C426C1C4 */  lwc1       $f6, %lo(D_8006C1C4)($at)
/* FFABC 800565AC 3C0140A0 */  lui        $at, 0x40a0
/* FFAC0 800565B0 44811000 */  mtc1       $at, $f2
/* FFAC4 800565B4 00021400 */  sll        $v0, $v0, 0x10
/* FFAC8 800565B8 00021C03 */  sra        $v1, $v0, 0x10
/* FFACC 800565BC 000217C2 */  srl        $v0, $v0, 0x1f
/* FFAD0 800565C0 00621021 */  addu       $v0, $v1, $v0
/* FFAD4 800565C4 00021043 */  sra        $v0, $v0, 1
/* FFAD8 800565C8 00021040 */  sll        $v0, $v0, 1
/* FFADC 800565CC 00621823 */  subu       $v1, $v1, $v0
/* FFAE0 800565D0 00031C00 */  sll        $v1, $v1, 0x10
/* FFAE4 800565D4 00031C03 */  sra        $v1, $v1, 0x10
/* FFAE8 800565D8 44830000 */  mtc1       $v1, $f0
/* FFAEC 800565DC 00000000 */  nop
/* FFAF0 800565E0 46800020 */  cvt.s.w    $f0, $f0
/* FFAF4 800565E4 46020002 */  mul.s      $f0, $f0, $f2
/* FFAF8 800565E8 24040003 */  addiu      $a0, $zero, 3
/* FFAFC 800565EC AE000018 */  sw         $zero, 0x18($s0)
/* FFB00 800565F0 AE00001C */  sw         $zero, 0x1c($s0)
/* FFB04 800565F4 AE000024 */  sw         $zero, 0x24($s0)
/* FFB08 800565F8 E6040010 */  swc1       $f4, 0x10($s0)
/* FFB0C 800565FC E6060014 */  swc1       $f6, 0x14($s0)
/* FFB10 80056600 0C00E032 */  jal        func_800380C8_E15D8
/* FFB14 80056604 E6000020 */   swc1      $f0, 0x20($s0)
/* FFB18 80056608 0C00DFD6 */  jal        func_80037F58_E1468
/* FFB1C 8005660C 24040004 */   addiu     $a0, $zero, 4
/* FFB20 80056610 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FFB24 80056614 C420C1C0 */  lwc1       $f0, %lo(D_8006C1C0)($at)
/* FFB28 80056618 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FFB2C 8005661C C422C1C4 */  lwc1       $f2, %lo(D_8006C1C4)($at)
/* FFB30 80056620 3C038007 */  lui        $v1, %hi(D_8006C1E4)
/* FFB34 80056624 8463C1E4 */  lh         $v1, %lo(D_8006C1E4)($v1)
/* FFB38 80056628 00408021 */  addu       $s0, $v0, $zero
/* FFB3C 8005662C 24040004 */  addiu      $a0, $zero, 4
/* FFB40 80056630 AE000018 */  sw         $zero, 0x18($s0)
/* FFB44 80056634 AE00001C */  sw         $zero, 0x1c($s0)
/* FFB48 80056638 AE000024 */  sw         $zero, 0x24($s0)
/* FFB4C 8005663C E6000010 */  swc1       $f0, 0x10($s0)
/* FFB50 80056640 44830000 */  mtc1       $v1, $f0
/* FFB54 80056644 00000000 */  nop
/* FFB58 80056648 46800020 */  cvt.s.w    $f0, $f0
/* FFB5C 8005664C E6020014 */  swc1       $f2, 0x14($s0)
/* FFB60 80056650 0C00E032 */  jal        func_800380C8_E15D8
/* FFB64 80056654 E6000020 */   swc1      $f0, 0x20($s0)
/* FFB68 80056658 26500006 */  addiu      $s0, $s2, 6
.L8005665C:
/* FFB6C 8005665C 3210FFFF */  andi       $s0, $s0, 0xffff
/* FFB70 80056660 0C00DFD6 */  jal        func_80037F58_E1468
/* FFB74 80056664 02002021 */   addu      $a0, $s0, $zero
/* FFB78 80056668 0C00E032 */  jal        func_800380C8_E15D8
/* FFB7C 8005666C 02002021 */   addu      $a0, $s0, $zero
/* FFB80 80056670 26520001 */  addiu      $s2, $s2, 1
/* FFB84 80056674 3242FFFF */  andi       $v0, $s2, 0xffff
/* FFB88 80056678 2C42000C */  sltiu      $v0, $v0, 0xc
/* FFB8C 8005667C 5440FFF7 */  bnezl      $v0, .L8005665C
/* FFB90 80056680 26500006 */   addiu     $s0, $s2, 6
/* FFB94 80056684 0C00D8C1 */  jal        func_80036304_DF814
/* FFB98 80056688 24040021 */   addiu     $a0, $zero, 0x21
/* FFB9C 8005668C 8C44000C */  lw         $a0, 0xc($v0)
/* FFBA0 80056690 0C028A40 */  jal        func_800A2900
/* FFBA4 80056694 00009021 */   addu      $s2, $zero, $zero
/* FFBA8 80056698 2644007E */  addiu      $a0, $s2, 0x7e
.L8005669C:
/* FFBAC 8005669C 0C00D8C1 */  jal        func_80036304_DF814
/* FFBB0 800566A0 3084FFFF */   andi      $a0, $a0, 0xffff
/* FFBB4 800566A4 8C44000C */  lw         $a0, 0xc($v0)
/* FFBB8 800566A8 0C028A40 */  jal        func_800A2900
/* FFBBC 800566AC 26520001 */   addiu     $s2, $s2, 1
/* FFBC0 800566B0 3242FFFF */  andi       $v0, $s2, 0xffff
/* FFBC4 800566B4 2C420020 */  sltiu      $v0, $v0, 0x20
/* FFBC8 800566B8 5440FFF8 */  bnezl      $v0, .L8005669C
/* FFBCC 800566BC 2644007E */   addiu     $a0, $s2, 0x7e
/* FFBD0 800566C0 0C00D8C1 */  jal        func_80036304_DF814
/* FFBD4 800566C4 240420C9 */   addiu     $a0, $zero, 0x20c9
/* FFBD8 800566C8 8C44000C */  lw         $a0, 0xc($v0)
/* FFBDC 800566CC 0C028A40 */  jal        func_800A2900
/* FFBE0 800566D0 00000000 */   nop
/* FFBE4 800566D4 0C00D8C1 */  jal        func_80036304_DF814
/* FFBE8 800566D8 240420D3 */   addiu     $a0, $zero, 0x20d3
/* FFBEC 800566DC 8C44000C */  lw         $a0, 0xc($v0)
/* FFBF0 800566E0 0C028A40 */  jal        func_800A2900
/* FFBF4 800566E4 00000000 */   nop
/* FFBF8 800566E8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* FFBFC 800566EC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* FFC00 800566F0 2403003C */  addiu      $v1, $zero, 0x3c
/* FFC04 800566F4 0062001A */  div        $zero, $v1, $v0
/* FFC08 800566F8 14400002 */  bnez       $v0, .L80056704
/* FFC0C 800566FC 00000000 */   nop
/* FFC10 80056700 0007000D */  break      7
.L80056704:
/* FFC14 80056704 2401FFFF */   addiu     $at, $zero, -1
/* FFC18 80056708 14410004 */  bne        $v0, $at, .L8005671C
/* FFC1C 8005670C 3C018000 */   lui       $at, 0x8000
/* FFC20 80056710 14610002 */  bne        $v1, $at, .L8005671C
/* FFC24 80056714 00000000 */   nop
/* FFC28 80056718 0006000D */  break      6
.L8005671C:
/* FFC2C 8005671C 00001812 */   mflo      $v1
/* FFC30 80056720 3C048007 */  lui        $a0, %hi(D_8006C564)
/* FFC34 80056724 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* FFC38 80056728 00031100 */  sll        $v0, $v1, 4
/* FFC3C 8005672C 00431023 */  subu       $v0, $v0, $v1
/* FFC40 80056730 0082202A */  slt        $a0, $a0, $v0
/* FFC44 80056734 14801048 */  bnez       $a0, .L8005A858
/* FFC48 80056738 00001021 */   addu      $v0, $zero, $zero
/* FFC4C 8005673C 3C048007 */  lui        $a0, %hi(D_80069790)
/* FFC50 80056740 0C026E4E */  jal        func_8009B938
/* FFC54 80056744 24849790 */   addiu     $a0, $a0, %lo(D_80069790)
/* FFC58 80056748 24020007 */  addiu      $v0, $zero, 7
.L8005674C:
/* FFC5C 8005674C 08016A15 */  j          .L8005A854
/* FFC60 80056750 A6C2001C */   sh        $v0, 0x1c($s6)
.L80056754:
/* FFC64 80056754 3C028007 */  lui        $v0, %hi(D_8006C564)
/* FFC68 80056758 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* FFC6C 8005675C 14400003 */  bnez       $v0, .L8005676C
/* FFC70 80056760 00000000 */   nop
/* FFC74 80056764 0C0141AB */  jal        func_800506AC_F9BBC
/* FFC78 80056768 00000000 */   nop
.L8005676C:
/* FFC7C 8005676C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* FFC80 80056770 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* FFC84 80056774 2402003C */  addiu      $v0, $zero, 0x3c
/* FFC88 80056778 0043001A */  div        $zero, $v0, $v1
/* FFC8C 8005677C 14600002 */  bnez       $v1, .L80056788
/* FFC90 80056780 00000000 */   nop
/* FFC94 80056784 0007000D */  break      7
.L80056788:
/* FFC98 80056788 2401FFFF */   addiu     $at, $zero, -1
/* FFC9C 8005678C 14610004 */  bne        $v1, $at, .L800567A0
/* FFCA0 80056790 3C018000 */   lui       $at, 0x8000
/* FFCA4 80056794 14410002 */  bne        $v0, $at, .L800567A0
/* FFCA8 80056798 00000000 */   nop
/* FFCAC 8005679C 0006000D */  break      6
.L800567A0:
/* FFCB0 800567A0 00001012 */   mflo      $v0
/* FFCB4 800567A4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* FFCB8 800567A8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* FFCBC 800567AC 1462102A */  bne        $v1, $v0, .L8005A858
/* FFCC0 800567B0 00001021 */   addu      $v0, $zero, $zero
/* FFCC4 800567B4 0C02A5AF */  jal        func_800A96BC
/* FFCC8 800567B8 24040001 */   addiu     $a0, $zero, 1
/* FFCCC 800567BC 24050010 */  addiu      $a1, $zero, 0x10
/* FFCD0 800567C0 24060010 */  addiu      $a2, $zero, 0x10
/* FFCD4 800567C4 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* FFCD8 800567C8 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* FFCDC 800567CC 24070130 */  addiu      $a3, $zero, 0x130
/* FFCE0 800567D0 240200E0 */  addiu      $v0, $zero, 0xe0
/* FFCE4 800567D4 0C02939C */  jal        func_800A4E70
/* FFCE8 800567D8 AFA20010 */   sw        $v0, 0x10($sp)
/* FFCEC 800567DC 0C026E5D */  jal        func_8009B974
/* FFCF0 800567E0 24040001 */   addiu     $a0, $zero, 1
/* FFCF4 800567E4 24020008 */  addiu      $v0, $zero, 8
/* FFCF8 800567E8 08016A15 */  j          .L8005A854
/* FFCFC 800567EC A6C2001C */   sh        $v0, 0x1c($s6)
.L800567F0:
/* FFD00 800567F0 0C00D8C1 */  jal        func_80036304_DF814
/* FFD04 800567F4 24040018 */   addiu     $a0, $zero, 0x18
/* FFD08 800567F8 8C44000C */  lw         $a0, 0xc($v0)
/* FFD0C 800567FC 0C028A40 */  jal        func_800A2900
/* FFD10 80056800 00000000 */   nop
/* FFD14 80056804 3C028015 */  lui        $v0, %hi(D_80149F90)
/* FFD18 80056808 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* FFD1C 8005680C 2403003C */  addiu      $v1, $zero, 0x3c
/* FFD20 80056810 0062001A */  div        $zero, $v1, $v0
/* FFD24 80056814 14400002 */  bnez       $v0, .L80056820
/* FFD28 80056818 00000000 */   nop
/* FFD2C 8005681C 0007000D */  break      7
.L80056820:
/* FFD30 80056820 2401FFFF */   addiu     $at, $zero, -1
/* FFD34 80056824 14410004 */  bne        $v0, $at, .L80056838
/* FFD38 80056828 3C018000 */   lui       $at, 0x8000
/* FFD3C 8005682C 14610002 */  bne        $v1, $at, .L80056838
/* FFD40 80056830 00000000 */   nop
/* FFD44 80056834 0006000D */  break      6
.L80056838:
/* FFD48 80056838 00001812 */   mflo      $v1
/* FFD4C 8005683C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* FFD50 80056840 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* FFD54 80056844 00031080 */  sll        $v0, $v1, 2
/* FFD58 80056848 00431021 */  addu       $v0, $v0, $v1
/* FFD5C 8005684C 14820007 */  bne        $a0, $v0, .L8005686C
/* FFD60 80056850 00000000 */   nop
/* FFD64 80056854 3C028007 */  lui        $v0, %hi(D_8006C200)
/* FFD68 80056858 9442C200 */  lhu        $v0, %lo(D_8006C200)($v0)
/* FFD6C 8005685C 14400003 */  bnez       $v0, .L8005686C
/* FFD70 80056860 24420001 */   addiu     $v0, $v0, 1
/* FFD74 80056864 3C018007 */  lui        $at, %hi(D_8006C200)
/* FFD78 80056868 A422C200 */  sh         $v0, %lo(D_8006C200)($at)
.L8005686C:
/* FFD7C 8005686C 3C038007 */  lui        $v1, %hi(D_8006C200)
/* FFD80 80056870 9463C200 */  lhu        $v1, %lo(D_8006C200)($v1)
/* FFD84 80056874 24020001 */  addiu      $v0, $zero, 1
/* FFD88 80056878 14620010 */  bne        $v1, $v0, .L800568BC
/* FFD8C 8005687C 2404003C */   addiu     $a0, $zero, 0x3c
/* FFD90 80056880 3C028015 */  lui        $v0, %hi(D_80149F90)
/* FFD94 80056884 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* FFD98 80056888 0082001A */  div        $zero, $a0, $v0
/* FFD9C 8005688C 14400002 */  bnez       $v0, .L80056898
/* FFDA0 80056890 00000000 */   nop
/* FFDA4 80056894 0007000D */  break      7
.L80056898:
/* FFDA8 80056898 2401FFFF */   addiu     $at, $zero, -1
/* FFDAC 8005689C 14410004 */  bne        $v0, $at, .L800568B0
/* FFDB0 800568A0 3C018000 */   lui       $at, 0x8000
/* FFDB4 800568A4 14810002 */  bne        $a0, $at, .L800568B0
/* FFDB8 800568A8 00000000 */   nop
/* FFDBC 800568AC 0006000D */  break      6
.L800568B0:
/* FFDC0 800568B0 00002012 */   mflo      $a0
/* FFDC4 800568B4 0C02A5C1 */  jal        func_800A9704
/* FFDC8 800568B8 00000000 */   nop
.L800568BC:
/* FFDCC 800568BC 3C038015 */  lui        $v1, %hi(D_80149F90)
/* FFDD0 800568C0 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* FFDD4 800568C4 2402003C */  addiu      $v0, $zero, 0x3c
/* FFDD8 800568C8 0043001A */  div        $zero, $v0, $v1
/* FFDDC 800568CC 14600002 */  bnez       $v1, .L800568D8
/* FFDE0 800568D0 00000000 */   nop
/* FFDE4 800568D4 0007000D */  break      7
.L800568D8:
/* FFDE8 800568D8 2401FFFF */   addiu     $at, $zero, -1
/* FFDEC 800568DC 14610004 */  bne        $v1, $at, .L800568F0
/* FFDF0 800568E0 3C018000 */   lui       $at, 0x8000
/* FFDF4 800568E4 14410002 */  bne        $v0, $at, .L800568F0
/* FFDF8 800568E8 00000000 */   nop
/* FFDFC 800568EC 0006000D */  break      6
.L800568F0:
/* FFE00 800568F0 00001012 */   mflo      $v0
/* FFE04 800568F4 3C038007 */  lui        $v1, %hi(D_8006C200)
/* FFE08 800568F8 9463C200 */  lhu        $v1, %lo(D_8006C200)($v1)
/* FFE0C 800568FC 0043102A */  slt        $v0, $v0, $v1
/* FFE10 80056900 10400FD4 */  beqz       $v0, .L8005A854
/* FFE14 80056904 24020009 */   addiu     $v0, $zero, 9
/* FFE18 80056908 08016A15 */  j          .L8005A854
/* FFE1C 8005690C A6C2001C */   sh        $v0, 0x1c($s6)
.L80056910:
/* FFE20 80056910 3C028007 */  lui        $v0, %hi(D_8006C564)
/* FFE24 80056914 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* FFE28 80056918 14400003 */  bnez       $v0, .L80056928
/* FFE2C 8005691C 00000000 */   nop
/* FFE30 80056920 0C0141B8 */  jal        func_800506E0_F9BF0
/* FFE34 80056924 00000000 */   nop
.L80056928:
/* FFE38 80056928 3C038007 */  lui        $v1, %hi(D_8006C564)
/* FFE3C 8005692C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* FFE40 80056930 24020002 */  addiu      $v0, $zero, 2
/* FFE44 80056934 14620FC8 */  bne        $v1, $v0, .L8005A858
/* FFE48 80056938 00001021 */   addu      $v0, $zero, $zero
/* FFE4C 8005693C 0C02A5AF */  jal        func_800A96BC
/* FFE50 80056940 24040001 */   addiu     $a0, $zero, 1
/* FFE54 80056944 24050010 */  addiu      $a1, $zero, 0x10
/* FFE58 80056948 3C01C300 */  lui        $at, 0xc300
/* FFE5C 8005694C 44811000 */  mtc1       $at, $f2
/* FFE60 80056950 3C014340 */  lui        $at, 0x4340
/* FFE64 80056954 44812000 */  mtc1       $at, $f4
/* FFE68 80056958 3C01421E */  lui        $at, 0x421e
/* FFE6C 8005695C 44810000 */  mtc1       $at, $f0
/* FFE70 80056960 3C014320 */  lui        $at, 0x4320
/* FFE74 80056964 44813000 */  mtc1       $at, $f6
/* FFE78 80056968 3C01C2C0 */  lui        $at, 0xc2c0
/* FFE7C 8005696C 44814000 */  mtc1       $at, $f8
/* FFE80 80056970 3C014378 */  lui        $at, 0x4378
/* FFE84 80056974 44815000 */  mtc1       $at, $f10
/* FFE88 80056978 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* FFE8C 8005697C 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* FFE90 80056980 24060030 */  addiu      $a2, $zero, 0x30
/* FFE94 80056984 24020002 */  addiu      $v0, $zero, 2
/* FFE98 80056988 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* FFE9C 8005698C A422C1E6 */  sh         $v0, %lo(D_8006C1E6)($at)
/* FFEA0 80056990 240200BF */  addiu      $v0, $zero, 0xbf
/* FFEA4 80056994 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* FFEA8 80056998 AC20C1F4 */  sw         $zero, %lo(D_8006C1F4)($at)
/* FFEAC 8005699C 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* FFEB0 800569A0 A420C1E4 */  sh         $zero, %lo(D_8006C1E4)($at)
/* FFEB4 800569A4 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* FFEB8 800569A8 AC20C1F8 */  sw         $zero, %lo(D_8006C1F8)($at)
/* FFEBC 800569AC 3C018007 */  lui        $at, %hi(D_8006C1E8)
/* FFEC0 800569B0 A420C1E8 */  sh         $zero, %lo(D_8006C1E8)($at)
/* FFEC4 800569B4 3C018007 */  lui        $at, %hi(D_8006C1EA)
/* FFEC8 800569B8 A420C1EA */  sh         $zero, %lo(D_8006C1EA)($at)
/* FFECC 800569BC AFA20010 */  sw         $v0, 0x10($sp)
/* FFED0 800569C0 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FFED4 800569C4 E422C1C0 */  swc1       $f2, %lo(D_8006C1C0)($at)
/* FFED8 800569C8 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FFEDC 800569CC E424C1C4 */  swc1       $f4, %lo(D_8006C1C4)($at)
/* FFEE0 800569D0 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* FFEE4 800569D4 E420C1EC */  swc1       $f0, %lo(D_8006C1EC)($at)
/* FFEE8 800569D8 3C018007 */  lui        $at, %hi(D_8006C1CC)
/* FFEEC 800569DC E426C1CC */  swc1       $f6, %lo(D_8006C1CC)($at)
/* FFEF0 800569E0 3C018007 */  lui        $at, %hi(D_8006C1D0)
/* FFEF4 800569E4 E428C1D0 */  swc1       $f8, %lo(D_8006C1D0)($at)
/* FFEF8 800569E8 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* FFEFC 800569EC E420C1F0 */  swc1       $f0, %lo(D_8006C1F0)($at)
/* FFF00 800569F0 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* FFF04 800569F4 E42AC1FC */  swc1       $f10, %lo(D_8006C1FC)($at)
/* FFF08 800569F8 0C02939C */  jal        func_800A4E70
/* FFF0C 800569FC 2407012F */   addiu     $a3, $zero, 0x12f
/* FFF10 80056A00 2402000A */  addiu      $v0, $zero, 0xa
/* FFF14 80056A04 08016A15 */  j          .L8005A854
/* FFF18 80056A08 A6C2001C */   sh        $v0, 0x1c($s6)
.L80056A0C:
/* FFF1C 80056A0C 0C00D8C1 */  jal        func_80036304_DF814
/* FFF20 80056A10 24040024 */   addiu     $a0, $zero, 0x24
/* FFF24 80056A14 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FFF28 80056A18 C420C1C0 */  lwc1       $f0, %lo(D_8006C1C0)($at)
/* FFF2C 80056A1C 3C014080 */  lui        $at, 0x4080
/* FFF30 80056A20 44812000 */  mtc1       $at, $f4
/* FFF34 80056A24 00000000 */  nop
/* FFF38 80056A28 46040002 */  mul.s      $f0, $f0, $f4
/* FFF3C 80056A2C 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* FFF40 80056A30 C422C1C4 */  lwc1       $f2, %lo(D_8006C1C4)($at)
/* FFF44 80056A34 46041082 */  mul.s      $f2, $f2, $f4
/* FFF48 80056A38 00408021 */  addu       $s0, $v0, $zero
/* FFF4C 80056A3C 8E04000C */  lw         $a0, 0xc($s0)
/* FFF50 80056A40 4600010D */  trunc.w.s  $f4, $f0
/* FFF54 80056A44 44052000 */  mfc1       $a1, $f4
/* FFF58 80056A48 00000000 */  nop
/* FFF5C 80056A4C 00052C00 */  sll        $a1, $a1, 0x10
/* FFF60 80056A50 00052C03 */  sra        $a1, $a1, 0x10
/* FFF64 80056A54 4600100D */  trunc.w.s  $f0, $f2
/* FFF68 80056A58 44060000 */  mfc1       $a2, $f0
/* FFF6C 80056A5C 00000000 */  nop
/* FFF70 80056A60 00063400 */  sll        $a2, $a2, 0x10
/* FFF74 80056A64 0C028D89 */  jal        func_800A3624
/* FFF78 80056A68 00063403 */   sra       $a2, $a2, 0x10
/* FFF7C 80056A6C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* FFF80 80056A70 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* FFF84 80056A74 3C014F00 */  lui        $at, 0x4f00
/* FFF88 80056A78 44810000 */  mtc1       $at, $f0
/* FFF8C 80056A7C 00000000 */  nop
/* FFF90 80056A80 4602003E */  c.le.s     $f0, $f2
/* FFF94 80056A84 00000000 */  nop
/* FFF98 80056A88 00000000 */  nop
/* FFF9C 80056A8C 45030006 */  bc1tl      .L80056AA8
/* FFFA0 80056A90 46001001 */   sub.s     $f0, $f2, $f0
/* FFFA4 80056A94 4600100D */  trunc.w.s  $f0, $f2
/* FFFA8 80056A98 44030000 */  mfc1       $v1, $f0
/* FFFAC 80056A9C 00000000 */  nop
/* FFFB0 80056AA0 08015AAF */  j          .L80056ABC
/* FFFB4 80056AA4 306200FF */   andi      $v0, $v1, 0xff
.L80056AA8:
/* FFFB8 80056AA8 4600008D */  trunc.w.s  $f2, $f0
/* FFFBC 80056AAC 44031000 */  mfc1       $v1, $f2
/* FFFC0 80056AB0 3C028000 */  lui        $v0, 0x8000
/* FFFC4 80056AB4 00621825 */  or         $v1, $v1, $v0
/* FFFC8 80056AB8 306200FF */  andi       $v0, $v1, 0xff
.L80056ABC:
/* FFFCC 80056ABC AFA20010 */  sw         $v0, 0x10($sp)
/* FFFD0 80056AC0 8E04000C */  lw         $a0, 0xc($s0)
/* FFFD4 80056AC4 240500FF */  addiu      $a1, $zero, 0xff
/* FFFD8 80056AC8 240600FF */  addiu      $a2, $zero, 0xff
/* FFFDC 80056ACC 0C028E41 */  jal        func_800A3904
/* FFFE0 80056AD0 240700FF */   addiu     $a3, $zero, 0xff
/* FFFE4 80056AD4 8E04000C */  lw         $a0, 0xc($s0)
/* FFFE8 80056AD8 0C028A40 */  jal        func_800A2900
/* FFFEC 80056ADC 00000000 */   nop
/* FFFF0 80056AE0 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* FFFF4 80056AE4 C426C1C0 */  lwc1       $f6, %lo(D_8006C1C0)($at)
/* FFFF8 80056AE8 3C014180 */  lui        $at, 0x4180
/* FFFFC 80056AEC 44811000 */  mtc1       $at, $f2
/* 100000 80056AF0 00000000 */  nop
/* 100004 80056AF4 4602303C */  c.lt.s     $f6, $f2
/* 100008 80056AF8 00000000 */  nop
/* 10000C 80056AFC 45000022 */  bc1f       .L80056B88
/* 100010 80056B00 00000000 */   nop
/* 100014 80056B04 3C014000 */  lui        $at, 0x4000
/* 100018 80056B08 44810000 */  mtc1       $at, $f0
/* 10001C 80056B0C 00000000 */  nop
/* 100020 80056B10 46003180 */  add.s      $f6, $f6, $f0
/* 100024 80056B14 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 100028 80056B18 C422C1C4 */  lwc1       $f2, %lo(D_8006C1C4)($at)
/* 10002C 80056B1C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 100030 80056B20 C424C1EC */  lwc1       $f4, %lo(D_8006C1EC)($at)
/* 100034 80056B24 46001081 */  sub.s      $f2, $f2, $f0
/* 100038 80056B28 3C014040 */  lui        $at, 0x4040
/* 10003C 80056B2C 44810000 */  mtc1       $at, $f0
/* 100040 80056B30 00000000 */  nop
/* 100044 80056B34 46002100 */  add.s      $f4, $f4, $f0
/* 100048 80056B38 3C01437F */  lui        $at, 0x437f
/* 10004C 80056B3C 44810000 */  mtc1       $at, $f0
/* 100050 80056B40 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* 100054 80056B44 E426C1C0 */  swc1       $f6, %lo(D_8006C1C0)($at)
/* 100058 80056B48 4604003C */  c.lt.s     $f0, $f4
/* 10005C 80056B4C 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 100060 80056B50 E422C1C4 */  swc1       $f2, %lo(D_8006C1C4)($at)
/* 100064 80056B54 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 100068 80056B58 E424C1EC */  swc1       $f4, %lo(D_8006C1EC)($at)
/* 10006C 80056B5C 45010007 */  bc1t       .L80056B7C
/* 100070 80056B60 00000000 */   nop
/* 100074 80056B64 44800000 */  mtc1       $zero, $f0
/* 100078 80056B68 00000000 */  nop
/* 10007C 80056B6C 4600203C */  c.lt.s     $f4, $f0
/* 100080 80056B70 00000000 */  nop
/* 100084 80056B74 4500000A */  bc1f       .L80056BA0
/* 100088 80056B78 00000000 */   nop
.L80056B7C:
/* 10008C 80056B7C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 100090 80056B80 08015AE8 */  j          .L80056BA0
/* 100094 80056B84 E420C1EC */   swc1      $f0, %lo(D_8006C1EC)($at)
.L80056B88:
/* 100098 80056B88 3C014240 */  lui        $at, 0x4240
/* 10009C 80056B8C 44810000 */  mtc1       $at, $f0
/* 1000A0 80056B90 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* 1000A4 80056B94 E422C1C0 */  swc1       $f2, %lo(D_8006C1C0)($at)
/* 1000A8 80056B98 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 1000AC 80056B9C E420C1C4 */  swc1       $f0, %lo(D_8006C1C4)($at)
.L80056BA0:
/* 1000B0 80056BA0 0C00D8C1 */  jal        func_80036304_DF814
/* 1000B4 80056BA4 240420C9 */   addiu     $a0, $zero, 0x20c9
/* 1000B8 80056BA8 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 1000BC 80056BAC C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 1000C0 80056BB0 3C014F00 */  lui        $at, 0x4f00
/* 1000C4 80056BB4 44810000 */  mtc1       $at, $f0
/* 1000C8 80056BB8 00000000 */  nop
/* 1000CC 80056BBC 4602003E */  c.le.s     $f0, $f2
/* 1000D0 80056BC0 00000000 */  nop
/* 1000D4 80056BC4 00000000 */  nop
/* 1000D8 80056BC8 45010006 */  bc1t       .L80056BE4
/* 1000DC 80056BCC 00408021 */   addu      $s0, $v0, $zero
/* 1000E0 80056BD0 4600100D */  trunc.w.s  $f0, $f2
/* 1000E4 80056BD4 44030000 */  mfc1       $v1, $f0
/* 1000E8 80056BD8 00000000 */  nop
/* 1000EC 80056BDC 08015AFF */  j          .L80056BFC
/* 1000F0 80056BE0 306200FF */   andi      $v0, $v1, 0xff
.L80056BE4:
/* 1000F4 80056BE4 46001001 */  sub.s      $f0, $f2, $f0
/* 1000F8 80056BE8 4600008D */  trunc.w.s  $f2, $f0
/* 1000FC 80056BEC 44031000 */  mfc1       $v1, $f2
/* 100100 80056BF0 3C028000 */  lui        $v0, 0x8000
/* 100104 80056BF4 00621825 */  or         $v1, $v1, $v0
/* 100108 80056BF8 306200FF */  andi       $v0, $v1, 0xff
.L80056BFC:
/* 10010C 80056BFC AFA20010 */  sw         $v0, 0x10($sp)
/* 100110 80056C00 8E04000C */  lw         $a0, 0xc($s0)
/* 100114 80056C04 240500FF */  addiu      $a1, $zero, 0xff
/* 100118 80056C08 240600FF */  addiu      $a2, $zero, 0xff
/* 10011C 80056C0C 0C028E41 */  jal        func_800A3904
/* 100120 80056C10 240700FF */   addiu     $a3, $zero, 0xff
/* 100124 80056C14 8E04000C */  lw         $a0, 0xc($s0)
/* 100128 80056C18 0C028A40 */  jal        func_800A2900
/* 10012C 80056C1C 00000000 */   nop
/* 100130 80056C20 0C00D8C1 */  jal        func_80036304_DF814
/* 100134 80056C24 240420D3 */   addiu     $a0, $zero, 0x20d3
/* 100138 80056C28 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 10013C 80056C2C C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 100140 80056C30 3C013F4C */  lui        $at, 0x3f4c
/* 100144 80056C34 3421CCCD */  ori        $at, $at, 0xcccd
/* 100148 80056C38 44810000 */  mtc1       $at, $f0
/* 10014C 80056C3C 00000000 */  nop
/* 100150 80056C40 46001082 */  mul.s      $f2, $f2, $f0
/* 100154 80056C44 3C014F00 */  lui        $at, 0x4f00
/* 100158 80056C48 44810000 */  mtc1       $at, $f0
/* 10015C 80056C4C 00000000 */  nop
/* 100160 80056C50 4602003E */  c.le.s     $f0, $f2
/* 100164 80056C54 00000000 */  nop
/* 100168 80056C58 00000000 */  nop
/* 10016C 80056C5C 45010006 */  bc1t       .L80056C78
/* 100170 80056C60 00408021 */   addu      $s0, $v0, $zero
/* 100174 80056C64 4600100D */  trunc.w.s  $f0, $f2
/* 100178 80056C68 44030000 */  mfc1       $v1, $f0
/* 10017C 80056C6C 00000000 */  nop
/* 100180 80056C70 08015B24 */  j          .L80056C90
/* 100184 80056C74 306200FF */   andi      $v0, $v1, 0xff
.L80056C78:
/* 100188 80056C78 46001001 */  sub.s      $f0, $f2, $f0
/* 10018C 80056C7C 4600008D */  trunc.w.s  $f2, $f0
/* 100190 80056C80 44031000 */  mfc1       $v1, $f2
/* 100194 80056C84 3C028000 */  lui        $v0, 0x8000
/* 100198 80056C88 00621825 */  or         $v1, $v1, $v0
/* 10019C 80056C8C 306200FF */  andi       $v0, $v1, 0xff
.L80056C90:
/* 1001A0 80056C90 AFA20010 */  sw         $v0, 0x10($sp)
/* 1001A4 80056C94 8E04000C */  lw         $a0, 0xc($s0)
/* 1001A8 80056C98 240500FF */  addiu      $a1, $zero, 0xff
/* 1001AC 80056C9C 240600FF */  addiu      $a2, $zero, 0xff
/* 1001B0 80056CA0 0C028E41 */  jal        func_800A3904
/* 1001B4 80056CA4 240700FF */   addiu     $a3, $zero, 0xff
/* 1001B8 80056CA8 8E04000C */  lw         $a0, 0xc($s0)
/* 1001BC 80056CAC 0C028A40 */  jal        func_800A2900
/* 1001C0 80056CB0 00000000 */   nop
/* 1001C4 80056CB4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 1001C8 80056CB8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 1001CC 80056CBC 2402003C */  addiu      $v0, $zero, 0x3c
/* 1001D0 80056CC0 0043001A */  div        $zero, $v0, $v1
/* 1001D4 80056CC4 14600002 */  bnez       $v1, .L80056CD0
/* 1001D8 80056CC8 00000000 */   nop
/* 1001DC 80056CCC 0007000D */  break      7
.L80056CD0:
/* 1001E0 80056CD0 2401FFFF */   addiu     $at, $zero, -1
/* 1001E4 80056CD4 14610004 */  bne        $v1, $at, .L80056CE8
/* 1001E8 80056CD8 3C018000 */   lui       $at, 0x8000
/* 1001EC 80056CDC 14410002 */  bne        $v0, $at, .L80056CE8
/* 1001F0 80056CE0 00000000 */   nop
/* 1001F4 80056CE4 0006000D */  break      6
.L80056CE8:
/* 1001F8 80056CE8 00001012 */   mflo      $v0
/* 1001FC 80056CEC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 100200 80056CF0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 100204 80056CF4 0043102A */  slt        $v0, $v0, $v1
/* 100208 80056CF8 10400010 */  beqz       $v0, .L80056D3C
/* 10020C 80056CFC 00000000 */   nop
/* 100210 80056D00 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 100214 80056D04 C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 100218 80056D08 3C014378 */  lui        $at, 0x4378
/* 10021C 80056D0C 44810000 */  mtc1       $at, $f0
/* 100220 80056D10 00000000 */  nop
/* 100224 80056D14 4600103C */  c.lt.s     $f2, $f0
/* 100228 80056D18 00000000 */  nop
/* 10022C 80056D1C 45000007 */  bc1f       .L80056D3C
/* 100230 80056D20 00000000 */   nop
/* 100234 80056D24 3C014100 */  lui        $at, 0x4100
/* 100238 80056D28 44810000 */  mtc1       $at, $f0
/* 10023C 80056D2C 00000000 */  nop
/* 100240 80056D30 46001000 */  add.s      $f0, $f2, $f0
/* 100244 80056D34 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 100248 80056D38 E420C1F4 */  swc1       $f0, %lo(D_8006C1F4)($at)
.L80056D3C:
/* 10024C 80056D3C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 100250 80056D40 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 100254 80056D44 2403003C */  addiu      $v1, $zero, 0x3c
/* 100258 80056D48 0062001A */  div        $zero, $v1, $v0
/* 10025C 80056D4C 14400002 */  bnez       $v0, .L80056D58
/* 100260 80056D50 00000000 */   nop
/* 100264 80056D54 0007000D */  break      7
.L80056D58:
/* 100268 80056D58 2401FFFF */   addiu     $at, $zero, -1
/* 10026C 80056D5C 14410004 */  bne        $v0, $at, .L80056D70
/* 100270 80056D60 3C018000 */   lui       $at, 0x8000
/* 100274 80056D64 14610002 */  bne        $v1, $at, .L80056D70
/* 100278 80056D68 00000000 */   nop
/* 10027C 80056D6C 0006000D */  break      6
.L80056D70:
/* 100280 80056D70 00001812 */   mflo      $v1
/* 100284 80056D74 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 100288 80056D78 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 10028C 80056D7C 00031040 */  sll        $v0, $v1, 1
/* 100290 80056D80 00431021 */  addu       $v0, $v0, $v1
/* 100294 80056D84 14820EB4 */  bne        $a0, $v0, .L8005A858
/* 100298 80056D88 00001021 */   addu      $v0, $zero, $zero
/* 10029C 80056D8C 2402000B */  addiu      $v0, $zero, 0xb
/* 1002A0 80056D90 08016A15 */  j          .L8005A854
/* 1002A4 80056D94 A6C2001C */   sh        $v0, 0x1c($s6)
.L80056D98:
/* 1002A8 80056D98 0C00D8C1 */  jal        func_80036304_DF814
/* 1002AC 80056D9C 24040024 */   addiu     $a0, $zero, 0x24
/* 1002B0 80056DA0 3C018007 */  lui        $at, %hi(D_8006C1C0)
/* 1002B4 80056DA4 C420C1C0 */  lwc1       $f0, %lo(D_8006C1C0)($at)
/* 1002B8 80056DA8 3C014080 */  lui        $at, 0x4080
/* 1002BC 80056DAC 44812000 */  mtc1       $at, $f4
/* 1002C0 80056DB0 00000000 */  nop
/* 1002C4 80056DB4 46040002 */  mul.s      $f0, $f0, $f4
/* 1002C8 80056DB8 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 1002CC 80056DBC C422C1C4 */  lwc1       $f2, %lo(D_8006C1C4)($at)
/* 1002D0 80056DC0 46041082 */  mul.s      $f2, $f2, $f4
/* 1002D4 80056DC4 00408021 */  addu       $s0, $v0, $zero
/* 1002D8 80056DC8 8E04000C */  lw         $a0, 0xc($s0)
/* 1002DC 80056DCC 4600010D */  trunc.w.s  $f4, $f0
/* 1002E0 80056DD0 44052000 */  mfc1       $a1, $f4
/* 1002E4 80056DD4 00000000 */  nop
/* 1002E8 80056DD8 00052C00 */  sll        $a1, $a1, 0x10
/* 1002EC 80056DDC 00052C03 */  sra        $a1, $a1, 0x10
/* 1002F0 80056DE0 4600100D */  trunc.w.s  $f0, $f2
/* 1002F4 80056DE4 44060000 */  mfc1       $a2, $f0
/* 1002F8 80056DE8 00000000 */  nop
/* 1002FC 80056DEC 00063400 */  sll        $a2, $a2, 0x10
/* 100300 80056DF0 0C028D89 */  jal        func_800A3624
/* 100304 80056DF4 00063403 */   sra       $a2, $a2, 0x10
/* 100308 80056DF8 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 10030C 80056DFC C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* 100310 80056E00 3C014F00 */  lui        $at, 0x4f00
/* 100314 80056E04 44810000 */  mtc1       $at, $f0
/* 100318 80056E08 00000000 */  nop
/* 10031C 80056E0C 4602003E */  c.le.s     $f0, $f2
/* 100320 80056E10 00000000 */  nop
/* 100324 80056E14 00000000 */  nop
/* 100328 80056E18 45030006 */  bc1tl      .L80056E34
/* 10032C 80056E1C 46001001 */   sub.s     $f0, $f2, $f0
/* 100330 80056E20 4600100D */  trunc.w.s  $f0, $f2
/* 100334 80056E24 44030000 */  mfc1       $v1, $f0
/* 100338 80056E28 00000000 */  nop
/* 10033C 80056E2C 08015B92 */  j          .L80056E48
/* 100340 80056E30 306200FF */   andi      $v0, $v1, 0xff
.L80056E34:
/* 100344 80056E34 4600008D */  trunc.w.s  $f2, $f0
/* 100348 80056E38 44031000 */  mfc1       $v1, $f2
/* 10034C 80056E3C 3C028000 */  lui        $v0, 0x8000
/* 100350 80056E40 00621825 */  or         $v1, $v1, $v0
/* 100354 80056E44 306200FF */  andi       $v0, $v1, 0xff
.L80056E48:
/* 100358 80056E48 AFA20010 */  sw         $v0, 0x10($sp)
/* 10035C 80056E4C 8E04000C */  lw         $a0, 0xc($s0)
/* 100360 80056E50 240500FF */  addiu      $a1, $zero, 0xff
/* 100364 80056E54 240600FF */  addiu      $a2, $zero, 0xff
/* 100368 80056E58 0C028E41 */  jal        func_800A3904
/* 10036C 80056E5C 240700FF */   addiu     $a3, $zero, 0xff
/* 100370 80056E60 8E04000C */  lw         $a0, 0xc($s0)
/* 100374 80056E64 0C028A40 */  jal        func_800A2900
/* 100378 80056E68 00000000 */   nop
/* 10037C 80056E6C 0C00D8C1 */  jal        func_80036304_DF814
/* 100380 80056E70 24040023 */   addiu     $a0, $zero, 0x23
/* 100384 80056E74 3C018007 */  lui        $at, %hi(D_8006C1CC)
/* 100388 80056E78 C420C1CC */  lwc1       $f0, %lo(D_8006C1CC)($at)
/* 10038C 80056E7C 3C014080 */  lui        $at, 0x4080
/* 100390 80056E80 44812000 */  mtc1       $at, $f4
/* 100394 80056E84 00000000 */  nop
/* 100398 80056E88 46040002 */  mul.s      $f0, $f0, $f4
/* 10039C 80056E8C 3C018007 */  lui        $at, %hi(D_8006C1D0)
/* 1003A0 80056E90 C422C1D0 */  lwc1       $f2, %lo(D_8006C1D0)($at)
/* 1003A4 80056E94 46041082 */  mul.s      $f2, $f2, $f4
/* 1003A8 80056E98 00408021 */  addu       $s0, $v0, $zero
/* 1003AC 80056E9C 8E04000C */  lw         $a0, 0xc($s0)
/* 1003B0 80056EA0 4600010D */  trunc.w.s  $f4, $f0
/* 1003B4 80056EA4 44052000 */  mfc1       $a1, $f4
/* 1003B8 80056EA8 00000000 */  nop
/* 1003BC 80056EAC 00052C00 */  sll        $a1, $a1, 0x10
/* 1003C0 80056EB0 00052C03 */  sra        $a1, $a1, 0x10
/* 1003C4 80056EB4 4600100D */  trunc.w.s  $f0, $f2
/* 1003C8 80056EB8 44060000 */  mfc1       $a2, $f0
/* 1003CC 80056EBC 00000000 */  nop
/* 1003D0 80056EC0 00063400 */  sll        $a2, $a2, 0x10
/* 1003D4 80056EC4 0C028D89 */  jal        func_800A3624
/* 1003D8 80056EC8 00063403 */   sra       $a2, $a2, 0x10
/* 1003DC 80056ECC 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 1003E0 80056ED0 C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* 1003E4 80056ED4 3C014F00 */  lui        $at, 0x4f00
/* 1003E8 80056ED8 44810000 */  mtc1       $at, $f0
/* 1003EC 80056EDC 00000000 */  nop
/* 1003F0 80056EE0 4602003E */  c.le.s     $f0, $f2
/* 1003F4 80056EE4 00000000 */  nop
/* 1003F8 80056EE8 00000000 */  nop
/* 1003FC 80056EEC 45030006 */  bc1tl      .L80056F08
/* 100400 80056EF0 46001001 */   sub.s     $f0, $f2, $f0
/* 100404 80056EF4 4600100D */  trunc.w.s  $f0, $f2
/* 100408 80056EF8 44030000 */  mfc1       $v1, $f0
/* 10040C 80056EFC 00000000 */  nop
/* 100410 80056F00 08015BC7 */  j          .L80056F1C
/* 100414 80056F04 306200FF */   andi      $v0, $v1, 0xff
.L80056F08:
/* 100418 80056F08 4600008D */  trunc.w.s  $f2, $f0
/* 10041C 80056F0C 44031000 */  mfc1       $v1, $f2
/* 100420 80056F10 3C028000 */  lui        $v0, 0x8000
/* 100424 80056F14 00621825 */  or         $v1, $v1, $v0
/* 100428 80056F18 306200FF */  andi       $v0, $v1, 0xff
.L80056F1C:
/* 10042C 80056F1C AFA20010 */  sw         $v0, 0x10($sp)
/* 100430 80056F20 8E04000C */  lw         $a0, 0xc($s0)
/* 100434 80056F24 240500FF */  addiu      $a1, $zero, 0xff
/* 100438 80056F28 240600FF */  addiu      $a2, $zero, 0xff
/* 10043C 80056F2C 0C028E41 */  jal        func_800A3904
/* 100440 80056F30 240700FF */   addiu     $a3, $zero, 0xff
/* 100444 80056F34 8E04000C */  lw         $a0, 0xc($s0)
/* 100448 80056F38 0C028A40 */  jal        func_800A2900
/* 10044C 80056F3C 00000000 */   nop
/* 100450 80056F40 3C018007 */  lui        $at, %hi(D_8006C1CC)
/* 100454 80056F44 C426C1CC */  lwc1       $f6, %lo(D_8006C1CC)($at)
/* 100458 80056F48 3C014180 */  lui        $at, 0x4180
/* 10045C 80056F4C 44812000 */  mtc1       $at, $f4
/* 100460 80056F50 00000000 */  nop
/* 100464 80056F54 4606203C */  c.lt.s     $f4, $f6
/* 100468 80056F58 00000000 */  nop
/* 10046C 80056F5C 4500003C */  bc1f       .L80057050
/* 100470 80056F60 00000000 */   nop
/* 100474 80056F64 3C014000 */  lui        $at, 0x4000
/* 100478 80056F68 44810000 */  mtc1       $at, $f0
/* 10047C 80056F6C 00000000 */  nop
/* 100480 80056F70 46003181 */  sub.s      $f6, $f6, $f0
/* 100484 80056F74 3C018007 */  lui        $at, %hi(D_8006C1D0)
/* 100488 80056F78 C422C1D0 */  lwc1       $f2, %lo(D_8006C1D0)($at)
/* 10048C 80056F7C 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 100490 80056F80 C424C1F0 */  lwc1       $f4, %lo(D_8006C1F0)($at)
/* 100494 80056F84 46001080 */  add.s      $f2, $f2, $f0
/* 100498 80056F88 3C014040 */  lui        $at, 0x4040
/* 10049C 80056F8C 44810000 */  mtc1       $at, $f0
/* 1004A0 80056F90 00000000 */  nop
/* 1004A4 80056F94 46002100 */  add.s      $f4, $f4, $f0
/* 1004A8 80056F98 3C01437F */  lui        $at, 0x437f
/* 1004AC 80056F9C 44810000 */  mtc1       $at, $f0
/* 1004B0 80056FA0 3C018007 */  lui        $at, %hi(D_8006C1CC)
/* 1004B4 80056FA4 E426C1CC */  swc1       $f6, %lo(D_8006C1CC)($at)
/* 1004B8 80056FA8 4604003C */  c.lt.s     $f0, $f4
/* 1004BC 80056FAC 3C018007 */  lui        $at, %hi(D_8006C1D0)
/* 1004C0 80056FB0 E422C1D0 */  swc1       $f2, %lo(D_8006C1D0)($at)
/* 1004C4 80056FB4 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 1004C8 80056FB8 E424C1F0 */  swc1       $f4, %lo(D_8006C1F0)($at)
/* 1004CC 80056FBC 45010007 */  bc1t       .L80056FDC
/* 1004D0 80056FC0 00000000 */   nop
/* 1004D4 80056FC4 44800000 */  mtc1       $zero, $f0
/* 1004D8 80056FC8 00000000 */  nop
/* 1004DC 80056FCC 4600203C */  c.lt.s     $f4, $f0
/* 1004E0 80056FD0 00000000 */  nop
/* 1004E4 80056FD4 45000003 */  bc1f       .L80056FE4
/* 1004E8 80056FD8 00000000 */   nop
.L80056FDC:
/* 1004EC 80056FDC 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 1004F0 80056FE0 E420C1F0 */  swc1       $f0, %lo(D_8006C1F0)($at)
.L80056FE4:
/* 1004F4 80056FE4 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 1004F8 80056FE8 C420C1EC */  lwc1       $f0, %lo(D_8006C1EC)($at)
/* 1004FC 80056FEC 3C014060 */  lui        $at, 0x4060
/* 100500 80056FF0 44811000 */  mtc1       $at, $f2
/* 100504 80056FF4 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 100508 80056FF8 C424C1F4 */  lwc1       $f4, %lo(D_8006C1F4)($at)
/* 10050C 80056FFC 46020001 */  sub.s      $f0, $f0, $f2
/* 100510 80057000 3C01437F */  lui        $at, 0x437f
/* 100514 80057004 44811000 */  mtc1       $at, $f2
/* 100518 80057008 00000000 */  nop
/* 10051C 8005700C 4604103C */  c.lt.s     $f2, $f4
/* 100520 80057010 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 100524 80057014 E420C1EC */  swc1       $f0, %lo(D_8006C1EC)($at)
/* 100528 80057018 45000004 */  bc1f       .L8005702C
/* 10052C 8005701C 00000000 */   nop
/* 100530 80057020 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 100534 80057024 08015C20 */  j          .L80057080
/* 100538 80057028 E422C1F4 */   swc1      $f2, %lo(D_8006C1F4)($at)
.L8005702C:
/* 10053C 8005702C 44800000 */  mtc1       $zero, $f0
/* 100540 80057030 00000000 */  nop
/* 100544 80057034 4600203C */  c.lt.s     $f4, $f0
/* 100548 80057038 00000000 */  nop
/* 10054C 8005703C 45000010 */  bc1f       .L80057080
/* 100550 80057040 00000000 */   nop
/* 100554 80057044 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 100558 80057048 08015C20 */  j          .L80057080
/* 10055C 8005704C E420C1F4 */   swc1      $f0, %lo(D_8006C1F4)($at)
.L80057050:
/* 100560 80057050 3C014240 */  lui        $at, 0x4240
/* 100564 80057054 44810000 */  mtc1       $at, $f0
/* 100568 80057058 3C01437F */  lui        $at, 0x437f
/* 10056C 8005705C 44811000 */  mtc1       $at, $f2
/* 100570 80057060 3C018007 */  lui        $at, %hi(D_8006C1CC)
/* 100574 80057064 E424C1CC */  swc1       $f4, %lo(D_8006C1CC)($at)
/* 100578 80057068 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 10057C 8005706C AC20C1EC */  sw         $zero, %lo(D_8006C1EC)($at)
/* 100580 80057070 3C018007 */  lui        $at, %hi(D_8006C1D0)
/* 100584 80057074 E420C1D0 */  swc1       $f0, %lo(D_8006C1D0)($at)
/* 100588 80057078 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 10058C 8005707C E422C1F0 */  swc1       $f2, %lo(D_8006C1F0)($at)
.L80057080:
/* 100590 80057080 0C00D8C1 */  jal        func_80036304_DF814
/* 100594 80057084 240420C9 */   addiu     $a0, $zero, 0x20c9
/* 100598 80057088 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 10059C 8005708C C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 1005A0 80057090 3C014F00 */  lui        $at, 0x4f00
/* 1005A4 80057094 44810000 */  mtc1       $at, $f0
/* 1005A8 80057098 00000000 */  nop
/* 1005AC 8005709C 4602003E */  c.le.s     $f0, $f2
/* 1005B0 800570A0 00000000 */  nop
/* 1005B4 800570A4 00000000 */  nop
/* 1005B8 800570A8 45010006 */  bc1t       .L800570C4
/* 1005BC 800570AC 00408021 */   addu      $s0, $v0, $zero
/* 1005C0 800570B0 4600100D */  trunc.w.s  $f0, $f2
/* 1005C4 800570B4 44030000 */  mfc1       $v1, $f0
/* 1005C8 800570B8 00000000 */  nop
/* 1005CC 800570BC 08015C37 */  j          .L800570DC
/* 1005D0 800570C0 306200FF */   andi      $v0, $v1, 0xff
.L800570C4:
/* 1005D4 800570C4 46001001 */  sub.s      $f0, $f2, $f0
/* 1005D8 800570C8 4600008D */  trunc.w.s  $f2, $f0
/* 1005DC 800570CC 44031000 */  mfc1       $v1, $f2
/* 1005E0 800570D0 3C028000 */  lui        $v0, 0x8000
/* 1005E4 800570D4 00621825 */  or         $v1, $v1, $v0
/* 1005E8 800570D8 306200FF */  andi       $v0, $v1, 0xff
.L800570DC:
/* 1005EC 800570DC AFA20010 */  sw         $v0, 0x10($sp)
/* 1005F0 800570E0 8E04000C */  lw         $a0, 0xc($s0)
/* 1005F4 800570E4 240500FF */  addiu      $a1, $zero, 0xff
/* 1005F8 800570E8 240600FF */  addiu      $a2, $zero, 0xff
/* 1005FC 800570EC 0C028E41 */  jal        func_800A3904
/* 100600 800570F0 240700FF */   addiu     $a3, $zero, 0xff
/* 100604 800570F4 8E04000C */  lw         $a0, 0xc($s0)
/* 100608 800570F8 0C028A40 */  jal        func_800A2900
/* 10060C 800570FC 00000000 */   nop
/* 100610 80057100 0C00D8C1 */  jal        func_80036304_DF814
/* 100614 80057104 240420D3 */   addiu     $a0, $zero, 0x20d3
/* 100618 80057108 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 10061C 8005710C C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 100620 80057110 3C013F4C */  lui        $at, 0x3f4c
/* 100624 80057114 3421CCCD */  ori        $at, $at, 0xcccd
/* 100628 80057118 44810000 */  mtc1       $at, $f0
/* 10062C 8005711C 00000000 */  nop
/* 100630 80057120 46001082 */  mul.s      $f2, $f2, $f0
/* 100634 80057124 3C014F00 */  lui        $at, 0x4f00
/* 100638 80057128 44810000 */  mtc1       $at, $f0
/* 10063C 8005712C 00000000 */  nop
/* 100640 80057130 4602003E */  c.le.s     $f0, $f2
/* 100644 80057134 00000000 */  nop
/* 100648 80057138 00000000 */  nop
/* 10064C 8005713C 45010006 */  bc1t       .L80057158
/* 100650 80057140 00408021 */   addu      $s0, $v0, $zero
/* 100654 80057144 4600100D */  trunc.w.s  $f0, $f2
/* 100658 80057148 44030000 */  mfc1       $v1, $f0
/* 10065C 8005714C 00000000 */  nop
/* 100660 80057150 08015C5C */  j          .L80057170
/* 100664 80057154 306200FF */   andi      $v0, $v1, 0xff
.L80057158:
/* 100668 80057158 46001001 */  sub.s      $f0, $f2, $f0
/* 10066C 8005715C 4600008D */  trunc.w.s  $f2, $f0
/* 100670 80057160 44031000 */  mfc1       $v1, $f2
/* 100674 80057164 3C028000 */  lui        $v0, 0x8000
/* 100678 80057168 00621825 */  or         $v1, $v1, $v0
/* 10067C 8005716C 306200FF */  andi       $v0, $v1, 0xff
.L80057170:
/* 100680 80057170 AFA20010 */  sw         $v0, 0x10($sp)
/* 100684 80057174 8E04000C */  lw         $a0, 0xc($s0)
/* 100688 80057178 240500FF */  addiu      $a1, $zero, 0xff
/* 10068C 8005717C 240600FF */  addiu      $a2, $zero, 0xff
/* 100690 80057180 0C028E41 */  jal        func_800A3904
/* 100694 80057184 240700FF */   addiu     $a3, $zero, 0xff
/* 100698 80057188 8E04000C */  lw         $a0, 0xc($s0)
/* 10069C 8005718C 0C028A40 */  jal        func_800A2900
/* 1006A0 80057190 00000000 */   nop
/* 1006A4 80057194 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 1006A8 80057198 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 1006AC 8005719C 2402003C */  addiu      $v0, $zero, 0x3c
/* 1006B0 800571A0 0043001A */  div        $zero, $v0, $v1
/* 1006B4 800571A4 14600002 */  bnez       $v1, .L800571B0
/* 1006B8 800571A8 00000000 */   nop
/* 1006BC 800571AC 0007000D */  break      7
.L800571B0:
/* 1006C0 800571B0 2401FFFF */   addiu     $at, $zero, -1
/* 1006C4 800571B4 14610004 */  bne        $v1, $at, .L800571C8
/* 1006C8 800571B8 3C018000 */   lui       $at, 0x8000
/* 1006CC 800571BC 14410002 */  bne        $v0, $at, .L800571C8
/* 1006D0 800571C0 00000000 */   nop
/* 1006D4 800571C4 0006000D */  break      6
.L800571C8:
/* 1006D8 800571C8 00001012 */   mflo      $v0
/* 1006DC 800571CC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1006E0 800571D0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1006E4 800571D4 00021080 */  sll        $v0, $v0, 2
/* 1006E8 800571D8 14620D9F */  bne        $v1, $v0, .L8005A858
/* 1006EC 800571DC 00001021 */   addu      $v0, $zero, $zero
/* 1006F0 800571E0 2402000C */  addiu      $v0, $zero, 0xc
/* 1006F4 800571E4 08016A15 */  j          .L8005A854
/* 1006F8 800571E8 A6C2001C */   sh        $v0, 0x1c($s6)
.L800571EC:
/* 1006FC 800571EC 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 100700 800571F0 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 100704 800571F4 0202001A */  div        $zero, $s0, $v0
/* 100708 800571F8 14400002 */  bnez       $v0, .L80057204
/* 10070C 800571FC 00000000 */   nop
/* 100710 80057200 0007000D */  break      7
.L80057204:
/* 100714 80057204 2401FFFF */   addiu     $at, $zero, -1
/* 100718 80057208 14410004 */  bne        $v0, $at, .L8005721C
/* 10071C 8005720C 3C018000 */   lui       $at, 0x8000
/* 100720 80057210 16010002 */  bne        $s0, $at, .L8005721C
/* 100724 80057214 00000000 */   nop
/* 100728 80057218 0006000D */  break      6
.L8005721C:
/* 10072C 8005721C 00001012 */   mflo      $v0
/* 100730 80057220 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 100734 80057224 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 100738 80057228 14620006 */  bne        $v1, $v0, .L80057244
/* 10073C 8005722C 00000000 */   nop
/* 100740 80057230 3C048007 */  lui        $a0, %hi(D_80069790)
/* 100744 80057234 0C026E4E */  jal        func_8009B938
/* 100748 80057238 24849790 */   addiu     $a0, $a0, %lo(D_80069790)
/* 10074C 8005723C 0C026DD5 */  jal        func_8009B754
/* 100750 80057240 2404006E */   addiu     $a0, $zero, 0x6e
.L80057244:
/* 100754 80057244 0C00D8C1 */  jal        func_80036304_DF814
/* 100758 80057248 2404001E */   addiu     $a0, $zero, 0x1e
/* 10075C 8005724C 8C44000C */  lw         $a0, 0xc($v0)
/* 100760 80057250 0C028A40 */  jal        func_800A2900
/* 100764 80057254 00000000 */   nop
/* 100768 80057258 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 10076C 8005725C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 100770 80057260 0203001A */  div        $zero, $s0, $v1
/* 100774 80057264 14600002 */  bnez       $v1, .L80057270
/* 100778 80057268 00000000 */   nop
/* 10077C 8005726C 0007000D */  break      7
.L80057270:
/* 100780 80057270 2401FFFF */   addiu     $at, $zero, -1
/* 100784 80057274 14610004 */  bne        $v1, $at, .L80057288
/* 100788 80057278 3C018000 */   lui       $at, 0x8000
/* 10078C 8005727C 16010002 */  bne        $s0, $at, .L80057288
/* 100790 80057280 00000000 */   nop
/* 100794 80057284 0006000D */  break      6
.L80057288:
/* 100798 80057288 00001812 */   mflo      $v1
/* 10079C 8005728C 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1007A0 80057290 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 1007A4 80057294 0043102A */  slt        $v0, $v0, $v1
/* 1007A8 80057298 14400051 */  bnez       $v0, .L800573E0
/* 1007AC 8005729C 00000000 */   nop
/* 1007B0 800572A0 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 1007B4 800572A4 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 1007B8 800572A8 3C106666 */  lui        $s0, 0x6666
/* 1007BC 800572AC 36106667 */  ori        $s0, $s0, 0x6667
/* 1007C0 800572B0 00021400 */  sll        $v0, $v0, 0x10
/* 1007C4 800572B4 00021C03 */  sra        $v1, $v0, 0x10
/* 1007C8 800572B8 00700018 */  mult       $v1, $s0
/* 1007CC 800572BC 000217C3 */  sra        $v0, $v0, 0x1f
/* 1007D0 800572C0 00004810 */  mfhi       $t1
/* 1007D4 800572C4 00092083 */  sra        $a0, $t1, 2
/* 1007D8 800572C8 00822023 */  subu       $a0, $a0, $v0
/* 1007DC 800572CC 00041080 */  sll        $v0, $a0, 2
/* 1007E0 800572D0 00441021 */  addu       $v0, $v0, $a0
/* 1007E4 800572D4 00021040 */  sll        $v0, $v0, 1
/* 1007E8 800572D8 00621823 */  subu       $v1, $v1, $v0
/* 1007EC 800572DC 00031C00 */  sll        $v1, $v1, 0x10
/* 1007F0 800572E0 00032403 */  sra        $a0, $v1, 0x10
/* 1007F4 800572E4 00031FC2 */  srl        $v1, $v1, 0x1f
/* 1007F8 800572E8 00832021 */  addu       $a0, $a0, $v1
/* 1007FC 800572EC 00042043 */  sra        $a0, $a0, 1
/* 100800 800572F0 24840025 */  addiu      $a0, $a0, 0x25
/* 100804 800572F4 0C00D8C1 */  jal        func_80036304_DF814
/* 100808 800572F8 3084FFFF */   andi      $a0, $a0, 0xffff
/* 10080C 800572FC 8C44000C */  lw         $a0, 0xc($v0)
/* 100810 80057300 0C028A40 */  jal        func_800A2900
/* 100814 80057304 00000000 */   nop
/* 100818 80057308 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 10081C 8005730C 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 100820 80057310 00021400 */  sll        $v0, $v0, 0x10
/* 100824 80057314 00021C03 */  sra        $v1, $v0, 0x10
/* 100828 80057318 00700018 */  mult       $v1, $s0
/* 10082C 8005731C 000217C3 */  sra        $v0, $v0, 0x1f
/* 100830 80057320 00004810 */  mfhi       $t1
/* 100834 80057324 00092083 */  sra        $a0, $t1, 2
/* 100838 80057328 00822023 */  subu       $a0, $a0, $v0
/* 10083C 8005732C 00041080 */  sll        $v0, $a0, 2
/* 100840 80057330 00441021 */  addu       $v0, $v0, $a0
/* 100844 80057334 00021040 */  sll        $v0, $v0, 1
/* 100848 80057338 00621823 */  subu       $v1, $v1, $v0
/* 10084C 8005733C 00031C00 */  sll        $v1, $v1, 0x10
/* 100850 80057340 00032403 */  sra        $a0, $v1, 0x10
/* 100854 80057344 00031FC2 */  srl        $v1, $v1, 0x1f
/* 100858 80057348 00832021 */  addu       $a0, $a0, $v1
/* 10085C 8005734C 00042043 */  sra        $a0, $a0, 1
/* 100860 80057350 2484002A */  addiu      $a0, $a0, 0x2a
/* 100864 80057354 0C00D8C1 */  jal        func_80036304_DF814
/* 100868 80057358 3084FFFF */   andi      $a0, $a0, 0xffff
/* 10086C 8005735C 8C44000C */  lw         $a0, 0xc($v0)
/* 100870 80057360 0C028A40 */  jal        func_800A2900
/* 100874 80057364 00000000 */   nop
/* 100878 80057368 3C048007 */  lui        $a0, %hi(D_8006C1E4)
/* 10087C 8005736C 9484C1E4 */  lhu        $a0, %lo(D_8006C1E4)($a0)
/* 100880 80057370 30820001 */  andi       $v0, $a0, 1
/* 100884 80057374 10400015 */  beqz       $v0, .L800573CC
/* 100888 80057378 00042400 */   sll       $a0, $a0, 0x10
/* 10088C 8005737C 00042403 */  sra        $a0, $a0, 0x10
/* 100890 80057380 24840001 */  addiu      $a0, $a0, 1
/* 100894 80057384 00900018 */  mult       $a0, $s0
/* 100898 80057388 000417C3 */  sra        $v0, $a0, 0x1f
/* 10089C 8005738C 00004810 */  mfhi       $t1
/* 1008A0 80057390 00091883 */  sra        $v1, $t1, 2
/* 1008A4 80057394 00621823 */  subu       $v1, $v1, $v0
/* 1008A8 80057398 00031080 */  sll        $v0, $v1, 2
/* 1008AC 8005739C 00431021 */  addu       $v0, $v0, $v1
/* 1008B0 800573A0 00021040 */  sll        $v0, $v0, 1
/* 1008B4 800573A4 00822023 */  subu       $a0, $a0, $v0
/* 1008B8 800573A8 000417C2 */  srl        $v0, $a0, 0x1f
/* 1008BC 800573AC 00822021 */  addu       $a0, $a0, $v0
/* 1008C0 800573B0 00042043 */  sra        $a0, $a0, 1
/* 1008C4 800573B4 2484002A */  addiu      $a0, $a0, 0x2a
/* 1008C8 800573B8 0C00D8C1 */  jal        func_80036304_DF814
/* 1008CC 800573BC 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1008D0 800573C0 8C44000C */  lw         $a0, 0xc($v0)
/* 1008D4 800573C4 0C028A40 */  jal        func_800A2900
/* 1008D8 800573C8 00000000 */   nop
.L800573CC:
/* 1008DC 800573CC 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 1008E0 800573D0 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 1008E4 800573D4 24420001 */  addiu      $v0, $v0, 1
/* 1008E8 800573D8 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 1008EC 800573DC A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
.L800573E0:
/* 1008F0 800573E0 0C00D8C1 */  jal        func_80036304_DF814
/* 1008F4 800573E4 240420C9 */   addiu     $a0, $zero, 0x20c9
/* 1008F8 800573E8 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 1008FC 800573EC C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 100900 800573F0 3C014F00 */  lui        $at, 0x4f00
/* 100904 800573F4 44810000 */  mtc1       $at, $f0
/* 100908 800573F8 00000000 */  nop
/* 10090C 800573FC 4602003E */  c.le.s     $f0, $f2
/* 100910 80057400 00000000 */  nop
/* 100914 80057404 00000000 */  nop
/* 100918 80057408 45010006 */  bc1t       .L80057424
/* 10091C 8005740C 00408021 */   addu      $s0, $v0, $zero
/* 100920 80057410 4600100D */  trunc.w.s  $f0, $f2
/* 100924 80057414 44030000 */  mfc1       $v1, $f0
/* 100928 80057418 00000000 */  nop
/* 10092C 8005741C 08015D0F */  j          .L8005743C
/* 100930 80057420 306200FF */   andi      $v0, $v1, 0xff
.L80057424:
/* 100934 80057424 46001001 */  sub.s      $f0, $f2, $f0
/* 100938 80057428 4600008D */  trunc.w.s  $f2, $f0
/* 10093C 8005742C 44031000 */  mfc1       $v1, $f2
/* 100940 80057430 3C028000 */  lui        $v0, 0x8000
/* 100944 80057434 00621825 */  or         $v1, $v1, $v0
/* 100948 80057438 306200FF */  andi       $v0, $v1, 0xff
.L8005743C:
/* 10094C 8005743C AFA20010 */  sw         $v0, 0x10($sp)
/* 100950 80057440 8E04000C */  lw         $a0, 0xc($s0)
/* 100954 80057444 240500FF */  addiu      $a1, $zero, 0xff
/* 100958 80057448 240600FF */  addiu      $a2, $zero, 0xff
/* 10095C 8005744C 0C028E41 */  jal        func_800A3904
/* 100960 80057450 240700FF */   addiu     $a3, $zero, 0xff
/* 100964 80057454 8E04000C */  lw         $a0, 0xc($s0)
/* 100968 80057458 0C028A40 */  jal        func_800A2900
/* 10096C 8005745C 00000000 */   nop
/* 100970 80057460 0C00D8C1 */  jal        func_80036304_DF814
/* 100974 80057464 240420D3 */   addiu     $a0, $zero, 0x20d3
/* 100978 80057468 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 10097C 8005746C C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 100980 80057470 3C013F4C */  lui        $at, 0x3f4c
/* 100984 80057474 3421CCCD */  ori        $at, $at, 0xcccd
/* 100988 80057478 44810000 */  mtc1       $at, $f0
/* 10098C 8005747C 00000000 */  nop
/* 100990 80057480 46001082 */  mul.s      $f2, $f2, $f0
/* 100994 80057484 3C014F00 */  lui        $at, 0x4f00
/* 100998 80057488 44810000 */  mtc1       $at, $f0
/* 10099C 8005748C 00000000 */  nop
/* 1009A0 80057490 4602003E */  c.le.s     $f0, $f2
/* 1009A4 80057494 00000000 */  nop
/* 1009A8 80057498 00000000 */  nop
/* 1009AC 8005749C 45010006 */  bc1t       .L800574B8
/* 1009B0 800574A0 00408021 */   addu      $s0, $v0, $zero
/* 1009B4 800574A4 4600100D */  trunc.w.s  $f0, $f2
/* 1009B8 800574A8 44030000 */  mfc1       $v1, $f0
/* 1009BC 800574AC 00000000 */  nop
/* 1009C0 800574B0 08015D34 */  j          .L800574D0
/* 1009C4 800574B4 306200FF */   andi      $v0, $v1, 0xff
.L800574B8:
/* 1009C8 800574B8 46001001 */  sub.s      $f0, $f2, $f0
/* 1009CC 800574BC 4600008D */  trunc.w.s  $f2, $f0
/* 1009D0 800574C0 44031000 */  mfc1       $v1, $f2
/* 1009D4 800574C4 3C028000 */  lui        $v0, 0x8000
/* 1009D8 800574C8 00621825 */  or         $v1, $v1, $v0
/* 1009DC 800574CC 306200FF */  andi       $v0, $v1, 0xff
.L800574D0:
/* 1009E0 800574D0 AFA20010 */  sw         $v0, 0x10($sp)
/* 1009E4 800574D4 8E04000C */  lw         $a0, 0xc($s0)
/* 1009E8 800574D8 240500FF */  addiu      $a1, $zero, 0xff
/* 1009EC 800574DC 240600FF */  addiu      $a2, $zero, 0xff
/* 1009F0 800574E0 0C028E41 */  jal        func_800A3904
/* 1009F4 800574E4 240700FF */   addiu     $a3, $zero, 0xff
/* 1009F8 800574E8 8E04000C */  lw         $a0, 0xc($s0)
/* 1009FC 800574EC 0C028A40 */  jal        func_800A2900
/* 100A00 800574F0 00000000 */   nop
/* 100A04 800574F4 0C00D8C1 */  jal        func_80036304_DF814
/* 100A08 800574F8 240420CA */   addiu     $a0, $zero, 0x20ca
/* 100A0C 800574FC 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 100A10 80057500 C422C1F8 */  lwc1       $f2, %lo(D_8006C1F8)($at)
/* 100A14 80057504 3C014F00 */  lui        $at, 0x4f00
/* 100A18 80057508 44810000 */  mtc1       $at, $f0
/* 100A1C 8005750C 00000000 */  nop
/* 100A20 80057510 4602003E */  c.le.s     $f0, $f2
/* 100A24 80057514 00000000 */  nop
/* 100A28 80057518 00000000 */  nop
/* 100A2C 8005751C 45010006 */  bc1t       .L80057538
/* 100A30 80057520 00408021 */   addu      $s0, $v0, $zero
/* 100A34 80057524 4600100D */  trunc.w.s  $f0, $f2
/* 100A38 80057528 44030000 */  mfc1       $v1, $f0
/* 100A3C 8005752C 00000000 */  nop
/* 100A40 80057530 08015D54 */  j          .L80057550
/* 100A44 80057534 306200FF */   andi      $v0, $v1, 0xff
.L80057538:
/* 100A48 80057538 46001001 */  sub.s      $f0, $f2, $f0
/* 100A4C 8005753C 4600008D */  trunc.w.s  $f2, $f0
/* 100A50 80057540 44031000 */  mfc1       $v1, $f2
/* 100A54 80057544 3C028000 */  lui        $v0, 0x8000
/* 100A58 80057548 00621825 */  or         $v1, $v1, $v0
/* 100A5C 8005754C 306200FF */  andi       $v0, $v1, 0xff
.L80057550:
/* 100A60 80057550 AFA20010 */  sw         $v0, 0x10($sp)
/* 100A64 80057554 8E04000C */  lw         $a0, 0xc($s0)
/* 100A68 80057558 240500FF */  addiu      $a1, $zero, 0xff
/* 100A6C 8005755C 240600FF */  addiu      $a2, $zero, 0xff
/* 100A70 80057560 0C028E41 */  jal        func_800A3904
/* 100A74 80057564 240700FF */   addiu     $a3, $zero, 0xff
/* 100A78 80057568 8E04000C */  lw         $a0, 0xc($s0)
/* 100A7C 8005756C 0C028A40 */  jal        func_800A2900
/* 100A80 80057570 00000000 */   nop
/* 100A84 80057574 0C00D8C1 */  jal        func_80036304_DF814
/* 100A88 80057578 240420D4 */   addiu     $a0, $zero, 0x20d4
/* 100A8C 8005757C 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 100A90 80057580 C422C1F8 */  lwc1       $f2, %lo(D_8006C1F8)($at)
/* 100A94 80057584 3C013F4C */  lui        $at, 0x3f4c
/* 100A98 80057588 3421CCCD */  ori        $at, $at, 0xcccd
/* 100A9C 8005758C 44810000 */  mtc1       $at, $f0
/* 100AA0 80057590 00000000 */  nop
/* 100AA4 80057594 46001082 */  mul.s      $f2, $f2, $f0
/* 100AA8 80057598 3C014F00 */  lui        $at, 0x4f00
/* 100AAC 8005759C 44810000 */  mtc1       $at, $f0
/* 100AB0 800575A0 00000000 */  nop
/* 100AB4 800575A4 4602003E */  c.le.s     $f0, $f2
/* 100AB8 800575A8 00000000 */  nop
/* 100ABC 800575AC 00000000 */  nop
/* 100AC0 800575B0 45010006 */  bc1t       .L800575CC
/* 100AC4 800575B4 00408021 */   addu      $s0, $v0, $zero
/* 100AC8 800575B8 4600100D */  trunc.w.s  $f0, $f2
/* 100ACC 800575BC 44030000 */  mfc1       $v1, $f0
/* 100AD0 800575C0 00000000 */  nop
/* 100AD4 800575C4 08015D79 */  j          .L800575E4
/* 100AD8 800575C8 306200FF */   andi      $v0, $v1, 0xff
.L800575CC:
/* 100ADC 800575CC 46001001 */  sub.s      $f0, $f2, $f0
/* 100AE0 800575D0 4600008D */  trunc.w.s  $f2, $f0
/* 100AE4 800575D4 44031000 */  mfc1       $v1, $f2
/* 100AE8 800575D8 3C028000 */  lui        $v0, 0x8000
/* 100AEC 800575DC 00621825 */  or         $v1, $v1, $v0
/* 100AF0 800575E0 306200FF */  andi       $v0, $v1, 0xff
.L800575E4:
/* 100AF4 800575E4 AFA20010 */  sw         $v0, 0x10($sp)
/* 100AF8 800575E8 8E04000C */  lw         $a0, 0xc($s0)
/* 100AFC 800575EC 240500FF */  addiu      $a1, $zero, 0xff
/* 100B00 800575F0 240600FF */  addiu      $a2, $zero, 0xff
/* 100B04 800575F4 0C028E41 */  jal        func_800A3904
/* 100B08 800575F8 240700FF */   addiu     $a3, $zero, 0xff
/* 100B0C 800575FC 8E04000C */  lw         $a0, 0xc($s0)
/* 100B10 80057600 0C028A40 */  jal        func_800A2900
/* 100B14 80057604 00000000 */   nop
/* 100B18 80057608 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 100B1C 8005760C C424C1F4 */  lwc1       $f4, %lo(D_8006C1F4)($at)
/* 100B20 80057610 44800000 */  mtc1       $zero, $f0
/* 100B24 80057614 00000000 */  nop
/* 100B28 80057618 4604003C */  c.lt.s     $f0, $f4
/* 100B2C 8005761C 00000000 */  nop
/* 100B30 80057620 4500000C */  bc1f       .L80057654
/* 100B34 80057624 00000000 */   nop
/* 100B38 80057628 3C014100 */  lui        $at, 0x4100
/* 100B3C 8005762C 44810000 */  mtc1       $at, $f0
/* 100B40 80057630 00000000 */  nop
/* 100B44 80057634 46002101 */  sub.s      $f4, $f4, $f0
/* 100B48 80057638 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 100B4C 8005763C C422C1F8 */  lwc1       $f2, %lo(D_8006C1F8)($at)
/* 100B50 80057640 46001080 */  add.s      $f2, $f2, $f0
/* 100B54 80057644 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 100B58 80057648 E424C1F4 */  swc1       $f4, %lo(D_8006C1F4)($at)
/* 100B5C 8005764C 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 100B60 80057650 E422C1F8 */  swc1       $f2, %lo(D_8006C1F8)($at)
.L80057654:
/* 100B64 80057654 3C038007 */  lui        $v1, %hi(D_8006C1E4)
/* 100B68 80057658 8463C1E4 */  lh         $v1, %lo(D_8006C1E4)($v1)
/* 100B6C 8005765C 24020014 */  addiu      $v0, $zero, 0x14
/* 100B70 80057660 14620C7D */  bne        $v1, $v0, .L8005A858
/* 100B74 80057664 00001021 */   addu      $v0, $zero, $zero
/* 100B78 80057668 2402000D */  addiu      $v0, $zero, 0xd
/* 100B7C 8005766C 08016A15 */  j          .L8005A854
/* 100B80 80057670 A6C2001C */   sh        $v0, 0x1c($s6)
.L80057674:
/* 100B84 80057674 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 100B88 80057678 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 100B8C 8005767C 24020006 */  addiu      $v0, $zero, 6
/* 100B90 80057680 14620003 */  bne        $v1, $v0, .L80057690
/* 100B94 80057684 00000000 */   nop
/* 100B98 80057688 0C026DD5 */  jal        func_8009B754
/* 100B9C 8005768C 24040015 */   addiu     $a0, $zero, 0x15
.L80057690:
/* 100BA0 80057690 0C00D8C1 */  jal        func_80036304_DF814
/* 100BA4 80057694 24040049 */   addiu     $a0, $zero, 0x49
/* 100BA8 80057698 8C44000C */  lw         $a0, 0xc($v0)
/* 100BAC 8005769C 0C028A40 */  jal        func_800A2900
/* 100BB0 800576A0 00000000 */   nop
/* 100BB4 800576A4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 100BB8 800576A8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 100BBC 800576AC 24020005 */  addiu      $v0, $zero, 5
/* 100BC0 800576B0 14620010 */  bne        $v1, $v0, .L800576F4
/* 100BC4 800576B4 28620006 */   slti      $v0, $v1, 6
/* 100BC8 800576B8 0C00D8C1 */  jal        func_80036304_DF814
/* 100BCC 800576BC 24040017 */   addiu     $a0, $zero, 0x17
/* 100BD0 800576C0 00408021 */  addu       $s0, $v0, $zero
/* 100BD4 800576C4 240200FF */  addiu      $v0, $zero, 0xff
/* 100BD8 800576C8 AFA20010 */  sw         $v0, 0x10($sp)
/* 100BDC 800576CC 8E04000C */  lw         $a0, 0xc($s0)
/* 100BE0 800576D0 00002821 */  addu       $a1, $zero, $zero
/* 100BE4 800576D4 00003021 */  addu       $a2, $zero, $zero
/* 100BE8 800576D8 0C028E41 */  jal        func_800A3904
/* 100BEC 800576DC 00003821 */   addu      $a3, $zero, $zero
/* 100BF0 800576E0 8E04000C */  lw         $a0, 0xc($s0)
/* 100BF4 800576E4 0C028A40 */  jal        func_800A2900
/* 100BF8 800576E8 00000000 */   nop
/* 100BFC 800576EC 08015E5F */  j          .L8005797C
/* 100C00 800576F0 00000000 */   nop
.L800576F4:
/* 100C04 800576F4 144000A1 */  bnez       $v0, .L8005797C
/* 100C08 800576F8 00000000 */   nop
/* 100C0C 800576FC 0C00D8C1 */  jal        func_80036304_DF814
/* 100C10 80057700 24040017 */   addiu     $a0, $zero, 0x17
/* 100C14 80057704 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 100C18 80057708 C422C1FC */  lwc1       $f2, %lo(D_8006C1FC)($at)
/* 100C1C 8005770C 3C014F00 */  lui        $at, 0x4f00
/* 100C20 80057710 44810000 */  mtc1       $at, $f0
/* 100C24 80057714 00000000 */  nop
/* 100C28 80057718 4602003E */  c.le.s     $f0, $f2
/* 100C2C 8005771C 00000000 */  nop
/* 100C30 80057720 00000000 */  nop
/* 100C34 80057724 45010006 */  bc1t       .L80057740
/* 100C38 80057728 00408021 */   addu      $s0, $v0, $zero
/* 100C3C 8005772C 4600100D */  trunc.w.s  $f0, $f2
/* 100C40 80057730 44030000 */  mfc1       $v1, $f0
/* 100C44 80057734 00000000 */  nop
/* 100C48 80057738 08015DD6 */  j          .L80057758
/* 100C4C 8005773C 306200FF */   andi      $v0, $v1, 0xff
.L80057740:
/* 100C50 80057740 46001001 */  sub.s      $f0, $f2, $f0
/* 100C54 80057744 4600008D */  trunc.w.s  $f2, $f0
/* 100C58 80057748 44031000 */  mfc1       $v1, $f2
/* 100C5C 8005774C 3C028000 */  lui        $v0, 0x8000
/* 100C60 80057750 00621825 */  or         $v1, $v1, $v0
/* 100C64 80057754 306200FF */  andi       $v0, $v1, 0xff
.L80057758:
/* 100C68 80057758 AFA20010 */  sw         $v0, 0x10($sp)
/* 100C6C 8005775C 8E04000C */  lw         $a0, 0xc($s0)
/* 100C70 80057760 240500FF */  addiu      $a1, $zero, 0xff
/* 100C74 80057764 240600FF */  addiu      $a2, $zero, 0xff
/* 100C78 80057768 0C028E41 */  jal        func_800A3904
/* 100C7C 8005776C 240700FF */   addiu     $a3, $zero, 0xff
/* 100C80 80057770 8E04000C */  lw         $a0, 0xc($s0)
/* 100C84 80057774 0C028A40 */  jal        func_800A2900
/* 100C88 80057778 00000000 */   nop
/* 100C8C 8005777C 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 100C90 80057780 C422C1FC */  lwc1       $f2, %lo(D_8006C1FC)($at)
/* 100C94 80057784 3C014080 */  lui        $at, 0x4080
/* 100C98 80057788 44810000 */  mtc1       $at, $f0
/* 100C9C 8005778C 00000000 */  nop
/* 100CA0 80057790 46001081 */  sub.s      $f2, $f2, $f0
/* 100CA4 80057794 3C01437F */  lui        $at, 0x437f
/* 100CA8 80057798 44810000 */  mtc1       $at, $f0
/* 100CAC 8005779C 00000000 */  nop
/* 100CB0 800577A0 4602003C */  c.lt.s     $f0, $f2
/* 100CB4 800577A4 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 100CB8 800577A8 E422C1FC */  swc1       $f2, %lo(D_8006C1FC)($at)
/* 100CBC 800577AC 45010007 */  bc1t       .L800577CC
/* 100CC0 800577B0 00000000 */   nop
/* 100CC4 800577B4 44800000 */  mtc1       $zero, $f0
/* 100CC8 800577B8 00000000 */  nop
/* 100CCC 800577BC 4600103C */  c.lt.s     $f2, $f0
/* 100CD0 800577C0 00000000 */  nop
/* 100CD4 800577C4 45000003 */  bc1f       .L800577D4
/* 100CD8 800577C8 00000000 */   nop
.L800577CC:
/* 100CDC 800577CC 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 100CE0 800577D0 E420C1FC */  swc1       $f0, %lo(D_8006C1FC)($at)
.L800577D4:
/* 100CE4 800577D4 3C048007 */  lui        $a0, %hi(D_8006C1EA)
/* 100CE8 800577D8 9484C1EA */  lhu        $a0, %lo(D_8006C1EA)($a0)
/* 100CEC 800577DC 3C0143FA */  lui        $at, 0x43fa
/* 100CF0 800577E0 4481B000 */  mtc1       $at, $f22
/* 100CF4 800577E4 2484003D */  addiu      $a0, $a0, 0x3d
/* 100CF8 800577E8 0C00D8C1 */  jal        func_80036304_DF814
/* 100CFC 800577EC 3084FFFF */   andi      $a0, $a0, 0xffff
/* 100D00 800577F0 3C018007 */  lui        $at, %hi(D_8006C564)
/* 100D04 800577F4 C420C564 */  lwc1       $f0, %lo(D_8006C564)($at)
/* 100D08 800577F8 46800020 */  cvt.s.w    $f0, $f0
/* 100D0C 800577FC 46160003 */  div.s      $f0, $f0, $f22
/* 100D10 80057800 3C014000 */  lui        $at, 0x4000
/* 100D14 80057804 4481A000 */  mtc1       $at, $f20
/* 100D18 80057808 00000000 */  nop
/* 100D1C 8005780C 46140000 */  add.s      $f0, $f0, $f20
/* 100D20 80057810 00408021 */  addu       $s0, $v0, $zero
/* 100D24 80057814 8E04000C */  lw         $a0, 0xc($s0)
/* 100D28 80057818 44060000 */  mfc1       $a2, $f0
/* 100D2C 8005781C 00002821 */  addu       $a1, $zero, $zero
/* 100D30 80057820 0C02915B */  jal        func_800A456C
/* 100D34 80057824 00C03821 */   addu      $a3, $a2, $zero
/* 100D38 80057828 8E04000C */  lw         $a0, 0xc($s0)
/* 100D3C 8005782C 0C028A40 */  jal        func_800A2900
/* 100D40 80057830 00000000 */   nop
/* 100D44 80057834 3C048007 */  lui        $a0, %hi(D_8006C1EA)
/* 100D48 80057838 9484C1EA */  lhu        $a0, %lo(D_8006C1EA)($a0)
/* 100D4C 8005783C 24840043 */  addiu      $a0, $a0, 0x43
/* 100D50 80057840 0C00D8C1 */  jal        func_80036304_DF814
/* 100D54 80057844 3084FFFF */   andi      $a0, $a0, 0xffff
/* 100D58 80057848 3C018007 */  lui        $at, %hi(D_8006C564)
/* 100D5C 8005784C C420C564 */  lwc1       $f0, %lo(D_8006C564)($at)
/* 100D60 80057850 46800020 */  cvt.s.w    $f0, $f0
/* 100D64 80057854 46160003 */  div.s      $f0, $f0, $f22
/* 100D68 80057858 46140000 */  add.s      $f0, $f0, $f20
/* 100D6C 8005785C 00408021 */  addu       $s0, $v0, $zero
/* 100D70 80057860 8E04000C */  lw         $a0, 0xc($s0)
/* 100D74 80057864 44060000 */  mfc1       $a2, $f0
/* 100D78 80057868 00002821 */  addu       $a1, $zero, $zero
/* 100D7C 8005786C 0C02915B */  jal        func_800A456C
/* 100D80 80057870 00C03821 */   addu      $a3, $a2, $zero
/* 100D84 80057874 240200C0 */  addiu      $v0, $zero, 0xc0
/* 100D88 80057878 AFA20010 */  sw         $v0, 0x10($sp)
/* 100D8C 8005787C 8E04000C */  lw         $a0, 0xc($s0)
/* 100D90 80057880 240500FF */  addiu      $a1, $zero, 0xff
/* 100D94 80057884 240600FF */  addiu      $a2, $zero, 0xff
/* 100D98 80057888 0C028E41 */  jal        func_800A3904
/* 100D9C 8005788C 240700FF */   addiu     $a3, $zero, 0xff
/* 100DA0 80057890 8E04000C */  lw         $a0, 0xc($s0)
/* 100DA4 80057894 0C028A40 */  jal        func_800A2900
/* 100DA8 80057898 00000000 */   nop
/* 100DAC 8005789C 3C038007 */  lui        $v1, %hi(D_8006C1E8)
/* 100DB0 800578A0 8463C1E8 */  lh         $v1, %lo(D_8006C1E8)($v1)
/* 100DB4 800578A4 3C028007 */  lui        $v0, %hi(D_8006C1EA)
/* 100DB8 800578A8 8442C1EA */  lh         $v0, %lo(D_8006C1EA)($v0)
/* 100DBC 800578AC 1062001D */  beq        $v1, $v0, .L80057924
/* 100DC0 800578B0 00602021 */   addu      $a0, $v1, $zero
/* 100DC4 800578B4 24840043 */  addiu      $a0, $a0, 0x43
/* 100DC8 800578B8 0C00D8C1 */  jal        func_80036304_DF814
/* 100DCC 800578BC 3084FFFF */   andi      $a0, $a0, 0xffff
/* 100DD0 800578C0 3C018007 */  lui        $at, %hi(D_8006C564)
/* 100DD4 800578C4 C420C564 */  lwc1       $f0, %lo(D_8006C564)($at)
/* 100DD8 800578C8 46800020 */  cvt.s.w    $f0, $f0
/* 100DDC 800578CC 46160003 */  div.s      $f0, $f0, $f22
/* 100DE0 800578D0 46140000 */  add.s      $f0, $f0, $f20
/* 100DE4 800578D4 00408021 */  addu       $s0, $v0, $zero
/* 100DE8 800578D8 8E04000C */  lw         $a0, 0xc($s0)
/* 100DEC 800578DC 44060000 */  mfc1       $a2, $f0
/* 100DF0 800578E0 00002821 */  addu       $a1, $zero, $zero
/* 100DF4 800578E4 0C02915B */  jal        func_800A456C
/* 100DF8 800578E8 00C03821 */   addu      $a3, $a2, $zero
/* 100DFC 800578EC 24020080 */  addiu      $v0, $zero, 0x80
/* 100E00 800578F0 AFA20010 */  sw         $v0, 0x10($sp)
/* 100E04 800578F4 8E04000C */  lw         $a0, 0xc($s0)
/* 100E08 800578F8 240500FF */  addiu      $a1, $zero, 0xff
/* 100E0C 800578FC 240600FF */  addiu      $a2, $zero, 0xff
/* 100E10 80057900 0C028E41 */  jal        func_800A3904
/* 100E14 80057904 240700FF */   addiu     $a3, $zero, 0xff
/* 100E18 80057908 8E04000C */  lw         $a0, 0xc($s0)
/* 100E1C 8005790C 0C028A40 */  jal        func_800A2900
/* 100E20 80057910 00000000 */   nop
/* 100E24 80057914 3C028007 */  lui        $v0, %hi(D_8006C1E8)
/* 100E28 80057918 9442C1E8 */  lhu        $v0, %lo(D_8006C1E8)($v0)
/* 100E2C 8005791C 3C018007 */  lui        $at, %hi(D_8006C1EA)
/* 100E30 80057920 A422C1EA */  sh         $v0, %lo(D_8006C1EA)($at)
.L80057924:
/* 100E34 80057924 3C028007 */  lui        $v0, %hi(D_8006C1E8)
/* 100E38 80057928 8442C1E8 */  lh         $v0, %lo(D_8006C1E8)($v0)
/* 100E3C 8005792C 00402821 */  addu       $a1, $v0, $zero
/* 100E40 80057930 28420005 */  slti       $v0, $v0, 5
/* 100E44 80057934 10400011 */  beqz       $v0, .L8005797C
/* 100E48 80057938 00000000 */   nop
/* 100E4C 8005793C 3C028007 */  lui        $v0, %hi(D_8006C1E6)
/* 100E50 80057940 8442C1E6 */  lh         $v0, %lo(D_8006C1E6)($v0)
/* 100E54 80057944 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 100E58 80057948 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 100E5C 8005794C 00402021 */  addu       $a0, $v0, $zero
/* 100E60 80057950 24420005 */  addiu      $v0, $v0, 5
/* 100E64 80057954 14620009 */  bne        $v1, $v0, .L8005797C
/* 100E68 80057958 24A20001 */   addiu     $v0, $a1, 1
/* 100E6C 8005795C 3C018007 */  lui        $at, %hi(D_8006C1E8)
/* 100E70 80057960 A422C1E8 */  sh         $v0, %lo(D_8006C1E8)($at)
/* 100E74 80057964 00021400 */  sll        $v0, $v0, 0x10
/* 100E78 80057968 000213C3 */  sra        $v0, $v0, 0xf
/* 100E7C 8005796C 00821021 */  addu       $v0, $a0, $v0
/* 100E80 80057970 24420002 */  addiu      $v0, $v0, 2
/* 100E84 80057974 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* 100E88 80057978 A422C1E6 */  sh         $v0, %lo(D_8006C1E6)($at)
.L8005797C:
/* 100E8C 8005797C 0C00D8C1 */  jal        func_80036304_DF814
/* 100E90 80057980 240420CA */   addiu     $a0, $zero, 0x20ca
/* 100E94 80057984 00408021 */  addu       $s0, $v0, $zero
/* 100E98 80057988 240200FF */  addiu      $v0, $zero, 0xff
/* 100E9C 8005798C AFA20010 */  sw         $v0, 0x10($sp)
/* 100EA0 80057990 8E04000C */  lw         $a0, 0xc($s0)
/* 100EA4 80057994 240500FF */  addiu      $a1, $zero, 0xff
/* 100EA8 80057998 240600FF */  addiu      $a2, $zero, 0xff
/* 100EAC 8005799C 0C028E41 */  jal        func_800A3904
/* 100EB0 800579A0 240700FF */   addiu     $a3, $zero, 0xff
/* 100EB4 800579A4 8E04000C */  lw         $a0, 0xc($s0)
/* 100EB8 800579A8 0C028A40 */  jal        func_800A2900
/* 100EBC 800579AC 00000000 */   nop
/* 100EC0 800579B0 0C00D8C1 */  jal        func_80036304_DF814
/* 100EC4 800579B4 240420D4 */   addiu     $a0, $zero, 0x20d4
/* 100EC8 800579B8 00408021 */  addu       $s0, $v0, $zero
/* 100ECC 800579BC 240200D0 */  addiu      $v0, $zero, 0xd0
/* 100ED0 800579C0 AFA20010 */  sw         $v0, 0x10($sp)
/* 100ED4 800579C4 8E04000C */  lw         $a0, 0xc($s0)
/* 100ED8 800579C8 240500FF */  addiu      $a1, $zero, 0xff
/* 100EDC 800579CC 240600FF */  addiu      $a2, $zero, 0xff
/* 100EE0 800579D0 0C028E41 */  jal        func_800A3904
/* 100EE4 800579D4 240700FF */   addiu     $a3, $zero, 0xff
/* 100EE8 800579D8 8E04000C */  lw         $a0, 0xc($s0)
/* 100EEC 800579DC 0C028A40 */  jal        func_800A2900
/* 100EF0 800579E0 00000000 */   nop
/* 100EF4 800579E4 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 100EF8 800579E8 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 100EFC 800579EC 2403003C */  addiu      $v1, $zero, 0x3c
/* 100F00 800579F0 0062001A */  div        $zero, $v1, $v0
/* 100F04 800579F4 14400002 */  bnez       $v0, .L80057A00
/* 100F08 800579F8 00000000 */   nop
/* 100F0C 800579FC 0007000D */  break      7
.L80057A00:
/* 100F10 80057A00 2401FFFF */   addiu     $at, $zero, -1
/* 100F14 80057A04 14410004 */  bne        $v0, $at, .L80057A18
/* 100F18 80057A08 3C018000 */   lui       $at, 0x8000
/* 100F1C 80057A0C 14610002 */  bne        $v1, $at, .L80057A18
/* 100F20 80057A10 00000000 */   nop
/* 100F24 80057A14 0006000D */  break      6
.L80057A18:
/* 100F28 80057A18 00001812 */   mflo      $v1
/* 100F2C 80057A1C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 100F30 80057A20 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 100F34 80057A24 00031080 */  sll        $v0, $v1, 2
/* 100F38 80057A28 00431021 */  addu       $v0, $v0, $v1
/* 100F3C 80057A2C 14820B8A */  bne        $a0, $v0, .L8005A858
/* 100F40 80057A30 00001021 */   addu      $v0, $zero, $zero
/* 100F44 80057A34 2402000E */  addiu      $v0, $zero, 0xe
/* 100F48 80057A38 08016A15 */  j          .L8005A854
/* 100F4C 80057A3C A6C2001C */   sh        $v0, 0x1c($s6)
.L80057A40:
/* 100F50 80057A40 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 100F54 80057A44 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 100F58 80057A48 14400003 */  bnez       $v0, .L80057A58
/* 100F5C 80057A4C 00000000 */   nop
/* 100F60 80057A50 0C0142CE */  jal        func_80050B38_FA048
/* 100F64 80057A54 00000000 */   nop
.L80057A58:
/* 100F68 80057A58 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 100F6C 80057A5C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 100F70 80057A60 24020002 */  addiu      $v0, $zero, 2
/* 100F74 80057A64 14620B7C */  bne        $v1, $v0, .L8005A858
/* 100F78 80057A68 00001021 */   addu      $v0, $zero, $zero
/* 100F7C 80057A6C 0C02A5AF */  jal        func_800A96BC
/* 100F80 80057A70 24040001 */   addiu     $a0, $zero, 1
/* 100F84 80057A74 24050010 */  addiu      $a1, $zero, 0x10
/* 100F88 80057A78 3C014378 */  lui        $at, 0x4378
/* 100F8C 80057A7C 44810000 */  mtc1       $at, $f0
/* 100F90 80057A80 3C014370 */  lui        $at, 0x4370
/* 100F94 80057A84 44811000 */  mtc1       $at, $f2
/* 100F98 80057A88 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 100F9C 80057A8C 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 100FA0 80057A90 24060030 */  addiu      $a2, $zero, 0x30
/* 100FA4 80057A94 240200BF */  addiu      $v0, $zero, 0xbf
/* 100FA8 80057A98 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 100FAC 80057A9C AC20C1EC */  sw         $zero, %lo(D_8006C1EC)($at)
/* 100FB0 80057AA0 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 100FB4 80057AA4 A420C1E4 */  sh         $zero, %lo(D_8006C1E4)($at)
/* 100FB8 80057AA8 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 100FBC 80057AAC AC20C1F4 */  sw         $zero, %lo(D_8006C1F4)($at)
/* 100FC0 80057AB0 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 100FC4 80057AB4 AC20C1F8 */  sw         $zero, %lo(D_8006C1F8)($at)
/* 100FC8 80057AB8 AFA20010 */  sw         $v0, 0x10($sp)
/* 100FCC 80057ABC 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 100FD0 80057AC0 E420C1F0 */  swc1       $f0, %lo(D_8006C1F0)($at)
/* 100FD4 80057AC4 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 100FD8 80057AC8 E422C1FC */  swc1       $f2, %lo(D_8006C1FC)($at)
/* 100FDC 80057ACC 0C02939C */  jal        func_800A4E70
/* 100FE0 80057AD0 2407012F */   addiu     $a3, $zero, 0x12f
/* 100FE4 80057AD4 2402000F */  addiu      $v0, $zero, 0xf
/* 100FE8 80057AD8 08016A15 */  j          .L8005A854
/* 100FEC 80057ADC A6C2001C */   sh        $v0, 0x1c($s6)
.L80057AE0:
/* 100FF0 80057AE0 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 100FF4 80057AE4 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 100FF8 80057AE8 2402003C */  addiu      $v0, $zero, 0x3c
/* 100FFC 80057AEC 0043001A */  div        $zero, $v0, $v1
/* 101000 80057AF0 14600002 */  bnez       $v1, .L80057AFC
/* 101004 80057AF4 00000000 */   nop
/* 101008 80057AF8 0007000D */  break      7
.L80057AFC:
/* 10100C 80057AFC 2401FFFF */   addiu     $at, $zero, -1
/* 101010 80057B00 14610004 */  bne        $v1, $at, .L80057B14
/* 101014 80057B04 3C018000 */   lui       $at, 0x8000
/* 101018 80057B08 14410002 */  bne        $v0, $at, .L80057B14
/* 10101C 80057B0C 00000000 */   nop
/* 101020 80057B10 0006000D */  break      6
.L80057B14:
/* 101024 80057B14 00001012 */   mflo      $v0
/* 101028 80057B18 3C018007 */  lui        $at, %hi(D_8006A3C0)
/* 10102C 80057B1C D422A3C0 */  ldc1       $f2, %lo(D_8006A3C0)($at)
/* 101030 80057B20 44820000 */  mtc1       $v0, $f0
/* 101034 80057B24 00000000 */  nop
/* 101038 80057B28 46800021 */  cvt.d.w    $f0, $f0
/* 10103C 80057B2C 46220002 */  mul.d      $f0, $f0, $f2
/* 101040 80057B30 3C018007 */  lui        $at, %hi(D_8006C564)
/* 101044 80057B34 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* 101048 80057B38 468010A1 */  cvt.d.w    $f2, $f2
/* 10104C 80057B3C 46201032 */  c.eq.d     $f2, $f0
/* 101050 80057B40 00000000 */  nop
/* 101054 80057B44 45000003 */  bc1f       .L80057B54
/* 101058 80057B48 00000000 */   nop
/* 10105C 80057B4C 0C026DD5 */  jal        func_8009B754
/* 101060 80057B50 24040012 */   addiu     $a0, $zero, 0x12
.L80057B54:
/* 101064 80057B54 0C00D8C1 */  jal        func_80036304_DF814
/* 101068 80057B58 24040033 */   addiu     $a0, $zero, 0x33
/* 10106C 80057B5C 8C44000C */  lw         $a0, 0xc($v0)
/* 101070 80057B60 0C028A40 */  jal        func_800A2900
/* 101074 80057B64 00000000 */   nop
/* 101078 80057B68 0C00D8C1 */  jal        func_80036304_DF814
/* 10107C 80057B6C 24040031 */   addiu     $a0, $zero, 0x31
/* 101080 80057B70 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 101084 80057B74 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* 101088 80057B78 3C014F00 */  lui        $at, 0x4f00
/* 10108C 80057B7C 44810000 */  mtc1       $at, $f0
/* 101090 80057B80 00000000 */  nop
/* 101094 80057B84 4602003E */  c.le.s     $f0, $f2
/* 101098 80057B88 00000000 */  nop
/* 10109C 80057B8C 00000000 */  nop
/* 1010A0 80057B90 45010006 */  bc1t       .L80057BAC
/* 1010A4 80057B94 00408021 */   addu      $s0, $v0, $zero
/* 1010A8 80057B98 4600100D */  trunc.w.s  $f0, $f2
/* 1010AC 80057B9C 44030000 */  mfc1       $v1, $f0
/* 1010B0 80057BA0 00000000 */  nop
/* 1010B4 80057BA4 08015EF1 */  j          .L80057BC4
/* 1010B8 80057BA8 306200FF */   andi      $v0, $v1, 0xff
.L80057BAC:
/* 1010BC 80057BAC 46001001 */  sub.s      $f0, $f2, $f0
/* 1010C0 80057BB0 4600008D */  trunc.w.s  $f2, $f0
/* 1010C4 80057BB4 44031000 */  mfc1       $v1, $f2
/* 1010C8 80057BB8 3C028000 */  lui        $v0, 0x8000
/* 1010CC 80057BBC 00621825 */  or         $v1, $v1, $v0
/* 1010D0 80057BC0 306200FF */  andi       $v0, $v1, 0xff
.L80057BC4:
/* 1010D4 80057BC4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1010D8 80057BC8 8E04000C */  lw         $a0, 0xc($s0)
/* 1010DC 80057BCC 240500FF */  addiu      $a1, $zero, 0xff
/* 1010E0 80057BD0 240600FF */  addiu      $a2, $zero, 0xff
/* 1010E4 80057BD4 0C028E41 */  jal        func_800A3904
/* 1010E8 80057BD8 240700FF */   addiu     $a3, $zero, 0xff
/* 1010EC 80057BDC 8E04000C */  lw         $a0, 0xc($s0)
/* 1010F0 80057BE0 0C028A40 */  jal        func_800A2900
/* 1010F4 80057BE4 00000000 */   nop
/* 1010F8 80057BE8 0C00D8C1 */  jal        func_80036304_DF814
/* 1010FC 80057BEC 24040032 */   addiu     $a0, $zero, 0x32
/* 101100 80057BF0 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 101104 80057BF4 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* 101108 80057BF8 3C013F33 */  lui        $at, 0x3f33
/* 10110C 80057BFC 34213333 */  ori        $at, $at, 0x3333
/* 101110 80057C00 44810000 */  mtc1       $at, $f0
/* 101114 80057C04 00000000 */  nop
/* 101118 80057C08 46001082 */  mul.s      $f2, $f2, $f0
/* 10111C 80057C0C 3C014F00 */  lui        $at, 0x4f00
/* 101120 80057C10 44810000 */  mtc1       $at, $f0
/* 101124 80057C14 00000000 */  nop
/* 101128 80057C18 4602003E */  c.le.s     $f0, $f2
/* 10112C 80057C1C 00000000 */  nop
/* 101130 80057C20 00000000 */  nop
/* 101134 80057C24 45010006 */  bc1t       .L80057C40
/* 101138 80057C28 00408021 */   addu      $s0, $v0, $zero
/* 10113C 80057C2C 4600100D */  trunc.w.s  $f0, $f2
/* 101140 80057C30 44030000 */  mfc1       $v1, $f0
/* 101144 80057C34 00000000 */  nop
/* 101148 80057C38 08015F16 */  j          .L80057C58
/* 10114C 80057C3C 306200FF */   andi      $v0, $v1, 0xff
.L80057C40:
/* 101150 80057C40 46001001 */  sub.s      $f0, $f2, $f0
/* 101154 80057C44 4600008D */  trunc.w.s  $f2, $f0
/* 101158 80057C48 44031000 */  mfc1       $v1, $f2
/* 10115C 80057C4C 3C028000 */  lui        $v0, 0x8000
/* 101160 80057C50 00621825 */  or         $v1, $v1, $v0
/* 101164 80057C54 306200FF */  andi       $v0, $v1, 0xff
.L80057C58:
/* 101168 80057C58 AFA20010 */  sw         $v0, 0x10($sp)
/* 10116C 80057C5C 8E04000C */  lw         $a0, 0xc($s0)
/* 101170 80057C60 240500FF */  addiu      $a1, $zero, 0xff
/* 101174 80057C64 240600FF */  addiu      $a2, $zero, 0xff
/* 101178 80057C68 0C028E41 */  jal        func_800A3904
/* 10117C 80057C6C 240700FF */   addiu     $a3, $zero, 0xff
/* 101180 80057C70 8E04000C */  lw         $a0, 0xc($s0)
/* 101184 80057C74 0C028A40 */  jal        func_800A2900
/* 101188 80057C78 00000000 */   nop
/* 10118C 80057C7C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 101190 80057C80 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 101194 80057C84 2402003C */  addiu      $v0, $zero, 0x3c
/* 101198 80057C88 0043001A */  div        $zero, $v0, $v1
/* 10119C 80057C8C 14600002 */  bnez       $v1, .L80057C98
/* 1011A0 80057C90 00000000 */   nop
/* 1011A4 80057C94 0007000D */  break      7
.L80057C98:
/* 1011A8 80057C98 2401FFFF */   addiu     $at, $zero, -1
/* 1011AC 80057C9C 14610004 */  bne        $v1, $at, .L80057CB0
/* 1011B0 80057CA0 3C018000 */   lui       $at, 0x8000
/* 1011B4 80057CA4 14410002 */  bne        $v0, $at, .L80057CB0
/* 1011B8 80057CA8 00000000 */   nop
/* 1011BC 80057CAC 0006000D */  break      6
.L80057CB0:
/* 1011C0 80057CB0 00001012 */   mflo      $v0
/* 1011C4 80057CB4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1011C8 80057CB8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1011CC 80057CBC 00021040 */  sll        $v0, $v0, 1
/* 1011D0 80057CC0 0043102A */  slt        $v0, $v0, $v1
/* 1011D4 80057CC4 10400013 */  beqz       $v0, .L80057D14
/* 1011D8 80057CC8 00000000 */   nop
/* 1011DC 80057CCC 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 1011E0 80057CD0 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* 1011E4 80057CD4 3C014370 */  lui        $at, 0x4370
/* 1011E8 80057CD8 44810000 */  mtc1       $at, $f0
/* 1011EC 80057CDC 00000000 */  nop
/* 1011F0 80057CE0 4600103C */  c.lt.s     $f2, $f0
/* 1011F4 80057CE4 00000000 */  nop
/* 1011F8 80057CE8 45000006 */  bc1f       .L80057D04
/* 1011FC 80057CEC 00000000 */   nop
/* 101200 80057CF0 3C014180 */  lui        $at, 0x4180
/* 101204 80057CF4 44810000 */  mtc1       $at, $f0
/* 101208 80057CF8 00000000 */  nop
/* 10120C 80057CFC 08015F43 */  j          .L80057D0C
/* 101210 80057D00 46001000 */   add.s     $f0, $f2, $f0
.L80057D04:
/* 101214 80057D04 3C014378 */  lui        $at, 0x4378
/* 101218 80057D08 44810000 */  mtc1       $at, $f0
.L80057D0C:
/* 10121C 80057D0C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 101220 80057D10 E420C1EC */  swc1       $f0, %lo(D_8006C1EC)($at)
.L80057D14:
/* 101224 80057D14 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 101228 80057D18 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 10122C 80057D1C 2402003C */  addiu      $v0, $zero, 0x3c
/* 101230 80057D20 0043001A */  div        $zero, $v0, $v1
/* 101234 80057D24 14600002 */  bnez       $v1, .L80057D30
/* 101238 80057D28 00000000 */   nop
/* 10123C 80057D2C 0007000D */  break      7
.L80057D30:
/* 101240 80057D30 2401FFFF */   addiu     $at, $zero, -1
/* 101244 80057D34 14610004 */  bne        $v1, $at, .L80057D48
/* 101248 80057D38 3C018000 */   lui       $at, 0x8000
/* 10124C 80057D3C 14410002 */  bne        $v0, $at, .L80057D48
/* 101250 80057D40 00000000 */   nop
/* 101254 80057D44 0006000D */  break      6
.L80057D48:
/* 101258 80057D48 00001012 */   mflo      $v0
/* 10125C 80057D4C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 101260 80057D50 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 101264 80057D54 00021040 */  sll        $v0, $v0, 1
/* 101268 80057D58 0043102A */  slt        $v0, $v0, $v1
/* 10126C 80057D5C 10400090 */  beqz       $v0, .L80057FA0
/* 101270 80057D60 00000000 */   nop
/* 101274 80057D64 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 101278 80057D68 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 10127C 80057D6C 00021400 */  sll        $v0, $v0, 0x10
/* 101280 80057D70 00022403 */  sra        $a0, $v0, 0x10
/* 101284 80057D74 000217C2 */  srl        $v0, $v0, 0x1f
/* 101288 80057D78 00822021 */  addu       $a0, $a0, $v0
/* 10128C 80057D7C 00042043 */  sra        $a0, $a0, 1
/* 101290 80057D80 24840025 */  addiu      $a0, $a0, 0x25
/* 101294 80057D84 0C00D8C1 */  jal        func_80036304_DF814
/* 101298 80057D88 3084FFFF */   andi      $a0, $a0, 0xffff
/* 10129C 80057D8C 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 1012A0 80057D90 C422C1FC */  lwc1       $f2, %lo(D_8006C1FC)($at)
/* 1012A4 80057D94 3C014F00 */  lui        $at, 0x4f00
/* 1012A8 80057D98 44810000 */  mtc1       $at, $f0
/* 1012AC 80057D9C 00000000 */  nop
/* 1012B0 80057DA0 4602003E */  c.le.s     $f0, $f2
/* 1012B4 80057DA4 00000000 */  nop
/* 1012B8 80057DA8 00000000 */  nop
/* 1012BC 80057DAC 45010006 */  bc1t       .L80057DC8
/* 1012C0 80057DB0 00408021 */   addu      $s0, $v0, $zero
/* 1012C4 80057DB4 4600100D */  trunc.w.s  $f0, $f2
/* 1012C8 80057DB8 44030000 */  mfc1       $v1, $f0
/* 1012CC 80057DBC 00000000 */  nop
/* 1012D0 80057DC0 08015F78 */  j          .L80057DE0
/* 1012D4 80057DC4 306200FF */   andi      $v0, $v1, 0xff
.L80057DC8:
/* 1012D8 80057DC8 46001001 */  sub.s      $f0, $f2, $f0
/* 1012DC 80057DCC 4600008D */  trunc.w.s  $f2, $f0
/* 1012E0 80057DD0 44031000 */  mfc1       $v1, $f2
/* 1012E4 80057DD4 3C028000 */  lui        $v0, 0x8000
/* 1012E8 80057DD8 00621825 */  or         $v1, $v1, $v0
/* 1012EC 80057DDC 306200FF */  andi       $v0, $v1, 0xff
.L80057DE0:
/* 1012F0 80057DE0 AFA20010 */  sw         $v0, 0x10($sp)
/* 1012F4 80057DE4 8E04000C */  lw         $a0, 0xc($s0)
/* 1012F8 80057DE8 240500FF */  addiu      $a1, $zero, 0xff
/* 1012FC 80057DEC 240600FF */  addiu      $a2, $zero, 0xff
/* 101300 80057DF0 0C028E41 */  jal        func_800A3904
/* 101304 80057DF4 240700FF */   addiu     $a3, $zero, 0xff
/* 101308 80057DF8 8E04000C */  lw         $a0, 0xc($s0)
/* 10130C 80057DFC 0C028A40 */  jal        func_800A2900
/* 101310 80057E00 00000000 */   nop
/* 101314 80057E04 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 101318 80057E08 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 10131C 80057E0C 00021400 */  sll        $v0, $v0, 0x10
/* 101320 80057E10 00022403 */  sra        $a0, $v0, 0x10
/* 101324 80057E14 000217C2 */  srl        $v0, $v0, 0x1f
/* 101328 80057E18 00822021 */  addu       $a0, $a0, $v0
/* 10132C 80057E1C 00042043 */  sra        $a0, $a0, 1
/* 101330 80057E20 2484002B */  addiu      $a0, $a0, 0x2b
/* 101334 80057E24 0C00D8C1 */  jal        func_80036304_DF814
/* 101338 80057E28 3084FFFF */   andi      $a0, $a0, 0xffff
/* 10133C 80057E2C 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 101340 80057E30 C422C1FC */  lwc1       $f2, %lo(D_8006C1FC)($at)
/* 101344 80057E34 3C013F00 */  lui        $at, 0x3f00
/* 101348 80057E38 44810000 */  mtc1       $at, $f0
/* 10134C 80057E3C 00000000 */  nop
/* 101350 80057E40 46001082 */  mul.s      $f2, $f2, $f0
/* 101354 80057E44 3C014F00 */  lui        $at, 0x4f00
/* 101358 80057E48 44810000 */  mtc1       $at, $f0
/* 10135C 80057E4C 00000000 */  nop
/* 101360 80057E50 4602003E */  c.le.s     $f0, $f2
/* 101364 80057E54 00000000 */  nop
/* 101368 80057E58 00000000 */  nop
/* 10136C 80057E5C 45010006 */  bc1t       .L80057E78
/* 101370 80057E60 00408021 */   addu      $s0, $v0, $zero
/* 101374 80057E64 4600100D */  trunc.w.s  $f0, $f2
/* 101378 80057E68 44030000 */  mfc1       $v1, $f0
/* 10137C 80057E6C 00000000 */  nop
/* 101380 80057E70 08015FA4 */  j          .L80057E90
/* 101384 80057E74 306200FF */   andi      $v0, $v1, 0xff
.L80057E78:
/* 101388 80057E78 46001001 */  sub.s      $f0, $f2, $f0
/* 10138C 80057E7C 4600008D */  trunc.w.s  $f2, $f0
/* 101390 80057E80 44031000 */  mfc1       $v1, $f2
/* 101394 80057E84 3C028000 */  lui        $v0, 0x8000
/* 101398 80057E88 00621825 */  or         $v1, $v1, $v0
/* 10139C 80057E8C 306200FF */  andi       $v0, $v1, 0xff
.L80057E90:
/* 1013A0 80057E90 AFA20010 */  sw         $v0, 0x10($sp)
/* 1013A4 80057E94 8E04000C */  lw         $a0, 0xc($s0)
/* 1013A8 80057E98 240500FF */  addiu      $a1, $zero, 0xff
/* 1013AC 80057E9C 240600FF */  addiu      $a2, $zero, 0xff
/* 1013B0 80057EA0 0C028E41 */  jal        func_800A3904
/* 1013B4 80057EA4 240700FF */   addiu     $a3, $zero, 0xff
/* 1013B8 80057EA8 8E04000C */  lw         $a0, 0xc($s0)
/* 1013BC 80057EAC 0C028A40 */  jal        func_800A2900
/* 1013C0 80057EB0 00000000 */   nop
/* 1013C4 80057EB4 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 1013C8 80057EB8 8442C1E4 */  lh         $v0, %lo(D_8006C1E4)($v0)
/* 1013CC 80057EBC 00401821 */  addu       $v1, $v0, $zero
/* 1013D0 80057EC0 2842000A */  slti       $v0, $v0, 0xa
/* 1013D4 80057EC4 10400003 */  beqz       $v0, .L80057ED4
/* 1013D8 80057EC8 24620001 */   addiu     $v0, $v1, 1
/* 1013DC 80057ECC 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 1013E0 80057ED0 A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
.L80057ED4:
/* 1013E4 80057ED4 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 1013E8 80057ED8 8442C1E4 */  lh         $v0, %lo(D_8006C1E4)($v0)
/* 1013EC 80057EDC 28420009 */  slti       $v0, $v0, 9
/* 1013F0 80057EE0 14400006 */  bnez       $v0, .L80057EFC
/* 1013F4 80057EE4 00000000 */   nop
/* 1013F8 80057EE8 0C00D8C1 */  jal        func_80036304_DF814
/* 1013FC 80057EEC 24040017 */   addiu     $a0, $zero, 0x17
/* 101400 80057EF0 8C44000C */  lw         $a0, 0xc($v0)
/* 101404 80057EF4 0C028A40 */  jal        func_800A2900
/* 101408 80057EF8 00000000 */   nop
.L80057EFC:
/* 10140C 80057EFC 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 101410 80057F00 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 101414 80057F04 2402003C */  addiu      $v0, $zero, 0x3c
/* 101418 80057F08 0043001A */  div        $zero, $v0, $v1
/* 10141C 80057F0C 14600002 */  bnez       $v1, .L80057F18
/* 101420 80057F10 00000000 */   nop
/* 101424 80057F14 0007000D */  break      7
.L80057F18:
/* 101428 80057F18 2401FFFF */   addiu     $at, $zero, -1
/* 10142C 80057F1C 14610004 */  bne        $v1, $at, .L80057F30
/* 101430 80057F20 3C018000 */   lui       $at, 0x8000
/* 101434 80057F24 14410002 */  bne        $v0, $at, .L80057F30
/* 101438 80057F28 00000000 */   nop
/* 10143C 80057F2C 0006000D */  break      6
.L80057F30:
/* 101440 80057F30 00001012 */   mflo      $v0
/* 101444 80057F34 3C014020 */  lui        $at, 0x4020
/* 101448 80057F38 44811000 */  mtc1       $at, $f2
/* 10144C 80057F3C 44820000 */  mtc1       $v0, $f0
/* 101450 80057F40 00000000 */  nop
/* 101454 80057F44 46800020 */  cvt.s.w    $f0, $f0
/* 101458 80057F48 46020002 */  mul.s      $f0, $f0, $f2
/* 10145C 80057F4C 3C018007 */  lui        $at, %hi(D_8006C564)
/* 101460 80057F50 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* 101464 80057F54 468010A0 */  cvt.s.w    $f2, $f2
/* 101468 80057F58 4602003C */  c.lt.s     $f0, $f2
/* 10146C 80057F5C 00000000 */  nop
/* 101470 80057F60 4500000F */  bc1f       .L80057FA0
/* 101474 80057F64 00000000 */   nop
/* 101478 80057F68 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 10147C 80057F6C C422C1FC */  lwc1       $f2, %lo(D_8006C1FC)($at)
/* 101480 80057F70 44800000 */  mtc1       $zero, $f0
/* 101484 80057F74 00000000 */  nop
/* 101488 80057F78 4602003C */  c.lt.s     $f0, $f2
/* 10148C 80057F7C 00000000 */  nop
/* 101490 80057F80 45000007 */  bc1f       .L80057FA0
/* 101494 80057F84 00000000 */   nop
/* 101498 80057F88 3C014180 */  lui        $at, 0x4180
/* 10149C 80057F8C 44810000 */  mtc1       $at, $f0
/* 1014A0 80057F90 00000000 */  nop
/* 1014A4 80057F94 46001001 */  sub.s      $f0, $f2, $f0
/* 1014A8 80057F98 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 1014AC 80057F9C E420C1FC */  swc1       $f0, %lo(D_8006C1FC)($at)
.L80057FA0:
/* 1014B0 80057FA0 0C00D8C1 */  jal        func_80036304_DF814
/* 1014B4 80057FA4 240420C9 */   addiu     $a0, $zero, 0x20c9
/* 1014B8 80057FA8 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 1014BC 80057FAC C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* 1014C0 80057FB0 3C014F00 */  lui        $at, 0x4f00
/* 1014C4 80057FB4 44810000 */  mtc1       $at, $f0
/* 1014C8 80057FB8 00000000 */  nop
/* 1014CC 80057FBC 4602003E */  c.le.s     $f0, $f2
/* 1014D0 80057FC0 00000000 */  nop
/* 1014D4 80057FC4 00000000 */  nop
/* 1014D8 80057FC8 45010006 */  bc1t       .L80057FE4
/* 1014DC 80057FCC 00408021 */   addu      $s0, $v0, $zero
/* 1014E0 80057FD0 4600100D */  trunc.w.s  $f0, $f2
/* 1014E4 80057FD4 44030000 */  mfc1       $v1, $f0
/* 1014E8 80057FD8 00000000 */  nop
/* 1014EC 80057FDC 08015FFF */  j          .L80057FFC
/* 1014F0 80057FE0 306200FF */   andi      $v0, $v1, 0xff
.L80057FE4:
/* 1014F4 80057FE4 46001001 */  sub.s      $f0, $f2, $f0
/* 1014F8 80057FE8 4600008D */  trunc.w.s  $f2, $f0
/* 1014FC 80057FEC 44031000 */  mfc1       $v1, $f2
/* 101500 80057FF0 3C028000 */  lui        $v0, 0x8000
/* 101504 80057FF4 00621825 */  or         $v1, $v1, $v0
/* 101508 80057FF8 306200FF */  andi       $v0, $v1, 0xff
.L80057FFC:
/* 10150C 80057FFC AFA20010 */  sw         $v0, 0x10($sp)
/* 101510 80058000 8E04000C */  lw         $a0, 0xc($s0)
/* 101514 80058004 240500FF */  addiu      $a1, $zero, 0xff
/* 101518 80058008 240600FF */  addiu      $a2, $zero, 0xff
/* 10151C 8005800C 0C028E41 */  jal        func_800A3904
/* 101520 80058010 240700FF */   addiu     $a3, $zero, 0xff
/* 101524 80058014 8E04000C */  lw         $a0, 0xc($s0)
/* 101528 80058018 0C028A40 */  jal        func_800A2900
/* 10152C 8005801C 00000000 */   nop
/* 101530 80058020 0C00D8C1 */  jal        func_80036304_DF814
/* 101534 80058024 240420D3 */   addiu     $a0, $zero, 0x20d3
/* 101538 80058028 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 10153C 8005802C C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* 101540 80058030 3C013F4C */  lui        $at, 0x3f4c
/* 101544 80058034 3421CCCD */  ori        $at, $at, 0xcccd
/* 101548 80058038 44810000 */  mtc1       $at, $f0
/* 10154C 8005803C 00000000 */  nop
/* 101550 80058040 46001082 */  mul.s      $f2, $f2, $f0
/* 101554 80058044 3C014F00 */  lui        $at, 0x4f00
/* 101558 80058048 44810000 */  mtc1       $at, $f0
/* 10155C 8005804C 00000000 */  nop
/* 101560 80058050 4602003E */  c.le.s     $f0, $f2
/* 101564 80058054 00000000 */  nop
/* 101568 80058058 00000000 */  nop
/* 10156C 8005805C 45010006 */  bc1t       .L80058078
/* 101570 80058060 00408021 */   addu      $s0, $v0, $zero
/* 101574 80058064 4600100D */  trunc.w.s  $f0, $f2
/* 101578 80058068 44030000 */  mfc1       $v1, $f0
/* 10157C 8005806C 00000000 */  nop
/* 101580 80058070 08016024 */  j          .L80058090
/* 101584 80058074 306200FF */   andi      $v0, $v1, 0xff
.L80058078:
/* 101588 80058078 46001001 */  sub.s      $f0, $f2, $f0
/* 10158C 8005807C 4600008D */  trunc.w.s  $f2, $f0
/* 101590 80058080 44031000 */  mfc1       $v1, $f2
/* 101594 80058084 3C028000 */  lui        $v0, 0x8000
/* 101598 80058088 00621825 */  or         $v1, $v1, $v0
/* 10159C 8005808C 306200FF */  andi       $v0, $v1, 0xff
.L80058090:
/* 1015A0 80058090 AFA20010 */  sw         $v0, 0x10($sp)
/* 1015A4 80058094 8E04000C */  lw         $a0, 0xc($s0)
/* 1015A8 80058098 240500FF */  addiu      $a1, $zero, 0xff
/* 1015AC 8005809C 240600FF */  addiu      $a2, $zero, 0xff
/* 1015B0 800580A0 0C028E41 */  jal        func_800A3904
/* 1015B4 800580A4 240700FF */   addiu     $a3, $zero, 0xff
/* 1015B8 800580A8 8E04000C */  lw         $a0, 0xc($s0)
/* 1015BC 800580AC 0C028A40 */  jal        func_800A2900
/* 1015C0 800580B0 00000000 */   nop
/* 1015C4 800580B4 0C00D8C1 */  jal        func_80036304_DF814
/* 1015C8 800580B8 240420CA */   addiu     $a0, $zero, 0x20ca
/* 1015CC 800580BC 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 1015D0 800580C0 C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 1015D4 800580C4 3C014F00 */  lui        $at, 0x4f00
/* 1015D8 800580C8 44810000 */  mtc1       $at, $f0
/* 1015DC 800580CC 00000000 */  nop
/* 1015E0 800580D0 4602003E */  c.le.s     $f0, $f2
/* 1015E4 800580D4 00000000 */  nop
/* 1015E8 800580D8 00000000 */  nop
/* 1015EC 800580DC 45010006 */  bc1t       .L800580F8
/* 1015F0 800580E0 00408021 */   addu      $s0, $v0, $zero
/* 1015F4 800580E4 4600100D */  trunc.w.s  $f0, $f2
/* 1015F8 800580E8 44030000 */  mfc1       $v1, $f0
/* 1015FC 800580EC 00000000 */  nop
/* 101600 800580F0 08016044 */  j          .L80058110
/* 101604 800580F4 306200FF */   andi      $v0, $v1, 0xff
.L800580F8:
/* 101608 800580F8 46001001 */  sub.s      $f0, $f2, $f0
/* 10160C 800580FC 4600008D */  trunc.w.s  $f2, $f0
/* 101610 80058100 44031000 */  mfc1       $v1, $f2
/* 101614 80058104 3C028000 */  lui        $v0, 0x8000
/* 101618 80058108 00621825 */  or         $v1, $v1, $v0
/* 10161C 8005810C 306200FF */  andi       $v0, $v1, 0xff
.L80058110:
/* 101620 80058110 AFA20010 */  sw         $v0, 0x10($sp)
/* 101624 80058114 8E04000C */  lw         $a0, 0xc($s0)
/* 101628 80058118 240500FF */  addiu      $a1, $zero, 0xff
/* 10162C 8005811C 240600FF */  addiu      $a2, $zero, 0xff
/* 101630 80058120 0C028E41 */  jal        func_800A3904
/* 101634 80058124 240700FF */   addiu     $a3, $zero, 0xff
/* 101638 80058128 8E04000C */  lw         $a0, 0xc($s0)
/* 10163C 8005812C 0C028A40 */  jal        func_800A2900
/* 101640 80058130 00000000 */   nop
/* 101644 80058134 0C00D8C1 */  jal        func_80036304_DF814
/* 101648 80058138 240420D4 */   addiu     $a0, $zero, 0x20d4
/* 10164C 8005813C 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 101650 80058140 C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 101654 80058144 3C013F4C */  lui        $at, 0x3f4c
/* 101658 80058148 3421CCCD */  ori        $at, $at, 0xcccd
/* 10165C 8005814C 44810000 */  mtc1       $at, $f0
/* 101660 80058150 00000000 */  nop
/* 101664 80058154 46001082 */  mul.s      $f2, $f2, $f0
/* 101668 80058158 3C014F00 */  lui        $at, 0x4f00
/* 10166C 8005815C 44810000 */  mtc1       $at, $f0
/* 101670 80058160 00000000 */  nop
/* 101674 80058164 4602003E */  c.le.s     $f0, $f2
/* 101678 80058168 00000000 */  nop
/* 10167C 8005816C 00000000 */  nop
/* 101680 80058170 45010006 */  bc1t       .L8005818C
/* 101684 80058174 00408021 */   addu      $s0, $v0, $zero
/* 101688 80058178 4600100D */  trunc.w.s  $f0, $f2
/* 10168C 8005817C 44030000 */  mfc1       $v1, $f0
/* 101690 80058180 00000000 */  nop
/* 101694 80058184 08016069 */  j          .L800581A4
/* 101698 80058188 306200FF */   andi      $v0, $v1, 0xff
.L8005818C:
/* 10169C 8005818C 46001001 */  sub.s      $f0, $f2, $f0
/* 1016A0 80058190 4600008D */  trunc.w.s  $f2, $f0
/* 1016A4 80058194 44031000 */  mfc1       $v1, $f2
/* 1016A8 80058198 3C028000 */  lui        $v0, 0x8000
/* 1016AC 8005819C 00621825 */  or         $v1, $v1, $v0
/* 1016B0 800581A0 306200FF */  andi       $v0, $v1, 0xff
.L800581A4:
/* 1016B4 800581A4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1016B8 800581A8 8E04000C */  lw         $a0, 0xc($s0)
/* 1016BC 800581AC 240500FF */  addiu      $a1, $zero, 0xff
/* 1016C0 800581B0 240600FF */  addiu      $a2, $zero, 0xff
/* 1016C4 800581B4 0C028E41 */  jal        func_800A3904
/* 1016C8 800581B8 240700FF */   addiu     $a3, $zero, 0xff
/* 1016CC 800581BC 8E04000C */  lw         $a0, 0xc($s0)
/* 1016D0 800581C0 0C028A40 */  jal        func_800A2900
/* 1016D4 800581C4 00000000 */   nop
/* 1016D8 800581C8 0C00D8C1 */  jal        func_80036304_DF814
/* 1016DC 800581CC 240420CB */   addiu     $a0, $zero, 0x20cb
/* 1016E0 800581D0 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 1016E4 800581D4 C422C1F8 */  lwc1       $f2, %lo(D_8006C1F8)($at)
/* 1016E8 800581D8 3C014F00 */  lui        $at, 0x4f00
/* 1016EC 800581DC 44810000 */  mtc1       $at, $f0
/* 1016F0 800581E0 00000000 */  nop
/* 1016F4 800581E4 4602003E */  c.le.s     $f0, $f2
/* 1016F8 800581E8 00000000 */  nop
/* 1016FC 800581EC 00000000 */  nop
/* 101700 800581F0 45010006 */  bc1t       .L8005820C
/* 101704 800581F4 00408021 */   addu      $s0, $v0, $zero
/* 101708 800581F8 4600100D */  trunc.w.s  $f0, $f2
/* 10170C 800581FC 44030000 */  mfc1       $v1, $f0
/* 101710 80058200 00000000 */  nop
/* 101714 80058204 08016089 */  j          .L80058224
/* 101718 80058208 306200FF */   andi      $v0, $v1, 0xff
.L8005820C:
/* 10171C 8005820C 46001001 */  sub.s      $f0, $f2, $f0
/* 101720 80058210 4600008D */  trunc.w.s  $f2, $f0
/* 101724 80058214 44031000 */  mfc1       $v1, $f2
/* 101728 80058218 3C028000 */  lui        $v0, 0x8000
/* 10172C 8005821C 00621825 */  or         $v1, $v1, $v0
/* 101730 80058220 306200FF */  andi       $v0, $v1, 0xff
.L80058224:
/* 101734 80058224 AFA20010 */  sw         $v0, 0x10($sp)
/* 101738 80058228 8E04000C */  lw         $a0, 0xc($s0)
/* 10173C 8005822C 240500FF */  addiu      $a1, $zero, 0xff
/* 101740 80058230 240600FF */  addiu      $a2, $zero, 0xff
/* 101744 80058234 0C028E41 */  jal        func_800A3904
/* 101748 80058238 240700FF */   addiu     $a3, $zero, 0xff
/* 10174C 8005823C 8E04000C */  lw         $a0, 0xc($s0)
/* 101750 80058240 0C028A40 */  jal        func_800A2900
/* 101754 80058244 00000000 */   nop
/* 101758 80058248 0C00D8C1 */  jal        func_80036304_DF814
/* 10175C 8005824C 240420D5 */   addiu     $a0, $zero, 0x20d5
/* 101760 80058250 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 101764 80058254 C422C1F8 */  lwc1       $f2, %lo(D_8006C1F8)($at)
/* 101768 80058258 3C013F4C */  lui        $at, 0x3f4c
/* 10176C 8005825C 3421CCCD */  ori        $at, $at, 0xcccd
/* 101770 80058260 44810000 */  mtc1       $at, $f0
/* 101774 80058264 00000000 */  nop
/* 101778 80058268 46001082 */  mul.s      $f2, $f2, $f0
/* 10177C 8005826C 3C014F00 */  lui        $at, 0x4f00
/* 101780 80058270 44810000 */  mtc1       $at, $f0
/* 101784 80058274 00000000 */  nop
/* 101788 80058278 4602003E */  c.le.s     $f0, $f2
/* 10178C 8005827C 00000000 */  nop
/* 101790 80058280 00000000 */  nop
/* 101794 80058284 45010006 */  bc1t       .L800582A0
/* 101798 80058288 00408021 */   addu      $s0, $v0, $zero
/* 10179C 8005828C 4600100D */  trunc.w.s  $f0, $f2
/* 1017A0 80058290 44030000 */  mfc1       $v1, $f0
/* 1017A4 80058294 00000000 */  nop
/* 1017A8 80058298 080160AE */  j          .L800582B8
/* 1017AC 8005829C 306200FF */   andi      $v0, $v1, 0xff
.L800582A0:
/* 1017B0 800582A0 46001001 */  sub.s      $f0, $f2, $f0
/* 1017B4 800582A4 4600008D */  trunc.w.s  $f2, $f0
/* 1017B8 800582A8 44031000 */  mfc1       $v1, $f2
/* 1017BC 800582AC 3C028000 */  lui        $v0, 0x8000
/* 1017C0 800582B0 00621825 */  or         $v1, $v1, $v0
/* 1017C4 800582B4 306200FF */  andi       $v0, $v1, 0xff
.L800582B8:
/* 1017C8 800582B8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1017CC 800582BC 8E04000C */  lw         $a0, 0xc($s0)
/* 1017D0 800582C0 240500FF */  addiu      $a1, $zero, 0xff
/* 1017D4 800582C4 240600FF */  addiu      $a2, $zero, 0xff
/* 1017D8 800582C8 0C028E41 */  jal        func_800A3904
/* 1017DC 800582CC 240700FF */   addiu     $a3, $zero, 0xff
/* 1017E0 800582D0 8E04000C */  lw         $a0, 0xc($s0)
/* 1017E4 800582D4 0C028A40 */  jal        func_800A2900
/* 1017E8 800582D8 00000000 */   nop
/* 1017EC 800582DC 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 1017F0 800582E0 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 1017F4 800582E4 2403003C */  addiu      $v1, $zero, 0x3c
/* 1017F8 800582E8 0062001A */  div        $zero, $v1, $v0
/* 1017FC 800582EC 14400002 */  bnez       $v0, .L800582F8
/* 101800 800582F0 00000000 */   nop
/* 101804 800582F4 0007000D */  break      7
.L800582F8:
/* 101808 800582F8 2401FFFF */   addiu     $at, $zero, -1
/* 10180C 800582FC 14410004 */  bne        $v0, $at, .L80058310
/* 101810 80058300 3C018000 */   lui       $at, 0x8000
/* 101814 80058304 14610002 */  bne        $v1, $at, .L80058310
/* 101818 80058308 00000000 */   nop
/* 10181C 8005830C 0006000D */  break      6
.L80058310:
/* 101820 80058310 00001812 */   mflo      $v1
/* 101824 80058314 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 101828 80058318 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 10182C 8005831C 00031040 */  sll        $v0, $v1, 1
/* 101830 80058320 00431021 */  addu       $v0, $v0, $v1
/* 101834 80058324 0044102A */  slt        $v0, $v0, $a0
/* 101838 80058328 10400014 */  beqz       $v0, .L8005837C
/* 10183C 8005832C 00000000 */   nop
/* 101840 80058330 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 101844 80058334 C424C1F0 */  lwc1       $f4, %lo(D_8006C1F0)($at)
/* 101848 80058338 44800000 */  mtc1       $zero, $f0
/* 10184C 8005833C 00000000 */  nop
/* 101850 80058340 4604003C */  c.lt.s     $f0, $f4
/* 101854 80058344 00000000 */  nop
/* 101858 80058348 4500000C */  bc1f       .L8005837C
/* 10185C 8005834C 00000000 */   nop
/* 101860 80058350 3C014100 */  lui        $at, 0x4100
/* 101864 80058354 44810000 */  mtc1       $at, $f0
/* 101868 80058358 00000000 */  nop
/* 10186C 8005835C 46002101 */  sub.s      $f4, $f4, $f0
/* 101870 80058360 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 101874 80058364 C422C1F4 */  lwc1       $f2, %lo(D_8006C1F4)($at)
/* 101878 80058368 46001080 */  add.s      $f2, $f2, $f0
/* 10187C 8005836C 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 101880 80058370 E424C1F0 */  swc1       $f4, %lo(D_8006C1F0)($at)
/* 101884 80058374 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 101888 80058378 E422C1F4 */  swc1       $f2, %lo(D_8006C1F4)($at)
.L8005837C:
/* 10188C 8005837C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 101890 80058380 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 101894 80058384 2403003C */  addiu      $v1, $zero, 0x3c
/* 101898 80058388 0062001A */  div        $zero, $v1, $v0
/* 10189C 8005838C 14400002 */  bnez       $v0, .L80058398
/* 1018A0 80058390 00000000 */   nop
/* 1018A4 80058394 0007000D */  break      7
.L80058398:
/* 1018A8 80058398 2401FFFF */   addiu     $at, $zero, -1
/* 1018AC 8005839C 14410004 */  bne        $v0, $at, .L800583B0
/* 1018B0 800583A0 3C018000 */   lui       $at, 0x8000
/* 1018B4 800583A4 14610002 */  bne        $v1, $at, .L800583B0
/* 1018B8 800583A8 00000000 */   nop
/* 1018BC 800583AC 0006000D */  break      6
.L800583B0:
/* 1018C0 800583B0 00001812 */   mflo      $v1
/* 1018C4 800583B4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 1018C8 800583B8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 1018CC 800583BC 00031040 */  sll        $v0, $v1, 1
/* 1018D0 800583C0 00431021 */  addu       $v0, $v0, $v1
/* 1018D4 800583C4 00021040 */  sll        $v0, $v0, 1
/* 1018D8 800583C8 0044102A */  slt        $v0, $v0, $a0
/* 1018DC 800583CC 10400014 */  beqz       $v0, .L80058420
/* 1018E0 800583D0 00000000 */   nop
/* 1018E4 800583D4 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 1018E8 800583D8 C424C1F4 */  lwc1       $f4, %lo(D_8006C1F4)($at)
/* 1018EC 800583DC 44800000 */  mtc1       $zero, $f0
/* 1018F0 800583E0 00000000 */  nop
/* 1018F4 800583E4 4604003C */  c.lt.s     $f0, $f4
/* 1018F8 800583E8 00000000 */  nop
/* 1018FC 800583EC 4500000C */  bc1f       .L80058420
/* 101900 800583F0 00000000 */   nop
/* 101904 800583F4 3C014100 */  lui        $at, 0x4100
/* 101908 800583F8 44810000 */  mtc1       $at, $f0
/* 10190C 800583FC 00000000 */  nop
/* 101910 80058400 46002101 */  sub.s      $f4, $f4, $f0
/* 101914 80058404 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 101918 80058408 C422C1F8 */  lwc1       $f2, %lo(D_8006C1F8)($at)
/* 10191C 8005840C 46001080 */  add.s      $f2, $f2, $f0
/* 101920 80058410 3C018007 */  lui        $at, %hi(D_8006C1F4)
/* 101924 80058414 E424C1F4 */  swc1       $f4, %lo(D_8006C1F4)($at)
/* 101928 80058418 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 10192C 8005841C E422C1F8 */  swc1       $f2, %lo(D_8006C1F8)($at)
.L80058420:
/* 101930 80058420 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 101934 80058424 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 101938 80058428 2410003C */  addiu      $s0, $zero, 0x3c
/* 10193C 8005842C 0202001A */  div        $zero, $s0, $v0
/* 101940 80058430 14400002 */  bnez       $v0, .L8005843C
/* 101944 80058434 00000000 */   nop
/* 101948 80058438 0007000D */  break      7
.L8005843C:
/* 10194C 8005843C 2401FFFF */   addiu     $at, $zero, -1
/* 101950 80058440 14410004 */  bne        $v0, $at, .L80058454
/* 101954 80058444 3C018000 */   lui       $at, 0x8000
/* 101958 80058448 16010002 */  bne        $s0, $at, .L80058454
/* 10195C 8005844C 00000000 */   nop
/* 101960 80058450 0006000D */  break      6
.L80058454:
/* 101964 80058454 00003012 */   mflo      $a2
/* 101968 80058458 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 10196C 8005845C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 101970 80058460 000610C0 */  sll        $v0, $a2, 3
/* 101974 80058464 00461021 */  addu       $v0, $v0, $a2
/* 101978 80058468 14620006 */  bne        $v1, $v0, .L80058484
/* 10197C 8005846C 2404FFFE */   addiu     $a0, $zero, -2
/* 101980 80058470 AFA00010 */  sw         $zero, 0x10($sp)
/* 101984 80058474 2405FFFF */  addiu      $a1, $zero, -1
/* 101988 80058478 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 10198C 8005847C 0C026C9A */  jal        func_8009B268
/* 101990 80058480 00003821 */   addu      $a3, $zero, $zero
.L80058484:
/* 101994 80058484 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 101998 80058488 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 10199C 8005848C 0202001A */  div        $zero, $s0, $v0
/* 1019A0 80058490 14400002 */  bnez       $v0, .L8005849C
/* 1019A4 80058494 00000000 */   nop
/* 1019A8 80058498 0007000D */  break      7
.L8005849C:
/* 1019AC 8005849C 2401FFFF */   addiu     $at, $zero, -1
/* 1019B0 800584A0 14410004 */  bne        $v0, $at, .L800584B4
/* 1019B4 800584A4 3C018000 */   lui       $at, 0x8000
/* 1019B8 800584A8 16010002 */  bne        $s0, $at, .L800584B4
/* 1019BC 800584AC 00000000 */   nop
/* 1019C0 800584B0 0006000D */  break      6
.L800584B4:
/* 1019C4 800584B4 00001012 */   mflo      $v0
/* 1019C8 800584B8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 1019CC 800584BC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 1019D0 800584C0 00021880 */  sll        $v1, $v0, 2
/* 1019D4 800584C4 00621821 */  addu       $v1, $v1, $v0
/* 1019D8 800584C8 00031840 */  sll        $v1, $v1, 1
/* 1019DC 800584CC 148308E2 */  bne        $a0, $v1, .L8005A858
/* 1019E0 800584D0 00001021 */   addu      $v0, $zero, $zero
/* 1019E4 800584D4 24020010 */  addiu      $v0, $zero, 0x10
/* 1019E8 800584D8 08016A15 */  j          .L8005A854
/* 1019EC 800584DC A6C2001C */   sh        $v0, 0x1c($s6)
.L800584E0:
/* 1019F0 800584E0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1019F4 800584E4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 1019F8 800584E8 14400003 */  bnez       $v0, .L800584F8
/* 1019FC 800584EC 00000000 */   nop
/* 101A00 800584F0 0C01439A */  jal        func_80050E68_FA378
/* 101A04 800584F4 00000000 */   nop
.L800584F8:
/* 101A08 800584F8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 101A0C 800584FC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 101A10 80058500 24020002 */  addiu      $v0, $zero, 2
/* 101A14 80058504 146208D4 */  bne        $v1, $v0, .L8005A858
/* 101A18 80058508 00001021 */   addu      $v0, $zero, $zero
/* 101A1C 8005850C 0C02A5AF */  jal        func_800A96BC
/* 101A20 80058510 24040001 */   addiu     $a0, $zero, 1
/* 101A24 80058514 24050010 */  addiu      $a1, $zero, 0x10
/* 101A28 80058518 3C014240 */  lui        $at, 0x4240
/* 101A2C 8005851C 44810000 */  mtc1       $at, $f0
/* 101A30 80058520 3C014378 */  lui        $at, 0x4378
/* 101A34 80058524 44811000 */  mtc1       $at, $f2
/* 101A38 80058528 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 101A3C 8005852C 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 101A40 80058530 24060030 */  addiu      $a2, $zero, 0x30
/* 101A44 80058534 240200BF */  addiu      $v0, $zero, 0xbf
/* 101A48 80058538 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 101A4C 8005853C AC20C1F0 */  sw         $zero, %lo(D_8006C1F0)($at)
/* 101A50 80058540 AFA20010 */  sw         $v0, 0x10($sp)
/* 101A54 80058544 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 101A58 80058548 E420C1C4 */  swc1       $f0, %lo(D_8006C1C4)($at)
/* 101A5C 8005854C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 101A60 80058550 E422C1EC */  swc1       $f2, %lo(D_8006C1EC)($at)
/* 101A64 80058554 0C02939C */  jal        func_800A4E70
/* 101A68 80058558 2407012F */   addiu     $a3, $zero, 0x12f
/* 101A6C 8005855C 2404000B */  addiu      $a0, $zero, 0xb
/* 101A70 80058560 2405FFFF */  addiu      $a1, $zero, -1
/* 101A74 80058564 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* 101A78 80058568 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* 101A7C 8005856C 24060001 */  addiu      $a2, $zero, 1
/* 101A80 80058570 24020011 */  addiu      $v0, $zero, 0x11
/* 101A84 80058574 A6C2001C */  sh         $v0, 0x1c($s6)
/* 101A88 80058578 24020001 */  addiu      $v0, $zero, 1
/* 101A8C 8005857C 0C026C9A */  jal        func_8009B268
/* 101A90 80058580 AFA20010 */   sw        $v0, 0x10($sp)
/* 101A94 80058584 08016A16 */  j          .L8005A858
/* 101A98 80058588 00001021 */   addu      $v0, $zero, $zero
.L8005858C:
/* 101A9C 8005858C 0C00D8C1 */  jal        func_80036304_DF814
/* 101AA0 80058590 24040036 */   addiu     $a0, $zero, 0x36
/* 101AA4 80058594 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 101AA8 80058598 C420C1C4 */  lwc1       $f0, %lo(D_8006C1C4)($at)
/* 101AAC 8005859C 3C014080 */  lui        $at, 0x4080
/* 101AB0 800585A0 4481A000 */  mtc1       $at, $f20
/* 101AB4 800585A4 00000000 */  nop
/* 101AB8 800585A8 46140002 */  mul.s      $f0, $f0, $f20
/* 101ABC 800585AC 00408021 */  addu       $s0, $v0, $zero
/* 101AC0 800585B0 8E04000C */  lw         $a0, 0xc($s0)
/* 101AC4 800585B4 24050280 */  addiu      $a1, $zero, 0x280
/* 101AC8 800585B8 4600008D */  trunc.w.s  $f2, $f0
/* 101ACC 800585BC 44061000 */  mfc1       $a2, $f2
/* 101AD0 800585C0 00000000 */  nop
/* 101AD4 800585C4 00063400 */  sll        $a2, $a2, 0x10
/* 101AD8 800585C8 0C028D89 */  jal        func_800A3624
/* 101ADC 800585CC 00063403 */   sra       $a2, $a2, 0x10
/* 101AE0 800585D0 8E04000C */  lw         $a0, 0xc($s0)
/* 101AE4 800585D4 0C028A40 */  jal        func_800A2900
/* 101AE8 800585D8 00000000 */   nop
/* 101AEC 800585DC 0C00D8C1 */  jal        func_80036304_DF814
/* 101AF0 800585E0 24040034 */   addiu     $a0, $zero, 0x34
/* 101AF4 800585E4 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 101AF8 800585E8 C422C1C4 */  lwc1       $f2, %lo(D_8006C1C4)($at)
/* 101AFC 800585EC 3C014180 */  lui        $at, 0x4180
/* 101B00 800585F0 44810000 */  mtc1       $at, $f0
/* 101B04 800585F4 00000000 */  nop
/* 101B08 800585F8 46001080 */  add.s      $f2, $f2, $f0
/* 101B0C 800585FC 46141082 */  mul.s      $f2, $f2, $f20
/* 101B10 80058600 00408021 */  addu       $s0, $v0, $zero
/* 101B14 80058604 8E04000C */  lw         $a0, 0xc($s0)
/* 101B18 80058608 24050280 */  addiu      $a1, $zero, 0x280
/* 101B1C 8005860C 4600100D */  trunc.w.s  $f0, $f2
/* 101B20 80058610 44060000 */  mfc1       $a2, $f0
/* 101B24 80058614 00000000 */  nop
/* 101B28 80058618 00063400 */  sll        $a2, $a2, 0x10
/* 101B2C 8005861C 0C028D89 */  jal        func_800A3624
/* 101B30 80058620 00063403 */   sra       $a2, $a2, 0x10
/* 101B34 80058624 8E04000C */  lw         $a0, 0xc($s0)
/* 101B38 80058628 0C028A40 */  jal        func_800A2900
/* 101B3C 8005862C 00000000 */   nop
/* 101B40 80058630 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 101B44 80058634 C420C1C4 */  lwc1       $f0, %lo(D_8006C1C4)($at)
/* 101B48 80058638 3C013E36 */  lui        $at, 0x3e36
/* 101B4C 8005863C 34210957 */  ori        $at, $at, 0x957
/* 101B50 80058640 44811000 */  mtc1       $at, $f2
/* 101B54 80058644 00000000 */  nop
/* 101B58 80058648 46020001 */  sub.s      $f0, $f0, $f2
/* 101B5C 8005864C 3C018007 */  lui        $at, %hi(D_8006C1C4)
/* 101B60 80058650 E420C1C4 */  swc1       $f0, %lo(D_8006C1C4)($at)
/* 101B64 80058654 0C00D8C1 */  jal        func_80036304_DF814
/* 101B68 80058658 240420C9 */   addiu     $a0, $zero, 0x20c9
/* 101B6C 8005865C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 101B70 80058660 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* 101B74 80058664 3C014F00 */  lui        $at, 0x4f00
/* 101B78 80058668 44810000 */  mtc1       $at, $f0
/* 101B7C 8005866C 00000000 */  nop
/* 101B80 80058670 4602003E */  c.le.s     $f0, $f2
/* 101B84 80058674 00000000 */  nop
/* 101B88 80058678 00000000 */  nop
/* 101B8C 8005867C 45010006 */  bc1t       .L80058698
/* 101B90 80058680 00408021 */   addu      $s0, $v0, $zero
/* 101B94 80058684 4600100D */  trunc.w.s  $f0, $f2
/* 101B98 80058688 44030000 */  mfc1       $v1, $f0
/* 101B9C 8005868C 00000000 */  nop
/* 101BA0 80058690 080161AC */  j          .L800586B0
/* 101BA4 80058694 306200FF */   andi      $v0, $v1, 0xff
.L80058698:
/* 101BA8 80058698 46001001 */  sub.s      $f0, $f2, $f0
/* 101BAC 8005869C 4600008D */  trunc.w.s  $f2, $f0
/* 101BB0 800586A0 44031000 */  mfc1       $v1, $f2
/* 101BB4 800586A4 3C028000 */  lui        $v0, 0x8000
/* 101BB8 800586A8 00621825 */  or         $v1, $v1, $v0
/* 101BBC 800586AC 306200FF */  andi       $v0, $v1, 0xff
.L800586B0:
/* 101BC0 800586B0 AFA20010 */  sw         $v0, 0x10($sp)
/* 101BC4 800586B4 8E04000C */  lw         $a0, 0xc($s0)
/* 101BC8 800586B8 240500FF */  addiu      $a1, $zero, 0xff
/* 101BCC 800586BC 240600FF */  addiu      $a2, $zero, 0xff
/* 101BD0 800586C0 0C028E41 */  jal        func_800A3904
/* 101BD4 800586C4 240700FF */   addiu     $a3, $zero, 0xff
/* 101BD8 800586C8 8E04000C */  lw         $a0, 0xc($s0)
/* 101BDC 800586CC 0C028A40 */  jal        func_800A2900
/* 101BE0 800586D0 00000000 */   nop
/* 101BE4 800586D4 0C00D8C1 */  jal        func_80036304_DF814
/* 101BE8 800586D8 240420D3 */   addiu     $a0, $zero, 0x20d3
/* 101BEC 800586DC 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 101BF0 800586E0 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* 101BF4 800586E4 3C013F4C */  lui        $at, 0x3f4c
/* 101BF8 800586E8 3421CCCD */  ori        $at, $at, 0xcccd
/* 101BFC 800586EC 44810000 */  mtc1       $at, $f0
/* 101C00 800586F0 00000000 */  nop
/* 101C04 800586F4 46001082 */  mul.s      $f2, $f2, $f0
/* 101C08 800586F8 3C014F00 */  lui        $at, 0x4f00
/* 101C0C 800586FC 44810000 */  mtc1       $at, $f0
/* 101C10 80058700 00000000 */  nop
/* 101C14 80058704 4602003E */  c.le.s     $f0, $f2
/* 101C18 80058708 00000000 */  nop
/* 101C1C 8005870C 00000000 */  nop
/* 101C20 80058710 45010006 */  bc1t       .L8005872C
/* 101C24 80058714 00408021 */   addu      $s0, $v0, $zero
/* 101C28 80058718 4600100D */  trunc.w.s  $f0, $f2
/* 101C2C 8005871C 44030000 */  mfc1       $v1, $f0
/* 101C30 80058720 00000000 */  nop
/* 101C34 80058724 080161D1 */  j          .L80058744
/* 101C38 80058728 306200FF */   andi      $v0, $v1, 0xff
.L8005872C:
/* 101C3C 8005872C 46001001 */  sub.s      $f0, $f2, $f0
/* 101C40 80058730 4600008D */  trunc.w.s  $f2, $f0
/* 101C44 80058734 44031000 */  mfc1       $v1, $f2
/* 101C48 80058738 3C028000 */  lui        $v0, 0x8000
/* 101C4C 8005873C 00621825 */  or         $v1, $v1, $v0
/* 101C50 80058740 306200FF */  andi       $v0, $v1, 0xff
.L80058744:
/* 101C54 80058744 AFA20010 */  sw         $v0, 0x10($sp)
/* 101C58 80058748 8E04000C */  lw         $a0, 0xc($s0)
/* 101C5C 8005874C 240500FF */  addiu      $a1, $zero, 0xff
/* 101C60 80058750 240600FF */  addiu      $a2, $zero, 0xff
/* 101C64 80058754 0C028E41 */  jal        func_800A3904
/* 101C68 80058758 240700FF */   addiu     $a3, $zero, 0xff
/* 101C6C 8005875C 8E04000C */  lw         $a0, 0xc($s0)
/* 101C70 80058760 0C028A40 */  jal        func_800A2900
/* 101C74 80058764 00000000 */   nop
/* 101C78 80058768 0C00D8C1 */  jal        func_80036304_DF814
/* 101C7C 8005876C 240420CA */   addiu     $a0, $zero, 0x20ca
/* 101C80 80058770 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 101C84 80058774 C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* 101C88 80058778 3C014F00 */  lui        $at, 0x4f00
/* 101C8C 8005877C 44810000 */  mtc1       $at, $f0
/* 101C90 80058780 00000000 */  nop
/* 101C94 80058784 4602003E */  c.le.s     $f0, $f2
/* 101C98 80058788 00000000 */  nop
/* 101C9C 8005878C 00000000 */  nop
/* 101CA0 80058790 45010006 */  bc1t       .L800587AC
/* 101CA4 80058794 00408021 */   addu      $s0, $v0, $zero
/* 101CA8 80058798 4600100D */  trunc.w.s  $f0, $f2
/* 101CAC 8005879C 44030000 */  mfc1       $v1, $f0
/* 101CB0 800587A0 00000000 */  nop
/* 101CB4 800587A4 080161F1 */  j          .L800587C4
/* 101CB8 800587A8 306200FF */   andi      $v0, $v1, 0xff
.L800587AC:
/* 101CBC 800587AC 46001001 */  sub.s      $f0, $f2, $f0
/* 101CC0 800587B0 4600008D */  trunc.w.s  $f2, $f0
/* 101CC4 800587B4 44031000 */  mfc1       $v1, $f2
/* 101CC8 800587B8 3C028000 */  lui        $v0, 0x8000
/* 101CCC 800587BC 00621825 */  or         $v1, $v1, $v0
/* 101CD0 800587C0 306200FF */  andi       $v0, $v1, 0xff
.L800587C4:
/* 101CD4 800587C4 AFA20010 */  sw         $v0, 0x10($sp)
/* 101CD8 800587C8 8E04000C */  lw         $a0, 0xc($s0)
/* 101CDC 800587CC 240500FF */  addiu      $a1, $zero, 0xff
/* 101CE0 800587D0 240600FF */  addiu      $a2, $zero, 0xff
/* 101CE4 800587D4 0C028E41 */  jal        func_800A3904
/* 101CE8 800587D8 240700FF */   addiu     $a3, $zero, 0xff
/* 101CEC 800587DC 8E04000C */  lw         $a0, 0xc($s0)
/* 101CF0 800587E0 0C028A40 */  jal        func_800A2900
/* 101CF4 800587E4 00000000 */   nop
/* 101CF8 800587E8 0C00D8C1 */  jal        func_80036304_DF814
/* 101CFC 800587EC 240420D4 */   addiu     $a0, $zero, 0x20d4
/* 101D00 800587F0 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 101D04 800587F4 C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* 101D08 800587F8 3C013F4C */  lui        $at, 0x3f4c
/* 101D0C 800587FC 3421CCCD */  ori        $at, $at, 0xcccd
/* 101D10 80058800 44810000 */  mtc1       $at, $f0
/* 101D14 80058804 00000000 */  nop
/* 101D18 80058808 46001082 */  mul.s      $f2, $f2, $f0
/* 101D1C 8005880C 3C014F00 */  lui        $at, 0x4f00
/* 101D20 80058810 44810000 */  mtc1       $at, $f0
/* 101D24 80058814 00000000 */  nop
/* 101D28 80058818 4602003E */  c.le.s     $f0, $f2
/* 101D2C 8005881C 00000000 */  nop
/* 101D30 80058820 00000000 */  nop
/* 101D34 80058824 45010006 */  bc1t       .L80058840
/* 101D38 80058828 00408021 */   addu      $s0, $v0, $zero
/* 101D3C 8005882C 4600100D */  trunc.w.s  $f0, $f2
/* 101D40 80058830 44030000 */  mfc1       $v1, $f0
/* 101D44 80058834 00000000 */  nop
/* 101D48 80058838 08016216 */  j          .L80058858
/* 101D4C 8005883C 306200FF */   andi      $v0, $v1, 0xff
.L80058840:
/* 101D50 80058840 46001001 */  sub.s      $f0, $f2, $f0
/* 101D54 80058844 4600008D */  trunc.w.s  $f2, $f0
/* 101D58 80058848 44031000 */  mfc1       $v1, $f2
/* 101D5C 8005884C 3C028000 */  lui        $v0, 0x8000
/* 101D60 80058850 00621825 */  or         $v1, $v1, $v0
/* 101D64 80058854 306200FF */  andi       $v0, $v1, 0xff
.L80058858:
/* 101D68 80058858 AFA20010 */  sw         $v0, 0x10($sp)
/* 101D6C 8005885C 8E04000C */  lw         $a0, 0xc($s0)
/* 101D70 80058860 240500FF */  addiu      $a1, $zero, 0xff
/* 101D74 80058864 240600FF */  addiu      $a2, $zero, 0xff
/* 101D78 80058868 0C028E41 */  jal        func_800A3904
/* 101D7C 8005886C 240700FF */   addiu     $a3, $zero, 0xff
/* 101D80 80058870 8E04000C */  lw         $a0, 0xc($s0)
/* 101D84 80058874 0C028A40 */  jal        func_800A2900
/* 101D88 80058878 00000000 */   nop
/* 101D8C 8005887C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 101D90 80058880 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 101D94 80058884 2403003C */  addiu      $v1, $zero, 0x3c
/* 101D98 80058888 0062001A */  div        $zero, $v1, $v0
/* 101D9C 8005888C 14400002 */  bnez       $v0, .L80058898
/* 101DA0 80058890 00000000 */   nop
/* 101DA4 80058894 0007000D */  break      7
.L80058898:
/* 101DA8 80058898 2401FFFF */   addiu     $at, $zero, -1
/* 101DAC 8005889C 14410004 */  bne        $v0, $at, .L800588B0
/* 101DB0 800588A0 3C018000 */   lui       $at, 0x8000
/* 101DB4 800588A4 14610002 */  bne        $v1, $at, .L800588B0
/* 101DB8 800588A8 00000000 */   nop
/* 101DBC 800588AC 0006000D */  break      6
.L800588B0:
/* 101DC0 800588B0 00001812 */   mflo      $v1
/* 101DC4 800588B4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 101DC8 800588B8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 101DCC 800588BC 00031040 */  sll        $v0, $v1, 1
/* 101DD0 800588C0 00431021 */  addu       $v0, $v0, $v1
/* 101DD4 800588C4 0044102A */  slt        $v0, $v0, $a0
/* 101DD8 800588C8 10400014 */  beqz       $v0, .L8005891C
/* 101DDC 800588CC 00000000 */   nop
/* 101DE0 800588D0 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 101DE4 800588D4 C424C1EC */  lwc1       $f4, %lo(D_8006C1EC)($at)
/* 101DE8 800588D8 44800000 */  mtc1       $zero, $f0
/* 101DEC 800588DC 00000000 */  nop
/* 101DF0 800588E0 4604003C */  c.lt.s     $f0, $f4
/* 101DF4 800588E4 00000000 */  nop
/* 101DF8 800588E8 4500000C */  bc1f       .L8005891C
/* 101DFC 800588EC 00000000 */   nop
/* 101E00 800588F0 3C014100 */  lui        $at, 0x4100
/* 101E04 800588F4 44810000 */  mtc1       $at, $f0
/* 101E08 800588F8 00000000 */  nop
/* 101E0C 800588FC 46002101 */  sub.s      $f4, $f4, $f0
/* 101E10 80058900 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 101E14 80058904 C422C1F0 */  lwc1       $f2, %lo(D_8006C1F0)($at)
/* 101E18 80058908 46001080 */  add.s      $f2, $f2, $f0
/* 101E1C 8005890C 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 101E20 80058910 E424C1EC */  swc1       $f4, %lo(D_8006C1EC)($at)
/* 101E24 80058914 3C018007 */  lui        $at, %hi(D_8006C1F0)
/* 101E28 80058918 E422C1F0 */  swc1       $f2, %lo(D_8006C1F0)($at)
.L8005891C:
/* 101E2C 8005891C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 101E30 80058920 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 101E34 80058924 2403003C */  addiu      $v1, $zero, 0x3c
/* 101E38 80058928 0062001A */  div        $zero, $v1, $v0
/* 101E3C 8005892C 14400002 */  bnez       $v0, .L80058938
/* 101E40 80058930 00000000 */   nop
/* 101E44 80058934 0007000D */  break      7
.L80058938:
/* 101E48 80058938 2401FFFF */   addiu     $at, $zero, -1
/* 101E4C 8005893C 14410004 */  bne        $v0, $at, .L80058950
/* 101E50 80058940 3C018000 */   lui       $at, 0x8000
/* 101E54 80058944 14610002 */  bne        $v1, $at, .L80058950
/* 101E58 80058948 00000000 */   nop
/* 101E5C 8005894C 0006000D */  break      6
.L80058950:
/* 101E60 80058950 00001812 */   mflo      $v1
/* 101E64 80058954 00031040 */  sll        $v0, $v1, 1
/* 101E68 80058958 00431021 */  addu       $v0, $v0, $v1
/* 101E6C 8005895C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 101E70 80058960 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 101E74 80058964 00021040 */  sll        $v0, $v0, 1
/* 101E78 80058968 2442FFFE */  addiu      $v0, $v0, -2
/* 101E7C 8005896C 146207BA */  bne        $v1, $v0, .L8005A858
/* 101E80 80058970 00001021 */   addu      $v0, $zero, $zero
/* 101E84 80058974 24020012 */  addiu      $v0, $zero, 0x12
/* 101E88 80058978 08016A15 */  j          .L8005A854
/* 101E8C 8005897C A6C2001C */   sh        $v0, 0x1c($s6)
.L80058980:
/* 101E90 80058980 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 101E94 80058984 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 101E98 80058988 14400003 */  bnez       $v0, .L80058998
/* 101E9C 8005898C 00000000 */   nop
/* 101EA0 80058990 0C0143E1 */  jal        func_80050F84_FA494
/* 101EA4 80058994 00000000 */   nop
.L80058998:
/* 101EA8 80058998 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 101EAC 8005899C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 101EB0 800589A0 24020002 */  addiu      $v0, $zero, 2
/* 101EB4 800589A4 146207AC */  bne        $v1, $v0, .L8005A858
/* 101EB8 800589A8 00001021 */   addu      $v0, $zero, $zero
/* 101EBC 800589AC 0C02A5AF */  jal        func_800A96BC
/* 101EC0 800589B0 24040001 */   addiu     $a0, $zero, 1
/* 101EC4 800589B4 24050010 */  addiu      $a1, $zero, 0x10
/* 101EC8 800589B8 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 101ECC 800589BC 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 101ED0 800589C0 24060030 */  addiu      $a2, $zero, 0x30
/* 101ED4 800589C4 2407012E */  addiu      $a3, $zero, 0x12e
/* 101ED8 800589C8 240200BF */  addiu      $v0, $zero, 0xbf
/* 101EDC 800589CC 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 101EE0 800589D0 A420C1E4 */  sh         $zero, %lo(D_8006C1E4)($at)
/* 101EE4 800589D4 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* 101EE8 800589D8 A420C1E6 */  sh         $zero, %lo(D_8006C1E6)($at)
/* 101EEC 800589DC 0C02939C */  jal        func_800A4E70
/* 101EF0 800589E0 AFA20010 */   sw        $v0, 0x10($sp)
/* 101EF4 800589E4 24020013 */  addiu      $v0, $zero, 0x13
/* 101EF8 800589E8 08016A15 */  j          .L8005A854
/* 101EFC 800589EC A6C2001C */   sh        $v0, 0x1c($s6)
.L800589F0:
/* 101F00 800589F0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 101F04 800589F4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 101F08 800589F8 0202001A */  div        $zero, $s0, $v0
/* 101F0C 800589FC 14400002 */  bnez       $v0, .L80058A08
/* 101F10 80058A00 00000000 */   nop
/* 101F14 80058A04 0007000D */  break      7
.L80058A08:
/* 101F18 80058A08 2401FFFF */   addiu     $at, $zero, -1
/* 101F1C 80058A0C 14410004 */  bne        $v0, $at, .L80058A20
/* 101F20 80058A10 3C018000 */   lui       $at, 0x8000
/* 101F24 80058A14 16010002 */  bne        $s0, $at, .L80058A20
/* 101F28 80058A18 00000000 */   nop
/* 101F2C 80058A1C 0006000D */  break      6
.L80058A20:
/* 101F30 80058A20 00001012 */   mflo      $v0
/* 101F34 80058A24 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 101F38 80058A28 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 101F3C 80058A2C 14620003 */  bne        $v1, $v0, .L80058A3C
/* 101F40 80058A30 00000000 */   nop
/* 101F44 80058A34 0C026DD5 */  jal        func_8009B754
/* 101F48 80058A38 24040102 */   addiu     $a0, $zero, 0x102
.L80058A3C:
/* 101F4C 80058A3C 0C00D8C1 */  jal        func_80036304_DF814
/* 101F50 80058A40 24040036 */   addiu     $a0, $zero, 0x36
/* 101F54 80058A44 8C44000C */  lw         $a0, 0xc($v0)
/* 101F58 80058A48 0C028A40 */  jal        func_800A2900
/* 101F5C 80058A4C 00000000 */   nop
/* 101F60 80058A50 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 101F64 80058A54 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 101F68 80058A58 0203001A */  div        $zero, $s0, $v1
/* 101F6C 80058A5C 14600002 */  bnez       $v1, .L80058A68
/* 101F70 80058A60 00000000 */   nop
/* 101F74 80058A64 0007000D */  break      7
.L80058A68:
/* 101F78 80058A68 2401FFFF */   addiu     $at, $zero, -1
/* 101F7C 80058A6C 14610004 */  bne        $v1, $at, .L80058A80
/* 101F80 80058A70 3C018000 */   lui       $at, 0x8000
/* 101F84 80058A74 16010002 */  bne        $s0, $at, .L80058A80
/* 101F88 80058A78 00000000 */   nop
/* 101F8C 80058A7C 0006000D */  break      6
.L80058A80:
/* 101F90 80058A80 00001812 */   mflo      $v1
/* 101F94 80058A84 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 101F98 80058A88 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 101F9C 80058A8C 0043102A */  slt        $v0, $v0, $v1
/* 101FA0 80058A90 1440005B */  bnez       $v0, .L80058C00
/* 101FA4 80058A94 3C065555 */   lui       $a2, 0x5555
/* 101FA8 80058A98 3C048007 */  lui        $a0, %hi(D_8006C1E4)
/* 101FAC 80058A9C 9484C1E4 */  lhu        $a0, %lo(D_8006C1E4)($a0)
/* 101FB0 80058AA0 34C65556 */  ori        $a2, $a2, 0x5556
/* 101FB4 80058AA4 00041400 */  sll        $v0, $a0, 0x10
/* 101FB8 80058AA8 00021C03 */  sra        $v1, $v0, 0x10
/* 101FBC 80058AAC 00660018 */  mult       $v1, $a2
/* 101FC0 80058AB0 27A50058 */  addiu      $a1, $sp, 0x58
/* 101FC4 80058AB4 000217C3 */  sra        $v0, $v0, 0x1f
/* 101FC8 80058AB8 00004810 */  mfhi       $t1
/* 101FCC 80058ABC 01221023 */  subu       $v0, $t1, $v0
/* 101FD0 80058AC0 00021400 */  sll        $v0, $v0, 0x10
/* 101FD4 80058AC4 00021403 */  sra        $v0, $v0, 0x10
/* 101FD8 80058AC8 00A21021 */  addu       $v0, $a1, $v0
/* 101FDC 80058ACC 90430000 */  lbu        $v1, ($v0)
/* 101FE0 80058AD0 24020009 */  addiu      $v0, $zero, 9
/* 101FE4 80058AD4 10620003 */  beq        $v1, $v0, .L80058AE4
/* 101FE8 80058AD8 24820001 */   addiu     $v0, $a0, 1
/* 101FEC 80058ADC 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 101FF0 80058AE0 A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
.L80058AE4:
/* 101FF4 80058AE4 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 101FF8 80058AE8 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 101FFC 80058AEC 00021400 */  sll        $v0, $v0, 0x10
/* 102000 80058AF0 00021C03 */  sra        $v1, $v0, 0x10
/* 102004 80058AF4 00660018 */  mult       $v1, $a2
/* 102008 80058AF8 000217C3 */  sra        $v0, $v0, 0x1f
/* 10200C 80058AFC 00004810 */  mfhi       $t1
/* 102010 80058B00 01221023 */  subu       $v0, $t1, $v0
/* 102014 80058B04 00021400 */  sll        $v0, $v0, 0x10
/* 102018 80058B08 00021403 */  sra        $v0, $v0, 0x10
/* 10201C 80058B0C 00A21021 */  addu       $v0, $a1, $v0
/* 102020 80058B10 90440000 */  lbu        $a0, ($v0)
/* 102024 80058B14 308200FF */  andi       $v0, $a0, 0xff
/* 102028 80058B18 0002182B */  sltu       $v1, $zero, $v0
/* 10202C 80058B1C 38420009 */  xori       $v0, $v0, 9
/* 102030 80058B20 0002102B */  sltu       $v0, $zero, $v0
/* 102034 80058B24 00621824 */  and        $v1, $v1, $v0
/* 102038 80058B28 10600006 */  beqz       $v1, .L80058B44
/* 10203C 80058B2C 00000000 */   nop
/* 102040 80058B30 0C00D8C1 */  jal        func_80036304_DF814
/* 102044 80058B34 24840017 */   addiu     $a0, $a0, 0x17
/* 102048 80058B38 8C44000C */  lw         $a0, 0xc($v0)
/* 10204C 80058B3C 0C028A40 */  jal        func_800A2900
/* 102050 80058B40 00000000 */   nop
.L80058B44:
/* 102054 80058B44 3C048007 */  lui        $a0, %hi(D_8006C1E6)
/* 102058 80058B48 9484C1E6 */  lhu        $a0, %lo(D_8006C1E6)($a0)
/* 10205C 80058B4C 248420C9 */  addiu      $a0, $a0, 0x20c9
/* 102060 80058B50 0C00D8C1 */  jal        func_80036304_DF814
/* 102064 80058B54 3084FFFF */   andi      $a0, $a0, 0xffff
/* 102068 80058B58 8C44000C */  lw         $a0, 0xc($v0)
/* 10206C 80058B5C 0C028A40 */  jal        func_800A2900
/* 102070 80058B60 00000000 */   nop
/* 102074 80058B64 3C048007 */  lui        $a0, %hi(D_8006C1E6)
/* 102078 80058B68 9484C1E6 */  lhu        $a0, %lo(D_8006C1E6)($a0)
/* 10207C 80058B6C 248420D3 */  addiu      $a0, $a0, 0x20d3
/* 102080 80058B70 0C00D8C1 */  jal        func_80036304_DF814
/* 102084 80058B74 3084FFFF */   andi      $a0, $a0, 0xffff
/* 102088 80058B78 8C44000C */  lw         $a0, 0xc($v0)
/* 10208C 80058B7C 0C028A40 */  jal        func_800A2900
/* 102090 80058B80 00000000 */   nop
/* 102094 80058B84 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102098 80058B88 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 10209C 80058B8C 0202001A */  div        $zero, $s0, $v0
/* 1020A0 80058B90 14400002 */  bnez       $v0, .L80058B9C
/* 1020A4 80058B94 00000000 */   nop
/* 1020A8 80058B98 0007000D */  break      7
.L80058B9C:
/* 1020AC 80058B9C 2401FFFF */   addiu     $at, $zero, -1
/* 1020B0 80058BA0 14410004 */  bne        $v0, $at, .L80058BB4
/* 1020B4 80058BA4 3C018000 */   lui       $at, 0x8000
/* 1020B8 80058BA8 16010002 */  bne        $s0, $at, .L80058BB4
/* 1020BC 80058BAC 00000000 */   nop
/* 1020C0 80058BB0 0006000D */  break      6
.L80058BB4:
/* 1020C4 80058BB4 00001012 */   mflo      $v0
/* 1020C8 80058BB8 3C014060 */  lui        $at, 0x4060
/* 1020CC 80058BBC 44811000 */  mtc1       $at, $f2
/* 1020D0 80058BC0 44820000 */  mtc1       $v0, $f0
/* 1020D4 80058BC4 00000000 */  nop
/* 1020D8 80058BC8 46800020 */  cvt.s.w    $f0, $f0
/* 1020DC 80058BCC 46020002 */  mul.s      $f0, $f0, $f2
/* 1020E0 80058BD0 3C018007 */  lui        $at, %hi(D_8006C564)
/* 1020E4 80058BD4 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* 1020E8 80058BD8 468010A0 */  cvt.s.w    $f2, $f2
/* 1020EC 80058BDC 46001032 */  c.eq.s     $f2, $f0
/* 1020F0 80058BE0 00000000 */  nop
/* 1020F4 80058BE4 45000006 */  bc1f       .L80058C00
/* 1020F8 80058BE8 00000000 */   nop
/* 1020FC 80058BEC 3C028007 */  lui        $v0, %hi(D_8006C1E6)
/* 102100 80058BF0 9442C1E6 */  lhu        $v0, %lo(D_8006C1E6)($v0)
/* 102104 80058BF4 24420001 */  addiu      $v0, $v0, 1
/* 102108 80058BF8 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* 10210C 80058BFC A422C1E6 */  sh         $v0, %lo(D_8006C1E6)($at)
.L80058C00:
/* 102110 80058C00 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102114 80058C04 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102118 80058C08 2410003C */  addiu      $s0, $zero, 0x3c
/* 10211C 80058C0C 0202001A */  div        $zero, $s0, $v0
/* 102120 80058C10 14400002 */  bnez       $v0, .L80058C1C
/* 102124 80058C14 00000000 */   nop
/* 102128 80058C18 0007000D */  break      7
.L80058C1C:
/* 10212C 80058C1C 2401FFFF */   addiu     $at, $zero, -1
/* 102130 80058C20 14410004 */  bne        $v0, $at, .L80058C34
/* 102134 80058C24 3C018000 */   lui       $at, 0x8000
/* 102138 80058C28 16010002 */  bne        $s0, $at, .L80058C34
/* 10213C 80058C2C 00000000 */   nop
/* 102140 80058C30 0006000D */  break      6
.L80058C34:
/* 102144 80058C34 00002012 */   mflo      $a0
/* 102148 80058C38 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 10214C 80058C3C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 102150 80058C40 000410C0 */  sll        $v0, $a0, 3
/* 102154 80058C44 00441023 */  subu       $v0, $v0, $a0
/* 102158 80058C48 14620003 */  bne        $v1, $v0, .L80058C58
/* 10215C 80058C4C 00000000 */   nop
/* 102160 80058C50 0C02A5C1 */  jal        func_800A9704
/* 102164 80058C54 00000000 */   nop
.L80058C58:
/* 102168 80058C58 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 10216C 80058C5C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102170 80058C60 0202001A */  div        $zero, $s0, $v0
/* 102174 80058C64 14400002 */  bnez       $v0, .L80058C70
/* 102178 80058C68 00000000 */   nop
/* 10217C 80058C6C 0007000D */  break      7
.L80058C70:
/* 102180 80058C70 2401FFFF */   addiu     $at, $zero, -1
/* 102184 80058C74 14410004 */  bne        $v0, $at, .L80058C88
/* 102188 80058C78 3C018000 */   lui       $at, 0x8000
/* 10218C 80058C7C 16010002 */  bne        $s0, $at, .L80058C88
/* 102190 80058C80 00000000 */   nop
/* 102194 80058C84 0006000D */  break      6
.L80058C88:
/* 102198 80058C88 00001012 */   mflo      $v0
/* 10219C 80058C8C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1021A0 80058C90 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1021A4 80058C94 000210C0 */  sll        $v0, $v0, 3
/* 1021A8 80058C98 0062182A */  slt        $v1, $v1, $v0
/* 1021AC 80058C9C 146006EE */  bnez       $v1, .L8005A858
/* 1021B0 80058CA0 00001021 */   addu      $v0, $zero, $zero
/* 1021B4 80058CA4 24020014 */  addiu      $v0, $zero, 0x14
.L80058CA8:
/* 1021B8 80058CA8 08016A15 */  j          .L8005A854
/* 1021BC 80058CAC A6C2001C */   sh        $v0, 0x1c($s6)
.L80058CB0:
/* 1021C0 80058CB0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1021C4 80058CB4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 1021C8 80058CB8 14400003 */  bnez       $v0, .L80058CC8
/* 1021CC 80058CBC 00000000 */   nop
/* 1021D0 80058CC0 0C014429 */  jal        func_800510A4_FA5B4
/* 1021D4 80058CC4 00000000 */   nop
.L80058CC8:
/* 1021D8 80058CC8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1021DC 80058CCC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1021E0 80058CD0 24020002 */  addiu      $v0, $zero, 2
/* 1021E4 80058CD4 146206E0 */  bne        $v1, $v0, .L8005A858
/* 1021E8 80058CD8 00001021 */   addu      $v0, $zero, $zero
/* 1021EC 80058CDC 0C026E5D */  jal        func_8009B974
/* 1021F0 80058CE0 24040001 */   addiu     $a0, $zero, 1
/* 1021F4 80058CE4 0C02A5AF */  jal        func_800A96BC
/* 1021F8 80058CE8 24040001 */   addiu     $a0, $zero, 1
/* 1021FC 80058CEC 24050010 */  addiu      $a1, $zero, 0x10
/* 102200 80058CF0 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 102204 80058CF4 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 102208 80058CF8 24060010 */  addiu      $a2, $zero, 0x10
/* 10220C 80058CFC 24070130 */  addiu      $a3, $zero, 0x130
/* 102210 80058D00 240200E0 */  addiu      $v0, $zero, 0xe0
/* 102214 80058D04 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 102218 80058D08 AC20C1EC */  sw         $zero, %lo(D_8006C1EC)($at)
/* 10221C 80058D0C 0C02939C */  jal        func_800A4E70
/* 102220 80058D10 AFA20010 */   sw        $v0, 0x10($sp)
/* 102224 80058D14 24020015 */  addiu      $v0, $zero, 0x15
/* 102228 80058D18 08016A15 */  j          .L8005A854
/* 10222C 80058D1C A6C2001C */   sh        $v0, 0x1c($s6)
.L80058D20:
/* 102230 80058D20 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 102234 80058D24 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 102238 80058D28 30421000 */  andi       $v0, $v0, 0x1000
/* 10223C 80058D2C 10400004 */  beqz       $v0, .L80058D40
/* 102240 80058D30 24020016 */   addiu     $v0, $zero, 0x16
/* 102244 80058D34 3C018007 */  lui        $at, %hi(D_8006C202)
/* 102248 80058D38 A020C202 */  sb         $zero, %lo(D_8006C202)($at)
/* 10224C 80058D3C A6C2001C */  sh         $v0, 0x1c($s6)
.L80058D40:
/* 102250 80058D40 27A40178 */  addiu      $a0, $sp, 0x178
/* 102254 80058D44 27A5017C */  addiu      $a1, $sp, 0x17c
/* 102258 80058D48 0C0266D6 */  jal        func_80099B58
/* 10225C 80058D4C 00003021 */   addu      $a2, $zero, $zero
/* 102260 80058D50 8FA3017C */  lw         $v1, 0x17c($sp)
/* 102264 80058D54 2402FFFF */  addiu      $v0, $zero, -1
/* 102268 80058D58 14620009 */  bne        $v1, $v0, .L80058D80
/* 10226C 80058D5C 24020001 */   addiu     $v0, $zero, 1
/* 102270 80058D60 3C038007 */  lui        $v1, %hi(D_80069798)
/* 102274 80058D64 90639798 */  lbu        $v1, %lo(D_80069798)($v1)
/* 102278 80058D68 14620004 */  bne        $v1, $v0, .L80058D7C
/* 10227C 80058D6C 00000000 */   nop
/* 102280 80058D70 3C018007 */  lui        $at, %hi(D_80069798)
/* 102284 80058D74 08016368 */  j          .L80058DA0
/* 102288 80058D78 A0209798 */   sb        $zero, %lo(D_80069798)($at)
.L80058D7C:
/* 10228C 80058D7C 8FA3017C */  lw         $v1, 0x17c($sp)
.L80058D80:
/* 102290 80058D80 14620009 */  bne        $v1, $v0, .L80058DA8
/* 102294 80058D84 00000000 */   nop
/* 102298 80058D88 3C028007 */  lui        $v0, %hi(D_80069798)
/* 10229C 80058D8C 90429798 */  lbu        $v0, %lo(D_80069798)($v0)
/* 1022A0 80058D90 14400005 */  bnez       $v0, .L80058DA8
/* 1022A4 80058D94 24020001 */   addiu     $v0, $zero, 1
/* 1022A8 80058D98 3C018007 */  lui        $at, %hi(D_80069798)
/* 1022AC 80058D9C A0229798 */  sb         $v0, %lo(D_80069798)($at)
.L80058DA0:
/* 1022B0 80058DA0 0C026DD5 */  jal        func_8009B754
/* 1022B4 80058DA4 2404001E */   addiu     $a0, $zero, 0x1e
.L80058DA8:
/* 1022B8 80058DA8 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 1022BC 80058DAC C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* 1022C0 80058DB0 3C014378 */  lui        $at, 0x4378
/* 1022C4 80058DB4 44810000 */  mtc1       $at, $f0
/* 1022C8 80058DB8 3C028007 */  lui        $v0, %hi(D_8006979C)
/* 1022CC 80058DBC 8C42979C */  lw         $v0, %lo(D_8006979C)($v0)
/* 1022D0 80058DC0 4600103C */  c.lt.s     $f2, $f0
/* 1022D4 80058DC4 24420001 */  addiu      $v0, $v0, 1
/* 1022D8 80058DC8 3C018007 */  lui        $at, %hi(D_8006979C)
/* 1022DC 80058DCC AC22979C */  sw         $v0, %lo(D_8006979C)($at)
/* 1022E0 80058DD0 45000007 */  bc1f       .L80058DF0
/* 1022E4 80058DD4 00000000 */   nop
/* 1022E8 80058DD8 3C014100 */  lui        $at, 0x4100
/* 1022EC 80058DDC 44810000 */  mtc1       $at, $f0
/* 1022F0 80058DE0 00000000 */  nop
/* 1022F4 80058DE4 46001000 */  add.s      $f0, $f2, $f0
/* 1022F8 80058DE8 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 1022FC 80058DEC E420C1EC */  swc1       $f0, %lo(D_8006C1EC)($at)
.L80058DF0:
/* 102300 80058DF0 3C028007 */  lui        $v0, %hi(D_80069798)
/* 102304 80058DF4 90429798 */  lbu        $v0, %lo(D_80069798)($v0)
/* 102308 80058DF8 14400055 */  bnez       $v0, .L80058F50
/* 10230C 80058DFC 00000000 */   nop
/* 102310 80058E00 0C00D8C1 */  jal        func_80036304_DF814
/* 102314 80058E04 240440C9 */   addiu     $a0, $zero, 0x40c9
/* 102318 80058E08 8C44000C */  lw         $a0, 0xc($v0)
/* 10231C 80058E0C 0C028A40 */  jal        func_800A2900
/* 102320 80058E10 00000000 */   nop
/* 102324 80058E14 0C00D8C1 */  jal        func_80036304_DF814
/* 102328 80058E18 240440CA */   addiu     $a0, $zero, 0x40ca
/* 10232C 80058E1C 8C44000C */  lw         $a0, 0xc($v0)
/* 102330 80058E20 0C028A40 */  jal        func_800A2900
/* 102334 80058E24 00000000 */   nop
/* 102338 80058E28 0C00D8C1 */  jal        func_80036304_DF814
/* 10233C 80058E2C 240440CD */   addiu     $a0, $zero, 0x40cd
/* 102340 80058E30 8C44000C */  lw         $a0, 0xc($v0)
/* 102344 80058E34 0C028A40 */  jal        func_800A2900
/* 102348 80058E38 00000000 */   nop
/* 10234C 80058E3C 0C00D8C1 */  jal        func_80036304_DF814
/* 102350 80058E40 240440CE */   addiu     $a0, $zero, 0x40ce
/* 102354 80058E44 8C44000C */  lw         $a0, 0xc($v0)
/* 102358 80058E48 0C028A40 */  jal        func_800A2900
/* 10235C 80058E4C 00000000 */   nop
/* 102360 80058E50 0C00D8C1 */  jal        func_80036304_DF814
/* 102364 80058E54 240440D0 */   addiu     $a0, $zero, 0x40d0
/* 102368 80058E58 8C44000C */  lw         $a0, 0xc($v0)
/* 10236C 80058E5C 0C028A40 */  jal        func_800A2900
/* 102370 80058E60 00000000 */   nop
/* 102374 80058E64 0C00D8C1 */  jal        func_80036304_DF814
/* 102378 80058E68 240440D1 */   addiu     $a0, $zero, 0x40d1
/* 10237C 80058E6C 8C44000C */  lw         $a0, 0xc($v0)
/* 102380 80058E70 0C028A40 */  jal        func_800A2900
/* 102384 80058E74 00000000 */   nop
/* 102388 80058E78 0C00D8C1 */  jal        func_80036304_DF814
/* 10238C 80058E7C 240440D3 */   addiu     $a0, $zero, 0x40d3
/* 102390 80058E80 8C44000C */  lw         $a0, 0xc($v0)
/* 102394 80058E84 0C028A40 */  jal        func_800A2900
/* 102398 80058E88 00000000 */   nop
/* 10239C 80058E8C 0C00D8C1 */  jal        func_80036304_DF814
/* 1023A0 80058E90 240440D4 */   addiu     $a0, $zero, 0x40d4
/* 1023A4 80058E94 8C44000C */  lw         $a0, 0xc($v0)
/* 1023A8 80058E98 0C028A40 */  jal        func_800A2900
/* 1023AC 80058E9C 00000000 */   nop
/* 1023B0 80058EA0 0C00D8C1 */  jal        func_80036304_DF814
/* 1023B4 80058EA4 240440D5 */   addiu     $a0, $zero, 0x40d5
/* 1023B8 80058EA8 8C44000C */  lw         $a0, 0xc($v0)
/* 1023BC 80058EAC 0C028A40 */  jal        func_800A2900
/* 1023C0 80058EB0 00000000 */   nop
/* 1023C4 80058EB4 0C00D8C1 */  jal        func_80036304_DF814
/* 1023C8 80058EB8 240440D6 */   addiu     $a0, $zero, 0x40d6
/* 1023CC 80058EBC 3C018007 */  lui        $at, %hi(D_8006C1EC)
/* 1023D0 80058EC0 C422C1EC */  lwc1       $f2, %lo(D_8006C1EC)($at)
/* 1023D4 80058EC4 3C014F00 */  lui        $at, 0x4f00
/* 1023D8 80058EC8 44810000 */  mtc1       $at, $f0
/* 1023DC 80058ECC 00000000 */  nop
/* 1023E0 80058ED0 4602003E */  c.le.s     $f0, $f2
/* 1023E4 80058ED4 00000000 */  nop
/* 1023E8 80058ED8 00000000 */  nop
/* 1023EC 80058EDC 45010006 */  bc1t       .L80058EF8
/* 1023F0 80058EE0 00408021 */   addu      $s0, $v0, $zero
/* 1023F4 80058EE4 4600100D */  trunc.w.s  $f0, $f2
/* 1023F8 80058EE8 44030000 */  mfc1       $v1, $f0
/* 1023FC 80058EEC 00000000 */  nop
/* 102400 80058EF0 080163C4 */  j          .L80058F10
/* 102404 80058EF4 306200FF */   andi      $v0, $v1, 0xff
.L80058EF8:
/* 102408 80058EF8 46001001 */  sub.s      $f0, $f2, $f0
/* 10240C 80058EFC 4600008D */  trunc.w.s  $f2, $f0
/* 102410 80058F00 44031000 */  mfc1       $v1, $f2
/* 102414 80058F04 3C028000 */  lui        $v0, 0x8000
/* 102418 80058F08 00621825 */  or         $v1, $v1, $v0
/* 10241C 80058F0C 306200FF */  andi       $v0, $v1, 0xff
.L80058F10:
/* 102420 80058F10 AFA20010 */  sw         $v0, 0x10($sp)
/* 102424 80058F14 8E04000C */  lw         $a0, 0xc($s0)
/* 102428 80058F18 240500FF */  addiu      $a1, $zero, 0xff
/* 10242C 80058F1C 240600FF */  addiu      $a2, $zero, 0xff
/* 102430 80058F20 0C028E41 */  jal        func_800A3904
/* 102434 80058F24 240700FF */   addiu     $a3, $zero, 0xff
/* 102438 80058F28 8E04000C */  lw         $a0, 0xc($s0)
/* 10243C 80058F2C 0C028A40 */  jal        func_800A2900
/* 102440 80058F30 00000000 */   nop
/* 102444 80058F34 3C028007 */  lui        $v0, %hi(D_8006979C)
/* 102448 80058F38 8C42979C */  lw         $v0, %lo(D_8006979C)($v0)
/* 10244C 80058F3C 30420004 */  andi       $v0, $v0, 4
/* 102450 80058F40 10400644 */  beqz       $v0, .L8005A854
/* 102454 80058F44 240440D7 */   addiu     $a0, $zero, 0x40d7
/* 102458 80058F48 080163DE */  j          .L80058F78
/* 10245C 80058F4C 00000000 */   nop
.L80058F50:
/* 102460 80058F50 0C00D8C1 */  jal        func_80036304_DF814
/* 102464 80058F54 240440D9 */   addiu     $a0, $zero, 0x40d9
/* 102468 80058F58 8C44000C */  lw         $a0, 0xc($v0)
/* 10246C 80058F5C 0C028A40 */  jal        func_800A2900
/* 102470 80058F60 00000000 */   nop
/* 102474 80058F64 3C028007 */  lui        $v0, %hi(D_8006979C)
/* 102478 80058F68 8C42979C */  lw         $v0, %lo(D_8006979C)($v0)
/* 10247C 80058F6C 30420004 */  andi       $v0, $v0, 4
/* 102480 80058F70 10400638 */  beqz       $v0, .L8005A854
/* 102484 80058F74 240440D8 */   addiu     $a0, $zero, 0x40d8
.L80058F78:
/* 102488 80058F78 0C00D8C1 */  jal        func_80036304_DF814
/* 10248C 80058F7C 00000000 */   nop
/* 102490 80058F80 0C028A40 */  jal        func_800A2900
/* 102494 80058F84 8C44000C */   lw        $a0, 0xc($v0)
/* 102498 80058F88 08016A16 */  j          .L8005A858
/* 10249C 80058F8C 00001021 */   addu      $v0, $zero, $zero
.L80058F90:
/* 1024A0 80058F90 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1024A4 80058F94 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 1024A8 80058F98 14400003 */  bnez       $v0, .L80058FA8
/* 1024AC 80058F9C 00000000 */   nop
/* 1024B0 80058FA0 0C014432 */  jal        func_800510C8_FA5D8
/* 1024B4 80058FA4 00000000 */   nop
.L80058FA8:
/* 1024B8 80058FA8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1024BC 80058FAC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1024C0 80058FB0 24020002 */  addiu      $v0, $zero, 2
/* 1024C4 80058FB4 14620628 */  bne        $v1, $v0, .L8005A858
/* 1024C8 80058FB8 00001021 */   addu      $v0, $zero, $zero
/* 1024CC 80058FBC 0C02A5AF */  jal        func_800A96BC
/* 1024D0 80058FC0 24040001 */   addiu     $a0, $zero, 1
/* 1024D4 80058FC4 24050010 */  addiu      $a1, $zero, 0x10
/* 1024D8 80058FC8 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 1024DC 80058FCC 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 1024E0 80058FD0 24060030 */  addiu      $a2, $zero, 0x30
/* 1024E4 80058FD4 2407012F */  addiu      $a3, $zero, 0x12f
/* 1024E8 80058FD8 240200BF */  addiu      $v0, $zero, 0xbf
/* 1024EC 80058FDC 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 1024F0 80058FE0 A420C1E4 */  sh         $zero, %lo(D_8006C1E4)($at)
/* 1024F4 80058FE4 0C02939C */  jal        func_800A4E70
/* 1024F8 80058FE8 AFA20010 */   sw        $v0, 0x10($sp)
/* 1024FC 80058FEC 24020017 */  addiu      $v0, $zero, 0x17
/* 102500 80058FF0 08016A15 */  j          .L8005A854
/* 102504 80058FF4 A6C2001C */   sh        $v0, 0x1c($s6)
.L80058FF8:
/* 102508 80058FF8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 10250C 80058FFC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 102510 80059000 000417C2 */  srl        $v0, $a0, 0x1f
/* 102514 80059004 00821021 */  addu       $v0, $a0, $v0
/* 102518 80059008 00021043 */  sra        $v0, $v0, 1
/* 10251C 8005900C 00021040 */  sll        $v0, $v0, 1
/* 102520 80059010 00822023 */  subu       $a0, $a0, $v0
/* 102524 80059014 24840036 */  addiu      $a0, $a0, 0x36
/* 102528 80059018 0C00D8C1 */  jal        func_80036304_DF814
/* 10252C 8005901C 3084FFFF */   andi      $a0, $a0, 0xffff
/* 102530 80059020 8C44000C */  lw         $a0, 0xc($v0)
/* 102534 80059024 0C028A40 */  jal        func_800A2900
/* 102538 80059028 2410003C */   addiu     $s0, $zero, 0x3c
/* 10253C 8005902C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 102540 80059030 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 102544 80059034 0203001A */  div        $zero, $s0, $v1
/* 102548 80059038 14600002 */  bnez       $v1, .L80059044
/* 10254C 8005903C 00000000 */   nop
/* 102550 80059040 0007000D */  break      7
.L80059044:
/* 102554 80059044 2401FFFF */   addiu     $at, $zero, -1
/* 102558 80059048 14610004 */  bne        $v1, $at, .L8005905C
/* 10255C 8005904C 3C018000 */   lui       $at, 0x8000
/* 102560 80059050 16010002 */  bne        $s0, $at, .L8005905C
/* 102564 80059054 00000000 */   nop
/* 102568 80059058 0006000D */  break      6
.L8005905C:
/* 10256C 8005905C 00001812 */   mflo      $v1
/* 102570 80059060 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 102574 80059064 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 102578 80059068 0043102A */  slt        $v0, $v0, $v1
/* 10257C 8005906C 1440003A */  bnez       $v0, .L80059158
/* 102580 80059070 00000000 */   nop
/* 102584 80059074 3C048007 */  lui        $a0, %hi(D_8006C1E4)
/* 102588 80059078 9484C1E4 */  lhu        $a0, %lo(D_8006C1E4)($a0)
/* 10258C 8005907C 248420C9 */  addiu      $a0, $a0, 0x20c9
/* 102590 80059080 0C00D8C1 */  jal        func_80036304_DF814
/* 102594 80059084 3084FFFF */   andi      $a0, $a0, 0xffff
/* 102598 80059088 8C44000C */  lw         $a0, 0xc($v0)
/* 10259C 8005908C 0C028A40 */  jal        func_800A2900
/* 1025A0 80059090 00000000 */   nop
/* 1025A4 80059094 3C048007 */  lui        $a0, %hi(D_8006C1E4)
/* 1025A8 80059098 9484C1E4 */  lhu        $a0, %lo(D_8006C1E4)($a0)
/* 1025AC 8005909C 248420D3 */  addiu      $a0, $a0, 0x20d3
/* 1025B0 800590A0 0C00D8C1 */  jal        func_80036304_DF814
/* 1025B4 800590A4 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1025B8 800590A8 8C44000C */  lw         $a0, 0xc($v0)
/* 1025BC 800590AC 0C028A40 */  jal        func_800A2900
/* 1025C0 800590B0 00000000 */   nop
/* 1025C4 800590B4 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 1025C8 800590B8 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 1025CC 800590BC 0202001A */  div        $zero, $s0, $v0
/* 1025D0 800590C0 14400002 */  bnez       $v0, .L800590CC
/* 1025D4 800590C4 00000000 */   nop
/* 1025D8 800590C8 0007000D */  break      7
.L800590CC:
/* 1025DC 800590CC 2401FFFF */   addiu     $at, $zero, -1
/* 1025E0 800590D0 14410004 */  bne        $v0, $at, .L800590E4
/* 1025E4 800590D4 3C018000 */   lui       $at, 0x8000
/* 1025E8 800590D8 16010002 */  bne        $s0, $at, .L800590E4
/* 1025EC 800590DC 00000000 */   nop
/* 1025F0 800590E0 0006000D */  break      6
.L800590E4:
/* 1025F4 800590E4 00001812 */   mflo      $v1
/* 1025F8 800590E8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 1025FC 800590EC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 102600 800590F0 00031040 */  sll        $v0, $v1, 1
/* 102604 800590F4 14820007 */  bne        $a0, $v0, .L80059114
/* 102608 800590F8 00031080 */   sll       $v0, $v1, 2
/* 10260C 800590FC 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 102610 80059100 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 102614 80059104 24420001 */  addiu      $v0, $v0, 1
/* 102618 80059108 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 10261C 8005910C A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
/* 102620 80059110 00031080 */  sll        $v0, $v1, 2
.L80059114:
/* 102624 80059114 00431021 */  addu       $v0, $v0, $v1
/* 102628 80059118 14820007 */  bne        $a0, $v0, .L80059138
/* 10262C 8005911C 000310C0 */   sll       $v0, $v1, 3
/* 102630 80059120 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 102634 80059124 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 102638 80059128 24420001 */  addiu      $v0, $v0, 1
/* 10263C 8005912C 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 102640 80059130 A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
/* 102644 80059134 000310C0 */  sll        $v0, $v1, 3
.L80059138:
/* 102648 80059138 00431021 */  addu       $v0, $v0, $v1
/* 10264C 8005913C 14820006 */  bne        $a0, $v0, .L80059158
/* 102650 80059140 00000000 */   nop
/* 102654 80059144 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 102658 80059148 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 10265C 8005914C 24420001 */  addiu      $v0, $v0, 1
/* 102660 80059150 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 102664 80059154 A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
.L80059158:
/* 102668 80059158 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 10266C 8005915C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102670 80059160 2403003C */  addiu      $v1, $zero, 0x3c
/* 102674 80059164 0062001A */  div        $zero, $v1, $v0
/* 102678 80059168 14400002 */  bnez       $v0, .L80059174
/* 10267C 8005916C 00000000 */   nop
/* 102680 80059170 0007000D */  break      7
.L80059174:
/* 102684 80059174 2401FFFF */   addiu     $at, $zero, -1
/* 102688 80059178 14410004 */  bne        $v0, $at, .L8005918C
/* 10268C 8005917C 3C018000 */   lui       $at, 0x8000
/* 102690 80059180 14610002 */  bne        $v1, $at, .L8005918C
/* 102694 80059184 00000000 */   nop
/* 102698 80059188 0006000D */  break      6
.L8005918C:
/* 10269C 8005918C 00001812 */   mflo      $v1
/* 1026A0 80059190 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 1026A4 80059194 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 1026A8 80059198 00031040 */  sll        $v0, $v1, 1
/* 1026AC 8005919C 00431021 */  addu       $v0, $v0, $v1
/* 1026B0 800591A0 00021080 */  sll        $v0, $v0, 2
/* 1026B4 800591A4 00431021 */  addu       $v0, $v0, $v1
/* 1026B8 800591A8 148205AB */  bne        $a0, $v0, .L8005A858
/* 1026BC 800591AC 00001021 */   addu      $v0, $zero, $zero
/* 1026C0 800591B0 24020018 */  addiu      $v0, $zero, 0x18
/* 1026C4 800591B4 08016A15 */  j          .L8005A854
/* 1026C8 800591B8 A6C2001C */   sh        $v0, 0x1c($s6)
.L800591BC:
/* 1026CC 800591BC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1026D0 800591C0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 1026D4 800591C4 14400003 */  bnez       $v0, .L800591D4
/* 1026D8 800591C8 00000000 */   nop
/* 1026DC 800591CC 0C0144BF */  jal        func_800512FC_FA80C
/* 1026E0 800591D0 00000000 */   nop
.L800591D4:
/* 1026E4 800591D4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1026E8 800591D8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1026EC 800591DC 24020002 */  addiu      $v0, $zero, 2
/* 1026F0 800591E0 1462059D */  bne        $v1, $v0, .L8005A858
/* 1026F4 800591E4 00001021 */   addu      $v0, $zero, $zero
/* 1026F8 800591E8 0C02A5AF */  jal        func_800A96BC
/* 1026FC 800591EC 24040001 */   addiu     $a0, $zero, 1
/* 102700 800591F0 24050010 */  addiu      $a1, $zero, 0x10
/* 102704 800591F4 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 102708 800591F8 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 10270C 800591FC 24060030 */  addiu      $a2, $zero, 0x30
/* 102710 80059200 2407012F */  addiu      $a3, $zero, 0x12f
/* 102714 80059204 240200BF */  addiu      $v0, $zero, 0xbf
/* 102718 80059208 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 10271C 8005920C A420C1E4 */  sh         $zero, %lo(D_8006C1E4)($at)
/* 102720 80059210 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* 102724 80059214 A420C1E6 */  sh         $zero, %lo(D_8006C1E6)($at)
/* 102728 80059218 0C02939C */  jal        func_800A4E70
/* 10272C 8005921C AFA20010 */   sw        $v0, 0x10($sp)
/* 102730 80059220 24020019 */  addiu      $v0, $zero, 0x19
/* 102734 80059224 08016A15 */  j          .L8005A854
/* 102738 80059228 A6C2001C */   sh        $v0, 0x1c($s6)
.L8005922C:
/* 10273C 8005922C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 102740 80059230 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 102744 80059234 000417C2 */  srl        $v0, $a0, 0x1f
/* 102748 80059238 00821021 */  addu       $v0, $a0, $v0
/* 10274C 8005923C 00021043 */  sra        $v0, $v0, 1
/* 102750 80059240 00021040 */  sll        $v0, $v0, 1
/* 102754 80059244 00822023 */  subu       $a0, $a0, $v0
/* 102758 80059248 24840036 */  addiu      $a0, $a0, 0x36
/* 10275C 8005924C 0C00D8C1 */  jal        func_80036304_DF814
/* 102760 80059250 3084FFFF */   andi      $a0, $a0, 0xffff
/* 102764 80059254 8C44000C */  lw         $a0, 0xc($v0)
/* 102768 80059258 0C028A40 */  jal        func_800A2900
/* 10276C 8005925C 2411003C */   addiu     $s1, $zero, 0x3c
/* 102770 80059260 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 102774 80059264 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 102778 80059268 0223001A */  div        $zero, $s1, $v1
/* 10277C 8005926C 14600002 */  bnez       $v1, .L80059278
/* 102780 80059270 00000000 */   nop
/* 102784 80059274 0007000D */  break      7
.L80059278:
/* 102788 80059278 2401FFFF */   addiu     $at, $zero, -1
/* 10278C 8005927C 14610004 */  bne        $v1, $at, .L80059290
/* 102790 80059280 3C018000 */   lui       $at, 0x8000
/* 102794 80059284 16210002 */  bne        $s1, $at, .L80059290
/* 102798 80059288 00000000 */   nop
/* 10279C 8005928C 0006000D */  break      6
.L80059290:
/* 1027A0 80059290 00001812 */   mflo      $v1
/* 1027A4 80059294 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1027A8 80059298 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 1027AC 8005929C 0043102A */  slt        $v0, $v0, $v1
/* 1027B0 800592A0 144000A0 */  bnez       $v0, .L80059524
/* 1027B4 800592A4 3C065555 */   lui       $a2, 0x5555
/* 1027B8 800592A8 3C048007 */  lui        $a0, %hi(D_8006C1E4)
/* 1027BC 800592AC 9484C1E4 */  lhu        $a0, %lo(D_8006C1E4)($a0)
/* 1027C0 800592B0 34C65556 */  ori        $a2, $a2, 0x5556
/* 1027C4 800592B4 00041400 */  sll        $v0, $a0, 0x10
/* 1027C8 800592B8 00021C03 */  sra        $v1, $v0, 0x10
/* 1027CC 800592BC 00660018 */  mult       $v1, $a2
/* 1027D0 800592C0 27A50088 */  addiu      $a1, $sp, 0x88
/* 1027D4 800592C4 000217C3 */  sra        $v0, $v0, 0x1f
/* 1027D8 800592C8 00004810 */  mfhi       $t1
/* 1027DC 800592CC 01221023 */  subu       $v0, $t1, $v0
/* 1027E0 800592D0 00021400 */  sll        $v0, $v0, 0x10
/* 1027E4 800592D4 00021403 */  sra        $v0, $v0, 0x10
/* 1027E8 800592D8 00A21021 */  addu       $v0, $a1, $v0
/* 1027EC 800592DC 90430000 */  lbu        $v1, ($v0)
/* 1027F0 800592E0 24020009 */  addiu      $v0, $zero, 9
/* 1027F4 800592E4 10620003 */  beq        $v1, $v0, .L800592F4
/* 1027F8 800592E8 24820001 */   addiu     $v0, $a0, 1
/* 1027FC 800592EC 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 102800 800592F0 A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
.L800592F4:
/* 102804 800592F4 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 102808 800592F8 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 10280C 800592FC 00021400 */  sll        $v0, $v0, 0x10
/* 102810 80059300 00021C03 */  sra        $v1, $v0, 0x10
/* 102814 80059304 00660018 */  mult       $v1, $a2
/* 102818 80059308 000217C3 */  sra        $v0, $v0, 0x1f
/* 10281C 8005930C 00004810 */  mfhi       $t1
/* 102820 80059310 01221023 */  subu       $v0, $t1, $v0
/* 102824 80059314 00021400 */  sll        $v0, $v0, 0x10
/* 102828 80059318 00021403 */  sra        $v0, $v0, 0x10
/* 10282C 8005931C 00A21021 */  addu       $v0, $a1, $v0
/* 102830 80059320 90440000 */  lbu        $a0, ($v0)
/* 102834 80059324 308200FF */  andi       $v0, $a0, 0xff
/* 102838 80059328 0002182B */  sltu       $v1, $zero, $v0
/* 10283C 8005932C 38420009 */  xori       $v0, $v0, 9
/* 102840 80059330 0002102B */  sltu       $v0, $zero, $v0
/* 102844 80059334 00621824 */  and        $v1, $v1, $v0
/* 102848 80059338 1060004B */  beqz       $v1, .L80059468
/* 10284C 8005933C 00000000 */   nop
/* 102850 80059340 0C00D8C1 */  jal        func_80036304_DF814
/* 102854 80059344 24840017 */   addiu     $a0, $a0, 0x17
/* 102858 80059348 00408021 */  addu       $s0, $v0, $zero
/* 10285C 8005934C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 102860 80059350 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 102864 80059354 8E04000C */  lw         $a0, 0xc($s0)
/* 102868 80059358 24050007 */  addiu      $a1, $zero, 7
/* 10286C 8005935C 000317C2 */  srl        $v0, $v1, 0x1f
/* 102870 80059360 00621021 */  addu       $v0, $v1, $v0
/* 102874 80059364 00021043 */  sra        $v0, $v0, 1
/* 102878 80059368 00021040 */  sll        $v0, $v0, 1
/* 10287C 8005936C 00621823 */  subu       $v1, $v1, $v0
/* 102880 80059370 00033140 */  sll        $a2, $v1, 5
/* 102884 80059374 00C33021 */  addu       $a2, $a2, $v1
/* 102888 80059378 00063140 */  sll        $a2, $a2, 5
/* 10288C 8005937C 00C33021 */  addu       $a2, $a2, $v1
/* 102890 80059380 00063080 */  sll        $a2, $a2, 2
/* 102894 80059384 24C6425B */  addiu      $a2, $a2, 0x425b
/* 102898 80059388 0C00DE6C */  jal        func_800379B0_E0EC0
/* 10289C 8005938C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 1028A0 80059390 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1028A4 80059394 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1028A8 80059398 8E04000C */  lw         $a0, 0xc($s0)
/* 1028AC 8005939C 24050008 */  addiu      $a1, $zero, 8
/* 1028B0 800593A0 000317C2 */  srl        $v0, $v1, 0x1f
/* 1028B4 800593A4 00621021 */  addu       $v0, $v1, $v0
/* 1028B8 800593A8 00021043 */  sra        $v0, $v0, 1
/* 1028BC 800593AC 00021040 */  sll        $v0, $v0, 1
/* 1028C0 800593B0 00621823 */  subu       $v1, $v1, $v0
/* 1028C4 800593B4 00033140 */  sll        $a2, $v1, 5
/* 1028C8 800593B8 00C33021 */  addu       $a2, $a2, $v1
/* 1028CC 800593BC 00063140 */  sll        $a2, $a2, 5
/* 1028D0 800593C0 00C33021 */  addu       $a2, $a2, $v1
/* 1028D4 800593C4 00063080 */  sll        $a2, $a2, 2
/* 1028D8 800593C8 24C65ADF */  addiu      $a2, $a2, 0x5adf
/* 1028DC 800593CC 0C00DE6C */  jal        func_800379B0_E0EC0
/* 1028E0 800593D0 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 1028E4 800593D4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1028E8 800593D8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1028EC 800593DC 8E04000C */  lw         $a0, 0xc($s0)
/* 1028F0 800593E0 24050009 */  addiu      $a1, $zero, 9
/* 1028F4 800593E4 000317C2 */  srl        $v0, $v1, 0x1f
/* 1028F8 800593E8 00621021 */  addu       $v0, $v1, $v0
/* 1028FC 800593EC 00021043 */  sra        $v0, $v0, 1
/* 102900 800593F0 00021040 */  sll        $v0, $v0, 1
/* 102904 800593F4 00621823 */  subu       $v1, $v1, $v0
/* 102908 800593F8 00033140 */  sll        $a2, $v1, 5
/* 10290C 800593FC 00C33021 */  addu       $a2, $a2, $v1
/* 102910 80059400 00063140 */  sll        $a2, $a2, 5
/* 102914 80059404 00C33021 */  addu       $a2, $a2, $v1
/* 102918 80059408 00063080 */  sll        $a2, $a2, 2
/* 10291C 8005940C 24C67367 */  addiu      $a2, $a2, 0x7367
/* 102920 80059410 0C00DE6C */  jal        func_800379B0_E0EC0
/* 102924 80059414 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 102928 80059418 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 10292C 8005941C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 102930 80059420 8E04000C */  lw         $a0, 0xc($s0)
/* 102934 80059424 2405000A */  addiu      $a1, $zero, 0xa
/* 102938 80059428 000317C2 */  srl        $v0, $v1, 0x1f
/* 10293C 8005942C 00621021 */  addu       $v0, $v1, $v0
/* 102940 80059430 00021043 */  sra        $v0, $v0, 1
/* 102944 80059434 00021040 */  sll        $v0, $v0, 1
/* 102948 80059438 00621823 */  subu       $v1, $v1, $v0
/* 10294C 8005943C 00033140 */  sll        $a2, $v1, 5
/* 102950 80059440 00C33021 */  addu       $a2, $a2, $v1
/* 102954 80059444 00063140 */  sll        $a2, $a2, 5
/* 102958 80059448 00C33021 */  addu       $a2, $a2, $v1
/* 10295C 8005944C 00063080 */  sll        $a2, $a2, 2
/* 102960 80059450 24C68C29 */  addiu      $a2, $a2, -0x73d7
/* 102964 80059454 0C00DE6C */  jal        func_800379B0_E0EC0
/* 102968 80059458 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 10296C 8005945C 8E04000C */  lw         $a0, 0xc($s0)
/* 102970 80059460 0C028A40 */  jal        func_800A2900
/* 102974 80059464 00000000 */   nop
.L80059468:
/* 102978 80059468 3C048007 */  lui        $a0, %hi(D_8006C1E6)
/* 10297C 8005946C 9484C1E6 */  lhu        $a0, %lo(D_8006C1E6)($a0)
/* 102980 80059470 248420C9 */  addiu      $a0, $a0, 0x20c9
/* 102984 80059474 0C00D8C1 */  jal        func_80036304_DF814
/* 102988 80059478 3084FFFF */   andi      $a0, $a0, 0xffff
/* 10298C 8005947C 8C44000C */  lw         $a0, 0xc($v0)
/* 102990 80059480 0C028A40 */  jal        func_800A2900
/* 102994 80059484 00000000 */   nop
/* 102998 80059488 3C048007 */  lui        $a0, %hi(D_8006C1E6)
/* 10299C 8005948C 9484C1E6 */  lhu        $a0, %lo(D_8006C1E6)($a0)
/* 1029A0 80059490 248420D3 */  addiu      $a0, $a0, 0x20d3
/* 1029A4 80059494 0C00D8C1 */  jal        func_80036304_DF814
/* 1029A8 80059498 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1029AC 8005949C 8C44000C */  lw         $a0, 0xc($v0)
/* 1029B0 800594A0 0C028A40 */  jal        func_800A2900
/* 1029B4 800594A4 00000000 */   nop
/* 1029B8 800594A8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 1029BC 800594AC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 1029C0 800594B0 0222001A */  div        $zero, $s1, $v0
/* 1029C4 800594B4 14400002 */  bnez       $v0, .L800594C0
/* 1029C8 800594B8 00000000 */   nop
/* 1029CC 800594BC 0007000D */  break      7
.L800594C0:
/* 1029D0 800594C0 2401FFFF */   addiu     $at, $zero, -1
/* 1029D4 800594C4 14410004 */  bne        $v0, $at, .L800594D8
/* 1029D8 800594C8 3C018000 */   lui       $at, 0x8000
/* 1029DC 800594CC 16210002 */  bne        $s1, $at, .L800594D8
/* 1029E0 800594D0 00000000 */   nop
/* 1029E4 800594D4 0006000D */  break      6
.L800594D8:
/* 1029E8 800594D8 00001012 */   mflo      $v0
/* 1029EC 800594DC 3C018007 */  lui        $at, %hi(D_8006A3C8)
/* 1029F0 800594E0 D422A3C8 */  ldc1       $f2, %lo(D_8006A3C8)($at)
/* 1029F4 800594E4 44820000 */  mtc1       $v0, $f0
/* 1029F8 800594E8 00000000 */  nop
/* 1029FC 800594EC 46800021 */  cvt.d.w    $f0, $f0
/* 102A00 800594F0 46220002 */  mul.d      $f0, $f0, $f2
/* 102A04 800594F4 3C018007 */  lui        $at, %hi(D_8006C564)
/* 102A08 800594F8 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* 102A0C 800594FC 468010A1 */  cvt.d.w    $f2, $f2
/* 102A10 80059500 46201032 */  c.eq.d     $f2, $f0
/* 102A14 80059504 00000000 */  nop
/* 102A18 80059508 45000006 */  bc1f       .L80059524
/* 102A1C 8005950C 00000000 */   nop
/* 102A20 80059510 3C028007 */  lui        $v0, %hi(D_8006C1E6)
/* 102A24 80059514 9442C1E6 */  lhu        $v0, %lo(D_8006C1E6)($v0)
/* 102A28 80059518 24420001 */  addiu      $v0, $v0, 1
/* 102A2C 8005951C 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* 102A30 80059520 A422C1E6 */  sh         $v0, %lo(D_8006C1E6)($at)
.L80059524:
/* 102A34 80059524 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102A38 80059528 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102A3C 8005952C 2403003C */  addiu      $v1, $zero, 0x3c
/* 102A40 80059530 0062001A */  div        $zero, $v1, $v0
/* 102A44 80059534 14400002 */  bnez       $v0, .L80059540
/* 102A48 80059538 00000000 */   nop
/* 102A4C 8005953C 0007000D */  break      7
.L80059540:
/* 102A50 80059540 2401FFFF */   addiu     $at, $zero, -1
/* 102A54 80059544 14410004 */  bne        $v0, $at, .L80059558
/* 102A58 80059548 3C018000 */   lui       $at, 0x8000
/* 102A5C 8005954C 14610002 */  bne        $v1, $at, .L80059558
/* 102A60 80059550 00000000 */   nop
/* 102A64 80059554 0006000D */  break      6
.L80059558:
/* 102A68 80059558 00001812 */   mflo      $v1
/* 102A6C 8005955C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 102A70 80059560 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 102A74 80059564 000310C0 */  sll        $v0, $v1, 3
/* 102A78 80059568 00431021 */  addu       $v0, $v0, $v1
/* 102A7C 8005956C 148204BA */  bne        $a0, $v0, .L8005A858
/* 102A80 80059570 00001021 */   addu      $v0, $zero, $zero
/* 102A84 80059574 2402001A */  addiu      $v0, $zero, 0x1a
/* 102A88 80059578 08016A15 */  j          .L8005A854
/* 102A8C 8005957C A6C2001C */   sh        $v0, 0x1c($s6)
.L80059580:
/* 102A90 80059580 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 102A94 80059584 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 102A98 80059588 14400003 */  bnez       $v0, .L80059598
/* 102A9C 8005958C 00000000 */   nop
/* 102AA0 80059590 0C014539 */  jal        func_800514E4_FA9F4
/* 102AA4 80059594 00000000 */   nop
.L80059598:
/* 102AA8 80059598 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 102AAC 8005959C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 102AB0 800595A0 24020002 */  addiu      $v0, $zero, 2
/* 102AB4 800595A4 146204AC */  bne        $v1, $v0, .L8005A858
/* 102AB8 800595A8 00001021 */   addu      $v0, $zero, $zero
/* 102ABC 800595AC 0C02A5AF */  jal        func_800A96BC
/* 102AC0 800595B0 24040001 */   addiu     $a0, $zero, 1
/* 102AC4 800595B4 24050010 */  addiu      $a1, $zero, 0x10
/* 102AC8 800595B8 24060030 */  addiu      $a2, $zero, 0x30
/* 102ACC 800595BC 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 102AD0 800595C0 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 102AD4 800595C4 2407012F */  addiu      $a3, $zero, 0x12f
/* 102AD8 800595C8 240200BF */  addiu      $v0, $zero, 0xbf
/* 102ADC 800595CC 0C02939C */  jal        func_800A4E70
/* 102AE0 800595D0 AFA20010 */   sw        $v0, 0x10($sp)
/* 102AE4 800595D4 2402001B */  addiu      $v0, $zero, 0x1b
/* 102AE8 800595D8 08016A15 */  j          .L8005A854
/* 102AEC 800595DC A6C2001C */   sh        $v0, 0x1c($s6)
.L800595E0:
/* 102AF0 800595E0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102AF4 800595E4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102AF8 800595E8 0202001A */  div        $zero, $s0, $v0
/* 102AFC 800595EC 14400002 */  bnez       $v0, .L800595F8
/* 102B00 800595F0 00000000 */   nop
/* 102B04 800595F4 0007000D */  break      7
.L800595F8:
/* 102B08 800595F8 2401FFFF */   addiu     $at, $zero, -1
/* 102B0C 800595FC 14410004 */  bne        $v0, $at, .L80059610
/* 102B10 80059600 3C018000 */   lui       $at, 0x8000
/* 102B14 80059604 16010002 */  bne        $s0, $at, .L80059610
/* 102B18 80059608 00000000 */   nop
/* 102B1C 8005960C 0006000D */  break      6
.L80059610:
/* 102B20 80059610 00001012 */   mflo      $v0
/* 102B24 80059614 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 102B28 80059618 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 102B2C 8005961C 14620003 */  bne        $v1, $v0, .L8005962C
/* 102B30 80059620 00000000 */   nop
/* 102B34 80059624 0C026DD5 */  jal        func_8009B754
/* 102B38 80059628 24040198 */   addiu     $a0, $zero, 0x198
.L8005962C:
/* 102B3C 8005962C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 102B40 80059630 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 102B44 80059634 000417C2 */  srl        $v0, $a0, 0x1f
/* 102B48 80059638 00821021 */  addu       $v0, $a0, $v0
/* 102B4C 8005963C 00021043 */  sra        $v0, $v0, 1
/* 102B50 80059640 00021040 */  sll        $v0, $v0, 1
/* 102B54 80059644 00822023 */  subu       $a0, $a0, $v0
/* 102B58 80059648 24840036 */  addiu      $a0, $a0, 0x36
/* 102B5C 8005964C 0C00D8C1 */  jal        func_80036304_DF814
/* 102B60 80059650 3084FFFF */   andi      $a0, $a0, 0xffff
/* 102B64 80059654 8C44000C */  lw         $a0, 0xc($v0)
/* 102B68 80059658 0C028A40 */  jal        func_800A2900
/* 102B6C 8005965C 00000000 */   nop
/* 102B70 80059660 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 102B74 80059664 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 102B78 80059668 0203001A */  div        $zero, $s0, $v1
/* 102B7C 8005966C 14600002 */  bnez       $v1, .L80059678
/* 102B80 80059670 00000000 */   nop
/* 102B84 80059674 0007000D */  break      7
.L80059678:
/* 102B88 80059678 2401FFFF */   addiu     $at, $zero, -1
/* 102B8C 8005967C 14610004 */  bne        $v1, $at, .L80059690
/* 102B90 80059680 3C018000 */   lui       $at, 0x8000
/* 102B94 80059684 16010002 */  bne        $s0, $at, .L80059690
/* 102B98 80059688 00000000 */   nop
/* 102B9C 8005968C 0006000D */  break      6
.L80059690:
/* 102BA0 80059690 00001812 */   mflo      $v1
/* 102BA4 80059694 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 102BA8 80059698 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 102BAC 8005969C 0043102A */  slt        $v0, $v0, $v1
/* 102BB0 800596A0 1440000B */  bnez       $v0, .L800596D0
/* 102BB4 800596A4 00000000 */   nop
/* 102BB8 800596A8 0C00D8C1 */  jal        func_80036304_DF814
/* 102BBC 800596AC 240420C9 */   addiu     $a0, $zero, 0x20c9
/* 102BC0 800596B0 8C44000C */  lw         $a0, 0xc($v0)
/* 102BC4 800596B4 0C028A40 */  jal        func_800A2900
/* 102BC8 800596B8 00000000 */   nop
/* 102BCC 800596BC 0C00D8C1 */  jal        func_80036304_DF814
/* 102BD0 800596C0 240420D3 */   addiu     $a0, $zero, 0x20d3
/* 102BD4 800596C4 8C44000C */  lw         $a0, 0xc($v0)
/* 102BD8 800596C8 0C028A40 */  jal        func_800A2900
/* 102BDC 800596CC 00000000 */   nop
.L800596D0:
/* 102BE0 800596D0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102BE4 800596D4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102BE8 800596D8 0202001A */  div        $zero, $s0, $v0
/* 102BEC 800596DC 14400002 */  bnez       $v0, .L800596E8
/* 102BF0 800596E0 00000000 */   nop
/* 102BF4 800596E4 0007000D */  break      7
.L800596E8:
/* 102BF8 800596E8 2401FFFF */   addiu     $at, $zero, -1
/* 102BFC 800596EC 14410004 */  bne        $v0, $at, .L80059700
/* 102C00 800596F0 3C018000 */   lui       $at, 0x8000
/* 102C04 800596F4 16010002 */  bne        $s0, $at, .L80059700
/* 102C08 800596F8 00000000 */   nop
/* 102C0C 800596FC 0006000D */  break      6
.L80059700:
/* 102C10 80059700 00002012 */   mflo      $a0
/* 102C14 80059704 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 102C18 80059708 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 102C1C 8005970C 00041080 */  sll        $v0, $a0, 2
/* 102C20 80059710 00441021 */  addu       $v0, $v0, $a0
/* 102C24 80059714 14620003 */  bne        $v1, $v0, .L80059724
/* 102C28 80059718 00000000 */   nop
/* 102C2C 8005971C 0C02A5C1 */  jal        func_800A9704
/* 102C30 80059720 00000000 */   nop
.L80059724:
/* 102C34 80059724 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102C38 80059728 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102C3C 8005972C 0202001A */  div        $zero, $s0, $v0
/* 102C40 80059730 14400002 */  bnez       $v0, .L8005973C
/* 102C44 80059734 00000000 */   nop
/* 102C48 80059738 0007000D */  break      7
.L8005973C:
/* 102C4C 8005973C 2401FFFF */   addiu     $at, $zero, -1
/* 102C50 80059740 14410004 */  bne        $v0, $at, .L80059754
/* 102C54 80059744 3C018000 */   lui       $at, 0x8000
/* 102C58 80059748 16010002 */  bne        $s0, $at, .L80059754
/* 102C5C 8005974C 00000000 */   nop
/* 102C60 80059750 0006000D */  break      6
.L80059754:
/* 102C64 80059754 00003012 */   mflo      $a2
/* 102C68 80059758 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 102C6C 8005975C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 102C70 80059760 00061080 */  sll        $v0, $a2, 2
/* 102C74 80059764 00461021 */  addu       $v0, $v0, $a2
/* 102C78 80059768 14620006 */  bne        $v1, $v0, .L80059784
/* 102C7C 8005976C 2404FFFE */   addiu     $a0, $zero, -2
/* 102C80 80059770 AFA00010 */  sw         $zero, 0x10($sp)
/* 102C84 80059774 2405FFFF */  addiu      $a1, $zero, -1
/* 102C88 80059778 30C6FFFF */  andi       $a2, $a2, 0xffff
/* 102C8C 8005977C 0C026C9A */  jal        func_8009B268
/* 102C90 80059780 00003821 */   addu      $a3, $zero, $zero
.L80059784:
/* 102C94 80059784 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102C98 80059788 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102C9C 8005978C 0202001A */  div        $zero, $s0, $v0
/* 102CA0 80059790 14400002 */  bnez       $v0, .L8005979C
/* 102CA4 80059794 00000000 */   nop
/* 102CA8 80059798 0007000D */  break      7
.L8005979C:
/* 102CAC 8005979C 2401FFFF */   addiu     $at, $zero, -1
/* 102CB0 800597A0 14410004 */  bne        $v0, $at, .L800597B4
/* 102CB4 800597A4 3C018000 */   lui       $at, 0x8000
/* 102CB8 800597A8 16010002 */  bne        $s0, $at, .L800597B4
/* 102CBC 800597AC 00000000 */   nop
/* 102CC0 800597B0 0006000D */  break      6
.L800597B4:
/* 102CC4 800597B4 00001012 */   mflo      $v0
/* 102CC8 800597B8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 102CCC 800597BC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 102CD0 800597C0 00021840 */  sll        $v1, $v0, 1
/* 102CD4 800597C4 00621821 */  addu       $v1, $v1, $v0
/* 102CD8 800597C8 00031840 */  sll        $v1, $v1, 1
/* 102CDC 800597CC 0083202A */  slt        $a0, $a0, $v1
/* 102CE0 800597D0 14800421 */  bnez       $a0, .L8005A858
/* 102CE4 800597D4 00001021 */   addu      $v0, $zero, $zero
/* 102CE8 800597D8 2402001C */  addiu      $v0, $zero, 0x1c
/* 102CEC 800597DC 08016A15 */  j          .L8005A854
/* 102CF0 800597E0 A6C2001C */   sh        $v0, 0x1c($s6)
.L800597E4:
/* 102CF4 800597E4 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 102CF8 800597E8 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 102CFC 800597EC 14400003 */  bnez       $v0, .L800597FC
/* 102D00 800597F0 00000000 */   nop
/* 102D04 800597F4 0C014585 */  jal        func_80051614_FAB24
/* 102D08 800597F8 00000000 */   nop
.L800597FC:
/* 102D0C 800597FC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 102D10 80059800 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 102D14 80059804 24020002 */  addiu      $v0, $zero, 2
/* 102D18 80059808 14620413 */  bne        $v1, $v0, .L8005A858
/* 102D1C 8005980C 00001021 */   addu      $v0, $zero, $zero
/* 102D20 80059810 0C02A5AF */  jal        func_800A96BC
/* 102D24 80059814 24040001 */   addiu     $a0, $zero, 1
/* 102D28 80059818 24050010 */  addiu      $a1, $zero, 0x10
/* 102D2C 8005981C 3C014378 */  lui        $at, 0x4378
/* 102D30 80059820 44810000 */  mtc1       $at, $f0
/* 102D34 80059824 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 102D38 80059828 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 102D3C 8005982C 24060030 */  addiu      $a2, $zero, 0x30
/* 102D40 80059830 240200BF */  addiu      $v0, $zero, 0xbf
/* 102D44 80059834 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 102D48 80059838 AC20C1FC */  sw         $zero, %lo(D_8006C1FC)($at)
/* 102D4C 8005983C 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* 102D50 80059840 AC20C1C8 */  sw         $zero, %lo(D_8006C1C8)($at)
/* 102D54 80059844 3C018007 */  lui        $at, %hi(D_8006C1D4)
/* 102D58 80059848 AC20C1D4 */  sw         $zero, %lo(D_8006C1D4)($at)
/* 102D5C 8005984C AFA20010 */  sw         $v0, 0x10($sp)
/* 102D60 80059850 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 102D64 80059854 E420C1F8 */  swc1       $f0, %lo(D_8006C1F8)($at)
/* 102D68 80059858 0C02939C */  jal        func_800A4E70
/* 102D6C 8005985C 2407012F */   addiu     $a3, $zero, 0x12f
/* 102D70 80059860 24040005 */  addiu      $a0, $zero, 5
/* 102D74 80059864 2405FFFF */  addiu      $a1, $zero, -1
/* 102D78 80059868 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* 102D7C 8005986C 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* 102D80 80059870 24060001 */  addiu      $a2, $zero, 1
/* 102D84 80059874 2402001D */  addiu      $v0, $zero, 0x1d
/* 102D88 80059878 A6C2001C */  sh         $v0, 0x1c($s6)
/* 102D8C 8005987C 24020001 */  addiu      $v0, $zero, 1
/* 102D90 80059880 AFA20010 */  sw         $v0, 0x10($sp)
/* 102D94 80059884 0C026C9A */  jal        func_8009B268
/* 102D98 80059888 24E7FFF6 */   addiu     $a3, $a3, -0xa
/* 102D9C 8005988C 08016A16 */  j          .L8005A858
/* 102DA0 80059890 00001021 */   addu      $v0, $zero, $zero
.L80059894:
/* 102DA4 80059894 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 102DA8 80059898 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 102DAC 8005989C 000417C2 */  srl        $v0, $a0, 0x1f
/* 102DB0 800598A0 00821021 */  addu       $v0, $a0, $v0
/* 102DB4 800598A4 00021043 */  sra        $v0, $v0, 1
/* 102DB8 800598A8 00021040 */  sll        $v0, $v0, 1
/* 102DBC 800598AC 00822023 */  subu       $a0, $a0, $v0
/* 102DC0 800598B0 24840036 */  addiu      $a0, $a0, 0x36
/* 102DC4 800598B4 0C00D8C1 */  jal        func_80036304_DF814
/* 102DC8 800598B8 3084FFFF */   andi      $a0, $a0, 0xffff
/* 102DCC 800598BC 8C44000C */  lw         $a0, 0xc($v0)
/* 102DD0 800598C0 0C028A40 */  jal        func_800A2900
/* 102DD4 800598C4 2410003C */   addiu     $s0, $zero, 0x3c
/* 102DD8 800598C8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102DDC 800598CC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102DE0 800598D0 0202001A */  div        $zero, $s0, $v0
/* 102DE4 800598D4 14400002 */  bnez       $v0, .L800598E0
/* 102DE8 800598D8 00000000 */   nop
/* 102DEC 800598DC 0007000D */  break      7
.L800598E0:
/* 102DF0 800598E0 2401FFFF */   addiu     $at, $zero, -1
/* 102DF4 800598E4 14410004 */  bne        $v0, $at, .L800598F8
/* 102DF8 800598E8 3C018000 */   lui       $at, 0x8000
/* 102DFC 800598EC 16010002 */  bne        $s0, $at, .L800598F8
/* 102E00 800598F0 00000000 */   nop
/* 102E04 800598F4 0006000D */  break      6
.L800598F8:
/* 102E08 800598F8 00001012 */   mflo      $v0
/* 102E0C 800598FC 3C013FC0 */  lui        $at, 0x3fc0
/* 102E10 80059900 44811000 */  mtc1       $at, $f2
/* 102E14 80059904 44820000 */  mtc1       $v0, $f0
/* 102E18 80059908 00000000 */  nop
/* 102E1C 8005990C 46800020 */  cvt.s.w    $f0, $f0
/* 102E20 80059910 46020002 */  mul.s      $f0, $f0, $f2
/* 102E24 80059914 3C018007 */  lui        $at, %hi(D_8006C564)
/* 102E28 80059918 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* 102E2C 8005991C 468010A0 */  cvt.s.w    $f2, $f2
/* 102E30 80059920 4600103E */  c.le.s     $f2, $f0
/* 102E34 80059924 00000000 */  nop
/* 102E38 80059928 4500000B */  bc1f       .L80059958
/* 102E3C 8005992C 00000000 */   nop
/* 102E40 80059930 0C00D8C1 */  jal        func_80036304_DF814
/* 102E44 80059934 24040025 */   addiu     $a0, $zero, 0x25
/* 102E48 80059938 8C44000C */  lw         $a0, 0xc($v0)
/* 102E4C 8005993C 0C028A40 */  jal        func_800A2900
/* 102E50 80059940 00000000 */   nop
/* 102E54 80059944 0C00D8C1 */  jal        func_80036304_DF814
/* 102E58 80059948 24040026 */   addiu     $a0, $zero, 0x26
/* 102E5C 8005994C 8C44000C */  lw         $a0, 0xc($v0)
/* 102E60 80059950 0C028A40 */  jal        func_800A2900
/* 102E64 80059954 00000000 */   nop
.L80059958:
/* 102E68 80059958 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102E6C 8005995C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102E70 80059960 0202001A */  div        $zero, $s0, $v0
/* 102E74 80059964 14400002 */  bnez       $v0, .L80059970
/* 102E78 80059968 00000000 */   nop
/* 102E7C 8005996C 0007000D */  break      7
.L80059970:
/* 102E80 80059970 2401FFFF */   addiu     $at, $zero, -1
/* 102E84 80059974 14410004 */  bne        $v0, $at, .L80059988
/* 102E88 80059978 3C018000 */   lui       $at, 0x8000
/* 102E8C 8005997C 16010002 */  bne        $s0, $at, .L80059988
/* 102E90 80059980 00000000 */   nop
/* 102E94 80059984 0006000D */  break      6
.L80059988:
/* 102E98 80059988 00001012 */   mflo      $v0
/* 102E9C 8005998C 3C014040 */  lui        $at, 0x4040
/* 102EA0 80059990 44811000 */  mtc1       $at, $f2
/* 102EA4 80059994 44820000 */  mtc1       $v0, $f0
/* 102EA8 80059998 00000000 */  nop
/* 102EAC 8005999C 46800020 */  cvt.s.w    $f0, $f0
/* 102EB0 800599A0 46020002 */  mul.s      $f0, $f0, $f2
/* 102EB4 800599A4 3C018007 */  lui        $at, %hi(D_8006C564)
/* 102EB8 800599A8 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* 102EBC 800599AC 468010A0 */  cvt.s.w    $f2, $f2
/* 102EC0 800599B0 4600103E */  c.le.s     $f2, $f0
/* 102EC4 800599B4 00000000 */  nop
/* 102EC8 800599B8 4500000B */  bc1f       .L800599E8
/* 102ECC 800599BC 00000000 */   nop
/* 102ED0 800599C0 0C00D8C1 */  jal        func_80036304_DF814
/* 102ED4 800599C4 24040027 */   addiu     $a0, $zero, 0x27
/* 102ED8 800599C8 8C44000C */  lw         $a0, 0xc($v0)
/* 102EDC 800599CC 0C028A40 */  jal        func_800A2900
/* 102EE0 800599D0 00000000 */   nop
/* 102EE4 800599D4 0C00D8C1 */  jal        func_80036304_DF814
/* 102EE8 800599D8 24040028 */   addiu     $a0, $zero, 0x28
/* 102EEC 800599DC 8C44000C */  lw         $a0, 0xc($v0)
/* 102EF0 800599E0 0C028A40 */  jal        func_800A2900
/* 102EF4 800599E4 00000000 */   nop
.L800599E8:
/* 102EF8 800599E8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 102EFC 800599EC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 102F00 800599F0 0202001A */  div        $zero, $s0, $v0
/* 102F04 800599F4 14400002 */  bnez       $v0, .L80059A00
/* 102F08 800599F8 00000000 */   nop
/* 102F0C 800599FC 0007000D */  break      7
.L80059A00:
/* 102F10 80059A00 2401FFFF */   addiu     $at, $zero, -1
/* 102F14 80059A04 14410004 */  bne        $v0, $at, .L80059A18
/* 102F18 80059A08 3C018000 */   lui       $at, 0x8000
/* 102F1C 80059A0C 16010002 */  bne        $s0, $at, .L80059A18
/* 102F20 80059A10 00000000 */   nop
/* 102F24 80059A14 0006000D */  break      6
.L80059A18:
/* 102F28 80059A18 00001012 */   mflo      $v0
/* 102F2C 80059A1C 3C014080 */  lui        $at, 0x4080
/* 102F30 80059A20 44811000 */  mtc1       $at, $f2
/* 102F34 80059A24 44820000 */  mtc1       $v0, $f0
/* 102F38 80059A28 00000000 */  nop
/* 102F3C 80059A2C 46800020 */  cvt.s.w    $f0, $f0
/* 102F40 80059A30 46020002 */  mul.s      $f0, $f0, $f2
/* 102F44 80059A34 3C018007 */  lui        $at, %hi(D_8006C564)
/* 102F48 80059A38 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* 102F4C 80059A3C 468010A0 */  cvt.s.w    $f2, $f2
/* 102F50 80059A40 4600103E */  c.le.s     $f2, $f0
/* 102F54 80059A44 00000000 */  nop
/* 102F58 80059A48 45000006 */  bc1f       .L80059A64
/* 102F5C 80059A4C 00000000 */   nop
/* 102F60 80059A50 0C00D8C1 */  jal        func_80036304_DF814
/* 102F64 80059A54 24040029 */   addiu     $a0, $zero, 0x29
/* 102F68 80059A58 8C44000C */  lw         $a0, 0xc($v0)
/* 102F6C 80059A5C 0C028A40 */  jal        func_800A2900
/* 102F70 80059A60 00000000 */   nop
.L80059A64:
/* 102F74 80059A64 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 102F78 80059A68 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 102F7C 80059A6C 0203001A */  div        $zero, $s0, $v1
/* 102F80 80059A70 14600002 */  bnez       $v1, .L80059A7C
/* 102F84 80059A74 00000000 */   nop
/* 102F88 80059A78 0007000D */  break      7
.L80059A7C:
/* 102F8C 80059A7C 2401FFFF */   addiu     $at, $zero, -1
/* 102F90 80059A80 14610004 */  bne        $v1, $at, .L80059A94
/* 102F94 80059A84 3C018000 */   lui       $at, 0x8000
/* 102F98 80059A88 16010002 */  bne        $s0, $at, .L80059A94
/* 102F9C 80059A8C 00000000 */   nop
/* 102FA0 80059A90 0006000D */  break      6
.L80059A94:
/* 102FA4 80059A94 00001812 */   mflo      $v1
/* 102FA8 80059A98 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 102FAC 80059A9C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 102FB0 80059AA0 0043102A */  slt        $v0, $v0, $v1
/* 102FB4 80059AA4 1440000B */  bnez       $v0, .L80059AD4
/* 102FB8 80059AA8 00000000 */   nop
/* 102FBC 80059AAC 0C00D8C1 */  jal        func_80036304_DF814
/* 102FC0 80059AB0 240420C9 */   addiu     $a0, $zero, 0x20c9
/* 102FC4 80059AB4 8C44000C */  lw         $a0, 0xc($v0)
/* 102FC8 80059AB8 0C028A40 */  jal        func_800A2900
/* 102FCC 80059ABC 00000000 */   nop
/* 102FD0 80059AC0 0C00D8C1 */  jal        func_80036304_DF814
/* 102FD4 80059AC4 240420D3 */   addiu     $a0, $zero, 0x20d3
/* 102FD8 80059AC8 8C44000C */  lw         $a0, 0xc($v0)
/* 102FDC 80059ACC 0C028A40 */  jal        func_800A2900
/* 102FE0 80059AD0 00000000 */   nop
.L80059AD4:
/* 102FE4 80059AD4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 102FE8 80059AD8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 102FEC 80059ADC 0203001A */  div        $zero, $s0, $v1
/* 102FF0 80059AE0 14600002 */  bnez       $v1, .L80059AEC
/* 102FF4 80059AE4 00000000 */   nop
/* 102FF8 80059AE8 0007000D */  break      7
.L80059AEC:
/* 102FFC 80059AEC 2401FFFF */   addiu     $at, $zero, -1
/* 103000 80059AF0 14610004 */  bne        $v1, $at, .L80059B04
/* 103004 80059AF4 3C018000 */   lui       $at, 0x8000
/* 103008 80059AF8 16010002 */  bne        $s0, $at, .L80059B04
/* 10300C 80059AFC 00000000 */   nop
/* 103010 80059B00 0006000D */  break      6
.L80059B04:
/* 103014 80059B04 00001812 */   mflo      $v1
/* 103018 80059B08 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 10301C 80059B0C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 103020 80059B10 000310C0 */  sll        $v0, $v1, 3
/* 103024 80059B14 00431023 */  subu       $v0, $v0, $v1
/* 103028 80059B18 1482034F */  bne        $a0, $v0, .L8005A858
/* 10302C 80059B1C 00001021 */   addu      $v0, $zero, $zero
/* 103030 80059B20 2402001E */  addiu      $v0, $zero, 0x1e
/* 103034 80059B24 08016A15 */  j          .L8005A854
/* 103038 80059B28 A6C2001C */   sh        $v0, 0x1c($s6)
.L80059B2C:
/* 10303C 80059B2C 0C00D8C1 */  jal        func_80036304_DF814
/* 103040 80059B30 24040038 */   addiu     $a0, $zero, 0x38
/* 103044 80059B34 8C44000C */  lw         $a0, 0xc($v0)
/* 103048 80059B38 0C028A40 */  jal        func_800A2900
/* 10304C 80059B3C 00000000 */   nop
/* 103050 80059B40 0C00D8C1 */  jal        func_80036304_DF814
/* 103054 80059B44 2404003B */   addiu     $a0, $zero, 0x3b
/* 103058 80059B48 00408021 */  addu       $s0, $v0, $zero
/* 10305C 80059B4C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 103060 80059B50 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 103064 80059B54 8E04000C */  lw         $a0, 0xc($s0)
/* 103068 80059B58 2405000C */  addiu      $a1, $zero, 0xc
/* 10306C 80059B5C 000317C2 */  srl        $v0, $v1, 0x1f
/* 103070 80059B60 00621021 */  addu       $v0, $v1, $v0
/* 103074 80059B64 00021043 */  sra        $v0, $v0, 1
/* 103078 80059B68 00021040 */  sll        $v0, $v0, 1
/* 10307C 80059B6C 00621823 */  subu       $v1, $v1, $v0
/* 103080 80059B70 00033140 */  sll        $a2, $v1, 5
/* 103084 80059B74 00C33021 */  addu       $a2, $a2, $v1
/* 103088 80059B78 00063140 */  sll        $a2, $a2, 5
/* 10308C 80059B7C 00C33021 */  addu       $a2, $a2, $v1
/* 103090 80059B80 00063080 */  sll        $a2, $a2, 2
/* 103094 80059B84 24C68C61 */  addiu      $a2, $a2, -0x739f
/* 103098 80059B88 0C00DE6C */  jal        func_800379B0_E0EC0
/* 10309C 80059B8C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 1030A0 80059B90 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1030A4 80059B94 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1030A8 80059B98 8E04000C */  lw         $a0, 0xc($s0)
/* 1030AC 80059B9C 2405000D */  addiu      $a1, $zero, 0xd
/* 1030B0 80059BA0 000317C2 */  srl        $v0, $v1, 0x1f
/* 1030B4 80059BA4 00621021 */  addu       $v0, $v1, $v0
/* 1030B8 80059BA8 00021043 */  sra        $v0, $v0, 1
/* 1030BC 80059BAC 00021040 */  sll        $v0, $v0, 1
/* 1030C0 80059BB0 00621823 */  subu       $v1, $v1, $v0
/* 1030C4 80059BB4 00033140 */  sll        $a2, $v1, 5
/* 1030C8 80059BB8 00C33021 */  addu       $a2, $a2, $v1
/* 1030CC 80059BBC 00063140 */  sll        $a2, $a2, 5
/* 1030D0 80059BC0 00C33021 */  addu       $a2, $a2, $v1
/* 1030D4 80059BC4 00063080 */  sll        $a2, $a2, 2
/* 1030D8 80059BC8 24C69CE5 */  addiu      $a2, $a2, -0x631b
/* 1030DC 80059BCC 0C00DE6C */  jal        func_800379B0_E0EC0
/* 1030E0 80059BD0 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 1030E4 80059BD4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1030E8 80059BD8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1030EC 80059BDC 8E04000C */  lw         $a0, 0xc($s0)
/* 1030F0 80059BE0 2405000E */  addiu      $a1, $zero, 0xe
/* 1030F4 80059BE4 000317C2 */  srl        $v0, $v1, 0x1f
/* 1030F8 80059BE8 00621021 */  addu       $v0, $v1, $v0
/* 1030FC 80059BEC 00021043 */  sra        $v0, $v0, 1
/* 103100 80059BF0 00021040 */  sll        $v0, $v0, 1
/* 103104 80059BF4 00621823 */  subu       $v1, $v1, $v0
/* 103108 80059BF8 00033140 */  sll        $a2, $v1, 5
/* 10310C 80059BFC 00C33021 */  addu       $a2, $a2, $v1
/* 103110 80059C00 00063140 */  sll        $a2, $a2, 5
/* 103114 80059C04 00C33021 */  addu       $a2, $a2, $v1
/* 103118 80059C08 00063080 */  sll        $a2, $a2, 2
/* 10311C 80059C0C 24C6AD69 */  addiu      $a2, $a2, -0x5297
/* 103120 80059C10 0C00DE6C */  jal        func_800379B0_E0EC0
/* 103124 80059C14 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 103128 80059C18 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 10312C 80059C1C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 103130 80059C20 8E04000C */  lw         $a0, 0xc($s0)
/* 103134 80059C24 2405000F */  addiu      $a1, $zero, 0xf
/* 103138 80059C28 000317C2 */  srl        $v0, $v1, 0x1f
/* 10313C 80059C2C 00621021 */  addu       $v0, $v1, $v0
/* 103140 80059C30 00021043 */  sra        $v0, $v0, 1
/* 103144 80059C34 00021040 */  sll        $v0, $v0, 1
/* 103148 80059C38 00621823 */  subu       $v1, $v1, $v0
/* 10314C 80059C3C 00033140 */  sll        $a2, $v1, 5
/* 103150 80059C40 00C33021 */  addu       $a2, $a2, $v1
/* 103154 80059C44 00063140 */  sll        $a2, $a2, 5
/* 103158 80059C48 00C33021 */  addu       $a2, $a2, $v1
/* 10315C 80059C4C 00063080 */  sll        $a2, $a2, 2
/* 103160 80059C50 24C6D671 */  addiu      $a2, $a2, -0x298f
/* 103164 80059C54 0C00DE6C */  jal        func_800379B0_E0EC0
/* 103168 80059C58 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 10316C 80059C5C 8E04000C */  lw         $a0, 0xc($s0)
/* 103170 80059C60 0C028A40 */  jal        func_800A2900
/* 103174 80059C64 00000000 */   nop
/* 103178 80059C68 0C00D8C1 */  jal        func_80036304_DF814
/* 10317C 80059C6C 2404003C */   addiu     $a0, $zero, 0x3c
/* 103180 80059C70 00408021 */  addu       $s0, $v0, $zero
/* 103184 80059C74 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 103188 80059C78 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 10318C 80059C7C 8E04000C */  lw         $a0, 0xc($s0)
/* 103190 80059C80 2405000C */  addiu      $a1, $zero, 0xc
/* 103194 80059C84 000317C2 */  srl        $v0, $v1, 0x1f
/* 103198 80059C88 00621021 */  addu       $v0, $v1, $v0
/* 10319C 80059C8C 00021043 */  sra        $v0, $v0, 1
/* 1031A0 80059C90 00021040 */  sll        $v0, $v0, 1
/* 1031A4 80059C94 00621823 */  subu       $v1, $v1, $v0
/* 1031A8 80059C98 00033140 */  sll        $a2, $v1, 5
/* 1031AC 80059C9C 00C33021 */  addu       $a2, $a2, $v1
/* 1031B0 80059CA0 00063140 */  sll        $a2, $a2, 5
/* 1031B4 80059CA4 00C33021 */  addu       $a2, $a2, $v1
/* 1031B8 80059CA8 00063080 */  sll        $a2, $a2, 2
/* 1031BC 80059CAC 24C68C61 */  addiu      $a2, $a2, -0x739f
/* 1031C0 80059CB0 0C00DE6C */  jal        func_800379B0_E0EC0
/* 1031C4 80059CB4 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 1031C8 80059CB8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1031CC 80059CBC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1031D0 80059CC0 8E04000C */  lw         $a0, 0xc($s0)
/* 1031D4 80059CC4 2405000D */  addiu      $a1, $zero, 0xd
/* 1031D8 80059CC8 000317C2 */  srl        $v0, $v1, 0x1f
/* 1031DC 80059CCC 00621021 */  addu       $v0, $v1, $v0
/* 1031E0 80059CD0 00021043 */  sra        $v0, $v0, 1
/* 1031E4 80059CD4 00021040 */  sll        $v0, $v0, 1
/* 1031E8 80059CD8 00621823 */  subu       $v1, $v1, $v0
/* 1031EC 80059CDC 00033140 */  sll        $a2, $v1, 5
/* 1031F0 80059CE0 00C33021 */  addu       $a2, $a2, $v1
/* 1031F4 80059CE4 00063140 */  sll        $a2, $a2, 5
/* 1031F8 80059CE8 00C33021 */  addu       $a2, $a2, $v1
/* 1031FC 80059CEC 00063080 */  sll        $a2, $a2, 2
/* 103200 80059CF0 24C69CE5 */  addiu      $a2, $a2, -0x631b
/* 103204 80059CF4 0C00DE6C */  jal        func_800379B0_E0EC0
/* 103208 80059CF8 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 10320C 80059CFC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 103210 80059D00 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 103214 80059D04 8E04000C */  lw         $a0, 0xc($s0)
/* 103218 80059D08 2405000E */  addiu      $a1, $zero, 0xe
/* 10321C 80059D0C 000317C2 */  srl        $v0, $v1, 0x1f
/* 103220 80059D10 00621021 */  addu       $v0, $v1, $v0
/* 103224 80059D14 00021043 */  sra        $v0, $v0, 1
/* 103228 80059D18 00021040 */  sll        $v0, $v0, 1
/* 10322C 80059D1C 00621823 */  subu       $v1, $v1, $v0
/* 103230 80059D20 00033140 */  sll        $a2, $v1, 5
/* 103234 80059D24 00C33021 */  addu       $a2, $a2, $v1
/* 103238 80059D28 00063140 */  sll        $a2, $a2, 5
/* 10323C 80059D2C 00C33021 */  addu       $a2, $a2, $v1
/* 103240 80059D30 00063080 */  sll        $a2, $a2, 2
/* 103244 80059D34 24C6AD69 */  addiu      $a2, $a2, -0x5297
/* 103248 80059D38 0C00DE6C */  jal        func_800379B0_E0EC0
/* 10324C 80059D3C 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 103250 80059D40 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 103254 80059D44 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 103258 80059D48 8E04000C */  lw         $a0, 0xc($s0)
/* 10325C 80059D4C 2405000F */  addiu      $a1, $zero, 0xf
/* 103260 80059D50 000317C2 */  srl        $v0, $v1, 0x1f
/* 103264 80059D54 00621021 */  addu       $v0, $v1, $v0
/* 103268 80059D58 00021043 */  sra        $v0, $v0, 1
/* 10326C 80059D5C 00021040 */  sll        $v0, $v0, 1
/* 103270 80059D60 00621823 */  subu       $v1, $v1, $v0
/* 103274 80059D64 00033140 */  sll        $a2, $v1, 5
/* 103278 80059D68 00C33021 */  addu       $a2, $a2, $v1
/* 10327C 80059D6C 00063140 */  sll        $a2, $a2, 5
/* 103280 80059D70 00C33021 */  addu       $a2, $a2, $v1
/* 103284 80059D74 00063080 */  sll        $a2, $a2, 2
/* 103288 80059D78 24C6D671 */  addiu      $a2, $a2, -0x298f
/* 10328C 80059D7C 0C00DE6C */  jal        func_800379B0_E0EC0
/* 103290 80059D80 30C6FFFF */   andi      $a2, $a2, 0xffff
/* 103294 80059D84 8E04000C */  lw         $a0, 0xc($s0)
/* 103298 80059D88 0C028A40 */  jal        func_800A2900
/* 10329C 80059D8C 00000000 */   nop
/* 1032A0 80059D90 0C00D8C1 */  jal        func_80036304_DF814
/* 1032A4 80059D94 24040039 */   addiu     $a0, $zero, 0x39
/* 1032A8 80059D98 00408021 */  addu       $s0, $v0, $zero
/* 1032AC 80059D9C 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* 1032B0 80059DA0 C420C1C8 */  lwc1       $f0, %lo(D_8006C1C8)($at)
/* 1032B4 80059DA4 8E04000C */  lw         $a0, 0xc($s0)
/* 1032B8 80059DA8 44060000 */  mfc1       $a2, $f0
/* 1032BC 80059DAC 00002821 */  addu       $a1, $zero, $zero
/* 1032C0 80059DB0 0C02915B */  jal        func_800A456C
/* 1032C4 80059DB4 00C03821 */   addu      $a3, $a2, $zero
/* 1032C8 80059DB8 8E04000C */  lw         $a0, 0xc($s0)
/* 1032CC 80059DBC 0C028A40 */  jal        func_800A2900
/* 1032D0 80059DC0 00000000 */   nop
/* 1032D4 80059DC4 0C00D8C1 */  jal        func_80036304_DF814
/* 1032D8 80059DC8 2404003A */   addiu     $a0, $zero, 0x3a
/* 1032DC 80059DCC 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* 1032E0 80059DD0 C422C1C8 */  lwc1       $f2, %lo(D_8006C1C8)($at)
/* 1032E4 80059DD4 3C018007 */  lui        $at, %hi(D_8006C1D4)
/* 1032E8 80059DD8 C420C1D4 */  lwc1       $f0, %lo(D_8006C1D4)($at)
/* 1032EC 80059DDC 46001080 */  add.s      $f2, $f2, $f0
/* 1032F0 80059DE0 00408021 */  addu       $s0, $v0, $zero
/* 1032F4 80059DE4 8E04000C */  lw         $a0, 0xc($s0)
/* 1032F8 80059DE8 44061000 */  mfc1       $a2, $f2
/* 1032FC 80059DEC 00002821 */  addu       $a1, $zero, $zero
/* 103300 80059DF0 0C02915B */  jal        func_800A456C
/* 103304 80059DF4 00C03821 */   addu      $a3, $a2, $zero
/* 103308 80059DF8 8E04000C */  lw         $a0, 0xc($s0)
/* 10330C 80059DFC 0C028A40 */  jal        func_800A2900
/* 103310 80059E00 00000000 */   nop
/* 103314 80059E04 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* 103318 80059E08 C424C1C8 */  lwc1       $f4, %lo(D_8006C1C8)($at)
/* 10331C 80059E0C 3C013CA3 */  lui        $at, 0x3ca3
/* 103320 80059E10 3421D70A */  ori        $at, $at, 0xd70a
/* 103324 80059E14 44810000 */  mtc1       $at, $f0
/* 103328 80059E18 3C018007 */  lui        $at, %hi(D_8006C1D4)
/* 10332C 80059E1C C422C1D4 */  lwc1       $f2, %lo(D_8006C1D4)($at)
/* 103330 80059E20 46002100 */  add.s      $f4, $f4, $f0
/* 103334 80059E24 3C013A83 */  lui        $at, 0x3a83
/* 103338 80059E28 3421126F */  ori        $at, $at, 0x126f
/* 10333C 80059E2C 44810000 */  mtc1       $at, $f0
/* 103340 80059E30 00000000 */  nop
/* 103344 80059E34 46001080 */  add.s      $f2, $f2, $f0
/* 103348 80059E38 3C018007 */  lui        $at, %hi(D_8006C1C8)
/* 10334C 80059E3C E424C1C8 */  swc1       $f4, %lo(D_8006C1C8)($at)
/* 103350 80059E40 3C018007 */  lui        $at, %hi(D_8006C1D4)
/* 103354 80059E44 E422C1D4 */  swc1       $f2, %lo(D_8006C1D4)($at)
/* 103358 80059E48 0C00D8C1 */  jal        func_80036304_DF814
/* 10335C 80059E4C 240420C9 */   addiu     $a0, $zero, 0x20c9
/* 103360 80059E50 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 103364 80059E54 C422C1F8 */  lwc1       $f2, %lo(D_8006C1F8)($at)
/* 103368 80059E58 3C014F00 */  lui        $at, 0x4f00
/* 10336C 80059E5C 44810000 */  mtc1       $at, $f0
/* 103370 80059E60 00000000 */  nop
/* 103374 80059E64 4602003E */  c.le.s     $f0, $f2
/* 103378 80059E68 00000000 */  nop
/* 10337C 80059E6C 00000000 */  nop
/* 103380 80059E70 45010006 */  bc1t       .L80059E8C
/* 103384 80059E74 00408021 */   addu      $s0, $v0, $zero
/* 103388 80059E78 4600100D */  trunc.w.s  $f0, $f2
/* 10338C 80059E7C 44030000 */  mfc1       $v1, $f0
/* 103390 80059E80 00000000 */  nop
/* 103394 80059E84 080167A9 */  j          .L80059EA4
/* 103398 80059E88 306200FF */   andi      $v0, $v1, 0xff
.L80059E8C:
/* 10339C 80059E8C 46001001 */  sub.s      $f0, $f2, $f0
/* 1033A0 80059E90 4600008D */  trunc.w.s  $f2, $f0
/* 1033A4 80059E94 44031000 */  mfc1       $v1, $f2
/* 1033A8 80059E98 3C028000 */  lui        $v0, 0x8000
/* 1033AC 80059E9C 00621825 */  or         $v1, $v1, $v0
/* 1033B0 80059EA0 306200FF */  andi       $v0, $v1, 0xff
.L80059EA4:
/* 1033B4 80059EA4 AFA20010 */  sw         $v0, 0x10($sp)
/* 1033B8 80059EA8 8E04000C */  lw         $a0, 0xc($s0)
/* 1033BC 80059EAC 240500FF */  addiu      $a1, $zero, 0xff
/* 1033C0 80059EB0 240600FF */  addiu      $a2, $zero, 0xff
/* 1033C4 80059EB4 0C028E41 */  jal        func_800A3904
/* 1033C8 80059EB8 240700FF */   addiu     $a3, $zero, 0xff
/* 1033CC 80059EBC 8E04000C */  lw         $a0, 0xc($s0)
/* 1033D0 80059EC0 0C028A40 */  jal        func_800A2900
/* 1033D4 80059EC4 00000000 */   nop
/* 1033D8 80059EC8 0C00D8C1 */  jal        func_80036304_DF814
/* 1033DC 80059ECC 240420D3 */   addiu     $a0, $zero, 0x20d3
/* 1033E0 80059ED0 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 1033E4 80059ED4 C422C1F8 */  lwc1       $f2, %lo(D_8006C1F8)($at)
/* 1033E8 80059ED8 3C013F4C */  lui        $at, 0x3f4c
/* 1033EC 80059EDC 3421CCCD */  ori        $at, $at, 0xcccd
/* 1033F0 80059EE0 44810000 */  mtc1       $at, $f0
/* 1033F4 80059EE4 00000000 */  nop
/* 1033F8 80059EE8 46001082 */  mul.s      $f2, $f2, $f0
/* 1033FC 80059EEC 3C014F00 */  lui        $at, 0x4f00
/* 103400 80059EF0 44810000 */  mtc1       $at, $f0
/* 103404 80059EF4 00000000 */  nop
/* 103408 80059EF8 4602003E */  c.le.s     $f0, $f2
/* 10340C 80059EFC 00000000 */  nop
/* 103410 80059F00 00000000 */  nop
/* 103414 80059F04 45010006 */  bc1t       .L80059F20
/* 103418 80059F08 00408021 */   addu      $s0, $v0, $zero
/* 10341C 80059F0C 4600100D */  trunc.w.s  $f0, $f2
/* 103420 80059F10 44030000 */  mfc1       $v1, $f0
/* 103424 80059F14 00000000 */  nop
/* 103428 80059F18 080167CE */  j          .L80059F38
/* 10342C 80059F1C 306200FF */   andi      $v0, $v1, 0xff
.L80059F20:
/* 103430 80059F20 46001001 */  sub.s      $f0, $f2, $f0
/* 103434 80059F24 4600008D */  trunc.w.s  $f2, $f0
/* 103438 80059F28 44031000 */  mfc1       $v1, $f2
/* 10343C 80059F2C 3C028000 */  lui        $v0, 0x8000
/* 103440 80059F30 00621825 */  or         $v1, $v1, $v0
/* 103444 80059F34 306200FF */  andi       $v0, $v1, 0xff
.L80059F38:
/* 103448 80059F38 AFA20010 */  sw         $v0, 0x10($sp)
/* 10344C 80059F3C 8E04000C */  lw         $a0, 0xc($s0)
/* 103450 80059F40 240500FF */  addiu      $a1, $zero, 0xff
/* 103454 80059F44 240600FF */  addiu      $a2, $zero, 0xff
/* 103458 80059F48 0C028E41 */  jal        func_800A3904
/* 10345C 80059F4C 240700FF */   addiu     $a3, $zero, 0xff
/* 103460 80059F50 8E04000C */  lw         $a0, 0xc($s0)
/* 103464 80059F54 0C028A40 */  jal        func_800A2900
/* 103468 80059F58 00000000 */   nop
/* 10346C 80059F5C 0C00D8C1 */  jal        func_80036304_DF814
/* 103470 80059F60 240420CA */   addiu     $a0, $zero, 0x20ca
/* 103474 80059F64 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 103478 80059F68 C422C1FC */  lwc1       $f2, %lo(D_8006C1FC)($at)
/* 10347C 80059F6C 3C014F00 */  lui        $at, 0x4f00
/* 103480 80059F70 44810000 */  mtc1       $at, $f0
/* 103484 80059F74 00000000 */  nop
/* 103488 80059F78 4602003E */  c.le.s     $f0, $f2
/* 10348C 80059F7C 00000000 */  nop
/* 103490 80059F80 00000000 */  nop
/* 103494 80059F84 45010006 */  bc1t       .L80059FA0
/* 103498 80059F88 00408021 */   addu      $s0, $v0, $zero
/* 10349C 80059F8C 4600100D */  trunc.w.s  $f0, $f2
/* 1034A0 80059F90 44030000 */  mfc1       $v1, $f0
/* 1034A4 80059F94 00000000 */  nop
/* 1034A8 80059F98 080167EE */  j          .L80059FB8
/* 1034AC 80059F9C 306200FF */   andi      $v0, $v1, 0xff
.L80059FA0:
/* 1034B0 80059FA0 46001001 */  sub.s      $f0, $f2, $f0
/* 1034B4 80059FA4 4600008D */  trunc.w.s  $f2, $f0
/* 1034B8 80059FA8 44031000 */  mfc1       $v1, $f2
/* 1034BC 80059FAC 3C028000 */  lui        $v0, 0x8000
/* 1034C0 80059FB0 00621825 */  or         $v1, $v1, $v0
/* 1034C4 80059FB4 306200FF */  andi       $v0, $v1, 0xff
.L80059FB8:
/* 1034C8 80059FB8 AFA20010 */  sw         $v0, 0x10($sp)
/* 1034CC 80059FBC 8E04000C */  lw         $a0, 0xc($s0)
/* 1034D0 80059FC0 240500FF */  addiu      $a1, $zero, 0xff
/* 1034D4 80059FC4 240600FF */  addiu      $a2, $zero, 0xff
/* 1034D8 80059FC8 0C028E41 */  jal        func_800A3904
/* 1034DC 80059FCC 240700FF */   addiu     $a3, $zero, 0xff
/* 1034E0 80059FD0 8E04000C */  lw         $a0, 0xc($s0)
/* 1034E4 80059FD4 0C028A40 */  jal        func_800A2900
/* 1034E8 80059FD8 00000000 */   nop
/* 1034EC 80059FDC 0C00D8C1 */  jal        func_80036304_DF814
/* 1034F0 80059FE0 240420D4 */   addiu     $a0, $zero, 0x20d4
/* 1034F4 80059FE4 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 1034F8 80059FE8 C422C1FC */  lwc1       $f2, %lo(D_8006C1FC)($at)
/* 1034FC 80059FEC 3C013F4C */  lui        $at, 0x3f4c
/* 103500 80059FF0 3421CCCD */  ori        $at, $at, 0xcccd
/* 103504 80059FF4 44810000 */  mtc1       $at, $f0
/* 103508 80059FF8 00000000 */  nop
/* 10350C 80059FFC 46001082 */  mul.s      $f2, $f2, $f0
/* 103510 8005A000 3C014F00 */  lui        $at, 0x4f00
/* 103514 8005A004 44810000 */  mtc1       $at, $f0
/* 103518 8005A008 00000000 */  nop
/* 10351C 8005A00C 4602003E */  c.le.s     $f0, $f2
/* 103520 8005A010 00000000 */  nop
/* 103524 8005A014 00000000 */  nop
/* 103528 8005A018 45010006 */  bc1t       .L8005A034
/* 10352C 8005A01C 00408021 */   addu      $s0, $v0, $zero
/* 103530 8005A020 4600100D */  trunc.w.s  $f0, $f2
/* 103534 8005A024 44030000 */  mfc1       $v1, $f0
/* 103538 8005A028 00000000 */  nop
/* 10353C 8005A02C 08016813 */  j          .L8005A04C
/* 103540 8005A030 306200FF */   andi      $v0, $v1, 0xff
.L8005A034:
/* 103544 8005A034 46001001 */  sub.s      $f0, $f2, $f0
/* 103548 8005A038 4600008D */  trunc.w.s  $f2, $f0
/* 10354C 8005A03C 44031000 */  mfc1       $v1, $f2
/* 103550 8005A040 3C028000 */  lui        $v0, 0x8000
/* 103554 8005A044 00621825 */  or         $v1, $v1, $v0
/* 103558 8005A048 306200FF */  andi       $v0, $v1, 0xff
.L8005A04C:
/* 10355C 8005A04C AFA20010 */  sw         $v0, 0x10($sp)
/* 103560 8005A050 8E04000C */  lw         $a0, 0xc($s0)
/* 103564 8005A054 240500FF */  addiu      $a1, $zero, 0xff
/* 103568 8005A058 240600FF */  addiu      $a2, $zero, 0xff
/* 10356C 8005A05C 0C028E41 */  jal        func_800A3904
/* 103570 8005A060 240700FF */   addiu     $a3, $zero, 0xff
/* 103574 8005A064 8E04000C */  lw         $a0, 0xc($s0)
/* 103578 8005A068 0C028A40 */  jal        func_800A2900
/* 10357C 8005A06C 00000000 */   nop
/* 103580 8005A070 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 103584 8005A074 C424C1F8 */  lwc1       $f4, %lo(D_8006C1F8)($at)
/* 103588 8005A078 44800000 */  mtc1       $zero, $f0
/* 10358C 8005A07C 00000000 */  nop
/* 103590 8005A080 4604003C */  c.lt.s     $f0, $f4
/* 103594 8005A084 00000000 */  nop
/* 103598 8005A088 4500000C */  bc1f       .L8005A0BC
/* 10359C 8005A08C 00000000 */   nop
/* 1035A0 8005A090 3C014100 */  lui        $at, 0x4100
/* 1035A4 8005A094 44810000 */  mtc1       $at, $f0
/* 1035A8 8005A098 00000000 */  nop
/* 1035AC 8005A09C 46002101 */  sub.s      $f4, $f4, $f0
/* 1035B0 8005A0A0 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 1035B4 8005A0A4 C422C1FC */  lwc1       $f2, %lo(D_8006C1FC)($at)
/* 1035B8 8005A0A8 46001080 */  add.s      $f2, $f2, $f0
/* 1035BC 8005A0AC 3C018007 */  lui        $at, %hi(D_8006C1F8)
/* 1035C0 8005A0B0 E424C1F8 */  swc1       $f4, %lo(D_8006C1F8)($at)
/* 1035C4 8005A0B4 3C018007 */  lui        $at, %hi(D_8006C1FC)
/* 1035C8 8005A0B8 E422C1FC */  swc1       $f2, %lo(D_8006C1FC)($at)
.L8005A0BC:
/* 1035CC 8005A0BC 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 1035D0 8005A0C0 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 1035D4 8005A0C4 2410003C */  addiu      $s0, $zero, 0x3c
/* 1035D8 8005A0C8 0203001A */  div        $zero, $s0, $v1
/* 1035DC 8005A0CC 14600002 */  bnez       $v1, .L8005A0D8
/* 1035E0 8005A0D0 00000000 */   nop
/* 1035E4 8005A0D4 0007000D */  break      7
.L8005A0D8:
/* 1035E8 8005A0D8 2401FFFF */   addiu     $at, $zero, -1
/* 1035EC 8005A0DC 14610004 */  bne        $v1, $at, .L8005A0F0
/* 1035F0 8005A0E0 3C018000 */   lui       $at, 0x8000
/* 1035F4 8005A0E4 16010002 */  bne        $s0, $at, .L8005A0F0
/* 1035F8 8005A0E8 00000000 */   nop
/* 1035FC 8005A0EC 0006000D */  break      6
.L8005A0F0:
/* 103600 8005A0F0 00001812 */   mflo      $v1
/* 103604 8005A0F4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 103608 8005A0F8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 10360C 8005A0FC 00033040 */  sll        $a2, $v1, 1
/* 103610 8005A100 00C31021 */  addu       $v0, $a2, $v1
/* 103614 8005A104 00021080 */  sll        $v0, $v0, 2
/* 103618 8005A108 00431021 */  addu       $v0, $v0, $v1
/* 10361C 8005A10C 14820006 */  bne        $a0, $v0, .L8005A128
/* 103620 8005A110 2404FFFE */   addiu     $a0, $zero, -2
/* 103624 8005A114 AFA00010 */  sw         $zero, 0x10($sp)
/* 103628 8005A118 2405FFFF */  addiu      $a1, $zero, -1
/* 10362C 8005A11C 30C6FFFE */  andi       $a2, $a2, 0xfffe
/* 103630 8005A120 0C026C9A */  jal        func_8009B268
/* 103634 8005A124 00003821 */   addu      $a3, $zero, $zero
.L8005A128:
/* 103638 8005A128 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 10363C 8005A12C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 103640 8005A130 0203001A */  div        $zero, $s0, $v1
/* 103644 8005A134 14600002 */  bnez       $v1, .L8005A140
/* 103648 8005A138 00000000 */   nop
/* 10364C 8005A13C 0007000D */  break      7
.L8005A140:
/* 103650 8005A140 2401FFFF */   addiu     $at, $zero, -1
/* 103654 8005A144 14610004 */  bne        $v1, $at, .L8005A158
/* 103658 8005A148 3C018000 */   lui       $at, 0x8000
/* 10365C 8005A14C 16010002 */  bne        $s0, $at, .L8005A158
/* 103660 8005A150 00000000 */   nop
/* 103664 8005A154 0006000D */  break      6
.L8005A158:
/* 103668 8005A158 00001812 */   mflo      $v1
/* 10366C 8005A15C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 103670 8005A160 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 103674 8005A164 00031100 */  sll        $v0, $v1, 4
/* 103678 8005A168 00431023 */  subu       $v0, $v0, $v1
/* 10367C 8005A16C 148201BA */  bne        $a0, $v0, .L8005A858
/* 103680 8005A170 00001021 */   addu      $v0, $zero, $zero
/* 103684 8005A174 2402001F */  addiu      $v0, $zero, 0x1f
/* 103688 8005A178 08016A15 */  j          .L8005A854
/* 10368C 8005A17C A6C2001C */   sh        $v0, 0x1c($s6)
.L8005A180:
/* 103690 8005A180 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 103694 8005A184 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 103698 8005A188 14400003 */  bnez       $v0, .L8005A198
/* 10369C 8005A18C 00000000 */   nop
/* 1036A0 8005A190 0C01465B */  jal        func_8005196C_FAE7C
/* 1036A4 8005A194 00000000 */   nop
.L8005A198:
/* 1036A8 8005A198 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 1036AC 8005A19C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 1036B0 8005A1A0 24020002 */  addiu      $v0, $zero, 2
/* 1036B4 8005A1A4 146201AC */  bne        $v1, $v0, .L8005A858
/* 1036B8 8005A1A8 00001021 */   addu      $v0, $zero, $zero
/* 1036BC 8005A1AC 0C02A5AF */  jal        func_800A96BC
/* 1036C0 8005A1B0 24040001 */   addiu     $a0, $zero, 1
/* 1036C4 8005A1B4 24050010 */  addiu      $a1, $zero, 0x10
/* 1036C8 8005A1B8 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 1036CC 8005A1BC 8C84C1B4 */  lw         $a0, %lo(D_8006C1B4)($a0)
/* 1036D0 8005A1C0 24060010 */  addiu      $a2, $zero, 0x10
/* 1036D4 8005A1C4 24070130 */  addiu      $a3, $zero, 0x130
/* 1036D8 8005A1C8 240200E0 */  addiu      $v0, $zero, 0xe0
/* 1036DC 8005A1CC 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 1036E0 8005A1D0 A420C1E4 */  sh         $zero, %lo(D_8006C1E4)($at)
/* 1036E4 8005A1D4 0C02939C */  jal        func_800A4E70
/* 1036E8 8005A1D8 AFA20010 */   sw        $v0, 0x10($sp)
/* 1036EC 8005A1DC 24020020 */  addiu      $v0, $zero, 0x20
/* 1036F0 8005A1E0 08016A15 */  j          .L8005A854
/* 1036F4 8005A1E4 A6C2001C */   sh        $v0, 0x1c($s6)
.L8005A1E8:
/* 1036F8 8005A1E8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1036FC 8005A1EC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 103700 8005A1F0 14400003 */  bnez       $v0, .L8005A200
/* 103704 8005A1F4 00000000 */   nop
/* 103708 8005A1F8 0C026DD5 */  jal        func_8009B754
/* 10370C 8005A1FC 24040062 */   addiu     $a0, $zero, 0x62
.L8005A200:
/* 103710 8005A200 0C00D8C1 */  jal        func_80036304_DF814
/* 103714 8005A204 24040036 */   addiu     $a0, $zero, 0x36
/* 103718 8005A208 8C44000C */  lw         $a0, 0xc($v0)
/* 10371C 8005A20C 0C028A40 */  jal        func_800A2900
/* 103720 8005A210 00000000 */   nop
/* 103724 8005A214 0C00D8C1 */  jal        func_80036304_DF814
/* 103728 8005A218 2404004A */   addiu     $a0, $zero, 0x4a
/* 10372C 8005A21C 8C44000C */  lw         $a0, 0xc($v0)
/* 103730 8005A220 0C028A40 */  jal        func_800A2900
/* 103734 8005A224 00000000 */   nop
/* 103738 8005A228 0C00D8C1 */  jal        func_80036304_DF814
/* 10373C 8005A22C 2404004B */   addiu     $a0, $zero, 0x4b
/* 103740 8005A230 8C44000C */  lw         $a0, 0xc($v0)
/* 103744 8005A234 0C028A40 */  jal        func_800A2900
/* 103748 8005A238 00000000 */   nop
/* 10374C 8005A23C 0C00D8C1 */  jal        func_80036304_DF814
/* 103750 8005A240 24040052 */   addiu     $a0, $zero, 0x52
/* 103754 8005A244 8C44000C */  lw         $a0, 0xc($v0)
/* 103758 8005A248 0C028A40 */  jal        func_800A2900
/* 10375C 8005A24C 00000000 */   nop
/* 103760 8005A250 0C00D8C1 */  jal        func_80036304_DF814
/* 103764 8005A254 24040053 */   addiu     $a0, $zero, 0x53
/* 103768 8005A258 8C44000C */  lw         $a0, 0xc($v0)
/* 10376C 8005A25C 0C028A40 */  jal        func_800A2900
/* 103770 8005A260 00000000 */   nop
/* 103774 8005A264 0C00D8C1 */  jal        func_80036304_DF814
/* 103778 8005A268 2404004C */   addiu     $a0, $zero, 0x4c
/* 10377C 8005A26C 8C44000C */  lw         $a0, 0xc($v0)
/* 103780 8005A270 0C028A40 */  jal        func_800A2900
/* 103784 8005A274 00000000 */   nop
/* 103788 8005A278 0C00D8C1 */  jal        func_80036304_DF814
/* 10378C 8005A27C 2404004D */   addiu     $a0, $zero, 0x4d
/* 103790 8005A280 8C44000C */  lw         $a0, 0xc($v0)
/* 103794 8005A284 0C028A40 */  jal        func_800A2900
/* 103798 8005A288 00000000 */   nop
/* 10379C 8005A28C 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 1037A0 8005A290 8442C1E4 */  lh         $v0, %lo(D_8006C1E4)($v0)
/* 1037A4 8005A294 00401821 */  addu       $v1, $v0, $zero
/* 1037A8 8005A298 28420004 */  slti       $v0, $v0, 4
/* 1037AC 8005A29C 54400003 */  bnezl      $v0, .L8005A2AC
/* 1037B0 8005A2A0 24040051 */   addiu     $a0, $zero, 0x51
/* 1037B4 8005A2A4 080168AD */  j          .L8005A2B4
/* 1037B8 8005A2A8 2404004E */   addiu     $a0, $zero, 0x4e
.L8005A2AC:
/* 1037BC 8005A2AC 00832023 */  subu       $a0, $a0, $v1
/* 1037C0 8005A2B0 3084FFFF */  andi       $a0, $a0, 0xffff
.L8005A2B4:
/* 1037C4 8005A2B4 0C00D8C1 */  jal        func_80036304_DF814
/* 1037C8 8005A2B8 00009021 */   addu      $s2, $zero, $zero
/* 1037CC 8005A2BC 00408021 */  addu       $s0, $v0, $zero
/* 1037D0 8005A2C0 8E04000C */  lw         $a0, 0xc($s0)
/* 1037D4 8005A2C4 0C028A40 */  jal        func_800A2900
/* 1037D8 8005A2C8 27B40018 */   addiu     $s4, $sp, 0x18
/* 1037DC 8005A2CC 00008821 */  addu       $s1, $zero, $zero
.L8005A2D0:
/* 1037E0 8005A2D0 3253FFFF */  andi       $s3, $s2, 0xffff
/* 1037E4 8005A2D4 001310C0 */  sll        $v0, $s3, 3
/* 1037E8 8005A2D8 0053A823 */  subu       $s5, $v0, $s3
/* 1037EC 8005A2DC 02352021 */  addu       $a0, $s1, $s5
.L8005A2E0:
/* 1037F0 8005A2E0 24840054 */  addiu      $a0, $a0, 0x54
/* 1037F4 8005A2E4 0C00D8C1 */  jal        func_80036304_DF814
/* 1037F8 8005A2E8 3084FFFF */   andi      $a0, $a0, 0xffff
/* 1037FC 8005A2EC 3C048007 */  lui        $a0, %hi(D_8006C1E4)
/* 103800 8005A2F0 8484C1E4 */  lh         $a0, %lo(D_8006C1E4)($a0)
/* 103804 8005A2F4 00041840 */  sll        $v1, $a0, 1
/* 103808 8005A2F8 00641821 */  addu       $v1, $v1, $a0
/* 10380C 8005A2FC 00031840 */  sll        $v1, $v1, 1
/* 103810 8005A300 00741821 */  addu       $v1, $v1, $s4
/* 103814 8005A304 00731821 */  addu       $v1, $v1, $s3
/* 103818 8005A308 90640100 */  lbu        $a0, 0x100($v1)
/* 10381C 8005A30C 000418C0 */  sll        $v1, $a0, 3
/* 103820 8005A310 00641823 */  subu       $v1, $v1, $a0
/* 103824 8005A314 00741821 */  addu       $v1, $v1, $s4
/* 103828 8005A318 3224FFFF */  andi       $a0, $s1, 0xffff
/* 10382C 8005A31C 00641821 */  addu       $v1, $v1, $a0
/* 103830 8005A320 906300B8 */  lbu        $v1, 0xb8($v1)
/* 103834 8005A324 00408021 */  addu       $s0, $v0, $zero
/* 103838 8005A328 240500FF */  addiu      $a1, $zero, 0xff
/* 10383C 8005A32C 00031200 */  sll        $v0, $v1, 8
/* 103840 8005A330 00431023 */  subu       $v0, $v0, $v1
/* 103844 8005A334 304200FF */  andi       $v0, $v0, 0xff
/* 103848 8005A338 AFA20010 */  sw         $v0, 0x10($sp)
/* 10384C 8005A33C 8E04000C */  lw         $a0, 0xc($s0)
/* 103850 8005A340 240600FF */  addiu      $a2, $zero, 0xff
/* 103854 8005A344 0C028E41 */  jal        func_800A3904
/* 103858 8005A348 240700FF */   addiu     $a3, $zero, 0xff
/* 10385C 8005A34C 8E04000C */  lw         $a0, 0xc($s0)
/* 103860 8005A350 0C028A40 */  jal        func_800A2900
/* 103864 8005A354 26310001 */   addiu     $s1, $s1, 1
/* 103868 8005A358 3222FFFF */  andi       $v0, $s1, 0xffff
/* 10386C 8005A35C 2C420007 */  sltiu      $v0, $v0, 7
/* 103870 8005A360 1440FFDF */  bnez       $v0, .L8005A2E0
/* 103874 8005A364 02352021 */   addu      $a0, $s1, $s5
/* 103878 8005A368 26520001 */  addiu      $s2, $s2, 1
/* 10387C 8005A36C 3242FFFF */  andi       $v0, $s2, 0xffff
/* 103880 8005A370 2C420006 */  sltiu      $v0, $v0, 6
/* 103884 8005A374 5440FFD6 */  bnezl      $v0, .L8005A2D0
/* 103888 8005A378 00008821 */   addu      $s1, $zero, $zero
/* 10388C 8005A37C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 103890 8005A380 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 103894 8005A384 10800022 */  beqz       $a0, .L8005A410
/* 103898 8005A388 2402003C */   addiu     $v0, $zero, 0x3c
/* 10389C 8005A38C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 1038A0 8005A390 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 1038A4 8005A394 0043001A */  div        $zero, $v0, $v1
/* 1038A8 8005A398 14600002 */  bnez       $v1, .L8005A3A4
/* 1038AC 8005A39C 00000000 */   nop
/* 1038B0 8005A3A0 0007000D */  break      7
.L8005A3A4:
/* 1038B4 8005A3A4 2401FFFF */   addiu     $at, $zero, -1
/* 1038B8 8005A3A8 14610004 */  bne        $v1, $at, .L8005A3BC
/* 1038BC 8005A3AC 3C018000 */   lui       $at, 0x8000
/* 1038C0 8005A3B0 14410002 */  bne        $v0, $at, .L8005A3BC
/* 1038C4 8005A3B4 00000000 */   nop
/* 1038C8 8005A3B8 0006000D */  break      6
.L8005A3BC:
/* 1038CC 8005A3BC 00001012 */   mflo      $v0
/* 1038D0 8005A3C0 00000000 */  nop
/* 1038D4 8005A3C4 00000000 */  nop
/* 1038D8 8005A3C8 0082001A */  div        $zero, $a0, $v0
/* 1038DC 8005A3CC 14400002 */  bnez       $v0, .L8005A3D8
/* 1038E0 8005A3D0 00000000 */   nop
/* 1038E4 8005A3D4 0007000D */  break      7
.L8005A3D8:
/* 1038E8 8005A3D8 2401FFFF */   addiu     $at, $zero, -1
/* 1038EC 8005A3DC 14410004 */  bne        $v0, $at, .L8005A3F0
/* 1038F0 8005A3E0 3C018000 */   lui       $at, 0x8000
/* 1038F4 8005A3E4 14810002 */  bne        $a0, $at, .L8005A3F0
/* 1038F8 8005A3E8 00000000 */   nop
/* 1038FC 8005A3EC 0006000D */  break      6
.L8005A3F0:
/* 103900 8005A3F0 00001810 */   mfhi      $v1
/* 103904 8005A3F4 14600006 */  bnez       $v1, .L8005A410
/* 103908 8005A3F8 00000000 */   nop
/* 10390C 8005A3FC 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 103910 8005A400 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 103914 8005A404 24420001 */  addiu      $v0, $v0, 1
/* 103918 8005A408 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 10391C 8005A40C A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
.L8005A410:
/* 103920 8005A410 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 103924 8005A414 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 103928 8005A418 2402003C */  addiu      $v0, $zero, 0x3c
/* 10392C 8005A41C 0043001A */  div        $zero, $v0, $v1
/* 103930 8005A420 14600002 */  bnez       $v1, .L8005A42C
/* 103934 8005A424 00000000 */   nop
/* 103938 8005A428 0007000D */  break      7
.L8005A42C:
/* 10393C 8005A42C 2401FFFF */   addiu     $at, $zero, -1
/* 103940 8005A430 14610004 */  bne        $v1, $at, .L8005A444
/* 103944 8005A434 3C018000 */   lui       $at, 0x8000
/* 103948 8005A438 14410002 */  bne        $v0, $at, .L8005A444
/* 10394C 8005A43C 00000000 */   nop
/* 103950 8005A440 0006000D */  break      6
.L8005A444:
/* 103954 8005A444 00001012 */   mflo      $v0
/* 103958 8005A448 3C014080 */  lui        $at, 0x4080
/* 10395C 8005A44C 44811000 */  mtc1       $at, $f2
/* 103960 8005A450 44820000 */  mtc1       $v0, $f0
/* 103964 8005A454 00000000 */  nop
/* 103968 8005A458 46800020 */  cvt.s.w    $f0, $f0
/* 10396C 8005A45C 46020002 */  mul.s      $f0, $f0, $f2
/* 103970 8005A460 3C013F80 */  lui        $at, 0x3f80
/* 103974 8005A464 44811000 */  mtc1       $at, $f2
/* 103978 8005A468 00000000 */  nop
/* 10397C 8005A46C 46020001 */  sub.s      $f0, $f0, $f2
/* 103980 8005A470 3C018007 */  lui        $at, %hi(D_8006C564)
/* 103984 8005A474 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* 103988 8005A478 468010A0 */  cvt.s.w    $f2, $f2
/* 10398C 8005A47C 46001032 */  c.eq.s     $f2, $f0
/* 103990 8005A480 00000000 */  nop
/* 103994 8005A484 00000000 */  nop
/* 103998 8005A488 450000F2 */  bc1f       .L8005A854
/* 10399C 8005A48C 24020021 */   addiu     $v0, $zero, 0x21
/* 1039A0 8005A490 08016A15 */  j          .L8005A854
/* 1039A4 8005A494 A6C2001C */   sh        $v0, 0x1c($s6)
.L8005A498:
/* 1039A8 8005A498 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1039AC 8005A49C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 1039B0 8005A4A0 14400006 */  bnez       $v0, .L8005A4BC
/* 1039B4 8005A4A4 28420002 */   slti      $v0, $v0, 2
/* 1039B8 8005A4A8 0C01475E */  jal        func_80051D78_FB288
/* 1039BC 8005A4AC 00000000 */   nop
/* 1039C0 8005A4B0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 1039C4 8005A4B4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 1039C8 8005A4B8 28420002 */  slti       $v0, $v0, 2
.L8005A4BC:
/* 1039CC 8005A4BC 144000E6 */  bnez       $v0, .L8005A858
/* 1039D0 8005A4C0 00001021 */   addu      $v0, $zero, $zero
/* 1039D4 8005A4C4 0C02A5AF */  jal        func_800A96BC
/* 1039D8 8005A4C8 24040001 */   addiu     $a0, $zero, 1
/* 1039DC 8005A4CC 24020022 */  addiu      $v0, $zero, 0x22
/* 1039E0 8005A4D0 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 1039E4 8005A4D4 A420C1E4 */  sh         $zero, %lo(D_8006C1E4)($at)
/* 1039E8 8005A4D8 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* 1039EC 8005A4DC A420C1E6 */  sh         $zero, %lo(D_8006C1E6)($at)
/* 1039F0 8005A4E0 08016A15 */  j          .L8005A854
/* 1039F4 8005A4E4 A6C2001C */   sh        $v0, 0x1c($s6)
.L8005A4E8:
/* 1039F8 8005A4E8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 1039FC 8005A4EC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 103A00 8005A4F0 0202001A */  div        $zero, $s0, $v0
/* 103A04 8005A4F4 14400002 */  bnez       $v0, .L8005A500
/* 103A08 8005A4F8 00000000 */   nop
/* 103A0C 8005A4FC 0007000D */  break      7
.L8005A500:
/* 103A10 8005A500 2401FFFF */   addiu     $at, $zero, -1
/* 103A14 8005A504 14410004 */  bne        $v0, $at, .L8005A518
/* 103A18 8005A508 3C018000 */   lui       $at, 0x8000
/* 103A1C 8005A50C 16010002 */  bne        $s0, $at, .L8005A518
/* 103A20 8005A510 00000000 */   nop
/* 103A24 8005A514 0006000D */  break      6
.L8005A518:
/* 103A28 8005A518 00001012 */   mflo      $v0
/* 103A2C 8005A51C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 103A30 8005A520 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 103A34 8005A524 1462000B */  bne        $v1, $v0, .L8005A554
/* 103A38 8005A528 00000000 */   nop
/* 103A3C 8005A52C 0C026DD5 */  jal        func_8009B754
/* 103A40 8005A530 24040138 */   addiu     $a0, $zero, 0x138
/* 103A44 8005A534 2404000B */  addiu      $a0, $zero, 0xb
/* 103A48 8005A538 2405FFFF */  addiu      $a1, $zero, -1
/* 103A4C 8005A53C 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* 103A50 8005A540 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* 103A54 8005A544 24060001 */  addiu      $a2, $zero, 1
/* 103A58 8005A548 24020001 */  addiu      $v0, $zero, 1
/* 103A5C 8005A54C 0C026C9A */  jal        func_8009B268
/* 103A60 8005A550 AFA20010 */   sw        $v0, 0x10($sp)
.L8005A554:
/* 103A64 8005A554 0C00D8C1 */  jal        func_80036304_DF814
/* 103A68 8005A558 24040036 */   addiu     $a0, $zero, 0x36
/* 103A6C 8005A55C 8C44000C */  lw         $a0, 0xc($v0)
/* 103A70 8005A560 0C028A40 */  jal        func_800A2900
/* 103A74 8005A564 00000000 */   nop
/* 103A78 8005A568 0C00D8C1 */  jal        func_80036304_DF814
/* 103A7C 8005A56C 24040018 */   addiu     $a0, $zero, 0x18
/* 103A80 8005A570 3C048015 */  lui        $a0, %hi(D_80149F90)
/* 103A84 8005A574 8C849F90 */  lw         $a0, %lo(D_80149F90)($a0)
/* 103A88 8005A578 0204001A */  div        $zero, $s0, $a0
/* 103A8C 8005A57C 14800002 */  bnez       $a0, .L8005A588
/* 103A90 8005A580 00000000 */   nop
/* 103A94 8005A584 0007000D */  break      7
.L8005A588:
/* 103A98 8005A588 2401FFFF */   addiu     $at, $zero, -1
/* 103A9C 8005A58C 14810004 */  bne        $a0, $at, .L8005A5A0
/* 103AA0 8005A590 3C018000 */   lui       $at, 0x8000
/* 103AA4 8005A594 16010002 */  bne        $s0, $at, .L8005A5A0
/* 103AA8 8005A598 00000000 */   nop
/* 103AAC 8005A59C 0006000D */  break      6
.L8005A5A0:
/* 103AB0 8005A5A0 00002012 */   mflo      $a0
/* 103AB4 8005A5A4 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 103AB8 8005A5A8 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 103ABC 8005A5AC 0064182A */  slt        $v1, $v1, $a0
/* 103AC0 8005A5B0 1460002B */  bnez       $v1, .L8005A660
/* 103AC4 8005A5B4 00408021 */   addu      $s0, $v0, $zero
/* 103AC8 8005A5B8 3C048007 */  lui        $a0, %hi(D_8006C1E4)
/* 103ACC 8005A5BC 9484C1E4 */  lhu        $a0, %lo(D_8006C1E4)($a0)
/* 103AD0 8005A5C0 3C065555 */  lui        $a2, 0x5555
/* 103AD4 8005A5C4 34C65556 */  ori        $a2, $a2, 0x5556
/* 103AD8 8005A5C8 00041400 */  sll        $v0, $a0, 0x10
/* 103ADC 8005A5CC 00021C03 */  sra        $v1, $v0, 0x10
/* 103AE0 8005A5D0 00660018 */  mult       $v1, $a2
/* 103AE4 8005A5D4 27A50148 */  addiu      $a1, $sp, 0x148
/* 103AE8 8005A5D8 000217C3 */  sra        $v0, $v0, 0x1f
/* 103AEC 8005A5DC 00004810 */  mfhi       $t1
/* 103AF0 8005A5E0 01221023 */  subu       $v0, $t1, $v0
/* 103AF4 8005A5E4 00021400 */  sll        $v0, $v0, 0x10
/* 103AF8 8005A5E8 00021403 */  sra        $v0, $v0, 0x10
/* 103AFC 8005A5EC 00A21021 */  addu       $v0, $a1, $v0
/* 103B00 8005A5F0 90430000 */  lbu        $v1, ($v0)
/* 103B04 8005A5F4 24020009 */  addiu      $v0, $zero, 9
/* 103B08 8005A5F8 10620003 */  beq        $v1, $v0, .L8005A608
/* 103B0C 8005A5FC 24820001 */   addiu     $v0, $a0, 1
/* 103B10 8005A600 3C018007 */  lui        $at, %hi(D_8006C1E4)
/* 103B14 8005A604 A422C1E4 */  sh         $v0, %lo(D_8006C1E4)($at)
.L8005A608:
/* 103B18 8005A608 3C028007 */  lui        $v0, %hi(D_8006C1E4)
/* 103B1C 8005A60C 9442C1E4 */  lhu        $v0, %lo(D_8006C1E4)($v0)
/* 103B20 8005A610 00021400 */  sll        $v0, $v0, 0x10
/* 103B24 8005A614 00021C03 */  sra        $v1, $v0, 0x10
/* 103B28 8005A618 00660018 */  mult       $v1, $a2
/* 103B2C 8005A61C 000217C3 */  sra        $v0, $v0, 0x1f
/* 103B30 8005A620 00004810 */  mfhi       $t1
/* 103B34 8005A624 01221023 */  subu       $v0, $t1, $v0
/* 103B38 8005A628 00021400 */  sll        $v0, $v0, 0x10
/* 103B3C 8005A62C 00021403 */  sra        $v0, $v0, 0x10
/* 103B40 8005A630 00A21021 */  addu       $v0, $a1, $v0
/* 103B44 8005A634 90440000 */  lbu        $a0, ($v0)
/* 103B48 8005A638 308200FF */  andi       $v0, $a0, 0xff
/* 103B4C 8005A63C 0002182B */  sltu       $v1, $zero, $v0
/* 103B50 8005A640 38420009 */  xori       $v0, $v0, 9
/* 103B54 8005A644 0002102B */  sltu       $v0, $zero, $v0
/* 103B58 8005A648 00621824 */  and        $v1, $v1, $v0
/* 103B5C 8005A64C 10600004 */  beqz       $v1, .L8005A660
/* 103B60 8005A650 00000000 */   nop
/* 103B64 8005A654 0C00D8C1 */  jal        func_80036304_DF814
/* 103B68 8005A658 24840018 */   addiu     $a0, $a0, 0x18
/* 103B6C 8005A65C 00408021 */  addu       $s0, $v0, $zero
.L8005A660:
/* 103B70 8005A660 8E04000C */  lw         $a0, 0xc($s0)
/* 103B74 8005A664 0C028A40 */  jal        func_800A2900
/* 103B78 8005A668 2410003C */   addiu     $s0, $zero, 0x3c
/* 103B7C 8005A66C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 103B80 8005A670 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 103B84 8005A674 0203001A */  div        $zero, $s0, $v1
/* 103B88 8005A678 14600002 */  bnez       $v1, .L8005A684
/* 103B8C 8005A67C 00000000 */   nop
/* 103B90 8005A680 0007000D */  break      7
.L8005A684:
/* 103B94 8005A684 2401FFFF */   addiu     $at, $zero, -1
/* 103B98 8005A688 14610004 */  bne        $v1, $at, .L8005A69C
/* 103B9C 8005A68C 3C018000 */   lui       $at, 0x8000
/* 103BA0 8005A690 16010002 */  bne        $s0, $at, .L8005A69C
/* 103BA4 8005A694 00000000 */   nop
/* 103BA8 8005A698 0006000D */  break      6
.L8005A69C:
/* 103BAC 8005A69C 00001812 */   mflo      $v1
/* 103BB0 8005A6A0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* 103BB4 8005A6A4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* 103BB8 8005A6A8 0043102A */  slt        $v0, $v0, $v1
/* 103BBC 8005A6AC 1440003A */  bnez       $v0, .L8005A798
/* 103BC0 8005A6B0 00000000 */   nop
/* 103BC4 8005A6B4 3C048007 */  lui        $a0, %hi(D_8006C1E6)
/* 103BC8 8005A6B8 9484C1E6 */  lhu        $a0, %lo(D_8006C1E6)($a0)
/* 103BCC 8005A6BC 248420C9 */  addiu      $a0, $a0, 0x20c9
/* 103BD0 8005A6C0 0C00D8C1 */  jal        func_80036304_DF814
/* 103BD4 8005A6C4 3084FFFF */   andi      $a0, $a0, 0xffff
/* 103BD8 8005A6C8 8C44000C */  lw         $a0, 0xc($v0)
/* 103BDC 8005A6CC 0C028A40 */  jal        func_800A2900
/* 103BE0 8005A6D0 00000000 */   nop
/* 103BE4 8005A6D4 3C048007 */  lui        $a0, %hi(D_8006C1E6)
/* 103BE8 8005A6D8 9484C1E6 */  lhu        $a0, %lo(D_8006C1E6)($a0)
/* 103BEC 8005A6DC 248420D3 */  addiu      $a0, $a0, 0x20d3
/* 103BF0 8005A6E0 0C00D8C1 */  jal        func_80036304_DF814
/* 103BF4 8005A6E4 3084FFFF */   andi      $a0, $a0, 0xffff
/* 103BF8 8005A6E8 8C44000C */  lw         $a0, 0xc($v0)
/* 103BFC 8005A6EC 0C028A40 */  jal        func_800A2900
/* 103C00 8005A6F0 00000000 */   nop
/* 103C04 8005A6F4 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 103C08 8005A6F8 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 103C0C 8005A6FC 0202001A */  div        $zero, $s0, $v0
/* 103C10 8005A700 14400002 */  bnez       $v0, .L8005A70C
/* 103C14 8005A704 00000000 */   nop
/* 103C18 8005A708 0007000D */  break      7
.L8005A70C:
/* 103C1C 8005A70C 2401FFFF */   addiu     $at, $zero, -1
/* 103C20 8005A710 14410004 */  bne        $v0, $at, .L8005A724
/* 103C24 8005A714 3C018000 */   lui       $at, 0x8000
/* 103C28 8005A718 16010002 */  bne        $s0, $at, .L8005A724
/* 103C2C 8005A71C 00000000 */   nop
/* 103C30 8005A720 0006000D */  break      6
.L8005A724:
/* 103C34 8005A724 00001812 */   mflo      $v1
/* 103C38 8005A728 3C048007 */  lui        $a0, %hi(D_8006C564)
/* 103C3C 8005A72C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* 103C40 8005A730 00031040 */  sll        $v0, $v1, 1
/* 103C44 8005A734 14820006 */  bne        $a0, $v0, .L8005A750
/* 103C48 8005A738 00000000 */   nop
/* 103C4C 8005A73C 3C028007 */  lui        $v0, %hi(D_8006C1E6)
/* 103C50 8005A740 9442C1E6 */  lhu        $v0, %lo(D_8006C1E6)($v0)
/* 103C54 8005A744 24420001 */  addiu      $v0, $v0, 1
/* 103C58 8005A748 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* 103C5C 8005A74C A422C1E6 */  sh         $v0, %lo(D_8006C1E6)($at)
.L8005A750:
/* 103C60 8005A750 3C018007 */  lui        $at, %hi(D_8006A3D0)
/* 103C64 8005A754 D420A3D0 */  ldc1       $f0, %lo(D_8006A3D0)($at)
/* 103C68 8005A758 44831000 */  mtc1       $v1, $f2
/* 103C6C 8005A75C 00000000 */  nop
/* 103C70 8005A760 468010A1 */  cvt.d.w    $f2, $f2
/* 103C74 8005A764 46201082 */  mul.d      $f2, $f2, $f0
/* 103C78 8005A768 44840000 */  mtc1       $a0, $f0
/* 103C7C 8005A76C 00000000 */  nop
/* 103C80 8005A770 46800021 */  cvt.d.w    $f0, $f0
/* 103C84 8005A774 46220032 */  c.eq.d     $f0, $f2
/* 103C88 8005A778 00000000 */  nop
/* 103C8C 8005A77C 45000006 */  bc1f       .L8005A798
/* 103C90 8005A780 00000000 */   nop
/* 103C94 8005A784 3C028007 */  lui        $v0, %hi(D_8006C1E6)
/* 103C98 8005A788 9442C1E6 */  lhu        $v0, %lo(D_8006C1E6)($v0)
/* 103C9C 8005A78C 24420001 */  addiu      $v0, $v0, 1
/* 103CA0 8005A790 3C018007 */  lui        $at, %hi(D_8006C1E6)
/* 103CA4 8005A794 A422C1E6 */  sh         $v0, %lo(D_8006C1E6)($at)
.L8005A798:
/* 103CA8 8005A798 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 103CAC 8005A79C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 103CB0 8005A7A0 2402003C */  addiu      $v0, $zero, 0x3c
/* 103CB4 8005A7A4 0043001A */  div        $zero, $v0, $v1
/* 103CB8 8005A7A8 14600002 */  bnez       $v1, .L8005A7B4
/* 103CBC 8005A7AC 00000000 */   nop
/* 103CC0 8005A7B0 0007000D */  break      7
.L8005A7B4:
/* 103CC4 8005A7B4 2401FFFF */   addiu     $at, $zero, -1
/* 103CC8 8005A7B8 14610004 */  bne        $v1, $at, .L8005A7CC
/* 103CCC 8005A7BC 3C018000 */   lui       $at, 0x8000
/* 103CD0 8005A7C0 14410002 */  bne        $v0, $at, .L8005A7CC
/* 103CD4 8005A7C4 00000000 */   nop
/* 103CD8 8005A7C8 0006000D */  break      6
.L8005A7CC:
/* 103CDC 8005A7CC 00001012 */   mflo      $v0
/* 103CE0 8005A7D0 3C038007 */  lui        $v1, %hi(D_8006C564)
/* 103CE4 8005A7D4 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* 103CE8 8005A7D8 000210C0 */  sll        $v0, $v0, 3
/* 103CEC 8005A7DC 1462001E */  bne        $v1, $v0, .L8005A858
/* 103CF0 8005A7E0 00001021 */   addu      $v0, $zero, $zero
/* 103CF4 8005A7E4 3402FFFF */  ori        $v0, $zero, 0xffff
/* 103CF8 8005A7E8 08016A15 */  j          .L8005A854
/* 103CFC 8005A7EC A6C2001C */   sh        $v0, 0x1c($s6)
.L8005A7F0:
/* 103D00 8005A7F0 0C026E5D */  jal        func_8009B974
/* 103D04 8005A7F4 24040001 */   addiu     $a0, $zero, 1
/* 103D08 8005A7F8 0C00E339 */  jal        func_80038CE4_E21F4
/* 103D0C 8005A7FC 00000000 */   nop
/* 103D10 8005A800 3402FFFE */  ori        $v0, $zero, 0xfffe
/* 103D14 8005A804 08016A15 */  j          .L8005A854
/* 103D18 8005A808 A6C2001C */   sh        $v0, 0x1c($s6)
.L8005A80C:
/* 103D1C 8005A80C 0C02A5C1 */  jal        func_800A9704
/* 103D20 8005A810 24040001 */   addiu     $a0, $zero, 1
/* 103D24 8005A814 3C048007 */  lui        $a0, %hi(D_8006C1B0)
/* 103D28 8005A818 0C029393 */  jal        func_800A4E4C
/* 103D2C 8005A81C 8C84C1B0 */   lw        $a0, %lo(D_8006C1B0)($a0)
/* 103D30 8005A820 3C048007 */  lui        $a0, %hi(D_8006C1B4)
/* 103D34 8005A824 0C029393 */  jal        func_800A4E4C
/* 103D38 8005A828 8C84C1B4 */   lw        $a0, %lo(D_8006C1B4)($a0)
/* 103D3C 8005A82C 3C048007 */  lui        $a0, %hi(D_8006C1B8)
/* 103D40 8005A830 0C029393 */  jal        func_800A4E4C
/* 103D44 8005A834 8C84C1B8 */   lw        $a0, %lo(D_8006C1B8)($a0)
/* 103D48 8005A838 0C00D7F4 */  jal        func_80035FD0_DF4E0
/* 103D4C 8005A83C 00000000 */   nop
/* 103D50 8005A840 24030001 */  addiu      $v1, $zero, 1
/* 103D54 8005A844 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* 103D58 8005A848 A023C3C8 */  sb         $v1, %lo(D_8006C3C8)($at)
/* 103D5C 8005A84C 08016A16 */  j          .L8005A858
/* 103D60 8005A850 24020001 */   addiu     $v0, $zero, 1
.L8005A854:
/* 103D64 8005A854 00001021 */  addu       $v0, $zero, $zero
.L8005A858:
/* 103D68 8005A858 8FBF01C4 */  lw         $ra, 0x1c4($sp)
/* 103D6C 8005A85C 8FB601C0 */  lw         $s6, 0x1c0($sp)
/* 103D70 8005A860 8FB501BC */  lw         $s5, 0x1bc($sp)
/* 103D74 8005A864 8FB401B8 */  lw         $s4, 0x1b8($sp)
/* 103D78 8005A868 8FB301B4 */  lw         $s3, 0x1b4($sp)
/* 103D7C 8005A86C 8FB201B0 */  lw         $s2, 0x1b0($sp)
/* 103D80 8005A870 8FB101AC */  lw         $s1, 0x1ac($sp)
/* 103D84 8005A874 8FB001A8 */  lw         $s0, 0x1a8($sp)
/* 103D88 8005A878 D7B601D0 */  ldc1       $f22, 0x1d0($sp)
/* 103D8C 8005A87C D7B401C8 */  ldc1       $f20, 0x1c8($sp)
/* 103D90 8005A880 03E00008 */  jr         $ra
/* 103D94 8005A884 27BD01D8 */   addiu     $sp, $sp, 0x1d8

glabel func_8005A888_103D98
/* 103D98 8005A888 3C028007 */  lui        $v0, %hi(D_800697A0)
/* 103D9C 8005A88C 904297A0 */  lbu        $v0, %lo(D_800697A0)($v0)
/* 103DA0 8005A890 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 103DA4 8005A894 1040000D */  beqz       $v0, .L8005A8CC
/* 103DA8 8005A898 AFBF0010 */   sw        $ra, 0x10($sp)
/* 103DAC 8005A89C 3C048005 */  lui        $a0, %hi(func_80055490_FE9A0)
/* 103DB0 8005A8A0 24845490 */  addiu      $a0, $a0, %lo(func_80055490_FE9A0)
/* 103DB4 8005A8A4 00002821 */  addu       $a1, $zero, $zero
/* 103DB8 8005A8A8 2406012C */  addiu      $a2, $zero, 0x12c
/* 103DBC 8005A8AC 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* 103DC0 8005A8B0 A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* 103DC4 8005A8B4 0C025D06 */  jal        func_80097418
/* 103DC8 8005A8B8 00003821 */   addu      $a3, $zero, $zero
/* 103DCC 8005A8BC 0C02A5D2 */  jal        func_800A9748
/* 103DD0 8005A8C0 24040001 */   addiu     $a0, $zero, 1
/* 103DD4 8005A8C4 3C018007 */  lui        $at, %hi(D_800697A0)
/* 103DD8 8005A8C8 A02097A0 */  sb         $zero, %lo(D_800697A0)($at)
.L8005A8CC:
/* 103DDC 8005A8CC 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* 103DE0 8005A8D0 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* 103DE4 8005A8D4 24020001 */  addiu      $v0, $zero, 1
/* 103DE8 8005A8D8 14620005 */  bne        $v1, $v0, .L8005A8F0
/* 103DEC 8005A8DC 00001021 */   addu      $v0, $zero, $zero
/* 103DF0 8005A8E0 24020001 */  addiu      $v0, $zero, 1
/* 103DF4 8005A8E4 3C018007 */  lui        $at, %hi(D_800697A0)
/* 103DF8 8005A8E8 A02297A0 */  sb         $v0, %lo(D_800697A0)($at)
/* 103DFC 8005A8EC 24020001 */  addiu      $v0, $zero, 1
.L8005A8F0:
/* 103E00 8005A8F0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 103E04 8005A8F4 03E00008 */  jr         $ra
/* 103E08 8005A8F8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 103E0C 8005A8FC 00000000 */  nop