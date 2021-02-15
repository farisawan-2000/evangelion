.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009EC40
/* 9840 8009EC40 27BDFF98 */  addiu      $sp, $sp, -0x68
/* 9844 8009EC44 AFA4001C */  sw         $a0, 0x1c($sp)
/* 9848 8009EC48 3C04007D */  lui        $a0, 0x7d
/* 984C 8009EC4C 24846B00 */  addiu      $a0, $a0, 0x6b00
/* 9850 8009EC50 AFB70054 */  sw         $s7, 0x54($sp)
/* 9854 8009EC54 93B7007B */  lbu        $s7, 0x7b($sp)
/* 9858 8009EC58 00051400 */  sll        $v0, $a1, 0x10
/* 985C 8009EC5C 3C05800E */  lui        $a1, %hi(D_800E7BC0)
/* 9860 8009EC60 24A57BC0 */  addiu      $a1, $a1, %lo(D_800E7BC0)
/* 9864 8009EC64 F7B40060 */  sdc1       $f20, 0x60($sp)
/* 9868 8009EC68 4486A000 */  mtc1       $a2, $f20
/* 986C 8009EC6C 00000000 */  nop
/* 9870 8009EC70 00023403 */  sra        $a2, $v0, 0x10
/* 9874 8009EC74 AFB00038 */  sw         $s0, 0x38($sp)
/* 9878 8009EC78 00008021 */  addu       $s0, $zero, $zero
/* 987C 8009EC7C AFB1003C */  sw         $s1, 0x3c($sp)
/* 9880 8009EC80 00008821 */  addu       $s1, $zero, $zero
/* 9884 8009EC84 AFBF005C */  sw         $ra, 0x5c($sp)
/* 9888 8009EC88 AFBE0058 */  sw         $fp, 0x58($sp)
/* 988C 8009EC8C AFB60050 */  sw         $s6, 0x50($sp)
/* 9890 8009EC90 AFB5004C */  sw         $s5, 0x4c($sp)
/* 9894 8009EC94 AFB40048 */  sw         $s4, 0x48($sp)
/* 9898 8009EC98 AFB30044 */  sw         $s3, 0x44($sp)
/* 989C 8009EC9C AFB20040 */  sw         $s2, 0x40($sp)
/* 98A0 8009ECA0 A3A70027 */  sb         $a3, 0x27($sp)
/* 98A4 8009ECA4 0C02648E */  jal        func_80099238
/* 98A8 8009ECA8 02E03821 */   addu      $a3, $s7, $zero
/* 98AC 8009ECAC 0040A021 */  addu       $s4, $v0, $zero
/* 98B0 8009ECB0 86960000 */  lh         $s6, ($s4)
/* 98B4 8009ECB4 869E0002 */  lh         $fp, 2($s4)
/* 98B8 8009ECB8 1AC0000A */  blez       $s6, .L8009ECE4
/* 98BC 8009ECBC 26920004 */   addiu     $s2, $s4, 4
.L8009ECC0:
/* 98C0 8009ECC0 86430004 */  lh         $v1, 4($s2)
/* 98C4 8009ECC4 86420002 */  lh         $v0, 2($s2)
/* 98C8 8009ECC8 26310001 */  addiu      $s1, $s1, 1
/* 98CC 8009ECCC 00021040 */  sll        $v0, $v0, 1
/* 98D0 8009ECD0 24420008 */  addiu      $v0, $v0, 8
/* 98D4 8009ECD4 02429021 */  addu       $s2, $s2, $v0
/* 98D8 8009ECD8 0236102A */  slt        $v0, $s1, $s6
/* 98DC 8009ECDC 1440FFF8 */  bnez       $v0, .L8009ECC0
/* 98E0 8009ECE0 02038021 */   addu      $s0, $s0, $v1
.L8009ECE4:
/* 98E4 8009ECE4 00162100 */  sll        $a0, $s6, 4
/* 98E8 8009ECE8 00101040 */  sll        $v0, $s0, 1
/* 98EC 8009ECEC 00501021 */  addu       $v0, $v0, $s0
/* 98F0 8009ECF0 00021080 */  sll        $v0, $v0, 2
/* 98F4 8009ECF4 24430038 */  addiu      $v1, $v0, 0x38
/* 98F8 8009ECF8 00832021 */  addu       $a0, $a0, $v1
/* 98FC 8009ECFC 00822021 */  addu       $a0, $a0, $v0
/* 9900 8009ED00 32E300FF */  andi       $v1, $s7, 0xff
/* 9904 8009ED04 24020001 */  addiu      $v0, $zero, 1
/* 9908 8009ED08 1062000F */  beq        $v1, $v0, .L8009ED48
/* 990C 8009ED0C 28620002 */   slti      $v0, $v1, 2
/* 9910 8009ED10 50400005 */  beql       $v0, $zero, .L8009ED28
/* 9914 8009ED14 24020002 */   addiu     $v0, $zero, 2
/* 9918 8009ED18 10600007 */  beqz       $v1, .L8009ED38
/* 991C 8009ED1C 26750038 */   addiu     $s5, $s3, 0x38
/* 9920 8009ED20 08027B5A */  j          .L8009ED68
/* 9924 8009ED24 00000000 */   nop
.L8009ED28:
/* 9928 8009ED28 1062000B */  beq        $v1, $v0, .L8009ED58
/* 992C 8009ED2C 26750038 */   addiu     $s5, $s3, 0x38
/* 9930 8009ED30 08027B5A */  j          .L8009ED68
/* 9934 8009ED34 00000000 */   nop
.L8009ED38:
/* 9938 8009ED38 0C032663 */  jal        func_800C998C
/* 993C 8009ED3C 00000000 */   nop
/* 9940 8009ED40 08027B59 */  j          .L8009ED64
/* 9944 8009ED44 00409821 */   addu      $s3, $v0, $zero
.L8009ED48:
/* 9948 8009ED48 0C025E63 */  jal        func_8009798C
/* 994C 8009ED4C 00000000 */   nop
/* 9950 8009ED50 08027B59 */  j          .L8009ED64
/* 9954 8009ED54 00409821 */   addu      $s3, $v0, $zero
.L8009ED58:
/* 9958 8009ED58 0C026127 */  jal        func_8009849C
/* 995C 8009ED5C 00000000 */   nop
/* 9960 8009ED60 00409821 */  addu       $s3, $v0, $zero
.L8009ED64:
/* 9964 8009ED64 26750038 */  addiu      $s5, $s3, 0x38
.L8009ED68:
/* 9968 8009ED68 AE720008 */  sw         $s2, 8($s3)
/* 996C 8009ED6C 26920004 */  addiu      $s2, $s4, 4
/* 9970 8009ED70 00161100 */  sll        $v0, $s6, 4
/* 9974 8009ED74 A2770000 */  sb         $s7, ($s3)
/* 9978 8009ED78 02A2B821 */  addu       $s7, $s5, $v0
/* 997C 8009ED7C 00101840 */  sll        $v1, $s0, 1
/* 9980 8009ED80 00701821 */  addu       $v1, $v1, $s0
/* 9984 8009ED84 00031040 */  sll        $v0, $v1, 1
/* 9988 8009ED88 24420004 */  addiu      $v0, $v0, 4
/* 998C 8009ED8C 00031880 */  sll        $v1, $v1, 2
/* 9990 8009ED90 A662001C */  sh         $v0, 0x1c($s3)
/* 9994 8009ED94 8664001C */  lh         $a0, 0x1c($s3)
/* 9998 8009ED98 8E650008 */  lw         $a1, 8($s3)
/* 999C 8009ED9C 02E31821 */  addu       $v1, $s7, $v1
/* 99A0 8009EDA0 27C2FFFF */  addiu      $v0, $fp, -1
/* 99A4 8009EDA4 AE740004 */  sw         $s4, 4($s3)
/* 99A8 8009EDA8 AE75000C */  sw         $s5, 0xc($s3)
/* 99AC 8009EDAC AE770010 */  sw         $s7, 0x10($s3)
/* 99B0 8009EDB0 00000000 */  nop
/* 99B4 8009EDB4 00820018 */  mult       $a0, $v0
/* 99B8 8009EDB8 00002012 */  mflo       $a0
/* 99BC 8009EDBC 00000000 */  nop
/* 99C0 8009EDC0 00000000 */  nop
/* 99C4 8009EDC4 AE630014 */  sw         $v1, 0x14($s3)
/* 99C8 8009EDC8 A6760018 */  sh         $s6, 0x18($s3)
/* 99CC 8009EDCC A67E001A */  sh         $fp, 0x1a($s3)
/* 99D0 8009EDD0 A670001E */  sh         $s0, 0x1e($s3)
/* 99D4 8009EDD4 A6600020 */  sh         $zero, 0x20($s3)
/* 99D8 8009EDD8 A6600024 */  sh         $zero, 0x24($s3)
/* 99DC 8009EDDC E6740028 */  swc1       $f20, 0x28($s3)
/* 99E0 8009EDE0 24020001 */  addiu      $v0, $zero, 1
/* 99E4 8009EDE4 A6620022 */  sh         $v0, 0x22($s3)
/* 99E8 8009EDE8 00A42821 */  addu       $a1, $a1, $a0
/* 99EC 8009EDEC 90A20000 */  lbu        $v0, ($a1)
/* 99F0 8009EDF0 0000A021 */  addu       $s4, $zero, $zero
/* 99F4 8009EDF4 00008821 */  addu       $s1, $zero, $zero
/* 99F8 8009EDF8 A260002D */  sb         $zero, 0x2d($s3)
/* 99FC 8009EDFC A260002E */  sb         $zero, 0x2e($s3)
/* 9A00 8009EE00 1AC00026 */  blez       $s6, .L8009EE9C
/* 9A04 8009EE04 A262002C */   sb        $v0, 0x2c($s3)
/* 9A08 8009EE08 93BE0027 */  lbu        $fp, 0x27($sp)
/* 9A0C 8009EE0C 26700044 */  addiu      $s0, $s3, 0x44
.L8009EE10:
/* 9A10 8009EE10 96420002 */  lhu        $v0, 2($s2)
/* 9A14 8009EE14 A6A20000 */  sh         $v0, ($s5)
/* 9A18 8009EE18 96420004 */  lhu        $v0, 4($s2)
/* 9A1C 8009EE1C A602FFF6 */  sh         $v0, -0xa($s0)
/* 9A20 8009EE20 86450000 */  lh         $a1, ($s2)
/* 9A24 8009EE24 8FA4001C */  lw         $a0, 0x1c($sp)
/* 9A28 8009EE28 0C028509 */  jal        func_800A1424
/* 9A2C 8009EE2C 00000000 */   nop
/* 9A30 8009EE30 AE02FFF8 */  sw         $v0, -8($s0)
/* 9A34 8009EE34 00141040 */  sll        $v0, $s4, 1
/* 9A38 8009EE38 00541021 */  addu       $v0, $v0, $s4
/* 9A3C 8009EE3C 00021080 */  sll        $v0, $v0, 2
/* 9A40 8009EE40 02E21021 */  addu       $v0, $s7, $v0
/* 9A44 8009EE44 AE02FFFC */  sw         $v0, -4($s0)
/* 9A48 8009EE48 26420008 */  addiu      $v0, $s2, 8
/* 9A4C 8009EE4C 13C00008 */  beqz       $fp, .L8009EE70
/* 9A50 8009EE50 AE020000 */   sw        $v0, ($s0)
/* 9A54 8009EE54 8FA4001C */  lw         $a0, 0x1c($sp)
/* 9A58 8009EE58 86450000 */  lh         $a1, ($s2)
/* 9A5C 8009EE5C 24060001 */  addiu      $a2, $zero, 1
/* 9A60 8009EE60 00003821 */  addu       $a3, $zero, $zero
/* 9A64 8009EE64 24080001 */  addiu      $t0, $zero, 1
/* 9A68 8009EE68 0C028744 */  jal        func_800A1D10
/* 9A6C 8009EE6C AFA80010 */   sw        $t0, 0x10($sp)
.L8009EE70:
/* 9A70 8009EE70 26100010 */  addiu      $s0, $s0, 0x10
/* 9A74 8009EE74 26B50010 */  addiu      $s5, $s5, 0x10
/* 9A78 8009EE78 86430004 */  lh         $v1, 4($s2)
/* 9A7C 8009EE7C 86420002 */  lh         $v0, 2($s2)
/* 9A80 8009EE80 26310001 */  addiu      $s1, $s1, 1
/* 9A84 8009EE84 00021040 */  sll        $v0, $v0, 1
/* 9A88 8009EE88 24420008 */  addiu      $v0, $v0, 8
/* 9A8C 8009EE8C 02429021 */  addu       $s2, $s2, $v0
/* 9A90 8009EE90 0236102A */  slt        $v0, $s1, $s6
/* 9A94 8009EE94 1440FFDE */  bnez       $v0, .L8009EE10
/* 9A98 8009EE98 0283A021 */   addu      $s4, $s4, $v1
.L8009EE9C:
/* 9A9C 8009EE9C 0C027BE3 */  jal        func_8009EF8C
/* 9AA0 8009EEA0 02602021 */   addu      $a0, $s3, $zero
/* 9AA4 8009EEA4 02601021 */  addu       $v0, $s3, $zero
/* 9AA8 8009EEA8 8FBF005C */  lw         $ra, 0x5c($sp)
/* 9AAC 8009EEAC 8FBE0058 */  lw         $fp, 0x58($sp)
/* 9AB0 8009EEB0 8FB70054 */  lw         $s7, 0x54($sp)
/* 9AB4 8009EEB4 8FB60050 */  lw         $s6, 0x50($sp)
/* 9AB8 8009EEB8 8FB5004C */  lw         $s5, 0x4c($sp)
/* 9ABC 8009EEBC 8FB40048 */  lw         $s4, 0x48($sp)
/* 9AC0 8009EEC0 8FB30044 */  lw         $s3, 0x44($sp)
/* 9AC4 8009EEC4 8FB20040 */  lw         $s2, 0x40($sp)
/* 9AC8 8009EEC8 8FB1003C */  lw         $s1, 0x3c($sp)
/* 9ACC 8009EECC 8FB00038 */  lw         $s0, 0x38($sp)
/* 9AD0 8009EED0 D7B40060 */  ldc1       $f20, 0x60($sp)
/* 9AD4 8009EED4 27BD0068 */  addiu      $sp, $sp, 0x68
/* 9AD8 8009EED8 03E00008 */  jr         $ra
/* 9ADC 8009EEDC 00000000 */   nop
