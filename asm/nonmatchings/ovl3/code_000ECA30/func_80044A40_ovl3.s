glabel func_80044A40_ovl3
/* EDF50 80044A40 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* EDF54 80044A44 AFBF002C */  sw         $ra, 0x2C($sp)
/* EDF58 80044A48 AFB20028 */  sw         $s2, 0x28($sp)
/* EDF5C 80044A4C AFB10024 */  sw         $s1, 0x24($sp)
/* EDF60 80044A50 0C00E109 */  jal        func_80038424_ovl3
/* EDF64 80044A54 AFB00020 */   sw        $s0, 0x20($sp)
/* EDF68 80044A58 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EDF6C 80044A5C 24040009 */   addiu     $a0, $zero, 0x9
/* EDF70 80044A60 00408021 */  addu       $s0, $v0, $zero
/* EDF74 80044A64 3C014087 */  lui        $at, (0x40875C29 >> 16)
/* EDF78 80044A68 34215C29 */  ori        $at, $at, (0x40875C29 & 0xFFFF)
/* EDF7C 80044A6C 44810000 */  mtc1       $at, $f0
/* EDF80 80044A70 3C01C27C */  lui        $at, (0xC27C3333 >> 16)
/* EDF84 80044A74 34213333 */  ori        $at, $at, (0xC27C3333 & 0xFFFF)
/* EDF88 80044A78 44811000 */  mtc1       $at, $f2
/* EDF8C 80044A7C 3C014148 */  lui        $at, (0x41480000 >> 16)
/* EDF90 80044A80 44812000 */  mtc1       $at, $f4
/* EDF94 80044A84 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* EDF98 80044A88 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* EDF9C 80044A8C 44813000 */  mtc1       $at, $f6
/* EDFA0 80044A90 02002021 */  addu       $a0, $s0, $zero
/* EDFA4 80044A94 00002821 */  addu       $a1, $zero, $zero
/* EDFA8 80044A98 240200FF */  addiu      $v0, $zero, 0xFF
/* EDFAC 80044A9C A6020074 */  sh         $v0, 0x74($s0)
/* EDFB0 80044AA0 A6020076 */  sh         $v0, 0x76($s0)
/* EDFB4 80044AA4 A6020078 */  sh         $v0, 0x78($s0)
/* EDFB8 80044AA8 A602007A */  sh         $v0, 0x7A($s0)
/* EDFBC 80044AAC 24020015 */  addiu      $v0, $zero, 0x15
/* EDFC0 80044AB0 AE00001C */  sw         $zero, 0x1C($s0)
/* EDFC4 80044AB4 AE000020 */  sw         $zero, 0x20($s0)
/* EDFC8 80044AB8 AE000024 */  sw         $zero, 0x24($s0)
/* EDFCC 80044ABC A6020070 */  sh         $v0, 0x70($s0)
/* EDFD0 80044AC0 E6000010 */  swc1       $f0, 0x10($s0)
/* EDFD4 80044AC4 E6020014 */  swc1       $f2, 0x14($s0)
/* EDFD8 80044AC8 E6040018 */  swc1       $f4, 0x18($s0)
/* EDFDC 80044ACC 0C00DFE6 */  jal        func_80037F98_ovl3
/* EDFE0 80044AD0 E6060028 */   swc1      $f6, 0x28($s0)
/* EDFE4 80044AD4 8E020004 */  lw         $v0, 0x4($s0)
/* EDFE8 80044AD8 A0400067 */  sb         $zero, 0x67($v0)
/* EDFEC 80044ADC 8E030004 */  lw         $v1, 0x4($s0)
/* EDFF0 80044AE0 24020003 */  addiu      $v0, $zero, 0x3
/* EDFF4 80044AE4 A6020072 */  sh         $v0, 0x72($s0)
/* EDFF8 80044AE8 90620066 */  lbu        $v0, 0x66($v1)
/* EDFFC 80044AEC 34420007 */  ori        $v0, $v0, 0x7
/* EE000 80044AF0 A0620066 */  sb         $v0, 0x66($v1)
/* EE004 80044AF4 8E040004 */  lw         $a0, 0x4($s0)
/* EE008 80044AF8 3C058007 */  lui        $a1, %hi(D_8006A084_ovl3)
/* EE00C 80044AFC 24A5A084 */  addiu      $a1, $a1, %lo(D_8006A084_ovl3)
/* EE010 80044B00 0C0284DC */  jal        func_800A1370
/* EE014 80044B04 2411001F */   addiu     $s1, $zero, 0x1F
/* EE018 80044B08 8E040004 */  lw         $a0, 0x4($s0)
/* EE01C 80044B0C 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* EE020 80044B10 0C02869D */  jal        func_800A1A74
/* EE024 80044B14 00003021 */   addu      $a2, $zero, $zero
/* EE028 80044B18 8E040004 */  lw         $a0, 0x4($s0)
/* EE02C 80044B1C 3C058007 */  lui        $a1, %hi(D_8006A08C_ovl3)
/* EE030 80044B20 0C0284DC */  jal        func_800A1370
/* EE034 80044B24 24A5A08C */   addiu     $a1, $a1, %lo(D_8006A08C_ovl3)
/* EE038 80044B28 8E040004 */  lw         $a0, 0x4($s0)
/* EE03C 80044B2C 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* EE040 80044B30 0C02869D */  jal        func_800A1A74
/* EE044 80044B34 00003021 */   addu      $a2, $zero, $zero
/* EE048 80044B38 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* EE04C 80044B3C 44810000 */  mtc1       $at, $f0
/* EE050 80044B40 3C01C086 */  lui        $at, (0xC086147B >> 16)
/* EE054 80044B44 3421147B */  ori        $at, $at, (0xC086147B & 0xFFFF)
/* EE058 80044B48 44811000 */  mtc1       $at, $f2
/* EE05C 80044B4C 3C014291 */  lui        $at, (0x4291BD71 >> 16)
/* EE060 80044B50 3421BD71 */  ori        $at, $at, (0x4291BD71 & 0xFFFF)
/* EE064 80044B54 44812000 */  mtc1       $at, $f4
/* EE068 80044B58 3C01C226 */  lui        $at, (0xC226B852 >> 16)
/* EE06C 80044B5C 3421B852 */  ori        $at, $at, (0xC226B852 & 0xFFFF)
/* EE070 80044B60 44813000 */  mtc1       $at, $f6
/* EE074 80044B64 3C018015 */  lui        $at, %hi(D_8014A064)
/* EE078 80044B68 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EE07C 80044B6C 3C018015 */  lui        $at, %hi(D_8014A068)
/* EE080 80044B70 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* EE084 80044B74 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EE088 80044B78 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EE08C 80044B7C 3C018015 */  lui        $at, %hi(D_8014A070)
/* EE090 80044B80 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EE094 80044B84 3C018015 */  lui        $at, %hi(D_8014A078)
/* EE098 80044B88 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EE09C 80044B8C 3C018015 */  lui        $at, %hi(D_8014A084)
/* EE0A0 80044B90 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EE0A4 80044B94 3C018015 */  lui        $at, %hi(D_8014A074)
/* EE0A8 80044B98 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* EE0AC 80044B9C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EE0B0 80044BA0 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* EE0B4 80044BA4 3C018015 */  lui        $at, %hi(D_8014A080)
/* EE0B8 80044BA8 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* EE0BC 80044BAC 3C018015 */  lui        $at, %hi(D_8014A088)
/* EE0C0 80044BB0 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* EE0C4 80044BB4 0C00E339 */  jal        func_80038CE4_ovl3
/* EE0C8 80044BB8 24100001 */   addiu     $s0, $zero, 0x1
/* EE0CC 80044BBC 3C048034 */  lui        $a0, (0x80343E50 >> 16)
/* EE0D0 80044BC0 34843E50 */  ori        $a0, $a0, (0x80343E50 & 0xFFFF)
/* EE0D4 80044BC4 240501EC */  addiu      $a1, $zero, 0x1EC
/* EE0D8 80044BC8 3C01C120 */  lui        $at, (0xC1200000 >> 16)
/* EE0DC 80044BCC 44810000 */  mtc1       $at, $f0
/* EE0E0 80044BD0 24060007 */  addiu      $a2, $zero, 0x7
/* EE0E4 80044BD4 3C018015 */  lui        $at, %hi(D_8014A054)
/* EE0E8 80044BD8 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EE0EC 80044BDC 3C018015 */  lui        $at, %hi(D_8014A050)
/* EE0F0 80044BE0 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EE0F4 80044BE4 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EE0F8 80044BE8 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EE0FC 80044BEC 3C018017 */  lui        $at, %hi(D_8016E568)
/* EE100 80044BF0 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* EE104 80044BF4 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EE108 80044BF8 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* EE10C 80044BFC 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EE110 80044C00 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* EE114 80044C04 0C00D9E0 */  jal        func_80036780_ovl3
/* EE118 80044C08 24070044 */   addiu     $a3, $zero, 0x44
/* EE11C 80044C0C 00409021 */  addu       $s2, $v0, $zero
/* EE120 80044C10 8E44000C */  lw         $a0, 0xC($s2)
/* EE124 80044C14 8C82000C */  lw         $v0, 0xC($a0)
/* EE128 80044C18 94450000 */  lhu        $a1, 0x0($v0)
/* EE12C 80044C1C 00003021 */  addu       $a2, $zero, $zero
/* EE130 80044C20 0C02912A */  jal        func_800A44A8
/* EE134 80044C24 00052842 */   srl       $a1, $a1, 1
/* EE138 80044C28 3C014080 */  lui        $at, (0x40800000 >> 16)
/* EE13C 80044C2C 44810000 */  mtc1       $at, $f0
/* EE140 80044C30 8E44000C */  lw         $a0, 0xC($s2)
/* EE144 80044C34 44060000 */  mfc1       $a2, $f0
/* EE148 80044C38 00002821 */  addu       $a1, $zero, $zero
/* EE14C 80044C3C 0C02915B */  jal        func_800A456C
/* EE150 80044C40 00C03821 */   addu      $a3, $a2, $zero
/* EE154 80044C44 8E44000C */  lw         $a0, 0xC($s2)
/* EE158 80044C48 24050280 */  addiu      $a1, $zero, 0x280
/* EE15C 80044C4C 0C028D89 */  jal        func_800A3624
/* EE160 80044C50 24060040 */   addiu     $a2, $zero, 0x40
/* EE164 80044C54 8E43000C */  lw         $v1, 0xC($s2)
/* EE168 80044C58 00002021 */  addu       $a0, $zero, $zero
/* EE16C 80044C5C 24050130 */  addiu      $a1, $zero, 0x130
/* EE170 80044C60 9462001E */  lhu        $v0, 0x1E($v1)
/* EE174 80044C64 24060005 */  addiu      $a2, $zero, 0x5
/* EE178 80044C68 24070004 */  addiu      $a3, $zero, 0x4
/* EE17C 80044C6C 34420104 */  ori        $v0, $v0, 0x104
/* EE180 80044C70 A462001E */  sh         $v0, 0x1E($v1)
/* EE184 80044C74 24020045 */  addiu      $v0, $zero, 0x45
/* EE188 80044C78 AFA00010 */  sw         $zero, 0x10($sp)
/* EE18C 80044C7C 0C00DB46 */  jal        func_80036D18_ovl3
/* EE190 80044C80 AFA20014 */   sw        $v0, 0x14($sp)
/* EE194 80044C84 00409021 */  addu       $s2, $v0, $zero
/* EE198 80044C88 8E44000C */  lw         $a0, 0xC($s2)
/* EE19C 80044C8C 00002821 */  addu       $a1, $zero, $zero
/* EE1A0 80044C90 0C028D89 */  jal        func_800A3624
/* EE1A4 80044C94 2406FFE0 */   addiu     $a2, $zero, -0x20
/* EE1A8 80044C98 24040045 */  addiu      $a0, $zero, 0x45
/* EE1AC 80044C9C 8E43000C */  lw         $v1, 0xC($s2)
/* EE1B0 80044CA0 24050046 */  addiu      $a1, $zero, 0x46
/* EE1B4 80044CA4 24020020 */  addiu      $v0, $zero, 0x20
/* EE1B8 80044CA8 0C00DD19 */  jal        func_80037464_ovl3
/* EE1BC 80044CAC A462001C */   sh        $v0, 0x1C($v1)
/* EE1C0 80044CB0 00409021 */  addu       $s2, $v0, $zero
/* EE1C4 80044CB4 8E44000C */  lw         $a0, 0xC($s2)
/* EE1C8 80044CB8 2405FFF8 */  addiu      $a1, $zero, -0x8
/* EE1CC 80044CBC 0C028D89 */  jal        func_800A3624
/* EE1D0 80044CC0 2406FFE0 */   addiu     $a2, $zero, -0x20
/* EE1D4 80044CC4 AFB00010 */  sw         $s0, 0x10($sp)
/* EE1D8 80044CC8 8E44000C */  lw         $a0, 0xC($s2)
/* EE1DC 80044CCC 240500FF */  addiu      $a1, $zero, 0xFF
/* EE1E0 80044CD0 240600FF */  addiu      $a2, $zero, 0xFF
/* EE1E4 80044CD4 0C028E41 */  jal        func_800A3904
/* EE1E8 80044CD8 240700FF */   addiu     $a3, $zero, 0xFF
/* EE1EC 80044CDC 24040045 */  addiu      $a0, $zero, 0x45
/* EE1F0 80044CE0 8E42000C */  lw         $v0, 0xC($s2)
/* EE1F4 80044CE4 24050047 */  addiu      $a1, $zero, 0x47
/* EE1F8 80044CE8 0C00DD19 */  jal        func_80037464_ovl3
/* EE1FC 80044CEC A451001C */   sh        $s1, 0x1C($v0)
/* EE200 80044CF0 00409021 */  addu       $s2, $v0, $zero
/* EE204 80044CF4 8E44000C */  lw         $a0, 0xC($s2)
/* EE208 80044CF8 24050008 */  addiu      $a1, $zero, 0x8
/* EE20C 80044CFC 0C028D89 */  jal        func_800A3624
/* EE210 80044D00 2406FFE0 */   addiu     $a2, $zero, -0x20
/* EE214 80044D04 AFB00010 */  sw         $s0, 0x10($sp)
/* EE218 80044D08 8E44000C */  lw         $a0, 0xC($s2)
/* EE21C 80044D0C 240500FF */  addiu      $a1, $zero, 0xFF
/* EE220 80044D10 240600FF */  addiu      $a2, $zero, 0xFF
/* EE224 80044D14 0C028E41 */  jal        func_800A3904
/* EE228 80044D18 240700FF */   addiu     $a3, $zero, 0xFF
/* EE22C 80044D1C 8E42000C */  lw         $v0, 0xC($s2)
/* EE230 80044D20 3C048007 */  lui        $a0, %hi(D_80069084_ovl3)
/* EE234 80044D24 24849084 */  addiu      $a0, $a0, %lo(D_80069084_ovl3)
/* EE238 80044D28 2405FFFE */  addiu      $a1, $zero, -0x2
/* EE23C 80044D2C A451001C */  sh         $s1, 0x1C($v0)
/* EE240 80044D30 2402FFFE */  addiu      $v0, $zero, -0x2
/* EE244 80044D34 A3A2001C */  sb         $v0, 0x1C($sp)
/* EE248 80044D38 24020001 */  addiu      $v0, $zero, 0x1
/* EE24C 80044D3C A3A2001E */  sb         $v0, 0x1E($sp)
/* EE250 80044D40 24020002 */  addiu      $v0, $zero, 0x2
/* EE254 80044D44 AFA40018 */  sw         $a0, 0x18($sp)
/* EE258 80044D48 A3A0001D */  sb         $zero, 0x1D($sp)
/* EE25C 80044D4C 0C029D2A */  jal        func_800A74A8
/* EE260 80044D50 A3A2001F */   sb        $v0, 0x1F($sp)
/* EE264 80044D54 27A40018 */  addiu      $a0, $sp, 0x18
/* EE268 80044D58 240520C9 */  addiu      $a1, $zero, 0x20C9
/* EE26C 80044D5C 240620D3 */  addiu      $a2, $zero, 0x20D3
/* EE270 80044D60 00021FC2 */  srl        $v1, $v0, 31
/* EE274 80044D64 00621821 */  addu       $v1, $v1, $v0
/* EE278 80044D68 00031843 */  sra        $v1, $v1, 1
/* EE27C 80044D6C 240700A0 */  addiu      $a3, $zero, 0xA0
/* EE280 80044D70 00E33823 */  subu       $a3, $a3, $v1
/* EE284 80044D74 00073C00 */  sll        $a3, $a3, 16
/* EE288 80044D78 00073C03 */  sra        $a3, $a3, 16
/* EE28C 80044D7C 240200AF */  addiu      $v0, $zero, 0xAF
/* EE290 80044D80 0C00DEF7 */  jal        func_80037BDC_ovl3
/* EE294 80044D84 AFA20010 */   sw        $v0, 0x10($sp)
/* EE298 80044D88 8FBF002C */  lw         $ra, 0x2C($sp)
/* EE29C 80044D8C 8FB20028 */  lw         $s2, 0x28($sp)
/* EE2A0 80044D90 8FB10024 */  lw         $s1, 0x24($sp)
/* EE2A4 80044D94 8FB00020 */  lw         $s0, 0x20($sp)
/* EE2A8 80044D98 03E00008 */  jr         $ra
/* EE2AC 80044D9C 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_80044A40_ovl3, . - func_80044A40_ovl3
