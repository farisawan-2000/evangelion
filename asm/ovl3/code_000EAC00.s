.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_800416F0_EAC00
/* EAC00 800416F0 3C038007 */  lui        $v1, %hi(D_8006C580)
/* EAC04 800416F4 9063C580 */  lbu        $v1, %lo(D_8006C580)($v1)
/* EAC08 800416F8 27BDFF88 */  addiu      $sp, $sp, -0x78
/* EAC0C 800416FC AFB30064 */  sw         $s3, 0x64($sp)
/* EAC10 80041700 24020002 */  addiu      $v0, $zero, 2
/* EAC14 80041704 AFBF0068 */  sw         $ra, 0x68($sp)
/* EAC18 80041708 AFB20060 */  sw         $s2, 0x60($sp)
/* EAC1C 8004170C AFB1005C */  sw         $s1, 0x5c($sp)
/* EAC20 80041710 AFB00058 */  sw         $s0, 0x58($sp)
/* EAC24 80041714 F7B40070 */  sdc1       $f20, 0x70($sp)
/* EAC28 80041718 14620006 */  bne        $v1, $v0, .L80041734
/* EAC2C 8004171C 00809821 */   addu      $s3, $a0, $zero
/* EAC30 80041720 9663001C */  lhu        $v1, 0x1c($s3)
/* EAC34 80041724 24020005 */  addiu      $v0, $zero, 5
/* EAC38 80041728 14620002 */  bne        $v1, $v0, .L80041734
/* EAC3C 8004172C 24020007 */   addiu     $v0, $zero, 7
/* EAC40 80041730 A662001C */  sh         $v0, 0x1c($s3)
.L80041734:
/* EAC44 80041734 0C00D7D8 */  jal        func_80035F60_DF470
/* EAC48 80041738 00000000 */   nop
/* EAC4C 8004173C 1040000D */  beqz       $v0, .L80041774
/* EAC50 80041740 00000000 */   nop
/* EAC54 80041744 3C028007 */  lui        $v0, %hi(D_8006C03A)
/* EAC58 80041748 9042C03A */  lbu        $v0, %lo(D_8006C03A)($v0)
/* EAC5C 8004174C 14400009 */  bnez       $v0, .L80041774
/* EAC60 80041750 24030001 */   addiu     $v1, $zero, 1
/* EAC64 80041754 9662001C */  lhu        $v0, 0x1c($s3)
/* EAC68 80041758 3C018007 */  lui        $at, %hi(D_8006C03A)
/* EAC6C 8004175C A023C03A */  sb         $v1, %lo(D_8006C03A)($at)
/* EAC70 80041760 0002182B */  sltu       $v1, $zero, $v0
/* EAC74 80041764 2C42000B */  sltiu      $v0, $v0, 0xb
/* EAC78 80041768 00621824 */  and        $v1, $v1, $v0
/* EAC7C 8004176C 1460068A */  bnez       $v1, .L80043198
/* EAC80 80041770 2402000C */   addiu     $v0, $zero, 0xc
.L80041774:
/* EAC84 80041774 9662001C */  lhu        $v0, 0x1c($s3)
/* EAC88 80041778 2C420002 */  sltiu      $v0, $v0, 2
/* EAC8C 8004177C 1440000A */  bnez       $v0, .L800417A8
/* EAC90 80041780 00000000 */   nop
/* EAC94 80041784 3C048007 */  lui        $a0, %hi(D_8006BFD0)
/* EAC98 80041788 0C028A40 */  jal        func_800A2900
/* EAC9C 8004178C 8C84BFD0 */   lw        $a0, %lo(D_8006BFD0)($a0)
/* EACA0 80041790 3C048007 */  lui        $a0, %hi(D_8006BFD4)
/* EACA4 80041794 0C028A40 */  jal        func_800A2900
/* EACA8 80041798 8C84BFD4 */   lw        $a0, %lo(D_8006BFD4)($a0)
/* EACAC 8004179C 3C048007 */  lui        $a0, %hi(D_8006BFD8)
/* EACB0 800417A0 0C028A40 */  jal        func_800A2900
/* EACB4 800417A4 8C84BFD8 */   lw        $a0, %lo(D_8006BFD8)($a0)
.L800417A8:
/* EACB8 800417A8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* EACBC 800417AC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* EACC0 800417B0 9664001C */  lhu        $a0, 0x1c($s3)
/* EACC4 800417B4 3C038007 */  lui        $v1, %hi(D_8006BFDC)
/* EACC8 800417B8 9463BFDC */  lhu        $v1, %lo(D_8006BFDC)($v1)
/* EACCC 800417BC 24420001 */  addiu      $v0, $v0, 1
/* EACD0 800417C0 3C018007 */  lui        $at, %hi(D_8006C564)
/* EACD4 800417C4 10830006 */  beq        $a0, $v1, .L800417E0
/* EACD8 800417C8 AC22C564 */   sw        $v0, %lo(D_8006C564)($at)
/* EACDC 800417CC 9662001C */  lhu        $v0, 0x1c($s3)
/* EACE0 800417D0 3C018007 */  lui        $at, %hi(D_8006C564)
/* EACE4 800417D4 AC20C564 */  sw         $zero, %lo(D_8006C564)($at)
/* EACE8 800417D8 3C018007 */  lui        $at, %hi(D_8006BFDC)
/* EACEC 800417DC A422BFDC */  sh         $v0, %lo(D_8006BFDC)($at)
.L800417E0:
/* EACF0 800417E0 9663001C */  lhu        $v1, 0x1c($s3)
/* EACF4 800417E4 24020007 */  addiu      $v0, $zero, 7
/* EACF8 800417E8 1062026E */  beq        $v1, $v0, .L800421A4
/* EACFC 800417EC 28620008 */   slti      $v0, $v1, 8
/* EAD00 800417F0 10400015 */  beqz       $v0, .L80041848
/* EAD04 800417F4 24020003 */   addiu     $v0, $zero, 3
/* EAD08 800417F8 1062012B */  beq        $v1, $v0, .L80041CA8
/* EAD0C 800417FC 00000000 */   nop
/* EAD10 80041800 28620004 */  slti       $v0, $v1, 4
/* EAD14 80041804 10400009 */  beqz       $v0, .L8004182C
/* EAD18 80041808 24120001 */   addiu     $s2, $zero, 1
/* EAD1C 8004180C 10720054 */  beq        $v1, $s2, .L80041960
/* EAD20 80041810 28620002 */   slti      $v0, $v1, 2
/* EAD24 80041814 10400086 */  beqz       $v0, .L80041A30
/* EAD28 80041818 00000000 */   nop
/* EAD2C 8004181C 10600023 */  beqz       $v1, .L800418AC
/* EAD30 80041820 00001021 */   addu      $v0, $zero, $zero
/* EAD34 80041824 08010C92 */  j          .L80043248
/* EAD38 80041828 00000000 */   nop
.L8004182C:
/* EAD3C 8004182C 24020005 */  addiu      $v0, $zero, 5
/* EAD40 80041830 10620169 */  beq        $v1, $v0, .L80041DD8
/* EAD44 80041834 28620006 */   slti      $v0, $v1, 6
/* EAD48 80041838 10400169 */  beqz       $v0, .L80041DE0
/* EAD4C 8004183C 00000000 */   nop
/* EAD50 80041840 0801073C */  j          .L80041CF0
/* EAD54 80041844 00000000 */   nop
.L80041848:
/* EAD58 80041848 2402000B */  addiu      $v0, $zero, 0xb
/* EAD5C 8004184C 10620427 */  beq        $v1, $v0, .L800428EC
/* EAD60 80041850 2862000C */   slti      $v0, $v1, 0xc
/* EAD64 80041854 10400007 */  beqz       $v0, .L80041874
/* EAD68 80041858 24020009 */   addiu     $v0, $zero, 9
/* EAD6C 8004185C 10620370 */  beq        $v1, $v0, .L80042620
/* EAD70 80041860 2862000A */   slti      $v0, $v1, 0xa
/* EAD74 80041864 104003BC */  beqz       $v0, .L80042758
/* EAD78 80041868 00000000 */   nop
/* EAD7C 8004186C 080108C3 */  j          .L8004230C
/* EAD80 80041870 00000000 */   nop
.L80041874:
/* EAD84 80041874 3402FFFE */  ori        $v0, $zero, 0xfffe
/* EAD88 80041878 10620660 */  beq        $v1, $v0, .L800431FC
/* EAD8C 8004187C 0043102A */   slt       $v0, $v0, $v1
/* EAD90 80041880 14400006 */  bnez       $v0, .L8004189C
/* EAD94 80041884 3402FFFF */   ori       $v0, $zero, 0xffff
/* EAD98 80041888 2402000C */  addiu      $v0, $zero, 0xc
/* EAD9C 8004188C 10620644 */  beq        $v1, $v0, .L800431A0
/* EADA0 80041890 00001021 */   addu      $v0, $zero, $zero
/* EADA4 80041894 08010C92 */  j          .L80043248
/* EADA8 80041898 00000000 */   nop
.L8004189C:
/* EADAC 8004189C 10620640 */  beq        $v1, $v0, .L800431A0
/* EADB0 800418A0 00001021 */   addu      $v0, $zero, $zero
/* EADB4 800418A4 08010C92 */  j          .L80043248
/* EADB8 800418A8 00000000 */   nop
.L800418AC:
/* EADBC 800418AC 0C00D7DD */  jal        func_80035F74_DF484
/* EADC0 800418B0 241000E0 */   addiu     $s0, $zero, 0xe0
/* EADC4 800418B4 0C029375 */  jal        func_800A4DD4
/* EADC8 800418B8 00000000 */   nop
/* EADCC 800418BC 00402021 */  addu       $a0, $v0, $zero
/* EADD0 800418C0 24050010 */  addiu      $a1, $zero, 0x10
/* EADD4 800418C4 9482001E */  lhu        $v0, 0x1e($a0)
/* EADD8 800418C8 24060010 */  addiu      $a2, $zero, 0x10
/* EADDC 800418CC 24070130 */  addiu      $a3, $zero, 0x130
/* EADE0 800418D0 3C018007 */  lui        $at, %hi(D_8006BFD0)
/* EADE4 800418D4 AC24BFD0 */  sw         $a0, %lo(D_8006BFD0)($at)
/* EADE8 800418D8 A480001C */  sh         $zero, 0x1c($a0)
/* EADEC 800418DC 34420100 */  ori        $v0, $v0, 0x100
/* EADF0 800418E0 A482001E */  sh         $v0, 0x1e($a0)
/* EADF4 800418E4 0C02939C */  jal        func_800A4E70
/* EADF8 800418E8 AFB00010 */   sw        $s0, 0x10($sp)
/* EADFC 800418EC 0C029375 */  jal        func_800A4DD4
/* EAE00 800418F0 00000000 */   nop
/* EAE04 800418F4 00402021 */  addu       $a0, $v0, $zero
/* EAE08 800418F8 24050010 */  addiu      $a1, $zero, 0x10
/* EAE0C 800418FC 24060010 */  addiu      $a2, $zero, 0x10
/* EAE10 80041900 24070130 */  addiu      $a3, $zero, 0x130
/* EAE14 80041904 3C018007 */  lui        $at, %hi(D_8006BFD4)
/* EAE18 80041908 AC24BFD4 */  sw         $a0, %lo(D_8006BFD4)($at)
/* EAE1C 8004190C A480001C */  sh         $zero, 0x1c($a0)
/* EAE20 80041910 0C02939C */  jal        func_800A4E70
/* EAE24 80041914 AFB00010 */   sw        $s0, 0x10($sp)
/* EAE28 80041918 0C029375 */  jal        func_800A4DD4
/* EAE2C 8004191C 00000000 */   nop
/* EAE30 80041920 00402021 */  addu       $a0, $v0, $zero
/* EAE34 80041924 24050010 */  addiu      $a1, $zero, 0x10
/* EAE38 80041928 24060010 */  addiu      $a2, $zero, 0x10
/* EAE3C 8004192C 24070130 */  addiu      $a3, $zero, 0x130
/* EAE40 80041930 2402004E */  addiu      $v0, $zero, 0x4e
/* EAE44 80041934 3C018007 */  lui        $at, %hi(D_8006BFD8)
/* EAE48 80041938 AC24BFD8 */  sw         $a0, %lo(D_8006BFD8)($at)
/* EAE4C 8004193C A482001C */  sh         $v0, 0x1c($a0)
/* EAE50 80041940 0C02939C */  jal        func_800A4E70
/* EAE54 80041944 AFB00010 */   sw        $s0, 0x10($sp)
/* EAE58 80041948 00001021 */  addu       $v0, $zero, $zero
/* EAE5C 8004194C 24030001 */  addiu      $v1, $zero, 1
/* EAE60 80041950 3C018007 */  lui        $at, %hi(D_8006C03A)
/* EAE64 80041954 A020C03A */  sb         $zero, %lo(D_8006C03A)($at)
/* EAE68 80041958 08010C92 */  j          .L80043248
/* EAE6C 8004195C A663001C */   sh        $v1, 0x1c($s3)
.L80041960:
/* EAE70 80041960 3C028007 */  lui        $v0, %hi(D_8006C564)
/* EAE74 80041964 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* EAE78 80041968 14400025 */  bnez       $v0, .L80041A00
/* EAE7C 8004196C 24430001 */   addiu     $v1, $v0, 1
/* EAE80 80041970 0C00FF78 */  jal        func_8003FDE0_E92F0
/* EAE84 80041974 00000000 */   nop
/* EAE88 80041978 0C00DFD6 */  jal        func_80037F58_E1468
/* EAE8C 8004197C 24040001 */   addiu     $a0, $zero, 1
/* EAE90 80041980 00408821 */  addu       $s1, $v0, $zero
/* EAE94 80041984 8E240004 */  lw         $a0, 4($s1)
/* EAE98 80041988 3C108007 */  lui        $s0, %hi(D_80069F60_113470)
/* EAE9C 8004198C 26109F60 */  addiu      $s0, $s0, %lo(D_80069F60_113470)
/* EAEA0 80041990 0C0284DC */  jal        func_800A1370
/* EAEA4 80041994 02002821 */   addu      $a1, $s0, $zero
/* EAEA8 80041998 8E240004 */  lw         $a0, 4($s1)
/* EAEAC 8004199C 00021400 */  sll        $v0, $v0, 0x10
/* EAEB0 800419A0 0C02859C */  jal        func_800A1670
/* EAEB4 800419A4 00022C03 */   sra       $a1, $v0, 0x10
/* EAEB8 800419A8 8E240004 */  lw         $a0, 4($s1)
/* EAEBC 800419AC 02002821 */  addu       $a1, $s0, $zero
/* EAEC0 800419B0 0C0284DC */  jal        func_800A1370
/* EAEC4 800419B4 00408021 */   addu      $s0, $v0, $zero
/* EAEC8 800419B8 8E240004 */  lw         $a0, 4($s1)
/* EAECC 800419BC 00021400 */  sll        $v0, $v0, 0x10
/* EAED0 800419C0 0C0285CC */  jal        func_800A1730
/* EAED4 800419C4 00022C03 */   sra       $a1, $v0, 0x10
/* EAED8 800419C8 92050006 */  lbu        $a1, 6($s0)
/* EAEDC 800419CC 92060007 */  lbu        $a2, 7($s0)
/* EAEE0 800419D0 24440020 */  addiu      $a0, $v0, 0x20
/* EAEE4 800419D4 0C029558 */  jal        func_800A5560
/* EAEE8 800419D8 24070002 */   addiu     $a3, $zero, 2
/* EAEEC 800419DC 00402021 */  addu       $a0, $v0, $zero
/* EAEF0 800419E0 3C018007 */  lui        $at, %hi(D_8006C024)
/* EAEF4 800419E4 AC24C024 */  sw         $a0, %lo(D_8006C024)($at)
/* EAEF8 800419E8 AC920014 */  sw         $s2, 0x14($a0)
/* EAEFC 800419EC 0C02970E */  jal        func_800A5C38
/* EAF00 800419F0 AC800018 */   sw        $zero, 0x18($a0)
/* EAF04 800419F4 3C028007 */  lui        $v0, %hi(D_8006C564)
/* EAF08 800419F8 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* EAF0C 800419FC 24430001 */  addiu      $v1, $v0, 1
.L80041A00:
/* EAF10 80041A00 3C018007 */  lui        $at, %hi(D_8006C564)
/* EAF14 80041A04 AC23C564 */  sw         $v1, %lo(D_8006C564)($at)
/* EAF18 80041A08 24030002 */  addiu      $v1, $zero, 2
/* EAF1C 80041A0C 1443060E */  bne        $v0, $v1, .L80043248
/* EAF20 80041A10 00001021 */   addu      $v0, $zero, $zero
/* EAF24 80041A14 0C02A5D2 */  jal        func_800A9748
/* EAF28 80041A18 24040003 */   addiu     $a0, $zero, 3
/* EAF2C 80041A1C 24020002 */  addiu      $v0, $zero, 2
/* EAF30 80041A20 3C018007 */  lui        $at, %hi(D_8006C008)
/* EAF34 80041A24 A420C008 */  sh         $zero, %lo(D_8006C008)($at)
/* EAF38 80041A28 08010C91 */  j          .L80043244
/* EAF3C 80041A2C A662001C */   sh        $v0, 0x1c($s3)
.L80041A30:
/* EAF40 80041A30 3C048007 */  lui        $a0, %hi(D_8006C024)
/* EAF44 80041A34 0C02970E */  jal        func_800A5C38
/* EAF48 80041A38 8C84C024 */   lw        $a0, %lo(D_8006C024)($a0)
/* EAF4C 80041A3C 0C00DFD6 */  jal        func_80037F58_E1468
/* EAF50 80041A40 24040001 */   addiu     $a0, $zero, 1
/* EAF54 80041A44 00408821 */  addu       $s1, $v0, $zero
/* EAF58 80041A48 0C00E032 */  jal        func_800380C8_E15D8
/* EAF5C 80041A4C 24040001 */   addiu     $a0, $zero, 1
/* EAF60 80041A50 8E240008 */  lw         $a0, 8($s1)
/* EAF64 80041A54 8483001E */  lh         $v1, 0x1e($a0)
/* EAF68 80041A58 24020002 */  addiu      $v0, $zero, 2
/* EAF6C 80041A5C 14620025 */  bne        $v1, $v0, .L80041AF4
/* EAF70 80041A60 00008021 */   addu      $s0, $zero, $zero
/* EAF74 80041A64 84820022 */  lh         $v0, 0x22($a0)
/* EAF78 80041A68 54520023 */  bnel       $v0, $s2, .L80041AF8
/* EAF7C 80041A6C 26040037 */   addiu     $a0, $s0, 0x37
/* EAF80 80041A70 3C038015 */  lui        $v1, %hi(D_80149F90)
/* EAF84 80041A74 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* EAF88 80041A78 2402003C */  addiu      $v0, $zero, 0x3c
/* EAF8C 80041A7C 0043001A */  div        $zero, $v0, $v1
/* EAF90 80041A80 14600002 */  bnez       $v1, .L80041A8C
/* EAF94 80041A84 00000000 */   nop
/* EAF98 80041A88 0007000D */  break      7
.L80041A8C:
/* EAF9C 80041A8C 2401FFFF */   addiu     $at, $zero, -1
/* EAFA0 80041A90 14610004 */  bne        $v1, $at, .L80041AA4
/* EAFA4 80041A94 3C018000 */   lui       $at, 0x8000
/* EAFA8 80041A98 14410002 */  bne        $v0, $at, .L80041AA4
/* EAFAC 80041A9C 00000000 */   nop
/* EAFB0 80041AA0 0006000D */  break      6
.L80041AA4:
/* EAFB4 80041AA4 00001012 */   mflo      $v0
/* EAFB8 80041AA8 3C018007 */  lui        $at, %hi(D_80069F68_113478)
/* EAFBC 80041AAC D4229F68 */  ldc1       $f2, %lo(D_80069F68_113478)($at)
/* EAFC0 80041AB0 44820000 */  mtc1       $v0, $f0
/* EAFC4 80041AB4 00000000 */  nop
/* EAFC8 80041AB8 46800021 */  cvt.d.w    $f0, $f0
/* EAFCC 80041ABC 46220002 */  mul.d      $f0, $f0, $f2
/* EAFD0 80041AC0 4620008D */  trunc.w.d  $f2, $f0
/* EAFD4 80041AC4 44041000 */  mfc1       $a0, $f2
/* EAFD8 80041AC8 0C02A5D2 */  jal        func_800A9748
/* EAFDC 80041ACC 00000000 */   nop
/* EAFE0 80041AD0 0C026DD5 */  jal        func_8009B754
/* EAFE4 80041AD4 24040015 */   addiu     $a0, $zero, 0x15
/* EAFE8 80041AD8 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* EAFEC 80041ADC 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* EAFF0 80041AE0 00402021 */  addu       $a0, $v0, $zero
/* EAFF4 80041AE4 3C018007 */  lui        $at, %hi(D_80068FA0_1124B0)
/* EAFF8 80041AE8 AC248FA0 */  sw         $a0, %lo(D_80068FA0_1124B0)($at)
/* EAFFC 80041AEC 0C026E66 */  jal        func_8009B998
/* EB000 80041AF0 24A50010 */   addiu     $a1, $a1, 0x10
.L80041AF4:
/* EB004 80041AF4 26040037 */  addiu      $a0, $s0, 0x37
.L80041AF8:
/* EB008 80041AF8 0C00D8C1 */  jal        func_80036304_DF814
/* EB00C 80041AFC 3084FFFF */   andi      $a0, $a0, 0xffff
/* EB010 80041B00 8C44000C */  lw         $a0, 0xc($v0)
/* EB014 80041B04 0C028A40 */  jal        func_800A2900
/* EB018 80041B08 26100001 */   addiu     $s0, $s0, 1
/* EB01C 80041B0C 3202FFFF */  andi       $v0, $s0, 0xffff
/* EB020 80041B10 2C420020 */  sltiu      $v0, $v0, 0x20
/* EB024 80041B14 1440FFF8 */  bnez       $v0, .L80041AF8
/* EB028 80041B18 26040037 */   addiu     $a0, $s0, 0x37
/* EB02C 80041B1C 8E220008 */  lw         $v0, 8($s1)
/* EB030 80041B20 8442001E */  lh         $v0, 0x1e($v0)
/* EB034 80041B24 28420003 */  slti       $v0, $v0, 3
/* EB038 80041B28 1040001C */  beqz       $v0, .L80041B9C
/* EB03C 80041B2C 00000000 */   nop
/* EB040 80041B30 0C00D8C1 */  jal        func_80036304_DF814
/* EB044 80041B34 24040022 */   addiu     $a0, $zero, 0x22
/* EB048 80041B38 8C44000C */  lw         $a0, 0xc($v0)
/* EB04C 80041B3C 0C028A40 */  jal        func_800A2900
/* EB050 80041B40 00000000 */   nop
/* EB054 80041B44 0C00D8C1 */  jal        func_80036304_DF814
/* EB058 80041B48 24040023 */   addiu     $a0, $zero, 0x23
/* EB05C 80041B4C 8C44000C */  lw         $a0, 0xc($v0)
/* EB060 80041B50 0C028A40 */  jal        func_800A2900
/* EB064 80041B54 00000000 */   nop
/* EB068 80041B58 0C00D8C1 */  jal        func_80036304_DF814
/* EB06C 80041B5C 24040024 */   addiu     $a0, $zero, 0x24
/* EB070 80041B60 8C44000C */  lw         $a0, 0xc($v0)
/* EB074 80041B64 0C028A40 */  jal        func_800A2900
/* EB078 80041B68 00000000 */   nop
/* EB07C 80041B6C 0C00D8C1 */  jal        func_80036304_DF814
/* EB080 80041B70 24040028 */   addiu     $a0, $zero, 0x28
/* EB084 80041B74 8C44000C */  lw         $a0, 0xc($v0)
/* EB088 80041B78 0C028A40 */  jal        func_800A2900
/* EB08C 80041B7C 00000000 */   nop
/* EB090 80041B80 0C00D8C1 */  jal        func_80036304_DF814
/* EB094 80041B84 24040029 */   addiu     $a0, $zero, 0x29
/* EB098 80041B88 8C44000C */  lw         $a0, 0xc($v0)
/* EB09C 80041B8C 0C028A40 */  jal        func_800A2900
/* EB0A0 80041B90 00000000 */   nop
/* EB0A4 80041B94 08010713 */  j          .L80041C4C
/* EB0A8 80041B98 00000000 */   nop
.L80041B9C:
/* EB0AC 80041B9C 0C00D8C1 */  jal        func_80036304_DF814
/* EB0B0 80041BA0 24040025 */   addiu     $a0, $zero, 0x25
/* EB0B4 80041BA4 8C44000C */  lw         $a0, 0xc($v0)
/* EB0B8 80041BA8 0C028A40 */  jal        func_800A2900
/* EB0BC 80041BAC 00000000 */   nop
/* EB0C0 80041BB0 0C00D8C1 */  jal        func_80036304_DF814
/* EB0C4 80041BB4 24040026 */   addiu     $a0, $zero, 0x26
/* EB0C8 80041BB8 8C44000C */  lw         $a0, 0xc($v0)
/* EB0CC 80041BBC 0C028A40 */  jal        func_800A2900
/* EB0D0 80041BC0 00000000 */   nop
/* EB0D4 80041BC4 0C00D8C1 */  jal        func_80036304_DF814
/* EB0D8 80041BC8 24040027 */   addiu     $a0, $zero, 0x27
/* EB0DC 80041BCC 8C44000C */  lw         $a0, 0xc($v0)
/* EB0E0 80041BD0 0C028A40 */  jal        func_800A2900
/* EB0E4 80041BD4 00000000 */   nop
/* EB0E8 80041BD8 0C00D8C1 */  jal        func_80036304_DF814
/* EB0EC 80041BDC 2404002A */   addiu     $a0, $zero, 0x2a
/* EB0F0 80041BE0 8C44000C */  lw         $a0, 0xc($v0)
/* EB0F4 80041BE4 0C028A40 */  jal        func_800A2900
/* EB0F8 80041BE8 00000000 */   nop
/* EB0FC 80041BEC 0C00D8C1 */  jal        func_80036304_DF814
/* EB100 80041BF0 2404002B */   addiu     $a0, $zero, 0x2b
/* EB104 80041BF4 8C44000C */  lw         $a0, 0xc($v0)
/* EB108 80041BF8 0C028A40 */  jal        func_800A2900
/* EB10C 80041BFC 00000000 */   nop
/* EB110 80041C00 3C038007 */  lui        $v1, %hi(D_8006C008)
/* EB114 80041C04 9463C008 */  lhu        $v1, %lo(D_8006C008)($v1)
/* EB118 80041C08 3C014020 */  lui        $at, 0x4020
/* EB11C 80041C0C 44811000 */  mtc1       $at, $f2
/* EB120 80041C10 24630001 */  addiu      $v1, $v1, 1
/* EB124 80041C14 00031400 */  sll        $v0, $v1, 0x10
/* EB128 80041C18 00021403 */  sra        $v0, $v0, 0x10
/* EB12C 80041C1C 44820000 */  mtc1       $v0, $f0
/* EB130 80041C20 00000000 */  nop
/* EB134 80041C24 46800020 */  cvt.s.w    $f0, $f0
/* EB138 80041C28 46020003 */  div.s      $f0, $f0, $f2
/* EB13C 80041C2C 3C01C2C8 */  lui        $at, 0xc2c8
/* EB140 80041C30 44811000 */  mtc1       $at, $f2
/* EB144 80041C34 00000000 */  nop
/* EB148 80041C38 46020000 */  add.s      $f0, $f0, $f2
/* EB14C 80041C3C 3C018007 */  lui        $at, %hi(D_8006C008)
/* EB150 80041C40 A423C008 */  sh         $v1, %lo(D_8006C008)($at)
/* EB154 80041C44 3C018015 */  lui        $at, %hi(D_8014A088)
/* EB158 80041C48 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
.L80041C4C:
/* EB15C 80041C4C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* EB160 80041C50 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* EB164 80041C54 2403003C */  addiu      $v1, $zero, 0x3c
/* EB168 80041C58 0062001A */  div        $zero, $v1, $v0
/* EB16C 80041C5C 14400002 */  bnez       $v0, .L80041C68
/* EB170 80041C60 00000000 */   nop
/* EB174 80041C64 0007000D */  break      7
.L80041C68:
/* EB178 80041C68 2401FFFF */   addiu     $at, $zero, -1
/* EB17C 80041C6C 14410004 */  bne        $v0, $at, .L80041C80
/* EB180 80041C70 3C018000 */   lui       $at, 0x8000
/* EB184 80041C74 14610002 */  bne        $v1, $at, .L80041C80
/* EB188 80041C78 00000000 */   nop
/* EB18C 80041C7C 0006000D */  break      6
.L80041C80:
/* EB190 80041C80 00001812 */   mflo      $v1
/* EB194 80041C84 3C048007 */  lui        $a0, %hi(D_8006C564)
/* EB198 80041C88 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* EB19C 80041C8C 00031080 */  sll        $v0, $v1, 2
/* EB1A0 80041C90 00431021 */  addu       $v0, $v0, $v1
/* EB1A4 80041C94 1482056C */  bne        $a0, $v0, .L80043248
/* EB1A8 80041C98 00001021 */   addu      $v0, $zero, $zero
/* EB1AC 80041C9C 24020003 */  addiu      $v0, $zero, 3
/* EB1B0 80041CA0 08010C91 */  j          .L80043244
/* EB1B4 80041CA4 A662001C */   sh        $v0, 0x1c($s3)
.L80041CA8:
/* EB1B8 80041CA8 0C026DD5 */  jal        func_8009B754
/* EB1BC 80041CAC 240400BB */   addiu     $a0, $zero, 0xbb
/* EB1C0 80041CB0 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* EB1C4 80041CB4 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* EB1C8 80041CB8 00402021 */  addu       $a0, $v0, $zero
/* EB1CC 80041CBC 3C018007 */  lui        $at, %hi(D_80068FA0_1124B0)
/* EB1D0 80041CC0 AC248FA0 */  sw         $a0, %lo(D_80068FA0_1124B0)($at)
/* EB1D4 80041CC4 00031C00 */  sll        $v1, $v1, 0x10
/* EB1D8 80041CC8 00032C03 */  sra        $a1, $v1, 0x10
/* EB1DC 80041CCC 00031FC2 */  srl        $v1, $v1, 0x1f
/* EB1E0 80041CD0 00A32821 */  addu       $a1, $a1, $v1
/* EB1E4 80041CD4 0C026E66 */  jal        func_8009B998
/* EB1E8 80041CD8 00052843 */   sra       $a1, $a1, 1
/* EB1EC 80041CDC 3C048007 */  lui        $a0, %hi(D_8006C024)
/* EB1F0 80041CE0 0C0295AA */  jal        func_800A56A8
/* EB1F4 80041CE4 8C84C024 */   lw        $a0, %lo(D_8006C024)($a0)
/* EB1F8 80041CE8 24020004 */  addiu      $v0, $zero, 4
/* EB1FC 80041CEC A662001C */  sh         $v0, 0x1c($s3)
.L80041CF0:
/* EB200 80041CF0 0C00D8C1 */  jal        func_80036304_DF814
/* EB204 80041CF4 24040020 */   addiu     $a0, $zero, 0x20
/* EB208 80041CF8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* EB20C 80041CFC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* EB210 80041D00 00408021 */  addu       $s0, $v0, $zero
/* EB214 80041D04 04610002 */  bgez       $v1, .L80041D10
/* EB218 80041D08 00601021 */   addu      $v0, $v1, $zero
/* EB21C 80041D0C 24620003 */  addiu      $v0, $v1, 3
.L80041D10:
/* EB220 80041D10 00021083 */  sra        $v0, $v0, 2
/* EB224 80041D14 00021080 */  sll        $v0, $v0, 2
/* EB228 80041D18 00621023 */  subu       $v0, $v1, $v0
/* EB22C 80041D1C 000210C0 */  sll        $v0, $v0, 3
/* EB230 80041D20 304200FF */  andi       $v0, $v0, 0xff
/* EB234 80041D24 AFA20010 */  sw         $v0, 0x10($sp)
/* EB238 80041D28 8E04000C */  lw         $a0, 0xc($s0)
/* EB23C 80041D2C 240500FF */  addiu      $a1, $zero, 0xff
/* EB240 80041D30 240600FF */  addiu      $a2, $zero, 0xff
/* EB244 80041D34 0C028E41 */  jal        func_800A3904
/* EB248 80041D38 240700FF */   addiu     $a3, $zero, 0xff
/* EB24C 80041D3C 8E04000C */  lw         $a0, 0xc($s0)
/* EB250 80041D40 0C028A40 */  jal        func_800A2900
/* EB254 80041D44 00000000 */   nop
/* EB258 80041D48 3C048007 */  lui        $a0, %hi(D_8006C564)
/* EB25C 80041D4C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* EB260 80041D50 000417C2 */  srl        $v0, $a0, 0x1f
/* EB264 80041D54 00821021 */  addu       $v0, $a0, $v0
/* EB268 80041D58 00021043 */  sra        $v0, $v0, 1
/* EB26C 80041D5C 00021040 */  sll        $v0, $v0, 1
/* EB270 80041D60 00822023 */  subu       $a0, $a0, $v0
/* EB274 80041D64 2484002C */  addiu      $a0, $a0, 0x2c
/* EB278 80041D68 0C00D8C1 */  jal        func_80036304_DF814
/* EB27C 80041D6C 3084FFFF */   andi      $a0, $a0, 0xffff
/* EB280 80041D70 8C44000C */  lw         $a0, 0xc($v0)
/* EB284 80041D74 0C028A40 */  jal        func_800A2900
/* EB288 80041D78 00000000 */   nop
/* EB28C 80041D7C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* EB290 80041D80 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* EB294 80041D84 2403003C */  addiu      $v1, $zero, 0x3c
/* EB298 80041D88 0062001A */  div        $zero, $v1, $v0
/* EB29C 80041D8C 14400002 */  bnez       $v0, .L80041D98
/* EB2A0 80041D90 00000000 */   nop
/* EB2A4 80041D94 0007000D */  break      7
.L80041D98:
/* EB2A8 80041D98 2401FFFF */   addiu     $at, $zero, -1
/* EB2AC 80041D9C 14410004 */  bne        $v0, $at, .L80041DB0
/* EB2B0 80041DA0 3C018000 */   lui       $at, 0x8000
/* EB2B4 80041DA4 14610002 */  bne        $v1, $at, .L80041DB0
/* EB2B8 80041DA8 00000000 */   nop
/* EB2BC 80041DAC 0006000D */  break      6
.L80041DB0:
/* EB2C0 80041DB0 00001812 */   mflo      $v1
/* EB2C4 80041DB4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* EB2C8 80041DB8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* EB2CC 80041DBC 00031040 */  sll        $v0, $v1, 1
/* EB2D0 80041DC0 00431021 */  addu       $v0, $v0, $v1
/* EB2D4 80041DC4 14820520 */  bne        $a0, $v0, .L80043248
/* EB2D8 80041DC8 00001021 */   addu      $v0, $zero, $zero
/* EB2DC 80041DCC 24020005 */  addiu      $v0, $zero, 5
/* EB2E0 80041DD0 08010C91 */  j          .L80043244
/* EB2E4 80041DD4 A662001C */   sh        $v0, 0x1c($s3)
.L80041DD8:
/* EB2E8 80041DD8 24020006 */  addiu      $v0, $zero, 6
/* EB2EC 80041DDC A662001C */  sh         $v0, 0x1c($s3)
.L80041DE0:
/* EB2F0 80041DE0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* EB2F4 80041DE4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* EB2F8 80041DE8 14400006 */  bnez       $v0, .L80041E04
/* EB2FC 80041DEC 00000000 */   nop
/* EB300 80041DF0 3C013F99 */  lui        $at, 0x3f99
/* EB304 80041DF4 3421999A */  ori        $at, $at, 0x999a
/* EB308 80041DF8 44810000 */  mtc1       $at, $f0
/* EB30C 80041DFC 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB310 80041E00 E420C004 */  swc1       $f0, %lo(D_8006C004)($at)
.L80041E04:
/* EB314 80041E04 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB318 80041E08 C422C004 */  lwc1       $f2, %lo(D_8006C004)($at)
/* EB31C 80041E0C 3C013F80 */  lui        $at, 0x3f80
/* EB320 80041E10 44810000 */  mtc1       $at, $f0
/* EB324 80041E14 00000000 */  nop
/* EB328 80041E18 4602003C */  c.lt.s     $f0, $f2
/* EB32C 80041E1C 00000000 */  nop
/* EB330 80041E20 45000008 */  bc1f       .L80041E44
/* EB334 80041E24 00000000 */   nop
/* EB338 80041E28 3C013A83 */  lui        $at, 0x3a83
/* EB33C 80041E2C 3421126F */  ori        $at, $at, 0x126f
/* EB340 80041E30 44810000 */  mtc1       $at, $f0
/* EB344 80041E34 00000000 */  nop
/* EB348 80041E38 46001001 */  sub.s      $f0, $f2, $f0
/* EB34C 80041E3C 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB350 80041E40 E420C004 */  swc1       $f0, %lo(D_8006C004)($at)
.L80041E44:
/* EB354 80041E44 0C00D8C1 */  jal        func_80036304_DF814
/* EB358 80041E48 2404002E */   addiu     $a0, $zero, 0x2e
/* EB35C 80041E4C 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB360 80041E50 C420C004 */  lwc1       $f0, %lo(D_8006C004)($at)
/* EB364 80041E54 46000000 */  add.s      $f0, $f0, $f0
/* EB368 80041E58 00408021 */  addu       $s0, $v0, $zero
/* EB36C 80041E5C 8E04000C */  lw         $a0, 0xc($s0)
/* EB370 80041E60 44060000 */  mfc1       $a2, $f0
/* EB374 80041E64 00002821 */  addu       $a1, $zero, $zero
/* EB378 80041E68 0C02915B */  jal        func_800A456C
/* EB37C 80041E6C 00C03821 */   addu      $a3, $a2, $zero
/* EB380 80041E70 8E04000C */  lw         $a0, 0xc($s0)
/* EB384 80041E74 0C028A40 */  jal        func_800A2900
/* EB388 80041E78 00000000 */   nop
/* EB38C 80041E7C 0C00D8C1 */  jal        func_80036304_DF814
/* EB390 80041E80 2404002F */   addiu     $a0, $zero, 0x2f
/* EB394 80041E84 00408021 */  addu       $s0, $v0, $zero
/* EB398 80041E88 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB39C 80041E8C C420C004 */  lwc1       $f0, %lo(D_8006C004)($at)
/* EB3A0 80041E90 8E04000C */  lw         $a0, 0xc($s0)
/* EB3A4 80041E94 44060000 */  mfc1       $a2, $f0
/* EB3A8 80041E98 00002821 */  addu       $a1, $zero, $zero
/* EB3AC 80041E9C 0C02915B */  jal        func_800A456C
/* EB3B0 80041EA0 00C03821 */   addu      $a3, $a2, $zero
/* EB3B4 80041EA4 8E04000C */  lw         $a0, 0xc($s0)
/* EB3B8 80041EA8 0C028A40 */  jal        func_800A2900
/* EB3BC 80041EAC 00000000 */   nop
/* EB3C0 80041EB0 0C00D8C1 */  jal        func_80036304_DF814
/* EB3C4 80041EB4 24040036 */   addiu     $a0, $zero, 0x36
/* EB3C8 80041EB8 00408021 */  addu       $s0, $v0, $zero
/* EB3CC 80041EBC 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB3D0 80041EC0 C420C004 */  lwc1       $f0, %lo(D_8006C004)($at)
/* EB3D4 80041EC4 8E04000C */  lw         $a0, 0xc($s0)
/* EB3D8 80041EC8 44060000 */  mfc1       $a2, $f0
/* EB3DC 80041ECC 00002821 */  addu       $a1, $zero, $zero
/* EB3E0 80041ED0 0C02915B */  jal        func_800A456C
/* EB3E4 80041ED4 00C03821 */   addu      $a3, $a2, $zero
/* EB3E8 80041ED8 8E04000C */  lw         $a0, 0xc($s0)
/* EB3EC 80041EDC 0C028A40 */  jal        func_800A2900
/* EB3F0 80041EE0 00000000 */   nop
/* EB3F4 80041EE4 0C00D8C1 */  jal        func_80036304_DF814
/* EB3F8 80041EE8 24040020 */   addiu     $a0, $zero, 0x20
/* EB3FC 80041EEC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* EB400 80041EF0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* EB404 80041EF4 00408021 */  addu       $s0, $v0, $zero
/* EB408 80041EF8 04610002 */  bgez       $v1, .L80041F04
/* EB40C 80041EFC 00601021 */   addu      $v0, $v1, $zero
/* EB410 80041F00 24620003 */  addiu      $v0, $v1, 3
.L80041F04:
/* EB414 80041F04 00021083 */  sra        $v0, $v0, 2
/* EB418 80041F08 00021080 */  sll        $v0, $v0, 2
/* EB41C 80041F0C 00621023 */  subu       $v0, $v1, $v0
/* EB420 80041F10 00021080 */  sll        $v0, $v0, 2
/* EB424 80041F14 24420008 */  addiu      $v0, $v0, 8
/* EB428 80041F18 304200FF */  andi       $v0, $v0, 0xff
/* EB42C 80041F1C AFA20010 */  sw         $v0, 0x10($sp)
/* EB430 80041F20 8E04000C */  lw         $a0, 0xc($s0)
/* EB434 80041F24 240500FF */  addiu      $a1, $zero, 0xff
/* EB438 80041F28 240600FF */  addiu      $a2, $zero, 0xff
/* EB43C 80041F2C 0C028E41 */  jal        func_800A3904
/* EB440 80041F30 240700FF */   addiu     $a3, $zero, 0xff
/* EB444 80041F34 8E04000C */  lw         $a0, 0xc($s0)
/* EB448 80041F38 0C028A40 */  jal        func_800A2900
/* EB44C 80041F3C 00000000 */   nop
/* EB450 80041F40 0C00D8C1 */  jal        func_80036304_DF814
/* EB454 80041F44 24040031 */   addiu     $a0, $zero, 0x31
/* EB458 80041F48 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB45C 80041F4C C420C004 */  lwc1       $f0, %lo(D_8006C004)($at)
/* EB460 80041F50 3C013F99 */  lui        $at, 0x3f99
/* EB464 80041F54 3421999A */  ori        $at, $at, 0x999a
/* EB468 80041F58 4481A000 */  mtc1       $at, $f20
/* EB46C 80041F5C 00000000 */  nop
/* EB470 80041F60 46140002 */  mul.s      $f0, $f0, $f20
/* EB474 80041F64 00408021 */  addu       $s0, $v0, $zero
/* EB478 80041F68 8E04000C */  lw         $a0, 0xc($s0)
/* EB47C 80041F6C 44060000 */  mfc1       $a2, $f0
/* EB480 80041F70 00002821 */  addu       $a1, $zero, $zero
/* EB484 80041F74 0C02915B */  jal        func_800A456C
/* EB488 80041F78 00C03821 */   addu      $a3, $a2, $zero
/* EB48C 80041F7C 240200FF */  addiu      $v0, $zero, 0xff
/* EB490 80041F80 AFA20010 */  sw         $v0, 0x10($sp)
/* EB494 80041F84 8E04000C */  lw         $a0, 0xc($s0)
/* EB498 80041F88 240500FF */  addiu      $a1, $zero, 0xff
/* EB49C 80041F8C 240600FF */  addiu      $a2, $zero, 0xff
/* EB4A0 80041F90 0C028E41 */  jal        func_800A3904
/* EB4A4 80041F94 240700FF */   addiu     $a3, $zero, 0xff
/* EB4A8 80041F98 8E04000C */  lw         $a0, 0xc($s0)
/* EB4AC 80041F9C 0C028A40 */  jal        func_800A2900
/* EB4B0 80041FA0 00000000 */   nop
/* EB4B4 80041FA4 0C00D8C1 */  jal        func_80036304_DF814
/* EB4B8 80041FA8 24040032 */   addiu     $a0, $zero, 0x32
/* EB4BC 80041FAC 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB4C0 80041FB0 C420C004 */  lwc1       $f0, %lo(D_8006C004)($at)
/* EB4C4 80041FB4 46140002 */  mul.s      $f0, $f0, $f20
/* EB4C8 80041FB8 00408021 */  addu       $s0, $v0, $zero
/* EB4CC 80041FBC 8E04000C */  lw         $a0, 0xc($s0)
/* EB4D0 80041FC0 44060000 */  mfc1       $a2, $f0
/* EB4D4 80041FC4 00002821 */  addu       $a1, $zero, $zero
/* EB4D8 80041FC8 0C02915B */  jal        func_800A456C
/* EB4DC 80041FCC 00C03821 */   addu      $a3, $a2, $zero
/* EB4E0 80041FD0 3C038007 */  lui        $v1, %hi(D_8006C564)
/* EB4E4 80041FD4 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* EB4E8 80041FD8 240500FF */  addiu      $a1, $zero, 0xff
/* EB4EC 80041FDC 000317C2 */  srl        $v0, $v1, 0x1f
/* EB4F0 80041FE0 00621021 */  addu       $v0, $v1, $v0
/* EB4F4 80041FE4 00021043 */  sra        $v0, $v0, 1
/* EB4F8 80041FE8 00021040 */  sll        $v0, $v0, 1
/* EB4FC 80041FEC 00621823 */  subu       $v1, $v1, $v0
/* EB500 80041FF0 00031940 */  sll        $v1, $v1, 5
/* EB504 80041FF4 2463FF90 */  addiu      $v1, $v1, -0x70
/* EB508 80041FF8 306300FF */  andi       $v1, $v1, 0xff
/* EB50C 80041FFC AFA30010 */  sw         $v1, 0x10($sp)
/* EB510 80042000 8E04000C */  lw         $a0, 0xc($s0)
/* EB514 80042004 240600FF */  addiu      $a2, $zero, 0xff
/* EB518 80042008 0C028E41 */  jal        func_800A3904
/* EB51C 8004200C 240700FF */   addiu     $a3, $zero, 0xff
/* EB520 80042010 8E04000C */  lw         $a0, 0xc($s0)
/* EB524 80042014 0C028A40 */  jal        func_800A2900
/* EB528 80042018 00000000 */   nop
/* EB52C 8004201C 0C00D8C1 */  jal        func_80036304_DF814
/* EB530 80042020 24040033 */   addiu     $a0, $zero, 0x33
/* EB534 80042024 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB538 80042028 C420C004 */  lwc1       $f0, %lo(D_8006C004)($at)
/* EB53C 8004202C 46140002 */  mul.s      $f0, $f0, $f20
/* EB540 80042030 00408021 */  addu       $s0, $v0, $zero
/* EB544 80042034 8E04000C */  lw         $a0, 0xc($s0)
/* EB548 80042038 44060000 */  mfc1       $a2, $f0
/* EB54C 8004203C 00002821 */  addu       $a1, $zero, $zero
/* EB550 80042040 0C02915B */  jal        func_800A456C
/* EB554 80042044 00C03821 */   addu      $a3, $a2, $zero
/* EB558 80042048 3C038007 */  lui        $v1, %hi(D_8006C564)
/* EB55C 8004204C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* EB560 80042050 240500FF */  addiu      $a1, $zero, 0xff
/* EB564 80042054 000317C2 */  srl        $v0, $v1, 0x1f
/* EB568 80042058 00621021 */  addu       $v0, $v1, $v0
/* EB56C 8004205C 00021043 */  sra        $v0, $v0, 1
/* EB570 80042060 00021040 */  sll        $v0, $v0, 1
/* EB574 80042064 00621823 */  subu       $v1, $v1, $v0
/* EB578 80042068 00031940 */  sll        $v1, $v1, 5
/* EB57C 8004206C 24630060 */  addiu      $v1, $v1, 0x60
/* EB580 80042070 306300FF */  andi       $v1, $v1, 0xff
/* EB584 80042074 AFA30010 */  sw         $v1, 0x10($sp)
/* EB588 80042078 8E04000C */  lw         $a0, 0xc($s0)
/* EB58C 8004207C 240600FF */  addiu      $a2, $zero, 0xff
/* EB590 80042080 0C028E41 */  jal        func_800A3904
/* EB594 80042084 240700FF */   addiu     $a3, $zero, 0xff
/* EB598 80042088 8E04000C */  lw         $a0, 0xc($s0)
/* EB59C 8004208C 0C028A40 */  jal        func_800A2900
/* EB5A0 80042090 00000000 */   nop
/* EB5A4 80042094 0C00D8C1 */  jal        func_80036304_DF814
/* EB5A8 80042098 24040034 */   addiu     $a0, $zero, 0x34
/* EB5AC 8004209C 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB5B0 800420A0 C420C004 */  lwc1       $f0, %lo(D_8006C004)($at)
/* EB5B4 800420A4 46140002 */  mul.s      $f0, $f0, $f20
/* EB5B8 800420A8 00408021 */  addu       $s0, $v0, $zero
/* EB5BC 800420AC 8E04000C */  lw         $a0, 0xc($s0)
/* EB5C0 800420B0 44060000 */  mfc1       $a2, $f0
/* EB5C4 800420B4 00002821 */  addu       $a1, $zero, $zero
/* EB5C8 800420B8 0C02915B */  jal        func_800A456C
/* EB5CC 800420BC 00C03821 */   addu      $a3, $a2, $zero
/* EB5D0 800420C0 8E04000C */  lw         $a0, 0xc($s0)
/* EB5D4 800420C4 0C028A40 */  jal        func_800A2900
/* EB5D8 800420C8 00000000 */   nop
/* EB5DC 800420CC 0C00D8C1 */  jal        func_80036304_DF814
/* EB5E0 800420D0 24040035 */   addiu     $a0, $zero, 0x35
/* EB5E4 800420D4 3C018007 */  lui        $at, %hi(D_8006C004)
/* EB5E8 800420D8 C420C004 */  lwc1       $f0, %lo(D_8006C004)($at)
/* EB5EC 800420DC 46140002 */  mul.s      $f0, $f0, $f20
/* EB5F0 800420E0 00408021 */  addu       $s0, $v0, $zero
/* EB5F4 800420E4 8E04000C */  lw         $a0, 0xc($s0)
/* EB5F8 800420E8 44060000 */  mfc1       $a2, $f0
/* EB5FC 800420EC 00002821 */  addu       $a1, $zero, $zero
/* EB600 800420F0 0C02915B */  jal        func_800A456C
/* EB604 800420F4 00C03821 */   addu      $a3, $a2, $zero
/* EB608 800420F8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* EB60C 800420FC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* EB610 80042100 240500FF */  addiu      $a1, $zero, 0xff
/* EB614 80042104 000317C2 */  srl        $v0, $v1, 0x1f
/* EB618 80042108 00621021 */  addu       $v0, $v1, $v0
/* EB61C 8004210C 00021043 */  sra        $v0, $v0, 1
/* EB620 80042110 00021040 */  sll        $v0, $v0, 1
/* EB624 80042114 00621823 */  subu       $v1, $v1, $v0
/* EB628 80042118 00031900 */  sll        $v1, $v1, 4
/* EB62C 8004211C 24630030 */  addiu      $v1, $v1, 0x30
/* EB630 80042120 306300FF */  andi       $v1, $v1, 0xff
/* EB634 80042124 AFA30010 */  sw         $v1, 0x10($sp)
/* EB638 80042128 8E04000C */  lw         $a0, 0xc($s0)
/* EB63C 8004212C 240600FF */  addiu      $a2, $zero, 0xff
/* EB640 80042130 0C028E41 */  jal        func_800A3904
/* EB644 80042134 240700FF */   addiu     $a3, $zero, 0xff
/* EB648 80042138 8E04000C */  lw         $a0, 0xc($s0)
/* EB64C 8004213C 0C028A40 */  jal        func_800A2900
/* EB650 80042140 00000000 */   nop
/* EB654 80042144 3C038015 */  lui        $v1, %hi(D_80149F90)
/* EB658 80042148 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* EB65C 8004214C 2402003C */  addiu      $v0, $zero, 0x3c
/* EB660 80042150 0043001A */  div        $zero, $v0, $v1
/* EB664 80042154 14600002 */  bnez       $v1, .L80042160
/* EB668 80042158 00000000 */   nop
/* EB66C 8004215C 0007000D */  break      7
.L80042160:
/* EB670 80042160 2401FFFF */   addiu     $at, $zero, -1
/* EB674 80042164 14610004 */  bne        $v1, $at, .L80042178
/* EB678 80042168 3C018000 */   lui       $at, 0x8000
/* EB67C 8004216C 14410002 */  bne        $v0, $at, .L80042178
/* EB680 80042170 00000000 */   nop
/* EB684 80042174 0006000D */  break      6
.L80042178:
/* EB688 80042178 00001012 */   mflo      $v0
/* EB68C 8004217C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* EB690 80042180 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* EB694 80042184 00021840 */  sll        $v1, $v0, 1
/* EB698 80042188 00621821 */  addu       $v1, $v1, $v0
/* EB69C 8004218C 00031840 */  sll        $v1, $v1, 1
/* EB6A0 80042190 1483042D */  bne        $a0, $v1, .L80043248
/* EB6A4 80042194 00001021 */   addu      $v0, $zero, $zero
/* EB6A8 80042198 24020007 */  addiu      $v0, $zero, 7
/* EB6AC 8004219C 08010C91 */  j          .L80043244
/* EB6B0 800421A0 A662001C */   sh        $v0, 0x1c($s3)
.L800421A4:
/* EB6B4 800421A4 3C028007 */  lui        $v0, %hi(D_8006C564)
/* EB6B8 800421A8 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* EB6BC 800421AC 14400043 */  bnez       $v0, .L800422BC
/* EB6C0 800421B0 24430001 */   addiu     $v1, $v0, 1
/* EB6C4 800421B4 0C01032F */  jal        func_80040CBC_EA1CC
/* EB6C8 800421B8 00000000 */   nop
/* EB6CC 800421BC 0C00D8C1 */  jal        func_80036304_DF814
/* EB6D0 800421C0 24040058 */   addiu     $a0, $zero, 0x58
/* EB6D4 800421C4 00408021 */  addu       $s0, $v0, $zero
/* EB6D8 800421C8 8E04000C */  lw         $a0, 0xc($s0)
/* EB6DC 800421CC 8C82000C */  lw         $v0, 0xc($a0)
/* EB6E0 800421D0 90430004 */  lbu        $v1, 4($v0)
/* EB6E4 800421D4 84450000 */  lh         $a1, ($v0)
/* EB6E8 800421D8 84460002 */  lh         $a2, 2($v0)
/* EB6EC 800421DC 10600002 */  beqz       $v1, .L800421E8
/* EB6F0 800421E0 24070002 */   addiu     $a3, $zero, 2
/* EB6F4 800421E4 24070001 */  addiu      $a3, $zero, 1
.L800421E8:
/* EB6F8 800421E8 8C840010 */  lw         $a0, 0x10($a0)
/* EB6FC 800421EC 0C029558 */  jal        func_800A5560
/* EB700 800421F0 2412FFFC */   addiu     $s2, $zero, -4
/* EB704 800421F4 00402021 */  addu       $a0, $v0, $zero
/* EB708 800421F8 24110005 */  addiu      $s1, $zero, 5
/* EB70C 800421FC 2402001E */  addiu      $v0, $zero, 0x1e
/* EB710 80042200 3C018007 */  lui        $at, %hi(D_8006C024)
/* EB714 80042204 AC24C024 */  sw         $a0, %lo(D_8006C024)($at)
/* EB718 80042208 AC920014 */  sw         $s2, 0x14($a0)
/* EB71C 8004220C AC910018 */  sw         $s1, 0x18($a0)
/* EB720 80042210 0C0295B3 */  jal        func_800A56CC
/* EB724 80042214 AC82001C */   sw        $v0, 0x1c($a0)
/* EB728 80042218 3C048007 */  lui        $a0, %hi(D_8006C024)
/* EB72C 8004221C 0C0295AA */  jal        func_800A56A8
/* EB730 80042220 8C84C024 */   lw        $a0, %lo(D_8006C024)($a0)
/* EB734 80042224 8E04000C */  lw         $a0, 0xc($s0)
/* EB738 80042228 8C82000C */  lw         $v0, 0xc($a0)
/* EB73C 8004222C 90430004 */  lbu        $v1, 4($v0)
/* EB740 80042230 84450000 */  lh         $a1, ($v0)
/* EB744 80042234 84460002 */  lh         $a2, 2($v0)
/* EB748 80042238 10600002 */  beqz       $v1, .L80042244
/* EB74C 8004223C 24070002 */   addiu     $a3, $zero, 2
/* EB750 80042240 24070001 */  addiu      $a3, $zero, 1
.L80042244:
/* EB754 80042244 8C840010 */  lw         $a0, 0x10($a0)
/* EB758 80042248 0C029558 */  jal        func_800A5560
/* EB75C 8004224C 2410000A */   addiu     $s0, $zero, 0xa
/* EB760 80042250 24040059 */  addiu      $a0, $zero, 0x59
/* EB764 80042254 3C018007 */  lui        $at, %hi(D_8006C028)
/* EB768 80042258 AC22C028 */  sw         $v0, %lo(D_8006C028)($at)
/* EB76C 8004225C AC520014 */  sw         $s2, 0x14($v0)
/* EB770 80042260 AC510018 */  sw         $s1, 0x18($v0)
/* EB774 80042264 0C00D8C1 */  jal        func_80036304_DF814
/* EB778 80042268 AC50001C */   sw        $s0, 0x1c($v0)
/* EB77C 8004226C 8C44000C */  lw         $a0, 0xc($v0)
/* EB780 80042270 8C82000C */  lw         $v0, 0xc($a0)
/* EB784 80042274 90430004 */  lbu        $v1, 4($v0)
/* EB788 80042278 84450000 */  lh         $a1, ($v0)
/* EB78C 8004227C 84460002 */  lh         $a2, 2($v0)
/* EB790 80042280 10600002 */  beqz       $v1, .L8004228C
/* EB794 80042284 24070002 */   addiu     $a3, $zero, 2
/* EB798 80042288 24070001 */  addiu      $a3, $zero, 1
.L8004228C:
/* EB79C 8004228C 0C029558 */  jal        func_800A5560
/* EB7A0 80042290 8C840010 */   lw        $a0, 0x10($a0)
/* EB7A4 80042294 24030002 */  addiu      $v1, $zero, 2
/* EB7A8 80042298 AC430014 */  sw         $v1, 0x14($v0)
/* EB7AC 8004229C 24030028 */  addiu      $v1, $zero, 0x28
/* EB7B0 800422A0 3C018007 */  lui        $at, %hi(D_8006C02C)
/* EB7B4 800422A4 AC22C02C */  sw         $v0, %lo(D_8006C02C)($at)
/* EB7B8 800422A8 AC500018 */  sw         $s0, 0x18($v0)
/* EB7BC 800422AC AC43001C */  sw         $v1, 0x1c($v0)
/* EB7C0 800422B0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* EB7C4 800422B4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* EB7C8 800422B8 24430001 */  addiu      $v1, $v0, 1
.L800422BC:
/* EB7CC 800422BC 3C018007 */  lui        $at, %hi(D_8006C564)
/* EB7D0 800422C0 AC23C564 */  sw         $v1, %lo(D_8006C564)($at)
/* EB7D4 800422C4 24030002 */  addiu      $v1, $zero, 2
/* EB7D8 800422C8 144303DF */  bne        $v0, $v1, .L80043248
/* EB7DC 800422CC 00001021 */   addu      $v0, $zero, $zero
/* EB7E0 800422D0 0C02A5AF */  jal        func_800A96BC
/* EB7E4 800422D4 24040001 */   addiu     $a0, $zero, 1
/* EB7E8 800422D8 3C048007 */  lui        $a0, %hi(D_80068FA0_1124B0)
/* EB7EC 800422DC 8C848FA0 */  lw         $a0, %lo(D_80068FA0_1124B0)($a0)
/* EB7F0 800422E0 3C01437E */  lui        $at, 0x437e
/* EB7F4 800422E4 44810000 */  mtc1       $at, $f0
/* EB7F8 800422E8 3C018007 */  lui        $at, %hi(D_8006C008)
/* EB7FC 800422EC A420C008 */  sh         $zero, %lo(D_8006C008)($at)
/* EB800 800422F0 3C018007 */  lui        $at, %hi(D_8006C010)
/* EB804 800422F4 E420C010 */  swc1       $f0, %lo(D_8006C010)($at)
/* EB808 800422F8 0C026E46 */  jal        func_8009B918
/* EB80C 800422FC 24050001 */   addiu     $a1, $zero, 1
/* EB810 80042300 24020008 */  addiu      $v0, $zero, 8
/* EB814 80042304 08010C91 */  j          .L80043244
/* EB818 80042308 A662001C */   sh        $v0, 0x1c($s3)
.L8004230C:
/* EB81C 8004230C 0C00E320 */  jal        func_80038C80_E2190
/* EB820 80042310 00000000 */   nop
/* EB824 80042314 3C018007 */  lui        $at, %hi(D_8006C010)
/* EB828 80042318 C422C010 */  lwc1       $f2, %lo(D_8006C010)($at)
/* EB82C 8004231C 44800000 */  mtc1       $zero, $f0
/* EB830 80042320 00000000 */  nop
/* EB834 80042324 46001032 */  c.eq.s     $f2, $f0
/* EB838 80042328 00000000 */  nop
/* EB83C 8004232C 45010029 */  bc1t       .L800423D4
/* EB840 80042330 00000000 */   nop
/* EB844 80042334 0C00D8C1 */  jal        func_80036304_DF814
/* EB848 80042338 24040017 */   addiu     $a0, $zero, 0x17
/* EB84C 8004233C 3C018007 */  lui        $at, %hi(D_8006C010)
/* EB850 80042340 C422C010 */  lwc1       $f2, %lo(D_8006C010)($at)
/* EB854 80042344 3C014F00 */  lui        $at, 0x4f00
/* EB858 80042348 44810000 */  mtc1       $at, $f0
/* EB85C 8004234C 00000000 */  nop
/* EB860 80042350 4602003E */  c.le.s     $f0, $f2
/* EB864 80042354 00000000 */  nop
/* EB868 80042358 00000000 */  nop
/* EB86C 8004235C 45010006 */  bc1t       .L80042378
/* EB870 80042360 00408021 */   addu      $s0, $v0, $zero
/* EB874 80042364 4600100D */  trunc.w.s  $f0, $f2
/* EB878 80042368 44030000 */  mfc1       $v1, $f0
/* EB87C 8004236C 00000000 */  nop
/* EB880 80042370 080108E4 */  j          .L80042390
/* EB884 80042374 306200FF */   andi      $v0, $v1, 0xff
.L80042378:
/* EB888 80042378 46001001 */  sub.s      $f0, $f2, $f0
/* EB88C 8004237C 4600008D */  trunc.w.s  $f2, $f0
/* EB890 80042380 44031000 */  mfc1       $v1, $f2
/* EB894 80042384 3C028000 */  lui        $v0, 0x8000
/* EB898 80042388 00621825 */  or         $v1, $v1, $v0
/* EB89C 8004238C 306200FF */  andi       $v0, $v1, 0xff
.L80042390:
/* EB8A0 80042390 AFA20010 */  sw         $v0, 0x10($sp)
/* EB8A4 80042394 8E04000C */  lw         $a0, 0xc($s0)
/* EB8A8 80042398 240500FF */  addiu      $a1, $zero, 0xff
/* EB8AC 8004239C 240600FF */  addiu      $a2, $zero, 0xff
/* EB8B0 800423A0 0C028E41 */  jal        func_800A3904
/* EB8B4 800423A4 240700FF */   addiu     $a3, $zero, 0xff
/* EB8B8 800423A8 8E04000C */  lw         $a0, 0xc($s0)
/* EB8BC 800423AC 0C028A40 */  jal        func_800A2900
/* EB8C0 800423B0 00000000 */   nop
/* EB8C4 800423B4 3C018007 */  lui        $at, %hi(D_8006C010)
/* EB8C8 800423B8 C420C010 */  lwc1       $f0, %lo(D_8006C010)($at)
/* EB8CC 800423BC 3C014000 */  lui        $at, 0x4000
/* EB8D0 800423C0 44811000 */  mtc1       $at, $f2
/* EB8D4 800423C4 00000000 */  nop
/* EB8D8 800423C8 46020001 */  sub.s      $f0, $f0, $f2
/* EB8DC 800423CC 3C018007 */  lui        $at, %hi(D_8006C010)
/* EB8E0 800423D0 E420C010 */  swc1       $f0, %lo(D_8006C010)($at)
.L800423D4:
/* EB8E4 800423D4 0C00DFD6 */  jal        func_80037F58_E1468
/* EB8E8 800423D8 24040002 */   addiu     $a0, $zero, 2
/* EB8EC 800423DC 00408821 */  addu       $s1, $v0, $zero
/* EB8F0 800423E0 8E240008 */  lw         $a0, 8($s1)
/* EB8F4 800423E4 8482001E */  lh         $v0, 0x1e($a0)
/* EB8F8 800423E8 2C430001 */  sltiu      $v1, $v0, 1
/* EB8FC 800423EC 38420002 */  xori       $v0, $v0, 2
/* EB900 800423F0 2C420001 */  sltiu      $v0, $v0, 1
/* EB904 800423F4 00621825 */  or         $v1, $v1, $v0
/* EB908 800423F8 10600024 */  beqz       $v1, .L8004248C
/* EB90C 800423FC 00000000 */   nop
/* EB910 80042400 84820022 */  lh         $v0, 0x22($a0)
/* EB914 80042404 1440000A */  bnez       $v0, .L80042430
/* EB918 80042408 00000000 */   nop
/* EB91C 8004240C 0C026DD5 */  jal        func_8009B754
/* EB920 80042410 24040021 */   addiu     $a0, $zero, 0x21
/* EB924 80042414 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* EB928 80042418 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* EB92C 8004241C 00402021 */  addu       $a0, $v0, $zero
/* EB930 80042420 3C018007 */  lui        $at, %hi(D_80068FA0_1124B0)
/* EB934 80042424 0C026E66 */  jal        func_8009B998
/* EB938 80042428 AC248FA0 */   sw        $a0, %lo(D_80068FA0_1124B0)($at)
/* EB93C 8004242C 8E240008 */  lw         $a0, 8($s1)
.L80042430:
/* EB940 80042430 8482001E */  lh         $v0, 0x1e($a0)
/* EB944 80042434 2C430001 */  sltiu      $v1, $v0, 1
/* EB948 80042438 38420002 */  xori       $v0, $v0, 2
/* EB94C 8004243C 2C420001 */  sltiu      $v0, $v0, 1
/* EB950 80042440 00621825 */  or         $v1, $v1, $v0
/* EB954 80042444 10600011 */  beqz       $v1, .L8004248C
/* EB958 80042448 24020005 */   addiu     $v0, $zero, 5
/* EB95C 8004244C 84830022 */  lh         $v1, 0x22($a0)
/* EB960 80042450 1462000E */  bne        $v1, $v0, .L8004248C
/* EB964 80042454 00000000 */   nop
/* EB968 80042458 0C026DD5 */  jal        func_8009B754
/* EB96C 8004245C 24040021 */   addiu     $a0, $zero, 0x21
/* EB970 80042460 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* EB974 80042464 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* EB978 80042468 00402021 */  addu       $a0, $v0, $zero
/* EB97C 8004246C 3C018007 */  lui        $at, %hi(D_80068FA0_1124B0)
/* EB980 80042470 AC248FA0 */  sw         $a0, %lo(D_80068FA0_1124B0)($at)
/* EB984 80042474 00031C00 */  sll        $v1, $v1, 0x10
/* EB988 80042478 00032C03 */  sra        $a1, $v1, 0x10
/* EB98C 8004247C 00031FC2 */  srl        $v1, $v1, 0x1f
/* EB990 80042480 00A32821 */  addu       $a1, $a1, $v1
/* EB994 80042484 0C026E66 */  jal        func_8009B998
/* EB998 80042488 00052843 */   sra       $a1, $a1, 1
.L8004248C:
/* EB99C 8004248C 0C00E032 */  jal        func_800380C8_E15D8
/* EB9A0 80042490 24040002 */   addiu     $a0, $zero, 2
/* EB9A4 80042494 3C038007 */  lui        $v1, %hi(D_8006C008)
/* EB9A8 80042498 9463C008 */  lhu        $v1, %lo(D_8006C008)($v1)
/* EB9AC 8004249C 3C014248 */  lui        $at, 0x4248
/* EB9B0 800424A0 44812000 */  mtc1       $at, $f4
/* EB9B4 800424A4 24630001 */  addiu      $v1, $v1, 1
/* EB9B8 800424A8 00031400 */  sll        $v0, $v1, 0x10
/* EB9BC 800424AC 00021403 */  sra        $v0, $v0, 0x10
/* EB9C0 800424B0 44821000 */  mtc1       $v0, $f2
/* EB9C4 800424B4 00000000 */  nop
/* EB9C8 800424B8 468010A0 */  cvt.s.w    $f2, $f2
/* EB9CC 800424BC 46041103 */  div.s      $f4, $f2, $f4
/* EB9D0 800424C0 3C014120 */  lui        $at, 0x4120
/* EB9D4 800424C4 44810000 */  mtc1       $at, $f0
/* EB9D8 800424C8 00000000 */  nop
/* EB9DC 800424CC 46001083 */  div.s      $f2, $f2, $f0
/* EB9E0 800424D0 3C01425A */  lui        $at, 0x425a
/* EB9E4 800424D4 3421E148 */  ori        $at, $at, 0xe148
/* EB9E8 800424D8 44810000 */  mtc1       $at, $f0
/* EB9EC 800424DC 3C01C2C8 */  lui        $at, 0xc2c8
/* EB9F0 800424E0 44813000 */  mtc1       $at, $f6
/* EB9F4 800424E4 46002100 */  add.s      $f4, $f4, $f0
/* EB9F8 800424E8 00008021 */  addu       $s0, $zero, $zero
/* EB9FC 800424EC 3C018015 */  lui        $at, %hi(D_8014A064)
/* EBA00 800424F0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EBA04 800424F4 46061080 */  add.s      $f2, $f2, $f6
/* EBA08 800424F8 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EBA0C 800424FC AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EBA10 80042500 3C018007 */  lui        $at, %hi(D_8006C008)
/* EBA14 80042504 A423C008 */  sh         $v1, %lo(D_8006C008)($at)
/* EBA18 80042508 3C018015 */  lui        $at, %hi(D_8014A068)
/* EBA1C 8004250C E424A068 */  swc1       $f4, %lo(D_8014A068)($at)
/* EBA20 80042510 3C018015 */  lui        $at, %hi(D_8014A088)
/* EBA24 80042514 E422A088 */  swc1       $f2, %lo(D_8014A088)($at)
/* EBA28 80042518 26040037 */  addiu      $a0, $s0, 0x37
.L8004251C:
/* EBA2C 8004251C 0C00D8C1 */  jal        func_80036304_DF814
/* EBA30 80042520 3084FFFF */   andi      $a0, $a0, 0xffff
/* EBA34 80042524 8C44000C */  lw         $a0, 0xc($v0)
/* EBA38 80042528 0C028A40 */  jal        func_800A2900
/* EBA3C 8004252C 26100001 */   addiu     $s0, $s0, 1
/* EBA40 80042530 3202FFFF */  andi       $v0, $s0, 0xffff
/* EBA44 80042534 2C420020 */  sltiu      $v0, $v0, 0x20
/* EBA48 80042538 5440FFF8 */  bnezl      $v0, .L8004251C
/* EBA4C 8004253C 26040037 */   addiu     $a0, $s0, 0x37
/* EBA50 80042540 3C048007 */  lui        $a0, %hi(D_8006C028)
/* EBA54 80042544 0C0295B3 */  jal        func_800A56CC
/* EBA58 80042548 8C84C028 */   lw        $a0, %lo(D_8006C028)($a0)
/* EBA5C 8004254C 0C00D8C1 */  jal        func_80036304_DF814
/* EBA60 80042550 24040058 */   addiu     $a0, $zero, 0x58
/* EBA64 80042554 8C44000C */  lw         $a0, 0xc($v0)
/* EBA68 80042558 0C028A40 */  jal        func_800A2900
/* EBA6C 8004255C 00000000 */   nop
/* EBA70 80042560 0C00D8C1 */  jal        func_80036304_DF814
/* EBA74 80042564 24040057 */   addiu     $a0, $zero, 0x57
/* EBA78 80042568 8C44000C */  lw         $a0, 0xc($v0)
/* EBA7C 8004256C 0C028A40 */  jal        func_800A2900
/* EBA80 80042570 00000000 */   nop
/* EBA84 80042574 3C048007 */  lui        $a0, %hi(D_8006C02C)
/* EBA88 80042578 0C0295B3 */  jal        func_800A56CC
/* EBA8C 8004257C 8C84C02C */   lw        $a0, %lo(D_8006C02C)($a0)
/* EBA90 80042580 0C00D8C1 */  jal        func_80036304_DF814
/* EBA94 80042584 24040059 */   addiu     $a0, $zero, 0x59
/* EBA98 80042588 00408021 */  addu       $s0, $v0, $zero
/* EBA9C 8004258C 8E04000C */  lw         $a0, 0xc($s0)
/* EBAA0 80042590 00002821 */  addu       $a1, $zero, $zero
/* EBAA4 80042594 0C02933E */  jal        func_800A4CF8
/* EBAA8 80042598 24060010 */   addiu     $a2, $zero, 0x10
/* EBAAC 8004259C 8E04000C */  lw         $a0, 0xc($s0)
/* EBAB0 800425A0 0C028A40 */  jal        func_800A2900
/* EBAB4 800425A4 00000000 */   nop
/* EBAB8 800425A8 3C038015 */  lui        $v1, %hi(D_80149F90)
/* EBABC 800425AC 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* EBAC0 800425B0 2402003C */  addiu      $v0, $zero, 0x3c
/* EBAC4 800425B4 0043001A */  div        $zero, $v0, $v1
/* EBAC8 800425B8 14600002 */  bnez       $v1, .L800425C4
/* EBACC 800425BC 00000000 */   nop
/* EBAD0 800425C0 0007000D */  break      7
.L800425C4:
/* EBAD4 800425C4 2401FFFF */   addiu     $at, $zero, -1
/* EBAD8 800425C8 14610004 */  bne        $v1, $at, .L800425DC
/* EBADC 800425CC 3C018000 */   lui       $at, 0x8000
/* EBAE0 800425D0 14410002 */  bne        $v0, $at, .L800425DC
/* EBAE4 800425D4 00000000 */   nop
/* EBAE8 800425D8 0006000D */  break      6
.L800425DC:
/* EBAEC 800425DC 00001012 */   mflo      $v0
/* EBAF0 800425E0 3C018007 */  lui        $at, %hi(D_80069F70_113480)
/* EBAF4 800425E4 D4229F70 */  ldc1       $f2, %lo(D_80069F70_113480)($at)
/* EBAF8 800425E8 44820000 */  mtc1       $v0, $f0
/* EBAFC 800425EC 00000000 */  nop
/* EBB00 800425F0 46800021 */  cvt.d.w    $f0, $f0
/* EBB04 800425F4 46220002 */  mul.d      $f0, $f0, $f2
/* EBB08 800425F8 3C018007 */  lui        $at, %hi(D_8006C564)
/* EBB0C 800425FC C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* EBB10 80042600 468010A1 */  cvt.d.w    $f2, $f2
/* EBB14 80042604 46201032 */  c.eq.d     $f2, $f0
/* EBB18 80042608 00000000 */  nop
/* EBB1C 8004260C 00000000 */  nop
/* EBB20 80042610 4500030C */  bc1f       .L80043244
/* EBB24 80042614 24020009 */   addiu     $v0, $zero, 9
/* EBB28 80042618 08010C91 */  j          .L80043244
/* EBB2C 8004261C A662001C */   sh        $v0, 0x1c($s3)
.L80042620:
/* EBB30 80042620 0C010429 */  jal        func_800410A4_EA5B4
/* EBB34 80042624 00000000 */   nop
/* EBB38 80042628 0C00D8C1 */  jal        func_80036304_DF814
/* EBB3C 8004262C 24040058 */   addiu     $a0, $zero, 0x58
/* EBB40 80042630 00408021 */  addu       $s0, $v0, $zero
/* EBB44 80042634 8E04000C */  lw         $a0, 0xc($s0)
/* EBB48 80042638 8C82000C */  lw         $v0, 0xc($a0)
/* EBB4C 8004263C 90430004 */  lbu        $v1, 4($v0)
/* EBB50 80042640 84450000 */  lh         $a1, ($v0)
/* EBB54 80042644 84460002 */  lh         $a2, 2($v0)
/* EBB58 80042648 10600002 */  beqz       $v1, .L80042654
/* EBB5C 8004264C 24070002 */   addiu     $a3, $zero, 2
/* EBB60 80042650 24070001 */  addiu      $a3, $zero, 1
.L80042654:
/* EBB64 80042654 8C840010 */  lw         $a0, 0x10($a0)
/* EBB68 80042658 0C029558 */  jal        func_800A5560
/* EBB6C 8004265C 2412FFFC */   addiu     $s2, $zero, -4
/* EBB70 80042660 00402021 */  addu       $a0, $v0, $zero
/* EBB74 80042664 24110005 */  addiu      $s1, $zero, 5
/* EBB78 80042668 2402001E */  addiu      $v0, $zero, 0x1e
/* EBB7C 8004266C 3C018007 */  lui        $at, %hi(D_8006C024)
/* EBB80 80042670 AC24C024 */  sw         $a0, %lo(D_8006C024)($at)
/* EBB84 80042674 AC920014 */  sw         $s2, 0x14($a0)
/* EBB88 80042678 AC910018 */  sw         $s1, 0x18($a0)
/* EBB8C 8004267C 0C0295B3 */  jal        func_800A56CC
/* EBB90 80042680 AC82001C */   sw        $v0, 0x1c($a0)
/* EBB94 80042684 3C048007 */  lui        $a0, %hi(D_8006C024)
/* EBB98 80042688 0C0295AA */  jal        func_800A56A8
/* EBB9C 8004268C 8C84C024 */   lw        $a0, %lo(D_8006C024)($a0)
/* EBBA0 80042690 8E04000C */  lw         $a0, 0xc($s0)
/* EBBA4 80042694 8C82000C */  lw         $v0, 0xc($a0)
/* EBBA8 80042698 90430004 */  lbu        $v1, 4($v0)
/* EBBAC 8004269C 84450000 */  lh         $a1, ($v0)
/* EBBB0 800426A0 84460002 */  lh         $a2, 2($v0)
/* EBBB4 800426A4 10600002 */  beqz       $v1, .L800426B0
/* EBBB8 800426A8 24070002 */   addiu     $a3, $zero, 2
/* EBBBC 800426AC 24070001 */  addiu      $a3, $zero, 1
.L800426B0:
/* EBBC0 800426B0 0C029558 */  jal        func_800A5560
/* EBBC4 800426B4 8C840010 */   lw        $a0, 0x10($a0)
/* EBBC8 800426B8 24040059 */  addiu      $a0, $zero, 0x59
/* EBBCC 800426BC 2403000A */  addiu      $v1, $zero, 0xa
/* EBBD0 800426C0 3C018007 */  lui        $at, %hi(D_8006C030)
/* EBBD4 800426C4 AC22C030 */  sw         $v0, %lo(D_8006C030)($at)
/* EBBD8 800426C8 AC520014 */  sw         $s2, 0x14($v0)
/* EBBDC 800426CC AC510018 */  sw         $s1, 0x18($v0)
/* EBBE0 800426D0 0C00D8C1 */  jal        func_80036304_DF814
/* EBBE4 800426D4 AC43001C */   sw        $v1, 0x1c($v0)
/* EBBE8 800426D8 8C44000C */  lw         $a0, 0xc($v0)
/* EBBEC 800426DC 8C82000C */  lw         $v0, 0xc($a0)
/* EBBF0 800426E0 90430004 */  lbu        $v1, 4($v0)
/* EBBF4 800426E4 84450000 */  lh         $a1, ($v0)
/* EBBF8 800426E8 84460002 */  lh         $a2, 2($v0)
/* EBBFC 800426EC 10600002 */  beqz       $v1, .L800426F8
/* EBC00 800426F0 24070002 */   addiu     $a3, $zero, 2
/* EBC04 800426F4 24070001 */  addiu      $a3, $zero, 1
.L800426F8:
/* EBC08 800426F8 0C029558 */  jal        func_800A5560
/* EBC0C 800426FC 8C840010 */   lw        $a0, 0x10($a0)
/* EBC10 80042700 3C01C300 */  lui        $at, 0xc300
/* EBC14 80042704 44810000 */  mtc1       $at, $f0
/* EBC18 80042708 3C01435F */  lui        $at, 0x435f
/* EBC1C 8004270C 44811000 */  mtc1       $at, $f2
/* EBC20 80042710 24030002 */  addiu      $v1, $zero, 2
/* EBC24 80042714 AC430014 */  sw         $v1, 0x14($v0)
/* EBC28 80042718 2403000C */  addiu      $v1, $zero, 0xc
/* EBC2C 8004271C AC430018 */  sw         $v1, 0x18($v0)
/* EBC30 80042720 24030019 */  addiu      $v1, $zero, 0x19
/* EBC34 80042724 3C018007 */  lui        $at, %hi(D_8006C034)
/* EBC38 80042728 AC22C034 */  sw         $v0, %lo(D_8006C034)($at)
/* EBC3C 8004272C AC43001C */  sw         $v1, 0x1c($v0)
/* EBC40 80042730 2402000A */  addiu      $v0, $zero, 0xa
/* EBC44 80042734 3C018007 */  lui        $at, %hi(D_8006C010)
/* EBC48 80042738 AC20C010 */  sw         $zero, %lo(D_8006C010)($at)
/* EBC4C 8004273C 3C018007 */  lui        $at, %hi(D_8006C014)
/* EBC50 80042740 AC20C014 */  sw         $zero, %lo(D_8006C014)($at)
/* EBC54 80042744 A662001C */  sh         $v0, 0x1c($s3)
/* EBC58 80042748 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EBC5C 8004274C E420BFE4 */  swc1       $f0, %lo(D_8006BFE4)($at)
/* EBC60 80042750 3C018007 */  lui        $at, %hi(D_8006BFF0)
/* EBC64 80042754 E422BFF0 */  swc1       $f2, %lo(D_8006BFF0)($at)
.L80042758:
/* EBC68 80042758 0C00E320 */  jal        func_80038C80_E2190
/* EBC6C 8004275C 00000000 */   nop
/* EBC70 80042760 3C048007 */  lui        $a0, %hi(D_8006C030)
/* EBC74 80042764 0C0295B3 */  jal        func_800A56CC
/* EBC78 80042768 8C84C030 */   lw        $a0, %lo(D_8006C030)($a0)
/* EBC7C 8004276C 0C00D8C1 */  jal        func_80036304_DF814
/* EBC80 80042770 24040058 */   addiu     $a0, $zero, 0x58
/* EBC84 80042774 8C44000C */  lw         $a0, 0xc($v0)
/* EBC88 80042778 0C028A40 */  jal        func_800A2900
/* EBC8C 8004277C 00000000 */   nop
/* EBC90 80042780 0C00D8C1 */  jal        func_80036304_DF814
/* EBC94 80042784 24040057 */   addiu     $a0, $zero, 0x57
/* EBC98 80042788 8C44000C */  lw         $a0, 0xc($v0)
/* EBC9C 8004278C 0C028A40 */  jal        func_800A2900
/* EBCA0 80042790 00000000 */   nop
/* EBCA4 80042794 3C048007 */  lui        $a0, %hi(D_8006C034)
/* EBCA8 80042798 0C0295B3 */  jal        func_800A56CC
/* EBCAC 8004279C 8C84C034 */   lw        $a0, %lo(D_8006C034)($a0)
/* EBCB0 800427A0 0C00D8C1 */  jal        func_80036304_DF814
/* EBCB4 800427A4 24040059 */   addiu     $a0, $zero, 0x59
/* EBCB8 800427A8 00408021 */  addu       $s0, $v0, $zero
/* EBCBC 800427AC 8E04000C */  lw         $a0, 0xc($s0)
/* EBCC0 800427B0 00002821 */  addu       $a1, $zero, $zero
/* EBCC4 800427B4 0C02933E */  jal        func_800A4CF8
/* EBCC8 800427B8 24060010 */   addiu     $a2, $zero, 0x10
/* EBCCC 800427BC 8E04000C */  lw         $a0, 0xc($s0)
/* EBCD0 800427C0 0C028A40 */  jal        func_800A2900
/* EBCD4 800427C4 00000000 */   nop
/* EBCD8 800427C8 0C00DFD6 */  jal        func_80037F58_E1468
/* EBCDC 800427CC 24040002 */   addiu     $a0, $zero, 2
/* EBCE0 800427D0 00408821 */  addu       $s1, $v0, $zero
/* EBCE4 800427D4 8E240008 */  lw         $a0, 8($s1)
/* EBCE8 800427D8 8482001E */  lh         $v0, 0x1e($a0)
/* EBCEC 800427DC 38430003 */  xori       $v1, $v0, 3
/* EBCF0 800427E0 2C630001 */  sltiu      $v1, $v1, 1
/* EBCF4 800427E4 3842000A */  xori       $v0, $v0, 0xa
/* EBCF8 800427E8 2C420001 */  sltiu      $v0, $v0, 1
/* EBCFC 800427EC 00621825 */  or         $v1, $v1, $v0
/* EBD00 800427F0 1060000D */  beqz       $v1, .L80042828
/* EBD04 800427F4 00000000 */   nop
/* EBD08 800427F8 84820022 */  lh         $v0, 0x22($a0)
/* EBD0C 800427FC 1440000A */  bnez       $v0, .L80042828
/* EBD10 80042800 00000000 */   nop
/* EBD14 80042804 0C026DD5 */  jal        func_8009B754
/* EBD18 80042808 24040021 */   addiu     $a0, $zero, 0x21
/* EBD1C 8004280C 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* EBD20 80042810 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* EBD24 80042814 00402021 */  addu       $a0, $v0, $zero
/* EBD28 80042818 3C018007 */  lui        $at, %hi(D_80068FA0_1124B0)
/* EBD2C 8004281C 0C026E66 */  jal        func_8009B998
/* EBD30 80042820 AC248FA0 */   sw        $a0, %lo(D_80068FA0_1124B0)($at)
/* EBD34 80042824 8E240008 */  lw         $a0, 8($s1)
.L80042828:
/* EBD38 80042828 8482001E */  lh         $v0, 0x1e($a0)
/* EBD3C 8004282C 38430005 */  xori       $v1, $v0, 5
/* EBD40 80042830 2C630001 */  sltiu      $v1, $v1, 1
/* EBD44 80042834 3842000C */  xori       $v0, $v0, 0xc
/* EBD48 80042838 2C420001 */  sltiu      $v0, $v0, 1
/* EBD4C 8004283C 00621825 */  or         $v1, $v1, $v0
/* EBD50 80042840 10600011 */  beqz       $v1, .L80042888
/* EBD54 80042844 00000000 */   nop
/* EBD58 80042848 84820022 */  lh         $v0, 0x22($a0)
/* EBD5C 8004284C 1440000E */  bnez       $v0, .L80042888
/* EBD60 80042850 00000000 */   nop
/* EBD64 80042854 0C026DD5 */  jal        func_8009B754
/* EBD68 80042858 24040021 */   addiu     $a0, $zero, 0x21
/* EBD6C 8004285C 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* EBD70 80042860 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* EBD74 80042864 00402021 */  addu       $a0, $v0, $zero
/* EBD78 80042868 3C018007 */  lui        $at, %hi(D_80068FA0_1124B0)
/* EBD7C 8004286C AC248FA0 */  sw         $a0, %lo(D_80068FA0_1124B0)($at)
/* EBD80 80042870 00031C00 */  sll        $v1, $v1, 0x10
/* EBD84 80042874 00032C03 */  sra        $a1, $v1, 0x10
/* EBD88 80042878 00031FC2 */  srl        $v1, $v1, 0x1f
/* EBD8C 8004287C 00A32821 */  addu       $a1, $a1, $v1
/* EBD90 80042880 0C026E66 */  jal        func_8009B998
/* EBD94 80042884 00052843 */   sra       $a1, $a1, 1
.L80042888:
/* EBD98 80042888 0C00E032 */  jal        func_800380C8_E15D8
/* EBD9C 8004288C 24040002 */   addiu     $a0, $zero, 2
/* EBDA0 80042890 3C028015 */  lui        $v0, %hi(D_80149F90)
/* EBDA4 80042894 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* EBDA8 80042898 2403003C */  addiu      $v1, $zero, 0x3c
/* EBDAC 8004289C 0062001A */  div        $zero, $v1, $v0
/* EBDB0 800428A0 14400002 */  bnez       $v0, .L800428AC
/* EBDB4 800428A4 00000000 */   nop
/* EBDB8 800428A8 0007000D */  break      7
.L800428AC:
/* EBDBC 800428AC 2401FFFF */   addiu     $at, $zero, -1
/* EBDC0 800428B0 14410004 */  bne        $v0, $at, .L800428C4
/* EBDC4 800428B4 3C018000 */   lui       $at, 0x8000
/* EBDC8 800428B8 14610002 */  bne        $v1, $at, .L800428C4
/* EBDCC 800428BC 00000000 */   nop
/* EBDD0 800428C0 0006000D */  break      6
.L800428C4:
/* EBDD4 800428C4 00001812 */   mflo      $v1
/* EBDD8 800428C8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* EBDDC 800428CC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* EBDE0 800428D0 00031080 */  sll        $v0, $v1, 2
/* EBDE4 800428D4 00431021 */  addu       $v0, $v0, $v1
/* EBDE8 800428D8 1482025B */  bne        $a0, $v0, .L80043248
/* EBDEC 800428DC 00001021 */   addu      $v0, $zero, $zero
/* EBDF0 800428E0 2402000B */  addiu      $v0, $zero, 0xb
/* EBDF4 800428E4 08010C91 */  j          .L80043244
/* EBDF8 800428E8 A662001C */   sh        $v0, 0x1c($s3)
.L800428EC:
/* EBDFC 800428EC 0C00E320 */  jal        func_80038C80_E2190
/* EBE00 800428F0 00000000 */   nop
/* EBE04 800428F4 3C028007 */  lui        $v0, %hi(D_8006C564)
/* EBE08 800428F8 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* EBE0C 800428FC 14400003 */  bnez       $v0, .L8004290C
/* EBE10 80042900 00000000 */   nop
/* EBE14 80042904 3C018007 */  lui        $at, %hi(D_8006C008)
/* EBE18 80042908 A420C008 */  sh         $zero, %lo(D_8006C008)($at)
.L8004290C:
/* EBE1C 8004290C 3C018007 */  lui        $at, %hi(D_8006BFF0)
/* EBE20 80042910 C422BFF0 */  lwc1       $f2, %lo(D_8006BFF0)($at)
/* EBE24 80042914 3C0142D0 */  lui        $at, 0x42d0
/* EBE28 80042918 44810000 */  mtc1       $at, $f0
/* EBE2C 8004291C 00000000 */  nop
/* EBE30 80042920 4602003E */  c.le.s     $f0, $f2
/* EBE34 80042924 00000000 */  nop
/* EBE38 80042928 45000057 */  bc1f       .L80042A88
/* EBE3C 8004292C 00000000 */   nop
/* EBE40 80042930 0C00D8C1 */  jal        func_80036304_DF814
/* EBE44 80042934 24040058 */   addiu     $a0, $zero, 0x58
/* EBE48 80042938 8C44000C */  lw         $a0, 0xc($v0)
/* EBE4C 8004293C 0C028A40 */  jal        func_800A2900
/* EBE50 80042940 00000000 */   nop
/* EBE54 80042944 0C00D8C1 */  jal        func_80036304_DF814
/* EBE58 80042948 24040057 */   addiu     $a0, $zero, 0x57
/* EBE5C 8004294C 8C44000C */  lw         $a0, 0xc($v0)
/* EBE60 80042950 0C028A40 */  jal        func_800A2900
/* EBE64 80042954 00000000 */   nop
/* EBE68 80042958 3C048007 */  lui        $a0, %hi(D_8006C034)
/* EBE6C 8004295C 0C0295B3 */  jal        func_800A56CC
/* EBE70 80042960 8C84C034 */   lw        $a0, %lo(D_8006C034)($a0)
/* EBE74 80042964 0C00D8C1 */  jal        func_80036304_DF814
/* EBE78 80042968 24040059 */   addiu     $a0, $zero, 0x59
/* EBE7C 8004296C 00408021 */  addu       $s0, $v0, $zero
/* EBE80 80042970 8E04000C */  lw         $a0, 0xc($s0)
/* EBE84 80042974 00002821 */  addu       $a1, $zero, $zero
/* EBE88 80042978 0C02933E */  jal        func_800A4CF8
/* EBE8C 8004297C 24060010 */   addiu     $a2, $zero, 0x10
/* EBE90 80042980 8E04000C */  lw         $a0, 0xc($s0)
/* EBE94 80042984 0C028A40 */  jal        func_800A2900
/* EBE98 80042988 00000000 */   nop
/* EBE9C 8004298C 0C00DFD6 */  jal        func_80037F58_E1468
/* EBEA0 80042990 24040002 */   addiu     $a0, $zero, 2
/* EBEA4 80042994 00408821 */  addu       $s1, $v0, $zero
/* EBEA8 80042998 8E240008 */  lw         $a0, 8($s1)
/* EBEAC 8004299C 8482001E */  lh         $v0, 0x1e($a0)
/* EBEB0 800429A0 38430003 */  xori       $v1, $v0, 3
/* EBEB4 800429A4 2C630001 */  sltiu      $v1, $v1, 1
/* EBEB8 800429A8 3842000A */  xori       $v0, $v0, 0xa
/* EBEBC 800429AC 2C420001 */  sltiu      $v0, $v0, 1
/* EBEC0 800429B0 00621825 */  or         $v1, $v1, $v0
/* EBEC4 800429B4 10600016 */  beqz       $v1, .L80042A10
/* EBEC8 800429B8 00000000 */   nop
/* EBECC 800429BC 84820022 */  lh         $v0, 0x22($a0)
/* EBED0 800429C0 14400013 */  bnez       $v0, .L80042A10
/* EBED4 800429C4 00000000 */   nop
/* EBED8 800429C8 3C028007 */  lui        $v0, %hi(D_8006C008)
/* EBEDC 800429CC 9442C008 */  lhu        $v0, %lo(D_8006C008)($v0)
/* EBEE0 800429D0 24420001 */  addiu      $v0, $v0, 1
/* EBEE4 800429D4 3C018007 */  lui        $at, %hi(D_8006C008)
/* EBEE8 800429D8 A422C008 */  sh         $v0, %lo(D_8006C008)($at)
/* EBEEC 800429DC 0C026DD5 */  jal        func_8009B754
/* EBEF0 800429E0 24040021 */   addiu     $a0, $zero, 0x21
/* EBEF4 800429E4 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* EBEF8 800429E8 84639F8C */  lh         $v1, %lo(D_80149F8C)($v1)
/* EBEFC 800429EC 3C058007 */  lui        $a1, %hi(D_8006C008)
/* EBF00 800429F0 84A5C008 */  lh         $a1, %lo(D_8006C008)($a1)
/* EBF04 800429F4 00402021 */  addu       $a0, $v0, $zero
/* EBF08 800429F8 3C018007 */  lui        $at, %hi(D_80068FA0_1124B0)
/* EBF0C 800429FC AC248FA0 */  sw         $a0, %lo(D_80068FA0_1124B0)($at)
/* EBF10 80042A00 00052900 */  sll        $a1, $a1, 4
/* EBF14 80042A04 0C026E66 */  jal        func_8009B998
/* EBF18 80042A08 00652823 */   subu      $a1, $v1, $a1
/* EBF1C 80042A0C 8E240008 */  lw         $a0, 8($s1)
.L80042A10:
/* EBF20 80042A10 8482001E */  lh         $v0, 0x1e($a0)
/* EBF24 80042A14 38430005 */  xori       $v1, $v0, 5
/* EBF28 80042A18 2C630001 */  sltiu      $v1, $v1, 1
/* EBF2C 80042A1C 3842000C */  xori       $v0, $v0, 0xc
/* EBF30 80042A20 2C420001 */  sltiu      $v0, $v0, 1
/* EBF34 80042A24 00621825 */  or         $v1, $v1, $v0
/* EBF38 80042A28 10600015 */  beqz       $v1, .L80042A80
/* EBF3C 80042A2C 00000000 */   nop
/* EBF40 80042A30 84820022 */  lh         $v0, 0x22($a0)
/* EBF44 80042A34 14400012 */  bnez       $v0, .L80042A80
/* EBF48 80042A38 00000000 */   nop
/* EBF4C 80042A3C 0C026DD5 */  jal        func_8009B754
/* EBF50 80042A40 24040021 */   addiu     $a0, $zero, 0x21
/* EBF54 80042A44 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* EBF58 80042A48 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* EBF5C 80042A4C 00402021 */  addu       $a0, $v0, $zero
/* EBF60 80042A50 3C028007 */  lui        $v0, %hi(D_8006C008)
/* EBF64 80042A54 8442C008 */  lh         $v0, %lo(D_8006C008)($v0)
/* EBF68 80042A58 3C018007 */  lui        $at, %hi(D_80068FA0_1124B0)
/* EBF6C 80042A5C AC248FA0 */  sw         $a0, %lo(D_80068FA0_1124B0)($at)
/* EBF70 80042A60 00031C00 */  sll        $v1, $v1, 0x10
/* EBF74 80042A64 00032C03 */  sra        $a1, $v1, 0x10
/* EBF78 80042A68 00031FC2 */  srl        $v1, $v1, 0x1f
/* EBF7C 80042A6C 00A32821 */  addu       $a1, $a1, $v1
/* EBF80 80042A70 00052843 */  sra        $a1, $a1, 1
/* EBF84 80042A74 00021100 */  sll        $v0, $v0, 4
/* EBF88 80042A78 0C026E66 */  jal        func_8009B998
/* EBF8C 80042A7C 00A22823 */   subu      $a1, $a1, $v0
.L80042A80:
/* EBF90 80042A80 0C00E032 */  jal        func_800380C8_E15D8
/* EBF94 80042A84 24040002 */   addiu     $a0, $zero, 2
.L80042A88:
/* EBF98 80042A88 0C00D8C1 */  jal        func_80036304_DF814
/* EBF9C 80042A8C 2404001D */   addiu     $a0, $zero, 0x1d
/* EBFA0 80042A90 3C018007 */  lui        $at, %hi(D_8006C010)
/* EBFA4 80042A94 C422C010 */  lwc1       $f2, %lo(D_8006C010)($at)
/* EBFA8 80042A98 3C014F00 */  lui        $at, 0x4f00
/* EBFAC 80042A9C 44810000 */  mtc1       $at, $f0
/* EBFB0 80042AA0 00000000 */  nop
/* EBFB4 80042AA4 4602003E */  c.le.s     $f0, $f2
/* EBFB8 80042AA8 00000000 */  nop
/* EBFBC 80042AAC 00000000 */  nop
/* EBFC0 80042AB0 45010006 */  bc1t       .L80042ACC
/* EBFC4 80042AB4 00408021 */   addu      $s0, $v0, $zero
/* EBFC8 80042AB8 4600100D */  trunc.w.s  $f0, $f2
/* EBFCC 80042ABC 44030000 */  mfc1       $v1, $f0
/* EBFD0 80042AC0 00000000 */  nop
/* EBFD4 80042AC4 08010AB9 */  j          .L80042AE4
/* EBFD8 80042AC8 306200FF */   andi      $v0, $v1, 0xff
.L80042ACC:
/* EBFDC 80042ACC 46001001 */  sub.s      $f0, $f2, $f0
/* EBFE0 80042AD0 4600008D */  trunc.w.s  $f2, $f0
/* EBFE4 80042AD4 44031000 */  mfc1       $v1, $f2
/* EBFE8 80042AD8 3C028000 */  lui        $v0, 0x8000
/* EBFEC 80042ADC 00621825 */  or         $v1, $v1, $v0
/* EBFF0 80042AE0 306200FF */  andi       $v0, $v1, 0xff
.L80042AE4:
/* EBFF4 80042AE4 AFA20010 */  sw         $v0, 0x10($sp)
/* EBFF8 80042AE8 8E04000C */  lw         $a0, 0xc($s0)
/* EBFFC 80042AEC 240500FF */  addiu      $a1, $zero, 0xff
/* EC000 80042AF0 240600FF */  addiu      $a2, $zero, 0xff
/* EC004 80042AF4 0C028E41 */  jal        func_800A3904
/* EC008 80042AF8 240700FF */   addiu     $a3, $zero, 0xff
/* EC00C 80042AFC 8E04000C */  lw         $a0, 0xc($s0)
/* EC010 80042B00 0C028A40 */  jal        func_800A2900
/* EC014 80042B04 00000000 */   nop
/* EC018 80042B08 0C00D8C1 */  jal        func_80036304_DF814
/* EC01C 80042B0C 240430C9 */   addiu     $a0, $zero, 0x30c9
/* EC020 80042B10 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EC024 80042B14 C422BFE4 */  lwc1       $f2, %lo(D_8006BFE4)($at)
/* EC028 80042B18 3C014160 */  lui        $at, 0x4160
/* EC02C 80042B1C 44810000 */  mtc1       $at, $f0
/* EC030 80042B20 00000000 */  nop
/* EC034 80042B24 46001081 */  sub.s      $f2, $f2, $f0
/* EC038 80042B28 3C014080 */  lui        $at, 0x4080
/* EC03C 80042B2C 4481A000 */  mtc1       $at, $f20
/* EC040 80042B30 00000000 */  nop
/* EC044 80042B34 46141082 */  mul.s      $f2, $f2, $f20
/* EC048 80042B38 00408021 */  addu       $s0, $v0, $zero
/* EC04C 80042B3C 8E04000C */  lw         $a0, 0xc($s0)
/* EC050 80042B40 00002821 */  addu       $a1, $zero, $zero
/* EC054 80042B44 4600100D */  trunc.w.s  $f0, $f2
/* EC058 80042B48 44060000 */  mfc1       $a2, $f0
/* EC05C 80042B4C 00000000 */  nop
/* EC060 80042B50 00063400 */  sll        $a2, $a2, 0x10
/* EC064 80042B54 0C028D89 */  jal        func_800A3624
/* EC068 80042B58 00063403 */   sra       $a2, $a2, 0x10
/* EC06C 80042B5C 8E04000C */  lw         $a0, 0xc($s0)
/* EC070 80042B60 0C028A40 */  jal        func_800A2900
/* EC074 80042B64 00000000 */   nop
/* EC078 80042B68 0C00D8C1 */  jal        func_80036304_DF814
/* EC07C 80042B6C 240430CA */   addiu     $a0, $zero, 0x30ca
/* EC080 80042B70 3C018007 */  lui        $at, %hi(D_8006BFF0)
/* EC084 80042B74 C422BFF0 */  lwc1       $f2, %lo(D_8006BFF0)($at)
/* EC088 80042B78 3C014000 */  lui        $at, 0x4000
/* EC08C 80042B7C 44810000 */  mtc1       $at, $f0
/* EC090 80042B80 00000000 */  nop
/* EC094 80042B84 46001081 */  sub.s      $f2, $f2, $f0
/* EC098 80042B88 46141082 */  mul.s      $f2, $f2, $f20
/* EC09C 80042B8C 00408021 */  addu       $s0, $v0, $zero
/* EC0A0 80042B90 8E04000C */  lw         $a0, 0xc($s0)
/* EC0A4 80042B94 00002821 */  addu       $a1, $zero, $zero
/* EC0A8 80042B98 4600100D */  trunc.w.s  $f0, $f2
/* EC0AC 80042B9C 44060000 */  mfc1       $a2, $f0
/* EC0B0 80042BA0 00000000 */  nop
/* EC0B4 80042BA4 00063400 */  sll        $a2, $a2, 0x10
/* EC0B8 80042BA8 0C028D89 */  jal        func_800A3624
/* EC0BC 80042BAC 00063403 */   sra       $a2, $a2, 0x10
/* EC0C0 80042BB0 8E04000C */  lw         $a0, 0xc($s0)
/* EC0C4 80042BB4 0C028A40 */  jal        func_800A2900
/* EC0C8 80042BB8 00000000 */   nop
/* EC0CC 80042BBC 0C00D8C1 */  jal        func_80036304_DF814
/* EC0D0 80042BC0 2404001E */   addiu     $a0, $zero, 0x1e
/* EC0D4 80042BC4 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EC0D8 80042BC8 C420BFE4 */  lwc1       $f0, %lo(D_8006BFE4)($at)
/* EC0DC 80042BCC 46140002 */  mul.s      $f0, $f0, $f20
/* EC0E0 80042BD0 00408021 */  addu       $s0, $v0, $zero
/* EC0E4 80042BD4 8E04000C */  lw         $a0, 0xc($s0)
/* EC0E8 80042BD8 24050040 */  addiu      $a1, $zero, 0x40
/* EC0EC 80042BDC 4600008D */  trunc.w.s  $f2, $f0
/* EC0F0 80042BE0 44061000 */  mfc1       $a2, $f2
/* EC0F4 80042BE4 00000000 */  nop
/* EC0F8 80042BE8 00063400 */  sll        $a2, $a2, 0x10
/* EC0FC 80042BEC 0C028D89 */  jal        func_800A3624
/* EC100 80042BF0 00063403 */   sra       $a2, $a2, 0x10
/* EC104 80042BF4 8E04000C */  lw         $a0, 0xc($s0)
/* EC108 80042BF8 0C028A40 */  jal        func_800A2900
/* EC10C 80042BFC 00000000 */   nop
/* EC110 80042C00 0C00D8C1 */  jal        func_80036304_DF814
/* EC114 80042C04 2404001F */   addiu     $a0, $zero, 0x1f
/* EC118 80042C08 3C018007 */  lui        $at, %hi(D_8006BFF0)
/* EC11C 80042C0C C420BFF0 */  lwc1       $f0, %lo(D_8006BFF0)($at)
/* EC120 80042C10 46140002 */  mul.s      $f0, $f0, $f20
/* EC124 80042C14 00408021 */  addu       $s0, $v0, $zero
/* EC128 80042C18 8E04000C */  lw         $a0, 0xc($s0)
/* EC12C 80042C1C 24050040 */  addiu      $a1, $zero, 0x40
/* EC130 80042C20 4600008D */  trunc.w.s  $f2, $f0
/* EC134 80042C24 44061000 */  mfc1       $a2, $f2
/* EC138 80042C28 00000000 */  nop
/* EC13C 80042C2C 00063400 */  sll        $a2, $a2, 0x10
/* EC140 80042C30 0C028D89 */  jal        func_800A3624
/* EC144 80042C34 00063403 */   sra       $a2, $a2, 0x10
/* EC148 80042C38 8E04000C */  lw         $a0, 0xc($s0)
/* EC14C 80042C3C 0C028A40 */  jal        func_800A2900
/* EC150 80042C40 00000000 */   nop
/* EC154 80042C44 0C00D8C1 */  jal        func_80036304_DF814
/* EC158 80042C48 240420C9 */   addiu     $a0, $zero, 0x20c9
/* EC15C 80042C4C 3C018007 */  lui        $at, %hi(D_8006C014)
/* EC160 80042C50 C422C014 */  lwc1       $f2, %lo(D_8006C014)($at)
/* EC164 80042C54 3C014F00 */  lui        $at, 0x4f00
/* EC168 80042C58 44810000 */  mtc1       $at, $f0
/* EC16C 80042C5C 00000000 */  nop
/* EC170 80042C60 4602003E */  c.le.s     $f0, $f2
/* EC174 80042C64 00000000 */  nop
/* EC178 80042C68 00000000 */  nop
/* EC17C 80042C6C 45010006 */  bc1t       .L80042C88
/* EC180 80042C70 00408021 */   addu      $s0, $v0, $zero
/* EC184 80042C74 4600100D */  trunc.w.s  $f0, $f2
/* EC188 80042C78 44030000 */  mfc1       $v1, $f0
/* EC18C 80042C7C 00000000 */  nop
/* EC190 80042C80 08010B28 */  j          .L80042CA0
/* EC194 80042C84 306200FF */   andi      $v0, $v1, 0xff
.L80042C88:
/* EC198 80042C88 46001001 */  sub.s      $f0, $f2, $f0
/* EC19C 80042C8C 4600008D */  trunc.w.s  $f2, $f0
/* EC1A0 80042C90 44031000 */  mfc1       $v1, $f2
/* EC1A4 80042C94 3C028000 */  lui        $v0, 0x8000
/* EC1A8 80042C98 00621825 */  or         $v1, $v1, $v0
/* EC1AC 80042C9C 306200FF */  andi       $v0, $v1, 0xff
.L80042CA0:
/* EC1B0 80042CA0 AFA20010 */  sw         $v0, 0x10($sp)
/* EC1B4 80042CA4 8E04000C */  lw         $a0, 0xc($s0)
/* EC1B8 80042CA8 240500FF */  addiu      $a1, $zero, 0xff
/* EC1BC 80042CAC 240600FF */  addiu      $a2, $zero, 0xff
/* EC1C0 80042CB0 0C028E41 */  jal        func_800A3904
/* EC1C4 80042CB4 240700FF */   addiu     $a3, $zero, 0xff
/* EC1C8 80042CB8 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EC1CC 80042CBC C422BFE4 */  lwc1       $f2, %lo(D_8006BFE4)($at)
/* EC1D0 80042CC0 3C0142C0 */  lui        $at, 0x42c0
/* EC1D4 80042CC4 44810000 */  mtc1       $at, $f0
/* EC1D8 80042CC8 00000000 */  nop
/* EC1DC 80042CCC 46001080 */  add.s      $f2, $f2, $f0
/* EC1E0 80042CD0 3C014080 */  lui        $at, 0x4080
/* EC1E4 80042CD4 44810000 */  mtc1       $at, $f0
/* EC1E8 80042CD8 00000000 */  nop
/* EC1EC 80042CDC 46001082 */  mul.s      $f2, $f2, $f0
/* EC1F0 80042CE0 8E04000C */  lw         $a0, 0xc($s0)
/* EC1F4 80042CE4 240500A0 */  addiu      $a1, $zero, 0xa0
/* EC1F8 80042CE8 4600100D */  trunc.w.s  $f0, $f2
/* EC1FC 80042CEC 44060000 */  mfc1       $a2, $f0
/* EC200 80042CF0 00000000 */  nop
/* EC204 80042CF4 00063400 */  sll        $a2, $a2, 0x10
/* EC208 80042CF8 0C028D89 */  jal        func_800A3624
/* EC20C 80042CFC 00063403 */   sra       $a2, $a2, 0x10
/* EC210 80042D00 8E04000C */  lw         $a0, 0xc($s0)
/* EC214 80042D04 0C028A40 */  jal        func_800A2900
/* EC218 80042D08 00000000 */   nop
/* EC21C 80042D0C 0C00D8C1 */  jal        func_80036304_DF814
/* EC220 80042D10 240420CA */   addiu     $a0, $zero, 0x20ca
/* EC224 80042D14 3C018007 */  lui        $at, %hi(D_8006C014)
/* EC228 80042D18 C422C014 */  lwc1       $f2, %lo(D_8006C014)($at)
/* EC22C 80042D1C 3C014F00 */  lui        $at, 0x4f00
/* EC230 80042D20 44810000 */  mtc1       $at, $f0
/* EC234 80042D24 00000000 */  nop
/* EC238 80042D28 4602003E */  c.le.s     $f0, $f2
/* EC23C 80042D2C 00000000 */  nop
/* EC240 80042D30 00000000 */  nop
/* EC244 80042D34 45010006 */  bc1t       .L80042D50
/* EC248 80042D38 00408021 */   addu      $s0, $v0, $zero
/* EC24C 80042D3C 4600100D */  trunc.w.s  $f0, $f2
/* EC250 80042D40 44030000 */  mfc1       $v1, $f0
/* EC254 80042D44 00000000 */  nop
/* EC258 80042D48 08010B5A */  j          .L80042D68
/* EC25C 80042D4C 306200FF */   andi      $v0, $v1, 0xff
.L80042D50:
/* EC260 80042D50 46001001 */  sub.s      $f0, $f2, $f0
/* EC264 80042D54 4600008D */  trunc.w.s  $f2, $f0
/* EC268 80042D58 44031000 */  mfc1       $v1, $f2
/* EC26C 80042D5C 3C028000 */  lui        $v0, 0x8000
/* EC270 80042D60 00621825 */  or         $v1, $v1, $v0
/* EC274 80042D64 306200FF */  andi       $v0, $v1, 0xff
.L80042D68:
/* EC278 80042D68 AFA20010 */  sw         $v0, 0x10($sp)
/* EC27C 80042D6C 8E04000C */  lw         $a0, 0xc($s0)
/* EC280 80042D70 240500FF */  addiu      $a1, $zero, 0xff
/* EC284 80042D74 240600FF */  addiu      $a2, $zero, 0xff
/* EC288 80042D78 0C028E41 */  jal        func_800A3904
/* EC28C 80042D7C 240700FF */   addiu     $a3, $zero, 0xff
/* EC290 80042D80 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EC294 80042D84 C422BFE4 */  lwc1       $f2, %lo(D_8006BFE4)($at)
/* EC298 80042D88 3C0142C0 */  lui        $at, 0x42c0
/* EC29C 80042D8C 44810000 */  mtc1       $at, $f0
/* EC2A0 80042D90 00000000 */  nop
/* EC2A4 80042D94 46001080 */  add.s      $f2, $f2, $f0
/* EC2A8 80042D98 3C014080 */  lui        $at, 0x4080
/* EC2AC 80042D9C 44810000 */  mtc1       $at, $f0
/* EC2B0 80042DA0 00000000 */  nop
/* EC2B4 80042DA4 46001082 */  mul.s      $f2, $f2, $f0
/* EC2B8 80042DA8 8E04000C */  lw         $a0, 0xc($s0)
/* EC2BC 80042DAC 24050110 */  addiu      $a1, $zero, 0x110
/* EC2C0 80042DB0 4600100D */  trunc.w.s  $f0, $f2
/* EC2C4 80042DB4 44060000 */  mfc1       $a2, $f0
/* EC2C8 80042DB8 00000000 */  nop
/* EC2CC 80042DBC 00063400 */  sll        $a2, $a2, 0x10
/* EC2D0 80042DC0 0C028D89 */  jal        func_800A3624
/* EC2D4 80042DC4 00063403 */   sra       $a2, $a2, 0x10
/* EC2D8 80042DC8 8E04000C */  lw         $a0, 0xc($s0)
/* EC2DC 80042DCC 0C028A40 */  jal        func_800A2900
/* EC2E0 80042DD0 00000000 */   nop
/* EC2E4 80042DD4 0C00D8C1 */  jal        func_80036304_DF814
/* EC2E8 80042DD8 240420CB */   addiu     $a0, $zero, 0x20cb
/* EC2EC 80042DDC 3C018007 */  lui        $at, %hi(D_8006C014)
/* EC2F0 80042DE0 C422C014 */  lwc1       $f2, %lo(D_8006C014)($at)
/* EC2F4 80042DE4 3C014F00 */  lui        $at, 0x4f00
/* EC2F8 80042DE8 44810000 */  mtc1       $at, $f0
/* EC2FC 80042DEC 00000000 */  nop
/* EC300 80042DF0 4602003E */  c.le.s     $f0, $f2
/* EC304 80042DF4 00000000 */  nop
/* EC308 80042DF8 00000000 */  nop
/* EC30C 80042DFC 45010006 */  bc1t       .L80042E18
/* EC310 80042E00 00408021 */   addu      $s0, $v0, $zero
/* EC314 80042E04 4600100D */  trunc.w.s  $f0, $f2
/* EC318 80042E08 44030000 */  mfc1       $v1, $f0
/* EC31C 80042E0C 00000000 */  nop
/* EC320 80042E10 08010B8C */  j          .L80042E30
/* EC324 80042E14 306200FF */   andi      $v0, $v1, 0xff
.L80042E18:
/* EC328 80042E18 46001001 */  sub.s      $f0, $f2, $f0
/* EC32C 80042E1C 4600008D */  trunc.w.s  $f2, $f0
/* EC330 80042E20 44031000 */  mfc1       $v1, $f2
/* EC334 80042E24 3C028000 */  lui        $v0, 0x8000
/* EC338 80042E28 00621825 */  or         $v1, $v1, $v0
/* EC33C 80042E2C 306200FF */  andi       $v0, $v1, 0xff
.L80042E30:
/* EC340 80042E30 AFA20010 */  sw         $v0, 0x10($sp)
/* EC344 80042E34 8E04000C */  lw         $a0, 0xc($s0)
/* EC348 80042E38 240500FF */  addiu      $a1, $zero, 0xff
/* EC34C 80042E3C 240600FF */  addiu      $a2, $zero, 0xff
/* EC350 80042E40 0C028E41 */  jal        func_800A3904
/* EC354 80042E44 240700FF */   addiu     $a3, $zero, 0xff
/* EC358 80042E48 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EC35C 80042E4C C422BFE4 */  lwc1       $f2, %lo(D_8006BFE4)($at)
/* EC360 80042E50 3C0142C0 */  lui        $at, 0x42c0
/* EC364 80042E54 44810000 */  mtc1       $at, $f0
/* EC368 80042E58 00000000 */  nop
/* EC36C 80042E5C 46001080 */  add.s      $f2, $f2, $f0
/* EC370 80042E60 3C014080 */  lui        $at, 0x4080
/* EC374 80042E64 44810000 */  mtc1       $at, $f0
/* EC378 80042E68 00000000 */  nop
/* EC37C 80042E6C 46001082 */  mul.s      $f2, $f2, $f0
/* EC380 80042E70 8E04000C */  lw         $a0, 0xc($s0)
/* EC384 80042E74 24050180 */  addiu      $a1, $zero, 0x180
/* EC388 80042E78 4600100D */  trunc.w.s  $f0, $f2
/* EC38C 80042E7C 44060000 */  mfc1       $a2, $f0
/* EC390 80042E80 00000000 */  nop
/* EC394 80042E84 00063400 */  sll        $a2, $a2, 0x10
/* EC398 80042E88 0C028D89 */  jal        func_800A3624
/* EC39C 80042E8C 00063403 */   sra       $a2, $a2, 0x10
/* EC3A0 80042E90 8E04000C */  lw         $a0, 0xc($s0)
/* EC3A4 80042E94 0C028A40 */  jal        func_800A2900
/* EC3A8 80042E98 00000000 */   nop
/* EC3AC 80042E9C 0C00D8C1 */  jal        func_80036304_DF814
/* EC3B0 80042EA0 240420CC */   addiu     $a0, $zero, 0x20cc
/* EC3B4 80042EA4 3C018007 */  lui        $at, %hi(D_8006C014)
/* EC3B8 80042EA8 C422C014 */  lwc1       $f2, %lo(D_8006C014)($at)
/* EC3BC 80042EAC 3C014F00 */  lui        $at, 0x4f00
/* EC3C0 80042EB0 44810000 */  mtc1       $at, $f0
/* EC3C4 80042EB4 00000000 */  nop
/* EC3C8 80042EB8 4602003E */  c.le.s     $f0, $f2
/* EC3CC 80042EBC 00000000 */  nop
/* EC3D0 80042EC0 00000000 */  nop
/* EC3D4 80042EC4 45010006 */  bc1t       .L80042EE0
/* EC3D8 80042EC8 00408021 */   addu      $s0, $v0, $zero
/* EC3DC 80042ECC 4600100D */  trunc.w.s  $f0, $f2
/* EC3E0 80042ED0 44030000 */  mfc1       $v1, $f0
/* EC3E4 80042ED4 00000000 */  nop
/* EC3E8 80042ED8 08010BBE */  j          .L80042EF8
/* EC3EC 80042EDC 306200FF */   andi      $v0, $v1, 0xff
.L80042EE0:
/* EC3F0 80042EE0 46001001 */  sub.s      $f0, $f2, $f0
/* EC3F4 80042EE4 4600008D */  trunc.w.s  $f2, $f0
/* EC3F8 80042EE8 44031000 */  mfc1       $v1, $f2
/* EC3FC 80042EEC 3C028000 */  lui        $v0, 0x8000
/* EC400 80042EF0 00621825 */  or         $v1, $v1, $v0
/* EC404 80042EF4 306200FF */  andi       $v0, $v1, 0xff
.L80042EF8:
/* EC408 80042EF8 AFA20010 */  sw         $v0, 0x10($sp)
/* EC40C 80042EFC 8E04000C */  lw         $a0, 0xc($s0)
/* EC410 80042F00 240500FF */  addiu      $a1, $zero, 0xff
/* EC414 80042F04 240600FF */  addiu      $a2, $zero, 0xff
/* EC418 80042F08 0C028E41 */  jal        func_800A3904
/* EC41C 80042F0C 240700FF */   addiu     $a3, $zero, 0xff
/* EC420 80042F10 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EC424 80042F14 C422BFE4 */  lwc1       $f2, %lo(D_8006BFE4)($at)
/* EC428 80042F18 3C0142C0 */  lui        $at, 0x42c0
/* EC42C 80042F1C 44810000 */  mtc1       $at, $f0
/* EC430 80042F20 00000000 */  nop
/* EC434 80042F24 46001080 */  add.s      $f2, $f2, $f0
/* EC438 80042F28 3C014080 */  lui        $at, 0x4080
/* EC43C 80042F2C 44810000 */  mtc1       $at, $f0
/* EC440 80042F30 00000000 */  nop
/* EC444 80042F34 46001082 */  mul.s      $f2, $f2, $f0
/* EC448 80042F38 8E04000C */  lw         $a0, 0xc($s0)
/* EC44C 80042F3C 24050290 */  addiu      $a1, $zero, 0x290
/* EC450 80042F40 4600100D */  trunc.w.s  $f0, $f2
/* EC454 80042F44 44060000 */  mfc1       $a2, $f0
/* EC458 80042F48 00000000 */  nop
/* EC45C 80042F4C 00063400 */  sll        $a2, $a2, 0x10
/* EC460 80042F50 0C028D89 */  jal        func_800A3624
/* EC464 80042F54 00063403 */   sra       $a2, $a2, 0x10
/* EC468 80042F58 8E04000C */  lw         $a0, 0xc($s0)
/* EC46C 80042F5C 0C028A40 */  jal        func_800A2900
/* EC470 80042F60 00000000 */   nop
/* EC474 80042F64 0C00D8C1 */  jal        func_80036304_DF814
/* EC478 80042F68 240420CD */   addiu     $a0, $zero, 0x20cd
/* EC47C 80042F6C 3C018007 */  lui        $at, %hi(D_8006C014)
/* EC480 80042F70 C422C014 */  lwc1       $f2, %lo(D_8006C014)($at)
/* EC484 80042F74 3C014F00 */  lui        $at, 0x4f00
/* EC488 80042F78 44810000 */  mtc1       $at, $f0
/* EC48C 80042F7C 00000000 */  nop
/* EC490 80042F80 4602003E */  c.le.s     $f0, $f2
/* EC494 80042F84 00000000 */  nop
/* EC498 80042F88 00000000 */  nop
/* EC49C 80042F8C 45010006 */  bc1t       .L80042FA8
/* EC4A0 80042F90 00408021 */   addu      $s0, $v0, $zero
/* EC4A4 80042F94 4600100D */  trunc.w.s  $f0, $f2
/* EC4A8 80042F98 44030000 */  mfc1       $v1, $f0
/* EC4AC 80042F9C 00000000 */  nop
/* EC4B0 80042FA0 08010BF0 */  j          .L80042FC0
/* EC4B4 80042FA4 306200FF */   andi      $v0, $v1, 0xff
.L80042FA8:
/* EC4B8 80042FA8 46001001 */  sub.s      $f0, $f2, $f0
/* EC4BC 80042FAC 4600008D */  trunc.w.s  $f2, $f0
/* EC4C0 80042FB0 44031000 */  mfc1       $v1, $f2
/* EC4C4 80042FB4 3C028000 */  lui        $v0, 0x8000
/* EC4C8 80042FB8 00621825 */  or         $v1, $v1, $v0
/* EC4CC 80042FBC 306200FF */  andi       $v0, $v1, 0xff
.L80042FC0:
/* EC4D0 80042FC0 AFA20010 */  sw         $v0, 0x10($sp)
/* EC4D4 80042FC4 8E04000C */  lw         $a0, 0xc($s0)
/* EC4D8 80042FC8 240500FF */  addiu      $a1, $zero, 0xff
/* EC4DC 80042FCC 240600FF */  addiu      $a2, $zero, 0xff
/* EC4E0 80042FD0 0C028E41 */  jal        func_800A3904
/* EC4E4 80042FD4 240700FF */   addiu     $a3, $zero, 0xff
/* EC4E8 80042FD8 3C018007 */  lui        $at, %hi(D_8006BFF0)
/* EC4EC 80042FDC C422BFF0 */  lwc1       $f2, %lo(D_8006BFF0)($at)
/* EC4F0 80042FE0 3C0141C0 */  lui        $at, 0x41c0
/* EC4F4 80042FE4 44810000 */  mtc1       $at, $f0
/* EC4F8 80042FE8 00000000 */  nop
/* EC4FC 80042FEC 46001080 */  add.s      $f2, $f2, $f0
/* EC500 80042FF0 3C014080 */  lui        $at, 0x4080
/* EC504 80042FF4 44810000 */  mtc1       $at, $f0
/* EC508 80042FF8 00000000 */  nop
/* EC50C 80042FFC 46001082 */  mul.s      $f2, $f2, $f0
/* EC510 80043000 8E04000C */  lw         $a0, 0xc($s0)
/* EC514 80043004 24050280 */  addiu      $a1, $zero, 0x280
/* EC518 80043008 4600100D */  trunc.w.s  $f0, $f2
/* EC51C 8004300C 44060000 */  mfc1       $a2, $f0
/* EC520 80043010 00000000 */  nop
/* EC524 80043014 00063400 */  sll        $a2, $a2, 0x10
/* EC528 80043018 0C028D89 */  jal        func_800A3624
/* EC52C 8004301C 00063403 */   sra       $a2, $a2, 0x10
/* EC530 80043020 8E04000C */  lw         $a0, 0xc($s0)
/* EC534 80043024 0C028A40 */  jal        func_800A2900
/* EC538 80043028 00000000 */   nop
/* EC53C 8004302C 3C018007 */  lui        $at, %hi(D_8006BFF0)
/* EC540 80043030 C424BFF0 */  lwc1       $f4, %lo(D_8006BFF0)($at)
/* EC544 80043034 3C0142D0 */  lui        $at, 0x42d0
/* EC548 80043038 44810000 */  mtc1       $at, $f0
/* EC54C 8004303C 00000000 */  nop
/* EC550 80043040 4604003E */  c.le.s     $f0, $f4
/* EC554 80043044 00000000 */  nop
/* EC558 80043048 4500000C */  bc1f       .L8004307C
/* EC55C 8004304C 00000000 */   nop
/* EC560 80043050 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EC564 80043054 C422BFE4 */  lwc1       $f2, %lo(D_8006BFE4)($at)
/* EC568 80043058 3C013F80 */  lui        $at, 0x3f80
/* EC56C 8004305C 44810000 */  mtc1       $at, $f0
/* EC570 80043060 00000000 */  nop
/* EC574 80043064 46001080 */  add.s      $f2, $f2, $f0
/* EC578 80043068 46002001 */  sub.s      $f0, $f4, $f0
/* EC57C 8004306C 3C018007 */  lui        $at, %hi(D_8006BFE4)
/* EC580 80043070 E422BFE4 */  swc1       $f2, %lo(D_8006BFE4)($at)
/* EC584 80043074 3C018007 */  lui        $at, %hi(D_8006BFF0)
/* EC588 80043078 E420BFF0 */  swc1       $f0, %lo(D_8006BFF0)($at)
.L8004307C:
/* EC58C 8004307C 3C018007 */  lui        $at, %hi(D_8006C010)
/* EC590 80043080 C422C010 */  lwc1       $f2, %lo(D_8006C010)($at)
/* EC594 80043084 3C014378 */  lui        $at, 0x4378
/* EC598 80043088 44812000 */  mtc1       $at, $f4
/* EC59C 8004308C 00000000 */  nop
/* EC5A0 80043090 4604103C */  c.lt.s     $f2, $f4
/* EC5A4 80043094 00000000 */  nop
/* EC5A8 80043098 45000007 */  bc1f       .L800430B8
/* EC5AC 8004309C 00000000 */   nop
/* EC5B0 800430A0 3C014020 */  lui        $at, 0x4020
/* EC5B4 800430A4 44810000 */  mtc1       $at, $f0
/* EC5B8 800430A8 00000000 */  nop
/* EC5BC 800430AC 46001000 */  add.s      $f0, $f2, $f0
/* EC5C0 800430B0 3C018007 */  lui        $at, %hi(D_8006C010)
/* EC5C4 800430B4 E420C010 */  swc1       $f0, %lo(D_8006C010)($at)
.L800430B8:
/* EC5C8 800430B8 3C018007 */  lui        $at, %hi(D_8006C014)
/* EC5CC 800430BC C422C014 */  lwc1       $f2, %lo(D_8006C014)($at)
/* EC5D0 800430C0 4604103C */  c.lt.s     $f2, $f4
/* EC5D4 800430C4 00000000 */  nop
/* EC5D8 800430C8 45000007 */  bc1f       .L800430E8
/* EC5DC 800430CC 00000000 */   nop
/* EC5E0 800430D0 3C014000 */  lui        $at, 0x4000
/* EC5E4 800430D4 44810000 */  mtc1       $at, $f0
/* EC5E8 800430D8 00000000 */  nop
/* EC5EC 800430DC 46001000 */  add.s      $f0, $f2, $f0
/* EC5F0 800430E0 3C018007 */  lui        $at, %hi(D_8006C014)
/* EC5F4 800430E4 E420C014 */  swc1       $f0, %lo(D_8006C014)($at)
.L800430E8:
/* EC5F8 800430E8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* EC5FC 800430EC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* EC600 800430F0 2410003C */  addiu      $s0, $zero, 0x3c
/* EC604 800430F4 0202001A */  div        $zero, $s0, $v0
/* EC608 800430F8 14400002 */  bnez       $v0, .L80043104
/* EC60C 800430FC 00000000 */   nop
/* EC610 80043100 0007000D */  break      7
.L80043104:
/* EC614 80043104 2401FFFF */   addiu     $at, $zero, -1
/* EC618 80043108 14410004 */  bne        $v0, $at, .L8004311C
/* EC61C 8004310C 3C018000 */   lui       $at, 0x8000
/* EC620 80043110 16010002 */  bne        $s0, $at, .L8004311C
/* EC624 80043114 00000000 */   nop
/* EC628 80043118 0006000D */  break      6
.L8004311C:
/* EC62C 8004311C 00002012 */   mflo      $a0
/* EC630 80043120 3C038007 */  lui        $v1, %hi(D_8006C564)
/* EC634 80043124 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* EC638 80043128 00041040 */  sll        $v0, $a0, 1
/* EC63C 8004312C 00441021 */  addu       $v0, $v0, $a0
/* EC640 80043130 00021040 */  sll        $v0, $v0, 1
/* EC644 80043134 14620003 */  bne        $v1, $v0, .L80043144
/* EC648 80043138 00000000 */   nop
/* EC64C 8004313C 0C02A5C1 */  jal        func_800A9704
/* EC650 80043140 00000000 */   nop
.L80043144:
/* EC654 80043144 3C038015 */  lui        $v1, %hi(D_80149F90)
/* EC658 80043148 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* EC65C 8004314C 0203001A */  div        $zero, $s0, $v1
/* EC660 80043150 14600002 */  bnez       $v1, .L8004315C
/* EC664 80043154 00000000 */   nop
/* EC668 80043158 0007000D */  break      7
.L8004315C:
/* EC66C 8004315C 2401FFFF */   addiu     $at, $zero, -1
/* EC670 80043160 14610004 */  bne        $v1, $at, .L80043174
/* EC674 80043164 3C018000 */   lui       $at, 0x8000
/* EC678 80043168 16010002 */  bne        $s0, $at, .L80043174
/* EC67C 8004316C 00000000 */   nop
/* EC680 80043170 0006000D */  break      6
.L80043174:
/* EC684 80043174 00001812 */   mflo      $v1
/* EC688 80043178 3C048007 */  lui        $a0, %hi(D_8006C564)
/* EC68C 8004317C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* EC690 80043180 000310C0 */  sll        $v0, $v1, 3
/* EC694 80043184 00431023 */  subu       $v0, $v0, $v1
/* EC698 80043188 0082202A */  slt        $a0, $a0, $v0
/* EC69C 8004318C 1480002E */  bnez       $a0, .L80043248
/* EC6A0 80043190 00001021 */   addu      $v0, $zero, $zero
/* EC6A4 80043194 2402000C */  addiu      $v0, $zero, 0xc
.L80043198:
/* EC6A8 80043198 08010C91 */  j          .L80043244
/* EC6AC 8004319C A662001C */   sh        $v0, 0x1c($s3)
.L800431A0:
/* EC6B0 800431A0 3C048007 */  lui        $a0, %hi(D_8006C024)
/* EC6B4 800431A4 0C0295AA */  jal        func_800A56A8
/* EC6B8 800431A8 8C84C024 */   lw        $a0, %lo(D_8006C024)($a0)
/* EC6BC 800431AC 3C048007 */  lui        $a0, %hi(D_8006C028)
/* EC6C0 800431B0 0C0295AA */  jal        func_800A56A8
/* EC6C4 800431B4 8C84C028 */   lw        $a0, %lo(D_8006C028)($a0)
/* EC6C8 800431B8 3C048007 */  lui        $a0, %hi(D_8006C02C)
/* EC6CC 800431BC 0C0295AA */  jal        func_800A56A8
/* EC6D0 800431C0 8C84C02C */   lw        $a0, %lo(D_8006C02C)($a0)
/* EC6D4 800431C4 3C048007 */  lui        $a0, %hi(D_8006C030)
/* EC6D8 800431C8 0C0295AA */  jal        func_800A56A8
/* EC6DC 800431CC 8C84C030 */   lw        $a0, %lo(D_8006C030)($a0)
/* EC6E0 800431D0 3C048007 */  lui        $a0, %hi(D_8006C034)
/* EC6E4 800431D4 0C0295AA */  jal        func_800A56A8
/* EC6E8 800431D8 8C84C034 */   lw        $a0, %lo(D_8006C034)($a0)
/* EC6EC 800431DC 0C00E339 */  jal        func_80038CE4_E21F4
/* EC6F0 800431E0 00000000 */   nop
/* EC6F4 800431E4 0C026E5D */  jal        func_8009B974
/* EC6F8 800431E8 24040001 */   addiu     $a0, $zero, 1
/* EC6FC 800431EC 00001021 */  addu       $v0, $zero, $zero
/* EC700 800431F0 3403FFFE */  ori        $v1, $zero, 0xfffe
/* EC704 800431F4 08010C92 */  j          .L80043248
/* EC708 800431F8 A663001C */   sh        $v1, 0x1c($s3)
.L800431FC:
/* EC70C 800431FC 0C02A5C1 */  jal        func_800A9704
/* EC710 80043200 24040001 */   addiu     $a0, $zero, 1
/* EC714 80043204 3C048007 */  lui        $a0, %hi(D_8006BFD0)
/* EC718 80043208 0C029393 */  jal        func_800A4E4C
/* EC71C 8004320C 8C84BFD0 */   lw        $a0, %lo(D_8006BFD0)($a0)
/* EC720 80043210 3C048007 */  lui        $a0, %hi(D_8006BFD4)
/* EC724 80043214 0C029393 */  jal        func_800A4E4C
/* EC728 80043218 8C84BFD4 */   lw        $a0, %lo(D_8006BFD4)($a0)
/* EC72C 8004321C 3C048007 */  lui        $a0, %hi(D_8006BFD8)
/* EC730 80043220 0C029393 */  jal        func_800A4E4C
/* EC734 80043224 8C84BFD8 */   lw        $a0, %lo(D_8006BFD8)($a0)
/* EC738 80043228 0C00D7F4 */  jal        func_80035FD0_DF4E0
/* EC73C 8004322C 00000000 */   nop
/* EC740 80043230 24030001 */  addiu      $v1, $zero, 1
/* EC744 80043234 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* EC748 80043238 A023C3C8 */  sb         $v1, %lo(D_8006C3C8)($at)
/* EC74C 8004323C 08010C92 */  j          .L80043248
/* EC750 80043240 24020001 */   addiu     $v0, $zero, 1
.L80043244:
/* EC754 80043244 00001021 */  addu       $v0, $zero, $zero
.L80043248:
/* EC758 80043248 8FBF0068 */  lw         $ra, 0x68($sp)
/* EC75C 8004324C 8FB30064 */  lw         $s3, 0x64($sp)
/* EC760 80043250 8FB20060 */  lw         $s2, 0x60($sp)
/* EC764 80043254 8FB1005C */  lw         $s1, 0x5c($sp)
/* EC768 80043258 8FB00058 */  lw         $s0, 0x58($sp)
/* EC76C 8004325C D7B40070 */  ldc1       $f20, 0x70($sp)
/* EC770 80043260 03E00008 */  jr         $ra
/* EC774 80043264 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_80043268_EC778
/* EC778 80043268 3C028007 */  lui        $v0, %hi(D_80068FA4_1124B4)
/* EC77C 8004326C 90428FA4 */  lbu        $v0, %lo(D_80068FA4_1124B4)($v0)
/* EC780 80043270 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EC784 80043274 1040000B */  beqz       $v0, .L800432A4
/* EC788 80043278 AFBF0010 */   sw        $ra, 0x10($sp)
/* EC78C 8004327C 3C048004 */  lui        $a0, %hi(func_800416F0_EAC00)
/* EC790 80043280 248416F0 */  addiu      $a0, $a0, %lo(func_800416F0_EAC00)
/* EC794 80043284 00002821 */  addu       $a1, $zero, $zero
/* EC798 80043288 2406012C */  addiu      $a2, $zero, 0x12c
/* EC79C 8004328C 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* EC7A0 80043290 A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* EC7A4 80043294 0C025D06 */  jal        func_80097418
/* EC7A8 80043298 00003821 */   addu      $a3, $zero, $zero
/* EC7AC 8004329C 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC7B0 800432A0 A0208FA4 */  sb         $zero, %lo(D_80068FA4_1124B4)($at)
.L800432A4:
/* EC7B4 800432A4 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* EC7B8 800432A8 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* EC7BC 800432AC 24020001 */  addiu      $v0, $zero, 1
/* EC7C0 800432B0 14620005 */  bne        $v1, $v0, .L800432C8
/* EC7C4 800432B4 00001021 */   addu      $v0, $zero, $zero
/* EC7C8 800432B8 24020001 */  addiu      $v0, $zero, 1
/* EC7CC 800432BC 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC7D0 800432C0 A0228FA4 */  sb         $v0, %lo(D_80068FA4_1124B4)($at)
/* EC7D4 800432C4 24020001 */  addiu      $v0, $zero, 1
.L800432C8:
/* EC7D8 800432C8 8FBF0010 */  lw         $ra, 0x10($sp)
/* EC7DC 800432CC 03E00008 */  jr         $ra
/* EC7E0 800432D0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800432D4_EC7E4
/* EC7E4 800432D4 3C028007 */  lui        $v0, %hi(D_80068FA4_1124B4)
/* EC7E8 800432D8 90428FA4 */  lbu        $v0, %lo(D_80068FA4_1124B4)($v0)
/* EC7EC 800432DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EC7F0 800432E0 AFB00010 */  sw         $s0, 0x10($sp)
/* EC7F4 800432E4 24100001 */  addiu      $s0, $zero, 1
/* EC7F8 800432E8 AFBF0014 */  sw         $ra, 0x14($sp)
/* EC7FC 800432EC 3C018007 */  lui        $at, %hi(D_8006C580)
/* EC800 800432F0 A030C580 */  sb         $s0, %lo(D_8006C580)($at)
/* EC804 800432F4 1040000A */  beqz       $v0, .L80043320
/* EC808 800432F8 00002821 */   addu      $a1, $zero, $zero
/* EC80C 800432FC 3C048004 */  lui        $a0, %hi(func_800416F0_EAC00)
/* EC810 80043300 248416F0 */  addiu      $a0, $a0, %lo(func_800416F0_EAC00)
/* EC814 80043304 2406012C */  addiu      $a2, $zero, 0x12c
/* EC818 80043308 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* EC81C 8004330C A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* EC820 80043310 0C025D06 */  jal        func_80097418
/* EC824 80043314 00003821 */   addu      $a3, $zero, $zero
/* EC828 80043318 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC82C 8004331C A0208FA4 */  sb         $zero, %lo(D_80068FA4_1124B4)($at)
.L80043320:
/* EC830 80043320 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* EC834 80043324 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* EC838 80043328 24020001 */  addiu      $v0, $zero, 1
/* EC83C 8004332C 54620003 */  bnel       $v1, $v0, .L8004333C
/* EC840 80043330 00001021 */   addu      $v0, $zero, $zero
/* EC844 80043334 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC848 80043338 A0308FA4 */  sb         $s0, %lo(D_80068FA4_1124B4)($at)
.L8004333C:
/* EC84C 8004333C 8FBF0014 */  lw         $ra, 0x14($sp)
/* EC850 80043340 8FB00010 */  lw         $s0, 0x10($sp)
/* EC854 80043344 03E00008 */  jr         $ra
/* EC858 80043348 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8004334C_EC85C
/* EC85C 8004334C 3C038007 */  lui        $v1, %hi(D_80068FA4_1124B4)
/* EC860 80043350 90638FA4 */  lbu        $v1, %lo(D_80068FA4_1124B4)($v1)
/* EC864 80043354 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EC868 80043358 24020002 */  addiu      $v0, $zero, 2
/* EC86C 8004335C AFBF0010 */  sw         $ra, 0x10($sp)
/* EC870 80043360 3C018007 */  lui        $at, %hi(D_8006C580)
/* EC874 80043364 A022C580 */  sb         $v0, %lo(D_8006C580)($at)
/* EC878 80043368 1060000A */  beqz       $v1, .L80043394
/* EC87C 8004336C 00002821 */   addu      $a1, $zero, $zero
/* EC880 80043370 3C048004 */  lui        $a0, %hi(func_800416F0_EAC00)
/* EC884 80043374 248416F0 */  addiu      $a0, $a0, %lo(func_800416F0_EAC00)
/* EC888 80043378 2406012C */  addiu      $a2, $zero, 0x12c
/* EC88C 8004337C 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* EC890 80043380 A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* EC894 80043384 0C025D06 */  jal        func_80097418
/* EC898 80043388 00003821 */   addu      $a3, $zero, $zero
/* EC89C 8004338C 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC8A0 80043390 A0208FA4 */  sb         $zero, %lo(D_80068FA4_1124B4)($at)
.L80043394:
/* EC8A4 80043394 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* EC8A8 80043398 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* EC8AC 8004339C 24020001 */  addiu      $v0, $zero, 1
/* EC8B0 800433A0 54620005 */  bnel       $v1, $v0, .L800433B8
/* EC8B4 800433A4 00001021 */   addu      $v0, $zero, $zero
/* EC8B8 800433A8 24020001 */  addiu      $v0, $zero, 1
/* EC8BC 800433AC 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC8C0 800433B0 A0228FA4 */  sb         $v0, %lo(D_80068FA4_1124B4)($at)
/* EC8C4 800433B4 24020001 */  addiu      $v0, $zero, 1
.L800433B8:
/* EC8C8 800433B8 8FBF0010 */  lw         $ra, 0x10($sp)
/* EC8CC 800433BC 03E00008 */  jr         $ra
/* EC8D0 800433C0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800433C4_EC8D4
/* EC8D4 800433C4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EC8D8 800433C8 24020003 */  addiu      $v0, $zero, 3
/* EC8DC 800433CC AFBF0010 */  sw         $ra, 0x10($sp)
/* EC8E0 800433D0 3C018007 */  lui        $at, %hi(D_8006C580)
/* EC8E4 800433D4 0C016E88 */  jal        func_8005BA20_104F30
/* EC8E8 800433D8 A022C580 */   sb        $v0, %lo(D_8006C580)($at)
/* EC8EC 800433DC 8FBF0010 */  lw         $ra, 0x10($sp)
/* EC8F0 800433E0 03E00008 */  jr         $ra
/* EC8F4 800433E4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_800433E8_EC8F8
/* EC8F8 800433E8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EC8FC 800433EC AFB00010 */  sw         $s0, 0x10($sp)
/* EC900 800433F0 3C108007 */  lui        $s0, %hi(D_8006C580)
/* EC904 800433F4 9210C580 */  lbu        $s0, %lo(D_8006C580)($s0)
/* EC908 800433F8 24020002 */  addiu      $v0, $zero, 2
/* EC90C 800433FC AFBF0018 */  sw         $ra, 0x18($sp)
/* EC910 80043400 12020024 */  beq        $s0, $v0, .L80043494
/* EC914 80043404 AFB10014 */   sw        $s1, 0x14($sp)
/* EC918 80043408 2A020003 */  slti       $v0, $s0, 3
/* EC91C 8004340C 10400005 */  beqz       $v0, .L80043424
/* EC920 80043410 24020001 */   addiu     $v0, $zero, 1
/* EC924 80043414 12020008 */  beq        $s0, $v0, .L80043438
/* EC928 80043418 24110001 */   addiu     $s1, $zero, 1
/* EC92C 8004341C 08010D42 */  j          .L80043508
/* EC930 80043420 00000000 */   nop
.L80043424:
/* EC934 80043424 24020003 */  addiu      $v0, $zero, 3
/* EC938 80043428 52020034 */  beql       $s0, $v0, .L800434FC
/* EC93C 8004342C 24020003 */   addiu     $v0, $zero, 3
/* EC940 80043430 08010D42 */  j          .L80043508
/* EC944 80043434 00000000 */   nop
.L80043438:
/* EC948 80043438 3C028007 */  lui        $v0, %hi(D_80068FA4_1124B4)
/* EC94C 8004343C 90428FA4 */  lbu        $v0, %lo(D_80068FA4_1124B4)($v0)
/* EC950 80043440 3C018007 */  lui        $at, %hi(D_8006C580)
/* EC954 80043444 A031C580 */  sb         $s1, %lo(D_8006C580)($at)
/* EC958 80043448 1040000A */  beqz       $v0, .L80043474
/* EC95C 8004344C 00002821 */   addu      $a1, $zero, $zero
/* EC960 80043450 3C048004 */  lui        $a0, %hi(func_800416F0_EAC00)
/* EC964 80043454 248416F0 */  addiu      $a0, $a0, %lo(func_800416F0_EAC00)
/* EC968 80043458 2406012C */  addiu      $a2, $zero, 0x12c
/* EC96C 8004345C 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* EC970 80043460 A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* EC974 80043464 0C025D06 */  jal        func_80097418
/* EC978 80043468 00003821 */   addu      $a3, $zero, $zero
/* EC97C 8004346C 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC980 80043470 A0208FA4 */  sb         $zero, %lo(D_80068FA4_1124B4)($at)
.L80043474:
/* EC984 80043474 3C028007 */  lui        $v0, %hi(D_8006C3C8)
/* EC988 80043478 9042C3C8 */  lbu        $v0, %lo(D_8006C3C8)($v0)
/* EC98C 8004347C 14500022 */  bne        $v0, $s0, .L80043508
/* EC990 80043480 00001021 */   addu      $v0, $zero, $zero
/* EC994 80043484 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC998 80043488 A0318FA4 */  sb         $s1, %lo(D_80068FA4_1124B4)($at)
/* EC99C 8004348C 08010D42 */  j          .L80043508
/* EC9A0 80043490 24020001 */   addiu     $v0, $zero, 1
.L80043494:
/* EC9A4 80043494 3C038007 */  lui        $v1, %hi(D_80068FA4_1124B4)
/* EC9A8 80043498 90638FA4 */  lbu        $v1, %lo(D_80068FA4_1124B4)($v1)
/* EC9AC 8004349C 24020002 */  addiu      $v0, $zero, 2
/* EC9B0 800434A0 3C018007 */  lui        $at, %hi(D_8006C580)
/* EC9B4 800434A4 A022C580 */  sb         $v0, %lo(D_8006C580)($at)
/* EC9B8 800434A8 1060000A */  beqz       $v1, .L800434D4
/* EC9BC 800434AC 00002821 */   addu      $a1, $zero, $zero
/* EC9C0 800434B0 3C048004 */  lui        $a0, %hi(func_800416F0_EAC00)
/* EC9C4 800434B4 248416F0 */  addiu      $a0, $a0, %lo(func_800416F0_EAC00)
/* EC9C8 800434B8 2406012C */  addiu      $a2, $zero, 0x12c
/* EC9CC 800434BC 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* EC9D0 800434C0 A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* EC9D4 800434C4 0C025D06 */  jal        func_80097418
/* EC9D8 800434C8 00003821 */   addu      $a3, $zero, $zero
/* EC9DC 800434CC 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* EC9E0 800434D0 A0208FA4 */  sb         $zero, %lo(D_80068FA4_1124B4)($at)
.L800434D4:
/* EC9E4 800434D4 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* EC9E8 800434D8 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* EC9EC 800434DC 24020001 */  addiu      $v0, $zero, 1
/* EC9F0 800434E0 54620009 */  bnel       $v1, $v0, .L80043508
/* EC9F4 800434E4 00001021 */   addu      $v0, $zero, $zero
/* EC9F8 800434E8 24020001 */  addiu      $v0, $zero, 1
/* EC9FC 800434EC 3C018007 */  lui        $at, %hi(D_80068FA4_1124B4)
/* ECA00 800434F0 A0228FA4 */  sb         $v0, %lo(D_80068FA4_1124B4)($at)
/* ECA04 800434F4 08010D42 */  j          .L80043508
/* ECA08 800434F8 24020001 */   addiu     $v0, $zero, 1
.L800434FC:
/* ECA0C 800434FC 3C018007 */  lui        $at, %hi(D_8006C580)
/* ECA10 80043500 0C016E88 */  jal        func_8005BA20_104F30
/* ECA14 80043504 A022C580 */   sb        $v0, %lo(D_8006C580)($at)
.L80043508:
/* ECA18 80043508 8FBF0018 */  lw         $ra, 0x18($sp)
/* ECA1C 8004350C 8FB10014 */  lw         $s1, 0x14($sp)
/* ECA20 80043510 8FB00010 */  lw         $s0, 0x10($sp)
/* ECA24 80043514 03E00008 */  jr         $ra
/* ECA28 80043518 27BD0020 */   addiu     $sp, $sp, 0x20
/* ECA2C 8004351C 00000000 */  nop
