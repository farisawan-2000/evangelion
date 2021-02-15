.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A1DA4
/* C9A4 800A1DA4 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* C9A8 800A1DA8 AFB20028 */  sw         $s2, 0x28($sp)
/* C9AC 800A1DAC 00809021 */  addu       $s2, $a0, $zero
/* C9B0 800A1DB0 AFBF003C */  sw         $ra, 0x3c($sp)
/* C9B4 800A1DB4 AFB60038 */  sw         $s6, 0x38($sp)
/* C9B8 800A1DB8 AFB50034 */  sw         $s5, 0x34($sp)
/* C9BC 800A1DBC AFB40030 */  sw         $s4, 0x30($sp)
/* C9C0 800A1DC0 AFB3002C */  sw         $s3, 0x2c($sp)
/* C9C4 800A1DC4 AFB10024 */  sw         $s1, 0x24($sp)
/* C9C8 800A1DC8 AFB00020 */  sw         $s0, 0x20($sp)
/* C9CC 800A1DCC 8E420004 */  lw         $v0, 4($s2)
/* C9D0 800A1DD0 00A09821 */  addu       $s3, $a1, $zero
/* C9D4 800A1DD4 8C430008 */  lw         $v1, 8($v0)
/* C9D8 800A1DD8 00008021 */  addu       $s0, $zero, $zero
/* C9DC 800A1DDC 00C0B021 */  addu       $s6, $a2, $zero
/* C9E0 800A1DE0 00438821 */  addu       $s1, $v0, $v1
/* C9E4 800A1DE4 86420064 */  lh         $v0, 0x64($s2)
/* C9E8 800A1DE8 93B50053 */  lbu        $s5, 0x53($sp)
/* C9EC 800A1DEC 1840000C */  blez       $v0, .L800A1E20
/* C9F0 800A1DF0 00E0A021 */   addu      $s4, $a3, $zero
.L800A1DF4:
/* C9F4 800A1DF4 02202021 */  addu       $a0, $s1, $zero
/* C9F8 800A1DF8 0C0325FC */  jal        func_800C97F0
/* C9FC 800A1DFC 02602821 */   addu      $a1, $s3, $zero
/* CA00 800A1E00 54400003 */  bnezl      $v0, .L800A1E10
/* CA04 800A1E04 26100001 */   addiu     $s0, $s0, 1
/* CA08 800A1E08 08028789 */  j          .L800A1E24
/* CA0C 800A1E0C 02001021 */   addu      $v0, $s0, $zero
.L800A1E10:
/* CA10 800A1E10 86420064 */  lh         $v0, 0x64($s2)
/* CA14 800A1E14 0202102A */  slt        $v0, $s0, $v0
/* CA18 800A1E18 1440FFF6 */  bnez       $v0, .L800A1DF4
/* CA1C 800A1E1C 26310014 */   addiu     $s1, $s1, 0x14
.L800A1E20:
/* CA20 800A1E20 00001021 */  addu       $v0, $zero, $zero
.L800A1E24:
/* CA24 800A1E24 8E430008 */  lw         $v1, 8($s2)
/* CA28 800A1E28 00021400 */  sll        $v0, $v0, 0x10
/* CA2C 800A1E2C 00021383 */  sra        $v0, $v0, 0xe
/* CA30 800A1E30 00431021 */  addu       $v0, $v0, $v1
/* CA34 800A1E34 8C420000 */  lw         $v0, ($v0)
/* CA38 800A1E38 8C430010 */  lw         $v1, 0x10($v0)
/* CA3C 800A1E3C 8C42000C */  lw         $v0, 0xc($v0)
/* CA40 800A1E40 00031902 */  srl        $v1, $v1, 4
/* CA44 800A1E44 10600017 */  beqz       $v1, .L800A1EA4
/* CA48 800A1E48 00002821 */   addu      $a1, $zero, $zero
/* CA4C 800A1E4C 32C600FF */  andi       $a2, $s6, 0xff
/* CA50 800A1E50 328700FF */  andi       $a3, $s4, 0xff
/* CA54 800A1E54 32A800FF */  andi       $t0, $s5, 0xff
/* CA58 800A1E58 2444000E */  addiu      $a0, $v0, 0xe
.L800A1E5C:
/* CA5C 800A1E5C 10C00004 */  beqz       $a2, .L800A1E70
/* CA60 800A1E60 00000000 */   nop
/* CA64 800A1E64 9082FFFE */  lbu        $v0, -2($a0)
/* CA68 800A1E68 00021023 */  negu       $v0, $v0
/* CA6C 800A1E6C A082FFFE */  sb         $v0, -2($a0)
.L800A1E70:
/* CA70 800A1E70 10E00004 */  beqz       $a3, .L800A1E84
/* CA74 800A1E74 00000000 */   nop
/* CA78 800A1E78 9082FFFF */  lbu        $v0, -1($a0)
/* CA7C 800A1E7C 00021023 */  negu       $v0, $v0
/* CA80 800A1E80 A082FFFF */  sb         $v0, -1($a0)
.L800A1E84:
/* CA84 800A1E84 11000004 */  beqz       $t0, .L800A1E98
/* CA88 800A1E88 24A50001 */   addiu     $a1, $a1, 1
/* CA8C 800A1E8C 90820000 */  lbu        $v0, ($a0)
/* CA90 800A1E90 00021023 */  negu       $v0, $v0
/* CA94 800A1E94 A0820000 */  sb         $v0, ($a0)
.L800A1E98:
/* CA98 800A1E98 00A3102A */  slt        $v0, $a1, $v1
/* CA9C 800A1E9C 1440FFEF */  bnez       $v0, .L800A1E5C
/* CAA0 800A1EA0 24840010 */   addiu     $a0, $a0, 0x10
.L800A1EA4:
/* CAA4 800A1EA4 8FBF003C */  lw         $ra, 0x3c($sp)
/* CAA8 800A1EA8 8FB60038 */  lw         $s6, 0x38($sp)
/* CAAC 800A1EAC 8FB50034 */  lw         $s5, 0x34($sp)
/* CAB0 800A1EB0 8FB40030 */  lw         $s4, 0x30($sp)
/* CAB4 800A1EB4 8FB3002C */  lw         $s3, 0x2c($sp)
/* CAB8 800A1EB8 8FB20028 */  lw         $s2, 0x28($sp)
/* CABC 800A1EBC 8FB10024 */  lw         $s1, 0x24($sp)
/* CAC0 800A1EC0 8FB00020 */  lw         $s0, 0x20($sp)
/* CAC4 800A1EC4 27BD0040 */  addiu      $sp, $sp, 0x40
/* CAC8 800A1EC8 03E00008 */  jr         $ra
/* CACC 800A1ECC 00000000 */   nop
