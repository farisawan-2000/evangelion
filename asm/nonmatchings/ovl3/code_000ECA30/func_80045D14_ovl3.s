glabel func_80045D14_ovl3
/* EF224 80045D14 27BDFF78 */  addiu      $sp, $sp, -0x88
/* EF228 80045D18 AFBF0064 */  sw         $ra, 0x64($sp)
/* EF22C 80045D1C AFB20060 */  sw         $s2, 0x60($sp)
/* EF230 80045D20 AFB1005C */  sw         $s1, 0x5C($sp)
/* EF234 80045D24 AFB00058 */  sw         $s0, 0x58($sp)
/* EF238 80045D28 F7BA0080 */  sdc1       $f26, 0x80($sp)
/* EF23C 80045D2C F7B80078 */  sdc1       $f24, 0x78($sp)
/* EF240 80045D30 F7B60070 */  sdc1       $f22, 0x70($sp)
/* EF244 80045D34 F7B40068 */  sdc1       $f20, 0x68($sp)
/* EF248 80045D38 0C00E109 */  jal        func_80038424_ovl3
/* EF24C 80045D3C 241000FF */   addiu     $s0, $zero, 0xFF
/* EF250 80045D40 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF254 80045D44 2404001E */   addiu     $a0, $zero, 0x1E
/* EF258 80045D48 00409021 */  addu       $s2, $v0, $zero
/* EF25C 80045D4C 3C01C1F0 */  lui        $at, (0xC1F00000 >> 16)
/* EF260 80045D50 4481A000 */  mtc1       $at, $f20
/* EF264 80045D54 3C01417B */  lui        $at, (0x417BAE14 >> 16)
/* EF268 80045D58 3421AE14 */  ori        $at, $at, (0x417BAE14 & 0xFFFF)
/* EF26C 80045D5C 44810000 */  mtc1       $at, $f0
/* EF270 80045D60 3C013D8F */  lui        $at, (0x3D8F5C29 >> 16)
/* EF274 80045D64 34215C29 */  ori        $at, $at, (0x3D8F5C29 & 0xFFFF)
/* EF278 80045D68 4481B000 */  mtc1       $at, $f22
/* EF27C 80045D6C 02402021 */  addu       $a0, $s2, $zero
/* EF280 80045D70 240500C2 */  addiu      $a1, $zero, 0xC2
/* EF284 80045D74 AE400018 */  sw         $zero, 0x18($s2)
/* EF288 80045D78 AE40001C */  sw         $zero, 0x1C($s2)
/* EF28C 80045D7C AE400020 */  sw         $zero, 0x20($s2)
/* EF290 80045D80 AE400024 */  sw         $zero, 0x24($s2)
/* EF294 80045D84 A6500074 */  sh         $s0, 0x74($s2)
/* EF298 80045D88 A6500076 */  sh         $s0, 0x76($s2)
/* EF29C 80045D8C A6500078 */  sh         $s0, 0x78($s2)
/* EF2A0 80045D90 A650007A */  sh         $s0, 0x7A($s2)
/* EF2A4 80045D94 E6540010 */  swc1       $f20, 0x10($s2)
/* EF2A8 80045D98 E6400014 */  swc1       $f0, 0x14($s2)
/* EF2AC 80045D9C 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF2B0 80045DA0 E6560028 */   swc1      $f22, 0x28($s2)
/* EF2B4 80045DA4 8E420004 */  lw         $v0, 0x4($s2)
/* EF2B8 80045DA8 A0400067 */  sb         $zero, 0x67($v0)
/* EF2BC 80045DAC 8E430004 */  lw         $v1, 0x4($s2)
/* EF2C0 80045DB0 90620066 */  lbu        $v0, 0x66($v1)
/* EF2C4 80045DB4 2404001F */  addiu      $a0, $zero, 0x1F
/* EF2C8 80045DB8 34420007 */  ori        $v0, $v0, 0x7
/* EF2CC 80045DBC 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF2D0 80045DC0 A0620066 */   sb        $v0, 0x66($v1)
/* EF2D4 80045DC4 00409021 */  addu       $s2, $v0, $zero
/* EF2D8 80045DC8 3C01C080 */  lui        $at, (0xC0800000 >> 16)
/* EF2DC 80045DCC 44810000 */  mtc1       $at, $f0
/* EF2E0 80045DD0 02402021 */  addu       $a0, $s2, $zero
/* EF2E4 80045DD4 24050046 */  addiu      $a1, $zero, 0x46
/* EF2E8 80045DD8 E6540010 */  swc1       $f20, 0x10($s2)
/* EF2EC 80045DDC AE400018 */  sw         $zero, 0x18($s2)
/* EF2F0 80045DE0 E6560028 */  swc1       $f22, 0x28($s2)
/* EF2F4 80045DE4 AE40001C */  sw         $zero, 0x1C($s2)
/* EF2F8 80045DE8 AE400020 */  sw         $zero, 0x20($s2)
/* EF2FC 80045DEC AE400024 */  sw         $zero, 0x24($s2)
/* EF300 80045DF0 A6500074 */  sh         $s0, 0x74($s2)
/* EF304 80045DF4 A6500076 */  sh         $s0, 0x76($s2)
/* EF308 80045DF8 A6500078 */  sh         $s0, 0x78($s2)
/* EF30C 80045DFC A650007A */  sh         $s0, 0x7A($s2)
/* EF310 80045E00 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF314 80045E04 E6400014 */   swc1      $f0, 0x14($s2)
/* EF318 80045E08 8E420004 */  lw         $v0, 0x4($s2)
/* EF31C 80045E0C A0400067 */  sb         $zero, 0x67($v0)
/* EF320 80045E10 8E430004 */  lw         $v1, 0x4($s2)
/* EF324 80045E14 90620066 */  lbu        $v0, 0x66($v1)
/* EF328 80045E18 24040020 */  addiu      $a0, $zero, 0x20
/* EF32C 80045E1C 34420007 */  ori        $v0, $v0, 0x7
/* EF330 80045E20 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF334 80045E24 A0620066 */   sb        $v0, 0x66($v1)
/* EF338 80045E28 00409021 */  addu       $s2, $v0, $zero
/* EF33C 80045E2C 3C01BFE6 */  lui        $at, (0xBFE66666 >> 16)
/* EF340 80045E30 34216666 */  ori        $at, $at, (0xBFE66666 & 0xFFFF)
/* EF344 80045E34 44810000 */  mtc1       $at, $f0
/* EF348 80045E38 3C01C144 */  lui        $at, (0xC144CCCD >> 16)
/* EF34C 80045E3C 3421CCCD */  ori        $at, $at, (0xC144CCCD & 0xFFFF)
/* EF350 80045E40 4481A000 */  mtc1       $at, $f20
/* EF354 80045E44 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* EF358 80045E48 4481D000 */  mtc1       $at, $f26
/* EF35C 80045E4C 3C013BCB */  lui        $at, (0x3BCB295F >> 16)
/* EF360 80045E50 3421295F */  ori        $at, $at, (0x3BCB295F & 0xFFFF)
/* EF364 80045E54 4481B000 */  mtc1       $at, $f22
/* EF368 80045E58 3C014334 */  lui        $at, (0x43340000 >> 16)
/* EF36C 80045E5C 4481C000 */  mtc1       $at, $f24
/* EF370 80045E60 02402021 */  addu       $a0, $s2, $zero
/* EF374 80045E64 240500C6 */  addiu      $a1, $zero, 0xC6
/* EF378 80045E68 2411FFFF */  addiu      $s1, $zero, -0x1
/* EF37C 80045E6C AE40001C */  sw         $zero, 0x1C($s2)
/* EF380 80045E70 AE400024 */  sw         $zero, 0x24($s2)
/* EF384 80045E74 A6500074 */  sh         $s0, 0x74($s2)
/* EF388 80045E78 A6500076 */  sh         $s0, 0x76($s2)
/* EF38C 80045E7C A6500078 */  sh         $s0, 0x78($s2)
/* EF390 80045E80 A650007A */  sh         $s0, 0x7A($s2)
/* EF394 80045E84 A6510070 */  sh         $s1, 0x70($s2)
/* EF398 80045E88 E6540014 */  swc1       $f20, 0x14($s2)
/* EF39C 80045E8C E65A0018 */  swc1       $f26, 0x18($s2)
/* EF3A0 80045E90 E6560028 */  swc1       $f22, 0x28($s2)
/* EF3A4 80045E94 E6580020 */  swc1       $f24, 0x20($s2)
/* EF3A8 80045E98 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF3AC 80045E9C E6400010 */   swc1      $f0, 0x10($s2)
/* EF3B0 80045EA0 8E420004 */  lw         $v0, 0x4($s2)
/* EF3B4 80045EA4 A0400067 */  sb         $zero, 0x67($v0)
/* EF3B8 80045EA8 8E430004 */  lw         $v1, 0x4($s2)
/* EF3BC 80045EAC 90620066 */  lbu        $v0, 0x66($v1)
/* EF3C0 80045EB0 24040021 */  addiu      $a0, $zero, 0x21
/* EF3C4 80045EB4 34420007 */  ori        $v0, $v0, 0x7
/* EF3C8 80045EB8 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF3CC 80045EBC A0620066 */   sb        $v0, 0x66($v1)
/* EF3D0 80045EC0 00409021 */  addu       $s2, $v0, $zero
/* EF3D4 80045EC4 3C01C073 */  lui        $at, (0xC0733333 >> 16)
/* EF3D8 80045EC8 34213333 */  ori        $at, $at, (0xC0733333 & 0xFFFF)
/* EF3DC 80045ECC 44810000 */  mtc1       $at, $f0
/* EF3E0 80045ED0 02402021 */  addu       $a0, $s2, $zero
/* EF3E4 80045ED4 240500C6 */  addiu      $a1, $zero, 0xC6
/* EF3E8 80045ED8 E6540014 */  swc1       $f20, 0x14($s2)
/* EF3EC 80045EDC E65A0018 */  swc1       $f26, 0x18($s2)
/* EF3F0 80045EE0 E6560028 */  swc1       $f22, 0x28($s2)
/* EF3F4 80045EE4 AE40001C */  sw         $zero, 0x1C($s2)
/* EF3F8 80045EE8 E6580020 */  swc1       $f24, 0x20($s2)
/* EF3FC 80045EEC AE400024 */  sw         $zero, 0x24($s2)
/* EF400 80045EF0 A6500074 */  sh         $s0, 0x74($s2)
/* EF404 80045EF4 A6500076 */  sh         $s0, 0x76($s2)
/* EF408 80045EF8 A6500078 */  sh         $s0, 0x78($s2)
/* EF40C 80045EFC A650007A */  sh         $s0, 0x7A($s2)
/* EF410 80045F00 A6510070 */  sh         $s1, 0x70($s2)
/* EF414 80045F04 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF418 80045F08 E6400010 */   swc1      $f0, 0x10($s2)
/* EF41C 80045F0C 8E420004 */  lw         $v0, 0x4($s2)
/* EF420 80045F10 A0400067 */  sb         $zero, 0x67($v0)
/* EF424 80045F14 8E430004 */  lw         $v1, 0x4($s2)
/* EF428 80045F18 90620066 */  lbu        $v0, 0x66($v1)
/* EF42C 80045F1C 24040022 */  addiu      $a0, $zero, 0x22
/* EF430 80045F20 34420007 */  ori        $v0, $v0, 0x7
/* EF434 80045F24 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF438 80045F28 A0620066 */   sb        $v0, 0x66($v1)
/* EF43C 80045F2C 00409021 */  addu       $s2, $v0, $zero
/* EF440 80045F30 3C01C033 */  lui        $at, (0xC0333333 >> 16)
/* EF444 80045F34 34213333 */  ori        $at, $at, (0xC0333333 & 0xFFFF)
/* EF448 80045F38 44810000 */  mtc1       $at, $f0
/* EF44C 80045F3C 02402021 */  addu       $a0, $s2, $zero
/* EF450 80045F40 2405008D */  addiu      $a1, $zero, 0x8D
/* EF454 80045F44 E6540014 */  swc1       $f20, 0x14($s2)
/* EF458 80045F48 E65A0018 */  swc1       $f26, 0x18($s2)
/* EF45C 80045F4C E6560028 */  swc1       $f22, 0x28($s2)
/* EF460 80045F50 AE40001C */  sw         $zero, 0x1C($s2)
/* EF464 80045F54 E6580020 */  swc1       $f24, 0x20($s2)
/* EF468 80045F58 AE400024 */  sw         $zero, 0x24($s2)
/* EF46C 80045F5C A6500074 */  sh         $s0, 0x74($s2)
/* EF470 80045F60 A6500076 */  sh         $s0, 0x76($s2)
/* EF474 80045F64 A6500078 */  sh         $s0, 0x78($s2)
/* EF478 80045F68 A650007A */  sh         $s0, 0x7A($s2)
/* EF47C 80045F6C A6510070 */  sh         $s1, 0x70($s2)
/* EF480 80045F70 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF484 80045F74 E6400010 */   swc1      $f0, 0x10($s2)
/* EF488 80045F78 8E420004 */  lw         $v0, 0x4($s2)
/* EF48C 80045F7C A0400067 */  sb         $zero, 0x67($v0)
/* EF490 80045F80 8E430004 */  lw         $v1, 0x4($s2)
/* EF494 80045F84 90620066 */  lbu        $v0, 0x66($v1)
/* EF498 80045F88 24040023 */  addiu      $a0, $zero, 0x23
/* EF49C 80045F8C 34420007 */  ori        $v0, $v0, 0x7
/* EF4A0 80045F90 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EF4A4 80045F94 A0620066 */   sb        $v0, 0x66($v1)
/* EF4A8 80045F98 00409021 */  addu       $s2, $v0, $zero
/* EF4AC 80045F9C 3C01C16B */  lui        $at, (0xC16B3333 >> 16)
/* EF4B0 80045FA0 34213333 */  ori        $at, $at, (0xC16B3333 & 0xFFFF)
/* EF4B4 80045FA4 44810000 */  mtc1       $at, $f0
/* EF4B8 80045FA8 3C01C190 */  lui        $at, (0xC1900000 >> 16)
/* EF4BC 80045FAC 44811000 */  mtc1       $at, $f2
/* EF4C0 80045FB0 3C014190 */  lui        $at, (0x41900000 >> 16)
/* EF4C4 80045FB4 44812000 */  mtc1       $at, $f4
/* EF4C8 80045FB8 3C013C54 */  lui        $at, (0x3C54FDF4 >> 16)
/* EF4CC 80045FBC 3421FDF4 */  ori        $at, $at, (0x3C54FDF4 & 0xFFFF)
/* EF4D0 80045FC0 44813000 */  mtc1       $at, $f6
/* EF4D4 80045FC4 3C014234 */  lui        $at, (0x42340000 >> 16)
/* EF4D8 80045FC8 44814000 */  mtc1       $at, $f8
/* EF4DC 80045FCC 02402021 */  addu       $a0, $s2, $zero
/* EF4E0 80045FD0 2405012E */  addiu      $a1, $zero, 0x12E
/* EF4E4 80045FD4 AE40001C */  sw         $zero, 0x1C($s2)
/* EF4E8 80045FD8 AE400024 */  sw         $zero, 0x24($s2)
/* EF4EC 80045FDC A6500074 */  sh         $s0, 0x74($s2)
/* EF4F0 80045FE0 A6500076 */  sh         $s0, 0x76($s2)
/* EF4F4 80045FE4 A6500078 */  sh         $s0, 0x78($s2)
/* EF4F8 80045FE8 A650007A */  sh         $s0, 0x7A($s2)
/* EF4FC 80045FEC A6510070 */  sh         $s1, 0x70($s2)
/* EF500 80045FF0 E6400010 */  swc1       $f0, 0x10($s2)
/* EF504 80045FF4 E6420014 */  swc1       $f2, 0x14($s2)
/* EF508 80045FF8 E6440018 */  swc1       $f4, 0x18($s2)
/* EF50C 80045FFC E6460028 */  swc1       $f6, 0x28($s2)
/* EF510 80046000 0C00DFE6 */  jal        func_80037F98_ovl3
/* EF514 80046004 E6480020 */   swc1      $f8, 0x20($s2)
/* EF518 80046008 8E420004 */  lw         $v0, 0x4($s2)
/* EF51C 8004600C 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* EF520 80046010 4481A000 */  mtc1       $at, $f20
/* EF524 80046014 3C01C149 */  lui        $at, (0xC149C28F >> 16)
/* EF528 80046018 3421C28F */  ori        $at, $at, (0xC149C28F & 0xFFFF)
/* EF52C 8004601C 44810000 */  mtc1       $at, $f0
/* EF530 80046020 3C014359 */  lui        $at, (0x4359851F >> 16)
/* EF534 80046024 3421851F */  ori        $at, $at, (0x4359851F & 0xFFFF)
/* EF538 80046028 44811000 */  mtc1       $at, $f2
/* EF53C 8004602C 24040090 */  addiu      $a0, $zero, 0x90
/* EF540 80046030 A0400067 */  sb         $zero, 0x67($v0)
/* EF544 80046034 8E430004 */  lw         $v1, 0x4($s2)
/* EF548 80046038 3C01C2BE */  lui        $at, (0xC2BE0000 >> 16)
/* EF54C 8004603C 44812000 */  mtc1       $at, $f4
/* EF550 80046040 24050090 */  addiu      $a1, $zero, 0x90
/* EF554 80046044 90620066 */  lbu        $v0, 0x66($v1)
/* EF558 80046048 24060090 */  addiu      $a2, $zero, 0x90
/* EF55C 8004604C 24070098 */  addiu      $a3, $zero, 0x98
/* EF560 80046050 34420003 */  ori        $v0, $v0, 0x3
/* EF564 80046054 A0620066 */  sb         $v0, 0x66($v1)
/* EF568 80046058 24020098 */  addiu      $v0, $zero, 0x98
/* EF56C 8004605C 3C018015 */  lui        $at, %hi(D_8014A064)
/* EF570 80046060 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EF574 80046064 3C018015 */  lui        $at, %hi(D_8014A068)
/* EF578 80046068 E43AA068 */  swc1       $f26, %lo(D_8014A068)($at)
/* EF57C 8004606C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EF580 80046070 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EF584 80046074 3C018015 */  lui        $at, %hi(D_8014A070)
/* EF588 80046078 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EF58C 8004607C 3C018015 */  lui        $at, %hi(D_8014A074)
/* EF590 80046080 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* EF594 80046084 3C018015 */  lui        $at, %hi(D_8014A078)
/* EF598 80046088 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EF59C 8004608C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EF5A0 80046090 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* EF5A4 80046094 3C018015 */  lui        $at, %hi(D_8014A080)
/* EF5A8 80046098 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* EF5AC 8004609C 3C018015 */  lui        $at, %hi(D_8014A084)
/* EF5B0 800460A0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EF5B4 800460A4 3C018015 */  lui        $at, %hi(D_8014A088)
/* EF5B8 800460A8 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* EF5BC 800460AC AFA20010 */  sw         $v0, 0x10($sp)
/* EF5C0 800460B0 0C00E34F */  jal        func_80038D3C_ovl3
/* EF5C4 800460B4 AFA20014 */   sw        $v0, 0x14($sp)
/* EF5C8 800460B8 3C01C0C0 */  lui        $at, (0xC0C00000 >> 16)
/* EF5CC 800460BC 44810000 */  mtc1       $at, $f0
/* EF5D0 800460C0 3C018015 */  lui        $at, %hi(D_8014A054)
/* EF5D4 800460C4 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EF5D8 800460C8 3C018015 */  lui        $at, %hi(D_8014A050)
/* EF5DC 800460CC E43AA050 */  swc1       $f26, %lo(D_8014A050)($at)
/* EF5E0 800460D0 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EF5E4 800460D4 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EF5E8 800460D8 3C018017 */  lui        $at, %hi(D_8016E568)
/* EF5EC 800460DC E434E568 */  swc1       $f20, %lo(D_8016E568)($at)
/* EF5F0 800460E0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EF5F4 800460E4 E434D0D4 */  swc1       $f20, %lo(D_8016D0D4)($at)
/* EF5F8 800460E8 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EF5FC 800460EC E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* EF600 800460F0 8FBF0064 */  lw         $ra, 0x64($sp)
/* EF604 800460F4 8FB20060 */  lw         $s2, 0x60($sp)
/* EF608 800460F8 8FB1005C */  lw         $s1, 0x5C($sp)
/* EF60C 800460FC 8FB00058 */  lw         $s0, 0x58($sp)
/* EF610 80046100 D7BA0080 */  ldc1       $f26, 0x80($sp)
/* EF614 80046104 D7B80078 */  ldc1       $f24, 0x78($sp)
/* EF618 80046108 D7B60070 */  ldc1       $f22, 0x70($sp)
/* EF61C 8004610C D7B40068 */  ldc1       $f20, 0x68($sp)
/* EF620 80046110 03E00008 */  jr         $ra
/* EF624 80046114 27BD0088 */   addiu     $sp, $sp, 0x88
.size func_80045D14_ovl3, . - func_80045D14_ovl3
