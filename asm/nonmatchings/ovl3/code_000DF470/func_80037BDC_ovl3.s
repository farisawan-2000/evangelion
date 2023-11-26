glabel func_80037BDC_ovl3
/* E10EC 80037BDC 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* E10F0 80037BE0 AFB40028 */  sw         $s4, 0x28($sp)
/* E10F4 80037BE4 8FB40058 */  lw         $s4, 0x58($sp)
/* E10F8 80037BE8 AFB00018 */  sw         $s0, 0x18($sp)
/* E10FC 80037BEC 00808021 */  addu       $s0, $a0, $zero
/* E1100 80037BF0 24040010 */  addiu      $a0, $zero, 0x10
/* E1104 80037BF4 AFB30024 */  sw         $s3, 0x24($sp)
/* E1108 80037BF8 00E09821 */  addu       $s3, $a3, $zero
/* E110C 80037BFC AFB60030 */  sw         $s6, 0x30($sp)
/* E1110 80037C00 00A0B021 */  addu       $s6, $a1, $zero
/* E1114 80037C04 AFB70034 */  sw         $s7, 0x34($sp)
/* E1118 80037C08 AFBF0038 */  sw         $ra, 0x38($sp)
/* E111C 80037C0C AFB5002C */  sw         $s5, 0x2C($sp)
/* E1120 80037C10 AFB20020 */  sw         $s2, 0x20($sp)
/* E1124 80037C14 AFB1001C */  sw         $s1, 0x1C($sp)
/* E1128 80037C18 F7B40040 */  sdc1       $f20, 0x40($sp)
/* E112C 80037C1C 0C032663 */  jal        func_800C998C
/* E1130 80037C20 00C0B821 */   addu      $s7, $a2, $zero
/* E1134 80037C24 00408821 */  addu       $s1, $v0, $zero
/* E1138 80037C28 02202021 */  addu       $a0, $s1, $zero
/* E113C 80037C2C 0C030134 */  jal        bzero
/* E1140 80037C30 24050010 */   addiu     $a1, $zero, 0x10
/* E1144 80037C34 8E040000 */  lw         $a0, 0x0($s0)
/* E1148 80037C38 82050004 */  lb         $a1, 0x4($s0)
/* E114C 80037C3C 0C029CD5 */  jal        func_800A7354
/* E1150 80037C40 00139C80 */   sll       $s3, $s3, 18
/* E1154 80037C44 A6220000 */  sh         $v0, 0x0($s1)
/* E1158 80037C48 8E040000 */  lw         $a0, 0x0($s0)
/* E115C 80037C4C 82050005 */  lb         $a1, 0x5($s0)
/* E1160 80037C50 0C029CFD */  jal        func_800A73F4
/* E1164 80037C54 00139C03 */   sra       $s3, $s3, 16
/* E1168 80037C58 A6220002 */  sh         $v0, 0x2($s1)
/* E116C 80037C5C 0C029F9A */  jal        func_800A7E68
/* E1170 80037C60 A2200004 */   sb        $zero, 0x4($s1)
/* E1174 80037C64 0C029FA4 */  jal        func_800A7E90
/* E1178 80037C68 0040A821 */   addu      $s5, $v0, $zero
/* E117C 80037C6C 92030007 */  lbu        $v1, 0x7($s0)
/* E1180 80037C70 82050004 */  lb         $a1, 0x4($s0)
/* E1184 80037C74 82060005 */  lb         $a2, 0x5($s0)
/* E1188 80037C78 92070006 */  lbu        $a3, 0x6($s0)
/* E118C 80037C7C AFA30010 */  sw         $v1, 0x10($sp)
/* E1190 80037C80 8E040000 */  lw         $a0, 0x0($s0)
/* E1194 80037C84 0C029D98 */  jal        func_800A7660
/* E1198 80037C88 00409021 */   addu      $s2, $v0, $zero
/* E119C 80037C8C 02202021 */  addu       $a0, $s1, $zero
/* E11A0 80037C90 00408021 */  addu       $s0, $v0, $zero
/* E11A4 80037C94 02002821 */  addu       $a1, $s0, $zero
/* E11A8 80037C98 02A03021 */  addu       $a2, $s5, $zero
/* E11AC 80037C9C 24070001 */  addiu      $a3, $zero, 0x1
/* E11B0 80037CA0 0C028FA6 */  jal        func_800A3E98
/* E11B4 80037CA4 AFA00010 */   sw        $zero, 0x10($sp)
/* E11B8 80037CA8 02202021 */  addu       $a0, $s1, $zero
/* E11BC 80037CAC 02002821 */  addu       $a1, $s0, $zero
/* E11C0 80037CB0 02403021 */  addu       $a2, $s2, $zero
/* E11C4 80037CB4 24070001 */  addiu      $a3, $zero, 0x1
/* E11C8 80037CB8 00408821 */  addu       $s1, $v0, $zero
/* E11CC 80037CBC 0C028FA6 */  jal        func_800A3E98
/* E11D0 80037CC0 AFA00010 */   sw        $zero, 0x10($sp)
/* E11D4 80037CC4 32C4FFFF */  andi       $a0, $s6, 0xFFFF
/* E11D8 80037CC8 0C00D8E3 */  jal        func_8003638C_ovl3
/* E11DC 80037CCC 00409021 */   addu      $s2, $v0, $zero
/* E11E0 80037CD0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* E11E4 80037CD4 4481A000 */  mtc1       $at, $f20
/* E11E8 80037CD8 00408021 */  addu       $s0, $v0, $zero
/* E11EC 80037CDC 24020001 */  addiu      $v0, $zero, 0x1
/* E11F0 80037CE0 A2020003 */  sb         $v0, 0x3($s0)
/* E11F4 80037CE4 24020054 */  addiu      $v0, $zero, 0x54
/* E11F8 80037CE8 A6160000 */  sh         $s6, 0x0($s0)
/* E11FC 80037CEC AE11000C */  sw         $s1, 0xC($s0)
/* E1200 80037CF0 A622001C */  sh         $v0, 0x1C($s1)
/* E1204 80037CF4 8E04000C */  lw         $a0, 0xC($s0)
/* E1208 80037CF8 4406A000 */  mfc1       $a2, $f20
/* E120C 80037CFC 4407A000 */  mfc1       $a3, $f20
/* E1210 80037D00 00000000 */  nop
/* E1214 80037D04 0C02915B */  jal        func_800A456C
/* E1218 80037D08 00002821 */   addu      $a1, $zero, $zero
/* E121C 80037D0C 8E04000C */  lw         $a0, 0xC($s0)
/* E1220 80037D10 02602821 */  addu       $a1, $s3, $zero
/* E1224 80037D14 0014A480 */  sll        $s4, $s4, 18
/* E1228 80037D18 0014A403 */  sra        $s4, $s4, 16
/* E122C 80037D1C 0C028D89 */  jal        func_800A3624
/* E1230 80037D20 02803021 */   addu      $a2, $s4, $zero
/* E1234 80037D24 8E03000C */  lw         $v1, 0xC($s0)
/* E1238 80037D28 9462001E */  lhu        $v0, 0x1E($v1)
/* E123C 80037D2C 32E4FFFF */  andi       $a0, $s7, 0xFFFF
/* E1240 80037D30 34420004 */  ori        $v0, $v0, 0x4
/* E1244 80037D34 0C00D8E3 */  jal        func_8003638C_ovl3
/* E1248 80037D38 A462001E */   sh        $v0, 0x1E($v1)
/* E124C 80037D3C 00408021 */  addu       $s0, $v0, $zero
/* E1250 80037D40 24020051 */  addiu      $v0, $zero, 0x51
/* E1254 80037D44 A6170000 */  sh         $s7, 0x0($s0)
/* E1258 80037D48 AE12000C */  sw         $s2, 0xC($s0)
/* E125C 80037D4C A642001C */  sh         $v0, 0x1C($s2)
/* E1260 80037D50 8E04000C */  lw         $a0, 0xC($s0)
/* E1264 80037D54 4406A000 */  mfc1       $a2, $f20
/* E1268 80037D58 00002821 */  addu       $a1, $zero, $zero
/* E126C 80037D5C 0C02915B */  jal        func_800A456C
/* E1270 80037D60 00C03821 */   addu      $a3, $a2, $zero
/* E1274 80037D64 8E04000C */  lw         $a0, 0xC($s0)
/* E1278 80037D68 02602821 */  addu       $a1, $s3, $zero
/* E127C 80037D6C 0C028D89 */  jal        func_800A3624
/* E1280 80037D70 02803021 */   addu      $a2, $s4, $zero
/* E1284 80037D74 240200D0 */  addiu      $v0, $zero, 0xD0
/* E1288 80037D78 AFA20010 */  sw         $v0, 0x10($sp)
/* E128C 80037D7C 8E04000C */  lw         $a0, 0xC($s0)
/* E1290 80037D80 240500FF */  addiu      $a1, $zero, 0xFF
/* E1294 80037D84 240600FF */  addiu      $a2, $zero, 0xFF
/* E1298 80037D88 0C028E41 */  jal        func_800A3904
/* E129C 80037D8C 240700FF */   addiu     $a3, $zero, 0xFF
/* E12A0 80037D90 8E03000C */  lw         $v1, 0xC($s0)
/* E12A4 80037D94 9462001E */  lhu        $v0, 0x1E($v1)
/* E12A8 80037D98 34420004 */  ori        $v0, $v0, 0x4
/* E12AC 80037D9C A462001E */  sh         $v0, 0x1E($v1)
/* E12B0 80037DA0 8FBF0038 */  lw         $ra, 0x38($sp)
/* E12B4 80037DA4 8FB70034 */  lw         $s7, 0x34($sp)
/* E12B8 80037DA8 8FB60030 */  lw         $s6, 0x30($sp)
/* E12BC 80037DAC 8FB5002C */  lw         $s5, 0x2C($sp)
/* E12C0 80037DB0 8FB40028 */  lw         $s4, 0x28($sp)
/* E12C4 80037DB4 8FB30024 */  lw         $s3, 0x24($sp)
/* E12C8 80037DB8 8FB20020 */  lw         $s2, 0x20($sp)
/* E12CC 80037DBC 8FB1001C */  lw         $s1, 0x1C($sp)
/* E12D0 80037DC0 8FB00018 */  lw         $s0, 0x18($sp)
/* E12D4 80037DC4 D7B40040 */  ldc1       $f20, 0x40($sp)
/* E12D8 80037DC8 03E00008 */  jr         $ra
/* E12DC 80037DCC 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_80037BDC_ovl3, . - func_80037BDC_ovl3
