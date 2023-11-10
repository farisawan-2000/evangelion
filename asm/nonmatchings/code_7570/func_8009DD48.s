glabel func_8009DD48
/* 8948 8009DD48 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 894C 8009DD4C AFBF005C */  sw         $ra, 0x5C($sp)
/* 8950 8009DD50 AFBE0058 */  sw         $fp, 0x58($sp)
/* 8954 8009DD54 AFB70054 */  sw         $s7, 0x54($sp)
/* 8958 8009DD58 AFB60050 */  sw         $s6, 0x50($sp)
/* 895C 8009DD5C AFB5004C */  sw         $s5, 0x4C($sp)
/* 8960 8009DD60 AFB40048 */  sw         $s4, 0x48($sp)
/* 8964 8009DD64 AFB30044 */  sw         $s3, 0x44($sp)
/* 8968 8009DD68 AFB20040 */  sw         $s2, 0x40($sp)
/* 896C 8009DD6C AFB1003C */  sw         $s1, 0x3C($sp)
/* 8970 8009DD70 AFB00038 */  sw         $s0, 0x38($sp)
/* 8974 8009DD74 8C950004 */  lw         $s5, 0x4($a0)
/* 8978 8009DD78 8C840000 */  lw         $a0, 0x0($a0)
/* 897C 8009DD7C 8EA20000 */  lw         $v0, 0x0($s5)
/* 8980 8009DD80 0000B821 */  addu       $s7, $zero, $zero
/* 8984 8009DD84 2403FFFF */  addiu      $v1, $zero, -0x1
/* 8988 8009DD88 14430003 */  bne        $v0, $v1, .L8009DD98
/* 898C 8009DD8C AFA40024 */   sw        $a0, 0x24($sp)
/* 8990 8009DD90 08027803 */  j          .L8009E00C
/* 8994 8009DD94 2402FFFF */   addiu     $v0, $zero, -0x1
.L8009DD98:
/* 8998 8009DD98 8EA20004 */  lw         $v0, 0x4($s5)
/* 899C 8009DD9C 1043004E */  beq        $v0, $v1, .L8009DED8
/* 89A0 8009DDA0 00000000 */   nop
.L8009DDA4:
/* 89A4 8009DDA4 8EA20000 */  lw         $v0, 0x0($s5)
/* 89A8 8009DDA8 8FA80024 */  lw         $t0, 0x24($sp)
/* 89AC 8009DDAC 000210C0 */  sll        $v0, $v0, 3
/* 89B0 8009DDB0 00481821 */  addu       $v1, $v0, $t0
/* 89B4 8009DDB4 8C640000 */  lw         $a0, 0x0($v1)
/* 89B8 8009DDB8 10800005 */  beqz       $a0, .L8009DDD0
/* 89BC 8009DDBC 24020001 */   addiu     $v0, $zero, 0x1
/* 89C0 8009DDC0 1082003D */  beq        $a0, $v0, .L8009DEB8
/* 89C4 8009DDC4 00000000 */   nop
/* 89C8 8009DDC8 080277B2 */  j          .L8009DEC8
/* 89CC 8009DDCC 26B50004 */   addiu     $s5, $s5, 0x4
.L8009DDD0:
/* 89D0 8009DDD0 8C700004 */  lw         $s0, 0x4($v1)
/* 89D4 8009DDD4 8E1E001C */  lw         $fp, 0x1C($s0)
/* 89D8 8009DDD8 8E060018 */  lw         $a2, 0x18($s0)
/* 89DC 8009DDDC 8E070014 */  lw         $a3, 0x14($s0)
/* 89E0 8009DDE0 8E020000 */  lw         $v0, 0x0($s0)
/* 89E4 8009DDE4 AFA00014 */  sw         $zero, 0x14($sp)
/* 89E8 8009DDE8 AFA20010 */  sw         $v0, 0x10($sp)
/* 89EC 8009DDEC 8E020020 */  lw         $v0, 0x20($s0)
/* 89F0 8009DDF0 AFA20018 */  sw         $v0, 0x18($sp)
/* 89F4 8009DDF4 8E020020 */  lw         $v0, 0x20($s0)
/* 89F8 8009DDF8 8E030014 */  lw         $v1, 0x14($s0)
/* 89FC 8009DDFC 8E040010 */  lw         $a0, 0x10($s0)
/* 8A00 8009DE00 00431021 */  addu       $v0, $v0, $v1
/* 8A04 8009DE04 0044102A */  slt        $v0, $v0, $a0
/* 8A08 8009DE08 AFA2001C */  sw         $v0, 0x1C($sp)
/* 8A0C 8009DE0C 8E040004 */  lw         $a0, 0x4($s0)
/* 8A10 8009DE10 8E050008 */  lw         $a1, 0x8($s0)
/* 8A14 8009DE14 24C60002 */  addiu      $a2, $a2, 0x2
/* 8A18 8009DE18 0C027667 */  jal        func_8009D99C
/* 8A1C 8009DE1C 24E70002 */   addiu     $a3, $a3, 0x2
/* 8A20 8009DE20 8E110020 */  lw         $s1, 0x20($s0)
/* 8A24 8009DE24 8E030008 */  lw         $v1, 0x8($s0)
/* 8A28 8009DE28 8E040004 */  lw         $a0, 0x4($s0)
/* 8A2C 8009DE2C 8E020014 */  lw         $v0, 0x14($s0)
/* 8A30 8009DE30 24730001 */  addiu      $s3, $v1, 0x1
/* 8A34 8009DE34 02221021 */  addu       $v0, $s1, $v0
/* 8A38 8009DE38 0222102A */  slt        $v0, $s1, $v0
/* 8A3C 8009DE3C 10400021 */  beqz       $v0, .L8009DEC4
/* 8A40 8009DE40 24960001 */   addiu     $s6, $a0, 0x1
/* 8A44 8009DE44 00111040 */  sll        $v0, $s1, 1
/* 8A48 8009DE48 00511021 */  addu       $v0, $v0, $s1
/* 8A4C 8009DE4C 00029080 */  sll        $s2, $v0, 2
.L8009DE50:
/* 8A50 8009DE50 8E02000C */  lw         $v0, 0xC($s0)
/* 8A54 8009DE54 17D10004 */  bne        $fp, $s1, .L8009DE68
/* 8A58 8009DE58 0052A021 */   addu      $s4, $v0, $s2
/* 8A5C 8009DE5C 00002021 */  addu       $a0, $zero, $zero
/* 8A60 8009DE60 0802779C */  j          .L8009DE70
/* 8A64 8009DE64 24050004 */   addiu     $a1, $zero, 0x4
.L8009DE68:
/* 8A68 8009DE68 00002021 */  addu       $a0, $zero, $zero
/* 8A6C 8009DE6C 24050007 */  addiu      $a1, $zero, 0x7
.L8009DE70:
/* 8A70 8009DE70 0C02DAC0 */  jal        func_800B6B00
/* 8A74 8009DE74 2652000C */   addiu     $s2, $s2, 0xC
/* 8A78 8009DE78 00002021 */  addu       $a0, $zero, $zero
/* 8A7C 8009DE7C 02C02821 */  addu       $a1, $s6, $zero
/* 8A80 8009DE80 0C02DAE0 */  jal        func_800B6B80
/* 8A84 8009DE84 02603021 */   addu      $a2, $s3, $zero
/* 8A88 8009DE88 8E850000 */  lw         $a1, 0x0($s4)
/* 8A8C 8009DE8C 0C02DA9C */  jal        func_800B6A70
/* 8A90 8009DE90 00002021 */   addu      $a0, $zero, $zero
/* 8A94 8009DE94 8E020020 */  lw         $v0, 0x20($s0)
/* 8A98 8009DE98 8E030014 */  lw         $v1, 0x14($s0)
/* 8A9C 8009DE9C 26310001 */  addiu      $s1, $s1, 0x1
/* 8AA0 8009DEA0 00431021 */  addu       $v0, $v0, $v1
/* 8AA4 8009DEA4 0222102A */  slt        $v0, $s1, $v0
/* 8AA8 8009DEA8 1440FFE9 */  bnez       $v0, .L8009DE50
/* 8AAC 8009DEAC 26730001 */   addiu     $s3, $s3, 0x1
/* 8AB0 8009DEB0 080277B2 */  j          .L8009DEC8
/* 8AB4 8009DEB4 26B50004 */   addiu     $s5, $s5, 0x4
.L8009DEB8:
/* 8AB8 8009DEB8 8C640004 */  lw         $a0, 0x4($v1)
/* 8ABC 8009DEBC 0C0275CB */  jal        func_8009D72C
/* 8AC0 8009DEC0 00002821 */   addu      $a1, $zero, $zero
.L8009DEC4:
/* 8AC4 8009DEC4 26B50004 */  addiu      $s5, $s5, 0x4
.L8009DEC8:
/* 8AC8 8009DEC8 8EA30004 */  lw         $v1, 0x4($s5)
/* 8ACC 8009DECC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 8AD0 8009DED0 1462FFB4 */  bne        $v1, $v0, .L8009DDA4
/* 8AD4 8009DED4 00000000 */   nop
.L8009DED8:
/* 8AD8 8009DED8 8EB00000 */  lw         $s0, 0x0($s5)
/* 8ADC 8009DEDC 8FA80024 */  lw         $t0, 0x24($sp)
/* 8AE0 8009DEE0 001010C0 */  sll        $v0, $s0, 3
/* 8AE4 8009DEE4 00481821 */  addu       $v1, $v0, $t0
/* 8AE8 8009DEE8 8C640000 */  lw         $a0, 0x0($v1)
/* 8AEC 8009DEEC 10800005 */  beqz       $a0, .L8009DF04
/* 8AF0 8009DEF0 24020001 */   addiu     $v0, $zero, 0x1
/* 8AF4 8009DEF4 10820008 */  beq        $a0, $v0, .L8009DF18
/* 8AF8 8009DEF8 2402FFFF */   addiu     $v0, $zero, -0x1
/* 8AFC 8009DEFC 080277CB */  j          .L8009DF2C
/* 8B00 8009DF00 00000000 */   nop
.L8009DF04:
/* 8B04 8009DF04 8C640004 */  lw         $a0, 0x4($v1)
/* 8B08 8009DF08 0C027448 */  jal        func_8009D120
/* 8B0C 8009DF0C 00000000 */   nop
/* 8B10 8009DF10 080277CA */  j          .L8009DF28
/* 8B14 8009DF14 0040B821 */   addu      $s7, $v0, $zero
.L8009DF18:
/* 8B18 8009DF18 8C640004 */  lw         $a0, 0x4($v1)
/* 8B1C 8009DF1C 0C027515 */  jal        func_8009D454
/* 8B20 8009DF20 00000000 */   nop
/* 8B24 8009DF24 0040B821 */  addu       $s7, $v0, $zero
.L8009DF28:
/* 8B28 8009DF28 2402FFFF */  addiu      $v0, $zero, -0x1
.L8009DF2C:
/* 8B2C 8009DF2C 52E20005 */  beql       $s7, $v0, .L8009DF44
/* 8B30 8009DF30 AEB70000 */   sw        $s7, 0x0($s5)
/* 8B34 8009DF34 16E00007 */  bnez       $s7, .L8009DF54
/* 8B38 8009DF38 26B50004 */   addiu     $s5, $s5, 0x4
/* 8B3C 8009DF3C 08027803 */  j          .L8009E00C
/* 8B40 8009DF40 02001021 */   addu      $v0, $s0, $zero
.L8009DF44:
/* 8B44 8009DF44 0C02DB14 */  jal        func_800B6C50
/* 8B48 8009DF48 00002021 */   addu      $a0, $zero, $zero
/* 8B4C 8009DF4C 08027803 */  j          .L8009E00C
/* 8B50 8009DF50 02001021 */   addu      $v0, $s0, $zero
.L8009DF54:
/* 8B54 8009DF54 8EA2FFFC */  lw         $v0, -0x4($s5)
/* 8B58 8009DF58 AEB70000 */  sw         $s7, 0x0($s5)
/* 8B5C 8009DF5C 8FA80024 */  lw         $t0, 0x24($sp)
/* 8B60 8009DF60 000210C0 */  sll        $v0, $v0, 3
/* 8B64 8009DF64 00481821 */  addu       $v1, $v0, $t0
/* 8B68 8009DF68 8C640000 */  lw         $a0, 0x0($v1)
/* 8B6C 8009DF6C 001710C0 */  sll        $v0, $s7, 3
/* 8B70 8009DF70 10800006 */  beqz       $a0, .L8009DF8C
/* 8B74 8009DF74 00483821 */   addu      $a3, $v0, $t0
/* 8B78 8009DF78 24020001 */  addiu      $v0, $zero, 0x1
/* 8B7C 8009DF7C 1082000B */  beq        $a0, $v0, .L8009DFAC
/* 8B80 8009DF80 00000000 */   nop
/* 8B84 8009DF84 080277F6 */  j          .L8009DFD8
/* 8B88 8009DF88 00000000 */   nop
.L8009DF8C:
/* 8B8C 8009DF8C 8C640004 */  lw         $a0, 0x4($v1)
/* 8B90 8009DF90 8C860004 */  lw         $a2, 0x4($a0)
/* 8B94 8009DF94 8C850018 */  lw         $a1, 0x18($a0)
/* 8B98 8009DF98 8C820008 */  lw         $v0, 0x8($a0)
/* 8B9C 8009DF9C 8C83001C */  lw         $v1, 0x1C($a0)
/* 8BA0 8009DFA0 8C840020 */  lw         $a0, 0x20($a0)
/* 8BA4 8009DFA4 080277F2 */  j          .L8009DFC8
/* 8BA8 8009DFA8 00C53021 */   addu      $a2, $a2, $a1
.L8009DFAC:
/* 8BAC 8009DFAC 8C640004 */  lw         $a0, 0x4($v1)
/* 8BB0 8009DFB0 8C860004 */  lw         $a2, 0x4($a0)
/* 8BB4 8009DFB4 8C850018 */  lw         $a1, 0x18($a0)
/* 8BB8 8009DFB8 8C820008 */  lw         $v0, 0x8($a0)
/* 8BBC 8009DFBC 8C830020 */  lw         $v1, 0x20($a0)
/* 8BC0 8009DFC0 8C840024 */  lw         $a0, 0x24($a0)
/* 8BC4 8009DFC4 00C53021 */  addu       $a2, $a2, $a1
.L8009DFC8:
/* 8BC8 8009DFC8 00431021 */  addu       $v0, $v0, $v1
/* 8BCC 8009DFCC 00441023 */  subu       $v0, $v0, $a0
/* 8BD0 8009DFD0 AFA6002C */  sw         $a2, 0x2C($sp)
/* 8BD4 8009DFD4 AFA20034 */  sw         $v0, 0x34($sp)
.L8009DFD8:
/* 8BD8 8009DFD8 8CE30000 */  lw         $v1, 0x0($a3)
/* 8BDC 8009DFDC 10600003 */  beqz       $v1, .L8009DFEC
/* 8BE0 8009DFE0 24020001 */   addiu     $v0, $zero, 0x1
/* 8BE4 8009DFE4 14620007 */  bne        $v1, $v0, .L8009E004
/* 8BE8 8009DFE8 2402FFFF */   addiu     $v0, $zero, -0x1
.L8009DFEC:
/* 8BEC 8009DFEC 8CE40004 */  lw         $a0, 0x4($a3)
/* 8BF0 8009DFF0 8FA8002C */  lw         $t0, 0x2C($sp)
/* 8BF4 8009DFF4 AC880004 */  sw         $t0, 0x4($a0)
/* 8BF8 8009DFF8 8FA80034 */  lw         $t0, 0x34($sp)
/* 8BFC 8009DFFC AC880008 */  sw         $t0, 0x8($a0)
/* 8C00 8009E000 2402FFFF */  addiu      $v0, $zero, -0x1
.L8009E004:
/* 8C04 8009E004 AEA20004 */  sw         $v0, 0x4($s5)
/* 8C08 8009E008 02001021 */  addu       $v0, $s0, $zero
.L8009E00C:
/* 8C0C 8009E00C 8FBF005C */  lw         $ra, 0x5C($sp)
/* 8C10 8009E010 8FBE0058 */  lw         $fp, 0x58($sp)
/* 8C14 8009E014 8FB70054 */  lw         $s7, 0x54($sp)
/* 8C18 8009E018 8FB60050 */  lw         $s6, 0x50($sp)
/* 8C1C 8009E01C 8FB5004C */  lw         $s5, 0x4C($sp)
/* 8C20 8009E020 8FB40048 */  lw         $s4, 0x48($sp)
/* 8C24 8009E024 8FB30044 */  lw         $s3, 0x44($sp)
/* 8C28 8009E028 8FB20040 */  lw         $s2, 0x40($sp)
/* 8C2C 8009E02C 8FB1003C */  lw         $s1, 0x3C($sp)
/* 8C30 8009E030 8FB00038 */  lw         $s0, 0x38($sp)
/* 8C34 8009E034 27BD0060 */  addiu      $sp, $sp, 0x60
/* 8C38 8009E038 03E00008 */  jr         $ra
/* 8C3C 8009E03C 00000000 */   nop
.size func_8009DD48, . - func_8009DD48
