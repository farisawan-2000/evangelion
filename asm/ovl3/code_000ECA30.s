.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80043520_ECA30
/* ECA30 80043520 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* ECA34 80043524 24040102 */  addiu      $a0, $zero, 0x102
/* ECA38 80043528 24050005 */  addiu      $a1, $zero, 5
/* ECA3C 8004352C AFBF0010 */  sw         $ra, 0x10($sp)
/* ECA40 80043530 0C00D925 */  jal        func_80036494_DF9A4
/* ECA44 80043534 24060017 */   addiu     $a2, $zero, 0x17
/* ECA48 80043538 8C44000C */  lw         $a0, 0xc($v0)
/* ECA4C 8004353C 24050080 */  addiu      $a1, $zero, 0x80
/* ECA50 80043540 0C028D89 */  jal        func_800A3624
/* ECA54 80043544 2406018C */   addiu     $a2, $zero, 0x18c
/* ECA58 80043548 8FBF0010 */  lw         $ra, 0x10($sp)
/* ECA5C 8004354C 03E00008 */  jr         $ra
/* ECA60 80043550 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80043554_ECA64
/* ECA64 80043554 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* ECA68 80043558 AFBF0024 */  sw         $ra, 0x24($sp)
/* ECA6C 8004355C AFB20020 */  sw         $s2, 0x20($sp)
/* ECA70 80043560 AFB1001C */  sw         $s1, 0x1c($sp)
/* ECA74 80043564 0C00E109 */  jal        func_80038424_E1934
/* ECA78 80043568 AFB00018 */   sw        $s0, 0x18($sp)
/* ECA7C 8004356C 3C04802F */  lui        $a0, 0x802f
/* ECA80 80043570 34849800 */  ori        $a0, $a0, 0x9800
/* ECA84 80043574 24050103 */  addiu      $a1, $zero, 0x103
/* ECA88 80043578 24060015 */  addiu      $a2, $zero, 0x15
/* ECA8C 8004357C 0C00D9E0 */  jal        func_80036780_DFC90
/* ECA90 80043580 24070020 */   addiu     $a3, $zero, 0x20
/* ECA94 80043584 8C42000C */  lw         $v0, 0xc($v0)
/* ECA98 80043588 240600A0 */  addiu      $a2, $zero, 0xa0
/* ECA9C 8004358C 8C500014 */  lw         $s0, 0x14($v0)
/* ECAA0 80043590 00008821 */  addu       $s1, $zero, $zero
/* ECAA4 80043594 24120047 */  addiu      $s2, $zero, 0x47
/* ECAA8 80043598 02002021 */  addu       $a0, $s0, $zero
/* ECAAC 8004359C 0C03006C */  jal        func_800C01B0
/* ECAB0 800435A0 26050300 */   addiu     $a1, $s0, 0x300
/* ECAB4 800435A4 26040200 */  addiu      $a0, $s0, 0x200
/* ECAB8 800435A8 02002821 */  addu       $a1, $s0, $zero
/* ECABC 800435AC 0C03006C */  jal        func_800C01B0
/* ECAC0 800435B0 240600A0 */   addiu     $a2, $zero, 0xa0
/* ECAC4 800435B4 26040300 */  addiu      $a0, $s0, 0x300
/* ECAC8 800435B8 26050200 */  addiu      $a1, $s0, 0x200
/* ECACC 800435BC 0C03006C */  jal        func_800C01B0
/* ECAD0 800435C0 240600A0 */   addiu     $a2, $zero, 0xa0
/* ECAD4 800435C4 322300FF */  andi       $v1, $s1, 0xff
.L800435C8:
/* ECAD8 800435C8 00031040 */  sll        $v0, $v1, 1
/* ECADC 800435CC 00431021 */  addu       $v0, $v0, $v1
/* ECAE0 800435D0 00021040 */  sll        $v0, $v0, 1
/* ECAE4 800435D4 3C048007 */  lui        $a0, %hi(D_80069F84)
/* ECAE8 800435D8 00822021 */  addu       $a0, $a0, $v0
/* ECAEC 800435DC 94849F84 */  lhu        $a0, %lo(D_80069F84)($a0)
/* ECAF0 800435E0 24050002 */  addiu      $a1, $zero, 2
/* ECAF4 800435E4 322600FF */  andi       $a2, $s1, 0xff
/* ECAF8 800435E8 0C00D925 */  jal        func_80036494_DF9A4
/* ECAFC 800435EC 24C60021 */   addiu     $a2, $a2, 0x21
/* ECB00 800435F0 00408021 */  addu       $s0, $v0, $zero
/* ECB04 800435F4 8E02000C */  lw         $v0, 0xc($s0)
/* ECB08 800435F8 A452001C */  sh         $s2, 0x1c($v0)
/* ECB0C 800435FC 8E04000C */  lw         $a0, 0xc($s0)
/* ECB10 80043600 26310001 */  addiu      $s1, $s1, 1
/* ECB14 80043604 0C00DE7C */  jal        func_800379F0_E0F00
/* ECB18 80043608 24050001 */   addiu     $a1, $zero, 1
/* ECB1C 8004360C 8E04000C */  lw         $a0, 0xc($s0)
/* ECB20 80043610 00002821 */  addu       $a1, $zero, $zero
/* ECB24 80043614 2442FFFF */  addiu      $v0, $v0, -1
/* ECB28 80043618 0C00DE6C */  jal        func_800379B0_E0EC0
/* ECB2C 8004361C 3046FFFF */   andi      $a2, $v0, 0xffff
/* ECB30 80043620 322200FF */  andi       $v0, $s1, 0xff
/* ECB34 80043624 2C42002B */  sltiu      $v0, $v0, 0x2b
/* ECB38 80043628 1440FFE7 */  bnez       $v0, .L800435C8
/* ECB3C 8004362C 322300FF */   andi      $v1, $s1, 0xff
/* ECB40 80043630 24040118 */  addiu      $a0, $zero, 0x118
/* ECB44 80043634 24050002 */  addiu      $a1, $zero, 2
/* ECB48 80043638 24060003 */  addiu      $a2, $zero, 3
/* ECB4C 8004363C 0C00D97B */  jal        func_800365EC_DFAFC
/* ECB50 80043640 2407001D */   addiu     $a3, $zero, 0x1d
/* ECB54 80043644 27A40010 */  addiu      $a0, $sp, 0x10
/* ECB58 80043648 240520C9 */  addiu      $a1, $zero, 0x20c9
/* ECB5C 8004364C 24060002 */  addiu      $a2, $zero, 2
/* ECB60 80043650 3C028007 */  lui        $v0, %hi(D_80068FB0)
/* ECB64 80043654 24428FB0 */  addiu      $v0, $v0, %lo(D_80068FB0)
/* ECB68 80043658 2412FFFE */  addiu      $s2, $zero, -2
/* ECB6C 8004365C 24110001 */  addiu      $s1, $zero, 1
/* ECB70 80043660 24100003 */  addiu      $s0, $zero, 3
/* ECB74 80043664 AFA20010 */  sw         $v0, 0x10($sp)
/* ECB78 80043668 A3B20014 */  sb         $s2, 0x14($sp)
/* ECB7C 8004366C A3A00015 */  sb         $zero, 0x15($sp)
/* ECB80 80043670 A3B10016 */  sb         $s1, 0x16($sp)
/* ECB84 80043674 0C00DE82 */  jal        func_80037A08_E0F18
/* ECB88 80043678 A3B00017 */   sb        $s0, 0x17($sp)
/* ECB8C 8004367C 27A40010 */  addiu      $a0, $sp, 0x10
/* ECB90 80043680 240520CA */  addiu      $a1, $zero, 0x20ca
/* ECB94 80043684 24060002 */  addiu      $a2, $zero, 2
/* ECB98 80043688 3C028007 */  lui        $v0, %hi(D_80068FD0)
/* ECB9C 8004368C 24428FD0 */  addiu      $v0, $v0, %lo(D_80068FD0)
/* ECBA0 80043690 AFA20010 */  sw         $v0, 0x10($sp)
/* ECBA4 80043694 A3B20014 */  sb         $s2, 0x14($sp)
/* ECBA8 80043698 A3A00015 */  sb         $zero, 0x15($sp)
/* ECBAC 8004369C A3B10016 */  sb         $s1, 0x16($sp)
/* ECBB0 800436A0 0C00DE82 */  jal        func_80037A08_E0F18
/* ECBB4 800436A4 A3B00017 */   sb        $s0, 0x17($sp)
/* ECBB8 800436A8 8FBF0024 */  lw         $ra, 0x24($sp)
/* ECBBC 800436AC 8FB20020 */  lw         $s2, 0x20($sp)
/* ECBC0 800436B0 8FB1001C */  lw         $s1, 0x1c($sp)
/* ECBC4 800436B4 8FB00018 */  lw         $s0, 0x18($sp)
/* ECBC8 800436B8 03E00008 */  jr         $ra
/* ECBCC 800436BC 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800436C0_ECBD0
/* ECBD0 800436C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* ECBD4 800436C4 AFB00010 */  sw         $s0, 0x10($sp)
/* ECBD8 800436C8 3090FFFF */  andi       $s0, $a0, 0xffff
/* ECBDC 800436CC AFB10014 */  sw         $s1, 0x14($sp)
/* ECBE0 800436D0 2611FFF0 */  addiu      $s1, $s0, -0x10
/* ECBE4 800436D4 0620000B */  bltz       $s1, .L80043704
/* ECBE8 800436D8 AFBF0018 */   sw        $ra, 0x18($sp)
/* ECBEC 800436DC 0C00D8C1 */  jal        func_80036304_DF814
/* ECBF0 800436E0 24040020 */   addiu     $a0, $zero, 0x20
/* ECBF4 800436E4 8C42000C */  lw         $v0, 0xc($v0)
/* ECBF8 800436E8 00102140 */  sll        $a0, $s0, 5
/* ECBFC 800436EC 8C420014 */  lw         $v0, 0x14($v0)
/* ECC00 800436F0 00112940 */  sll        $a1, $s1, 5
/* ECC04 800436F4 24060020 */  addiu      $a2, $zero, 0x20
/* ECC08 800436F8 00442021 */  addu       $a0, $v0, $a0
/* ECC0C 800436FC 0C03006C */  jal        func_800C01B0
/* ECC10 80043700 00452821 */   addu      $a1, $v0, $a1
.L80043704:
/* ECC14 80043704 8FBF0018 */  lw         $ra, 0x18($sp)
/* ECC18 80043708 8FB10014 */  lw         $s1, 0x14($sp)
/* ECC1C 8004370C 8FB00010 */  lw         $s0, 0x10($sp)
/* ECC20 80043710 03E00008 */  jr         $ra
/* ECC24 80043714 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80043718_ECC28
/* ECC28 80043718 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* ECC2C 8004371C AFBF0030 */  sw         $ra, 0x30($sp)
/* ECC30 80043720 AFB3002C */  sw         $s3, 0x2c($sp)
/* ECC34 80043724 AFB20028 */  sw         $s2, 0x28($sp)
/* ECC38 80043728 AFB10024 */  sw         $s1, 0x24($sp)
/* ECC3C 8004372C AFB00020 */  sw         $s0, 0x20($sp)
/* ECC40 80043730 F7B60040 */  sdc1       $f22, 0x40($sp)
/* ECC44 80043734 F7B40038 */  sdc1       $f20, 0x38($sp)
/* ECC48 80043738 0C00E109 */  jal        func_80038424_E1934
/* ECC4C 8004373C 00008821 */   addu      $s1, $zero, $zero
/* ECC50 80043740 0C00DFA8 */  jal        func_80037EA0_E13B0
/* ECC54 80043744 24040009 */   addiu     $a0, $zero, 9
/* ECC58 80043748 00408021 */  addu       $s0, $v0, $zero
/* ECC5C 8004374C 3C013C34 */  lui        $at, 0x3c34
/* ECC60 80043750 34213958 */  ori        $at, $at, 0x3958
/* ECC64 80043754 4481B000 */  mtc1       $at, $f22
/* ECC68 80043758 3C01C248 */  lui        $at, 0xc248
/* ECC6C 8004375C 44810000 */  mtc1       $at, $f0
/* ECC70 80043760 3C0142B4 */  lui        $at, 0x42b4
/* ECC74 80043764 44811000 */  mtc1       $at, $f2
/* ECC78 80043768 3C013CA3 */  lui        $at, 0x3ca3
/* ECC7C 8004376C 3421D70A */  ori        $at, $at, 0xd70a
/* ECC80 80043770 44812000 */  mtc1       $at, $f4
/* ECC84 80043774 02002021 */  addu       $a0, $s0, $zero
/* ECC88 80043778 00002821 */  addu       $a1, $zero, $zero
/* ECC8C 8004377C 240200FF */  addiu      $v0, $zero, 0xff
/* ECC90 80043780 A6020074 */  sh         $v0, 0x74($s0)
/* ECC94 80043784 A6020076 */  sh         $v0, 0x76($s0)
/* ECC98 80043788 A6020078 */  sh         $v0, 0x78($s0)
/* ECC9C 8004378C A602007A */  sh         $v0, 0x7a($s0)
/* ECCA0 80043790 24020011 */  addiu      $v0, $zero, 0x11
/* ECCA4 80043794 AE000010 */  sw         $zero, 0x10($s0)
/* ECCA8 80043798 AE00001C */  sw         $zero, 0x1c($s0)
/* ECCAC 8004379C AE000020 */  sw         $zero, 0x20($s0)
/* ECCB0 800437A0 AE000024 */  sw         $zero, 0x24($s0)
/* ECCB4 800437A4 A6020070 */  sh         $v0, 0x70($s0)
/* ECCB8 800437A8 E6000014 */  swc1       $f0, 0x14($s0)
/* ECCBC 800437AC E6020018 */  swc1       $f2, 0x18($s0)
/* ECCC0 800437B0 0C00DFE6 */  jal        func_80037F98_E14A8
/* ECCC4 800437B4 E6040028 */   swc1      $f4, 0x28($s0)
/* ECCC8 800437B8 8E020004 */  lw         $v0, 4($s0)
/* ECCCC 800437BC A0400067 */  sb         $zero, 0x67($v0)
/* ECCD0 800437C0 8E030004 */  lw         $v1, 4($s0)
/* ECCD4 800437C4 24020002 */  addiu      $v0, $zero, 2
/* ECCD8 800437C8 A6020072 */  sh         $v0, 0x72($s0)
/* ECCDC 800437CC 90620066 */  lbu        $v0, 0x66($v1)
/* ECCE0 800437D0 3C01C110 */  lui        $at, 0xc110
/* ECCE4 800437D4 4481A000 */  mtc1       $at, $f20
/* ECCE8 800437D8 34420007 */  ori        $v0, $v0, 7
/* ECCEC 800437DC A0620066 */  sb         $v0, 0x66($v1)
/* ECCF0 800437E0 8E040004 */  lw         $a0, 4($s0)
/* ECCF4 800437E4 3C058007 */  lui        $a1, %hi(D_8006A084)
/* ECCF8 800437E8 24A5A084 */  addiu      $a1, $a1, %lo(D_8006A084)
/* ECCFC 800437EC 0C0284DC */  jal        func_800A1370
/* ECD00 800437F0 241200FF */   addiu     $s2, $zero, 0xff
/* ECD04 800437F4 8E040004 */  lw         $a0, 4($s0)
/* ECD08 800437F8 3045FFFF */  andi       $a1, $v0, 0xffff
/* ECD0C 800437FC 0C02869D */  jal        func_800A1A74
/* ECD10 80043800 00003021 */   addu      $a2, $zero, $zero
/* ECD14 80043804 8E040004 */  lw         $a0, 4($s0)
/* ECD18 80043808 3C058007 */  lui        $a1, %hi(D_8006A08C)
/* ECD1C 8004380C 24A5A08C */  addiu      $a1, $a1, %lo(D_8006A08C)
/* ECD20 80043810 0C0284DC */  jal        func_800A1370
/* ECD24 80043814 2413FFFF */   addiu     $s3, $zero, -1
/* ECD28 80043818 8E040004 */  lw         $a0, 4($s0)
/* ECD2C 8004381C 3045FFFF */  andi       $a1, $v0, 0xffff
/* ECD30 80043820 0C02869D */  jal        func_800A1A74
/* ECD34 80043824 00003021 */   addu      $a2, $zero, $zero
/* ECD38 80043828 322400FF */  andi       $a0, $s1, 0xff
.L8004382C:
/* ECD3C 8004382C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* ECD40 80043830 2484000A */   addiu     $a0, $a0, 0xa
/* ECD44 80043834 00408021 */  addu       $s0, $v0, $zero
/* ECD48 80043838 02002021 */  addu       $a0, $s0, $zero
/* ECD4C 8004383C 24050130 */  addiu      $a1, $zero, 0x130
/* ECD50 80043840 AE000010 */  sw         $zero, 0x10($s0)
/* ECD54 80043844 AE000014 */  sw         $zero, 0x14($s0)
/* ECD58 80043848 AE000018 */  sw         $zero, 0x18($s0)
/* ECD5C 8004384C E6160028 */  swc1       $f22, 0x28($s0)
/* ECD60 80043850 E614001C */  swc1       $f20, 0x1c($s0)
/* ECD64 80043854 AE000020 */  sw         $zero, 0x20($s0)
/* ECD68 80043858 AE000024 */  sw         $zero, 0x24($s0)
/* ECD6C 8004385C A6120074 */  sh         $s2, 0x74($s0)
/* ECD70 80043860 A6120076 */  sh         $s2, 0x76($s0)
/* ECD74 80043864 A6120078 */  sh         $s2, 0x78($s0)
/* ECD78 80043868 A612007A */  sh         $s2, 0x7a($s0)
/* ECD7C 8004386C 0C00DFE6 */  jal        func_80037F98_E14A8
/* ECD80 80043870 A6130070 */   sh        $s3, 0x70($s0)
/* ECD84 80043874 8E020004 */  lw         $v0, 4($s0)
/* ECD88 80043878 A0400067 */  sb         $zero, 0x67($v0)
/* ECD8C 8004387C 8E030004 */  lw         $v1, 4($s0)
/* ECD90 80043880 90620066 */  lbu        $v0, 0x66($v1)
/* ECD94 80043884 26310001 */  addiu      $s1, $s1, 1
/* ECD98 80043888 34420007 */  ori        $v0, $v0, 7
/* ECD9C 8004388C A0620066 */  sb         $v0, 0x66($v1)
/* ECDA0 80043890 322200FF */  andi       $v0, $s1, 0xff
/* ECDA4 80043894 2C420008 */  sltiu      $v0, $v0, 8
/* ECDA8 80043898 1440FFE4 */  bnez       $v0, .L8004382C
/* ECDAC 8004389C 322400FF */   andi      $a0, $s1, 0xff
/* ECDB0 800438A0 3C013F80 */  lui        $at, 0x3f80
/* ECDB4 800438A4 44810000 */  mtc1       $at, $f0
/* ECDB8 800438A8 3C01C100 */  lui        $at, 0xc100
/* ECDBC 800438AC 44811000 */  mtc1       $at, $f2
/* ECDC0 800438B0 3C0142A0 */  lui        $at, 0x42a0
/* ECDC4 800438B4 44812000 */  mtc1       $at, $f4
/* ECDC8 800438B8 3C01C32C */  lui        $at, 0xc32c
/* ECDCC 800438BC 44813000 */  mtc1       $at, $f6
/* ECDD0 800438C0 3C018015 */  lui        $at, %hi(D_8014A064)
/* ECDD4 800438C4 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* ECDD8 800438C8 3C018015 */  lui        $at, %hi(D_8014A068)
/* ECDDC 800438CC AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* ECDE0 800438D0 3C018015 */  lui        $at, %hi(D_8014A06C)
/* ECDE4 800438D4 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* ECDE8 800438D8 3C018015 */  lui        $at, %hi(D_8014A070)
/* ECDEC 800438DC AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* ECDF0 800438E0 3C018015 */  lui        $at, %hi(D_8014A078)
/* ECDF4 800438E4 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* ECDF8 800438E8 3C018015 */  lui        $at, %hi(D_8014A084)
/* ECDFC 800438EC AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* ECE00 800438F0 3C018015 */  lui        $at, %hi(D_8014A074)
/* ECE04 800438F4 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* ECE08 800438F8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* ECE0C 800438FC E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* ECE10 80043900 3C018015 */  lui        $at, %hi(D_8014A080)
/* ECE14 80043904 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* ECE18 80043908 3C018015 */  lui        $at, %hi(D_8014A088)
/* ECE1C 8004390C E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* ECE20 80043910 0C00E339 */  jal        func_80038CE4_E21F4
/* ECE24 80043914 2411FFFE */   addiu     $s1, $zero, -2
/* ECE28 80043918 3C048031 */  lui        $a0, 0x8031
/* ECE2C 8004391C 34847420 */  ori        $a0, $a0, 0x7420
/* ECE30 80043920 2405019A */  addiu      $a1, $zero, 0x19a
/* ECE34 80043924 3C01C0A0 */  lui        $at, 0xc0a0
/* ECE38 80043928 44810000 */  mtc1       $at, $f0
/* ECE3C 8004392C 3C0141A0 */  lui        $at, 0x41a0
/* ECE40 80043930 44811000 */  mtc1       $at, $f2
/* ECE44 80043934 3C01C1A0 */  lui        $at, 0xc1a0
/* ECE48 80043938 44812000 */  mtc1       $at, $f4
/* ECE4C 8004393C 24060007 */  addiu      $a2, $zero, 7
/* ECE50 80043940 3C018015 */  lui        $at, %hi(D_8014A054)
/* ECE54 80043944 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* ECE58 80043948 3C018015 */  lui        $at, %hi(D_8014A050)
/* ECE5C 8004394C AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* ECE60 80043950 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* ECE64 80043954 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* ECE68 80043958 3C018017 */  lui        $at, %hi(D_8016E568)
/* ECE6C 8004395C E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* ECE70 80043960 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* ECE74 80043964 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* ECE78 80043968 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* ECE7C 8004396C E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* ECE80 80043970 0C00D9E0 */  jal        func_80036780_DFC90
/* ECE84 80043974 24070022 */   addiu     $a3, $zero, 0x22
/* ECE88 80043978 00408021 */  addu       $s0, $v0, $zero
/* ECE8C 8004397C 8E04000C */  lw         $a0, 0xc($s0)
/* ECE90 80043980 3C014000 */  lui        $at, 0x4000
/* ECE94 80043984 4481A000 */  mtc1       $at, $f20
/* ECE98 80043988 3C064001 */  lui        $a2, 0x4001
/* ECE9C 8004398C 34C647AE */  ori        $a2, $a2, 0x47ae
/* ECEA0 80043990 4407A000 */  mfc1       $a3, $f20
/* ECEA4 80043994 00000000 */  nop
/* ECEA8 80043998 0C02915B */  jal        func_800A456C
/* ECEAC 8004399C 00002821 */   addu      $a1, $zero, $zero
/* ECEB0 800439A0 8E04000C */  lw         $a0, 0xc($s0)
/* ECEB4 800439A4 24050040 */  addiu      $a1, $zero, 0x40
/* ECEB8 800439A8 0C028D89 */  jal        func_800A3624
/* ECEBC 800439AC 2406FF80 */   addiu     $a2, $zero, -0x80
/* ECEC0 800439B0 8E03000C */  lw         $v1, 0xc($s0)
/* ECEC4 800439B4 240401A2 */  addiu      $a0, $zero, 0x1a2
/* ECEC8 800439B8 9462001E */  lhu        $v0, 0x1e($v1)
/* ECECC 800439BC 24050002 */  addiu      $a1, $zero, 2
/* ECED0 800439C0 2406002A */  addiu      $a2, $zero, 0x2a
/* ECED4 800439C4 34420104 */  ori        $v0, $v0, 0x104
/* ECED8 800439C8 0C00D925 */  jal        func_80036494_DF9A4
/* ECEDC 800439CC A462001E */   sh        $v0, 0x1e($v1)
/* ECEE0 800439D0 00408021 */  addu       $s0, $v0, $zero
/* ECEE4 800439D4 8E04000C */  lw         $a0, 0xc($s0)
/* ECEE8 800439D8 3C064000 */  lui        $a2, 0x4000
/* ECEEC 800439DC 34C6A3D7 */  ori        $a2, $a2, 0xa3d7
/* ECEF0 800439E0 4407A000 */  mfc1       $a3, $f20
/* ECEF4 800439E4 00000000 */  nop
/* ECEF8 800439E8 0C02915B */  jal        func_800A456C
/* ECEFC 800439EC 00002821 */   addu      $a1, $zero, $zero
/* ECF00 800439F0 8E04000C */  lw         $a0, 0xc($s0)
/* ECF04 800439F4 240501C0 */  addiu      $a1, $zero, 0x1c0
/* ECF08 800439F8 0C028D89 */  jal        func_800A3624
/* ECF0C 800439FC 24060040 */   addiu     $a2, $zero, 0x40
/* ECF10 80043A00 8E03000C */  lw         $v1, 0xc($s0)
/* ECF14 80043A04 9462001E */  lhu        $v0, 0x1e($v1)
/* ECF18 80043A08 34420004 */  ori        $v0, $v0, 4
/* ECF1C 80043A0C A462001E */  sh         $v0, 0x1e($v1)
/* ECF20 80043A10 8E04000C */  lw         $a0, 0xc($s0)
/* ECF24 80043A14 0C00DE7C */  jal        func_800379F0_E0F00
/* ECF28 80043A18 2405000F */   addiu     $a1, $zero, 0xf
/* ECF2C 80043A1C 8E04000C */  lw         $a0, 0xc($s0)
/* ECF30 80043A20 00002821 */  addu       $a1, $zero, $zero
/* ECF34 80043A24 2442FFFF */  addiu      $v0, $v0, -1
/* ECF38 80043A28 0C00DE6C */  jal        func_800379B0_E0EC0
/* ECF3C 80043A2C 3046FFFF */   andi      $a2, $v0, 0xffff
/* ECF40 80043A30 240401A3 */  addiu      $a0, $zero, 0x1a3
/* ECF44 80043A34 24050002 */  addiu      $a1, $zero, 2
/* ECF48 80043A38 0C00D925 */  jal        func_80036494_DF9A4
/* ECF4C 80043A3C 24060023 */   addiu     $a2, $zero, 0x23
/* ECF50 80043A40 8C44000C */  lw         $a0, 0xc($v0)
/* ECF54 80043A44 24050080 */  addiu      $a1, $zero, 0x80
/* ECF58 80043A48 0C028D89 */  jal        func_800A3624
/* ECF5C 80043A4C 240601C0 */   addiu     $a2, $zero, 0x1c0
/* ECF60 80043A50 240401A4 */  addiu      $a0, $zero, 0x1a4
/* ECF64 80043A54 24050002 */  addiu      $a1, $zero, 2
/* ECF68 80043A58 0C00D925 */  jal        func_80036494_DF9A4
/* ECF6C 80043A5C 24060024 */   addiu     $a2, $zero, 0x24
/* ECF70 80043A60 8C44000C */  lw         $a0, 0xc($v0)
/* ECF74 80043A64 24050040 */  addiu      $a1, $zero, 0x40
/* ECF78 80043A68 0C028D89 */  jal        func_800A3624
/* ECF7C 80043A6C 24060200 */   addiu     $a2, $zero, 0x200
/* ECF80 80043A70 240401A5 */  addiu      $a0, $zero, 0x1a5
/* ECF84 80043A74 24050002 */  addiu      $a1, $zero, 2
/* ECF88 80043A78 0C00D925 */  jal        func_80036494_DF9A4
/* ECF8C 80043A7C 24060025 */   addiu     $a2, $zero, 0x25
/* ECF90 80043A80 8C44000C */  lw         $a0, 0xc($v0)
/* ECF94 80043A84 24050040 */  addiu      $a1, $zero, 0x40
/* ECF98 80043A88 0C028D89 */  jal        func_800A3624
/* ECF9C 80043A8C 24060240 */   addiu     $a2, $zero, 0x240
/* ECFA0 80043A90 240401A6 */  addiu      $a0, $zero, 0x1a6
/* ECFA4 80043A94 24050002 */  addiu      $a1, $zero, 2
/* ECFA8 80043A98 0C00D925 */  jal        func_80036494_DF9A4
/* ECFAC 80043A9C 24060026 */   addiu     $a2, $zero, 0x26
/* ECFB0 80043AA0 8C44000C */  lw         $a0, 0xc($v0)
/* ECFB4 80043AA4 24050040 */  addiu      $a1, $zero, 0x40
/* ECFB8 80043AA8 0C028D89 */  jal        func_800A3624
/* ECFBC 80043AAC 24060280 */   addiu     $a2, $zero, 0x280
/* ECFC0 80043AB0 240401A7 */  addiu      $a0, $zero, 0x1a7
/* ECFC4 80043AB4 24050002 */  addiu      $a1, $zero, 2
/* ECFC8 80043AB8 0C00D925 */  jal        func_80036494_DF9A4
/* ECFCC 80043ABC 24060027 */   addiu     $a2, $zero, 0x27
/* ECFD0 80043AC0 8C44000C */  lw         $a0, 0xc($v0)
/* ECFD4 80043AC4 24050040 */  addiu      $a1, $zero, 0x40
/* ECFD8 80043AC8 0C028D89 */  jal        func_800A3624
/* ECFDC 80043ACC 240602C0 */   addiu     $a2, $zero, 0x2c0
/* ECFE0 80043AD0 240401A8 */  addiu      $a0, $zero, 0x1a8
/* ECFE4 80043AD4 24050002 */  addiu      $a1, $zero, 2
/* ECFE8 80043AD8 0C00D925 */  jal        func_80036494_DF9A4
/* ECFEC 80043ADC 24060028 */   addiu     $a2, $zero, 0x28
/* ECFF0 80043AE0 8C44000C */  lw         $a0, 0xc($v0)
/* ECFF4 80043AE4 24050040 */  addiu      $a1, $zero, 0x40
/* ECFF8 80043AE8 0C028D89 */  jal        func_800A3624
/* ECFFC 80043AEC 24060300 */   addiu     $a2, $zero, 0x300
/* ED000 80043AF0 240401A9 */  addiu      $a0, $zero, 0x1a9
/* ED004 80043AF4 24050002 */  addiu      $a1, $zero, 2
/* ED008 80043AF8 0C00D925 */  jal        func_80036494_DF9A4
/* ED00C 80043AFC 24060029 */   addiu     $a2, $zero, 0x29
/* ED010 80043B00 8C44000C */  lw         $a0, 0xc($v0)
/* ED014 80043B04 24050040 */  addiu      $a1, $zero, 0x40
/* ED018 80043B08 0C028D89 */  jal        func_800A3624
/* ED01C 80043B0C 24060340 */   addiu     $a2, $zero, 0x340
/* ED020 80043B10 27A40018 */  addiu      $a0, $sp, 0x18
/* ED024 80043B14 240520C9 */  addiu      $a1, $zero, 0x20c9
/* ED028 80043B18 24060003 */  addiu      $a2, $zero, 3
/* ED02C 80043B1C 3C028007 */  lui        $v0, %hi(D_80068FE8)
/* ED030 80043B20 24428FE8 */  addiu      $v0, $v0, %lo(D_80068FE8)
/* ED034 80043B24 24100001 */  addiu      $s0, $zero, 1
/* ED038 80043B28 AFA20018 */  sw         $v0, 0x18($sp)
/* ED03C 80043B2C 24020003 */  addiu      $v0, $zero, 3
/* ED040 80043B30 A3B1001C */  sb         $s1, 0x1c($sp)
/* ED044 80043B34 A3A0001D */  sb         $zero, 0x1d($sp)
/* ED048 80043B38 A3B0001E */  sb         $s0, 0x1e($sp)
/* ED04C 80043B3C 0C00DE82 */  jal        func_80037A08_E0F18
/* ED050 80043B40 A3A2001F */   sb        $v0, 0x1f($sp)
/* ED054 80043B44 27A40018 */  addiu      $a0, $sp, 0x18
/* ED058 80043B48 240520CA */  addiu      $a1, $zero, 0x20ca
/* ED05C 80043B4C 240620D4 */  addiu      $a2, $zero, 0x20d4
/* ED060 80043B50 24070028 */  addiu      $a3, $zero, 0x28
/* ED064 80043B54 3C028007 */  lui        $v0, %hi(D_80069000)
/* ED068 80043B58 24429000 */  addiu      $v0, $v0, %lo(D_80069000)
/* ED06C 80043B5C 24130002 */  addiu      $s3, $zero, 2
/* ED070 80043B60 241200AF */  addiu      $s2, $zero, 0xaf
/* ED074 80043B64 AFA20018 */  sw         $v0, 0x18($sp)
/* ED078 80043B68 A3B1001C */  sb         $s1, 0x1c($sp)
/* ED07C 80043B6C A3A0001D */  sb         $zero, 0x1d($sp)
/* ED080 80043B70 A3B0001E */  sb         $s0, 0x1e($sp)
/* ED084 80043B74 A3B3001F */  sb         $s3, 0x1f($sp)
/* ED088 80043B78 0C00DEF7 */  jal        func_80037BDC_E10EC
/* ED08C 80043B7C AFB20010 */   sw        $s2, 0x10($sp)
/* ED090 80043B80 27A40018 */  addiu      $a0, $sp, 0x18
/* ED094 80043B84 240520CB */  addiu      $a1, $zero, 0x20cb
/* ED098 80043B88 240620D5 */  addiu      $a2, $zero, 0x20d5
/* ED09C 80043B8C 24070028 */  addiu      $a3, $zero, 0x28
/* ED0A0 80043B90 3C028007 */  lui        $v0, %hi(D_80069028)
/* ED0A4 80043B94 24429028 */  addiu      $v0, $v0, %lo(D_80069028)
/* ED0A8 80043B98 AFA20018 */  sw         $v0, 0x18($sp)
/* ED0AC 80043B9C A3B1001C */  sb         $s1, 0x1c($sp)
/* ED0B0 80043BA0 A3A0001D */  sb         $zero, 0x1d($sp)
/* ED0B4 80043BA4 A3B0001E */  sb         $s0, 0x1e($sp)
/* ED0B8 80043BA8 A3B3001F */  sb         $s3, 0x1f($sp)
/* ED0BC 80043BAC 0C00DEF7 */  jal        func_80037BDC_E10EC
/* ED0C0 80043BB0 AFB20010 */   sw        $s2, 0x10($sp)
/* ED0C4 80043BB4 8FBF0030 */  lw         $ra, 0x30($sp)
/* ED0C8 80043BB8 8FB3002C */  lw         $s3, 0x2c($sp)
/* ED0CC 80043BBC 8FB20028 */  lw         $s2, 0x28($sp)
/* ED0D0 80043BC0 8FB10024 */  lw         $s1, 0x24($sp)
/* ED0D4 80043BC4 8FB00020 */  lw         $s0, 0x20($sp)
/* ED0D8 80043BC8 D7B60040 */  ldc1       $f22, 0x40($sp)
/* ED0DC 80043BCC D7B40038 */  ldc1       $f20, 0x38($sp)
/* ED0E0 80043BD0 03E00008 */  jr         $ra
/* ED0E4 80043BD4 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80043BD8_ED0E8
/* ED0E8 80043BD8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* ED0EC 80043BDC 24040011 */  addiu      $a0, $zero, 0x11
/* ED0F0 80043BE0 24050001 */  addiu      $a1, $zero, 1
/* ED0F4 80043BE4 AFBF0028 */  sw         $ra, 0x28($sp)
/* ED0F8 80043BE8 AFB30024 */  sw         $s3, 0x24($sp)
/* ED0FC 80043BEC AFB20020 */  sw         $s2, 0x20($sp)
/* ED100 80043BF0 AFB1001C */  sw         $s1, 0x1c($sp)
/* ED104 80043BF4 AFB00018 */  sw         $s0, 0x18($sp)
/* ED108 80043BF8 F7B80040 */  sdc1       $f24, 0x40($sp)
/* ED10C 80043BFC F7B60038 */  sdc1       $f22, 0x38($sp)
/* ED110 80043C00 F7B40030 */  sdc1       $f20, 0x30($sp)
/* ED114 80043C04 0C00D925 */  jal        func_80036494_DF9A4
/* ED118 80043C08 24060042 */   addiu     $a2, $zero, 0x42
/* ED11C 80043C0C 00408821 */  addu       $s1, $v0, $zero
/* ED120 80043C10 8E24000C */  lw         $a0, 0xc($s1)
/* ED124 80043C14 24050033 */  addiu      $a1, $zero, 0x33
/* ED128 80043C18 0C028F9A */  jal        func_800A3E68
/* ED12C 80043C1C 24060044 */   addiu     $a2, $zero, 0x44
/* ED130 80043C20 8E24000C */  lw         $a0, 0xc($s1)
/* ED134 80043C24 00002821 */  addu       $a1, $zero, $zero
/* ED138 80043C28 0C028D89 */  jal        func_800A3624
/* ED13C 80043C2C 00003021 */   addu      $a2, $zero, $zero
/* ED140 80043C30 24020080 */  addiu      $v0, $zero, 0x80
/* ED144 80043C34 AFA20010 */  sw         $v0, 0x10($sp)
/* ED148 80043C38 8E24000C */  lw         $a0, 0xc($s1)
/* ED14C 80043C3C 240500FF */  addiu      $a1, $zero, 0xff
/* ED150 80043C40 240600FF */  addiu      $a2, $zero, 0xff
/* ED154 80043C44 0C028E41 */  jal        func_800A3904
/* ED158 80043C48 240700FF */   addiu     $a3, $zero, 0xff
/* ED15C 80043C4C 8E23000C */  lw         $v1, 0xc($s1)
/* ED160 80043C50 3C013BA3 */  lui        $at, 0x3ba3
/* ED164 80043C54 3421D70A */  ori        $at, $at, 0xd70a
/* ED168 80043C58 4481C000 */  mtc1       $at, $f24
/* ED16C 80043C5C 9462001E */  lhu        $v0, 0x1e($v1)
/* ED170 80043C60 3C0141B1 */  lui        $at, 0x41b1
/* ED174 80043C64 3421D70A */  ori        $at, $at, 0xd70a
/* ED178 80043C68 4481B000 */  mtc1       $at, $f22
/* ED17C 80043C6C 24040009 */  addiu      $a0, $zero, 9
/* ED180 80043C70 34420002 */  ori        $v0, $v0, 2
/* ED184 80043C74 0C00DFA8 */  jal        func_80037EA0_E13B0
/* ED188 80043C78 A462001E */   sh        $v0, 0x1e($v1)
/* ED18C 80043C7C 00408021 */  addu       $s0, $v0, $zero
/* ED190 80043C80 3C013CA3 */  lui        $at, 0x3ca3
/* ED194 80043C84 3421D70A */  ori        $at, $at, 0xd70a
/* ED198 80043C88 44810000 */  mtc1       $at, $f0
/* ED19C 80043C8C 02002021 */  addu       $a0, $s0, $zero
/* ED1A0 80043C90 00002821 */  addu       $a1, $zero, $zero
/* ED1A4 80043C94 240200FF */  addiu      $v0, $zero, 0xff
/* ED1A8 80043C98 A6020074 */  sh         $v0, 0x74($s0)
/* ED1AC 80043C9C A6020076 */  sh         $v0, 0x76($s0)
/* ED1B0 80043CA0 A6020078 */  sh         $v0, 0x78($s0)
/* ED1B4 80043CA4 A602007A */  sh         $v0, 0x7a($s0)
/* ED1B8 80043CA8 24020012 */  addiu      $v0, $zero, 0x12
/* ED1BC 80043CAC AE000010 */  sw         $zero, 0x10($s0)
/* ED1C0 80043CB0 AE000014 */  sw         $zero, 0x14($s0)
/* ED1C4 80043CB4 AE000018 */  sw         $zero, 0x18($s0)
/* ED1C8 80043CB8 AE00001C */  sw         $zero, 0x1c($s0)
/* ED1CC 80043CBC AE000020 */  sw         $zero, 0x20($s0)
/* ED1D0 80043CC0 AE000024 */  sw         $zero, 0x24($s0)
/* ED1D4 80043CC4 A6020070 */  sh         $v0, 0x70($s0)
/* ED1D8 80043CC8 0C00DFE6 */  jal        func_80037F98_E14A8
/* ED1DC 80043CCC E6000028 */   swc1      $f0, 0x28($s0)
/* ED1E0 80043CD0 8E020004 */  lw         $v0, 4($s0)
/* ED1E4 80043CD4 A0400067 */  sb         $zero, 0x67($v0)
/* ED1E8 80043CD8 8E030004 */  lw         $v1, 4($s0)
/* ED1EC 80043CDC 24020002 */  addiu      $v0, $zero, 2
/* ED1F0 80043CE0 A6020072 */  sh         $v0, 0x72($s0)
/* ED1F4 80043CE4 90620066 */  lbu        $v0, 0x66($v1)
/* ED1F8 80043CE8 3C014338 */  lui        $at, 0x4338
/* ED1FC 80043CEC 34212E14 */  ori        $at, $at, 0x2e14
/* ED200 80043CF0 4481A000 */  mtc1       $at, $f20
/* ED204 80043CF4 00008821 */  addu       $s1, $zero, $zero
/* ED208 80043CF8 34420007 */  ori        $v0, $v0, 7
/* ED20C 80043CFC A0620066 */  sb         $v0, 0x66($v1)
/* ED210 80043D00 8E040004 */  lw         $a0, 4($s0)
/* ED214 80043D04 3C058007 */  lui        $a1, %hi(D_8006A084)
/* ED218 80043D08 24A5A084 */  addiu      $a1, $a1, %lo(D_8006A084)
/* ED21C 80043D0C 0C0284DC */  jal        func_800A1370
/* ED220 80043D10 241200FF */   addiu     $s2, $zero, 0xff
/* ED224 80043D14 8E040004 */  lw         $a0, 4($s0)
/* ED228 80043D18 3045FFFF */  andi       $a1, $v0, 0xffff
/* ED22C 80043D1C 0C02869D */  jal        func_800A1A74
/* ED230 80043D20 00003021 */   addu      $a2, $zero, $zero
/* ED234 80043D24 8E040004 */  lw         $a0, 4($s0)
/* ED238 80043D28 3C058007 */  lui        $a1, %hi(D_8006A08C)
/* ED23C 80043D2C 24A5A08C */  addiu      $a1, $a1, %lo(D_8006A08C)
/* ED240 80043D30 0C0284DC */  jal        func_800A1370
/* ED244 80043D34 2413000E */   addiu     $s3, $zero, 0xe
/* ED248 80043D38 8E040004 */  lw         $a0, 4($s0)
/* ED24C 80043D3C 3045FFFF */  andi       $a1, $v0, 0xffff
/* ED250 80043D40 0C02869D */  jal        func_800A1A74
/* ED254 80043D44 00003021 */   addu      $a2, $zero, $zero
/* ED258 80043D48 322400FF */  andi       $a0, $s1, 0xff
.L80043D4C:
/* ED25C 80043D4C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* ED260 80043D50 24840012 */   addiu     $a0, $a0, 0x12
/* ED264 80043D54 00408021 */  addu       $s0, $v0, $zero
/* ED268 80043D58 02002021 */  addu       $a0, $s0, $zero
/* ED26C 80043D5C 24050023 */  addiu      $a1, $zero, 0x23
/* ED270 80043D60 AE000010 */  sw         $zero, 0x10($s0)
/* ED274 80043D64 AE000014 */  sw         $zero, 0x14($s0)
/* ED278 80043D68 AE000018 */  sw         $zero, 0x18($s0)
/* ED27C 80043D6C E6180028 */  swc1       $f24, 0x28($s0)
/* ED280 80043D70 E616001C */  swc1       $f22, 0x1c($s0)
/* ED284 80043D74 E6140020 */  swc1       $f20, 0x20($s0)
/* ED288 80043D78 AE000024 */  sw         $zero, 0x24($s0)
/* ED28C 80043D7C A6120074 */  sh         $s2, 0x74($s0)
/* ED290 80043D80 A6120076 */  sh         $s2, 0x76($s0)
/* ED294 80043D84 A6120078 */  sh         $s2, 0x78($s0)
/* ED298 80043D88 0C00DFE6 */  jal        func_80037F98_E14A8
/* ED29C 80043D8C A612007A */   sh        $s2, 0x7a($s0)
/* ED2A0 80043D90 8E020004 */  lw         $v0, 4($s0)
/* ED2A4 80043D94 A0530067 */  sb         $s3, 0x67($v0)
/* ED2A8 80043D98 8E030004 */  lw         $v1, 4($s0)
/* ED2AC 80043D9C 90620066 */  lbu        $v0, 0x66($v1)
/* ED2B0 80043DA0 26310001 */  addiu      $s1, $s1, 1
/* ED2B4 80043DA4 34420023 */  ori        $v0, $v0, 0x23
/* ED2B8 80043DA8 A0620066 */  sb         $v0, 0x66($v1)
/* ED2BC 80043DAC 322200FF */  andi       $v0, $s1, 0xff
/* ED2C0 80043DB0 2C42000A */  sltiu      $v0, $v0, 0xa
/* ED2C4 80043DB4 1440FFE5 */  bnez       $v0, .L80043D4C
/* ED2C8 80043DB8 322400FF */   andi      $a0, $s1, 0xff
/* ED2CC 80043DBC 240400F8 */  addiu      $a0, $zero, 0xf8
/* ED2D0 80043DC0 24050002 */  addiu      $a1, $zero, 2
/* ED2D4 80043DC4 2406000A */  addiu      $a2, $zero, 0xa
/* ED2D8 80043DC8 0C00D97B */  jal        func_800365EC_DFAFC
/* ED2DC 80043DCC 2407002B */   addiu     $a3, $zero, 0x2b
/* ED2E0 80043DD0 0C00E2C2 */  jal        func_80038B08_E2018
/* ED2E4 80043DD4 24100001 */   addiu     $s0, $zero, 1
/* ED2E8 80043DD8 240420D4 */  addiu      $a0, $zero, 0x20d4
/* ED2EC 80043DDC 0C00DD19 */  jal        func_80037464_E0974
/* ED2F0 80043DE0 240530CD */   addiu     $a1, $zero, 0x30cd
/* ED2F4 80043DE4 00408821 */  addu       $s1, $v0, $zero
/* ED2F8 80043DE8 8E24000C */  lw         $a0, 0xc($s1)
/* ED2FC 80043DEC 24050098 */  addiu      $a1, $zero, 0x98
/* ED300 80043DF0 0C028D89 */  jal        func_800A3624
/* ED304 80043DF4 240602B4 */   addiu     $a2, $zero, 0x2b4
/* ED308 80043DF8 AFB00010 */  sw         $s0, 0x10($sp)
/* ED30C 80043DFC 8E24000C */  lw         $a0, 0xc($s1)
/* ED310 80043E00 240500FF */  addiu      $a1, $zero, 0xff
/* ED314 80043E04 240600FF */  addiu      $a2, $zero, 0xff
/* ED318 80043E08 0C028E41 */  jal        func_800A3904
/* ED31C 80043E0C 240700FF */   addiu     $a3, $zero, 0xff
/* ED320 80043E10 8E22000C */  lw         $v0, 0xc($s1)
/* ED324 80043E14 240420D4 */  addiu      $a0, $zero, 0x20d4
/* ED328 80043E18 240530CE */  addiu      $a1, $zero, 0x30ce
/* ED32C 80043E1C 0C00DD19 */  jal        func_80037464_E0974
/* ED330 80043E20 A440001C */   sh        $zero, 0x1c($v0)
/* ED334 80043E24 00408821 */  addu       $s1, $v0, $zero
/* ED338 80043E28 8E24000C */  lw         $a0, 0xc($s1)
/* ED33C 80043E2C 240500A8 */  addiu      $a1, $zero, 0xa8
/* ED340 80043E30 0C028D89 */  jal        func_800A3624
/* ED344 80043E34 240602B4 */   addiu     $a2, $zero, 0x2b4
/* ED348 80043E38 AFB00010 */  sw         $s0, 0x10($sp)
/* ED34C 80043E3C 8E24000C */  lw         $a0, 0xc($s1)
/* ED350 80043E40 240500FF */  addiu      $a1, $zero, 0xff
/* ED354 80043E44 240600FF */  addiu      $a2, $zero, 0xff
/* ED358 80043E48 0C028E41 */  jal        func_800A3904
/* ED35C 80043E4C 240700FF */   addiu     $a3, $zero, 0xff
/* ED360 80043E50 8E22000C */  lw         $v0, 0xc($s1)
/* ED364 80043E54 240420D4 */  addiu      $a0, $zero, 0x20d4
/* ED368 80043E58 240530CF */  addiu      $a1, $zero, 0x30cf
/* ED36C 80043E5C 0C00DD19 */  jal        func_80037464_E0974
/* ED370 80043E60 A440001C */   sh        $zero, 0x1c($v0)
/* ED374 80043E64 00408821 */  addu       $s1, $v0, $zero
/* ED378 80043E68 8E24000C */  lw         $a0, 0xc($s1)
/* ED37C 80043E6C 24050098 */  addiu      $a1, $zero, 0x98
/* ED380 80043E70 0C028D89 */  jal        func_800A3624
/* ED384 80043E74 240602C4 */   addiu     $a2, $zero, 0x2c4
/* ED388 80043E78 AFB00010 */  sw         $s0, 0x10($sp)
/* ED38C 80043E7C 8E24000C */  lw         $a0, 0xc($s1)
/* ED390 80043E80 240500FF */  addiu      $a1, $zero, 0xff
/* ED394 80043E84 240600FF */  addiu      $a2, $zero, 0xff
/* ED398 80043E88 0C028E41 */  jal        func_800A3904
/* ED39C 80043E8C 240700FF */   addiu     $a3, $zero, 0xff
/* ED3A0 80043E90 8E22000C */  lw         $v0, 0xc($s1)
/* ED3A4 80043E94 240420D4 */  addiu      $a0, $zero, 0x20d4
/* ED3A8 80043E98 240530D0 */  addiu      $a1, $zero, 0x30d0
/* ED3AC 80043E9C 0C00DD19 */  jal        func_80037464_E0974
/* ED3B0 80043EA0 A440001C */   sh        $zero, 0x1c($v0)
/* ED3B4 80043EA4 00408821 */  addu       $s1, $v0, $zero
/* ED3B8 80043EA8 8E24000C */  lw         $a0, 0xc($s1)
/* ED3BC 80043EAC 240500A8 */  addiu      $a1, $zero, 0xa8
/* ED3C0 80043EB0 0C028D89 */  jal        func_800A3624
/* ED3C4 80043EB4 240602C4 */   addiu     $a2, $zero, 0x2c4
/* ED3C8 80043EB8 AFB00010 */  sw         $s0, 0x10($sp)
/* ED3CC 80043EBC 8E24000C */  lw         $a0, 0xc($s1)
/* ED3D0 80043EC0 240500FF */  addiu      $a1, $zero, 0xff
/* ED3D4 80043EC4 240600FF */  addiu      $a2, $zero, 0xff
/* ED3D8 80043EC8 0C028E41 */  jal        func_800A3904
/* ED3DC 80043ECC 240700FF */   addiu     $a3, $zero, 0xff
/* ED3E0 80043ED0 8E22000C */  lw         $v0, 0xc($s1)
/* ED3E4 80043ED4 3C01424B */  lui        $at, 0x424b
/* ED3E8 80043ED8 3421F5C3 */  ori        $at, $at, 0xf5c3
/* ED3EC 80043EDC 44810000 */  mtc1       $at, $f0
/* ED3F0 80043EE0 3C01417A */  lui        $at, 0x417a
/* ED3F4 80043EE4 3421E148 */  ori        $at, $at, 0xe148
/* ED3F8 80043EE8 44811000 */  mtc1       $at, $f2
/* ED3FC 80043EEC 3C013F80 */  lui        $at, 0x3f80
/* ED400 80043EF0 44812000 */  mtc1       $at, $f4
/* ED404 80043EF4 3C01C1B1 */  lui        $at, 0xc1b1
/* ED408 80043EF8 3421D70A */  ori        $at, $at, 0xd70a
/* ED40C 80043EFC 44813000 */  mtc1       $at, $f6
/* ED410 80043F00 3C014194 */  lui        $at, 0x4194
/* ED414 80043F04 34217AE1 */  ori        $at, $at, 0x7ae1
/* ED418 80043F08 44814000 */  mtc1       $at, $f8
/* ED41C 80043F0C 3C01C2A4 */  lui        $at, 0xc2a4
/* ED420 80043F10 3421D1EC */  ori        $at, $at, 0xd1ec
/* ED424 80043F14 44815000 */  mtc1       $at, $f10
/* ED428 80043F18 A440001C */  sh         $zero, 0x1c($v0)
/* ED42C 80043F1C 3C018015 */  lui        $at, %hi(D_8014A064)
/* ED430 80043F20 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* ED434 80043F24 3C018015 */  lui        $at, %hi(D_8014A068)
/* ED438 80043F28 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* ED43C 80043F2C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* ED440 80043F30 E422A06C */  swc1       $f2, %lo(D_8014A06C)($at)
/* ED444 80043F34 3C018015 */  lui        $at, %hi(D_8014A070)
/* ED448 80043F38 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* ED44C 80043F3C 3C018015 */  lui        $at, %hi(D_8014A074)
/* ED450 80043F40 E424A074 */  swc1       $f4, %lo(D_8014A074)($at)
/* ED454 80043F44 3C018015 */  lui        $at, %hi(D_8014A078)
/* ED458 80043F48 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* ED45C 80043F4C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* ED460 80043F50 E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* ED464 80043F54 3C018015 */  lui        $at, %hi(D_8014A080)
/* ED468 80043F58 E428A080 */  swc1       $f8, %lo(D_8014A080)($at)
/* ED46C 80043F5C 3C018015 */  lui        $at, %hi(D_8014A084)
/* ED470 80043F60 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* ED474 80043F64 3C018015 */  lui        $at, %hi(D_8014A088)
/* ED478 80043F68 0C00E339 */  jal        func_80038CE4_E21F4
/* ED47C 80043F6C E42AA088 */   swc1      $f10, %lo(D_8014A088)($at)
/* ED480 80043F70 3C01C1A0 */  lui        $at, 0xc1a0
/* ED484 80043F74 44810000 */  mtc1       $at, $f0
/* ED488 80043F78 3C018015 */  lui        $at, %hi(D_8014A054)
/* ED48C 80043F7C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* ED490 80043F80 3C018015 */  lui        $at, %hi(D_8014A050)
/* ED494 80043F84 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* ED498 80043F88 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* ED49C 80043F8C AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* ED4A0 80043F90 3C018017 */  lui        $at, %hi(D_8016E568)
/* ED4A4 80043F94 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* ED4A8 80043F98 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* ED4AC 80043F9C AC20D0D0 */  sw         $zero, %lo(D_8016D0D0)($at)
/* ED4B0 80043FA0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* ED4B4 80043FA4 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* ED4B8 80043FA8 8FBF0028 */  lw         $ra, 0x28($sp)
/* ED4BC 80043FAC 8FB30024 */  lw         $s3, 0x24($sp)
/* ED4C0 80043FB0 8FB20020 */  lw         $s2, 0x20($sp)
/* ED4C4 80043FB4 8FB1001C */  lw         $s1, 0x1c($sp)
/* ED4C8 80043FB8 8FB00018 */  lw         $s0, 0x18($sp)
/* ED4CC 80043FBC D7B80040 */  ldc1       $f24, 0x40($sp)
/* ED4D0 80043FC0 D7B60038 */  ldc1       $f22, 0x38($sp)
/* ED4D4 80043FC4 D7B40030 */  ldc1       $f20, 0x30($sp)
/* ED4D8 80043FC8 03E00008 */  jr         $ra
/* ED4DC 80043FCC 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80043FD0_ED4E0
/* ED4E0 80043FD0 27BDFF98 */  addiu      $sp, $sp, -0x68
/* ED4E4 80043FD4 AFBF0030 */  sw         $ra, 0x30($sp)
/* ED4E8 80043FD8 AFB3002C */  sw         $s3, 0x2c($sp)
/* ED4EC 80043FDC AFB20028 */  sw         $s2, 0x28($sp)
/* ED4F0 80043FE0 AFB10024 */  sw         $s1, 0x24($sp)
/* ED4F4 80043FE4 AFB00020 */  sw         $s0, 0x20($sp)
/* ED4F8 80043FE8 F7BE0060 */  sdc1       $f30, 0x60($sp)
/* ED4FC 80043FEC F7BC0058 */  sdc1       $f28, 0x58($sp)
/* ED500 80043FF0 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* ED504 80043FF4 F7B80048 */  sdc1       $f24, 0x48($sp)
/* ED508 80043FF8 F7B60040 */  sdc1       $f22, 0x40($sp)
/* ED50C 80043FFC F7B40038 */  sdc1       $f20, 0x38($sp)
/* ED510 80044000 0C00DFA8 */  jal        func_80037EA0_E13B0
/* ED514 80044004 24040009 */   addiu     $a0, $zero, 9
/* ED518 80044008 00408021 */  addu       $s0, $v0, $zero
/* ED51C 8004400C 3C01C28C */  lui        $at, 0xc28c
/* ED520 80044010 44810000 */  mtc1       $at, $f0
/* ED524 80044014 3C014270 */  lui        $at, 0x4270
/* ED528 80044018 44811000 */  mtc1       $at, $f2
/* ED52C 8004401C 3C013CA3 */  lui        $at, 0x3ca3
/* ED530 80044020 3421D70A */  ori        $at, $at, 0xd70a
/* ED534 80044024 44812000 */  mtc1       $at, $f4
/* ED538 80044028 3C01425C */  lui        $at, 0x425c
/* ED53C 8004402C 44813000 */  mtc1       $at, $f6
/* ED540 80044030 02002021 */  addu       $a0, $s0, $zero
/* ED544 80044034 00002821 */  addu       $a1, $zero, $zero
/* ED548 80044038 240200FF */  addiu      $v0, $zero, 0xff
/* ED54C 8004403C A6020074 */  sh         $v0, 0x74($s0)
/* ED550 80044040 A6020076 */  sh         $v0, 0x76($s0)
/* ED554 80044044 A6020078 */  sh         $v0, 0x78($s0)
/* ED558 80044048 A602007A */  sh         $v0, 0x7a($s0)
/* ED55C 8004404C 24020014 */  addiu      $v0, $zero, 0x14
/* ED560 80044050 AE000010 */  sw         $zero, 0x10($s0)
/* ED564 80044054 AE00001C */  sw         $zero, 0x1c($s0)
/* ED568 80044058 AE000024 */  sw         $zero, 0x24($s0)
/* ED56C 8004405C A6020070 */  sh         $v0, 0x70($s0)
/* ED570 80044060 E6000014 */  swc1       $f0, 0x14($s0)
/* ED574 80044064 E6020018 */  swc1       $f2, 0x18($s0)
/* ED578 80044068 E6040028 */  swc1       $f4, 0x28($s0)
/* ED57C 8004406C 0C00DFE6 */  jal        func_80037F98_E14A8
/* ED580 80044070 E6060020 */   swc1      $f6, 0x20($s0)
/* ED584 80044074 8E020004 */  lw         $v0, 4($s0)
/* ED588 80044078 A0400067 */  sb         $zero, 0x67($v0)
/* ED58C 8004407C 8E030004 */  lw         $v1, 4($s0)
/* ED590 80044080 24020001 */  addiu      $v0, $zero, 1
/* ED594 80044084 A6020072 */  sh         $v0, 0x72($s0)
/* ED598 80044088 90620066 */  lbu        $v0, 0x66($v1)
/* ED59C 8004408C 34420007 */  ori        $v0, $v0, 7
/* ED5A0 80044090 A0620066 */  sb         $v0, 0x66($v1)
/* ED5A4 80044094 8E040004 */  lw         $a0, 4($s0)
/* ED5A8 80044098 3C058007 */  lui        $a1, %hi(D_8006A084)
/* ED5AC 8004409C 24A5A084 */  addiu      $a1, $a1, %lo(D_8006A084)
/* ED5B0 800440A0 0C0284DC */  jal        func_800A1370
/* ED5B4 800440A4 00008821 */   addu      $s1, $zero, $zero
/* ED5B8 800440A8 8E040004 */  lw         $a0, 4($s0)
/* ED5BC 800440AC 3045FFFF */  andi       $a1, $v0, 0xffff
/* ED5C0 800440B0 0C02869D */  jal        func_800A1A74
/* ED5C4 800440B4 00003021 */   addu      $a2, $zero, $zero
/* ED5C8 800440B8 8E040004 */  lw         $a0, 4($s0)
/* ED5CC 800440BC 3C058007 */  lui        $a1, %hi(D_8006A08C)
/* ED5D0 800440C0 24A5A08C */  addiu      $a1, $a1, %lo(D_8006A08C)
/* ED5D4 800440C4 0C0284DC */  jal        func_800A1370
/* ED5D8 800440C8 24130007 */   addiu     $s3, $zero, 7
/* ED5DC 800440CC 8E040004 */  lw         $a0, 4($s0)
/* ED5E0 800440D0 3045FFFF */  andi       $a1, $v0, 0xffff
/* ED5E4 800440D4 0C02869D */  jal        func_800A1A74
/* ED5E8 800440D8 00003021 */   addu      $a2, $zero, $zero
/* ED5EC 800440DC 0C00DFD6 */  jal        func_80037F58_E1468
/* ED5F0 800440E0 2404000A */   addiu     $a0, $zero, 0xa
/* ED5F4 800440E4 3C01C110 */  lui        $at, 0xc110
/* ED5F8 800440E8 44811000 */  mtc1       $at, $f2
/* ED5FC 800440EC 3C0141E0 */  lui        $at, 0x41e0
/* ED600 800440F0 44812000 */  mtc1       $at, $f4
/* ED604 800440F4 3C014170 */  lui        $at, 0x4170
/* ED608 800440F8 4481A000 */  mtc1       $at, $f20
/* ED60C 800440FC 3C01C2A0 */  lui        $at, 0xc2a0
/* ED610 80044100 44810000 */  mtc1       $at, $f0
/* ED614 80044104 00408021 */  addu       $s0, $v0, $zero
/* ED618 80044108 2404000B */  addiu      $a0, $zero, 0xb
/* ED61C 8004410C AE000020 */  sw         $zero, 0x20($s0)
/* ED620 80044110 AE000024 */  sw         $zero, 0x24($s0)
/* ED624 80044114 E6140014 */  swc1       $f20, 0x14($s0)
/* ED628 80044118 E602001C */  swc1       $f2, 0x1c($s0)
/* ED62C 8004411C E6040010 */  swc1       $f4, 0x10($s0)
/* ED630 80044120 0C00DFD6 */  jal        func_80037F58_E1468
/* ED634 80044124 E6000018 */   swc1      $f0, 0x18($s0)
/* ED638 80044128 3C014050 */  lui        $at, 0x4050
/* ED63C 8004412C 4481D000 */  mtc1       $at, $f26
/* ED640 80044130 3C01C1F0 */  lui        $at, 0xc1f0
/* ED644 80044134 4481C000 */  mtc1       $at, $f24
/* ED648 80044138 3C014150 */  lui        $at, 0x4150
/* ED64C 8004413C 44810000 */  mtc1       $at, $f0
/* ED650 80044140 3C01C234 */  lui        $at, 0xc234
/* ED654 80044144 4481B000 */  mtc1       $at, $f22
/* ED658 80044148 00408021 */  addu       $s0, $v0, $zero
/* ED65C 8004414C 2404000C */  addiu      $a0, $zero, 0xc
/* ED660 80044150 E6140020 */  swc1       $f20, 0x20($s0)
/* ED664 80044154 AE000024 */  sw         $zero, 0x24($s0)
/* ED668 80044158 E61A001C */  swc1       $f26, 0x1c($s0)
/* ED66C 8004415C E6180010 */  swc1       $f24, 0x10($s0)
/* ED670 80044160 E6160018 */  swc1       $f22, 0x18($s0)
/* ED674 80044164 0C00DFD6 */  jal        func_80037F58_E1468
/* ED678 80044168 E6000014 */   swc1      $f0, 0x14($s0)
/* ED67C 8004416C 3C0140F8 */  lui        $at, 0x40f8
/* ED680 80044170 342151EC */  ori        $at, $at, 0x51ec
/* ED684 80044174 4481A000 */  mtc1       $at, $f20
/* ED688 80044178 3C0141F0 */  lui        $at, 0x41f0
/* ED68C 8004417C 4481E000 */  mtc1       $at, $f28
/* ED690 80044180 3C01C296 */  lui        $at, 0xc296
/* ED694 80044184 44810000 */  mtc1       $at, $f0
/* ED698 80044188 3C014040 */  lui        $at, 0x4040
/* ED69C 8004418C 44811000 */  mtc1       $at, $f2
/* ED6A0 80044190 00408021 */  addu       $s0, $v0, $zero
/* ED6A4 80044194 2404000D */  addiu      $a0, $zero, 0xd
/* ED6A8 80044198 AE000024 */  sw         $zero, 0x24($s0)
/* ED6AC 8004419C AE000018 */  sw         $zero, 0x18($s0)
/* ED6B0 800441A0 E614001C */  swc1       $f20, 0x1c($s0)
/* ED6B4 800441A4 E61C0020 */  swc1       $f28, 0x20($s0)
/* ED6B8 800441A8 E6000010 */  swc1       $f0, 0x10($s0)
/* ED6BC 800441AC 0C00DFD6 */  jal        func_80037F58_E1468
/* ED6C0 800441B0 E6020014 */   swc1      $f2, 0x14($s0)
/* ED6C4 800441B4 3C0140E0 */  lui        $at, 0x40e0
/* ED6C8 800441B8 4481F000 */  mtc1       $at, $f30
/* ED6CC 800441BC 3C0142E0 */  lui        $at, 0x42e0
/* ED6D0 800441C0 44810000 */  mtc1       $at, $f0
/* ED6D4 800441C4 3C01C270 */  lui        $at, 0xc270
/* ED6D8 800441C8 44811000 */  mtc1       $at, $f2
/* ED6DC 800441CC 3C01428C */  lui        $at, 0x428c
/* ED6E0 800441D0 44812000 */  mtc1       $at, $f4
/* ED6E4 800441D4 00408021 */  addu       $s0, $v0, $zero
/* ED6E8 800441D8 2404000E */  addiu      $a0, $zero, 0xe
/* ED6EC 800441DC AE000024 */  sw         $zero, 0x24($s0)
/* ED6F0 800441E0 AE000014 */  sw         $zero, 0x14($s0)
/* ED6F4 800441E4 E61E001C */  swc1       $f30, 0x1c($s0)
/* ED6F8 800441E8 E6000020 */  swc1       $f0, 0x20($s0)
/* ED6FC 800441EC E6020010 */  swc1       $f2, 0x10($s0)
/* ED700 800441F0 0C00DFD6 */  jal        func_80037F58_E1468
/* ED704 800441F4 E6040018 */   swc1      $f4, 0x18($s0)
/* ED708 800441F8 3C01C170 */  lui        $at, 0xc170
/* ED70C 800441FC 44810000 */  mtc1       $at, $f0
/* ED710 80044200 3C0142B4 */  lui        $at, 0x42b4
/* ED714 80044204 44811000 */  mtc1       $at, $f2
/* ED718 80044208 3C01C040 */  lui        $at, 0xc040
/* ED71C 8004420C 44812000 */  mtc1       $at, $f4
/* ED720 80044210 00408021 */  addu       $s0, $v0, $zero
/* ED724 80044214 2404000F */  addiu      $a0, $zero, 0xf
/* ED728 80044218 E61A001C */  swc1       $f26, 0x1c($s0)
/* ED72C 8004421C AE000024 */  sw         $zero, 0x24($s0)
/* ED730 80044220 E6160018 */  swc1       $f22, 0x18($s0)
/* ED734 80044224 E6000020 */  swc1       $f0, 0x20($s0)
/* ED738 80044228 E6020010 */  swc1       $f2, 0x10($s0)
/* ED73C 8004422C 0C00DFD6 */  jal        func_80037F58_E1468
/* ED740 80044230 E6040014 */   swc1      $f4, 0x14($s0)
/* ED744 80044234 3C0142F0 */  lui        $at, 0x42f0
/* ED748 80044238 44810000 */  mtc1       $at, $f0
/* ED74C 8004423C 3C01C120 */  lui        $at, 0xc120
/* ED750 80044240 44811000 */  mtc1       $at, $f2
/* ED754 80044244 00408021 */  addu       $s0, $v0, $zero
/* ED758 80044248 24040010 */  addiu      $a0, $zero, 0x10
/* ED75C 8004424C E614001C */  swc1       $f20, 0x1c($s0)
/* ED760 80044250 E6180020 */  swc1       $f24, 0x20($s0)
/* ED764 80044254 AE000024 */  sw         $zero, 0x24($s0)
/* ED768 80044258 E61C0014 */  swc1       $f28, 0x14($s0)
/* ED76C 8004425C E6000010 */  swc1       $f0, 0x10($s0)
/* ED770 80044260 0C00DFD6 */  jal        func_80037F58_E1468
/* ED774 80044264 E6020018 */   swc1      $f2, 0x18($s0)
/* ED778 80044268 3C014302 */  lui        $at, 0x4302
/* ED77C 8004426C 4481B000 */  mtc1       $at, $f22
/* ED780 80044270 3C0141B0 */  lui        $at, 0x41b0
/* ED784 80044274 44810000 */  mtc1       $at, $f0
/* ED788 80044278 3C014120 */  lui        $at, 0x4120
/* ED78C 8004427C 44811000 */  mtc1       $at, $f2
/* ED790 80044280 00408021 */  addu       $s0, $v0, $zero
/* ED794 80044284 24040011 */  addiu      $a0, $zero, 0x11
/* ED798 80044288 E614001C */  swc1       $f20, 0x1c($s0)
/* ED79C 8004428C E6180020 */  swc1       $f24, 0x20($s0)
/* ED7A0 80044290 AE000024 */  sw         $zero, 0x24($s0)
/* ED7A4 80044294 E6160010 */  swc1       $f22, 0x10($s0)
/* ED7A8 80044298 E6000014 */  swc1       $f0, 0x14($s0)
/* ED7AC 8004429C 0C00DFD6 */  jal        func_80037F58_E1468
/* ED7B0 800442A0 E6020018 */   swc1      $f2, 0x18($s0)
/* ED7B4 800442A4 3C01C2C8 */  lui        $at, 0xc2c8
/* ED7B8 800442A8 44810000 */  mtc1       $at, $f0
/* ED7BC 800442AC 3C0141C8 */  lui        $at, 0x41c8
/* ED7C0 800442B0 44811000 */  mtc1       $at, $f2
/* ED7C4 800442B4 3C0142C8 */  lui        $at, 0x42c8
/* ED7C8 800442B8 44812000 */  mtc1       $at, $f4
/* ED7CC 800442BC 3C013F80 */  lui        $at, 0x3f80
/* ED7D0 800442C0 4481A000 */  mtc1       $at, $f20
/* ED7D4 800442C4 3C0142AF */  lui        $at, 0x42af
/* ED7D8 800442C8 44813000 */  mtc1       $at, $f6
/* ED7DC 800442CC 3C01C37A */  lui        $at, 0xc37a
/* ED7E0 800442D0 44814000 */  mtc1       $at, $f8
/* ED7E4 800442D4 00408021 */  addu       $s0, $v0, $zero
/* ED7E8 800442D8 E61E001C */  swc1       $f30, 0x1c($s0)
/* ED7EC 800442DC AE000024 */  sw         $zero, 0x24($s0)
/* ED7F0 800442E0 E6160010 */  swc1       $f22, 0x10($s0)
/* ED7F4 800442E4 E6000020 */  swc1       $f0, 0x20($s0)
/* ED7F8 800442E8 E6020014 */  swc1       $f2, 0x14($s0)
/* ED7FC 800442EC E6040018 */  swc1       $f4, 0x18($s0)
/* ED800 800442F0 3C018015 */  lui        $at, %hi(D_8014A064)
/* ED804 800442F4 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* ED808 800442F8 3C018015 */  lui        $at, %hi(D_8014A068)
/* ED80C 800442FC AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* ED810 80044300 3C018015 */  lui        $at, %hi(D_8014A06C)
/* ED814 80044304 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* ED818 80044308 3C018015 */  lui        $at, %hi(D_8014A070)
/* ED81C 8004430C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* ED820 80044310 3C018015 */  lui        $at, %hi(D_8014A074)
/* ED824 80044314 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* ED828 80044318 3C018015 */  lui        $at, %hi(D_8014A078)
/* ED82C 8004431C AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* ED830 80044320 3C018015 */  lui        $at, %hi(D_8014A07C)
/* ED834 80044324 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* ED838 80044328 3C018015 */  lui        $at, %hi(D_8014A080)
/* ED83C 8004432C E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* ED840 80044330 3C018015 */  lui        $at, %hi(D_8014A084)
/* ED844 80044334 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* ED848 80044338 3C018015 */  lui        $at, %hi(D_8014A088)
/* ED84C 8004433C 0C00E339 */  jal        func_80038CE4_E21F4
/* ED850 80044340 E428A088 */   swc1      $f8, %lo(D_8014A088)($at)
/* ED854 80044344 3C048032 */  lui        $a0, 0x8032
/* ED858 80044348 34846230 */  ori        $a0, $a0, 0x6230
/* ED85C 8004434C 2405019A */  addiu      $a1, $zero, 0x19a
/* ED860 80044350 3C01C1A0 */  lui        $at, 0xc1a0
/* ED864 80044354 44810000 */  mtc1       $at, $f0
/* ED868 80044358 24060007 */  addiu      $a2, $zero, 7
/* ED86C 8004435C 3C018015 */  lui        $at, %hi(D_8014A054)
/* ED870 80044360 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* ED874 80044364 3C018015 */  lui        $at, %hi(D_8014A050)
/* ED878 80044368 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* ED87C 8004436C 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* ED880 80044370 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* ED884 80044374 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* ED888 80044378 E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* ED88C 8004437C 3C018017 */  lui        $at, %hi(D_8016E568)
/* ED890 80044380 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* ED894 80044384 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* ED898 80044388 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* ED89C 8004438C 0C00D9E0 */  jal        func_80036780_DFC90
/* ED8A0 80044390 24070022 */   addiu     $a3, $zero, 0x22
/* ED8A4 80044394 00408021 */  addu       $s0, $v0, $zero
/* ED8A8 80044398 8E04000C */  lw         $a0, 0xc($s0)
/* ED8AC 8004439C 3C064001 */  lui        $a2, 0x4001
/* ED8B0 800443A0 34C647AE */  ori        $a2, $a2, 0x47ae
/* ED8B4 800443A4 3C074000 */  lui        $a3, 0x4000
/* ED8B8 800443A8 0C02915B */  jal        func_800A456C
/* ED8BC 800443AC 00002821 */   addu      $a1, $zero, $zero
/* ED8C0 800443B0 8E04000C */  lw         $a0, 0xc($s0)
/* ED8C4 800443B4 24050040 */  addiu      $a1, $zero, 0x40
/* ED8C8 800443B8 0C028D89 */  jal        func_800A3624
/* ED8CC 800443BC 24060040 */   addiu     $a2, $zero, 0x40
/* ED8D0 800443C0 8E03000C */  lw         $v1, 0xc($s0)
/* ED8D4 800443C4 240401A1 */  addiu      $a0, $zero, 0x1a1
/* ED8D8 800443C8 9462001E */  lhu        $v0, 0x1e($v1)
/* ED8DC 800443CC 24050002 */  addiu      $a1, $zero, 2
/* ED8E0 800443D0 24060023 */  addiu      $a2, $zero, 0x23
/* ED8E4 800443D4 34420104 */  ori        $v0, $v0, 0x104
/* ED8E8 800443D8 0C00D925 */  jal        func_80036494_DF9A4
/* ED8EC 800443DC A462001E */   sh        $v0, 0x1e($v1)
/* ED8F0 800443E0 00408021 */  addu       $s0, $v0, $zero
/* ED8F4 800443E4 8E04000C */  lw         $a0, 0xc($s0)
/* ED8F8 800443E8 8C82000C */  lw         $v0, 0xc($a0)
/* ED8FC 800443EC 84460002 */  lh         $a2, 2($v0)
/* ED900 800443F0 3C128007 */  lui        $s2, %hi(D_8006C040)
/* ED904 800443F4 2652C040 */  addiu      $s2, $s2, %lo(D_8006C040)
/* ED908 800443F8 0C02912A */  jal        func_800A44A8
/* ED90C 800443FC 00002821 */   addu      $a1, $zero, $zero
/* ED910 80044400 8E04000C */  lw         $a0, 0xc($s0)
/* ED914 80044404 24050040 */  addiu      $a1, $zero, 0x40
/* ED918 80044408 0C028D89 */  jal        func_800A3624
/* ED91C 8004440C 24060380 */   addiu     $a2, $zero, 0x380
/* ED920 80044410 322600FF */  andi       $a2, $s1, 0xff
.L80044414:
/* ED924 80044414 24C40171 */  addiu      $a0, $a2, 0x171
/* ED928 80044418 24050002 */  addiu      $a1, $zero, 2
/* ED92C 8004441C 0C00D925 */  jal        func_80036494_DF9A4
/* ED930 80044420 24C6005B */   addiu     $a2, $a2, 0x5b
/* ED934 80044424 00408021 */  addu       $s0, $v0, $zero
/* ED938 80044428 8E04000C */  lw         $a0, 0xc($s0)
/* ED93C 8004442C 8C82000C */  lw         $v0, 0xc($a0)
/* ED940 80044430 94450000 */  lhu        $a1, ($v0)
/* ED944 80044434 94460002 */  lhu        $a2, 2($v0)
/* ED948 80044438 00052842 */  srl        $a1, $a1, 1
/* ED94C 8004443C 0C02912A */  jal        func_800A44A8
/* ED950 80044440 00063042 */   srl       $a2, $a2, 1
/* ED954 80044444 8E04000C */  lw         $a0, 0xc($s0)
/* ED958 80044448 24050080 */  addiu      $a1, $zero, 0x80
/* ED95C 8004444C 0C028D89 */  jal        func_800A3624
/* ED960 80044450 24060158 */   addiu     $a2, $zero, 0x158
/* ED964 80044454 8E03000C */  lw         $v1, 0xc($s0)
/* ED968 80044458 240500FF */  addiu      $a1, $zero, 0xff
/* ED96C 8004445C 24020038 */  addiu      $v0, $zero, 0x38
/* ED970 80044460 A462001C */  sh         $v0, 0x1c($v1)
/* ED974 80044464 24020098 */  addiu      $v0, $zero, 0x98
/* ED978 80044468 AFA20010 */  sw         $v0, 0x10($sp)
/* ED97C 8004446C 8E04000C */  lw         $a0, 0xc($s0)
/* ED980 80044470 240600FF */  addiu      $a2, $zero, 0xff
/* ED984 80044474 0C028E41 */  jal        func_800A3904
/* ED988 80044478 240700FF */   addiu     $a3, $zero, 0xff
/* ED98C 8004447C 8E03000C */  lw         $v1, 0xc($s0)
/* ED990 80044480 9462001E */  lhu        $v0, 0x1e($v1)
/* ED994 80044484 34420004 */  ori        $v0, $v0, 4
/* ED998 80044488 A462001E */  sh         $v0, 0x1e($v1)
/* ED99C 8004448C 8E02000C */  lw         $v0, 0xc($s0)
/* ED9A0 80044490 8C440014 */  lw         $a0, 0x14($v0)
/* ED9A4 80044494 3C058007 */  lui        $a1, %hi(D_8006C040)
/* ED9A8 80044498 24A5C040 */  addiu      $a1, $a1, %lo(D_8006C040)
/* ED9AC 8004449C 0C03006C */  jal        func_800C01B0
/* ED9B0 800444A0 24060020 */   addiu     $a2, $zero, 0x20
/* ED9B4 800444A4 24040001 */  addiu      $a0, $zero, 1
/* ED9B8 800444A8 308300FF */  andi       $v1, $a0, 0xff
.L800444AC:
/* ED9BC 800444AC 10730005 */  beq        $v1, $s3, .L800444C4
/* ED9C0 800444B0 00031840 */   sll       $v1, $v1, 1
/* ED9C4 800444B4 00721821 */  addu       $v1, $v1, $s2
/* ED9C8 800444B8 94620000 */  lhu        $v0, ($v1)
/* ED9CC 800444BC 2442FFFF */  addiu      $v0, $v0, -1
/* ED9D0 800444C0 A4620000 */  sh         $v0, ($v1)
.L800444C4:
/* ED9D4 800444C4 24840001 */  addiu      $a0, $a0, 1
/* ED9D8 800444C8 308200FF */  andi       $v0, $a0, 0xff
/* ED9DC 800444CC 2C42000A */  sltiu      $v0, $v0, 0xa
/* ED9E0 800444D0 1440FFF6 */  bnez       $v0, .L800444AC
/* ED9E4 800444D4 308300FF */   andi      $v1, $a0, 0xff
/* ED9E8 800444D8 8E02000C */  lw         $v0, 0xc($s0)
/* ED9EC 800444DC 322500FF */  andi       $a1, $s1, 0xff
/* ED9F0 800444E0 8C420004 */  lw         $v0, 4($v0)
/* ED9F4 800444E4 24A4005B */  addiu      $a0, $a1, 0x5b
/* ED9F8 800444E8 24A50060 */  addiu      $a1, $a1, 0x60
/* ED9FC 800444EC 0C00DD19 */  jal        func_80037464_E0974
/* EDA00 800444F0 AC520004 */   sw        $s2, 4($v0)
/* EDA04 800444F4 00408021 */  addu       $s0, $v0, $zero
/* EDA08 800444F8 8E04000C */  lw         $a0, 0xc($s0)
/* EDA0C 800444FC 8C82000C */  lw         $v0, 0xc($a0)
/* EDA10 80044500 94450000 */  lhu        $a1, ($v0)
/* EDA14 80044504 94460002 */  lhu        $a2, 2($v0)
/* EDA18 80044508 00052842 */  srl        $a1, $a1, 1
/* EDA1C 8004450C 0C02912A */  jal        func_800A44A8
/* EDA20 80044510 00063042 */   srl       $a2, $a2, 1
/* EDA24 80044514 8E04000C */  lw         $a0, 0xc($s0)
/* EDA28 80044518 24050080 */  addiu      $a1, $zero, 0x80
/* EDA2C 8004451C 0C028D89 */  jal        func_800A3624
/* EDA30 80044520 24060158 */   addiu     $a2, $zero, 0x158
/* EDA34 80044524 8E03000C */  lw         $v1, 0xc($s0)
/* EDA38 80044528 240500FF */  addiu      $a1, $zero, 0xff
/* EDA3C 8004452C 24020037 */  addiu      $v0, $zero, 0x37
/* EDA40 80044530 A462001C */  sh         $v0, 0x1c($v1)
/* EDA44 80044534 24020080 */  addiu      $v0, $zero, 0x80
/* EDA48 80044538 AFA20010 */  sw         $v0, 0x10($sp)
/* EDA4C 8004453C 8E04000C */  lw         $a0, 0xc($s0)
/* EDA50 80044540 240600FF */  addiu      $a2, $zero, 0xff
/* EDA54 80044544 0C028E41 */  jal        func_800A3904
/* EDA58 80044548 240700FF */   addiu     $a3, $zero, 0xff
/* EDA5C 8004454C 8E03000C */  lw         $v1, 0xc($s0)
/* EDA60 80044550 9462001E */  lhu        $v0, 0x1e($v1)
/* EDA64 80044554 26310001 */  addiu      $s1, $s1, 1
/* EDA68 80044558 34420004 */  ori        $v0, $v0, 4
/* EDA6C 8004455C A462001E */  sh         $v0, 0x1e($v1)
/* EDA70 80044560 322200FF */  andi       $v0, $s1, 0xff
/* EDA74 80044564 2C420005 */  sltiu      $v0, $v0, 5
/* EDA78 80044568 1440FFAA */  bnez       $v0, .L80044414
/* EDA7C 8004456C 322600FF */   andi      $a2, $s1, 0xff
/* EDA80 80044570 8FBF0030 */  lw         $ra, 0x30($sp)
/* EDA84 80044574 8FB3002C */  lw         $s3, 0x2c($sp)
/* EDA88 80044578 8FB20028 */  lw         $s2, 0x28($sp)
/* EDA8C 8004457C 8FB10024 */  lw         $s1, 0x24($sp)
/* EDA90 80044580 8FB00020 */  lw         $s0, 0x20($sp)
/* EDA94 80044584 D7BE0060 */  ldc1       $f30, 0x60($sp)
/* EDA98 80044588 D7BC0058 */  ldc1       $f28, 0x58($sp)
/* EDA9C 8004458C D7BA0050 */  ldc1       $f26, 0x50($sp)
/* EDAA0 80044590 D7B80048 */  ldc1       $f24, 0x48($sp)
/* EDAA4 80044594 D7B60040 */  ldc1       $f22, 0x40($sp)
/* EDAA8 80044598 D7B40038 */  ldc1       $f20, 0x38($sp)
/* EDAAC 8004459C 03E00008 */  jr         $ra
/* EDAB0 800445A0 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_800445A4_EDAB4
/* EDAB4 800445A4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* EDAB8 800445A8 AFBF0064 */  sw         $ra, 0x64($sp)
/* EDABC 800445AC AFB20060 */  sw         $s2, 0x60($sp)
/* EDAC0 800445B0 AFB1005C */  sw         $s1, 0x5c($sp)
/* EDAC4 800445B4 AFB00058 */  sw         $s0, 0x58($sp)
/* EDAC8 800445B8 F7B60070 */  sdc1       $f22, 0x70($sp)
/* EDACC 800445BC F7B40068 */  sdc1       $f20, 0x68($sp)
/* EDAD0 800445C0 0C00E109 */  jal        func_80038424_E1934
/* EDAD4 800445C4 241000FF */   addiu     $s0, $zero, 0xff
/* EDAD8 800445C8 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EDADC 800445CC 24040001 */   addiu     $a0, $zero, 1
/* EDAE0 800445D0 00409021 */  addu       $s2, $v0, $zero
/* EDAE4 800445D4 3C013DCC */  lui        $at, 0x3dcc
/* EDAE8 800445D8 3421CCCD */  ori        $at, $at, 0xcccd
/* EDAEC 800445DC 4481A000 */  mtc1       $at, $f20
/* EDAF0 800445E0 02402021 */  addu       $a0, $s2, $zero
/* EDAF4 800445E4 240500FD */  addiu      $a1, $zero, 0xfd
/* EDAF8 800445E8 AE400010 */  sw         $zero, 0x10($s2)
/* EDAFC 800445EC AE400014 */  sw         $zero, 0x14($s2)
/* EDB00 800445F0 AE400018 */  sw         $zero, 0x18($s2)
/* EDB04 800445F4 AE40001C */  sw         $zero, 0x1c($s2)
/* EDB08 800445F8 AE400020 */  sw         $zero, 0x20($s2)
/* EDB0C 800445FC AE400024 */  sw         $zero, 0x24($s2)
/* EDB10 80044600 A6500074 */  sh         $s0, 0x74($s2)
/* EDB14 80044604 A6500076 */  sh         $s0, 0x76($s2)
/* EDB18 80044608 A6500078 */  sh         $s0, 0x78($s2)
/* EDB1C 8004460C A650007A */  sh         $s0, 0x7a($s2)
/* EDB20 80044610 0C00DFE6 */  jal        func_80037F98_E14A8
/* EDB24 80044614 E6540028 */   swc1      $f20, 0x28($s2)
/* EDB28 80044618 8E420004 */  lw         $v0, 4($s2)
/* EDB2C 8004461C A0400067 */  sb         $zero, 0x67($v0)
/* EDB30 80044620 8E430004 */  lw         $v1, 4($s2)
/* EDB34 80044624 90620066 */  lbu        $v0, 0x66($v1)
/* EDB38 80044628 24040003 */  addiu      $a0, $zero, 3
/* EDB3C 8004462C 34420007 */  ori        $v0, $v0, 7
/* EDB40 80044630 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EDB44 80044634 A0620066 */   sb        $v0, 0x66($v1)
/* EDB48 80044638 00409021 */  addu       $s2, $v0, $zero
/* EDB4C 8004463C 02402021 */  addu       $a0, $s2, $zero
/* EDB50 80044640 240500F6 */  addiu      $a1, $zero, 0xf6
/* EDB54 80044644 AE400010 */  sw         $zero, 0x10($s2)
/* EDB58 80044648 AE400014 */  sw         $zero, 0x14($s2)
/* EDB5C 8004464C AE400018 */  sw         $zero, 0x18($s2)
/* EDB60 80044650 E6540028 */  swc1       $f20, 0x28($s2)
/* EDB64 80044654 AE40001C */  sw         $zero, 0x1c($s2)
/* EDB68 80044658 AE400020 */  sw         $zero, 0x20($s2)
/* EDB6C 8004465C AE400024 */  sw         $zero, 0x24($s2)
/* EDB70 80044660 A6500074 */  sh         $s0, 0x74($s2)
/* EDB74 80044664 A6500076 */  sh         $s0, 0x76($s2)
/* EDB78 80044668 A6500078 */  sh         $s0, 0x78($s2)
/* EDB7C 8004466C 0C00DFE6 */  jal        func_80037F98_E14A8
/* EDB80 80044670 A650007A */   sh        $s0, 0x7a($s2)
/* EDB84 80044674 8E420004 */  lw         $v0, 4($s2)
/* EDB88 80044678 A0400067 */  sb         $zero, 0x67($v0)
/* EDB8C 8004467C 8E430004 */  lw         $v1, 4($s2)
/* EDB90 80044680 90620066 */  lbu        $v0, 0x66($v1)
/* EDB94 80044684 24040004 */  addiu      $a0, $zero, 4
/* EDB98 80044688 34420003 */  ori        $v0, $v0, 3
/* EDB9C 8004468C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EDBA0 80044690 A0620066 */   sb        $v0, 0x66($v1)
/* EDBA4 80044694 00409021 */  addu       $s2, $v0, $zero
/* EDBA8 80044698 02402021 */  addu       $a0, $s2, $zero
/* EDBAC 8004469C 240500F7 */  addiu      $a1, $zero, 0xf7
/* EDBB0 800446A0 AE400010 */  sw         $zero, 0x10($s2)
/* EDBB4 800446A4 AE400014 */  sw         $zero, 0x14($s2)
/* EDBB8 800446A8 AE400018 */  sw         $zero, 0x18($s2)
/* EDBBC 800446AC E6540028 */  swc1       $f20, 0x28($s2)
/* EDBC0 800446B0 AE40001C */  sw         $zero, 0x1c($s2)
/* EDBC4 800446B4 AE400020 */  sw         $zero, 0x20($s2)
/* EDBC8 800446B8 AE400024 */  sw         $zero, 0x24($s2)
/* EDBCC 800446BC A6500074 */  sh         $s0, 0x74($s2)
/* EDBD0 800446C0 A6500076 */  sh         $s0, 0x76($s2)
/* EDBD4 800446C4 A6500078 */  sh         $s0, 0x78($s2)
/* EDBD8 800446C8 0C00DFE6 */  jal        func_80037F98_E14A8
/* EDBDC 800446CC A650007A */   sh        $s0, 0x7a($s2)
/* EDBE0 800446D0 8E420004 */  lw         $v0, 4($s2)
/* EDBE4 800446D4 A0400067 */  sb         $zero, 0x67($v0)
/* EDBE8 800446D8 8E430004 */  lw         $v1, 4($s2)
/* EDBEC 800446DC 90620066 */  lbu        $v0, 0x66($v1)
/* EDBF0 800446E0 24040005 */  addiu      $a0, $zero, 5
/* EDBF4 800446E4 34420003 */  ori        $v0, $v0, 3
/* EDBF8 800446E8 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EDBFC 800446EC A0620066 */   sb        $v0, 0x66($v1)
/* EDC00 800446F0 00409021 */  addu       $s2, $v0, $zero
/* EDC04 800446F4 3C01C160 */  lui        $at, 0xc160
/* EDC08 800446F8 44810000 */  mtc1       $at, $f0
/* EDC0C 800446FC 3C0141F0 */  lui        $at, 0x41f0
/* EDC10 80044700 44811000 */  mtc1       $at, $f2
/* EDC14 80044704 3C0141C8 */  lui        $at, 0x41c8
/* EDC18 80044708 44812000 */  mtc1       $at, $f4
/* EDC1C 8004470C 02402021 */  addu       $a0, $s2, $zero
/* EDC20 80044710 2405010B */  addiu      $a1, $zero, 0x10b
/* EDC24 80044714 24020090 */  addiu      $v0, $zero, 0x90
/* EDC28 80044718 AE400010 */  sw         $zero, 0x10($s2)
/* EDC2C 8004471C E6540028 */  swc1       $f20, 0x28($s2)
/* EDC30 80044720 AE400020 */  sw         $zero, 0x20($s2)
/* EDC34 80044724 AE400024 */  sw         $zero, 0x24($s2)
/* EDC38 80044728 A6500074 */  sh         $s0, 0x74($s2)
/* EDC3C 8004472C A6500076 */  sh         $s0, 0x76($s2)
/* EDC40 80044730 A6500078 */  sh         $s0, 0x78($s2)
/* EDC44 80044734 A642007A */  sh         $v0, 0x7a($s2)
/* EDC48 80044738 E6400014 */  swc1       $f0, 0x14($s2)
/* EDC4C 8004473C E6420018 */  swc1       $f2, 0x18($s2)
/* EDC50 80044740 0C00DFE6 */  jal        func_80037F98_E14A8
/* EDC54 80044744 E644001C */   swc1      $f4, 0x1c($s2)
/* EDC58 80044748 8E420004 */  lw         $v0, 4($s2)
/* EDC5C 8004474C 2411000A */  addiu      $s1, $zero, 0xa
/* EDC60 80044750 A0510067 */  sb         $s1, 0x67($v0)
/* EDC64 80044754 8E430004 */  lw         $v1, 4($s2)
/* EDC68 80044758 90620066 */  lbu        $v0, 0x66($v1)
/* EDC6C 8004475C 24040006 */  addiu      $a0, $zero, 6
/* EDC70 80044760 34420023 */  ori        $v0, $v0, 0x23
/* EDC74 80044764 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EDC78 80044768 A0620066 */   sb        $v0, 0x66($v1)
/* EDC7C 8004476C 00409021 */  addu       $s2, $v0, $zero
/* EDC80 80044770 3C01C180 */  lui        $at, 0xc180
/* EDC84 80044774 44811000 */  mtc1       $at, $f2
/* EDC88 80044778 3C014220 */  lui        $at, 0x4220
/* EDC8C 8004477C 4481B000 */  mtc1       $at, $f22
/* EDC90 80044780 3C0140C0 */  lui        $at, 0x40c0
/* EDC94 80044784 44810000 */  mtc1       $at, $f0
/* EDC98 80044788 02402021 */  addu       $a0, $s2, $zero
/* EDC9C 8004478C 2405010D */  addiu      $a1, $zero, 0x10d
/* EDCA0 80044790 24020070 */  addiu      $v0, $zero, 0x70
/* EDCA4 80044794 AE400010 */  sw         $zero, 0x10($s2)
/* EDCA8 80044798 E6540028 */  swc1       $f20, 0x28($s2)
/* EDCAC 8004479C AE400020 */  sw         $zero, 0x20($s2)
/* EDCB0 800447A0 AE400024 */  sw         $zero, 0x24($s2)
/* EDCB4 800447A4 A6500074 */  sh         $s0, 0x74($s2)
/* EDCB8 800447A8 A6500076 */  sh         $s0, 0x76($s2)
/* EDCBC 800447AC A6500078 */  sh         $s0, 0x78($s2)
/* EDCC0 800447B0 A642007A */  sh         $v0, 0x7a($s2)
/* EDCC4 800447B4 E6560018 */  swc1       $f22, 0x18($s2)
/* EDCC8 800447B8 E6420014 */  swc1       $f2, 0x14($s2)
/* EDCCC 800447BC 0C00DFE6 */  jal        func_80037F98_E14A8
/* EDCD0 800447C0 E640001C */   swc1      $f0, 0x1c($s2)
/* EDCD4 800447C4 8E420004 */  lw         $v0, 4($s2)
/* EDCD8 800447C8 A0510067 */  sb         $s1, 0x67($v0)
/* EDCDC 800447CC 8E430004 */  lw         $v1, 4($s2)
/* EDCE0 800447D0 90620066 */  lbu        $v0, 0x66($v1)
/* EDCE4 800447D4 24040007 */  addiu      $a0, $zero, 7
/* EDCE8 800447D8 34420023 */  ori        $v0, $v0, 0x23
/* EDCEC 800447DC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EDCF0 800447E0 A0620066 */   sb        $v0, 0x66($v1)
/* EDCF4 800447E4 00409021 */  addu       $s2, $v0, $zero
/* EDCF8 800447E8 3C01C190 */  lui        $at, 0xc190
/* EDCFC 800447EC 44810000 */  mtc1       $at, $f0
/* EDD00 800447F0 02402021 */  addu       $a0, $s2, $zero
/* EDD04 800447F4 2405010F */  addiu      $a1, $zero, 0x10f
/* EDD08 800447F8 24020080 */  addiu      $v0, $zero, 0x80
/* EDD0C 800447FC AE400010 */  sw         $zero, 0x10($s2)
/* EDD10 80044800 E6560018 */  swc1       $f22, 0x18($s2)
/* EDD14 80044804 E6540028 */  swc1       $f20, 0x28($s2)
/* EDD18 80044808 AE40001C */  sw         $zero, 0x1c($s2)
/* EDD1C 8004480C AE400020 */  sw         $zero, 0x20($s2)
/* EDD20 80044810 AE400024 */  sw         $zero, 0x24($s2)
/* EDD24 80044814 A6500074 */  sh         $s0, 0x74($s2)
/* EDD28 80044818 A6500076 */  sh         $s0, 0x76($s2)
/* EDD2C 8004481C A6500078 */  sh         $s0, 0x78($s2)
/* EDD30 80044820 A642007A */  sh         $v0, 0x7a($s2)
/* EDD34 80044824 0C00DFE6 */  jal        func_80037F98_E14A8
/* EDD38 80044828 E6400014 */   swc1      $f0, 0x14($s2)
/* EDD3C 8004482C 8E420004 */  lw         $v0, 4($s2)
/* EDD40 80044830 3C01C200 */  lui        $at, 0xc200
/* EDD44 80044834 44810000 */  mtc1       $at, $f0
/* EDD48 80044838 3C013F80 */  lui        $at, 0x3f80
/* EDD4C 8004483C 44811000 */  mtc1       $at, $f2
/* EDD50 80044840 A0510067 */  sb         $s1, 0x67($v0)
/* EDD54 80044844 8E430004 */  lw         $v1, 4($s2)
/* EDD58 80044848 3C01C0E0 */  lui        $at, 0xc0e0
/* EDD5C 8004484C 44812000 */  mtc1       $at, $f4
/* EDD60 80044850 3C01C334 */  lui        $at, 0xc334
/* EDD64 80044854 44813000 */  mtc1       $at, $f6
/* EDD68 80044858 90620066 */  lbu        $v0, 0x66($v1)
/* EDD6C 8004485C 3C01C332 */  lui        $at, 0xc332
/* EDD70 80044860 44814000 */  mtc1       $at, $f8
/* EDD74 80044864 34420023 */  ori        $v0, $v0, 0x23
/* EDD78 80044868 A0620066 */  sb         $v0, 0x66($v1)
/* EDD7C 8004486C 3C018015 */  lui        $at, %hi(D_8014A064)
/* EDD80 80044870 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EDD84 80044874 3C018015 */  lui        $at, %hi(D_8014A068)
/* EDD88 80044878 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* EDD8C 8004487C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EDD90 80044880 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EDD94 80044884 3C018015 */  lui        $at, %hi(D_8014A070)
/* EDD98 80044888 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EDD9C 8004488C 3C018015 */  lui        $at, %hi(D_8014A074)
/* EDDA0 80044890 E422A074 */  swc1       $f2, %lo(D_8014A074)($at)
/* EDDA4 80044894 3C018015 */  lui        $at, %hi(D_8014A078)
/* EDDA8 80044898 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EDDAC 8004489C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EDDB0 800448A0 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* EDDB4 800448A4 3C018015 */  lui        $at, %hi(D_8014A080)
/* EDDB8 800448A8 E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* EDDBC 800448AC 3C018015 */  lui        $at, %hi(D_8014A084)
/* EDDC0 800448B0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EDDC4 800448B4 3C018015 */  lui        $at, %hi(D_8014A088)
/* EDDC8 800448B8 0C00E339 */  jal        func_80038CE4_E21F4
/* EDDCC 800448BC E428A088 */   swc1      $f8, %lo(D_8014A088)($at)
/* EDDD0 800448C0 3C014120 */  lui        $at, 0x4120
/* EDDD4 800448C4 44810000 */  mtc1       $at, $f0
/* EDDD8 800448C8 27A40010 */  addiu      $a0, $sp, 0x10
/* EDDDC 800448CC 240520C9 */  addiu      $a1, $zero, 0x20c9
/* EDDE0 800448D0 3C028007 */  lui        $v0, %hi(D_80069050)
/* EDDE4 800448D4 24429050 */  addiu      $v0, $v0, %lo(D_80069050)
/* EDDE8 800448D8 AFA20010 */  sw         $v0, 0x10($sp)
/* EDDEC 800448DC 2402FFFC */  addiu      $v0, $zero, -4
/* EDDF0 800448E0 A3A20014 */  sb         $v0, 0x14($sp)
/* EDDF4 800448E4 24020001 */  addiu      $v0, $zero, 1
/* EDDF8 800448E8 A3A20016 */  sb         $v0, 0x16($sp)
/* EDDFC 800448EC 24020003 */  addiu      $v0, $zero, 3
/* EDE00 800448F0 3C018015 */  lui        $at, %hi(D_8014A054)
/* EDE04 800448F4 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EDE08 800448F8 3C018015 */  lui        $at, %hi(D_8014A050)
/* EDE0C 800448FC AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EDE10 80044900 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EDE14 80044904 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EDE18 80044908 3C018017 */  lui        $at, %hi(D_8016E568)
/* EDE1C 8004490C AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* EDE20 80044910 A3A00015 */  sb         $zero, 0x15($sp)
/* EDE24 80044914 A3A20017 */  sb         $v0, 0x17($sp)
/* EDE28 80044918 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EDE2C 8004491C E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* EDE30 80044920 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EDE34 80044924 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* EDE38 80044928 0C00DE82 */  jal        func_80037A08_E0F18
/* EDE3C 8004492C 24060003 */   addiu     $a2, $zero, 3
/* EDE40 80044930 8FBF0064 */  lw         $ra, 0x64($sp)
/* EDE44 80044934 8FB20060 */  lw         $s2, 0x60($sp)
/* EDE48 80044938 8FB1005C */  lw         $s1, 0x5c($sp)
/* EDE4C 8004493C 8FB00058 */  lw         $s0, 0x58($sp)
/* EDE50 80044940 D7B60070 */  ldc1       $f22, 0x70($sp)
/* EDE54 80044944 D7B40068 */  ldc1       $f20, 0x68($sp)
/* EDE58 80044948 03E00008 */  jr         $ra
/* EDE5C 8004494C 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_80044950_EDE60
/* EDE60 80044950 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EDE64 80044954 AFBF001C */  sw         $ra, 0x1c($sp)
/* EDE68 80044958 0C00E109 */  jal        func_80038424_E1934
/* EDE6C 8004495C AFB00018 */   sw        $s0, 0x18($sp)
/* EDE70 80044960 3C048033 */  lui        $a0, 0x8033
/* EDE74 80044964 34845040 */  ori        $a0, $a0, 0x5040
/* EDE78 80044968 24050124 */  addiu      $a1, $zero, 0x124
/* EDE7C 8004496C 24060009 */  addiu      $a2, $zero, 9
/* EDE80 80044970 0C00D9E0 */  jal        func_80036780_DFC90
/* EDE84 80044974 2407003F */   addiu     $a3, $zero, 0x3f
/* EDE88 80044978 8C44000C */  lw         $a0, 0xc($v0)
/* EDE8C 8004497C 24050040 */  addiu      $a1, $zero, 0x40
/* EDE90 80044980 0C028D89 */  jal        func_800A3624
/* EDE94 80044984 240600C0 */   addiu     $a2, $zero, 0xc0
/* EDE98 80044988 2404012F */  addiu      $a0, $zero, 0x12f
/* EDE9C 8004498C 24050006 */  addiu      $a1, $zero, 6
/* EDEA0 80044990 0C00D925 */  jal        func_80036494_DF9A4
/* EDEA4 80044994 24060039 */   addiu     $a2, $zero, 0x39
/* EDEA8 80044998 00402021 */  addu       $a0, $v0, $zero
/* EDEAC 8004499C 8C83000C */  lw         $v1, 0xc($a0)
/* EDEB0 800449A0 9462001E */  lhu        $v0, 0x1e($v1)
/* EDEB4 800449A4 00008021 */  addu       $s0, $zero, $zero
/* EDEB8 800449A8 34420040 */  ori        $v0, $v0, 0x40
/* EDEBC 800449AC A462001E */  sh         $v0, 0x1e($v1)
/* EDEC0 800449B0 8C84000C */  lw         $a0, 0xc($a0)
/* EDEC4 800449B4 24050340 */  addiu      $a1, $zero, 0x340
/* EDEC8 800449B8 0C028D89 */  jal        func_800A3624
/* EDECC 800449BC 24060160 */   addiu     $a2, $zero, 0x160
/* EDED0 800449C0 320600FF */  andi       $a2, $s0, 0xff
.L800449C4:
/* EDED4 800449C4 24C4012D */  addiu      $a0, $a2, 0x12d
/* EDED8 800449C8 00002821 */  addu       $a1, $zero, $zero
/* EDEDC 800449CC 0C00D925 */  jal        func_80036494_DF9A4
/* EDEE0 800449D0 24C6003A */   addiu     $a2, $a2, 0x3a
/* EDEE4 800449D4 8C44000C */  lw         $a0, 0xc($v0)
/* EDEE8 800449D8 24050100 */  addiu      $a1, $zero, 0x100
/* EDEEC 800449DC 240600E0 */  addiu      $a2, $zero, 0xe0
/* EDEF0 800449E0 0C028D89 */  jal        func_800A3624
/* EDEF4 800449E4 26100001 */   addiu     $s0, $s0, 1
/* EDEF8 800449E8 320200FF */  andi       $v0, $s0, 0xff
/* EDEFC 800449EC 2C420002 */  sltiu      $v0, $v0, 2
/* EDF00 800449F0 1440FFF4 */  bnez       $v0, .L800449C4
/* EDF04 800449F4 320600FF */   andi      $a2, $s0, 0xff
/* EDF08 800449F8 27A40010 */  addiu      $a0, $sp, 0x10
/* EDF0C 800449FC 240520C9 */  addiu      $a1, $zero, 0x20c9
/* EDF10 80044A00 24060002 */  addiu      $a2, $zero, 2
/* EDF14 80044A04 3C028007 */  lui        $v0, %hi(D_80069070)
/* EDF18 80044A08 24429070 */  addiu      $v0, $v0, %lo(D_80069070)
/* EDF1C 80044A0C AFA20010 */  sw         $v0, 0x10($sp)
/* EDF20 80044A10 2402FFFE */  addiu      $v0, $zero, -2
/* EDF24 80044A14 A3A20014 */  sb         $v0, 0x14($sp)
/* EDF28 80044A18 24020001 */  addiu      $v0, $zero, 1
/* EDF2C 80044A1C A3A20016 */  sb         $v0, 0x16($sp)
/* EDF30 80044A20 24020003 */  addiu      $v0, $zero, 3
/* EDF34 80044A24 A3A00015 */  sb         $zero, 0x15($sp)
/* EDF38 80044A28 0C00DE82 */  jal        func_80037A08_E0F18
/* EDF3C 80044A2C A3A20017 */   sb        $v0, 0x17($sp)
/* EDF40 80044A30 8FBF001C */  lw         $ra, 0x1c($sp)
/* EDF44 80044A34 8FB00018 */  lw         $s0, 0x18($sp)
/* EDF48 80044A38 03E00008 */  jr         $ra
/* EDF4C 80044A3C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80044A40_EDF50
/* EDF50 80044A40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* EDF54 80044A44 AFBF002C */  sw         $ra, 0x2c($sp)
/* EDF58 80044A48 AFB20028 */  sw         $s2, 0x28($sp)
/* EDF5C 80044A4C AFB10024 */  sw         $s1, 0x24($sp)
/* EDF60 80044A50 0C00E109 */  jal        func_80038424_E1934
/* EDF64 80044A54 AFB00020 */   sw        $s0, 0x20($sp)
/* EDF68 80044A58 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EDF6C 80044A5C 24040009 */   addiu     $a0, $zero, 9
/* EDF70 80044A60 00408021 */  addu       $s0, $v0, $zero
/* EDF74 80044A64 3C014087 */  lui        $at, 0x4087
/* EDF78 80044A68 34215C29 */  ori        $at, $at, 0x5c29
/* EDF7C 80044A6C 44810000 */  mtc1       $at, $f0
/* EDF80 80044A70 3C01C27C */  lui        $at, 0xc27c
/* EDF84 80044A74 34213333 */  ori        $at, $at, 0x3333
/* EDF88 80044A78 44811000 */  mtc1       $at, $f2
/* EDF8C 80044A7C 3C014148 */  lui        $at, 0x4148
/* EDF90 80044A80 44812000 */  mtc1       $at, $f4
/* EDF94 80044A84 3C013CA3 */  lui        $at, 0x3ca3
/* EDF98 80044A88 3421D70A */  ori        $at, $at, 0xd70a
/* EDF9C 80044A8C 44813000 */  mtc1       $at, $f6
/* EDFA0 80044A90 02002021 */  addu       $a0, $s0, $zero
/* EDFA4 80044A94 00002821 */  addu       $a1, $zero, $zero
/* EDFA8 80044A98 240200FF */  addiu      $v0, $zero, 0xff
/* EDFAC 80044A9C A6020074 */  sh         $v0, 0x74($s0)
/* EDFB0 80044AA0 A6020076 */  sh         $v0, 0x76($s0)
/* EDFB4 80044AA4 A6020078 */  sh         $v0, 0x78($s0)
/* EDFB8 80044AA8 A602007A */  sh         $v0, 0x7a($s0)
/* EDFBC 80044AAC 24020015 */  addiu      $v0, $zero, 0x15
/* EDFC0 80044AB0 AE00001C */  sw         $zero, 0x1c($s0)
/* EDFC4 80044AB4 AE000020 */  sw         $zero, 0x20($s0)
/* EDFC8 80044AB8 AE000024 */  sw         $zero, 0x24($s0)
/* EDFCC 80044ABC A6020070 */  sh         $v0, 0x70($s0)
/* EDFD0 80044AC0 E6000010 */  swc1       $f0, 0x10($s0)
/* EDFD4 80044AC4 E6020014 */  swc1       $f2, 0x14($s0)
/* EDFD8 80044AC8 E6040018 */  swc1       $f4, 0x18($s0)
/* EDFDC 80044ACC 0C00DFE6 */  jal        func_80037F98_E14A8
/* EDFE0 80044AD0 E6060028 */   swc1      $f6, 0x28($s0)
/* EDFE4 80044AD4 8E020004 */  lw         $v0, 4($s0)
/* EDFE8 80044AD8 A0400067 */  sb         $zero, 0x67($v0)
/* EDFEC 80044ADC 8E030004 */  lw         $v1, 4($s0)
/* EDFF0 80044AE0 24020003 */  addiu      $v0, $zero, 3
/* EDFF4 80044AE4 A6020072 */  sh         $v0, 0x72($s0)
/* EDFF8 80044AE8 90620066 */  lbu        $v0, 0x66($v1)
/* EDFFC 80044AEC 34420007 */  ori        $v0, $v0, 7
/* EE000 80044AF0 A0620066 */  sb         $v0, 0x66($v1)
/* EE004 80044AF4 8E040004 */  lw         $a0, 4($s0)
/* EE008 80044AF8 3C058007 */  lui        $a1, %hi(D_8006A084)
/* EE00C 80044AFC 24A5A084 */  addiu      $a1, $a1, %lo(D_8006A084)
/* EE010 80044B00 0C0284DC */  jal        func_800A1370
/* EE014 80044B04 2411001F */   addiu     $s1, $zero, 0x1f
/* EE018 80044B08 8E040004 */  lw         $a0, 4($s0)
/* EE01C 80044B0C 3045FFFF */  andi       $a1, $v0, 0xffff
/* EE020 80044B10 0C02869D */  jal        func_800A1A74
/* EE024 80044B14 00003021 */   addu      $a2, $zero, $zero
/* EE028 80044B18 8E040004 */  lw         $a0, 4($s0)
/* EE02C 80044B1C 3C058007 */  lui        $a1, %hi(D_8006A08C)
/* EE030 80044B20 0C0284DC */  jal        func_800A1370
/* EE034 80044B24 24A5A08C */   addiu     $a1, $a1, %lo(D_8006A08C)
/* EE038 80044B28 8E040004 */  lw         $a0, 4($s0)
/* EE03C 80044B2C 3045FFFF */  andi       $a1, $v0, 0xffff
/* EE040 80044B30 0C02869D */  jal        func_800A1A74
/* EE044 80044B34 00003021 */   addu      $a2, $zero, $zero
/* EE048 80044B38 3C013F80 */  lui        $at, 0x3f80
/* EE04C 80044B3C 44810000 */  mtc1       $at, $f0
/* EE050 80044B40 3C01C086 */  lui        $at, 0xc086
/* EE054 80044B44 3421147B */  ori        $at, $at, 0x147b
/* EE058 80044B48 44811000 */  mtc1       $at, $f2
/* EE05C 80044B4C 3C014291 */  lui        $at, 0x4291
/* EE060 80044B50 3421BD71 */  ori        $at, $at, 0xbd71
/* EE064 80044B54 44812000 */  mtc1       $at, $f4
/* EE068 80044B58 3C01C226 */  lui        $at, 0xc226
/* EE06C 80044B5C 3421B852 */  ori        $at, $at, 0xb852
/* EE070 80044B60 44813000 */  mtc1       $at, $f6
/* EE074 80044B64 3C018015 */  lui        $at, %hi(D_8014A064)
/* EE078 80044B68 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EE07C 80044B6C 3C018015 */  lui        $at, %hi(D_8014A068)
/* EE080 80044B70 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* EE084 80044B74 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EE088 80044B78 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EE08C 80044B7C 3C018015 */  lui        $at, %hi(D_8014A070)
/* EE090 80044B80 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EE094 80044B84 3C018015 */  lui        $at, %hi(D_8014A078)
/* EE098 80044B88 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EE09C 80044B8C 3C018015 */  lui        $at, %hi(D_8014A084)
/* EE0A0 80044B90 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EE0A4 80044B94 3C018015 */  lui        $at, %hi(D_8014A074)
/* EE0A8 80044B98 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* EE0AC 80044B9C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EE0B0 80044BA0 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* EE0B4 80044BA4 3C018015 */  lui        $at, %hi(D_8014A080)
/* EE0B8 80044BA8 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* EE0BC 80044BAC 3C018015 */  lui        $at, %hi(D_8014A088)
/* EE0C0 80044BB0 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* EE0C4 80044BB4 0C00E339 */  jal        func_80038CE4_E21F4
/* EE0C8 80044BB8 24100001 */   addiu     $s0, $zero, 1
/* EE0CC 80044BBC 3C048034 */  lui        $a0, 0x8034
/* EE0D0 80044BC0 34843E50 */  ori        $a0, $a0, 0x3e50
/* EE0D4 80044BC4 240501EC */  addiu      $a1, $zero, 0x1ec
/* EE0D8 80044BC8 3C01C120 */  lui        $at, 0xc120
/* EE0DC 80044BCC 44810000 */  mtc1       $at, $f0
/* EE0E0 80044BD0 24060007 */  addiu      $a2, $zero, 7
/* EE0E4 80044BD4 3C018015 */  lui        $at, %hi(D_8014A054)
/* EE0E8 80044BD8 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EE0EC 80044BDC 3C018015 */  lui        $at, %hi(D_8014A050)
/* EE0F0 80044BE0 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EE0F4 80044BE4 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EE0F8 80044BE8 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EE0FC 80044BEC 3C018017 */  lui        $at, %hi(D_8016E568)
/* EE100 80044BF0 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* EE104 80044BF4 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EE108 80044BF8 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* EE10C 80044BFC 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EE110 80044C00 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* EE114 80044C04 0C00D9E0 */  jal        func_80036780_DFC90
/* EE118 80044C08 24070044 */   addiu     $a3, $zero, 0x44
/* EE11C 80044C0C 00409021 */  addu       $s2, $v0, $zero
/* EE120 80044C10 8E44000C */  lw         $a0, 0xc($s2)
/* EE124 80044C14 8C82000C */  lw         $v0, 0xc($a0)
/* EE128 80044C18 94450000 */  lhu        $a1, ($v0)
/* EE12C 80044C1C 00003021 */  addu       $a2, $zero, $zero
/* EE130 80044C20 0C02912A */  jal        func_800A44A8
/* EE134 80044C24 00052842 */   srl       $a1, $a1, 1
/* EE138 80044C28 3C014080 */  lui        $at, 0x4080
/* EE13C 80044C2C 44810000 */  mtc1       $at, $f0
/* EE140 80044C30 8E44000C */  lw         $a0, 0xc($s2)
/* EE144 80044C34 44060000 */  mfc1       $a2, $f0
/* EE148 80044C38 00002821 */  addu       $a1, $zero, $zero
/* EE14C 80044C3C 0C02915B */  jal        func_800A456C
/* EE150 80044C40 00C03821 */   addu      $a3, $a2, $zero
/* EE154 80044C44 8E44000C */  lw         $a0, 0xc($s2)
/* EE158 80044C48 24050280 */  addiu      $a1, $zero, 0x280
/* EE15C 80044C4C 0C028D89 */  jal        func_800A3624
/* EE160 80044C50 24060040 */   addiu     $a2, $zero, 0x40
/* EE164 80044C54 8E43000C */  lw         $v1, 0xc($s2)
/* EE168 80044C58 00002021 */  addu       $a0, $zero, $zero
/* EE16C 80044C5C 24050130 */  addiu      $a1, $zero, 0x130
/* EE170 80044C60 9462001E */  lhu        $v0, 0x1e($v1)
/* EE174 80044C64 24060005 */  addiu      $a2, $zero, 5
/* EE178 80044C68 24070004 */  addiu      $a3, $zero, 4
/* EE17C 80044C6C 34420104 */  ori        $v0, $v0, 0x104
/* EE180 80044C70 A462001E */  sh         $v0, 0x1e($v1)
/* EE184 80044C74 24020045 */  addiu      $v0, $zero, 0x45
/* EE188 80044C78 AFA00010 */  sw         $zero, 0x10($sp)
/* EE18C 80044C7C 0C00DB46 */  jal        func_80036D18_E0228
/* EE190 80044C80 AFA20014 */   sw        $v0, 0x14($sp)
/* EE194 80044C84 00409021 */  addu       $s2, $v0, $zero
/* EE198 80044C88 8E44000C */  lw         $a0, 0xc($s2)
/* EE19C 80044C8C 00002821 */  addu       $a1, $zero, $zero
/* EE1A0 80044C90 0C028D89 */  jal        func_800A3624
/* EE1A4 80044C94 2406FFE0 */   addiu     $a2, $zero, -0x20
/* EE1A8 80044C98 24040045 */  addiu      $a0, $zero, 0x45
/* EE1AC 80044C9C 8E43000C */  lw         $v1, 0xc($s2)
/* EE1B0 80044CA0 24050046 */  addiu      $a1, $zero, 0x46
/* EE1B4 80044CA4 24020020 */  addiu      $v0, $zero, 0x20
/* EE1B8 80044CA8 0C00DD19 */  jal        func_80037464_E0974
/* EE1BC 80044CAC A462001C */   sh        $v0, 0x1c($v1)
/* EE1C0 80044CB0 00409021 */  addu       $s2, $v0, $zero
/* EE1C4 80044CB4 8E44000C */  lw         $a0, 0xc($s2)
/* EE1C8 80044CB8 2405FFF8 */  addiu      $a1, $zero, -8
/* EE1CC 80044CBC 0C028D89 */  jal        func_800A3624
/* EE1D0 80044CC0 2406FFE0 */   addiu     $a2, $zero, -0x20
/* EE1D4 80044CC4 AFB00010 */  sw         $s0, 0x10($sp)
/* EE1D8 80044CC8 8E44000C */  lw         $a0, 0xc($s2)
/* EE1DC 80044CCC 240500FF */  addiu      $a1, $zero, 0xff
/* EE1E0 80044CD0 240600FF */  addiu      $a2, $zero, 0xff
/* EE1E4 80044CD4 0C028E41 */  jal        func_800A3904
/* EE1E8 80044CD8 240700FF */   addiu     $a3, $zero, 0xff
/* EE1EC 80044CDC 24040045 */  addiu      $a0, $zero, 0x45
/* EE1F0 80044CE0 8E42000C */  lw         $v0, 0xc($s2)
/* EE1F4 80044CE4 24050047 */  addiu      $a1, $zero, 0x47
/* EE1F8 80044CE8 0C00DD19 */  jal        func_80037464_E0974
/* EE1FC 80044CEC A451001C */   sh        $s1, 0x1c($v0)
/* EE200 80044CF0 00409021 */  addu       $s2, $v0, $zero
/* EE204 80044CF4 8E44000C */  lw         $a0, 0xc($s2)
/* EE208 80044CF8 24050008 */  addiu      $a1, $zero, 8
/* EE20C 80044CFC 0C028D89 */  jal        func_800A3624
/* EE210 80044D00 2406FFE0 */   addiu     $a2, $zero, -0x20
/* EE214 80044D04 AFB00010 */  sw         $s0, 0x10($sp)
/* EE218 80044D08 8E44000C */  lw         $a0, 0xc($s2)
/* EE21C 80044D0C 240500FF */  addiu      $a1, $zero, 0xff
/* EE220 80044D10 240600FF */  addiu      $a2, $zero, 0xff
/* EE224 80044D14 0C028E41 */  jal        func_800A3904
/* EE228 80044D18 240700FF */   addiu     $a3, $zero, 0xff
/* EE22C 80044D1C 8E42000C */  lw         $v0, 0xc($s2)
/* EE230 80044D20 3C048007 */  lui        $a0, %hi(D_80069084)
/* EE234 80044D24 24849084 */  addiu      $a0, $a0, %lo(D_80069084)
/* EE238 80044D28 2405FFFE */  addiu      $a1, $zero, -2
/* EE23C 80044D2C A451001C */  sh         $s1, 0x1c($v0)
/* EE240 80044D30 2402FFFE */  addiu      $v0, $zero, -2
/* EE244 80044D34 A3A2001C */  sb         $v0, 0x1c($sp)
/* EE248 80044D38 24020001 */  addiu      $v0, $zero, 1
/* EE24C 80044D3C A3A2001E */  sb         $v0, 0x1e($sp)
/* EE250 80044D40 24020002 */  addiu      $v0, $zero, 2
/* EE254 80044D44 AFA40018 */  sw         $a0, 0x18($sp)
/* EE258 80044D48 A3A0001D */  sb         $zero, 0x1d($sp)
/* EE25C 80044D4C 0C029D2A */  jal        func_800A74A8
/* EE260 80044D50 A3A2001F */   sb        $v0, 0x1f($sp)
/* EE264 80044D54 27A40018 */  addiu      $a0, $sp, 0x18
/* EE268 80044D58 240520C9 */  addiu      $a1, $zero, 0x20c9
/* EE26C 80044D5C 240620D3 */  addiu      $a2, $zero, 0x20d3
/* EE270 80044D60 00021FC2 */  srl        $v1, $v0, 0x1f
/* EE274 80044D64 00621821 */  addu       $v1, $v1, $v0
/* EE278 80044D68 00031843 */  sra        $v1, $v1, 1
/* EE27C 80044D6C 240700A0 */  addiu      $a3, $zero, 0xa0
/* EE280 80044D70 00E33823 */  subu       $a3, $a3, $v1
/* EE284 80044D74 00073C00 */  sll        $a3, $a3, 0x10
/* EE288 80044D78 00073C03 */  sra        $a3, $a3, 0x10
/* EE28C 80044D7C 240200AF */  addiu      $v0, $zero, 0xaf
/* EE290 80044D80 0C00DEF7 */  jal        func_80037BDC_E10EC
/* EE294 80044D84 AFA20010 */   sw        $v0, 0x10($sp)
/* EE298 80044D88 8FBF002C */  lw         $ra, 0x2c($sp)
/* EE29C 80044D8C 8FB20028 */  lw         $s2, 0x28($sp)
/* EE2A0 80044D90 8FB10024 */  lw         $s1, 0x24($sp)
/* EE2A4 80044D94 8FB00020 */  lw         $s0, 0x20($sp)
/* EE2A8 80044D98 03E00008 */  jr         $ra
/* EE2AC 80044D9C 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_80044DA0_EE2B0
/* EE2B0 80044DA0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EE2B4 80044DA4 24040131 */  addiu      $a0, $zero, 0x131
/* EE2B8 80044DA8 24050005 */  addiu      $a1, $zero, 5
/* EE2BC 80044DAC AFBF0010 */  sw         $ra, 0x10($sp)
/* EE2C0 80044DB0 0C00D925 */  jal        func_80036494_DF9A4
/* EE2C4 80044DB4 24060017 */   addiu     $a2, $zero, 0x17
/* EE2C8 80044DB8 8C44000C */  lw         $a0, 0xc($v0)
/* EE2CC 80044DBC 24050040 */  addiu      $a1, $zero, 0x40
/* EE2D0 80044DC0 0C028D89 */  jal        func_800A3624
/* EE2D4 80044DC4 24060040 */   addiu     $a2, $zero, 0x40
/* EE2D8 80044DC8 8FBF0010 */  lw         $ra, 0x10($sp)
/* EE2DC 80044DCC 03E00008 */  jr         $ra
/* EE2E0 80044DD0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80044DD4_EE2E4
/* EE2E4 80044DD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EE2E8 80044DD8 AFBF0010 */  sw         $ra, 0x10($sp)
/* EE2EC 80044DDC 0C00E109 */  jal        func_80038424_E1934
/* EE2F0 80044DE0 00000000 */   nop
/* EE2F4 80044DE4 0C00E1B4 */  jal        func_800386D0_E1BE0
/* EE2F8 80044DE8 24040001 */   addiu     $a0, $zero, 1
/* EE2FC 80044DEC 8FBF0010 */  lw         $ra, 0x10($sp)
/* EE300 80044DF0 03E00008 */  jr         $ra
/* EE304 80044DF4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80044DF8_EE308
/* EE308 80044DF8 27BDFF90 */  addiu      $sp, $sp, -0x70
/* EE30C 80044DFC AFBF0064 */  sw         $ra, 0x64($sp)
/* EE310 80044E00 AFB20060 */  sw         $s2, 0x60($sp)
/* EE314 80044E04 AFB1005C */  sw         $s1, 0x5c($sp)
/* EE318 80044E08 AFB00058 */  sw         $s0, 0x58($sp)
/* EE31C 80044E0C F7B40068 */  sdc1       $f20, 0x68($sp)
/* EE320 80044E10 0C00E109 */  jal        func_80038424_E1934
/* EE324 80044E14 241000FF */   addiu     $s0, $zero, 0xff
/* EE328 80044E18 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EE32C 80044E1C 24040001 */   addiu     $a0, $zero, 1
/* EE330 80044E20 00409021 */  addu       $s2, $v0, $zero
/* EE334 80044E24 3C013DCC */  lui        $at, 0x3dcc
/* EE338 80044E28 3421CCCD */  ori        $at, $at, 0xcccd
/* EE33C 80044E2C 4481A000 */  mtc1       $at, $f20
/* EE340 80044E30 02402021 */  addu       $a0, $s2, $zero
/* EE344 80044E34 240500FC */  addiu      $a1, $zero, 0xfc
/* EE348 80044E38 AE400010 */  sw         $zero, 0x10($s2)
/* EE34C 80044E3C AE400014 */  sw         $zero, 0x14($s2)
/* EE350 80044E40 AE400018 */  sw         $zero, 0x18($s2)
/* EE354 80044E44 AE40001C */  sw         $zero, 0x1c($s2)
/* EE358 80044E48 AE400020 */  sw         $zero, 0x20($s2)
/* EE35C 80044E4C AE400024 */  sw         $zero, 0x24($s2)
/* EE360 80044E50 A6500074 */  sh         $s0, 0x74($s2)
/* EE364 80044E54 A6500076 */  sh         $s0, 0x76($s2)
/* EE368 80044E58 A6500078 */  sh         $s0, 0x78($s2)
/* EE36C 80044E5C A650007A */  sh         $s0, 0x7a($s2)
/* EE370 80044E60 0C00DFE6 */  jal        func_80037F98_E14A8
/* EE374 80044E64 E6540028 */   swc1      $f20, 0x28($s2)
/* EE378 80044E68 8E420004 */  lw         $v0, 4($s2)
/* EE37C 80044E6C A0400067 */  sb         $zero, 0x67($v0)
/* EE380 80044E70 8E430004 */  lw         $v1, 4($s2)
/* EE384 80044E74 90620066 */  lbu        $v0, 0x66($v1)
/* EE388 80044E78 24040002 */  addiu      $a0, $zero, 2
/* EE38C 80044E7C 34420007 */  ori        $v0, $v0, 7
/* EE390 80044E80 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EE394 80044E84 A0620066 */   sb        $v0, 0x66($v1)
/* EE398 80044E88 00409021 */  addu       $s2, $v0, $zero
/* EE39C 80044E8C 02402021 */  addu       $a0, $s2, $zero
/* EE3A0 80044E90 240500FE */  addiu      $a1, $zero, 0xfe
/* EE3A4 80044E94 240200C0 */  addiu      $v0, $zero, 0xc0
/* EE3A8 80044E98 AE400010 */  sw         $zero, 0x10($s2)
/* EE3AC 80044E9C AE400014 */  sw         $zero, 0x14($s2)
/* EE3B0 80044EA0 AE400018 */  sw         $zero, 0x18($s2)
/* EE3B4 80044EA4 E6540028 */  swc1       $f20, 0x28($s2)
/* EE3B8 80044EA8 AE40001C */  sw         $zero, 0x1c($s2)
/* EE3BC 80044EAC AE400020 */  sw         $zero, 0x20($s2)
/* EE3C0 80044EB0 AE400024 */  sw         $zero, 0x24($s2)
/* EE3C4 80044EB4 A6500074 */  sh         $s0, 0x74($s2)
/* EE3C8 80044EB8 A6500076 */  sh         $s0, 0x76($s2)
/* EE3CC 80044EBC A6500078 */  sh         $s0, 0x78($s2)
/* EE3D0 80044EC0 0C00DFE6 */  jal        func_80037F98_E14A8
/* EE3D4 80044EC4 A642007A */   sh        $v0, 0x7a($s2)
/* EE3D8 80044EC8 8E420004 */  lw         $v0, 4($s2)
/* EE3DC 80044ECC 2411000A */  addiu      $s1, $zero, 0xa
/* EE3E0 80044ED0 A0510067 */  sb         $s1, 0x67($v0)
/* EE3E4 80044ED4 8E430004 */  lw         $v1, 4($s2)
/* EE3E8 80044ED8 90620066 */  lbu        $v0, 0x66($v1)
/* EE3EC 80044EDC 24040003 */  addiu      $a0, $zero, 3
/* EE3F0 80044EE0 34420023 */  ori        $v0, $v0, 0x23
/* EE3F4 80044EE4 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EE3F8 80044EE8 A0620066 */   sb        $v0, 0x66($v1)
/* EE3FC 80044EEC 00409021 */  addu       $s2, $v0, $zero
/* EE400 80044EF0 02402021 */  addu       $a0, $s2, $zero
/* EE404 80044EF4 240500F6 */  addiu      $a1, $zero, 0xf6
/* EE408 80044EF8 AE400010 */  sw         $zero, 0x10($s2)
/* EE40C 80044EFC AE400014 */  sw         $zero, 0x14($s2)
/* EE410 80044F00 AE400018 */  sw         $zero, 0x18($s2)
/* EE414 80044F04 E6540028 */  swc1       $f20, 0x28($s2)
/* EE418 80044F08 AE40001C */  sw         $zero, 0x1c($s2)
/* EE41C 80044F0C AE400020 */  sw         $zero, 0x20($s2)
/* EE420 80044F10 AE400024 */  sw         $zero, 0x24($s2)
/* EE424 80044F14 A6500074 */  sh         $s0, 0x74($s2)
/* EE428 80044F18 A6500076 */  sh         $s0, 0x76($s2)
/* EE42C 80044F1C A6500078 */  sh         $s0, 0x78($s2)
/* EE430 80044F20 0C00DFE6 */  jal        func_80037F98_E14A8
/* EE434 80044F24 A650007A */   sh        $s0, 0x7a($s2)
/* EE438 80044F28 8E420004 */  lw         $v0, 4($s2)
/* EE43C 80044F2C A0400067 */  sb         $zero, 0x67($v0)
/* EE440 80044F30 8E430004 */  lw         $v1, 4($s2)
/* EE444 80044F34 90620066 */  lbu        $v0, 0x66($v1)
/* EE448 80044F38 24040004 */  addiu      $a0, $zero, 4
/* EE44C 80044F3C 34420003 */  ori        $v0, $v0, 3
/* EE450 80044F40 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EE454 80044F44 A0620066 */   sb        $v0, 0x66($v1)
/* EE458 80044F48 00409021 */  addu       $s2, $v0, $zero
/* EE45C 80044F4C 02402021 */  addu       $a0, $s2, $zero
/* EE460 80044F50 240500F7 */  addiu      $a1, $zero, 0xf7
/* EE464 80044F54 AE400010 */  sw         $zero, 0x10($s2)
/* EE468 80044F58 AE400014 */  sw         $zero, 0x14($s2)
/* EE46C 80044F5C AE400018 */  sw         $zero, 0x18($s2)
/* EE470 80044F60 E6540028 */  swc1       $f20, 0x28($s2)
/* EE474 80044F64 AE40001C */  sw         $zero, 0x1c($s2)
/* EE478 80044F68 AE400020 */  sw         $zero, 0x20($s2)
/* EE47C 80044F6C AE400024 */  sw         $zero, 0x24($s2)
/* EE480 80044F70 A6500074 */  sh         $s0, 0x74($s2)
/* EE484 80044F74 A6500076 */  sh         $s0, 0x76($s2)
/* EE488 80044F78 A6500078 */  sh         $s0, 0x78($s2)
/* EE48C 80044F7C 0C00DFE6 */  jal        func_80037F98_E14A8
/* EE490 80044F80 A650007A */   sh        $s0, 0x7a($s2)
/* EE494 80044F84 8E420004 */  lw         $v0, 4($s2)
/* EE498 80044F88 A0400067 */  sb         $zero, 0x67($v0)
/* EE49C 80044F8C 8E430004 */  lw         $v1, 4($s2)
/* EE4A0 80044F90 90620066 */  lbu        $v0, 0x66($v1)
/* EE4A4 80044F94 24040005 */  addiu      $a0, $zero, 5
/* EE4A8 80044F98 34420003 */  ori        $v0, $v0, 3
/* EE4AC 80044F9C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EE4B0 80044FA0 A0620066 */   sb        $v0, 0x66($v1)
/* EE4B4 80044FA4 00409021 */  addu       $s2, $v0, $zero
/* EE4B8 80044FA8 02402021 */  addu       $a0, $s2, $zero
/* EE4BC 80044FAC 2405010C */  addiu      $a1, $zero, 0x10c
/* EE4C0 80044FB0 24020090 */  addiu      $v0, $zero, 0x90
/* EE4C4 80044FB4 AE400010 */  sw         $zero, 0x10($s2)
/* EE4C8 80044FB8 AE400014 */  sw         $zero, 0x14($s2)
/* EE4CC 80044FBC AE400018 */  sw         $zero, 0x18($s2)
/* EE4D0 80044FC0 E6540028 */  swc1       $f20, 0x28($s2)
/* EE4D4 80044FC4 AE40001C */  sw         $zero, 0x1c($s2)
/* EE4D8 80044FC8 AE400020 */  sw         $zero, 0x20($s2)
/* EE4DC 80044FCC AE400024 */  sw         $zero, 0x24($s2)
/* EE4E0 80044FD0 A6500074 */  sh         $s0, 0x74($s2)
/* EE4E4 80044FD4 A6500076 */  sh         $s0, 0x76($s2)
/* EE4E8 80044FD8 A6500078 */  sh         $s0, 0x78($s2)
/* EE4EC 80044FDC 0C00DFE6 */  jal        func_80037F98_E14A8
/* EE4F0 80044FE0 A642007A */   sh        $v0, 0x7a($s2)
/* EE4F4 80044FE4 8E420004 */  lw         $v0, 4($s2)
/* EE4F8 80044FE8 A0510067 */  sb         $s1, 0x67($v0)
/* EE4FC 80044FEC 8E430004 */  lw         $v1, 4($s2)
/* EE500 80044FF0 90620066 */  lbu        $v0, 0x66($v1)
/* EE504 80044FF4 24040006 */  addiu      $a0, $zero, 6
/* EE508 80044FF8 34420023 */  ori        $v0, $v0, 0x23
/* EE50C 80044FFC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EE510 80045000 A0620066 */   sb        $v0, 0x66($v1)
/* EE514 80045004 00409021 */  addu       $s2, $v0, $zero
/* EE518 80045008 02402021 */  addu       $a0, $s2, $zero
/* EE51C 8004500C 2405010E */  addiu      $a1, $zero, 0x10e
/* EE520 80045010 24020070 */  addiu      $v0, $zero, 0x70
/* EE524 80045014 AE400010 */  sw         $zero, 0x10($s2)
/* EE528 80045018 AE400014 */  sw         $zero, 0x14($s2)
/* EE52C 8004501C AE400018 */  sw         $zero, 0x18($s2)
/* EE530 80045020 E6540028 */  swc1       $f20, 0x28($s2)
/* EE534 80045024 AE40001C */  sw         $zero, 0x1c($s2)
/* EE538 80045028 AE400020 */  sw         $zero, 0x20($s2)
/* EE53C 8004502C AE400024 */  sw         $zero, 0x24($s2)
/* EE540 80045030 A6500074 */  sh         $s0, 0x74($s2)
/* EE544 80045034 A6500076 */  sh         $s0, 0x76($s2)
/* EE548 80045038 A6500078 */  sh         $s0, 0x78($s2)
/* EE54C 8004503C 0C00DFE6 */  jal        func_80037F98_E14A8
/* EE550 80045040 A642007A */   sh        $v0, 0x7a($s2)
/* EE554 80045044 8E420004 */  lw         $v0, 4($s2)
/* EE558 80045048 A0510067 */  sb         $s1, 0x67($v0)
/* EE55C 8004504C 8E430004 */  lw         $v1, 4($s2)
/* EE560 80045050 90620066 */  lbu        $v0, 0x66($v1)
/* EE564 80045054 24040007 */  addiu      $a0, $zero, 7
/* EE568 80045058 34420023 */  ori        $v0, $v0, 0x23
/* EE56C 8004505C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EE570 80045060 A0620066 */   sb        $v0, 0x66($v1)
/* EE574 80045064 00409021 */  addu       $s2, $v0, $zero
/* EE578 80045068 02402021 */  addu       $a0, $s2, $zero
/* EE57C 8004506C 2405010F */  addiu      $a1, $zero, 0x10f
/* EE580 80045070 24020080 */  addiu      $v0, $zero, 0x80
/* EE584 80045074 AE400010 */  sw         $zero, 0x10($s2)
/* EE588 80045078 AE400014 */  sw         $zero, 0x14($s2)
/* EE58C 8004507C AE400018 */  sw         $zero, 0x18($s2)
/* EE590 80045080 E6540028 */  swc1       $f20, 0x28($s2)
/* EE594 80045084 AE40001C */  sw         $zero, 0x1c($s2)
/* EE598 80045088 AE400020 */  sw         $zero, 0x20($s2)
/* EE59C 8004508C AE400024 */  sw         $zero, 0x24($s2)
/* EE5A0 80045090 A6500074 */  sh         $s0, 0x74($s2)
/* EE5A4 80045094 A6500076 */  sh         $s0, 0x76($s2)
/* EE5A8 80045098 A6500078 */  sh         $s0, 0x78($s2)
/* EE5AC 8004509C 0C00DFE6 */  jal        func_80037F98_E14A8
/* EE5B0 800450A0 A642007A */   sh        $v0, 0x7a($s2)
/* EE5B4 800450A4 8E420004 */  lw         $v0, 4($s2)
/* EE5B8 800450A8 A0510067 */  sb         $s1, 0x67($v0)
/* EE5BC 800450AC 8E430004 */  lw         $v1, 4($s2)
/* EE5C0 800450B0 90620066 */  lbu        $v0, 0x66($v1)
/* EE5C4 800450B4 24040008 */  addiu      $a0, $zero, 8
/* EE5C8 800450B8 34420023 */  ori        $v0, $v0, 0x23
/* EE5CC 800450BC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EE5D0 800450C0 A0620066 */   sb        $v0, 0x66($v1)
/* EE5D4 800450C4 00409021 */  addu       $s2, $v0, $zero
/* EE5D8 800450C8 02402021 */  addu       $a0, $s2, $zero
/* EE5DC 800450CC 24050110 */  addiu      $a1, $zero, 0x110
/* EE5E0 800450D0 240200B0 */  addiu      $v0, $zero, 0xb0
/* EE5E4 800450D4 AE400010 */  sw         $zero, 0x10($s2)
/* EE5E8 800450D8 AE400014 */  sw         $zero, 0x14($s2)
/* EE5EC 800450DC AE400018 */  sw         $zero, 0x18($s2)
/* EE5F0 800450E0 E6540028 */  swc1       $f20, 0x28($s2)
/* EE5F4 800450E4 AE40001C */  sw         $zero, 0x1c($s2)
/* EE5F8 800450E8 AE400020 */  sw         $zero, 0x20($s2)
/* EE5FC 800450EC AE400024 */  sw         $zero, 0x24($s2)
/* EE600 800450F0 A6500074 */  sh         $s0, 0x74($s2)
/* EE604 800450F4 A6500076 */  sh         $s0, 0x76($s2)
/* EE608 800450F8 A6500078 */  sh         $s0, 0x78($s2)
/* EE60C 800450FC 0C00DFE6 */  jal        func_80037F98_E14A8
/* EE610 80045100 A642007A */   sh        $v0, 0x7a($s2)
/* EE614 80045104 8E420004 */  lw         $v0, 4($s2)
/* EE618 80045108 3C013F80 */  lui        $at, 0x3f80
/* EE61C 8004510C 4481A000 */  mtc1       $at, $f20
/* EE620 80045110 A0510067 */  sb         $s1, 0x67($v0)
/* EE624 80045114 8E430004 */  lw         $v1, 4($s2)
/* EE628 80045118 3C014150 */  lui        $at, 0x4150
/* EE62C 8004511C 44810000 */  mtc1       $at, $f0
/* EE630 80045120 3C014398 */  lui        $at, 0x4398
/* EE634 80045124 34218000 */  ori        $at, $at, 0x8000
/* EE638 80045128 44811000 */  mtc1       $at, $f2
/* EE63C 8004512C 90620066 */  lbu        $v0, 0x66($v1)
/* EE640 80045130 3C01C32A */  lui        $at, 0xc32a
/* EE644 80045134 44812000 */  mtc1       $at, $f4
/* EE648 80045138 34420023 */  ori        $v0, $v0, 0x23
/* EE64C 8004513C A0620066 */  sb         $v0, 0x66($v1)
/* EE650 80045140 3C018015 */  lui        $at, %hi(D_8014A064)
/* EE654 80045144 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EE658 80045148 3C018015 */  lui        $at, %hi(D_8014A068)
/* EE65C 8004514C AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* EE660 80045150 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EE664 80045154 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EE668 80045158 3C018015 */  lui        $at, %hi(D_8014A070)
/* EE66C 8004515C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EE670 80045160 3C018015 */  lui        $at, %hi(D_8014A074)
/* EE674 80045164 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* EE678 80045168 3C018015 */  lui        $at, %hi(D_8014A078)
/* EE67C 8004516C AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EE680 80045170 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EE684 80045174 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* EE688 80045178 3C018015 */  lui        $at, %hi(D_8014A080)
/* EE68C 8004517C E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* EE690 80045180 3C018015 */  lui        $at, %hi(D_8014A084)
/* EE694 80045184 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EE698 80045188 3C018015 */  lui        $at, %hi(D_8014A088)
/* EE69C 8004518C E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* EE6A0 80045190 0C00E339 */  jal        func_80038CE4_E21F4
/* EE6A4 80045194 2410FFFD */   addiu     $s0, $zero, -3
/* EE6A8 80045198 27A40010 */  addiu      $a0, $sp, 0x10
/* EE6AC 8004519C 3C0140A0 */  lui        $at, 0x40a0
/* EE6B0 800451A0 44810000 */  mtc1       $at, $f0
/* EE6B4 800451A4 240520C9 */  addiu      $a1, $zero, 0x20c9
/* EE6B8 800451A8 3C028007 */  lui        $v0, %hi(D_800690AC)
/* EE6BC 800451AC 244290AC */  addiu      $v0, $v0, %lo(D_800690AC)
/* EE6C0 800451B0 24110001 */  addiu      $s1, $zero, 1
/* EE6C4 800451B4 AFA20010 */  sw         $v0, 0x10($sp)
/* EE6C8 800451B8 24020003 */  addiu      $v0, $zero, 3
/* EE6CC 800451BC 3C018015 */  lui        $at, %hi(D_8014A054)
/* EE6D0 800451C0 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EE6D4 800451C4 3C018015 */  lui        $at, %hi(D_8014A050)
/* EE6D8 800451C8 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EE6DC 800451CC 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EE6E0 800451D0 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EE6E4 800451D4 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EE6E8 800451D8 E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* EE6EC 800451DC A3B00014 */  sb         $s0, 0x14($sp)
/* EE6F0 800451E0 A3A00015 */  sb         $zero, 0x15($sp)
/* EE6F4 800451E4 A3B10016 */  sb         $s1, 0x16($sp)
/* EE6F8 800451E8 A3A20017 */  sb         $v0, 0x17($sp)
/* EE6FC 800451EC 3C018017 */  lui        $at, %hi(D_8016E568)
/* EE700 800451F0 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* EE704 800451F4 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EE708 800451F8 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* EE70C 800451FC 0C00DE82 */  jal        func_80037A08_E0F18
/* EE710 80045200 24060003 */   addiu     $a2, $zero, 3
/* EE714 80045204 27A40010 */  addiu      $a0, $sp, 0x10
/* EE718 80045208 240520CA */  addiu      $a1, $zero, 0x20ca
/* EE71C 8004520C 24060003 */  addiu      $a2, $zero, 3
/* EE720 80045210 3C028007 */  lui        $v0, %hi(D_800690C0)
/* EE724 80045214 244290C0 */  addiu      $v0, $v0, %lo(D_800690C0)
/* EE728 80045218 AFA20010 */  sw         $v0, 0x10($sp)
/* EE72C 8004521C 2402FFFF */  addiu      $v0, $zero, -1
/* EE730 80045220 A3A20015 */  sb         $v0, 0x15($sp)
/* EE734 80045224 24020002 */  addiu      $v0, $zero, 2
/* EE738 80045228 A3B00014 */  sb         $s0, 0x14($sp)
/* EE73C 8004522C A3B10016 */  sb         $s1, 0x16($sp)
/* EE740 80045230 0C00DE82 */  jal        func_80037A08_E0F18
/* EE744 80045234 A3A20017 */   sb        $v0, 0x17($sp)
/* EE748 80045238 8FBF0064 */  lw         $ra, 0x64($sp)
/* EE74C 8004523C 8FB20060 */  lw         $s2, 0x60($sp)
/* EE750 80045240 8FB1005C */  lw         $s1, 0x5c($sp)
/* EE754 80045244 8FB00058 */  lw         $s0, 0x58($sp)
/* EE758 80045248 D7B40068 */  ldc1       $f20, 0x68($sp)
/* EE75C 8004524C 03E00008 */  jr         $ra
/* EE760 80045250 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_80045254_EE764
/* EE764 80045254 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* EE768 80045258 AFBF0010 */  sw         $ra, 0x10($sp)
/* EE76C 8004525C 0C00D889 */  jal        func_80036224_DF734
/* EE770 80045260 00000000 */   nop
/* EE774 80045264 3C04802F */  lui        $a0, 0x802f
/* EE778 80045268 34849800 */  ori        $a0, $a0, 0x9800
/* EE77C 8004526C 24050132 */  addiu      $a1, $zero, 0x132
/* EE780 80045270 24060009 */  addiu      $a2, $zero, 9
/* EE784 80045274 0C00D9E0 */  jal        func_80036780_DFC90
/* EE788 80045278 2407003F */   addiu     $a3, $zero, 0x3f
/* EE78C 8004527C 8C44000C */  lw         $a0, 0xc($v0)
/* EE790 80045280 24050040 */  addiu      $a1, $zero, 0x40
/* EE794 80045284 0C028D89 */  jal        func_800A3624
/* EE798 80045288 240600C0 */   addiu     $a2, $zero, 0xc0
/* EE79C 8004528C 8FBF0010 */  lw         $ra, 0x10($sp)
/* EE7A0 80045290 03E00008 */  jr         $ra
/* EE7A4 80045294 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80045298_EE7A8
/* EE7A8 80045298 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EE7AC 8004529C AFBF001C */  sw         $ra, 0x1c($sp)
/* EE7B0 800452A0 0C00D889 */  jal        func_80036224_DF734
/* EE7B4 800452A4 AFB00018 */   sw        $s0, 0x18($sp)
/* EE7B8 800452A8 3C048030 */  lui        $a0, 0x8030
/* EE7BC 800452AC 34848610 */  ori        $a0, $a0, 0x8610
/* EE7C0 800452B0 2405013E */  addiu      $a1, $zero, 0x13e
/* EE7C4 800452B4 24060009 */  addiu      $a2, $zero, 9
/* EE7C8 800452B8 0C00D9E0 */  jal        func_80036780_DFC90
/* EE7CC 800452BC 2407003F */   addiu     $a3, $zero, 0x3f
/* EE7D0 800452C0 8C44000C */  lw         $a0, 0xc($v0)
/* EE7D4 800452C4 24050040 */  addiu      $a1, $zero, 0x40
/* EE7D8 800452C8 240600C0 */  addiu      $a2, $zero, 0xc0
/* EE7DC 800452CC 0C028D89 */  jal        func_800A3624
/* EE7E0 800452D0 00008021 */   addu      $s0, $zero, $zero
/* EE7E4 800452D4 320600FF */  andi       $a2, $s0, 0xff
.L800452D8:
/* EE7E8 800452D8 24C4013B */  addiu      $a0, $a2, 0x13b
/* EE7EC 800452DC 24050001 */  addiu      $a1, $zero, 1
/* EE7F0 800452E0 0C00D925 */  jal        func_80036494_DF9A4
/* EE7F4 800452E4 24C6003A */   addiu     $a2, $a2, 0x3a
/* EE7F8 800452E8 8C44000C */  lw         $a0, 0xc($v0)
/* EE7FC 800452EC 24050260 */  addiu      $a1, $zero, 0x260
/* EE800 800452F0 24060240 */  addiu      $a2, $zero, 0x240
/* EE804 800452F4 0C028D89 */  jal        func_800A3624
/* EE808 800452F8 26100001 */   addiu     $s0, $s0, 1
/* EE80C 800452FC 320200FF */  andi       $v0, $s0, 0xff
/* EE810 80045300 2C420003 */  sltiu      $v0, $v0, 3
/* EE814 80045304 1440FFF4 */  bnez       $v0, .L800452D8
/* EE818 80045308 320600FF */   andi      $a2, $s0, 0xff
/* EE81C 8004530C 27A40010 */  addiu      $a0, $sp, 0x10
/* EE820 80045310 240520C9 */  addiu      $a1, $zero, 0x20c9
/* EE824 80045314 24060002 */  addiu      $a2, $zero, 2
/* EE828 80045318 3C028007 */  lui        $v0, %hi(D_800690F0)
/* EE82C 8004531C 244290F0 */  addiu      $v0, $v0, %lo(D_800690F0)
/* EE830 80045320 AFA20010 */  sw         $v0, 0x10($sp)
/* EE834 80045324 2402FFFE */  addiu      $v0, $zero, -2
/* EE838 80045328 A3A20014 */  sb         $v0, 0x14($sp)
/* EE83C 8004532C 24020001 */  addiu      $v0, $zero, 1
/* EE840 80045330 A3A20016 */  sb         $v0, 0x16($sp)
/* EE844 80045334 24020003 */  addiu      $v0, $zero, 3
/* EE848 80045338 A3A00015 */  sb         $zero, 0x15($sp)
/* EE84C 8004533C 0C00DE82 */  jal        func_80037A08_E0F18
/* EE850 80045340 A3A20017 */   sb        $v0, 0x17($sp)
/* EE854 80045344 8FBF001C */  lw         $ra, 0x1c($sp)
/* EE858 80045348 8FB00018 */  lw         $s0, 0x18($sp)
/* EE85C 8004534C 03E00008 */  jr         $ra
/* EE860 80045350 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80045354_EE864
/* EE864 80045354 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* EE868 80045358 AFBF0020 */  sw         $ra, 0x20($sp)
/* EE86C 8004535C 0C00D889 */  jal        func_80036224_DF734
/* EE870 80045360 00000000 */   nop
/* EE874 80045364 3C048031 */  lui        $a0, 0x8031
/* EE878 80045368 34847420 */  ori        $a0, $a0, 0x7420
/* EE87C 8004536C 24050147 */  addiu      $a1, $zero, 0x147
/* EE880 80045370 24060009 */  addiu      $a2, $zero, 9
/* EE884 80045374 0C00D9E0 */  jal        func_80036780_DFC90
/* EE888 80045378 2407003F */   addiu     $a3, $zero, 0x3f
/* EE88C 8004537C 8C44000C */  lw         $a0, 0xc($v0)
/* EE890 80045380 24050040 */  addiu      $a1, $zero, 0x40
/* EE894 80045384 0C028D89 */  jal        func_800A3624
/* EE898 80045388 240600C0 */   addiu     $a2, $zero, 0xc0
/* EE89C 8004538C 3C048007 */  lui        $a0, %hi(D_80069108)
/* EE8A0 80045390 24849108 */  addiu      $a0, $a0, %lo(D_80069108)
/* EE8A4 80045394 2405FFFE */  addiu      $a1, $zero, -2
/* EE8A8 80045398 2402FFFE */  addiu      $v0, $zero, -2
/* EE8AC 8004539C A3A2001C */  sb         $v0, 0x1c($sp)
/* EE8B0 800453A0 A3A2001D */  sb         $v0, 0x1d($sp)
/* EE8B4 800453A4 24020001 */  addiu      $v0, $zero, 1
/* EE8B8 800453A8 A3A2001E */  sb         $v0, 0x1e($sp)
/* EE8BC 800453AC 24020002 */  addiu      $v0, $zero, 2
/* EE8C0 800453B0 AFA40018 */  sw         $a0, 0x18($sp)
/* EE8C4 800453B4 0C029D2A */  jal        func_800A74A8
/* EE8C8 800453B8 A3A2001F */   sb        $v0, 0x1f($sp)
/* EE8CC 800453BC 27A40018 */  addiu      $a0, $sp, 0x18
/* EE8D0 800453C0 240520C9 */  addiu      $a1, $zero, 0x20c9
/* EE8D4 800453C4 240620D3 */  addiu      $a2, $zero, 0x20d3
/* EE8D8 800453C8 00021FC2 */  srl        $v1, $v0, 0x1f
/* EE8DC 800453CC 00621821 */  addu       $v1, $v1, $v0
/* EE8E0 800453D0 00031843 */  sra        $v1, $v1, 1
/* EE8E4 800453D4 240700A0 */  addiu      $a3, $zero, 0xa0
/* EE8E8 800453D8 00E33823 */  subu       $a3, $a3, $v1
/* EE8EC 800453DC 00073C00 */  sll        $a3, $a3, 0x10
/* EE8F0 800453E0 00073C03 */  sra        $a3, $a3, 0x10
/* EE8F4 800453E4 240200A7 */  addiu      $v0, $zero, 0xa7
/* EE8F8 800453E8 0C00DEF7 */  jal        func_80037BDC_E10EC
/* EE8FC 800453EC AFA20010 */   sw        $v0, 0x10($sp)
/* EE900 800453F0 8FBF0020 */  lw         $ra, 0x20($sp)
/* EE904 800453F4 03E00008 */  jr         $ra
/* EE908 800453F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800453FC_EE90C
/* EE90C 800453FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* EE910 80045400 AFBF0024 */  sw         $ra, 0x24($sp)
/* EE914 80045404 0C00D889 */  jal        func_80036224_DF734
/* EE918 80045408 AFB00020 */   sw        $s0, 0x20($sp)
/* EE91C 8004540C 3C048032 */  lui        $a0, 0x8032
/* EE920 80045410 34846230 */  ori        $a0, $a0, 0x6230
/* EE924 80045414 24050153 */  addiu      $a1, $zero, 0x153
/* EE928 80045418 24060009 */  addiu      $a2, $zero, 9
/* EE92C 8004541C 0C00D9E0 */  jal        func_80036780_DFC90
/* EE930 80045420 2407003F */   addiu     $a3, $zero, 0x3f
/* EE934 80045424 8C44000C */  lw         $a0, 0xc($v0)
/* EE938 80045428 24050040 */  addiu      $a1, $zero, 0x40
/* EE93C 8004542C 240600C0 */  addiu      $a2, $zero, 0xc0
/* EE940 80045430 0C028D89 */  jal        func_800A3624
/* EE944 80045434 00008021 */   addu      $s0, $zero, $zero
/* EE948 80045438 320600FF */  andi       $a2, $s0, 0xff
.L8004543C:
/* EE94C 8004543C 24C40150 */  addiu      $a0, $a2, 0x150
/* EE950 80045440 00002821 */  addu       $a1, $zero, $zero
/* EE954 80045444 0C00D925 */  jal        func_80036494_DF9A4
/* EE958 80045448 24C6003A */   addiu     $a2, $a2, 0x3a
/* EE95C 8004544C 8C44000C */  lw         $a0, 0xc($v0)
/* EE960 80045450 24050100 */  addiu      $a1, $zero, 0x100
/* EE964 80045454 24060100 */  addiu      $a2, $zero, 0x100
/* EE968 80045458 0C028D89 */  jal        func_800A3624
/* EE96C 8004545C 26100001 */   addiu     $s0, $s0, 1
/* EE970 80045460 320200FF */  andi       $v0, $s0, 0xff
/* EE974 80045464 2C420003 */  sltiu      $v0, $v0, 3
/* EE978 80045468 1440FFF4 */  bnez       $v0, .L8004543C
/* EE97C 8004546C 320600FF */   andi      $a2, $s0, 0xff
/* EE980 80045470 3C048007 */  lui        $a0, %hi(D_8006913C)
/* EE984 80045474 2484913C */  addiu      $a0, $a0, %lo(D_8006913C)
/* EE988 80045478 2405FFFE */  addiu      $a1, $zero, -2
/* EE98C 8004547C 2402FFFE */  addiu      $v0, $zero, -2
/* EE990 80045480 A3A2001C */  sb         $v0, 0x1c($sp)
/* EE994 80045484 24020001 */  addiu      $v0, $zero, 1
/* EE998 80045488 A3A2001E */  sb         $v0, 0x1e($sp)
/* EE99C 8004548C 24020002 */  addiu      $v0, $zero, 2
/* EE9A0 80045490 AFA40018 */  sw         $a0, 0x18($sp)
/* EE9A4 80045494 A3A0001D */  sb         $zero, 0x1d($sp)
/* EE9A8 80045498 0C029D2A */  jal        func_800A74A8
/* EE9AC 8004549C A3A2001F */   sb        $v0, 0x1f($sp)
/* EE9B0 800454A0 27A40018 */  addiu      $a0, $sp, 0x18
/* EE9B4 800454A4 240520C9 */  addiu      $a1, $zero, 0x20c9
/* EE9B8 800454A8 240620D3 */  addiu      $a2, $zero, 0x20d3
/* EE9BC 800454AC 00021FC2 */  srl        $v1, $v0, 0x1f
/* EE9C0 800454B0 00621821 */  addu       $v1, $v1, $v0
/* EE9C4 800454B4 00031843 */  sra        $v1, $v1, 1
/* EE9C8 800454B8 240700A0 */  addiu      $a3, $zero, 0xa0
/* EE9CC 800454BC 00E33823 */  subu       $a3, $a3, $v1
/* EE9D0 800454C0 00073C00 */  sll        $a3, $a3, 0x10
/* EE9D4 800454C4 00073C03 */  sra        $a3, $a3, 0x10
/* EE9D8 800454C8 240200A7 */  addiu      $v0, $zero, 0xa7
/* EE9DC 800454CC 0C00DEF7 */  jal        func_80037BDC_E10EC
/* EE9E0 800454D0 AFA20010 */   sw        $v0, 0x10($sp)
/* EE9E4 800454D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* EE9E8 800454D8 8FB00020 */  lw         $s0, 0x20($sp)
/* EE9EC 800454DC 03E00008 */  jr         $ra
/* EE9F0 800454E0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_800454E4_EE9F4
/* EE9F4 800454E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EE9F8 800454E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* EE9FC 800454EC AFB10014 */  sw         $s1, 0x14($sp)
/* EEA00 800454F0 0C00D889 */  jal        func_80036224_DF734
/* EEA04 800454F4 AFB00010 */   sw        $s0, 0x10($sp)
/* EEA08 800454F8 3C048033 */  lui        $a0, 0x8033
/* EEA0C 800454FC 34845040 */  ori        $a0, $a0, 0x5040
/* EEA10 80045500 2405015C */  addiu      $a1, $zero, 0x15c
/* EEA14 80045504 24060009 */  addiu      $a2, $zero, 9
/* EEA18 80045508 0C00D9E0 */  jal        func_80036780_DFC90
/* EEA1C 8004550C 2407003F */   addiu     $a3, $zero, 0x3f
/* EEA20 80045510 8C44000C */  lw         $a0, 0xc($v0)
/* EEA24 80045514 24050040 */  addiu      $a1, $zero, 0x40
/* EEA28 80045518 240600C0 */  addiu      $a2, $zero, 0xc0
/* EEA2C 8004551C 0C028D89 */  jal        func_800A3624
/* EEA30 80045520 00008821 */   addu      $s1, $zero, $zero
/* EEA34 80045524 322600FF */  andi       $a2, $s1, 0xff
.L80045528:
/* EEA38 80045528 24C40165 */  addiu      $a0, $a2, 0x165
/* EEA3C 8004552C 24050006 */  addiu      $a1, $zero, 6
/* EEA40 80045530 0C00D925 */  jal        func_80036494_DF9A4
/* EEA44 80045534 24C6003A */   addiu     $a2, $a2, 0x3a
/* EEA48 80045538 00408021 */  addu       $s0, $v0, $zero
/* EEA4C 8004553C 8E04000C */  lw         $a0, 0xc($s0)
/* EEA50 80045540 0C02932F */  jal        func_800A4CBC
/* EEA54 80045544 26310001 */   addiu     $s1, $s1, 1
/* EEA58 80045548 8E04000C */  lw         $a0, 0xc($s0)
/* EEA5C 8004554C 24050100 */  addiu      $a1, $zero, 0x100
/* EEA60 80045550 0C028D89 */  jal        func_800A3624
/* EEA64 80045554 240601C0 */   addiu     $a2, $zero, 0x1c0
/* EEA68 80045558 322200FF */  andi       $v0, $s1, 0xff
/* EEA6C 8004555C 2C420005 */  sltiu      $v0, $v0, 5
/* EEA70 80045560 1440FFF1 */  bnez       $v0, .L80045528
/* EEA74 80045564 322600FF */   andi      $a2, $s1, 0xff
/* EEA78 80045568 8FBF0018 */  lw         $ra, 0x18($sp)
/* EEA7C 8004556C 8FB10014 */  lw         $s1, 0x14($sp)
/* EEA80 80045570 8FB00010 */  lw         $s0, 0x10($sp)
/* EEA84 80045574 03E00008 */  jr         $ra
/* EEA88 80045578 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8004557C_EEA8C
/* EEA8C 8004557C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* EEA90 80045580 AFBF002C */  sw         $ra, 0x2c($sp)
/* EEA94 80045584 AFB20028 */  sw         $s2, 0x28($sp)
/* EEA98 80045588 AFB10024 */  sw         $s1, 0x24($sp)
/* EEA9C 8004558C 0C00D889 */  jal        func_80036224_DF734
/* EEAA0 80045590 AFB00020 */   sw        $s0, 0x20($sp)
/* EEAA4 80045594 2404016A */  addiu      $a0, $zero, 0x16a
/* EEAA8 80045598 24050001 */  addiu      $a1, $zero, 1
/* EEAAC 8004559C 0C00D925 */  jal        func_80036494_DF9A4
/* EEAB0 800455A0 24060044 */   addiu     $a2, $zero, 0x44
/* EEAB4 800455A4 00408021 */  addu       $s0, $v0, $zero
/* EEAB8 800455A8 8E04000C */  lw         $a0, 0xc($s0)
/* EEABC 800455AC 24050038 */  addiu      $a1, $zero, 0x38
/* EEAC0 800455B0 0C028F9A */  jal        func_800A3E68
/* EEAC4 800455B4 24060071 */   addiu     $a2, $zero, 0x71
/* EEAC8 800455B8 8E04000C */  lw         $a0, 0xc($s0)
/* EEACC 800455BC 24050040 */  addiu      $a1, $zero, 0x40
/* EEAD0 800455C0 0C028D89 */  jal        func_800A3624
/* EEAD4 800455C4 240600C0 */   addiu     $a2, $zero, 0xc0
/* EEAD8 800455C8 3C048034 */  lui        $a0, 0x8034
/* EEADC 800455CC 34843E50 */  ori        $a0, $a0, 0x3e50
/* EEAE0 800455D0 2405016D */  addiu      $a1, $zero, 0x16d
/* EEAE4 800455D4 24060002 */  addiu      $a2, $zero, 2
/* EEAE8 800455D8 0C00D9E0 */  jal        func_80036780_DFC90
/* EEAEC 800455DC 2407003F */   addiu     $a3, $zero, 0x3f
/* EEAF0 800455E0 00408021 */  addu       $s0, $v0, $zero
/* EEAF4 800455E4 8E02000C */  lw         $v0, 0xc($s0)
/* EEAF8 800455E8 00008821 */  addu       $s1, $zero, $zero
/* EEAFC 800455EC 9443001E */  lhu        $v1, 0x1e($v0)
/* EEB00 800455F0 241200FF */  addiu      $s2, $zero, 0xff
/* EEB04 800455F4 240500FF */  addiu      $a1, $zero, 0xff
/* EEB08 800455F8 3063FFF7 */  andi       $v1, $v1, 0xfff7
/* EEB0C 800455FC A443001E */  sh         $v1, 0x1e($v0)
/* EEB10 80045600 240200FF */  addiu      $v0, $zero, 0xff
/* EEB14 80045604 AFA20010 */  sw         $v0, 0x10($sp)
/* EEB18 80045608 8E04000C */  lw         $a0, 0xc($s0)
/* EEB1C 8004560C 240600FF */  addiu      $a2, $zero, 0xff
/* EEB20 80045610 0C028E41 */  jal        func_800A3904
/* EEB24 80045614 240700FF */   addiu     $a3, $zero, 0xff
/* EEB28 80045618 322600FF */  andi       $a2, $s1, 0xff
.L8004561C:
/* EEB2C 8004561C 24C4016B */  addiu      $a0, $a2, 0x16b
/* EEB30 80045620 24050002 */  addiu      $a1, $zero, 2
/* EEB34 80045624 0C00D925 */  jal        func_80036494_DF9A4
/* EEB38 80045628 24C6003A */   addiu     $a2, $a2, 0x3a
/* EEB3C 8004562C AFB20010 */  sw         $s2, 0x10($sp)
/* EEB40 80045630 8C44000C */  lw         $a0, 0xc($v0)
/* EEB44 80045634 240500FF */  addiu      $a1, $zero, 0xff
/* EEB48 80045638 240600FF */  addiu      $a2, $zero, 0xff
/* EEB4C 8004563C 240700FF */  addiu      $a3, $zero, 0xff
/* EEB50 80045640 0C028E41 */  jal        func_800A3904
/* EEB54 80045644 26310001 */   addiu     $s1, $s1, 1
/* EEB58 80045648 322200FF */  andi       $v0, $s1, 0xff
/* EEB5C 8004564C 2C420002 */  sltiu      $v0, $v0, 2
/* EEB60 80045650 1440FFF2 */  bnez       $v0, .L8004561C
/* EEB64 80045654 322600FF */   andi      $a2, $s1, 0xff
/* EEB68 80045658 27A40018 */  addiu      $a0, $sp, 0x18
/* EEB6C 8004565C 240520C9 */  addiu      $a1, $zero, 0x20c9
/* EEB70 80045660 24060002 */  addiu      $a2, $zero, 2
/* EEB74 80045664 3C028007 */  lui        $v0, %hi(D_80069164)
/* EEB78 80045668 24429164 */  addiu      $v0, $v0, %lo(D_80069164)
/* EEB7C 8004566C AFA20018 */  sw         $v0, 0x18($sp)
/* EEB80 80045670 2402FFFE */  addiu      $v0, $zero, -2
/* EEB84 80045674 A3A2001C */  sb         $v0, 0x1c($sp)
/* EEB88 80045678 24020001 */  addiu      $v0, $zero, 1
/* EEB8C 8004567C A3A2001E */  sb         $v0, 0x1e($sp)
/* EEB90 80045680 24020003 */  addiu      $v0, $zero, 3
/* EEB94 80045684 A3A0001D */  sb         $zero, 0x1d($sp)
/* EEB98 80045688 0C00DE82 */  jal        func_80037A08_E0F18
/* EEB9C 8004568C A3A2001F */   sb        $v0, 0x1f($sp)
/* EEBA0 80045690 8FBF002C */  lw         $ra, 0x2c($sp)
/* EEBA4 80045694 8FB20028 */  lw         $s2, 0x28($sp)
/* EEBA8 80045698 8FB10024 */  lw         $s1, 0x24($sp)
/* EEBAC 8004569C 8FB00020 */  lw         $s0, 0x20($sp)
/* EEBB0 800456A0 03E00008 */  jr         $ra
/* EEBB4 800456A4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_800456A8_EEBB8
/* EEBB8 800456A8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* EEBBC 800456AC AFBF0070 */  sw         $ra, 0x70($sp)
/* EEBC0 800456B0 AFB5006C */  sw         $s5, 0x6c($sp)
/* EEBC4 800456B4 AFB40068 */  sw         $s4, 0x68($sp)
/* EEBC8 800456B8 AFB30064 */  sw         $s3, 0x64($sp)
/* EEBCC 800456BC AFB20060 */  sw         $s2, 0x60($sp)
/* EEBD0 800456C0 AFB1005C */  sw         $s1, 0x5c($sp)
/* EEBD4 800456C4 AFB00058 */  sw         $s0, 0x58($sp)
/* EEBD8 800456C8 F7B40078 */  sdc1       $f20, 0x78($sp)
/* EEBDC 800456CC 0C00E109 */  jal        func_80038424_E1934
/* EEBE0 800456D0 0000A021 */   addu      $s4, $zero, $zero
/* EEBE4 800456D4 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EEBE8 800456D8 24040022 */   addiu     $a0, $zero, 0x22
/* EEBEC 800456DC 00408021 */  addu       $s0, $v0, $zero
/* EEBF0 800456E0 3C01BF63 */  lui        $at, 0xbf63
/* EEBF4 800456E4 3421D70A */  ori        $at, $at, 0xd70a
/* EEBF8 800456E8 44810000 */  mtc1       $at, $f0
/* EEBFC 800456EC 3C01C1A8 */  lui        $at, 0xc1a8
/* EEC00 800456F0 44811000 */  mtc1       $at, $f2
/* EEC04 800456F4 3C014170 */  lui        $at, 0x4170
/* EEC08 800456F8 44812000 */  mtc1       $at, $f4
/* EEC0C 800456FC 3C013CA3 */  lui        $at, 0x3ca3
/* EEC10 80045700 3421D70A */  ori        $at, $at, 0xd70a
/* EEC14 80045704 44813000 */  mtc1       $at, $f6
/* EEC18 80045708 3C01418A */  lui        $at, 0x418a
/* EEC1C 8004570C 342151EC */  ori        $at, $at, 0x51ec
/* EEC20 80045710 44814000 */  mtc1       $at, $f8
/* EEC24 80045714 02002021 */  addu       $a0, $s0, $zero
/* EEC28 80045718 2405008C */  addiu      $a1, $zero, 0x8c
/* EEC2C 8004571C 240200FF */  addiu      $v0, $zero, 0xff
/* EEC30 80045720 A6020074 */  sh         $v0, 0x74($s0)
/* EEC34 80045724 A6020076 */  sh         $v0, 0x76($s0)
/* EEC38 80045728 A6020078 */  sh         $v0, 0x78($s0)
/* EEC3C 8004572C A602007A */  sh         $v0, 0x7a($s0)
/* EEC40 80045730 2402FFFF */  addiu      $v0, $zero, -1
/* EEC44 80045734 AE000020 */  sw         $zero, 0x20($s0)
/* EEC48 80045738 AE000024 */  sw         $zero, 0x24($s0)
/* EEC4C 8004573C A6020070 */  sh         $v0, 0x70($s0)
/* EEC50 80045740 E6000010 */  swc1       $f0, 0x10($s0)
/* EEC54 80045744 E6020014 */  swc1       $f2, 0x14($s0)
/* EEC58 80045748 E6040018 */  swc1       $f4, 0x18($s0)
/* EEC5C 8004574C E6060028 */  swc1       $f6, 0x28($s0)
/* EEC60 80045750 0C00DFE6 */  jal        func_80037F98_E14A8
/* EEC64 80045754 E608001C */   swc1      $f8, 0x1c($s0)
/* EEC68 80045758 8E020004 */  lw         $v0, 4($s0)
/* EEC6C 8004575C A0400067 */  sb         $zero, 0x67($v0)
/* EEC70 80045760 8E030004 */  lw         $v1, 4($s0)
/* EEC74 80045764 90620066 */  lbu        $v0, 0x66($v1)
/* EEC78 80045768 34420007 */  ori        $v0, $v0, 7
/* EEC7C 8004576C A0620066 */  sb         $v0, 0x66($v1)
/* EEC80 80045770 8E040004 */  lw         $a0, 4($s0)
/* EEC84 80045774 3C058007 */  lui        $a1, %hi(D_8006A094)
/* EEC88 80045778 0C0284DC */  jal        func_800A1370
/* EEC8C 8004577C 24A5A094 */   addiu     $a1, $a1, %lo(D_8006A094)
/* EEC90 80045780 8E040004 */  lw         $a0, 4($s0)
/* EEC94 80045784 3045FFFF */  andi       $a1, $v0, 0xffff
/* EEC98 80045788 0C02869D */  jal        func_800A1A74
/* EEC9C 8004578C 00003021 */   addu      $a2, $zero, $zero
/* EECA0 80045790 3C013F80 */  lui        $at, 0x3f80
/* EECA4 80045794 4481A000 */  mtc1       $at, $f20
/* EECA8 80045798 3C014012 */  lui        $at, 0x4012
/* EECAC 8004579C 34218F5C */  ori        $at, $at, 0x8f5c
/* EECB0 800457A0 44810000 */  mtc1       $at, $f0
/* EECB4 800457A4 3C01428B */  lui        $at, 0x428b
/* EECB8 800457A8 34212E14 */  ori        $at, $at, 0x2e14
/* EECBC 800457AC 44811000 */  mtc1       $at, $f2
/* EECC0 800457B0 3C01C26F */  lui        $at, 0xc26f
/* EECC4 800457B4 342170A4 */  ori        $at, $at, 0x70a4
/* EECC8 800457B8 44812000 */  mtc1       $at, $f4
/* EECCC 800457BC 3C018015 */  lui        $at, %hi(D_8014A064)
/* EECD0 800457C0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EECD4 800457C4 3C018015 */  lui        $at, %hi(D_8014A068)
/* EECD8 800457C8 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* EECDC 800457CC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EECE0 800457D0 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EECE4 800457D4 3C018015 */  lui        $at, %hi(D_8014A070)
/* EECE8 800457D8 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EECEC 800457DC 3C018015 */  lui        $at, %hi(D_8014A078)
/* EECF0 800457E0 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EECF4 800457E4 3C018015 */  lui        $at, %hi(D_8014A084)
/* EECF8 800457E8 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EECFC 800457EC 3C018015 */  lui        $at, %hi(D_8014A074)
/* EED00 800457F0 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* EED04 800457F4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EED08 800457F8 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* EED0C 800457FC 3C018015 */  lui        $at, %hi(D_8014A080)
/* EED10 80045800 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* EED14 80045804 3C018015 */  lui        $at, %hi(D_8014A088)
/* EED18 80045808 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* EED1C 8004580C 0C00E339 */  jal        func_80038CE4_E21F4
/* EED20 80045810 24100001 */   addiu     $s0, $zero, 1
/* EED24 80045814 00002021 */  addu       $a0, $zero, $zero
/* EED28 80045818 24050188 */  addiu      $a1, $zero, 0x188
/* EED2C 8004581C 24060006 */  addiu      $a2, $zero, 6
/* EED30 80045820 24070003 */  addiu      $a3, $zero, 3
/* EED34 80045824 24020037 */  addiu      $v0, $zero, 0x37
/* EED38 80045828 3C018015 */  lui        $at, %hi(D_8014A054)
/* EED3C 8004582C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EED40 80045830 3C018015 */  lui        $at, %hi(D_8014A050)
/* EED44 80045834 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EED48 80045838 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EED4C 8004583C AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EED50 80045840 3C018017 */  lui        $at, %hi(D_8016E568)
/* EED54 80045844 E434E568 */  swc1       $f20, %lo(D_8016E568)($at)
/* EED58 80045848 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EED5C 8004584C E434D0D0 */  swc1       $f20, %lo(D_8016D0D0)($at)
/* EED60 80045850 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EED64 80045854 E434D0D4 */  swc1       $f20, %lo(D_8016D0D4)($at)
/* EED68 80045858 AFA00010 */  sw         $zero, 0x10($sp)
/* EED6C 8004585C 0C00DB46 */  jal        func_80036D18_E0228
/* EED70 80045860 AFA20014 */   sw        $v0, 0x14($sp)
/* EED74 80045864 00409821 */  addu       $s3, $v0, $zero
/* EED78 80045868 8E64000C */  lw         $a0, 0xc($s3)
/* EED7C 8004586C 3C074040 */  lui        $a3, 0x4040
/* EED80 80045870 4406A000 */  mfc1       $a2, $f20
/* EED84 80045874 00000000 */  nop
/* EED88 80045878 0C02915B */  jal        func_800A456C
/* EED8C 8004587C 00002821 */   addu      $a1, $zero, $zero
/* EED90 80045880 8E64000C */  lw         $a0, 0xc($s3)
/* EED94 80045884 24050040 */  addiu      $a1, $zero, 0x40
/* EED98 80045888 0C028D89 */  jal        func_800A3624
/* EED9C 8004588C 24060040 */   addiu     $a2, $zero, 0x40
/* EEDA0 80045890 8E63000C */  lw         $v1, 0xc($s3)
/* EEDA4 80045894 9462001E */  lhu        $v0, 0x1e($v1)
/* EEDA8 80045898 24040189 */  addiu      $a0, $zero, 0x189
/* EEDAC 8004589C 24050002 */  addiu      $a1, $zero, 2
/* EEDB0 800458A0 34420104 */  ori        $v0, $v0, 0x104
/* EEDB4 800458A4 A462001E */  sh         $v0, 0x1e($v1)
/* EEDB8 800458A8 8E62000C */  lw         $v0, 0xc($s3)
/* EEDBC 800458AC 24060035 */  addiu      $a2, $zero, 0x35
/* EEDC0 800458B0 0C00D925 */  jal        func_80036494_DF9A4
/* EEDC4 800458B4 A450001C */   sh        $s0, 0x1c($v0)
/* EEDC8 800458B8 00409821 */  addu       $s3, $v0, $zero
/* EEDCC 800458BC 8E64000C */  lw         $a0, 0xc($s3)
/* EEDD0 800458C0 24050130 */  addiu      $a1, $zero, 0x130
/* EEDD4 800458C4 0C028D89 */  jal        func_800A3624
/* EEDD8 800458C8 24060140 */   addiu     $a2, $zero, 0x140
/* EEDDC 800458CC 8E63000C */  lw         $v1, 0xc($s3)
/* EEDE0 800458D0 9462001E */  lhu        $v0, 0x1e($v1)
/* EEDE4 800458D4 24040189 */  addiu      $a0, $zero, 0x189
/* EEDE8 800458D8 34420104 */  ori        $v0, $v0, 0x104
/* EEDEC 800458DC A462001E */  sh         $v0, 0x1e($v1)
/* EEDF0 800458E0 8E62000C */  lw         $v0, 0xc($s3)
/* EEDF4 800458E4 24050002 */  addiu      $a1, $zero, 2
/* EEDF8 800458E8 24060036 */  addiu      $a2, $zero, 0x36
/* EEDFC 800458EC 0C00D925 */  jal        func_80036494_DF9A4
/* EEE00 800458F0 A450001C */   sh        $s0, 0x1c($v0)
/* EEE04 800458F4 00409821 */  addu       $s3, $v0, $zero
/* EEE08 800458F8 8E64000C */  lw         $a0, 0xc($s3)
/* EEE0C 800458FC 240503B0 */  addiu      $a1, $zero, 0x3b0
/* EEE10 80045900 0C028D89 */  jal        func_800A3624
/* EEE14 80045904 240600B8 */   addiu     $a2, $zero, 0xb8
/* EEE18 80045908 8E63000C */  lw         $v1, 0xc($s3)
/* EEE1C 8004590C 9462001E */  lhu        $v0, 0x1e($v1)
/* EEE20 80045910 24040183 */  addiu      $a0, $zero, 0x183
/* EEE24 80045914 34420104 */  ori        $v0, $v0, 0x104
/* EEE28 80045918 A462001E */  sh         $v0, 0x1e($v1)
/* EEE2C 8004591C 8E62000C */  lw         $v0, 0xc($s3)
/* EEE30 80045920 24050002 */  addiu      $a1, $zero, 2
/* EEE34 80045924 24060023 */  addiu      $a2, $zero, 0x23
/* EEE38 80045928 0C00D925 */  jal        func_80036494_DF9A4
/* EEE3C 8004592C A450001C */   sh        $s0, 0x1c($v0)
/* EEE40 80045930 8C44000C */  lw         $a0, 0xc($v0)
/* EEE44 80045934 24050040 */  addiu      $a1, $zero, 0x40
/* EEE48 80045938 0C028D89 */  jal        func_800A3624
/* EEE4C 8004593C 24060040 */   addiu     $a2, $zero, 0x40
/* EEE50 80045940 24040185 */  addiu      $a0, $zero, 0x185
/* EEE54 80045944 24050002 */  addiu      $a1, $zero, 2
/* EEE58 80045948 0C00D925 */  jal        func_80036494_DF9A4
/* EEE5C 8004594C 2406002C */   addiu     $a2, $zero, 0x2c
/* EEE60 80045950 8C44000C */  lw         $a0, 0xc($v0)
/* EEE64 80045954 24050040 */  addiu      $a1, $zero, 0x40
/* EEE68 80045958 0C028D89 */  jal        func_800A3624
/* EEE6C 8004595C 240602AC */   addiu     $a2, $zero, 0x2ac
/* EEE70 80045960 24040184 */  addiu      $a0, $zero, 0x184
.L80045964:
/* EEE74 80045964 24050002 */  addiu      $a1, $zero, 2
/* EEE78 80045968 329100FF */  andi       $s1, $s4, 0xff
/* EEE7C 8004596C 0C00D925 */  jal        func_80036494_DF9A4
/* EEE80 80045970 26260024 */   addiu     $a2, $s1, 0x24
/* EEE84 80045974 8C44000C */  lw         $a0, 0xc($v0)
/* EEE88 80045978 328200FF */  andi       $v0, $s4, 0xff
/* EEE8C 8004597C 00028080 */  sll        $s0, $v0, 2
/* EEE90 80045980 02028021 */  addu       $s0, $s0, $v0
/* EEE94 80045984 00108080 */  sll        $s0, $s0, 2
/* EEE98 80045988 02028021 */  addu       $s0, $s0, $v0
/* EEE9C 8004598C 00108040 */  sll        $s0, $s0, 1
/* EEEA0 80045990 26050027 */  addiu      $a1, $s0, 0x27
/* EEEA4 80045994 00052C80 */  sll        $a1, $a1, 0x12
/* EEEA8 80045998 00052C03 */  sra        $a1, $a1, 0x10
/* EEEAC 8004599C 24060040 */  addiu      $a2, $zero, 0x40
/* EEEB0 800459A0 0C028D89 */  jal        func_800A3624
/* EEEB4 800459A4 26940001 */   addiu     $s4, $s4, 1
/* EEEB8 800459A8 24040186 */  addiu      $a0, $zero, 0x186
/* EEEBC 800459AC 24050002 */  addiu      $a1, $zero, 2
/* EEEC0 800459B0 0C00D925 */  jal        func_80036494_DF9A4
/* EEEC4 800459B4 2626002D */   addiu     $a2, $s1, 0x2d
/* EEEC8 800459B8 8C44000C */  lw         $a0, 0xc($v0)
/* EEECC 800459BC 2610004C */  addiu      $s0, $s0, 0x4c
/* EEED0 800459C0 00108480 */  sll        $s0, $s0, 0x12
/* EEED4 800459C4 00102C03 */  sra        $a1, $s0, 0x10
/* EEED8 800459C8 0C028D89 */  jal        func_800A3624
/* EEEDC 800459CC 240602AC */   addiu     $a2, $zero, 0x2ac
/* EEEE0 800459D0 328200FF */  andi       $v0, $s4, 0xff
/* EEEE4 800459D4 2C420007 */  sltiu      $v0, $v0, 7
/* EEEE8 800459D8 1440FFE2 */  bnez       $v0, .L80045964
/* EEEEC 800459DC 24040184 */   addiu     $a0, $zero, 0x184
/* EEEF0 800459E0 24040187 */  addiu      $a0, $zero, 0x187
/* EEEF4 800459E4 24050002 */  addiu      $a1, $zero, 2
/* EEEF8 800459E8 0C00D925 */  jal        func_80036494_DF9A4
/* EEEFC 800459EC 24060022 */   addiu     $a2, $zero, 0x22
/* EEF00 800459F0 00409821 */  addu       $s3, $v0, $zero
/* EEF04 800459F4 8E64000C */  lw         $a0, 0xc($s3)
/* EEF08 800459F8 24050340 */  addiu      $a1, $zero, 0x340
/* EEF0C 800459FC 0C028D89 */  jal        func_800A3624
/* EEF10 80045A00 240601B8 */   addiu     $a2, $zero, 0x1b8
/* EEF14 80045A04 8E63000C */  lw         $v1, 0xc($s3)
/* EEF18 80045A08 9462001E */  lhu        $v0, 0x1e($v1)
/* EEF1C 80045A0C 24040023 */  addiu      $a0, $zero, 0x23
/* EEF20 80045A10 240530C9 */  addiu      $a1, $zero, 0x30c9
/* EEF24 80045A14 34420004 */  ori        $v0, $v0, 4
/* EEF28 80045A18 0C00DD19 */  jal        func_80037464_E0974
/* EEF2C 80045A1C A462001E */   sh        $v0, 0x1e($v1)
/* EEF30 80045A20 00409821 */  addu       $s3, $v0, $zero
/* EEF34 80045A24 8E64000C */  lw         $a0, 0xc($s3)
/* EEF38 80045A28 24050038 */  addiu      $a1, $zero, 0x38
/* EEF3C 80045A2C 0C028D89 */  jal        func_800A3624
/* EEF40 80045A30 24060040 */   addiu     $a2, $zero, 0x40
/* EEF44 80045A34 24100001 */  addiu      $s0, $zero, 1
/* EEF48 80045A38 AFB00010 */  sw         $s0, 0x10($sp)
/* EEF4C 80045A3C 8E64000C */  lw         $a0, 0xc($s3)
/* EEF50 80045A40 240500FF */  addiu      $a1, $zero, 0xff
/* EEF54 80045A44 240600FF */  addiu      $a2, $zero, 0xff
/* EEF58 80045A48 0C028E41 */  jal        func_800A3904
/* EEF5C 80045A4C 240700FF */   addiu     $a3, $zero, 0xff
/* EEF60 80045A50 8E62000C */  lw         $v0, 0xc($s3)
/* EEF64 80045A54 24040023 */  addiu      $a0, $zero, 0x23
/* EEF68 80045A58 240530CA */  addiu      $a1, $zero, 0x30ca
/* EEF6C 80045A5C 0C00DD19 */  jal        func_80037464_E0974
/* EEF70 80045A60 A440001C */   sh        $zero, 0x1c($v0)
/* EEF74 80045A64 00409821 */  addu       $s3, $v0, $zero
/* EEF78 80045A68 8E64000C */  lw         $a0, 0xc($s3)
/* EEF7C 80045A6C 24050048 */  addiu      $a1, $zero, 0x48
/* EEF80 80045A70 0C028D89 */  jal        func_800A3624
/* EEF84 80045A74 24060040 */   addiu     $a2, $zero, 0x40
/* EEF88 80045A78 AFB00010 */  sw         $s0, 0x10($sp)
/* EEF8C 80045A7C 8E64000C */  lw         $a0, 0xc($s3)
/* EEF90 80045A80 240500FF */  addiu      $a1, $zero, 0xff
/* EEF94 80045A84 240600FF */  addiu      $a2, $zero, 0xff
/* EEF98 80045A88 0C028E41 */  jal        func_800A3904
/* EEF9C 80045A8C 240700FF */   addiu     $a3, $zero, 0xff
/* EEFA0 80045A90 8E62000C */  lw         $v0, 0xc($s3)
/* EEFA4 80045A94 2404002C */  addiu      $a0, $zero, 0x2c
/* EEFA8 80045A98 240530CB */  addiu      $a1, $zero, 0x30cb
/* EEFAC 80045A9C 0C00DD19 */  jal        func_80037464_E0974
/* EEFB0 80045AA0 A440001C */   sh        $zero, 0x1c($v0)
/* EEFB4 80045AA4 00409821 */  addu       $s3, $v0, $zero
/* EEFB8 80045AA8 8E64000C */  lw         $a0, 0xc($s3)
/* EEFBC 80045AAC 24050038 */  addiu      $a1, $zero, 0x38
/* EEFC0 80045AB0 0C028D89 */  jal        func_800A3624
/* EEFC4 80045AB4 240602AC */   addiu     $a2, $zero, 0x2ac
/* EEFC8 80045AB8 AFB00010 */  sw         $s0, 0x10($sp)
/* EEFCC 80045ABC 8E64000C */  lw         $a0, 0xc($s3)
/* EEFD0 80045AC0 240500FF */  addiu      $a1, $zero, 0xff
/* EEFD4 80045AC4 240600FF */  addiu      $a2, $zero, 0xff
/* EEFD8 80045AC8 0C028E41 */  jal        func_800A3904
/* EEFDC 80045ACC 240700FF */   addiu     $a3, $zero, 0xff
/* EEFE0 80045AD0 8E62000C */  lw         $v0, 0xc($s3)
/* EEFE4 80045AD4 2404002C */  addiu      $a0, $zero, 0x2c
/* EEFE8 80045AD8 240530CC */  addiu      $a1, $zero, 0x30cc
/* EEFEC 80045ADC 0C00DD19 */  jal        func_80037464_E0974
/* EEFF0 80045AE0 A440001C */   sh        $zero, 0x1c($v0)
/* EEFF4 80045AE4 00409821 */  addu       $s3, $v0, $zero
/* EEFF8 80045AE8 8E64000C */  lw         $a0, 0xc($s3)
/* EEFFC 80045AEC 24050048 */  addiu      $a1, $zero, 0x48
/* EF000 80045AF0 0C028D89 */  jal        func_800A3624
/* EF004 80045AF4 240602AC */   addiu     $a2, $zero, 0x2ac
/* EF008 80045AF8 AFB00010 */  sw         $s0, 0x10($sp)
/* EF00C 80045AFC 8E64000C */  lw         $a0, 0xc($s3)
/* EF010 80045B00 240500FF */  addiu      $a1, $zero, 0xff
/* EF014 80045B04 240600FF */  addiu      $a2, $zero, 0xff
/* EF018 80045B08 0C028E41 */  jal        func_800A3904
/* EF01C 80045B0C 240700FF */   addiu     $a3, $zero, 0xff
/* EF020 80045B10 8E62000C */  lw         $v0, 0xc($s3)
/* EF024 80045B14 24040022 */  addiu      $a0, $zero, 0x22
/* EF028 80045B18 240530CD */  addiu      $a1, $zero, 0x30cd
/* EF02C 80045B1C 0C00DD19 */  jal        func_80037464_E0974
/* EF030 80045B20 A440001C */   sh        $zero, 0x1c($v0)
/* EF034 80045B24 00409821 */  addu       $s3, $v0, $zero
/* EF038 80045B28 8E64000C */  lw         $a0, 0xc($s3)
/* EF03C 80045B2C 24050338 */  addiu      $a1, $zero, 0x338
/* EF040 80045B30 0C028D89 */  jal        func_800A3624
/* EF044 80045B34 240601B8 */   addiu     $a2, $zero, 0x1b8
/* EF048 80045B38 AFB00010 */  sw         $s0, 0x10($sp)
/* EF04C 80045B3C 8E64000C */  lw         $a0, 0xc($s3)
/* EF050 80045B40 240500FF */  addiu      $a1, $zero, 0xff
/* EF054 80045B44 240600FF */  addiu      $a2, $zero, 0xff
/* EF058 80045B48 0C028E41 */  jal        func_800A3904
/* EF05C 80045B4C 240700FF */   addiu     $a3, $zero, 0xff
/* EF060 80045B50 8E62000C */  lw         $v0, 0xc($s3)
/* EF064 80045B54 24040022 */  addiu      $a0, $zero, 0x22
/* EF068 80045B58 240530CE */  addiu      $a1, $zero, 0x30ce
/* EF06C 80045B5C 0C00DD19 */  jal        func_80037464_E0974
/* EF070 80045B60 A440001C */   sh        $zero, 0x1c($v0)
/* EF074 80045B64 00409821 */  addu       $s3, $v0, $zero
/* EF078 80045B68 8E64000C */  lw         $a0, 0xc($s3)
/* EF07C 80045B6C 24050348 */  addiu      $a1, $zero, 0x348
/* EF080 80045B70 0C028D89 */  jal        func_800A3624
/* EF084 80045B74 240601B8 */   addiu     $a2, $zero, 0x1b8
/* EF088 80045B78 AFB00010 */  sw         $s0, 0x10($sp)
/* EF08C 80045B7C 8E64000C */  lw         $a0, 0xc($s3)
/* EF090 80045B80 240500FF */  addiu      $a1, $zero, 0xff
/* EF094 80045B84 240600FF */  addiu      $a2, $zero, 0xff
/* EF098 80045B88 0C028E41 */  jal        func_800A3904
/* EF09C 80045B8C 240700FF */   addiu     $a3, $zero, 0xff
/* EF0A0 80045B90 8E62000C */  lw         $v0, 0xc($s3)
/* EF0A4 80045B94 0000A021 */  addu       $s4, $zero, $zero
/* EF0A8 80045B98 24150001 */  addiu      $s5, $zero, 1
/* EF0AC 80045B9C A440001C */  sh         $zero, 0x1c($v0)
/* EF0B0 80045BA0 24040024 */  addiu      $a0, $zero, 0x24
.L80045BA4:
/* EF0B4 80045BA4 329000FF */  andi       $s0, $s4, 0xff
/* EF0B8 80045BA8 00109080 */  sll        $s2, $s0, 2
/* EF0BC 80045BAC 0C00DD19 */  jal        func_80037464_E0974
/* EF0C0 80045BB0 264530CF */   addiu     $a1, $s2, 0x30cf
/* EF0C4 80045BB4 00409821 */  addu       $s3, $v0, $zero
/* EF0C8 80045BB8 8E64000C */  lw         $a0, 0xc($s3)
/* EF0CC 80045BBC 02508821 */  addu       $s1, $s2, $s0
/* EF0D0 80045BC0 00118880 */  sll        $s1, $s1, 2
/* EF0D4 80045BC4 02308821 */  addu       $s1, $s1, $s0
/* EF0D8 80045BC8 00118840 */  sll        $s1, $s1, 1
/* EF0DC 80045BCC 26250025 */  addiu      $a1, $s1, 0x25
/* EF0E0 80045BD0 00052C80 */  sll        $a1, $a1, 0x12
/* EF0E4 80045BD4 00052C03 */  sra        $a1, $a1, 0x10
/* EF0E8 80045BD8 0C028D89 */  jal        func_800A3624
/* EF0EC 80045BDC 24060040 */   addiu     $a2, $zero, 0x40
/* EF0F0 80045BE0 AFB50010 */  sw         $s5, 0x10($sp)
/* EF0F4 80045BE4 8E64000C */  lw         $a0, 0xc($s3)
/* EF0F8 80045BE8 240500FF */  addiu      $a1, $zero, 0xff
/* EF0FC 80045BEC 240600FF */  addiu      $a2, $zero, 0xff
/* EF100 80045BF0 0C028E41 */  jal        func_800A3904
/* EF104 80045BF4 240700FF */   addiu     $a3, $zero, 0xff
/* EF108 80045BF8 8E62000C */  lw         $v0, 0xc($s3)
/* EF10C 80045BFC 24040024 */  addiu      $a0, $zero, 0x24
/* EF110 80045C00 264530D0 */  addiu      $a1, $s2, 0x30d0
/* EF114 80045C04 0C00DD19 */  jal        func_80037464_E0974
/* EF118 80045C08 A440001C */   sh        $zero, 0x1c($v0)
/* EF11C 80045C0C 00409821 */  addu       $s3, $v0, $zero
/* EF120 80045C10 8E64000C */  lw         $a0, 0xc($s3)
/* EF124 80045C14 26250029 */  addiu      $a1, $s1, 0x29
/* EF128 80045C18 00052C80 */  sll        $a1, $a1, 0x12
/* EF12C 80045C1C 00052C03 */  sra        $a1, $a1, 0x10
/* EF130 80045C20 0C028D89 */  jal        func_800A3624
/* EF134 80045C24 24060040 */   addiu     $a2, $zero, 0x40
/* EF138 80045C28 AFB50010 */  sw         $s5, 0x10($sp)
/* EF13C 80045C2C 8E64000C */  lw         $a0, 0xc($s3)
/* EF140 80045C30 240500FF */  addiu      $a1, $zero, 0xff
/* EF144 80045C34 240600FF */  addiu      $a2, $zero, 0xff
/* EF148 80045C38 0C028E41 */  jal        func_800A3904
/* EF14C 80045C3C 240700FF */   addiu     $a3, $zero, 0xff
/* EF150 80045C40 8E62000C */  lw         $v0, 0xc($s3)
/* EF154 80045C44 2404002D */  addiu      $a0, $zero, 0x2d
/* EF158 80045C48 264530D1 */  addiu      $a1, $s2, 0x30d1
/* EF15C 80045C4C 0C00DD19 */  jal        func_80037464_E0974
/* EF160 80045C50 A440001C */   sh        $zero, 0x1c($v0)
/* EF164 80045C54 00409821 */  addu       $s3, $v0, $zero
/* EF168 80045C58 8E64000C */  lw         $a0, 0xc($s3)
/* EF16C 80045C5C 2625004A */  addiu      $a1, $s1, 0x4a
/* EF170 80045C60 00052C80 */  sll        $a1, $a1, 0x12
/* EF174 80045C64 00052C03 */  sra        $a1, $a1, 0x10
/* EF178 80045C68 0C028D89 */  jal        func_800A3624
/* EF17C 80045C6C 240602AC */   addiu     $a2, $zero, 0x2ac
/* EF180 80045C70 AFB50010 */  sw         $s5, 0x10($sp)
/* EF184 80045C74 8E64000C */  lw         $a0, 0xc($s3)
/* EF188 80045C78 240500FF */  addiu      $a1, $zero, 0xff
/* EF18C 80045C7C 240600FF */  addiu      $a2, $zero, 0xff
/* EF190 80045C80 0C028E41 */  jal        func_800A3904
/* EF194 80045C84 240700FF */   addiu     $a3, $zero, 0xff
/* EF198 80045C88 8E62000C */  lw         $v0, 0xc($s3)
/* EF19C 80045C8C 2404002D */  addiu      $a0, $zero, 0x2d
/* EF1A0 80045C90 264530D2 */  addiu      $a1, $s2, 0x30d2
/* EF1A4 80045C94 0C00DD19 */  jal        func_80037464_E0974
/* EF1A8 80045C98 A440001C */   sh        $zero, 0x1c($v0)
/* EF1AC 80045C9C 00409821 */  addu       $s3, $v0, $zero
/* EF1B0 80045CA0 8E64000C */  lw         $a0, 0xc($s3)
/* EF1B4 80045CA4 2631004E */  addiu      $s1, $s1, 0x4e
/* EF1B8 80045CA8 00118C80 */  sll        $s1, $s1, 0x12
/* EF1BC 80045CAC 00112C03 */  sra        $a1, $s1, 0x10
/* EF1C0 80045CB0 0C028D89 */  jal        func_800A3624
/* EF1C4 80045CB4 240602AC */   addiu     $a2, $zero, 0x2ac
/* EF1C8 80045CB8 AFB50010 */  sw         $s5, 0x10($sp)
/* EF1CC 80045CBC 8E64000C */  lw         $a0, 0xc($s3)
/* EF1D0 80045CC0 240500FF */  addiu      $a1, $zero, 0xff
/* EF1D4 80045CC4 240600FF */  addiu      $a2, $zero, 0xff
/* EF1D8 80045CC8 0C028E41 */  jal        func_800A3904
/* EF1DC 80045CCC 240700FF */   addiu     $a3, $zero, 0xff
/* EF1E0 80045CD0 8E62000C */  lw         $v0, 0xc($s3)
/* EF1E4 80045CD4 26940001 */  addiu      $s4, $s4, 1
/* EF1E8 80045CD8 A440001C */  sh         $zero, 0x1c($v0)
/* EF1EC 80045CDC 328200FF */  andi       $v0, $s4, 0xff
/* EF1F0 80045CE0 2C420007 */  sltiu      $v0, $v0, 7
/* EF1F4 80045CE4 1440FFAF */  bnez       $v0, .L80045BA4
/* EF1F8 80045CE8 24040024 */   addiu     $a0, $zero, 0x24
/* EF1FC 80045CEC 8FBF0070 */  lw         $ra, 0x70($sp)
/* EF200 80045CF0 8FB5006C */  lw         $s5, 0x6c($sp)
/* EF204 80045CF4 8FB40068 */  lw         $s4, 0x68($sp)
/* EF208 80045CF8 8FB30064 */  lw         $s3, 0x64($sp)
/* EF20C 80045CFC 8FB20060 */  lw         $s2, 0x60($sp)
/* EF210 80045D00 8FB1005C */  lw         $s1, 0x5c($sp)
/* EF214 80045D04 8FB00058 */  lw         $s0, 0x58($sp)
/* EF218 80045D08 D7B40078 */  ldc1       $f20, 0x78($sp)
/* EF21C 80045D0C 03E00008 */  jr         $ra
/* EF220 80045D10 27BD0080 */   addiu     $sp, $sp, 0x80

glabel func_80045D14_EF224
/* EF224 80045D14 27BDFF78 */  addiu      $sp, $sp, -0x88
/* EF228 80045D18 AFBF0064 */  sw         $ra, 0x64($sp)
/* EF22C 80045D1C AFB20060 */  sw         $s2, 0x60($sp)
/* EF230 80045D20 AFB1005C */  sw         $s1, 0x5c($sp)
/* EF234 80045D24 AFB00058 */  sw         $s0, 0x58($sp)
/* EF238 80045D28 F7BA0080 */  sdc1       $f26, 0x80($sp)
/* EF23C 80045D2C F7B80078 */  sdc1       $f24, 0x78($sp)
/* EF240 80045D30 F7B60070 */  sdc1       $f22, 0x70($sp)
/* EF244 80045D34 F7B40068 */  sdc1       $f20, 0x68($sp)
/* EF248 80045D38 0C00E109 */  jal        func_80038424_E1934
/* EF24C 80045D3C 241000FF */   addiu     $s0, $zero, 0xff
/* EF250 80045D40 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF254 80045D44 2404001E */   addiu     $a0, $zero, 0x1e
/* EF258 80045D48 00409021 */  addu       $s2, $v0, $zero
/* EF25C 80045D4C 3C01C1F0 */  lui        $at, 0xc1f0
/* EF260 80045D50 4481A000 */  mtc1       $at, $f20
/* EF264 80045D54 3C01417B */  lui        $at, 0x417b
/* EF268 80045D58 3421AE14 */  ori        $at, $at, 0xae14
/* EF26C 80045D5C 44810000 */  mtc1       $at, $f0
/* EF270 80045D60 3C013D8F */  lui        $at, 0x3d8f
/* EF274 80045D64 34215C29 */  ori        $at, $at, 0x5c29
/* EF278 80045D68 4481B000 */  mtc1       $at, $f22
/* EF27C 80045D6C 02402021 */  addu       $a0, $s2, $zero
/* EF280 80045D70 240500C2 */  addiu      $a1, $zero, 0xc2
/* EF284 80045D74 AE400018 */  sw         $zero, 0x18($s2)
/* EF288 80045D78 AE40001C */  sw         $zero, 0x1c($s2)
/* EF28C 80045D7C AE400020 */  sw         $zero, 0x20($s2)
/* EF290 80045D80 AE400024 */  sw         $zero, 0x24($s2)
/* EF294 80045D84 A6500074 */  sh         $s0, 0x74($s2)
/* EF298 80045D88 A6500076 */  sh         $s0, 0x76($s2)
/* EF29C 80045D8C A6500078 */  sh         $s0, 0x78($s2)
/* EF2A0 80045D90 A650007A */  sh         $s0, 0x7a($s2)
/* EF2A4 80045D94 E6540010 */  swc1       $f20, 0x10($s2)
/* EF2A8 80045D98 E6400014 */  swc1       $f0, 0x14($s2)
/* EF2AC 80045D9C 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF2B0 80045DA0 E6560028 */   swc1      $f22, 0x28($s2)
/* EF2B4 80045DA4 8E420004 */  lw         $v0, 4($s2)
/* EF2B8 80045DA8 A0400067 */  sb         $zero, 0x67($v0)
/* EF2BC 80045DAC 8E430004 */  lw         $v1, 4($s2)
/* EF2C0 80045DB0 90620066 */  lbu        $v0, 0x66($v1)
/* EF2C4 80045DB4 2404001F */  addiu      $a0, $zero, 0x1f
/* EF2C8 80045DB8 34420007 */  ori        $v0, $v0, 7
/* EF2CC 80045DBC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF2D0 80045DC0 A0620066 */   sb        $v0, 0x66($v1)
/* EF2D4 80045DC4 00409021 */  addu       $s2, $v0, $zero
/* EF2D8 80045DC8 3C01C080 */  lui        $at, 0xc080
/* EF2DC 80045DCC 44810000 */  mtc1       $at, $f0
/* EF2E0 80045DD0 02402021 */  addu       $a0, $s2, $zero
/* EF2E4 80045DD4 24050046 */  addiu      $a1, $zero, 0x46
/* EF2E8 80045DD8 E6540010 */  swc1       $f20, 0x10($s2)
/* EF2EC 80045DDC AE400018 */  sw         $zero, 0x18($s2)
/* EF2F0 80045DE0 E6560028 */  swc1       $f22, 0x28($s2)
/* EF2F4 80045DE4 AE40001C */  sw         $zero, 0x1c($s2)
/* EF2F8 80045DE8 AE400020 */  sw         $zero, 0x20($s2)
/* EF2FC 80045DEC AE400024 */  sw         $zero, 0x24($s2)
/* EF300 80045DF0 A6500074 */  sh         $s0, 0x74($s2)
/* EF304 80045DF4 A6500076 */  sh         $s0, 0x76($s2)
/* EF308 80045DF8 A6500078 */  sh         $s0, 0x78($s2)
/* EF30C 80045DFC A650007A */  sh         $s0, 0x7a($s2)
/* EF310 80045E00 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF314 80045E04 E6400014 */   swc1      $f0, 0x14($s2)
/* EF318 80045E08 8E420004 */  lw         $v0, 4($s2)
/* EF31C 80045E0C A0400067 */  sb         $zero, 0x67($v0)
/* EF320 80045E10 8E430004 */  lw         $v1, 4($s2)
/* EF324 80045E14 90620066 */  lbu        $v0, 0x66($v1)
/* EF328 80045E18 24040020 */  addiu      $a0, $zero, 0x20
/* EF32C 80045E1C 34420007 */  ori        $v0, $v0, 7
/* EF330 80045E20 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF334 80045E24 A0620066 */   sb        $v0, 0x66($v1)
/* EF338 80045E28 00409021 */  addu       $s2, $v0, $zero
/* EF33C 80045E2C 3C01BFE6 */  lui        $at, 0xbfe6
/* EF340 80045E30 34216666 */  ori        $at, $at, 0x6666
/* EF344 80045E34 44810000 */  mtc1       $at, $f0
/* EF348 80045E38 3C01C144 */  lui        $at, 0xc144
/* EF34C 80045E3C 3421CCCD */  ori        $at, $at, 0xcccd
/* EF350 80045E40 4481A000 */  mtc1       $at, $f20
/* EF354 80045E44 3C01C0A0 */  lui        $at, 0xc0a0
/* EF358 80045E48 4481D000 */  mtc1       $at, $f26
/* EF35C 80045E4C 3C013BCB */  lui        $at, 0x3bcb
/* EF360 80045E50 3421295F */  ori        $at, $at, 0x295f
/* EF364 80045E54 4481B000 */  mtc1       $at, $f22
/* EF368 80045E58 3C014334 */  lui        $at, 0x4334
/* EF36C 80045E5C 4481C000 */  mtc1       $at, $f24
/* EF370 80045E60 02402021 */  addu       $a0, $s2, $zero
/* EF374 80045E64 240500C6 */  addiu      $a1, $zero, 0xc6
/* EF378 80045E68 2411FFFF */  addiu      $s1, $zero, -1
/* EF37C 80045E6C AE40001C */  sw         $zero, 0x1c($s2)
/* EF380 80045E70 AE400024 */  sw         $zero, 0x24($s2)
/* EF384 80045E74 A6500074 */  sh         $s0, 0x74($s2)
/* EF388 80045E78 A6500076 */  sh         $s0, 0x76($s2)
/* EF38C 80045E7C A6500078 */  sh         $s0, 0x78($s2)
/* EF390 80045E80 A650007A */  sh         $s0, 0x7a($s2)
/* EF394 80045E84 A6510070 */  sh         $s1, 0x70($s2)
/* EF398 80045E88 E6540014 */  swc1       $f20, 0x14($s2)
/* EF39C 80045E8C E65A0018 */  swc1       $f26, 0x18($s2)
/* EF3A0 80045E90 E6560028 */  swc1       $f22, 0x28($s2)
/* EF3A4 80045E94 E6580020 */  swc1       $f24, 0x20($s2)
/* EF3A8 80045E98 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF3AC 80045E9C E6400010 */   swc1      $f0, 0x10($s2)
/* EF3B0 80045EA0 8E420004 */  lw         $v0, 4($s2)
/* EF3B4 80045EA4 A0400067 */  sb         $zero, 0x67($v0)
/* EF3B8 80045EA8 8E430004 */  lw         $v1, 4($s2)
/* EF3BC 80045EAC 90620066 */  lbu        $v0, 0x66($v1)
/* EF3C0 80045EB0 24040021 */  addiu      $a0, $zero, 0x21
/* EF3C4 80045EB4 34420007 */  ori        $v0, $v0, 7
/* EF3C8 80045EB8 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF3CC 80045EBC A0620066 */   sb        $v0, 0x66($v1)
/* EF3D0 80045EC0 00409021 */  addu       $s2, $v0, $zero
/* EF3D4 80045EC4 3C01C073 */  lui        $at, 0xc073
/* EF3D8 80045EC8 34213333 */  ori        $at, $at, 0x3333
/* EF3DC 80045ECC 44810000 */  mtc1       $at, $f0
/* EF3E0 80045ED0 02402021 */  addu       $a0, $s2, $zero
/* EF3E4 80045ED4 240500C6 */  addiu      $a1, $zero, 0xc6
/* EF3E8 80045ED8 E6540014 */  swc1       $f20, 0x14($s2)
/* EF3EC 80045EDC E65A0018 */  swc1       $f26, 0x18($s2)
/* EF3F0 80045EE0 E6560028 */  swc1       $f22, 0x28($s2)
/* EF3F4 80045EE4 AE40001C */  sw         $zero, 0x1c($s2)
/* EF3F8 80045EE8 E6580020 */  swc1       $f24, 0x20($s2)
/* EF3FC 80045EEC AE400024 */  sw         $zero, 0x24($s2)
/* EF400 80045EF0 A6500074 */  sh         $s0, 0x74($s2)
/* EF404 80045EF4 A6500076 */  sh         $s0, 0x76($s2)
/* EF408 80045EF8 A6500078 */  sh         $s0, 0x78($s2)
/* EF40C 80045EFC A650007A */  sh         $s0, 0x7a($s2)
/* EF410 80045F00 A6510070 */  sh         $s1, 0x70($s2)
/* EF414 80045F04 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF418 80045F08 E6400010 */   swc1      $f0, 0x10($s2)
/* EF41C 80045F0C 8E420004 */  lw         $v0, 4($s2)
/* EF420 80045F10 A0400067 */  sb         $zero, 0x67($v0)
/* EF424 80045F14 8E430004 */  lw         $v1, 4($s2)
/* EF428 80045F18 90620066 */  lbu        $v0, 0x66($v1)
/* EF42C 80045F1C 24040022 */  addiu      $a0, $zero, 0x22
/* EF430 80045F20 34420007 */  ori        $v0, $v0, 7
/* EF434 80045F24 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF438 80045F28 A0620066 */   sb        $v0, 0x66($v1)
/* EF43C 80045F2C 00409021 */  addu       $s2, $v0, $zero
/* EF440 80045F30 3C01C033 */  lui        $at, 0xc033
/* EF444 80045F34 34213333 */  ori        $at, $at, 0x3333
/* EF448 80045F38 44810000 */  mtc1       $at, $f0
/* EF44C 80045F3C 02402021 */  addu       $a0, $s2, $zero
/* EF450 80045F40 2405008D */  addiu      $a1, $zero, 0x8d
/* EF454 80045F44 E6540014 */  swc1       $f20, 0x14($s2)
/* EF458 80045F48 E65A0018 */  swc1       $f26, 0x18($s2)
/* EF45C 80045F4C E6560028 */  swc1       $f22, 0x28($s2)
/* EF460 80045F50 AE40001C */  sw         $zero, 0x1c($s2)
/* EF464 80045F54 E6580020 */  swc1       $f24, 0x20($s2)
/* EF468 80045F58 AE400024 */  sw         $zero, 0x24($s2)
/* EF46C 80045F5C A6500074 */  sh         $s0, 0x74($s2)
/* EF470 80045F60 A6500076 */  sh         $s0, 0x76($s2)
/* EF474 80045F64 A6500078 */  sh         $s0, 0x78($s2)
/* EF478 80045F68 A650007A */  sh         $s0, 0x7a($s2)
/* EF47C 80045F6C A6510070 */  sh         $s1, 0x70($s2)
/* EF480 80045F70 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF484 80045F74 E6400010 */   swc1      $f0, 0x10($s2)
/* EF488 80045F78 8E420004 */  lw         $v0, 4($s2)
/* EF48C 80045F7C A0400067 */  sb         $zero, 0x67($v0)
/* EF490 80045F80 8E430004 */  lw         $v1, 4($s2)
/* EF494 80045F84 90620066 */  lbu        $v0, 0x66($v1)
/* EF498 80045F88 24040023 */  addiu      $a0, $zero, 0x23
/* EF49C 80045F8C 34420007 */  ori        $v0, $v0, 7
/* EF4A0 80045F90 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF4A4 80045F94 A0620066 */   sb        $v0, 0x66($v1)
/* EF4A8 80045F98 00409021 */  addu       $s2, $v0, $zero
/* EF4AC 80045F9C 3C01C16B */  lui        $at, 0xc16b
/* EF4B0 80045FA0 34213333 */  ori        $at, $at, 0x3333
/* EF4B4 80045FA4 44810000 */  mtc1       $at, $f0
/* EF4B8 80045FA8 3C01C190 */  lui        $at, 0xc190
/* EF4BC 80045FAC 44811000 */  mtc1       $at, $f2
/* EF4C0 80045FB0 3C014190 */  lui        $at, 0x4190
/* EF4C4 80045FB4 44812000 */  mtc1       $at, $f4
/* EF4C8 80045FB8 3C013C54 */  lui        $at, 0x3c54
/* EF4CC 80045FBC 3421FDF4 */  ori        $at, $at, 0xfdf4
/* EF4D0 80045FC0 44813000 */  mtc1       $at, $f6
/* EF4D4 80045FC4 3C014234 */  lui        $at, 0x4234
/* EF4D8 80045FC8 44814000 */  mtc1       $at, $f8
/* EF4DC 80045FCC 02402021 */  addu       $a0, $s2, $zero
/* EF4E0 80045FD0 2405012E */  addiu      $a1, $zero, 0x12e
/* EF4E4 80045FD4 AE40001C */  sw         $zero, 0x1c($s2)
/* EF4E8 80045FD8 AE400024 */  sw         $zero, 0x24($s2)
/* EF4EC 80045FDC A6500074 */  sh         $s0, 0x74($s2)
/* EF4F0 80045FE0 A6500076 */  sh         $s0, 0x76($s2)
/* EF4F4 80045FE4 A6500078 */  sh         $s0, 0x78($s2)
/* EF4F8 80045FE8 A650007A */  sh         $s0, 0x7a($s2)
/* EF4FC 80045FEC A6510070 */  sh         $s1, 0x70($s2)
/* EF500 80045FF0 E6400010 */  swc1       $f0, 0x10($s2)
/* EF504 80045FF4 E6420014 */  swc1       $f2, 0x14($s2)
/* EF508 80045FF8 E6440018 */  swc1       $f4, 0x18($s2)
/* EF50C 80045FFC E6460028 */  swc1       $f6, 0x28($s2)
/* EF510 80046000 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF514 80046004 E6480020 */   swc1      $f8, 0x20($s2)
/* EF518 80046008 8E420004 */  lw         $v0, 4($s2)
/* EF51C 8004600C 3C013F80 */  lui        $at, 0x3f80
/* EF520 80046010 4481A000 */  mtc1       $at, $f20
/* EF524 80046014 3C01C149 */  lui        $at, 0xc149
/* EF528 80046018 3421C28F */  ori        $at, $at, 0xc28f
/* EF52C 8004601C 44810000 */  mtc1       $at, $f0
/* EF530 80046020 3C014359 */  lui        $at, 0x4359
/* EF534 80046024 3421851F */  ori        $at, $at, 0x851f
/* EF538 80046028 44811000 */  mtc1       $at, $f2
/* EF53C 8004602C 24040090 */  addiu      $a0, $zero, 0x90
/* EF540 80046030 A0400067 */  sb         $zero, 0x67($v0)
/* EF544 80046034 8E430004 */  lw         $v1, 4($s2)
/* EF548 80046038 3C01C2BE */  lui        $at, 0xc2be
/* EF54C 8004603C 44812000 */  mtc1       $at, $f4
/* EF550 80046040 24050090 */  addiu      $a1, $zero, 0x90
/* EF554 80046044 90620066 */  lbu        $v0, 0x66($v1)
/* EF558 80046048 24060090 */  addiu      $a2, $zero, 0x90
/* EF55C 8004604C 24070098 */  addiu      $a3, $zero, 0x98
/* EF560 80046050 34420003 */  ori        $v0, $v0, 3
/* EF564 80046054 A0620066 */  sb         $v0, 0x66($v1)
/* EF568 80046058 24020098 */  addiu      $v0, $zero, 0x98
/* EF56C 8004605C 3C018015 */  lui        $at, %hi(D_8014A064)
/* EF570 80046060 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EF574 80046064 3C018015 */  lui        $at, %hi(D_8014A068)
/* EF578 80046068 E43AA068 */  swc1       $f26, %lo(D_8014A068)($at)
/* EF57C 8004606C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EF580 80046070 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EF584 80046074 3C018015 */  lui        $at, %hi(D_8014A070)
/* EF588 80046078 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EF58C 8004607C 3C018015 */  lui        $at, %hi(D_8014A074)
/* EF590 80046080 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* EF594 80046084 3C018015 */  lui        $at, %hi(D_8014A078)
/* EF598 80046088 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EF59C 8004608C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EF5A0 80046090 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* EF5A4 80046094 3C018015 */  lui        $at, %hi(D_8014A080)
/* EF5A8 80046098 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* EF5AC 8004609C 3C018015 */  lui        $at, %hi(D_8014A084)
/* EF5B0 800460A0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EF5B4 800460A4 3C018015 */  lui        $at, %hi(D_8014A088)
/* EF5B8 800460A8 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* EF5BC 800460AC AFA20010 */  sw         $v0, 0x10($sp)
/* EF5C0 800460B0 0C00E34F */  jal        func_80038D3C_E224C
/* EF5C4 800460B4 AFA20014 */   sw        $v0, 0x14($sp)
/* EF5C8 800460B8 3C01C0C0 */  lui        $at, 0xc0c0
/* EF5CC 800460BC 44810000 */  mtc1       $at, $f0
/* EF5D0 800460C0 3C018015 */  lui        $at, %hi(D_8014A054)
/* EF5D4 800460C4 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EF5D8 800460C8 3C018015 */  lui        $at, %hi(D_8014A050)
/* EF5DC 800460CC E43AA050 */  swc1       $f26, %lo(D_8014A050)($at)
/* EF5E0 800460D0 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EF5E4 800460D4 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EF5E8 800460D8 3C018017 */  lui        $at, %hi(D_8016E568)
/* EF5EC 800460DC E434E568 */  swc1       $f20, %lo(D_8016E568)($at)
/* EF5F0 800460E0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EF5F4 800460E4 E434D0D4 */  swc1       $f20, %lo(D_8016D0D4)($at)
/* EF5F8 800460E8 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EF5FC 800460EC E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* EF600 800460F0 8FBF0064 */  lw         $ra, 0x64($sp)
/* EF604 800460F4 8FB20060 */  lw         $s2, 0x60($sp)
/* EF608 800460F8 8FB1005C */  lw         $s1, 0x5c($sp)
/* EF60C 800460FC 8FB00058 */  lw         $s0, 0x58($sp)
/* EF610 80046100 D7BA0080 */  ldc1       $f26, 0x80($sp)
/* EF614 80046104 D7B80078 */  ldc1       $f24, 0x78($sp)
/* EF618 80046108 D7B60070 */  ldc1       $f22, 0x70($sp)
/* EF61C 8004610C D7B40068 */  ldc1       $f20, 0x68($sp)
/* EF620 80046110 03E00008 */  jr         $ra
/* EF624 80046114 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_80046118_EF628
/* EF628 80046118 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* EF62C 8004611C F7B40030 */  sdc1       $f20, 0x30($sp)
/* EF630 80046120 3C014000 */  lui        $at, 0x4000
/* EF634 80046124 4481A000 */  mtc1       $at, $f20
/* EF638 80046128 AFB1001C */  sw         $s1, 0x1c($sp)
/* EF63C 8004612C 00008821 */  addu       $s1, $zero, $zero
/* EF640 80046130 AFB40028 */  sw         $s4, 0x28($sp)
/* EF644 80046134 24140016 */  addiu      $s4, $zero, 0x16
/* EF648 80046138 AFB30024 */  sw         $s3, 0x24($sp)
/* EF64C 8004613C 24130015 */  addiu      $s3, $zero, 0x15
/* EF650 80046140 AFBF002C */  sw         $ra, 0x2c($sp)
/* EF654 80046144 AFB20020 */  sw         $s2, 0x20($sp)
/* EF658 80046148 AFB00018 */  sw         $s0, 0x18($sp)
/* EF65C 8004614C 322600FF */  andi       $a2, $s1, 0xff
.L80046150:
/* EF660 80046150 24C4017D */  addiu      $a0, $a2, 0x17d
/* EF664 80046154 24050002 */  addiu      $a1, $zero, 2
/* EF668 80046158 0C00D925 */  jal        func_80036494_DF9A4
/* EF66C 8004615C 24C60049 */   addiu     $a2, $a2, 0x49
/* EF670 80046160 3C013F80 */  lui        $at, 0x3f80
/* EF674 80046164 44810000 */  mtc1       $at, $f0
/* EF678 80046168 323200FF */  andi       $s2, $s1, 0xff
/* EF67C 8004616C 12400002 */  beqz       $s2, .L80046178
/* EF680 80046170 00408021 */   addu      $s0, $v0, $zero
/* EF684 80046174 4600A006 */  mov.s      $f0, $f20
.L80046178:
/* EF688 80046178 8E04000C */  lw         $a0, 0xc($s0)
/* EF68C 8004617C 4406A000 */  mfc1       $a2, $f20
/* EF690 80046180 44070000 */  mfc1       $a3, $f0
/* EF694 80046184 00000000 */  nop
/* EF698 80046188 0C02915B */  jal        func_800A456C
/* EF69C 8004618C 00002821 */   addu      $a1, $zero, $zero
/* EF6A0 80046190 240200FF */  addiu      $v0, $zero, 0xff
/* EF6A4 80046194 AFA20010 */  sw         $v0, 0x10($sp)
/* EF6A8 80046198 8E04000C */  lw         $a0, 0xc($s0)
/* EF6AC 8004619C 240500FF */  addiu      $a1, $zero, 0xff
/* EF6B0 800461A0 240600FF */  addiu      $a2, $zero, 0xff
/* EF6B4 800461A4 0C028E41 */  jal        func_800A3904
/* EF6B8 800461A8 240700FF */   addiu     $a3, $zero, 0xff
/* EF6BC 800461AC 8E03000C */  lw         $v1, 0xc($s0)
/* EF6C0 800461B0 9462001E */  lhu        $v0, 0x1e($v1)
/* EF6C4 800461B4 34420086 */  ori        $v0, $v0, 0x86
/* EF6C8 800461B8 A462001E */  sh         $v0, 0x1e($v1)
/* EF6CC 800461BC 8E02000C */  lw         $v0, 0xc($s0)
/* EF6D0 800461C0 56400002 */  bnezl      $s2, .L800461CC
/* EF6D4 800461C4 A453001C */   sh        $s3, 0x1c($v0)
/* EF6D8 800461C8 A454001C */  sh         $s4, 0x1c($v0)
.L800461CC:
/* EF6DC 800461CC 322600FF */  andi       $a2, $s1, 0xff
/* EF6E0 800461D0 24C4017D */  addiu      $a0, $a2, 0x17d
/* EF6E4 800461D4 24050002 */  addiu      $a1, $zero, 2
/* EF6E8 800461D8 0C00D925 */  jal        func_80036494_DF9A4
/* EF6EC 800461DC 24C6004F */   addiu     $a2, $a2, 0x4f
/* EF6F0 800461E0 3C013F80 */  lui        $at, 0x3f80
/* EF6F4 800461E4 44810000 */  mtc1       $at, $f0
/* EF6F8 800461E8 323200FF */  andi       $s2, $s1, 0xff
/* EF6FC 800461EC 12400002 */  beqz       $s2, .L800461F8
/* EF700 800461F0 00408021 */   addu      $s0, $v0, $zero
/* EF704 800461F4 4600A006 */  mov.s      $f0, $f20
.L800461F8:
/* EF708 800461F8 8E04000C */  lw         $a0, 0xc($s0)
/* EF70C 800461FC 4406A000 */  mfc1       $a2, $f20
/* EF710 80046200 44070000 */  mfc1       $a3, $f0
/* EF714 80046204 00000000 */  nop
/* EF718 80046208 0C02915B */  jal        func_800A456C
/* EF71C 8004620C 00002821 */   addu      $a1, $zero, $zero
/* EF720 80046210 24020080 */  addiu      $v0, $zero, 0x80
/* EF724 80046214 AFA20010 */  sw         $v0, 0x10($sp)
/* EF728 80046218 8E04000C */  lw         $a0, 0xc($s0)
/* EF72C 8004621C 240500FF */  addiu      $a1, $zero, 0xff
/* EF730 80046220 240600FF */  addiu      $a2, $zero, 0xff
/* EF734 80046224 0C028E41 */  jal        func_800A3904
/* EF738 80046228 240700FF */   addiu     $a3, $zero, 0xff
/* EF73C 8004622C 8E03000C */  lw         $v1, 0xc($s0)
/* EF740 80046230 9462001E */  lhu        $v0, 0x1e($v1)
/* EF744 80046234 34420086 */  ori        $v0, $v0, 0x86
/* EF748 80046238 A462001E */  sh         $v0, 0x1e($v1)
/* EF74C 8004623C 8E02000C */  lw         $v0, 0xc($s0)
/* EF750 80046240 56400002 */  bnezl      $s2, .L8004624C
/* EF754 80046244 A453001C */   sh        $s3, 0x1c($v0)
/* EF758 80046248 A454001C */  sh         $s4, 0x1c($v0)
.L8004624C:
/* EF75C 8004624C 322400FF */  andi       $a0, $s1, 0xff
/* EF760 80046250 0C00D8C1 */  jal        func_80036304_DF814
/* EF764 80046254 24840049 */   addiu     $a0, $a0, 0x49
/* EF768 80046258 00408021 */  addu       $s0, $v0, $zero
/* EF76C 8004625C 8E04000C */  lw         $a0, 0xc($s0)
/* EF770 80046260 24050001 */  addiu      $a1, $zero, 1
/* EF774 80046264 00003021 */  addu       $a2, $zero, $zero
/* EF778 80046268 0C00DE72 */  jal        func_800379C8_E0ED8
/* EF77C 8004626C 26310001 */   addiu     $s1, $s1, 1
/* EF780 80046270 8E04000C */  lw         $a0, 0xc($s0)
/* EF784 80046274 24050002 */  addiu      $a1, $zero, 2
/* EF788 80046278 0C00DE72 */  jal        func_800379C8_E0ED8
/* EF78C 8004627C 00003021 */   addu      $a2, $zero, $zero
/* EF790 80046280 322200FF */  andi       $v0, $s1, 0xff
/* EF794 80046284 2C420006 */  sltiu      $v0, $v0, 6
/* EF798 80046288 1440FFB1 */  bnez       $v0, .L80046150
/* EF79C 8004628C 322600FF */   andi      $a2, $s1, 0xff
/* EF7A0 80046290 8FBF002C */  lw         $ra, 0x2c($sp)
/* EF7A4 80046294 8FB40028 */  lw         $s4, 0x28($sp)
/* EF7A8 80046298 8FB30024 */  lw         $s3, 0x24($sp)
/* EF7AC 8004629C 8FB20020 */  lw         $s2, 0x20($sp)
/* EF7B0 800462A0 8FB1001C */  lw         $s1, 0x1c($sp)
/* EF7B4 800462A4 8FB00018 */  lw         $s0, 0x18($sp)
/* EF7B8 800462A8 D7B40030 */  ldc1       $f20, 0x30($sp)
/* EF7BC 800462AC 03E00008 */  jr         $ra
/* EF7C0 800462B0 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_800462B4_EF7C4
/* EF7C4 800462B4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* EF7C8 800462B8 2404017C */  addiu      $a0, $zero, 0x17c
/* EF7CC 800462BC 24050002 */  addiu      $a1, $zero, 2
/* EF7D0 800462C0 AFBF0058 */  sw         $ra, 0x58($sp)
/* EF7D4 800462C4 AFB10054 */  sw         $s1, 0x54($sp)
/* EF7D8 800462C8 AFB00050 */  sw         $s0, 0x50($sp)
/* EF7DC 800462CC F7B60068 */  sdc1       $f22, 0x68($sp)
/* EF7E0 800462D0 F7B40060 */  sdc1       $f20, 0x60($sp)
/* EF7E4 800462D4 0C00D925 */  jal        func_80036494_DF9A4
/* EF7E8 800462D8 24060017 */   addiu     $a2, $zero, 0x17
/* EF7EC 800462DC 00408021 */  addu       $s0, $v0, $zero
/* EF7F0 800462E0 8E04000C */  lw         $a0, 0xc($s0)
/* EF7F4 800462E4 8C82000C */  lw         $v0, 0xc($a0)
/* EF7F8 800462E8 94450000 */  lhu        $a1, ($v0)
/* EF7FC 800462EC 94460002 */  lhu        $a2, 2($v0)
/* EF800 800462F0 00052842 */  srl        $a1, $a1, 1
/* EF804 800462F4 0C02912A */  jal        func_800A44A8
/* EF808 800462F8 00063042 */   srl       $a2, $a2, 1
/* EF80C 800462FC 8E04000C */  lw         $a0, 0xc($s0)
/* EF810 80046300 3C064170 */  lui        $a2, 0x4170
/* EF814 80046304 3C074000 */  lui        $a3, 0x4000
/* EF818 80046308 0C02915B */  jal        func_800A456C
/* EF81C 8004630C 2405E4FB */   addiu     $a1, $zero, -0x1b05
/* EF820 80046310 8E04000C */  lw         $a0, 0xc($s0)
/* EF824 80046314 24050110 */  addiu      $a1, $zero, 0x110
/* EF828 80046318 0C028D89 */  jal        func_800A3624
/* EF82C 8004631C 240600A0 */   addiu     $a2, $zero, 0xa0
/* EF830 80046320 8E03000C */  lw         $v1, 0xc($s0)
/* EF834 80046324 9462001E */  lhu        $v0, 0x1e($v1)
/* EF838 80046328 24040024 */  addiu      $a0, $zero, 0x24
/* EF83C 8004632C 34420104 */  ori        $v0, $v0, 0x104
/* EF840 80046330 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF844 80046334 A462001E */   sh        $v0, 0x1e($v1)
/* EF848 80046338 00408821 */  addu       $s1, $v0, $zero
/* EF84C 8004633C 3C014088 */  lui        $at, 0x4088
/* EF850 80046340 3421F5C3 */  ori        $at, $at, 0xf5c3
/* EF854 80046344 44810000 */  mtc1       $at, $f0
/* EF858 80046348 3C01C2DD */  lui        $at, 0xc2dd
/* EF85C 8004634C 3421999A */  ori        $at, $at, 0x999a
/* EF860 80046350 44811000 */  mtc1       $at, $f2
/* EF864 80046354 3C0140AD */  lui        $at, 0x40ad
/* EF868 80046358 34211EB8 */  ori        $at, $at, 0x1eb8
/* EF86C 8004635C 44812000 */  mtc1       $at, $f4
/* EF870 80046360 3C013C75 */  lui        $at, 0x3c75
/* EF874 80046364 3421C28F */  ori        $at, $at, 0xc28f
/* EF878 80046368 44813000 */  mtc1       $at, $f6
/* EF87C 8004636C 3C014337 */  lui        $at, 0x4337
/* EF880 80046370 3421428F */  ori        $at, $at, 0x428f
/* EF884 80046374 44814000 */  mtc1       $at, $f8
/* EF888 80046378 02202021 */  addu       $a0, $s1, $zero
/* EF88C 8004637C 2405008D */  addiu      $a1, $zero, 0x8d
/* EF890 80046380 241000FF */  addiu      $s0, $zero, 0xff
/* EF894 80046384 2402FFFF */  addiu      $v0, $zero, -1
/* EF898 80046388 AE20001C */  sw         $zero, 0x1c($s1)
/* EF89C 8004638C AE200024 */  sw         $zero, 0x24($s1)
/* EF8A0 80046390 A6300074 */  sh         $s0, 0x74($s1)
/* EF8A4 80046394 A6300076 */  sh         $s0, 0x76($s1)
/* EF8A8 80046398 A6300078 */  sh         $s0, 0x78($s1)
/* EF8AC 8004639C A630007A */  sh         $s0, 0x7a($s1)
/* EF8B0 800463A0 A6220070 */  sh         $v0, 0x70($s1)
/* EF8B4 800463A4 E6200010 */  swc1       $f0, 0x10($s1)
/* EF8B8 800463A8 E6220014 */  swc1       $f2, 0x14($s1)
/* EF8BC 800463AC E6240018 */  swc1       $f4, 0x18($s1)
/* EF8C0 800463B0 E6260028 */  swc1       $f6, 0x28($s1)
/* EF8C4 800463B4 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF8C8 800463B8 E6280020 */   swc1      $f8, 0x20($s1)
/* EF8CC 800463BC 8E220004 */  lw         $v0, 4($s1)
/* EF8D0 800463C0 A0400067 */  sb         $zero, 0x67($v0)
/* EF8D4 800463C4 8E230004 */  lw         $v1, 4($s1)
/* EF8D8 800463C8 90620066 */  lbu        $v0, 0x66($v1)
/* EF8DC 800463CC 24040025 */  addiu      $a0, $zero, 0x25
/* EF8E0 800463D0 34420007 */  ori        $v0, $v0, 7
/* EF8E4 800463D4 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF8E8 800463D8 A0620066 */   sb        $v0, 0x66($v1)
/* EF8EC 800463DC 00408821 */  addu       $s1, $v0, $zero
/* EF8F0 800463E0 3C013CA3 */  lui        $at, 0x3ca3
/* EF8F4 800463E4 3421D70A */  ori        $at, $at, 0xd70a
/* EF8F8 800463E8 4481A000 */  mtc1       $at, $f20
/* EF8FC 800463EC 02202021 */  addu       $a0, $s1, $zero
/* EF900 800463F0 24050111 */  addiu      $a1, $zero, 0x111
/* EF904 800463F4 AE200010 */  sw         $zero, 0x10($s1)
/* EF908 800463F8 AE200014 */  sw         $zero, 0x14($s1)
/* EF90C 800463FC AE200018 */  sw         $zero, 0x18($s1)
/* EF910 80046400 AE20001C */  sw         $zero, 0x1c($s1)
/* EF914 80046404 AE200020 */  sw         $zero, 0x20($s1)
/* EF918 80046408 AE200024 */  sw         $zero, 0x24($s1)
/* EF91C 8004640C A6300074 */  sh         $s0, 0x74($s1)
/* EF920 80046410 A6300076 */  sh         $s0, 0x76($s1)
/* EF924 80046414 A6300078 */  sh         $s0, 0x78($s1)
/* EF928 80046418 A630007A */  sh         $s0, 0x7a($s1)
/* EF92C 8004641C 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF930 80046420 E6340028 */   swc1      $f20, 0x28($s1)
/* EF934 80046424 8E220004 */  lw         $v0, 4($s1)
/* EF938 80046428 A0400067 */  sb         $zero, 0x67($v0)
/* EF93C 8004642C 8E230004 */  lw         $v1, 4($s1)
/* EF940 80046430 90620066 */  lbu        $v0, 0x66($v1)
/* EF944 80046434 24040026 */  addiu      $a0, $zero, 0x26
/* EF948 80046438 34420007 */  ori        $v0, $v0, 7
/* EF94C 8004643C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF950 80046440 A0620066 */   sb        $v0, 0x66($v1)
/* EF954 80046444 00408821 */  addu       $s1, $v0, $zero
/* EF958 80046448 02202021 */  addu       $a0, $s1, $zero
/* EF95C 8004644C 24050112 */  addiu      $a1, $zero, 0x112
/* EF960 80046450 AE200010 */  sw         $zero, 0x10($s1)
/* EF964 80046454 AE200014 */  sw         $zero, 0x14($s1)
/* EF968 80046458 AE200018 */  sw         $zero, 0x18($s1)
/* EF96C 8004645C E6340028 */  swc1       $f20, 0x28($s1)
/* EF970 80046460 AE20001C */  sw         $zero, 0x1c($s1)
/* EF974 80046464 AE200020 */  sw         $zero, 0x20($s1)
/* EF978 80046468 AE200024 */  sw         $zero, 0x24($s1)
/* EF97C 8004646C A6300074 */  sh         $s0, 0x74($s1)
/* EF980 80046470 A6300076 */  sh         $s0, 0x76($s1)
/* EF984 80046474 A6300078 */  sh         $s0, 0x78($s1)
/* EF988 80046478 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF98C 8004647C A630007A */   sh        $s0, 0x7a($s1)
/* EF990 80046480 8E220004 */  lw         $v0, 4($s1)
/* EF994 80046484 A0400067 */  sb         $zero, 0x67($v0)
/* EF998 80046488 8E240004 */  lw         $a0, 4($s1)
/* EF99C 8004648C 0C028703 */  jal        func_800A1C0C
/* EF9A0 80046490 24050027 */   addiu     $a1, $zero, 0x27
/* EF9A4 80046494 8E230004 */  lw         $v1, 4($s1)
/* EF9A8 80046498 90620066 */  lbu        $v0, 0x66($v1)
/* EF9AC 8004649C 24040027 */  addiu      $a0, $zero, 0x27
/* EF9B0 800464A0 3442000B */  ori        $v0, $v0, 0xb
/* EF9B4 800464A4 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EF9B8 800464A8 A0620066 */   sb        $v0, 0x66($v1)
/* EF9BC 800464AC 00408821 */  addu       $s1, $v0, $zero
/* EF9C0 800464B0 3C014393 */  lui        $at, 0x4393
/* EF9C4 800464B4 4481B000 */  mtc1       $at, $f22
/* EF9C8 800464B8 02202021 */  addu       $a0, $s1, $zero
/* EF9CC 800464BC 24050112 */  addiu      $a1, $zero, 0x112
/* EF9D0 800464C0 AE200010 */  sw         $zero, 0x10($s1)
/* EF9D4 800464C4 AE200018 */  sw         $zero, 0x18($s1)
/* EF9D8 800464C8 E6340028 */  swc1       $f20, 0x28($s1)
/* EF9DC 800464CC AE20001C */  sw         $zero, 0x1c($s1)
/* EF9E0 800464D0 AE200020 */  sw         $zero, 0x20($s1)
/* EF9E4 800464D4 AE200024 */  sw         $zero, 0x24($s1)
/* EF9E8 800464D8 A6300074 */  sh         $s0, 0x74($s1)
/* EF9EC 800464DC A6300076 */  sh         $s0, 0x76($s1)
/* EF9F0 800464E0 A6300078 */  sh         $s0, 0x78($s1)
/* EF9F4 800464E4 A630007A */  sh         $s0, 0x7a($s1)
/* EF9F8 800464E8 0C00DFE6 */  jal        func_80037F98_E14A8
/* EF9FC 800464EC E6360014 */   swc1      $f22, 0x14($s1)
/* EFA00 800464F0 8E220004 */  lw         $v0, 4($s1)
/* EFA04 800464F4 A0400067 */  sb         $zero, 0x67($v0)
/* EFA08 800464F8 8E240004 */  lw         $a0, 4($s1)
/* EFA0C 800464FC 0C028703 */  jal        func_800A1C0C
/* EFA10 80046500 24050026 */   addiu     $a1, $zero, 0x26
/* EFA14 80046504 8E230004 */  lw         $v1, 4($s1)
/* EFA18 80046508 90620066 */  lbu        $v0, 0x66($v1)
/* EFA1C 8004650C 2404002A */  addiu      $a0, $zero, 0x2a
/* EFA20 80046510 3442000B */  ori        $v0, $v0, 0xb
/* EFA24 80046514 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFA28 80046518 A0620066 */   sb        $v0, 0x66($v1)
/* EFA2C 8004651C 00408821 */  addu       $s1, $v0, $zero
/* EFA30 80046520 02202021 */  addu       $a0, $s1, $zero
/* EFA34 80046524 2405004B */  addiu      $a1, $zero, 0x4b
/* EFA38 80046528 AE200010 */  sw         $zero, 0x10($s1)
/* EFA3C 8004652C AE200014 */  sw         $zero, 0x14($s1)
/* EFA40 80046530 AE200018 */  sw         $zero, 0x18($s1)
/* EFA44 80046534 E6340028 */  swc1       $f20, 0x28($s1)
/* EFA48 80046538 AE20001C */  sw         $zero, 0x1c($s1)
/* EFA4C 8004653C AE200020 */  sw         $zero, 0x20($s1)
/* EFA50 80046540 AE200024 */  sw         $zero, 0x24($s1)
/* EFA54 80046544 A6300074 */  sh         $s0, 0x74($s1)
/* EFA58 80046548 A6300076 */  sh         $s0, 0x76($s1)
/* EFA5C 8004654C A6300078 */  sh         $s0, 0x78($s1)
/* EFA60 80046550 A630007A */  sh         $s0, 0x7a($s1)
/* EFA64 80046554 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFA68 80046558 A6200070 */   sh        $zero, 0x70($s1)
/* EFA6C 8004655C 8E220004 */  lw         $v0, 4($s1)
/* EFA70 80046560 A0400067 */  sb         $zero, 0x67($v0)
/* EFA74 80046564 8E230004 */  lw         $v1, 4($s1)
/* EFA78 80046568 90620066 */  lbu        $v0, 0x66($v1)
/* EFA7C 8004656C 34420007 */  ori        $v0, $v0, 7
/* EFA80 80046570 A0620066 */  sb         $v0, 0x66($v1)
/* EFA84 80046574 0C027AF5 */  jal        func_8009EBD4
/* EFA88 80046578 8E240008 */   lw        $a0, 8($s1)
/* EFA8C 8004657C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFA90 80046580 2404002B */   addiu     $a0, $zero, 0x2b
/* EFA94 80046584 00408821 */  addu       $s1, $v0, $zero
/* EFA98 80046588 02202021 */  addu       $a0, $s1, $zero
/* EFA9C 8004658C 2405004C */  addiu      $a1, $zero, 0x4c
/* EFAA0 80046590 AE200010 */  sw         $zero, 0x10($s1)
/* EFAA4 80046594 AE200014 */  sw         $zero, 0x14($s1)
/* EFAA8 80046598 AE200018 */  sw         $zero, 0x18($s1)
/* EFAAC 8004659C E6340028 */  swc1       $f20, 0x28($s1)
/* EFAB0 800465A0 AE20001C */  sw         $zero, 0x1c($s1)
/* EFAB4 800465A4 AE200020 */  sw         $zero, 0x20($s1)
/* EFAB8 800465A8 AE200024 */  sw         $zero, 0x24($s1)
/* EFABC 800465AC A6300074 */  sh         $s0, 0x74($s1)
/* EFAC0 800465B0 A6300076 */  sh         $s0, 0x76($s1)
/* EFAC4 800465B4 A6300078 */  sh         $s0, 0x78($s1)
/* EFAC8 800465B8 A630007A */  sh         $s0, 0x7a($s1)
/* EFACC 800465BC 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFAD0 800465C0 A6200070 */   sh        $zero, 0x70($s1)
/* EFAD4 800465C4 8E220004 */  lw         $v0, 4($s1)
/* EFAD8 800465C8 A0400067 */  sb         $zero, 0x67($v0)
/* EFADC 800465CC 8E230004 */  lw         $v1, 4($s1)
/* EFAE0 800465D0 90620066 */  lbu        $v0, 0x66($v1)
/* EFAE4 800465D4 34420007 */  ori        $v0, $v0, 7
/* EFAE8 800465D8 A0620066 */  sb         $v0, 0x66($v1)
/* EFAEC 800465DC 0C027AF5 */  jal        func_8009EBD4
/* EFAF0 800465E0 8E240008 */   lw        $a0, 8($s1)
/* EFAF4 800465E4 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFAF8 800465E8 2404002C */   addiu     $a0, $zero, 0x2c
/* EFAFC 800465EC 00408821 */  addu       $s1, $v0, $zero
/* EFB00 800465F0 02202021 */  addu       $a0, $s1, $zero
/* EFB04 800465F4 2405004D */  addiu      $a1, $zero, 0x4d
/* EFB08 800465F8 AE200010 */  sw         $zero, 0x10($s1)
/* EFB0C 800465FC AE200014 */  sw         $zero, 0x14($s1)
/* EFB10 80046600 AE200018 */  sw         $zero, 0x18($s1)
/* EFB14 80046604 E6340028 */  swc1       $f20, 0x28($s1)
/* EFB18 80046608 AE20001C */  sw         $zero, 0x1c($s1)
/* EFB1C 8004660C AE200020 */  sw         $zero, 0x20($s1)
/* EFB20 80046610 AE200024 */  sw         $zero, 0x24($s1)
/* EFB24 80046614 A6300074 */  sh         $s0, 0x74($s1)
/* EFB28 80046618 A6300076 */  sh         $s0, 0x76($s1)
/* EFB2C 8004661C A6300078 */  sh         $s0, 0x78($s1)
/* EFB30 80046620 A630007A */  sh         $s0, 0x7a($s1)
/* EFB34 80046624 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFB38 80046628 A6200070 */   sh        $zero, 0x70($s1)
/* EFB3C 8004662C 8E220004 */  lw         $v0, 4($s1)
/* EFB40 80046630 A0400067 */  sb         $zero, 0x67($v0)
/* EFB44 80046634 8E230004 */  lw         $v1, 4($s1)
/* EFB48 80046638 90620066 */  lbu        $v0, 0x66($v1)
/* EFB4C 8004663C 34420007 */  ori        $v0, $v0, 7
/* EFB50 80046640 A0620066 */  sb         $v0, 0x66($v1)
/* EFB54 80046644 0C027AF5 */  jal        func_8009EBD4
/* EFB58 80046648 8E240008 */   lw        $a0, 8($s1)
/* EFB5C 8004664C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFB60 80046650 2404002D */   addiu     $a0, $zero, 0x2d
/* EFB64 80046654 00408821 */  addu       $s1, $v0, $zero
/* EFB68 80046658 02202021 */  addu       $a0, $s1, $zero
/* EFB6C 8004665C 2405004C */  addiu      $a1, $zero, 0x4c
/* EFB70 80046660 AE200010 */  sw         $zero, 0x10($s1)
/* EFB74 80046664 E6360014 */  swc1       $f22, 0x14($s1)
/* EFB78 80046668 AE200018 */  sw         $zero, 0x18($s1)
/* EFB7C 8004666C E6340028 */  swc1       $f20, 0x28($s1)
/* EFB80 80046670 AE20001C */  sw         $zero, 0x1c($s1)
/* EFB84 80046674 AE200020 */  sw         $zero, 0x20($s1)
/* EFB88 80046678 AE200024 */  sw         $zero, 0x24($s1)
/* EFB8C 8004667C A6300074 */  sh         $s0, 0x74($s1)
/* EFB90 80046680 A6300076 */  sh         $s0, 0x76($s1)
/* EFB94 80046684 A6300078 */  sh         $s0, 0x78($s1)
/* EFB98 80046688 A630007A */  sh         $s0, 0x7a($s1)
/* EFB9C 8004668C 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFBA0 80046690 A6200070 */   sh        $zero, 0x70($s1)
/* EFBA4 80046694 8E220004 */  lw         $v0, 4($s1)
/* EFBA8 80046698 A0400067 */  sb         $zero, 0x67($v0)
/* EFBAC 8004669C 8E230004 */  lw         $v1, 4($s1)
/* EFBB0 800466A0 90620066 */  lbu        $v0, 0x66($v1)
/* EFBB4 800466A4 34420007 */  ori        $v0, $v0, 7
/* EFBB8 800466A8 A0620066 */  sb         $v0, 0x66($v1)
/* EFBBC 800466AC 0C027AF5 */  jal        func_8009EBD4
/* EFBC0 800466B0 8E240008 */   lw        $a0, 8($s1)
/* EFBC4 800466B4 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFBC8 800466B8 2404002E */   addiu     $a0, $zero, 0x2e
/* EFBCC 800466BC 00408821 */  addu       $s1, $v0, $zero
/* EFBD0 800466C0 02202021 */  addu       $a0, $s1, $zero
/* EFBD4 800466C4 2405004D */  addiu      $a1, $zero, 0x4d
/* EFBD8 800466C8 AE200010 */  sw         $zero, 0x10($s1)
/* EFBDC 800466CC E6360014 */  swc1       $f22, 0x14($s1)
/* EFBE0 800466D0 AE200018 */  sw         $zero, 0x18($s1)
/* EFBE4 800466D4 E6340028 */  swc1       $f20, 0x28($s1)
/* EFBE8 800466D8 AE20001C */  sw         $zero, 0x1c($s1)
/* EFBEC 800466DC AE200020 */  sw         $zero, 0x20($s1)
/* EFBF0 800466E0 AE200024 */  sw         $zero, 0x24($s1)
/* EFBF4 800466E4 A6300074 */  sh         $s0, 0x74($s1)
/* EFBF8 800466E8 A6300076 */  sh         $s0, 0x76($s1)
/* EFBFC 800466EC A6300078 */  sh         $s0, 0x78($s1)
/* EFC00 800466F0 A630007A */  sh         $s0, 0x7a($s1)
/* EFC04 800466F4 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFC08 800466F8 A6200070 */   sh        $zero, 0x70($s1)
/* EFC0C 800466FC 8E220004 */  lw         $v0, 4($s1)
/* EFC10 80046700 A0400067 */  sb         $zero, 0x67($v0)
/* EFC14 80046704 8E230004 */  lw         $v1, 4($s1)
/* EFC18 80046708 90620066 */  lbu        $v0, 0x66($v1)
/* EFC1C 8004670C 34420007 */  ori        $v0, $v0, 7
/* EFC20 80046710 A0620066 */  sb         $v0, 0x66($v1)
/* EFC24 80046714 0C027AF5 */  jal        func_8009EBD4
/* EFC28 80046718 8E240008 */   lw        $a0, 8($s1)
/* EFC2C 8004671C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFC30 80046720 2404002F */   addiu     $a0, $zero, 0x2f
/* EFC34 80046724 00408821 */  addu       $s1, $v0, $zero
/* EFC38 80046728 3C014413 */  lui        $at, 0x4413
/* EFC3C 8004672C 4481B000 */  mtc1       $at, $f22
/* EFC40 80046730 02202021 */  addu       $a0, $s1, $zero
/* EFC44 80046734 2405004C */  addiu      $a1, $zero, 0x4c
/* EFC48 80046738 AE200010 */  sw         $zero, 0x10($s1)
/* EFC4C 8004673C AE200018 */  sw         $zero, 0x18($s1)
/* EFC50 80046740 E6340028 */  swc1       $f20, 0x28($s1)
/* EFC54 80046744 AE20001C */  sw         $zero, 0x1c($s1)
/* EFC58 80046748 AE200020 */  sw         $zero, 0x20($s1)
/* EFC5C 8004674C AE200024 */  sw         $zero, 0x24($s1)
/* EFC60 80046750 A6300074 */  sh         $s0, 0x74($s1)
/* EFC64 80046754 A6300076 */  sh         $s0, 0x76($s1)
/* EFC68 80046758 A6300078 */  sh         $s0, 0x78($s1)
/* EFC6C 8004675C A630007A */  sh         $s0, 0x7a($s1)
/* EFC70 80046760 A6200070 */  sh         $zero, 0x70($s1)
/* EFC74 80046764 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFC78 80046768 E6360014 */   swc1      $f22, 0x14($s1)
/* EFC7C 8004676C 8E220004 */  lw         $v0, 4($s1)
/* EFC80 80046770 A0400067 */  sb         $zero, 0x67($v0)
/* EFC84 80046774 8E230004 */  lw         $v1, 4($s1)
/* EFC88 80046778 90620066 */  lbu        $v0, 0x66($v1)
/* EFC8C 8004677C 34420007 */  ori        $v0, $v0, 7
/* EFC90 80046780 A0620066 */  sb         $v0, 0x66($v1)
/* EFC94 80046784 0C027AF5 */  jal        func_8009EBD4
/* EFC98 80046788 8E240008 */   lw        $a0, 8($s1)
/* EFC9C 8004678C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFCA0 80046790 24040030 */   addiu     $a0, $zero, 0x30
/* EFCA4 80046794 00408821 */  addu       $s1, $v0, $zero
/* EFCA8 80046798 02202021 */  addu       $a0, $s1, $zero
/* EFCAC 8004679C 2405004D */  addiu      $a1, $zero, 0x4d
/* EFCB0 800467A0 AE200010 */  sw         $zero, 0x10($s1)
/* EFCB4 800467A4 E6360014 */  swc1       $f22, 0x14($s1)
/* EFCB8 800467A8 AE200018 */  sw         $zero, 0x18($s1)
/* EFCBC 800467AC E6340028 */  swc1       $f20, 0x28($s1)
/* EFCC0 800467B0 AE20001C */  sw         $zero, 0x1c($s1)
/* EFCC4 800467B4 AE200020 */  sw         $zero, 0x20($s1)
/* EFCC8 800467B8 AE200024 */  sw         $zero, 0x24($s1)
/* EFCCC 800467BC A6300074 */  sh         $s0, 0x74($s1)
/* EFCD0 800467C0 A6300076 */  sh         $s0, 0x76($s1)
/* EFCD4 800467C4 A6300078 */  sh         $s0, 0x78($s1)
/* EFCD8 800467C8 A620007A */  sh         $zero, 0x7a($s1)
/* EFCDC 800467CC 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFCE0 800467D0 A6200070 */   sh        $zero, 0x70($s1)
/* EFCE4 800467D4 8E220004 */  lw         $v0, 4($s1)
/* EFCE8 800467D8 A0400067 */  sb         $zero, 0x67($v0)
/* EFCEC 800467DC 8E230004 */  lw         $v1, 4($s1)
/* EFCF0 800467E0 90620066 */  lbu        $v0, 0x66($v1)
/* EFCF4 800467E4 34420023 */  ori        $v0, $v0, 0x23
/* EFCF8 800467E8 A0620066 */  sb         $v0, 0x66($v1)
/* EFCFC 800467EC 0C027AF5 */  jal        func_8009EBD4
/* EFD00 800467F0 8E240008 */   lw        $a0, 8($s1)
/* EFD04 800467F4 3C013F80 */  lui        $at, 0x3f80
/* EFD08 800467F8 44810000 */  mtc1       $at, $f0
/* EFD0C 800467FC 3C01C2A1 */  lui        $at, 0xc2a1
/* EFD10 80046800 34217AE1 */  ori        $at, $at, 0x7ae1
/* EFD14 80046804 44811000 */  mtc1       $at, $f2
/* EFD18 80046808 3C01435A */  lui        $at, 0x435a
/* EFD1C 8004680C 34217852 */  ori        $at, $at, 0x7852
/* EFD20 80046810 44812000 */  mtc1       $at, $f4
/* EFD24 80046814 3C01C2F9 */  lui        $at, 0xc2f9
/* EFD28 80046818 34216148 */  ori        $at, $at, 0x6148
/* EFD2C 8004681C 44813000 */  mtc1       $at, $f6
/* EFD30 80046820 3C018015 */  lui        $at, %hi(D_8014A064)
/* EFD34 80046824 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EFD38 80046828 3C018015 */  lui        $at, %hi(D_8014A068)
/* EFD3C 8004682C AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* EFD40 80046830 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EFD44 80046834 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EFD48 80046838 3C018015 */  lui        $at, %hi(D_8014A070)
/* EFD4C 8004683C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EFD50 80046840 3C018015 */  lui        $at, %hi(D_8014A078)
/* EFD54 80046844 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EFD58 80046848 3C018015 */  lui        $at, %hi(D_8014A084)
/* EFD5C 8004684C AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EFD60 80046850 3C018015 */  lui        $at, %hi(D_8014A074)
/* EFD64 80046854 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* EFD68 80046858 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EFD6C 8004685C E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* EFD70 80046860 3C018015 */  lui        $at, %hi(D_8014A080)
/* EFD74 80046864 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* EFD78 80046868 3C018015 */  lui        $at, %hi(D_8014A088)
/* EFD7C 8004686C 0C00E339 */  jal        func_80038CE4_E21F4
/* EFD80 80046870 E426A088 */   swc1      $f6, %lo(D_8014A088)($at)
/* EFD84 80046874 3C01412D */  lui        $at, 0x412d
/* EFD88 80046878 3421999A */  ori        $at, $at, 0x999a
/* EFD8C 8004687C 44810000 */  mtc1       $at, $f0
/* EFD90 80046880 3C013FFD */  lui        $at, 0x3ffd
/* EFD94 80046884 342170A4 */  ori        $at, $at, 0x70a4
/* EFD98 80046888 44811000 */  mtc1       $at, $f2
/* EFD9C 8004688C 3C014162 */  lui        $at, 0x4162
/* EFDA0 80046890 34216666 */  ori        $at, $at, 0x6666
/* EFDA4 80046894 44812000 */  mtc1       $at, $f4
/* EFDA8 80046898 3C018015 */  lui        $at, %hi(D_8014A054)
/* EFDAC 8004689C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EFDB0 800468A0 3C018015 */  lui        $at, %hi(D_8014A050)
/* EFDB4 800468A4 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EFDB8 800468A8 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EFDBC 800468AC AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EFDC0 800468B0 3C018017 */  lui        $at, %hi(D_8016E568)
/* EFDC4 800468B4 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* EFDC8 800468B8 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EFDCC 800468BC E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* EFDD0 800468C0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EFDD4 800468C4 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* EFDD8 800468C8 8FBF0058 */  lw         $ra, 0x58($sp)
/* EFDDC 800468CC 8FB10054 */  lw         $s1, 0x54($sp)
/* EFDE0 800468D0 8FB00050 */  lw         $s0, 0x50($sp)
/* EFDE4 800468D4 D7B60068 */  ldc1       $f22, 0x68($sp)
/* EFDE8 800468D8 D7B40060 */  ldc1       $f20, 0x60($sp)
/* EFDEC 800468DC 03E00008 */  jr         $ra
/* EFDF0 800468E0 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800468E4_EFDF4
/* EFDF4 800468E4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* EFDF8 800468E8 AFBF0064 */  sw         $ra, 0x64($sp)
/* EFDFC 800468EC AFB20060 */  sw         $s2, 0x60($sp)
/* EFE00 800468F0 AFB1005C */  sw         $s1, 0x5c($sp)
/* EFE04 800468F4 AFB00058 */  sw         $s0, 0x58($sp)
/* EFE08 800468F8 F7B60070 */  sdc1       $f22, 0x70($sp)
/* EFE0C 800468FC F7B40068 */  sdc1       $f20, 0x68($sp)
/* EFE10 80046900 0C00E2C2 */  jal        func_80038B08_E2018
/* EFE14 80046904 2411FFFF */   addiu     $s1, $zero, -1
/* EFE18 80046908 24040188 */  addiu      $a0, $zero, 0x188
/* EFE1C 8004690C 24050002 */  addiu      $a1, $zero, 2
/* EFE20 80046910 0C00D925 */  jal        func_80036494_DF9A4
/* EFE24 80046914 24060018 */   addiu     $a2, $zero, 0x18
/* EFE28 80046918 00408021 */  addu       $s0, $v0, $zero
/* EFE2C 8004691C 8E04000C */  lw         $a0, 0xc($s0)
/* EFE30 80046920 3C0640C6 */  lui        $a2, 0x40c6
/* EFE34 80046924 34C66666 */  ori        $a2, $a2, 0x6666
/* EFE38 80046928 3C0740A0 */  lui        $a3, 0x40a0
/* EFE3C 8004692C 0C02915B */  jal        func_800A456C
/* EFE40 80046930 00002821 */   addu      $a1, $zero, $zero
/* EFE44 80046934 8E04000C */  lw         $a0, 0xc($s0)
/* EFE48 80046938 24050040 */  addiu      $a1, $zero, 0x40
/* EFE4C 8004693C 0C028D89 */  jal        func_800A3624
/* EFE50 80046940 24060040 */   addiu     $a2, $zero, 0x40
/* EFE54 80046944 24020078 */  addiu      $v0, $zero, 0x78
/* EFE58 80046948 AFA20010 */  sw         $v0, 0x10($sp)
/* EFE5C 8004694C 8E04000C */  lw         $a0, 0xc($s0)
/* EFE60 80046950 240500FF */  addiu      $a1, $zero, 0xff
/* EFE64 80046954 240600FF */  addiu      $a2, $zero, 0xff
/* EFE68 80046958 0C028E41 */  jal        func_800A3904
/* EFE6C 8004695C 240700FF */   addiu     $a3, $zero, 0xff
/* EFE70 80046960 8E03000C */  lw         $v1, 0xc($s0)
/* EFE74 80046964 24040011 */  addiu      $a0, $zero, 0x11
/* EFE78 80046968 9462001E */  lhu        $v0, 0x1e($v1)
/* EFE7C 8004696C 24050001 */  addiu      $a1, $zero, 1
/* EFE80 80046970 24060055 */  addiu      $a2, $zero, 0x55
/* EFE84 80046974 34420106 */  ori        $v0, $v0, 0x106
/* EFE88 80046978 0C00D925 */  jal        func_80036494_DF9A4
/* EFE8C 8004697C A462001E */   sh        $v0, 0x1e($v1)
/* EFE90 80046980 00408021 */  addu       $s0, $v0, $zero
/* EFE94 80046984 8E04000C */  lw         $a0, 0xc($s0)
/* EFE98 80046988 24050038 */  addiu      $a1, $zero, 0x38
/* EFE9C 8004698C 0C028F9A */  jal        func_800A3E68
/* EFEA0 80046990 2406004E */   addiu     $a2, $zero, 0x4e
/* EFEA4 80046994 8E04000C */  lw         $a0, 0xc($s0)
/* EFEA8 80046998 24050040 */  addiu      $a1, $zero, 0x40
/* EFEAC 8004699C 0C028D89 */  jal        func_800A3624
/* EFEB0 800469A0 24060040 */   addiu     $a2, $zero, 0x40
/* EFEB4 800469A4 24020080 */  addiu      $v0, $zero, 0x80
/* EFEB8 800469A8 AFA20010 */  sw         $v0, 0x10($sp)
/* EFEBC 800469AC 8E04000C */  lw         $a0, 0xc($s0)
/* EFEC0 800469B0 240500FF */  addiu      $a1, $zero, 0xff
/* EFEC4 800469B4 240600FF */  addiu      $a2, $zero, 0xff
/* EFEC8 800469B8 0C028E41 */  jal        func_800A3904
/* EFECC 800469BC 240700FF */   addiu     $a3, $zero, 0xff
/* EFED0 800469C0 8E03000C */  lw         $v1, 0xc($s0)
/* EFED4 800469C4 9462001E */  lhu        $v0, 0x1e($v1)
/* EFED8 800469C8 34420006 */  ori        $v0, $v0, 6
/* EFEDC 800469CC A462001E */  sh         $v0, 0x1e($v1)
/* EFEE0 800469D0 8E03000C */  lw         $v1, 0xc($s0)
/* EFEE4 800469D4 24040031 */  addiu      $a0, $zero, 0x31
/* EFEE8 800469D8 2402004C */  addiu      $v0, $zero, 0x4c
/* EFEEC 800469DC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFEF0 800469E0 A462001C */   sh        $v0, 0x1c($v1)
/* EFEF4 800469E4 00409021 */  addu       $s2, $v0, $zero
/* EFEF8 800469E8 3C01C23E */  lui        $at, 0xc23e
/* EFEFC 800469EC 3421999A */  ori        $at, $at, 0x999a
/* EFF00 800469F0 44811000 */  mtc1       $at, $f2
/* EFF04 800469F4 3C01438D */  lui        $at, 0x438d
/* EFF08 800469F8 3421FC29 */  ori        $at, $at, 0xfc29
/* EFF0C 800469FC 44812000 */  mtc1       $at, $f4
/* EFF10 80046A00 3C01C28C */  lui        $at, 0xc28c
/* EFF14 80046A04 3421851F */  ori        $at, $at, 0x851f
/* EFF18 80046A08 44813000 */  mtc1       $at, $f6
/* EFF1C 80046A0C 3C013E19 */  lui        $at, 0x3e19
/* EFF20 80046A10 3421999A */  ori        $at, $at, 0x999a
/* EFF24 80046A14 4481A000 */  mtc1       $at, $f20
/* EFF28 80046A18 3C01433E */  lui        $at, 0x433e
/* EFF2C 80046A1C 44810000 */  mtc1       $at, $f0
/* EFF30 80046A20 02402021 */  addu       $a0, $s2, $zero
/* EFF34 80046A24 24050056 */  addiu      $a1, $zero, 0x56
/* EFF38 80046A28 241000FF */  addiu      $s0, $zero, 0xff
/* EFF3C 80046A2C AE40001C */  sw         $zero, 0x1c($s2)
/* EFF40 80046A30 AE400024 */  sw         $zero, 0x24($s2)
/* EFF44 80046A34 A6500074 */  sh         $s0, 0x74($s2)
/* EFF48 80046A38 A6500076 */  sh         $s0, 0x76($s2)
/* EFF4C 80046A3C A6500078 */  sh         $s0, 0x78($s2)
/* EFF50 80046A40 A650007A */  sh         $s0, 0x7a($s2)
/* EFF54 80046A44 A6510070 */  sh         $s1, 0x70($s2)
/* EFF58 80046A48 E6540028 */  swc1       $f20, 0x28($s2)
/* EFF5C 80046A4C E6420010 */  swc1       $f2, 0x10($s2)
/* EFF60 80046A50 E6440014 */  swc1       $f4, 0x14($s2)
/* EFF64 80046A54 E6460018 */  swc1       $f6, 0x18($s2)
/* EFF68 80046A58 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFF6C 80046A5C E6400020 */   swc1      $f0, 0x20($s2)
/* EFF70 80046A60 8E420004 */  lw         $v0, 4($s2)
/* EFF74 80046A64 A0400067 */  sb         $zero, 0x67($v0)
/* EFF78 80046A68 8E430004 */  lw         $v1, 4($s2)
/* EFF7C 80046A6C 90620066 */  lbu        $v0, 0x66($v1)
/* EFF80 80046A70 24040032 */  addiu      $a0, $zero, 0x32
/* EFF84 80046A74 34420007 */  ori        $v0, $v0, 7
/* EFF88 80046A78 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EFF8C 80046A7C A0620066 */   sb        $v0, 0x66($v1)
/* EFF90 80046A80 00409021 */  addu       $s2, $v0, $zero
/* EFF94 80046A84 3C01C311 */  lui        $at, 0xc311
/* EFF98 80046A88 34210F5C */  ori        $at, $at, 0xf5c
/* EFF9C 80046A8C 44810000 */  mtc1       $at, $f0
/* EFFA0 80046A90 3C01438F */  lui        $at, 0x438f
/* EFFA4 80046A94 34217C29 */  ori        $at, $at, 0x7c29
/* EFFA8 80046A98 44811000 */  mtc1       $at, $f2
/* EFFAC 80046A9C 3C01C221 */  lui        $at, 0xc221
/* EFFB0 80046AA0 34210A3D */  ori        $at, $at, 0xa3d
/* EFFB4 80046AA4 44812000 */  mtc1       $at, $f4
/* EFFB8 80046AA8 3C01432A */  lui        $at, 0x432a
/* EFFBC 80046AAC 44813000 */  mtc1       $at, $f6
/* EFFC0 80046AB0 02402021 */  addu       $a0, $s2, $zero
/* EFFC4 80046AB4 24050056 */  addiu      $a1, $zero, 0x56
/* EFFC8 80046AB8 E6540028 */  swc1       $f20, 0x28($s2)
/* EFFCC 80046ABC AE40001C */  sw         $zero, 0x1c($s2)
/* EFFD0 80046AC0 AE400024 */  sw         $zero, 0x24($s2)
/* EFFD4 80046AC4 A6500074 */  sh         $s0, 0x74($s2)
/* EFFD8 80046AC8 A6500076 */  sh         $s0, 0x76($s2)
/* EFFDC 80046ACC A6500078 */  sh         $s0, 0x78($s2)
/* EFFE0 80046AD0 A650007A */  sh         $s0, 0x7a($s2)
/* EFFE4 80046AD4 A6510070 */  sh         $s1, 0x70($s2)
/* EFFE8 80046AD8 E6400010 */  swc1       $f0, 0x10($s2)
/* EFFEC 80046ADC E6420014 */  swc1       $f2, 0x14($s2)
/* EFFF0 80046AE0 E6440018 */  swc1       $f4, 0x18($s2)
/* EFFF4 80046AE4 0C00DFE6 */  jal        func_80037F98_E14A8
/* EFFF8 80046AE8 E6460020 */   swc1      $f6, 0x20($s2)
/* EFFFC 80046AEC 8E420004 */  lw         $v0, 4($s2)
/* F0000 80046AF0 A0400067 */  sb         $zero, 0x67($v0)
/* F0004 80046AF4 8E430004 */  lw         $v1, 4($s2)
/* F0008 80046AF8 90620066 */  lbu        $v0, 0x66($v1)
/* F000C 80046AFC 24040033 */  addiu      $a0, $zero, 0x33
/* F0010 80046B00 34420007 */  ori        $v0, $v0, 7
/* F0014 80046B04 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F0018 80046B08 A0620066 */   sb        $v0, 0x66($v1)
/* F001C 80046B0C 00409021 */  addu       $s2, $v0, $zero
/* F0020 80046B10 3C01C000 */  lui        $at, 0xc000
/* F0024 80046B14 44810000 */  mtc1       $at, $f0
/* F0028 80046B18 3C013D23 */  lui        $at, 0x3d23
/* F002C 80046B1C 3421D70A */  ori        $at, $at, 0xd70a
/* F0030 80046B20 4481A000 */  mtc1       $at, $f20
/* F0034 80046B24 3C014020 */  lui        $at, 0x4020
/* F0038 80046B28 4481B000 */  mtc1       $at, $f22
/* F003C 80046B2C 02402021 */  addu       $a0, $s2, $zero
/* F0040 80046B30 240500A3 */  addiu      $a1, $zero, 0xa3
/* F0044 80046B34 AE400010 */  sw         $zero, 0x10($s2)
/* F0048 80046B38 AE400018 */  sw         $zero, 0x18($s2)
/* F004C 80046B3C AE400020 */  sw         $zero, 0x20($s2)
/* F0050 80046B40 AE400024 */  sw         $zero, 0x24($s2)
/* F0054 80046B44 A6500074 */  sh         $s0, 0x74($s2)
/* F0058 80046B48 A6500076 */  sh         $s0, 0x76($s2)
/* F005C 80046B4C A6500078 */  sh         $s0, 0x78($s2)
/* F0060 80046B50 A650007A */  sh         $s0, 0x7a($s2)
/* F0064 80046B54 E6540028 */  swc1       $f20, 0x28($s2)
/* F0068 80046B58 E656001C */  swc1       $f22, 0x1c($s2)
/* F006C 80046B5C 0C00DFE6 */  jal        func_80037F98_E14A8
/* F0070 80046B60 E6400014 */   swc1      $f0, 0x14($s2)
/* F0074 80046B64 8E420004 */  lw         $v0, 4($s2)
/* F0078 80046B68 2411000B */  addiu      $s1, $zero, 0xb
/* F007C 80046B6C A0510067 */  sb         $s1, 0x67($v0)
/* F0080 80046B70 8E430004 */  lw         $v1, 4($s2)
/* F0084 80046B74 90620066 */  lbu        $v0, 0x66($v1)
/* F0088 80046B78 24040034 */  addiu      $a0, $zero, 0x34
/* F008C 80046B7C 34420023 */  ori        $v0, $v0, 0x23
/* F0090 80046B80 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F0094 80046B84 A0620066 */   sb        $v0, 0x66($v1)
/* F0098 80046B88 00409021 */  addu       $s2, $v0, $zero
/* F009C 80046B8C 02402021 */  addu       $a0, $s2, $zero
/* F00A0 80046B90 240500A4 */  addiu      $a1, $zero, 0xa4
/* F00A4 80046B94 AE400010 */  sw         $zero, 0x10($s2)
/* F00A8 80046B98 AE400014 */  sw         $zero, 0x14($s2)
/* F00AC 80046B9C AE400018 */  sw         $zero, 0x18($s2)
/* F00B0 80046BA0 E6540028 */  swc1       $f20, 0x28($s2)
/* F00B4 80046BA4 E656001C */  swc1       $f22, 0x1c($s2)
/* F00B8 80046BA8 AE400020 */  sw         $zero, 0x20($s2)
/* F00BC 80046BAC AE400024 */  sw         $zero, 0x24($s2)
/* F00C0 80046BB0 A6500074 */  sh         $s0, 0x74($s2)
/* F00C4 80046BB4 A6500076 */  sh         $s0, 0x76($s2)
/* F00C8 80046BB8 A6500078 */  sh         $s0, 0x78($s2)
/* F00CC 80046BBC 0C00DFE6 */  jal        func_80037F98_E14A8
/* F00D0 80046BC0 A650007A */   sh        $s0, 0x7a($s2)
/* F00D4 80046BC4 8E420004 */  lw         $v0, 4($s2)
/* F00D8 80046BC8 A0510067 */  sb         $s1, 0x67($v0)
/* F00DC 80046BCC 8E430004 */  lw         $v1, 4($s2)
/* F00E0 80046BD0 90620066 */  lbu        $v0, 0x66($v1)
/* F00E4 80046BD4 24040035 */  addiu      $a0, $zero, 0x35
/* F00E8 80046BD8 34420007 */  ori        $v0, $v0, 7
/* F00EC 80046BDC 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F00F0 80046BE0 A0620066 */   sb        $v0, 0x66($v1)
/* F00F4 80046BE4 00409021 */  addu       $s2, $v0, $zero
/* F00F8 80046BE8 3C01C0AA */  lui        $at, 0xc0aa
/* F00FC 80046BEC 34213D71 */  ori        $at, $at, 0x3d71
/* F0100 80046BF0 4481B000 */  mtc1       $at, $f22
/* F0104 80046BF4 3C0141CB */  lui        $at, 0x41cb
/* F0108 80046BF8 34215C29 */  ori        $at, $at, 0x5c29
/* F010C 80046BFC 44810000 */  mtc1       $at, $f0
/* F0110 80046C00 3C013D1B */  lui        $at, 0x3d1b
/* F0114 80046C04 3421A5E3 */  ori        $at, $at, 0xa5e3
/* F0118 80046C08 4481A000 */  mtc1       $at, $f20
/* F011C 80046C0C 02402021 */  addu       $a0, $s2, $zero
/* F0120 80046C10 240500C8 */  addiu      $a1, $zero, 0xc8
/* F0124 80046C14 AE400010 */  sw         $zero, 0x10($s2)
/* F0128 80046C18 AE40001C */  sw         $zero, 0x1c($s2)
/* F012C 80046C1C AE400020 */  sw         $zero, 0x20($s2)
/* F0130 80046C20 AE400024 */  sw         $zero, 0x24($s2)
/* F0134 80046C24 A6500074 */  sh         $s0, 0x74($s2)
/* F0138 80046C28 A6500076 */  sh         $s0, 0x76($s2)
/* F013C 80046C2C A6500078 */  sh         $s0, 0x78($s2)
/* F0140 80046C30 A650007A */  sh         $s0, 0x7a($s2)
/* F0144 80046C34 A6400070 */  sh         $zero, 0x70($s2)
/* F0148 80046C38 E6560014 */  swc1       $f22, 0x14($s2)
/* F014C 80046C3C E6540028 */  swc1       $f20, 0x28($s2)
/* F0150 80046C40 0C00DFE6 */  jal        func_80037F98_E14A8
/* F0154 80046C44 E6400018 */   swc1      $f0, 0x18($s2)
/* F0158 80046C48 8E420004 */  lw         $v0, 4($s2)
/* F015C 80046C4C A0400067 */  sb         $zero, 0x67($v0)
/* F0160 80046C50 8E430004 */  lw         $v1, 4($s2)
/* F0164 80046C54 24110001 */  addiu      $s1, $zero, 1
/* F0168 80046C58 A6510072 */  sh         $s1, 0x72($s2)
/* F016C 80046C5C 90620066 */  lbu        $v0, 0x66($v1)
/* F0170 80046C60 24040036 */  addiu      $a0, $zero, 0x36
/* F0174 80046C64 34420007 */  ori        $v0, $v0, 7
/* F0178 80046C68 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F017C 80046C6C A0620066 */   sb        $v0, 0x66($v1)
/* F0180 80046C70 00409021 */  addu       $s2, $v0, $zero
/* F0184 80046C74 3C01C100 */  lui        $at, 0xc100
/* F0188 80046C78 44810000 */  mtc1       $at, $f0
/* F018C 80046C7C 02402021 */  addu       $a0, $s2, $zero
/* F0190 80046C80 240500C8 */  addiu      $a1, $zero, 0xc8
/* F0194 80046C84 AE400010 */  sw         $zero, 0x10($s2)
/* F0198 80046C88 E6560014 */  swc1       $f22, 0x14($s2)
/* F019C 80046C8C E6540028 */  swc1       $f20, 0x28($s2)
/* F01A0 80046C90 AE40001C */  sw         $zero, 0x1c($s2)
/* F01A4 80046C94 AE400020 */  sw         $zero, 0x20($s2)
/* F01A8 80046C98 AE400024 */  sw         $zero, 0x24($s2)
/* F01AC 80046C9C A6500074 */  sh         $s0, 0x74($s2)
/* F01B0 80046CA0 A6500076 */  sh         $s0, 0x76($s2)
/* F01B4 80046CA4 A6500078 */  sh         $s0, 0x78($s2)
/* F01B8 80046CA8 A650007A */  sh         $s0, 0x7a($s2)
/* F01BC 80046CAC A6400070 */  sh         $zero, 0x70($s2)
/* F01C0 80046CB0 0C00DFE6 */  jal        func_80037F98_E14A8
/* F01C4 80046CB4 E6400018 */   swc1      $f0, 0x18($s2)
/* F01C8 80046CB8 8E420004 */  lw         $v0, 4($s2)
/* F01CC 80046CBC A0400067 */  sb         $zero, 0x67($v0)
/* F01D0 80046CC0 8E430004 */  lw         $v1, 4($s2)
/* F01D4 80046CC4 A6510072 */  sh         $s1, 0x72($s2)
/* F01D8 80046CC8 90620066 */  lbu        $v0, 0x66($v1)
/* F01DC 80046CCC 24040037 */  addiu      $a0, $zero, 0x37
/* F01E0 80046CD0 34420007 */  ori        $v0, $v0, 7
/* F01E4 80046CD4 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F01E8 80046CD8 A0620066 */   sb        $v0, 0x66($v1)
/* F01EC 80046CDC 00409021 */  addu       $s2, $v0, $zero
/* F01F0 80046CE0 3C01C1FA */  lui        $at, 0xc1fa
/* F01F4 80046CE4 3421F5C3 */  ori        $at, $at, 0xf5c3
/* F01F8 80046CE8 44810000 */  mtc1       $at, $f0
/* F01FC 80046CEC 02402021 */  addu       $a0, $s2, $zero
/* F0200 80046CF0 240500C8 */  addiu      $a1, $zero, 0xc8
/* F0204 80046CF4 AE400010 */  sw         $zero, 0x10($s2)
/* F0208 80046CF8 E6560014 */  swc1       $f22, 0x14($s2)
/* F020C 80046CFC E6540028 */  swc1       $f20, 0x28($s2)
/* F0210 80046D00 AE40001C */  sw         $zero, 0x1c($s2)
/* F0214 80046D04 AE400020 */  sw         $zero, 0x20($s2)
/* F0218 80046D08 AE400024 */  sw         $zero, 0x24($s2)
/* F021C 80046D0C A6500074 */  sh         $s0, 0x74($s2)
/* F0220 80046D10 A6500076 */  sh         $s0, 0x76($s2)
/* F0224 80046D14 A6500078 */  sh         $s0, 0x78($s2)
/* F0228 80046D18 A650007A */  sh         $s0, 0x7a($s2)
/* F022C 80046D1C A6400070 */  sh         $zero, 0x70($s2)
/* F0230 80046D20 0C00DFE6 */  jal        func_80037F98_E14A8
/* F0234 80046D24 E6400018 */   swc1      $f0, 0x18($s2)
/* F0238 80046D28 8E420004 */  lw         $v0, 4($s2)
/* F023C 80046D2C 3C0141B9 */  lui        $at, 0x41b9
/* F0240 80046D30 3421999A */  ori        $at, $at, 0x999a
/* F0244 80046D34 44810000 */  mtc1       $at, $f0
/* F0248 80046D38 3C01C00C */  lui        $at, 0xc00c
/* F024C 80046D3C 342128F6 */  ori        $at, $at, 0x28f6
/* F0250 80046D40 44811000 */  mtc1       $at, $f2
/* F0254 80046D44 3C013F80 */  lui        $at, 0x3f80
/* F0258 80046D48 44812000 */  mtc1       $at, $f4
/* F025C 80046D4C 3C01C138 */  lui        $at, 0xc138
/* F0260 80046D50 342151EC */  ori        $at, $at, 0x51ec
/* F0264 80046D54 44813000 */  mtc1       $at, $f6
/* F0268 80046D58 3C014367 */  lui        $at, 0x4367
/* F026C 80046D5C 34218CCD */  ori        $at, $at, 0x8ccd
/* F0270 80046D60 44814000 */  mtc1       $at, $f8
/* F0274 80046D64 A0400067 */  sb         $zero, 0x67($v0)
/* F0278 80046D68 8E430004 */  lw         $v1, 4($s2)
/* F027C 80046D6C A6510072 */  sh         $s1, 0x72($s2)
/* F0280 80046D70 90620066 */  lbu        $v0, 0x66($v1)
/* F0284 80046D74 3C01C2A5 */  lui        $at, 0xc2a5
/* F0288 80046D78 3421D70A */  ori        $at, $at, 0xd70a
/* F028C 80046D7C 44815000 */  mtc1       $at, $f10
/* F0290 80046D80 34420007 */  ori        $v0, $v0, 7
/* F0294 80046D84 A0620066 */  sb         $v0, 0x66($v1)
/* F0298 80046D88 3C018015 */  lui        $at, %hi(D_8014A064)
/* F029C 80046D8C AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F02A0 80046D90 3C018015 */  lui        $at, %hi(D_8014A068)
/* F02A4 80046D94 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* F02A8 80046D98 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F02AC 80046D9C E422A06C */  swc1       $f2, %lo(D_8014A06C)($at)
/* F02B0 80046DA0 3C018015 */  lui        $at, %hi(D_8014A070)
/* F02B4 80046DA4 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F02B8 80046DA8 3C018015 */  lui        $at, %hi(D_8014A074)
/* F02BC 80046DAC E424A074 */  swc1       $f4, %lo(D_8014A074)($at)
/* F02C0 80046DB0 3C018015 */  lui        $at, %hi(D_8014A078)
/* F02C4 80046DB4 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F02C8 80046DB8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F02CC 80046DBC E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* F02D0 80046DC0 3C018015 */  lui        $at, %hi(D_8014A080)
/* F02D4 80046DC4 E428A080 */  swc1       $f8, %lo(D_8014A080)($at)
/* F02D8 80046DC8 3C018015 */  lui        $at, %hi(D_8014A084)
/* F02DC 80046DCC AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F02E0 80046DD0 3C018015 */  lui        $at, %hi(D_8014A088)
/* F02E4 80046DD4 0C00E339 */  jal        func_80038CE4_E21F4
/* F02E8 80046DD8 E42AA088 */   swc1      $f10, %lo(D_8014A088)($at)
/* F02EC 80046DDC 3C0141A9 */  lui        $at, 0x41a9
/* F02F0 80046DE0 3421AE14 */  ori        $at, $at, 0xae14
/* F02F4 80046DE4 44810000 */  mtc1       $at, $f0
/* F02F8 80046DE8 3C01C027 */  lui        $at, 0xc027
/* F02FC 80046DEC 34210A3D */  ori        $at, $at, 0xa3d
/* F0300 80046DF0 44811000 */  mtc1       $at, $f2
/* F0304 80046DF4 3C014199 */  lui        $at, 0x4199
/* F0308 80046DF8 3421851F */  ori        $at, $at, 0x851f
/* F030C 80046DFC 44812000 */  mtc1       $at, $f4
/* F0310 80046E00 3C0141BB */  lui        $at, 0x41bb
/* F0314 80046E04 342147AE */  ori        $at, $at, 0x47ae
/* F0318 80046E08 44813000 */  mtc1       $at, $f6
/* F031C 80046E0C 3C01417E */  lui        $at, 0x417e
/* F0320 80046E10 3421B852 */  ori        $at, $at, 0xb852
/* F0324 80046E14 44814000 */  mtc1       $at, $f8
/* F0328 80046E18 3C018015 */  lui        $at, %hi(D_8014A054)
/* F032C 80046E1C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F0330 80046E20 3C018015 */  lui        $at, %hi(D_8014A050)
/* F0334 80046E24 E420A050 */  swc1       $f0, %lo(D_8014A050)($at)
/* F0338 80046E28 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F033C 80046E2C E422D1A8 */  swc1       $f2, %lo(D_8016D1A8)($at)
/* F0340 80046E30 3C018017 */  lui        $at, %hi(D_8016E568)
/* F0344 80046E34 E424E568 */  swc1       $f4, %lo(D_8016E568)($at)
/* F0348 80046E38 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F034C 80046E3C E426D0D0 */  swc1       $f6, %lo(D_8016D0D0)($at)
/* F0350 80046E40 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F0354 80046E44 E428D0D4 */  swc1       $f8, %lo(D_8016D0D4)($at)
/* F0358 80046E48 8FBF0064 */  lw         $ra, 0x64($sp)
/* F035C 80046E4C 8FB20060 */  lw         $s2, 0x60($sp)
/* F0360 80046E50 8FB1005C */  lw         $s1, 0x5c($sp)
/* F0364 80046E54 8FB00058 */  lw         $s0, 0x58($sp)
/* F0368 80046E58 D7B60070 */  ldc1       $f22, 0x70($sp)
/* F036C 80046E5C D7B40068 */  ldc1       $f20, 0x68($sp)
/* F0370 80046E60 03E00008 */  jr         $ra
/* F0374 80046E64 27BD0078 */   addiu     $sp, $sp, 0x78

glabel func_80046E68_F0378
/* F0378 80046E68 27BDFF98 */  addiu      $sp, $sp, -0x68
/* F037C 80046E6C AFBF0058 */  sw         $ra, 0x58($sp)
/* F0380 80046E70 AFB10054 */  sw         $s1, 0x54($sp)
/* F0384 80046E74 AFB00050 */  sw         $s0, 0x50($sp)
/* F0388 80046E78 F7B40060 */  sdc1       $f20, 0x60($sp)
/* F038C 80046E7C 0C00E109 */  jal        func_80038424_E1934
/* F0390 80046E80 241000FF */   addiu     $s0, $zero, 0xff
/* F0394 80046E84 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F0398 80046E88 24040022 */   addiu     $a0, $zero, 0x22
/* F039C 80046E8C 00408821 */  addu       $s1, $v0, $zero
/* F03A0 80046E90 3C01C1F3 */  lui        $at, 0xc1f3
/* F03A4 80046E94 3421C28F */  ori        $at, $at, 0xc28f
/* F03A8 80046E98 4481A000 */  mtc1       $at, $f20
/* F03AC 80046E9C 3C01408C */  lui        $at, 0x408c
/* F03B0 80046EA0 34217AE1 */  ori        $at, $at, 0x7ae1
/* F03B4 80046EA4 44810000 */  mtc1       $at, $f0
/* F03B8 80046EA8 3C013C5E */  lui        $at, 0x3c5e
/* F03BC 80046EAC 342154B5 */  ori        $at, $at, 0x54b5
/* F03C0 80046EB0 44811000 */  mtc1       $at, $f2
/* F03C4 80046EB4 3C014188 */  lui        $at, 0x4188
/* F03C8 80046EB8 44812000 */  mtc1       $at, $f4
/* F03CC 80046EBC 02202021 */  addu       $a0, $s1, $zero
/* F03D0 80046EC0 2405008C */  addiu      $a1, $zero, 0x8c
/* F03D4 80046EC4 2402FFFF */  addiu      $v0, $zero, -1
/* F03D8 80046EC8 AE200010 */  sw         $zero, 0x10($s1)
/* F03DC 80046ECC AE200020 */  sw         $zero, 0x20($s1)
/* F03E0 80046ED0 AE200024 */  sw         $zero, 0x24($s1)
/* F03E4 80046ED4 A6300074 */  sh         $s0, 0x74($s1)
/* F03E8 80046ED8 A6300076 */  sh         $s0, 0x76($s1)
/* F03EC 80046EDC A6300078 */  sh         $s0, 0x78($s1)
/* F03F0 80046EE0 A630007A */  sh         $s0, 0x7a($s1)
/* F03F4 80046EE4 A6220070 */  sh         $v0, 0x70($s1)
/* F03F8 80046EE8 E6340014 */  swc1       $f20, 0x14($s1)
/* F03FC 80046EEC E6200018 */  swc1       $f0, 0x18($s1)
/* F0400 80046EF0 E6220028 */  swc1       $f2, 0x28($s1)
/* F0404 80046EF4 0C00DFE6 */  jal        func_80037F98_E14A8
/* F0408 80046EF8 E624001C */   swc1      $f4, 0x1c($s1)
/* F040C 80046EFC 8E220004 */  lw         $v0, 4($s1)
/* F0410 80046F00 A0400067 */  sb         $zero, 0x67($v0)
/* F0414 80046F04 8E230004 */  lw         $v1, 4($s1)
/* F0418 80046F08 90620066 */  lbu        $v0, 0x66($v1)
/* F041C 80046F0C 34420007 */  ori        $v0, $v0, 7
/* F0420 80046F10 A0620066 */  sb         $v0, 0x66($v1)
/* F0424 80046F14 8E240004 */  lw         $a0, 4($s1)
/* F0428 80046F18 3C058007 */  lui        $a1, %hi(D_8006A094)
/* F042C 80046F1C 0C0284DC */  jal        func_800A1370
/* F0430 80046F20 24A5A094 */   addiu     $a1, $a1, %lo(D_8006A094)
/* F0434 80046F24 8E240004 */  lw         $a0, 4($s1)
/* F0438 80046F28 3045FFFF */  andi       $a1, $v0, 0xffff
/* F043C 80046F2C 0C02869D */  jal        func_800A1A74
/* F0440 80046F30 00003021 */   addu      $a2, $zero, $zero
/* F0444 80046F34 0C00DFA8 */  jal        func_80037EA0_E13B0
/* F0448 80046F38 2404001F */   addiu     $a0, $zero, 0x1f
/* F044C 80046F3C 00408821 */  addu       $s1, $v0, $zero
/* F0450 80046F40 3C014110 */  lui        $at, 0x4110
/* F0454 80046F44 44810000 */  mtc1       $at, $f0
/* F0458 80046F48 3C013D71 */  lui        $at, 0x3d71
/* F045C 80046F4C 3421A9FC */  ori        $at, $at, 0xa9fc
/* F0460 80046F50 44811000 */  mtc1       $at, $f2
/* F0464 80046F54 02202021 */  addu       $a0, $s1, $zero
/* F0468 80046F58 24050047 */  addiu      $a1, $zero, 0x47
/* F046C 80046F5C AE200010 */  sw         $zero, 0x10($s1)
/* F0470 80046F60 E6340014 */  swc1       $f20, 0x14($s1)
/* F0474 80046F64 AE20001C */  sw         $zero, 0x1c($s1)
/* F0478 80046F68 AE200020 */  sw         $zero, 0x20($s1)
/* F047C 80046F6C AE200024 */  sw         $zero, 0x24($s1)
/* F0480 80046F70 A6300074 */  sh         $s0, 0x74($s1)
/* F0484 80046F74 A6300076 */  sh         $s0, 0x76($s1)
/* F0488 80046F78 A6300078 */  sh         $s0, 0x78($s1)
/* F048C 80046F7C A630007A */  sh         $s0, 0x7a($s1)
/* F0490 80046F80 E6200018 */  swc1       $f0, 0x18($s1)
/* F0494 80046F84 0C00DFE6 */  jal        func_80037F98_E14A8
/* F0498 80046F88 E6220028 */   swc1      $f2, 0x28($s1)
/* F049C 80046F8C 8E220004 */  lw         $v0, 4($s1)
/* F04A0 80046F90 3C018007 */  lui        $at, %hi(D_8006A09C)
/* F04A4 80046F94 C420A09C */  lwc1       $f0, %lo(D_8006A09C)($at)
/* F04A8 80046F98 3C01BE4C */  lui        $at, 0xbe4c
/* F04AC 80046F9C 3421CCCD */  ori        $at, $at, 0xcccd
/* F04B0 80046FA0 44811000 */  mtc1       $at, $f2
/* F04B4 80046FA4 3C013F80 */  lui        $at, 0x3f80
/* F04B8 80046FA8 44812000 */  mtc1       $at, $f4
/* F04BC 80046FAC A0400067 */  sb         $zero, 0x67($v0)
/* F04C0 80046FB0 8E230004 */  lw         $v1, 4($s1)
/* F04C4 80046FB4 3C01C21B */  lui        $at, 0xc21b
/* F04C8 80046FB8 3421B852 */  ori        $at, $at, 0xb852
/* F04CC 80046FBC 44813000 */  mtc1       $at, $f6
/* F04D0 80046FC0 3C01422C */  lui        $at, 0x422c
/* F04D4 80046FC4 3421999A */  ori        $at, $at, 0x999a
/* F04D8 80046FC8 44814000 */  mtc1       $at, $f8
/* F04DC 80046FCC 90620066 */  lbu        $v0, 0x66($v1)
/* F04E0 80046FD0 3C01C2BF */  lui        $at, 0xc2bf
/* F04E4 80046FD4 3421570A */  ori        $at, $at, 0x570a
/* F04E8 80046FD8 44815000 */  mtc1       $at, $f10
/* F04EC 80046FDC 34420003 */  ori        $v0, $v0, 3
/* F04F0 80046FE0 A0620066 */  sb         $v0, 0x66($v1)
/* F04F4 80046FE4 3C018015 */  lui        $at, %hi(D_8014A064)
/* F04F8 80046FE8 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F04FC 80046FEC 3C018015 */  lui        $at, %hi(D_8014A068)
/* F0500 80046FF0 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* F0504 80046FF4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F0508 80046FF8 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F050C 80046FFC 3C018015 */  lui        $at, %hi(D_8014A070)
/* F0510 80047000 E422A070 */  swc1       $f2, %lo(D_8014A070)($at)
/* F0514 80047004 3C018015 */  lui        $at, %hi(D_8014A074)
/* F0518 80047008 E424A074 */  swc1       $f4, %lo(D_8014A074)($at)
/* F051C 8004700C 3C018015 */  lui        $at, %hi(D_8014A078)
/* F0520 80047010 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F0524 80047014 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F0528 80047018 E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* F052C 8004701C 3C018015 */  lui        $at, %hi(D_8014A080)
/* F0530 80047020 E428A080 */  swc1       $f8, %lo(D_8014A080)($at)
/* F0534 80047024 3C018015 */  lui        $at, %hi(D_8014A084)
/* F0538 80047028 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F053C 8004702C 3C018015 */  lui        $at, %hi(D_8014A088)
/* F0540 80047030 0C00E339 */  jal        func_80038CE4_E21F4
/* F0544 80047034 E42AA088 */   swc1      $f10, %lo(D_8014A088)($at)
/* F0548 80047038 3C01C0A0 */  lui        $at, 0xc0a0
/* F054C 8004703C 44810000 */  mtc1       $at, $f0
/* F0550 80047040 3C0140A0 */  lui        $at, 0x40a0
/* F0554 80047044 44811000 */  mtc1       $at, $f2
/* F0558 80047048 3C018015 */  lui        $at, %hi(D_8014A054)
/* F055C 8004704C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F0560 80047050 3C018015 */  lui        $at, %hi(D_8014A050)
/* F0564 80047054 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* F0568 80047058 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F056C 8004705C AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* F0570 80047060 3C018017 */  lui        $at, %hi(D_8016E568)
/* F0574 80047064 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* F0578 80047068 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F057C 8004706C E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* F0580 80047070 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F0584 80047074 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* F0588 80047078 8FBF0058 */  lw         $ra, 0x58($sp)
/* F058C 8004707C 8FB10054 */  lw         $s1, 0x54($sp)
/* F0590 80047080 8FB00050 */  lw         $s0, 0x50($sp)
/* F0594 80047084 D7B40060 */  ldc1       $f20, 0x60($sp)
/* F0598 80047088 03E00008 */  jr         $ra
/* F059C 8004708C 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_80047090_F05A0
/* F05A0 80047090 27BDFEB0 */  addiu      $sp, $sp, -0x150
/* F05A4 80047094 AFB50124 */  sw         $s5, 0x124($sp)
/* F05A8 80047098 27A70058 */  addiu      $a3, $sp, 0x58
/* F05AC 8004709C 3C068007 */  lui        $a2, %hi(D_8006A0A0)
/* F05B0 800470A0 24C6A0A0 */  addiu      $a2, $a2, %lo(D_8006A0A0)
/* F05B4 800470A4 00E61025 */  or         $v0, $a3, $a2
/* F05B8 800470A8 30420003 */  andi       $v0, $v0, 3
/* F05BC 800470AC AFBF0130 */  sw         $ra, 0x130($sp)
/* F05C0 800470B0 AFB7012C */  sw         $s7, 0x12c($sp)
/* F05C4 800470B4 AFB60128 */  sw         $s6, 0x128($sp)
/* F05C8 800470B8 AFB40120 */  sw         $s4, 0x120($sp)
/* F05CC 800470BC AFB3011C */  sw         $s3, 0x11c($sp)
/* F05D0 800470C0 AFB20118 */  sw         $s2, 0x118($sp)
/* F05D4 800470C4 AFB10114 */  sw         $s1, 0x114($sp)
/* F05D8 800470C8 AFB00110 */  sw         $s0, 0x110($sp)
/* F05DC 800470CC F7B80148 */  sdc1       $f24, 0x148($sp)
/* F05E0 800470D0 F7B60140 */  sdc1       $f22, 0x140($sp)
/* F05E4 800470D4 F7B40138 */  sdc1       $f20, 0x138($sp)
/* F05E8 800470D8 10400017 */  beqz       $v0, .L80047138
/* F05EC 800470DC 0080A821 */   addu      $s5, $a0, $zero
/* F05F0 800470E0 24C80030 */  addiu      $t0, $a2, 0x30
.L800470E4:
/* F05F4 800470E4 88C20000 */  lwl        $v0, ($a2)
/* F05F8 800470E8 98C20003 */  lwr        $v0, 3($a2)
/* F05FC 800470EC 88C30004 */  lwl        $v1, 4($a2)
/* F0600 800470F0 98C30007 */  lwr        $v1, 7($a2)
/* F0604 800470F4 88C40008 */  lwl        $a0, 8($a2)
/* F0608 800470F8 98C4000B */  lwr        $a0, 0xb($a2)
/* F060C 800470FC 88C5000C */  lwl        $a1, 0xc($a2)
/* F0610 80047100 98C5000F */  lwr        $a1, 0xf($a2)
/* F0614 80047104 A8E20000 */  swl        $v0, ($a3)
/* F0618 80047108 B8E20003 */  swr        $v0, 3($a3)
/* F061C 8004710C A8E30004 */  swl        $v1, 4($a3)
/* F0620 80047110 B8E30007 */  swr        $v1, 7($a3)
/* F0624 80047114 A8E40008 */  swl        $a0, 8($a3)
/* F0628 80047118 B8E4000B */  swr        $a0, 0xb($a3)
/* F062C 8004711C A8E5000C */  swl        $a1, 0xc($a3)
/* F0630 80047120 B8E5000F */  swr        $a1, 0xf($a3)
/* F0634 80047124 24C60010 */  addiu      $a2, $a2, 0x10
/* F0638 80047128 14C8FFEE */  bne        $a2, $t0, .L800470E4
/* F063C 8004712C 24E70010 */   addiu     $a3, $a3, 0x10
/* F0640 80047130 08011C5A */  j          .L80047168
/* F0644 80047134 00000000 */   nop
.L80047138:
/* F0648 80047138 24C80030 */  addiu      $t0, $a2, 0x30
.L8004713C:
/* F064C 8004713C 8CC20000 */  lw         $v0, ($a2)
/* F0650 80047140 8CC30004 */  lw         $v1, 4($a2)
/* F0654 80047144 8CC40008 */  lw         $a0, 8($a2)
/* F0658 80047148 8CC5000C */  lw         $a1, 0xc($a2)
/* F065C 8004714C ACE20000 */  sw         $v0, ($a3)
/* F0660 80047150 ACE30004 */  sw         $v1, 4($a3)
/* F0664 80047154 ACE40008 */  sw         $a0, 8($a3)
/* F0668 80047158 ACE5000C */  sw         $a1, 0xc($a3)
/* F066C 8004715C 24C60010 */  addiu      $a2, $a2, 0x10
/* F0670 80047160 14C8FFF6 */  bne        $a2, $t0, .L8004713C
/* F0674 80047164 24E70010 */   addiu     $a3, $a3, 0x10
.L80047168:
/* F0678 80047168 80C20000 */  lb         $v0, ($a2)
/* F067C 8004716C 80C30001 */  lb         $v1, 1($a2)
/* F0680 80047170 80C40002 */  lb         $a0, 2($a2)
/* F0684 80047174 A0E20000 */  sb         $v0, ($a3)
/* F0688 80047178 A0E30001 */  sb         $v1, 1($a3)
/* F068C 8004717C A0E40002 */  sb         $a0, 2($a3)
/* F0690 80047180 27A70090 */  addiu      $a3, $sp, 0x90
/* F0694 80047184 3C068007 */  lui        $a2, %hi(D_8006A0D4)
/* F0698 80047188 24C6A0D4 */  addiu      $a2, $a2, %lo(D_8006A0D4)
/* F069C 8004718C 00E61025 */  or         $v0, $a3, $a2
/* F06A0 80047190 30420003 */  andi       $v0, $v0, 3
/* F06A4 80047194 10400016 */  beqz       $v0, .L800471F0
/* F06A8 80047198 24C80020 */   addiu     $t0, $a2, 0x20
.L8004719C:
/* F06AC 8004719C 88C20000 */  lwl        $v0, ($a2)
/* F06B0 800471A0 98C20003 */  lwr        $v0, 3($a2)
/* F06B4 800471A4 88C30004 */  lwl        $v1, 4($a2)
/* F06B8 800471A8 98C30007 */  lwr        $v1, 7($a2)
/* F06BC 800471AC 88C40008 */  lwl        $a0, 8($a2)
/* F06C0 800471B0 98C4000B */  lwr        $a0, 0xb($a2)
/* F06C4 800471B4 88C5000C */  lwl        $a1, 0xc($a2)
/* F06C8 800471B8 98C5000F */  lwr        $a1, 0xf($a2)
/* F06CC 800471BC A8E20000 */  swl        $v0, ($a3)
/* F06D0 800471C0 B8E20003 */  swr        $v0, 3($a3)
/* F06D4 800471C4 A8E30004 */  swl        $v1, 4($a3)
/* F06D8 800471C8 B8E30007 */  swr        $v1, 7($a3)
/* F06DC 800471CC A8E40008 */  swl        $a0, 8($a3)
/* F06E0 800471D0 B8E4000B */  swr        $a0, 0xb($a3)
/* F06E4 800471D4 A8E5000C */  swl        $a1, 0xc($a3)
/* F06E8 800471D8 B8E5000F */  swr        $a1, 0xf($a3)
/* F06EC 800471DC 24C60010 */  addiu      $a2, $a2, 0x10
/* F06F0 800471E0 14C8FFEE */  bne        $a2, $t0, .L8004719C
/* F06F4 800471E4 24E70010 */   addiu     $a3, $a3, 0x10
/* F06F8 800471E8 08011C87 */  j          .L8004721C
/* F06FC 800471EC 00000000 */   nop
.L800471F0:
/* F0700 800471F0 8CC20000 */  lw         $v0, ($a2)
/* F0704 800471F4 8CC30004 */  lw         $v1, 4($a2)
/* F0708 800471F8 8CC40008 */  lw         $a0, 8($a2)
/* F070C 800471FC 8CC5000C */  lw         $a1, 0xc($a2)
/* F0710 80047200 ACE20000 */  sw         $v0, ($a3)
/* F0714 80047204 ACE30004 */  sw         $v1, 4($a3)
/* F0718 80047208 ACE40008 */  sw         $a0, 8($a3)
/* F071C 8004720C ACE5000C */  sw         $a1, 0xc($a3)
/* F0720 80047210 24C60010 */  addiu      $a2, $a2, 0x10
/* F0724 80047214 14C8FFF6 */  bne        $a2, $t0, .L800471F0
/* F0728 80047218 24E70010 */   addiu     $a3, $a3, 0x10
.L8004721C:
/* F072C 8004721C 88C20000 */  lwl        $v0, ($a2)
/* F0730 80047220 98C20003 */  lwr        $v0, 3($a2)
/* F0734 80047224 88C30004 */  lwl        $v1, 4($a2)
/* F0738 80047228 98C30007 */  lwr        $v1, 7($a2)
/* F073C 8004722C A8E20000 */  swl        $v0, ($a3)
/* F0740 80047230 B8E20003 */  swr        $v0, 3($a3)
/* F0744 80047234 A8E30004 */  swl        $v1, 4($a3)
/* F0748 80047238 B8E30007 */  swr        $v1, 7($a3)
/* F074C 8004723C 27A700B8 */  addiu      $a3, $sp, 0xb8
/* F0750 80047240 3C068007 */  lui        $a2, %hi(D_8006A0FC)
/* F0754 80047244 24C6A0FC */  addiu      $a2, $a2, %lo(D_8006A0FC)
/* F0758 80047248 24C80020 */  addiu      $t0, $a2, 0x20
.L8004724C:
/* F075C 8004724C 8CC20000 */  lw         $v0, ($a2)
/* F0760 80047250 8CC30004 */  lw         $v1, 4($a2)
/* F0764 80047254 8CC40008 */  lw         $a0, 8($a2)
/* F0768 80047258 8CC5000C */  lw         $a1, 0xc($a2)
/* F076C 8004725C ACE20000 */  sw         $v0, ($a3)
/* F0770 80047260 ACE30004 */  sw         $v1, 4($a3)
/* F0774 80047264 ACE40008 */  sw         $a0, 8($a3)
/* F0778 80047268 ACE5000C */  sw         $a1, 0xc($a3)
/* F077C 8004726C 24C60010 */  addiu      $a2, $a2, 0x10
/* F0780 80047270 14C8FFF6 */  bne        $a2, $t0, .L8004724C
/* F0784 80047274 24E70010 */   addiu     $a3, $a3, 0x10
/* F0788 80047278 8CC20000 */  lw         $v0, ($a2)
/* F078C 8004727C 8CC30004 */  lw         $v1, 4($a2)
/* F0790 80047280 ACE20000 */  sw         $v0, ($a3)
/* F0794 80047284 ACE30004 */  sw         $v1, 4($a3)
/* F0798 80047288 3C068007 */  lui        $a2, %hi(D_8006C0C4)
/* F079C 8004728C 94C6C0C4 */  lhu        $a2, %lo(D_8006C0C4)($a2)
/* F07A0 80047290 3C058007 */  lui        $a1, %hi(D_8006A124)
/* F07A4 80047294 24A5A124 */  addiu      $a1, $a1, %lo(D_8006A124)
/* F07A8 80047298 88A20000 */  lwl        $v0, ($a1)
/* F07AC 8004729C 98A20003 */  lwr        $v0, 3($a1)
/* F07B0 800472A0 88A30004 */  lwl        $v1, 4($a1)
/* F07B4 800472A4 98A30007 */  lwr        $v1, 7($a1)
/* F07B8 800472A8 88A40008 */  lwl        $a0, 8($a1)
/* F07BC 800472AC 98A4000B */  lwr        $a0, 0xb($a1)
/* F07C0 800472B0 ABA200E0 */  swl        $v0, 0xe0($sp)
/* F07C4 800472B4 BBA200E3 */  swr        $v0, 0xe3($sp)
/* F07C8 800472B8 ABA300E4 */  swl        $v1, 0xe4($sp)
/* F07CC 800472BC BBA300E7 */  swr        $v1, 0xe7($sp)
/* F07D0 800472C0 ABA400E8 */  swl        $a0, 0xe8($sp)
/* F07D4 800472C4 BBA400EB */  swr        $a0, 0xeb($sp)
/* F07D8 800472C8 80A2000C */  lb         $v0, 0xc($a1)
/* F07DC 800472CC A3A200EC */  sb         $v0, 0xec($sp)
/* F07E0 800472D0 10C00003 */  beqz       $a2, .L800472E0
/* F07E4 800472D4 24C20001 */   addiu     $v0, $a2, 1
/* F07E8 800472D8 3C018007 */  lui        $at, %hi(D_8006C0C4)
/* F07EC 800472DC A422C0C4 */  sh         $v0, %lo(D_8006C0C4)($at)
.L800472E0:
/* F07F0 800472E0 0C00D7D8 */  jal        func_80035F60_DF470
/* F07F4 800472E4 00000000 */   nop
/* F07F8 800472E8 10400024 */  beqz       $v0, .L8004737C
/* F07FC 800472EC 00000000 */   nop
/* F0800 800472F0 3C028007 */  lui        $v0, %hi(D_8006C0C6)
/* F0804 800472F4 9042C0C6 */  lbu        $v0, %lo(D_8006C0C6)($v0)
/* F0808 800472F8 14400010 */  bnez       $v0, .L8004733C
/* F080C 800472FC 24020001 */   addiu     $v0, $zero, 1
/* F0810 80047300 96A4001C */  lhu        $a0, 0x1c($s5)
/* F0814 80047304 3C018007 */  lui        $at, %hi(D_8006C0C6)
/* F0818 80047308 A022C0C6 */  sb         $v0, %lo(D_8006C0C6)($at)
/* F081C 8004730C 3082FFFF */  andi       $v0, $a0, 0xffff
/* F0820 80047310 0002182B */  sltu       $v1, $zero, $v0
/* F0824 80047314 2C420011 */  sltiu      $v0, $v0, 0x11
/* F0828 80047318 00621824 */  and        $v1, $v1, $v0
/* F082C 8004731C 14600A58 */  bnez       $v1, .L80049C80
/* F0830 80047320 24020011 */   addiu     $v0, $zero, 0x11
/* F0834 80047324 2482FFEB */  addiu      $v0, $a0, -0x15
/* F0838 80047328 2C420002 */  sltiu      $v0, $v0, 2
/* F083C 8004732C 10400003 */  beqz       $v0, .L8004733C
/* F0840 80047330 24020017 */   addiu     $v0, $zero, 0x17
/* F0844 80047334 08012A12 */  j          .L8004A848
/* F0848 80047338 A6A2001C */   sh        $v0, 0x1c($s5)
.L8004733C:
/* F084C 8004733C 96A2001C */  lhu        $v0, 0x1c($s5)
/* F0850 80047340 38430012 */  xori       $v1, $v0, 0x12
/* F0854 80047344 2C630001 */  sltiu      $v1, $v1, 1
/* F0858 80047348 38420014 */  xori       $v0, $v0, 0x14
/* F085C 8004734C 2C420001 */  sltiu      $v0, $v0, 1
/* F0860 80047350 00621825 */  or         $v1, $v1, $v0
/* F0864 80047354 10600009 */  beqz       $v1, .L8004737C
/* F0868 80047358 24020001 */   addiu     $v0, $zero, 1
/* F086C 8004735C 3C038007 */  lui        $v1, %hi(D_8006C0C4)
/* F0870 80047360 9463C0C4 */  lhu        $v1, %lo(D_8006C0C4)($v1)
/* F0874 80047364 3C018007 */  lui        $at, %hi(D_8006C0C6)
/* F0878 80047368 A022C0C6 */  sb         $v0, %lo(D_8006C0C6)($at)
/* F087C 8004736C 14600003 */  bnez       $v1, .L8004737C
/* F0880 80047370 24620001 */   addiu     $v0, $v1, 1
/* F0884 80047374 3C018007 */  lui        $at, %hi(D_8006C0C4)
/* F0888 80047378 A422C0C4 */  sh         $v0, %lo(D_8006C0C4)($at)
.L8004737C:
/* F088C 8004737C 3C038007 */  lui        $v1, %hi(D_8006C0C6)
/* F0890 80047380 9063C0C6 */  lbu        $v1, %lo(D_8006C0C6)($v1)
/* F0894 80047384 24020001 */  addiu      $v0, $zero, 1
/* F0898 80047388 14620007 */  bne        $v1, $v0, .L800473A8
/* F089C 8004738C 00000000 */   nop
/* F08A0 80047390 96A2001C */  lhu        $v0, 0x1c($s5)
/* F08A4 80047394 2C420015 */  sltiu      $v0, $v0, 0x15
/* F08A8 80047398 14400003 */  bnez       $v0, .L800473A8
/* F08AC 8004739C 00000000 */   nop
/* F08B0 800473A0 3C018007 */  lui        $at, %hi(D_8006C0C6)
/* F08B4 800473A4 A020C0C6 */  sb         $zero, %lo(D_8006C0C6)($at)
.L800473A8:
/* F08B8 800473A8 96A2001C */  lhu        $v0, 0x1c($s5)
/* F08BC 800473AC 2C420002 */  sltiu      $v0, $v0, 2
/* F08C0 800473B0 1440000A */  bnez       $v0, .L800473DC
/* F08C4 800473B4 00000000 */   nop
/* F08C8 800473B8 3C048007 */  lui        $a0, %hi(D_8006C060)
/* F08CC 800473BC 0C028A40 */  jal        func_800A2900
/* F08D0 800473C0 8C84C060 */   lw        $a0, %lo(D_8006C060)($a0)
/* F08D4 800473C4 3C048007 */  lui        $a0, %hi(D_8006C064)
/* F08D8 800473C8 0C028A40 */  jal        func_800A2900
/* F08DC 800473CC 8C84C064 */   lw        $a0, %lo(D_8006C064)($a0)
/* F08E0 800473D0 3C048007 */  lui        $a0, %hi(D_8006C068)
/* F08E4 800473D4 0C028A40 */  jal        func_800A2900
/* F08E8 800473D8 8C84C068 */   lw        $a0, %lo(D_8006C068)($a0)
.L800473DC:
/* F08EC 800473DC 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F08F0 800473E0 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F08F4 800473E4 96A4001C */  lhu        $a0, 0x1c($s5)
/* F08F8 800473E8 3C038007 */  lui        $v1, %hi(D_8006C06C)
/* F08FC 800473EC 9463C06C */  lhu        $v1, %lo(D_8006C06C)($v1)
/* F0900 800473F0 24420001 */  addiu      $v0, $v0, 1
/* F0904 800473F4 3C018007 */  lui        $at, %hi(D_8006C564)
/* F0908 800473F8 10830008 */  beq        $a0, $v1, .L8004741C
/* F090C 800473FC AC22C564 */   sw        $v0, %lo(D_8006C564)($at)
/* F0910 80047400 96A2001C */  lhu        $v0, 0x1c($s5)
/* F0914 80047404 3C018007 */  lui        $at, %hi(D_8006C564)
/* F0918 80047408 AC20C564 */  sw         $zero, %lo(D_8006C564)($at)
/* F091C 8004740C 3C018007 */  lui        $at, %hi(D_8006C0C4)
/* F0920 80047410 A420C0C4 */  sh         $zero, %lo(D_8006C0C4)($at)
/* F0924 80047414 3C018007 */  lui        $at, %hi(D_8006C06C)
/* F0928 80047418 A422C06C */  sh         $v0, %lo(D_8006C06C)($at)
.L8004741C:
/* F092C 8004741C 96A3001C */  lhu        $v1, 0x1c($s5)
/* F0930 80047420 2402000C */  addiu      $v0, $zero, 0xc
/* F0934 80047424 10620891 */  beq        $v1, $v0, .L8004966C
/* F0938 80047428 2862000D */   slti      $v0, $v1, 0xd
/* F093C 8004742C 10400027 */  beqz       $v0, .L800474CC
/* F0940 80047430 24100005 */   addiu     $s0, $zero, 5
/* F0944 80047434 107002DE */  beq        $v1, $s0, .L80047FB0
/* F0948 80047438 28620006 */   slti      $v0, $v1, 6
/* F094C 8004743C 50400012 */  beql       $v0, $zero, .L80047488
/* F0950 80047440 24020008 */   addiu     $v0, $zero, 8
/* F0954 80047444 24100002 */  addiu      $s0, $zero, 2
/* F0958 80047448 1070008E */  beq        $v1, $s0, .L80047684
/* F095C 8004744C 28620003 */   slti      $v0, $v1, 3
/* F0960 80047450 50400007 */  beql       $v0, $zero, .L80047470
/* F0964 80047454 24020003 */   addiu     $v0, $zero, 3
/* F0968 80047458 1060004B */  beqz       $v1, .L80047588
/* F096C 8004745C 24020001 */   addiu     $v0, $zero, 1
/* F0970 80047460 10620079 */  beq        $v1, $v0, .L80047648
/* F0974 80047464 00001021 */   addu      $v0, $zero, $zero
/* F0978 80047468 08012A13 */  j          .L8004A84C
/* F097C 8004746C 00000000 */   nop
.L80047470:
/* F0980 80047470 106200B4 */  beq        $v1, $v0, .L80047744
/* F0984 80047474 24020004 */   addiu     $v0, $zero, 4
/* F0988 80047478 106200DD */  beq        $v1, $v0, .L800477F0
/* F098C 8004747C 24030014 */   addiu     $v1, $zero, 0x14
/* F0990 80047480 08012A13 */  j          .L8004A84C
/* F0994 80047484 00001021 */   addu      $v0, $zero, $zero
.L80047488:
/* F0998 80047488 1062045A */  beq        $v1, $v0, .L800485F4
/* F099C 8004748C 28620009 */   slti      $v0, $v1, 9
/* F09A0 80047490 10400007 */  beqz       $v0, .L800474B0
/* F09A4 80047494 24020006 */   addiu     $v0, $zero, 6
/* F09A8 80047498 106202F1 */  beq        $v1, $v0, .L80048060
/* F09AC 8004749C 24020007 */   addiu     $v0, $zero, 7
/* F09B0 800474A0 10620432 */  beq        $v1, $v0, .L8004856C
/* F09B4 800474A4 00001021 */   addu      $v0, $zero, $zero
/* F09B8 800474A8 08012A13 */  j          .L8004A84C
/* F09BC 800474AC 00000000 */   nop
.L800474B0:
/* F09C0 800474B0 2402000A */  addiu      $v0, $zero, 0xa
/* F09C4 800474B4 10620661 */  beq        $v1, $v0, .L80048E3C
/* F09C8 800474B8 2862000B */   slti      $v0, $v1, 0xb
/* F09CC 800474BC 10400852 */  beqz       $v0, .L80049608
/* F09D0 800474C0 00000000 */   nop
/* F09D4 800474C4 08012369 */  j          .L80048DA4
/* F09D8 800474C8 00000000 */   nop
.L800474CC:
/* F09DC 800474CC 24020013 */  addiu      $v0, $zero, 0x13
/* F09E0 800474D0 10620A6D */  beq        $v1, $v0, .L80049E88
/* F09E4 800474D4 28620014 */   slti      $v0, $v1, 0x14
/* F09E8 800474D8 10400012 */  beqz       $v0, .L80047524
/* F09EC 800474DC 2402000F */   addiu     $v0, $zero, 0xf
/* F09F0 800474E0 1062097B */  beq        $v1, $v0, .L80049AD0
/* F09F4 800474E4 28620010 */   slti      $v0, $v1, 0x10
/* F09F8 800474E8 10400007 */  beqz       $v0, .L80047508
/* F09FC 800474EC 2402000D */   addiu     $v0, $zero, 0xd
/* F0A00 800474F0 106208BC */  beq        $v1, $v0, .L800497E4
/* F0A04 800474F4 2402000E */   addiu     $v0, $zero, 0xe
/* F0A08 800474F8 106208C8 */  beq        $v1, $v0, .L8004981C
/* F0A0C 800474FC 00001021 */   addu      $v0, $zero, $zero
/* F0A10 80047500 08012A13 */  j          .L8004A84C
/* F0A14 80047504 00000000 */   nop
.L80047508:
/* F0A18 80047508 24020011 */  addiu      $v0, $zero, 0x11
/* F0A1C 8004750C 106209DE */  beq        $v1, $v0, .L80049C88
/* F0A20 80047510 28620012 */   slti      $v0, $v1, 0x12
/* F0A24 80047514 10400A14 */  beqz       $v0, .L80049D68
/* F0A28 80047518 00000000 */   nop
/* F0A2C 8004751C 080126CB */  j          .L80049B2C
/* F0A30 80047520 00000000 */   nop
.L80047524:
/* F0A34 80047524 24020016 */  addiu      $v0, $zero, 0x16
/* F0A38 80047528 10620B2D */  beq        $v1, $v0, .L8004A1E0
/* F0A3C 8004752C 28620017 */   slti      $v0, $v1, 0x17
/* F0A40 80047530 10400007 */  beqz       $v0, .L80047550
/* F0A44 80047534 24020014 */   addiu     $v0, $zero, 0x14
/* F0A48 80047538 10620A65 */  beq        $v1, $v0, .L80049ED0
/* F0A4C 8004753C 24020015 */   addiu     $v0, $zero, 0x15
/* F0A50 80047540 10620AFF */  beq        $v1, $v0, .L8004A140
/* F0A54 80047544 00001021 */   addu      $v0, $zero, $zero
/* F0A58 80047548 08012A13 */  j          .L8004A84C
/* F0A5C 8004754C 00000000 */   nop
.L80047550:
/* F0A60 80047550 3402FFFE */  ori        $v0, $zero, 0xfffe
/* F0A64 80047554 10620CA6 */  beq        $v1, $v0, .L8004A7F0
/* F0A68 80047558 0043102A */   slt       $v0, $v0, $v1
/* F0A6C 8004755C 14400006 */  bnez       $v0, .L80047578
/* F0A70 80047560 3402FFFF */   ori       $v0, $zero, 0xffff
/* F0A74 80047564 24020017 */  addiu      $v0, $zero, 0x17
/* F0A78 80047568 10620C9A */  beq        $v1, $v0, .L8004A7D4
/* F0A7C 8004756C 00001021 */   addu      $v0, $zero, $zero
/* F0A80 80047570 08012A13 */  j          .L8004A84C
/* F0A84 80047574 00000000 */   nop
.L80047578:
/* F0A88 80047578 10620C96 */  beq        $v1, $v0, .L8004A7D4
/* F0A8C 8004757C 00001021 */   addu      $v0, $zero, $zero
/* F0A90 80047580 08012A13 */  j          .L8004A84C
/* F0A94 80047584 00000000 */   nop
.L80047588:
/* F0A98 80047588 0C00D7DD */  jal        func_80035F74_DF484
/* F0A9C 8004758C 241000E0 */   addiu     $s0, $zero, 0xe0
/* F0AA0 80047590 0C029375 */  jal        func_800A4DD4
/* F0AA4 80047594 00000000 */   nop
/* F0AA8 80047598 00402021 */  addu       $a0, $v0, $zero
/* F0AAC 8004759C 24050010 */  addiu      $a1, $zero, 0x10
/* F0AB0 800475A0 9482001E */  lhu        $v0, 0x1e($a0)
/* F0AB4 800475A4 24060010 */  addiu      $a2, $zero, 0x10
/* F0AB8 800475A8 24070130 */  addiu      $a3, $zero, 0x130
/* F0ABC 800475AC 3C018007 */  lui        $at, %hi(D_8006C060)
/* F0AC0 800475B0 AC24C060 */  sw         $a0, %lo(D_8006C060)($at)
/* F0AC4 800475B4 A480001C */  sh         $zero, 0x1c($a0)
/* F0AC8 800475B8 34420100 */  ori        $v0, $v0, 0x100
/* F0ACC 800475BC A482001E */  sh         $v0, 0x1e($a0)
/* F0AD0 800475C0 0C02939C */  jal        func_800A4E70
/* F0AD4 800475C4 AFB00010 */   sw        $s0, 0x10($sp)
/* F0AD8 800475C8 0C029375 */  jal        func_800A4DD4
/* F0ADC 800475CC 00000000 */   nop
/* F0AE0 800475D0 00402021 */  addu       $a0, $v0, $zero
/* F0AE4 800475D4 24050010 */  addiu      $a1, $zero, 0x10
/* F0AE8 800475D8 24060010 */  addiu      $a2, $zero, 0x10
/* F0AEC 800475DC 24070130 */  addiu      $a3, $zero, 0x130
/* F0AF0 800475E0 3C018007 */  lui        $at, %hi(D_8006C064)
/* F0AF4 800475E4 AC24C064 */  sw         $a0, %lo(D_8006C064)($at)
/* F0AF8 800475E8 A480001C */  sh         $zero, 0x1c($a0)
/* F0AFC 800475EC 0C02939C */  jal        func_800A4E70
/* F0B00 800475F0 AFB00010 */   sw        $s0, 0x10($sp)
/* F0B04 800475F4 0C029375 */  jal        func_800A4DD4
/* F0B08 800475F8 00000000 */   nop
/* F0B0C 800475FC 00402021 */  addu       $a0, $v0, $zero
/* F0B10 80047600 24050010 */  addiu      $a1, $zero, 0x10
/* F0B14 80047604 24060010 */  addiu      $a2, $zero, 0x10
/* F0B18 80047608 24070130 */  addiu      $a3, $zero, 0x130
/* F0B1C 8004760C 2402004E */  addiu      $v0, $zero, 0x4e
/* F0B20 80047610 3C018007 */  lui        $at, %hi(D_8006C068)
/* F0B24 80047614 AC24C068 */  sw         $a0, %lo(D_8006C068)($at)
/* F0B28 80047618 A482001C */  sh         $v0, 0x1c($a0)
/* F0B2C 8004761C 0C02939C */  jal        func_800A4E70
/* F0B30 80047620 AFB00010 */   sw        $s0, 0x10($sp)
/* F0B34 80047624 3C018007 */  lui        $at, %hi(D_8006C0C6)
/* F0B38 80047628 0C02B4A0 */  jal        func_800AD280
/* F0B3C 8004762C A020C0C6 */   sb        $zero, %lo(D_8006C0C6)($at)
/* F0B40 80047630 0C0E64E0 */  jal        func_80399380
/* F0B44 80047634 00000000 */   nop
/* F0B48 80047638 00001021 */  addu       $v0, $zero, $zero
/* F0B4C 8004763C 24030001 */  addiu      $v1, $zero, 1
/* F0B50 80047640 08012A13 */  j          .L8004A84C
/* F0B54 80047644 A6A3001C */   sh        $v1, 0x1c($s5)
.L80047648:
/* F0B58 80047648 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F0B5C 8004764C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F0B60 80047650 14400005 */  bnez       $v0, .L80047668
/* F0B64 80047654 00000000 */   nop
/* F0B68 80047658 0C010D48 */  jal        func_80043520_ECA30
/* F0B6C 8004765C 00000000 */   nop
/* F0B70 80047660 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F0B74 80047664 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
.L80047668:
/* F0B78 80047668 14500C78 */  bne        $v0, $s0, .L8004A84C
/* F0B7C 8004766C 00001021 */   addu      $v0, $zero, $zero
/* F0B80 80047670 0C02A5AF */  jal        func_800A96BC
/* F0B84 80047674 24040001 */   addiu     $a0, $zero, 1
/* F0B88 80047678 24020002 */  addiu      $v0, $zero, 2
/* F0B8C 8004767C 08012A12 */  j          .L8004A848
/* F0B90 80047680 A6A2001C */   sh        $v0, 0x1c($s5)
.L80047684:
/* F0B94 80047684 0C00D8C1 */  jal        func_80036304_DF814
/* F0B98 80047688 24040017 */   addiu     $a0, $zero, 0x17
/* F0B9C 8004768C 8C44000C */  lw         $a0, 0xc($v0)
/* F0BA0 80047690 0C028A40 */  jal        func_800A2900
/* F0BA4 80047694 2410003C */   addiu     $s0, $zero, 0x3c
/* F0BA8 80047698 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F0BAC 8004769C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F0BB0 800476A0 0202001A */  div        $zero, $s0, $v0
/* F0BB4 800476A4 14400002 */  bnez       $v0, .L800476B0
/* F0BB8 800476A8 00000000 */   nop
/* F0BBC 800476AC 0007000D */  break      7
.L800476B0:
/* F0BC0 800476B0 2401FFFF */   addiu     $at, $zero, -1
/* F0BC4 800476B4 14410004 */  bne        $v0, $at, .L800476C8
/* F0BC8 800476B8 3C018000 */   lui       $at, 0x8000
/* F0BCC 800476BC 16010002 */  bne        $s0, $at, .L800476C8
/* F0BD0 800476C0 00000000 */   nop
/* F0BD4 800476C4 0006000D */  break      6
.L800476C8:
/* F0BD8 800476C8 00002012 */   mflo      $a0
/* F0BDC 800476CC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F0BE0 800476D0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F0BE4 800476D4 00041080 */  sll        $v0, $a0, 2
/* F0BE8 800476D8 14620003 */  bne        $v1, $v0, .L800476E8
/* F0BEC 800476DC 00000000 */   nop
/* F0BF0 800476E0 0C02A5C1 */  jal        func_800A9704
/* F0BF4 800476E4 00000000 */   nop
.L800476E8:
/* F0BF8 800476E8 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F0BFC 800476EC 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F0C00 800476F0 0203001A */  div        $zero, $s0, $v1
/* F0C04 800476F4 14600002 */  bnez       $v1, .L80047700
/* F0C08 800476F8 00000000 */   nop
/* F0C0C 800476FC 0007000D */  break      7
.L80047700:
/* F0C10 80047700 2401FFFF */   addiu     $at, $zero, -1
/* F0C14 80047704 14610004 */  bne        $v1, $at, .L80047718
/* F0C18 80047708 3C018000 */   lui       $at, 0x8000
/* F0C1C 8004770C 16010002 */  bne        $s0, $at, .L80047718
/* F0C20 80047710 00000000 */   nop
/* F0C24 80047714 0006000D */  break      6
.L80047718:
/* F0C28 80047718 00001812 */   mflo      $v1
/* F0C2C 8004771C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F0C30 80047720 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F0C34 80047724 00031080 */  sll        $v0, $v1, 2
/* F0C38 80047728 00431021 */  addu       $v0, $v0, $v1
/* F0C3C 8004772C 0082202A */  slt        $a0, $a0, $v0
/* F0C40 80047730 14800C46 */  bnez       $a0, .L8004A84C
/* F0C44 80047734 00001021 */   addu      $v0, $zero, $zero
/* F0C48 80047738 24020003 */  addiu      $v0, $zero, 3
/* F0C4C 8004773C 08012A12 */  j          .L8004A848
/* F0C50 80047740 A6A2001C */   sh        $v0, 0x1c($s5)
.L80047744:
/* F0C54 80047744 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F0C58 80047748 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F0C5C 8004774C 14400006 */  bnez       $v0, .L80047768
/* F0C60 80047750 28420002 */   slti      $v0, $v0, 2
/* F0C64 80047754 0C010D55 */  jal        func_80043554_ECA64
/* F0C68 80047758 00000000 */   nop
/* F0C6C 8004775C 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F0C70 80047760 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F0C74 80047764 28420002 */  slti       $v0, $v0, 2
.L80047768:
/* F0C78 80047768 14400C38 */  bnez       $v0, .L8004A84C
/* F0C7C 8004776C 00001021 */   addu      $v0, $zero, $zero
/* F0C80 80047770 0C02A5AF */  jal        func_800A96BC
/* F0C84 80047774 24040001 */   addiu     $a0, $zero, 1
/* F0C88 80047778 24050010 */  addiu      $a1, $zero, 0x10
/* F0C8C 8004777C 3C01C310 */  lui        $at, 0xc310
/* F0C90 80047780 44810000 */  mtc1       $at, $f0
/* F0C94 80047784 3C01C280 */  lui        $at, 0xc280
/* F0C98 80047788 44811000 */  mtc1       $at, $f2
/* F0C9C 8004778C 3C048007 */  lui        $a0, %hi(D_8006C064)
/* F0CA0 80047790 8C84C064 */  lw         $a0, %lo(D_8006C064)($a0)
/* F0CA4 80047794 24060030 */  addiu      $a2, $zero, 0x30
/* F0CA8 80047798 24020014 */  addiu      $v0, $zero, 0x14
/* F0CAC 8004779C 3C018007 */  lui        $at, %hi(D_8006C0A2)
/* F0CB0 800477A0 A422C0A2 */  sh         $v0, %lo(D_8006C0A2)($at)
/* F0CB4 800477A4 240200BF */  addiu      $v0, $zero, 0xbf
/* F0CB8 800477A8 3C018007 */  lui        $at, %hi(D_8006C0A0)
/* F0CBC 800477AC A420C0A0 */  sh         $zero, %lo(D_8006C0A0)($at)
/* F0CC0 800477B0 3C018007 */  lui        $at, %hi(D_8006C0A4)
/* F0CC4 800477B4 A420C0A4 */  sh         $zero, %lo(D_8006C0A4)($at)
/* F0CC8 800477B8 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F0CCC 800477BC AC20C0BC */  sw         $zero, %lo(D_8006C0BC)($at)
/* F0CD0 800477C0 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F0CD4 800477C4 AC20C0C0 */  sw         $zero, %lo(D_8006C0C0)($at)
/* F0CD8 800477C8 AFA20010 */  sw         $v0, 0x10($sp)
/* F0CDC 800477CC 3C018007 */  lui        $at, %hi(D_8006C074)
/* F0CE0 800477D0 E420C074 */  swc1       $f0, %lo(D_8006C074)($at)
/* F0CE4 800477D4 3C018007 */  lui        $at, %hi(D_8006C080)
/* F0CE8 800477D8 E422C080 */  swc1       $f2, %lo(D_8006C080)($at)
/* F0CEC 800477DC 0C02939C */  jal        func_800A4E70
/* F0CF0 800477E0 2407012F */   addiu     $a3, $zero, 0x12f
/* F0CF4 800477E4 24020004 */  addiu      $v0, $zero, 4
/* F0CF8 800477E8 08012A12 */  j          .L8004A848
/* F0CFC 800477EC A6A2001C */   sh        $v0, 0x1c($s5)
.L800477F0:
/* F0D00 800477F0 3C018007 */  lui        $at, %hi(D_8006C074)
/* F0D04 800477F4 C420C074 */  lwc1       $f0, %lo(D_8006C074)($at)
/* F0D08 800477F8 3C028007 */  lui        $v0, %hi(D_8006C0A0)
/* F0D0C 800477FC 9442C0A0 */  lhu        $v0, %lo(D_8006C0A0)($v0)
/* F0D10 80047800 3C013F4C */  lui        $at, 0x3f4c
/* F0D14 80047804 3421CCCD */  ori        $at, $at, 0xcccd
/* F0D18 80047808 44811000 */  mtc1       $at, $f2
/* F0D1C 8004780C 24420001 */  addiu      $v0, $v0, 1
/* F0D20 80047810 46020000 */  add.s      $f0, $f0, $f2
/* F0D24 80047814 3C018007 */  lui        $at, %hi(D_8006C0A0)
/* F0D28 80047818 A422C0A0 */  sh         $v0, %lo(D_8006C0A0)($at)
/* F0D2C 8004781C 00021400 */  sll        $v0, $v0, 0x10
/* F0D30 80047820 00021403 */  sra        $v0, $v0, 0x10
/* F0D34 80047824 3C018007 */  lui        $at, %hi(D_8006C074)
/* F0D38 80047828 1443000B */  bne        $v0, $v1, .L80047858
/* F0D3C 8004782C E420C074 */   swc1      $f0, %lo(D_8006C074)($at)
/* F0D40 80047830 3C048007 */  lui        $a0, %hi(D_8006C0A2)
/* F0D44 80047834 0C010DB0 */  jal        func_800436C0_ECBD0
/* F0D48 80047838 9484C0A2 */   lhu       $a0, %lo(D_8006C0A2)($a0)
/* F0D4C 8004783C 3C028007 */  lui        $v0, %hi(D_8006C0A2)
/* F0D50 80047840 9442C0A2 */  lhu        $v0, %lo(D_8006C0A2)($v0)
/* F0D54 80047844 3C018007 */  lui        $at, %hi(D_8006C0A0)
/* F0D58 80047848 A420C0A0 */  sh         $zero, %lo(D_8006C0A0)($at)
/* F0D5C 8004784C 2442FFFF */  addiu      $v0, $v0, -1
/* F0D60 80047850 3C018007 */  lui        $at, %hi(D_8006C0A2)
/* F0D64 80047854 A422C0A2 */  sh         $v0, %lo(D_8006C0A2)($at)
.L80047858:
/* F0D68 80047858 0C00D8C1 */  jal        func_80036304_DF814
/* F0D6C 8004785C 24040020 */   addiu     $a0, $zero, 0x20
/* F0D70 80047860 3C018007 */  lui        $at, %hi(D_8006C074)
/* F0D74 80047864 C420C074 */  lwc1       $f0, %lo(D_8006C074)($at)
/* F0D78 80047868 3C014080 */  lui        $at, 0x4080
/* F0D7C 8004786C 4481A000 */  mtc1       $at, $f20
/* F0D80 80047870 00000000 */  nop
/* F0D84 80047874 46140002 */  mul.s      $f0, $f0, $f20
/* F0D88 80047878 00408021 */  addu       $s0, $v0, $zero
/* F0D8C 8004787C 8E04000C */  lw         $a0, 0xc($s0)
/* F0D90 80047880 24050040 */  addiu      $a1, $zero, 0x40
/* F0D94 80047884 00008821 */  addu       $s1, $zero, $zero
/* F0D98 80047888 3C014F00 */  lui        $at, 0x4f00
/* F0D9C 8004788C 4481C000 */  mtc1       $at, $f24
/* F0DA0 80047890 4600008D */  trunc.w.s  $f2, $f0
/* F0DA4 80047894 44061000 */  mfc1       $a2, $f2
/* F0DA8 80047898 00000000 */  nop
/* F0DAC 8004789C 00063400 */  sll        $a2, $a2, 0x10
/* F0DB0 800478A0 0C028D89 */  jal        func_800A3624
/* F0DB4 800478A4 00063403 */   sra       $a2, $a2, 0x10
/* F0DB8 800478A8 8E04000C */  lw         $a0, 0xc($s0)
/* F0DBC 800478AC 3C014180 */  lui        $at, 0x4180
/* F0DC0 800478B0 4481B000 */  mtc1       $at, $f22
/* F0DC4 800478B4 00000000 */  nop
/* F0DC8 800478B8 0C028A40 */  jal        func_800A2900
/* F0DCC 800478BC 3C128000 */   lui       $s2, 0x8000
/* F0DD0 800478C0 26240021 */  addiu      $a0, $s1, 0x21
.L800478C4:
/* F0DD4 800478C4 0C00D8C1 */  jal        func_80036304_DF814
/* F0DD8 800478C8 3084FFFF */   andi      $a0, $a0, 0xffff
/* F0DDC 800478CC 00408021 */  addu       $s0, $v0, $zero
/* F0DE0 800478D0 8E03000C */  lw         $v1, 0xc($s0)
/* F0DE4 800478D4 9462001E */  lhu        $v0, 0x1e($v1)
/* F0DE8 800478D8 240400BF */  addiu      $a0, $zero, 0xbf
/* F0DEC 800478DC 34420004 */  ori        $v0, $v0, 4
/* F0DF0 800478E0 0C02591A */  jal        func_80096468
/* F0DF4 800478E4 A462001E */   sh        $v0, 0x1e($v1)
/* F0DF8 800478E8 3042FFFF */  andi       $v0, $v0, 0xffff
/* F0DFC 800478EC 44821000 */  mtc1       $v0, $f2
/* F0E00 800478F0 00000000 */  nop
/* F0E04 800478F4 468010A0 */  cvt.s.w    $f2, $f2
/* F0E08 800478F8 4602C03E */  c.le.s     $f24, $f2
/* F0E0C 800478FC 00000000 */  nop
/* F0E10 80047900 00000000 */  nop
/* F0E14 80047904 45030006 */  bc1tl      .L80047920
/* F0E18 80047908 46181001 */   sub.s     $f0, $f2, $f24
/* F0E1C 8004790C 4600100D */  trunc.w.s  $f0, $f2
/* F0E20 80047910 44030000 */  mfc1       $v1, $f0
/* F0E24 80047914 00000000 */  nop
/* F0E28 80047918 08011E4D */  j          .L80047934
/* F0E2C 8004791C 306200FF */   andi      $v0, $v1, 0xff
.L80047920:
/* F0E30 80047920 4600008D */  trunc.w.s  $f2, $f0
/* F0E34 80047924 44031000 */  mfc1       $v1, $f2
/* F0E38 80047928 00000000 */  nop
/* F0E3C 8004792C 00721825 */  or         $v1, $v1, $s2
/* F0E40 80047930 306200FF */  andi       $v0, $v1, 0xff
.L80047934:
/* F0E44 80047934 AFA20010 */  sw         $v0, 0x10($sp)
/* F0E48 80047938 8E04000C */  lw         $a0, 0xc($s0)
/* F0E4C 8004793C 240500FF */  addiu      $a1, $zero, 0xff
/* F0E50 80047940 240600FF */  addiu      $a2, $zero, 0xff
/* F0E54 80047944 0C028E41 */  jal        func_800A3904
/* F0E58 80047948 240700FF */   addiu     $a3, $zero, 0xff
/* F0E5C 8004794C 0C02591A */  jal        func_80096468
/* F0E60 80047950 24040004 */   addiu     $a0, $zero, 4
/* F0E64 80047954 3223FFFF */  andi       $v1, $s1, 0xffff
/* F0E68 80047958 00032040 */  sll        $a0, $v1, 1
/* F0E6C 8004795C 00832021 */  addu       $a0, $a0, $v1
/* F0E70 80047960 3042FFFF */  andi       $v0, $v0, 0xffff
/* F0E74 80047964 44823000 */  mtc1       $v0, $f6
/* F0E78 80047968 00000000 */  nop
/* F0E7C 8004796C 468031A0 */  cvt.s.w    $f6, $f6
/* F0E80 80047970 46143183 */  div.s      $f6, $f6, $f20
/* F0E84 80047974 00042040 */  sll        $a0, $a0, 1
/* F0E88 80047978 3C028007 */  lui        $v0, %hi(D_80069F82)
/* F0E8C 8004797C 00441021 */  addu       $v0, $v0, $a0
/* F0E90 80047980 84429F82 */  lh         $v0, %lo(D_80069F82)($v0)
/* F0E94 80047984 44820000 */  mtc1       $v0, $f0
/* F0E98 80047988 00000000 */  nop
/* F0E9C 8004798C 46800020 */  cvt.s.w    $f0, $f0
/* F0EA0 80047990 46160002 */  mul.s      $f0, $f0, $f22
/* F0EA4 80047994 3C028007 */  lui        $v0, %hi(D_80069F80)
/* F0EA8 80047998 00441021 */  addu       $v0, $v0, $a0
/* F0EAC 8004799C 84429F80 */  lh         $v0, %lo(D_80069F80)($v0)
/* F0EB0 800479A0 3C018007 */  lui        $at, %hi(D_8006C074)
/* F0EB4 800479A4 C424C074 */  lwc1       $f4, %lo(D_8006C074)($at)
/* F0EB8 800479A8 44821000 */  mtc1       $v0, $f2
/* F0EBC 800479AC 00000000 */  nop
/* F0EC0 800479B0 468010A0 */  cvt.s.w    $f2, $f2
/* F0EC4 800479B4 46161082 */  mul.s      $f2, $f2, $f22
/* F0EC8 800479B8 46040000 */  add.s      $f0, $f0, $f4
/* F0ECC 800479BC 46140002 */  mul.s      $f0, $f0, $f20
/* F0ED0 800479C0 46061080 */  add.s      $f2, $f2, $f6
/* F0ED4 800479C4 46141082 */  mul.s      $f2, $f2, $f20
/* F0ED8 800479C8 8E04000C */  lw         $a0, 0xc($s0)
/* F0EDC 800479CC 4600010D */  trunc.w.s  $f4, $f0
/* F0EE0 800479D0 44062000 */  mfc1       $a2, $f4
/* F0EE4 800479D4 00000000 */  nop
/* F0EE8 800479D8 00063400 */  sll        $a2, $a2, 0x10
/* F0EEC 800479DC 00063403 */  sra        $a2, $a2, 0x10
/* F0EF0 800479E0 4600100D */  trunc.w.s  $f0, $f2
/* F0EF4 800479E4 44050000 */  mfc1       $a1, $f0
/* F0EF8 800479E8 00000000 */  nop
/* F0EFC 800479EC 00052C00 */  sll        $a1, $a1, 0x10
/* F0F00 800479F0 0C028D89 */  jal        func_800A3624
/* F0F04 800479F4 00052C03 */   sra       $a1, $a1, 0x10
/* F0F08 800479F8 8E04000C */  lw         $a0, 0xc($s0)
/* F0F0C 800479FC 0C028A40 */  jal        func_800A2900
/* F0F10 80047A00 26310001 */   addiu     $s1, $s1, 1
/* F0F14 80047A04 3222FFFF */  andi       $v0, $s1, 0xffff
/* F0F18 80047A08 2C42002B */  sltiu      $v0, $v0, 0x2b
/* F0F1C 80047A0C 1440FFAD */  bnez       $v0, .L800478C4
/* F0F20 80047A10 26240021 */   addiu     $a0, $s1, 0x21
/* F0F24 80047A14 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F0F28 80047A18 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F0F2C 80047A1C 2411003C */  addiu      $s1, $zero, 0x3c
/* F0F30 80047A20 0222001A */  div        $zero, $s1, $v0
/* F0F34 80047A24 14400002 */  bnez       $v0, .L80047A30
/* F0F38 80047A28 00000000 */   nop
/* F0F3C 80047A2C 0007000D */  break      7
.L80047A30:
/* F0F40 80047A30 2401FFFF */   addiu     $at, $zero, -1
/* F0F44 80047A34 14410004 */  bne        $v0, $at, .L80047A48
/* F0F48 80047A38 3C018000 */   lui       $at, 0x8000
/* F0F4C 80047A3C 16210002 */  bne        $s1, $at, .L80047A48
/* F0F50 80047A40 00000000 */   nop
/* F0F54 80047A44 0006000D */  break      6
.L80047A48:
/* F0F58 80047A48 00001012 */   mflo      $v0
/* F0F5C 80047A4C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F0F60 80047A50 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F0F64 80047A54 14620003 */  bne        $v1, $v0, .L80047A64
/* F0F68 80047A58 00000000 */   nop
/* F0F6C 80047A5C 0C026DD5 */  jal        func_8009B754
/* F0F70 80047A60 24040033 */   addiu     $a0, $zero, 0x33
.L80047A64:
/* F0F74 80047A64 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F0F78 80047A68 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F0F7C 80047A6C 0222001A */  div        $zero, $s1, $v0
/* F0F80 80047A70 14400002 */  bnez       $v0, .L80047A7C
/* F0F84 80047A74 00000000 */   nop
/* F0F88 80047A78 0007000D */  break      7
.L80047A7C:
/* F0F8C 80047A7C 2401FFFF */   addiu     $at, $zero, -1
/* F0F90 80047A80 14410004 */  bne        $v0, $at, .L80047A94
/* F0F94 80047A84 3C018000 */   lui       $at, 0x8000
/* F0F98 80047A88 16210002 */  bne        $s1, $at, .L80047A94
/* F0F9C 80047A8C 00000000 */   nop
/* F0FA0 80047A90 0006000D */  break      6
.L80047A94:
/* F0FA4 80047A94 00001012 */   mflo      $v0
/* F0FA8 80047A98 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F0FAC 80047A9C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F0FB0 80047AA0 00021080 */  sll        $v0, $v0, 2
/* F0FB4 80047AA4 0062182A */  slt        $v1, $v1, $v0
/* F0FB8 80047AA8 14600043 */  bnez       $v1, .L80047BB8
/* F0FBC 80047AAC 3C038888 */   lui       $v1, 0x8888
/* F0FC0 80047AB0 3C028007 */  lui        $v0, %hi(D_8006C0A4)
/* F0FC4 80047AB4 9442C0A4 */  lhu        $v0, %lo(D_8006C0A4)($v0)
/* F0FC8 80047AB8 34638889 */  ori        $v1, $v1, 0x8889
/* F0FCC 80047ABC 24420001 */  addiu      $v0, $v0, 1
/* F0FD0 80047AC0 00021400 */  sll        $v0, $v0, 0x10
/* F0FD4 80047AC4 00022403 */  sra        $a0, $v0, 0x10
/* F0FD8 80047AC8 00830018 */  mult       $a0, $v1
/* F0FDC 80047ACC 3C056666 */  lui        $a1, 0x6666
/* F0FE0 80047AD0 34A56667 */  ori        $a1, $a1, 0x6667
/* F0FE4 80047AD4 3C018007 */  lui        $at, %hi(D_8006C080)
/* F0FE8 80047AD8 C422C080 */  lwc1       $f2, %lo(D_8006C080)($at)
/* F0FEC 80047ADC 3C013F6E */  lui        $at, 0x3f6e
/* F0FF0 80047AE0 3421EEEF */  ori        $at, $at, 0xeeef
/* F0FF4 80047AE4 44810000 */  mtc1       $at, $f0
/* F0FF8 80047AE8 000217C3 */  sra        $v0, $v0, 0x1f
/* F0FFC 80047AEC 00004810 */  mfhi       $t1
/* F1000 80047AF0 01241821 */  addu       $v1, $t1, $a0
/* F1004 80047AF4 000318C3 */  sra        $v1, $v1, 3
/* F1008 80047AF8 00621823 */  subu       $v1, $v1, $v0
/* F100C 80047AFC 00031100 */  sll        $v0, $v1, 4
/* F1010 80047B00 00431023 */  subu       $v0, $v0, $v1
/* F1014 80047B04 00822023 */  subu       $a0, $a0, $v0
/* F1018 80047B08 00041C00 */  sll        $v1, $a0, 0x10
/* F101C 80047B0C 00031403 */  sra        $v0, $v1, 0x10
/* F1020 80047B10 00450018 */  mult       $v0, $a1
/* F1024 80047B14 46001080 */  add.s      $f2, $f2, $f0
/* F1028 80047B18 3C018007 */  lui        $at, %hi(D_8006C080)
/* F102C 80047B1C E422C080 */  swc1       $f2, %lo(D_8006C080)($at)
/* F1030 80047B20 00031FC3 */  sra        $v1, $v1, 0x1f
/* F1034 80047B24 3C018007 */  lui        $at, %hi(D_8006C0A4)
/* F1038 80047B28 A424C0A4 */  sh         $a0, %lo(D_8006C0A4)($at)
/* F103C 80047B2C 00004810 */  mfhi       $t1
/* F1040 80047B30 00092043 */  sra        $a0, $t1, 1
/* F1044 80047B34 00832023 */  subu       $a0, $a0, $v1
/* F1048 80047B38 308400FF */  andi       $a0, $a0, 0xff
/* F104C 80047B3C 0C00D8C1 */  jal        func_80036304_DF814
/* F1050 80047B40 2484001D */   addiu     $a0, $a0, 0x1d
/* F1054 80047B44 00408021 */  addu       $s0, $v0, $zero
/* F1058 80047B48 8E03000C */  lw         $v1, 0xc($s0)
/* F105C 80047B4C 9462001E */  lhu        $v0, 0x1e($v1)
/* F1060 80047B50 240500FF */  addiu      $a1, $zero, 0xff
/* F1064 80047B54 34420004 */  ori        $v0, $v0, 4
/* F1068 80047B58 A462001E */  sh         $v0, 0x1e($v1)
/* F106C 80047B5C 24020080 */  addiu      $v0, $zero, 0x80
/* F1070 80047B60 AFA20010 */  sw         $v0, 0x10($sp)
/* F1074 80047B64 8E04000C */  lw         $a0, 0xc($s0)
/* F1078 80047B68 240600FF */  addiu      $a2, $zero, 0xff
/* F107C 80047B6C 0C028E41 */  jal        func_800A3904
/* F1080 80047B70 240700FF */   addiu     $a3, $zero, 0xff
/* F1084 80047B74 3C018007 */  lui        $at, %hi(D_8006C080)
/* F1088 80047B78 C422C080 */  lwc1       $f2, %lo(D_8006C080)($at)
/* F108C 80047B7C 3C014080 */  lui        $at, 0x4080
/* F1090 80047B80 44810000 */  mtc1       $at, $f0
/* F1094 80047B84 00000000 */  nop
/* F1098 80047B88 46001082 */  mul.s      $f2, $f2, $f0
/* F109C 80047B8C 8E04000C */  lw         $a0, 0xc($s0)
/* F10A0 80047B90 24050180 */  addiu      $a1, $zero, 0x180
/* F10A4 80047B94 4600100D */  trunc.w.s  $f0, $f2
/* F10A8 80047B98 44060000 */  mfc1       $a2, $f0
/* F10AC 80047B9C 00000000 */  nop
/* F10B0 80047BA0 00063400 */  sll        $a2, $a2, 0x10
/* F10B4 80047BA4 0C028D89 */  jal        func_800A3624
/* F10B8 80047BA8 00063403 */   sra       $a2, $a2, 0x10
/* F10BC 80047BAC 8E04000C */  lw         $a0, 0xc($s0)
/* F10C0 80047BB0 0C028A40 */  jal        func_800A2900
/* F10C4 80047BB4 00000000 */   nop
.L80047BB8:
/* F10C8 80047BB8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F10CC 80047BBC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F10D0 80047BC0 0222001A */  div        $zero, $s1, $v0
/* F10D4 80047BC4 14400002 */  bnez       $v0, .L80047BD0
/* F10D8 80047BC8 00000000 */   nop
/* F10DC 80047BCC 0007000D */  break      7
.L80047BD0:
/* F10E0 80047BD0 2401FFFF */   addiu     $at, $zero, -1
/* F10E4 80047BD4 14410004 */  bne        $v0, $at, .L80047BE8
/* F10E8 80047BD8 3C018000 */   lui       $at, 0x8000
/* F10EC 80047BDC 16210002 */  bne        $s1, $at, .L80047BE8
/* F10F0 80047BE0 00000000 */   nop
/* F10F4 80047BE4 0006000D */  break      6
.L80047BE8:
/* F10F8 80047BE8 00001012 */   mflo      $v0
/* F10FC 80047BEC 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F1100 80047BF0 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F1104 80047BF4 00021040 */  sll        $v0, $v0, 1
/* F1108 80047BF8 0043102A */  slt        $v0, $v0, $v1
/* F110C 80047BFC 14400010 */  bnez       $v0, .L80047C40
/* F1110 80047C00 00000000 */   nop
/* F1114 80047C04 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F1118 80047C08 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F111C 80047C0C 3C014378 */  lui        $at, 0x4378
/* F1120 80047C10 44810000 */  mtc1       $at, $f0
/* F1124 80047C14 00000000 */  nop
/* F1128 80047C18 4600103C */  c.lt.s     $f2, $f0
/* F112C 80047C1C 00000000 */  nop
/* F1130 80047C20 45000007 */  bc1f       .L80047C40
/* F1134 80047C24 00000000 */   nop
/* F1138 80047C28 3C014100 */  lui        $at, 0x4100
/* F113C 80047C2C 44810000 */  mtc1       $at, $f0
/* F1140 80047C30 00000000 */  nop
/* F1144 80047C34 46001000 */  add.s      $f0, $f2, $f0
/* F1148 80047C38 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F114C 80047C3C E420C0BC */  swc1       $f0, %lo(D_8006C0BC)($at)
.L80047C40:
/* F1150 80047C40 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F1154 80047C44 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F1158 80047C48 2402003C */  addiu      $v0, $zero, 0x3c
/* F115C 80047C4C 0043001A */  div        $zero, $v0, $v1
/* F1160 80047C50 14600002 */  bnez       $v1, .L80047C5C
/* F1164 80047C54 00000000 */   nop
/* F1168 80047C58 0007000D */  break      7
.L80047C5C:
/* F116C 80047C5C 2401FFFF */   addiu     $at, $zero, -1
/* F1170 80047C60 14610004 */  bne        $v1, $at, .L80047C74
/* F1174 80047C64 3C018000 */   lui       $at, 0x8000
/* F1178 80047C68 14410002 */  bne        $v0, $at, .L80047C74
/* F117C 80047C6C 00000000 */   nop
/* F1180 80047C70 0006000D */  break      6
.L80047C74:
/* F1184 80047C74 00001012 */   mflo      $v0
/* F1188 80047C78 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F118C 80047C7C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F1190 80047C80 00021080 */  sll        $v0, $v0, 2
/* F1194 80047C84 0062182A */  slt        $v1, $v1, $v0
/* F1198 80047C88 14600014 */  bnez       $v1, .L80047CDC
/* F119C 80047C8C 00000000 */   nop
/* F11A0 80047C90 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F11A4 80047C94 C424C0BC */  lwc1       $f4, %lo(D_8006C0BC)($at)
/* F11A8 80047C98 44800000 */  mtc1       $zero, $f0
/* F11AC 80047C9C 00000000 */  nop
/* F11B0 80047CA0 4604003C */  c.lt.s     $f0, $f4
/* F11B4 80047CA4 00000000 */  nop
/* F11B8 80047CA8 4500000C */  bc1f       .L80047CDC
/* F11BC 80047CAC 00000000 */   nop
/* F11C0 80047CB0 3C014100 */  lui        $at, 0x4100
/* F11C4 80047CB4 44810000 */  mtc1       $at, $f0
/* F11C8 80047CB8 00000000 */  nop
/* F11CC 80047CBC 46002101 */  sub.s      $f4, $f4, $f0
/* F11D0 80047CC0 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F11D4 80047CC4 C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F11D8 80047CC8 46001080 */  add.s      $f2, $f2, $f0
/* F11DC 80047CCC 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F11E0 80047CD0 E424C0BC */  swc1       $f4, %lo(D_8006C0BC)($at)
/* F11E4 80047CD4 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F11E8 80047CD8 E422C0C0 */  swc1       $f2, %lo(D_8006C0C0)($at)
.L80047CDC:
/* F11EC 80047CDC 0C00D8C1 */  jal        func_80036304_DF814
/* F11F0 80047CE0 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F11F4 80047CE4 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F11F8 80047CE8 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F11FC 80047CEC 3C014F00 */  lui        $at, 0x4f00
/* F1200 80047CF0 44810000 */  mtc1       $at, $f0
/* F1204 80047CF4 00000000 */  nop
/* F1208 80047CF8 4602003E */  c.le.s     $f0, $f2
/* F120C 80047CFC 00000000 */  nop
/* F1210 80047D00 00000000 */  nop
/* F1214 80047D04 45010006 */  bc1t       .L80047D20
/* F1218 80047D08 00408021 */   addu      $s0, $v0, $zero
/* F121C 80047D0C 4600100D */  trunc.w.s  $f0, $f2
/* F1220 80047D10 44030000 */  mfc1       $v1, $f0
/* F1224 80047D14 00000000 */  nop
/* F1228 80047D18 08011F4E */  j          .L80047D38
/* F122C 80047D1C 306200FF */   andi      $v0, $v1, 0xff
.L80047D20:
/* F1230 80047D20 46001001 */  sub.s      $f0, $f2, $f0
/* F1234 80047D24 4600008D */  trunc.w.s  $f2, $f0
/* F1238 80047D28 44031000 */  mfc1       $v1, $f2
/* F123C 80047D2C 3C028000 */  lui        $v0, 0x8000
/* F1240 80047D30 00621825 */  or         $v1, $v1, $v0
/* F1244 80047D34 306200FF */  andi       $v0, $v1, 0xff
.L80047D38:
/* F1248 80047D38 AFA20010 */  sw         $v0, 0x10($sp)
/* F124C 80047D3C 8E04000C */  lw         $a0, 0xc($s0)
/* F1250 80047D40 240500FF */  addiu      $a1, $zero, 0xff
/* F1254 80047D44 240600FF */  addiu      $a2, $zero, 0xff
/* F1258 80047D48 0C028E41 */  jal        func_800A3904
/* F125C 80047D4C 240700FF */   addiu     $a3, $zero, 0xff
/* F1260 80047D50 8E04000C */  lw         $a0, 0xc($s0)
/* F1264 80047D54 0C028A40 */  jal        func_800A2900
/* F1268 80047D58 00000000 */   nop
/* F126C 80047D5C 0C00D8C1 */  jal        func_80036304_DF814
/* F1270 80047D60 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F1274 80047D64 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F1278 80047D68 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F127C 80047D6C 3C013F4C */  lui        $at, 0x3f4c
/* F1280 80047D70 3421CCCD */  ori        $at, $at, 0xcccd
/* F1284 80047D74 44810000 */  mtc1       $at, $f0
/* F1288 80047D78 00000000 */  nop
/* F128C 80047D7C 46001082 */  mul.s      $f2, $f2, $f0
/* F1290 80047D80 3C014F00 */  lui        $at, 0x4f00
/* F1294 80047D84 44810000 */  mtc1       $at, $f0
/* F1298 80047D88 00000000 */  nop
/* F129C 80047D8C 4602003E */  c.le.s     $f0, $f2
/* F12A0 80047D90 00000000 */  nop
/* F12A4 80047D94 00000000 */  nop
/* F12A8 80047D98 45010006 */  bc1t       .L80047DB4
/* F12AC 80047D9C 00408021 */   addu      $s0, $v0, $zero
/* F12B0 80047DA0 4600100D */  trunc.w.s  $f0, $f2
/* F12B4 80047DA4 44030000 */  mfc1       $v1, $f0
/* F12B8 80047DA8 00000000 */  nop
/* F12BC 80047DAC 08011F73 */  j          .L80047DCC
/* F12C0 80047DB0 306200FF */   andi      $v0, $v1, 0xff
.L80047DB4:
/* F12C4 80047DB4 46001001 */  sub.s      $f0, $f2, $f0
/* F12C8 80047DB8 4600008D */  trunc.w.s  $f2, $f0
/* F12CC 80047DBC 44031000 */  mfc1       $v1, $f2
/* F12D0 80047DC0 3C028000 */  lui        $v0, 0x8000
/* F12D4 80047DC4 00621825 */  or         $v1, $v1, $v0
/* F12D8 80047DC8 306200FF */  andi       $v0, $v1, 0xff
.L80047DCC:
/* F12DC 80047DCC AFA20010 */  sw         $v0, 0x10($sp)
/* F12E0 80047DD0 8E04000C */  lw         $a0, 0xc($s0)
/* F12E4 80047DD4 240500FF */  addiu      $a1, $zero, 0xff
/* F12E8 80047DD8 240600FF */  addiu      $a2, $zero, 0xff
/* F12EC 80047DDC 0C028E41 */  jal        func_800A3904
/* F12F0 80047DE0 240700FF */   addiu     $a3, $zero, 0xff
/* F12F4 80047DE4 8E04000C */  lw         $a0, 0xc($s0)
/* F12F8 80047DE8 0C028A40 */  jal        func_800A2900
/* F12FC 80047DEC 00000000 */   nop
/* F1300 80047DF0 0C00D8C1 */  jal        func_80036304_DF814
/* F1304 80047DF4 240420CA */   addiu     $a0, $zero, 0x20ca
/* F1308 80047DF8 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F130C 80047DFC C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F1310 80047E00 3C014F00 */  lui        $at, 0x4f00
/* F1314 80047E04 44810000 */  mtc1       $at, $f0
/* F1318 80047E08 00000000 */  nop
/* F131C 80047E0C 4602003E */  c.le.s     $f0, $f2
/* F1320 80047E10 00000000 */  nop
/* F1324 80047E14 00000000 */  nop
/* F1328 80047E18 45010006 */  bc1t       .L80047E34
/* F132C 80047E1C 00408021 */   addu      $s0, $v0, $zero
/* F1330 80047E20 4600100D */  trunc.w.s  $f0, $f2
/* F1334 80047E24 44030000 */  mfc1       $v1, $f0
/* F1338 80047E28 00000000 */  nop
/* F133C 80047E2C 08011F93 */  j          .L80047E4C
/* F1340 80047E30 306200FF */   andi      $v0, $v1, 0xff
.L80047E34:
/* F1344 80047E34 46001001 */  sub.s      $f0, $f2, $f0
/* F1348 80047E38 4600008D */  trunc.w.s  $f2, $f0
/* F134C 80047E3C 44031000 */  mfc1       $v1, $f2
/* F1350 80047E40 3C028000 */  lui        $v0, 0x8000
/* F1354 80047E44 00621825 */  or         $v1, $v1, $v0
/* F1358 80047E48 306200FF */  andi       $v0, $v1, 0xff
.L80047E4C:
/* F135C 80047E4C AFA20010 */  sw         $v0, 0x10($sp)
/* F1360 80047E50 8E04000C */  lw         $a0, 0xc($s0)
/* F1364 80047E54 240500FF */  addiu      $a1, $zero, 0xff
/* F1368 80047E58 240600FF */  addiu      $a2, $zero, 0xff
/* F136C 80047E5C 0C028E41 */  jal        func_800A3904
/* F1370 80047E60 240700FF */   addiu     $a3, $zero, 0xff
/* F1374 80047E64 8E04000C */  lw         $a0, 0xc($s0)
/* F1378 80047E68 0C028A40 */  jal        func_800A2900
/* F137C 80047E6C 00000000 */   nop
/* F1380 80047E70 0C00D8C1 */  jal        func_80036304_DF814
/* F1384 80047E74 240420D4 */   addiu     $a0, $zero, 0x20d4
/* F1388 80047E78 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F138C 80047E7C C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F1390 80047E80 3C013F4C */  lui        $at, 0x3f4c
/* F1394 80047E84 3421CCCD */  ori        $at, $at, 0xcccd
/* F1398 80047E88 44810000 */  mtc1       $at, $f0
/* F139C 80047E8C 00000000 */  nop
/* F13A0 80047E90 46001082 */  mul.s      $f2, $f2, $f0
/* F13A4 80047E94 3C014F00 */  lui        $at, 0x4f00
/* F13A8 80047E98 44810000 */  mtc1       $at, $f0
/* F13AC 80047E9C 00000000 */  nop
/* F13B0 80047EA0 4602003E */  c.le.s     $f0, $f2
/* F13B4 80047EA4 00000000 */  nop
/* F13B8 80047EA8 00000000 */  nop
/* F13BC 80047EAC 45010006 */  bc1t       .L80047EC8
/* F13C0 80047EB0 00408021 */   addu      $s0, $v0, $zero
/* F13C4 80047EB4 4600100D */  trunc.w.s  $f0, $f2
/* F13C8 80047EB8 44030000 */  mfc1       $v1, $f0
/* F13CC 80047EBC 00000000 */  nop
/* F13D0 80047EC0 08011FB8 */  j          .L80047EE0
/* F13D4 80047EC4 306200FF */   andi      $v0, $v1, 0xff
.L80047EC8:
/* F13D8 80047EC8 46001001 */  sub.s      $f0, $f2, $f0
/* F13DC 80047ECC 4600008D */  trunc.w.s  $f2, $f0
/* F13E0 80047ED0 44031000 */  mfc1       $v1, $f2
/* F13E4 80047ED4 3C028000 */  lui        $v0, 0x8000
/* F13E8 80047ED8 00621825 */  or         $v1, $v1, $v0
/* F13EC 80047EDC 306200FF */  andi       $v0, $v1, 0xff
.L80047EE0:
/* F13F0 80047EE0 AFA20010 */  sw         $v0, 0x10($sp)
/* F13F4 80047EE4 8E04000C */  lw         $a0, 0xc($s0)
/* F13F8 80047EE8 240500FF */  addiu      $a1, $zero, 0xff
/* F13FC 80047EEC 240600FF */  addiu      $a2, $zero, 0xff
/* F1400 80047EF0 0C028E41 */  jal        func_800A3904
/* F1404 80047EF4 240700FF */   addiu     $a3, $zero, 0xff
/* F1408 80047EF8 8E04000C */  lw         $a0, 0xc($s0)
/* F140C 80047EFC 0C028A40 */  jal        func_800A2900
/* F1410 80047F00 2410003C */   addiu     $s0, $zero, 0x3c
/* F1414 80047F04 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F1418 80047F08 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F141C 80047F0C 0202001A */  div        $zero, $s0, $v0
/* F1420 80047F10 14400002 */  bnez       $v0, .L80047F1C
/* F1424 80047F14 00000000 */   nop
/* F1428 80047F18 0007000D */  break      7
.L80047F1C:
/* F142C 80047F1C 2401FFFF */   addiu     $at, $zero, -1
/* F1430 80047F20 14410004 */  bne        $v0, $at, .L80047F34
/* F1434 80047F24 3C018000 */   lui       $at, 0x8000
/* F1438 80047F28 16010002 */  bne        $s0, $at, .L80047F34
/* F143C 80047F2C 00000000 */   nop
/* F1440 80047F30 0006000D */  break      6
.L80047F34:
/* F1444 80047F34 00002012 */   mflo      $a0
/* F1448 80047F38 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F144C 80047F3C 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F1450 80047F40 000410C0 */  sll        $v0, $a0, 3
/* F1454 80047F44 00441023 */  subu       $v0, $v0, $a0
/* F1458 80047F48 14620003 */  bne        $v1, $v0, .L80047F58
/* F145C 80047F4C 00000000 */   nop
/* F1460 80047F50 0C02A5C1 */  jal        func_800A9704
/* F1464 80047F54 00000000 */   nop
.L80047F58:
/* F1468 80047F58 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F146C 80047F5C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F1470 80047F60 0202001A */  div        $zero, $s0, $v0
/* F1474 80047F64 14400002 */  bnez       $v0, .L80047F70
/* F1478 80047F68 00000000 */   nop
/* F147C 80047F6C 0007000D */  break      7
.L80047F70:
/* F1480 80047F70 2401FFFF */   addiu     $at, $zero, -1
/* F1484 80047F74 14410004 */  bne        $v0, $at, .L80047F88
/* F1488 80047F78 3C018000 */   lui       $at, 0x8000
/* F148C 80047F7C 16010002 */  bne        $s0, $at, .L80047F88
/* F1490 80047F80 00000000 */   nop
/* F1494 80047F84 0006000D */  break      6
.L80047F88:
/* F1498 80047F88 00001012 */   mflo      $v0
/* F149C 80047F8C 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F14A0 80047F90 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F14A4 80047F94 000210C0 */  sll        $v0, $v0, 3
/* F14A8 80047F98 0062182A */  slt        $v1, $v1, $v0
/* F14AC 80047F9C 14600A2B */  bnez       $v1, .L8004A84C
/* F14B0 80047FA0 00001021 */   addu      $v0, $zero, $zero
/* F14B4 80047FA4 24020005 */  addiu      $v0, $zero, 5
/* F14B8 80047FA8 08012A12 */  j          .L8004A848
/* F14BC 80047FAC A6A2001C */   sh        $v0, 0x1c($s5)
.L80047FB0:
/* F14C0 80047FB0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F14C4 80047FB4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F14C8 80047FB8 14400006 */  bnez       $v0, .L80047FD4
/* F14CC 80047FBC 28420002 */   slti      $v0, $v0, 2
/* F14D0 80047FC0 0C010DC6 */  jal        func_80043718_ECC28
/* F14D4 80047FC4 00000000 */   nop
/* F14D8 80047FC8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F14DC 80047FCC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F14E0 80047FD0 28420002 */  slti       $v0, $v0, 2
.L80047FD4:
/* F14E4 80047FD4 14400A1D */  bnez       $v0, .L8004A84C
/* F14E8 80047FD8 00001021 */   addu      $v0, $zero, $zero
/* F14EC 80047FDC 0C02A5AF */  jal        func_800A96BC
/* F14F0 80047FE0 24040001 */   addiu     $a0, $zero, 1
/* F14F4 80047FE4 0C026DD5 */  jal        func_8009B754
/* F14F8 80047FE8 24040052 */   addiu     $a0, $zero, 0x52
/* F14FC 80047FEC 24050010 */  addiu      $a1, $zero, 0x10
/* F1500 80047FF0 3C014270 */  lui        $at, 0x4270
/* F1504 80047FF4 44810000 */  mtc1       $at, $f0
/* F1508 80047FF8 3C01C20C */  lui        $at, 0xc20c
/* F150C 80047FFC 44811000 */  mtc1       $at, $f2
/* F1510 80048000 3C01C170 */  lui        $at, 0xc170
/* F1514 80048004 44812000 */  mtc1       $at, $f4
/* F1518 80048008 3C01428C */  lui        $at, 0x428c
/* F151C 8004800C 44813000 */  mtc1       $at, $f6
/* F1520 80048010 3C048007 */  lui        $a0, %hi(D_8006C064)
/* F1524 80048014 8C84C064 */  lw         $a0, %lo(D_8006C064)($a0)
/* F1528 80048018 24060010 */  addiu      $a2, $zero, 0x10
/* F152C 8004801C 240200E0 */  addiu      $v0, $zero, 0xe0
/* F1530 80048020 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F1534 80048024 AC20C0BC */  sw         $zero, %lo(D_8006C0BC)($at)
/* F1538 80048028 AFA20010 */  sw         $v0, 0x10($sp)
/* F153C 8004802C 3C018007 */  lui        $at, %hi(D_8006C078)
/* F1540 80048030 E420C078 */  swc1       $f0, %lo(D_8006C078)($at)
/* F1544 80048034 3C018007 */  lui        $at, %hi(D_8006C084)
/* F1548 80048038 E422C084 */  swc1       $f2, %lo(D_8006C084)($at)
/* F154C 8004803C 3C018007 */  lui        $at, %hi(D_8006C090)
/* F1550 80048040 E424C090 */  swc1       $f4, %lo(D_8006C090)($at)
/* F1554 80048044 3C018007 */  lui        $at, %hi(D_8006C09C)
/* F1558 80048048 E426C09C */  swc1       $f6, %lo(D_8006C09C)($at)
/* F155C 8004804C 0C02939C */  jal        func_800A4E70
/* F1560 80048050 24070130 */   addiu     $a3, $zero, 0x130
/* F1564 80048054 24020006 */  addiu      $v0, $zero, 6
/* F1568 80048058 08012A12 */  j          .L8004A848
/* F156C 8004805C A6A2001C */   sh        $v0, 0x1c($s5)
.L80048060:
/* F1570 80048060 3C028015 */  lui        $v0, %hi(D_8014A080)
/* F1574 80048064 2442A080 */  addiu      $v0, $v0, %lo(D_8014A080)
/* F1578 80048068 C4400000 */  lwc1       $f0, ($v0)
/* F157C 8004806C 3C013C23 */  lui        $at, 0x3c23
/* F1580 80048070 3421D70A */  ori        $at, $at, 0xd70a
/* F1584 80048074 44811000 */  mtc1       $at, $f2
/* F1588 80048078 00000000 */  nop
/* F158C 8004807C 46020001 */  sub.s      $f0, $f0, $f2
/* F1590 80048080 24040009 */  addiu      $a0, $zero, 9
/* F1594 80048084 0C00DFD6 */  jal        func_80037F58_E1468
/* F1598 80048088 E4400000 */   swc1      $f0, ($v0)
/* F159C 8004808C 00409021 */  addu       $s2, $v0, $zero
/* F15A0 80048090 8E440008 */  lw         $a0, 8($s2)
/* F15A4 80048094 8482001E */  lh         $v0, 0x1e($a0)
/* F15A8 80048098 38430002 */  xori       $v1, $v0, 2
/* F15AC 8004809C 2C630001 */  sltiu      $v1, $v1, 1
/* F15B0 800480A0 38420006 */  xori       $v0, $v0, 6
/* F15B4 800480A4 2C420001 */  sltiu      $v0, $v0, 1
/* F15B8 800480A8 00621825 */  or         $v1, $v1, $v0
/* F15BC 800480AC 10600025 */  beqz       $v1, .L80048144
/* F15C0 800480B0 00000000 */   nop
/* F15C4 800480B4 84820022 */  lh         $v0, 0x22($a0)
/* F15C8 800480B8 1440000A */  bnez       $v0, .L800480E4
/* F15CC 800480BC 00000000 */   nop
/* F15D0 800480C0 0C026DD5 */  jal        func_8009B754
/* F15D4 800480C4 24040051 */   addiu     $a0, $zero, 0x51
/* F15D8 800480C8 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* F15DC 800480CC 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* F15E0 800480D0 00402021 */  addu       $a0, $v0, $zero
/* F15E4 800480D4 3C018007 */  lui        $at, %hi(D_800691A0)
/* F15E8 800480D8 0C026E66 */  jal        func_8009B998
/* F15EC 800480DC AC2491A0 */   sw        $a0, %lo(D_800691A0)($at)
/* F15F0 800480E0 8E440008 */  lw         $a0, 8($s2)
.L800480E4:
/* F15F4 800480E4 8482001E */  lh         $v0, 0x1e($a0)
/* F15F8 800480E8 38430002 */  xori       $v1, $v0, 2
/* F15FC 800480EC 2C630001 */  sltiu      $v1, $v1, 1
/* F1600 800480F0 38420006 */  xori       $v0, $v0, 6
/* F1604 800480F4 2C420001 */  sltiu      $v0, $v0, 1
/* F1608 800480F8 00621825 */  or         $v1, $v1, $v0
/* F160C 800480FC 10600011 */  beqz       $v1, .L80048144
/* F1610 80048100 00000000 */   nop
/* F1614 80048104 84820022 */  lh         $v0, 0x22($a0)
/* F1618 80048108 1450000E */  bne        $v0, $s0, .L80048144
/* F161C 8004810C 00000000 */   nop
/* F1620 80048110 0C026DD5 */  jal        func_8009B754
/* F1624 80048114 24040051 */   addiu     $a0, $zero, 0x51
/* F1628 80048118 3C038015 */  lui        $v1, %hi(D_80149F8C)
/* F162C 8004811C 94639F8C */  lhu        $v1, %lo(D_80149F8C)($v1)
/* F1630 80048120 00402021 */  addu       $a0, $v0, $zero
/* F1634 80048124 3C018007 */  lui        $at, %hi(D_800691A0)
/* F1638 80048128 AC2491A0 */  sw         $a0, %lo(D_800691A0)($at)
/* F163C 8004812C 00031C00 */  sll        $v1, $v1, 0x10
/* F1640 80048130 00032C03 */  sra        $a1, $v1, 0x10
/* F1644 80048134 00031FC2 */  srl        $v1, $v1, 0x1f
/* F1648 80048138 00A32821 */  addu       $a1, $a1, $v1
/* F164C 8004813C 0C026E66 */  jal        func_8009B998
/* F1650 80048140 00052843 */   sra       $a1, $a1, 1
.L80048144:
/* F1654 80048144 3C01C248 */  lui        $at, 0xc248
/* F1658 80048148 44810000 */  mtc1       $at, $f0
/* F165C 8004814C 3C018007 */  lui        $at, %hi(D_8006C078)
/* F1660 80048150 C422C078 */  lwc1       $f2, %lo(D_8006C078)($at)
/* F1664 80048154 24040009 */  addiu      $a0, $zero, 9
/* F1668 80048158 AE400010 */  sw         $zero, 0x10($s2)
/* F166C 8004815C E6400014 */  swc1       $f0, 0x14($s2)
/* F1670 80048160 0C00E032 */  jal        func_800380C8_E15D8
/* F1674 80048164 E6420018 */   swc1      $f2, 0x18($s2)
/* F1678 80048168 3C018007 */  lui        $at, %hi(D_8006C078)
/* F167C 8004816C C420C078 */  lwc1       $f0, %lo(D_8006C078)($at)
/* F1680 80048170 3C013E4C */  lui        $at, 0x3e4c
/* F1684 80048174 3421CCCD */  ori        $at, $at, 0xcccd
/* F1688 80048178 44811000 */  mtc1       $at, $f2
/* F168C 8004817C 00000000 */  nop
/* F1690 80048180 46020001 */  sub.s      $f0, $f0, $f2
/* F1694 80048184 3C018007 */  lui        $at, %hi(D_8006C078)
/* F1698 80048188 E420C078 */  swc1       $f0, %lo(D_8006C078)($at)
/* F169C 8004818C 0C00DFD6 */  jal        func_80037F58_E1468
/* F16A0 80048190 2404000A */   addiu     $a0, $zero, 0xa
/* F16A4 80048194 3C014140 */  lui        $at, 0x4140
/* F16A8 80048198 44810000 */  mtc1       $at, $f0
/* F16AC 8004819C 3C018007 */  lui        $at, %hi(D_8006C084)
/* F16B0 800481A0 C422C084 */  lwc1       $f2, %lo(D_8006C084)($at)
/* F16B4 800481A4 00409021 */  addu       $s2, $v0, $zero
/* F16B8 800481A8 2404000A */  addiu      $a0, $zero, 0xa
/* F16BC 800481AC AE400010 */  sw         $zero, 0x10($s2)
/* F16C0 800481B0 E6400014 */  swc1       $f0, 0x14($s2)
/* F16C4 800481B4 0C00E032 */  jal        func_800380C8_E15D8
/* F16C8 800481B8 E6420018 */   swc1      $f2, 0x18($s2)
/* F16CC 800481BC 0C00DFD6 */  jal        func_80037F58_E1468
/* F16D0 800481C0 2404000B */   addiu     $a0, $zero, 0xb
/* F16D4 800481C4 00409021 */  addu       $s2, $v0, $zero
/* F16D8 800481C8 3C018007 */  lui        $at, %hi(D_8006C084)
/* F16DC 800481CC C420C084 */  lwc1       $f0, %lo(D_8006C084)($at)
/* F16E0 800481D0 3C014270 */  lui        $at, 0x4270
/* F16E4 800481D4 44811000 */  mtc1       $at, $f2
/* F16E8 800481D8 3C014120 */  lui        $at, 0x4120
/* F16EC 800481DC 44812000 */  mtc1       $at, $f4
/* F16F0 800481E0 3C014110 */  lui        $at, 0x4110
/* F16F4 800481E4 44813000 */  mtc1       $at, $f6
/* F16F8 800481E8 46020000 */  add.s      $f0, $f0, $f2
/* F16FC 800481EC 2404000B */  addiu      $a0, $zero, 0xb
/* F1700 800481F0 E6440010 */  swc1       $f4, 0x10($s2)
/* F1704 800481F4 E6460014 */  swc1       $f6, 0x14($s2)
/* F1708 800481F8 0C00E032 */  jal        func_800380C8_E15D8
/* F170C 800481FC E6400018 */   swc1      $f0, 0x18($s2)
/* F1710 80048200 0C00DFD6 */  jal        func_80037F58_E1468
/* F1714 80048204 2404000C */   addiu     $a0, $zero, 0xc
/* F1718 80048208 3C0141A0 */  lui        $at, 0x41a0
/* F171C 8004820C 44810000 */  mtc1       $at, $f0
/* F1720 80048210 3C0140C0 */  lui        $at, 0x40c0
/* F1724 80048214 44811000 */  mtc1       $at, $f2
/* F1728 80048218 3C018007 */  lui        $at, %hi(D_8006C090)
/* F172C 8004821C C424C090 */  lwc1       $f4, %lo(D_8006C090)($at)
/* F1730 80048220 00409021 */  addu       $s2, $v0, $zero
/* F1734 80048224 2404000C */  addiu      $a0, $zero, 0xc
/* F1738 80048228 E6400010 */  swc1       $f0, 0x10($s2)
/* F173C 8004822C E6420014 */  swc1       $f2, 0x14($s2)
/* F1740 80048230 0C00E032 */  jal        func_800380C8_E15D8
/* F1744 80048234 E6440018 */   swc1      $f4, 0x18($s2)
/* F1748 80048238 0C00DFD6 */  jal        func_80037F58_E1468
/* F174C 8004823C 2404000D */   addiu     $a0, $zero, 0xd
/* F1750 80048240 3C0141F0 */  lui        $at, 0x41f0
/* F1754 80048244 44811000 */  mtc1       $at, $f2
/* F1758 80048248 3C018007 */  lui        $at, %hi(D_8006C090)
/* F175C 8004824C C420C090 */  lwc1       $f0, %lo(D_8006C090)($at)
/* F1760 80048250 00409021 */  addu       $s2, $v0, $zero
/* F1764 80048254 3C014208 */  lui        $at, 0x4208
/* F1768 80048258 44812000 */  mtc1       $at, $f4
/* F176C 8004825C 46020000 */  add.s      $f0, $f0, $f2
/* F1770 80048260 2404000D */  addiu      $a0, $zero, 0xd
/* F1774 80048264 E6420010 */  swc1       $f2, 0x10($s2)
/* F1778 80048268 E6440014 */  swc1       $f4, 0x14($s2)
/* F177C 8004826C 0C00E032 */  jal        func_800380C8_E15D8
/* F1780 80048270 E6400018 */   swc1      $f0, 0x18($s2)
/* F1784 80048274 0C00DFD6 */  jal        func_80037F58_E1468
/* F1788 80048278 2404000E */   addiu     $a0, $zero, 0xe
/* F178C 8004827C 3C01C120 */  lui        $at, 0xc120
/* F1790 80048280 44810000 */  mtc1       $at, $f0
/* F1794 80048284 3C014170 */  lui        $at, 0x4170
/* F1798 80048288 44811000 */  mtc1       $at, $f2
/* F179C 8004828C 3C018007 */  lui        $at, %hi(D_8006C09C)
/* F17A0 80048290 C424C09C */  lwc1       $f4, %lo(D_8006C09C)($at)
/* F17A4 80048294 00409021 */  addu       $s2, $v0, $zero
/* F17A8 80048298 2404000E */  addiu      $a0, $zero, 0xe
/* F17AC 8004829C E6400010 */  swc1       $f0, 0x10($s2)
/* F17B0 800482A0 E6420014 */  swc1       $f2, 0x14($s2)
/* F17B4 800482A4 0C00E032 */  jal        func_800380C8_E15D8
/* F17B8 800482A8 E6440018 */   swc1      $f4, 0x18($s2)
/* F17BC 800482AC 3C018007 */  lui        $at, %hi(D_8006C084)
/* F17C0 800482B0 C426C084 */  lwc1       $f6, %lo(D_8006C084)($at)
/* F17C4 800482B4 3C013E99 */  lui        $at, 0x3e99
/* F17C8 800482B8 3421999A */  ori        $at, $at, 0x999a
/* F17CC 800482BC 44810000 */  mtc1       $at, $f0
/* F17D0 800482C0 3C018007 */  lui        $at, %hi(D_8006C090)
/* F17D4 800482C4 C424C090 */  lwc1       $f4, %lo(D_8006C090)($at)
/* F17D8 800482C8 46003181 */  sub.s      $f6, $f6, $f0
/* F17DC 800482CC 3C013E61 */  lui        $at, 0x3e61
/* F17E0 800482D0 342147AE */  ori        $at, $at, 0x47ae
/* F17E4 800482D4 44810000 */  mtc1       $at, $f0
/* F17E8 800482D8 3C018007 */  lui        $at, %hi(D_8006C09C)
/* F17EC 800482DC C422C09C */  lwc1       $f2, %lo(D_8006C09C)($at)
/* F17F0 800482E0 46002101 */  sub.s      $f4, $f4, $f0
/* F17F4 800482E4 3C013EF5 */  lui        $at, 0x3ef5
/* F17F8 800482E8 3421C28F */  ori        $at, $at, 0xc28f
/* F17FC 800482EC 44810000 */  mtc1       $at, $f0
/* F1800 800482F0 00000000 */  nop
/* F1804 800482F4 46001081 */  sub.s      $f2, $f2, $f0
/* F1808 800482F8 3C018007 */  lui        $at, %hi(D_8006C084)
/* F180C 800482FC E426C084 */  swc1       $f6, %lo(D_8006C084)($at)
/* F1810 80048300 3C018007 */  lui        $at, %hi(D_8006C090)
/* F1814 80048304 E424C090 */  swc1       $f4, %lo(D_8006C090)($at)
/* F1818 80048308 3C018007 */  lui        $at, %hi(D_8006C09C)
/* F181C 8004830C E422C09C */  swc1       $f2, %lo(D_8006C09C)($at)
/* F1820 80048310 0C00D8C1 */  jal        func_80036304_DF814
/* F1824 80048314 24040022 */   addiu     $a0, $zero, 0x22
/* F1828 80048318 8C44000C */  lw         $a0, 0xc($v0)
/* F182C 8004831C 0C028A40 */  jal        func_800A2900
/* F1830 80048320 00008821 */   addu      $s1, $zero, $zero
/* F1834 80048324 0C00D8C1 */  jal        func_80036304_DF814
/* F1838 80048328 2404002A */   addiu     $a0, $zero, 0x2a
/* F183C 8004832C 8C44000C */  lw         $a0, 0xc($v0)
/* F1840 80048330 0C028A40 */  jal        func_800A2900
/* F1844 80048334 00000000 */   nop
/* F1848 80048338 26240023 */  addiu      $a0, $s1, 0x23
.L8004833C:
/* F184C 8004833C 0C00D8C1 */  jal        func_80036304_DF814
/* F1850 80048340 3084FFFF */   andi      $a0, $a0, 0xffff
/* F1854 80048344 8C44000C */  lw         $a0, 0xc($v0)
/* F1858 80048348 0C028A40 */  jal        func_800A2900
/* F185C 8004834C 26310001 */   addiu     $s1, $s1, 1
/* F1860 80048350 3222FFFF */  andi       $v0, $s1, 0xffff
/* F1864 80048354 2C420007 */  sltiu      $v0, $v0, 7
/* F1868 80048358 1440FFF8 */  bnez       $v0, .L8004833C
/* F186C 8004835C 26240023 */   addiu     $a0, $s1, 0x23
/* F1870 80048360 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F1874 80048364 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F1878 80048368 2403003C */  addiu      $v1, $zero, 0x3c
/* F187C 8004836C 0062001A */  div        $zero, $v1, $v0
/* F1880 80048370 14400002 */  bnez       $v0, .L8004837C
/* F1884 80048374 00000000 */   nop
/* F1888 80048378 0007000D */  break      7
.L8004837C:
/* F188C 8004837C 2401FFFF */   addiu     $at, $zero, -1
/* F1890 80048380 14410004 */  bne        $v0, $at, .L80048394
/* F1894 80048384 3C018000 */   lui       $at, 0x8000
/* F1898 80048388 14610002 */  bne        $v1, $at, .L80048394
/* F189C 8004838C 00000000 */   nop
/* F18A0 80048390 0006000D */  break      6
.L80048394:
/* F18A4 80048394 00001812 */   mflo      $v1
/* F18A8 80048398 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F18AC 8004839C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F18B0 800483A0 00031040 */  sll        $v0, $v1, 1
/* F18B4 800483A4 00431021 */  addu       $v0, $v0, $v1
/* F18B8 800483A8 0082202A */  slt        $a0, $a0, $v0
/* F18BC 800483AC 14800010 */  bnez       $a0, .L800483F0
/* F18C0 800483B0 00000000 */   nop
/* F18C4 800483B4 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F18C8 800483B8 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F18CC 800483BC 3C014378 */  lui        $at, 0x4378
/* F18D0 800483C0 44810000 */  mtc1       $at, $f0
/* F18D4 800483C4 00000000 */  nop
/* F18D8 800483C8 4600103C */  c.lt.s     $f2, $f0
/* F18DC 800483CC 00000000 */  nop
/* F18E0 800483D0 45000007 */  bc1f       .L800483F0
/* F18E4 800483D4 00000000 */   nop
/* F18E8 800483D8 3C014100 */  lui        $at, 0x4100
/* F18EC 800483DC 44810000 */  mtc1       $at, $f0
/* F18F0 800483E0 00000000 */  nop
/* F18F4 800483E4 46001000 */  add.s      $f0, $f2, $f0
/* F18F8 800483E8 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F18FC 800483EC E420C0BC */  swc1       $f0, %lo(D_8006C0BC)($at)
.L800483F0:
/* F1900 800483F0 0C00D8C1 */  jal        func_80036304_DF814
/* F1904 800483F4 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F1908 800483F8 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F190C 800483FC C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F1910 80048400 3C014F00 */  lui        $at, 0x4f00
/* F1914 80048404 44810000 */  mtc1       $at, $f0
/* F1918 80048408 00000000 */  nop
/* F191C 8004840C 4602003E */  c.le.s     $f0, $f2
/* F1920 80048410 00000000 */  nop
/* F1924 80048414 00000000 */  nop
/* F1928 80048418 45010006 */  bc1t       .L80048434
/* F192C 8004841C 00408021 */   addu      $s0, $v0, $zero
/* F1930 80048420 4600100D */  trunc.w.s  $f0, $f2
/* F1934 80048424 44030000 */  mfc1       $v1, $f0
/* F1938 80048428 00000000 */  nop
/* F193C 8004842C 08012113 */  j          .L8004844C
/* F1940 80048430 306200FF */   andi      $v0, $v1, 0xff
.L80048434:
/* F1944 80048434 46001001 */  sub.s      $f0, $f2, $f0
/* F1948 80048438 4600008D */  trunc.w.s  $f2, $f0
/* F194C 8004843C 44031000 */  mfc1       $v1, $f2
/* F1950 80048440 3C028000 */  lui        $v0, 0x8000
/* F1954 80048444 00621825 */  or         $v1, $v1, $v0
/* F1958 80048448 306200FF */  andi       $v0, $v1, 0xff
.L8004844C:
/* F195C 8004844C AFA20010 */  sw         $v0, 0x10($sp)
/* F1960 80048450 8E04000C */  lw         $a0, 0xc($s0)
/* F1964 80048454 240500FF */  addiu      $a1, $zero, 0xff
/* F1968 80048458 240600FF */  addiu      $a2, $zero, 0xff
/* F196C 8004845C 0C028E41 */  jal        func_800A3904
/* F1970 80048460 240700FF */   addiu     $a3, $zero, 0xff
/* F1974 80048464 8E04000C */  lw         $a0, 0xc($s0)
/* F1978 80048468 0C028A40 */  jal        func_800A2900
/* F197C 8004846C 00000000 */   nop
/* F1980 80048470 0C00D8C1 */  jal        func_80036304_DF814
/* F1984 80048474 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F1988 80048478 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F198C 8004847C C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F1990 80048480 3C013F4C */  lui        $at, 0x3f4c
/* F1994 80048484 3421CCCD */  ori        $at, $at, 0xcccd
/* F1998 80048488 44810000 */  mtc1       $at, $f0
/* F199C 8004848C 00000000 */  nop
/* F19A0 80048490 46001082 */  mul.s      $f2, $f2, $f0
/* F19A4 80048494 3C014F00 */  lui        $at, 0x4f00
/* F19A8 80048498 44810000 */  mtc1       $at, $f0
/* F19AC 8004849C 00000000 */  nop
/* F19B0 800484A0 4602003E */  c.le.s     $f0, $f2
/* F19B4 800484A4 00000000 */  nop
/* F19B8 800484A8 00000000 */  nop
/* F19BC 800484AC 45010006 */  bc1t       .L800484C8
/* F19C0 800484B0 00408021 */   addu      $s0, $v0, $zero
/* F19C4 800484B4 4600100D */  trunc.w.s  $f0, $f2
/* F19C8 800484B8 44030000 */  mfc1       $v1, $f0
/* F19CC 800484BC 00000000 */  nop
/* F19D0 800484C0 08012138 */  j          .L800484E0
/* F19D4 800484C4 306200FF */   andi      $v0, $v1, 0xff
.L800484C8:
/* F19D8 800484C8 46001001 */  sub.s      $f0, $f2, $f0
/* F19DC 800484CC 4600008D */  trunc.w.s  $f2, $f0
/* F19E0 800484D0 44031000 */  mfc1       $v1, $f2
/* F19E4 800484D4 3C028000 */  lui        $v0, 0x8000
/* F19E8 800484D8 00621825 */  or         $v1, $v1, $v0
/* F19EC 800484DC 306200FF */  andi       $v0, $v1, 0xff
.L800484E0:
/* F19F0 800484E0 AFA20010 */  sw         $v0, 0x10($sp)
/* F19F4 800484E4 8E04000C */  lw         $a0, 0xc($s0)
/* F19F8 800484E8 240500FF */  addiu      $a1, $zero, 0xff
/* F19FC 800484EC 240600FF */  addiu      $a2, $zero, 0xff
/* F1A00 800484F0 0C028E41 */  jal        func_800A3904
/* F1A04 800484F4 240700FF */   addiu     $a3, $zero, 0xff
/* F1A08 800484F8 8E04000C */  lw         $a0, 0xc($s0)
/* F1A0C 800484FC 0C028A40 */  jal        func_800A2900
/* F1A10 80048500 00000000 */   nop
/* F1A14 80048504 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F1A18 80048508 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F1A1C 8004850C 2403003C */  addiu      $v1, $zero, 0x3c
/* F1A20 80048510 0062001A */  div        $zero, $v1, $v0
/* F1A24 80048514 14400002 */  bnez       $v0, .L80048520
/* F1A28 80048518 00000000 */   nop
/* F1A2C 8004851C 0007000D */  break      7
.L80048520:
/* F1A30 80048520 2401FFFF */   addiu     $at, $zero, -1
/* F1A34 80048524 14410004 */  bne        $v0, $at, .L80048538
/* F1A38 80048528 3C018000 */   lui       $at, 0x8000
/* F1A3C 8004852C 14610002 */  bne        $v1, $at, .L80048538
/* F1A40 80048530 00000000 */   nop
/* F1A44 80048534 0006000D */  break      6
.L80048538:
/* F1A48 80048538 00001812 */   mflo      $v1
/* F1A4C 8004853C 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F1A50 80048540 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F1A54 80048544 00031040 */  sll        $v0, $v1, 1
/* F1A58 80048548 00431021 */  addu       $v0, $v0, $v1
/* F1A5C 8004854C 00021080 */  sll        $v0, $v0, 2
/* F1A60 80048550 00431023 */  subu       $v0, $v0, $v1
/* F1A64 80048554 0082202A */  slt        $a0, $a0, $v0
/* F1A68 80048558 148008BC */  bnez       $a0, .L8004A84C
/* F1A6C 8004855C 00001021 */   addu      $v0, $zero, $zero
/* F1A70 80048560 24020007 */  addiu      $v0, $zero, 7
/* F1A74 80048564 08012A12 */  j          .L8004A848
/* F1A78 80048568 A6A2001C */   sh        $v0, 0x1c($s5)
.L8004856C:
/* F1A7C 8004856C 0C010EF6 */  jal        func_80043BD8_ED0E8
/* F1A80 80048570 00008821 */   addu      $s1, $zero, $zero
/* F1A84 80048574 0C00DFD6 */  jal        func_80037F58_E1468
/* F1A88 80048578 24040009 */   addiu     $a0, $zero, 9
/* F1A8C 8004857C 00409021 */  addu       $s2, $v0, $zero
/* F1A90 80048580 0C027AF5 */  jal        func_8009EBD4
/* F1A94 80048584 8E440008 */   lw        $a0, 8($s2)
/* F1A98 80048588 0C027D35 */  jal        func_8009F4D4
/* F1A9C 8004858C 8E44000C */   lw        $a0, 0xc($s2)
/* F1AA0 80048590 3C01C1A0 */  lui        $at, 0xc1a0
/* F1AA4 80048594 44810000 */  mtc1       $at, $f0
/* F1AA8 80048598 3C014170 */  lui        $at, 0x4170
/* F1AAC 8004859C 44811000 */  mtc1       $at, $f2
/* F1AB0 800485A0 3C038007 */  lui        $v1, %hi(D_8006C0A8)
/* F1AB4 800485A4 2463C0A8 */  addiu      $v1, $v1, %lo(D_8006C0A8)
/* F1AB8 800485A8 3C018007 */  lui        $at, %hi(D_8006C070)
/* F1ABC 800485AC AC20C070 */  sw         $zero, %lo(D_8006C070)($at)
/* F1AC0 800485B0 3C018007 */  lui        $at, %hi(D_8006C074)
/* F1AC4 800485B4 AC20C074 */  sw         $zero, %lo(D_8006C074)($at)
/* F1AC8 800485B8 3C018007 */  lui        $at, %hi(D_8006C078)
/* F1ACC 800485BC E420C078 */  swc1       $f0, %lo(D_8006C078)($at)
/* F1AD0 800485C0 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F1AD4 800485C4 E422C0C0 */  swc1       $f2, %lo(D_8006C0C0)($at)
/* F1AD8 800485C8 3222FFFF */  andi       $v0, $s1, 0xffff
.L800485CC:
/* F1ADC 800485CC 00021040 */  sll        $v0, $v0, 1
/* F1AE0 800485D0 00431021 */  addu       $v0, $v0, $v1
/* F1AE4 800485D4 A4400000 */  sh         $zero, ($v0)
/* F1AE8 800485D8 26310001 */  addiu      $s1, $s1, 1
/* F1AEC 800485DC 3222FFFF */  andi       $v0, $s1, 0xffff
/* F1AF0 800485E0 2C42000A */  sltiu      $v0, $v0, 0xa
/* F1AF4 800485E4 1440FFF9 */  bnez       $v0, .L800485CC
/* F1AF8 800485E8 3222FFFF */   andi      $v0, $s1, 0xffff
/* F1AFC 800485EC 24020008 */  addiu      $v0, $zero, 8
/* F1B00 800485F0 A6A2001C */  sh         $v0, 0x1c($s5)
.L800485F4:
/* F1B04 800485F4 0C00E320 */  jal        func_80038C80_E2190
/* F1B08 800485F8 00000000 */   nop
/* F1B0C 800485FC 0C00D8C1 */  jal        func_80036304_DF814
/* F1B10 80048600 24040022 */   addiu     $a0, $zero, 0x22
/* F1B14 80048604 00408021 */  addu       $s0, $v0, $zero
/* F1B18 80048608 3C0140C0 */  lui        $at, 0x40c0
/* F1B1C 8004860C 44810000 */  mtc1       $at, $f0
/* F1B20 80048610 8E04000C */  lw         $a0, 0xc($s0)
/* F1B24 80048614 44060000 */  mfc1       $a2, $f0
/* F1B28 80048618 00002821 */  addu       $a1, $zero, $zero
/* F1B2C 8004861C 0C02915B */  jal        func_800A456C
/* F1B30 80048620 00C03821 */   addu      $a3, $a2, $zero
/* F1B34 80048624 8E04000C */  lw         $a0, 0xc($s0)
/* F1B38 80048628 0C028A40 */  jal        func_800A2900
/* F1B3C 8004862C 00000000 */   nop
/* F1B40 80048630 0C00DFD6 */  jal        func_80037F58_E1468
/* F1B44 80048634 24040009 */   addiu     $a0, $zero, 9
/* F1B48 80048638 3C048015 */  lui        $a0, %hi(D_80149F90)
/* F1B4C 8004863C 8C849F90 */  lw         $a0, %lo(D_80149F90)($a0)
/* F1B50 80048640 2403003C */  addiu      $v1, $zero, 0x3c
/* F1B54 80048644 0064001A */  div        $zero, $v1, $a0
/* F1B58 80048648 14800002 */  bnez       $a0, .L80048654
/* F1B5C 8004864C 00000000 */   nop
/* F1B60 80048650 0007000D */  break      7
.L80048654:
/* F1B64 80048654 2401FFFF */   addiu     $at, $zero, -1
/* F1B68 80048658 14810004 */  bne        $a0, $at, .L8004866C
/* F1B6C 8004865C 3C018000 */   lui       $at, 0x8000
/* F1B70 80048660 14610002 */  bne        $v1, $at, .L8004866C
/* F1B74 80048664 00000000 */   nop
/* F1B78 80048668 0006000D */  break      6
.L8004866C:
/* F1B7C 8004866C 00001812 */   mflo      $v1
/* F1B80 80048670 3C013F00 */  lui        $at, 0x3f00
/* F1B84 80048674 44811000 */  mtc1       $at, $f2
/* F1B88 80048678 44830000 */  mtc1       $v1, $f0
/* F1B8C 8004867C 00000000 */  nop
/* F1B90 80048680 46800020 */  cvt.s.w    $f0, $f0
/* F1B94 80048684 46020002 */  mul.s      $f0, $f0, $f2
/* F1B98 80048688 3C018007 */  lui        $at, %hi(D_8006C564)
/* F1B9C 8004868C C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F1BA0 80048690 468010A0 */  cvt.s.w    $f2, $f2
/* F1BA4 80048694 4602003E */  c.le.s     $f0, $f2
/* F1BA8 80048698 00000000 */  nop
/* F1BAC 8004869C 00000000 */  nop
/* F1BB0 800486A0 4500000C */  bc1f       .L800486D4
/* F1BB4 800486A4 00409021 */   addu      $s2, $v0, $zero
/* F1BB8 800486A8 8E440008 */  lw         $a0, 8($s2)
/* F1BBC 800486AC 8483001E */  lh         $v1, 0x1e($a0)
/* F1BC0 800486B0 24020003 */  addiu      $v0, $zero, 3
/* F1BC4 800486B4 14620003 */  bne        $v1, $v0, .L800486C4
/* F1BC8 800486B8 24020030 */   addiu     $v0, $zero, 0x30
/* F1BCC 800486BC 080121B5 */  j          .L800486D4
/* F1BD0 800486C0 A6420072 */   sh        $v0, 0x72($s2)
.L800486C4:
/* F1BD4 800486C4 0C027AFA */  jal        func_8009EBE8
/* F1BD8 800486C8 00000000 */   nop
/* F1BDC 800486CC 0C027D3A */  jal        func_8009F4E8
/* F1BE0 800486D0 8E44000C */   lw        $a0, 0xc($s2)
.L800486D4:
/* F1BE4 800486D4 0C00E032 */  jal        func_800380C8_E15D8
/* F1BE8 800486D8 24040009 */   addiu     $a0, $zero, 9
/* F1BEC 800486DC 00008821 */  addu       $s1, $zero, $zero
/* F1BF0 800486E0 3C148007 */  lui        $s4, %hi(D_8006C0A8)
/* F1BF4 800486E4 2694C0A8 */  addiu      $s4, $s4, %lo(D_8006C0A8)
/* F1BF8 800486E8 27B60058 */  addiu      $s6, $sp, 0x58
/* F1BFC 800486EC 241700FF */  addiu      $s7, $zero, 0xff
/* F1C00 800486F0 3C014F00 */  lui        $at, 0x4f00
/* F1C04 800486F4 4481A000 */  mtc1       $at, $f20
.L800486F8:
/* F1C08 800486F8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F1C0C 800486FC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F1C10 80048700 2403003C */  addiu      $v1, $zero, 0x3c
/* F1C14 80048704 0062001A */  div        $zero, $v1, $v0
/* F1C18 80048708 14400002 */  bnez       $v0, .L80048714
/* F1C1C 8004870C 00000000 */   nop
/* F1C20 80048710 0007000D */  break      7
.L80048714:
/* F1C24 80048714 2401FFFF */   addiu     $at, $zero, -1
/* F1C28 80048718 14410004 */  bne        $v0, $at, .L8004872C
/* F1C2C 8004871C 3C018000 */   lui       $at, 0x8000
/* F1C30 80048720 14610002 */  bne        $v1, $at, .L8004872C
/* F1C34 80048724 00000000 */   nop
/* F1C38 80048728 0006000D */  break      6
.L8004872C:
/* F1C3C 8004872C 00001812 */   mflo      $v1
/* F1C40 80048730 3224FFFF */  andi       $a0, $s1, 0xffff
/* F1C44 80048734 00041080 */  sll        $v0, $a0, 2
/* F1C48 80048738 03A21021 */  addu       $v0, $sp, $v0
/* F1C4C 8004873C C44200B8 */  lwc1       $f2, 0xb8($v0)
/* F1C50 80048740 44830000 */  mtc1       $v1, $f0
/* F1C54 80048744 00000000 */  nop
/* F1C58 80048748 46800020 */  cvt.s.w    $f0, $f0
/* F1C5C 8004874C 46001082 */  mul.s      $f2, $f2, $f0
/* F1C60 80048750 3C018007 */  lui        $at, %hi(D_8006C564)
/* F1C64 80048754 C420C564 */  lwc1       $f0, %lo(D_8006C564)($at)
/* F1C68 80048758 46800020 */  cvt.s.w    $f0, $f0
/* F1C6C 8004875C 4600103E */  c.le.s     $f2, $f0
/* F1C70 80048760 00000000 */  nop
/* F1C74 80048764 00000000 */  nop
/* F1C78 80048768 450000E5 */  bc1f       .L80048B00
/* F1C7C 8004876C 2C830002 */   sltiu     $v1, $a0, 2
/* F1C80 80048770 38820004 */  xori       $v0, $a0, 4
/* F1C84 80048774 2C420001 */  sltiu      $v0, $v0, 1
/* F1C88 80048778 00621825 */  or         $v1, $v1, $v0
/* F1C8C 8004877C 14600005 */  bnez       $v1, .L80048794
/* F1C90 80048780 00041040 */   sll       $v0, $a0, 1
/* F1C94 80048784 24020007 */  addiu      $v0, $zero, 7
/* F1C98 80048788 1482001C */  bne        $a0, $v0, .L800487FC
/* F1C9C 8004878C 3230FFFF */   andi      $s0, $s1, 0xffff
/* F1CA0 80048790 00041040 */  sll        $v0, $a0, 1
.L80048794:
/* F1CA4 80048794 00548021 */  addu       $s0, $v0, $s4
/* F1CA8 80048798 96030000 */  lhu        $v1, ($s0)
/* F1CAC 8004879C 2C620002 */  sltiu      $v0, $v1, 2
/* F1CB0 800487A0 50400016 */  beql       $v0, $zero, .L800487FC
/* F1CB4 800487A4 3230FFFF */   andi      $s0, $s1, 0xffff
/* F1CB8 800487A8 10600003 */  beqz       $v1, .L800487B8
/* F1CBC 800487AC 00000000 */   nop
/* F1CC0 800487B0 0C026DD5 */  jal        func_8009B754
/* F1CC4 800487B4 24040036 */   addiu     $a0, $zero, 0x36
.L800487B8:
/* F1CC8 800487B8 0C00D8C1 */  jal        func_80036304_DF814
/* F1CCC 800487BC 24040042 */   addiu     $a0, $zero, 0x42
/* F1CD0 800487C0 86030000 */  lh         $v1, ($s0)
/* F1CD4 800487C4 14600003 */  bnez       $v1, .L800487D4
/* F1CD8 800487C8 00408021 */   addu      $s0, $v0, $zero
/* F1CDC 800487CC 080121F6 */  j          .L800487D8
/* F1CE0 800487D0 24020080 */   addiu     $v0, $zero, 0x80
.L800487D4:
/* F1CE4 800487D4 24020040 */  addiu      $v0, $zero, 0x40
.L800487D8:
/* F1CE8 800487D8 AFA20010 */  sw         $v0, 0x10($sp)
/* F1CEC 800487DC 8E04000C */  lw         $a0, 0xc($s0)
/* F1CF0 800487E0 240500FF */  addiu      $a1, $zero, 0xff
/* F1CF4 800487E4 240600FF */  addiu      $a2, $zero, 0xff
/* F1CF8 800487E8 0C028E41 */  jal        func_800A3904
/* F1CFC 800487EC 240700FF */   addiu     $a3, $zero, 0xff
/* F1D00 800487F0 8E04000C */  lw         $a0, 0xc($s0)
/* F1D04 800487F4 0C028A40 */  jal        func_800A2900
/* F1D08 800487F8 3230FFFF */   andi      $s0, $s1, 0xffff
.L800487FC:
/* F1D0C 800487FC 00101040 */  sll        $v0, $s0, 1
/* F1D10 80048800 00549821 */  addu       $s3, $v0, $s4
/* F1D14 80048804 86620000 */  lh         $v0, ($s3)
/* F1D18 80048808 02C21021 */  addu       $v0, $s6, $v0
/* F1D1C 8004880C 90420000 */  lbu        $v0, ($v0)
/* F1D20 80048810 14400013 */  bnez       $v0, .L80048860
/* F1D24 80048814 00101880 */   sll       $v1, $s0, 2
/* F1D28 80048818 27A20090 */  addiu      $v0, $sp, 0x90
/* F1D2C 8004881C 00431021 */  addu       $v0, $v0, $v1
/* F1D30 80048820 84430000 */  lh         $v1, ($v0)
/* F1D34 80048824 84420002 */  lh         $v0, 2($v0)
/* F1D38 80048828 3C01C1A0 */  lui        $at, 0xc1a0
/* F1D3C 8004882C 44811000 */  mtc1       $at, $f2
/* F1D40 80048830 44830000 */  mtc1       $v1, $f0
/* F1D44 80048834 00000000 */  nop
/* F1D48 80048838 46800020 */  cvt.s.w    $f0, $f0
/* F1D4C 8004883C 3C018007 */  lui        $at, %hi(D_8006C070)
/* F1D50 80048840 E420C070 */  swc1       $f0, %lo(D_8006C070)($at)
/* F1D54 80048844 44820000 */  mtc1       $v0, $f0
/* F1D58 80048848 00000000 */  nop
/* F1D5C 8004884C 46800020 */  cvt.s.w    $f0, $f0
/* F1D60 80048850 3C018007 */  lui        $at, %hi(D_8006C074)
/* F1D64 80048854 E420C074 */  swc1       $f0, %lo(D_8006C074)($at)
/* F1D68 80048858 3C018007 */  lui        $at, %hi(D_8006C078)
/* F1D6C 8004885C E422C078 */  swc1       $f2, %lo(D_8006C078)($at)
.L80048860:
/* F1D70 80048860 3C018007 */  lui        $at, %hi(D_8006C070)
/* F1D74 80048864 C424C070 */  lwc1       $f4, %lo(D_8006C070)($at)
/* F1D78 80048868 3C018007 */  lui        $at, %hi(D_8006C074)
/* F1D7C 8004886C C426C074 */  lwc1       $f6, %lo(D_8006C074)($at)
/* F1D80 80048870 86620000 */  lh         $v0, ($s3)
/* F1D84 80048874 3C018007 */  lui        $at, %hi(D_8006C078)
/* F1D88 80048878 C422C078 */  lwc1       $f2, %lo(D_8006C078)($at)
/* F1D8C 8004887C 3C013E4C */  lui        $at, 0x3e4c
/* F1D90 80048880 3421CCCD */  ori        $at, $at, 0xcccd
/* F1D94 80048884 44810000 */  mtc1       $at, $f0
/* F1D98 80048888 02C21021 */  addu       $v0, $s6, $v0
/* F1D9C 8004888C 90430000 */  lbu        $v1, ($v0)
/* F1DA0 80048890 2402000A */  addiu      $v0, $zero, 0xa
/* F1DA4 80048894 46001000 */  add.s      $f0, $f2, $f0
/* F1DA8 80048898 3C018017 */  lui        $at, %hi(D_8016E568)
/* F1DAC 8004889C E424E568 */  swc1       $f4, %lo(D_8016E568)($at)
/* F1DB0 800488A0 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F1DB4 800488A4 E426D0D0 */  swc1       $f6, %lo(D_8016D0D0)($at)
/* F1DB8 800488A8 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F1DBC 800488AC E422D0D4 */  swc1       $f2, %lo(D_8016D0D4)($at)
/* F1DC0 800488B0 3C018007 */  lui        $at, %hi(D_8006C078)
/* F1DC4 800488B4 E420C078 */  swc1       $f0, %lo(D_8006C078)($at)
/* F1DC8 800488B8 10620076 */  beq        $v1, $v0, .L80048A94
/* F1DCC 800488BC 26240012 */   addiu     $a0, $s1, 0x12
/* F1DD0 800488C0 0C00DFD6 */  jal        func_80037F58_E1468
/* F1DD4 800488C4 3084FFFF */   andi      $a0, $a0, 0xffff
/* F1DD8 800488C8 86630000 */  lh         $v1, ($s3)
/* F1DDC 800488CC 3C014120 */  lui        $at, 0x4120
/* F1DE0 800488D0 44810000 */  mtc1       $at, $f0
/* F1DE4 800488D4 44831000 */  mtc1       $v1, $f2
/* F1DE8 800488D8 00000000 */  nop
/* F1DEC 800488DC 468010A0 */  cvt.s.w    $f2, $f2
/* F1DF0 800488E0 46001083 */  div.s      $f2, $f2, $f0
/* F1DF4 800488E4 27A40090 */  addiu      $a0, $sp, 0x90
/* F1DF8 800488E8 00101880 */  sll        $v1, $s0, 2
/* F1DFC 800488EC 00832021 */  addu       $a0, $a0, $v1
/* F1E00 800488F0 84830000 */  lh         $v1, ($a0)
/* F1E04 800488F4 44830000 */  mtc1       $v1, $f0
/* F1E08 800488F8 00000000 */  nop
/* F1E0C 800488FC 46800020 */  cvt.s.w    $f0, $f0
/* F1E10 80048900 46020001 */  sub.s      $f0, $f0, $f2
/* F1E14 80048904 00409021 */  addu       $s2, $v0, $zero
/* F1E18 80048908 E6400010 */  swc1       $f0, 0x10($s2)
/* F1E1C 8004890C 86620000 */  lh         $v0, ($s3)
/* F1E20 80048910 3C0141A0 */  lui        $at, 0x41a0
/* F1E24 80048914 44810000 */  mtc1       $at, $f0
/* F1E28 80048918 44821000 */  mtc1       $v0, $f2
/* F1E2C 8004891C 00000000 */  nop
/* F1E30 80048920 468010A0 */  cvt.s.w    $f2, $f2
/* F1E34 80048924 46001083 */  div.s      $f2, $f2, $f0
/* F1E38 80048928 84820002 */  lh         $v0, 2($a0)
/* F1E3C 8004892C 3C01BF80 */  lui        $at, 0xbf80
/* F1E40 80048930 44812000 */  mtc1       $at, $f4
/* F1E44 80048934 8E440004 */  lw         $a0, 4($s2)
/* F1E48 80048938 44820000 */  mtc1       $v0, $f0
/* F1E4C 8004893C 00000000 */  nop
/* F1E50 80048940 46800020 */  cvt.s.w    $f0, $f0
/* F1E54 80048944 46020000 */  add.s      $f0, $f0, $f2
/* F1E58 80048948 3C058007 */  lui        $a1, %hi(D_8006A134)
/* F1E5C 8004894C 24A5A134 */  addiu      $a1, $a1, %lo(D_8006A134)
/* F1E60 80048950 E6440018 */  swc1       $f4, 0x18($s2)
/* F1E64 80048954 0C0284DC */  jal        func_800A1370
/* F1E68 80048958 E6400014 */   swc1      $f0, 0x14($s2)
/* F1E6C 8004895C 8E440004 */  lw         $a0, 4($s2)
/* F1E70 80048960 00021400 */  sll        $v0, $v0, 0x10
/* F1E74 80048964 0C0285CC */  jal        func_800A1730
/* F1E78 80048968 00022C03 */   sra       $a1, $v0, 0x10
/* F1E7C 8004896C 86630000 */  lh         $v1, ($s3)
/* F1E80 80048970 02C31821 */  addu       $v1, $s6, $v1
/* F1E84 80048974 90640000 */  lbu        $a0, ($v1)
/* F1E88 80048978 24500020 */  addiu      $s0, $v0, 0x20
/* F1E8C 8004897C 0C00D8C1 */  jal        func_80036304_DF814
/* F1E90 80048980 2484002B */   addiu     $a0, $a0, 0x2b
/* F1E94 80048984 8C42000C */  lw         $v0, 0xc($v0)
/* F1E98 80048988 8C440010 */  lw         $a0, 0x10($v0)
/* F1E9C 8004898C 02002821 */  addu       $a1, $s0, $zero
/* F1EA0 80048990 0C03006C */  jal        func_800C01B0
/* F1EA4 80048994 24060800 */   addiu     $a2, $zero, 0x800
/* F1EA8 80048998 86630000 */  lh         $v1, ($s3)
/* F1EAC 8004899C 28620015 */  slti       $v0, $v1, 0x15
/* F1EB0 800489A0 14400007 */  bnez       $v0, .L800489C0
/* F1EB4 800489A4 2462FFEC */   addiu     $v0, $v1, -0x14
/* F1EB8 800489A8 00021140 */  sll        $v0, $v0, 5
/* F1EBC 800489AC 02E21023 */  subu       $v0, $s7, $v0
/* F1EC0 800489B0 44821000 */  mtc1       $v0, $f2
/* F1EC4 800489B4 00000000 */  nop
/* F1EC8 800489B8 08012272 */  j          .L800489C8
/* F1ECC 800489BC 468010A0 */   cvt.s.w   $f2, $f2
.L800489C0:
/* F1ED0 800489C0 3C01437F */  lui        $at, 0x437f
/* F1ED4 800489C4 44811000 */  mtc1       $at, $f2
.L800489C8:
/* F1ED8 800489C8 3C01437F */  lui        $at, 0x437f
/* F1EDC 800489CC 44810000 */  mtc1       $at, $f0
/* F1EE0 800489D0 00000000 */  nop
/* F1EE4 800489D4 4602003C */  c.lt.s     $f0, $f2
/* F1EE8 800489D8 00000000 */  nop
/* F1EEC 800489DC 00000000 */  nop
/* F1EF0 800489E0 45030008 */  bc1tl      .L80048A04
/* F1EF4 800489E4 46000086 */   mov.s     $f2, $f0
/* F1EF8 800489E8 44800000 */  mtc1       $zero, $f0
/* F1EFC 800489EC 00000000 */  nop
/* F1F00 800489F0 4600103C */  c.lt.s     $f2, $f0
/* F1F04 800489F4 00000000 */  nop
/* F1F08 800489F8 00000000 */  nop
/* F1F0C 800489FC 45030001 */  bc1tl      .L80048A04
/* F1F10 80048A00 46000086 */   mov.s     $f2, $f0
.L80048A04:
/* F1F14 80048A04 4602A03E */  c.le.s     $f20, $f2
/* F1F18 80048A08 A6570074 */  sh         $s7, 0x74($s2)
/* F1F1C 80048A0C A6570076 */  sh         $s7, 0x76($s2)
/* F1F20 80048A10 45010006 */  bc1t       .L80048A2C
/* F1F24 80048A14 A6570078 */   sh        $s7, 0x78($s2)
/* F1F28 80048A18 4600100D */  trunc.w.s  $f0, $f2
/* F1F2C 80048A1C 44030000 */  mfc1       $v1, $f0
/* F1F30 80048A20 00000000 */  nop
/* F1F34 80048A24 08012291 */  j          .L80048A44
/* F1F38 80048A28 3222FFFF */   andi      $v0, $s1, 0xffff
.L80048A2C:
/* F1F3C 80048A2C 46141001 */  sub.s      $f0, $f2, $f20
/* F1F40 80048A30 4600008D */  trunc.w.s  $f2, $f0
/* F1F44 80048A34 44031000 */  mfc1       $v1, $f2
/* F1F48 80048A38 3C028000 */  lui        $v0, 0x8000
/* F1F4C 80048A3C 00621825 */  or         $v1, $v1, $v0
/* F1F50 80048A40 3222FFFF */  andi       $v0, $s1, 0xffff
.L80048A44:
/* F1F54 80048A44 00021040 */  sll        $v0, $v0, 1
/* F1F58 80048A48 00541021 */  addu       $v0, $v0, $s4
/* F1F5C 80048A4C A643007A */  sh         $v1, 0x7a($s2)
/* F1F60 80048A50 84420000 */  lh         $v0, ($v0)
/* F1F64 80048A54 3C014688 */  lui        $at, 0x4688
/* F1F68 80048A58 3421B800 */  ori        $at, $at, 0xb800
/* F1F6C 80048A5C 44810000 */  mtc1       $at, $f0
/* F1F70 80048A60 44821000 */  mtc1       $v0, $f2
/* F1F74 80048A64 00000000 */  nop
/* F1F78 80048A68 468010A0 */  cvt.s.w    $f2, $f2
/* F1F7C 80048A6C 46001083 */  div.s      $f2, $f2, $f0
/* F1F80 80048A70 3C013BA3 */  lui        $at, 0x3ba3
/* F1F84 80048A74 3421D70A */  ori        $at, $at, 0xd70a
/* F1F88 80048A78 44810000 */  mtc1       $at, $f0
/* F1F8C 80048A7C 00000000 */  nop
/* F1F90 80048A80 46001080 */  add.s      $f2, $f2, $f0
/* F1F94 80048A84 26240012 */  addiu      $a0, $s1, 0x12
/* F1F98 80048A88 3084FFFF */  andi       $a0, $a0, 0xffff
/* F1F9C 80048A8C 0C00E032 */  jal        func_800380C8_E15D8
/* F1FA0 80048A90 E6420028 */   swc1      $f2, 0x28($s2)
.L80048A94:
/* F1FA4 80048A94 3223FFFF */  andi       $v1, $s1, 0xffff
/* F1FA8 80048A98 00031040 */  sll        $v0, $v1, 1
/* F1FAC 80048A9C 00542821 */  addu       $a1, $v0, $s4
/* F1FB0 80048AA0 94A40000 */  lhu        $a0, ($a1)
/* F1FB4 80048AA4 24820001 */  addiu      $v0, $a0, 1
/* F1FB8 80048AA8 1060000D */  beqz       $v1, .L80048AE0
/* F1FBC 80048AAC A4A20000 */   sh        $v0, ($a1)
/* F1FC0 80048AB0 00021400 */  sll        $v0, $v0, 0x10
/* F1FC4 80048AB4 00021C03 */  sra        $v1, $v0, 0x10
/* F1FC8 80048AB8 28620033 */  slti       $v0, $v1, 0x33
/* F1FCC 80048ABC 14400003 */  bnez       $v0, .L80048ACC
/* F1FD0 80048AC0 2482FFCE */   addiu     $v0, $a0, -0x32
/* F1FD4 80048AC4 080122C0 */  j          .L80048B00
/* F1FD8 80048AC8 A4A20000 */   sh        $v0, ($a1)
.L80048ACC:
/* F1FDC 80048ACC 0463000D */  bgezl      $v1, .L80048B04
/* F1FE0 80048AD0 26310001 */   addiu     $s1, $s1, 1
/* F1FE4 80048AD4 24820034 */  addiu      $v0, $a0, 0x34
/* F1FE8 80048AD8 080122C0 */  j          .L80048B00
/* F1FEC 80048ADC A4A20000 */   sh        $v0, ($a1)
.L80048AE0:
/* F1FF0 80048AE0 86830000 */  lh         $v1, ($s4)
/* F1FF4 80048AE4 2862002F */  slti       $v0, $v1, 0x2f
/* F1FF8 80048AE8 14400003 */  bnez       $v0, .L80048AF8
/* F1FFC 80048AEC 2402002E */   addiu     $v0, $zero, 0x2e
/* F2000 80048AF0 080122C0 */  j          .L80048B00
/* F2004 80048AF4 A6820000 */   sh        $v0, ($s4)
.L80048AF8:
/* F2008 80048AF8 04620001 */  bltzl      $v1, .L80048B00
/* F200C 80048AFC A6800000 */   sh        $zero, ($s4)
.L80048B00:
/* F2010 80048B00 26310001 */  addiu      $s1, $s1, 1
.L80048B04:
/* F2014 80048B04 3222FFFF */  andi       $v0, $s1, 0xffff
/* F2018 80048B08 2C42000A */  sltiu      $v0, $v0, 0xa
/* F201C 80048B0C 1440FEFA */  bnez       $v0, .L800486F8
/* F2020 80048B10 2402003C */   addiu     $v0, $zero, 0x3c
/* F2024 80048B14 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F2028 80048B18 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F202C 80048B1C 0043001A */  div        $zero, $v0, $v1
/* F2030 80048B20 14600002 */  bnez       $v1, .L80048B2C
/* F2034 80048B24 00000000 */   nop
/* F2038 80048B28 0007000D */  break      7
.L80048B2C:
/* F203C 80048B2C 2401FFFF */   addiu     $at, $zero, -1
/* F2040 80048B30 14610004 */  bne        $v1, $at, .L80048B44
/* F2044 80048B34 3C018000 */   lui       $at, 0x8000
/* F2048 80048B38 14410002 */  bne        $v0, $at, .L80048B44
/* F204C 80048B3C 00000000 */   nop
/* F2050 80048B40 0006000D */  break      6
.L80048B44:
/* F2054 80048B44 00001012 */   mflo      $v0
/* F2058 80048B48 3C018007 */  lui        $at, %hi(D_8006A140)
/* F205C 80048B4C D422A140 */  ldc1       $f2, %lo(D_8006A140)($at)
/* F2060 80048B50 44820000 */  mtc1       $v0, $f0
/* F2064 80048B54 00000000 */  nop
/* F2068 80048B58 46800021 */  cvt.d.w    $f0, $f0
/* F206C 80048B5C 46220002 */  mul.d      $f0, $f0, $f2
/* F2070 80048B60 3C018007 */  lui        $at, %hi(D_8006C564)
/* F2074 80048B64 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F2078 80048B68 468010A1 */  cvt.d.w    $f2, $f2
/* F207C 80048B6C 4622003E */  c.le.d     $f0, $f2
/* F2080 80048B70 00000000 */  nop
/* F2084 80048B74 45000010 */  bc1f       .L80048BB8
/* F2088 80048B78 00000000 */   nop
/* F208C 80048B7C 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F2090 80048B80 C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F2094 80048B84 3C014378 */  lui        $at, 0x4378
/* F2098 80048B88 44810000 */  mtc1       $at, $f0
/* F209C 80048B8C 00000000 */  nop
/* F20A0 80048B90 4600103C */  c.lt.s     $f2, $f0
/* F20A4 80048B94 00000000 */  nop
/* F20A8 80048B98 45000009 */  bc1f       .L80048BC0
/* F20AC 80048B9C 00000000 */   nop
/* F20B0 80048BA0 3C014100 */  lui        $at, 0x4100
/* F20B4 80048BA4 44810000 */  mtc1       $at, $f0
/* F20B8 80048BA8 00000000 */  nop
/* F20BC 80048BAC 46001000 */  add.s      $f0, $f2, $f0
/* F20C0 80048BB0 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F20C4 80048BB4 E420C0C0 */  swc1       $f0, %lo(D_8006C0C0)($at)
.L80048BB8:
/* F20C8 80048BB8 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F20CC 80048BBC C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
.L80048BC0:
/* F20D0 80048BC0 3C014200 */  lui        $at, 0x4200
/* F20D4 80048BC4 44810000 */  mtc1       $at, $f0
/* F20D8 80048BC8 00000000 */  nop
/* F20DC 80048BCC 4602003C */  c.lt.s     $f0, $f2
/* F20E0 80048BD0 00000000 */  nop
/* F20E4 80048BD4 4500005A */  bc1f       .L80048D40
/* F20E8 80048BD8 00000000 */   nop
/* F20EC 80048BDC 0C00D8C1 */  jal        func_80036304_DF814
/* F20F0 80048BE0 240420CA */   addiu     $a0, $zero, 0x20ca
/* F20F4 80048BE4 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F20F8 80048BE8 C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F20FC 80048BEC 3C014F00 */  lui        $at, 0x4f00
/* F2100 80048BF0 44810000 */  mtc1       $at, $f0
/* F2104 80048BF4 00000000 */  nop
/* F2108 80048BF8 4602003E */  c.le.s     $f0, $f2
/* F210C 80048BFC 00000000 */  nop
/* F2110 80048C00 00000000 */  nop
/* F2114 80048C04 45010006 */  bc1t       .L80048C20
/* F2118 80048C08 00408021 */   addu      $s0, $v0, $zero
/* F211C 80048C0C 4600100D */  trunc.w.s  $f0, $f2
/* F2120 80048C10 44030000 */  mfc1       $v1, $f0
/* F2124 80048C14 00000000 */  nop
/* F2128 80048C18 0801230E */  j          .L80048C38
/* F212C 80048C1C 306200FF */   andi      $v0, $v1, 0xff
.L80048C20:
/* F2130 80048C20 46001001 */  sub.s      $f0, $f2, $f0
/* F2134 80048C24 4600008D */  trunc.w.s  $f2, $f0
/* F2138 80048C28 44031000 */  mfc1       $v1, $f2
/* F213C 80048C2C 3C028000 */  lui        $v0, 0x8000
/* F2140 80048C30 00621825 */  or         $v1, $v1, $v0
/* F2144 80048C34 306200FF */  andi       $v0, $v1, 0xff
.L80048C38:
/* F2148 80048C38 AFA20010 */  sw         $v0, 0x10($sp)
/* F214C 80048C3C 8E04000C */  lw         $a0, 0xc($s0)
/* F2150 80048C40 240500FF */  addiu      $a1, $zero, 0xff
/* F2154 80048C44 240600FF */  addiu      $a2, $zero, 0xff
/* F2158 80048C48 0C028E41 */  jal        func_800A3904
/* F215C 80048C4C 240700FF */   addiu     $a3, $zero, 0xff
/* F2160 80048C50 8E04000C */  lw         $a0, 0xc($s0)
/* F2164 80048C54 0C028A40 */  jal        func_800A2900
/* F2168 80048C58 00000000 */   nop
/* F216C 80048C5C 0C00D8C1 */  jal        func_80036304_DF814
/* F2170 80048C60 240420D4 */   addiu     $a0, $zero, 0x20d4
/* F2174 80048C64 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F2178 80048C68 C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F217C 80048C6C 3C013F4C */  lui        $at, 0x3f4c
/* F2180 80048C70 3421CCCD */  ori        $at, $at, 0xcccd
/* F2184 80048C74 44810000 */  mtc1       $at, $f0
/* F2188 80048C78 00000000 */  nop
/* F218C 80048C7C 46001082 */  mul.s      $f2, $f2, $f0
/* F2190 80048C80 3C014F00 */  lui        $at, 0x4f00
/* F2194 80048C84 44810000 */  mtc1       $at, $f0
/* F2198 80048C88 00000000 */  nop
/* F219C 80048C8C 4602003E */  c.le.s     $f0, $f2
/* F21A0 80048C90 00000000 */  nop
/* F21A4 80048C94 00000000 */  nop
/* F21A8 80048C98 45010006 */  bc1t       .L80048CB4
/* F21AC 80048C9C 00408021 */   addu      $s0, $v0, $zero
/* F21B0 80048CA0 4600100D */  trunc.w.s  $f0, $f2
/* F21B4 80048CA4 44030000 */  mfc1       $v1, $f0
/* F21B8 80048CA8 00000000 */  nop
/* F21BC 80048CAC 08012333 */  j          .L80048CCC
/* F21C0 80048CB0 306200FF */   andi      $v0, $v1, 0xff
.L80048CB4:
/* F21C4 80048CB4 46001001 */  sub.s      $f0, $f2, $f0
/* F21C8 80048CB8 4600008D */  trunc.w.s  $f2, $f0
/* F21CC 80048CBC 44031000 */  mfc1       $v1, $f2
/* F21D0 80048CC0 3C028000 */  lui        $v0, 0x8000
/* F21D4 80048CC4 00621825 */  or         $v1, $v1, $v0
/* F21D8 80048CC8 306200FF */  andi       $v0, $v1, 0xff
.L80048CCC:
/* F21DC 80048CCC AFA20010 */  sw         $v0, 0x10($sp)
/* F21E0 80048CD0 8E04000C */  lw         $a0, 0xc($s0)
/* F21E4 80048CD4 240500FF */  addiu      $a1, $zero, 0xff
/* F21E8 80048CD8 240600FF */  addiu      $a2, $zero, 0xff
/* F21EC 80048CDC 0C028E41 */  jal        func_800A3904
/* F21F0 80048CE0 240700FF */   addiu     $a3, $zero, 0xff
/* F21F4 80048CE4 8E04000C */  lw         $a0, 0xc($s0)
/* F21F8 80048CE8 0C028A40 */  jal        func_800A2900
/* F21FC 80048CEC 00000000 */   nop
/* F2200 80048CF0 0C00D8C1 */  jal        func_80036304_DF814
/* F2204 80048CF4 240430CD */   addiu     $a0, $zero, 0x30cd
/* F2208 80048CF8 8C44000C */  lw         $a0, 0xc($v0)
/* F220C 80048CFC 0C028A40 */  jal        func_800A2900
/* F2210 80048D00 00000000 */   nop
/* F2214 80048D04 0C00D8C1 */  jal        func_80036304_DF814
/* F2218 80048D08 240430CE */   addiu     $a0, $zero, 0x30ce
/* F221C 80048D0C 8C44000C */  lw         $a0, 0xc($v0)
/* F2220 80048D10 0C028A40 */  jal        func_800A2900
/* F2224 80048D14 00000000 */   nop
/* F2228 80048D18 0C00D8C1 */  jal        func_80036304_DF814
/* F222C 80048D1C 240430CF */   addiu     $a0, $zero, 0x30cf
/* F2230 80048D20 8C44000C */  lw         $a0, 0xc($v0)
/* F2234 80048D24 0C028A40 */  jal        func_800A2900
/* F2238 80048D28 00000000 */   nop
/* F223C 80048D2C 0C00D8C1 */  jal        func_80036304_DF814
/* F2240 80048D30 240430D0 */   addiu     $a0, $zero, 0x30d0
/* F2244 80048D34 8C44000C */  lw         $a0, 0xc($v0)
/* F2248 80048D38 0C028A40 */  jal        func_800A2900
/* F224C 80048D3C 00000000 */   nop
.L80048D40:
/* F2250 80048D40 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F2254 80048D44 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F2258 80048D48 2402003C */  addiu      $v0, $zero, 0x3c
/* F225C 80048D4C 0043001A */  div        $zero, $v0, $v1
/* F2260 80048D50 14600002 */  bnez       $v1, .L80048D5C
/* F2264 80048D54 00000000 */   nop
/* F2268 80048D58 0007000D */  break      7
.L80048D5C:
/* F226C 80048D5C 2401FFFF */   addiu     $at, $zero, -1
/* F2270 80048D60 14610004 */  bne        $v1, $at, .L80048D74
/* F2274 80048D64 3C018000 */   lui       $at, 0x8000
/* F2278 80048D68 14410002 */  bne        $v0, $at, .L80048D74
/* F227C 80048D6C 00000000 */   nop
/* F2280 80048D70 0006000D */  break      6
.L80048D74:
/* F2284 80048D74 00001012 */   mflo      $v0
/* F2288 80048D78 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F228C 80048D7C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F2290 80048D80 00021840 */  sll        $v1, $v0, 1
/* F2294 80048D84 00621821 */  addu       $v1, $v1, $v0
/* F2298 80048D88 00031840 */  sll        $v1, $v1, 1
/* F229C 80048D8C 0083202A */  slt        $a0, $a0, $v1
/* F22A0 80048D90 148006AE */  bnez       $a0, .L8004A84C
/* F22A4 80048D94 00001021 */   addu      $v0, $zero, $zero
/* F22A8 80048D98 24020009 */  addiu      $v0, $zero, 9
/* F22AC 80048D9C 08012A12 */  j          .L8004A848
/* F22B0 80048DA0 A6A2001C */   sh        $v0, 0x1c($s5)
.L80048DA4:
/* F22B4 80048DA4 0C026E5D */  jal        func_8009B974
/* F22B8 80048DA8 24040001 */   addiu     $a0, $zero, 1
/* F22BC 80048DAC 0C010FF4 */  jal        func_80043FD0_ED4E0
/* F22C0 80048DB0 00000000 */   nop
/* F22C4 80048DB4 3C01C110 */  lui        $at, 0xc110
/* F22C8 80048DB8 44810000 */  mtc1       $at, $f0
/* F22CC 80048DBC 3C01C090 */  lui        $at, 0xc090
/* F22D0 80048DC0 44811000 */  mtc1       $at, $f2
/* F22D4 80048DC4 3C0141E0 */  lui        $at, 0x41e0
/* F22D8 80048DC8 44812000 */  mtc1       $at, $f4
/* F22DC 80048DCC 3C014170 */  lui        $at, 0x4170
/* F22E0 80048DD0 44813000 */  mtc1       $at, $f6
/* F22E4 80048DD4 3C01C2A0 */  lui        $at, 0xc2a0
/* F22E8 80048DD8 44814000 */  mtc1       $at, $f8
/* F22EC 80048DDC 3C014378 */  lui        $at, 0x4378
/* F22F0 80048DE0 44815000 */  mtc1       $at, $f10
/* F22F4 80048DE4 2402000A */  addiu      $v0, $zero, 0xa
/* F22F8 80048DE8 3C018007 */  lui        $at, %hi(D_8006C078)
/* F22FC 80048DEC AC20C078 */  sw         $zero, %lo(D_8006C078)($at)
/* F2300 80048DF0 3C018007 */  lui        $at, %hi(D_8006C0A0)
/* F2304 80048DF4 A420C0A0 */  sh         $zero, %lo(D_8006C0A0)($at)
/* F2308 80048DF8 3C018007 */  lui        $at, %hi(D_8006C0A2)
/* F230C 80048DFC A420C0A2 */  sh         $zero, %lo(D_8006C0A2)($at)
/* F2310 80048E00 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F2314 80048E04 AC20C0C0 */  sw         $zero, %lo(D_8006C0C0)($at)
/* F2318 80048E08 A6A2001C */  sh         $v0, 0x1c($s5)
/* F231C 80048E0C 3C018007 */  lui        $at, %hi(D_8006C070)
/* F2320 80048E10 E420C070 */  swc1       $f0, %lo(D_8006C070)($at)
/* F2324 80048E14 3C018007 */  lui        $at, %hi(D_8006C074)
/* F2328 80048E18 E422C074 */  swc1       $f2, %lo(D_8006C074)($at)
/* F232C 80048E1C 3C018007 */  lui        $at, %hi(D_8006C07C)
/* F2330 80048E20 E424C07C */  swc1       $f4, %lo(D_8006C07C)($at)
/* F2334 80048E24 3C018007 */  lui        $at, %hi(D_8006C080)
/* F2338 80048E28 E426C080 */  swc1       $f6, %lo(D_8006C080)($at)
/* F233C 80048E2C 3C018007 */  lui        $at, %hi(D_8006C084)
/* F2340 80048E30 E428C084 */  swc1       $f8, %lo(D_8006C084)($at)
/* F2344 80048E34 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F2348 80048E38 E42AC0BC */  swc1       $f10, %lo(D_8006C0BC)($at)
.L80048E3C:
/* F234C 80048E3C 3C028015 */  lui        $v0, %hi(D_8014A080)
/* F2350 80048E40 2442A080 */  addiu      $v0, $v0, %lo(D_8014A080)
/* F2354 80048E44 C4400000 */  lwc1       $f0, ($v0)
/* F2358 80048E48 3C013C23 */  lui        $at, 0x3c23
/* F235C 80048E4C 3421D70A */  ori        $at, $at, 0xd70a
/* F2360 80048E50 44811000 */  mtc1       $at, $f2
/* F2364 80048E54 00000000 */  nop
/* F2368 80048E58 46020001 */  sub.s      $f0, $f0, $f2
/* F236C 80048E5C 24040009 */  addiu      $a0, $zero, 9
/* F2370 80048E60 0C00DFD6 */  jal        func_80037F58_E1468
/* F2374 80048E64 E4400000 */   swc1      $f0, ($v0)
/* F2378 80048E68 00409021 */  addu       $s2, $v0, $zero
/* F237C 80048E6C 8E420008 */  lw         $v0, 8($s2)
/* F2380 80048E70 84420024 */  lh         $v0, 0x24($v0)
/* F2384 80048E74 24100004 */  addiu      $s0, $zero, 4
/* F2388 80048E78 14500009 */  bne        $v0, $s0, .L80048EA0
/* F238C 80048E7C 00000000 */   nop
/* F2390 80048E80 0C026DD5 */  jal        func_8009B754
/* F2394 80048E84 24040053 */   addiu     $a0, $zero, 0x53
/* F2398 80048E88 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* F239C 80048E8C 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* F23A0 80048E90 00402021 */  addu       $a0, $v0, $zero
/* F23A4 80048E94 3C018007 */  lui        $at, %hi(D_800691A0)
/* F23A8 80048E98 0C026E66 */  jal        func_8009B998
/* F23AC 80048E9C AC2491A0 */   sw        $a0, %lo(D_800691A0)($at)
.L80048EA0:
/* F23B0 80048EA0 8E420008 */  lw         $v0, 8($s2)
/* F23B4 80048EA4 8442001E */  lh         $v0, 0x1e($v0)
/* F23B8 80048EA8 14500002 */  bne        $v0, $s0, .L80048EB4
/* F23BC 80048EAC 24020003 */   addiu     $v0, $zero, 3
/* F23C0 80048EB0 A6420072 */  sh         $v0, 0x72($s2)
.L80048EB4:
/* F23C4 80048EB4 8E420008 */  lw         $v0, 8($s2)
/* F23C8 80048EB8 8442001E */  lh         $v0, 0x1e($v0)
/* F23CC 80048EBC 24100005 */  addiu      $s0, $zero, 5
/* F23D0 80048EC0 14500002 */  bne        $v0, $s0, .L80048ECC
/* F23D4 80048EC4 24020002 */   addiu     $v0, $zero, 2
/* F23D8 80048EC8 A6420072 */  sh         $v0, 0x72($s2)
.L80048ECC:
/* F23DC 80048ECC 0C00E032 */  jal        func_800380C8_E15D8
/* F23E0 80048ED0 24040009 */   addiu     $a0, $zero, 9
/* F23E4 80048ED4 8E420008 */  lw         $v0, 8($s2)
/* F23E8 80048ED8 8442001E */  lh         $v0, 0x1e($v0)
/* F23EC 80048EDC 1450006A */  bne        $v0, $s0, .L80049088
/* F23F0 80048EE0 00000000 */   nop
/* F23F4 80048EE4 3C048007 */  lui        $a0, %hi(D_8006C0A2)
/* F23F8 80048EE8 8484C0A2 */  lh         $a0, %lo(D_8006C0A2)($a0)
/* F23FC 80048EEC 28820014 */  slti       $v0, $a0, 0x14
/* F2400 80048EF0 10400015 */  beqz       $v0, .L80048F48
/* F2404 80048EF4 00801021 */   addu      $v0, $a0, $zero
/* F2408 80048EF8 04420001 */  bltzl      $v0, .L80048F00
/* F240C 80048EFC 24420003 */   addiu     $v0, $v0, 3
.L80048F00:
/* F2410 80048F00 00022083 */  sra        $a0, $v0, 2
/* F2414 80048F04 2484005B */  addiu      $a0, $a0, 0x5b
/* F2418 80048F08 0C00D8C1 */  jal        func_80036304_DF814
/* F241C 80048F0C 3084FFFF */   andi      $a0, $a0, 0xffff
/* F2420 80048F10 8C44000C */  lw         $a0, 0xc($v0)
/* F2424 80048F14 0C028A40 */  jal        func_800A2900
/* F2428 80048F18 00000000 */   nop
/* F242C 80048F1C 3C048007 */  lui        $a0, %hi(D_8006C0A2)
/* F2430 80048F20 8484C0A2 */  lh         $a0, %lo(D_8006C0A2)($a0)
/* F2434 80048F24 04820001 */  bltzl      $a0, .L80048F2C
/* F2438 80048F28 24840003 */   addiu     $a0, $a0, 3
.L80048F2C:
/* F243C 80048F2C 00042083 */  sra        $a0, $a0, 2
/* F2440 80048F30 24840060 */  addiu      $a0, $a0, 0x60
/* F2444 80048F34 0C00D8C1 */  jal        func_80036304_DF814
/* F2448 80048F38 3084FFFF */   andi      $a0, $a0, 0xffff
/* F244C 80048F3C 8C44000C */  lw         $a0, 0xc($v0)
/* F2450 80048F40 080123E3 */  j          .L80048F8C
/* F2454 80048F44 00000000 */   nop
.L80048F48:
/* F2458 80048F48 0C00D8C1 */  jal        func_80036304_DF814
/* F245C 80048F4C 24040064 */   addiu     $a0, $zero, 0x64
/* F2460 80048F50 3C038007 */  lui        $v1, %hi(D_8006C0A2)
/* F2464 80048F54 8463C0A2 */  lh         $v1, %lo(D_8006C0A2)($v1)
/* F2468 80048F58 00408021 */  addu       $s0, $v0, $zero
/* F246C 80048F5C 240500FF */  addiu      $a1, $zero, 0xff
/* F2470 80048F60 2402FF80 */  addiu      $v0, $zero, -0x80
/* F2474 80048F64 2463FFEC */  addiu      $v1, $v1, -0x14
/* F2478 80048F68 000318C0 */  sll        $v1, $v1, 3
/* F247C 80048F6C 00431023 */  subu       $v0, $v0, $v1
/* F2480 80048F70 304200FF */  andi       $v0, $v0, 0xff
/* F2484 80048F74 AFA20010 */  sw         $v0, 0x10($sp)
/* F2488 80048F78 8E04000C */  lw         $a0, 0xc($s0)
/* F248C 80048F7C 240600FF */  addiu      $a2, $zero, 0xff
/* F2490 80048F80 0C028E41 */  jal        func_800A3904
/* F2494 80048F84 240700FF */   addiu     $a3, $zero, 0xff
/* F2498 80048F88 8E04000C */  lw         $a0, 0xc($s0)
.L80048F8C:
/* F249C 80048F8C 0C028A40 */  jal        func_800A2900
/* F24A0 80048F90 00000000 */   nop
/* F24A4 80048F94 3C028007 */  lui        $v0, %hi(D_8006C0A2)
/* F24A8 80048F98 8442C0A2 */  lh         $v0, %lo(D_8006C0A2)($v0)
/* F24AC 80048F9C 00401821 */  addu       $v1, $v0, $zero
/* F24B0 80048FA0 28420024 */  slti       $v0, $v0, 0x24
/* F24B4 80048FA4 10400003 */  beqz       $v0, .L80048FB4
/* F24B8 80048FA8 24620001 */   addiu     $v0, $v1, 1
/* F24BC 80048FAC 3C018007 */  lui        $at, %hi(D_8006C0A2)
/* F24C0 80048FB0 A422C0A2 */  sh         $v0, %lo(D_8006C0A2)($at)
.L80048FB4:
/* F24C4 80048FB4 8E430008 */  lw         $v1, 8($s2)
/* F24C8 80048FB8 8470001E */  lh         $s0, 0x1e($v1)
/* F24CC 80048FBC 24020005 */  addiu      $v0, $zero, 5
/* F24D0 80048FC0 16020031 */  bne        $s0, $v0, .L80049088
/* F24D4 80048FC4 24020002 */   addiu     $v0, $zero, 2
/* F24D8 80048FC8 84630022 */  lh         $v1, 0x22($v1)
/* F24DC 80048FCC 14620009 */  bne        $v1, $v0, .L80048FF4
/* F24E0 80048FD0 00000000 */   nop
/* F24E4 80048FD4 0C026DD5 */  jal        func_8009B754
/* F24E8 80048FD8 24040054 */   addiu     $a0, $zero, 0x54
/* F24EC 80048FDC 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* F24F0 80048FE0 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* F24F4 80048FE4 00402021 */  addu       $a0, $v0, $zero
/* F24F8 80048FE8 3C018007 */  lui        $at, %hi(D_800691A0)
/* F24FC 80048FEC 0C026E66 */  jal        func_8009B998
/* F2500 80048FF0 AC2491A0 */   sw        $a0, %lo(D_800691A0)($at)
.L80048FF4:
/* F2504 80048FF4 8E430008 */  lw         $v1, 8($s2)
/* F2508 80048FF8 8462001E */  lh         $v0, 0x1e($v1)
/* F250C 80048FFC 14500022 */  bne        $v0, $s0, .L80049088
/* F2510 80049000 00000000 */   nop
/* F2514 80049004 84620022 */  lh         $v0, 0x22($v1)
/* F2518 80049008 28420002 */  slti       $v0, $v0, 2
/* F251C 8004900C 1040001E */  beqz       $v0, .L80049088
/* F2520 80049010 00000000 */   nop
/* F2524 80049014 3C018007 */  lui        $at, %hi(D_8006C070)
/* F2528 80049018 C428C070 */  lwc1       $f8, %lo(D_8006C070)($at)
/* F252C 8004901C 3C014190 */  lui        $at, 0x4190
/* F2530 80049020 44810000 */  mtc1       $at, $f0
/* F2534 80049024 3C018007 */  lui        $at, %hi(D_8006C074)
/* F2538 80049028 C426C074 */  lwc1       $f6, %lo(D_8006C074)($at)
/* F253C 8004902C 46004201 */  sub.s      $f8, $f8, $f0
/* F2540 80049030 3C014100 */  lui        $at, 0x4100
/* F2544 80049034 44810000 */  mtc1       $at, $f0
/* F2548 80049038 3C018007 */  lui        $at, %hi(D_8006C080)
/* F254C 8004903C C424C080 */  lwc1       $f4, %lo(D_8006C080)($at)
/* F2550 80049040 46003180 */  add.s      $f6, $f6, $f0
/* F2554 80049044 3C013F80 */  lui        $at, 0x3f80
/* F2558 80049048 44810000 */  mtc1       $at, $f0
/* F255C 8004904C 3C018007 */  lui        $at, %hi(D_8006C084)
/* F2560 80049050 C422C084 */  lwc1       $f2, %lo(D_8006C084)($at)
/* F2564 80049054 46002100 */  add.s      $f4, $f4, $f0
/* F2568 80049058 3C014000 */  lui        $at, 0x4000
/* F256C 8004905C 44810000 */  mtc1       $at, $f0
/* F2570 80049060 00000000 */  nop
/* F2574 80049064 46001081 */  sub.s      $f2, $f2, $f0
/* F2578 80049068 3C018007 */  lui        $at, %hi(D_8006C070)
/* F257C 8004906C E428C070 */  swc1       $f8, %lo(D_8006C070)($at)
/* F2580 80049070 3C018007 */  lui        $at, %hi(D_8006C074)
/* F2584 80049074 E426C074 */  swc1       $f6, %lo(D_8006C074)($at)
/* F2588 80049078 3C018007 */  lui        $at, %hi(D_8006C080)
/* F258C 8004907C E424C080 */  swc1       $f4, %lo(D_8006C080)($at)
/* F2590 80049080 3C018007 */  lui        $at, %hi(D_8006C084)
/* F2594 80049084 E422C084 */  swc1       $f2, %lo(D_8006C084)($at)
.L80049088:
/* F2598 80049088 8E420008 */  lw         $v0, 8($s2)
/* F259C 8004908C 8442001E */  lh         $v0, 0x1e($v0)
/* F25A0 80049090 28420006 */  slti       $v0, $v0, 6
/* F25A4 80049094 14400011 */  bnez       $v0, .L800490DC
/* F25A8 80049098 00000000 */   nop
/* F25AC 8004909C 3C018007 */  lui        $at, %hi(D_8006C070)
/* F25B0 800490A0 C424C070 */  lwc1       $f4, %lo(D_8006C070)($at)
/* F25B4 800490A4 3C013E80 */  lui        $at, 0x3e80
/* F25B8 800490A8 44810000 */  mtc1       $at, $f0
/* F25BC 800490AC 3C018007 */  lui        $at, %hi(D_8006C084)
/* F25C0 800490B0 C422C084 */  lwc1       $f2, %lo(D_8006C084)($at)
/* F25C4 800490B4 46002100 */  add.s      $f4, $f4, $f0
/* F25C8 800490B8 3C013CF5 */  lui        $at, 0x3cf5
/* F25CC 800490BC 3421C28F */  ori        $at, $at, 0xc28f
/* F25D0 800490C0 44810000 */  mtc1       $at, $f0
/* F25D4 800490C4 00000000 */  nop
/* F25D8 800490C8 46001080 */  add.s      $f2, $f2, $f0
/* F25DC 800490CC 3C018007 */  lui        $at, %hi(D_8006C070)
/* F25E0 800490D0 E424C070 */  swc1       $f4, %lo(D_8006C070)($at)
/* F25E4 800490D4 3C018007 */  lui        $at, %hi(D_8006C084)
/* F25E8 800490D8 E422C084 */  swc1       $f2, %lo(D_8006C084)($at)
.L800490DC:
/* F25EC 800490DC 8E420008 */  lw         $v0, 8($s2)
/* F25F0 800490E0 8442001E */  lh         $v0, 0x1e($v0)
/* F25F4 800490E4 28420007 */  slti       $v0, $v0, 7
/* F25F8 800490E8 1440003A */  bnez       $v0, .L800491D4
/* F25FC 800490EC 24020026 */   addiu     $v0, $zero, 0x26
/* F2600 800490F0 3C038007 */  lui        $v1, %hi(D_8006C0A0)
/* F2604 800490F4 8463C0A0 */  lh         $v1, %lo(D_8006C0A0)($v1)
/* F2608 800490F8 3C014120 */  lui        $at, 0x4120
/* F260C 800490FC 44810000 */  mtc1       $at, $f0
/* F2610 80049100 44836000 */  mtc1       $v1, $f12
/* F2614 80049104 00000000 */  nop
/* F2618 80049108 46806320 */  cvt.s.w    $f12, $f12
/* F261C 8004910C 46006303 */  div.s      $f12, $f12, $f0
/* F2620 80049110 3C018007 */  lui        $at, %hi(D_8006C084)
/* F2624 80049114 C422C084 */  lwc1       $f2, %lo(D_8006C084)($at)
/* F2628 80049118 3C013CF5 */  lui        $at, 0x3cf5
/* F262C 8004911C 3421C28F */  ori        $at, $at, 0xc28f
/* F2630 80049120 44812000 */  mtc1       $at, $f4
/* F2634 80049124 3C018007 */  lui        $at, %hi(D_8006C070)
/* F2638 80049128 C428C070 */  lwc1       $f8, %lo(D_8006C070)($at)
/* F263C 8004912C 46041080 */  add.s      $f2, $f2, $f4
/* F2640 80049130 3C013D4C */  lui        $at, 0x3d4c
/* F2644 80049134 3421CCCD */  ori        $at, $at, 0xcccd
/* F2648 80049138 44810000 */  mtc1       $at, $f0
/* F264C 8004913C 3C018007 */  lui        $at, %hi(D_8006C074)
/* F2650 80049140 C42AC074 */  lwc1       $f10, %lo(D_8006C074)($at)
/* F2654 80049144 46004200 */  add.s      $f8, $f8, $f0
/* F2658 80049148 3C014000 */  lui        $at, 0x4000
/* F265C 8004914C 44810000 */  mtc1       $at, $f0
/* F2660 80049150 3C018007 */  lui        $at, %hi(D_8006C078)
/* F2664 80049154 C426C078 */  lwc1       $f6, %lo(D_8006C078)($at)
/* F2668 80049158 46005281 */  sub.s      $f10, $f10, $f0
/* F266C 8004915C 3C013F80 */  lui        $at, 0x3f80
/* F2670 80049160 44810000 */  mtc1       $at, $f0
/* F2674 80049164 24630001 */  addiu      $v1, $v1, 1
/* F2678 80049168 3C018007 */  lui        $at, %hi(D_8006C0A0)
/* F267C 8004916C A423C0A0 */  sh         $v1, %lo(D_8006C0A0)($at)
/* F2680 80049170 46003180 */  add.s      $f6, $f6, $f0
/* F2684 80049174 3C018007 */  lui        $at, %hi(D_8006C080)
/* F2688 80049178 C420C080 */  lwc1       $f0, %lo(D_8006C080)($at)
/* F268C 8004917C 00031C00 */  sll        $v1, $v1, 0x10
/* F2690 80049180 00031C03 */  sra        $v1, $v1, 0x10
/* F2694 80049184 3C018007 */  lui        $at, %hi(D_8006C084)
/* F2698 80049188 E422C084 */  swc1       $f2, %lo(D_8006C084)($at)
/* F269C 8004918C 460C0001 */  sub.s      $f0, $f0, $f12
/* F26A0 80049190 3C018007 */  lui        $at, %hi(D_8006C070)
/* F26A4 80049194 E428C070 */  swc1       $f8, %lo(D_8006C070)($at)
/* F26A8 80049198 3C018007 */  lui        $at, %hi(D_8006C074)
/* F26AC 8004919C E42AC074 */  swc1       $f10, %lo(D_8006C074)($at)
/* F26B0 800491A0 3C018007 */  lui        $at, %hi(D_8006C078)
/* F26B4 800491A4 E426C078 */  swc1       $f6, %lo(D_8006C078)($at)
/* F26B8 800491A8 3C018007 */  lui        $at, %hi(D_8006C080)
/* F26BC 800491AC 14620009 */  bne        $v1, $v0, .L800491D4
/* F26C0 800491B0 E420C080 */   swc1      $f0, %lo(D_8006C080)($at)
/* F26C4 800491B4 0C026DD5 */  jal        func_8009B754
/* F26C8 800491B8 2404000D */   addiu     $a0, $zero, 0xd
/* F26CC 800491BC 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* F26D0 800491C0 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* F26D4 800491C4 00402021 */  addu       $a0, $v0, $zero
/* F26D8 800491C8 3C018007 */  lui        $at, %hi(D_800691A0)
/* F26DC 800491CC 0C026E66 */  jal        func_8009B998
/* F26E0 800491D0 AC2491A0 */   sw        $a0, %lo(D_800691A0)($at)
.L800491D4:
/* F26E4 800491D4 0C00DFD6 */  jal        func_80037F58_E1468
/* F26E8 800491D8 2404000A */   addiu     $a0, $zero, 0xa
/* F26EC 800491DC 00409021 */  addu       $s2, $v0, $zero
/* F26F0 800491E0 3C013CA3 */  lui        $at, 0x3ca3
/* F26F4 800491E4 3421D70A */  ori        $at, $at, 0xd70a
/* F26F8 800491E8 4481B000 */  mtc1       $at, $f22
/* F26FC 800491EC 3C013C23 */  lui        $at, 0x3c23
/* F2700 800491F0 3421D70A */  ori        $at, $at, 0xd70a
/* F2704 800491F4 4481A000 */  mtc1       $at, $f20
/* F2708 800491F8 3C018007 */  lui        $at, %hi(D_8006C070)
/* F270C 800491FC C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F2710 80049200 3C018007 */  lui        $at, %hi(D_8006C074)
/* F2714 80049204 C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F2718 80049208 3C018007 */  lui        $at, %hi(D_8006C078)
/* F271C 8004920C C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F2720 80049210 3C018007 */  lui        $at, %hi(D_8006C07C)
/* F2724 80049214 C426C07C */  lwc1       $f6, %lo(D_8006C07C)($at)
/* F2728 80049218 3C018007 */  lui        $at, %hi(D_8006C080)
/* F272C 8004921C C428C080 */  lwc1       $f8, %lo(D_8006C080)($at)
/* F2730 80049220 3C018007 */  lui        $at, %hi(D_8006C084)
/* F2734 80049224 C42AC084 */  lwc1       $f10, %lo(D_8006C084)($at)
/* F2738 80049228 2404000A */  addiu      $a0, $zero, 0xa
/* F273C 8004922C 24110001 */  addiu      $s1, $zero, 1
/* F2740 80049230 E640001C */  swc1       $f0, 0x1c($s2)
/* F2744 80049234 E6420020 */  swc1       $f2, 0x20($s2)
/* F2748 80049238 E6440024 */  swc1       $f4, 0x24($s2)
/* F274C 8004923C E6460010 */  swc1       $f6, 0x10($s2)
/* F2750 80049240 E6480014 */  swc1       $f8, 0x14($s2)
/* F2754 80049244 0C00E032 */  jal        func_800380C8_E15D8
/* F2758 80049248 E64A0018 */   swc1      $f10, 0x18($s2)
/* F275C 8004924C 2624000A */  addiu      $a0, $s1, 0xa
.L80049250:
/* F2760 80049250 0C00DFD6 */  jal        func_80037F58_E1468
/* F2764 80049254 3084FFFF */   andi      $a0, $a0, 0xffff
/* F2768 80049258 00409021 */  addu       $s2, $v0, $zero
/* F276C 8004925C 3222FFFF */  andi       $v0, $s1, 0xffff
/* F2770 80049260 2C420004 */  sltiu      $v0, $v0, 4
/* F2774 80049264 10400004 */  beqz       $v0, .L80049278
/* F2778 80049268 00000000 */   nop
/* F277C 8004926C C6400018 */  lwc1       $f0, 0x18($s2)
/* F2780 80049270 080124A0 */  j          .L80049280
/* F2784 80049274 46160000 */   add.s     $f0, $f0, $f22
.L80049278:
/* F2788 80049278 C6400018 */  lwc1       $f0, 0x18($s2)
/* F278C 8004927C 46140001 */  sub.s      $f0, $f0, $f20
.L80049280:
/* F2790 80049280 E6400018 */  swc1       $f0, 0x18($s2)
/* F2794 80049284 2624000A */  addiu      $a0, $s1, 0xa
/* F2798 80049288 0C00E032 */  jal        func_800380C8_E15D8
/* F279C 8004928C 3084FFFF */   andi      $a0, $a0, 0xffff
/* F27A0 80049290 26310001 */  addiu      $s1, $s1, 1
/* F27A4 80049294 3222FFFF */  andi       $v0, $s1, 0xffff
/* F27A8 80049298 2C420008 */  sltiu      $v0, $v0, 8
/* F27AC 8004929C 5440FFEC */  bnezl      $v0, .L80049250
/* F27B0 800492A0 2624000A */   addiu     $a0, $s1, 0xa
/* F27B4 800492A4 0C00D8C1 */  jal        func_80036304_DF814
/* F27B8 800492A8 24040022 */   addiu     $a0, $zero, 0x22
/* F27BC 800492AC 8C44000C */  lw         $a0, 0xc($v0)
/* F27C0 800492B0 0C028A40 */  jal        func_800A2900
/* F27C4 800492B4 00000000 */   nop
/* F27C8 800492B8 0C00D8C1 */  jal        func_80036304_DF814
/* F27CC 800492BC 24040023 */   addiu     $a0, $zero, 0x23
/* F27D0 800492C0 8C44000C */  lw         $a0, 0xc($v0)
/* F27D4 800492C4 0C028A40 */  jal        func_800A2900
/* F27D8 800492C8 00000000 */   nop
/* F27DC 800492CC 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F27E0 800492D0 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F27E4 800492D4 2402003C */  addiu      $v0, $zero, 0x3c
/* F27E8 800492D8 0043001A */  div        $zero, $v0, $v1
/* F27EC 800492DC 14600002 */  bnez       $v1, .L800492E8
/* F27F0 800492E0 00000000 */   nop
/* F27F4 800492E4 0007000D */  break      7
.L800492E8:
/* F27F8 800492E8 2401FFFF */   addiu     $at, $zero, -1
/* F27FC 800492EC 14610004 */  bne        $v1, $at, .L80049300
/* F2800 800492F0 3C018000 */   lui       $at, 0x8000
/* F2804 800492F4 14410002 */  bne        $v0, $at, .L80049300
/* F2808 800492F8 00000000 */   nop
/* F280C 800492FC 0006000D */  break      6
.L80049300:
/* F2810 80049300 00001012 */   mflo      $v0
/* F2814 80049304 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F2818 80049308 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F281C 8004930C 00021040 */  sll        $v0, $v0, 1
/* F2820 80049310 0043102A */  slt        $v0, $v0, $v1
/* F2824 80049314 14400014 */  bnez       $v0, .L80049368
/* F2828 80049318 00000000 */   nop
/* F282C 8004931C 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F2830 80049320 C424C0BC */  lwc1       $f4, %lo(D_8006C0BC)($at)
/* F2834 80049324 44800000 */  mtc1       $zero, $f0
/* F2838 80049328 00000000 */  nop
/* F283C 8004932C 4604003C */  c.lt.s     $f0, $f4
/* F2840 80049330 00000000 */  nop
/* F2844 80049334 4500000C */  bc1f       .L80049368
/* F2848 80049338 00000000 */   nop
/* F284C 8004933C 3C014100 */  lui        $at, 0x4100
/* F2850 80049340 44810000 */  mtc1       $at, $f0
/* F2854 80049344 00000000 */  nop
/* F2858 80049348 46002101 */  sub.s      $f4, $f4, $f0
/* F285C 8004934C 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F2860 80049350 C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F2864 80049354 46001080 */  add.s      $f2, $f2, $f0
/* F2868 80049358 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F286C 8004935C E424C0BC */  swc1       $f4, %lo(D_8006C0BC)($at)
/* F2870 80049360 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F2874 80049364 E422C0C0 */  swc1       $f2, %lo(D_8006C0C0)($at)
.L80049368:
/* F2878 80049368 0C00D8C1 */  jal        func_80036304_DF814
/* F287C 8004936C 240420CA */   addiu     $a0, $zero, 0x20ca
/* F2880 80049370 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F2884 80049374 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F2888 80049378 3C014F00 */  lui        $at, 0x4f00
/* F288C 8004937C 44810000 */  mtc1       $at, $f0
/* F2890 80049380 00000000 */  nop
/* F2894 80049384 4602003E */  c.le.s     $f0, $f2
/* F2898 80049388 00000000 */  nop
/* F289C 8004938C 00000000 */  nop
/* F28A0 80049390 45010006 */  bc1t       .L800493AC
/* F28A4 80049394 00408021 */   addu      $s0, $v0, $zero
/* F28A8 80049398 4600100D */  trunc.w.s  $f0, $f2
/* F28AC 8004939C 44030000 */  mfc1       $v1, $f0
/* F28B0 800493A0 00000000 */  nop
/* F28B4 800493A4 080124F1 */  j          .L800493C4
/* F28B8 800493A8 306200FF */   andi      $v0, $v1, 0xff
.L800493AC:
/* F28BC 800493AC 46001001 */  sub.s      $f0, $f2, $f0
/* F28C0 800493B0 4600008D */  trunc.w.s  $f2, $f0
/* F28C4 800493B4 44031000 */  mfc1       $v1, $f2
/* F28C8 800493B8 3C028000 */  lui        $v0, 0x8000
/* F28CC 800493BC 00621825 */  or         $v1, $v1, $v0
/* F28D0 800493C0 306200FF */  andi       $v0, $v1, 0xff
.L800493C4:
/* F28D4 800493C4 AFA20010 */  sw         $v0, 0x10($sp)
/* F28D8 800493C8 8E04000C */  lw         $a0, 0xc($s0)
/* F28DC 800493CC 240500FF */  addiu      $a1, $zero, 0xff
/* F28E0 800493D0 240600FF */  addiu      $a2, $zero, 0xff
/* F28E4 800493D4 0C028E41 */  jal        func_800A3904
/* F28E8 800493D8 240700FF */   addiu     $a3, $zero, 0xff
/* F28EC 800493DC 8E04000C */  lw         $a0, 0xc($s0)
/* F28F0 800493E0 0C028A40 */  jal        func_800A2900
/* F28F4 800493E4 00000000 */   nop
/* F28F8 800493E8 0C00D8C1 */  jal        func_80036304_DF814
/* F28FC 800493EC 240420D4 */   addiu     $a0, $zero, 0x20d4
/* F2900 800493F0 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F2904 800493F4 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F2908 800493F8 3C013F4C */  lui        $at, 0x3f4c
/* F290C 800493FC 3421CCCD */  ori        $at, $at, 0xcccd
/* F2910 80049400 44810000 */  mtc1       $at, $f0
/* F2914 80049404 00000000 */  nop
/* F2918 80049408 46001082 */  mul.s      $f2, $f2, $f0
/* F291C 8004940C 3C014F00 */  lui        $at, 0x4f00
/* F2920 80049410 44810000 */  mtc1       $at, $f0
/* F2924 80049414 00000000 */  nop
/* F2928 80049418 4602003E */  c.le.s     $f0, $f2
/* F292C 8004941C 00000000 */  nop
/* F2930 80049420 00000000 */  nop
/* F2934 80049424 45010006 */  bc1t       .L80049440
/* F2938 80049428 00408021 */   addu      $s0, $v0, $zero
/* F293C 8004942C 4600100D */  trunc.w.s  $f0, $f2
/* F2940 80049430 44030000 */  mfc1       $v1, $f0
/* F2944 80049434 00000000 */  nop
/* F2948 80049438 08012516 */  j          .L80049458
/* F294C 8004943C 306200FF */   andi      $v0, $v1, 0xff
.L80049440:
/* F2950 80049440 46001001 */  sub.s      $f0, $f2, $f0
/* F2954 80049444 4600008D */  trunc.w.s  $f2, $f0
/* F2958 80049448 44031000 */  mfc1       $v1, $f2
/* F295C 8004944C 3C028000 */  lui        $v0, 0x8000
/* F2960 80049450 00621825 */  or         $v1, $v1, $v0
/* F2964 80049454 306200FF */  andi       $v0, $v1, 0xff
.L80049458:
/* F2968 80049458 AFA20010 */  sw         $v0, 0x10($sp)
/* F296C 8004945C 8E04000C */  lw         $a0, 0xc($s0)
/* F2970 80049460 240500FF */  addiu      $a1, $zero, 0xff
/* F2974 80049464 240600FF */  addiu      $a2, $zero, 0xff
/* F2978 80049468 0C028E41 */  jal        func_800A3904
/* F297C 8004946C 240700FF */   addiu     $a3, $zero, 0xff
/* F2980 80049470 8E04000C */  lw         $a0, 0xc($s0)
/* F2984 80049474 0C028A40 */  jal        func_800A2900
/* F2988 80049478 00000000 */   nop
/* F298C 8004947C 0C00D8C1 */  jal        func_80036304_DF814
/* F2990 80049480 240420CB */   addiu     $a0, $zero, 0x20cb
/* F2994 80049484 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F2998 80049488 C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F299C 8004948C 3C014F00 */  lui        $at, 0x4f00
/* F29A0 80049490 44810000 */  mtc1       $at, $f0
/* F29A4 80049494 00000000 */  nop
/* F29A8 80049498 4602003E */  c.le.s     $f0, $f2
/* F29AC 8004949C 00000000 */  nop
/* F29B0 800494A0 00000000 */  nop
/* F29B4 800494A4 45010006 */  bc1t       .L800494C0
/* F29B8 800494A8 00408021 */   addu      $s0, $v0, $zero
/* F29BC 800494AC 4600100D */  trunc.w.s  $f0, $f2
/* F29C0 800494B0 44030000 */  mfc1       $v1, $f0
/* F29C4 800494B4 00000000 */  nop
/* F29C8 800494B8 08012536 */  j          .L800494D8
/* F29CC 800494BC 306200FF */   andi      $v0, $v1, 0xff
.L800494C0:
/* F29D0 800494C0 46001001 */  sub.s      $f0, $f2, $f0
/* F29D4 800494C4 4600008D */  trunc.w.s  $f2, $f0
/* F29D8 800494C8 44031000 */  mfc1       $v1, $f2
/* F29DC 800494CC 3C028000 */  lui        $v0, 0x8000
/* F29E0 800494D0 00621825 */  or         $v1, $v1, $v0
/* F29E4 800494D4 306200FF */  andi       $v0, $v1, 0xff
.L800494D8:
/* F29E8 800494D8 AFA20010 */  sw         $v0, 0x10($sp)
/* F29EC 800494DC 8E04000C */  lw         $a0, 0xc($s0)
/* F29F0 800494E0 240500FF */  addiu      $a1, $zero, 0xff
/* F29F4 800494E4 240600FF */  addiu      $a2, $zero, 0xff
/* F29F8 800494E8 0C028E41 */  jal        func_800A3904
/* F29FC 800494EC 240700FF */   addiu     $a3, $zero, 0xff
/* F2A00 800494F0 8E04000C */  lw         $a0, 0xc($s0)
/* F2A04 800494F4 0C028A40 */  jal        func_800A2900
/* F2A08 800494F8 00000000 */   nop
/* F2A0C 800494FC 0C00D8C1 */  jal        func_80036304_DF814
/* F2A10 80049500 240420D5 */   addiu     $a0, $zero, 0x20d5
/* F2A14 80049504 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F2A18 80049508 C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F2A1C 8004950C 3C013F4C */  lui        $at, 0x3f4c
/* F2A20 80049510 3421CCCD */  ori        $at, $at, 0xcccd
/* F2A24 80049514 44810000 */  mtc1       $at, $f0
/* F2A28 80049518 00000000 */  nop
/* F2A2C 8004951C 46001082 */  mul.s      $f2, $f2, $f0
/* F2A30 80049520 3C014F00 */  lui        $at, 0x4f00
/* F2A34 80049524 44810000 */  mtc1       $at, $f0
/* F2A38 80049528 00000000 */  nop
/* F2A3C 8004952C 4602003E */  c.le.s     $f0, $f2
/* F2A40 80049530 00000000 */  nop
/* F2A44 80049534 00000000 */  nop
/* F2A48 80049538 45010006 */  bc1t       .L80049554
/* F2A4C 8004953C 00408021 */   addu      $s0, $v0, $zero
/* F2A50 80049540 4600100D */  trunc.w.s  $f0, $f2
/* F2A54 80049544 44030000 */  mfc1       $v1, $f0
/* F2A58 80049548 00000000 */  nop
/* F2A5C 8004954C 0801255B */  j          .L8004956C
/* F2A60 80049550 306200FF */   andi      $v0, $v1, 0xff
.L80049554:
/* F2A64 80049554 46001001 */  sub.s      $f0, $f2, $f0
/* F2A68 80049558 4600008D */  trunc.w.s  $f2, $f0
/* F2A6C 8004955C 44031000 */  mfc1       $v1, $f2
/* F2A70 80049560 3C028000 */  lui        $v0, 0x8000
/* F2A74 80049564 00621825 */  or         $v1, $v1, $v0
/* F2A78 80049568 306200FF */  andi       $v0, $v1, 0xff
.L8004956C:
/* F2A7C 8004956C AFA20010 */  sw         $v0, 0x10($sp)
/* F2A80 80049570 8E04000C */  lw         $a0, 0xc($s0)
/* F2A84 80049574 240500FF */  addiu      $a1, $zero, 0xff
/* F2A88 80049578 240600FF */  addiu      $a2, $zero, 0xff
/* F2A8C 8004957C 0C028E41 */  jal        func_800A3904
/* F2A90 80049580 240700FF */   addiu     $a3, $zero, 0xff
/* F2A94 80049584 8E04000C */  lw         $a0, 0xc($s0)
/* F2A98 80049588 0C028A40 */  jal        func_800A2900
/* F2A9C 8004958C 00000000 */   nop
/* F2AA0 80049590 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F2AA4 80049594 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F2AA8 80049598 2402003C */  addiu      $v0, $zero, 0x3c
/* F2AAC 8004959C 0043001A */  div        $zero, $v0, $v1
/* F2AB0 800495A0 14600002 */  bnez       $v1, .L800495AC
/* F2AB4 800495A4 00000000 */   nop
/* F2AB8 800495A8 0007000D */  break      7
.L800495AC:
/* F2ABC 800495AC 2401FFFF */   addiu     $at, $zero, -1
/* F2AC0 800495B0 14610004 */  bne        $v1, $at, .L800495C4
/* F2AC4 800495B4 3C018000 */   lui       $at, 0x8000
/* F2AC8 800495B8 14410002 */  bne        $v0, $at, .L800495C4
/* F2ACC 800495BC 00000000 */   nop
/* F2AD0 800495C0 0006000D */  break      6
.L800495C4:
/* F2AD4 800495C4 00001012 */   mflo      $v0
/* F2AD8 800495C8 3C018007 */  lui        $at, %hi(D_8006A148)
/* F2ADC 800495CC D422A148 */  ldc1       $f2, %lo(D_8006A148)($at)
/* F2AE0 800495D0 44820000 */  mtc1       $v0, $f0
/* F2AE4 800495D4 00000000 */  nop
/* F2AE8 800495D8 46800021 */  cvt.d.w    $f0, $f0
/* F2AEC 800495DC 46220002 */  mul.d      $f0, $f0, $f2
/* F2AF0 800495E0 3C018007 */  lui        $at, %hi(D_8006C564)
/* F2AF4 800495E4 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F2AF8 800495E8 468010A1 */  cvt.d.w    $f2, $f2
/* F2AFC 800495EC 4622003E */  c.le.d     $f0, $f2
/* F2B00 800495F0 00000000 */  nop
/* F2B04 800495F4 00000000 */  nop
/* F2B08 800495F8 45000493 */  bc1f       .L8004A848
/* F2B0C 800495FC 2402000B */   addiu     $v0, $zero, 0xb
/* F2B10 80049600 08012A12 */  j          .L8004A848
/* F2B14 80049604 A6A2001C */   sh        $v0, 0x1c($s5)
.L80049608:
/* F2B18 80049608 0C026E5D */  jal        func_8009B974
/* F2B1C 8004960C 24040001 */   addiu     $a0, $zero, 1
/* F2B20 80049610 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F2B24 80049614 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F2B28 80049618 14400006 */  bnez       $v0, .L80049634
/* F2B2C 8004961C 28420002 */   slti      $v0, $v0, 2
/* F2B30 80049620 0C011169 */  jal        func_800445A4_EDAB4
/* F2B34 80049624 00000000 */   nop
/* F2B38 80049628 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F2B3C 8004962C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F2B40 80049630 28420002 */  slti       $v0, $v0, 2
.L80049634:
/* F2B44 80049634 14400485 */  bnez       $v0, .L8004A84C
/* F2B48 80049638 00001021 */   addu      $v0, $zero, $zero
/* F2B4C 8004963C 0C02A5AF */  jal        func_800A96BC
/* F2B50 80049640 24040001 */   addiu     $a0, $zero, 1
/* F2B54 80049644 0C026DD5 */  jal        func_8009B754
/* F2B58 80049648 24040038 */   addiu     $a0, $zero, 0x38
/* F2B5C 8004964C 00402021 */  addu       $a0, $v0, $zero
/* F2B60 80049650 3C018007 */  lui        $at, %hi(D_800691A0)
/* F2B64 80049654 AC2491A0 */  sw         $a0, %lo(D_800691A0)($at)
/* F2B68 80049658 0C026E66 */  jal        func_8009B998
/* F2B6C 8004965C 24050060 */   addiu     $a1, $zero, 0x60
/* F2B70 80049660 2402000C */  addiu      $v0, $zero, 0xc
/* F2B74 80049664 08012A12 */  j          .L8004A848
/* F2B78 80049668 A6A2001C */   sh        $v0, 0x1c($s5)
.L8004966C:
/* F2B7C 8004966C 0C00E032 */  jal        func_800380C8_E15D8
/* F2B80 80049670 24040001 */   addiu     $a0, $zero, 1
/* F2B84 80049674 0C00E032 */  jal        func_800380C8_E15D8
/* F2B88 80049678 24040003 */   addiu     $a0, $zero, 3
/* F2B8C 8004967C 0C00E032 */  jal        func_800380C8_E15D8
/* F2B90 80049680 24040004 */   addiu     $a0, $zero, 4
/* F2B94 80049684 0C00DFD6 */  jal        func_80037F58_E1468
/* F2B98 80049688 24040005 */   addiu     $a0, $zero, 5
/* F2B9C 8004968C 00409021 */  addu       $s2, $v0, $zero
/* F2BA0 80049690 24040010 */  addiu      $a0, $zero, 0x10
/* F2BA4 80049694 241000FF */  addiu      $s0, $zero, 0xff
/* F2BA8 80049698 A6500074 */  sh         $s0, 0x74($s2)
/* F2BAC 8004969C A6500076 */  sh         $s0, 0x76($s2)
/* F2BB0 800496A0 0C02591A */  jal        func_80096468
/* F2BB4 800496A4 A6500078 */   sh        $s0, 0x78($s2)
/* F2BB8 800496A8 24040005 */  addiu      $a0, $zero, 5
/* F2BBC 800496AC 24420080 */  addiu      $v0, $v0, 0x80
/* F2BC0 800496B0 0C00E032 */  jal        func_800380C8_E15D8
/* F2BC4 800496B4 A642007A */   sh        $v0, 0x7a($s2)
/* F2BC8 800496B8 0C00DFD6 */  jal        func_80037F58_E1468
/* F2BCC 800496BC 24040006 */   addiu     $a0, $zero, 6
/* F2BD0 800496C0 00409021 */  addu       $s2, $v0, $zero
/* F2BD4 800496C4 24040018 */  addiu      $a0, $zero, 0x18
/* F2BD8 800496C8 A6500074 */  sh         $s0, 0x74($s2)
/* F2BDC 800496CC A6500076 */  sh         $s0, 0x76($s2)
/* F2BE0 800496D0 0C02591A */  jal        func_80096468
/* F2BE4 800496D4 A6500078 */   sh        $s0, 0x78($s2)
/* F2BE8 800496D8 24040006 */  addiu      $a0, $zero, 6
/* F2BEC 800496DC 24420060 */  addiu      $v0, $v0, 0x60
/* F2BF0 800496E0 0C00E032 */  jal        func_800380C8_E15D8
/* F2BF4 800496E4 A642007A */   sh        $v0, 0x7a($s2)
/* F2BF8 800496E8 0C00DFD6 */  jal        func_80037F58_E1468
/* F2BFC 800496EC 24040007 */   addiu     $a0, $zero, 7
/* F2C00 800496F0 00409021 */  addu       $s2, $v0, $zero
/* F2C04 800496F4 24040010 */  addiu      $a0, $zero, 0x10
/* F2C08 800496F8 240200A0 */  addiu      $v0, $zero, 0xa0
/* F2C0C 800496FC A6420074 */  sh         $v0, 0x74($s2)
/* F2C10 80049700 A6500076 */  sh         $s0, 0x76($s2)
/* F2C14 80049704 0C02591A */  jal        func_80096468
/* F2C18 80049708 A6420078 */   sh        $v0, 0x78($s2)
/* F2C1C 8004970C 24040007 */  addiu      $a0, $zero, 7
/* F2C20 80049710 24420080 */  addiu      $v0, $v0, 0x80
/* F2C24 80049714 0C00E032 */  jal        func_800380C8_E15D8
/* F2C28 80049718 A642007A */   sh        $v0, 0x7a($s2)
/* F2C2C 8004971C 0C00D8C1 */  jal        func_80036304_DF814
/* F2C30 80049720 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F2C34 80049724 8C44000C */  lw         $a0, 0xc($v0)
/* F2C38 80049728 0C028A40 */  jal        func_800A2900
/* F2C3C 8004972C 00000000 */   nop
/* F2C40 80049730 0C00D8C1 */  jal        func_80036304_DF814
/* F2C44 80049734 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F2C48 80049738 8C44000C */  lw         $a0, 0xc($v0)
/* F2C4C 8004973C 0C028A40 */  jal        func_800A2900
/* F2C50 80049740 00000000 */   nop
/* F2C54 80049744 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F2C58 80049748 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F2C5C 8004974C 2403003C */  addiu      $v1, $zero, 0x3c
/* F2C60 80049750 0062001A */  div        $zero, $v1, $v0
/* F2C64 80049754 14400002 */  bnez       $v0, .L80049760
/* F2C68 80049758 00000000 */   nop
/* F2C6C 8004975C 0007000D */  break      7
.L80049760:
/* F2C70 80049760 2401FFFF */   addiu     $at, $zero, -1
/* F2C74 80049764 14410004 */  bne        $v0, $at, .L80049778
/* F2C78 80049768 3C018000 */   lui       $at, 0x8000
/* F2C7C 8004976C 14610002 */  bne        $v1, $at, .L80049778
/* F2C80 80049770 00000000 */   nop
/* F2C84 80049774 0006000D */  break      6
.L80049778:
/* F2C88 80049778 00001812 */   mflo      $v1
/* F2C8C 8004977C 3C013C75 */  lui        $at, 0x3c75
/* F2C90 80049780 3421C28F */  ori        $at, $at, 0xc28f
/* F2C94 80049784 44810000 */  mtc1       $at, $f0
/* F2C98 80049788 3C028015 */  lui        $v0, %hi(D_8014A068)
/* F2C9C 8004978C 2442A068 */  addiu      $v0, $v0, %lo(D_8014A068)
/* F2CA0 80049790 C4440000 */  lwc1       $f4, ($v0)
/* F2CA4 80049794 3C018015 */  lui        $at, %hi(D_8014A088)
/* F2CA8 80049798 C422A088 */  lwc1       $f2, %lo(D_8014A088)($at)
/* F2CAC 8004979C 46002101 */  sub.s      $f4, $f4, $f0
/* F2CB0 800497A0 3C013CF5 */  lui        $at, 0x3cf5
/* F2CB4 800497A4 3421C28F */  ori        $at, $at, 0xc28f
/* F2CB8 800497A8 44810000 */  mtc1       $at, $f0
/* F2CBC 800497AC 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F2CC0 800497B0 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F2CC4 800497B4 46001080 */  add.s      $f2, $f2, $f0
/* F2CC8 800497B8 E4440000 */  swc1       $f4, ($v0)
/* F2CCC 800497BC 3C018015 */  lui        $at, %hi(D_8014A088)
/* F2CD0 800497C0 E422A088 */  swc1       $f2, %lo(D_8014A088)($at)
/* F2CD4 800497C4 00031080 */  sll        $v0, $v1, 2
/* F2CD8 800497C8 00431021 */  addu       $v0, $v0, $v1
/* F2CDC 800497CC 00021040 */  sll        $v0, $v0, 1
/* F2CE0 800497D0 1482041E */  bne        $a0, $v0, .L8004A84C
/* F2CE4 800497D4 00001021 */   addu      $v0, $zero, $zero
/* F2CE8 800497D8 2402000D */  addiu      $v0, $zero, 0xd
/* F2CEC 800497DC 08012A12 */  j          .L8004A848
/* F2CF0 800497E0 A6A2001C */   sh        $v0, 0x1c($s5)
.L800497E4:
/* F2CF4 800497E4 0C011254 */  jal        func_80044950_EDE60
/* F2CF8 800497E8 00000000 */   nop
/* F2CFC 800497EC 0C02A5AF */  jal        func_800A96BC
/* F2D00 800497F0 24040001 */   addiu     $a0, $zero, 1
/* F2D04 800497F4 3C01437F */  lui        $at, 0x437f
/* F2D08 800497F8 44810000 */  mtc1       $at, $f0
/* F2D0C 800497FC 2403000E */  addiu      $v1, $zero, 0xe
/* F2D10 80049800 3C018007 */  lui        $at, %hi(D_8006C0A0)
/* F2D14 80049804 A420C0A0 */  sh         $zero, %lo(D_8006C0A0)($at)
/* F2D18 80049808 A6A3001C */  sh         $v1, 0x1c($s5)
/* F2D1C 8004980C 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F2D20 80049810 E420C0BC */  swc1       $f0, %lo(D_8006C0BC)($at)
/* F2D24 80049814 08012A13 */  j          .L8004A84C
/* F2D28 80049818 00001021 */   addu      $v0, $zero, $zero
.L8004981C:
/* F2D2C 8004981C 0C00D8C1 */  jal        func_80036304_DF814
/* F2D30 80049820 2404003F */   addiu     $a0, $zero, 0x3f
/* F2D34 80049824 8C44000C */  lw         $a0, 0xc($v0)
/* F2D38 80049828 0C028A40 */  jal        func_800A2900
/* F2D3C 8004982C 2410003C */   addiu     $s0, $zero, 0x3c
/* F2D40 80049830 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F2D44 80049834 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F2D48 80049838 0202001A */  div        $zero, $s0, $v0
/* F2D4C 8004983C 14400002 */  bnez       $v0, .L80049848
/* F2D50 80049840 00000000 */   nop
/* F2D54 80049844 0007000D */  break      7
.L80049848:
/* F2D58 80049848 2401FFFF */   addiu     $at, $zero, -1
/* F2D5C 8004984C 14410004 */  bne        $v0, $at, .L80049860
/* F2D60 80049850 3C018000 */   lui       $at, 0x8000
/* F2D64 80049854 16010002 */  bne        $s0, $at, .L80049860
/* F2D68 80049858 00000000 */   nop
/* F2D6C 8004985C 0006000D */  break      6
.L80049860:
/* F2D70 80049860 00001012 */   mflo      $v0
/* F2D74 80049864 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F2D78 80049868 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F2D7C 8004986C 14620003 */  bne        $v1, $v0, .L8004987C
/* F2D80 80049870 00000000 */   nop
/* F2D84 80049874 0C026DD5 */  jal        func_8009B754
/* F2D88 80049878 240400E9 */   addiu     $a0, $zero, 0xe9
.L8004987C:
/* F2D8C 8004987C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F2D90 80049880 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F2D94 80049884 0203001A */  div        $zero, $s0, $v1
/* F2D98 80049888 14600002 */  bnez       $v1, .L80049894
/* F2D9C 8004988C 00000000 */   nop
/* F2DA0 80049890 0007000D */  break      7
.L80049894:
/* F2DA4 80049894 2401FFFF */   addiu     $at, $zero, -1
/* F2DA8 80049898 14610004 */  bne        $v1, $at, .L800498AC
/* F2DAC 8004989C 3C018000 */   lui       $at, 0x8000
/* F2DB0 800498A0 16010002 */  bne        $s0, $at, .L800498AC
/* F2DB4 800498A4 00000000 */   nop
/* F2DB8 800498A8 0006000D */  break      6
.L800498AC:
/* F2DBC 800498AC 00001812 */   mflo      $v1
/* F2DC0 800498B0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F2DC4 800498B4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F2DC8 800498B8 0043102A */  slt        $v0, $v0, $v1
/* F2DCC 800498BC 1440002E */  bnez       $v0, .L80049978
/* F2DD0 800498C0 00000000 */   nop
/* F2DD4 800498C4 0C00D8C1 */  jal        func_80036304_DF814
/* F2DD8 800498C8 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F2DDC 800498CC 8C44000C */  lw         $a0, 0xc($v0)
/* F2DE0 800498D0 0C028A40 */  jal        func_800A2900
/* F2DE4 800498D4 00000000 */   nop
/* F2DE8 800498D8 0C00D8C1 */  jal        func_80036304_DF814
/* F2DEC 800498DC 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F2DF0 800498E0 8C44000C */  lw         $a0, 0xc($v0)
/* F2DF4 800498E4 0C028A40 */  jal        func_800A2900
/* F2DF8 800498E8 00000000 */   nop
/* F2DFC 800498EC 3C028007 */  lui        $v0, %hi(D_8006C0A0)
/* F2E00 800498F0 8442C0A0 */  lh         $v0, %lo(D_8006C0A0)($v0)
/* F2E04 800498F4 04410002 */  bgez       $v0, .L80049900
/* F2E08 800498F8 00402021 */   addu      $a0, $v0, $zero
/* F2E0C 800498FC 24420003 */  addiu      $v0, $v0, 3
.L80049900:
/* F2E10 80049900 00021083 */  sra        $v0, $v0, 2
/* F2E14 80049904 27A500E0 */  addiu      $a1, $sp, 0xe0
/* F2E18 80049908 00A21021 */  addu       $v0, $a1, $v0
/* F2E1C 8004990C 90430000 */  lbu        $v1, ($v0)
/* F2E20 80049910 24020009 */  addiu      $v0, $zero, 9
/* F2E24 80049914 10620004 */  beq        $v1, $v0, .L80049928
/* F2E28 80049918 00000000 */   nop
/* F2E2C 8004991C 24820001 */  addiu      $v0, $a0, 1
/* F2E30 80049920 3C018007 */  lui        $at, %hi(D_8006C0A0)
/* F2E34 80049924 A422C0A0 */  sh         $v0, %lo(D_8006C0A0)($at)
.L80049928:
/* F2E38 80049928 3C038007 */  lui        $v1, %hi(D_8006C0A0)
/* F2E3C 8004992C 8463C0A0 */  lh         $v1, %lo(D_8006C0A0)($v1)
/* F2E40 80049930 04610002 */  bgez       $v1, .L8004993C
/* F2E44 80049934 00601021 */   addu      $v0, $v1, $zero
/* F2E48 80049938 24620003 */  addiu      $v0, $v1, 3
.L8004993C:
/* F2E4C 8004993C 00021083 */  sra        $v0, $v0, 2
/* F2E50 80049940 00A21021 */  addu       $v0, $a1, $v0
/* F2E54 80049944 90440000 */  lbu        $a0, ($v0)
/* F2E58 80049948 308200FF */  andi       $v0, $a0, 0xff
/* F2E5C 8004994C 0002282B */  sltu       $a1, $zero, $v0
/* F2E60 80049950 38420009 */  xori       $v0, $v0, 9
/* F2E64 80049954 0002102B */  sltu       $v0, $zero, $v0
/* F2E68 80049958 00A21024 */  and        $v0, $a1, $v0
/* F2E6C 8004995C 10400006 */  beqz       $v0, .L80049978
/* F2E70 80049960 00000000 */   nop
/* F2E74 80049964 0C00D8C1 */  jal        func_80036304_DF814
/* F2E78 80049968 24840039 */   addiu     $a0, $a0, 0x39
/* F2E7C 8004996C 8C44000C */  lw         $a0, 0xc($v0)
/* F2E80 80049970 0C028A40 */  jal        func_800A2900
/* F2E84 80049974 00000000 */   nop
.L80049978:
/* F2E88 80049978 0C00D8C1 */  jal        func_80036304_DF814
/* F2E8C 8004997C 24040039 */   addiu     $a0, $zero, 0x39
/* F2E90 80049980 3C048015 */  lui        $a0, %hi(D_80149F90)
/* F2E94 80049984 8C849F90 */  lw         $a0, %lo(D_80149F90)($a0)
/* F2E98 80049988 2403003C */  addiu      $v1, $zero, 0x3c
/* F2E9C 8004998C 0064001A */  div        $zero, $v1, $a0
/* F2EA0 80049990 14800002 */  bnez       $a0, .L8004999C
/* F2EA4 80049994 00000000 */   nop
/* F2EA8 80049998 0007000D */  break      7
.L8004999C:
/* F2EAC 8004999C 2401FFFF */   addiu     $at, $zero, -1
/* F2EB0 800499A0 14810004 */  bne        $a0, $at, .L800499B4
/* F2EB4 800499A4 3C018000 */   lui       $at, 0x8000
/* F2EB8 800499A8 14610002 */  bne        $v1, $at, .L800499B4
/* F2EBC 800499AC 00000000 */   nop
/* F2EC0 800499B0 0006000D */  break      6
.L800499B4:
/* F2EC4 800499B4 00001812 */   mflo      $v1
/* F2EC8 800499B8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F2ECC 800499BC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F2ED0 800499C0 00031840 */  sll        $v1, $v1, 1
/* F2ED4 800499C4 0083202A */  slt        $a0, $a0, $v1
/* F2ED8 800499C8 14800028 */  bnez       $a0, .L80049A6C
/* F2EDC 800499CC 00408021 */   addu      $s0, $v0, $zero
/* F2EE0 800499D0 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F2EE4 800499D4 C420C0BC */  lwc1       $f0, %lo(D_8006C0BC)($at)
/* F2EE8 800499D8 3C014180 */  lui        $at, 0x4180
/* F2EEC 800499DC 44811000 */  mtc1       $at, $f2
/* F2EF0 800499E0 00000000 */  nop
/* F2EF4 800499E4 46020081 */  sub.s      $f2, $f0, $f2
/* F2EF8 800499E8 44800000 */  mtc1       $zero, $f0
/* F2EFC 800499EC 00000000 */  nop
/* F2F00 800499F0 4600103E */  c.le.s     $f2, $f0
/* F2F04 800499F4 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F2F08 800499F8 E422C0BC */  swc1       $f2, %lo(D_8006C0BC)($at)
/* F2F0C 800499FC 45000003 */  bc1f       .L80049A0C
/* F2F10 80049A00 00000000 */   nop
/* F2F14 80049A04 08012696 */  j          .L80049A58
/* F2F18 80049A08 AFA00010 */   sw        $zero, 0x10($sp)
.L80049A0C:
/* F2F1C 80049A0C 3C014F00 */  lui        $at, 0x4f00
/* F2F20 80049A10 44810000 */  mtc1       $at, $f0
/* F2F24 80049A14 00000000 */  nop
/* F2F28 80049A18 4602003E */  c.le.s     $f0, $f2
/* F2F2C 80049A1C 00000000 */  nop
/* F2F30 80049A20 00000000 */  nop
/* F2F34 80049A24 45030006 */  bc1tl      .L80049A40
/* F2F38 80049A28 46001001 */   sub.s     $f0, $f2, $f0
/* F2F3C 80049A2C 4600100D */  trunc.w.s  $f0, $f2
/* F2F40 80049A30 44030000 */  mfc1       $v1, $f0
/* F2F44 80049A34 00000000 */  nop
/* F2F48 80049A38 08012695 */  j          .L80049A54
/* F2F4C 80049A3C 306200FF */   andi      $v0, $v1, 0xff
.L80049A40:
/* F2F50 80049A40 4600008D */  trunc.w.s  $f2, $f0
/* F2F54 80049A44 44031000 */  mfc1       $v1, $f2
/* F2F58 80049A48 3C028000 */  lui        $v0, 0x8000
/* F2F5C 80049A4C 00621825 */  or         $v1, $v1, $v0
/* F2F60 80049A50 306200FF */  andi       $v0, $v1, 0xff
.L80049A54:
/* F2F64 80049A54 AFA20010 */  sw         $v0, 0x10($sp)
.L80049A58:
/* F2F68 80049A58 8E04000C */  lw         $a0, 0xc($s0)
/* F2F6C 80049A5C 240500FF */  addiu      $a1, $zero, 0xff
/* F2F70 80049A60 240600FF */  addiu      $a2, $zero, 0xff
/* F2F74 80049A64 0C028E41 */  jal        func_800A3904
/* F2F78 80049A68 240700FF */   addiu     $a3, $zero, 0xff
.L80049A6C:
/* F2F7C 80049A6C 8E04000C */  lw         $a0, 0xc($s0)
/* F2F80 80049A70 0C028A40 */  jal        func_800A2900
/* F2F84 80049A74 00000000 */   nop
/* F2F88 80049A78 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F2F8C 80049A7C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F2F90 80049A80 2402003C */  addiu      $v0, $zero, 0x3c
/* F2F94 80049A84 0043001A */  div        $zero, $v0, $v1
/* F2F98 80049A88 14600002 */  bnez       $v1, .L80049A94
/* F2F9C 80049A8C 00000000 */   nop
/* F2FA0 80049A90 0007000D */  break      7
.L80049A94:
/* F2FA4 80049A94 2401FFFF */   addiu     $at, $zero, -1
/* F2FA8 80049A98 14610004 */  bne        $v1, $at, .L80049AAC
/* F2FAC 80049A9C 3C018000 */   lui       $at, 0x8000
/* F2FB0 80049AA0 14410002 */  bne        $v0, $at, .L80049AAC
/* F2FB4 80049AA4 00000000 */   nop
/* F2FB8 80049AA8 0006000D */  break      6
.L80049AAC:
/* F2FBC 80049AAC 00001012 */   mflo      $v0
/* F2FC0 80049AB0 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F2FC4 80049AB4 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F2FC8 80049AB8 00021080 */  sll        $v0, $v0, 2
/* F2FCC 80049ABC 14620363 */  bne        $v1, $v0, .L8004A84C
/* F2FD0 80049AC0 00001021 */   addu      $v0, $zero, $zero
/* F2FD4 80049AC4 2402000F */  addiu      $v0, $zero, 0xf
/* F2FD8 80049AC8 08012A12 */  j          .L8004A848
/* F2FDC 80049ACC A6A2001C */   sh        $v0, 0x1c($s5)
.L80049AD0:
/* F2FE0 80049AD0 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F2FE4 80049AD4 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F2FE8 80049AD8 14400009 */  bnez       $v0, .L80049B00
/* F2FEC 80049ADC 00000000 */   nop
/* F2FF0 80049AE0 0C011290 */  jal        func_80044A40_EDF50
/* F2FF4 80049AE4 00000000 */   nop
/* F2FF8 80049AE8 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F2FFC 80049AEC 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F3000 80049AF0 14400003 */  bnez       $v0, .L80049B00
/* F3004 80049AF4 00000000 */   nop
/* F3008 80049AF8 0C026DD5 */  jal        func_8009B754
/* F300C 80049AFC 24040108 */   addiu     $a0, $zero, 0x108
.L80049B00:
/* F3010 80049B00 0C02A5AF */  jal        func_800A96BC
/* F3014 80049B04 24040001 */   addiu     $a0, $zero, 1
/* F3018 80049B08 3C01C226 */  lui        $at, 0xc226
/* F301C 80049B0C 3421B852 */  ori        $at, $at, 0xb852
/* F3020 80049B10 44810000 */  mtc1       $at, $f0
/* F3024 80049B14 24030010 */  addiu      $v1, $zero, 0x10
/* F3028 80049B18 A6A3001C */  sh         $v1, 0x1c($s5)
/* F302C 80049B1C 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3030 80049B20 E420C078 */  swc1       $f0, %lo(D_8006C078)($at)
/* F3034 80049B24 08012A13 */  j          .L8004A84C
/* F3038 80049B28 00001021 */   addu      $v0, $zero, $zero
.L80049B2C:
/* F303C 80049B2C 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3040 80049B30 C422C078 */  lwc1       $f2, %lo(D_8006C078)($at)
/* F3044 80049B34 3C013CA3 */  lui        $at, 0x3ca3
/* F3048 80049B38 3421D70A */  ori        $at, $at, 0xd70a
/* F304C 80049B3C 44810000 */  mtc1       $at, $f0
/* F3050 80049B40 00000000 */  nop
/* F3054 80049B44 46001000 */  add.s      $f0, $f2, $f0
/* F3058 80049B48 3C018015 */  lui        $at, %hi(D_8014A088)
/* F305C 80049B4C E422A088 */  swc1       $f2, %lo(D_8014A088)($at)
/* F3060 80049B50 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3064 80049B54 E420C078 */  swc1       $f0, %lo(D_8006C078)($at)
/* F3068 80049B58 0C00E032 */  jal        func_800380C8_E15D8
/* F306C 80049B5C 24040009 */   addiu     $a0, $zero, 9
/* F3070 80049B60 0C00D8C1 */  jal        func_80036304_DF814
/* F3074 80049B64 24040044 */   addiu     $a0, $zero, 0x44
/* F3078 80049B68 8C44000C */  lw         $a0, 0xc($v0)
/* F307C 80049B6C 0C028A40 */  jal        func_800A2900
/* F3080 80049B70 00000000 */   nop
/* F3084 80049B74 0C00D8C1 */  jal        func_80036304_DF814
/* F3088 80049B78 24040045 */   addiu     $a0, $zero, 0x45
/* F308C 80049B7C 8C44000C */  lw         $a0, 0xc($v0)
/* F3090 80049B80 0C028A40 */  jal        func_800A2900
/* F3094 80049B84 00000000 */   nop
/* F3098 80049B88 0C00D8C1 */  jal        func_80036304_DF814
/* F309C 80049B8C 24040046 */   addiu     $a0, $zero, 0x46
/* F30A0 80049B90 8C44000C */  lw         $a0, 0xc($v0)
/* F30A4 80049B94 0C028A40 */  jal        func_800A2900
/* F30A8 80049B98 00000000 */   nop
/* F30AC 80049B9C 0C00D8C1 */  jal        func_80036304_DF814
/* F30B0 80049BA0 24040047 */   addiu     $a0, $zero, 0x47
/* F30B4 80049BA4 8C44000C */  lw         $a0, 0xc($v0)
/* F30B8 80049BA8 0C028A40 */  jal        func_800A2900
/* F30BC 80049BAC 00000000 */   nop
/* F30C0 80049BB0 0C00D8C1 */  jal        func_80036304_DF814
/* F30C4 80049BB4 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F30C8 80049BB8 00408021 */  addu       $s0, $v0, $zero
/* F30CC 80049BBC 240200FF */  addiu      $v0, $zero, 0xff
/* F30D0 80049BC0 AFA20010 */  sw         $v0, 0x10($sp)
/* F30D4 80049BC4 8E04000C */  lw         $a0, 0xc($s0)
/* F30D8 80049BC8 240500FF */  addiu      $a1, $zero, 0xff
/* F30DC 80049BCC 240600FF */  addiu      $a2, $zero, 0xff
/* F30E0 80049BD0 0C028E41 */  jal        func_800A3904
/* F30E4 80049BD4 240700FF */   addiu     $a3, $zero, 0xff
/* F30E8 80049BD8 8E04000C */  lw         $a0, 0xc($s0)
/* F30EC 80049BDC 0C028A40 */  jal        func_800A2900
/* F30F0 80049BE0 00000000 */   nop
/* F30F4 80049BE4 0C00D8C1 */  jal        func_80036304_DF814
/* F30F8 80049BE8 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F30FC 80049BEC 00408021 */  addu       $s0, $v0, $zero
/* F3100 80049BF0 240200CC */  addiu      $v0, $zero, 0xcc
/* F3104 80049BF4 AFA20010 */  sw         $v0, 0x10($sp)
/* F3108 80049BF8 8E04000C */  lw         $a0, 0xc($s0)
/* F310C 80049BFC 240500FF */  addiu      $a1, $zero, 0xff
/* F3110 80049C00 240600FF */  addiu      $a2, $zero, 0xff
/* F3114 80049C04 0C028E41 */  jal        func_800A3904
/* F3118 80049C08 240700FF */   addiu     $a3, $zero, 0xff
/* F311C 80049C0C 8E04000C */  lw         $a0, 0xc($s0)
/* F3120 80049C10 0C028A40 */  jal        func_800A2900
/* F3124 80049C14 00000000 */   nop
/* F3128 80049C18 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F312C 80049C1C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F3130 80049C20 2403003C */  addiu      $v1, $zero, 0x3c
/* F3134 80049C24 0062001A */  div        $zero, $v1, $v0
/* F3138 80049C28 14400002 */  bnez       $v0, .L80049C34
/* F313C 80049C2C 00000000 */   nop
/* F3140 80049C30 0007000D */  break      7
.L80049C34:
/* F3144 80049C34 2401FFFF */   addiu     $at, $zero, -1
/* F3148 80049C38 14410004 */  bne        $v0, $at, .L80049C4C
/* F314C 80049C3C 3C018000 */   lui       $at, 0x8000
/* F3150 80049C40 14610002 */  bne        $v1, $at, .L80049C4C
/* F3154 80049C44 00000000 */   nop
/* F3158 80049C48 0006000D */  break      6
.L80049C4C:
/* F315C 80049C4C 00001812 */   mflo      $v1
/* F3160 80049C50 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F3164 80049C54 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F3168 80049C58 00031080 */  sll        $v0, $v1, 2
/* F316C 80049C5C 00431021 */  addu       $v0, $v0, $v1
/* F3170 80049C60 0082202A */  slt        $a0, $a0, $v0
/* F3174 80049C64 148002F9 */  bnez       $a0, .L8004A84C
/* F3178 80049C68 00001021 */   addu      $v0, $zero, $zero
/* F317C 80049C6C 3C048007 */  lui        $a0, %hi(D_800691A0)
/* F3180 80049C70 8C8491A0 */  lw         $a0, %lo(D_800691A0)($a0)
/* F3184 80049C74 0C026E46 */  jal        func_8009B918
/* F3188 80049C78 00002821 */   addu      $a1, $zero, $zero
/* F318C 80049C7C 24020011 */  addiu      $v0, $zero, 0x11
.L80049C80:
/* F3190 80049C80 08012A12 */  j          .L8004A848
/* F3194 80049C84 A6A2001C */   sh        $v0, 0x1c($s5)
.L80049C88:
/* F3198 80049C88 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F319C 80049C8C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F31A0 80049C90 14400003 */  bnez       $v0, .L80049CA0
/* F31A4 80049C94 00000000 */   nop
/* F31A8 80049C98 0C011368 */  jal        func_80044DA0_EE2B0
/* F31AC 80049C9C 00000000 */   nop
.L80049CA0:
/* F31B0 80049CA0 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F31B4 80049CA4 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F31B8 80049CA8 2402003C */  addiu      $v0, $zero, 0x3c
/* F31BC 80049CAC 0043001A */  div        $zero, $v0, $v1
/* F31C0 80049CB0 14600002 */  bnez       $v1, .L80049CBC
/* F31C4 80049CB4 00000000 */   nop
/* F31C8 80049CB8 0007000D */  break      7
.L80049CBC:
/* F31CC 80049CBC 2401FFFF */   addiu     $at, $zero, -1
/* F31D0 80049CC0 14610004 */  bne        $v1, $at, .L80049CD4
/* F31D4 80049CC4 3C018000 */   lui       $at, 0x8000
/* F31D8 80049CC8 14410002 */  bne        $v0, $at, .L80049CD4
/* F31DC 80049CCC 00000000 */   nop
/* F31E0 80049CD0 0006000D */  break      6
.L80049CD4:
/* F31E4 80049CD4 00001012 */   mflo      $v0
/* F31E8 80049CD8 3C018007 */  lui        $at, %hi(D_8006A150)
/* F31EC 80049CDC D422A150 */  ldc1       $f2, %lo(D_8006A150)($at)
/* F31F0 80049CE0 44820000 */  mtc1       $v0, $f0
/* F31F4 80049CE4 00000000 */  nop
/* F31F8 80049CE8 46800021 */  cvt.d.w    $f0, $f0
/* F31FC 80049CEC 46220002 */  mul.d      $f0, $f0, $f2
/* F3200 80049CF0 3C018007 */  lui        $at, %hi(D_8006C564)
/* F3204 80049CF4 C422C564 */  lwc1       $f2, %lo(D_8006C564)($at)
/* F3208 80049CF8 468010A1 */  cvt.d.w    $f2, $f2
/* F320C 80049CFC 46201032 */  c.eq.d     $f2, $f0
/* F3210 80049D00 00000000 */  nop
/* F3214 80049D04 00000000 */  nop
/* F3218 80049D08 450002D0 */  bc1f       .L8004A84C
/* F321C 80049D0C 00001021 */   addu      $v0, $zero, $zero
/* F3220 80049D10 0C02A5AF */  jal        func_800A96BC
/* F3224 80049D14 24040001 */   addiu     $a0, $zero, 1
/* F3228 80049D18 24050010 */  addiu      $a1, $zero, 0x10
/* F322C 80049D1C 24060010 */  addiu      $a2, $zero, 0x10
/* F3230 80049D20 3C048007 */  lui        $a0, %hi(D_8006C064)
/* F3234 80049D24 8C84C064 */  lw         $a0, %lo(D_8006C064)($a0)
/* F3238 80049D28 24070130 */  addiu      $a3, $zero, 0x130
/* F323C 80049D2C 240200E0 */  addiu      $v0, $zero, 0xe0
/* F3240 80049D30 0C02939C */  jal        func_800A4E70
/* F3244 80049D34 AFA20010 */   sw        $v0, 0x10($sp)
/* F3248 80049D38 24040008 */  addiu      $a0, $zero, 8
/* F324C 80049D3C 2405FFFF */  addiu      $a1, $zero, -1
/* F3250 80049D40 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* F3254 80049D44 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* F3258 80049D48 24060001 */  addiu      $a2, $zero, 1
/* F325C 80049D4C 24020001 */  addiu      $v0, $zero, 1
/* F3260 80049D50 AFA20010 */  sw         $v0, 0x10($sp)
/* F3264 80049D54 0C026C9A */  jal        func_8009B268
/* F3268 80049D58 24E7000A */   addiu     $a3, $a3, 0xa
/* F326C 80049D5C 24020012 */  addiu      $v0, $zero, 0x12
/* F3270 80049D60 08012A12 */  j          .L8004A848
/* F3274 80049D64 A6A2001C */   sh        $v0, 0x1c($s5)
.L80049D68:
/* F3278 80049D68 0C00D8C1 */  jal        func_80036304_DF814
/* F327C 80049D6C 24040017 */   addiu     $a0, $zero, 0x17
/* F3280 80049D70 8C44000C */  lw         $a0, 0xc($v0)
/* F3284 80049D74 0C028A40 */  jal        func_800A2900
/* F3288 80049D78 00000000 */   nop
/* F328C 80049D7C 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F3290 80049D80 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F3294 80049D84 2403003C */  addiu      $v1, $zero, 0x3c
/* F3298 80049D88 0062001A */  div        $zero, $v1, $v0
/* F329C 80049D8C 14400002 */  bnez       $v0, .L80049D98
/* F32A0 80049D90 00000000 */   nop
/* F32A4 80049D94 0007000D */  break      7
.L80049D98:
/* F32A8 80049D98 2401FFFF */   addiu     $at, $zero, -1
/* F32AC 80049D9C 14410004 */  bne        $v0, $at, .L80049DB0
/* F32B0 80049DA0 3C018000 */   lui       $at, 0x8000
/* F32B4 80049DA4 14610002 */  bne        $v1, $at, .L80049DB0
/* F32B8 80049DA8 00000000 */   nop
/* F32BC 80049DAC 0006000D */  break      6
.L80049DB0:
/* F32C0 80049DB0 00001812 */   mflo      $v1
/* F32C4 80049DB4 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F32C8 80049DB8 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F32CC 80049DBC 00031080 */  sll        $v0, $v1, 2
/* F32D0 80049DC0 00431021 */  addu       $v0, $v0, $v1
/* F32D4 80049DC4 14820007 */  bne        $a0, $v0, .L80049DE4
/* F32D8 80049DC8 00000000 */   nop
/* F32DC 80049DCC 3C028007 */  lui        $v0, %hi(D_8006C0C4)
/* F32E0 80049DD0 9442C0C4 */  lhu        $v0, %lo(D_8006C0C4)($v0)
/* F32E4 80049DD4 14400003 */  bnez       $v0, .L80049DE4
/* F32E8 80049DD8 24420001 */   addiu     $v0, $v0, 1
/* F32EC 80049DDC 3C018007 */  lui        $at, %hi(D_8006C0C4)
/* F32F0 80049DE0 A422C0C4 */  sh         $v0, %lo(D_8006C0C4)($at)
.L80049DE4:
/* F32F4 80049DE4 3C038007 */  lui        $v1, %hi(D_8006C0C4)
/* F32F8 80049DE8 9463C0C4 */  lhu        $v1, %lo(D_8006C0C4)($v1)
/* F32FC 80049DEC 24020001 */  addiu      $v0, $zero, 1
/* F3300 80049DF0 14620010 */  bne        $v1, $v0, .L80049E34
/* F3304 80049DF4 2404003C */   addiu     $a0, $zero, 0x3c
/* F3308 80049DF8 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F330C 80049DFC 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F3310 80049E00 0082001A */  div        $zero, $a0, $v0
/* F3314 80049E04 14400002 */  bnez       $v0, .L80049E10
/* F3318 80049E08 00000000 */   nop
/* F331C 80049E0C 0007000D */  break      7
.L80049E10:
/* F3320 80049E10 2401FFFF */   addiu     $at, $zero, -1
/* F3324 80049E14 14410004 */  bne        $v0, $at, .L80049E28
/* F3328 80049E18 3C018000 */   lui       $at, 0x8000
/* F332C 80049E1C 14810002 */  bne        $a0, $at, .L80049E28
/* F3330 80049E20 00000000 */   nop
/* F3334 80049E24 0006000D */  break      6
.L80049E28:
/* F3338 80049E28 00002012 */   mflo      $a0
/* F333C 80049E2C 0C02A5C1 */  jal        func_800A9704
/* F3340 80049E30 00000000 */   nop
.L80049E34:
/* F3344 80049E34 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F3348 80049E38 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F334C 80049E3C 2402003C */  addiu      $v0, $zero, 0x3c
/* F3350 80049E40 0043001A */  div        $zero, $v0, $v1
/* F3354 80049E44 14600002 */  bnez       $v1, .L80049E50
/* F3358 80049E48 00000000 */   nop
/* F335C 80049E4C 0007000D */  break      7
.L80049E50:
/* F3360 80049E50 2401FFFF */   addiu     $at, $zero, -1
/* F3364 80049E54 14610004 */  bne        $v1, $at, .L80049E68
/* F3368 80049E58 3C018000 */   lui       $at, 0x8000
/* F336C 80049E5C 14410002 */  bne        $v0, $at, .L80049E68
/* F3370 80049E60 00000000 */   nop
/* F3374 80049E64 0006000D */  break      6
.L80049E68:
/* F3378 80049E68 00001012 */   mflo      $v0
/* F337C 80049E6C 3C038007 */  lui        $v1, %hi(D_8006C0C4)
/* F3380 80049E70 9463C0C4 */  lhu        $v1, %lo(D_8006C0C4)($v1)
/* F3384 80049E74 0043102A */  slt        $v0, $v0, $v1
/* F3388 80049E78 10400273 */  beqz       $v0, .L8004A848
/* F338C 80049E7C 24020013 */   addiu     $v0, $zero, 0x13
/* F3390 80049E80 08012A12 */  j          .L8004A848
/* F3394 80049E84 A6A2001C */   sh        $v0, 0x1c($s5)
.L80049E88:
/* F3398 80049E88 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F339C 80049E8C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F33A0 80049E90 14400003 */  bnez       $v0, .L80049EA0
/* F33A4 80049E94 00000000 */   nop
/* F33A8 80049E98 0C011375 */  jal        func_80044DD4_EE2E4
/* F33AC 80049E9C 00000000 */   nop
.L80049EA0:
/* F33B0 80049EA0 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F33B4 80049EA4 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F33B8 80049EA8 24020002 */  addiu      $v0, $zero, 2
/* F33BC 80049EAC 14620267 */  bne        $v1, $v0, .L8004A84C
/* F33C0 80049EB0 00001021 */   addu      $v0, $zero, $zero
/* F33C4 80049EB4 0C02A5AF */  jal        func_800A96BC
/* F33C8 80049EB8 24040001 */   addiu     $a0, $zero, 1
/* F33CC 80049EBC 24020014 */  addiu      $v0, $zero, 0x14
/* F33D0 80049EC0 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F33D4 80049EC4 AC20C0BC */  sw         $zero, %lo(D_8006C0BC)($at)
/* F33D8 80049EC8 08012A12 */  j          .L8004A848
/* F33DC 80049ECC A6A2001C */   sh        $v0, 0x1c($s5)
.L80049ED0:
/* F33E0 80049ED0 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* F33E4 80049ED4 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* F33E8 80049ED8 30421000 */  andi       $v0, $v0, 0x1000
/* F33EC 80049EDC 10400004 */  beqz       $v0, .L80049EF0
/* F33F0 80049EE0 24020015 */   addiu     $v0, $zero, 0x15
/* F33F4 80049EE4 3C018007 */  lui        $at, %hi(D_8006C0C6)
/* F33F8 80049EE8 A020C0C6 */  sb         $zero, %lo(D_8006C0C6)($at)
/* F33FC 80049EEC A6A2001C */  sh         $v0, 0x1c($s5)
.L80049EF0:
/* F3400 80049EF0 27A400F0 */  addiu      $a0, $sp, 0xf0
/* F3404 80049EF4 27A500F4 */  addiu      $a1, $sp, 0xf4
/* F3408 80049EF8 0C0266D6 */  jal        func_80099B58
/* F340C 80049EFC 00003021 */   addu      $a2, $zero, $zero
/* F3410 80049F00 8FA300F4 */  lw         $v1, 0xf4($sp)
/* F3414 80049F04 2402FFFF */  addiu      $v0, $zero, -1
/* F3418 80049F08 14620009 */  bne        $v1, $v0, .L80049F30
/* F341C 80049F0C 24020001 */   addiu     $v0, $zero, 1
/* F3420 80049F10 3C038007 */  lui        $v1, %hi(D_800691A8)
/* F3424 80049F14 906391A8 */  lbu        $v1, %lo(D_800691A8)($v1)
/* F3428 80049F18 14620004 */  bne        $v1, $v0, .L80049F2C
/* F342C 80049F1C 00000000 */   nop
/* F3430 80049F20 3C018007 */  lui        $at, %hi(D_800691A8)
/* F3434 80049F24 080127D4 */  j          .L80049F50
/* F3438 80049F28 A02091A8 */   sb        $zero, %lo(D_800691A8)($at)
.L80049F2C:
/* F343C 80049F2C 8FA300F4 */  lw         $v1, 0xf4($sp)
.L80049F30:
/* F3440 80049F30 14620009 */  bne        $v1, $v0, .L80049F58
/* F3444 80049F34 00000000 */   nop
/* F3448 80049F38 3C028007 */  lui        $v0, %hi(D_800691A8)
/* F344C 80049F3C 904291A8 */  lbu        $v0, %lo(D_800691A8)($v0)
/* F3450 80049F40 14400005 */  bnez       $v0, .L80049F58
/* F3454 80049F44 24020001 */   addiu     $v0, $zero, 1
/* F3458 80049F48 3C018007 */  lui        $at, %hi(D_800691A8)
/* F345C 80049F4C A02291A8 */  sb         $v0, %lo(D_800691A8)($at)
.L80049F50:
/* F3460 80049F50 0C026DD5 */  jal        func_8009B754
/* F3464 80049F54 2404001E */   addiu     $a0, $zero, 0x1e
.L80049F58:
/* F3468 80049F58 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F346C 80049F5C C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F3470 80049F60 3C014378 */  lui        $at, 0x4378
/* F3474 80049F64 44810000 */  mtc1       $at, $f0
/* F3478 80049F68 3C028007 */  lui        $v0, %hi(D_800691AC)
/* F347C 80049F6C 8C4291AC */  lw         $v0, %lo(D_800691AC)($v0)
/* F3480 80049F70 4600103C */  c.lt.s     $f2, $f0
/* F3484 80049F74 24420001 */  addiu      $v0, $v0, 1
/* F3488 80049F78 3C018007 */  lui        $at, %hi(D_800691AC)
/* F348C 80049F7C AC2291AC */  sw         $v0, %lo(D_800691AC)($at)
/* F3490 80049F80 45000007 */  bc1f       .L80049FA0
/* F3494 80049F84 00000000 */   nop
/* F3498 80049F88 3C014100 */  lui        $at, 0x4100
/* F349C 80049F8C 44810000 */  mtc1       $at, $f0
/* F34A0 80049F90 00000000 */  nop
/* F34A4 80049F94 46001000 */  add.s      $f0, $f2, $f0
/* F34A8 80049F98 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F34AC 80049F9C E420C0BC */  swc1       $f0, %lo(D_8006C0BC)($at)
.L80049FA0:
/* F34B0 80049FA0 3C028007 */  lui        $v0, %hi(D_800691A8)
/* F34B4 80049FA4 904291A8 */  lbu        $v0, %lo(D_800691A8)($v0)
/* F34B8 80049FA8 14400055 */  bnez       $v0, .L8004A100
/* F34BC 80049FAC 00000000 */   nop
/* F34C0 80049FB0 0C00D8C1 */  jal        func_80036304_DF814
/* F34C4 80049FB4 240440C9 */   addiu     $a0, $zero, 0x40c9
/* F34C8 80049FB8 8C44000C */  lw         $a0, 0xc($v0)
/* F34CC 80049FBC 0C028A40 */  jal        func_800A2900
/* F34D0 80049FC0 00000000 */   nop
/* F34D4 80049FC4 0C00D8C1 */  jal        func_80036304_DF814
/* F34D8 80049FC8 240440CA */   addiu     $a0, $zero, 0x40ca
/* F34DC 80049FCC 8C44000C */  lw         $a0, 0xc($v0)
/* F34E0 80049FD0 0C028A40 */  jal        func_800A2900
/* F34E4 80049FD4 00000000 */   nop
/* F34E8 80049FD8 0C00D8C1 */  jal        func_80036304_DF814
/* F34EC 80049FDC 240440CD */   addiu     $a0, $zero, 0x40cd
/* F34F0 80049FE0 8C44000C */  lw         $a0, 0xc($v0)
/* F34F4 80049FE4 0C028A40 */  jal        func_800A2900
/* F34F8 80049FE8 00000000 */   nop
/* F34FC 80049FEC 0C00D8C1 */  jal        func_80036304_DF814
/* F3500 80049FF0 240440CE */   addiu     $a0, $zero, 0x40ce
/* F3504 80049FF4 8C44000C */  lw         $a0, 0xc($v0)
/* F3508 80049FF8 0C028A40 */  jal        func_800A2900
/* F350C 80049FFC 00000000 */   nop
/* F3510 8004A000 0C00D8C1 */  jal        func_80036304_DF814
/* F3514 8004A004 240440D0 */   addiu     $a0, $zero, 0x40d0
/* F3518 8004A008 8C44000C */  lw         $a0, 0xc($v0)
/* F351C 8004A00C 0C028A40 */  jal        func_800A2900
/* F3520 8004A010 00000000 */   nop
/* F3524 8004A014 0C00D8C1 */  jal        func_80036304_DF814
/* F3528 8004A018 240440D1 */   addiu     $a0, $zero, 0x40d1
/* F352C 8004A01C 8C44000C */  lw         $a0, 0xc($v0)
/* F3530 8004A020 0C028A40 */  jal        func_800A2900
/* F3534 8004A024 00000000 */   nop
/* F3538 8004A028 0C00D8C1 */  jal        func_80036304_DF814
/* F353C 8004A02C 240440D3 */   addiu     $a0, $zero, 0x40d3
/* F3540 8004A030 8C44000C */  lw         $a0, 0xc($v0)
/* F3544 8004A034 0C028A40 */  jal        func_800A2900
/* F3548 8004A038 00000000 */   nop
/* F354C 8004A03C 0C00D8C1 */  jal        func_80036304_DF814
/* F3550 8004A040 240440D4 */   addiu     $a0, $zero, 0x40d4
/* F3554 8004A044 8C44000C */  lw         $a0, 0xc($v0)
/* F3558 8004A048 0C028A40 */  jal        func_800A2900
/* F355C 8004A04C 00000000 */   nop
/* F3560 8004A050 0C00D8C1 */  jal        func_80036304_DF814
/* F3564 8004A054 240440D5 */   addiu     $a0, $zero, 0x40d5
/* F3568 8004A058 8C44000C */  lw         $a0, 0xc($v0)
/* F356C 8004A05C 0C028A40 */  jal        func_800A2900
/* F3570 8004A060 00000000 */   nop
/* F3574 8004A064 0C00D8C1 */  jal        func_80036304_DF814
/* F3578 8004A068 240440D6 */   addiu     $a0, $zero, 0x40d6
/* F357C 8004A06C 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F3580 8004A070 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F3584 8004A074 3C014F00 */  lui        $at, 0x4f00
/* F3588 8004A078 44810000 */  mtc1       $at, $f0
/* F358C 8004A07C 00000000 */  nop
/* F3590 8004A080 4602003E */  c.le.s     $f0, $f2
/* F3594 8004A084 00000000 */  nop
/* F3598 8004A088 00000000 */  nop
/* F359C 8004A08C 45010006 */  bc1t       .L8004A0A8
/* F35A0 8004A090 00408021 */   addu      $s0, $v0, $zero
/* F35A4 8004A094 4600100D */  trunc.w.s  $f0, $f2
/* F35A8 8004A098 44030000 */  mfc1       $v1, $f0
/* F35AC 8004A09C 00000000 */  nop
/* F35B0 8004A0A0 08012830 */  j          .L8004A0C0
/* F35B4 8004A0A4 306200FF */   andi      $v0, $v1, 0xff
.L8004A0A8:
/* F35B8 8004A0A8 46001001 */  sub.s      $f0, $f2, $f0
/* F35BC 8004A0AC 4600008D */  trunc.w.s  $f2, $f0
/* F35C0 8004A0B0 44031000 */  mfc1       $v1, $f2
/* F35C4 8004A0B4 3C028000 */  lui        $v0, 0x8000
/* F35C8 8004A0B8 00621825 */  or         $v1, $v1, $v0
/* F35CC 8004A0BC 306200FF */  andi       $v0, $v1, 0xff
.L8004A0C0:
/* F35D0 8004A0C0 AFA20010 */  sw         $v0, 0x10($sp)
/* F35D4 8004A0C4 8E04000C */  lw         $a0, 0xc($s0)
/* F35D8 8004A0C8 240500FF */  addiu      $a1, $zero, 0xff
/* F35DC 8004A0CC 240600FF */  addiu      $a2, $zero, 0xff
/* F35E0 8004A0D0 0C028E41 */  jal        func_800A3904
/* F35E4 8004A0D4 240700FF */   addiu     $a3, $zero, 0xff
/* F35E8 8004A0D8 8E04000C */  lw         $a0, 0xc($s0)
/* F35EC 8004A0DC 0C028A40 */  jal        func_800A2900
/* F35F0 8004A0E0 00000000 */   nop
/* F35F4 8004A0E4 3C028007 */  lui        $v0, %hi(D_800691AC)
/* F35F8 8004A0E8 8C4291AC */  lw         $v0, %lo(D_800691AC)($v0)
/* F35FC 8004A0EC 30420004 */  andi       $v0, $v0, 4
/* F3600 8004A0F0 104001D5 */  beqz       $v0, .L8004A848
/* F3604 8004A0F4 240440D7 */   addiu     $a0, $zero, 0x40d7
/* F3608 8004A0F8 0801284A */  j          .L8004A128
/* F360C 8004A0FC 00000000 */   nop
.L8004A100:
/* F3610 8004A100 0C00D8C1 */  jal        func_80036304_DF814
/* F3614 8004A104 240440D9 */   addiu     $a0, $zero, 0x40d9
/* F3618 8004A108 8C44000C */  lw         $a0, 0xc($v0)
/* F361C 8004A10C 0C028A40 */  jal        func_800A2900
/* F3620 8004A110 00000000 */   nop
/* F3624 8004A114 3C028007 */  lui        $v0, %hi(D_800691AC)
/* F3628 8004A118 8C4291AC */  lw         $v0, %lo(D_800691AC)($v0)
/* F362C 8004A11C 30420004 */  andi       $v0, $v0, 4
/* F3630 8004A120 104001C9 */  beqz       $v0, .L8004A848
/* F3634 8004A124 240440D8 */   addiu     $a0, $zero, 0x40d8
.L8004A128:
/* F3638 8004A128 0C00D8C1 */  jal        func_80036304_DF814
/* F363C 8004A12C 00000000 */   nop
/* F3640 8004A130 0C028A40 */  jal        func_800A2900
/* F3644 8004A134 8C44000C */   lw        $a0, 0xc($v0)
/* F3648 8004A138 08012A13 */  j          .L8004A84C
/* F364C 8004A13C 00001021 */   addu      $v0, $zero, $zero
.L8004A140:
/* F3650 8004A140 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F3654 8004A144 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F3658 8004A148 14400006 */  bnez       $v0, .L8004A164
/* F365C 8004A14C 28420002 */   slti      $v0, $v0, 2
/* F3660 8004A150 0C01137E */  jal        func_80044DF8_EE308
/* F3664 8004A154 00000000 */   nop
/* F3668 8004A158 3C028007 */  lui        $v0, %hi(D_8006C564)
/* F366C 8004A15C 8C42C564 */  lw         $v0, %lo(D_8006C564)($v0)
/* F3670 8004A160 28420002 */  slti       $v0, $v0, 2
.L8004A164:
/* F3674 8004A164 144001B9 */  bnez       $v0, .L8004A84C
/* F3678 8004A168 00001021 */   addu      $v0, $zero, $zero
/* F367C 8004A16C 0C02A5AF */  jal        func_800A96BC
/* F3680 8004A170 24040001 */   addiu     $a0, $zero, 1
/* F3684 8004A174 3C014120 */  lui        $at, 0x4120
/* F3688 8004A178 44810000 */  mtc1       $at, $f0
/* F368C 8004A17C 3C01C2B4 */  lui        $at, 0xc2b4
/* F3690 8004A180 44811000 */  mtc1       $at, $f2
/* F3694 8004A184 3C014378 */  lui        $at, 0x4378
/* F3698 8004A188 44812000 */  mtc1       $at, $f4
/* F369C 8004A18C 3C018007 */  lui        $at, %hi(D_8006C074)
/* F36A0 8004A190 AC20C074 */  sw         $zero, %lo(D_8006C074)($at)
/* F36A4 8004A194 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F36A8 8004A198 AC20C0C0 */  sw         $zero, %lo(D_8006C0C0)($at)
/* F36AC 8004A19C 3C018007 */  lui        $at, %hi(D_8006C070)
/* F36B0 8004A1A0 E420C070 */  swc1       $f0, %lo(D_8006C070)($at)
/* F36B4 8004A1A4 3C018007 */  lui        $at, %hi(D_8006C078)
/* F36B8 8004A1A8 E422C078 */  swc1       $f2, %lo(D_8006C078)($at)
/* F36BC 8004A1AC 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F36C0 8004A1B0 E424C0BC */  swc1       $f4, %lo(D_8006C0BC)($at)
/* F36C4 8004A1B4 0C026DD5 */  jal        func_8009B754
/* F36C8 8004A1B8 24040038 */   addiu     $a0, $zero, 0x38
/* F36CC 8004A1BC 3C058015 */  lui        $a1, %hi(D_80149F8C)
/* F36D0 8004A1C0 84A59F8C */  lh         $a1, %lo(D_80149F8C)($a1)
/* F36D4 8004A1C4 00402021 */  addu       $a0, $v0, $zero
/* F36D8 8004A1C8 3C018007 */  lui        $at, %hi(D_800691A0)
/* F36DC 8004A1CC 0C026E66 */  jal        func_8009B998
/* F36E0 8004A1D0 AC2491A0 */   sw        $a0, %lo(D_800691A0)($at)
/* F36E4 8004A1D4 24020016 */  addiu      $v0, $zero, 0x16
/* F36E8 8004A1D8 08012A12 */  j          .L8004A848
/* F36EC 8004A1DC A6A2001C */   sh        $v0, 0x1c($s5)
.L8004A1E0:
/* F36F0 8004A1E0 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F36F4 8004A1E4 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F36F8 8004A1E8 2413003C */  addiu      $s3, $zero, 0x3c
/* F36FC 8004A1EC 0263001A */  div        $zero, $s3, $v1
/* F3700 8004A1F0 14600002 */  bnez       $v1, .L8004A1FC
/* F3704 8004A1F4 00000000 */   nop
/* F3708 8004A1F8 0007000D */  break      7
.L8004A1FC:
/* F370C 8004A1FC 2401FFFF */   addiu     $at, $zero, -1
/* F3710 8004A200 14610004 */  bne        $v1, $at, .L8004A214
/* F3714 8004A204 3C018000 */   lui       $at, 0x8000
/* F3718 8004A208 16610002 */  bne        $s3, $at, .L8004A214
/* F371C 8004A20C 00000000 */   nop
/* F3720 8004A210 0006000D */  break      6
.L8004A214:
/* F3724 8004A214 00001812 */   mflo      $v1
/* F3728 8004A218 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F372C 8004A21C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F3730 8004A220 000310C0 */  sll        $v0, $v1, 3
/* F3734 8004A224 00431023 */  subu       $v0, $v0, $v1
/* F3738 8004A228 00021040 */  sll        $v0, $v0, 1
/* F373C 8004A22C 0082202A */  slt        $a0, $a0, $v0
/* F3740 8004A230 10800024 */  beqz       $a0, .L8004A2C4
/* F3744 8004A234 00000000 */   nop
/* F3748 8004A238 3C018007 */  lui        $at, %hi(D_8006C074)
/* F374C 8004A23C C428C074 */  lwc1       $f8, %lo(D_8006C074)($at)
/* F3750 8004A240 3C013CA3 */  lui        $at, 0x3ca3
/* F3754 8004A244 3421D70A */  ori        $at, $at, 0xd70a
/* F3758 8004A248 44815000 */  mtc1       $at, $f10
/* F375C 8004A24C 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3760 8004A250 C42CC078 */  lwc1       $f12, %lo(D_8006C078)($at)
/* F3764 8004A254 460A4200 */  add.s      $f8, $f8, $f10
/* F3768 8004A258 3C013E99 */  lui        $at, 0x3e99
/* F376C 8004A25C 3421999A */  ori        $at, $at, 0x999a
/* F3770 8004A260 44810000 */  mtc1       $at, $f0
/* F3774 8004A264 3C028015 */  lui        $v0, %hi(D_8014A080)
/* F3778 8004A268 2442A080 */  addiu      $v0, $v0, %lo(D_8014A080)
/* F377C 8004A26C 46006300 */  add.s      $f12, $f12, $f0
/* F3780 8004A270 C4440000 */  lwc1       $f4, ($v0)
/* F3784 8004A274 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F3788 8004A278 C426A07C */  lwc1       $f6, %lo(D_8014A07C)($at)
/* F378C 8004A27C 460A2101 */  sub.s      $f4, $f4, $f10
/* F3790 8004A280 3C013C23 */  lui        $at, 0x3c23
/* F3794 8004A284 3421D70A */  ori        $at, $at, 0xd70a
/* F3798 8004A288 44811000 */  mtc1       $at, $f2
/* F379C 8004A28C 00000000 */  nop
/* F37A0 8004A290 46023180 */  add.s      $f6, $f6, $f2
/* F37A4 8004A294 3C018015 */  lui        $at, %hi(D_8014A088)
/* F37A8 8004A298 C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* F37AC 8004A29C 460A0000 */  add.s      $f0, $f0, $f10
/* F37B0 8004A2A0 3C018007 */  lui        $at, %hi(D_8006C074)
/* F37B4 8004A2A4 E428C074 */  swc1       $f8, %lo(D_8006C074)($at)
/* F37B8 8004A2A8 3C018007 */  lui        $at, %hi(D_8006C078)
/* F37BC 8004A2AC E42CC078 */  swc1       $f12, %lo(D_8006C078)($at)
/* F37C0 8004A2B0 E4440000 */  swc1       $f4, ($v0)
/* F37C4 8004A2B4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F37C8 8004A2B8 E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* F37CC 8004A2BC 3C018015 */  lui        $at, %hi(D_8014A088)
/* F37D0 8004A2C0 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
.L8004A2C4:
/* F37D4 8004A2C4 0C00DFD6 */  jal        func_80037F58_E1468
/* F37D8 8004A2C8 24040001 */   addiu     $a0, $zero, 1
/* F37DC 8004A2CC 3C018007 */  lui        $at, %hi(D_8006C070)
/* F37E0 8004A2D0 C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F37E4 8004A2D4 3C018007 */  lui        $at, %hi(D_8006C074)
/* F37E8 8004A2D8 C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F37EC 8004A2DC 3C018007 */  lui        $at, %hi(D_8006C078)
/* F37F0 8004A2E0 C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F37F4 8004A2E4 00409021 */  addu       $s2, $v0, $zero
/* F37F8 8004A2E8 24040001 */  addiu      $a0, $zero, 1
/* F37FC 8004A2EC E6400010 */  swc1       $f0, 0x10($s2)
/* F3800 8004A2F0 E6420014 */  swc1       $f2, 0x14($s2)
/* F3804 8004A2F4 0C00E032 */  jal        func_800380C8_E15D8
/* F3808 8004A2F8 E6440018 */   swc1      $f4, 0x18($s2)
/* F380C 8004A2FC 0C00DFD6 */  jal        func_80037F58_E1468
/* F3810 8004A300 24040003 */   addiu     $a0, $zero, 3
/* F3814 8004A304 3C018007 */  lui        $at, %hi(D_8006C070)
/* F3818 8004A308 C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F381C 8004A30C 3C018007 */  lui        $at, %hi(D_8006C074)
/* F3820 8004A310 C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F3824 8004A314 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3828 8004A318 C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F382C 8004A31C 00409021 */  addu       $s2, $v0, $zero
/* F3830 8004A320 24040003 */  addiu      $a0, $zero, 3
/* F3834 8004A324 E6400010 */  swc1       $f0, 0x10($s2)
/* F3838 8004A328 E6420014 */  swc1       $f2, 0x14($s2)
/* F383C 8004A32C 0C00E032 */  jal        func_800380C8_E15D8
/* F3840 8004A330 E6440018 */   swc1      $f4, 0x18($s2)
/* F3844 8004A334 0C00DFD6 */  jal        func_80037F58_E1468
/* F3848 8004A338 24040004 */   addiu     $a0, $zero, 4
/* F384C 8004A33C 3C018007 */  lui        $at, %hi(D_8006C070)
/* F3850 8004A340 C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F3854 8004A344 3C018007 */  lui        $at, %hi(D_8006C074)
/* F3858 8004A348 C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F385C 8004A34C 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3860 8004A350 C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F3864 8004A354 00409021 */  addu       $s2, $v0, $zero
/* F3868 8004A358 24040004 */  addiu      $a0, $zero, 4
/* F386C 8004A35C E6400010 */  swc1       $f0, 0x10($s2)
/* F3870 8004A360 E6420014 */  swc1       $f2, 0x14($s2)
/* F3874 8004A364 0C00E032 */  jal        func_800380C8_E15D8
/* F3878 8004A368 E6440018 */   swc1      $f4, 0x18($s2)
/* F387C 8004A36C 0C00DFD6 */  jal        func_80037F58_E1468
/* F3880 8004A370 24040002 */   addiu     $a0, $zero, 2
/* F3884 8004A374 3C018007 */  lui        $at, %hi(D_8006C070)
/* F3888 8004A378 C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F388C 8004A37C 3C018007 */  lui        $at, %hi(D_8006C074)
/* F3890 8004A380 C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F3894 8004A384 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3898 8004A388 C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F389C 8004A38C 00409021 */  addu       $s2, $v0, $zero
/* F38A0 8004A390 24040002 */  addiu      $a0, $zero, 2
/* F38A4 8004A394 E6400010 */  swc1       $f0, 0x10($s2)
/* F38A8 8004A398 E6420014 */  swc1       $f2, 0x14($s2)
/* F38AC 8004A39C 0C00E032 */  jal        func_800380C8_E15D8
/* F38B0 8004A3A0 E6440018 */   swc1      $f4, 0x18($s2)
/* F38B4 8004A3A4 0C00DFD6 */  jal        func_80037F58_E1468
/* F38B8 8004A3A8 24040005 */   addiu     $a0, $zero, 5
/* F38BC 8004A3AC 00409021 */  addu       $s2, $v0, $zero
/* F38C0 8004A3B0 3C018007 */  lui        $at, %hi(D_8006C070)
/* F38C4 8004A3B4 C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F38C8 8004A3B8 3C018007 */  lui        $at, %hi(D_8006C074)
/* F38CC 8004A3BC C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F38D0 8004A3C0 3C018007 */  lui        $at, %hi(D_8006C078)
/* F38D4 8004A3C4 C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F38D8 8004A3C8 24040018 */  addiu      $a0, $zero, 0x18
/* F38DC 8004A3CC 241000FF */  addiu      $s0, $zero, 0xff
/* F38E0 8004A3D0 A6500074 */  sh         $s0, 0x74($s2)
/* F38E4 8004A3D4 A6500076 */  sh         $s0, 0x76($s2)
/* F38E8 8004A3D8 A6500078 */  sh         $s0, 0x78($s2)
/* F38EC 8004A3DC E6400010 */  swc1       $f0, 0x10($s2)
/* F38F0 8004A3E0 E6420014 */  swc1       $f2, 0x14($s2)
/* F38F4 8004A3E4 0C02591A */  jal        func_80096468
/* F38F8 8004A3E8 E6440018 */   swc1      $f4, 0x18($s2)
/* F38FC 8004A3EC 24040005 */  addiu      $a0, $zero, 5
/* F3900 8004A3F0 24420080 */  addiu      $v0, $v0, 0x80
/* F3904 8004A3F4 0C00E032 */  jal        func_800380C8_E15D8
/* F3908 8004A3F8 A642007A */   sh        $v0, 0x7a($s2)
/* F390C 8004A3FC 0C00DFD6 */  jal        func_80037F58_E1468
/* F3910 8004A400 24040006 */   addiu     $a0, $zero, 6
/* F3914 8004A404 3C018007 */  lui        $at, %hi(D_8006C070)
/* F3918 8004A408 C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F391C 8004A40C 3C018007 */  lui        $at, %hi(D_8006C074)
/* F3920 8004A410 C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F3924 8004A414 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3928 8004A418 C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F392C 8004A41C 00409021 */  addu       $s2, $v0, $zero
/* F3930 8004A420 24040018 */  addiu      $a0, $zero, 0x18
/* F3934 8004A424 A6500074 */  sh         $s0, 0x74($s2)
/* F3938 8004A428 A6500076 */  sh         $s0, 0x76($s2)
/* F393C 8004A42C A6500078 */  sh         $s0, 0x78($s2)
/* F3940 8004A430 E6400010 */  swc1       $f0, 0x10($s2)
/* F3944 8004A434 E6420014 */  swc1       $f2, 0x14($s2)
/* F3948 8004A438 0C02591A */  jal        func_80096468
/* F394C 8004A43C E6440018 */   swc1      $f4, 0x18($s2)
/* F3950 8004A440 24040006 */  addiu      $a0, $zero, 6
/* F3954 8004A444 24420060 */  addiu      $v0, $v0, 0x60
/* F3958 8004A448 0C00E032 */  jal        func_800380C8_E15D8
/* F395C 8004A44C A642007A */   sh        $v0, 0x7a($s2)
/* F3960 8004A450 0C00DFD6 */  jal        func_80037F58_E1468
/* F3964 8004A454 24040007 */   addiu     $a0, $zero, 7
/* F3968 8004A458 00409021 */  addu       $s2, $v0, $zero
/* F396C 8004A45C 3C018007 */  lui        $at, %hi(D_8006C070)
/* F3970 8004A460 C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F3974 8004A464 3C018007 */  lui        $at, %hi(D_8006C074)
/* F3978 8004A468 C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F397C 8004A46C 3C018007 */  lui        $at, %hi(D_8006C078)
/* F3980 8004A470 C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F3984 8004A474 24040018 */  addiu      $a0, $zero, 0x18
/* F3988 8004A478 241100A0 */  addiu      $s1, $zero, 0xa0
/* F398C 8004A47C A6510074 */  sh         $s1, 0x74($s2)
/* F3990 8004A480 A6500076 */  sh         $s0, 0x76($s2)
/* F3994 8004A484 A6510078 */  sh         $s1, 0x78($s2)
/* F3998 8004A488 E6400010 */  swc1       $f0, 0x10($s2)
/* F399C 8004A48C E6420014 */  swc1       $f2, 0x14($s2)
/* F39A0 8004A490 0C02591A */  jal        func_80096468
/* F39A4 8004A494 E6440018 */   swc1      $f4, 0x18($s2)
/* F39A8 8004A498 24040007 */  addiu      $a0, $zero, 7
/* F39AC 8004A49C 24420080 */  addiu      $v0, $v0, 0x80
/* F39B0 8004A4A0 0C00E032 */  jal        func_800380C8_E15D8
/* F39B4 8004A4A4 A642007A */   sh        $v0, 0x7a($s2)
/* F39B8 8004A4A8 0C00DFD6 */  jal        func_80037F58_E1468
/* F39BC 8004A4AC 24040008 */   addiu     $a0, $zero, 8
/* F39C0 8004A4B0 3C018007 */  lui        $at, %hi(D_8006C070)
/* F39C4 8004A4B4 C420C070 */  lwc1       $f0, %lo(D_8006C070)($at)
/* F39C8 8004A4B8 3C018007 */  lui        $at, %hi(D_8006C074)
/* F39CC 8004A4BC C422C074 */  lwc1       $f2, %lo(D_8006C074)($at)
/* F39D0 8004A4C0 3C018007 */  lui        $at, %hi(D_8006C078)
/* F39D4 8004A4C4 C424C078 */  lwc1       $f4, %lo(D_8006C078)($at)
/* F39D8 8004A4C8 3C038007 */  lui        $v1, %hi(D_8006C564)
/* F39DC 8004A4CC 8C63C564 */  lw         $v1, %lo(D_8006C564)($v1)
/* F39E0 8004A4D0 00409021 */  addu       $s2, $v0, $zero
/* F39E4 8004A4D4 24040008 */  addiu      $a0, $zero, 8
/* F39E8 8004A4D8 A6510074 */  sh         $s1, 0x74($s2)
/* F39EC 8004A4DC A6500076 */  sh         $s0, 0x76($s2)
/* F39F0 8004A4E0 A6510078 */  sh         $s1, 0x78($s2)
/* F39F4 8004A4E4 000317C2 */  srl        $v0, $v1, 0x1f
/* F39F8 8004A4E8 00621021 */  addu       $v0, $v1, $v0
/* F39FC 8004A4EC 00021043 */  sra        $v0, $v0, 1
/* F3A00 8004A4F0 00021040 */  sll        $v0, $v0, 1
/* F3A04 8004A4F4 00621823 */  subu       $v1, $v1, $v0
/* F3A08 8004A4F8 00031900 */  sll        $v1, $v1, 4
/* F3A0C 8004A4FC 246300C0 */  addiu      $v1, $v1, 0xc0
/* F3A10 8004A500 E6400010 */  swc1       $f0, 0x10($s2)
/* F3A14 8004A504 E6420014 */  swc1       $f2, 0x14($s2)
/* F3A18 8004A508 E6440018 */  swc1       $f4, 0x18($s2)
/* F3A1C 8004A50C 0C00E032 */  jal        func_800380C8_E15D8
/* F3A20 8004A510 A643007A */   sh        $v1, 0x7a($s2)
/* F3A24 8004A514 3C028015 */  lui        $v0, %hi(D_80149F90)
/* F3A28 8004A518 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* F3A2C 8004A51C 0262001A */  div        $zero, $s3, $v0
/* F3A30 8004A520 14400002 */  bnez       $v0, .L8004A52C
/* F3A34 8004A524 00000000 */   nop
/* F3A38 8004A528 0007000D */  break      7
.L8004A52C:
/* F3A3C 8004A52C 2401FFFF */   addiu     $at, $zero, -1
/* F3A40 8004A530 14410004 */  bne        $v0, $at, .L8004A544
/* F3A44 8004A534 3C018000 */   lui       $at, 0x8000
/* F3A48 8004A538 16610002 */  bne        $s3, $at, .L8004A544
/* F3A4C 8004A53C 00000000 */   nop
/* F3A50 8004A540 0006000D */  break      6
.L8004A544:
/* F3A54 8004A544 00001012 */   mflo      $v0
/* F3A58 8004A548 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F3A5C 8004A54C 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F3A60 8004A550 00021840 */  sll        $v1, $v0, 1
/* F3A64 8004A554 00621821 */  addu       $v1, $v1, $v0
/* F3A68 8004A558 00031880 */  sll        $v1, $v1, 2
/* F3A6C 8004A55C 0083202A */  slt        $a0, $a0, $v1
/* F3A70 8004A560 14800014 */  bnez       $a0, .L8004A5B4
/* F3A74 8004A564 00000000 */   nop
/* F3A78 8004A568 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F3A7C 8004A56C C424C0BC */  lwc1       $f4, %lo(D_8006C0BC)($at)
/* F3A80 8004A570 44800000 */  mtc1       $zero, $f0
/* F3A84 8004A574 00000000 */  nop
/* F3A88 8004A578 4604003C */  c.lt.s     $f0, $f4
/* F3A8C 8004A57C 00000000 */  nop
/* F3A90 8004A580 4500000C */  bc1f       .L8004A5B4
/* F3A94 8004A584 00000000 */   nop
/* F3A98 8004A588 3C014100 */  lui        $at, 0x4100
/* F3A9C 8004A58C 44810000 */  mtc1       $at, $f0
/* F3AA0 8004A590 00000000 */  nop
/* F3AA4 8004A594 46002101 */  sub.s      $f4, $f4, $f0
/* F3AA8 8004A598 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F3AAC 8004A59C C422C0C0 */  lwc1       $f2, %lo(D_8006C0C0)($at)
/* F3AB0 8004A5A0 46001080 */  add.s      $f2, $f2, $f0
/* F3AB4 8004A5A4 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F3AB8 8004A5A8 E424C0BC */  swc1       $f4, %lo(D_8006C0BC)($at)
/* F3ABC 8004A5AC 3C018007 */  lui        $at, %hi(D_8006C0C0)
/* F3AC0 8004A5B0 E422C0C0 */  swc1       $f2, %lo(D_8006C0C0)($at)
.L8004A5B4:
/* F3AC4 8004A5B4 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F3AC8 8004A5B8 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F3ACC 8004A5BC 2410003C */  addiu      $s0, $zero, 0x3c
/* F3AD0 8004A5C0 0203001A */  div        $zero, $s0, $v1
/* F3AD4 8004A5C4 14600002 */  bnez       $v1, .L8004A5D0
/* F3AD8 8004A5C8 00000000 */   nop
/* F3ADC 8004A5CC 0007000D */  break      7
.L8004A5D0:
/* F3AE0 8004A5D0 2401FFFF */   addiu     $at, $zero, -1
/* F3AE4 8004A5D4 14610004 */  bne        $v1, $at, .L8004A5E8
/* F3AE8 8004A5D8 3C018000 */   lui       $at, 0x8000
/* F3AEC 8004A5DC 16010002 */  bne        $s0, $at, .L8004A5E8
/* F3AF0 8004A5E0 00000000 */   nop
/* F3AF4 8004A5E4 0006000D */  break      6
.L8004A5E8:
/* F3AF8 8004A5E8 00001812 */   mflo      $v1
/* F3AFC 8004A5EC 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F3B00 8004A5F0 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F3B04 8004A5F4 00031080 */  sll        $v0, $v1, 2
/* F3B08 8004A5F8 00431021 */  addu       $v0, $v0, $v1
/* F3B0C 8004A5FC 14820003 */  bne        $a0, $v0, .L8004A60C
/* F3B10 8004A600 00000000 */   nop
/* F3B14 8004A604 0C026DD5 */  jal        func_8009B754
/* F3B18 8004A608 24040128 */   addiu     $a0, $zero, 0x128
.L8004A60C:
/* F3B1C 8004A60C 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F3B20 8004A610 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F3B24 8004A614 0203001A */  div        $zero, $s0, $v1
/* F3B28 8004A618 14600002 */  bnez       $v1, .L8004A624
/* F3B2C 8004A61C 00000000 */   nop
/* F3B30 8004A620 0007000D */  break      7
.L8004A624:
/* F3B34 8004A624 2401FFFF */   addiu     $at, $zero, -1
/* F3B38 8004A628 14610004 */  bne        $v1, $at, .L8004A63C
/* F3B3C 8004A62C 3C018000 */   lui       $at, 0x8000
/* F3B40 8004A630 16010002 */  bne        $s0, $at, .L8004A63C
/* F3B44 8004A634 00000000 */   nop
/* F3B48 8004A638 0006000D */  break      6
.L8004A63C:
/* F3B4C 8004A63C 00001812 */   mflo      $v1
/* F3B50 8004A640 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F3B54 8004A644 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F3B58 8004A648 00031080 */  sll        $v0, $v1, 2
/* F3B5C 8004A64C 00431021 */  addu       $v0, $v0, $v1
/* F3B60 8004A650 0082202A */  slt        $a0, $a0, $v0
/* F3B64 8004A654 14800046 */  bnez       $a0, .L8004A770
/* F3B68 8004A658 00000000 */   nop
/* F3B6C 8004A65C 0C00D8C1 */  jal        func_80036304_DF814
/* F3B70 8004A660 240420C9 */   addiu     $a0, $zero, 0x20c9
/* F3B74 8004A664 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F3B78 8004A668 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F3B7C 8004A66C 3C014F00 */  lui        $at, 0x4f00
/* F3B80 8004A670 44810000 */  mtc1       $at, $f0
/* F3B84 8004A674 00000000 */  nop
/* F3B88 8004A678 4602003E */  c.le.s     $f0, $f2
/* F3B8C 8004A67C 00000000 */  nop
/* F3B90 8004A680 00000000 */  nop
/* F3B94 8004A684 45010006 */  bc1t       .L8004A6A0
/* F3B98 8004A688 00408021 */   addu      $s0, $v0, $zero
/* F3B9C 8004A68C 4600100D */  trunc.w.s  $f0, $f2
/* F3BA0 8004A690 44030000 */  mfc1       $v1, $f0
/* F3BA4 8004A694 00000000 */  nop
/* F3BA8 8004A698 080129AE */  j          .L8004A6B8
/* F3BAC 8004A69C 306200FF */   andi      $v0, $v1, 0xff
.L8004A6A0:
/* F3BB0 8004A6A0 46001001 */  sub.s      $f0, $f2, $f0
/* F3BB4 8004A6A4 4600008D */  trunc.w.s  $f2, $f0
/* F3BB8 8004A6A8 44031000 */  mfc1       $v1, $f2
/* F3BBC 8004A6AC 3C028000 */  lui        $v0, 0x8000
/* F3BC0 8004A6B0 00621825 */  or         $v1, $v1, $v0
/* F3BC4 8004A6B4 306200FF */  andi       $v0, $v1, 0xff
.L8004A6B8:
/* F3BC8 8004A6B8 AFA20010 */  sw         $v0, 0x10($sp)
/* F3BCC 8004A6BC 8E04000C */  lw         $a0, 0xc($s0)
/* F3BD0 8004A6C0 240500FF */  addiu      $a1, $zero, 0xff
/* F3BD4 8004A6C4 240600FF */  addiu      $a2, $zero, 0xff
/* F3BD8 8004A6C8 0C028E41 */  jal        func_800A3904
/* F3BDC 8004A6CC 240700FF */   addiu     $a3, $zero, 0xff
/* F3BE0 8004A6D0 8E04000C */  lw         $a0, 0xc($s0)
/* F3BE4 8004A6D4 0C028A40 */  jal        func_800A2900
/* F3BE8 8004A6D8 00000000 */   nop
/* F3BEC 8004A6DC 0C00D8C1 */  jal        func_80036304_DF814
/* F3BF0 8004A6E0 240420D3 */   addiu     $a0, $zero, 0x20d3
/* F3BF4 8004A6E4 3C018007 */  lui        $at, %hi(D_8006C0BC)
/* F3BF8 8004A6E8 C422C0BC */  lwc1       $f2, %lo(D_8006C0BC)($at)
/* F3BFC 8004A6EC 3C013F4C */  lui        $at, 0x3f4c
/* F3C00 8004A6F0 3421CCCD */  ori        $at, $at, 0xcccd
/* F3C04 8004A6F4 44810000 */  mtc1       $at, $f0
/* F3C08 8004A6F8 00000000 */  nop
/* F3C0C 8004A6FC 46001082 */  mul.s      $f2, $f2, $f0
/* F3C10 8004A700 3C014F00 */  lui        $at, 0x4f00
/* F3C14 8004A704 44810000 */  mtc1       $at, $f0
/* F3C18 8004A708 00000000 */  nop
/* F3C1C 8004A70C 4602003E */  c.le.s     $f0, $f2
/* F3C20 8004A710 00000000 */  nop
/* F3C24 8004A714 00000000 */  nop
/* F3C28 8004A718 45010006 */  bc1t       .L8004A734
/* F3C2C 8004A71C 00408021 */   addu      $s0, $v0, $zero
/* F3C30 8004A720 4600100D */  trunc.w.s  $f0, $f2
/* F3C34 8004A724 44030000 */  mfc1       $v1, $f0
/* F3C38 8004A728 00000000 */  nop
/* F3C3C 8004A72C 080129D3 */  j          .L8004A74C
/* F3C40 8004A730 306200FF */   andi      $v0, $v1, 0xff
.L8004A734:
/* F3C44 8004A734 46001001 */  sub.s      $f0, $f2, $f0
/* F3C48 8004A738 4600008D */  trunc.w.s  $f2, $f0
/* F3C4C 8004A73C 44031000 */  mfc1       $v1, $f2
/* F3C50 8004A740 3C028000 */  lui        $v0, 0x8000
/* F3C54 8004A744 00621825 */  or         $v1, $v1, $v0
/* F3C58 8004A748 306200FF */  andi       $v0, $v1, 0xff
.L8004A74C:
/* F3C5C 8004A74C AFA20010 */  sw         $v0, 0x10($sp)
/* F3C60 8004A750 8E04000C */  lw         $a0, 0xc($s0)
/* F3C64 8004A754 240500FF */  addiu      $a1, $zero, 0xff
/* F3C68 8004A758 240600FF */  addiu      $a2, $zero, 0xff
/* F3C6C 8004A75C 0C028E41 */  jal        func_800A3904
/* F3C70 8004A760 240700FF */   addiu     $a3, $zero, 0xff
/* F3C74 8004A764 8E04000C */  lw         $a0, 0xc($s0)
/* F3C78 8004A768 0C028A40 */  jal        func_800A2900
/* F3C7C 8004A76C 00000000 */   nop
.L8004A770:
/* F3C80 8004A770 3C038015 */  lui        $v1, %hi(D_80149F90)
/* F3C84 8004A774 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* F3C88 8004A778 2402003C */  addiu      $v0, $zero, 0x3c
/* F3C8C 8004A77C 0043001A */  div        $zero, $v0, $v1
/* F3C90 8004A780 14600002 */  bnez       $v1, .L8004A78C
/* F3C94 8004A784 00000000 */   nop
/* F3C98 8004A788 0007000D */  break      7
.L8004A78C:
/* F3C9C 8004A78C 2401FFFF */   addiu     $at, $zero, -1
/* F3CA0 8004A790 14610004 */  bne        $v1, $at, .L8004A7A4
/* F3CA4 8004A794 3C018000 */   lui       $at, 0x8000
/* F3CA8 8004A798 14410002 */  bne        $v0, $at, .L8004A7A4
/* F3CAC 8004A79C 00000000 */   nop
/* F3CB0 8004A7A0 0006000D */  break      6
.L8004A7A4:
/* F3CB4 8004A7A4 00001012 */   mflo      $v0
/* F3CB8 8004A7A8 3C048007 */  lui        $a0, %hi(D_8006C564)
/* F3CBC 8004A7AC 8C84C564 */  lw         $a0, %lo(D_8006C564)($a0)
/* F3CC0 8004A7B0 00021840 */  sll        $v1, $v0, 1
/* F3CC4 8004A7B4 00621821 */  addu       $v1, $v1, $v0
/* F3CC8 8004A7B8 00031880 */  sll        $v1, $v1, 2
/* F3CCC 8004A7BC 0083202A */  slt        $a0, $a0, $v1
/* F3CD0 8004A7C0 14800022 */  bnez       $a0, .L8004A84C
/* F3CD4 8004A7C4 00001021 */   addu      $v0, $zero, $zero
/* F3CD8 8004A7C8 3402FFFF */  ori        $v0, $zero, 0xffff
/* F3CDC 8004A7CC 08012A12 */  j          .L8004A848
/* F3CE0 8004A7D0 A6A2001C */   sh        $v0, 0x1c($s5)
.L8004A7D4:
/* F3CE4 8004A7D4 0C026E5D */  jal        func_8009B974
/* F3CE8 8004A7D8 24040001 */   addiu     $a0, $zero, 1
/* F3CEC 8004A7DC 0C00E339 */  jal        func_80038CE4_E21F4
/* F3CF0 8004A7E0 00000000 */   nop
/* F3CF4 8004A7E4 3402FFFE */  ori        $v0, $zero, 0xfffe
/* F3CF8 8004A7E8 08012A12 */  j          .L8004A848
/* F3CFC 8004A7EC A6A2001C */   sh        $v0, 0x1c($s5)
.L8004A7F0:
/* F3D00 8004A7F0 0C02A5AF */  jal        func_800A96BC
/* F3D04 8004A7F4 24040001 */   addiu     $a0, $zero, 1
/* F3D08 8004A7F8 3C048007 */  lui        $a0, %hi(D_8006C060)
/* F3D0C 8004A7FC 0C029393 */  jal        func_800A4E4C
/* F3D10 8004A800 8C84C060 */   lw        $a0, %lo(D_8006C060)($a0)
/* F3D14 8004A804 3C048007 */  lui        $a0, %hi(D_8006C064)
/* F3D18 8004A808 0C029393 */  jal        func_800A4E4C
/* F3D1C 8004A80C 8C84C064 */   lw        $a0, %lo(D_8006C064)($a0)
/* F3D20 8004A810 3C048007 */  lui        $a0, %hi(D_8006C068)
/* F3D24 8004A814 0C029393 */  jal        func_800A4E4C
/* F3D28 8004A818 8C84C068 */   lw        $a0, %lo(D_8006C068)($a0)
/* F3D2C 8004A81C 0C00D7F4 */  jal        func_80035FD0_DF4E0
/* F3D30 8004A820 00000000 */   nop
/* F3D34 8004A824 0C0E5C60 */  jal        func_80397180
/* F3D38 8004A828 00000000 */   nop
/* F3D3C 8004A82C 0C0E6500 */  jal        func_80399400
/* F3D40 8004A830 00000000 */   nop
/* F3D44 8004A834 24030001 */  addiu      $v1, $zero, 1
/* F3D48 8004A838 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* F3D4C 8004A83C A023C3C8 */  sb         $v1, %lo(D_8006C3C8)($at)
/* F3D50 8004A840 08012A13 */  j          .L8004A84C
/* F3D54 8004A844 24020001 */   addiu     $v0, $zero, 1
.L8004A848:
/* F3D58 8004A848 00001021 */  addu       $v0, $zero, $zero
.L8004A84C:
/* F3D5C 8004A84C 8FBF0130 */  lw         $ra, 0x130($sp)
/* F3D60 8004A850 8FB7012C */  lw         $s7, 0x12c($sp)
/* F3D64 8004A854 8FB60128 */  lw         $s6, 0x128($sp)
/* F3D68 8004A858 8FB50124 */  lw         $s5, 0x124($sp)
/* F3D6C 8004A85C 8FB40120 */  lw         $s4, 0x120($sp)
/* F3D70 8004A860 8FB3011C */  lw         $s3, 0x11c($sp)
/* F3D74 8004A864 8FB20118 */  lw         $s2, 0x118($sp)
/* F3D78 8004A868 8FB10114 */  lw         $s1, 0x114($sp)
/* F3D7C 8004A86C 8FB00110 */  lw         $s0, 0x110($sp)
/* F3D80 8004A870 D7B80148 */  ldc1       $f24, 0x148($sp)
/* F3D84 8004A874 D7B60140 */  ldc1       $f22, 0x140($sp)
/* F3D88 8004A878 D7B40138 */  ldc1       $f20, 0x138($sp)
/* F3D8C 8004A87C 03E00008 */  jr         $ra
/* F3D90 8004A880 27BD0150 */   addiu     $sp, $sp, 0x150

glabel func_8004A884_F3D94
/* F3D94 8004A884 3C028007 */  lui        $v0, %hi(D_800691B0)
/* F3D98 8004A888 904291B0 */  lbu        $v0, %lo(D_800691B0)($v0)
/* F3D9C 8004A88C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F3DA0 8004A890 1040000D */  beqz       $v0, .L8004A8C8
/* F3DA4 8004A894 AFBF0010 */   sw        $ra, 0x10($sp)
/* F3DA8 8004A898 3C048004 */  lui        $a0, %hi(func_80047090_F05A0)
/* F3DAC 8004A89C 24847090 */  addiu      $a0, $a0, %lo(func_80047090_F05A0)
/* F3DB0 8004A8A0 00002821 */  addu       $a1, $zero, $zero
/* F3DB4 8004A8A4 2406012C */  addiu      $a2, $zero, 0x12c
/* F3DB8 8004A8A8 3C018007 */  lui        $at, %hi(D_8006C3C8)
/* F3DBC 8004A8AC A020C3C8 */  sb         $zero, %lo(D_8006C3C8)($at)
/* F3DC0 8004A8B0 0C025D06 */  jal        func_80097418
/* F3DC4 8004A8B4 00003821 */   addu      $a3, $zero, $zero
/* F3DC8 8004A8B8 0C02A5D2 */  jal        func_800A9748
/* F3DCC 8004A8BC 24040001 */   addiu     $a0, $zero, 1
/* F3DD0 8004A8C0 3C018007 */  lui        $at, %hi(D_800691B0)
/* F3DD4 8004A8C4 A02091B0 */  sb         $zero, %lo(D_800691B0)($at)
.L8004A8C8:
/* F3DD8 8004A8C8 3C038007 */  lui        $v1, %hi(D_8006C3C8)
/* F3DDC 8004A8CC 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8)($v1)
/* F3DE0 8004A8D0 24020001 */  addiu      $v0, $zero, 1
/* F3DE4 8004A8D4 14620005 */  bne        $v1, $v0, .L8004A8EC
/* F3DE8 8004A8D8 00001021 */   addu      $v0, $zero, $zero
/* F3DEC 8004A8DC 24020001 */  addiu      $v0, $zero, 1
/* F3DF0 8004A8E0 3C018007 */  lui        $at, %hi(D_800691B0)
/* F3DF4 8004A8E4 A02291B0 */  sb         $v0, %lo(D_800691B0)($at)
/* F3DF8 8004A8E8 24020001 */  addiu      $v0, $zero, 1
.L8004A8EC:
/* F3DFC 8004A8EC 8FBF0010 */  lw         $ra, 0x10($sp)
/* F3E00 8004A8F0 03E00008 */  jr         $ra
/* F3E04 8004A8F4 27BD0018 */   addiu     $sp, $sp, 0x18
/* F3E08 8004A8F8 00000000 */  nop
/* F3E0C 8004A8FC 00000000 */  nop