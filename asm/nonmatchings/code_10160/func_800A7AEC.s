glabel func_800A7AEC
/* 126EC 800A7AEC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 126F0 800A7AF0 97A2005A */  lhu        $v0, 0x5A($sp)
/* 126F4 800A7AF4 AFB60038 */  sw         $s6, 0x38($sp)
/* 126F8 800A7AF8 93B6005F */  lbu        $s6, 0x5F($sp)
/* 126FC 800A7AFC AFB3002C */  sw         $s3, 0x2C($sp)
/* 12700 800A7B00 00C09821 */  addu       $s3, $a2, $zero
/* 12704 800A7B04 AFB40030 */  sw         $s4, 0x30($sp)
/* 12708 800A7B08 0260A021 */  addu       $s4, $s3, $zero
/* 1270C 800A7B0C AFA40014 */  sw         $a0, 0x14($sp)
/* 12710 800A7B10 3C04001C */  lui        $a0, %hi(D_1BB280)
/* 12714 800A7B14 2484B280 */  addiu      $a0, $a0, %lo(D_1BB280)
/* 12718 800A7B18 AFB50034 */  sw         $s5, 0x34($sp)
/* 1271C 800A7B1C 00A0A821 */  addu       $s5, $a1, $zero
/* 12720 800A7B20 AFB7003C */  sw         $s7, 0x3C($sp)
/* 12724 800A7B24 00E0B821 */  addu       $s7, $a3, $zero
/* 12728 800A7B28 AFBE0040 */  sw         $fp, 0x40($sp)
/* 1272C 800A7B2C 93BE0063 */  lbu        $fp, 0x63($sp)
/* 12730 800A7B30 3C05800D */  lui        $a1, %hi(D_800D5190)
/* 12734 800A7B34 24A55190 */  addiu      $a1, $a1, %lo(D_800D5190)
/* 12738 800A7B38 00003821 */  addu       $a3, $zero, $zero
/* 1273C 800A7B3C AFBF0044 */  sw         $ra, 0x44($sp)
/* 12740 800A7B40 AFB20028 */  sw         $s2, 0x28($sp)
/* 12744 800A7B44 AFB10024 */  sw         $s1, 0x24($sp)
/* 12748 800A7B48 AFB00020 */  sw         $s0, 0x20($sp)
/* 1274C 800A7B4C 2450FFF0 */  addiu      $s0, $v0, -0x10
/* 12750 800A7B50 0C02648E */  jal        func_80099238
/* 12754 800A7B54 02003021 */   addu      $a2, $s0, $zero
/* 12758 800A7B58 00402021 */  addu       $a0, $v0, $zero
/* 1275C 800A7B5C 33C300FF */  andi       $v1, $fp, 0xFF
/* 12760 800A7B60 24020001 */  addiu      $v0, $zero, 0x1
/* 12764 800A7B64 1062000E */  beq        $v1, $v0, .L800A7BA0
/* 12768 800A7B68 00806821 */   addu      $t5, $a0, $zero
/* 1276C 800A7B6C 28620002 */  slti       $v0, $v1, 0x2
/* 12770 800A7B70 50400005 */  beql       $v0, $zero, .L800A7B88
/* 12774 800A7B74 28620005 */   slti      $v0, $v1, 0x5
/* 12778 800A7B78 50600007 */  beql       $v1, $zero, .L800A7B98
/* 1277C 800A7B7C 24110018 */   addiu     $s1, $zero, 0x18
/* 12780 800A7B80 08029EFA */  j          .L800A7BE8
/* 12784 800A7B84 00007021 */   addu      $t6, $zero, $zero
.L800A7B88:
/* 12788 800A7B88 10400017 */  beqz       $v0, .L800A7BE8
/* 1278C 800A7B8C 00007021 */   addu      $t6, $zero, $zero
/* 12790 800A7B90 08029EF4 */  j          .L800A7BD0
/* 12794 800A7B94 00000000 */   nop
.L800A7B98:
/* 12798 800A7B98 08029EF9 */  j          .L800A7BE4
/* 1279C 800A7B9C 2412000C */   addiu     $s2, $zero, 0xC
.L800A7BA0:
/* 127A0 800A7BA0 3C11800D */  lui        $s1, %hi(gEncodingTable)
/* 127A4 800A7BA4 02308821 */  addu       $s1, $s1, $s0
/* 127A8 800A7BA8 92313EB0 */  lbu        $s1, %lo(gEncodingTable)($s1)
/* 127AC 800A7BAC 00111042 */  srl        $v0, $s1, 1
/* 127B0 800A7BB0 02229023 */  subu       $s2, $s1, $v0
/* 127B4 800A7BB4 24020018 */  addiu      $v0, $zero, 0x18
/* 127B8 800A7BB8 00511023 */  subu       $v0, $v0, $s1
/* 127BC 800A7BBC 00021FC2 */  srl        $v1, $v0, 31
/* 127C0 800A7BC0 00431021 */  addu       $v0, $v0, $v1
/* 127C4 800A7BC4 00021043 */  sra        $v0, $v0, 1
/* 127C8 800A7BC8 08029EF9 */  j          .L800A7BE4
/* 127CC 800A7BCC 0262A021 */   addu      $s4, $s3, $v0
.L800A7BD0:
/* 127D0 800A7BD0 3C11800D */  lui        $s1, %hi(gEncodingTable)
/* 127D4 800A7BD4 02308821 */  addu       $s1, $s1, $s0
/* 127D8 800A7BD8 92313EB0 */  lbu        $s1, %lo(gEncodingTable)($s1)
/* 127DC 800A7BDC 00111042 */  srl        $v0, $s1, 1
/* 127E0 800A7BE0 02229023 */  subu       $s2, $s1, $v0
.L800A7BE4:
/* 127E4 800A7BE4 00007021 */  addu       $t6, $zero, $zero
.L800A7BE8:
/* 127E8 800A7BE8 32A5FFFF */  andi       $a1, $s5, 0xFFFF
/* 127EC 800A7BEC 3282FFFF */  andi       $v0, $s4, 0xFFFF
/* 127F0 800A7BF0 00029842 */  srl        $s3, $v0, 1
/* 127F4 800A7BF4 30500001 */  andi       $s0, $v0, 0x1
/* 127F8 800A7BF8 240FFFF0 */  addiu      $t7, $zero, -0x10
/* 127FC 800A7BFC 32E2FFFF */  andi       $v0, $s7, 0xFFFF
.L800A7C00:
/* 12800 800A7C00 004E1021 */  addu       $v0, $v0, $t6
/* 12804 800A7C04 00A20018 */  mult       $a1, $v0
/* 12808 800A7C08 00001012 */  mflo       $v0
/* 1280C 800A7C0C 00000000 */  nop
/* 12810 800A7C10 00000000 */  nop
/* 12814 800A7C14 8FB80014 */  lw         $t8, 0x14($sp)
/* 12818 800A7C18 3203FFFF */  andi       $v1, $s0, 0xFFFF
/* 1281C 800A7C1C 00006021 */  addu       $t4, $zero, $zero
/* 12820 800A7C20 03021021 */  addu       $v0, $t8, $v0
/* 12824 800A7C24 1A400072 */  blez       $s2, .L800A7DF0
/* 12828 800A7C28 00533021 */   addu      $a2, $v0, $s3
/* 1282C 800A7C2C 240B0002 */  addiu      $t3, $zero, 0x2
.L800A7C30:
/* 12830 800A7C30 91A20000 */  lbu        $v0, 0x0($t5)
/* 12834 800A7C34 25AD0001 */  addiu      $t5, $t5, 0x1
/* 12838 800A7C38 304A000F */  andi       $t2, $v0, 0xF
/* 1283C 800A7C3C 00024102 */  srl        $t0, $v0, 4
/* 12840 800A7C40 12C00038 */  beqz       $s6, .L800A7D24
/* 12844 800A7C44 01004821 */   addu      $t1, $t0, $zero
/* 12848 800A7C48 14600011 */  bnez       $v1, .L800A7C90
/* 1284C 800A7C4C 00000000 */   nop
/* 12850 800A7C50 90C70000 */  lbu        $a3, 0x0($a2)
/* 12854 800A7C54 30E200F0 */  andi       $v0, $a3, 0xF0
/* 12858 800A7C58 2C430001 */  sltiu      $v1, $v0, 0x1
/* 1285C 800A7C5C 38420010 */  xori       $v0, $v0, 0x10
/* 12860 800A7C60 2C420001 */  sltiu      $v0, $v0, 0x1
/* 12864 800A7C64 00621825 */  or         $v1, $v1, $v0
/* 12868 800A7C68 50600014 */  beql       $v1, $zero, .L800A7CBC
/* 1286C 800A7C6C 24030001 */   addiu     $v1, $zero, 0x1
/* 12870 800A7C70 11200005 */  beqz       $t1, .L800A7C88
/* 12874 800A7C74 30E3000F */   andi      $v1, $a3, 0xF
/* 12878 800A7C78 00081100 */  sll        $v0, $t0, 4
/* 1287C 800A7C7C 004F1024 */  and        $v0, $v0, $t7
/* 12880 800A7C80 00621825 */  or         $v1, $v1, $v0
/* 12884 800A7C84 A0C30000 */  sb         $v1, 0x0($a2)
.L800A7C88:
/* 12888 800A7C88 08029F2F */  j          .L800A7CBC
/* 1288C 800A7C8C 24030001 */   addiu     $v1, $zero, 0x1
.L800A7C90:
/* 12890 800A7C90 90C30000 */  lbu        $v1, 0x0($a2)
/* 12894 800A7C94 3062000F */  andi       $v0, $v1, 0xF
/* 12898 800A7C98 2C420002 */  sltiu      $v0, $v0, 0x2
/* 1289C 800A7C9C 50400006 */  beql       $v0, $zero, .L800A7CB8
/* 128A0 800A7CA0 00001821 */   addu      $v1, $zero, $zero
/* 128A4 800A7CA4 11200003 */  beqz       $t1, .L800A7CB4
/* 128A8 800A7CA8 306200F0 */   andi      $v0, $v1, 0xF0
/* 128AC 800A7CAC 00481025 */  or         $v0, $v0, $t0
/* 128B0 800A7CB0 A0C20000 */  sb         $v0, 0x0($a2)
.L800A7CB4:
/* 128B4 800A7CB4 00001821 */  addu       $v1, $zero, $zero
.L800A7CB8:
/* 128B8 800A7CB8 24C60001 */  addiu      $a2, $a2, 0x1
.L800A7CBC:
/* 128BC 800A7CBC 022B102A */  slt        $v0, $s1, $t3
/* 128C0 800A7CC0 5440004C */  bnel       $v0, $zero, .L800A7DF4
/* 128C4 800A7CC4 25A2000C */   addiu     $v0, $t5, 0xC
/* 128C8 800A7CC8 1460000D */  bnez       $v1, .L800A7D00
/* 128CC 800A7CCC 00000000 */   nop
/* 128D0 800A7CD0 90C70000 */  lbu        $a3, 0x0($a2)
/* 128D4 800A7CD4 30E200F0 */  andi       $v0, $a3, 0xF0
/* 128D8 800A7CD8 2C430001 */  sltiu      $v1, $v0, 0x1
/* 128DC 800A7CDC 38420010 */  xori       $v0, $v0, 0x10
/* 128E0 800A7CE0 2C420001 */  sltiu      $v0, $v0, 0x1
/* 128E4 800A7CE4 00621825 */  or         $v1, $v1, $v0
/* 128E8 800A7CE8 5060003D */  beql       $v1, $zero, .L800A7DE0
/* 128EC 800A7CEC 24030001 */   addiu     $v1, $zero, 0x1
/* 128F0 800A7CF0 11400030 */  beqz       $t2, .L800A7DB4
/* 128F4 800A7CF4 30E3000F */   andi      $v1, $a3, 0xF
/* 128F8 800A7CF8 08029F6A */  j          .L800A7DA8
/* 128FC 800A7CFC 000A1100 */   sll       $v0, $t2, 4
.L800A7D00:
/* 12900 800A7D00 90C30000 */  lbu        $v1, 0x0($a2)
/* 12904 800A7D04 3062000F */  andi       $v0, $v1, 0xF
/* 12908 800A7D08 2C420002 */  sltiu      $v0, $v0, 0x2
/* 1290C 800A7D0C 50400033 */  beql       $v0, $zero, .L800A7DDC
/* 12910 800A7D10 00001821 */   addu      $v1, $zero, $zero
/* 12914 800A7D14 51400031 */  beql       $t2, $zero, .L800A7DDC
/* 12918 800A7D18 00001821 */   addu      $v1, $zero, $zero
/* 1291C 800A7D1C 08029F74 */  j          .L800A7DD0
/* 12920 800A7D20 306200F0 */   andi      $v0, $v1, 0xF0
.L800A7D24:
/* 12924 800A7D24 1460000C */  bnez       $v1, .L800A7D58
/* 12928 800A7D28 00000000 */   nop
/* 1292C 800A7D2C 90C30000 */  lbu        $v1, 0x0($a2)
/* 12930 800A7D30 306200F0 */  andi       $v0, $v1, 0xF0
/* 12934 800A7D34 54400011 */  bnel       $v0, $zero, .L800A7D7C
/* 12938 800A7D38 24030001 */   addiu     $v1, $zero, 0x1
/* 1293C 800A7D3C 3063000F */  andi       $v1, $v1, 0xF
/* 12940 800A7D40 00081100 */  sll        $v0, $t0, 4
/* 12944 800A7D44 004F1024 */  and        $v0, $v0, $t7
/* 12948 800A7D48 00621825 */  or         $v1, $v1, $v0
/* 1294C 800A7D4C A0C30000 */  sb         $v1, 0x0($a2)
/* 12950 800A7D50 08029F5F */  j          .L800A7D7C
/* 12954 800A7D54 24030001 */   addiu     $v1, $zero, 0x1
.L800A7D58:
/* 12958 800A7D58 90C30000 */  lbu        $v1, 0x0($a2)
/* 1295C 800A7D5C 3062000F */  andi       $v0, $v1, 0xF
/* 12960 800A7D60 54400005 */  bnel       $v0, $zero, .L800A7D78
/* 12964 800A7D64 00001821 */   addu      $v1, $zero, $zero
/* 12968 800A7D68 306200F0 */  andi       $v0, $v1, 0xF0
/* 1296C 800A7D6C 00481025 */  or         $v0, $v0, $t0
/* 12970 800A7D70 A0C20000 */  sb         $v0, 0x0($a2)
/* 12974 800A7D74 00001821 */  addu       $v1, $zero, $zero
.L800A7D78:
/* 12978 800A7D78 24C60001 */  addiu      $a2, $a2, 0x1
.L800A7D7C:
/* 1297C 800A7D7C 022B102A */  slt        $v0, $s1, $t3
/* 12980 800A7D80 5440001C */  bnel       $v0, $zero, .L800A7DF4
/* 12984 800A7D84 25A2000C */   addiu     $v0, $t5, 0xC
/* 12988 800A7D88 1460000C */  bnez       $v1, .L800A7DBC
/* 1298C 800A7D8C 00000000 */   nop
/* 12990 800A7D90 90C30000 */  lbu        $v1, 0x0($a2)
/* 12994 800A7D94 306200F0 */  andi       $v0, $v1, 0xF0
/* 12998 800A7D98 54400011 */  bnel       $v0, $zero, .L800A7DE0
/* 1299C 800A7D9C 24030001 */   addiu     $v1, $zero, 0x1
/* 129A0 800A7DA0 3063000F */  andi       $v1, $v1, 0xF
/* 129A4 800A7DA4 000A1100 */  sll        $v0, $t2, 4
.L800A7DA8:
/* 129A8 800A7DA8 004F1024 */  and        $v0, $v0, $t7
/* 129AC 800A7DAC 00621825 */  or         $v1, $v1, $v0
/* 129B0 800A7DB0 A0C30000 */  sb         $v1, 0x0($a2)
.L800A7DB4:
/* 129B4 800A7DB4 08029F78 */  j          .L800A7DE0
/* 129B8 800A7DB8 24030001 */   addiu     $v1, $zero, 0x1
.L800A7DBC:
/* 129BC 800A7DBC 90C30000 */  lbu        $v1, 0x0($a2)
/* 129C0 800A7DC0 3062000F */  andi       $v0, $v1, 0xF
/* 129C4 800A7DC4 54400005 */  bnel       $v0, $zero, .L800A7DDC
/* 129C8 800A7DC8 00001821 */   addu      $v1, $zero, $zero
/* 129CC 800A7DCC 306200F0 */  andi       $v0, $v1, 0xF0
.L800A7DD0:
/* 129D0 800A7DD0 01421025 */  or         $v0, $t2, $v0
/* 129D4 800A7DD4 A0C20000 */  sb         $v0, 0x0($a2)
/* 129D8 800A7DD8 00001821 */  addu       $v1, $zero, $zero
.L800A7DDC:
/* 129DC 800A7DDC 24C60001 */  addiu      $a2, $a2, 0x1
.L800A7DE0:
/* 129E0 800A7DE0 258C0001 */  addiu      $t4, $t4, 0x1
/* 129E4 800A7DE4 0192102A */  slt        $v0, $t4, $s2
/* 129E8 800A7DE8 1440FF91 */  bnez       $v0, .L800A7C30
/* 129EC 800A7DEC 256B0002 */   addiu     $t3, $t3, 0x2
.L800A7DF0:
/* 129F0 800A7DF0 25A2000C */  addiu      $v0, $t5, 0xC
.L800A7DF4:
/* 129F4 800A7DF4 00526823 */  subu       $t5, $v0, $s2
/* 129F8 800A7DF8 25CE0001 */  addiu      $t6, $t6, 0x1
/* 129FC 800A7DFC 29C20018 */  slti       $v0, $t6, 0x18
/* 12A00 800A7E00 1440FF7F */  bnez       $v0, .L800A7C00
/* 12A04 800A7E04 32E2FFFF */   andi      $v0, $s7, 0xFFFF
/* 12A08 800A7E08 0C0326A1 */  jal        func_800C9A84
/* 12A0C 800A7E0C 00000000 */   nop
/* 12A10 800A7E10 33C300FF */  andi       $v1, $fp, 0xFF
/* 12A14 800A7E14 04600006 */  bltz       $v1, .L800A7E30
/* 12A18 800A7E18 28620002 */   slti      $v0, $v1, 0x2
/* 12A1C 800A7E1C 14400005 */  bnez       $v0, .L800A7E34
/* 12A20 800A7E20 24020018 */   addiu     $v0, $zero, 0x18
/* 12A24 800A7E24 28620005 */  slti       $v0, $v1, 0x5
/* 12A28 800A7E28 14400002 */  bnez       $v0, .L800A7E34
/* 12A2C 800A7E2C 02201021 */   addu      $v0, $s1, $zero
.L800A7E30:
/* 12A30 800A7E30 00001021 */  addu       $v0, $zero, $zero
.L800A7E34:
/* 12A34 800A7E34 8FBF0044 */  lw         $ra, 0x44($sp)
/* 12A38 800A7E38 8FBE0040 */  lw         $fp, 0x40($sp)
/* 12A3C 800A7E3C 8FB7003C */  lw         $s7, 0x3C($sp)
/* 12A40 800A7E40 8FB60038 */  lw         $s6, 0x38($sp)
/* 12A44 800A7E44 8FB50034 */  lw         $s5, 0x34($sp)
/* 12A48 800A7E48 8FB40030 */  lw         $s4, 0x30($sp)
/* 12A4C 800A7E4C 8FB3002C */  lw         $s3, 0x2C($sp)
/* 12A50 800A7E50 8FB20028 */  lw         $s2, 0x28($sp)
/* 12A54 800A7E54 8FB10024 */  lw         $s1, 0x24($sp)
/* 12A58 800A7E58 8FB00020 */  lw         $s0, 0x20($sp)
/* 12A5C 800A7E5C 27BD0048 */  addiu      $sp, $sp, 0x48
/* 12A60 800A7E60 03E00008 */  jr         $ra
/* 12A64 800A7E64 00000000 */   nop
.size func_800A7AEC, . - func_800A7AEC
