glabel func_80043BD8_ovl3
/* ED0E8 80043BD8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* ED0EC 80043BDC 24040011 */  addiu      $a0, $zero, 0x11
/* ED0F0 80043BE0 24050001 */  addiu      $a1, $zero, 0x1
/* ED0F4 80043BE4 AFBF0028 */  sw         $ra, 0x28($sp)
/* ED0F8 80043BE8 AFB30024 */  sw         $s3, 0x24($sp)
/* ED0FC 80043BEC AFB20020 */  sw         $s2, 0x20($sp)
/* ED100 80043BF0 AFB1001C */  sw         $s1, 0x1C($sp)
/* ED104 80043BF4 AFB00018 */  sw         $s0, 0x18($sp)
/* ED108 80043BF8 F7B80040 */  sdc1       $f24, 0x40($sp)
/* ED10C 80043BFC F7B60038 */  sdc1       $f22, 0x38($sp)
/* ED110 80043C00 F7B40030 */  sdc1       $f20, 0x30($sp)
/* ED114 80043C04 0C00D925 */  jal        func_80036494_ovl3
/* ED118 80043C08 24060042 */   addiu     $a2, $zero, 0x42
/* ED11C 80043C0C 00408821 */  addu       $s1, $v0, $zero
/* ED120 80043C10 8E24000C */  lw         $a0, 0xC($s1)
/* ED124 80043C14 24050033 */  addiu      $a1, $zero, 0x33
/* ED128 80043C18 0C028F9A */  jal        func_800A3E68
/* ED12C 80043C1C 24060044 */   addiu     $a2, $zero, 0x44
/* ED130 80043C20 8E24000C */  lw         $a0, 0xC($s1)
/* ED134 80043C24 00002821 */  addu       $a1, $zero, $zero
/* ED138 80043C28 0C028D89 */  jal        func_800A3624
/* ED13C 80043C2C 00003021 */   addu      $a2, $zero, $zero
/* ED140 80043C30 24020080 */  addiu      $v0, $zero, 0x80
/* ED144 80043C34 AFA20010 */  sw         $v0, 0x10($sp)
/* ED148 80043C38 8E24000C */  lw         $a0, 0xC($s1)
/* ED14C 80043C3C 240500FF */  addiu      $a1, $zero, 0xFF
/* ED150 80043C40 240600FF */  addiu      $a2, $zero, 0xFF
/* ED154 80043C44 0C028E41 */  jal        func_800A3904
/* ED158 80043C48 240700FF */   addiu     $a3, $zero, 0xFF
/* ED15C 80043C4C 8E23000C */  lw         $v1, 0xC($s1)
/* ED160 80043C50 3C013BA3 */  lui        $at, (0x3BA3D70A >> 16)
/* ED164 80043C54 3421D70A */  ori        $at, $at, (0x3BA3D70A & 0xFFFF)
/* ED168 80043C58 4481C000 */  mtc1       $at, $f24
/* ED16C 80043C5C 9462001E */  lhu        $v0, 0x1E($v1)
/* ED170 80043C60 3C0141B1 */  lui        $at, (0x41B1D70A >> 16)
/* ED174 80043C64 3421D70A */  ori        $at, $at, (0x41B1D70A & 0xFFFF)
/* ED178 80043C68 4481B000 */  mtc1       $at, $f22
/* ED17C 80043C6C 24040009 */  addiu      $a0, $zero, 0x9
/* ED180 80043C70 34420002 */  ori        $v0, $v0, 0x2
/* ED184 80043C74 0C00DFA8 */  jal        func_80037EA0_ovl3
/* ED188 80043C78 A462001E */   sh        $v0, 0x1E($v1)
/* ED18C 80043C7C 00408021 */  addu       $s0, $v0, $zero
/* ED190 80043C80 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* ED194 80043C84 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* ED198 80043C88 44810000 */  mtc1       $at, $f0
/* ED19C 80043C8C 02002021 */  addu       $a0, $s0, $zero
/* ED1A0 80043C90 00002821 */  addu       $a1, $zero, $zero
/* ED1A4 80043C94 240200FF */  addiu      $v0, $zero, 0xFF
/* ED1A8 80043C98 A6020074 */  sh         $v0, 0x74($s0)
/* ED1AC 80043C9C A6020076 */  sh         $v0, 0x76($s0)
/* ED1B0 80043CA0 A6020078 */  sh         $v0, 0x78($s0)
/* ED1B4 80043CA4 A602007A */  sh         $v0, 0x7A($s0)
/* ED1B8 80043CA8 24020012 */  addiu      $v0, $zero, 0x12
/* ED1BC 80043CAC AE000010 */  sw         $zero, 0x10($s0)
/* ED1C0 80043CB0 AE000014 */  sw         $zero, 0x14($s0)
/* ED1C4 80043CB4 AE000018 */  sw         $zero, 0x18($s0)
/* ED1C8 80043CB8 AE00001C */  sw         $zero, 0x1C($s0)
/* ED1CC 80043CBC AE000020 */  sw         $zero, 0x20($s0)
/* ED1D0 80043CC0 AE000024 */  sw         $zero, 0x24($s0)
/* ED1D4 80043CC4 A6020070 */  sh         $v0, 0x70($s0)
/* ED1D8 80043CC8 0C00DFE6 */  jal        func_80037F98_ovl3
/* ED1DC 80043CCC E6000028 */   swc1      $f0, 0x28($s0)
/* ED1E0 80043CD0 8E020004 */  lw         $v0, 0x4($s0)
/* ED1E4 80043CD4 A0400067 */  sb         $zero, 0x67($v0)
/* ED1E8 80043CD8 8E030004 */  lw         $v1, 0x4($s0)
/* ED1EC 80043CDC 24020002 */  addiu      $v0, $zero, 0x2
/* ED1F0 80043CE0 A6020072 */  sh         $v0, 0x72($s0)
/* ED1F4 80043CE4 90620066 */  lbu        $v0, 0x66($v1)
/* ED1F8 80043CE8 3C014338 */  lui        $at, (0x43382E14 >> 16)
/* ED1FC 80043CEC 34212E14 */  ori        $at, $at, (0x43382E14 & 0xFFFF)
/* ED200 80043CF0 4481A000 */  mtc1       $at, $f20
/* ED204 80043CF4 00008821 */  addu       $s1, $zero, $zero
/* ED208 80043CF8 34420007 */  ori        $v0, $v0, 0x7
/* ED20C 80043CFC A0620066 */  sb         $v0, 0x66($v1)
/* ED210 80043D00 8E040004 */  lw         $a0, 0x4($s0)
/* ED214 80043D04 3C058007 */  lui        $a1, %hi(D_8006A084_ovl3)
/* ED218 80043D08 24A5A084 */  addiu      $a1, $a1, %lo(D_8006A084_ovl3)
/* ED21C 80043D0C 0C0284DC */  jal        func_800A1370
/* ED220 80043D10 241200FF */   addiu     $s2, $zero, 0xFF
/* ED224 80043D14 8E040004 */  lw         $a0, 0x4($s0)
/* ED228 80043D18 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* ED22C 80043D1C 0C02869D */  jal        func_800A1A74
/* ED230 80043D20 00003021 */   addu      $a2, $zero, $zero
/* ED234 80043D24 8E040004 */  lw         $a0, 0x4($s0)
/* ED238 80043D28 3C058007 */  lui        $a1, %hi(D_8006A08C_ovl3)
/* ED23C 80043D2C 24A5A08C */  addiu      $a1, $a1, %lo(D_8006A08C_ovl3)
/* ED240 80043D30 0C0284DC */  jal        func_800A1370
/* ED244 80043D34 2413000E */   addiu     $s3, $zero, 0xE
/* ED248 80043D38 8E040004 */  lw         $a0, 0x4($s0)
/* ED24C 80043D3C 3045FFFF */  andi       $a1, $v0, 0xFFFF
/* ED250 80043D40 0C02869D */  jal        func_800A1A74
/* ED254 80043D44 00003021 */   addu      $a2, $zero, $zero
/* ED258 80043D48 322400FF */  andi       $a0, $s1, 0xFF
.L80043D4C_ovl3:
/* ED25C 80043D4C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* ED260 80043D50 24840012 */   addiu     $a0, $a0, 0x12
/* ED264 80043D54 00408021 */  addu       $s0, $v0, $zero
/* ED268 80043D58 02002021 */  addu       $a0, $s0, $zero
/* ED26C 80043D5C 24050023 */  addiu      $a1, $zero, 0x23
/* ED270 80043D60 AE000010 */  sw         $zero, 0x10($s0)
/* ED274 80043D64 AE000014 */  sw         $zero, 0x14($s0)
/* ED278 80043D68 AE000018 */  sw         $zero, 0x18($s0)
/* ED27C 80043D6C E6180028 */  swc1       $f24, 0x28($s0)
/* ED280 80043D70 E616001C */  swc1       $f22, 0x1C($s0)
/* ED284 80043D74 E6140020 */  swc1       $f20, 0x20($s0)
/* ED288 80043D78 AE000024 */  sw         $zero, 0x24($s0)
/* ED28C 80043D7C A6120074 */  sh         $s2, 0x74($s0)
/* ED290 80043D80 A6120076 */  sh         $s2, 0x76($s0)
/* ED294 80043D84 A6120078 */  sh         $s2, 0x78($s0)
/* ED298 80043D88 0C00DFE6 */  jal        func_80037F98_ovl3
/* ED29C 80043D8C A612007A */   sh        $s2, 0x7A($s0)
/* ED2A0 80043D90 8E020004 */  lw         $v0, 0x4($s0)
/* ED2A4 80043D94 A0530067 */  sb         $s3, 0x67($v0)
/* ED2A8 80043D98 8E030004 */  lw         $v1, 0x4($s0)
/* ED2AC 80043D9C 90620066 */  lbu        $v0, 0x66($v1)
/* ED2B0 80043DA0 26310001 */  addiu      $s1, $s1, 0x1
/* ED2B4 80043DA4 34420023 */  ori        $v0, $v0, 0x23
/* ED2B8 80043DA8 A0620066 */  sb         $v0, 0x66($v1)
/* ED2BC 80043DAC 322200FF */  andi       $v0, $s1, 0xFF
/* ED2C0 80043DB0 2C42000A */  sltiu      $v0, $v0, 0xA
/* ED2C4 80043DB4 1440FFE5 */  bnez       $v0, .L80043D4C_ovl3
/* ED2C8 80043DB8 322400FF */   andi      $a0, $s1, 0xFF
/* ED2CC 80043DBC 240400F8 */  addiu      $a0, $zero, 0xF8
/* ED2D0 80043DC0 24050002 */  addiu      $a1, $zero, 0x2
/* ED2D4 80043DC4 2406000A */  addiu      $a2, $zero, 0xA
/* ED2D8 80043DC8 0C00D97B */  jal        func_800365EC_ovl3
/* ED2DC 80043DCC 2407002B */   addiu     $a3, $zero, 0x2B
/* ED2E0 80043DD0 0C00E2C2 */  jal        func_80038B08_ovl3
/* ED2E4 80043DD4 24100001 */   addiu     $s0, $zero, 0x1
/* ED2E8 80043DD8 240420D4 */  addiu      $a0, $zero, 0x20D4
/* ED2EC 80043DDC 0C00DD19 */  jal        func_80037464_ovl3
/* ED2F0 80043DE0 240530CD */   addiu     $a1, $zero, 0x30CD
/* ED2F4 80043DE4 00408821 */  addu       $s1, $v0, $zero
/* ED2F8 80043DE8 8E24000C */  lw         $a0, 0xC($s1)
/* ED2FC 80043DEC 24050098 */  addiu      $a1, $zero, 0x98
/* ED300 80043DF0 0C028D89 */  jal        func_800A3624
/* ED304 80043DF4 240602B4 */   addiu     $a2, $zero, 0x2B4
/* ED308 80043DF8 AFB00010 */  sw         $s0, 0x10($sp)
/* ED30C 80043DFC 8E24000C */  lw         $a0, 0xC($s1)
/* ED310 80043E00 240500FF */  addiu      $a1, $zero, 0xFF
/* ED314 80043E04 240600FF */  addiu      $a2, $zero, 0xFF
/* ED318 80043E08 0C028E41 */  jal        func_800A3904
/* ED31C 80043E0C 240700FF */   addiu     $a3, $zero, 0xFF
/* ED320 80043E10 8E22000C */  lw         $v0, 0xC($s1)
/* ED324 80043E14 240420D4 */  addiu      $a0, $zero, 0x20D4
/* ED328 80043E18 240530CE */  addiu      $a1, $zero, 0x30CE
/* ED32C 80043E1C 0C00DD19 */  jal        func_80037464_ovl3
/* ED330 80043E20 A440001C */   sh        $zero, 0x1C($v0)
/* ED334 80043E24 00408821 */  addu       $s1, $v0, $zero
/* ED338 80043E28 8E24000C */  lw         $a0, 0xC($s1)
/* ED33C 80043E2C 240500A8 */  addiu      $a1, $zero, 0xA8
/* ED340 80043E30 0C028D89 */  jal        func_800A3624
/* ED344 80043E34 240602B4 */   addiu     $a2, $zero, 0x2B4
/* ED348 80043E38 AFB00010 */  sw         $s0, 0x10($sp)
/* ED34C 80043E3C 8E24000C */  lw         $a0, 0xC($s1)
/* ED350 80043E40 240500FF */  addiu      $a1, $zero, 0xFF
/* ED354 80043E44 240600FF */  addiu      $a2, $zero, 0xFF
/* ED358 80043E48 0C028E41 */  jal        func_800A3904
/* ED35C 80043E4C 240700FF */   addiu     $a3, $zero, 0xFF
/* ED360 80043E50 8E22000C */  lw         $v0, 0xC($s1)
/* ED364 80043E54 240420D4 */  addiu      $a0, $zero, 0x20D4
/* ED368 80043E58 240530CF */  addiu      $a1, $zero, 0x30CF
/* ED36C 80043E5C 0C00DD19 */  jal        func_80037464_ovl3
/* ED370 80043E60 A440001C */   sh        $zero, 0x1C($v0)
/* ED374 80043E64 00408821 */  addu       $s1, $v0, $zero
/* ED378 80043E68 8E24000C */  lw         $a0, 0xC($s1)
/* ED37C 80043E6C 24050098 */  addiu      $a1, $zero, 0x98
/* ED380 80043E70 0C028D89 */  jal        func_800A3624
/* ED384 80043E74 240602C4 */   addiu     $a2, $zero, 0x2C4
/* ED388 80043E78 AFB00010 */  sw         $s0, 0x10($sp)
/* ED38C 80043E7C 8E24000C */  lw         $a0, 0xC($s1)
/* ED390 80043E80 240500FF */  addiu      $a1, $zero, 0xFF
/* ED394 80043E84 240600FF */  addiu      $a2, $zero, 0xFF
/* ED398 80043E88 0C028E41 */  jal        func_800A3904
/* ED39C 80043E8C 240700FF */   addiu     $a3, $zero, 0xFF
/* ED3A0 80043E90 8E22000C */  lw         $v0, 0xC($s1)
/* ED3A4 80043E94 240420D4 */  addiu      $a0, $zero, 0x20D4
/* ED3A8 80043E98 240530D0 */  addiu      $a1, $zero, 0x30D0
/* ED3AC 80043E9C 0C00DD19 */  jal        func_80037464_ovl3
/* ED3B0 80043EA0 A440001C */   sh        $zero, 0x1C($v0)
/* ED3B4 80043EA4 00408821 */  addu       $s1, $v0, $zero
/* ED3B8 80043EA8 8E24000C */  lw         $a0, 0xC($s1)
/* ED3BC 80043EAC 240500A8 */  addiu      $a1, $zero, 0xA8
/* ED3C0 80043EB0 0C028D89 */  jal        func_800A3624
/* ED3C4 80043EB4 240602C4 */   addiu     $a2, $zero, 0x2C4
/* ED3C8 80043EB8 AFB00010 */  sw         $s0, 0x10($sp)
/* ED3CC 80043EBC 8E24000C */  lw         $a0, 0xC($s1)
/* ED3D0 80043EC0 240500FF */  addiu      $a1, $zero, 0xFF
/* ED3D4 80043EC4 240600FF */  addiu      $a2, $zero, 0xFF
/* ED3D8 80043EC8 0C028E41 */  jal        func_800A3904
/* ED3DC 80043ECC 240700FF */   addiu     $a3, $zero, 0xFF
/* ED3E0 80043ED0 8E22000C */  lw         $v0, 0xC($s1)
/* ED3E4 80043ED4 3C01424B */  lui        $at, (0x424BF5C3 >> 16)
/* ED3E8 80043ED8 3421F5C3 */  ori        $at, $at, (0x424BF5C3 & 0xFFFF)
/* ED3EC 80043EDC 44810000 */  mtc1       $at, $f0
/* ED3F0 80043EE0 3C01417A */  lui        $at, (0x417AE148 >> 16)
/* ED3F4 80043EE4 3421E148 */  ori        $at, $at, (0x417AE148 & 0xFFFF)
/* ED3F8 80043EE8 44811000 */  mtc1       $at, $f2
/* ED3FC 80043EEC 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* ED400 80043EF0 44812000 */  mtc1       $at, $f4
/* ED404 80043EF4 3C01C1B1 */  lui        $at, (0xC1B1D70A >> 16)
/* ED408 80043EF8 3421D70A */  ori        $at, $at, (0xC1B1D70A & 0xFFFF)
/* ED40C 80043EFC 44813000 */  mtc1       $at, $f6
/* ED410 80043F00 3C014194 */  lui        $at, (0x41947AE1 >> 16)
/* ED414 80043F04 34217AE1 */  ori        $at, $at, (0x41947AE1 & 0xFFFF)
/* ED418 80043F08 44814000 */  mtc1       $at, $f8
/* ED41C 80043F0C 3C01C2A4 */  lui        $at, (0xC2A4D1EC >> 16)
/* ED420 80043F10 3421D1EC */  ori        $at, $at, (0xC2A4D1EC & 0xFFFF)
/* ED424 80043F14 44815000 */  mtc1       $at, $f10
/* ED428 80043F18 A440001C */  sh         $zero, 0x1C($v0)
/* ED42C 80043F1C 3C018015 */  lui        $at, %hi(D_8014A064)
/* ED430 80043F20 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* ED434 80043F24 3C018015 */  lui        $at, %hi(D_8014A068)
/* ED438 80043F28 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* ED43C 80043F2C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* ED440 80043F30 E422A06C */  swc1       $f2, %lo(D_8014A06C)($at)
/* ED444 80043F34 3C018015 */  lui        $at, %hi(D_8014A070)
/* ED448 80043F38 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* ED44C 80043F3C 3C018015 */  lui        $at, %hi(D_8014A074)
/* ED450 80043F40 E424A074 */  swc1       $f4, %lo(D_8014A074)($at)
/* ED454 80043F44 3C018015 */  lui        $at, %hi(D_8014A078)
/* ED458 80043F48 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* ED45C 80043F4C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* ED460 80043F50 E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* ED464 80043F54 3C018015 */  lui        $at, %hi(D_8014A080)
/* ED468 80043F58 E428A080 */  swc1       $f8, %lo(D_8014A080)($at)
/* ED46C 80043F5C 3C018015 */  lui        $at, %hi(D_8014A084)
/* ED470 80043F60 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* ED474 80043F64 3C018015 */  lui        $at, %hi(D_8014A088)
/* ED478 80043F68 0C00E339 */  jal        func_80038CE4_ovl3
/* ED47C 80043F6C E42AA088 */   swc1      $f10, %lo(D_8014A088)($at)
/* ED480 80043F70 3C01C1A0 */  lui        $at, (0xC1A00000 >> 16)
/* ED484 80043F74 44810000 */  mtc1       $at, $f0
/* ED488 80043F78 3C018015 */  lui        $at, %hi(D_8014A054)
/* ED48C 80043F7C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* ED490 80043F80 3C018015 */  lui        $at, %hi(D_8014A050)
/* ED494 80043F84 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* ED498 80043F88 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* ED49C 80043F8C AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* ED4A0 80043F90 3C018017 */  lui        $at, %hi(D_8016E568)
/* ED4A4 80043F94 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* ED4A8 80043F98 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* ED4AC 80043F9C AC20D0D0 */  sw         $zero, %lo(D_8016D0D0)($at)
/* ED4B0 80043FA0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* ED4B4 80043FA4 E420D0D4 */  swc1       $f0, %lo(D_8016D0D4)($at)
/* ED4B8 80043FA8 8FBF0028 */  lw         $ra, 0x28($sp)
/* ED4BC 80043FAC 8FB30024 */  lw         $s3, 0x24($sp)
/* ED4C0 80043FB0 8FB20020 */  lw         $s2, 0x20($sp)
/* ED4C4 80043FB4 8FB1001C */  lw         $s1, 0x1C($sp)
/* ED4C8 80043FB8 8FB00018 */  lw         $s0, 0x18($sp)
/* ED4CC 80043FBC D7B80040 */  ldc1       $f24, 0x40($sp)
/* ED4D0 80043FC0 D7B60038 */  ldc1       $f22, 0x38($sp)
/* ED4D4 80043FC4 D7B40030 */  ldc1       $f20, 0x30($sp)
/* ED4D8 80043FC8 03E00008 */  jr         $ra
/* ED4DC 80043FCC 27BD0048 */   addiu     $sp, $sp, 0x48
.size func_80043BD8_ovl3, . - func_80043BD8_ovl3
