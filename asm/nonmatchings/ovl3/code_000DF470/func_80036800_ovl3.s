glabel func_80036800_ovl3
/* DFD10 80036800 27BDFF90 */  addiu      $sp, $sp, -0x70
/* DFD14 80036804 93A80083 */  lbu        $t0, 0x83($sp)
/* DFD18 80036808 AFB60060 */  sw         $s6, 0x60($sp)
/* DFD1C 8003680C 0080B021 */  addu       $s6, $a0, $zero
/* DFD20 80036810 AFBE0068 */  sw         $fp, 0x68($sp)
/* DFD24 80036814 00A0F021 */  addu       $fp, $a1, $zero
/* DFD28 80036818 AFB30054 */  sw         $s3, 0x54($sp)
/* DFD2C 8003681C 03C09821 */  addu       $s3, $fp, $zero
/* DFD30 80036820 AFB1004C */  sw         $s1, 0x4C($sp)
/* DFD34 80036824 241110C9 */  addiu      $s1, $zero, 0x10C9
/* DFD38 80036828 AFB20050 */  sw         $s2, 0x50($sp)
/* DFD3C 8003682C 00009021 */  addu       $s2, $zero, $zero
/* DFD40 80036830 AFB70064 */  sw         $s7, 0x64($sp)
/* DFD44 80036834 00C0B821 */  addu       $s7, $a2, $zero
/* DFD48 80036838 32E200FF */  andi       $v0, $s7, 0xFF
/* DFD4C 8003683C AFBF006C */  sw         $ra, 0x6C($sp)
/* DFD50 80036840 AFB5005C */  sw         $s5, 0x5C($sp)
/* DFD54 80036844 AFB40058 */  sw         $s4, 0x58($sp)
/* DFD58 80036848 AFB00048 */  sw         $s0, 0x48($sp)
/* DFD5C 8003684C A7A7001E */  sh         $a3, 0x1E($sp)
/* DFD60 80036850 10400021 */  beqz       $v0, .L800368D8_ovl3
/* DFD64 80036854 A3A80027 */   sb        $t0, 0x27($sp)
/* DFD68 80036858 3414FFFF */  ori        $s4, $zero, 0xFFFF
/* DFD6C 8003685C 0040A821 */  addu       $s5, $v0, $zero
.L80036860_ovl3:
/* DFD70 80036860 0C00D8E3 */  jal        func_8003638C_ovl3
/* DFD74 80036864 3224FFFF */   andi      $a0, $s1, 0xFFFF
/* DFD78 80036868 3264FFFF */  andi       $a0, $s3, 0xFFFF
/* DFD7C 8003686C 24050002 */  addiu      $a1, $zero, 0x2
/* DFD80 80036870 00003021 */  addu       $a2, $zero, $zero
/* DFD84 80036874 00408021 */  addu       $s0, $v0, $zero
/* DFD88 80036878 A6110000 */  sh         $s1, 0x0($s0)
/* DFD8C 8003687C AE140008 */  sw         $s4, 0x8($s0)
/* DFD90 80036880 0C028CB7 */  jal        func_800A32DC
/* DFD94 80036884 AE140004 */   sw        $s4, 0x4($s0)
/* DFD98 80036888 24080063 */  addiu      $t0, $zero, 0x63
/* DFD9C 8003688C 01111823 */  subu       $v1, $t0, $s1
/* DFDA0 80036890 AE02000C */  sw         $v0, 0xC($s0)
/* DFDA4 80036894 A443001C */  sh         $v1, 0x1C($v0)
/* DFDA8 80036898 8E04000C */  lw         $a0, 0xC($s0)
/* DFDAC 8003689C 00002821 */  addu       $a1, $zero, $zero
/* DFDB0 800368A0 00003021 */  addu       $a2, $zero, $zero
/* DFDB4 800368A4 26730001 */  addiu      $s3, $s3, 0x1
/* DFDB8 800368A8 26310001 */  addiu      $s1, $s1, 0x1
/* DFDBC 800368AC 0C02912A */  jal        func_800A44A8
/* DFDC0 800368B0 26520001 */   addiu     $s2, $s2, 0x1
/* DFDC4 800368B4 3C063F80 */  lui        $a2, (0x3F800000 >> 16)
/* DFDC8 800368B8 8E04000C */  lw         $a0, 0xC($s0)
/* DFDCC 800368BC 00002821 */  addu       $a1, $zero, $zero
/* DFDD0 800368C0 0C02915B */  jal        func_800A456C
/* DFDD4 800368C4 00C03821 */   addu      $a3, $a2, $zero
/* DFDD8 800368C8 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* DFDDC 800368CC 0055102B */  sltu       $v0, $v0, $s5
/* DFDE0 800368D0 1440FFE3 */  bnez       $v0, .L80036860_ovl3
/* DFDE4 800368D4 00000000 */   nop
.L800368D8_ovl3:
/* DFDE8 800368D8 16C0002A */  bnez       $s6, .L80036984_ovl3
/* DFDEC 800368DC 02C0A821 */   addu      $s5, $s6, $zero
/* DFDF0 800368E0 0C032663 */  jal        func_800C998C
/* DFDF4 800368E4 24040010 */   addiu     $a0, $zero, 0x10
/* DFDF8 800368E8 0040A821 */  addu       $s5, $v0, $zero
/* DFDFC 800368EC 02A02021 */  addu       $a0, $s5, $zero
/* DFE00 800368F0 0C030134 */  jal        bzero
/* DFE04 800368F4 24050010 */   addiu     $a1, $zero, 0x10
/* DFE08 800368F8 0C032663 */  jal        func_800C998C
/* DFE0C 800368FC 24040400 */   addiu     $a0, $zero, 0x400
/* DFE10 80036900 AFA20034 */  sw         $v0, 0x34($sp)
/* DFE14 80036904 8FA40034 */  lw         $a0, 0x34($sp)
/* DFE18 80036908 0C030134 */  jal        bzero
/* DFE1C 8003690C 24050400 */   addiu     $a1, $zero, 0x400
/* DFE20 80036910 00009821 */  addu       $s3, $zero, $zero
/* DFE24 80036914 32E300FF */  andi       $v1, $s7, 0xFF
/* DFE28 80036918 02C3102B */  sltu       $v0, $s6, $v1
/* DFE2C 8003691C 10400012 */  beqz       $v0, .L80036968_ovl3
/* DFE30 80036920 00008021 */   addu      $s0, $zero, $zero
/* DFE34 80036924 33C5FFFF */  andi       $a1, $fp, 0xFFFF
/* DFE38 80036928 00602021 */  addu       $a0, $v1, $zero
/* DFE3C 8003692C 3263FFFF */  andi       $v1, $s3, 0xFFFF
.L80036930_ovl3:
/* DFE40 80036930 00A31821 */  addu       $v1, $a1, $v1
/* DFE44 80036934 00031040 */  sll        $v0, $v1, 1
/* DFE48 80036938 00431021 */  addu       $v0, $v0, $v1
/* DFE4C 8003693C 00021080 */  sll        $v0, $v0, 2
/* DFE50 80036940 3C03800D */  lui        $v1, %hi(Image_tbl_8)
/* DFE54 80036944 00621821 */  addu       $v1, $v1, $v0
/* DFE58 80036948 8C636AD8 */  lw         $v1, %lo(Image_tbl_8)($v1)
/* DFE5C 8003694C 26730001 */  addiu      $s3, $s3, 0x1
/* DFE60 80036950 2602FFF0 */  addiu      $v0, $s0, -0x10
/* DFE64 80036954 00438021 */  addu       $s0, $v0, $v1
/* DFE68 80036958 3262FFFF */  andi       $v0, $s3, 0xFFFF
/* DFE6C 8003695C 0044102B */  sltu       $v0, $v0, $a0
/* DFE70 80036960 1440FFF3 */  bnez       $v0, .L80036930_ovl3
/* DFE74 80036964 3263FFFF */   andi      $v1, $s3, 0xFFFF
.L80036968_ovl3:
/* DFE78 80036968 00108040 */  sll        $s0, $s0, 1
/* DFE7C 8003696C 0C032663 */  jal        func_800C998C
/* DFE80 80036970 02002021 */   addu      $a0, $s0, $zero
/* DFE84 80036974 AFA2002C */  sw         $v0, 0x2C($sp)
/* DFE88 80036978 8FA4002C */  lw         $a0, 0x2C($sp)
/* DFE8C 8003697C 0800DA67 */  j          .L8003699C_ovl3
/* DFE90 80036980 02002821 */   addu      $a1, $s0, $zero
.L80036984_ovl3:
/* DFE94 80036984 26A80010 */  addiu      $t0, $s5, 0x10
/* DFE98 80036988 AFA80034 */  sw         $t0, 0x34($sp)
/* DFE9C 8003698C 26A80410 */  addiu      $t0, $s5, 0x410
/* DFEA0 80036990 02A02021 */  addu       $a0, $s5, $zero
/* DFEA4 80036994 24050410 */  addiu      $a1, $zero, 0x410
/* DFEA8 80036998 AFA8002C */  sw         $t0, 0x2C($sp)
.L8003699C_ovl3:
/* DFEAC 8003699C 0C030134 */  jal        bzero
/* DFEB0 800369A0 00009821 */   addu      $s3, $zero, $zero
/* DFEB4 800369A4 8FA80034 */  lw         $t0, 0x34($sp)
/* DFEB8 800369A8 32E200FF */  andi       $v0, $s7, 0xFF
/* DFEBC 800369AC 1040001C */  beqz       $v0, .L80036A20_ovl3
/* DFEC0 800369B0 AFA8003C */   sw        $t0, 0x3C($sp)
/* DFEC4 800369B4 240510C9 */  addiu      $a1, $zero, 0x10C9
/* DFEC8 800369B8 00403021 */  addu       $a2, $v0, $zero
/* DFECC 800369BC 00002021 */  addu       $a0, $zero, $zero
.L800369C0_ovl3:
/* DFED0 800369C0 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* DFED4 800369C4 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
.L800369C8_ovl3:
/* DFED8 800369C8 94620000 */  lhu        $v0, 0x0($v1)
/* DFEDC 800369CC 54450003 */  bnel       $v0, $a1, .L800369DC_ovl3
/* DFEE0 800369D0 24840001 */   addiu     $a0, $a0, 0x1
/* DFEE4 800369D4 0800DA7C */  j          .L800369F0_ovl3
/* DFEE8 800369D8 00608821 */   addu      $s1, $v1, $zero
.L800369DC_ovl3:
/* DFEEC 800369DC 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* DFEF0 800369E0 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* DFEF4 800369E4 1440FFF8 */  bnez       $v0, .L800369C8_ovl3
/* DFEF8 800369E8 24630010 */   addiu     $v1, $v1, 0x10
/* DFEFC 800369EC 00008821 */  addu       $s1, $zero, $zero
.L800369F0_ovl3:
/* DFF00 800369F0 8E22000C */  lw         $v0, 0xC($s1)
/* DFF04 800369F4 8C42000C */  lw         $v0, 0xC($v0)
/* DFF08 800369F8 94430000 */  lhu        $v1, 0x0($v0)
/* DFF0C 800369FC 96A20000 */  lhu        $v0, 0x0($s5)
/* DFF10 80036A00 0043102B */  sltu       $v0, $v0, $v1
/* DFF14 80036A04 54400001 */  bnel       $v0, $zero, .L80036A0C_ovl3
/* DFF18 80036A08 A6A30000 */   sh        $v1, 0x0($s5)
.L80036A0C_ovl3:
/* DFF1C 80036A0C 26730001 */  addiu      $s3, $s3, 0x1
/* DFF20 80036A10 3262FFFF */  andi       $v0, $s3, 0xFFFF
/* DFF24 80036A14 0046102B */  sltu       $v0, $v0, $a2
/* DFF28 80036A18 5440FFE9 */  bnel       $v0, $zero, .L800369C0_ovl3
/* DFF2C 80036A1C 00002021 */   addu      $a0, $zero, $zero
.L80036A20_ovl3:
/* DFF30 80036A20 24020001 */  addiu      $v0, $zero, 0x1
/* DFF34 80036A24 A2A20004 */  sb         $v0, 0x4($s5)
/* DFF38 80036A28 32E600FF */  andi       $a2, $s7, 0xFF
/* DFF3C 80036A2C 10C00090 */  beqz       $a2, .L80036C70_ovl3
/* DFF40 80036A30 00009821 */   addu      $s3, $zero, $zero
/* DFF44 80036A34 93B70027 */  lbu        $s7, 0x27($sp)
/* DFF48 80036A38 241E0001 */  addiu      $fp, $zero, 0x1
/* DFF4C 80036A3C AFA60044 */  sw         $a2, 0x44($sp)
/* DFF50 80036A40 266210C9 */  addiu      $v0, $s3, 0x10C9
.L80036A44_ovl3:
/* DFF54 80036A44 00002021 */  addu       $a0, $zero, $zero
/* DFF58 80036A48 3C038007 */  lui        $v1, %hi(D_8006C588_ovl3)
/* DFF5C 80036A4C 8C63C588 */  lw         $v1, %lo(D_8006C588_ovl3)($v1)
/* DFF60 80036A50 3045FFFF */  andi       $a1, $v0, 0xFFFF
.L80036A54_ovl3:
/* DFF64 80036A54 94620000 */  lhu        $v0, 0x0($v1)
/* DFF68 80036A58 10450075 */  beq        $v0, $a1, .L80036C30_ovl3
/* DFF6C 80036A5C 24840001 */   addiu     $a0, $a0, 0x1
/* DFF70 80036A60 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* DFF74 80036A64 2C4200C8 */  sltiu      $v0, $v0, 0xC8
/* DFF78 80036A68 1440FFFA */  bnez       $v0, .L80036A54_ovl3
/* DFF7C 80036A6C 24630010 */   addiu     $v1, $v1, 0x10
/* DFF80 80036A70 00008821 */  addu       $s1, $zero, $zero
.L80036A74_ovl3:
/* DFF84 80036A74 8E22000C */  lw         $v0, 0xC($s1)
/* DFF88 80036A78 8C43000C */  lw         $v1, 0xC($v0)
/* DFF8C 80036A7C 94630002 */  lhu        $v1, 0x2($v1)
/* DFF90 80036A80 8C520010 */  lw         $s2, 0x10($v0)
/* DFF94 80036A84 1060004A */  beqz       $v1, .L80036BB0_ovl3
/* DFF98 80036A88 0000A021 */   addu      $s4, $zero, $zero
/* DFF9C 80036A8C 3262FFFF */  andi       $v0, $s3, 0xFFFF
/* DFFA0 80036A90 0002B100 */  sll        $s6, $v0, 4
.L80036A94_ovl3:
/* DFFA4 80036A94 96A20002 */  lhu        $v0, 0x2($s5)
/* DFFA8 80036A98 96A50000 */  lhu        $a1, 0x0($s5)
/* DFFAC 80036A9C 00450018 */  mult       $v0, $a1
/* DFFB0 80036AA0 00001012 */  mflo       $v0
/* DFFB4 80036AA4 3283FFFF */  andi       $v1, $s4, 0xFFFF
/* DFFB8 80036AA8 00000000 */  nop
/* DFFBC 80036AAC 00650018 */  mult       $v1, $a1
/* DFFC0 80036AB0 00001812 */  mflo       $v1
/* DFFC4 80036AB4 8FA8002C */  lw         $t0, 0x2C($sp)
/* DFFC8 80036AB8 01021021 */  addu       $v0, $t0, $v0
/* DFFCC 80036ABC 00438021 */  addu       $s0, $v0, $v1
/* DFFD0 80036AC0 0C030134 */  jal        bzero
/* DFFD4 80036AC4 02002021 */   addu      $a0, $s0, $zero
/* DFFD8 80036AC8 16FE000D */  bne        $s7, $fp, .L80036B00_ovl3
/* DFFDC 80036ACC 24020002 */   addiu     $v0, $zero, 0x2
/* DFFE0 80036AD0 8E22000C */  lw         $v0, 0xC($s1)
/* DFFE4 80036AD4 8C42000C */  lw         $v0, 0xC($v0)
/* DFFE8 80036AD8 96A40000 */  lhu        $a0, 0x0($s5)
/* DFFEC 80036ADC 94430000 */  lhu        $v1, 0x0($v0)
/* DFFF0 80036AE0 0064102B */  sltu       $v0, $v1, $a0
/* DFFF4 80036AE4 10400005 */  beqz       $v0, .L80036AFC_ovl3
/* DFFF8 80036AE8 00831023 */   subu      $v0, $a0, $v1
/* DFFFC 80036AEC 00021FC2 */  srl        $v1, $v0, 31
/* E0000 80036AF0 00431021 */  addu       $v0, $v0, $v1
/* E0004 80036AF4 00021043 */  sra        $v0, $v0, 1
/* E0008 80036AF8 02028021 */  addu       $s0, $s0, $v0
.L80036AFC_ovl3:
/* E000C 80036AFC 24020002 */  addiu      $v0, $zero, 0x2
.L80036B00_ovl3:
/* E0010 80036B00 16E20009 */  bne        $s7, $v0, .L80036B28_ovl3
/* E0014 80036B04 00000000 */   nop
/* E0018 80036B08 8E22000C */  lw         $v0, 0xC($s1)
/* E001C 80036B0C 8C42000C */  lw         $v0, 0xC($v0)
/* E0020 80036B10 96A40000 */  lhu        $a0, 0x0($s5)
/* E0024 80036B14 94430000 */  lhu        $v1, 0x0($v0)
/* E0028 80036B18 0064102B */  sltu       $v0, $v1, $a0
/* E002C 80036B1C 10400002 */  beqz       $v0, .L80036B28_ovl3
/* E0030 80036B20 00831023 */   subu      $v0, $a0, $v1
/* E0034 80036B24 02028021 */  addu       $s0, $s0, $v0
.L80036B28_ovl3:
/* E0038 80036B28 8E22000C */  lw         $v0, 0xC($s1)
/* E003C 80036B2C 8C42000C */  lw         $v0, 0xC($v0)
/* E0040 80036B30 94420000 */  lhu        $v0, 0x0($v0)
/* E0044 80036B34 00021042 */  srl        $v0, $v0, 1
/* E0048 80036B38 10400014 */  beqz       $v0, .L80036B8C_ovl3
/* E004C 80036B3C 00002021 */   addu      $a0, $zero, $zero
.L80036B40_ovl3:
/* E0050 80036B40 92420000 */  lbu        $v0, 0x0($s2)
/* E0054 80036B44 00021102 */  srl        $v0, $v0, 4
/* E0058 80036B48 00561021 */  addu       $v0, $v0, $s6
/* E005C 80036B4C A2020000 */  sb         $v0, 0x0($s0)
/* E0060 80036B50 92420000 */  lbu        $v0, 0x0($s2)
/* E0064 80036B54 26100001 */  addiu      $s0, $s0, 0x1
/* E0068 80036B58 3042000F */  andi       $v0, $v0, 0xF
/* E006C 80036B5C 00561021 */  addu       $v0, $v0, $s6
/* E0070 80036B60 A2020000 */  sb         $v0, 0x0($s0)
/* E0074 80036B64 8E22000C */  lw         $v0, 0xC($s1)
/* E0078 80036B68 8C42000C */  lw         $v0, 0xC($v0)
/* E007C 80036B6C 24840001 */  addiu      $a0, $a0, 0x1
/* E0080 80036B70 26520001 */  addiu      $s2, $s2, 0x1
/* E0084 80036B74 94430000 */  lhu        $v1, 0x0($v0)
/* E0088 80036B78 3082FFFF */  andi       $v0, $a0, 0xFFFF
/* E008C 80036B7C 00031842 */  srl        $v1, $v1, 1
/* E0090 80036B80 0043102B */  sltu       $v0, $v0, $v1
/* E0094 80036B84 1440FFEE */  bnez       $v0, .L80036B40_ovl3
/* E0098 80036B88 26100001 */   addiu     $s0, $s0, 0x1
.L80036B8C_ovl3:
/* E009C 80036B8C 8E22000C */  lw         $v0, 0xC($s1)
/* E00A0 80036B90 8C42000C */  lw         $v0, 0xC($v0)
/* E00A4 80036B94 94430002 */  lhu        $v1, 0x2($v0)
/* E00A8 80036B98 26940001 */  addiu      $s4, $s4, 0x1
/* E00AC 80036B9C 3282FFFF */  andi       $v0, $s4, 0xFFFF
/* E00B0 80036BA0 0043102B */  sltu       $v0, $v0, $v1
/* E00B4 80036BA4 1440FFBB */  bnez       $v0, .L80036A94_ovl3
/* E00B8 80036BA8 00000000 */   nop
/* E00BC 80036BAC 8E22000C */  lw         $v0, 0xC($s1)
.L80036BB0_ovl3:
/* E00C0 80036BB0 8C43000C */  lw         $v1, 0xC($v0)
/* E00C4 80036BB4 96A20002 */  lhu        $v0, 0x2($s5)
/* E00C8 80036BB8 94630002 */  lhu        $v1, 0x2($v1)
/* E00CC 80036BBC 00431021 */  addu       $v0, $v0, $v1
/* E00D0 80036BC0 A6A20002 */  sh         $v0, 0x2($s5)
/* E00D4 80036BC4 8E22000C */  lw         $v0, 0xC($s1)
/* E00D8 80036BC8 8FA5003C */  lw         $a1, 0x3C($sp)
/* E00DC 80036BCC 8C440014 */  lw         $a0, 0x14($v0)
/* E00E0 80036BD0 0C03006C */  jal        func_800C01B0
/* E00E4 80036BD4 24060020 */   addiu     $a2, $zero, 0x20
/* E00E8 80036BD8 8FA8003C */  lw         $t0, 0x3C($sp)
/* E00EC 80036BDC 82220002 */  lb         $v0, 0x2($s1)
/* E00F0 80036BE0 25080020 */  addiu      $t0, $t0, 0x20
/* E00F4 80036BE4 105E001C */  beq        $v0, $fp, .L80036C58_ovl3
/* E00F8 80036BE8 AFA8003C */   sw        $t0, 0x3C($sp)
/* E00FC 80036BEC 8E24000C */  lw         $a0, 0xC($s1)
/* E0100 80036BF0 8C83000C */  lw         $v1, 0xC($a0)
/* E0104 80036BF4 3C02802F */  lui        $v0, (0x802F97FF >> 16)
/* E0108 80036BF8 344297FF */  ori        $v0, $v0, (0x802F97FF & 0xFFFF)
/* E010C 80036BFC 0043102B */  sltu       $v0, $v0, $v1
/* E0110 80036C00 1440000D */  bnez       $v0, .L80036C38_ovl3
/* E0114 80036C04 00000000 */   nop
/* E0118 80036C08 82220003 */  lb         $v0, 0x3($s1)
/* E011C 80036C0C 145E0004 */  bne        $v0, $fp, .L80036C20_ovl3
/* E0120 80036C10 00000000 */   nop
/* E0124 80036C14 0C0326A1 */  jal        func_800C9A84
/* E0128 80036C18 8C840010 */   lw        $a0, 0x10($a0)
/* E012C 80036C1C 8E24000C */  lw         $a0, 0xC($s1)
.L80036C20_ovl3:
/* E0130 80036C20 0C028D30 */  jal        func_800A34C0
/* E0134 80036C24 00000000 */   nop
/* E0138 80036C28 0800DB14 */  j          .L80036C50_ovl3
/* E013C 80036C2C A6200000 */   sh        $zero, 0x0($s1)
.L80036C30_ovl3:
/* E0140 80036C30 0800DA9D */  j          .L80036A74_ovl3
/* E0144 80036C34 00608821 */   addu      $s1, $v1, $zero
.L80036C38_ovl3:
/* E0148 80036C38 8C840014 */  lw         $a0, 0x14($a0)
/* E014C 80036C3C 0C0326A1 */  jal        func_800C9A84
/* E0150 80036C40 00000000 */   nop
/* E0154 80036C44 0C02910B */  jal        func_800A442C
/* E0158 80036C48 8E24000C */   lw        $a0, 0xC($s1)
/* E015C 80036C4C A6200000 */  sh         $zero, 0x0($s1)
.L80036C50_ovl3:
/* E0160 80036C50 A2200003 */  sb         $zero, 0x3($s1)
/* E0164 80036C54 AE20000C */  sw         $zero, 0xC($s1)
.L80036C58_ovl3:
/* E0168 80036C58 8FA80044 */  lw         $t0, 0x44($sp)
/* E016C 80036C5C 26730001 */  addiu      $s3, $s3, 0x1
/* E0170 80036C60 3262FFFF */  andi       $v0, $s3, 0xFFFF
/* E0174 80036C64 0048102B */  sltu       $v0, $v0, $t0
/* E0178 80036C68 1440FF76 */  bnez       $v0, .L80036A44_ovl3
/* E017C 80036C6C 266210C9 */   addiu     $v0, $s3, 0x10C9
.L80036C70_ovl3:
/* E0180 80036C70 97A4001E */  lhu        $a0, 0x1E($sp)
/* E0184 80036C74 0C00D8E3 */  jal        func_8003638C_ovl3
/* E0188 80036C78 00000000 */   nop
/* E018C 80036C7C 02A02021 */  addu       $a0, $s5, $zero
/* E0190 80036C80 8FA5002C */  lw         $a1, 0x2C($sp)
/* E0194 80036C84 8FA60034 */  lw         $a2, 0x34($sp)
/* E0198 80036C88 24070001 */  addiu      $a3, $zero, 0x1
/* E019C 80036C8C 97A8001E */  lhu        $t0, 0x1E($sp)
/* E01A0 80036C90 00408021 */  addu       $s0, $v0, $zero
/* E01A4 80036C94 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* E01A8 80036C98 AE020008 */  sw         $v0, 0x8($s0)
/* E01AC 80036C9C AE020004 */  sw         $v0, 0x4($s0)
/* E01B0 80036CA0 24020001 */  addiu      $v0, $zero, 0x1
/* E01B4 80036CA4 A2020003 */  sb         $v0, 0x3($s0)
/* E01B8 80036CA8 A6080000 */  sh         $t0, 0x0($s0)
/* E01BC 80036CAC 0C028FA6 */  jal        func_800A3E98
/* E01C0 80036CB0 AFA00010 */   sw        $zero, 0x10($sp)
/* E01C4 80036CB4 AE02000C */  sw         $v0, 0xC($s0)
/* E01C8 80036CB8 97A8001E */  lhu        $t0, 0x1E($sp)
/* E01CC 80036CBC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E01D0 80036CC0 44810000 */  mtc1       $at, $f0
/* E01D4 80036CC4 24030063 */  addiu      $v1, $zero, 0x63
/* E01D8 80036CC8 00681823 */  subu       $v1, $v1, $t0
/* E01DC 80036CCC A443001C */  sh         $v1, 0x1C($v0)
/* E01E0 80036CD0 8E04000C */  lw         $a0, 0xC($s0)
/* E01E4 80036CD4 44060000 */  mfc1       $a2, $f0
/* E01E8 80036CD8 00002821 */  addu       $a1, $zero, $zero
/* E01EC 80036CDC 0C02915B */  jal        func_800A456C
/* E01F0 80036CE0 00C03821 */   addu      $a3, $a2, $zero
/* E01F4 80036CE4 02001021 */  addu       $v0, $s0, $zero
/* E01F8 80036CE8 8FBF006C */  lw         $ra, 0x6C($sp)
/* E01FC 80036CEC 8FBE0068 */  lw         $fp, 0x68($sp)
/* E0200 80036CF0 8FB70064 */  lw         $s7, 0x64($sp)
/* E0204 80036CF4 8FB60060 */  lw         $s6, 0x60($sp)
/* E0208 80036CF8 8FB5005C */  lw         $s5, 0x5C($sp)
/* E020C 80036CFC 8FB40058 */  lw         $s4, 0x58($sp)
/* E0210 80036D00 8FB30054 */  lw         $s3, 0x54($sp)
/* E0214 80036D04 8FB20050 */  lw         $s2, 0x50($sp)
/* E0218 80036D08 8FB1004C */  lw         $s1, 0x4C($sp)
/* E021C 80036D0C 8FB00048 */  lw         $s0, 0x48($sp)
/* E0220 80036D10 03E00008 */  jr         $ra
/* E0224 80036D14 27BD0070 */   addiu     $sp, $sp, 0x70
.size func_80036800_ovl3, . - func_80036800_ovl3
