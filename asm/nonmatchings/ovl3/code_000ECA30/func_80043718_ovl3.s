glabel func_80043718_ovl3
/* ECC28 80043718 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* ECC2C 8004371C AFBF0030 */  sw         $ra, 0x30($sp)
/* ECC30 80043720 AFB3002C */  sw         $s3, 0x2C($sp)
/* ECC34 80043724 AFB20028 */  sw         $s2, 0x28($sp)
/* ECC38 80043728 AFB10024 */  sw         $s1, 0x24($sp)
/* ECC3C 8004372C AFB00020 */  sw         $s0, 0x20($sp)
/* ECC40 80043730 F7B60040 */  sdc1       $f22, 0x40($sp)
/* ECC44 80043734 F7B40038 */  sdc1       $f20, 0x38($sp)
/* ECC48 80043738 0C00E109 */  jal        func_80038424_ovl3
/* ECC4C 8004373C 00008821 */   addu      $s1, $zero, $zero
/* ECC50 80043740 0C00DFA8 */  jal        func_80037EA0_ovl3
/* ECC54 80043744 24040009 */   addiu     $a0, $zero, 0x9
/* ECC58 80043748 00408021 */  addu       $s0, $v0, $zero
/* ECC5C 8004374C 3C013C34 */  lui        $at, (0x3C343958 >> 16)
/* ECC60 80043750 34213958 */  ori        $at, $at, (0x3C343958 & 0xFFFF)
/* ECC64 80043754 4481B000 */  mtc1       $at, $f22
/* ECC68 80043758 3C01C248 */  lui        $at, (0xC2480000 >> 16)
/* ECC6C 8004375C 44810000 */  mtc1       $at, $f0
/* ECC70 80043760 3C0142B4 */  lui        $at, (0x42B40000 >> 16)
/* ECC74 80043764 44811000 */  mtc1       $at, $f2
/* ECC78 80043768 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* ECC7C 8004376C 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* ECC80 80043770 44812000 */  mtc1       $at, $f4
/* ECC84 80043774 02002021 */  addu       $a0, $s0, $zero
/* ECC88 80043778 00002821 */  addu       $a1, $zero, $zero
/* ECC8C 8004377C 240200FF */  addiu      $v0, $zero, 0xFF
/* ECC90 80043780 A6020074 */  sh         $v0, 0x74($s0)
/* ECC94 80043784 A6020076 */  sh         $v0, 0x76($s0)
/* ECC98 80043788 A6020078 */  sh         $v0, 0x78($s0)
/* ECC9C 8004378C A602007A */  sh         $v0, 0x7A($s0)
/* ECCA0 80043790 24020011 */  addiu      $v0, $zero, 0x11
/* ECCA4 80043794 AE000010 */  sw         $zero, 0x10($s0)
/* ECCA8 80043798 AE00001C */  sw         $zero, 0x1C($s0)
/* ECCAC 8004379C AE000020 */  sw         $zero, 0x20($s0)
/* ECCB0 800437A0 AE000024 */  sw         $zero, 0x24($s0)
/* ECCB4 800437A4 A6020070 */  sh         $v0, 0x70($s0)
/* ECCB8 800437A8 E6000014 */  swc1       $f0, 0x14($s0)
/* ECCBC 800437AC E6020018 */  swc1       $f2, 0x18($s0)
/* ECCC0 800437B0 0C00DFE6 */  jal        func_80037F98_ovl3
/* ECCC4 800437B4 E6040028 */   swc1      $f4, 0x28($s0)
/* ECCC8 800437B8 8E020004 */  lw         $v0, 0x4($s0)
/* ECCCC 800437BC A0400067 */  sb         $zero, 0x67($v0)
/* ECCD0 800437C0 8E030004 */  lw         $v1, 0x4($s0)
/* ECCD4 800437C4 24020002 */  addiu      $v0, $zero, 0x2
/* ECCD8 800437C8 A6020072 */  sh         $v0, 0x72($s0)
/* ECCDC 800437CC 90620066 */  lbu        $v0, 0x66($v1)
/* ECCE0 800437D0 3C01C110 */  lui        $at, (0xC1100000 >> 16)
/* ECCE4 800437D4 4481A000 */  mtc1       $at, $f20
/* ECCE8 800437D8 34420007 */  ori        $v0, $v0, 0x7
/* ECCEC 800437DC A0620066 */  sb         $v0, 0x66($v1)
/* ECCF0 800437E0 8E040004 */  lw         $a0, 0x4($s0)
/* ECCF4 800437E4 3C058007 */  lui        $a1, %hi(D_8006A084_ovl3)
/* ECCF8 800437E8 24A5A084 */  addiu      $a1, $a1, %lo(D_8006A084_ovl3)
/* ECCFC 800437EC 0C0284DC */  jal        func_800A1370
/* ECD00 800437F0 241200FF */   addiu     $s2, $zero, 0xFF
/* ECD04 800437F4 8E040004 */  lw         $a0, 0x4($s0)
/* ECD08 800437F8 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* ECD0C 800437FC 0C02869D */  jal        func_800A1A74
/* ECD10 80043800 00003021 */   addu      $a2, $zero, $zero
/* ECD14 80043804 8E040004 */  lw         $a0, 0x4($s0)
/* ECD18 80043808 3C058007 */  lui        $a1, %hi(D_8006A08C_ovl3)
/* ECD1C 8004380C 24A5A08C */  addiu      $a1, $a1, %lo(D_8006A08C_ovl3)
/* ECD20 80043810 0C0284DC */  jal        func_800A1370
/* ECD24 80043814 2413FFFF */   addiu     $s3, $zero, -0x1
/* ECD28 80043818 8E040004 */  lw         $a0, 0x4($s0)
/* ECD2C 8004381C 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* ECD30 80043820 0C02869D */  jal        func_800A1A74
/* ECD34 80043824 00003021 */   addu      $a2, $zero, $zero
/* ECD38 80043828 322400FF */  andi       $a0, $s1, 0xFF
.L8004382C_ovl3:
/* ECD3C 8004382C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* ECD40 80043830 2484000A */   addiu     $a0, $a0, 0xA
/* ECD44 80043834 00408021 */  addu       $s0, $v0, $zero
/* ECD48 80043838 02002021 */  addu       $a0, $s0, $zero
/* ECD4C 8004383C 24050130 */  addiu      $a1, $zero, 0x130
/* ECD50 80043840 AE000010 */  sw         $zero, 0x10($s0)
/* ECD54 80043844 AE000014 */  sw         $zero, 0x14($s0)
/* ECD58 80043848 AE000018 */  sw         $zero, 0x18($s0)
/* ECD5C 8004384C E6160028 */  swc1       $f22, 0x28($s0)
/* ECD60 80043850 E614001C */  swc1       $f20, 0x1C($s0)
/* ECD64 80043854 AE000020 */  sw         $zero, 0x20($s0)
/* ECD68 80043858 AE000024 */  sw         $zero, 0x24($s0)
/* ECD6C 8004385C A6120074 */  sh         $s2, 0x74($s0)
/* ECD70 80043860 A6120076 */  sh         $s2, 0x76($s0)
/* ECD74 80043864 A6120078 */  sh         $s2, 0x78($s0)
/* ECD78 80043868 A612007A */  sh         $s2, 0x7A($s0)
/* ECD7C 8004386C 0C00DFE6 */  jal        func_80037F98_ovl3
/* ECD80 80043870 A6130070 */   sh        $s3, 0x70($s0)
/* ECD84 80043874 8E020004 */  lw         $v0, 0x4($s0)
/* ECD88 80043878 A0400067 */  sb         $zero, 0x67($v0)
/* ECD8C 8004387C 8E030004 */  lw         $v1, 0x4($s0)
/* ECD90 80043880 90620066 */  lbu        $v0, 0x66($v1)
/* ECD94 80043884 26310001 */  addiu      $s1, $s1, 0x1
/* ECD98 80043888 34420007 */  ori        $v0, $v0, 0x7
/* ECD9C 8004388C A0620066 */  sb         $v0, 0x66($v1)
/* ECDA0 80043890 322200FF */  andi       $v0, $s1, 0xFF
/* ECDA4 80043894 2C420008 */  sltiu      $v0, $v0, 0x8
/* ECDA8 80043898 1440FFE4 */  bnez       $v0, .L8004382C_ovl3
/* ECDAC 8004389C 322400FF */   andi      $a0, $s1, 0xFF
/* ECDB0 800438A0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* ECDB4 800438A4 44810000 */  mtc1       $at, $f0
/* ECDB8 800438A8 3C01C100 */  lui        $at, (0xC1000000 >> 16)
/* ECDBC 800438AC 44811000 */  mtc1       $at, $f2
/* ECDC0 800438B0 3C0142A0 */  lui        $at, (0x42A00000 >> 16)
/* ECDC4 800438B4 44812000 */  mtc1       $at, $f4
/* ECDC8 800438B8 3C01C32C */  lui        $at, (0xC32C0000 >> 16)
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
/* ECE20 80043910 0C00E339 */  jal        func_80038CE4_ovl3
/* ECE24 80043914 2411FFFE */   addiu     $s1, $zero, -0x2
/* ECE28 80043918 3C048031 */  lui        $a0, (0x80317420 >> 16)
/* ECE2C 8004391C 34847420 */  ori        $a0, $a0, (0x80317420 & 0xFFFF)
/* ECE30 80043920 2405019A */  addiu      $a1, $zero, 0x19A
/* ECE34 80043924 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* ECE38 80043928 44810000 */  mtc1       $at, $f0
/* ECE3C 8004392C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* ECE40 80043930 44811000 */  mtc1       $at, $f2
/* ECE44 80043934 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* ECE48 80043938 44812000 */  mtc1       $at, $f4
/* ECE4C 8004393C 24060007 */  addiu      $a2, $zero, 0x7
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
/* ECE80 80043970 0C00D9E0 */  jal        func_80036780_ovl3
/* ECE84 80043974 24070022 */   addiu     $a3, $zero, 0x22
/* ECE88 80043978 00408021 */  addu       $s0, $v0, $zero
/* ECE8C 8004397C 8E04000C */  lw         $a0, 0xC($s0)
/* ECE90 80043980 3C014000 */  lui        $at, (0x40000000 >> 16)
/* ECE94 80043984 4481A000 */  mtc1       $at, $f20
/* ECE98 80043988 3C064001 */  lui        $a2, (0x400147AE >> 16)
/* ECE9C 8004398C 34C647AE */  ori        $a2, $a2, (0x400147AE & 0xFFFF)
/* ECEA0 80043990 4407A000 */  mfc1       $a3, $f20
/* ECEA4 80043994 00000000 */  nop
/* ECEA8 80043998 0C02915B */  jal        func_800A456C
/* ECEAC 8004399C 00002821 */   addu      $a1, $zero, $zero
/* ECEB0 800439A0 8E04000C */  lw         $a0, 0xC($s0)
/* ECEB4 800439A4 24050040 */  addiu      $a1, $zero, 0x40
/* ECEB8 800439A8 0C028D89 */  jal        func_800A3624
/* ECEBC 800439AC 2406FF80 */   addiu     $a2, $zero, -0x80
/* ECEC0 800439B0 8E03000C */  lw         $v1, 0xC($s0)
/* ECEC4 800439B4 240401A2 */  addiu      $a0, $zero, 0x1A2
/* ECEC8 800439B8 9462001E */  lhu        $v0, 0x1E($v1)
/* ECECC 800439BC 24050002 */  addiu      $a1, $zero, 0x2
/* ECED0 800439C0 2406002A */  addiu      $a2, $zero, 0x2A
/* ECED4 800439C4 34420104 */  ori        $v0, $v0, 0x104
/* ECED8 800439C8 0C00D925 */  jal        func_80036494_ovl3
/* ECEDC 800439CC A462001E */   sh        $v0, 0x1E($v1)
/* ECEE0 800439D0 00408021 */  addu       $s0, $v0, $zero
/* ECEE4 800439D4 8E04000C */  lw         $a0, 0xC($s0)
/* ECEE8 800439D8 3C064000 */  lui        $a2, (0x4000A3D7 >> 16)
/* ECEEC 800439DC 34C6A3D7 */  ori        $a2, $a2, (0x4000A3D7 & 0xFFFF)
/* ECEF0 800439E0 4407A000 */  mfc1       $a3, $f20
/* ECEF4 800439E4 00000000 */  nop
/* ECEF8 800439E8 0C02915B */  jal        func_800A456C
/* ECEFC 800439EC 00002821 */   addu      $a1, $zero, $zero
/* ECF00 800439F0 8E04000C */  lw         $a0, 0xC($s0)
/* ECF04 800439F4 240501C0 */  addiu      $a1, $zero, 0x1C0
/* ECF08 800439F8 0C028D89 */  jal        func_800A3624
/* ECF0C 800439FC 24060040 */   addiu     $a2, $zero, 0x40
/* ECF10 80043A00 8E03000C */  lw         $v1, 0xC($s0)
/* ECF14 80043A04 9462001E */  lhu        $v0, 0x1E($v1)
/* ECF18 80043A08 34420004 */  ori        $v0, $v0, 0x4
/* ECF1C 80043A0C A462001E */  sh         $v0, 0x1E($v1)
/* ECF20 80043A10 8E04000C */  lw         $a0, 0xC($s0)
/* ECF24 80043A14 0C00DE7C */  jal        func_800379F0_ovl3
/* ECF28 80043A18 2405000F */   addiu     $a1, $zero, 0xF
/* ECF2C 80043A1C 8E04000C */  lw         $a0, 0xC($s0)
/* ECF30 80043A20 00002821 */  addu       $a1, $zero, $zero
/* ECF34 80043A24 2442FFFF */  addiu      $v0, $v0, -0x1
/* ECF38 80043A28 0C00DE6C */  jal        func_800379B0_ovl3
/* ECF3C 80043A2C 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* ECF40 80043A30 240401A3 */  addiu      $a0, $zero, 0x1A3
/* ECF44 80043A34 24050002 */  addiu      $a1, $zero, 0x2
/* ECF48 80043A38 0C00D925 */  jal        func_80036494_ovl3
/* ECF4C 80043A3C 24060023 */   addiu     $a2, $zero, 0x23
/* ECF50 80043A40 8C44000C */  lw         $a0, 0xC($v0)
/* ECF54 80043A44 24050080 */  addiu      $a1, $zero, 0x80
/* ECF58 80043A48 0C028D89 */  jal        func_800A3624
/* ECF5C 80043A4C 240601C0 */   addiu     $a2, $zero, 0x1C0
/* ECF60 80043A50 240401A4 */  addiu      $a0, $zero, 0x1A4
/* ECF64 80043A54 24050002 */  addiu      $a1, $zero, 0x2
/* ECF68 80043A58 0C00D925 */  jal        func_80036494_ovl3
/* ECF6C 80043A5C 24060024 */   addiu     $a2, $zero, 0x24
/* ECF70 80043A60 8C44000C */  lw         $a0, 0xC($v0)
/* ECF74 80043A64 24050040 */  addiu      $a1, $zero, 0x40
/* ECF78 80043A68 0C028D89 */  jal        func_800A3624
/* ECF7C 80043A6C 24060200 */   addiu     $a2, $zero, 0x200
/* ECF80 80043A70 240401A5 */  addiu      $a0, $zero, 0x1A5
/* ECF84 80043A74 24050002 */  addiu      $a1, $zero, 0x2
/* ECF88 80043A78 0C00D925 */  jal        func_80036494_ovl3
/* ECF8C 80043A7C 24060025 */   addiu     $a2, $zero, 0x25
/* ECF90 80043A80 8C44000C */  lw         $a0, 0xC($v0)
/* ECF94 80043A84 24050040 */  addiu      $a1, $zero, 0x40
/* ECF98 80043A88 0C028D89 */  jal        func_800A3624
/* ECF9C 80043A8C 24060240 */   addiu     $a2, $zero, 0x240
/* ECFA0 80043A90 240401A6 */  addiu      $a0, $zero, 0x1A6
/* ECFA4 80043A94 24050002 */  addiu      $a1, $zero, 0x2
/* ECFA8 80043A98 0C00D925 */  jal        func_80036494_ovl3
/* ECFAC 80043A9C 24060026 */   addiu     $a2, $zero, 0x26
/* ECFB0 80043AA0 8C44000C */  lw         $a0, 0xC($v0)
/* ECFB4 80043AA4 24050040 */  addiu      $a1, $zero, 0x40
/* ECFB8 80043AA8 0C028D89 */  jal        func_800A3624
/* ECFBC 80043AAC 24060280 */   addiu     $a2, $zero, 0x280
/* ECFC0 80043AB0 240401A7 */  addiu      $a0, $zero, 0x1A7
/* ECFC4 80043AB4 24050002 */  addiu      $a1, $zero, 0x2
/* ECFC8 80043AB8 0C00D925 */  jal        func_80036494_ovl3
/* ECFCC 80043ABC 24060027 */   addiu     $a2, $zero, 0x27
/* ECFD0 80043AC0 8C44000C */  lw         $a0, 0xC($v0)
/* ECFD4 80043AC4 24050040 */  addiu      $a1, $zero, 0x40
/* ECFD8 80043AC8 0C028D89 */  jal        func_800A3624
/* ECFDC 80043ACC 240602C0 */   addiu     $a2, $zero, 0x2C0
/* ECFE0 80043AD0 240401A8 */  addiu      $a0, $zero, 0x1A8
/* ECFE4 80043AD4 24050002 */  addiu      $a1, $zero, 0x2
/* ECFE8 80043AD8 0C00D925 */  jal        func_80036494_ovl3
/* ECFEC 80043ADC 24060028 */   addiu     $a2, $zero, 0x28
/* ECFF0 80043AE0 8C44000C */  lw         $a0, 0xC($v0)
/* ECFF4 80043AE4 24050040 */  addiu      $a1, $zero, 0x40
/* ECFF8 80043AE8 0C028D89 */  jal        func_800A3624
/* ECFFC 80043AEC 24060300 */   addiu     $a2, $zero, 0x300
/* ED000 80043AF0 240401A9 */  addiu      $a0, $zero, 0x1A9
/* ED004 80043AF4 24050002 */  addiu      $a1, $zero, 0x2
/* ED008 80043AF8 0C00D925 */  jal        func_80036494_ovl3
/* ED00C 80043AFC 24060029 */   addiu     $a2, $zero, 0x29
/* ED010 80043B00 8C44000C */  lw         $a0, 0xC($v0)
/* ED014 80043B04 24050040 */  addiu      $a1, $zero, 0x40
/* ED018 80043B08 0C028D89 */  jal        func_800A3624
/* ED01C 80043B0C 24060340 */   addiu     $a2, $zero, 0x340
/* ED020 80043B10 27A40018 */  addiu      $a0, $sp, 0x18
/* ED024 80043B14 240520C9 */  addiu      $a1, $zero, 0x20C9
/* ED028 80043B18 24060003 */  addiu      $a2, $zero, 0x3
/* ED02C 80043B1C 3C028007 */  lui        $v0, %hi(D_80068FE8_ovl3)
/* ED030 80043B20 24428FE8 */  addiu      $v0, $v0, %lo(D_80068FE8_ovl3)
/* ED034 80043B24 24100001 */  addiu      $s0, $zero, 0x1
/* ED038 80043B28 AFA20018 */  sw         $v0, 0x18($sp)
/* ED03C 80043B2C 24020003 */  addiu      $v0, $zero, 0x3
/* ED040 80043B30 A3B1001C */  sb         $s1, 0x1C($sp)
/* ED044 80043B34 A3A0001D */  sb         $zero, 0x1D($sp)
/* ED048 80043B38 A3B0001E */  sb         $s0, 0x1E($sp)
/* ED04C 80043B3C 0C00DE82 */  jal        func_80037A08_ovl3
/* ED050 80043B40 A3A2001F */   sb        $v0, 0x1F($sp)
/* ED054 80043B44 27A40018 */  addiu      $a0, $sp, 0x18
/* ED058 80043B48 240520CA */  addiu      $a1, $zero, 0x20CA
/* ED05C 80043B4C 240620D4 */  addiu      $a2, $zero, 0x20D4
/* ED060 80043B50 24070028 */  addiu      $a3, $zero, 0x28
/* ED064 80043B54 3C028007 */  lui        $v0, %hi(D_80069000_ovl3)
/* ED068 80043B58 24429000 */  addiu      $v0, $v0, %lo(D_80069000_ovl3)
/* ED06C 80043B5C 24130002 */  addiu      $s3, $zero, 0x2
/* ED070 80043B60 241200AF */  addiu      $s2, $zero, 0xAF
/* ED074 80043B64 AFA20018 */  sw         $v0, 0x18($sp)
/* ED078 80043B68 A3B1001C */  sb         $s1, 0x1C($sp)
/* ED07C 80043B6C A3A0001D */  sb         $zero, 0x1D($sp)
/* ED080 80043B70 A3B0001E */  sb         $s0, 0x1E($sp)
/* ED084 80043B74 A3B3001F */  sb         $s3, 0x1F($sp)
/* ED088 80043B78 0C00DEF7 */  jal        func_80037BDC_ovl3
/* ED08C 80043B7C AFB20010 */   sw        $s2, 0x10($sp)
/* ED090 80043B80 27A40018 */  addiu      $a0, $sp, 0x18
/* ED094 80043B84 240520CB */  addiu      $a1, $zero, 0x20CB
/* ED098 80043B88 240620D5 */  addiu      $a2, $zero, 0x20D5
/* ED09C 80043B8C 24070028 */  addiu      $a3, $zero, 0x28
/* ED0A0 80043B90 3C028007 */  lui        $v0, %hi(D_80069028_ovl3)
/* ED0A4 80043B94 24429028 */  addiu      $v0, $v0, %lo(D_80069028_ovl3)
/* ED0A8 80043B98 AFA20018 */  sw         $v0, 0x18($sp)
/* ED0AC 80043B9C A3B1001C */  sb         $s1, 0x1C($sp)
/* ED0B0 80043BA0 A3A0001D */  sb         $zero, 0x1D($sp)
/* ED0B4 80043BA4 A3B0001E */  sb         $s0, 0x1E($sp)
/* ED0B8 80043BA8 A3B3001F */  sb         $s3, 0x1F($sp)
/* ED0BC 80043BAC 0C00DEF7 */  jal        func_80037BDC_ovl3
/* ED0C0 80043BB0 AFB20010 */   sw        $s2, 0x10($sp)
/* ED0C4 80043BB4 8FBF0030 */  lw         $ra, 0x30($sp)
/* ED0C8 80043BB8 8FB3002C */  lw         $s3, 0x2C($sp)
/* ED0CC 80043BBC 8FB20028 */  lw         $s2, 0x28($sp)
/* ED0D0 80043BC0 8FB10024 */  lw         $s1, 0x24($sp)
/* ED0D4 80043BC4 8FB00020 */  lw         $s0, 0x20($sp)
/* ED0D8 80043BC8 D7B60040 */  ldc1       $f22, 0x40($sp)
/* ED0DC 80043BCC D7B40038 */  ldc1       $f20, 0x38($sp)
/* ED0E0 80043BD0 03E00008 */  jr         $ra
/* ED0E4 80043BD4 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_80043718_ovl3, . - func_80043718_ovl3
