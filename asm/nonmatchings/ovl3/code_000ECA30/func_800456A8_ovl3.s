glabel func_800456A8_ovl3
/* EEBB8 800456A8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* EEBBC 800456AC AFBF0070 */  sw         $ra, 0x70($sp)
/* EEBC0 800456B0 AFB5006C */  sw         $s5, 0x6C($sp)
/* EEBC4 800456B4 AFB40068 */  sw         $s4, 0x68($sp)
/* EEBC8 800456B8 AFB30064 */  sw         $s3, 0x64($sp)
/* EEBCC 800456BC AFB20060 */  sw         $s2, 0x60($sp)
/* EEBD0 800456C0 AFB1005C */  sw         $s1, 0x5C($sp)
/* EEBD4 800456C4 AFB00058 */  sw         $s0, 0x58($sp)
/* EEBD8 800456C8 F7B40078 */  sdc1       $f20, 0x78($sp)
/* EEBDC 800456CC 0C00E109 */  jal        func_80038424_ovl3
/* EEBE0 800456D0 0000A021 */   addu      $s4, $zero, $zero
/* EEBE4 800456D4 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EEBE8 800456D8 24040022 */   addiu     $a0, $zero, 0x22
/* EEBEC 800456DC 00408021 */  addu       $s0, $v0, $zero
/* EEBF0 800456E0 3C01BF63 */  lui        $at, (0xBF63D70A >> 16)
/* EEBF4 800456E4 3421D70A */  ori        $at, $at, (0xBF63D70A & 0xFFFF)
/* EEBF8 800456E8 44810000 */  mtc1       $at, $f0
/* EEBFC 800456EC 3C01C1A8 */  lui        $at, (0xC1A80000 >> 16)
/* EEC00 800456F0 44811000 */  mtc1       $at, $f2
/* EEC04 800456F4 3C014170 */  lui        $at, (0x41700000 >> 16)
/* EEC08 800456F8 44812000 */  mtc1       $at, $f4
/* EEC0C 800456FC 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* EEC10 80045700 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* EEC14 80045704 44813000 */  mtc1       $at, $f6
/* EEC18 80045708 3C01418A */  lui        $at, (0x418A51EC >> 16)
/* EEC1C 8004570C 342151EC */  ori        $at, $at, (0x418A51EC & 0xFFFF)
/* EEC20 80045710 44814000 */  mtc1       $at, $f8
/* EEC24 80045714 02002021 */  addu       $a0, $s0, $zero
/* EEC28 80045718 2405008C */  addiu      $a1, $zero, 0x8C
/* EEC2C 8004571C 240200FF */  addiu      $v0, $zero, 0xFF
/* EEC30 80045720 A6020074 */  sh         $v0, 0x74($s0)
/* EEC34 80045724 A6020076 */  sh         $v0, 0x76($s0)
/* EEC38 80045728 A6020078 */  sh         $v0, 0x78($s0)
/* EEC3C 8004572C A602007A */  sh         $v0, 0x7A($s0)
/* EEC40 80045730 2402FFFF */  addiu      $v0, $zero, -0x1
/* EEC44 80045734 AE000020 */  sw         $zero, 0x20($s0)
/* EEC48 80045738 AE000024 */  sw         $zero, 0x24($s0)
/* EEC4C 8004573C A6020070 */  sh         $v0, 0x70($s0)
/* EEC50 80045740 E6000010 */  swc1       $f0, 0x10($s0)
/* EEC54 80045744 E6020014 */  swc1       $f2, 0x14($s0)
/* EEC58 80045748 E6040018 */  swc1       $f4, 0x18($s0)
/* EEC5C 8004574C E6060028 */  swc1       $f6, 0x28($s0)
/* EEC60 80045750 0C00DFE6 */  jal        func_80037F98_ovl3
/* EEC64 80045754 E608001C */   swc1      $f8, 0x1C($s0)
/* EEC68 80045758 8E020004 */  lw         $v0, 0x4($s0)
/* EEC6C 8004575C A0400067 */  sb         $zero, 0x67($v0)
/* EEC70 80045760 8E030004 */  lw         $v1, 0x4($s0)
/* EEC74 80045764 90620066 */  lbu        $v0, 0x66($v1)
/* EEC78 80045768 34420007 */  ori        $v0, $v0, 0x7
/* EEC7C 8004576C A0620066 */  sb         $v0, 0x66($v1)
/* EEC80 80045770 8E040004 */  lw         $a0, 0x4($s0)
/* EEC84 80045774 3C058007 */  lui        $a1, %hi(D_8006A094_ovl3)
/* EEC88 80045778 0C0284DC */  jal        func_800A1370
/* EEC8C 8004577C 24A5A094 */   addiu     $a1, $a1, %lo(D_8006A094_ovl3)
/* EEC90 80045780 8E040004 */  lw         $a0, 0x4($s0)
/* EEC94 80045784 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* EEC98 80045788 0C02869D */  jal        func_800A1A74
/* EEC9C 8004578C 00003021 */   addu      $a2, $zero, $zero
/* EECA0 80045790 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* EECA4 80045794 4481A000 */  mtc1       $at, $f20
/* EECA8 80045798 3C014012 */  lui        $at, (0x40128F5C >> 16)
/* EECAC 8004579C 34218F5C */  ori        $at, $at, (0x40128F5C & 0xFFFF)
/* EECB0 800457A0 44810000 */  mtc1       $at, $f0
/* EECB4 800457A4 3C01428B */  lui        $at, (0x428B2E14 >> 16)
/* EECB8 800457A8 34212E14 */  ori        $at, $at, (0x428B2E14 & 0xFFFF)
/* EECBC 800457AC 44811000 */  mtc1       $at, $f2
/* EECC0 800457B0 3C01C26F */  lui        $at, (0xC26F70A4 >> 16)
/* EECC4 800457B4 342170A4 */  ori        $at, $at, (0xC26F70A4 & 0xFFFF)
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
/* EED1C 8004580C 0C00E339 */  jal        func_80038CE4_ovl3
/* EED20 80045810 24100001 */   addiu     $s0, $zero, 0x1
/* EED24 80045814 00002021 */  addu       $a0, $zero, $zero
/* EED28 80045818 24050188 */  addiu      $a1, $zero, 0x188
/* EED2C 8004581C 24060006 */  addiu      $a2, $zero, 0x6
/* EED30 80045820 24070003 */  addiu      $a3, $zero, 0x3
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
/* EED6C 8004585C 0C00DB46 */  jal        func_80036D18_ovl3
/* EED70 80045860 AFA20014 */   sw        $v0, 0x14($sp)
/* EED74 80045864 00409821 */  addu       $s3, $v0, $zero
/* EED78 80045868 8E64000C */  lw         $a0, 0xC($s3)
/* EED7C 8004586C 3C074040 */  lui        $a3, (0x40400000 >> 16)
/* EED80 80045870 4406A000 */  mfc1       $a2, $f20
/* EED84 80045874 00000000 */  nop
/* EED88 80045878 0C02915B */  jal        func_800A456C
/* EED8C 8004587C 00002821 */   addu      $a1, $zero, $zero
/* EED90 80045880 8E64000C */  lw         $a0, 0xC($s3)
/* EED94 80045884 24050040 */  addiu      $a1, $zero, 0x40
/* EED98 80045888 0C028D89 */  jal        func_800A3624
/* EED9C 8004588C 24060040 */   addiu     $a2, $zero, 0x40
/* EEDA0 80045890 8E63000C */  lw         $v1, 0xC($s3)
/* EEDA4 80045894 9462001E */  lhu        $v0, 0x1E($v1)
/* EEDA8 80045898 24040189 */  addiu      $a0, $zero, 0x189
/* EEDAC 8004589C 24050002 */  addiu      $a1, $zero, 0x2
/* EEDB0 800458A0 34420104 */  ori        $v0, $v0, 0x104
/* EEDB4 800458A4 A462001E */  sh         $v0, 0x1E($v1)
/* EEDB8 800458A8 8E62000C */  lw         $v0, 0xC($s3)
/* EEDBC 800458AC 24060035 */  addiu      $a2, $zero, 0x35
/* EEDC0 800458B0 0C00D925 */  jal        func_80036494_ovl3
/* EEDC4 800458B4 A450001C */   sh        $s0, 0x1C($v0)
/* EEDC8 800458B8 00409821 */  addu       $s3, $v0, $zero
/* EEDCC 800458BC 8E64000C */  lw         $a0, 0xC($s3)
/* EEDD0 800458C0 24050130 */  addiu      $a1, $zero, 0x130
/* EEDD4 800458C4 0C028D89 */  jal        func_800A3624
/* EEDD8 800458C8 24060140 */   addiu     $a2, $zero, 0x140
/* EEDDC 800458CC 8E63000C */  lw         $v1, 0xC($s3)
/* EEDE0 800458D0 9462001E */  lhu        $v0, 0x1E($v1)
/* EEDE4 800458D4 24040189 */  addiu      $a0, $zero, 0x189
/* EEDE8 800458D8 34420104 */  ori        $v0, $v0, 0x104
/* EEDEC 800458DC A462001E */  sh         $v0, 0x1E($v1)
/* EEDF0 800458E0 8E62000C */  lw         $v0, 0xC($s3)
/* EEDF4 800458E4 24050002 */  addiu      $a1, $zero, 0x2
/* EEDF8 800458E8 24060036 */  addiu      $a2, $zero, 0x36
/* EEDFC 800458EC 0C00D925 */  jal        func_80036494_ovl3
/* EEE00 800458F0 A450001C */   sh        $s0, 0x1C($v0)
/* EEE04 800458F4 00409821 */  addu       $s3, $v0, $zero
/* EEE08 800458F8 8E64000C */  lw         $a0, 0xC($s3)
/* EEE0C 800458FC 240503B0 */  addiu      $a1, $zero, 0x3B0
/* EEE10 80045900 0C028D89 */  jal        func_800A3624
/* EEE14 80045904 240600B8 */   addiu     $a2, $zero, 0xB8
/* EEE18 80045908 8E63000C */  lw         $v1, 0xC($s3)
/* EEE1C 8004590C 9462001E */  lhu        $v0, 0x1E($v1)
/* EEE20 80045910 24040183 */  addiu      $a0, $zero, 0x183
/* EEE24 80045914 34420104 */  ori        $v0, $v0, 0x104
/* EEE28 80045918 A462001E */  sh         $v0, 0x1E($v1)
/* EEE2C 8004591C 8E62000C */  lw         $v0, 0xC($s3)
/* EEE30 80045920 24050002 */  addiu      $a1, $zero, 0x2
/* EEE34 80045924 24060023 */  addiu      $a2, $zero, 0x23
/* EEE38 80045928 0C00D925 */  jal        func_80036494_ovl3
/* EEE3C 8004592C A450001C */   sh        $s0, 0x1C($v0)
/* EEE40 80045930 8C44000C */  lw         $a0, 0xC($v0)
/* EEE44 80045934 24050040 */  addiu      $a1, $zero, 0x40
/* EEE48 80045938 0C028D89 */  jal        func_800A3624
/* EEE4C 8004593C 24060040 */   addiu     $a2, $zero, 0x40
/* EEE50 80045940 24040185 */  addiu      $a0, $zero, 0x185
/* EEE54 80045944 24050002 */  addiu      $a1, $zero, 0x2
/* EEE58 80045948 0C00D925 */  jal        func_80036494_ovl3
/* EEE5C 8004594C 2406002C */   addiu     $a2, $zero, 0x2C
/* EEE60 80045950 8C44000C */  lw         $a0, 0xC($v0)
/* EEE64 80045954 24050040 */  addiu      $a1, $zero, 0x40
/* EEE68 80045958 0C028D89 */  jal        func_800A3624
/* EEE6C 8004595C 240602AC */   addiu     $a2, $zero, 0x2AC
/* EEE70 80045960 24040184 */  addiu      $a0, $zero, 0x184
.L80045964_ovl3:
/* EEE74 80045964 24050002 */  addiu      $a1, $zero, 0x2
/* EEE78 80045968 329100FF */  andi       $s1, $s4, 0xFF
/* EEE7C 8004596C 0C00D925 */  jal        func_80036494_ovl3
/* EEE80 80045970 26260024 */   addiu     $a2, $s1, 0x24
/* EEE84 80045974 8C44000C */  lw         $a0, 0xC($v0)
/* EEE88 80045978 328200FF */  andi       $v0, $s4, 0xFF
/* EEE8C 8004597C 00028080 */  sll        $s0, $v0, 2
/* EEE90 80045980 02028021 */  addu       $s0, $s0, $v0
/* EEE94 80045984 00108080 */  sll        $s0, $s0, 2
/* EEE98 80045988 02028021 */  addu       $s0, $s0, $v0
/* EEE9C 8004598C 00108040 */  sll        $s0, $s0, 1
/* EEEA0 80045990 26050027 */  addiu      $a1, $s0, 0x27
/* EEEA4 80045994 00052C80 */  sll        $a1, $a1, 18
/* EEEA8 80045998 00052C03 */  sra        $a1, $a1, 16
/* EEEAC 8004599C 24060040 */  addiu      $a2, $zero, 0x40
/* EEEB0 800459A0 0C028D89 */  jal        func_800A3624
/* EEEB4 800459A4 26940001 */   addiu     $s4, $s4, 0x1
/* EEEB8 800459A8 24040186 */  addiu      $a0, $zero, 0x186
/* EEEBC 800459AC 24050002 */  addiu      $a1, $zero, 0x2
/* EEEC0 800459B0 0C00D925 */  jal        func_80036494_ovl3
/* EEEC4 800459B4 2626002D */   addiu     $a2, $s1, 0x2D
/* EEEC8 800459B8 8C44000C */  lw         $a0, 0xC($v0)
/* EEECC 800459BC 2610004C */  addiu      $s0, $s0, 0x4C
/* EEED0 800459C0 00108480 */  sll        $s0, $s0, 18
/* EEED4 800459C4 00102C03 */  sra        $a1, $s0, 16
/* EEED8 800459C8 0C028D89 */  jal        func_800A3624
/* EEEDC 800459CC 240602AC */   addiu     $a2, $zero, 0x2AC
/* EEEE0 800459D0 328200FF */  andi       $v0, $s4, 0xFF
/* EEEE4 800459D4 2C420007 */  sltiu      $v0, $v0, 0x7
/* EEEE8 800459D8 1440FFE2 */  bnez       $v0, .L80045964_ovl3
/* EEEEC 800459DC 24040184 */   addiu     $a0, $zero, 0x184
/* EEEF0 800459E0 24040187 */  addiu      $a0, $zero, 0x187
/* EEEF4 800459E4 24050002 */  addiu      $a1, $zero, 0x2
/* EEEF8 800459E8 0C00D925 */  jal        func_80036494_ovl3
/* EEEFC 800459EC 24060022 */   addiu     $a2, $zero, 0x22
/* EEF00 800459F0 00409821 */  addu       $s3, $v0, $zero
/* EEF04 800459F4 8E64000C */  lw         $a0, 0xC($s3)
/* EEF08 800459F8 24050340 */  addiu      $a1, $zero, 0x340
/* EEF0C 800459FC 0C028D89 */  jal        func_800A3624
/* EEF10 80045A00 240601B8 */   addiu     $a2, $zero, 0x1B8
/* EEF14 80045A04 8E63000C */  lw         $v1, 0xC($s3)
/* EEF18 80045A08 9462001E */  lhu        $v0, 0x1E($v1)
/* EEF1C 80045A0C 24040023 */  addiu      $a0, $zero, 0x23
/* EEF20 80045A10 240530C9 */  addiu      $a1, $zero, 0x30C9
/* EEF24 80045A14 34420004 */  ori        $v0, $v0, 0x4
/* EEF28 80045A18 0C00DD19 */  jal        func_80037464_ovl3
/* EEF2C 80045A1C A462001E */   sh        $v0, 0x1E($v1)
/* EEF30 80045A20 00409821 */  addu       $s3, $v0, $zero
/* EEF34 80045A24 8E64000C */  lw         $a0, 0xC($s3)
/* EEF38 80045A28 24050038 */  addiu      $a1, $zero, 0x38
/* EEF3C 80045A2C 0C028D89 */  jal        func_800A3624
/* EEF40 80045A30 24060040 */   addiu     $a2, $zero, 0x40
/* EEF44 80045A34 24100001 */  addiu      $s0, $zero, 0x1
/* EEF48 80045A38 AFB00010 */  sw         $s0, 0x10($sp)
/* EEF4C 80045A3C 8E64000C */  lw         $a0, 0xC($s3)
/* EEF50 80045A40 240500FF */  addiu      $a1, $zero, 0xFF
/* EEF54 80045A44 240600FF */  addiu      $a2, $zero, 0xFF
/* EEF58 80045A48 0C028E41 */  jal        func_800A3904
/* EEF5C 80045A4C 240700FF */   addiu     $a3, $zero, 0xFF
/* EEF60 80045A50 8E62000C */  lw         $v0, 0xC($s3)
/* EEF64 80045A54 24040023 */  addiu      $a0, $zero, 0x23
/* EEF68 80045A58 240530CA */  addiu      $a1, $zero, 0x30CA
/* EEF6C 80045A5C 0C00DD19 */  jal        func_80037464_ovl3
/* EEF70 80045A60 A440001C */   sh        $zero, 0x1C($v0)
/* EEF74 80045A64 00409821 */  addu       $s3, $v0, $zero
/* EEF78 80045A68 8E64000C */  lw         $a0, 0xC($s3)
/* EEF7C 80045A6C 24050048 */  addiu      $a1, $zero, 0x48
/* EEF80 80045A70 0C028D89 */  jal        func_800A3624
/* EEF84 80045A74 24060040 */   addiu     $a2, $zero, 0x40
/* EEF88 80045A78 AFB00010 */  sw         $s0, 0x10($sp)
/* EEF8C 80045A7C 8E64000C */  lw         $a0, 0xC($s3)
/* EEF90 80045A80 240500FF */  addiu      $a1, $zero, 0xFF
/* EEF94 80045A84 240600FF */  addiu      $a2, $zero, 0xFF
/* EEF98 80045A88 0C028E41 */  jal        func_800A3904
/* EEF9C 80045A8C 240700FF */   addiu     $a3, $zero, 0xFF
/* EEFA0 80045A90 8E62000C */  lw         $v0, 0xC($s3)
/* EEFA4 80045A94 2404002C */  addiu      $a0, $zero, 0x2C
/* EEFA8 80045A98 240530CB */  addiu      $a1, $zero, 0x30CB
/* EEFAC 80045A9C 0C00DD19 */  jal        func_80037464_ovl3
/* EEFB0 80045AA0 A440001C */   sh        $zero, 0x1C($v0)
/* EEFB4 80045AA4 00409821 */  addu       $s3, $v0, $zero
/* EEFB8 80045AA8 8E64000C */  lw         $a0, 0xC($s3)
/* EEFBC 80045AAC 24050038 */  addiu      $a1, $zero, 0x38
/* EEFC0 80045AB0 0C028D89 */  jal        func_800A3624
/* EEFC4 80045AB4 240602AC */   addiu     $a2, $zero, 0x2AC
/* EEFC8 80045AB8 AFB00010 */  sw         $s0, 0x10($sp)
/* EEFCC 80045ABC 8E64000C */  lw         $a0, 0xC($s3)
/* EEFD0 80045AC0 240500FF */  addiu      $a1, $zero, 0xFF
/* EEFD4 80045AC4 240600FF */  addiu      $a2, $zero, 0xFF
/* EEFD8 80045AC8 0C028E41 */  jal        func_800A3904
/* EEFDC 80045ACC 240700FF */   addiu     $a3, $zero, 0xFF
/* EEFE0 80045AD0 8E62000C */  lw         $v0, 0xC($s3)
/* EEFE4 80045AD4 2404002C */  addiu      $a0, $zero, 0x2C
/* EEFE8 80045AD8 240530CC */  addiu      $a1, $zero, 0x30CC
/* EEFEC 80045ADC 0C00DD19 */  jal        func_80037464_ovl3
/* EEFF0 80045AE0 A440001C */   sh        $zero, 0x1C($v0)
/* EEFF4 80045AE4 00409821 */  addu       $s3, $v0, $zero
/* EEFF8 80045AE8 8E64000C */  lw         $a0, 0xC($s3)
/* EEFFC 80045AEC 24050048 */  addiu      $a1, $zero, 0x48
/* EF000 80045AF0 0C028D89 */  jal        func_800A3624
/* EF004 80045AF4 240602AC */   addiu     $a2, $zero, 0x2AC
/* EF008 80045AF8 AFB00010 */  sw         $s0, 0x10($sp)
/* EF00C 80045AFC 8E64000C */  lw         $a0, 0xC($s3)
/* EF010 80045B00 240500FF */  addiu      $a1, $zero, 0xFF
/* EF014 80045B04 240600FF */  addiu      $a2, $zero, 0xFF
/* EF018 80045B08 0C028E41 */  jal        func_800A3904
/* EF01C 80045B0C 240700FF */   addiu     $a3, $zero, 0xFF
/* EF020 80045B10 8E62000C */  lw         $v0, 0xC($s3)
/* EF024 80045B14 24040022 */  addiu      $a0, $zero, 0x22
/* EF028 80045B18 240530CD */  addiu      $a1, $zero, 0x30CD
/* EF02C 80045B1C 0C00DD19 */  jal        func_80037464_ovl3
/* EF030 80045B20 A440001C */   sh        $zero, 0x1C($v0)
/* EF034 80045B24 00409821 */  addu       $s3, $v0, $zero
/* EF038 80045B28 8E64000C */  lw         $a0, 0xC($s3)
/* EF03C 80045B2C 24050338 */  addiu      $a1, $zero, 0x338
/* EF040 80045B30 0C028D89 */  jal        func_800A3624
/* EF044 80045B34 240601B8 */   addiu     $a2, $zero, 0x1B8
/* EF048 80045B38 AFB00010 */  sw         $s0, 0x10($sp)
/* EF04C 80045B3C 8E64000C */  lw         $a0, 0xC($s3)
/* EF050 80045B40 240500FF */  addiu      $a1, $zero, 0xFF
/* EF054 80045B44 240600FF */  addiu      $a2, $zero, 0xFF
/* EF058 80045B48 0C028E41 */  jal        func_800A3904
/* EF05C 80045B4C 240700FF */   addiu     $a3, $zero, 0xFF
/* EF060 80045B50 8E62000C */  lw         $v0, 0xC($s3)
/* EF064 80045B54 24040022 */  addiu      $a0, $zero, 0x22
/* EF068 80045B58 240530CE */  addiu      $a1, $zero, 0x30CE
/* EF06C 80045B5C 0C00DD19 */  jal        func_80037464_ovl3
/* EF070 80045B60 A440001C */   sh        $zero, 0x1C($v0)
/* EF074 80045B64 00409821 */  addu       $s3, $v0, $zero
/* EF078 80045B68 8E64000C */  lw         $a0, 0xC($s3)
/* EF07C 80045B6C 24050348 */  addiu      $a1, $zero, 0x348
/* EF080 80045B70 0C028D89 */  jal        func_800A3624
/* EF084 80045B74 240601B8 */   addiu     $a2, $zero, 0x1B8
/* EF088 80045B78 AFB00010 */  sw         $s0, 0x10($sp)
/* EF08C 80045B7C 8E64000C */  lw         $a0, 0xC($s3)
/* EF090 80045B80 240500FF */  addiu      $a1, $zero, 0xFF
/* EF094 80045B84 240600FF */  addiu      $a2, $zero, 0xFF
/* EF098 80045B88 0C028E41 */  jal        func_800A3904
/* EF09C 80045B8C 240700FF */   addiu     $a3, $zero, 0xFF
/* EF0A0 80045B90 8E62000C */  lw         $v0, 0xC($s3)
/* EF0A4 80045B94 0000A021 */  addu       $s4, $zero, $zero
/* EF0A8 80045B98 24150001 */  addiu      $s5, $zero, 0x1
/* EF0AC 80045B9C A440001C */  sh         $zero, 0x1C($v0)
/* EF0B0 80045BA0 24040024 */  addiu      $a0, $zero, 0x24
.L80045BA4_ovl3:
/* EF0B4 80045BA4 329000FF */  andi       $s0, $s4, 0xFF
/* EF0B8 80045BA8 00109080 */  sll        $s2, $s0, 2
/* EF0BC 80045BAC 0C00DD19 */  jal        func_80037464_ovl3
/* EF0C0 80045BB0 264530CF */   addiu     $a1, $s2, 0x30CF
/* EF0C4 80045BB4 00409821 */  addu       $s3, $v0, $zero
/* EF0C8 80045BB8 8E64000C */  lw         $a0, 0xC($s3)
/* EF0CC 80045BBC 02508821 */  addu       $s1, $s2, $s0
/* EF0D0 80045BC0 00118880 */  sll        $s1, $s1, 2
/* EF0D4 80045BC4 02308821 */  addu       $s1, $s1, $s0
/* EF0D8 80045BC8 00118840 */  sll        $s1, $s1, 1
/* EF0DC 80045BCC 26250025 */  addiu      $a1, $s1, 0x25
/* EF0E0 80045BD0 00052C80 */  sll        $a1, $a1, 18
/* EF0E4 80045BD4 00052C03 */  sra        $a1, $a1, 16
/* EF0E8 80045BD8 0C028D89 */  jal        func_800A3624
/* EF0EC 80045BDC 24060040 */   addiu     $a2, $zero, 0x40
/* EF0F0 80045BE0 AFB50010 */  sw         $s5, 0x10($sp)
/* EF0F4 80045BE4 8E64000C */  lw         $a0, 0xC($s3)
/* EF0F8 80045BE8 240500FF */  addiu      $a1, $zero, 0xFF
/* EF0FC 80045BEC 240600FF */  addiu      $a2, $zero, 0xFF
/* EF100 80045BF0 0C028E41 */  jal        func_800A3904
/* EF104 80045BF4 240700FF */   addiu     $a3, $zero, 0xFF
/* EF108 80045BF8 8E62000C */  lw         $v0, 0xC($s3)
/* EF10C 80045BFC 24040024 */  addiu      $a0, $zero, 0x24
/* EF110 80045C00 264530D0 */  addiu      $a1, $s2, 0x30D0
/* EF114 80045C04 0C00DD19 */  jal        func_80037464_ovl3
/* EF118 80045C08 A440001C */   sh        $zero, 0x1C($v0)
/* EF11C 80045C0C 00409821 */  addu       $s3, $v0, $zero
/* EF120 80045C10 8E64000C */  lw         $a0, 0xC($s3)
/* EF124 80045C14 26250029 */  addiu      $a1, $s1, 0x29
/* EF128 80045C18 00052C80 */  sll        $a1, $a1, 18
/* EF12C 80045C1C 00052C03 */  sra        $a1, $a1, 16
/* EF130 80045C20 0C028D89 */  jal        func_800A3624
/* EF134 80045C24 24060040 */   addiu     $a2, $zero, 0x40
/* EF138 80045C28 AFB50010 */  sw         $s5, 0x10($sp)
/* EF13C 80045C2C 8E64000C */  lw         $a0, 0xC($s3)
/* EF140 80045C30 240500FF */  addiu      $a1, $zero, 0xFF
/* EF144 80045C34 240600FF */  addiu      $a2, $zero, 0xFF
/* EF148 80045C38 0C028E41 */  jal        func_800A3904
/* EF14C 80045C3C 240700FF */   addiu     $a3, $zero, 0xFF
/* EF150 80045C40 8E62000C */  lw         $v0, 0xC($s3)
/* EF154 80045C44 2404002D */  addiu      $a0, $zero, 0x2D
/* EF158 80045C48 264530D1 */  addiu      $a1, $s2, 0x30D1
/* EF15C 80045C4C 0C00DD19 */  jal        func_80037464_ovl3
/* EF160 80045C50 A440001C */   sh        $zero, 0x1C($v0)
/* EF164 80045C54 00409821 */  addu       $s3, $v0, $zero
/* EF168 80045C58 8E64000C */  lw         $a0, 0xC($s3)
/* EF16C 80045C5C 2625004A */  addiu      $a1, $s1, 0x4A
/* EF170 80045C60 00052C80 */  sll        $a1, $a1, 18
/* EF174 80045C64 00052C03 */  sra        $a1, $a1, 16
/* EF178 80045C68 0C028D89 */  jal        func_800A3624
/* EF17C 80045C6C 240602AC */   addiu     $a2, $zero, 0x2AC
/* EF180 80045C70 AFB50010 */  sw         $s5, 0x10($sp)
/* EF184 80045C74 8E64000C */  lw         $a0, 0xC($s3)
/* EF188 80045C78 240500FF */  addiu      $a1, $zero, 0xFF
/* EF18C 80045C7C 240600FF */  addiu      $a2, $zero, 0xFF
/* EF190 80045C80 0C028E41 */  jal        func_800A3904
/* EF194 80045C84 240700FF */   addiu     $a3, $zero, 0xFF
/* EF198 80045C88 8E62000C */  lw         $v0, 0xC($s3)
/* EF19C 80045C8C 2404002D */  addiu      $a0, $zero, 0x2D
/* EF1A0 80045C90 264530D2 */  addiu      $a1, $s2, 0x30D2
/* EF1A4 80045C94 0C00DD19 */  jal        func_80037464_ovl3
/* EF1A8 80045C98 A440001C */   sh        $zero, 0x1C($v0)
/* EF1AC 80045C9C 00409821 */  addu       $s3, $v0, $zero
/* EF1B0 80045CA0 8E64000C */  lw         $a0, 0xC($s3)
/* EF1B4 80045CA4 2631004E */  addiu      $s1, $s1, 0x4E
/* EF1B8 80045CA8 00118C80 */  sll        $s1, $s1, 18
/* EF1BC 80045CAC 00112C03 */  sra        $a1, $s1, 16
/* EF1C0 80045CB0 0C028D89 */  jal        func_800A3624
/* EF1C4 80045CB4 240602AC */   addiu     $a2, $zero, 0x2AC
/* EF1C8 80045CB8 AFB50010 */  sw         $s5, 0x10($sp)
/* EF1CC 80045CBC 8E64000C */  lw         $a0, 0xC($s3)
/* EF1D0 80045CC0 240500FF */  addiu      $a1, $zero, 0xFF
/* EF1D4 80045CC4 240600FF */  addiu      $a2, $zero, 0xFF
/* EF1D8 80045CC8 0C028E41 */  jal        func_800A3904
/* EF1DC 80045CCC 240700FF */   addiu     $a3, $zero, 0xFF
/* EF1E0 80045CD0 8E62000C */  lw         $v0, 0xC($s3)
/* EF1E4 80045CD4 26940001 */  addiu      $s4, $s4, 0x1
/* EF1E8 80045CD8 A440001C */  sh         $zero, 0x1C($v0)
/* EF1EC 80045CDC 328200FF */  andi       $v0, $s4, 0xFF
/* EF1F0 80045CE0 2C420007 */  sltiu      $v0, $v0, 0x7
/* EF1F4 80045CE4 1440FFAF */  bnez       $v0, .L80045BA4_ovl3
/* EF1F8 80045CE8 24040024 */   addiu     $a0, $zero, 0x24
/* EF1FC 80045CEC 8FBF0070 */  lw         $ra, 0x70($sp)
/* EF200 80045CF0 8FB5006C */  lw         $s5, 0x6C($sp)
/* EF204 80045CF4 8FB40068 */  lw         $s4, 0x68($sp)
/* EF208 80045CF8 8FB30064 */  lw         $s3, 0x64($sp)
/* EF20C 80045CFC 8FB20060 */  lw         $s2, 0x60($sp)
/* EF210 80045D00 8FB1005C */  lw         $s1, 0x5C($sp)
/* EF214 80045D04 8FB00058 */  lw         $s0, 0x58($sp)
/* EF218 80045D08 D7B40078 */  ldc1       $f20, 0x78($sp)
/* EF21C 80045D0C 03E00008 */  jr         $ra
/* EF220 80045D10 27BD0080 */   addiu     $sp, $sp, 0x80
.size func_800456A8_ovl3, . - func_800456A8_ovl3
