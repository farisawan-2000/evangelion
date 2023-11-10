glabel func_800A10A4
/* BCA4 800A10A4 27BDFF80 */  addiu      $sp, $sp, -0x80
/* BCA8 800A10A8 AFB20060 */  sw         $s2, 0x60($sp)
/* BCAC 800A10AC 8FB20090 */  lw         $s2, 0x90($sp)
/* BCB0 800A10B0 AFB5006C */  sw         $s5, 0x6C($sp)
/* BCB4 800A10B4 0080A821 */  addu       $s5, $a0, $zero
/* BCB8 800A10B8 AFB30064 */  sw         $s3, 0x64($sp)
/* BCBC 800A10BC 00A09821 */  addu       $s3, $a1, $zero
/* BCC0 800A10C0 AFB60070 */  sw         $s6, 0x70($sp)
/* BCC4 800A10C4 00C0B021 */  addu       $s6, $a2, $zero
/* BCC8 800A10C8 AFBE0078 */  sw         $fp, 0x78($sp)
/* BCCC 800A10CC 0000F021 */  addu       $fp, $zero, $zero
/* BCD0 800A10D0 AFB70074 */  sw         $s7, 0x74($sp)
/* BCD4 800A10D4 00E0B821 */  addu       $s7, $a3, $zero
/* BCD8 800A10D8 00073C00 */  sll        $a3, $a3, 16
/* BCDC 800A10DC AFB00058 */  sw         $s0, 0x58($sp)
/* BCE0 800A10E0 00078403 */  sra        $s0, $a3, 16
/* BCE4 800A10E4 AFBF007C */  sw         $ra, 0x7C($sp)
/* BCE8 800A10E8 AFB40068 */  sw         $s4, 0x68($sp)
/* BCEC 800A10EC AFB1005C */  sw         $s1, 0x5C($sp)
/* BCF0 800A10F0 16000005 */  bnez       $s0, .L800A1108
/* BCF4 800A10F4 0240A021 */   addu      $s4, $s2, $zero
/* BCF8 800A10F8 3C048010 */  lui        $a0, %hi(D_800FFCF0)
/* BCFC 800A10FC 2484FCF0 */  addiu      $a0, $a0, %lo(D_800FFCF0)
/* BD00 800A1100 0C02FA9C */  jal        func_800BEA70
/* BD04 800A1104 00000000 */   nop
.L800A1108:
/* BD08 800A1108 8E620008 */  lw         $v0, 0x8($s3)
/* BD0C 800A110C 00101880 */  sll        $v1, $s0, 2
/* BD10 800A1110 00621821 */  addu       $v1, $v1, $v0
/* BD14 800A1114 8C710000 */  lw         $s1, 0x0($v1)
/* BD18 800A1118 8E240000 */  lw         $a0, 0x0($s1)
/* BD1C 800A111C 8482000A */  lh         $v0, 0xA($a0)
/* BD20 800A1120 28420012 */  slti       $v0, $v0, 0x12
/* BD24 800A1124 10400067 */  beqz       $v0, .L800A12C4
/* BD28 800A1128 00000000 */   nop
/* BD2C 800A112C 96620064 */  lhu        $v0, 0x64($s3)
/* BD30 800A1130 2442FFFF */  addiu      $v0, $v0, -0x1
/* BD34 800A1134 00021400 */  sll        $v0, $v0, 16
/* BD38 800A1138 00021403 */  sra        $v0, $v0, 16
/* BD3C 800A113C 0202102A */  slt        $v0, $s0, $v0
/* BD40 800A1140 10400008 */  beqz       $v0, .L800A1164
/* BD44 800A1144 00121400 */   sll       $v0, $s2, 16
/* BD48 800A1148 8483000C */  lh         $v1, 0xC($a0)
/* BD4C 800A114C 00021403 */  sra        $v0, $v0, 16
/* BD50 800A1150 02031821 */  addu       $v1, $s0, $v1
/* BD54 800A1154 0062182A */  slt        $v1, $v1, $v0
/* BD58 800A1158 5060000A */  beql       $v1, $zero, .L800A1184
/* BD5C 800A115C 26300020 */   addiu     $s0, $s1, 0x20
/* BD60 800A1160 241E0001 */  addiu      $fp, $zero, 0x1
.L800A1164:
/* BD64 800A1164 8483000C */  lh         $v1, 0xC($a0)
/* BD68 800A1168 00121400 */  sll        $v0, $s2, 16
/* BD6C 800A116C 00021403 */  sra        $v0, $v0, 16
/* BD70 800A1170 02031821 */  addu       $v1, $s0, $v1
/* BD74 800A1174 0062182A */  slt        $v1, $v1, $v0
/* BD78 800A1178 1460003D */  bnez       $v1, .L800A1270
/* BD7C 800A117C 03C01021 */   addu      $v0, $fp, $zero
/* BD80 800A1180 26300020 */  addiu      $s0, $s1, 0x20
.L800A1184:
/* BD84 800A1184 86220014 */  lh         $v0, 0x14($s1)
/* BD88 800A1188 86230016 */  lh         $v1, 0x16($s1)
/* BD8C 800A118C 86270018 */  lh         $a3, 0x18($s1)
/* BD90 800A1190 44820000 */  mtc1       $v0, $f0
/* BD94 800A1194 00000000 */  nop
/* BD98 800A1198 46800020 */  cvt.s.w    $f0, $f0
/* BD9C 800A119C 44050000 */  mfc1       $a1, $f0
/* BDA0 800A11A0 00000000 */  nop
/* BDA4 800A11A4 44830000 */  mtc1       $v1, $f0
/* BDA8 800A11A8 00000000 */  nop
/* BDAC 800A11AC 46800020 */  cvt.s.w    $f0, $f0
/* BDB0 800A11B0 44060000 */  mfc1       $a2, $f0
/* BDB4 800A11B4 00000000 */  nop
/* BDB8 800A11B8 44870000 */  mtc1       $a3, $f0
/* BDBC 800A11BC 00000000 */  nop
/* BDC0 800A11C0 46800020 */  cvt.s.w    $f0, $f0
/* BDC4 800A11C4 44070000 */  mfc1       $a3, $f0
/* BDC8 800A11C8 00000000 */  nop
/* BDCC 800A11CC 0C02FFFD */  jal        func_800BFFF4
/* BDD0 800A11D0 02002021 */   addu      $a0, $s0, $zero
/* BDD4 800A11D4 27A40018 */  addiu      $a0, $sp, 0x18
/* BDD8 800A11D8 0C02FA72 */  jal        func_800BE9C8
/* BDDC 800A11DC 02002821 */   addu      $a1, $s0, $zero
/* BDE0 800A11E0 27A40018 */  addiu      $a0, $sp, 0x18
/* BDE4 800A11E4 3C108010 */  lui        $s0, %hi(D_800FFCF0)
/* BDE8 800A11E8 2610FCF0 */  addiu      $s0, $s0, %lo(D_800FFCF0)
/* BDEC 800A11EC 02002821 */  addu       $a1, $s0, $zero
/* BDF0 800A11F0 0C02F9A8 */  jal        func_800BE6A0
/* BDF4 800A11F4 02003021 */   addu      $a2, $s0, $zero
/* BDF8 800A11F8 12C00007 */  beqz       $s6, .L800A1218
/* BDFC 800A11FC 27A40018 */   addiu     $a0, $sp, 0x18
/* BE00 800A1200 0C02FA72 */  jal        func_800BE9C8
/* BE04 800A1204 26250060 */   addiu     $a1, $s1, 0x60
/* BE08 800A1208 27A40018 */  addiu      $a0, $sp, 0x18
/* BE0C 800A120C 02002821 */  addu       $a1, $s0, $zero
/* BE10 800A1210 0C02F9A8 */  jal        func_800BE6A0
/* BE14 800A1214 02003021 */   addu      $a2, $s0, $zero
.L800A1218:
/* BE18 800A1218 00171C00 */  sll        $v1, $s7, 16
/* BE1C 800A121C 00031C03 */  sra        $v1, $v1, 16
/* BE20 800A1220 00141400 */  sll        $v0, $s4, 16
/* BE24 800A1224 00021403 */  sra        $v0, $v0, 16
/* BE28 800A1228 14620011 */  bne        $v1, $v0, .L800A1270
/* BE2C 800A122C 03C01021 */   addu      $v0, $fp, $zero
/* BE30 800A1230 02A03821 */  addu       $a3, $s5, $zero
/* BE34 800A1234 02003021 */  addu       $a2, $s0, $zero
/* BE38 800A1238 24C80040 */  addiu      $t0, $a2, 0x40
.L800A123C:
/* BE3C 800A123C 8CC20000 */  lw         $v0, 0x0($a2)
/* BE40 800A1240 8CC30004 */  lw         $v1, 0x4($a2)
/* BE44 800A1244 8CC40008 */  lw         $a0, 0x8($a2)
/* BE48 800A1248 8CC5000C */  lw         $a1, 0xC($a2)
/* BE4C 800A124C ACE20000 */  sw         $v0, 0x0($a3)
/* BE50 800A1250 ACE30004 */  sw         $v1, 0x4($a3)
/* BE54 800A1254 ACE40008 */  sw         $a0, 0x8($a3)
/* BE58 800A1258 ACE5000C */  sw         $a1, 0xC($a3)
/* BE5C 800A125C 24C60010 */  addiu      $a2, $a2, 0x10
/* BE60 800A1260 14C8FFF6 */  bne        $a2, $t0, .L800A123C
/* BE64 800A1264 24E70010 */   addiu     $a3, $a3, 0x10
/* BE68 800A1268 080284B1 */  j          .L800A12C4
/* BE6C 800A126C 00000000 */   nop
.L800A1270:
/* BE70 800A1270 1040000B */  beqz       $v0, .L800A12A0
/* BE74 800A1274 02A02021 */   addu      $a0, $s5, $zero
/* BE78 800A1278 8E220000 */  lw         $v0, 0x0($s1)
/* BE7C 800A127C 02602821 */  addu       $a1, $s3, $zero
/* BE80 800A1280 02C03021 */  addu       $a2, $s6, $zero
/* BE84 800A1284 9447000C */  lhu        $a3, 0xC($v0)
/* BE88 800A1288 00141400 */  sll        $v0, $s4, 16
/* BE8C 800A128C 00021403 */  sra        $v0, $v0, 16
/* BE90 800A1290 AFA20010 */  sw         $v0, 0x10($sp)
/* BE94 800A1294 24E70001 */  addiu      $a3, $a3, 0x1
/* BE98 800A1298 080284AE */  j          .L800A12B8
/* BE9C 800A129C 02E73821 */   addu      $a3, $s7, $a3
.L800A12A0:
/* BEA0 800A12A0 00141400 */  sll        $v0, $s4, 16
/* BEA4 800A12A4 00021403 */  sra        $v0, $v0, 16
/* BEA8 800A12A8 AFA20010 */  sw         $v0, 0x10($sp)
/* BEAC 800A12AC 02602821 */  addu       $a1, $s3, $zero
/* BEB0 800A12B0 02C03021 */  addu       $a2, $s6, $zero
/* BEB4 800A12B4 26E70001 */  addiu      $a3, $s7, 0x1
.L800A12B8:
/* BEB8 800A12B8 00073C00 */  sll        $a3, $a3, 16
/* BEBC 800A12BC 0C028429 */  jal        func_800A10A4
/* BEC0 800A12C0 00073C03 */   sra       $a3, $a3, 16
.L800A12C4:
/* BEC4 800A12C4 8FBF007C */  lw         $ra, 0x7C($sp)
/* BEC8 800A12C8 8FBE0078 */  lw         $fp, 0x78($sp)
/* BECC 800A12CC 8FB70074 */  lw         $s7, 0x74($sp)
/* BED0 800A12D0 8FB60070 */  lw         $s6, 0x70($sp)
/* BED4 800A12D4 8FB5006C */  lw         $s5, 0x6C($sp)
/* BED8 800A12D8 8FB40068 */  lw         $s4, 0x68($sp)
/* BEDC 800A12DC 8FB30064 */  lw         $s3, 0x64($sp)
/* BEE0 800A12E0 8FB20060 */  lw         $s2, 0x60($sp)
/* BEE4 800A12E4 8FB1005C */  lw         $s1, 0x5C($sp)
/* BEE8 800A12E8 8FB00058 */  lw         $s0, 0x58($sp)
/* BEEC 800A12EC 27BD0080 */  addiu      $sp, $sp, 0x80
/* BEF0 800A12F0 03E00008 */  jr         $ra
/* BEF4 800A12F4 00000000 */   nop
.size func_800A10A4, . - func_800A10A4
