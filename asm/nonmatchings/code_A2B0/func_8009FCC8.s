glabel func_8009FCC8
/* A8C8 8009FCC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* A8CC 8009FCCC AFB00010 */  sw         $s0, 0x10($sp)
/* A8D0 8009FCD0 00808021 */  addu       $s0, $a0, $zero
/* A8D4 8009FCD4 AFBF0018 */  sw         $ra, 0x18($sp)
/* A8D8 8009FCD8 0C0284DC */  jal        func_800A1370
/* A8DC 8009FCDC AFB10014 */   sw        $s1, 0x14($sp)
/* A8E0 8009FCE0 8E030008 */  lw         $v1, 0x8($s0)
/* A8E4 8009FCE4 00021400 */  sll        $v0, $v0, 16
/* A8E8 8009FCE8 00021383 */  sra        $v0, $v0, 14
/* A8EC 8009FCEC 00431021 */  addu       $v0, $v0, $v1
/* A8F0 8009FCF0 8C510000 */  lw         $s1, 0x0($v0)
/* A8F4 8009FCF4 8E2300A0 */  lw         $v1, 0xA0($s1)
/* A8F8 8009FCF8 10600019 */  beqz       $v1, .L8009FD60
/* A8FC 8009FCFC 24020001 */   addiu     $v0, $zero, 0x1
/* A900 8009FD00 92040000 */  lbu        $a0, 0x0($s0)
/* A904 8009FD04 1082000F */  beq        $a0, $v0, .L8009FD44
/* A908 8009FD08 28820002 */   slti      $v0, $a0, 0x2
/* A90C 8009FD0C 50400005 */  beql       $v0, $zero, .L8009FD24
/* A910 8009FD10 24020002 */   addiu     $v0, $zero, 0x2
/* A914 8009FD14 10800007 */  beqz       $a0, .L8009FD34
/* A918 8009FD18 00000000 */   nop
/* A91C 8009FD1C 08027F58 */  j          .L8009FD60
/* A920 8009FD20 AE2000A0 */   sw        $zero, 0xA0($s1)
.L8009FD24:
/* A924 8009FD24 1082000B */  beq        $a0, $v0, .L8009FD54
/* A928 8009FD28 00000000 */   nop
/* A92C 8009FD2C 08027F58 */  j          .L8009FD60
/* A930 8009FD30 AE2000A0 */   sw        $zero, 0xA0($s1)
.L8009FD34:
/* A934 8009FD34 0C0326A1 */  jal        func_800C9A84
/* A938 8009FD38 00602021 */   addu      $a0, $v1, $zero
/* A93C 8009FD3C 08027F58 */  j          .L8009FD60
/* A940 8009FD40 AE2000A0 */   sw        $zero, 0xA0($s1)
.L8009FD44:
/* A944 8009FD44 0C025EC3 */  jal        func_80097B0C
/* A948 8009FD48 00602021 */   addu      $a0, $v1, $zero
/* A94C 8009FD4C 08027F58 */  j          .L8009FD60
/* A950 8009FD50 AE2000A0 */   sw        $zero, 0xA0($s1)
.L8009FD54:
/* A954 8009FD54 0C026187 */  jal        func_8009861C
/* A958 8009FD58 00602021 */   addu      $a0, $v1, $zero
/* A95C 8009FD5C AE2000A0 */  sw         $zero, 0xA0($s1)
.L8009FD60:
/* A960 8009FD60 8FBF0018 */  lw         $ra, 0x18($sp)
/* A964 8009FD64 8FB10014 */  lw         $s1, 0x14($sp)
/* A968 8009FD68 8FB00010 */  lw         $s0, 0x10($sp)
/* A96C 8009FD6C 27BD0020 */  addiu      $sp, $sp, 0x20
/* A970 8009FD70 03E00008 */  jr         $ra
/* A974 8009FD74 00000000 */   nop
.size func_8009FCC8, . - func_8009FCC8
