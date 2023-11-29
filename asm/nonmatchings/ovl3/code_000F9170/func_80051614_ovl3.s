glabel func_80051614_ovl3
/* FAB24 80051614 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* FAB28 80051618 AFBF0050 */  sw         $ra, 0x50($sp)
/* FAB2C 8005161C AFB3004C */  sw         $s3, 0x4C($sp)
/* FAB30 80051620 AFB20048 */  sw         $s2, 0x48($sp)
/* FAB34 80051624 AFB10044 */  sw         $s1, 0x44($sp)
/* FAB38 80051628 AFB00040 */  sw         $s0, 0x40($sp)
/* FAB3C 8005162C 3C058007 */  lui        $a1, %hi(D_8006A220_ovl3)
/* FAB40 80051630 24A5A220 */  addiu      $a1, $a1, %lo(D_8006A220_ovl3)
/* FAB44 80051634 88A20000 */  lwl        $v0, 0x0($a1)
/* FAB48 80051638 98A20003 */  lwr        $v0, 0x3($a1)
/* FAB4C 8005163C 88A30004 */  lwl        $v1, 0x4($a1)
/* FAB50 80051640 98A30007 */  lwr        $v1, 0x7($a1)
/* FAB54 80051644 84A40008 */  lh         $a0, 0x8($a1)
/* FAB58 80051648 ABA20020 */  swl        $v0, 0x20($sp)
/* FAB5C 8005164C BBA20023 */  swr        $v0, 0x23($sp)
/* FAB60 80051650 ABA30024 */  swl        $v1, 0x24($sp)
/* FAB64 80051654 BBA30027 */  swr        $v1, 0x27($sp)
/* FAB68 80051658 A7A40028 */  sh         $a0, 0x28($sp)
/* FAB6C 8005165C 3C058007 */  lui        $a1, %hi(D_8006A22C_ovl3)
/* FAB70 80051660 24A5A22C */  addiu      $a1, $a1, %lo(D_8006A22C_ovl3)
/* FAB74 80051664 88A20000 */  lwl        $v0, 0x0($a1)
/* FAB78 80051668 98A20003 */  lwr        $v0, 0x3($a1)
/* FAB7C 8005166C 88A30004 */  lwl        $v1, 0x4($a1)
/* FAB80 80051670 98A30007 */  lwr        $v1, 0x7($a1)
/* FAB84 80051674 84A40008 */  lh         $a0, 0x8($a1)
/* FAB88 80051678 ABA20030 */  swl        $v0, 0x30($sp)
/* FAB8C 8005167C BBA20033 */  swr        $v0, 0x33($sp)
/* FAB90 80051680 ABA30034 */  swl        $v1, 0x34($sp)
/* FAB94 80051684 BBA30037 */  swr        $v1, 0x37($sp)
/* FAB98 80051688 A7A40038 */  sh         $a0, 0x38($sp)
/* FAB9C 8005168C 0C00E109 */  jal        func_80038424_ovl3
/* FABA0 80051690 24110007 */   addiu     $s1, $zero, 0x7
/* FABA4 80051694 3C048032 */  lui        $a0, (0x80326230 >> 16)
/* FABA8 80051698 34846230 */  ori        $a0, $a0, (0x80326230 & 0xFFFF)
/* FABAC 8005169C 2405024D */  addiu      $a1, $zero, 0x24D
/* FABB0 800516A0 24060002 */  addiu      $a2, $zero, 0x2
/* FABB4 800516A4 0C00D9E0 */  jal        func_80036780_ovl3
/* FABB8 800516A8 24070036 */   addiu     $a3, $zero, 0x36
/* FABBC 800516AC 00409821 */  addu       $s3, $v0, $zero
/* FABC0 800516B0 8E64000C */  lw         $a0, 0xC($s3)
/* FABC4 800516B4 24050040 */  addiu      $a1, $zero, 0x40
/* FABC8 800516B8 0C028D89 */  jal        func_800A3624
/* FABCC 800516BC 240600C0 */   addiu     $a2, $zero, 0xC0
/* FABD0 800516C0 8E63000C */  lw         $v1, 0xC($s3)
/* FABD4 800516C4 9462001E */  lhu        $v0, 0x1E($v1)
/* FABD8 800516C8 24040036 */  addiu      $a0, $zero, 0x36
/* FABDC 800516CC 24050037 */  addiu      $a1, $zero, 0x37
/* FABE0 800516D0 34420004 */  ori        $v0, $v0, 0x4
/* FABE4 800516D4 0C00DD19 */  jal        func_80037464_ovl3
/* FABE8 800516D8 A462001E */   sh        $v0, 0x1E($v1)
/* FABEC 800516DC 00409821 */  addu       $s3, $v0, $zero
/* FABF0 800516E0 8E64000C */  lw         $a0, 0xC($s3)
/* FABF4 800516E4 24050040 */  addiu      $a1, $zero, 0x40
/* FABF8 800516E8 0C028D89 */  jal        func_800A3624
/* FABFC 800516EC 240600C0 */   addiu     $a2, $zero, 0xC0
/* FAC00 800516F0 8E63000C */  lw         $v1, 0xC($s3)
/* FAC04 800516F4 9462001E */  lhu        $v0, 0x1E($v1)
/* FAC08 800516F8 34420004 */  ori        $v0, $v0, 0x4
/* FAC0C 800516FC A462001E */  sh         $v0, 0x1E($v1)
.L80051700_ovl3:
/* FAC10 80051700 8E64000C */  lw         $a0, 0xC($s3)
/* FAC14 80051704 323000FF */  andi       $s0, $s1, 0xFF
/* FAC18 80051708 02002821 */  addu       $a1, $s0, $zero
/* FAC1C 8005170C 0C00DE7C */  jal        func_800379F0_ovl3
/* FAC20 80051710 26310001 */   addiu     $s1, $s1, 0x1
/* FAC24 80051714 8E64000C */  lw         $a0, 0xC($s3)
/* FAC28 80051718 02002821 */  addu       $a1, $s0, $zero
/* FAC2C 8005171C 24420842 */  addiu      $v0, $v0, 0x842
/* FAC30 80051720 0C00DE6C */  jal        func_800379B0_ovl3
/* FAC34 80051724 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FAC38 80051728 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* FAC3C 8005172C 2C42000E */  sltiu      $v0, $v0, 0xE
/* FAC40 80051730 1440FFF3 */  bnez       $v0, .L80051700_ovl3
/* FAC44 80051734 27B00018 */   addiu     $s0, $sp, 0x18
/* FAC48 80051738 00008821 */  addu       $s1, $zero, $zero
/* FAC4C 8005173C 2624024F */  addiu      $a0, $s1, 0x24F
.L80051740_ovl3:
/* FAC50 80051740 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* FAC54 80051744 24050002 */  addiu      $a1, $zero, 0x2
/* FAC58 80051748 26260025 */  addiu      $a2, $s1, 0x25
/* FAC5C 8005174C 0C00D925 */  jal        func_80036494_ovl3
/* FAC60 80051750 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* FAC64 80051754 3223FFFF */  andi       $v1, $s1, 0xFFFF
/* FAC68 80051758 00031840 */  sll        $v1, $v1, 1
/* FAC6C 8005175C 00701821 */  addu       $v1, $v1, $s0
/* FAC70 80051760 94650008 */  lhu        $a1, 0x8($v1)
/* FAC74 80051764 00409821 */  addu       $s3, $v0, $zero
/* FAC78 80051768 8E64000C */  lw         $a0, 0xC($s3)
/* FAC7C 8005176C 94660018 */  lhu        $a2, 0x18($v1)
/* FAC80 80051770 24A50010 */  addiu      $a1, $a1, 0x10
/* FAC84 80051774 00052C80 */  sll        $a1, $a1, 18
/* FAC88 80051778 00052C03 */  sra        $a1, $a1, 16
/* FAC8C 8005177C 24C60030 */  addiu      $a2, $a2, 0x30
/* FAC90 80051780 00063480 */  sll        $a2, $a2, 18
/* FAC94 80051784 0C028D89 */  jal        func_800A3624
/* FAC98 80051788 00063403 */   sra       $a2, $a2, 16
/* FAC9C 8005178C 8E63000C */  lw         $v1, 0xC($s3)
/* FACA0 80051790 9462001E */  lhu        $v0, 0x1E($v1)
/* FACA4 80051794 26310001 */  addiu      $s1, $s1, 0x1
/* FACA8 80051798 34420004 */  ori        $v0, $v0, 0x4
/* FACAC 8005179C A462001E */  sh         $v0, 0x1E($v1)
/* FACB0 800517A0 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* FACB4 800517A4 2C420005 */  sltiu      $v0, $v0, 0x5
/* FACB8 800517A8 1440FFE5 */  bnez       $v0, .L80051740_ovl3
/* FACBC 800517AC 2624024F */   addiu     $a0, $s1, 0x24F
/* FACC0 800517B0 27A40018 */  addiu      $a0, $sp, 0x18
/* FACC4 800517B4 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FACC8 800517B8 24060002 */  addiu      $a2, $zero, 0x2
/* FACCC 800517BC 3C028007 */  lui        $v0, %hi(D_8006952C_ovl3)
/* FACD0 800517C0 2442952C */  addiu      $v0, $v0, %lo(D_8006952C_ovl3)
/* FACD4 800517C4 2412FFFE */  addiu      $s2, $zero, -0x2
/* FACD8 800517C8 24110001 */  addiu      $s1, $zero, 0x1
/* FACDC 800517CC 24100003 */  addiu      $s0, $zero, 0x3
/* FACE0 800517D0 AFA20018 */  sw         $v0, 0x18($sp)
/* FACE4 800517D4 A3B2001C */  sb         $s2, 0x1C($sp)
/* FACE8 800517D8 A3A0001D */  sb         $zero, 0x1D($sp)
/* FACEC 800517DC A3B1001E */  sb         $s1, 0x1E($sp)
/* FACF0 800517E0 0C00DE82 */  jal        func_80037A08_ovl3
/* FACF4 800517E4 A3B0001F */   sb        $s0, 0x1F($sp)
/* FACF8 800517E8 24040254 */  addiu      $a0, $zero, 0x254
/* FACFC 800517EC 24050002 */  addiu      $a1, $zero, 0x2
/* FAD00 800517F0 0C00D925 */  jal        func_80036494_ovl3
/* FAD04 800517F4 24060038 */   addiu     $a2, $zero, 0x38
/* FAD08 800517F8 8C44000C */  lw         $a0, 0xC($v0)
/* FAD0C 800517FC 24050040 */  addiu      $a1, $zero, 0x40
/* FAD10 80051800 0C028D89 */  jal        func_800A3624
/* FAD14 80051804 240600C0 */   addiu     $a2, $zero, 0xC0
/* FAD18 80051808 24040257 */  addiu      $a0, $zero, 0x257
/* FAD1C 8005180C 24050002 */  addiu      $a1, $zero, 0x2
/* FAD20 80051810 0C00D925 */  jal        func_80036494_ovl3
/* FAD24 80051814 24060039 */   addiu     $a2, $zero, 0x39
/* FAD28 80051818 00409821 */  addu       $s3, $v0, $zero
/* FAD2C 8005181C 8E64000C */  lw         $a0, 0xC($s3)
/* FAD30 80051820 8C82000C */  lw         $v0, 0xC($a0)
/* FAD34 80051824 94450000 */  lhu        $a1, 0x0($v0)
/* FAD38 80051828 94460002 */  lhu        $a2, 0x2($v0)
/* FAD3C 8005182C 00052842 */  srl        $a1, $a1, 1
/* FAD40 80051830 0C02912A */  jal        func_800A44A8
/* FAD44 80051834 00063042 */   srl       $a2, $a2, 1
/* FAD48 80051838 8E64000C */  lw         $a0, 0xC($s3)
/* FAD4C 8005183C 240501D0 */  addiu      $a1, $zero, 0x1D0
/* FAD50 80051840 0C028D89 */  jal        func_800A3624
/* FAD54 80051844 24060280 */   addiu     $a2, $zero, 0x280
/* FAD58 80051848 8E64000C */  lw         $a0, 0xC($s3)
/* FAD5C 8005184C 24050002 */  addiu      $a1, $zero, 0x2
/* FAD60 80051850 0C00DE6C */  jal        func_800379B0_ovl3
/* FAD64 80051854 24060886 */   addiu     $a2, $zero, 0x886
/* FAD68 80051858 8E63000C */  lw         $v1, 0xC($s3)
/* FAD6C 8005185C 24040257 */  addiu      $a0, $zero, 0x257
/* FAD70 80051860 9462001E */  lhu        $v0, 0x1E($v1)
/* FAD74 80051864 24050002 */  addiu      $a1, $zero, 0x2
/* FAD78 80051868 2406003A */  addiu      $a2, $zero, 0x3A
/* FAD7C 8005186C 34420004 */  ori        $v0, $v0, 0x4
/* FAD80 80051870 0C00D925 */  jal        func_80036494_ovl3
/* FAD84 80051874 A462001E */   sh        $v0, 0x1E($v1)
/* FAD88 80051878 00409821 */  addu       $s3, $v0, $zero
/* FAD8C 8005187C 8E64000C */  lw         $a0, 0xC($s3)
/* FAD90 80051880 8C82000C */  lw         $v0, 0xC($a0)
/* FAD94 80051884 94450000 */  lhu        $a1, 0x0($v0)
/* FAD98 80051888 94460002 */  lhu        $a2, 0x2($v0)
/* FAD9C 8005188C 00052842 */  srl        $a1, $a1, 1
/* FADA0 80051890 0C02912A */  jal        func_800A44A8
/* FADA4 80051894 00063042 */   srl       $a2, $a2, 1
/* FADA8 80051898 8E64000C */  lw         $a0, 0xC($s3)
/* FADAC 8005189C 240501D0 */  addiu      $a1, $zero, 0x1D0
/* FADB0 800518A0 0C028D89 */  jal        func_800A3624
/* FADB4 800518A4 24060280 */   addiu     $a2, $zero, 0x280
/* FADB8 800518A8 8E64000C */  lw         $a0, 0xC($s3)
/* FADBC 800518AC 24050002 */  addiu      $a1, $zero, 0x2
/* FADC0 800518B0 0C00DE6C */  jal        func_800379B0_ovl3
/* FADC4 800518B4 24060886 */   addiu     $a2, $zero, 0x886
/* FADC8 800518B8 24020080 */  addiu      $v0, $zero, 0x80
/* FADCC 800518BC AFA20010 */  sw         $v0, 0x10($sp)
/* FADD0 800518C0 8E64000C */  lw         $a0, 0xC($s3)
/* FADD4 800518C4 240500FF */  addiu      $a1, $zero, 0xFF
/* FADD8 800518C8 240600FF */  addiu      $a2, $zero, 0xFF
/* FADDC 800518CC 0C028E41 */  jal        func_800A3904
/* FADE0 800518D0 240700FF */   addiu     $a3, $zero, 0xFF
/* FADE4 800518D4 8E63000C */  lw         $v1, 0xC($s3)
/* FADE8 800518D8 24040256 */  addiu      $a0, $zero, 0x256
/* FADEC 800518DC 9462001E */  lhu        $v0, 0x1E($v1)
/* FADF0 800518E0 24050002 */  addiu      $a1, $zero, 0x2
/* FADF4 800518E4 2406003B */  addiu      $a2, $zero, 0x3B
/* FADF8 800518E8 34420004 */  ori        $v0, $v0, 0x4
/* FADFC 800518EC 0C00D925 */  jal        func_80036494_ovl3
/* FAE00 800518F0 A462001E */   sh        $v0, 0x1E($v1)
/* FAE04 800518F4 8C44000C */  lw         $a0, 0xC($v0)
/* FAE08 800518F8 240502C0 */  addiu      $a1, $zero, 0x2C0
/* FAE0C 800518FC 0C028D89 */  jal        func_800A3624
/* FAE10 80051900 240600C0 */   addiu     $a2, $zero, 0xC0
/* FAE14 80051904 24040255 */  addiu      $a0, $zero, 0x255
/* FAE18 80051908 24050002 */  addiu      $a1, $zero, 0x2
/* FAE1C 8005190C 0C00D925 */  jal        func_80036494_ovl3
/* FAE20 80051910 2406003C */   addiu     $a2, $zero, 0x3C
/* FAE24 80051914 8C44000C */  lw         $a0, 0xC($v0)
/* FAE28 80051918 24050040 */  addiu      $a1, $zero, 0x40
/* FAE2C 8005191C 0C028D89 */  jal        func_800A3624
/* FAE30 80051920 240601C0 */   addiu     $a2, $zero, 0x1C0
/* FAE34 80051924 27A40018 */  addiu      $a0, $sp, 0x18
/* FAE38 80051928 240520CA */  addiu      $a1, $zero, 0x20CA
/* FAE3C 8005192C 24060002 */  addiu      $a2, $zero, 0x2
/* FAE40 80051930 3C028007 */  lui        $v0, %hi(D_80069540_ovl3)
/* FAE44 80051934 24429540 */  addiu      $v0, $v0, %lo(D_80069540_ovl3)
/* FAE48 80051938 AFA20018 */  sw         $v0, 0x18($sp)
/* FAE4C 8005193C A3B2001C */  sb         $s2, 0x1C($sp)
/* FAE50 80051940 A3A0001D */  sb         $zero, 0x1D($sp)
/* FAE54 80051944 A3B1001E */  sb         $s1, 0x1E($sp)
/* FAE58 80051948 0C00DE82 */  jal        func_80037A08_ovl3
/* FAE5C 8005194C A3B0001F */   sb        $s0, 0x1F($sp)
/* FAE60 80051950 8FBF0050 */  lw         $ra, 0x50($sp)
/* FAE64 80051954 8FB3004C */  lw         $s3, 0x4C($sp)
/* FAE68 80051958 8FB20048 */  lw         $s2, 0x48($sp)
/* FAE6C 8005195C 8FB10044 */  lw         $s1, 0x44($sp)
/* FAE70 80051960 8FB00040 */  lw         $s0, 0x40($sp)
/* FAE74 80051964 03E00008 */  jr         $ra
/* FAE78 80051968 27BD0058 */   addiu     $sp, $sp, 0x58
.size func_80051614_ovl3, . - func_80051614_ovl3
