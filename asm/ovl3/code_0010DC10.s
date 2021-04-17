.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80064700_10DC10
/* 10DC10 80064700 3C028007 */  lui        $v0, %hi(D_800698A0_112DB0)
/* 10DC14 80064704 904298A0 */  lbu        $v0, %lo(D_800698A0_112DB0)($v0)
/* 10DC18 80064708 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 10DC1C 8006470C AFBF003C */  sw         $ra, 0x3c($sp)
/* 10DC20 80064710 AFBE0038 */  sw         $fp, 0x38($sp)
/* 10DC24 80064714 AFB70034 */  sw         $s7, 0x34($sp)
/* 10DC28 80064718 AFB60030 */  sw         $s6, 0x30($sp)
/* 10DC2C 8006471C AFB5002C */  sw         $s5, 0x2c($sp)
/* 10DC30 80064720 AFB40028 */  sw         $s4, 0x28($sp)
/* 10DC34 80064724 AFB30024 */  sw         $s3, 0x24($sp)
/* 10DC38 80064728 AFB20020 */  sw         $s2, 0x20($sp)
/* 10DC3C 8006472C AFB1001C */  sw         $s1, 0x1c($sp)
/* 10DC40 80064730 AFB00018 */  sw         $s0, 0x18($sp)
/* 10DC44 80064734 F7BC0060 */  sdc1       $f28, 0x60($sp)
/* 10DC48 80064738 F7BA0058 */  sdc1       $f26, 0x58($sp)
/* 10DC4C 8006473C F7B80050 */  sdc1       $f24, 0x50($sp)
/* 10DC50 80064740 F7B60048 */  sdc1       $f22, 0x48($sp)
/* 10DC54 80064744 F7B40040 */  sdc1       $f20, 0x40($sp)
/* 10DC58 80064748 104003BA */  beqz       $v0, .L80065634
/* 10DC5C 8006474C 24020001 */   addiu     $v0, $zero, 1
/* 10DC60 80064750 3C018007 */  lui        $at, %hi(D_800698A0_112DB0)
/* 10DC64 80064754 A02098A0 */  sb         $zero, %lo(D_800698A0_112DB0)($at)
/* 10DC68 80064758 3C018007 */  lui        $at, %hi(D_800698A1_112DB1)
/* 10DC6C 8006475C A02098A1 */  sb         $zero, %lo(D_800698A1_112DB1)($at)
/* 10DC70 80064760 3C018007 */  lui        $at, %hi(D_800698A2_112DB2)
/* 10DC74 80064764 A02298A2 */  sb         $v0, %lo(D_800698A2_112DB2)($at)
/* 10DC78 80064768 3C018007 */  lui        $at, %hi(D_800698A3_112DB3)
/* 10DC7C 8006476C A02098A3 */  sb         $zero, %lo(D_800698A3_112DB3)($at)
/* 10DC80 80064770 3C018007 */  lui        $at, %hi(D_800698A4_112DB4)
/* 10DC84 80064774 A02098A4 */  sb         $zero, %lo(D_800698A4_112DB4)($at)
/* 10DC88 80064778 3C018007 */  lui        $at, %hi(D_800698A6_112DB6)
/* 10DC8C 8006477C A42098A6 */  sh         $zero, %lo(D_800698A6_112DB6)($at)
/* 10DC90 80064780 3C018007 */  lui        $at, %hi(D_8006C585)
/* 10DC94 80064784 A020C585 */  sb         $zero, %lo(D_8006C585)($at)
/* 10DC98 80064788 3C018007 */  lui        $at, %hi(D_8006C578)
/* 10DC9C 8006478C A020C578 */  sb         $zero, %lo(D_8006C578)($at)
/* 10DCA0 80064790 0C02DB14 */  jal        func_800B6C50
/* 10DCA4 80064794 00002021 */   addu      $a0, $zero, $zero
/* 10DCA8 80064798 0C00D7DD */  jal        func_80035F74_DF484
/* 10DCAC 8006479C 241000E0 */   addiu     $s0, $zero, 0xe0
/* 10DCB0 800647A0 0C029375 */  jal        func_800A4DD4
/* 10DCB4 800647A4 24120001 */   addiu     $s2, $zero, 1
/* 10DCB8 800647A8 00402021 */  addu       $a0, $v0, $zero
/* 10DCBC 800647AC 24050010 */  addiu      $a1, $zero, 0x10
/* 10DCC0 800647B0 9482001E */  lhu        $v0, 0x1e($a0)
/* 10DCC4 800647B4 24060010 */  addiu      $a2, $zero, 0x10
/* 10DCC8 800647B8 24070130 */  addiu      $a3, $zero, 0x130
/* 10DCCC 800647BC 3C018007 */  lui        $at, %hi(D_8006C370)
/* 10DCD0 800647C0 AC24C370 */  sw         $a0, %lo(D_8006C370)($at)
/* 10DCD4 800647C4 A480001C */  sh         $zero, 0x1c($a0)
/* 10DCD8 800647C8 34420100 */  ori        $v0, $v0, 0x100
/* 10DCDC 800647CC A482001E */  sh         $v0, 0x1e($a0)
/* 10DCE0 800647D0 0C02939C */  jal        func_800A4E70
/* 10DCE4 800647D4 AFB00010 */   sw        $s0, 0x10($sp)
/* 10DCE8 800647D8 0C029375 */  jal        func_800A4DD4
/* 10DCEC 800647DC 00000000 */   nop
/* 10DCF0 800647E0 00402021 */  addu       $a0, $v0, $zero
/* 10DCF4 800647E4 24050010 */  addiu      $a1, $zero, 0x10
/* 10DCF8 800647E8 24060010 */  addiu      $a2, $zero, 0x10
/* 10DCFC 800647EC 24070130 */  addiu      $a3, $zero, 0x130
/* 10DD00 800647F0 3C018007 */  lui        $at, %hi(D_8006C374_BB324)
/* 10DD04 800647F4 AC24C374 */  sw         $a0, %lo(D_8006C374_BB324)($at)
/* 10DD08 800647F8 A480001C */  sh         $zero, 0x1c($a0)
/* 10DD0C 800647FC 0C02939C */  jal        func_800A4E70
/* 10DD10 80064800 AFB00010 */   sw        $s0, 0x10($sp)
/* 10DD14 80064804 2404078E */  addiu      $a0, $zero, 0x78e
/* 10DD18 80064808 24050002 */  addiu      $a1, $zero, 2
/* 10DD1C 8006480C 0C00D925 */  jal        func_80036494_DF9A4
/* 10DD20 80064810 2406001E */   addiu     $a2, $zero, 0x1e
/* 10DD24 80064814 0040A821 */  addu       $s5, $v0, $zero
/* 10DD28 80064818 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DD2C 8006481C 8C82000C */  lw         $v0, 0xc($a0)
/* 10DD30 80064820 94450000 */  lhu        $a1, ($v0)
/* 10DD34 80064824 94460002 */  lhu        $a2, 2($v0)
/* 10DD38 80064828 00052842 */  srl        $a1, $a1, 1
/* 10DD3C 8006482C 0C02912A */  jal        func_800A44A8
/* 10DD40 80064830 00063042 */   srl       $a2, $a2, 1
/* 10DD44 80064834 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DD48 80064838 24050280 */  addiu      $a1, $zero, 0x280
/* 10DD4C 8006483C 0C028D89 */  jal        func_800A3624
/* 10DD50 80064840 24060040 */   addiu     $a2, $zero, 0x40
/* 10DD54 80064844 8EA3000C */  lw         $v1, 0xc($s5)
/* 10DD58 80064848 2404078E */  addiu      $a0, $zero, 0x78e
/* 10DD5C 8006484C 9462001E */  lhu        $v0, 0x1e($v1)
/* 10DD60 80064850 24050002 */  addiu      $a1, $zero, 2
/* 10DD64 80064854 2406001F */  addiu      $a2, $zero, 0x1f
/* 10DD68 80064858 34420144 */  ori        $v0, $v0, 0x144
/* 10DD6C 8006485C 0C00D925 */  jal        func_80036494_DF9A4
/* 10DD70 80064860 A462001E */   sh        $v0, 0x1e($v1)
/* 10DD74 80064864 0040A821 */  addu       $s5, $v0, $zero
/* 10DD78 80064868 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DD7C 8006486C 8C82000C */  lw         $v0, 0xc($a0)
/* 10DD80 80064870 94450000 */  lhu        $a1, ($v0)
/* 10DD84 80064874 94460002 */  lhu        $a2, 2($v0)
/* 10DD88 80064878 00052842 */  srl        $a1, $a1, 1
/* 10DD8C 8006487C 0C02912A */  jal        func_800A44A8
/* 10DD90 80064880 00063042 */   srl       $a2, $a2, 1
/* 10DD94 80064884 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DD98 80064888 24050280 */  addiu      $a1, $zero, 0x280
/* 10DD9C 8006488C 0C028D89 */  jal        func_800A3624
/* 10DDA0 80064890 24060040 */   addiu     $a2, $zero, 0x40
/* 10DDA4 80064894 8EA3000C */  lw         $v1, 0xc($s5)
/* 10DDA8 80064898 9462001E */  lhu        $v0, 0x1e($v1)
/* 10DDAC 8006489C 34420144 */  ori        $v0, $v0, 0x144
/* 10DDB0 800648A0 A462001E */  sh         $v0, 0x1e($v1)
.L800648A4:
/* 10DDB4 800648A4 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DDB8 800648A8 325000FF */  andi       $s0, $s2, 0xff
/* 10DDBC 800648AC 02002821 */  addu       $a1, $s0, $zero
/* 10DDC0 800648B0 0C00DE7C */  jal        func_800379F0_E0F00
/* 10DDC4 800648B4 26520001 */   addiu     $s2, $s2, 1
/* 10DDC8 800648B8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DDCC 800648BC 02002821 */  addu       $a1, $s0, $zero
/* 10DDD0 800648C0 24421084 */  addiu      $v0, $v0, 0x1084
/* 10DDD4 800648C4 0C00DE6C */  jal        func_800379B0_E0EC0
/* 10DDD8 800648C8 3046FFFF */   andi      $a2, $v0, 0xffff
/* 10DDDC 800648CC 2A42000D */  slti       $v0, $s2, 0xd
/* 10DDE0 800648D0 1440FFF4 */  bnez       $v0, .L800648A4
/* 10DDE4 800648D4 2404078F */   addiu     $a0, $zero, 0x78f
/* 10DDE8 800648D8 24050002 */  addiu      $a1, $zero, 2
/* 10DDEC 800648DC 0C00D925 */  jal        func_80036494_DF9A4
/* 10DDF0 800648E0 24060020 */   addiu     $a2, $zero, 0x20
/* 10DDF4 800648E4 0040A821 */  addu       $s5, $v0, $zero
/* 10DDF8 800648E8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DDFC 800648EC 8C82000C */  lw         $v0, 0xc($a0)
/* 10DE00 800648F0 94450000 */  lhu        $a1, ($v0)
/* 10DE04 800648F4 94460002 */  lhu        $a2, 2($v0)
/* 10DE08 800648F8 00052842 */  srl        $a1, $a1, 1
/* 10DE0C 800648FC 24C60010 */  addiu      $a2, $a2, 0x10
/* 10DE10 80064900 00063400 */  sll        $a2, $a2, 0x10
/* 10DE14 80064904 0C02912A */  jal        func_800A44A8
/* 10DE18 80064908 00063403 */   sra       $a2, $a2, 0x10
/* 10DE1C 8006490C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DE20 80064910 3C014080 */  lui        $at, 0x4080
/* 10DE24 80064914 4481A000 */  mtc1       $at, $f20
/* 10DE28 80064918 3C014000 */  lui        $at, 0x4000
/* 10DE2C 8006491C 4481B000 */  mtc1       $at, $f22
/* 10DE30 80064920 4406A000 */  mfc1       $a2, $f20
/* 10DE34 80064924 4407B000 */  mfc1       $a3, $f22
/* 10DE38 80064928 00000000 */  nop
/* 10DE3C 8006492C 0C02915B */  jal        func_800A456C
/* 10DE40 80064930 00002821 */   addu      $a1, $zero, $zero
/* 10DE44 80064934 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DE48 80064938 24050280 */  addiu      $a1, $zero, 0x280
/* 10DE4C 8006493C 0C028D89 */  jal        func_800A3624
/* 10DE50 80064940 24060040 */   addiu     $a2, $zero, 0x40
/* 10DE54 80064944 8EA3000C */  lw         $v1, 0xc($s5)
/* 10DE58 80064948 00002021 */  addu       $a0, $zero, $zero
/* 10DE5C 8006494C 240507A0 */  addiu      $a1, $zero, 0x7a0
/* 10DE60 80064950 9462001E */  lhu        $v0, 0x1e($v1)
/* 10DE64 80064954 24060002 */  addiu      $a2, $zero, 2
/* 10DE68 80064958 24070021 */  addiu      $a3, $zero, 0x21
/* 10DE6C 8006495C 34420104 */  ori        $v0, $v0, 0x104
/* 10DE70 80064960 0C00D9E0 */  jal        func_80036780_DFC90
/* 10DE74 80064964 A462001E */   sh        $v0, 0x1e($v1)
/* 10DE78 80064968 0040A821 */  addu       $s5, $v0, $zero
/* 10DE7C 8006496C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DE80 80064970 8C82000C */  lw         $v0, 0xc($a0)
/* 10DE84 80064974 94450000 */  lhu        $a1, ($v0)
/* 10DE88 80064978 2406FFC0 */  addiu      $a2, $zero, -0x40
/* 10DE8C 8006497C 0C02912A */  jal        func_800A44A8
/* 10DE90 80064980 00052842 */   srl       $a1, $a1, 1
/* 10DE94 80064984 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DE98 80064988 4406A000 */  mfc1       $a2, $f20
/* 10DE9C 8006498C 4407B000 */  mfc1       $a3, $f22
/* 10DEA0 80064990 00000000 */  nop
/* 10DEA4 80064994 0C02915B */  jal        func_800A456C
/* 10DEA8 80064998 00002821 */   addu      $a1, $zero, $zero
/* 10DEAC 8006499C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DEB0 800649A0 24050280 */  addiu      $a1, $zero, 0x280
/* 10DEB4 800649A4 0C028D89 */  jal        func_800A3624
/* 10DEB8 800649A8 24060040 */   addiu     $a2, $zero, 0x40
/* 10DEBC 800649AC 8EA3000C */  lw         $v1, 0xc($s5)
/* 10DEC0 800649B0 00002021 */  addu       $a0, $zero, $zero
/* 10DEC4 800649B4 240507A0 */  addiu      $a1, $zero, 0x7a0
/* 10DEC8 800649B8 9462001E */  lhu        $v0, 0x1e($v1)
/* 10DECC 800649BC 24060002 */  addiu      $a2, $zero, 2
/* 10DED0 800649C0 24070022 */  addiu      $a3, $zero, 0x22
/* 10DED4 800649C4 34420104 */  ori        $v0, $v0, 0x104
/* 10DED8 800649C8 0C00D9E0 */  jal        func_80036780_DFC90
/* 10DEDC 800649CC A462001E */   sh        $v0, 0x1e($v1)
/* 10DEE0 800649D0 0040A821 */  addu       $s5, $v0, $zero
/* 10DEE4 800649D4 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DEE8 800649D8 8C82000C */  lw         $v0, 0xc($a0)
/* 10DEEC 800649DC 94450000 */  lhu        $a1, ($v0)
/* 10DEF0 800649E0 2406FFC0 */  addiu      $a2, $zero, -0x40
/* 10DEF4 800649E4 0C02912A */  jal        func_800A44A8
/* 10DEF8 800649E8 00052842 */   srl       $a1, $a1, 1
/* 10DEFC 800649EC 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DF00 800649F0 4406A000 */  mfc1       $a2, $f20
/* 10DF04 800649F4 4407B000 */  mfc1       $a3, $f22
/* 10DF08 800649F8 00000000 */  nop
/* 10DF0C 800649FC 0C02915B */  jal        func_800A456C
/* 10DF10 80064A00 00002821 */   addu      $a1, $zero, $zero
/* 10DF14 80064A04 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DF18 80064A08 24050280 */  addiu      $a1, $zero, 0x280
/* 10DF1C 80064A0C 0C028D89 */  jal        func_800A3624
/* 10DF20 80064A10 24060040 */   addiu     $a2, $zero, 0x40
/* 10DF24 80064A14 8EA3000C */  lw         $v1, 0xc($s5)
/* 10DF28 80064A18 9462001E */  lhu        $v0, 0x1e($v1)
/* 10DF2C 80064A1C 24120001 */  addiu      $s2, $zero, 1
/* 10DF30 80064A20 34420104 */  ori        $v0, $v0, 0x104
/* 10DF34 80064A24 A462001E */  sh         $v0, 0x1e($v1)
.L80064A28:
/* 10DF38 80064A28 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DF3C 80064A2C 325000FF */  andi       $s0, $s2, 0xff
/* 10DF40 80064A30 02002821 */  addu       $a1, $s0, $zero
/* 10DF44 80064A34 0C00DE7C */  jal        func_800379F0_E0F00
/* 10DF48 80064A38 26520001 */   addiu     $s2, $s2, 1
/* 10DF4C 80064A3C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DF50 80064A40 02002821 */  addu       $a1, $s0, $zero
/* 10DF54 80064A44 24421084 */  addiu      $v0, $v0, 0x1084
/* 10DF58 80064A48 0C00DE6C */  jal        func_800379B0_E0EC0
/* 10DF5C 80064A4C 3046FFFF */   andi      $a2, $v0, 0xffff
/* 10DF60 80064A50 2A420008 */  slti       $v0, $s2, 8
/* 10DF64 80064A54 1440FFF4 */  bnez       $v0, .L80064A28
/* 10DF68 80064A58 2404083F */   addiu     $a0, $zero, 0x83f
/* 10DF6C 80064A5C 24050002 */  addiu      $a1, $zero, 2
/* 10DF70 80064A60 0C00D925 */  jal        func_80036494_DF9A4
/* 10DF74 80064A64 2406005B */   addiu     $a2, $zero, 0x5b
/* 10DF78 80064A68 24040790 */  addiu      $a0, $zero, 0x790
/* 10DF7C 80064A6C 24050002 */  addiu      $a1, $zero, 2
/* 10DF80 80064A70 0C00D925 */  jal        func_80036494_DF9A4
/* 10DF84 80064A74 24060023 */   addiu     $a2, $zero, 0x23
/* 10DF88 80064A78 0040A821 */  addu       $s5, $v0, $zero
/* 10DF8C 80064A7C 8EA3000C */  lw         $v1, 0xc($s5)
/* 10DF90 80064A80 9462001E */  lhu        $v0, 0x1e($v1)
/* 10DF94 80064A84 34420004 */  ori        $v0, $v0, 4
/* 10DF98 80064A88 A462001E */  sh         $v0, 0x1e($v1)
/* 10DF9C 80064A8C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DFA0 80064A90 24050001 */  addiu      $a1, $zero, 1
/* 10DFA4 80064A94 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10DFA8 80064A98 00003021 */   addu      $a2, $zero, $zero
/* 10DFAC 80064A9C 24040023 */  addiu      $a0, $zero, 0x23
/* 10DFB0 80064AA0 0C00DC79 */  jal        func_800371E4_E06F4
/* 10DFB4 80064AA4 2405003A */   addiu     $a1, $zero, 0x3a
/* 10DFB8 80064AA8 0040A821 */  addu       $s5, $v0, $zero
/* 10DFBC 80064AAC 8EA3000C */  lw         $v1, 0xc($s5)
/* 10DFC0 80064AB0 9462001E */  lhu        $v0, 0x1e($v1)
/* 10DFC4 80064AB4 240500FF */  addiu      $a1, $zero, 0xff
/* 10DFC8 80064AB8 24100060 */  addiu      $s0, $zero, 0x60
/* 10DFCC 80064ABC 34420004 */  ori        $v0, $v0, 4
/* 10DFD0 80064AC0 A462001E */  sh         $v0, 0x1e($v1)
/* 10DFD4 80064AC4 AFB00010 */  sw         $s0, 0x10($sp)
/* 10DFD8 80064AC8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DFDC 80064ACC 240600FF */  addiu      $a2, $zero, 0xff
/* 10DFE0 80064AD0 0C028E41 */  jal        func_800A3904
/* 10DFE4 80064AD4 240700FF */   addiu     $a3, $zero, 0xff
/* 10DFE8 80064AD8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10DFEC 80064ADC 24050001 */  addiu      $a1, $zero, 1
/* 10DFF0 80064AE0 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10DFF4 80064AE4 24060001 */   addiu     $a2, $zero, 1
/* 10DFF8 80064AE8 24040793 */  addiu      $a0, $zero, 0x793
/* 10DFFC 80064AEC 24050002 */  addiu      $a1, $zero, 2
/* 10E000 80064AF0 0C00D925 */  jal        func_80036494_DF9A4
/* 10E004 80064AF4 24060024 */   addiu     $a2, $zero, 0x24
/* 10E008 80064AF8 0040A821 */  addu       $s5, $v0, $zero
/* 10E00C 80064AFC 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E010 80064B00 2405FFA0 */  addiu      $a1, $zero, -0x60
/* 10E014 80064B04 0C02912A */  jal        func_800A44A8
/* 10E018 80064B08 2406FFFA */   addiu     $a2, $zero, -6
/* 10E01C 80064B0C 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E020 80064B10 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E024 80064B14 34420004 */  ori        $v0, $v0, 4
/* 10E028 80064B18 A462001E */  sh         $v0, 0x1e($v1)
/* 10E02C 80064B1C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E030 80064B20 24050001 */  addiu      $a1, $zero, 1
/* 10E034 80064B24 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E038 80064B28 00003021 */   addu      $a2, $zero, $zero
/* 10E03C 80064B2C 24040024 */  addiu      $a0, $zero, 0x24
/* 10E040 80064B30 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E044 80064B34 2405003B */   addiu     $a1, $zero, 0x3b
/* 10E048 80064B38 0040A821 */  addu       $s5, $v0, $zero
/* 10E04C 80064B3C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E050 80064B40 2405FFA0 */  addiu      $a1, $zero, -0x60
/* 10E054 80064B44 0C02912A */  jal        func_800A44A8
/* 10E058 80064B48 2406FFFA */   addiu     $a2, $zero, -6
/* 10E05C 80064B4C 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E060 80064B50 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E064 80064B54 240500FF */  addiu      $a1, $zero, 0xff
/* 10E068 80064B58 34420004 */  ori        $v0, $v0, 4
/* 10E06C 80064B5C A462001E */  sh         $v0, 0x1e($v1)
/* 10E070 80064B60 AFB00010 */  sw         $s0, 0x10($sp)
/* 10E074 80064B64 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E078 80064B68 240600FF */  addiu      $a2, $zero, 0xff
/* 10E07C 80064B6C 0C028E41 */  jal        func_800A3904
/* 10E080 80064B70 240700FF */   addiu     $a3, $zero, 0xff
/* 10E084 80064B74 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E088 80064B78 24050001 */  addiu      $a1, $zero, 1
/* 10E08C 80064B7C 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E090 80064B80 24060001 */   addiu     $a2, $zero, 1
/* 10E094 80064B84 24040791 */  addiu      $a0, $zero, 0x791
/* 10E098 80064B88 24050002 */  addiu      $a1, $zero, 2
/* 10E09C 80064B8C 0C00D925 */  jal        func_80036494_DF9A4
/* 10E0A0 80064B90 24060025 */   addiu     $a2, $zero, 0x25
/* 10E0A4 80064B94 0040A821 */  addu       $s5, $v0, $zero
/* 10E0A8 80064B98 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E0AC 80064B9C 2405FFFD */  addiu      $a1, $zero, -3
/* 10E0B0 80064BA0 0C02912A */  jal        func_800A44A8
/* 10E0B4 80064BA4 2406FFEB */   addiu     $a2, $zero, -0x15
/* 10E0B8 80064BA8 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E0BC 80064BAC 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E0C0 80064BB0 34420004 */  ori        $v0, $v0, 4
/* 10E0C4 80064BB4 A462001E */  sh         $v0, 0x1e($v1)
/* 10E0C8 80064BB8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E0CC 80064BBC 24050001 */  addiu      $a1, $zero, 1
/* 10E0D0 80064BC0 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E0D4 80064BC4 00003021 */   addu      $a2, $zero, $zero
/* 10E0D8 80064BC8 24040025 */  addiu      $a0, $zero, 0x25
/* 10E0DC 80064BCC 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E0E0 80064BD0 2405003C */   addiu     $a1, $zero, 0x3c
/* 10E0E4 80064BD4 0040A821 */  addu       $s5, $v0, $zero
/* 10E0E8 80064BD8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E0EC 80064BDC 2405FFFD */  addiu      $a1, $zero, -3
/* 10E0F0 80064BE0 0C02912A */  jal        func_800A44A8
/* 10E0F4 80064BE4 2406FFEB */   addiu     $a2, $zero, -0x15
/* 10E0F8 80064BE8 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E0FC 80064BEC 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E100 80064BF0 240500FF */  addiu      $a1, $zero, 0xff
/* 10E104 80064BF4 34420004 */  ori        $v0, $v0, 4
/* 10E108 80064BF8 A462001E */  sh         $v0, 0x1e($v1)
/* 10E10C 80064BFC AFB00010 */  sw         $s0, 0x10($sp)
/* 10E110 80064C00 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E114 80064C04 240600FF */  addiu      $a2, $zero, 0xff
/* 10E118 80064C08 0C028E41 */  jal        func_800A3904
/* 10E11C 80064C0C 240700FF */   addiu     $a3, $zero, 0xff
/* 10E120 80064C10 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E124 80064C14 24050001 */  addiu      $a1, $zero, 1
/* 10E128 80064C18 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E12C 80064C1C 24060001 */   addiu     $a2, $zero, 1
/* 10E130 80064C20 24040792 */  addiu      $a0, $zero, 0x792
/* 10E134 80064C24 24050002 */  addiu      $a1, $zero, 2
/* 10E138 80064C28 0C00D925 */  jal        func_80036494_DF9A4
/* 10E13C 80064C2C 24060026 */   addiu     $a2, $zero, 0x26
/* 10E140 80064C30 0040A821 */  addu       $s5, $v0, $zero
/* 10E144 80064C34 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E148 80064C38 2405FFC9 */  addiu      $a1, $zero, -0x37
/* 10E14C 80064C3C 0C02912A */  jal        func_800A44A8
/* 10E150 80064C40 2406FFEB */   addiu     $a2, $zero, -0x15
/* 10E154 80064C44 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E158 80064C48 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E15C 80064C4C 34420004 */  ori        $v0, $v0, 4
/* 10E160 80064C50 A462001E */  sh         $v0, 0x1e($v1)
/* 10E164 80064C54 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E168 80064C58 24050001 */  addiu      $a1, $zero, 1
/* 10E16C 80064C5C 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E170 80064C60 00003021 */   addu      $a2, $zero, $zero
/* 10E174 80064C64 24040026 */  addiu      $a0, $zero, 0x26
/* 10E178 80064C68 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E17C 80064C6C 2405003D */   addiu     $a1, $zero, 0x3d
/* 10E180 80064C70 0040A821 */  addu       $s5, $v0, $zero
/* 10E184 80064C74 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E188 80064C78 2405FFC9 */  addiu      $a1, $zero, -0x37
/* 10E18C 80064C7C 0C02912A */  jal        func_800A44A8
/* 10E190 80064C80 2406FFEB */   addiu     $a2, $zero, -0x15
/* 10E194 80064C84 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E198 80064C88 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E19C 80064C8C 240500FF */  addiu      $a1, $zero, 0xff
/* 10E1A0 80064C90 34420004 */  ori        $v0, $v0, 4
/* 10E1A4 80064C94 A462001E */  sh         $v0, 0x1e($v1)
/* 10E1A8 80064C98 AFB00010 */  sw         $s0, 0x10($sp)
/* 10E1AC 80064C9C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E1B0 80064CA0 240600FF */  addiu      $a2, $zero, 0xff
/* 10E1B4 80064CA4 0C028E41 */  jal        func_800A3904
/* 10E1B8 80064CA8 240700FF */   addiu     $a3, $zero, 0xff
/* 10E1BC 80064CAC 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E1C0 80064CB0 24050001 */  addiu      $a1, $zero, 1
/* 10E1C4 80064CB4 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E1C8 80064CB8 24060001 */   addiu     $a2, $zero, 1
/* 10E1CC 80064CBC 24040791 */  addiu      $a0, $zero, 0x791
/* 10E1D0 80064CC0 24050002 */  addiu      $a1, $zero, 2
/* 10E1D4 80064CC4 0C00D925 */  jal        func_80036494_DF9A4
/* 10E1D8 80064CC8 24060027 */   addiu     $a2, $zero, 0x27
/* 10E1DC 80064CCC 0040A821 */  addu       $s5, $v0, $zero
/* 10E1E0 80064CD0 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E1E4 80064CD4 2405FFFD */  addiu      $a1, $zero, -3
/* 10E1E8 80064CD8 0C02912A */  jal        func_800A44A8
/* 10E1EC 80064CDC 2406FFDF */   addiu     $a2, $zero, -0x21
/* 10E1F0 80064CE0 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E1F4 80064CE4 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E1F8 80064CE8 34420004 */  ori        $v0, $v0, 4
/* 10E1FC 80064CEC A462001E */  sh         $v0, 0x1e($v1)
/* 10E200 80064CF0 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E204 80064CF4 24050001 */  addiu      $a1, $zero, 1
/* 10E208 80064CF8 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E20C 80064CFC 00003021 */   addu      $a2, $zero, $zero
/* 10E210 80064D00 24040027 */  addiu      $a0, $zero, 0x27
/* 10E214 80064D04 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E218 80064D08 2405003E */   addiu     $a1, $zero, 0x3e
/* 10E21C 80064D0C 0040A821 */  addu       $s5, $v0, $zero
/* 10E220 80064D10 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E224 80064D14 2405FFFD */  addiu      $a1, $zero, -3
/* 10E228 80064D18 0C02912A */  jal        func_800A44A8
/* 10E22C 80064D1C 2406FFDF */   addiu     $a2, $zero, -0x21
/* 10E230 80064D20 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E234 80064D24 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E238 80064D28 240500FF */  addiu      $a1, $zero, 0xff
/* 10E23C 80064D2C 34420004 */  ori        $v0, $v0, 4
/* 10E240 80064D30 A462001E */  sh         $v0, 0x1e($v1)
/* 10E244 80064D34 AFB00010 */  sw         $s0, 0x10($sp)
/* 10E248 80064D38 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E24C 80064D3C 240600FF */  addiu      $a2, $zero, 0xff
/* 10E250 80064D40 0C028E41 */  jal        func_800A3904
/* 10E254 80064D44 240700FF */   addiu     $a3, $zero, 0xff
/* 10E258 80064D48 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E25C 80064D4C 24050001 */  addiu      $a1, $zero, 1
/* 10E260 80064D50 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E264 80064D54 24060001 */   addiu     $a2, $zero, 1
/* 10E268 80064D58 24040792 */  addiu      $a0, $zero, 0x792
/* 10E26C 80064D5C 24050002 */  addiu      $a1, $zero, 2
/* 10E270 80064D60 0C00D925 */  jal        func_80036494_DF9A4
/* 10E274 80064D64 24060028 */   addiu     $a2, $zero, 0x28
/* 10E278 80064D68 0040A821 */  addu       $s5, $v0, $zero
/* 10E27C 80064D6C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E280 80064D70 2405FFC9 */  addiu      $a1, $zero, -0x37
/* 10E284 80064D74 0C02912A */  jal        func_800A44A8
/* 10E288 80064D78 2406FFDF */   addiu     $a2, $zero, -0x21
/* 10E28C 80064D7C 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E290 80064D80 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E294 80064D84 34420004 */  ori        $v0, $v0, 4
/* 10E298 80064D88 A462001E */  sh         $v0, 0x1e($v1)
/* 10E29C 80064D8C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E2A0 80064D90 24050001 */  addiu      $a1, $zero, 1
/* 10E2A4 80064D94 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E2A8 80064D98 00003021 */   addu      $a2, $zero, $zero
/* 10E2AC 80064D9C 24040028 */  addiu      $a0, $zero, 0x28
/* 10E2B0 80064DA0 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E2B4 80064DA4 2405003F */   addiu     $a1, $zero, 0x3f
/* 10E2B8 80064DA8 0040A821 */  addu       $s5, $v0, $zero
/* 10E2BC 80064DAC 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E2C0 80064DB0 2405FFC9 */  addiu      $a1, $zero, -0x37
/* 10E2C4 80064DB4 0C02912A */  jal        func_800A44A8
/* 10E2C8 80064DB8 2406FFEA */   addiu     $a2, $zero, -0x16
/* 10E2CC 80064DBC 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E2D0 80064DC0 00009021 */  addu       $s2, $zero, $zero
/* 10E2D4 80064DC4 24140060 */  addiu      $s4, $zero, 0x60
/* 10E2D8 80064DC8 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E2DC 80064DCC 2413FFC7 */  addiu      $s3, $zero, -0x39
/* 10E2E0 80064DD0 240500FF */  addiu      $a1, $zero, 0xff
/* 10E2E4 80064DD4 34420004 */  ori        $v0, $v0, 4
/* 10E2E8 80064DD8 A462001E */  sh         $v0, 0x1e($v1)
/* 10E2EC 80064DDC AFB00010 */  sw         $s0, 0x10($sp)
/* 10E2F0 80064DE0 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E2F4 80064DE4 240600FF */  addiu      $a2, $zero, 0xff
/* 10E2F8 80064DE8 0C028E41 */  jal        func_800A3904
/* 10E2FC 80064DEC 240700FF */   addiu     $a3, $zero, 0xff
/* 10E300 80064DF0 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E304 80064DF4 24050001 */  addiu      $a1, $zero, 1
/* 10E308 80064DF8 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E30C 80064DFC 24060001 */   addiu     $a2, $zero, 1
/* 10E310 80064E00 24040795 */  addiu      $a0, $zero, 0x795
.L80064E04:
/* 10E314 80064E04 24050002 */  addiu      $a1, $zero, 2
/* 10E318 80064E08 26500029 */  addiu      $s0, $s2, 0x29
/* 10E31C 80064E0C 3210FFFF */  andi       $s0, $s0, 0xffff
/* 10E320 80064E10 0C00D925 */  jal        func_80036494_DF9A4
/* 10E324 80064E14 02003021 */   addu      $a2, $s0, $zero
/* 10E328 80064E18 0040A821 */  addu       $s5, $v0, $zero
/* 10E32C 80064E1C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E330 80064E20 00138C00 */  sll        $s1, $s3, 0x10
/* 10E334 80064E24 00118C03 */  sra        $s1, $s1, 0x10
/* 10E338 80064E28 02202821 */  addu       $a1, $s1, $zero
/* 10E33C 80064E2C 0C02912A */  jal        func_800A44A8
/* 10E340 80064E30 2406FFFA */   addiu     $a2, $zero, -6
/* 10E344 80064E34 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E348 80064E38 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E34C 80064E3C 34420004 */  ori        $v0, $v0, 4
/* 10E350 80064E40 A462001E */  sh         $v0, 0x1e($v1)
/* 10E354 80064E44 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E358 80064E48 24050001 */  addiu      $a1, $zero, 1
/* 10E35C 80064E4C 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E360 80064E50 00003021 */   addu      $a2, $zero, $zero
/* 10E364 80064E54 02002021 */  addu       $a0, $s0, $zero
/* 10E368 80064E58 26450040 */  addiu      $a1, $s2, 0x40
/* 10E36C 80064E5C 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E370 80064E60 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 10E374 80064E64 0040A821 */  addu       $s5, $v0, $zero
/* 10E378 80064E68 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E37C 80064E6C 02202821 */  addu       $a1, $s1, $zero
/* 10E380 80064E70 0C02912A */  jal        func_800A44A8
/* 10E384 80064E74 2406FFFA */   addiu     $a2, $zero, -6
/* 10E388 80064E78 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E38C 80064E7C 2673FFF8 */  addiu      $s3, $s3, -8
/* 10E390 80064E80 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E394 80064E84 26520001 */  addiu      $s2, $s2, 1
/* 10E398 80064E88 240500FF */  addiu      $a1, $zero, 0xff
/* 10E39C 80064E8C 34420004 */  ori        $v0, $v0, 4
/* 10E3A0 80064E90 A462001E */  sh         $v0, 0x1e($v1)
/* 10E3A4 80064E94 AFB40010 */  sw         $s4, 0x10($sp)
/* 10E3A8 80064E98 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E3AC 80064E9C 240600FF */  addiu      $a2, $zero, 0xff
/* 10E3B0 80064EA0 0C028E41 */  jal        func_800A3904
/* 10E3B4 80064EA4 240700FF */   addiu     $a3, $zero, 0xff
/* 10E3B8 80064EA8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E3BC 80064EAC 24050001 */  addiu      $a1, $zero, 1
/* 10E3C0 80064EB0 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E3C4 80064EB4 24060001 */   addiu     $a2, $zero, 1
/* 10E3C8 80064EB8 2A420005 */  slti       $v0, $s2, 5
/* 10E3CC 80064EBC 1440FFD1 */  bnez       $v0, .L80064E04
/* 10E3D0 80064EC0 24040795 */   addiu     $a0, $zero, 0x795
/* 10E3D4 80064EC4 00009021 */  addu       $s2, $zero, $zero
/* 10E3D8 80064EC8 24140060 */  addiu      $s4, $zero, 0x60
/* 10E3DC 80064ECC 2413FFE6 */  addiu      $s3, $zero, -0x1a
.L80064ED0:
/* 10E3E0 80064ED0 24050002 */  addiu      $a1, $zero, 2
/* 10E3E4 80064ED4 2650002E */  addiu      $s0, $s2, 0x2e
/* 10E3E8 80064ED8 3210FFFF */  andi       $s0, $s0, 0xffff
/* 10E3EC 80064EDC 0C00D925 */  jal        func_80036494_DF9A4
/* 10E3F0 80064EE0 02003021 */   addu      $a2, $s0, $zero
/* 10E3F4 80064EE4 0040A821 */  addu       $s5, $v0, $zero
/* 10E3F8 80064EE8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E3FC 80064EEC 00138C00 */  sll        $s1, $s3, 0x10
/* 10E400 80064EF0 00118C03 */  sra        $s1, $s1, 0x10
/* 10E404 80064EF4 02202821 */  addu       $a1, $s1, $zero
/* 10E408 80064EF8 0C02912A */  jal        func_800A44A8
/* 10E40C 80064EFC 2406FFED */   addiu     $a2, $zero, -0x13
/* 10E410 80064F00 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E414 80064F04 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E418 80064F08 34420004 */  ori        $v0, $v0, 4
/* 10E41C 80064F0C A462001E */  sh         $v0, 0x1e($v1)
/* 10E420 80064F10 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E424 80064F14 24050001 */  addiu      $a1, $zero, 1
/* 10E428 80064F18 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E42C 80064F1C 00003021 */   addu      $a2, $zero, $zero
/* 10E430 80064F20 02002021 */  addu       $a0, $s0, $zero
/* 10E434 80064F24 26450045 */  addiu      $a1, $s2, 0x45
/* 10E438 80064F28 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E43C 80064F2C 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 10E440 80064F30 0040A821 */  addu       $s5, $v0, $zero
/* 10E444 80064F34 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E448 80064F38 02202821 */  addu       $a1, $s1, $zero
/* 10E44C 80064F3C 0C02912A */  jal        func_800A44A8
/* 10E450 80064F40 2406FFED */   addiu     $a2, $zero, -0x13
/* 10E454 80064F44 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E458 80064F48 2673FFF8 */  addiu      $s3, $s3, -8
/* 10E45C 80064F4C 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E460 80064F50 26520001 */  addiu      $s2, $s2, 1
/* 10E464 80064F54 240500FF */  addiu      $a1, $zero, 0xff
/* 10E468 80064F58 34420004 */  ori        $v0, $v0, 4
/* 10E46C 80064F5C A462001E */  sh         $v0, 0x1e($v1)
/* 10E470 80064F60 AFB40010 */  sw         $s4, 0x10($sp)
/* 10E474 80064F64 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E478 80064F68 240600FF */  addiu      $a2, $zero, 0xff
/* 10E47C 80064F6C 0C028E41 */  jal        func_800A3904
/* 10E480 80064F70 240700FF */   addiu     $a3, $zero, 0xff
/* 10E484 80064F74 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E488 80064F78 24050001 */  addiu      $a1, $zero, 1
/* 10E48C 80064F7C 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E490 80064F80 24060001 */   addiu     $a2, $zero, 1
/* 10E494 80064F84 2A420003 */  slti       $v0, $s2, 3
/* 10E498 80064F88 1440FFD1 */  bnez       $v0, .L80064ED0
/* 10E49C 80064F8C 24040795 */   addiu     $a0, $zero, 0x795
/* 10E4A0 80064F90 00009021 */  addu       $s2, $zero, $zero
/* 10E4A4 80064F94 24140060 */  addiu      $s4, $zero, 0x60
/* 10E4A8 80064F98 2413FFB2 */  addiu      $s3, $zero, -0x4e
.L80064F9C:
/* 10E4AC 80064F9C 24050002 */  addiu      $a1, $zero, 2
/* 10E4B0 80064FA0 26500031 */  addiu      $s0, $s2, 0x31
/* 10E4B4 80064FA4 3210FFFF */  andi       $s0, $s0, 0xffff
/* 10E4B8 80064FA8 0C00D925 */  jal        func_80036494_DF9A4
/* 10E4BC 80064FAC 02003021 */   addu      $a2, $s0, $zero
/* 10E4C0 80064FB0 0040A821 */  addu       $s5, $v0, $zero
/* 10E4C4 80064FB4 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E4C8 80064FB8 00138C00 */  sll        $s1, $s3, 0x10
/* 10E4CC 80064FBC 00118C03 */  sra        $s1, $s1, 0x10
/* 10E4D0 80064FC0 02202821 */  addu       $a1, $s1, $zero
/* 10E4D4 80064FC4 0C02912A */  jal        func_800A44A8
/* 10E4D8 80064FC8 2406FFED */   addiu     $a2, $zero, -0x13
/* 10E4DC 80064FCC 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E4E0 80064FD0 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E4E4 80064FD4 34420004 */  ori        $v0, $v0, 4
/* 10E4E8 80064FD8 A462001E */  sh         $v0, 0x1e($v1)
/* 10E4EC 80064FDC 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E4F0 80064FE0 24050001 */  addiu      $a1, $zero, 1
/* 10E4F4 80064FE4 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E4F8 80064FE8 00003021 */   addu      $a2, $zero, $zero
/* 10E4FC 80064FEC 02002021 */  addu       $a0, $s0, $zero
/* 10E500 80064FF0 26450048 */  addiu      $a1, $s2, 0x48
/* 10E504 80064FF4 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E508 80064FF8 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 10E50C 80064FFC 0040A821 */  addu       $s5, $v0, $zero
/* 10E510 80065000 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E514 80065004 02202821 */  addu       $a1, $s1, $zero
/* 10E518 80065008 0C02912A */  jal        func_800A44A8
/* 10E51C 8006500C 2406FFED */   addiu     $a2, $zero, -0x13
/* 10E520 80065010 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E524 80065014 2673FFF8 */  addiu      $s3, $s3, -8
/* 10E528 80065018 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E52C 8006501C 26520001 */  addiu      $s2, $s2, 1
/* 10E530 80065020 240500FF */  addiu      $a1, $zero, 0xff
/* 10E534 80065024 34420004 */  ori        $v0, $v0, 4
/* 10E538 80065028 A462001E */  sh         $v0, 0x1e($v1)
/* 10E53C 8006502C AFB40010 */  sw         $s4, 0x10($sp)
/* 10E540 80065030 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E544 80065034 240600FF */  addiu      $a2, $zero, 0xff
/* 10E548 80065038 0C028E41 */  jal        func_800A3904
/* 10E54C 8006503C 240700FF */   addiu     $a3, $zero, 0xff
/* 10E550 80065040 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E554 80065044 24050001 */  addiu      $a1, $zero, 1
/* 10E558 80065048 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E55C 8006504C 24060001 */   addiu     $a2, $zero, 1
/* 10E560 80065050 2A420003 */  slti       $v0, $s2, 3
/* 10E564 80065054 1440FFD1 */  bnez       $v0, .L80064F9C
/* 10E568 80065058 24040795 */   addiu     $a0, $zero, 0x795
/* 10E56C 8006505C 00009021 */  addu       $s2, $zero, $zero
/* 10E570 80065060 24140031 */  addiu      $s4, $zero, 0x31
/* 10E574 80065064 2413FFE6 */  addiu      $s3, $zero, -0x1a
.L80065068:
/* 10E578 80065068 24050002 */  addiu      $a1, $zero, 2
/* 10E57C 8006506C 26500034 */  addiu      $s0, $s2, 0x34
/* 10E580 80065070 3210FFFF */  andi       $s0, $s0, 0xffff
/* 10E584 80065074 0C00D925 */  jal        func_80036494_DF9A4
/* 10E588 80065078 02003021 */   addu      $a2, $s0, $zero
/* 10E58C 8006507C 0040A821 */  addu       $s5, $v0, $zero
/* 10E590 80065080 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E594 80065084 00138C00 */  sll        $s1, $s3, 0x10
/* 10E598 80065088 00118C03 */  sra        $s1, $s1, 0x10
/* 10E59C 8006508C 02202821 */  addu       $a1, $s1, $zero
/* 10E5A0 80065090 0C02912A */  jal        func_800A44A8
/* 10E5A4 80065094 2406FFE1 */   addiu     $a2, $zero, -0x1f
/* 10E5A8 80065098 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E5AC 8006509C 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E5B0 800650A0 34420004 */  ori        $v0, $v0, 4
/* 10E5B4 800650A4 A462001E */  sh         $v0, 0x1e($v1)
/* 10E5B8 800650A8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E5BC 800650AC 24050001 */  addiu      $a1, $zero, 1
/* 10E5C0 800650B0 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E5C4 800650B4 00003021 */   addu      $a2, $zero, $zero
/* 10E5C8 800650B8 02002021 */  addu       $a0, $s0, $zero
/* 10E5CC 800650BC 2645004B */  addiu      $a1, $s2, 0x4b
/* 10E5D0 800650C0 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E5D4 800650C4 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 10E5D8 800650C8 0040A821 */  addu       $s5, $v0, $zero
/* 10E5DC 800650CC 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E5E0 800650D0 02202821 */  addu       $a1, $s1, $zero
/* 10E5E4 800650D4 0C02912A */  jal        func_800A44A8
/* 10E5E8 800650D8 2406FFE1 */   addiu     $a2, $zero, -0x1f
/* 10E5EC 800650DC 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E5F0 800650E0 2673FFF8 */  addiu      $s3, $s3, -8
/* 10E5F4 800650E4 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E5F8 800650E8 26520001 */  addiu      $s2, $s2, 1
/* 10E5FC 800650EC 240500FF */  addiu      $a1, $zero, 0xff
/* 10E600 800650F0 34420004 */  ori        $v0, $v0, 4
/* 10E604 800650F4 A462001E */  sh         $v0, 0x1e($v1)
/* 10E608 800650F8 AFB40010 */  sw         $s4, 0x10($sp)
/* 10E60C 800650FC 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E610 80065100 240600FF */  addiu      $a2, $zero, 0xff
/* 10E614 80065104 0C028E41 */  jal        func_800A3904
/* 10E618 80065108 240700FF */   addiu     $a3, $zero, 0xff
/* 10E61C 8006510C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E620 80065110 24050001 */  addiu      $a1, $zero, 1
/* 10E624 80065114 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E628 80065118 24060001 */   addiu     $a2, $zero, 1
/* 10E62C 8006511C 2A420003 */  slti       $v0, $s2, 3
/* 10E630 80065120 1440FFD1 */  bnez       $v0, .L80065068
/* 10E634 80065124 24040795 */   addiu     $a0, $zero, 0x795
/* 10E638 80065128 00009021 */  addu       $s2, $zero, $zero
/* 10E63C 8006512C 24140060 */  addiu      $s4, $zero, 0x60
/* 10E640 80065130 2413FFB2 */  addiu      $s3, $zero, -0x4e
.L80065134:
/* 10E644 80065134 24050002 */  addiu      $a1, $zero, 2
/* 10E648 80065138 26500037 */  addiu      $s0, $s2, 0x37
/* 10E64C 8006513C 3210FFFF */  andi       $s0, $s0, 0xffff
/* 10E650 80065140 0C00D925 */  jal        func_80036494_DF9A4
/* 10E654 80065144 02003021 */   addu      $a2, $s0, $zero
/* 10E658 80065148 0040A821 */  addu       $s5, $v0, $zero
/* 10E65C 8006514C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E660 80065150 00138C00 */  sll        $s1, $s3, 0x10
/* 10E664 80065154 00118C03 */  sra        $s1, $s1, 0x10
/* 10E668 80065158 02202821 */  addu       $a1, $s1, $zero
/* 10E66C 8006515C 0C02912A */  jal        func_800A44A8
/* 10E670 80065160 2406FFE1 */   addiu     $a2, $zero, -0x1f
/* 10E674 80065164 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E678 80065168 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E67C 8006516C 34420004 */  ori        $v0, $v0, 4
/* 10E680 80065170 A462001E */  sh         $v0, 0x1e($v1)
/* 10E684 80065174 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E688 80065178 24050001 */  addiu      $a1, $zero, 1
/* 10E68C 8006517C 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E690 80065180 00003021 */   addu      $a2, $zero, $zero
/* 10E694 80065184 02002021 */  addu       $a0, $s0, $zero
/* 10E698 80065188 2645004E */  addiu      $a1, $s2, 0x4e
/* 10E69C 8006518C 0C00DC79 */  jal        func_800371E4_E06F4
/* 10E6A0 80065190 30A5FFFF */   andi      $a1, $a1, 0xffff
/* 10E6A4 80065194 0040A821 */  addu       $s5, $v0, $zero
/* 10E6A8 80065198 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E6AC 8006519C 02202821 */  addu       $a1, $s1, $zero
/* 10E6B0 800651A0 0C02912A */  jal        func_800A44A8
/* 10E6B4 800651A4 2406FFE1 */   addiu     $a2, $zero, -0x1f
/* 10E6B8 800651A8 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E6BC 800651AC 2673FFF8 */  addiu      $s3, $s3, -8
/* 10E6C0 800651B0 9462001E */  lhu        $v0, 0x1e($v1)
/* 10E6C4 800651B4 26520001 */  addiu      $s2, $s2, 1
/* 10E6C8 800651B8 240500FF */  addiu      $a1, $zero, 0xff
/* 10E6CC 800651BC 34420004 */  ori        $v0, $v0, 4
/* 10E6D0 800651C0 A462001E */  sh         $v0, 0x1e($v1)
/* 10E6D4 800651C4 AFB40010 */  sw         $s4, 0x10($sp)
/* 10E6D8 800651C8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E6DC 800651CC 240600FF */  addiu      $a2, $zero, 0xff
/* 10E6E0 800651D0 0C028E41 */  jal        func_800A3904
/* 10E6E4 800651D4 240700FF */   addiu     $a3, $zero, 0xff
/* 10E6E8 800651D8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10E6EC 800651DC 24050001 */  addiu      $a1, $zero, 1
/* 10E6F0 800651E0 0C00DE72 */  jal        func_800379C8_E0ED8
/* 10E6F4 800651E4 24060001 */   addiu     $a2, $zero, 1
/* 10E6F8 800651E8 2A420003 */  slti       $v0, $s2, 3
/* 10E6FC 800651EC 1440FFD1 */  bnez       $v0, .L80065134
/* 10E700 800651F0 24040795 */   addiu     $a0, $zero, 0x795
/* 10E704 800651F4 24050002 */  addiu      $a1, $zero, 2
/* 10E708 800651F8 2406000A */  addiu      $a2, $zero, 0xa
/* 10E70C 800651FC 0C00D97B */  jal        func_800365EC_DFAFC
/* 10E710 80065200 24070051 */   addiu     $a3, $zero, 0x51
/* 10E714 80065204 00009021 */  addu       $s2, $zero, $zero
/* 10E718 80065208 3C013CF5 */  lui        $at, 0x3cf5
/* 10E71C 8006520C 3421C28F */  ori        $at, $at, 0xc28f
/* 10E720 80065210 4481B000 */  mtc1       $at, $f22
/* 10E724 80065214 241000FF */  addiu      $s0, $zero, 0xff
/* 10E728 80065218 24130020 */  addiu      $s3, $zero, 0x20
/* 10E72C 8006521C 2411FFFF */  addiu      $s1, $zero, -1
/* 10E730 80065220 26440006 */  addiu      $a0, $s2, 6
.L80065224:
/* 10E734 80065224 0C00DFA8 */  jal        func_80037EA0_E13B0
/* 10E738 80065228 3084FFFF */   andi      $a0, $a0, 0xffff
/* 10E73C 8006522C 0040A021 */  addu       $s4, $v0, $zero
/* 10E740 80065230 02802021 */  addu       $a0, $s4, $zero
/* 10E744 80065234 3C01C3DC */  lui        $at, 0xc3dc
/* 10E748 80065238 44810000 */  mtc1       $at, $f0
/* 10E74C 8006523C 3C014440 */  lui        $at, 0x4440
/* 10E750 80065240 34218000 */  ori        $at, $at, 0x8000
/* 10E754 80065244 44811000 */  mtc1       $at, $f2
/* 10E758 80065248 24050100 */  addiu      $a1, $zero, 0x100
/* 10E75C 8006524C 4492A000 */  mtc1       $s2, $f20
/* 10E760 80065250 00000000 */  nop
/* 10E764 80065254 4680A520 */  cvt.s.w    $f20, $f20
/* 10E768 80065258 AE800010 */  sw         $zero, 0x10($s4)
/* 10E76C 8006525C AE800014 */  sw         $zero, 0x14($s4)
/* 10E770 80065260 4600A502 */  mul.s      $f20, $f20, $f0
/* 10E774 80065264 E6960028 */  swc1       $f22, 0x28($s4)
/* 10E778 80065268 AE80001C */  sw         $zero, 0x1c($s4)
/* 10E77C 8006526C AE800020 */  sw         $zero, 0x20($s4)
/* 10E780 80065270 AE800024 */  sw         $zero, 0x24($s4)
/* 10E784 80065274 A6900074 */  sh         $s0, 0x74($s4)
/* 10E788 80065278 A6900076 */  sh         $s0, 0x76($s4)
/* 10E78C 8006527C 4602A500 */  add.s      $f20, $f20, $f2
/* 10E790 80065280 A6900078 */  sh         $s0, 0x78($s4)
/* 10E794 80065284 A693007A */  sh         $s3, 0x7a($s4)
/* 10E798 80065288 A6910070 */  sh         $s1, 0x70($s4)
/* 10E79C 8006528C 0C00DFE6 */  jal        func_80037F98_E14A8
/* 10E7A0 80065290 E6940018 */   swc1      $f20, 0x18($s4)
/* 10E7A4 80065294 8E820004 */  lw         $v0, 4($s4)
/* 10E7A8 80065298 A0400067 */  sb         $zero, 0x67($v0)
/* 10E7AC 8006529C 8E830004 */  lw         $v1, 4($s4)
/* 10E7B0 800652A0 90620066 */  lbu        $v0, 0x66($v1)
/* 10E7B4 800652A4 26440016 */  addiu      $a0, $s2, 0x16
/* 10E7B8 800652A8 3084FFFF */  andi       $a0, $a0, 0xffff
/* 10E7BC 800652AC 34420023 */  ori        $v0, $v0, 0x23
/* 10E7C0 800652B0 0C00DFA8 */  jal        func_80037EA0_E13B0
/* 10E7C4 800652B4 A0620066 */   sb        $v0, 0x66($v1)
/* 10E7C8 800652B8 0040A021 */  addu       $s4, $v0, $zero
/* 10E7CC 800652BC 02802021 */  addu       $a0, $s4, $zero
/* 10E7D0 800652C0 240500FF */  addiu      $a1, $zero, 0xff
/* 10E7D4 800652C4 AE800010 */  sw         $zero, 0x10($s4)
/* 10E7D8 800652C8 AE800014 */  sw         $zero, 0x14($s4)
/* 10E7DC 800652CC E6940018 */  swc1       $f20, 0x18($s4)
/* 10E7E0 800652D0 E6960028 */  swc1       $f22, 0x28($s4)
/* 10E7E4 800652D4 AE80001C */  sw         $zero, 0x1c($s4)
/* 10E7E8 800652D8 AE800020 */  sw         $zero, 0x20($s4)
/* 10E7EC 800652DC AE800024 */  sw         $zero, 0x24($s4)
/* 10E7F0 800652E0 A6900074 */  sh         $s0, 0x74($s4)
/* 10E7F4 800652E4 A6900076 */  sh         $s0, 0x76($s4)
/* 10E7F8 800652E8 A6900078 */  sh         $s0, 0x78($s4)
/* 10E7FC 800652EC A693007A */  sh         $s3, 0x7a($s4)
/* 10E800 800652F0 0C00DFE6 */  jal        func_80037F98_E14A8
/* 10E804 800652F4 A6910070 */   sh        $s1, 0x70($s4)
/* 10E808 800652F8 8E820004 */  lw         $v0, 4($s4)
/* 10E80C 800652FC A0400067 */  sb         $zero, 0x67($v0)
/* 10E810 80065300 8E830004 */  lw         $v1, 4($s4)
/* 10E814 80065304 90620066 */  lbu        $v0, 0x66($v1)
/* 10E818 80065308 26520001 */  addiu      $s2, $s2, 1
/* 10E81C 8006530C 34420023 */  ori        $v0, $v0, 0x23
/* 10E820 80065310 A0620066 */  sb         $v0, 0x66($v1)
/* 10E824 80065314 2A420010 */  slti       $v0, $s2, 0x10
/* 10E828 80065318 5440FFC2 */  bnezl      $v0, .L80065224
/* 10E82C 8006531C 26440006 */   addiu     $a0, $s2, 6
/* 10E830 80065320 0C00DFA8 */  jal        func_80037EA0_E13B0
/* 10E834 80065324 24040003 */   addiu     $a0, $zero, 3
/* 10E838 80065328 0040A021 */  addu       $s4, $v0, $zero
/* 10E83C 8006532C 3C013C75 */  lui        $at, 0x3c75
/* 10E840 80065330 3421C28F */  ori        $at, $at, 0xc28f
/* 10E844 80065334 4481A000 */  mtc1       $at, $f20
/* 10E848 80065338 3C014334 */  lui        $at, 0x4334
/* 10E84C 8006533C 44810000 */  mtc1       $at, $f0
/* 10E850 80065340 02802021 */  addu       $a0, $s4, $zero
/* 10E854 80065344 240500BA */  addiu      $a1, $zero, 0xba
/* 10E858 80065348 241000FF */  addiu      $s0, $zero, 0xff
/* 10E85C 8006534C 2411FFFF */  addiu      $s1, $zero, -1
/* 10E860 80065350 AE800010 */  sw         $zero, 0x10($s4)
/* 10E864 80065354 AE800014 */  sw         $zero, 0x14($s4)
/* 10E868 80065358 AE800018 */  sw         $zero, 0x18($s4)
/* 10E86C 8006535C AE80001C */  sw         $zero, 0x1c($s4)
/* 10E870 80065360 AE800024 */  sw         $zero, 0x24($s4)
/* 10E874 80065364 A6900074 */  sh         $s0, 0x74($s4)
/* 10E878 80065368 A6900076 */  sh         $s0, 0x76($s4)
/* 10E87C 8006536C A6900078 */  sh         $s0, 0x78($s4)
/* 10E880 80065370 A690007A */  sh         $s0, 0x7a($s4)
/* 10E884 80065374 A6910070 */  sh         $s1, 0x70($s4)
/* 10E888 80065378 E6940028 */  swc1       $f20, 0x28($s4)
/* 10E88C 8006537C 0C00DFE6 */  jal        func_80037F98_E14A8
/* 10E890 80065380 E6800020 */   swc1      $f0, 0x20($s4)
/* 10E894 80065384 8E820004 */  lw         $v0, 4($s4)
/* 10E898 80065388 A0400067 */  sb         $zero, 0x67($v0)
/* 10E89C 8006538C 8E830004 */  lw         $v1, 4($s4)
/* 10E8A0 80065390 90620066 */  lbu        $v0, 0x66($v1)
/* 10E8A4 80065394 24040004 */  addiu      $a0, $zero, 4
/* 10E8A8 80065398 34420003 */  ori        $v0, $v0, 3
/* 10E8AC 8006539C 0C00DFA8 */  jal        func_80037EA0_E13B0
/* 10E8B0 800653A0 A0620066 */   sb        $v0, 0x66($v1)
/* 10E8B4 800653A4 0040A021 */  addu       $s4, $v0, $zero
/* 10E8B8 800653A8 02802021 */  addu       $a0, $s4, $zero
/* 10E8BC 800653AC 24050101 */  addiu      $a1, $zero, 0x101
/* 10E8C0 800653B0 24130018 */  addiu      $s3, $zero, 0x18
/* 10E8C4 800653B4 AE800010 */  sw         $zero, 0x10($s4)
/* 10E8C8 800653B8 AE800014 */  sw         $zero, 0x14($s4)
/* 10E8CC 800653BC AE800018 */  sw         $zero, 0x18($s4)
/* 10E8D0 800653C0 E6940028 */  swc1       $f20, 0x28($s4)
/* 10E8D4 800653C4 AE80001C */  sw         $zero, 0x1c($s4)
/* 10E8D8 800653C8 AE800020 */  sw         $zero, 0x20($s4)
/* 10E8DC 800653CC AE800024 */  sw         $zero, 0x24($s4)
/* 10E8E0 800653D0 A6900074 */  sh         $s0, 0x74($s4)
/* 10E8E4 800653D4 A6900076 */  sh         $s0, 0x76($s4)
/* 10E8E8 800653D8 A6900078 */  sh         $s0, 0x78($s4)
/* 10E8EC 800653DC A693007A */  sh         $s3, 0x7a($s4)
/* 10E8F0 800653E0 0C00DFE6 */  jal        func_80037F98_E14A8
/* 10E8F4 800653E4 A6910070 */   sh        $s1, 0x70($s4)
/* 10E8F8 800653E8 8E820004 */  lw         $v0, 4($s4)
/* 10E8FC 800653EC 2412000A */  addiu      $s2, $zero, 0xa
/* 10E900 800653F0 A0520067 */  sb         $s2, 0x67($v0)
/* 10E904 800653F4 8E830004 */  lw         $v1, 4($s4)
/* 10E908 800653F8 90620066 */  lbu        $v0, 0x66($v1)
/* 10E90C 800653FC 24040005 */  addiu      $a0, $zero, 5
/* 10E910 80065400 34420023 */  ori        $v0, $v0, 0x23
/* 10E914 80065404 0C00DFA8 */  jal        func_80037EA0_E13B0
/* 10E918 80065408 A0620066 */   sb        $v0, 0x66($v1)
/* 10E91C 8006540C 0040A021 */  addu       $s4, $v0, $zero
/* 10E920 80065410 02802021 */  addu       $a0, $s4, $zero
/* 10E924 80065414 24050101 */  addiu      $a1, $zero, 0x101
/* 10E928 80065418 AE800010 */  sw         $zero, 0x10($s4)
/* 10E92C 8006541C AE800014 */  sw         $zero, 0x14($s4)
/* 10E930 80065420 AE800018 */  sw         $zero, 0x18($s4)
/* 10E934 80065424 E6940028 */  swc1       $f20, 0x28($s4)
/* 10E938 80065428 AE80001C */  sw         $zero, 0x1c($s4)
/* 10E93C 8006542C AE800020 */  sw         $zero, 0x20($s4)
/* 10E940 80065430 AE800024 */  sw         $zero, 0x24($s4)
/* 10E944 80065434 A6900074 */  sh         $s0, 0x74($s4)
/* 10E948 80065438 A6900076 */  sh         $s0, 0x76($s4)
/* 10E94C 8006543C A6900078 */  sh         $s0, 0x78($s4)
/* 10E950 80065440 A693007A */  sh         $s3, 0x7a($s4)
/* 10E954 80065444 0C00DFE6 */  jal        func_80037F98_E14A8
/* 10E958 80065448 A6910070 */   sh        $s1, 0x70($s4)
/* 10E95C 8006544C 8E820004 */  lw         $v0, 4($s4)
/* 10E960 80065450 A0520067 */  sb         $s2, 0x67($v0)
/* 10E964 80065454 8E830004 */  lw         $v1, 4($s4)
/* 10E968 80065458 90620066 */  lbu        $v0, 0x66($v1)
/* 10E96C 8006545C 34420023 */  ori        $v0, $v0, 0x23
/* 10E970 80065460 A0620066 */  sb         $v0, 0x66($v1)
/* 10E974 80065464 8E840004 */  lw         $a0, 4($s4)
/* 10E978 80065468 3C058007 */  lui        $a1, %hi(D_8006A5C8_113AD8)
/* 10E97C 8006546C 0C0284DC */  jal        func_800A1370
/* 10E980 80065470 24A5A5C8 */   addiu     $a1, $a1, %lo(D_8006A5C8_113AD8)
/* 10E984 80065474 8E840004 */  lw         $a0, 4($s4)
/* 10E988 80065478 00021400 */  sll        $v0, $v0, 0x10
/* 10E98C 8006547C 0C0285CC */  jal        func_800A1730
/* 10E990 80065480 00022C03 */   sra       $a1, $v0, 0x10
/* 10E994 80065484 8EA3000C */  lw         $v1, 0xc($s5)
/* 10E998 80065488 8C640010 */  lw         $a0, 0x10($v1)
/* 10E99C 8006548C 24450020 */  addiu      $a1, $v0, 0x20
/* 10E9A0 80065490 0C03006C */  jal        func_800C01B0
/* 10E9A4 80065494 24060400 */   addiu     $a2, $zero, 0x400
/* 10E9A8 80065498 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 10E9AC 8006549C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 10E9B0 800654A0 2404003C */  addiu      $a0, $zero, 0x3c
/* 10E9B4 800654A4 0082001A */  div        $zero, $a0, $v0
/* 10E9B8 800654A8 14400002 */  bnez       $v0, .L800654B4
/* 10E9BC 800654AC 00000000 */   nop
/* 10E9C0 800654B0 0007000D */  break      7
.L800654B4:
/* 10E9C4 800654B4 2401FFFF */   addiu     $at, $zero, -1
/* 10E9C8 800654B8 14410004 */  bne        $v0, $at, .L800654CC
/* 10E9CC 800654BC 3C018000 */   lui       $at, 0x8000
/* 10E9D0 800654C0 14810002 */  bne        $a0, $at, .L800654CC
/* 10E9D4 800654C4 00000000 */   nop
/* 10E9D8 800654C8 0006000D */  break      6
.L800654CC:
/* 10E9DC 800654CC 00002012 */   mflo      $a0
/* 10E9E0 800654D0 3C013F80 */  lui        $at, 0x3f80
/* 10E9E4 800654D4 4481A000 */  mtc1       $at, $f20
/* 10E9E8 800654D8 3C014148 */  lui        $at, 0x4148
/* 10E9EC 800654DC 4481B000 */  mtc1       $at, $f22
/* 10E9F0 800654E0 3C01C1A0 */  lui        $at, 0xc1a0
/* 10E9F4 800654E4 4481C000 */  mtc1       $at, $f24
/* 10E9F8 800654E8 3C01C5BB */  lui        $at, 0xc5bb
/* 10E9FC 800654EC 34218000 */  ori        $at, $at, 0x8000
/* 10EA00 800654F0 44818000 */  mtc1       $at, $f16
/* 10EA04 800654F4 3C0140A0 */  lui        $at, 0x40a0
/* 10EA08 800654F8 44819000 */  mtc1       $at, $f18
/* 10EA0C 800654FC 3C014320 */  lui        $at, 0x4320
/* 10EA10 80065500 4481D000 */  mtc1       $at, $f26
/* 10EA14 80065504 3C01C280 */  lui        $at, 0xc280
/* 10EA18 80065508 44812000 */  mtc1       $at, $f4
/* 10EA1C 8006550C 3C01C120 */  lui        $at, 0xc120
/* 10EA20 80065510 44813000 */  mtc1       $at, $f6
/* 10EA24 80065514 3C013E99 */  lui        $at, 0x3e99
/* 10EA28 80065518 3421999A */  ori        $at, $at, 0x999a
/* 10EA2C 8006551C 44814000 */  mtc1       $at, $f8
/* 10EA30 80065520 3C038015 */  lui        $v1, %hi(D_8014A064)
/* 10EA34 80065524 2463A064 */  addiu      $v1, $v1, %lo(D_8014A064)
/* 10EA38 80065528 AC600000 */  sw         $zero, ($v1)
/* 10EA3C 8006552C C4620000 */  lwc1       $f2, ($v1)
/* 10EA40 80065530 3C01C040 */  lui        $at, 0xc040
/* 10EA44 80065534 44815000 */  mtc1       $at, $f10
/* 10EA48 80065538 3C028007 */  lui        $v0, %hi(D_8006C585)
/* 10EA4C 8006553C 9042C585 */  lbu        $v0, %lo(D_8006C585)($v0)
/* 10EA50 80065540 3C014462 */  lui        $at, 0x4462
/* 10EA54 80065544 34214000 */  ori        $at, $at, 0x4000
/* 10EA58 80065548 44816000 */  mtc1       $at, $f12
/* 10EA5C 8006554C 3C014120 */  lui        $at, 0x4120
/* 10EA60 80065550 44817000 */  mtc1       $at, $f14
/* 10EA64 80065554 00021080 */  sll        $v0, $v0, 2
/* 10EA68 80065558 3C018007 */  lui        $at, %hi(D_8006A5BC_113ACC)
/* 10EA6C 8006555C 00220821 */  addu       $at, $at, $v0
/* 10EA70 80065560 C420A5BC */  lwc1       $f0, %lo(D_8006A5BC_113ACC)($at)
/* 10EA74 80065564 3C018015 */  lui        $at, %hi(D_8014A068)
/* 10EA78 80065568 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 10EA7C 8006556C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 10EA80 80065570 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 10EA84 80065574 3C018015 */  lui        $at, %hi(D_8014A070)
/* 10EA88 80065578 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* 10EA8C 8006557C 3C018015 */  lui        $at, %hi(D_8014A078)
/* 10EA90 80065580 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* 10EA94 80065584 3C018015 */  lui        $at, %hi(D_8014A080)
/* 10EA98 80065588 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 10EA9C 8006558C 3C018015 */  lui        $at, %hi(D_8014A084)
/* 10EAA0 80065590 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 10EAA4 80065594 3C018007 */  lui        $at, %hi(D_8006C39C)
/* 10EAA8 80065598 AC20C39C */  sw         $zero, %lo(D_8006C39C)($at)
/* 10EAAC 8006559C 3C018015 */  lui        $at, %hi(D_8014A074)
/* 10EAB0 800655A0 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* 10EAB4 800655A4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 10EAB8 800655A8 E436A07C */  swc1       $f22, %lo(D_8014A07C)($at)
/* 10EABC 800655AC 3C018015 */  lui        $at, %hi(D_8014A088)
/* 10EAC0 800655B0 E438A088 */  swc1       $f24, %lo(D_8014A088)($at)
/* 10EAC4 800655B4 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10EAC8 800655B8 E430C38C */  swc1       $f16, %lo(D_8006C38C)($at)
/* 10EACC 800655BC 3C018007 */  lui        $at, %hi(D_8006C390)
/* 10EAD0 800655C0 E432C390 */  swc1       $f18, %lo(D_8006C390)($at)
/* 10EAD4 800655C4 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10EAD8 800655C8 E424C398 */  swc1       $f4, %lo(D_8006C398)($at)
/* 10EADC 800655CC 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10EAE0 800655D0 E426C3A0 */  swc1       $f6, %lo(D_8006C3A0)($at)
/* 10EAE4 800655D4 3C018007 */  lui        $at, %hi(D_8006C3A4)
/* 10EAE8 800655D8 E428C3A4 */  swc1       $f8, %lo(D_8006C3A4)($at)
/* 10EAEC 800655DC 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 10EAF0 800655E0 E422C37C */  swc1       $f2, %lo(D_8006C37C)($at)
/* 10EAF4 800655E4 3C018007 */  lui        $at, %hi(D_8006C378)
/* 10EAF8 800655E8 E422C378 */  swc1       $f2, %lo(D_8006C378)($at)
/* 10EAFC 800655EC 3C018007 */  lui        $at, %hi(D_8006C388)
/* 10EB00 800655F0 E42AC388 */  swc1       $f10, %lo(D_8006C388)($at)
/* 10EB04 800655F4 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10EB08 800655F8 E42CC3B4 */  swc1       $f12, %lo(D_8006C3B4)($at)
/* 10EB0C 800655FC 3C018007 */  lui        $at, %hi(D_8006C3BC)
/* 10EB10 80065600 E42EC3BC */  swc1       $f14, %lo(D_8006C3BC)($at)
/* 10EB14 80065604 240200FF */  addiu      $v0, $zero, 0xff
/* 10EB18 80065608 461A0000 */  add.s      $f0, $f0, $f26
/* 10EB1C 8006560C 3C018007 */  lui        $at, %hi(D_8006C386)
/* 10EB20 80065610 A022C386 */  sb         $v0, %lo(D_8006C386)($at)
/* 10EB24 80065614 3C018007 */  lui        $at, %hi(D_8006C385)
/* 10EB28 80065618 A022C385 */  sb         $v0, %lo(D_8006C385)($at)
/* 10EB2C 8006561C 3C018007 */  lui        $at, %hi(D_8006C384)
/* 10EB30 80065620 A022C384 */  sb         $v0, %lo(D_8006C384)($at)
/* 10EB34 80065624 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10EB38 80065628 E420C394 */  swc1       $f0, %lo(D_8006C394)($at)
/* 10EB3C 8006562C 0C02A5D2 */  jal        func_800A9748
/* 10EB40 80065630 00042080 */   sll       $a0, $a0, 2
.L80065634:
/* 10EB44 80065634 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 10EB48 80065638 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 10EB4C 8006563C 30421000 */  andi       $v0, $v0, 0x1000
/* 10EB50 80065640 10400073 */  beqz       $v0, .L80065810
/* 10EB54 80065644 00000000 */   nop
/* 10EB58 80065648 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 10EB5C 8006564C 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 10EB60 80065650 2404003C */  addiu      $a0, $zero, 0x3c
/* 10EB64 80065654 0082001A */  div        $zero, $a0, $v0
/* 10EB68 80065658 14400002 */  bnez       $v0, .L80065664
/* 10EB6C 8006565C 00000000 */   nop
/* 10EB70 80065660 0007000D */  break      7
.L80065664:
/* 10EB74 80065664 2401FFFF */   addiu     $at, $zero, -1
/* 10EB78 80065668 14410004 */  bne        $v0, $at, .L8006567C
/* 10EB7C 8006566C 3C018000 */   lui       $at, 0x8000
/* 10EB80 80065670 14810002 */  bne        $a0, $at, .L8006567C
/* 10EB84 80065674 00000000 */   nop
/* 10EB88 80065678 0006000D */  break      6
.L8006567C:
/* 10EB8C 8006567C 00002012 */   mflo      $a0
/* 10EB90 80065680 3C013F80 */  lui        $at, 0x3f80
/* 10EB94 80065684 4481A000 */  mtc1       $at, $f20
/* 10EB98 80065688 3C014148 */  lui        $at, 0x4148
/* 10EB9C 8006568C 4481B000 */  mtc1       $at, $f22
/* 10EBA0 80065690 3C01C1A0 */  lui        $at, 0xc1a0
/* 10EBA4 80065694 4481C000 */  mtc1       $at, $f24
/* 10EBA8 80065698 3C01C5BB */  lui        $at, 0xc5bb
/* 10EBAC 8006569C 34218000 */  ori        $at, $at, 0x8000
/* 10EBB0 800656A0 44818000 */  mtc1       $at, $f16
/* 10EBB4 800656A4 3C0140A0 */  lui        $at, 0x40a0
/* 10EBB8 800656A8 44819000 */  mtc1       $at, $f18
/* 10EBBC 800656AC 3C014320 */  lui        $at, 0x4320
/* 10EBC0 800656B0 4481D000 */  mtc1       $at, $f26
/* 10EBC4 800656B4 3C01C280 */  lui        $at, 0xc280
/* 10EBC8 800656B8 44812000 */  mtc1       $at, $f4
/* 10EBCC 800656BC 3C01C120 */  lui        $at, 0xc120
/* 10EBD0 800656C0 44813000 */  mtc1       $at, $f6
/* 10EBD4 800656C4 3C013E99 */  lui        $at, 0x3e99
/* 10EBD8 800656C8 3421999A */  ori        $at, $at, 0x999a
/* 10EBDC 800656CC 44814000 */  mtc1       $at, $f8
/* 10EBE0 800656D0 3C038015 */  lui        $v1, %hi(D_8014A064)
/* 10EBE4 800656D4 2463A064 */  addiu      $v1, $v1, %lo(D_8014A064)
/* 10EBE8 800656D8 AC600000 */  sw         $zero, ($v1)
/* 10EBEC 800656DC C4620000 */  lwc1       $f2, ($v1)
/* 10EBF0 800656E0 3C01C040 */  lui        $at, 0xc040
/* 10EBF4 800656E4 44815000 */  mtc1       $at, $f10
/* 10EBF8 800656E8 3C028007 */  lui        $v0, %hi(D_8006C585)
/* 10EBFC 800656EC 9042C585 */  lbu        $v0, %lo(D_8006C585)($v0)
/* 10EC00 800656F0 3C014462 */  lui        $at, 0x4462
/* 10EC04 800656F4 34214000 */  ori        $at, $at, 0x4000
/* 10EC08 800656F8 44816000 */  mtc1       $at, $f12
/* 10EC0C 800656FC 3C014120 */  lui        $at, 0x4120
/* 10EC10 80065700 44817000 */  mtc1       $at, $f14
/* 10EC14 80065704 00021080 */  sll        $v0, $v0, 2
/* 10EC18 80065708 3C018007 */  lui        $at, %hi(D_8006A5BC_113ACC)
/* 10EC1C 8006570C 00220821 */  addu       $at, $at, $v0
/* 10EC20 80065710 C420A5BC */  lwc1       $f0, %lo(D_8006A5BC_113ACC)($at)
/* 10EC24 80065714 3C018015 */  lui        $at, %hi(D_8014A068)
/* 10EC28 80065718 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 10EC2C 8006571C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 10EC30 80065720 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* 10EC34 80065724 3C018015 */  lui        $at, %hi(D_8014A070)
/* 10EC38 80065728 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* 10EC3C 8006572C 3C018015 */  lui        $at, %hi(D_8014A078)
/* 10EC40 80065730 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* 10EC44 80065734 3C018015 */  lui        $at, %hi(D_8014A080)
/* 10EC48 80065738 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 10EC4C 8006573C 3C018015 */  lui        $at, %hi(D_8014A084)
/* 10EC50 80065740 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 10EC54 80065744 3C018007 */  lui        $at, %hi(D_800698A1_112DB1)
/* 10EC58 80065748 A02098A1 */  sb         $zero, %lo(D_800698A1_112DB1)($at)
/* 10EC5C 8006574C 3C018007 */  lui        $at, %hi(D_800698A3_112DB3)
/* 10EC60 80065750 A02098A3 */  sb         $zero, %lo(D_800698A3_112DB3)($at)
/* 10EC64 80065754 3C018007 */  lui        $at, %hi(D_800698A4_112DB4)
/* 10EC68 80065758 A02098A4 */  sb         $zero, %lo(D_800698A4_112DB4)($at)
/* 10EC6C 8006575C 3C018007 */  lui        $at, %hi(D_800698A6_112DB6)
/* 10EC70 80065760 A42098A6 */  sh         $zero, %lo(D_800698A6_112DB6)($at)
/* 10EC74 80065764 3C018007 */  lui        $at, %hi(D_8006C39C)
/* 10EC78 80065768 AC20C39C */  sw         $zero, %lo(D_8006C39C)($at)
/* 10EC7C 8006576C 3C018015 */  lui        $at, %hi(D_8014A074)
/* 10EC80 80065770 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* 10EC84 80065774 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 10EC88 80065778 E436A07C */  swc1       $f22, %lo(D_8014A07C)($at)
/* 10EC8C 8006577C 3C018015 */  lui        $at, %hi(D_8014A088)
/* 10EC90 80065780 E438A088 */  swc1       $f24, %lo(D_8014A088)($at)
/* 10EC94 80065784 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10EC98 80065788 E430C38C */  swc1       $f16, %lo(D_8006C38C)($at)
/* 10EC9C 8006578C 3C018007 */  lui        $at, %hi(D_8006C390)
/* 10ECA0 80065790 E432C390 */  swc1       $f18, %lo(D_8006C390)($at)
/* 10ECA4 80065794 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10ECA8 80065798 E424C398 */  swc1       $f4, %lo(D_8006C398)($at)
/* 10ECAC 8006579C 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10ECB0 800657A0 E426C3A0 */  swc1       $f6, %lo(D_8006C3A0)($at)
/* 10ECB4 800657A4 3C018007 */  lui        $at, %hi(D_8006C3A4)
/* 10ECB8 800657A8 E428C3A4 */  swc1       $f8, %lo(D_8006C3A4)($at)
/* 10ECBC 800657AC 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 10ECC0 800657B0 E422C37C */  swc1       $f2, %lo(D_8006C37C)($at)
/* 10ECC4 800657B4 3C018007 */  lui        $at, %hi(D_8006C378)
/* 10ECC8 800657B8 E422C378 */  swc1       $f2, %lo(D_8006C378)($at)
/* 10ECCC 800657BC 3C018007 */  lui        $at, %hi(D_8006C388)
/* 10ECD0 800657C0 E42AC388 */  swc1       $f10, %lo(D_8006C388)($at)
/* 10ECD4 800657C4 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10ECD8 800657C8 E42CC3B4 */  swc1       $f12, %lo(D_8006C3B4)($at)
/* 10ECDC 800657CC 3C018007 */  lui        $at, %hi(D_8006C3BC)
/* 10ECE0 800657D0 E42EC3BC */  swc1       $f14, %lo(D_8006C3BC)($at)
/* 10ECE4 800657D4 24020001 */  addiu      $v0, $zero, 1
/* 10ECE8 800657D8 3C018007 */  lui        $at, %hi(D_800698A2_112DB2)
/* 10ECEC 800657DC A02298A2 */  sb         $v0, %lo(D_800698A2_112DB2)($at)
/* 10ECF0 800657E0 240200FF */  addiu      $v0, $zero, 0xff
/* 10ECF4 800657E4 461A0000 */  add.s      $f0, $f0, $f26
/* 10ECF8 800657E8 3C018007 */  lui        $at, %hi(D_8006C386)
/* 10ECFC 800657EC A022C386 */  sb         $v0, %lo(D_8006C386)($at)
/* 10ED00 800657F0 3C018007 */  lui        $at, %hi(D_8006C385)
/* 10ED04 800657F4 A022C385 */  sb         $v0, %lo(D_8006C385)($at)
/* 10ED08 800657F8 3C018007 */  lui        $at, %hi(D_8006C384)
/* 10ED0C 800657FC A022C384 */  sb         $v0, %lo(D_8006C384)($at)
/* 10ED10 80065800 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10ED14 80065804 E420C394 */  swc1       $f0, %lo(D_8006C394)($at)
/* 10ED18 80065808 0C02A5D2 */  jal        func_800A9748
/* 10ED1C 8006580C 00042080 */   sll       $a0, $a0, 2
.L80065810:
/* 10ED20 80065810 3C028007 */  lui        $v0, %hi(D_800698A1_112DB1)
/* 10ED24 80065814 904298A1 */  lbu        $v0, %lo(D_800698A1_112DB1)($v0)
/* 10ED28 80065818 10400073 */  beqz       $v0, .L800659E8
/* 10ED2C 8006581C 00000000 */   nop
/* 10ED30 80065820 3C028007 */  lui        $v0, %hi(D_800698A2_112DB2)
/* 10ED34 80065824 904298A2 */  lbu        $v0, %lo(D_800698A2_112DB2)($v0)
/* 10ED38 80065828 1040000C */  beqz       $v0, .L8006585C
/* 10ED3C 8006582C 00000000 */   nop
/* 10ED40 80065830 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 10ED44 80065834 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 10ED48 80065838 3C014348 */  lui        $at, 0x4348
/* 10ED4C 8006583C 44811000 */  mtc1       $at, $f2
/* 10ED50 80065840 00000000 */  nop
/* 10ED54 80065844 46020003 */  div.s      $f0, $f0, $f2
/* 10ED58 80065848 3C018007 */  lui        $at, %hi(D_8006C378)
/* 10ED5C 8006584C C422C378 */  lwc1       $f2, %lo(D_8006C378)($at)
/* 10ED60 80065850 46001080 */  add.s      $f2, $f2, $f0
/* 10ED64 80065854 3C018007 */  lui        $at, %hi(D_8006C378)
/* 10ED68 80065858 E422C378 */  swc1       $f2, %lo(D_8006C378)($at)
.L8006585C:
/* 10ED6C 8006585C 3C018007 */  lui        $at, %hi(D_8006C378)
/* 10ED70 80065860 C420C378 */  lwc1       $f0, %lo(D_8006C378)($at)
/* 10ED74 80065864 3C013F80 */  lui        $at, 0x3f80
/* 10ED78 80065868 44811000 */  mtc1       $at, $f2
/* 10ED7C 8006586C 00000000 */  nop
/* 10ED80 80065870 4600103C */  c.lt.s     $f2, $f0
/* 10ED84 80065874 00000000 */  nop
/* 10ED88 80065878 45010008 */  bc1t       .L8006589C
/* 10ED8C 8006587C 00000000 */   nop
/* 10ED90 80065880 3C01BF80 */  lui        $at, 0xbf80
/* 10ED94 80065884 44811000 */  mtc1       $at, $f2
/* 10ED98 80065888 00000000 */  nop
/* 10ED9C 8006588C 4602003C */  c.lt.s     $f0, $f2
/* 10EDA0 80065890 00000000 */  nop
/* 10EDA4 80065894 45000003 */  bc1f       .L800658A4
/* 10EDA8 80065898 00000000 */   nop
.L8006589C:
/* 10EDAC 8006589C 3C018007 */  lui        $at, %hi(D_8006C378)
/* 10EDB0 800658A0 E422C378 */  swc1       $f2, %lo(D_8006C378)($at)
.L800658A4:
/* 10EDB4 800658A4 3C018007 */  lui        $at, %hi(D_8006C378)
/* 10EDB8 800658A8 C422C378 */  lwc1       $f2, %lo(D_8006C378)($at)
/* 10EDBC 800658AC 3C013F7A */  lui        $at, 0x3f7a
/* 10EDC0 800658B0 3421E148 */  ori        $at, $at, 0xe148
/* 10EDC4 800658B4 44810000 */  mtc1       $at, $f0
/* 10EDC8 800658B8 00000000 */  nop
/* 10EDCC 800658BC 46001082 */  mul.s      $f2, $f2, $f0
/* 10EDD0 800658C0 3C028007 */  lui        $v0, %hi(D_8006C578)
/* 10EDD4 800658C4 9042C578 */  lbu        $v0, %lo(D_8006C578)($v0)
/* 10EDD8 800658C8 30420001 */  andi       $v0, $v0, 1
/* 10EDDC 800658CC 3C018007 */  lui        $at, %hi(D_8006C378)
/* 10EDE0 800658D0 10400006 */  beqz       $v0, .L800658EC
/* 10EDE4 800658D4 E422C378 */   swc1      $f2, %lo(D_8006C378)($at)
/* 10EDE8 800658D8 3C028015 */  lui        $v0, %hi(D_8014A07C)
/* 10EDEC 800658DC 2442A07C */  addiu      $v0, $v0, %lo(D_8014A07C)
/* 10EDF0 800658E0 C4400000 */  lwc1       $f0, ($v0)
/* 10EDF4 800658E4 0801963F */  j          .L800658FC
/* 10EDF8 800658E8 46020000 */   add.s     $f0, $f0, $f2
.L800658EC:
/* 10EDFC 800658EC 3C028015 */  lui        $v0, %hi(D_8014A07C)
/* 10EE00 800658F0 2442A07C */  addiu      $v0, $v0, %lo(D_8014A07C)
/* 10EE04 800658F4 C4400000 */  lwc1       $f0, ($v0)
/* 10EE08 800658F8 46020001 */  sub.s      $f0, $f0, $f2
.L800658FC:
/* 10EE0C 800658FC E4400000 */  swc1       $f0, ($v0)
/* 10EE10 80065900 3C028007 */  lui        $v0, %hi(D_800698A2_112DB2)
/* 10EE14 80065904 904298A2 */  lbu        $v0, %lo(D_800698A2_112DB2)($v0)
/* 10EE18 80065908 1040000C */  beqz       $v0, .L8006593C
/* 10EE1C 8006590C 00000000 */   nop
/* 10EE20 80065910 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 10EE24 80065914 C420CFA4 */  lwc1       $f0, %lo(D_8014CFA4)($at)
/* 10EE28 80065918 3C014348 */  lui        $at, 0x4348
/* 10EE2C 8006591C 44811000 */  mtc1       $at, $f2
/* 10EE30 80065920 00000000 */  nop
/* 10EE34 80065924 46020003 */  div.s      $f0, $f0, $f2
/* 10EE38 80065928 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 10EE3C 8006592C C422C37C */  lwc1       $f2, %lo(D_8006C37C)($at)
/* 10EE40 80065930 46001080 */  add.s      $f2, $f2, $f0
/* 10EE44 80065934 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 10EE48 80065938 E422C37C */  swc1       $f2, %lo(D_8006C37C)($at)
.L8006593C:
/* 10EE4C 8006593C 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 10EE50 80065940 C420C37C */  lwc1       $f0, %lo(D_8006C37C)($at)
/* 10EE54 80065944 3C013F80 */  lui        $at, 0x3f80
/* 10EE58 80065948 44811000 */  mtc1       $at, $f2
/* 10EE5C 8006594C 00000000 */  nop
/* 10EE60 80065950 4600103C */  c.lt.s     $f2, $f0
/* 10EE64 80065954 00000000 */  nop
/* 10EE68 80065958 45010008 */  bc1t       .L8006597C
/* 10EE6C 8006595C 00000000 */   nop
/* 10EE70 80065960 3C01BF80 */  lui        $at, 0xbf80
/* 10EE74 80065964 44811000 */  mtc1       $at, $f2
/* 10EE78 80065968 00000000 */  nop
/* 10EE7C 8006596C 4602003C */  c.lt.s     $f0, $f2
/* 10EE80 80065970 00000000 */  nop
/* 10EE84 80065974 45000003 */  bc1f       .L80065984
/* 10EE88 80065978 00000000 */   nop
.L8006597C:
/* 10EE8C 8006597C 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 10EE90 80065980 E422C37C */  swc1       $f2, %lo(D_8006C37C)($at)
.L80065984:
/* 10EE94 80065984 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 10EE98 80065988 C422C37C */  lwc1       $f2, %lo(D_8006C37C)($at)
/* 10EE9C 8006598C 3C013F7A */  lui        $at, 0x3f7a
/* 10EEA0 80065990 3421E148 */  ori        $at, $at, 0xe148
/* 10EEA4 80065994 44810000 */  mtc1       $at, $f0
/* 10EEA8 80065998 00000000 */  nop
/* 10EEAC 8006599C 46001082 */  mul.s      $f2, $f2, $f0
/* 10EEB0 800659A0 3C028007 */  lui        $v0, %hi(D_8006C578)
/* 10EEB4 800659A4 9042C578 */  lbu        $v0, %lo(D_8006C578)($v0)
/* 10EEB8 800659A8 30420002 */  andi       $v0, $v0, 2
/* 10EEBC 800659AC 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 10EEC0 800659B0 10400007 */  beqz       $v0, .L800659D0
/* 10EEC4 800659B4 E422C37C */   swc1      $f2, %lo(D_8006C37C)($at)
/* 10EEC8 800659B8 3C028015 */  lui        $v0, %hi(D_8014A080)
/* 10EECC 800659BC 2442A080 */  addiu      $v0, $v0, %lo(D_8014A080)
/* 10EED0 800659C0 C4400000 */  lwc1       $f0, ($v0)
/* 10EED4 800659C4 46020001 */  sub.s      $f0, $f0, $f2
/* 10EED8 800659C8 080196A9 */  j          .L80065AA4
/* 10EEDC 800659CC E4400000 */   swc1      $f0, ($v0)
.L800659D0:
/* 10EEE0 800659D0 3C028015 */  lui        $v0, %hi(D_8014A080)
/* 10EEE4 800659D4 2442A080 */  addiu      $v0, $v0, %lo(D_8014A080)
/* 10EEE8 800659D8 C4400000 */  lwc1       $f0, ($v0)
/* 10EEEC 800659DC 46020000 */  add.s      $f0, $f0, $f2
/* 10EEF0 800659E0 080196A9 */  j          .L80065AA4
/* 10EEF4 800659E4 E4400000 */   swc1      $f0, ($v0)
.L800659E8:
/* 10EEF8 800659E8 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10EEFC 800659EC C422C3A0 */  lwc1       $f2, %lo(D_8006C3A0)($at)
/* 10EF00 800659F0 44802000 */  mtc1       $zero, $f4
/* 10EF04 800659F4 00000000 */  nop
/* 10EF08 800659F8 4604103C */  c.lt.s     $f2, $f4
/* 10EF0C 800659FC 00000000 */  nop
/* 10EF10 80065A00 45000008 */  bc1f       .L80065A24
/* 10EF14 80065A04 00000000 */   nop
/* 10EF18 80065A08 3C013DA3 */  lui        $at, 0x3da3
/* 10EF1C 80065A0C 3421D70A */  ori        $at, $at, 0xd70a
/* 10EF20 80065A10 44810000 */  mtc1       $at, $f0
/* 10EF24 80065A14 00000000 */  nop
/* 10EF28 80065A18 46001000 */  add.s      $f0, $f2, $f0
/* 10EF2C 80065A1C 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10EF30 80065A20 E420C3A0 */  swc1       $f0, %lo(D_8006C3A0)($at)
.L80065A24:
/* 10EF34 80065A24 3C028015 */  lui        $v0, %hi(D_8014A07C)
/* 10EF38 80065A28 2442A07C */  addiu      $v0, $v0, %lo(D_8014A07C)
/* 10EF3C 80065A2C C4400000 */  lwc1       $f0, ($v0)
/* 10EF40 80065A30 3C013DCC */  lui        $at, 0x3dcc
/* 10EF44 80065A34 3421CCCD */  ori        $at, $at, 0xcccd
/* 10EF48 80065A38 44811000 */  mtc1       $at, $f2
/* 10EF4C 80065A3C 00000000 */  nop
/* 10EF50 80065A40 46020001 */  sub.s      $f0, $f0, $f2
/* 10EF54 80065A44 4604003C */  c.lt.s     $f0, $f4
/* 10EF58 80065A48 00000000 */  nop
/* 10EF5C 80065A4C 00000000 */  nop
/* 10EF60 80065A50 45000004 */  bc1f       .L80065A64
/* 10EF64 80065A54 E4400000 */   swc1      $f0, ($v0)
/* 10EF68 80065A58 24020001 */  addiu      $v0, $zero, 1
/* 10EF6C 80065A5C 3C018007 */  lui        $at, %hi(D_800698A1_112DB1)
/* 10EF70 80065A60 A02298A1 */  sb         $v0, %lo(D_800698A1_112DB1)($at)
.L80065A64:
/* 10EF74 80065A64 3C018015 */  lui        $at, %hi(D_8014A088)
/* 10EF78 80065A68 C422A088 */  lwc1       $f2, %lo(D_8014A088)($at)
/* 10EF7C 80065A6C 3C01C220 */  lui        $at, 0xc220
/* 10EF80 80065A70 44810000 */  mtc1       $at, $f0
/* 10EF84 80065A74 00000000 */  nop
/* 10EF88 80065A78 4602003C */  c.lt.s     $f0, $f2
/* 10EF8C 80065A7C 00000000 */  nop
/* 10EF90 80065A80 45000008 */  bc1f       .L80065AA4
/* 10EF94 80065A84 00000000 */   nop
/* 10EF98 80065A88 3C013E4C */  lui        $at, 0x3e4c
/* 10EF9C 80065A8C 3421CCCD */  ori        $at, $at, 0xcccd
/* 10EFA0 80065A90 44810000 */  mtc1       $at, $f0
/* 10EFA4 80065A94 00000000 */  nop
/* 10EFA8 80065A98 46001001 */  sub.s      $f0, $f2, $f0
/* 10EFAC 80065A9C 3C018015 */  lui        $at, %hi(D_8014A088)
/* 10EFB0 80065AA0 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
.L80065AA4:
/* 10EFB4 80065AA4 3C048007 */  lui        $a0, %hi(D_8006C370)
/* 10EFB8 80065AA8 0C028A40 */  jal        func_800A2900
/* 10EFBC 80065AAC 8C84C370 */   lw        $a0, %lo(D_8006C370)($a0)
/* 10EFC0 80065AB0 3C048007 */  lui        $a0, %hi(D_8006C374_BB324)
/* 10EFC4 80065AB4 0C028A40 */  jal        func_800A2900
/* 10EFC8 80065AB8 8C84C374 */   lw        $a0, %lo(D_8006C374_BB324)($a0)
/* 10EFCC 80065ABC 3C028007 */  lui        $v0, %hi(D_800698A3_112DB3)
/* 10EFD0 80065AC0 904298A3 */  lbu        $v0, %lo(D_800698A3_112DB3)($v0)
/* 10EFD4 80065AC4 1440001E */  bnez       $v0, .L80065B40
/* 10EFD8 80065AC8 00000000 */   nop
/* 10EFDC 80065ACC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 10EFE0 80065AD0 C422A080 */  lwc1       $f2, %lo(D_8014A080)($at)
/* 10EFE4 80065AD4 3C014120 */  lui        $at, 0x4120
/* 10EFE8 80065AD8 44810000 */  mtc1       $at, $f0
/* 10EFEC 80065ADC 00000000 */  nop
/* 10EFF0 80065AE0 46001083 */  div.s      $f2, $f2, $f0
/* 10EFF4 80065AE4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 10EFF8 80065AE8 C424A07C */  lwc1       $f4, %lo(D_8014A07C)($at)
/* 10EFFC 80065AEC 46002103 */  div.s      $f4, $f4, $f0
/* 10F000 80065AF0 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10F004 80065AF4 C420C394 */  lwc1       $f0, %lo(D_8006C394)($at)
/* 10F008 80065AF8 46020001 */  sub.s      $f0, $f0, $f2
/* 10F00C 80065AFC 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F010 80065B00 C422C398 */  lwc1       $f2, %lo(D_8006C398)($at)
/* 10F014 80065B04 3C028007 */  lui        $v0, %hi(D_800698A1_112DB1)
/* 10F018 80065B08 904298A1 */  lbu        $v0, %lo(D_800698A1_112DB1)($v0)
/* 10F01C 80065B0C 46041080 */  add.s      $f2, $f2, $f4
/* 10F020 80065B10 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10F024 80065B14 E420C394 */  swc1       $f0, %lo(D_8006C394)($at)
/* 10F028 80065B18 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F02C 80065B1C 10400008 */  beqz       $v0, .L80065B40
/* 10F030 80065B20 E422C398 */   swc1      $f2, %lo(D_8006C398)($at)
/* 10F034 80065B24 3C013D4C */  lui        $at, 0x3d4c
/* 10F038 80065B28 3421CCCD */  ori        $at, $at, 0xcccd
/* 10F03C 80065B2C 44810000 */  mtc1       $at, $f0
/* 10F040 80065B30 00000000 */  nop
/* 10F044 80065B34 46001001 */  sub.s      $f0, $f2, $f0
/* 10F048 80065B38 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F04C 80065B3C E420C398 */  swc1       $f0, %lo(D_8006C398)($at)
.L80065B40:
/* 10F050 80065B40 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10F054 80065B44 C420C394 */  lwc1       $f0, %lo(D_8006C394)($at)
/* 10F058 80065B48 3C014396 */  lui        $at, 0x4396
/* 10F05C 80065B4C 44811000 */  mtc1       $at, $f2
/* 10F060 80065B50 00000000 */  nop
/* 10F064 80065B54 4600103C */  c.lt.s     $f2, $f0
/* 10F068 80065B58 00000000 */  nop
/* 10F06C 80065B5C 45010008 */  bc1t       .L80065B80
/* 10F070 80065B60 00000000 */   nop
/* 10F074 80065B64 3C0141A0 */  lui        $at, 0x41a0
/* 10F078 80065B68 44811000 */  mtc1       $at, $f2
/* 10F07C 80065B6C 00000000 */  nop
/* 10F080 80065B70 4602003C */  c.lt.s     $f0, $f2
/* 10F084 80065B74 00000000 */  nop
/* 10F088 80065B78 45000003 */  bc1f       .L80065B88
/* 10F08C 80065B7C 00000000 */   nop
.L80065B80:
/* 10F090 80065B80 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10F094 80065B84 E422C394 */  swc1       $f2, %lo(D_8006C394)($at)
.L80065B88:
/* 10F098 80065B88 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F09C 80065B8C C420C398 */  lwc1       $f0, %lo(D_8006C398)($at)
/* 10F0A0 80065B90 3C014330 */  lui        $at, 0x4330
/* 10F0A4 80065B94 44811000 */  mtc1       $at, $f2
/* 10F0A8 80065B98 00000000 */  nop
/* 10F0AC 80065B9C 4600103C */  c.lt.s     $f2, $f0
/* 10F0B0 80065BA0 00000000 */  nop
/* 10F0B4 80065BA4 45010008 */  bc1t       .L80065BC8
/* 10F0B8 80065BA8 00000000 */   nop
/* 10F0BC 80065BAC 3C01C270 */  lui        $at, 0xc270
/* 10F0C0 80065BB0 44811000 */  mtc1       $at, $f2
/* 10F0C4 80065BB4 00000000 */  nop
/* 10F0C8 80065BB8 4602003C */  c.lt.s     $f0, $f2
/* 10F0CC 80065BBC 00000000 */  nop
/* 10F0D0 80065BC0 45000003 */  bc1f       .L80065BD0
/* 10F0D4 80065BC4 00000000 */   nop
.L80065BC8:
/* 10F0D8 80065BC8 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F0DC 80065BCC E422C398 */  swc1       $f2, %lo(D_8006C398)($at)
.L80065BD0:
/* 10F0E0 80065BD0 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10F0E4 80065BD4 C420C38C */  lwc1       $f0, %lo(D_8006C38C)($at)
/* 10F0E8 80065BD8 3C01C5BB */  lui        $at, 0xc5bb
/* 10F0EC 80065BDC 34218000 */  ori        $at, $at, 0x8000
/* 10F0F0 80065BE0 44811000 */  mtc1       $at, $f2
/* 10F0F4 80065BE4 00000000 */  nop
/* 10F0F8 80065BE8 46001001 */  sub.s      $f0, $f2, $f0
/* 10F0FC 80065BEC 46020001 */  sub.s      $f0, $f0, $f2
/* 10F100 80065BF0 3C01453B */  lui        $at, 0x453b
/* 10F104 80065BF4 3421899A */  ori        $at, $at, 0x899a
/* 10F108 80065BF8 44811000 */  mtc1       $at, $f2
/* 10F10C 80065BFC 00000000 */  nop
/* 10F110 80065C00 46020003 */  div.s      $f0, $f0, $f2
/* 10F114 80065C04 3C038007 */  lui        $v1, %hi(D_8006C3A8)
/* 10F118 80065C08 9063C3A8 */  lbu        $v1, %lo(D_8006C3A8)($v1)
/* 10F11C 80065C0C 3C014020 */  lui        $at, 0x4020
/* 10F120 80065C10 44811000 */  mtc1       $at, $f2
/* 10F124 80065C14 24020001 */  addiu      $v0, $zero, 1
/* 10F128 80065C18 00431023 */  subu       $v0, $v0, $v1
/* 10F12C 80065C1C 46001081 */  sub.s      $f2, $f2, $f0
/* 10F130 80065C20 304400FF */  andi       $a0, $v0, 0xff
/* 10F134 80065C24 3C018007 */  lui        $at, %hi(D_8006C3A8)
/* 10F138 80065C28 A022C3A8 */  sb         $v0, %lo(D_8006C3A8)($at)
/* 10F13C 80065C2C 3C018007 */  lui        $at, %hi(D_8006C3A4)
/* 10F140 80065C30 E422C3A4 */  swc1       $f2, %lo(D_8006C3A4)($at)
/* 10F144 80065C34 0C00D8C1 */  jal        func_80036304_DF814
/* 10F148 80065C38 2484001E */   addiu     $a0, $a0, 0x1e
/* 10F14C 80065C3C 0040A821 */  addu       $s5, $v0, $zero
/* 10F150 80065C40 3C018007 */  lui        $at, %hi(D_8006C3A4)
/* 10F154 80065C44 C420C3A4 */  lwc1       $f0, %lo(D_8006C3A4)($at)
/* 10F158 80065C48 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F15C 80065C4C 44060000 */  mfc1       $a2, $f0
/* 10F160 80065C50 00002821 */  addu       $a1, $zero, $zero
/* 10F164 80065C54 0C02915B */  jal        func_800A456C
/* 10F168 80065C58 00C03821 */   addu      $a3, $a2, $zero
/* 10F16C 80065C5C 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10F170 80065C60 C420C394 */  lwc1       $f0, %lo(D_8006C394)($at)
/* 10F174 80065C64 3C014080 */  lui        $at, 0x4080
/* 10F178 80065C68 4481A000 */  mtc1       $at, $f20
/* 10F17C 80065C6C 00000000 */  nop
/* 10F180 80065C70 46140002 */  mul.s      $f0, $f0, $f20
/* 10F184 80065C74 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F188 80065C78 C422C398 */  lwc1       $f2, %lo(D_8006C398)($at)
/* 10F18C 80065C7C 46141082 */  mul.s      $f2, $f2, $f20
/* 10F190 80065C80 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F194 80065C84 4600010D */  trunc.w.s  $f4, $f0
/* 10F198 80065C88 44052000 */  mfc1       $a1, $f4
/* 10F19C 80065C8C 00000000 */  nop
/* 10F1A0 80065C90 00052C00 */  sll        $a1, $a1, 0x10
/* 10F1A4 80065C94 00052C03 */  sra        $a1, $a1, 0x10
/* 10F1A8 80065C98 4600100D */  trunc.w.s  $f0, $f2
/* 10F1AC 80065C9C 44060000 */  mfc1       $a2, $f0
/* 10F1B0 80065CA0 00000000 */  nop
/* 10F1B4 80065CA4 00063400 */  sll        $a2, $a2, 0x10
/* 10F1B8 80065CA8 0C028D89 */  jal        func_800A3624
/* 10F1BC 80065CAC 00063403 */   sra       $a2, $a2, 0x10
/* 10F1C0 80065CB0 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F1C4 80065CB4 0C028A40 */  jal        func_800A2900
/* 10F1C8 80065CB8 00000000 */   nop
/* 10F1CC 80065CBC 0C00D8C1 */  jal        func_80036304_DF814
/* 10F1D0 80065CC0 24040020 */   addiu     $a0, $zero, 0x20
/* 10F1D4 80065CC4 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10F1D8 80065CC8 C420C394 */  lwc1       $f0, %lo(D_8006C394)($at)
/* 10F1DC 80065CCC 46140002 */  mul.s      $f0, $f0, $f20
/* 10F1E0 80065CD0 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F1E4 80065CD4 C422C398 */  lwc1       $f2, %lo(D_8006C398)($at)
/* 10F1E8 80065CD8 46141082 */  mul.s      $f2, $f2, $f20
/* 10F1EC 80065CDC 0040A821 */  addu       $s5, $v0, $zero
/* 10F1F0 80065CE0 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F1F4 80065CE4 4600010D */  trunc.w.s  $f4, $f0
/* 10F1F8 80065CE8 44052000 */  mfc1       $a1, $f4
/* 10F1FC 80065CEC 00000000 */  nop
/* 10F200 80065CF0 00052C00 */  sll        $a1, $a1, 0x10
/* 10F204 80065CF4 00052C03 */  sra        $a1, $a1, 0x10
/* 10F208 80065CF8 4600100D */  trunc.w.s  $f0, $f2
/* 10F20C 80065CFC 44060000 */  mfc1       $a2, $f0
/* 10F210 80065D00 00000000 */  nop
/* 10F214 80065D04 00063400 */  sll        $a2, $a2, 0x10
/* 10F218 80065D08 0C028D89 */  jal        func_800A3624
/* 10F21C 80065D0C 00063403 */   sra       $a2, $a2, 0x10
/* 10F220 80065D10 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F224 80065D14 0C028A40 */  jal        func_800A2900
/* 10F228 80065D18 00000000 */   nop
/* 10F22C 80065D1C 3C048007 */  lui        $a0, %hi(D_8006C3A8)
/* 10F230 80065D20 9084C3A8 */  lbu        $a0, %lo(D_8006C3A8)($a0)
/* 10F234 80065D24 0C00D8C1 */  jal        func_80036304_DF814
/* 10F238 80065D28 24840021 */   addiu     $a0, $a0, 0x21
/* 10F23C 80065D2C 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10F240 80065D30 C420C394 */  lwc1       $f0, %lo(D_8006C394)($at)
/* 10F244 80065D34 46140002 */  mul.s      $f0, $f0, $f20
/* 10F248 80065D38 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F24C 80065D3C C422C398 */  lwc1       $f2, %lo(D_8006C398)($at)
/* 10F250 80065D40 46141082 */  mul.s      $f2, $f2, $f20
/* 10F254 80065D44 0040A821 */  addu       $s5, $v0, $zero
/* 10F258 80065D48 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F25C 80065D4C 4600010D */  trunc.w.s  $f4, $f0
/* 10F260 80065D50 44052000 */  mfc1       $a1, $f4
/* 10F264 80065D54 00000000 */  nop
/* 10F268 80065D58 00052C00 */  sll        $a1, $a1, 0x10
/* 10F26C 80065D5C 00052C03 */  sra        $a1, $a1, 0x10
/* 10F270 80065D60 4600100D */  trunc.w.s  $f0, $f2
/* 10F274 80065D64 44060000 */  mfc1       $a2, $f0
/* 10F278 80065D68 00000000 */  nop
/* 10F27C 80065D6C 00063400 */  sll        $a2, $a2, 0x10
/* 10F280 80065D70 0C028D89 */  jal        func_800A3624
/* 10F284 80065D74 00063403 */   sra       $a2, $a2, 0x10
/* 10F288 80065D78 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F28C 80065D7C 0C028A40 */  jal        func_800A2900
/* 10F290 80065D80 00000000 */   nop
/* 10F294 80065D84 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10F298 80065D88 C422C38C */  lwc1       $f2, %lo(D_8006C38C)($at)
/* 10F29C 80065D8C 3C01C220 */  lui        $at, 0xc220
/* 10F2A0 80065D90 44810000 */  mtc1       $at, $f0
/* 10F2A4 80065D94 00000000 */  nop
/* 10F2A8 80065D98 4600103C */  c.lt.s     $f2, $f0
/* 10F2AC 80065D9C 00000000 */  nop
/* 10F2B0 80065DA0 00000000 */  nop
/* 10F2B4 80065DA4 45000013 */  bc1f       .L80065DF4
/* 10F2B8 80065DA8 46001106 */   mov.s     $f4, $f2
/* 10F2BC 80065DAC 44800000 */  mtc1       $zero, $f0
/* 10F2C0 80065DB0 00000000 */  nop
/* 10F2C4 80065DB4 4604003C */  c.lt.s     $f0, $f4
/* 10F2C8 80065DB8 00000000 */  nop
/* 10F2CC 80065DBC 00000000 */  nop
/* 10F2D0 80065DC0 45020001 */  bc1fl      .L80065DC8
/* 10F2D4 80065DC4 46002107 */   neg.s     $f4, $f4
.L80065DC8:
/* 10F2D8 80065DC8 3C018007 */  lui        $at, %hi(D_8006A5D8_113AE8)
/* 10F2DC 80065DCC D422A5D8 */  ldc1       $f2, %lo(D_8006A5D8_113AE8)($at)
/* 10F2E0 80065DD0 46002021 */  cvt.d.s    $f0, $f4
/* 10F2E4 80065DD4 46220002 */  mul.d      $f0, $f0, $f2
/* 10F2E8 80065DD8 3C018007 */  lui        $at, %hi(D_8006A5E0_113AF0)
/* 10F2EC 80065DDC D422A5E0 */  ldc1       $f2, %lo(D_8006A5E0_113AF0)($at)
/* 10F2F0 80065DE0 46220000 */  add.d      $f0, $f0, $f2
/* 10F2F4 80065DE4 4620008D */  trunc.w.d  $f2, $f0
/* 10F2F8 80065DE8 44111000 */  mfc1       $s1, $f2
/* 10F2FC 80065DEC 0801977E */  j          .L80065DF8
/* 10F300 80065DF0 00000000 */   nop
.L80065DF4:
/* 10F304 80065DF4 241103E8 */  addiu      $s1, $zero, 0x3e8
.L80065DF8:
/* 10F308 80065DF8 3C028007 */  lui        $v0, %hi(D_800698A3_112DB3)
/* 10F30C 80065DFC 904298A3 */  lbu        $v0, %lo(D_800698A3_112DB3)($v0)
/* 10F310 80065E00 14400060 */  bnez       $v0, .L80065F84
/* 10F314 80065E04 00000000 */   nop
/* 10F318 80065E08 3C018007 */  lui        $at, %hi(D_8006C394)
/* 10F31C 80065E0C C420C394 */  lwc1       $f0, %lo(D_8006C394)($at)
/* 10F320 80065E10 3C014320 */  lui        $at, 0x4320
/* 10F324 80065E14 44811000 */  mtc1       $at, $f2
/* 10F328 80065E18 00000000 */  nop
/* 10F32C 80065E1C 46020101 */  sub.s      $f4, $f0, $f2
/* 10F330 80065E20 44800000 */  mtc1       $zero, $f0
/* 10F334 80065E24 00000000 */  nop
/* 10F338 80065E28 4604003C */  c.lt.s     $f0, $f4
/* 10F33C 80065E2C 00000000 */  nop
/* 10F340 80065E30 00000000 */  nop
/* 10F344 80065E34 45020006 */  bc1fl      .L80065E50
/* 10F348 80065E38 46002007 */   neg.s     $f0, $f4
/* 10F34C 80065E3C 3C014080 */  lui        $at, 0x4080
/* 10F350 80065E40 44810000 */  mtc1       $at, $f0
/* 10F354 80065E44 00000000 */  nop
/* 10F358 80065E48 08019798 */  j          .L80065E60
/* 10F35C 80065E4C 46002002 */   mul.s     $f0, $f4, $f0
.L80065E50:
/* 10F360 80065E50 3C014080 */  lui        $at, 0x4080
/* 10F364 80065E54 44811000 */  mtc1       $at, $f2
/* 10F368 80065E58 00000000 */  nop
/* 10F36C 80065E5C 46020002 */  mul.s      $f0, $f0, $f2
.L80065E60:
/* 10F370 80065E60 4600008D */  trunc.w.s  $f2, $f0
/* 10F374 80065E64 44031000 */  mfc1       $v1, $f2
/* 10F378 80065E68 3C018007 */  lui        $at, %hi(D_8006C398)
/* 10F37C 80065E6C C420C398 */  lwc1       $f0, %lo(D_8006C398)($at)
/* 10F380 80065E70 3C0142F0 */  lui        $at, 0x42f0
/* 10F384 80065E74 44811000 */  mtc1       $at, $f2
/* 10F388 80065E78 00000000 */  nop
/* 10F38C 80065E7C 46020101 */  sub.s      $f4, $f0, $f2
/* 10F390 80065E80 44800000 */  mtc1       $zero, $f0
/* 10F394 80065E84 00000000 */  nop
/* 10F398 80065E88 4604003C */  c.lt.s     $f0, $f4
/* 10F39C 80065E8C 0060A021 */  addu       $s4, $v1, $zero
/* 10F3A0 80065E90 3C018007 */  lui        $at, %hi(D_8006C3AA)
/* 10F3A4 80065E94 A434C3AA */  sh         $s4, %lo(D_8006C3AA)($at)
/* 10F3A8 80065E98 45020006 */  bc1fl      .L80065EB4
/* 10F3AC 80065E9C 46002007 */   neg.s     $f0, $f4
/* 10F3B0 80065EA0 3C014080 */  lui        $at, 0x4080
/* 10F3B4 80065EA4 44810000 */  mtc1       $at, $f0
/* 10F3B8 80065EA8 00000000 */  nop
/* 10F3BC 80065EAC 080197B1 */  j          .L80065EC4
/* 10F3C0 80065EB0 46002002 */   mul.s     $f0, $f4, $f0
.L80065EB4:
/* 10F3C4 80065EB4 3C014080 */  lui        $at, 0x4080
/* 10F3C8 80065EB8 44811000 */  mtc1       $at, $f2
/* 10F3CC 80065EBC 00000000 */  nop
/* 10F3D0 80065EC0 46020002 */  mul.s      $f0, $f0, $f2
.L80065EC4:
/* 10F3D4 80065EC4 4600008D */  trunc.w.s  $f2, $f0
/* 10F3D8 80065EC8 44031000 */  mfc1       $v1, $f2
/* 10F3DC 80065ECC 3C018015 */  lui        $at, %hi(D_8014A080)
/* 10F3E0 80065ED0 C424A080 */  lwc1       $f4, %lo(D_8014A080)($at)
/* 10F3E4 80065ED4 44800000 */  mtc1       $zero, $f0
/* 10F3E8 80065ED8 00000000 */  nop
/* 10F3EC 80065EDC 4604003C */  c.lt.s     $f0, $f4
/* 10F3F0 80065EE0 00609821 */  addu       $s3, $v1, $zero
/* 10F3F4 80065EE4 3C018007 */  lui        $at, %hi(D_8006C3AC)
/* 10F3F8 80065EE8 A433C3AC */  sh         $s3, %lo(D_8006C3AC)($at)
/* 10F3FC 80065EEC 45020006 */  bc1fl      .L80065F08
/* 10F400 80065EF0 46002007 */   neg.s     $f0, $f4
/* 10F404 80065EF4 3C014120 */  lui        $at, 0x4120
/* 10F408 80065EF8 44810000 */  mtc1       $at, $f0
/* 10F40C 80065EFC 00000000 */  nop
/* 10F410 80065F00 080197C6 */  j          .L80065F18
/* 10F414 80065F04 46002002 */   mul.s     $f0, $f4, $f0
.L80065F08:
/* 10F418 80065F08 3C014120 */  lui        $at, 0x4120
/* 10F41C 80065F0C 44811000 */  mtc1       $at, $f2
/* 10F420 80065F10 00000000 */  nop
/* 10F424 80065F14 46020002 */  mul.s      $f0, $f0, $f2
.L80065F18:
/* 10F428 80065F18 4600008D */  trunc.w.s  $f2, $f0
/* 10F42C 80065F1C 44031000 */  mfc1       $v1, $f2
/* 10F430 80065F20 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 10F434 80065F24 C424A07C */  lwc1       $f4, %lo(D_8014A07C)($at)
/* 10F438 80065F28 44800000 */  mtc1       $zero, $f0
/* 10F43C 80065F2C 00000000 */  nop
/* 10F440 80065F30 4604003C */  c.lt.s     $f0, $f4
/* 10F444 80065F34 0060B821 */  addu       $s7, $v1, $zero
/* 10F448 80065F38 3C018007 */  lui        $at, %hi(D_8006C3AE)
/* 10F44C 80065F3C A437C3AE */  sh         $s7, %lo(D_8006C3AE)($at)
/* 10F450 80065F40 45020006 */  bc1fl      .L80065F5C
/* 10F454 80065F44 46002007 */   neg.s     $f0, $f4
/* 10F458 80065F48 3C014120 */  lui        $at, 0x4120
/* 10F45C 80065F4C 44810000 */  mtc1       $at, $f0
/* 10F460 80065F50 00000000 */  nop
/* 10F464 80065F54 080197DB */  j          .L80065F6C
/* 10F468 80065F58 46002002 */   mul.s     $f0, $f4, $f0
.L80065F5C:
/* 10F46C 80065F5C 3C014120 */  lui        $at, 0x4120
/* 10F470 80065F60 44811000 */  mtc1       $at, $f2
/* 10F474 80065F64 00000000 */  nop
/* 10F478 80065F68 46020002 */  mul.s      $f0, $f0, $f2
.L80065F6C:
/* 10F47C 80065F6C 4600008D */  trunc.w.s  $f2, $f0
/* 10F480 80065F70 44031000 */  mfc1       $v1, $f2
/* 10F484 80065F74 3C018007 */  lui        $at, %hi(D_8006C3B0)
/* 10F488 80065F78 A423C3B0 */  sh         $v1, %lo(D_8006C3B0)($at)
/* 10F48C 80065F7C 080197E9 */  j          .L80065FA4
/* 10F490 80065F80 0060F021 */   addu      $fp, $v1, $zero
.L80065F84:
/* 10F494 80065F84 3C148007 */  lui        $s4, %hi(D_8006C3AA)
/* 10F498 80065F88 9694C3AA */  lhu        $s4, %lo(D_8006C3AA)($s4)
/* 10F49C 80065F8C 3C138007 */  lui        $s3, %hi(D_8006C3AC)
/* 10F4A0 80065F90 9673C3AC */  lhu        $s3, %lo(D_8006C3AC)($s3)
/* 10F4A4 80065F94 3C178007 */  lui        $s7, %hi(D_8006C3AE)
/* 10F4A8 80065F98 96F7C3AE */  lhu        $s7, %lo(D_8006C3AE)($s7)
/* 10F4AC 80065F9C 3C1E8007 */  lui        $fp, %hi(D_8006C3B0)
/* 10F4B0 80065FA0 97DEC3B0 */  lhu        $fp, %lo(D_8006C3B0)($fp)
.L80065FA4:
/* 10F4B4 80065FA4 00009021 */  addu       $s2, $zero, $zero
/* 10F4B8 80065FA8 3C166666 */  lui        $s6, 0x6666
/* 10F4BC 80065FAC 36D66667 */  ori        $s6, $s6, 0x6667
/* 10F4C0 80065FB0 00111400 */  sll        $v0, $s1, 0x10
.L80065FB4:
/* 10F4C4 80065FB4 00028403 */  sra        $s0, $v0, 0x10
/* 10F4C8 80065FB8 02160018 */  mult       $s0, $s6
/* 10F4CC 80065FBC 2408002D */  addiu      $t0, $zero, 0x2d
/* 10F4D0 80065FC0 01122023 */  subu       $a0, $t0, $s2
/* 10F4D4 80065FC4 3084FFFF */  andi       $a0, $a0, 0xffff
/* 10F4D8 80065FC8 000217C3 */  sra        $v0, $v0, 0x1f
/* 10F4DC 80065FCC 00004010 */  mfhi       $t0
/* 10F4E0 80065FD0 00081883 */  sra        $v1, $t0, 2
/* 10F4E4 80065FD4 00621823 */  subu       $v1, $v1, $v0
/* 10F4E8 80065FD8 00608821 */  addu       $s1, $v1, $zero
/* 10F4EC 80065FDC 00031080 */  sll        $v0, $v1, 2
/* 10F4F0 80065FE0 00431021 */  addu       $v0, $v0, $v1
/* 10F4F4 80065FE4 00021040 */  sll        $v0, $v0, 1
/* 10F4F8 80065FE8 0C00D8C1 */  jal        func_80036304_DF814
/* 10F4FC 80065FEC 02028023 */   subu      $s0, $s0, $v0
/* 10F500 80065FF0 0040A821 */  addu       $s5, $v0, $zero
/* 10F504 80065FF4 26100051 */  addiu      $s0, $s0, 0x51
/* 10F508 80065FF8 0C00D8C1 */  jal        func_80036304_DF814
/* 10F50C 80065FFC 3204FFFF */   andi      $a0, $s0, 0xffff
/* 10F510 80066000 8C42000C */  lw         $v0, 0xc($v0)
/* 10F514 80066004 8EA3000C */  lw         $v1, 0xc($s5)
/* 10F518 80066008 8C440010 */  lw         $a0, 0x10($v0)
/* 10F51C 8006600C 8C650010 */  lw         $a1, 0x10($v1)
/* 10F520 80066010 26520001 */  addiu      $s2, $s2, 1
/* 10F524 80066014 0C03006C */  jal        func_800C01B0
/* 10F528 80066018 24060060 */   addiu     $a2, $zero, 0x60
/* 10F52C 8006601C 2A420005 */  slti       $v0, $s2, 5
/* 10F530 80066020 1440FFE4 */  bnez       $v0, .L80065FB4
/* 10F534 80066024 00111400 */   sll       $v0, $s1, 0x10
/* 10F538 80066028 00009021 */  addu       $s2, $zero, $zero
/* 10F53C 8006602C 3C116666 */  lui        $s1, 0x6666
/* 10F540 80066030 36316667 */  ori        $s1, $s1, 0x6667
/* 10F544 80066034 00141400 */  sll        $v0, $s4, 0x10
.L80066038:
/* 10F548 80066038 00028403 */  sra        $s0, $v0, 0x10
/* 10F54C 8006603C 02110018 */  mult       $s0, $s1
/* 10F550 80066040 24040030 */  addiu      $a0, $zero, 0x30
/* 10F554 80066044 00922023 */  subu       $a0, $a0, $s2
/* 10F558 80066048 3084FFFF */  andi       $a0, $a0, 0xffff
/* 10F55C 8006604C 000217C3 */  sra        $v0, $v0, 0x1f
/* 10F560 80066050 00004010 */  mfhi       $t0
/* 10F564 80066054 00081883 */  sra        $v1, $t0, 2
/* 10F568 80066058 00621823 */  subu       $v1, $v1, $v0
/* 10F56C 8006605C 0060A021 */  addu       $s4, $v1, $zero
/* 10F570 80066060 00031080 */  sll        $v0, $v1, 2
/* 10F574 80066064 00431021 */  addu       $v0, $v0, $v1
/* 10F578 80066068 00021040 */  sll        $v0, $v0, 1
/* 10F57C 8006606C 0C00D8C1 */  jal        func_80036304_DF814
/* 10F580 80066070 02028023 */   subu      $s0, $s0, $v0
/* 10F584 80066074 0040A821 */  addu       $s5, $v0, $zero
/* 10F588 80066078 26100051 */  addiu      $s0, $s0, 0x51
/* 10F58C 8006607C 0C00D8C1 */  jal        func_80036304_DF814
/* 10F590 80066080 3204FFFF */   andi      $a0, $s0, 0xffff
/* 10F594 80066084 8C42000C */  lw         $v0, 0xc($v0)
/* 10F598 80066088 8EA3000C */  lw         $v1, 0xc($s5)
/* 10F59C 8006608C 8C440010 */  lw         $a0, 0x10($v0)
/* 10F5A0 80066090 8C650010 */  lw         $a1, 0x10($v1)
/* 10F5A4 80066094 0C03006C */  jal        func_800C01B0
/* 10F5A8 80066098 24060060 */   addiu     $a2, $zero, 0x60
/* 10F5AC 8006609C 00131400 */  sll        $v0, $s3, 0x10
/* 10F5B0 800660A0 00028403 */  sra        $s0, $v0, 0x10
/* 10F5B4 800660A4 02110018 */  mult       $s0, $s1
/* 10F5B8 800660A8 24040033 */  addiu      $a0, $zero, 0x33
/* 10F5BC 800660AC 00922023 */  subu       $a0, $a0, $s2
/* 10F5C0 800660B0 3084FFFF */  andi       $a0, $a0, 0xffff
/* 10F5C4 800660B4 000217C3 */  sra        $v0, $v0, 0x1f
/* 10F5C8 800660B8 00004010 */  mfhi       $t0
/* 10F5CC 800660BC 00081883 */  sra        $v1, $t0, 2
/* 10F5D0 800660C0 00621823 */  subu       $v1, $v1, $v0
/* 10F5D4 800660C4 00609821 */  addu       $s3, $v1, $zero
/* 10F5D8 800660C8 00031080 */  sll        $v0, $v1, 2
/* 10F5DC 800660CC 00431021 */  addu       $v0, $v0, $v1
/* 10F5E0 800660D0 00021040 */  sll        $v0, $v0, 1
/* 10F5E4 800660D4 0C00D8C1 */  jal        func_80036304_DF814
/* 10F5E8 800660D8 02028023 */   subu      $s0, $s0, $v0
/* 10F5EC 800660DC 0040A821 */  addu       $s5, $v0, $zero
/* 10F5F0 800660E0 26100051 */  addiu      $s0, $s0, 0x51
/* 10F5F4 800660E4 0C00D8C1 */  jal        func_80036304_DF814
/* 10F5F8 800660E8 3204FFFF */   andi      $a0, $s0, 0xffff
/* 10F5FC 800660EC 8C42000C */  lw         $v0, 0xc($v0)
/* 10F600 800660F0 8EA3000C */  lw         $v1, 0xc($s5)
/* 10F604 800660F4 8C440010 */  lw         $a0, 0x10($v0)
/* 10F608 800660F8 8C650010 */  lw         $a1, 0x10($v1)
/* 10F60C 800660FC 26520001 */  addiu      $s2, $s2, 1
/* 10F610 80066100 0C03006C */  jal        func_800C01B0
/* 10F614 80066104 24060060 */   addiu     $a2, $zero, 0x60
/* 10F618 80066108 2A420003 */  slti       $v0, $s2, 3
/* 10F61C 8006610C 1440FFCA */  bnez       $v0, .L80066038
/* 10F620 80066110 00141400 */   sll       $v0, $s4, 0x10
/* 10F624 80066114 00009021 */  addu       $s2, $zero, $zero
/* 10F628 80066118 3C116666 */  lui        $s1, 0x6666
/* 10F62C 8006611C 36316667 */  ori        $s1, $s1, 0x6667
/* 10F630 80066120 00171400 */  sll        $v0, $s7, 0x10
.L80066124:
/* 10F634 80066124 00028403 */  sra        $s0, $v0, 0x10
/* 10F638 80066128 02110018 */  mult       $s0, $s1
/* 10F63C 8006612C 24040036 */  addiu      $a0, $zero, 0x36
/* 10F640 80066130 00922023 */  subu       $a0, $a0, $s2
/* 10F644 80066134 3084FFFF */  andi       $a0, $a0, 0xffff
/* 10F648 80066138 000217C3 */  sra        $v0, $v0, 0x1f
/* 10F64C 8006613C 00004010 */  mfhi       $t0
/* 10F650 80066140 00081883 */  sra        $v1, $t0, 2
/* 10F654 80066144 00621823 */  subu       $v1, $v1, $v0
/* 10F658 80066148 0060B821 */  addu       $s7, $v1, $zero
/* 10F65C 8006614C 00031080 */  sll        $v0, $v1, 2
/* 10F660 80066150 00431021 */  addu       $v0, $v0, $v1
/* 10F664 80066154 00021040 */  sll        $v0, $v0, 1
/* 10F668 80066158 0C00D8C1 */  jal        func_80036304_DF814
/* 10F66C 8006615C 02028023 */   subu      $s0, $s0, $v0
/* 10F670 80066160 0040A821 */  addu       $s5, $v0, $zero
/* 10F674 80066164 26100051 */  addiu      $s0, $s0, 0x51
/* 10F678 80066168 0C00D8C1 */  jal        func_80036304_DF814
/* 10F67C 8006616C 3204FFFF */   andi      $a0, $s0, 0xffff
/* 10F680 80066170 8C42000C */  lw         $v0, 0xc($v0)
/* 10F684 80066174 8EA3000C */  lw         $v1, 0xc($s5)
/* 10F688 80066178 8C440010 */  lw         $a0, 0x10($v0)
/* 10F68C 8006617C 8C650010 */  lw         $a1, 0x10($v1)
/* 10F690 80066180 0C03006C */  jal        func_800C01B0
/* 10F694 80066184 24060060 */   addiu     $a2, $zero, 0x60
/* 10F698 80066188 001E1400 */  sll        $v0, $fp, 0x10
/* 10F69C 8006618C 00028403 */  sra        $s0, $v0, 0x10
/* 10F6A0 80066190 02110018 */  mult       $s0, $s1
/* 10F6A4 80066194 24040039 */  addiu      $a0, $zero, 0x39
/* 10F6A8 80066198 00922023 */  subu       $a0, $a0, $s2
/* 10F6AC 8006619C 3084FFFF */  andi       $a0, $a0, 0xffff
/* 10F6B0 800661A0 000217C3 */  sra        $v0, $v0, 0x1f
/* 10F6B4 800661A4 00004010 */  mfhi       $t0
/* 10F6B8 800661A8 00081883 */  sra        $v1, $t0, 2
/* 10F6BC 800661AC 00621823 */  subu       $v1, $v1, $v0
/* 10F6C0 800661B0 0060F021 */  addu       $fp, $v1, $zero
/* 10F6C4 800661B4 00031080 */  sll        $v0, $v1, 2
/* 10F6C8 800661B8 00431021 */  addu       $v0, $v0, $v1
/* 10F6CC 800661BC 00021040 */  sll        $v0, $v0, 1
/* 10F6D0 800661C0 0C00D8C1 */  jal        func_80036304_DF814
/* 10F6D4 800661C4 02028023 */   subu      $s0, $s0, $v0
/* 10F6D8 800661C8 0040A821 */  addu       $s5, $v0, $zero
/* 10F6DC 800661CC 26100051 */  addiu      $s0, $s0, 0x51
/* 10F6E0 800661D0 0C00D8C1 */  jal        func_80036304_DF814
/* 10F6E4 800661D4 3204FFFF */   andi      $a0, $s0, 0xffff
/* 10F6E8 800661D8 8C42000C */  lw         $v0, 0xc($v0)
/* 10F6EC 800661DC 8EA3000C */  lw         $v1, 0xc($s5)
/* 10F6F0 800661E0 8C440010 */  lw         $a0, 0x10($v0)
/* 10F6F4 800661E4 8C650010 */  lw         $a1, 0x10($v1)
/* 10F6F8 800661E8 26520001 */  addiu      $s2, $s2, 1
/* 10F6FC 800661EC 0C03006C */  jal        func_800C01B0
/* 10F700 800661F0 24060060 */   addiu     $a2, $zero, 0x60
/* 10F704 800661F4 2A420003 */  slti       $v0, $s2, 3
/* 10F708 800661F8 1440FFCA */  bnez       $v0, .L80066124
/* 10F70C 800661FC 00171400 */   sll       $v0, $s7, 0x10
/* 10F710 80066200 3C028007 */  lui        $v0, %hi(D_800698A3_112DB3)
/* 10F714 80066204 904298A3 */  lbu        $v0, %lo(D_800698A3_112DB3)($v0)
/* 10F718 80066208 10400016 */  beqz       $v0, .L80066264
/* 10F71C 8006620C 00000000 */   nop
/* 10F720 80066210 3C018007 */  lui        $at, %hi(D_8006C3BC)
/* 10F724 80066214 C422C3BC */  lwc1       $f2, %lo(D_8006C3BC)($at)
/* 10F728 80066218 3C014120 */  lui        $at, 0x4120
/* 10F72C 8006621C 44810000 */  mtc1       $at, $f0
/* 10F730 80066220 00000000 */  nop
/* 10F734 80066224 4600103C */  c.lt.s     $f2, $f0
/* 10F738 80066228 00000000 */  nop
/* 10F73C 8006622C 45000007 */  bc1f       .L8006624C
/* 10F740 80066230 00000000 */   nop
/* 10F744 80066234 3C013F80 */  lui        $at, 0x3f80
/* 10F748 80066238 44810000 */  mtc1       $at, $f0
/* 10F74C 8006623C 00000000 */  nop
/* 10F750 80066240 46001000 */  add.s      $f0, $f2, $f0
/* 10F754 80066244 3C018007 */  lui        $at, %hi(D_8006C3BC)
/* 10F758 80066248 E420C3BC */  swc1       $f0, %lo(D_8006C3BC)($at)
.L8006624C:
/* 10F75C 8006624C 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10F760 80066250 C420C3B4 */  lwc1       $f0, %lo(D_8006C3B4)($at)
/* 10F764 80066254 3C018007 */  lui        $at, %hi(D_8006C3BC)
/* 10F768 80066258 C422C3BC */  lwc1       $f2, %lo(D_8006C3BC)($at)
/* 10F76C 8006625C 080198D1 */  j          .L80066344
/* 10F770 80066260 46020000 */   add.s     $f0, $f0, $f2
.L80066264:
/* 10F774 80066264 3C028007 */  lui        $v0, %hi(D_800698A1_112DB1)
/* 10F778 80066268 904298A1 */  lbu        $v0, %lo(D_800698A1_112DB1)($v0)
/* 10F77C 8006626C 10400017 */  beqz       $v0, .L800662CC
/* 10F780 80066270 00000000 */   nop
/* 10F784 80066274 3C018015 */  lui        $at, %hi(D_8014A080)
/* 10F788 80066278 C420A080 */  lwc1       $f0, %lo(D_8014A080)($at)
/* 10F78C 8006627C 3C0140E0 */  lui        $at, 0x40e0
/* 10F790 80066280 44812000 */  mtc1       $at, $f4
/* 10F794 80066284 00000000 */  nop
/* 10F798 80066288 46040002 */  mul.s      $f0, $f0, $f4
/* 10F79C 8006628C 3C01C180 */  lui        $at, 0xc180
/* 10F7A0 80066290 44811000 */  mtc1       $at, $f2
/* 10F7A4 80066294 00000000 */  nop
/* 10F7A8 80066298 4602003C */  c.lt.s     $f0, $f2
/* 10F7AC 8006629C 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10F7B0 800662A0 E420C3B4 */  swc1       $f0, %lo(D_8006C3B4)($at)
/* 10F7B4 800662A4 45000003 */  bc1f       .L800662B4
/* 10F7B8 800662A8 00000000 */   nop
/* 10F7BC 800662AC 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10F7C0 800662B0 E422C3B4 */  swc1       $f2, %lo(D_8006C3B4)($at)
.L800662B4:
/* 10F7C4 800662B4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 10F7C8 800662B8 C420A07C */  lwc1       $f0, %lo(D_8014A07C)($at)
/* 10F7CC 800662BC 46040002 */  mul.s      $f0, $f0, $f4
/* 10F7D0 800662C0 3C018007 */  lui        $at, %hi(D_8006C3B8)
/* 10F7D4 800662C4 080198D3 */  j          .L8006634C
/* 10F7D8 800662C8 E420C3B8 */   swc1      $f0, %lo(D_8006C3B8)($at)
.L800662CC:
/* 10F7DC 800662CC 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10F7E0 800662D0 C422C3B4 */  lwc1       $f2, %lo(D_8006C3B4)($at)
/* 10F7E4 800662D4 3C01425C */  lui        $at, 0x425c
/* 10F7E8 800662D8 44810000 */  mtc1       $at, $f0
/* 10F7EC 800662DC 00000000 */  nop
/* 10F7F0 800662E0 4600103C */  c.lt.s     $f2, $f0
/* 10F7F4 800662E4 00000000 */  nop
/* 10F7F8 800662E8 4500000F */  bc1f       .L80066328
/* 10F7FC 800662EC 00000000 */   nop
/* 10F800 800662F0 3C018007 */  lui        $at, %hi(D_8006C3BC)
/* 10F804 800662F4 C422C3BC */  lwc1       $f2, %lo(D_8006C3BC)($at)
/* 10F808 800662F8 44800000 */  mtc1       $zero, $f0
/* 10F80C 800662FC 00000000 */  nop
/* 10F810 80066300 46001032 */  c.eq.s     $f2, $f0
/* 10F814 80066304 00000000 */  nop
/* 10F818 80066308 45010007 */  bc1t       .L80066328
/* 10F81C 8006630C 00000000 */   nop
/* 10F820 80066310 3C013F80 */  lui        $at, 0x3f80
/* 10F824 80066314 44810000 */  mtc1       $at, $f0
/* 10F828 80066318 00000000 */  nop
/* 10F82C 8006631C 46001001 */  sub.s      $f0, $f2, $f0
/* 10F830 80066320 3C018007 */  lui        $at, %hi(D_8006C3BC)
/* 10F834 80066324 E420C3BC */  swc1       $f0, %lo(D_8006C3BC)($at)
.L80066328:
/* 10F838 80066328 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10F83C 8006632C C420C3B4 */  lwc1       $f0, %lo(D_8006C3B4)($at)
/* 10F840 80066330 3C018007 */  lui        $at, %hi(D_8006C3BC)
/* 10F844 80066334 C422C3BC */  lwc1       $f2, %lo(D_8006C3BC)($at)
/* 10F848 80066338 46020001 */  sub.s      $f0, $f0, $f2
/* 10F84C 8006633C 3C018007 */  lui        $at, %hi(D_8006C3B8)
/* 10F850 80066340 AC20C3B8 */  sw         $zero, %lo(D_8006C3B8)($at)
.L80066344:
/* 10F854 80066344 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10F858 80066348 E420C3B4 */  swc1       $f0, %lo(D_8006C3B4)($at)
.L8006634C:
/* 10F85C 8006634C 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10F860 80066350 C422C38C */  lwc1       $f2, %lo(D_8006C38C)($at)
/* 10F864 80066354 3C01C220 */  lui        $at, 0xc220
/* 10F868 80066358 44810000 */  mtc1       $at, $f0
/* 10F86C 8006635C 00000000 */  nop
/* 10F870 80066360 4600103C */  c.lt.s     $f2, $f0
/* 10F874 80066364 00000000 */  nop
/* 10F878 80066368 00000000 */  nop
/* 10F87C 8006636C 45000014 */  bc1f       .L800663C0
/* 10F880 80066370 46001106 */   mov.s     $f4, $f2
/* 10F884 80066374 44800000 */  mtc1       $zero, $f0
/* 10F888 80066378 00000000 */  nop
/* 10F88C 8006637C 4604003C */  c.lt.s     $f0, $f4
/* 10F890 80066380 00000000 */  nop
/* 10F894 80066384 00000000 */  nop
/* 10F898 80066388 45020001 */  bc1fl      .L80066390
/* 10F89C 8006638C 46002107 */   neg.s     $f4, $f4
.L80066390:
/* 10F8A0 80066390 3C018007 */  lui        $at, %hi(D_8006A5E8_113AF8)
/* 10F8A4 80066394 D422A5E8 */  ldc1       $f2, %lo(D_8006A5E8_113AF8)($at)
/* 10F8A8 80066398 46002021 */  cvt.d.s    $f0, $f4
/* 10F8AC 8006639C 46220002 */  mul.d      $f0, $f0, $f2
/* 10F8B0 800663A0 3C018007 */  lui        $at, %hi(D_8006A5F0_113B00)
/* 10F8B4 800663A4 D422A5F0 */  ldc1       $f2, %lo(D_8006A5F0_113B00)($at)
/* 10F8B8 800663A8 46220000 */  add.d      $f0, $f0, $f2
/* 10F8BC 800663AC 4620008D */  trunc.w.d  $f2, $f0
/* 10F8C0 800663B0 44111000 */  mfc1       $s1, $f2
/* 10F8C4 800663B4 00000000 */  nop
/* 10F8C8 800663B8 080198F2 */  j          .L800663C8
/* 10F8CC 800663BC 00111400 */   sll       $v0, $s1, 0x10
.L800663C0:
/* 10F8D0 800663C0 241103E8 */  addiu      $s1, $zero, 0x3e8
/* 10F8D4 800663C4 00111400 */  sll        $v0, $s1, 0x10
.L800663C8:
/* 10F8D8 800663C8 00021403 */  sra        $v0, $v0, 0x10
/* 10F8DC 800663CC 28421389 */  slti       $v0, $v0, 0x1389
/* 10F8E0 800663D0 10400005 */  beqz       $v0, .L800663E8
/* 10F8E4 800663D4 240200FF */   addiu     $v0, $zero, 0xff
/* 10F8E8 800663D8 3C028007 */  lui        $v0, %hi(D_8006C3A8)
/* 10F8EC 800663DC 9042C3A8 */  lbu        $v0, %lo(D_8006C3A8)($v0)
/* 10F8F0 800663E0 10400003 */  beqz       $v0, .L800663F0
/* 10F8F4 800663E4 240200FF */   addiu     $v0, $zero, 0xff
.L800663E8:
/* 10F8F8 800663E8 080198FE */  j          .L800663F8
/* 10F8FC 800663EC 24110060 */   addiu     $s1, $zero, 0x60
.L800663F0:
/* 10F900 800663F0 24020080 */  addiu      $v0, $zero, 0x80
/* 10F904 800663F4 24110030 */  addiu      $s1, $zero, 0x30
.L800663F8:
/* 10F908 800663F8 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10F90C 800663FC C420C3B4 */  lwc1       $f0, %lo(D_8006C3B4)($at)
/* 10F910 80066400 3C014320 */  lui        $at, 0x4320
/* 10F914 80066404 44811000 */  mtc1       $at, $f2
/* 10F918 80066408 00000000 */  nop
/* 10F91C 8006640C 4602003C */  c.lt.s     $f0, $f2
/* 10F920 80066410 00000000 */  nop
/* 10F924 80066414 45000064 */  bc1f       .L800665A8
/* 10F928 80066418 00000000 */   nop
/* 10F92C 8006641C 24120023 */  addiu      $s2, $zero, 0x23
/* 10F930 80066420 305000FF */  andi       $s0, $v0, 0xff
/* 10F934 80066424 46001706 */  mov.s      $f28, $f2
/* 10F938 80066428 3C014180 */  lui        $at, 0x4180
/* 10F93C 8006642C 4481D000 */  mtc1       $at, $f26
/* 10F940 80066430 3C014080 */  lui        $at, 0x4080
/* 10F944 80066434 4481A000 */  mtc1       $at, $f20
/* 10F948 80066438 3C0142F0 */  lui        $at, 0x42f0
/* 10F94C 8006643C 4481C000 */  mtc1       $at, $f24
/* 10F950 80066440 3C0141C0 */  lui        $at, 0x41c0
/* 10F954 80066444 4481B000 */  mtc1       $at, $f22
/* 10F958 80066448 00000000 */  nop
.L8006644C:
/* 10F95C 8006644C 0C00D8C1 */  jal        func_80036304_DF814
/* 10F960 80066450 3244FFFF */   andi      $a0, $s2, 0xffff
/* 10F964 80066454 0040A821 */  addu       $s5, $v0, $zero
/* 10F968 80066458 AFB00010 */  sw         $s0, 0x10($sp)
/* 10F96C 8006645C 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F970 80066460 240500FF */  addiu      $a1, $zero, 0xff
/* 10F974 80066464 240600FF */  addiu      $a2, $zero, 0xff
/* 10F978 80066468 0C028E41 */  jal        func_800A3904
/* 10F97C 8006646C 240700FF */   addiu     $a3, $zero, 0xff
/* 10F980 80066470 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10F984 80066474 C420C3B4 */  lwc1       $f0, %lo(D_8006C3B4)($at)
/* 10F988 80066478 461C0000 */  add.s      $f0, $f0, $f28
/* 10F98C 8006647C 461A0000 */  add.s      $f0, $f0, $f26
/* 10F990 80066480 3C018007 */  lui        $at, %hi(D_8006C3B8)
/* 10F994 80066484 C422C3B8 */  lwc1       $f2, %lo(D_8006C3B8)($at)
/* 10F998 80066488 4602C081 */  sub.s      $f2, $f24, $f2
/* 10F99C 8006648C 46140002 */  mul.s      $f0, $f0, $f20
/* 10F9A0 80066490 46161081 */  sub.s      $f2, $f2, $f22
/* 10F9A4 80066494 46141082 */  mul.s      $f2, $f2, $f20
/* 10F9A8 80066498 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F9AC 8006649C 4600010D */  trunc.w.s  $f4, $f0
/* 10F9B0 800664A0 44052000 */  mfc1       $a1, $f4
/* 10F9B4 800664A4 00000000 */  nop
/* 10F9B8 800664A8 00052C00 */  sll        $a1, $a1, 0x10
/* 10F9BC 800664AC 00052C03 */  sra        $a1, $a1, 0x10
/* 10F9C0 800664B0 4600100D */  trunc.w.s  $f0, $f2
/* 10F9C4 800664B4 44060000 */  mfc1       $a2, $f0
/* 10F9C8 800664B8 00000000 */  nop
/* 10F9CC 800664BC 00063400 */  sll        $a2, $a2, 0x10
/* 10F9D0 800664C0 0C028D89 */  jal        func_800A3624
/* 10F9D4 800664C4 00063403 */   sra       $a2, $a2, 0x10
/* 10F9D8 800664C8 8EA4000C */  lw         $a0, 0xc($s5)
/* 10F9DC 800664CC 0C028A40 */  jal        func_800A2900
/* 10F9E0 800664D0 26520001 */   addiu     $s2, $s2, 1
/* 10F9E4 800664D4 2A42003A */  slti       $v0, $s2, 0x3a
/* 10F9E8 800664D8 1440FFDC */  bnez       $v0, .L8006644C
/* 10F9EC 800664DC 00000000 */   nop
/* 10F9F0 800664E0 2412003A */  addiu      $s2, $zero, 0x3a
/* 10F9F4 800664E4 323000FF */  andi       $s0, $s1, 0xff
/* 10F9F8 800664E8 3C014320 */  lui        $at, 0x4320
/* 10F9FC 800664EC 4481E000 */  mtc1       $at, $f28
/* 10FA00 800664F0 3C014180 */  lui        $at, 0x4180
/* 10FA04 800664F4 4481D000 */  mtc1       $at, $f26
/* 10FA08 800664F8 3C014080 */  lui        $at, 0x4080
/* 10FA0C 800664FC 4481A000 */  mtc1       $at, $f20
/* 10FA10 80066500 3C0142F0 */  lui        $at, 0x42f0
/* 10FA14 80066504 4481C000 */  mtc1       $at, $f24
/* 10FA18 80066508 3C0141C0 */  lui        $at, 0x41c0
/* 10FA1C 8006650C 4481B000 */  mtc1       $at, $f22
/* 10FA20 80066510 00000000 */  nop
.L80066514:
/* 10FA24 80066514 0C00D8C1 */  jal        func_80036304_DF814
/* 10FA28 80066518 3244FFFF */   andi      $a0, $s2, 0xffff
/* 10FA2C 8006651C 0040A821 */  addu       $s5, $v0, $zero
/* 10FA30 80066520 AFB00010 */  sw         $s0, 0x10($sp)
/* 10FA34 80066524 8EA4000C */  lw         $a0, 0xc($s5)
/* 10FA38 80066528 240500FF */  addiu      $a1, $zero, 0xff
/* 10FA3C 8006652C 240600FF */  addiu      $a2, $zero, 0xff
/* 10FA40 80066530 0C028E41 */  jal        func_800A3904
/* 10FA44 80066534 240700FF */   addiu     $a3, $zero, 0xff
/* 10FA48 80066538 3C018007 */  lui        $at, %hi(D_8006C3B4)
/* 10FA4C 8006653C C420C3B4 */  lwc1       $f0, %lo(D_8006C3B4)($at)
/* 10FA50 80066540 461C0000 */  add.s      $f0, $f0, $f28
/* 10FA54 80066544 461A0000 */  add.s      $f0, $f0, $f26
/* 10FA58 80066548 3C018007 */  lui        $at, %hi(D_8006C3B8)
/* 10FA5C 8006654C C422C3B8 */  lwc1       $f2, %lo(D_8006C3B8)($at)
/* 10FA60 80066550 4602C081 */  sub.s      $f2, $f24, $f2
/* 10FA64 80066554 46140002 */  mul.s      $f0, $f0, $f20
/* 10FA68 80066558 46161081 */  sub.s      $f2, $f2, $f22
/* 10FA6C 8006655C 46141082 */  mul.s      $f2, $f2, $f20
/* 10FA70 80066560 8EA4000C */  lw         $a0, 0xc($s5)
/* 10FA74 80066564 4600010D */  trunc.w.s  $f4, $f0
/* 10FA78 80066568 44052000 */  mfc1       $a1, $f4
/* 10FA7C 8006656C 00000000 */  nop
/* 10FA80 80066570 00052C00 */  sll        $a1, $a1, 0x10
/* 10FA84 80066574 00052C03 */  sra        $a1, $a1, 0x10
/* 10FA88 80066578 4600100D */  trunc.w.s  $f0, $f2
/* 10FA8C 8006657C 44060000 */  mfc1       $a2, $f0
/* 10FA90 80066580 00000000 */  nop
/* 10FA94 80066584 00063400 */  sll        $a2, $a2, 0x10
/* 10FA98 80066588 0C028D89 */  jal        func_800A3624
/* 10FA9C 8006658C 00063403 */   sra       $a2, $a2, 0x10
/* 10FAA0 80066590 8EA4000C */  lw         $a0, 0xc($s5)
/* 10FAA4 80066594 0C028A40 */  jal        func_800A2900
/* 10FAA8 80066598 26520001 */   addiu     $s2, $s2, 1
/* 10FAAC 8006659C 2A420051 */  slti       $v0, $s2, 0x51
/* 10FAB0 800665A0 1440FFDC */  bnez       $v0, .L80066514
/* 10FAB4 800665A4 00000000 */   nop
.L800665A8:
/* 10FAB8 800665A8 3C018007 */  lui        $at, %hi(D_8006C380)
/* 10FABC 800665AC C422C380 */  lwc1       $f2, %lo(D_8006C380)($at)
/* 10FAC0 800665B0 3C014000 */  lui        $at, 0x4000
/* 10FAC4 800665B4 44810000 */  mtc1       $at, $f0
/* 10FAC8 800665B8 00000000 */  nop
/* 10FACC 800665BC 46001000 */  add.s      $f0, $f2, $f0
/* 10FAD0 800665C0 3C0143B4 */  lui        $at, 0x43b4
/* 10FAD4 800665C4 44811000 */  mtc1       $at, $f2
/* 10FAD8 800665C8 00000000 */  nop
/* 10FADC 800665CC 4600103C */  c.lt.s     $f2, $f0
/* 10FAE0 800665D0 3C018007 */  lui        $at, %hi(D_8006C380)
/* 10FAE4 800665D4 E420C380 */  swc1       $f0, %lo(D_8006C380)($at)
/* 10FAE8 800665D8 45000004 */  bc1f       .L800665EC
/* 10FAEC 800665DC 24120006 */   addiu     $s2, $zero, 6
/* 10FAF0 800665E0 46020001 */  sub.s      $f0, $f0, $f2
/* 10FAF4 800665E4 3C018007 */  lui        $at, %hi(D_8006C380)
/* 10FAF8 800665E8 E420C380 */  swc1       $f0, %lo(D_8006C380)($at)
.L800665EC:
/* 10FAFC 800665EC 24108000 */  addiu      $s0, $zero, -0x8000
.L800665F0:
/* 10FB00 800665F0 0C00DFD6 */  jal        func_80037F58_E1468
/* 10FB04 800665F4 3244FFFF */   andi      $a0, $s2, 0xffff
/* 10FB08 800665F8 0040A021 */  addu       $s4, $v0, $zero
/* 10FB0C 800665FC 8E840004 */  lw         $a0, 4($s4)
/* 10FB10 80066600 3C038007 */  lui        $v1, %hi(D_8006C385)
/* 10FB14 80066604 9063C385 */  lbu        $v1, %lo(D_8006C385)($v1)
/* 10FB18 80066608 3C068007 */  lui        $a2, %hi(D_8006C386)
/* 10FB1C 8006660C 90C6C386 */  lbu        $a2, %lo(D_8006C386)($a2)
/* 10FB20 80066610 3C018007 */  lui        $at, %hi(D_8006C380)
/* 10FB24 80066614 C420C380 */  lwc1       $f0, %lo(D_8006C380)($at)
/* 10FB28 80066618 3C058007 */  lui        $a1, %hi(D_8006A5D0_113AE0)
/* 10FB2C 8006661C 24A5A5D0 */  addiu      $a1, $a1, %lo(D_8006A5D0_113AE0)
/* 10FB30 80066620 240200FF */  addiu      $v0, $zero, 0xff
/* 10FB34 80066624 A6820074 */  sh         $v0, 0x74($s4)
/* 10FB38 80066628 24020020 */  addiu      $v0, $zero, 0x20
/* 10FB3C 8006662C A682007A */  sh         $v0, 0x7a($s4)
/* 10FB40 80066630 AE80001C */  sw         $zero, 0x1c($s4)
/* 10FB44 80066634 AE800020 */  sw         $zero, 0x20($s4)
/* 10FB48 80066638 46000007 */  neg.s      $f0, $f0
/* 10FB4C 8006663C A6830076 */  sh         $v1, 0x76($s4)
/* 10FB50 80066640 A6860078 */  sh         $a2, 0x78($s4)
/* 10FB54 80066644 0C0284DC */  jal        func_800A1370
/* 10FB58 80066648 E6800024 */   swc1      $f0, 0x24($s4)
/* 10FB5C 8006664C 8E840004 */  lw         $a0, 4($s4)
/* 10FB60 80066650 00021400 */  sll        $v0, $v0, 0x10
/* 10FB64 80066654 0C028509 */  jal        func_800A1424
/* 10FB68 80066658 00022C03 */   sra       $a1, $v0, 0x10
/* 10FB6C 8006665C 00402821 */  addu       $a1, $v0, $zero
/* 10FB70 80066660 00001821 */  addu       $v1, $zero, $zero
/* 10FB74 80066664 00A02021 */  addu       $a0, $a1, $zero
.L80066668:
/* 10FB78 80066668 94820008 */  lhu        $v0, 8($a0)
/* 10FB7C 8006666C 24630001 */  addiu      $v1, $v1, 1
/* 10FB80 80066670 2442FF80 */  addiu      $v0, $v0, -0x80
/* 10FB84 80066674 A4820008 */  sh         $v0, 8($a0)
/* 10FB88 80066678 28620010 */  slti       $v0, $v1, 0x10
/* 10FB8C 8006667C 1440FFFA */  bnez       $v0, .L80066668
/* 10FB90 80066680 24840010 */   addiu     $a0, $a0, 0x10
/* 10FB94 80066684 84A20008 */  lh         $v0, 8($a1)
/* 10FB98 80066688 28428AD0 */  slti       $v0, $v0, -0x7530
/* 10FB9C 8006668C 10400009 */  beqz       $v0, .L800666B4
/* 10FBA0 80066690 00001821 */   addu      $v1, $zero, $zero
/* 10FBA4 80066694 00A02021 */  addu       $a0, $a1, $zero
.L80066698:
/* 10FBA8 80066698 94820008 */  lhu        $v0, 8($a0)
/* 10FBAC 8006669C 24630001 */  addiu      $v1, $v1, 1
/* 10FBB0 800666A0 00501021 */  addu       $v0, $v0, $s0
/* 10FBB4 800666A4 A4820008 */  sh         $v0, 8($a0)
/* 10FBB8 800666A8 28620010 */  slti       $v0, $v1, 0x10
/* 10FBBC 800666AC 1440FFFA */  bnez       $v0, .L80066698
/* 10FBC0 800666B0 24840010 */   addiu     $a0, $a0, 0x10
.L800666B4:
/* 10FBC4 800666B4 0C00E032 */  jal        func_800380C8_E15D8
/* 10FBC8 800666B8 3244FFFF */   andi      $a0, $s2, 0xffff
/* 10FBCC 800666BC 26520001 */  addiu      $s2, $s2, 1
/* 10FBD0 800666C0 2A420016 */  slti       $v0, $s2, 0x16
/* 10FBD4 800666C4 1440FFCA */  bnez       $v0, .L800665F0
/* 10FBD8 800666C8 00000000 */   nop
/* 10FBDC 800666CC 24120016 */  addiu      $s2, $zero, 0x16
/* 10FBE0 800666D0 24108000 */  addiu      $s0, $zero, -0x8000
.L800666D4:
/* 10FBE4 800666D4 0C00DFD6 */  jal        func_80037F58_E1468
/* 10FBE8 800666D8 3244FFFF */   andi      $a0, $s2, 0xffff
/* 10FBEC 800666DC 0040A021 */  addu       $s4, $v0, $zero
/* 10FBF0 800666E0 8E840004 */  lw         $a0, 4($s4)
/* 10FBF4 800666E4 3C038007 */  lui        $v1, %hi(D_8006C385)
/* 10FBF8 800666E8 9063C385 */  lbu        $v1, %lo(D_8006C385)($v1)
/* 10FBFC 800666EC 3C068007 */  lui        $a2, %hi(D_8006C386)
/* 10FC00 800666F0 90C6C386 */  lbu        $a2, %lo(D_8006C386)($a2)
/* 10FC04 800666F4 3C018007 */  lui        $at, %hi(D_8006C380)
/* 10FC08 800666F8 C420C380 */  lwc1       $f0, %lo(D_8006C380)($at)
/* 10FC0C 800666FC 3C058007 */  lui        $a1, %hi(D_8006A5D0_113AE0)
/* 10FC10 80066700 24A5A5D0 */  addiu      $a1, $a1, %lo(D_8006A5D0_113AE0)
/* 10FC14 80066704 240200FF */  addiu      $v0, $zero, 0xff
/* 10FC18 80066708 A6820074 */  sh         $v0, 0x74($s4)
/* 10FC1C 8006670C 24020020 */  addiu      $v0, $zero, 0x20
/* 10FC20 80066710 A682007A */  sh         $v0, 0x7a($s4)
/* 10FC24 80066714 AE80001C */  sw         $zero, 0x1c($s4)
/* 10FC28 80066718 AE800020 */  sw         $zero, 0x20($s4)
/* 10FC2C 8006671C A6830076 */  sh         $v1, 0x76($s4)
/* 10FC30 80066720 A6860078 */  sh         $a2, 0x78($s4)
/* 10FC34 80066724 0C0284DC */  jal        func_800A1370
/* 10FC38 80066728 E6800024 */   swc1      $f0, 0x24($s4)
/* 10FC3C 8006672C 8E840004 */  lw         $a0, 4($s4)
/* 10FC40 80066730 00021400 */  sll        $v0, $v0, 0x10
/* 10FC44 80066734 0C028509 */  jal        func_800A1424
/* 10FC48 80066738 00022C03 */   sra       $a1, $v0, 0x10
/* 10FC4C 8006673C 00402821 */  addu       $a1, $v0, $zero
/* 10FC50 80066740 00001821 */  addu       $v1, $zero, $zero
/* 10FC54 80066744 00A02021 */  addu       $a0, $a1, $zero
.L80066748:
/* 10FC58 80066748 94820008 */  lhu        $v0, 8($a0)
/* 10FC5C 8006674C 24630001 */  addiu      $v1, $v1, 1
/* 10FC60 80066750 2442FF80 */  addiu      $v0, $v0, -0x80
/* 10FC64 80066754 A4820008 */  sh         $v0, 8($a0)
/* 10FC68 80066758 28620010 */  slti       $v0, $v1, 0x10
/* 10FC6C 8006675C 1440FFFA */  bnez       $v0, .L80066748
/* 10FC70 80066760 24840010 */   addiu     $a0, $a0, 0x10
/* 10FC74 80066764 84A20008 */  lh         $v0, 8($a1)
/* 10FC78 80066768 28429E58 */  slti       $v0, $v0, -0x61a8
/* 10FC7C 8006676C 10400009 */  beqz       $v0, .L80066794
/* 10FC80 80066770 00001821 */   addu      $v1, $zero, $zero
/* 10FC84 80066774 00A02021 */  addu       $a0, $a1, $zero
.L80066778:
/* 10FC88 80066778 94820008 */  lhu        $v0, 8($a0)
/* 10FC8C 8006677C 24630001 */  addiu      $v1, $v1, 1
/* 10FC90 80066780 00501021 */  addu       $v0, $v0, $s0
/* 10FC94 80066784 A4820008 */  sh         $v0, 8($a0)
/* 10FC98 80066788 28620010 */  slti       $v0, $v1, 0x10
/* 10FC9C 8006678C 1440FFFA */  bnez       $v0, .L80066778
/* 10FCA0 80066790 24840010 */   addiu     $a0, $a0, 0x10
.L80066794:
/* 10FCA4 80066794 0C00E032 */  jal        func_800380C8_E15D8
/* 10FCA8 80066798 3244FFFF */   andi      $a0, $s2, 0xffff
/* 10FCAC 8006679C 26520001 */  addiu      $s2, $s2, 1
/* 10FCB0 800667A0 2A420026 */  slti       $v0, $s2, 0x26
/* 10FCB4 800667A4 1440FFCB */  bnez       $v0, .L800666D4
/* 10FCB8 800667A8 00000000 */   nop
/* 10FCBC 800667AC 0C00DFD6 */  jal        func_80037F58_E1468
/* 10FCC0 800667B0 24040003 */   addiu     $a0, $zero, 3
/* 10FCC4 800667B4 0040A021 */  addu       $s4, $v0, $zero
/* 10FCC8 800667B8 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10FCCC 800667BC C420C38C */  lwc1       $f0, %lo(D_8006C38C)($at)
/* 10FCD0 800667C0 3C018007 */  lui        $at, %hi(D_8006C390)
/* 10FCD4 800667C4 C422C390 */  lwc1       $f2, %lo(D_8006C390)($at)
/* 10FCD8 800667C8 3C018007 */  lui        $at, %hi(D_8006C39C)
/* 10FCDC 800667CC C424C39C */  lwc1       $f4, %lo(D_8006C39C)($at)
/* 10FCE0 800667D0 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10FCE4 800667D4 C426C3A0 */  lwc1       $f6, %lo(D_8006C3A0)($at)
/* 10FCE8 800667D8 46020000 */  add.s      $f0, $f0, $f2
/* 10FCEC 800667DC 24040003 */  addiu      $a0, $zero, 3
/* 10FCF0 800667E0 E6840010 */  swc1       $f4, 0x10($s4)
/* 10FCF4 800667E4 E6860014 */  swc1       $f6, 0x14($s4)
/* 10FCF8 800667E8 0C00E032 */  jal        func_800380C8_E15D8
/* 10FCFC 800667EC E6800018 */   swc1      $f0, 0x18($s4)
/* 10FD00 800667F0 3C038007 */  lui        $v1, %hi(D_8006C3A9)
/* 10FD04 800667F4 9063C3A9 */  lbu        $v1, %lo(D_8006C3A9)($v1)
/* 10FD08 800667F8 24020001 */  addiu      $v0, $zero, 1
/* 10FD0C 800667FC 00431023 */  subu       $v0, $v0, $v1
/* 10FD10 80066800 304400FF */  andi       $a0, $v0, 0xff
/* 10FD14 80066804 3C018007 */  lui        $at, %hi(D_8006C3A9)
/* 10FD18 80066808 A022C3A9 */  sb         $v0, %lo(D_8006C3A9)($at)
/* 10FD1C 8006680C 0C00DFD6 */  jal        func_80037F58_E1468
/* 10FD20 80066810 24840004 */   addiu     $a0, $a0, 4
/* 10FD24 80066814 3C018007 */  lui        $at, %hi(D_8006C380)
/* 10FD28 80066818 C422C380 */  lwc1       $f2, %lo(D_8006C380)($at)
/* 10FD2C 8006681C 3C014080 */  lui        $at, 0x4080
/* 10FD30 80066820 44810000 */  mtc1       $at, $f0
/* 10FD34 80066824 00000000 */  nop
/* 10FD38 80066828 46001082 */  mul.s      $f2, $f2, $f0
/* 10FD3C 8006682C 0040A021 */  addu       $s4, $v0, $zero
/* 10FD40 80066830 3C02B60B */  lui        $v0, 0xb60b
/* 10FD44 80066834 344260B7 */  ori        $v0, $v0, 0x60b7
/* 10FD48 80066838 3C018007 */  lui        $at, %hi(D_8006C39C)
/* 10FD4C 8006683C C426C39C */  lwc1       $f6, %lo(D_8006C39C)($at)
/* 10FD50 80066840 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10FD54 80066844 C424C3A0 */  lwc1       $f4, %lo(D_8006C3A0)($at)
/* 10FD58 80066848 4600100D */  trunc.w.s  $f0, $f2
/* 10FD5C 8006684C 44030000 */  mfc1       $v1, $f0
/* 10FD60 80066850 00000000 */  nop
/* 10FD64 80066854 00031C00 */  sll        $v1, $v1, 0x10
/* 10FD68 80066858 00032C03 */  sra        $a1, $v1, 0x10
/* 10FD6C 8006685C 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10FD70 80066860 C420C38C */  lwc1       $f0, %lo(D_8006C38C)($at)
/* 10FD74 80066864 3C018007 */  lui        $at, %hi(D_8006C390)
/* 10FD78 80066868 C422C390 */  lwc1       $f2, %lo(D_8006C390)($at)
/* 10FD7C 8006686C 3C048007 */  lui        $a0, %hi(D_8006C3A9)
/* 10FD80 80066870 9084C3A9 */  lbu        $a0, %lo(D_8006C3A9)($a0)
/* 10FD84 80066874 00A20018 */  mult       $a1, $v0
/* 10FD88 80066878 AE80001C */  sw         $zero, 0x1c($s4)
/* 10FD8C 8006687C AE800020 */  sw         $zero, 0x20($s4)
/* 10FD90 80066880 E6860010 */  swc1       $f6, 0x10($s4)
/* 10FD94 80066884 46020000 */  add.s      $f0, $f0, $f2
/* 10FD98 80066888 E6840014 */  swc1       $f4, 0x14($s4)
/* 10FD9C 8006688C 00031FC3 */  sra        $v1, $v1, 0x1f
/* 10FDA0 80066890 24840004 */  addiu      $a0, $a0, 4
/* 10FDA4 80066894 E6800018 */  swc1       $f0, 0x18($s4)
/* 10FDA8 80066898 00004010 */  mfhi       $t0
/* 10FDAC 8006689C 01051021 */  addu       $v0, $t0, $a1
/* 10FDB0 800668A0 00021203 */  sra        $v0, $v0, 8
/* 10FDB4 800668A4 00431023 */  subu       $v0, $v0, $v1
/* 10FDB8 800668A8 00021840 */  sll        $v1, $v0, 1
/* 10FDBC 800668AC 00621821 */  addu       $v1, $v1, $v0
/* 10FDC0 800668B0 00031100 */  sll        $v0, $v1, 4
/* 10FDC4 800668B4 00431023 */  subu       $v0, $v0, $v1
/* 10FDC8 800668B8 000210C0 */  sll        $v0, $v0, 3
/* 10FDCC 800668BC 00A22823 */  subu       $a1, $a1, $v0
/* 10FDD0 800668C0 00052C00 */  sll        $a1, $a1, 0x10
/* 10FDD4 800668C4 00052C03 */  sra        $a1, $a1, 0x10
/* 10FDD8 800668C8 44850000 */  mtc1       $a1, $f0
/* 10FDDC 800668CC 00000000 */  nop
/* 10FDE0 800668D0 46800020 */  cvt.s.w    $f0, $f0
/* 10FDE4 800668D4 0C00E032 */  jal        func_800380C8_E15D8
/* 10FDE8 800668D8 E6800024 */   swc1      $f0, 0x24($s4)
/* 10FDEC 800668DC 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10FDF0 800668E0 C424C38C */  lwc1       $f4, %lo(D_8006C38C)($at)
/* 10FDF4 800668E4 3C01C220 */  lui        $at, 0xc220
/* 10FDF8 800668E8 44810000 */  mtc1       $at, $f0
/* 10FDFC 800668EC 3C018015 */  lui        $at, %hi(D_8014A064)
/* 10FE00 800668F0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 10FE04 800668F4 4600203C */  c.lt.s     $f4, $f0
/* 10FE08 800668F8 3C018015 */  lui        $at, %hi(D_8014A068)
/* 10FE0C 800668FC AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 10FE10 80066900 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 10FE14 80066904 E424A06C */  swc1       $f4, %lo(D_8014A06C)($at)
/* 10FE18 80066908 45000013 */  bc1f       .L80066958
/* 10FE1C 8006690C 00000000 */   nop
/* 10FE20 80066910 3C028007 */  lui        $v0, %hi(D_8006C585)
/* 10FE24 80066914 9042C585 */  lbu        $v0, %lo(D_8006C585)($v0)
/* 10FE28 80066918 3C018007 */  lui        $at, %hi(D_8006C390)
/* 10FE2C 8006691C C422C390 */  lwc1       $f2, %lo(D_8006C390)($at)
/* 10FE30 80066920 3C013DCC */  lui        $at, 0x3dcc
/* 10FE34 80066924 3421CCCD */  ori        $at, $at, 0xcccd
/* 10FE38 80066928 44810000 */  mtc1       $at, $f0
/* 10FE3C 8006692C 00021080 */  sll        $v0, $v0, 2
/* 10FE40 80066930 46001080 */  add.s      $f2, $f2, $f0
/* 10FE44 80066934 3C018007 */  lui        $at, %hi(D_8006A5B0_113AC0)
/* 10FE48 80066938 00220821 */  addu       $at, $at, $v0
/* 10FE4C 8006693C C420A5B0 */  lwc1       $f0, %lo(D_8006A5B0_113AC0)($at)
/* 10FE50 80066940 46002000 */  add.s      $f0, $f4, $f0
/* 10FE54 80066944 3C018007 */  lui        $at, %hi(D_8006C390)
/* 10FE58 80066948 E422C390 */  swc1       $f2, %lo(D_8006C390)($at)
/* 10FE5C 8006694C 3C018007 */  lui        $at, %hi(D_8006C38C)
/* 10FE60 80066950 08019A60 */  j          .L80066980
/* 10FE64 80066954 E420C38C */   swc1      $f0, %lo(D_8006C38C)($at)
.L80066958:
/* 10FE68 80066958 3C028007 */  lui        $v0, %hi(D_800698A3_112DB3)
/* 10FE6C 8006695C 904298A3 */  lbu        $v0, %lo(D_800698A3_112DB3)($v0)
/* 10FE70 80066960 3C018007 */  lui        $at, %hi(D_800698A2_112DB2)
/* 10FE74 80066964 1440000A */  bnez       $v0, .L80066990
/* 10FE78 80066968 A02098A2 */   sb        $zero, %lo(D_800698A2_112DB2)($at)
/* 10FE7C 8006696C 3C028007 */  lui        $v0, %hi(D_800698A6_112DB6)
/* 10FE80 80066970 944298A6 */  lhu        $v0, %lo(D_800698A6_112DB6)($v0)
/* 10FE84 80066974 24420001 */  addiu      $v0, $v0, 1
/* 10FE88 80066978 3C018007 */  lui        $at, %hi(D_800698A6_112DB6)
/* 10FE8C 8006697C A42298A6 */  sh         $v0, %lo(D_800698A6_112DB6)($at)
.L80066980:
/* 10FE90 80066980 3C028007 */  lui        $v0, %hi(D_800698A3_112DB3)
/* 10FE94 80066984 904298A3 */  lbu        $v0, %lo(D_800698A3_112DB3)($v0)
/* 10FE98 80066988 10400071 */  beqz       $v0, .L80066B50
/* 10FE9C 8006698C 00000000 */   nop
.L80066990:
/* 10FEA0 80066990 3C018007 */  lui        $at, %hi(D_8006C390)
/* 10FEA4 80066994 C420C390 */  lwc1       $f0, %lo(D_8006C390)($at)
/* 10FEA8 80066998 3C018007 */  lui        $at, %hi(D_8006C388)
/* 10FEAC 8006699C C422C388 */  lwc1       $f2, %lo(D_8006C388)($at)
/* 10FEB0 800669A0 46020000 */  add.s      $f0, $f0, $f2
/* 10FEB4 800669A4 3C028007 */  lui        $v0, %hi(D_800698A3_112DB3)
/* 10FEB8 800669A8 904298A3 */  lbu        $v0, %lo(D_800698A3_112DB3)($v0)
/* 10FEBC 800669AC 3C018007 */  lui        $at, %hi(D_8006C390)
/* 10FEC0 800669B0 10400067 */  beqz       $v0, .L80066B50
/* 10FEC4 800669B4 E420C390 */   swc1      $f0, %lo(D_8006C390)($at)
/* 10FEC8 800669B8 3C013E19 */  lui        $at, 0x3e19
/* 10FECC 800669BC 3421999A */  ori        $at, $at, 0x999a
/* 10FED0 800669C0 44810000 */  mtc1       $at, $f0
/* 10FED4 800669C4 00000000 */  nop
/* 10FED8 800669C8 46001000 */  add.s      $f0, $f2, $f0
/* 10FEDC 800669CC 3C013F80 */  lui        $at, 0x3f80
/* 10FEE0 800669D0 44811000 */  mtc1       $at, $f2
/* 10FEE4 800669D4 00000000 */  nop
/* 10FEE8 800669D8 4602003C */  c.lt.s     $f0, $f2
/* 10FEEC 800669DC 3C018007 */  lui        $at, %hi(D_8006C388)
/* 10FEF0 800669E0 E420C388 */  swc1       $f0, %lo(D_8006C388)($at)
/* 10FEF4 800669E4 45000010 */  bc1f       .L80066A28
/* 10FEF8 800669E8 00000000 */   nop
/* 10FEFC 800669EC 3C018007 */  lui        $at, %hi(D_8006C39C)
/* 10FF00 800669F0 C420C39C */  lwc1       $f0, %lo(D_8006C39C)($at)
/* 10FF04 800669F4 3C013E4C */  lui        $at, 0x3e4c
/* 10FF08 800669F8 3421CCCD */  ori        $at, $at, 0xcccd
/* 10FF0C 800669FC 44812000 */  mtc1       $at, $f4
/* 10FF10 80066A00 00000000 */  nop
/* 10FF14 80066A04 46040000 */  add.s      $f0, $f0, $f4
/* 10FF18 80066A08 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10FF1C 80066A0C C422C3A0 */  lwc1       $f2, %lo(D_8006C3A0)($at)
/* 10FF20 80066A10 46041081 */  sub.s      $f2, $f2, $f4
/* 10FF24 80066A14 3C018007 */  lui        $at, %hi(D_8006C39C)
/* 10FF28 80066A18 E420C39C */  swc1       $f0, %lo(D_8006C39C)($at)
/* 10FF2C 80066A1C 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10FF30 80066A20 08019AA6 */  j          .L80066A98
/* 10FF34 80066A24 E422C3A0 */   swc1      $f2, %lo(D_8006C3A0)($at)
.L80066A28:
/* 10FF38 80066A28 3C018007 */  lui        $at, %hi(D_8006C39C)
/* 10FF3C 80066A2C C422C39C */  lwc1       $f2, %lo(D_8006C39C)($at)
/* 10FF40 80066A30 44802000 */  mtc1       $zero, $f4
/* 10FF44 80066A34 00000000 */  nop
/* 10FF48 80066A38 4604103C */  c.lt.s     $f2, $f4
/* 10FF4C 80066A3C 00000000 */  nop
/* 10FF50 80066A40 45000008 */  bc1f       .L80066A64
/* 10FF54 80066A44 00000000 */   nop
/* 10FF58 80066A48 3C013DCC */  lui        $at, 0x3dcc
/* 10FF5C 80066A4C 3421CCCD */  ori        $at, $at, 0xcccd
/* 10FF60 80066A50 44810000 */  mtc1       $at, $f0
/* 10FF64 80066A54 00000000 */  nop
/* 10FF68 80066A58 46001001 */  sub.s      $f0, $f2, $f0
/* 10FF6C 80066A5C 3C018007 */  lui        $at, %hi(D_8006C39C)
/* 10FF70 80066A60 E420C39C */  swc1       $f0, %lo(D_8006C39C)($at)
.L80066A64:
/* 10FF74 80066A64 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10FF78 80066A68 C422C3A0 */  lwc1       $f2, %lo(D_8006C3A0)($at)
/* 10FF7C 80066A6C 4602203C */  c.lt.s     $f4, $f2
/* 10FF80 80066A70 00000000 */  nop
/* 10FF84 80066A74 45000008 */  bc1f       .L80066A98
/* 10FF88 80066A78 00000000 */   nop
/* 10FF8C 80066A7C 3C013DCC */  lui        $at, 0x3dcc
/* 10FF90 80066A80 3421CCCD */  ori        $at, $at, 0xcccd
/* 10FF94 80066A84 44810000 */  mtc1       $at, $f0
/* 10FF98 80066A88 00000000 */  nop
/* 10FF9C 80066A8C 46001000 */  add.s      $f0, $f2, $f0
/* 10FFA0 80066A90 3C018007 */  lui        $at, %hi(D_8006C3A0)
/* 10FFA4 80066A94 E420C3A0 */  swc1       $f0, %lo(D_8006C3A0)($at)
.L80066A98:
/* 10FFA8 80066A98 3C038007 */  lui        $v1, %hi(D_8006C385)
/* 10FFAC 80066A9C 9063C385 */  lbu        $v1, %lo(D_8006C385)($v1)
/* 10FFB0 80066AA0 2C6200A1 */  sltiu      $v0, $v1, 0xa1
/* 10FFB4 80066AA4 14400003 */  bnez       $v0, .L80066AB4
/* 10FFB8 80066AA8 2462FFFE */   addiu     $v0, $v1, -2
/* 10FFBC 80066AAC 3C018007 */  lui        $at, %hi(D_8006C385)
/* 10FFC0 80066AB0 A022C385 */  sb         $v0, %lo(D_8006C385)($at)
.L80066AB4:
/* 10FFC4 80066AB4 3C038007 */  lui        $v1, %hi(D_8006C386)
/* 10FFC8 80066AB8 9063C386 */  lbu        $v1, %lo(D_8006C386)($v1)
/* 10FFCC 80066ABC 2C620041 */  sltiu      $v0, $v1, 0x41
/* 10FFD0 80066AC0 14400003 */  bnez       $v0, .L80066AD0
/* 10FFD4 80066AC4 2462FFFC */   addiu     $v0, $v1, -4
/* 10FFD8 80066AC8 3C018007 */  lui        $at, %hi(D_8006C386)
/* 10FFDC 80066ACC A022C386 */  sb         $v0, %lo(D_8006C386)($at)
.L80066AD0:
/* 10FFE0 80066AD0 3C038015 */  lui        $v1, %hi(D_8014A07C)
/* 10FFE4 80066AD4 2463A07C */  addiu      $v1, $v1, %lo(D_8014A07C)
/* 10FFE8 80066AD8 C4660000 */  lwc1       $f6, ($v1)
/* 10FFEC 80066ADC 3C013D75 */  lui        $at, 0x3d75
/* 10FFF0 80066AE0 3421C28F */  ori        $at, $at, 0xc28f
/* 10FFF4 80066AE4 44810000 */  mtc1       $at, $f0
/* 10FFF8 80066AE8 00000000 */  nop
/* 10FFFC 80066AEC 46003180 */  add.s      $f6, $f6, $f0
/* 110000 80066AF0 3C018015 */  lui        $at, %hi(D_8014A080)
/* 110004 80066AF4 C422A080 */  lwc1       $f2, %lo(D_8014A080)($at)
/* 110008 80066AF8 3C018007 */  lui        $at, %hi(D_8006C394)
/* 11000C 80066AFC C424C394 */  lwc1       $f4, %lo(D_8006C394)($at)
/* 110010 80066B00 46001080 */  add.s      $f2, $f2, $f0
/* 110014 80066B04 3C013ED7 */  lui        $at, 0x3ed7
/* 110018 80066B08 34210A3D */  ori        $at, $at, 0xa3d
/* 11001C 80066B0C 44814000 */  mtc1       $at, $f8
/* 110020 80066B10 3C028007 */  lui        $v0, %hi(D_800698A4_112DB4)
/* 110024 80066B14 904298A4 */  lbu        $v0, %lo(D_800698A4_112DB4)($v0)
/* 110028 80066B18 3C018007 */  lui        $at, %hi(D_8006C398)
/* 11002C 80066B1C C420C398 */  lwc1       $f0, %lo(D_8006C398)($at)
/* 110030 80066B20 46082100 */  add.s      $f4, $f4, $f8
/* 110034 80066B24 24420001 */  addiu      $v0, $v0, 1
/* 110038 80066B28 3C018007 */  lui        $at, %hi(D_800698A4_112DB4)
/* 11003C 80066B2C A02298A4 */  sb         $v0, %lo(D_800698A4_112DB4)($at)
/* 110040 80066B30 46080001 */  sub.s      $f0, $f0, $f8
/* 110044 80066B34 E4660000 */  swc1       $f6, ($v1)
/* 110048 80066B38 3C018015 */  lui        $at, %hi(D_8014A080)
/* 11004C 80066B3C E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* 110050 80066B40 3C018007 */  lui        $at, %hi(D_8006C394)
/* 110054 80066B44 E424C394 */  swc1       $f4, %lo(D_8006C394)($at)
/* 110058 80066B48 3C018007 */  lui        $at, %hi(D_8006C398)
/* 11005C 80066B4C E420C398 */  swc1       $f0, %lo(D_8006C398)($at)
.L80066B50:
/* 110060 80066B50 3C018007 */  lui        $at, %hi(D_8006C394)
/* 110064 80066B54 C422C394 */  lwc1       $f2, %lo(D_8006C394)($at)
/* 110068 80066B58 3C014318 */  lui        $at, 0x4318
/* 11006C 80066B5C 44810000 */  mtc1       $at, $f0
/* 110070 80066B60 00000000 */  nop
/* 110074 80066B64 4602003C */  c.lt.s     $f0, $f2
/* 110078 80066B68 00000000 */  nop
/* 11007C 80066B6C 45000095 */  bc1f       .L80066DC4
/* 110080 80066B70 00000000 */   nop
/* 110084 80066B74 3C014328 */  lui        $at, 0x4328
/* 110088 80066B78 44810000 */  mtc1       $at, $f0
/* 11008C 80066B7C 00000000 */  nop
/* 110090 80066B80 4600103C */  c.lt.s     $f2, $f0
/* 110094 80066B84 00000000 */  nop
/* 110098 80066B88 4500008E */  bc1f       .L80066DC4
/* 11009C 80066B8C 00000000 */   nop
/* 1100A0 80066B90 3C018007 */  lui        $at, %hi(D_8006C398)
/* 1100A4 80066B94 C422C398 */  lwc1       $f2, %lo(D_8006C398)($at)
/* 1100A8 80066B98 3C0142DC */  lui        $at, 0x42dc
/* 1100AC 80066B9C 44810000 */  mtc1       $at, $f0
/* 1100B0 80066BA0 00000000 */  nop
/* 1100B4 80066BA4 4602003C */  c.lt.s     $f0, $f2
/* 1100B8 80066BA8 00000000 */  nop
/* 1100BC 80066BAC 45000085 */  bc1f       .L80066DC4
/* 1100C0 80066BB0 00000000 */   nop
/* 1100C4 80066BB4 3C0142F4 */  lui        $at, 0x42f4
/* 1100C8 80066BB8 44810000 */  mtc1       $at, $f0
/* 1100CC 80066BBC 00000000 */  nop
/* 1100D0 80066BC0 4600103C */  c.lt.s     $f2, $f0
/* 1100D4 80066BC4 00000000 */  nop
/* 1100D8 80066BC8 4500007E */  bc1f       .L80066DC4
/* 1100DC 80066BCC 00000000 */   nop
/* 1100E0 80066BD0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 1100E4 80066BD4 C424A07C */  lwc1       $f4, %lo(D_8014A07C)($at)
/* 1100E8 80066BD8 44800000 */  mtc1       $zero, $f0
/* 1100EC 80066BDC 00000000 */  nop
/* 1100F0 80066BE0 4604003C */  c.lt.s     $f0, $f4
/* 1100F4 80066BE4 00000000 */  nop
/* 1100F8 80066BE8 00000000 */  nop
/* 1100FC 80066BEC 4502000B */  bc1fl      .L80066C1C
/* 110100 80066BF0 46002007 */   neg.s     $f0, $f4
/* 110104 80066BF4 3C013F19 */  lui        $at, 0x3f19
/* 110108 80066BF8 3421999A */  ori        $at, $at, 0x999a
/* 11010C 80066BFC 44810000 */  mtc1       $at, $f0
/* 110110 80066C00 00000000 */  nop
/* 110114 80066C04 4600203C */  c.lt.s     $f4, $f0
/* 110118 80066C08 00000000 */  nop
/* 11011C 80066C0C 4500006D */  bc1f       .L80066DC4
/* 110120 80066C10 00000000 */   nop
/* 110124 80066C14 08019B0F */  j          .L80066C3C
/* 110128 80066C18 00000000 */   nop
.L80066C1C:
/* 11012C 80066C1C 3C013F19 */  lui        $at, 0x3f19
/* 110130 80066C20 3421999A */  ori        $at, $at, 0x999a
/* 110134 80066C24 44811000 */  mtc1       $at, $f2
/* 110138 80066C28 00000000 */  nop
/* 11013C 80066C2C 4602003C */  c.lt.s     $f0, $f2
/* 110140 80066C30 00000000 */  nop
/* 110144 80066C34 45000063 */  bc1f       .L80066DC4
/* 110148 80066C38 00000000 */   nop
.L80066C3C:
/* 11014C 80066C3C 3C018015 */  lui        $at, %hi(D_8014A080)
/* 110150 80066C40 C424A080 */  lwc1       $f4, %lo(D_8014A080)($at)
/* 110154 80066C44 44800000 */  mtc1       $zero, $f0
/* 110158 80066C48 00000000 */  nop
/* 11015C 80066C4C 4604003C */  c.lt.s     $f0, $f4
/* 110160 80066C50 00000000 */  nop
/* 110164 80066C54 00000000 */  nop
/* 110168 80066C58 4502000B */  bc1fl      .L80066C88
/* 11016C 80066C5C 46002007 */   neg.s     $f0, $f4
/* 110170 80066C60 3C013F19 */  lui        $at, 0x3f19
/* 110174 80066C64 3421999A */  ori        $at, $at, 0x999a
/* 110178 80066C68 44810000 */  mtc1       $at, $f0
/* 11017C 80066C6C 00000000 */  nop
/* 110180 80066C70 4600203C */  c.lt.s     $f4, $f0
/* 110184 80066C74 00000000 */  nop
/* 110188 80066C78 45000052 */  bc1f       .L80066DC4
/* 11018C 80066C7C 00000000 */   nop
/* 110190 80066C80 08019B2A */  j          .L80066CA8
/* 110194 80066C84 00000000 */   nop
.L80066C88:
/* 110198 80066C88 3C013F19 */  lui        $at, 0x3f19
/* 11019C 80066C8C 3421999A */  ori        $at, $at, 0x999a
/* 1101A0 80066C90 44811000 */  mtc1       $at, $f2
/* 1101A4 80066C94 00000000 */  nop
/* 1101A8 80066C98 4602003C */  c.lt.s     $f0, $f2
/* 1101AC 80066C9C 00000000 */  nop
/* 1101B0 80066CA0 45000048 */  bc1f       .L80066DC4
/* 1101B4 80066CA4 00000000 */   nop
.L80066CA8:
/* 1101B8 80066CA8 3C018007 */  lui        $at, %hi(D_8006C378)
/* 1101BC 80066CAC C424C378 */  lwc1       $f4, %lo(D_8006C378)($at)
/* 1101C0 80066CB0 44800000 */  mtc1       $zero, $f0
/* 1101C4 80066CB4 00000000 */  nop
/* 1101C8 80066CB8 4604003C */  c.lt.s     $f0, $f4
/* 1101CC 80066CBC 00000000 */  nop
/* 1101D0 80066CC0 00000000 */  nop
/* 1101D4 80066CC4 4502000B */  bc1fl      .L80066CF4
/* 1101D8 80066CC8 46002007 */   neg.s     $f0, $f4
/* 1101DC 80066CCC 3C013D4C */  lui        $at, 0x3d4c
/* 1101E0 80066CD0 3421CCCD */  ori        $at, $at, 0xcccd
/* 1101E4 80066CD4 44810000 */  mtc1       $at, $f0
/* 1101E8 80066CD8 00000000 */  nop
/* 1101EC 80066CDC 4600203C */  c.lt.s     $f4, $f0
/* 1101F0 80066CE0 00000000 */  nop
/* 1101F4 80066CE4 45000037 */  bc1f       .L80066DC4
/* 1101F8 80066CE8 00000000 */   nop
/* 1101FC 80066CEC 08019B45 */  j          .L80066D14
/* 110200 80066CF0 00000000 */   nop
.L80066CF4:
/* 110204 80066CF4 3C013D4C */  lui        $at, 0x3d4c
/* 110208 80066CF8 3421CCCD */  ori        $at, $at, 0xcccd
/* 11020C 80066CFC 44811000 */  mtc1       $at, $f2
/* 110210 80066D00 00000000 */  nop
/* 110214 80066D04 4602003C */  c.lt.s     $f0, $f2
/* 110218 80066D08 00000000 */  nop
/* 11021C 80066D0C 4500002D */  bc1f       .L80066DC4
/* 110220 80066D10 00000000 */   nop
.L80066D14:
/* 110224 80066D14 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 110228 80066D18 C424C37C */  lwc1       $f4, %lo(D_8006C37C)($at)
/* 11022C 80066D1C 44800000 */  mtc1       $zero, $f0
/* 110230 80066D20 00000000 */  nop
/* 110234 80066D24 4604003C */  c.lt.s     $f0, $f4
/* 110238 80066D28 00000000 */  nop
/* 11023C 80066D2C 00000000 */  nop
/* 110240 80066D30 4502000B */  bc1fl      .L80066D60
/* 110244 80066D34 46002007 */   neg.s     $f0, $f4
/* 110248 80066D38 3C013D4C */  lui        $at, 0x3d4c
/* 11024C 80066D3C 3421CCCD */  ori        $at, $at, 0xcccd
/* 110250 80066D40 44810000 */  mtc1       $at, $f0
/* 110254 80066D44 00000000 */  nop
/* 110258 80066D48 4600203C */  c.lt.s     $f4, $f0
/* 11025C 80066D4C 00000000 */  nop
/* 110260 80066D50 4500001C */  bc1f       .L80066DC4
/* 110264 80066D54 00000000 */   nop
/* 110268 80066D58 08019B60 */  j          .L80066D80
/* 11026C 80066D5C 00000000 */   nop
.L80066D60:
/* 110270 80066D60 3C013D4C */  lui        $at, 0x3d4c
/* 110274 80066D64 3421CCCD */  ori        $at, $at, 0xcccd
/* 110278 80066D68 44811000 */  mtc1       $at, $f2
/* 11027C 80066D6C 00000000 */  nop
/* 110280 80066D70 4602003C */  c.lt.s     $f0, $f2
/* 110284 80066D74 00000000 */  nop
/* 110288 80066D78 45000012 */  bc1f       .L80066DC4
/* 11028C 80066D7C 00000000 */   nop
.L80066D80:
/* 110290 80066D80 3C028007 */  lui        $v0, %hi(D_800698A3_112DB3)
/* 110294 80066D84 904298A3 */  lbu        $v0, %lo(D_800698A3_112DB3)($v0)
/* 110298 80066D88 1440000E */  bnez       $v0, .L80066DC4
/* 11029C 80066D8C 00000000 */   nop
/* 1102A0 80066D90 3C028007 */  lui        $v0, %hi(D_800698A6_112DB6)
/* 1102A4 80066D94 944298A6 */  lhu        $v0, %lo(D_800698A6_112DB6)($v0)
/* 1102A8 80066D98 1440000A */  bnez       $v0, .L80066DC4
/* 1102AC 80066D9C 24020001 */   addiu     $v0, $zero, 1
/* 1102B0 80066DA0 44800000 */  mtc1       $zero, $f0
/* 1102B4 80066DA4 3C018007 */  lui        $at, %hi(D_800698A2_112DB2)
/* 1102B8 80066DA8 A02098A2 */  sb         $zero, %lo(D_800698A2_112DB2)($at)
/* 1102BC 80066DAC 3C018007 */  lui        $at, %hi(D_800698A3_112DB3)
/* 1102C0 80066DB0 A02298A3 */  sb         $v0, %lo(D_800698A3_112DB3)($at)
/* 1102C4 80066DB4 3C018007 */  lui        $at, %hi(D_8006C37C)
/* 1102C8 80066DB8 E420C37C */  swc1       $f0, %lo(D_8006C37C)($at)
/* 1102CC 80066DBC 3C018007 */  lui        $at, %hi(D_8006C378)
/* 1102D0 80066DC0 E420C378 */  swc1       $f0, %lo(D_8006C378)($at)
.L80066DC4:
/* 1102D4 80066DC4 3C028007 */  lui        $v0, %hi(D_800698A1_112DB1)
/* 1102D8 80066DC8 904298A1 */  lbu        $v0, %lo(D_800698A1_112DB1)($v0)
/* 1102DC 80066DCC 1040002E */  beqz       $v0, .L80066E88
/* 1102E0 80066DD0 00000000 */   nop
/* 1102E4 80066DD4 3C018015 */  lui        $at, %hi(D_8014A080)
/* 1102E8 80066DD8 C424A080 */  lwc1       $f4, %lo(D_8014A080)($at)
/* 1102EC 80066DDC 44800000 */  mtc1       $zero, $f0
/* 1102F0 80066DE0 00000000 */  nop
/* 1102F4 80066DE4 4604003C */  c.lt.s     $f0, $f4
/* 1102F8 80066DE8 00000000 */  nop
/* 1102FC 80066DEC 00000000 */  nop
/* 110300 80066DF0 45020007 */  bc1fl      .L80066E10
/* 110304 80066DF4 46002007 */   neg.s     $f0, $f4
/* 110308 80066DF8 3C014120 */  lui        $at, 0x4120
/* 11030C 80066DFC 44810000 */  mtc1       $at, $f0
/* 110310 80066E00 00000000 */  nop
/* 110314 80066E04 4604003C */  c.lt.s     $f0, $f4
/* 110318 80066E08 08019B89 */  j          .L80066E24
/* 11031C 80066E0C 00000000 */   nop
.L80066E10:
/* 110320 80066E10 3C014120 */  lui        $at, 0x4120
/* 110324 80066E14 44811000 */  mtc1       $at, $f2
/* 110328 80066E18 00000000 */  nop
/* 11032C 80066E1C 4600103C */  c.lt.s     $f2, $f0
/* 110330 80066E20 00000000 */  nop
.L80066E24:
/* 110334 80066E24 45010011 */  bc1t       .L80066E6C
/* 110338 80066E28 00000000 */   nop
/* 11033C 80066E2C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 110340 80066E30 C422A07C */  lwc1       $f2, %lo(D_8014A07C)($at)
/* 110344 80066E34 3C014170 */  lui        $at, 0x4170
/* 110348 80066E38 44810000 */  mtc1       $at, $f0
/* 11034C 80066E3C 00000000 */  nop
/* 110350 80066E40 4602003C */  c.lt.s     $f0, $f2
/* 110354 80066E44 00000000 */  nop
/* 110358 80066E48 45010008 */  bc1t       .L80066E6C
/* 11035C 80066E4C 00000000 */   nop
/* 110360 80066E50 3C01C0E0 */  lui        $at, 0xc0e0
/* 110364 80066E54 44810000 */  mtc1       $at, $f0
/* 110368 80066E58 00000000 */  nop
/* 11036C 80066E5C 4600103C */  c.lt.s     $f2, $f0
/* 110370 80066E60 00000000 */  nop
/* 110374 80066E64 45000008 */  bc1f       .L80066E88
/* 110378 80066E68 00000000 */   nop
.L80066E6C:
/* 11037C 80066E6C 3C028007 */  lui        $v0, %hi(D_800698A6_112DB6)
/* 110380 80066E70 944298A6 */  lhu        $v0, %lo(D_800698A6_112DB6)($v0)
/* 110384 80066E74 3C018007 */  lui        $at, %hi(D_800698A2_112DB2)
/* 110388 80066E78 A02098A2 */  sb         $zero, %lo(D_800698A2_112DB2)($at)
/* 11038C 80066E7C 24420001 */  addiu      $v0, $v0, 1
/* 110390 80066E80 3C018007 */  lui        $at, %hi(D_800698A6_112DB6)
/* 110394 80066E84 A42298A6 */  sh         $v0, %lo(D_800698A6_112DB6)($at)
.L80066E88:
/* 110398 80066E88 3C038007 */  lui        $v1, %hi(D_800698A6_112DB6)
/* 11039C 80066E8C 946398A6 */  lhu        $v1, %lo(D_800698A6_112DB6)($v1)
/* 1103A0 80066E90 1060004B */  beqz       $v1, .L80066FC0
/* 1103A4 80066E94 00000000 */   nop
/* 1103A8 80066E98 3C028007 */  lui        $v0, %hi(D_800698A3_112DB3)
/* 1103AC 80066E9C 904298A3 */  lbu        $v0, %lo(D_800698A3_112DB3)($v0)
/* 1103B0 80066EA0 14400047 */  bnez       $v0, .L80066FC0
/* 1103B4 80066EA4 24020001 */   addiu     $v0, $zero, 1
/* 1103B8 80066EA8 14620013 */  bne        $v1, $v0, .L80066EF8
/* 1103BC 80066EAC 00000000 */   nop
/* 1103C0 80066EB0 3C028015 */  lui        $v0, %hi(D_80149F90)
/* 1103C4 80066EB4 8C429F90 */  lw         $v0, %lo(D_80149F90)($v0)
/* 1103C8 80066EB8 2404003C */  addiu      $a0, $zero, 0x3c
/* 1103CC 80066EBC 0082001A */  div        $zero, $a0, $v0
/* 1103D0 80066EC0 14400002 */  bnez       $v0, .L80066ECC
/* 1103D4 80066EC4 00000000 */   nop
/* 1103D8 80066EC8 0007000D */  break      7
.L80066ECC:
/* 1103DC 80066ECC 2401FFFF */   addiu     $at, $zero, -1
/* 1103E0 80066ED0 14410004 */  bne        $v0, $at, .L80066EE4
/* 1103E4 80066ED4 3C018000 */   lui       $at, 0x8000
/* 1103E8 80066ED8 14810002 */  bne        $a0, $at, .L80066EE4
/* 1103EC 80066EDC 00000000 */   nop
/* 1103F0 80066EE0 0006000D */  break      6
.L80066EE4:
/* 1103F4 80066EE4 00002012 */   mflo      $a0
/* 1103F8 80066EE8 00000000 */  nop
/* 1103FC 80066EEC 00000000 */  nop
/* 110400 80066EF0 0C02A5E5 */  jal        func_800A9794
/* 110404 80066EF4 00042040 */   sll       $a0, $a0, 1
.L80066EF8:
/* 110408 80066EF8 3C018007 */  lui        $at, %hi(D_8006C390)
/* 11040C 80066EFC C422C390 */  lwc1       $f2, %lo(D_8006C390)($at)
/* 110410 80066F00 3C0143DC */  lui        $at, 0x43dc
/* 110414 80066F04 44810000 */  mtc1       $at, $f0
/* 110418 80066F08 00000000 */  nop
/* 11041C 80066F0C 4600103C */  c.lt.s     $f2, $f0
/* 110420 80066F10 00000000 */  nop
/* 110424 80066F14 45000007 */  bc1f       .L80066F34
/* 110428 80066F18 00000000 */   nop
/* 11042C 80066F1C 3C014120 */  lui        $at, 0x4120
/* 110430 80066F20 44810000 */  mtc1       $at, $f0
/* 110434 80066F24 00000000 */  nop
/* 110438 80066F28 46001000 */  add.s      $f0, $f2, $f0
/* 11043C 80066F2C 3C018007 */  lui        $at, %hi(D_8006C390)
/* 110440 80066F30 E420C390 */  swc1       $f0, %lo(D_8006C390)($at)
.L80066F34:
/* 110444 80066F34 3C028015 */  lui        $v0, %hi(D_8014A07C)
/* 110448 80066F38 2442A07C */  addiu      $v0, $v0, %lo(D_8014A07C)
/* 11044C 80066F3C C4420000 */  lwc1       $f2, ($v0)
/* 110450 80066F40 44800000 */  mtc1       $zero, $f0
/* 110454 80066F44 00000000 */  nop
/* 110458 80066F48 4600103C */  c.lt.s     $f2, $f0
/* 11045C 80066F4C 00000000 */  nop
/* 110460 80066F50 4500000E */  bc1f       .L80066F8C
/* 110464 80066F54 00000000 */   nop
/* 110468 80066F58 3C01C0E0 */  lui        $at, 0xc0e0
/* 11046C 80066F5C 44810000 */  mtc1       $at, $f0
/* 110470 80066F60 00000000 */  nop
/* 110474 80066F64 4602003C */  c.lt.s     $f0, $f2
/* 110478 80066F68 00000000 */  nop
/* 11047C 80066F6C 45000014 */  bc1f       .L80066FC0
/* 110480 80066F70 00000000 */   nop
/* 110484 80066F74 3C013DCC */  lui        $at, 0x3dcc
/* 110488 80066F78 3421CCCD */  ori        $at, $at, 0xcccd
/* 11048C 80066F7C 44810000 */  mtc1       $at, $f0
/* 110490 80066F80 00000000 */  nop
/* 110494 80066F84 08019BEF */  j          .L80066FBC
/* 110498 80066F88 46001001 */   sub.s     $f0, $f2, $f0
.L80066F8C:
/* 11049C 80066F8C 3C014170 */  lui        $at, 0x4170
/* 1104A0 80066F90 44810000 */  mtc1       $at, $f0
/* 1104A4 80066F94 00000000 */  nop
/* 1104A8 80066F98 4600103C */  c.lt.s     $f2, $f0
/* 1104AC 80066F9C 00000000 */  nop
/* 1104B0 80066FA0 45000007 */  bc1f       .L80066FC0
/* 1104B4 80066FA4 00000000 */   nop
/* 1104B8 80066FA8 3C013DCC */  lui        $at, 0x3dcc
/* 1104BC 80066FAC 3421CCCD */  ori        $at, $at, 0xcccd
/* 1104C0 80066FB0 44810000 */  mtc1       $at, $f0
/* 1104C4 80066FB4 00000000 */  nop
/* 1104C8 80066FB8 46001000 */  add.s      $f0, $f2, $f0
.L80066FBC:
/* 1104CC 80066FBC E4400000 */  swc1       $f0, ($v0)
.L80066FC0:
/* 1104D0 80066FC0 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 1104D4 80066FC4 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 1104D8 80066FC8 30424000 */  andi       $v0, $v0, 0x4000
/* 1104DC 80066FCC 14400003 */  bnez       $v0, .L80066FDC
/* 1104E0 80066FD0 24020001 */   addiu     $v0, $zero, 1
/* 1104E4 80066FD4 08019C04 */  j          .L80067010
/* 1104E8 80066FD8 00001021 */   addu      $v0, $zero, $zero
.L80066FDC:
/* 1104EC 80066FDC 3C048007 */  lui        $a0, %hi(D_8006C370)
/* 1104F0 80066FE0 8C84C370 */  lw         $a0, %lo(D_8006C370)($a0)
/* 1104F4 80066FE4 3C018007 */  lui        $at, %hi(D_800698A0_112DB0)
/* 1104F8 80066FE8 0C029393 */  jal        func_800A4E4C
/* 1104FC 80066FEC A02298A0 */   sb        $v0, %lo(D_800698A0_112DB0)($at)
/* 110500 80066FF0 3C048007 */  lui        $a0, %hi(D_8006C374_BB324)
/* 110504 80066FF4 0C029393 */  jal        func_800A4E4C
/* 110508 80066FF8 8C84C374 */   lw        $a0, %lo(D_8006C374_BB324)($a0)
/* 11050C 80066FFC 0C00D7F4 */  jal        func_80035FD0_DF4E0
/* 110510 80067000 00000000 */   nop
/* 110514 80067004 0C02DB14 */  jal        func_800B6C50
/* 110518 80067008 00002021 */   addu      $a0, $zero, $zero
/* 11051C 8006700C 24020001 */  addiu      $v0, $zero, 1
.L80067010:
/* 110520 80067010 8FBF003C */  lw         $ra, 0x3c($sp)
/* 110524 80067014 8FBE0038 */  lw         $fp, 0x38($sp)
/* 110528 80067018 8FB70034 */  lw         $s7, 0x34($sp)
/* 11052C 8006701C 8FB60030 */  lw         $s6, 0x30($sp)
/* 110530 80067020 8FB5002C */  lw         $s5, 0x2c($sp)
/* 110534 80067024 8FB40028 */  lw         $s4, 0x28($sp)
/* 110538 80067028 8FB30024 */  lw         $s3, 0x24($sp)
/* 11053C 8006702C 8FB20020 */  lw         $s2, 0x20($sp)
/* 110540 80067030 8FB1001C */  lw         $s1, 0x1c($sp)
/* 110544 80067034 8FB00018 */  lw         $s0, 0x18($sp)
/* 110548 80067038 D7BC0060 */  ldc1       $f28, 0x60($sp)
/* 11054C 8006703C D7BA0058 */  ldc1       $f26, 0x58($sp)
/* 110550 80067040 D7B80050 */  ldc1       $f24, 0x50($sp)
/* 110554 80067044 D7B60048 */  ldc1       $f22, 0x48($sp)
/* 110558 80067048 D7B40040 */  ldc1       $f20, 0x40($sp)
/* 11055C 8006704C 03E00008 */  jr         $ra
/* 110560 80067050 27BD0068 */   addiu     $sp, $sp, 0x68
/* 110564 80067054 00000000 */  nop
/* 110568 80067058 00000000 */  nop
/* 11056C 8006705C 00000000 */  nop
