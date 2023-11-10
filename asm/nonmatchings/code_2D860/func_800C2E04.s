glabel func_800C2E04
/* 2DA04 800C2E04 27BDFF88 */  addiu      $sp, $sp, -0x78
/* 2DA08 800C2E08 AFB00060 */  sw         $s0, 0x60($sp)
/* 2DA0C 800C2E0C 00808021 */  addu       $s0, $a0, $zero
/* 2DA10 800C2E10 AFB20068 */  sw         $s2, 0x68($sp)
/* 2DA14 800C2E14 00A09021 */  addu       $s2, $a1, $zero
/* 2DA18 800C2E18 AFB10064 */  sw         $s1, 0x64($sp)
/* 2DA1C 800C2E1C 00C08821 */  addu       $s1, $a2, $zero
/* 2DA20 800C2E20 02402021 */  addu       $a0, $s2, $zero
/* 2DA24 800C2E24 240500FE */  addiu      $a1, $zero, 0xFE
/* 2DA28 800C2E28 240200FF */  addiu      $v0, $zero, 0xFF
/* 2DA2C 800C2E2C AFBF0070 */  sw         $ra, 0x70($sp)
/* 2DA30 800C2E30 AFB3006C */  sw         $s3, 0x6C($sp)
/* 2DA34 800C2E34 AE500004 */  sw         $s0, 0x4($s2)
/* 2DA38 800C2E38 AE510008 */  sw         $s1, 0x8($s2)
/* 2DA3C 800C2E3C A2420065 */  sb         $v0, 0x65($s2)
/* 2DA40 800C2E40 0C031164 */  jal        func_800C4590
/* 2DA44 800C2E44 AE400000 */   sw        $zero, 0x0($s2)
/* 2DA48 800C2E48 24130002 */  addiu      $s3, $zero, 0x2
/* 2DA4C 800C2E4C 14530003 */  bne        $v0, $s3, .L800C2E5C
/* 2DA50 800C2E50 02402021 */   addu      $a0, $s2, $zero
/* 2DA54 800C2E54 0C031164 */  jal        func_800C4590
/* 2DA58 800C2E58 24050080 */   addiu     $a1, $zero, 0x80
.L800C2E5C:
/* 2DA5C 800C2E5C 14400074 */  bnez       $v0, .L800C3030
/* 2DA60 800C2E60 02002021 */   addu      $a0, $s0, $zero
/* 2DA64 800C2E64 02202821 */  addu       $a1, $s1, $zero
/* 2DA68 800C2E68 24060400 */  addiu      $a2, $zero, 0x400
/* 2DA6C 800C2E6C 0C031424 */  jal        func_800C5090
/* 2DA70 800C2E70 27A70010 */   addiu     $a3, $sp, 0x10
/* 2DA74 800C2E74 50530001 */  beql       $v0, $s3, .L800C2E7C
/* 2DA78 800C2E78 24020004 */   addiu     $v0, $zero, 0x4
.L800C2E7C:
/* 2DA7C 800C2E7C 1440006C */  bnez       $v0, .L800C3030
/* 2DA80 800C2E80 00000000 */   nop
/* 2DA84 800C2E84 93A3002F */  lbu        $v1, 0x2F($sp)
/* 2DA88 800C2E88 240200FE */  addiu      $v0, $zero, 0xFE
/* 2DA8C 800C2E8C 10620013 */  beq        $v1, $v0, .L800C2EDC
/* 2DA90 800C2E90 02402021 */   addu      $a0, $s2, $zero
/* 2DA94 800C2E94 0C031164 */  jal        func_800C4590
/* 2DA98 800C2E98 24050080 */   addiu     $a1, $zero, 0x80
/* 2DA9C 800C2E9C 50530001 */  beql       $v0, $s3, .L800C2EA4
/* 2DAA0 800C2EA0 24020004 */   addiu     $v0, $zero, 0x4
.L800C2EA4:
/* 2DAA4 800C2EA4 14400062 */  bnez       $v0, .L800C3030
/* 2DAA8 800C2EA8 02002021 */   addu      $a0, $s0, $zero
/* 2DAAC 800C2EAC 02202821 */  addu       $a1, $s1, $zero
/* 2DAB0 800C2EB0 24060400 */  addiu      $a2, $zero, 0x400
/* 2DAB4 800C2EB4 0C031424 */  jal        func_800C5090
/* 2DAB8 800C2EB8 27A70010 */   addiu     $a3, $sp, 0x10
/* 2DABC 800C2EBC 50530001 */  beql       $v0, $s3, .L800C2EC4
/* 2DAC0 800C2EC0 24020004 */   addiu     $v0, $zero, 0x4
.L800C2EC4:
/* 2DAC4 800C2EC4 1440005A */  bnez       $v0, .L800C3030
/* 2DAC8 800C2EC8 00000000 */   nop
/* 2DACC 800C2ECC 93A3002F */  lbu        $v1, 0x2F($sp)
/* 2DAD0 800C2ED0 24020080 */  addiu      $v0, $zero, 0x80
/* 2DAD4 800C2ED4 10620003 */  beq        $v1, $v0, .L800C2EE4
/* 2DAD8 800C2ED8 00000000 */   nop
.L800C2EDC:
/* 2DADC 800C2EDC 08030C0C */  j          .L800C3030
/* 2DAE0 800C2EE0 2402000B */   addiu     $v0, $zero, 0xB
.L800C2EE4:
/* 2DAE4 800C2EE4 8E420000 */  lw         $v0, 0x0($s2)
/* 2DAE8 800C2EE8 30420008 */  andi       $v0, $v0, 0x8
/* 2DAEC 800C2EEC 1440004E */  bnez       $v0, .L800C3028
/* 2DAF0 800C2EF0 24020008 */   addiu     $v0, $zero, 0x8
/* 2DAF4 800C2EF4 00111980 */  sll        $v1, $s1, 6
/* 2DAF8 800C2EF8 3C028015 */  lui        $v0, %hi(D_80149A90)
/* 2DAFC 800C2EFC 24429A90 */  addiu      $v0, $v0, %lo(D_80149A90)
/* 2DB00 800C2F00 00628021 */  addu       $s0, $v1, $v0
/* 2DB04 800C2F04 24040600 */  addiu      $a0, $zero, 0x600
/* 2DB08 800C2F08 240200FF */  addiu      $v0, $zero, 0xFF
/* 2DB0C 800C2F0C A3A20030 */  sb         $v0, 0x30($sp)
/* 2DB10 800C2F10 24020023 */  addiu      $v0, $zero, 0x23
/* 2DB14 800C2F14 A3A20031 */  sb         $v0, 0x31($sp)
/* 2DB18 800C2F18 24020001 */  addiu      $v0, $zero, 0x1
/* 2DB1C 800C2F1C A3A20032 */  sb         $v0, 0x32($sp)
/* 2DB20 800C2F20 24020003 */  addiu      $v0, $zero, 0x3
/* 2DB24 800C2F24 A3A20033 */  sb         $v0, 0x33($sp)
/* 2DB28 800C2F28 240200C0 */  addiu      $v0, $zero, 0xC0
/* 2DB2C 800C2F2C 0C031EB8 */  jal        func_800C7AE0
/* 2DB30 800C2F30 A3A20034 */   sb        $v0, 0x34($sp)
/* 2DB34 800C2F34 12200008 */  beqz       $s1, .L800C2F58
/* 2DB38 800C2F38 A3A20035 */   sb        $v0, 0x35($sp)
/* 2DB3C 800C2F3C 1A200006 */  blez       $s1, .L800C2F58
/* 2DB40 800C2F40 00001821 */   addu      $v1, $zero, $zero
.L800C2F44:
/* 2DB44 800C2F44 A2000000 */  sb         $zero, 0x0($s0)
/* 2DB48 800C2F48 24630001 */  addiu      $v1, $v1, 0x1
/* 2DB4C 800C2F4C 0071102A */  slt        $v0, $v1, $s1
/* 2DB50 800C2F50 1440FFFC */  bnez       $v0, .L800C2F44
/* 2DB54 800C2F54 26100001 */   addiu     $s0, $s0, 0x1
.L800C2F58:
/* 2DB58 800C2F58 27A60030 */  addiu      $a2, $sp, 0x30
/* 2DB5C 800C2F5C 00D01025 */  or         $v0, $a2, $s0
/* 2DB60 800C2F60 30420003 */  andi       $v0, $v0, 0x3
/* 2DB64 800C2F64 10400017 */  beqz       $v0, .L800C2FC4
/* 2DB68 800C2F68 02003821 */   addu      $a3, $s0, $zero
/* 2DB6C 800C2F6C 27A80050 */  addiu      $t0, $sp, 0x50
.L800C2F70:
/* 2DB70 800C2F70 88C20000 */  lwl        $v0, 0x0($a2)
/* 2DB74 800C2F74 98C20003 */  lwr        $v0, 0x3($a2)
/* 2DB78 800C2F78 88C30004 */  lwl        $v1, 0x4($a2)
/* 2DB7C 800C2F7C 98C30007 */  lwr        $v1, 0x7($a2)
/* 2DB80 800C2F80 88C40008 */  lwl        $a0, 0x8($a2)
/* 2DB84 800C2F84 98C4000B */  lwr        $a0, 0xB($a2)
/* 2DB88 800C2F88 88C5000C */  lwl        $a1, 0xC($a2)
/* 2DB8C 800C2F8C 98C5000F */  lwr        $a1, 0xF($a2)
/* 2DB90 800C2F90 A8E20000 */  swl        $v0, 0x0($a3)
/* 2DB94 800C2F94 B8E20003 */  swr        $v0, 0x3($a3)
/* 2DB98 800C2F98 A8E30004 */  swl        $v1, 0x4($a3)
/* 2DB9C 800C2F9C B8E30007 */  swr        $v1, 0x7($a3)
/* 2DBA0 800C2FA0 A8E40008 */  swl        $a0, 0x8($a3)
/* 2DBA4 800C2FA4 B8E4000B */  swr        $a0, 0xB($a3)
/* 2DBA8 800C2FA8 A8E5000C */  swl        $a1, 0xC($a3)
/* 2DBAC 800C2FAC B8E5000F */  swr        $a1, 0xF($a3)
/* 2DBB0 800C2FB0 24C60010 */  addiu      $a2, $a2, 0x10
/* 2DBB4 800C2FB4 14C8FFEE */  bne        $a2, $t0, .L800C2F70
/* 2DBB8 800C2FB8 24E70010 */   addiu     $a3, $a3, 0x10
/* 2DBBC 800C2FBC 08030BFD */  j          .L800C2FF4
/* 2DBC0 800C2FC0 00000000 */   nop
.L800C2FC4:
/* 2DBC4 800C2FC4 27A80050 */  addiu      $t0, $sp, 0x50
.L800C2FC8:
/* 2DBC8 800C2FC8 8CC20000 */  lw         $v0, 0x0($a2)
/* 2DBCC 800C2FCC 8CC30004 */  lw         $v1, 0x4($a2)
/* 2DBD0 800C2FD0 8CC40008 */  lw         $a0, 0x8($a2)
/* 2DBD4 800C2FD4 8CC5000C */  lw         $a1, 0xC($a2)
/* 2DBD8 800C2FD8 ACE20000 */  sw         $v0, 0x0($a3)
/* 2DBDC 800C2FDC ACE30004 */  sw         $v1, 0x4($a3)
/* 2DBE0 800C2FE0 ACE40008 */  sw         $a0, 0x8($a3)
/* 2DBE4 800C2FE4 ACE5000C */  sw         $a1, 0xC($a3)
/* 2DBE8 800C2FE8 24C60010 */  addiu      $a2, $a2, 0x10
/* 2DBEC 800C2FEC 14C8FFF6 */  bne        $a2, $t0, .L800C2FC8
/* 2DBF0 800C2FF0 24E70010 */   addiu     $a3, $a3, 0x10
.L800C2FF4:
/* 2DBF4 800C2FF4 88C20000 */  lwl        $v0, 0x0($a2)
/* 2DBF8 800C2FF8 98C20003 */  lwr        $v0, 0x3($a2)
/* 2DBFC 800C2FFC 80C30004 */  lb         $v1, 0x4($a2)
/* 2DC00 800C3000 80C40005 */  lb         $a0, 0x5($a2)
/* 2DC04 800C3004 80C50006 */  lb         $a1, 0x6($a2)
/* 2DC08 800C3008 A8E20000 */  swl        $v0, 0x0($a3)
/* 2DC0C 800C300C B8E20003 */  swr        $v0, 0x3($a3)
/* 2DC10 800C3010 A0E30004 */  sb         $v1, 0x4($a3)
/* 2DC14 800C3014 A0E40005 */  sb         $a0, 0x5($a3)
/* 2DC18 800C3018 A0E50006 */  sb         $a1, 0x6($a3)
/* 2DC1C 800C301C 240200FE */  addiu      $v0, $zero, 0xFE
/* 2DC20 800C3020 A2020027 */  sb         $v0, 0x27($s0)
/* 2DC24 800C3024 24020008 */  addiu      $v0, $zero, 0x8
.L800C3028:
/* 2DC28 800C3028 AE420000 */  sw         $v0, 0x0($s2)
/* 2DC2C 800C302C 00001021 */  addu       $v0, $zero, $zero
.L800C3030:
/* 2DC30 800C3030 8FBF0070 */  lw         $ra, 0x70($sp)
/* 2DC34 800C3034 8FB3006C */  lw         $s3, 0x6C($sp)
/* 2DC38 800C3038 8FB20068 */  lw         $s2, 0x68($sp)
/* 2DC3C 800C303C 8FB10064 */  lw         $s1, 0x64($sp)
/* 2DC40 800C3040 8FB00060 */  lw         $s0, 0x60($sp)
/* 2DC44 800C3044 03E00008 */  jr         $ra
/* 2DC48 800C3048 27BD0078 */   addiu     $sp, $sp, 0x78
/* 2DC4C 800C304C 00000000 */  nop
.size func_800C2E04, . - func_800C2E04
