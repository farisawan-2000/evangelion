glabel func_800C3C80
/* 2E880 800C3C80 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 2E884 800C3C84 AFB30044 */  sw         $s3, 0x44($sp)
/* 2E888 800C3C88 8FB30070 */  lw         $s3, 0x70($sp)
/* 2E88C 800C3C8C AFB00038 */  sw         $s0, 0x38($sp)
/* 2E890 800C3C90 00808021 */  addu       $s0, $a0, $zero
/* 2E894 800C3C94 AFBE0058 */  sw         $fp, 0x58($sp)
/* 2E898 800C3C98 00C0F021 */  addu       $fp, $a2, $zero
/* 2E89C 800C3C9C AFB20040 */  sw         $s2, 0x40($sp)
/* 2E8A0 800C3CA0 00E09021 */  addu       $s2, $a3, $zero
/* 2E8A4 800C3CA4 AFBF005C */  sw         $ra, 0x5C($sp)
/* 2E8A8 800C3CA8 AFB70054 */  sw         $s7, 0x54($sp)
/* 2E8AC 800C3CAC AFB60050 */  sw         $s6, 0x50($sp)
/* 2E8B0 800C3CB0 AFB5004C */  sw         $s5, 0x4C($sp)
/* 2E8B4 800C3CB4 AFB40048 */  sw         $s4, 0x48($sp)
/* 2E8B8 800C3CB8 AFB1003C */  sw         $s1, 0x3C($sp)
/* 2E8BC 800C3CBC 8E020000 */  lw         $v0, 0x0($s0)
/* 2E8C0 800C3CC0 8FB40074 */  lw         $s4, 0x74($sp)
/* 2E8C4 800C3CC4 30420001 */  andi       $v0, $v0, 0x1
/* 2E8C8 800C3CC8 1040004E */  beqz       $v0, .L800C3E04
/* 2E8CC 800C3CCC 00A0B821 */   addu      $s7, $a1, $zero
/* 2E8D0 800C3CD0 0C031325 */  jal        func_800C4C94
/* 2E8D4 800C3CD4 02002021 */   addu      $a0, $s0, $zero
/* 2E8D8 800C3CD8 00403821 */  addu       $a3, $v0, $zero
/* 2E8DC 800C3CDC 14E0004A */  bnez       $a3, .L800C3E08
/* 2E8E0 800C3CE0 00000000 */   nop
/* 2E8E4 800C3CE4 8E020050 */  lw         $v0, 0x50($s0)
/* 2E8E8 800C3CE8 18400044 */  blez       $v0, .L800C3DFC
/* 2E8EC 800C3CEC 00008821 */   addu      $s1, $zero, $zero
/* 2E8F0 800C3CF0 27B60020 */  addiu      $s6, $sp, 0x20
/* 2E8F4 800C3CF4 27B5001C */  addiu      $s5, $sp, 0x1C
.L800C3CF8:
/* 2E8F8 800C3CF8 8E06005C */  lw         $a2, 0x5C($s0)
/* 2E8FC 800C3CFC 8E040004 */  lw         $a0, 0x4($s0)
/* 2E900 800C3D00 8E050008 */  lw         $a1, 0x8($s0)
/* 2E904 800C3D04 27A70010 */  addiu      $a3, $sp, 0x10
/* 2E908 800C3D08 00D13021 */  addu       $a2, $a2, $s1
/* 2E90C 800C3D0C 0C031424 */  jal        func_800C5090
/* 2E910 800C3D10 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* 2E914 800C3D14 00403821 */  addu       $a3, $v0, $zero
/* 2E918 800C3D18 14E0003B */  bnez       $a3, .L800C3E08
/* 2E91C 800C3D1C 00E01021 */   addu      $v0, $a3, $zero
/* 2E920 800C3D20 8E040004 */  lw         $a0, 0x4($s0)
/* 2E924 800C3D24 0C0310E0 */  jal        func_800C4380
/* 2E928 800C3D28 8E050008 */   lw        $a1, 0x8($s0)
/* 2E92C 800C3D2C 00403821 */  addu       $a3, $v0, $zero
/* 2E930 800C3D30 14E00027 */  bnez       $a3, .L800C3DD0
/* 2E934 800C3D34 32E2FFFF */   andi      $v0, $s7, 0xFFFF
/* 2E938 800C3D38 97A30014 */  lhu        $v1, 0x14($sp)
/* 2E93C 800C3D3C 1462002A */  bne        $v1, $v0, .L800C3DE8
/* 2E940 800C3D40 00000000 */   nop
/* 2E944 800C3D44 8FA20010 */  lw         $v0, 0x10($sp)
/* 2E948 800C3D48 145E0027 */  bne        $v0, $fp, .L800C3DE8
/* 2E94C 800C3D4C 00000000 */   nop
/* 2E950 800C3D50 1240000C */  beqz       $s2, .L800C3D84
/* 2E954 800C3D54 00004021 */   addu      $t0, $zero, $zero
/* 2E958 800C3D58 00002021 */  addu       $a0, $zero, $zero
/* 2E95C 800C3D5C 02403021 */  addu       $a2, $s2, $zero
/* 2E960 800C3D60 02C02821 */  addu       $a1, $s6, $zero
.L800C3D64:
/* 2E964 800C3D64 90A30000 */  lbu        $v1, 0x0($a1)
/* 2E968 800C3D68 90C20000 */  lbu        $v0, 0x0($a2)
/* 2E96C 800C3D6C 1462001C */  bne        $v1, $v0, .L800C3DE0
/* 2E970 800C3D70 24C60001 */   addiu     $a2, $a2, 0x1
/* 2E974 800C3D74 24840001 */  addiu      $a0, $a0, 0x1
/* 2E978 800C3D78 28820010 */  slti       $v0, $a0, 0x10
/* 2E97C 800C3D7C 1440FFF9 */  bnez       $v0, .L800C3D64
/* 2E980 800C3D80 24A50001 */   addiu     $a1, $a1, 0x1
.L800C3D84:
/* 2E984 800C3D84 0013102B */  sltu       $v0, $zero, $s3
/* 2E988 800C3D88 2D030001 */  sltiu      $v1, $t0, 0x1
/* 2E98C 800C3D8C 00431024 */  and        $v0, $v0, $v1
/* 2E990 800C3D90 1040000C */  beqz       $v0, .L800C3DC4
/* 2E994 800C3D94 00000000 */   nop
/* 2E998 800C3D98 00002021 */  addu       $a0, $zero, $zero
/* 2E99C 800C3D9C 02603021 */  addu       $a2, $s3, $zero
/* 2E9A0 800C3DA0 02A02821 */  addu       $a1, $s5, $zero
.L800C3DA4:
/* 2E9A4 800C3DA4 90A30000 */  lbu        $v1, 0x0($a1)
/* 2E9A8 800C3DA8 90C20000 */  lbu        $v0, 0x0($a2)
/* 2E9AC 800C3DAC 1462000A */  bne        $v1, $v0, .L800C3DD8
/* 2E9B0 800C3DB0 24C60001 */   addiu     $a2, $a2, 0x1
/* 2E9B4 800C3DB4 24840001 */  addiu      $a0, $a0, 0x1
/* 2E9B8 800C3DB8 28820004 */  slti       $v0, $a0, 0x4
/* 2E9BC 800C3DBC 1440FFF9 */  bnez       $v0, .L800C3DA4
/* 2E9C0 800C3DC0 24A50001 */   addiu     $a1, $a1, 0x1
.L800C3DC4:
/* 2E9C4 800C3DC4 15000008 */  bnez       $t0, .L800C3DE8
/* 2E9C8 800C3DC8 00000000 */   nop
/* 2E9CC 800C3DCC AE910000 */  sw         $s1, 0x0($s4)
.L800C3DD0:
/* 2E9D0 800C3DD0 08030F82 */  j          .L800C3E08
/* 2E9D4 800C3DD4 00E01021 */   addu      $v0, $a3, $zero
.L800C3DD8:
/* 2E9D8 800C3DD8 08030F71 */  j          .L800C3DC4
/* 2E9DC 800C3DDC 24080001 */   addiu     $t0, $zero, 0x1
.L800C3DE0:
/* 2E9E0 800C3DE0 08030F61 */  j          .L800C3D84
/* 2E9E4 800C3DE4 24080001 */   addiu     $t0, $zero, 0x1
.L800C3DE8:
/* 2E9E8 800C3DE8 8E020050 */  lw         $v0, 0x50($s0)
/* 2E9EC 800C3DEC 26310001 */  addiu      $s1, $s1, 0x1
/* 2E9F0 800C3DF0 0222102A */  slt        $v0, $s1, $v0
/* 2E9F4 800C3DF4 1440FFC0 */  bnez       $v0, .L800C3CF8
/* 2E9F8 800C3DF8 00000000 */   nop
.L800C3DFC:
/* 2E9FC 800C3DFC 2402FFFF */  addiu      $v0, $zero, -0x1
/* 2EA00 800C3E00 AE820000 */  sw         $v0, 0x0($s4)
.L800C3E04:
/* 2EA04 800C3E04 24020005 */  addiu      $v0, $zero, 0x5
.L800C3E08:
/* 2EA08 800C3E08 8FBF005C */  lw         $ra, 0x5C($sp)
/* 2EA0C 800C3E0C 8FBE0058 */  lw         $fp, 0x58($sp)
/* 2EA10 800C3E10 8FB70054 */  lw         $s7, 0x54($sp)
/* 2EA14 800C3E14 8FB60050 */  lw         $s6, 0x50($sp)
/* 2EA18 800C3E18 8FB5004C */  lw         $s5, 0x4C($sp)
/* 2EA1C 800C3E1C 8FB40048 */  lw         $s4, 0x48($sp)
/* 2EA20 800C3E20 8FB30044 */  lw         $s3, 0x44($sp)
/* 2EA24 800C3E24 8FB20040 */  lw         $s2, 0x40($sp)
/* 2EA28 800C3E28 8FB1003C */  lw         $s1, 0x3C($sp)
/* 2EA2C 800C3E2C 8FB00038 */  lw         $s0, 0x38($sp)
/* 2EA30 800C3E30 03E00008 */  jr         $ra
/* 2EA34 800C3E34 27BD0060 */   addiu     $sp, $sp, 0x60
/* 2EA38 800C3E38 00000000 */  nop
/* 2EA3C 800C3E3C 00000000 */  nop
.size func_800C3C80, . - func_800C3C80
