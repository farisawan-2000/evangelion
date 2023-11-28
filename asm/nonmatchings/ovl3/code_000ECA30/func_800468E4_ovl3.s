glabel func_800468E4_ovl3
/* EFDF4 800468E4 27BDFF88 */  addiu      $sp, $sp, -0x78
/* EFDF8 800468E8 AFBF0064 */  sw         $ra, 0x64($sp)
/* EFDFC 800468EC AFB20060 */  sw         $s2, 0x60($sp)
/* EFE00 800468F0 AFB1005C */  sw         $s1, 0x5C($sp)
/* EFE04 800468F4 AFB00058 */  sw         $s0, 0x58($sp)
/* EFE08 800468F8 F7B60070 */  sdc1       $f22, 0x70($sp)
/* EFE0C 800468FC F7B40068 */  sdc1       $f20, 0x68($sp)
/* EFE10 80046900 0C00E2C2 */  jal        func_80038B08_ovl3
/* EFE14 80046904 2411FFFF */   addiu     $s1, $zero, -0x1
/* EFE18 80046908 24040188 */  addiu      $a0, $zero, 0x188
/* EFE1C 8004690C 24050002 */  addiu      $a1, $zero, 0x2
/* EFE20 80046910 0C00D925 */  jal        func_80036494_ovl3
/* EFE24 80046914 24060018 */   addiu     $a2, $zero, 0x18
/* EFE28 80046918 00408021 */  addu       $s0, $v0, $zero
/* EFE2C 8004691C 8E04000C */  lw         $a0, 0xC($s0)
/* EFE30 80046920 3C0640C6 */  lui        $a2, (0x40C66666 >> 16)
/* EFE34 80046924 34C66666 */  ori        $a2, $a2, (0x40C66666 & 0xFFFF)
/* EFE38 80046928 3C0740A0 */  lui        $a3, (0x40A00000 >> 16)
/* EFE3C 8004692C 0C02915B */  jal        func_800A456C
/* EFE40 80046930 00002821 */   addu      $a1, $zero, $zero
/* EFE44 80046934 8E04000C */  lw         $a0, 0xC($s0)
/* EFE48 80046938 24050040 */  addiu      $a1, $zero, 0x40
/* EFE4C 8004693C 0C028D89 */  jal        func_800A3624
/* EFE50 80046940 24060040 */   addiu     $a2, $zero, 0x40
/* EFE54 80046944 24020078 */  addiu      $v0, $zero, 0x78
/* EFE58 80046948 AFA20010 */  sw         $v0, 0x10($sp)
/* EFE5C 8004694C 8E04000C */  lw         $a0, 0xC($s0)
/* EFE60 80046950 240500FF */  addiu      $a1, $zero, 0xFF
/* EFE64 80046954 240600FF */  addiu      $a2, $zero, 0xFF
/* EFE68 80046958 0C028E41 */  jal        func_800A3904
/* EFE6C 8004695C 240700FF */   addiu     $a3, $zero, 0xFF
/* EFE70 80046960 8E03000C */  lw         $v1, 0xC($s0)
/* EFE74 80046964 24040011 */  addiu      $a0, $zero, 0x11
/* EFE78 80046968 9462001E */  lhu        $v0, 0x1E($v1)
/* EFE7C 8004696C 24050001 */  addiu      $a1, $zero, 0x1
/* EFE80 80046970 24060055 */  addiu      $a2, $zero, 0x55
/* EFE84 80046974 34420106 */  ori        $v0, $v0, 0x106
/* EFE88 80046978 0C00D925 */  jal        func_80036494_ovl3
/* EFE8C 8004697C A462001E */   sh        $v0, 0x1E($v1)
/* EFE90 80046980 00408021 */  addu       $s0, $v0, $zero
/* EFE94 80046984 8E04000C */  lw         $a0, 0xC($s0)
/* EFE98 80046988 24050038 */  addiu      $a1, $zero, 0x38
/* EFE9C 8004698C 0C028F9A */  jal        func_800A3E68
/* EFEA0 80046990 2406004E */   addiu     $a2, $zero, 0x4E
/* EFEA4 80046994 8E04000C */  lw         $a0, 0xC($s0)
/* EFEA8 80046998 24050040 */  addiu      $a1, $zero, 0x40
/* EFEAC 8004699C 0C028D89 */  jal        func_800A3624
/* EFEB0 800469A0 24060040 */   addiu     $a2, $zero, 0x40
/* EFEB4 800469A4 24020080 */  addiu      $v0, $zero, 0x80
/* EFEB8 800469A8 AFA20010 */  sw         $v0, 0x10($sp)
/* EFEBC 800469AC 8E04000C */  lw         $a0, 0xC($s0)
/* EFEC0 800469B0 240500FF */  addiu      $a1, $zero, 0xFF
/* EFEC4 800469B4 240600FF */  addiu      $a2, $zero, 0xFF
/* EFEC8 800469B8 0C028E41 */  jal        func_800A3904
/* EFECC 800469BC 240700FF */   addiu     $a3, $zero, 0xFF
/* EFED0 800469C0 8E03000C */  lw         $v1, 0xC($s0)
/* EFED4 800469C4 9462001E */  lhu        $v0, 0x1E($v1)
/* EFED8 800469C8 34420006 */  ori        $v0, $v0, 0x6
/* EFEDC 800469CC A462001E */  sh         $v0, 0x1E($v1)
/* EFEE0 800469D0 8E03000C */  lw         $v1, 0xC($s0)
/* EFEE4 800469D4 24040031 */  addiu      $a0, $zero, 0x31
/* EFEE8 800469D8 2402004C */  addiu      $v0, $zero, 0x4C
/* EFEEC 800469DC 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFEF0 800469E0 A462001C */   sh        $v0, 0x1C($v1)
/* EFEF4 800469E4 00409021 */  addu       $s2, $v0, $zero
/* EFEF8 800469E8 3C01C23E */  lui        $at, (0xC23E999A >> 16)
/* EFEFC 800469EC 3421999A */  ori        $at, $at, (0xC23E999A & 0xFFFF)
/* EFF00 800469F0 44811000 */  mtc1       $at, $f2
/* EFF04 800469F4 3C01438D */  lui        $at, (0x438DFC29 >> 16)
/* EFF08 800469F8 3421FC29 */  ori        $at, $at, (0x438DFC29 & 0xFFFF)
/* EFF0C 800469FC 44812000 */  mtc1       $at, $f4
/* EFF10 80046A00 3C01C28C */  lui        $at, (0xC28C851F >> 16)
/* EFF14 80046A04 3421851F */  ori        $at, $at, (0xC28C851F & 0xFFFF)
/* EFF18 80046A08 44813000 */  mtc1       $at, $f6
/* EFF1C 80046A0C 3C013E19 */  lui        $at, (0x3E19999A >> 16)
/* EFF20 80046A10 3421999A */  ori        $at, $at, (0x3E19999A & 0xFFFF)
/* EFF24 80046A14 4481A000 */  mtc1       $at, $f20
/* EFF28 80046A18 3C01433E */  lui        $at, (0x433E0000 >> 16)
/* EFF2C 80046A1C 44810000 */  mtc1       $at, $f0
/* EFF30 80046A20 02402021 */  addu       $a0, $s2, $zero
/* EFF34 80046A24 24050056 */  addiu      $a1, $zero, 0x56
/* EFF38 80046A28 241000FF */  addiu      $s0, $zero, 0xFF
/* EFF3C 80046A2C AE40001C */  sw         $zero, 0x1C($s2)
/* EFF40 80046A30 AE400024 */  sw         $zero, 0x24($s2)
/* EFF44 80046A34 A6500074 */  sh         $s0, 0x74($s2)
/* EFF48 80046A38 A6500076 */  sh         $s0, 0x76($s2)
/* EFF4C 80046A3C A6500078 */  sh         $s0, 0x78($s2)
/* EFF50 80046A40 A650007A */  sh         $s0, 0x7A($s2)
/* EFF54 80046A44 A6510070 */  sh         $s1, 0x70($s2)
/* EFF58 80046A48 E6540028 */  swc1       $f20, 0x28($s2)
/* EFF5C 80046A4C E6420010 */  swc1       $f2, 0x10($s2)
/* EFF60 80046A50 E6440014 */  swc1       $f4, 0x14($s2)
/* EFF64 80046A54 E6460018 */  swc1       $f6, 0x18($s2)
/* EFF68 80046A58 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFF6C 80046A5C E6400020 */   swc1      $f0, 0x20($s2)
/* EFF70 80046A60 8E420004 */  lw         $v0, 0x4($s2)
/* EFF74 80046A64 A0400067 */  sb         $zero, 0x67($v0)
/* EFF78 80046A68 8E430004 */  lw         $v1, 0x4($s2)
/* EFF7C 80046A6C 90620066 */  lbu        $v0, 0x66($v1)
/* EFF80 80046A70 24040032 */  addiu      $a0, $zero, 0x32
/* EFF84 80046A74 34420007 */  ori        $v0, $v0, 0x7
/* EFF88 80046A78 0C00DFA8 */  jal        func_80037EA0_ovl3
/* EFF8C 80046A7C A0620066 */   sb        $v0, 0x66($v1)
/* EFF90 80046A80 00409021 */  addu       $s2, $v0, $zero
/* EFF94 80046A84 3C01C311 */  lui        $at, (0xC3110F5C >> 16)
/* EFF98 80046A88 34210F5C */  ori        $at, $at, (0xC3110F5C & 0xFFFF)
/* EFF9C 80046A8C 44810000 */  mtc1       $at, $f0
/* EFFA0 80046A90 3C01438F */  lui        $at, (0x438F7C29 >> 16)
/* EFFA4 80046A94 34217C29 */  ori        $at, $at, (0x438F7C29 & 0xFFFF)
/* EFFA8 80046A98 44811000 */  mtc1       $at, $f2
/* EFFAC 80046A9C 3C01C221 */  lui        $at, (0xC2210A3D >> 16)
/* EFFB0 80046AA0 34210A3D */  ori        $at, $at, (0xC2210A3D & 0xFFFF)
/* EFFB4 80046AA4 44812000 */  mtc1       $at, $f4
/* EFFB8 80046AA8 3C01432A */  lui        $at, (0x432A0000 >> 16)
/* EFFBC 80046AAC 44813000 */  mtc1       $at, $f6
/* EFFC0 80046AB0 02402021 */  addu       $a0, $s2, $zero
/* EFFC4 80046AB4 24050056 */  addiu      $a1, $zero, 0x56
/* EFFC8 80046AB8 E6540028 */  swc1       $f20, 0x28($s2)
/* EFFCC 80046ABC AE40001C */  sw         $zero, 0x1C($s2)
/* EFFD0 80046AC0 AE400024 */  sw         $zero, 0x24($s2)
/* EFFD4 80046AC4 A6500074 */  sh         $s0, 0x74($s2)
/* EFFD8 80046AC8 A6500076 */  sh         $s0, 0x76($s2)
/* EFFDC 80046ACC A6500078 */  sh         $s0, 0x78($s2)
/* EFFE0 80046AD0 A650007A */  sh         $s0, 0x7A($s2)
/* EFFE4 80046AD4 A6510070 */  sh         $s1, 0x70($s2)
/* EFFE8 80046AD8 E6400010 */  swc1       $f0, 0x10($s2)
/* EFFEC 80046ADC E6420014 */  swc1       $f2, 0x14($s2)
/* EFFF0 80046AE0 E6440018 */  swc1       $f4, 0x18($s2)
/* EFFF4 80046AE4 0C00DFE6 */  jal        func_80037F98_ovl3
/* EFFF8 80046AE8 E6460020 */   swc1      $f6, 0x20($s2)
/* EFFFC 80046AEC 8E420004 */  lw         $v0, 0x4($s2)
/* F0000 80046AF0 A0400067 */  sb         $zero, 0x67($v0)
/* F0004 80046AF4 8E430004 */  lw         $v1, 0x4($s2)
/* F0008 80046AF8 90620066 */  lbu        $v0, 0x66($v1)
/* F000C 80046AFC 24040033 */  addiu      $a0, $zero, 0x33
/* F0010 80046B00 34420007 */  ori        $v0, $v0, 0x7
/* F0014 80046B04 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F0018 80046B08 A0620066 */   sb        $v0, 0x66($v1)
/* F001C 80046B0C 00409021 */  addu       $s2, $v0, $zero
/* F0020 80046B10 3C01C000 */  lui        $at, (0xC0000000 >> 16)
/* F0024 80046B14 44810000 */  mtc1       $at, $f0
/* F0028 80046B18 3C013D23 */  lui        $at, (0x3D23D70A >> 16)
/* F002C 80046B1C 3421D70A */  ori        $at, $at, (0x3D23D70A & 0xFFFF)
/* F0030 80046B20 4481A000 */  mtc1       $at, $f20
/* F0034 80046B24 3C014020 */  lui        $at, (0x40200000 >> 16)
/* F0038 80046B28 4481B000 */  mtc1       $at, $f22
/* F003C 80046B2C 02402021 */  addu       $a0, $s2, $zero
/* F0040 80046B30 240500A3 */  addiu      $a1, $zero, 0xA3
/* F0044 80046B34 AE400010 */  sw         $zero, 0x10($s2)
/* F0048 80046B38 AE400018 */  sw         $zero, 0x18($s2)
/* F004C 80046B3C AE400020 */  sw         $zero, 0x20($s2)
/* F0050 80046B40 AE400024 */  sw         $zero, 0x24($s2)
/* F0054 80046B44 A6500074 */  sh         $s0, 0x74($s2)
/* F0058 80046B48 A6500076 */  sh         $s0, 0x76($s2)
/* F005C 80046B4C A6500078 */  sh         $s0, 0x78($s2)
/* F0060 80046B50 A650007A */  sh         $s0, 0x7A($s2)
/* F0064 80046B54 E6540028 */  swc1       $f20, 0x28($s2)
/* F0068 80046B58 E656001C */  swc1       $f22, 0x1C($s2)
/* F006C 80046B5C 0C00DFE6 */  jal        func_80037F98_ovl3
/* F0070 80046B60 E6400014 */   swc1      $f0, 0x14($s2)
/* F0074 80046B64 8E420004 */  lw         $v0, 0x4($s2)
/* F0078 80046B68 2411000B */  addiu      $s1, $zero, 0xB
/* F007C 80046B6C A0510067 */  sb         $s1, 0x67($v0)
/* F0080 80046B70 8E430004 */  lw         $v1, 0x4($s2)
/* F0084 80046B74 90620066 */  lbu        $v0, 0x66($v1)
/* F0088 80046B78 24040034 */  addiu      $a0, $zero, 0x34
/* F008C 80046B7C 34420023 */  ori        $v0, $v0, 0x23
/* F0090 80046B80 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F0094 80046B84 A0620066 */   sb        $v0, 0x66($v1)
/* F0098 80046B88 00409021 */  addu       $s2, $v0, $zero
/* F009C 80046B8C 02402021 */  addu       $a0, $s2, $zero
/* F00A0 80046B90 240500A4 */  addiu      $a1, $zero, 0xA4
/* F00A4 80046B94 AE400010 */  sw         $zero, 0x10($s2)
/* F00A8 80046B98 AE400014 */  sw         $zero, 0x14($s2)
/* F00AC 80046B9C AE400018 */  sw         $zero, 0x18($s2)
/* F00B0 80046BA0 E6540028 */  swc1       $f20, 0x28($s2)
/* F00B4 80046BA4 E656001C */  swc1       $f22, 0x1C($s2)
/* F00B8 80046BA8 AE400020 */  sw         $zero, 0x20($s2)
/* F00BC 80046BAC AE400024 */  sw         $zero, 0x24($s2)
/* F00C0 80046BB0 A6500074 */  sh         $s0, 0x74($s2)
/* F00C4 80046BB4 A6500076 */  sh         $s0, 0x76($s2)
/* F00C8 80046BB8 A6500078 */  sh         $s0, 0x78($s2)
/* F00CC 80046BBC 0C00DFE6 */  jal        func_80037F98_ovl3
/* F00D0 80046BC0 A650007A */   sh        $s0, 0x7A($s2)
/* F00D4 80046BC4 8E420004 */  lw         $v0, 0x4($s2)
/* F00D8 80046BC8 A0510067 */  sb         $s1, 0x67($v0)
/* F00DC 80046BCC 8E430004 */  lw         $v1, 0x4($s2)
/* F00E0 80046BD0 90620066 */  lbu        $v0, 0x66($v1)
/* F00E4 80046BD4 24040035 */  addiu      $a0, $zero, 0x35
/* F00E8 80046BD8 34420007 */  ori        $v0, $v0, 0x7
/* F00EC 80046BDC 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F00F0 80046BE0 A0620066 */   sb        $v0, 0x66($v1)
/* F00F4 80046BE4 00409021 */  addu       $s2, $v0, $zero
/* F00F8 80046BE8 3C01C0AA */  lui        $at, (0xC0AA3D71 >> 16)
/* F00FC 80046BEC 34213D71 */  ori        $at, $at, (0xC0AA3D71 & 0xFFFF)
/* F0100 80046BF0 4481B000 */  mtc1       $at, $f22
/* F0104 80046BF4 3C0141CB */  lui        $at, (0x41CB5C29 >> 16)
/* F0108 80046BF8 34215C29 */  ori        $at, $at, (0x41CB5C29 & 0xFFFF)
/* F010C 80046BFC 44810000 */  mtc1       $at, $f0
/* F0110 80046C00 3C013D1B */  lui        $at, (0x3D1BA5E3 >> 16)
/* F0114 80046C04 3421A5E3 */  ori        $at, $at, (0x3D1BA5E3 & 0xFFFF)
/* F0118 80046C08 4481A000 */  mtc1       $at, $f20
/* F011C 80046C0C 02402021 */  addu       $a0, $s2, $zero
/* F0120 80046C10 240500C8 */  addiu      $a1, $zero, 0xC8
/* F0124 80046C14 AE400010 */  sw         $zero, 0x10($s2)
/* F0128 80046C18 AE40001C */  sw         $zero, 0x1C($s2)
/* F012C 80046C1C AE400020 */  sw         $zero, 0x20($s2)
/* F0130 80046C20 AE400024 */  sw         $zero, 0x24($s2)
/* F0134 80046C24 A6500074 */  sh         $s0, 0x74($s2)
/* F0138 80046C28 A6500076 */  sh         $s0, 0x76($s2)
/* F013C 80046C2C A6500078 */  sh         $s0, 0x78($s2)
/* F0140 80046C30 A650007A */  sh         $s0, 0x7A($s2)
/* F0144 80046C34 A6400070 */  sh         $zero, 0x70($s2)
/* F0148 80046C38 E6560014 */  swc1       $f22, 0x14($s2)
/* F014C 80046C3C E6540028 */  swc1       $f20, 0x28($s2)
/* F0150 80046C40 0C00DFE6 */  jal        func_80037F98_ovl3
/* F0154 80046C44 E6400018 */   swc1      $f0, 0x18($s2)
/* F0158 80046C48 8E420004 */  lw         $v0, 0x4($s2)
/* F015C 80046C4C A0400067 */  sb         $zero, 0x67($v0)
/* F0160 80046C50 8E430004 */  lw         $v1, 0x4($s2)
/* F0164 80046C54 24110001 */  addiu      $s1, $zero, 0x1
/* F0168 80046C58 A6510072 */  sh         $s1, 0x72($s2)
/* F016C 80046C5C 90620066 */  lbu        $v0, 0x66($v1)
/* F0170 80046C60 24040036 */  addiu      $a0, $zero, 0x36
/* F0174 80046C64 34420007 */  ori        $v0, $v0, 0x7
/* F0178 80046C68 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F017C 80046C6C A0620066 */   sb        $v0, 0x66($v1)
/* F0180 80046C70 00409021 */  addu       $s2, $v0, $zero
/* F0184 80046C74 3C01C100 */  lui        $at, (0xC1000000 >> 16)
/* F0188 80046C78 44810000 */  mtc1       $at, $f0
/* F018C 80046C7C 02402021 */  addu       $a0, $s2, $zero
/* F0190 80046C80 240500C8 */  addiu      $a1, $zero, 0xC8
/* F0194 80046C84 AE400010 */  sw         $zero, 0x10($s2)
/* F0198 80046C88 E6560014 */  swc1       $f22, 0x14($s2)
/* F019C 80046C8C E6540028 */  swc1       $f20, 0x28($s2)
/* F01A0 80046C90 AE40001C */  sw         $zero, 0x1C($s2)
/* F01A4 80046C94 AE400020 */  sw         $zero, 0x20($s2)
/* F01A8 80046C98 AE400024 */  sw         $zero, 0x24($s2)
/* F01AC 80046C9C A6500074 */  sh         $s0, 0x74($s2)
/* F01B0 80046CA0 A6500076 */  sh         $s0, 0x76($s2)
/* F01B4 80046CA4 A6500078 */  sh         $s0, 0x78($s2)
/* F01B8 80046CA8 A650007A */  sh         $s0, 0x7A($s2)
/* F01BC 80046CAC A6400070 */  sh         $zero, 0x70($s2)
/* F01C0 80046CB0 0C00DFE6 */  jal        func_80037F98_ovl3
/* F01C4 80046CB4 E6400018 */   swc1      $f0, 0x18($s2)
/* F01C8 80046CB8 8E420004 */  lw         $v0, 0x4($s2)
/* F01CC 80046CBC A0400067 */  sb         $zero, 0x67($v0)
/* F01D0 80046CC0 8E430004 */  lw         $v1, 0x4($s2)
/* F01D4 80046CC4 A6510072 */  sh         $s1, 0x72($s2)
/* F01D8 80046CC8 90620066 */  lbu        $v0, 0x66($v1)
/* F01DC 80046CCC 24040037 */  addiu      $a0, $zero, 0x37
/* F01E0 80046CD0 34420007 */  ori        $v0, $v0, 0x7
/* F01E4 80046CD4 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F01E8 80046CD8 A0620066 */   sb        $v0, 0x66($v1)
/* F01EC 80046CDC 00409021 */  addu       $s2, $v0, $zero
/* F01F0 80046CE0 3C01C1FA */  lui        $at, (0xC1FAF5C3 >> 16)
/* F01F4 80046CE4 3421F5C3 */  ori        $at, $at, (0xC1FAF5C3 & 0xFFFF)
/* F01F8 80046CE8 44810000 */  mtc1       $at, $f0
/* F01FC 80046CEC 02402021 */  addu       $a0, $s2, $zero
/* F0200 80046CF0 240500C8 */  addiu      $a1, $zero, 0xC8
/* F0204 80046CF4 AE400010 */  sw         $zero, 0x10($s2)
/* F0208 80046CF8 E6560014 */  swc1       $f22, 0x14($s2)
/* F020C 80046CFC E6540028 */  swc1       $f20, 0x28($s2)
/* F0210 80046D00 AE40001C */  sw         $zero, 0x1C($s2)
/* F0214 80046D04 AE400020 */  sw         $zero, 0x20($s2)
/* F0218 80046D08 AE400024 */  sw         $zero, 0x24($s2)
/* F021C 80046D0C A6500074 */  sh         $s0, 0x74($s2)
/* F0220 80046D10 A6500076 */  sh         $s0, 0x76($s2)
/* F0224 80046D14 A6500078 */  sh         $s0, 0x78($s2)
/* F0228 80046D18 A650007A */  sh         $s0, 0x7A($s2)
/* F022C 80046D1C A6400070 */  sh         $zero, 0x70($s2)
/* F0230 80046D20 0C00DFE6 */  jal        func_80037F98_ovl3
/* F0234 80046D24 E6400018 */   swc1      $f0, 0x18($s2)
/* F0238 80046D28 8E420004 */  lw         $v0, 0x4($s2)
/* F023C 80046D2C 3C0141B9 */  lui        $at, (0x41B9999A >> 16)
/* F0240 80046D30 3421999A */  ori        $at, $at, (0x41B9999A & 0xFFFF)
/* F0244 80046D34 44810000 */  mtc1       $at, $f0
/* F0248 80046D38 3C01C00C */  lui        $at, (0xC00C28F6 >> 16)
/* F024C 80046D3C 342128F6 */  ori        $at, $at, (0xC00C28F6 & 0xFFFF)
/* F0250 80046D40 44811000 */  mtc1       $at, $f2
/* F0254 80046D44 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* F0258 80046D48 44812000 */  mtc1       $at, $f4
/* F025C 80046D4C 3C01C138 */  lui        $at, (0xC13851EC >> 16)
/* F0260 80046D50 342151EC */  ori        $at, $at, (0xC13851EC & 0xFFFF)
/* F0264 80046D54 44813000 */  mtc1       $at, $f6
/* F0268 80046D58 3C014367 */  lui        $at, (0x43678CCD >> 16)
/* F026C 80046D5C 34218CCD */  ori        $at, $at, (0x43678CCD & 0xFFFF)
/* F0270 80046D60 44814000 */  mtc1       $at, $f8
/* F0274 80046D64 A0400067 */  sb         $zero, 0x67($v0)
/* F0278 80046D68 8E430004 */  lw         $v1, 0x4($s2)
/* F027C 80046D6C A6510072 */  sh         $s1, 0x72($s2)
/* F0280 80046D70 90620066 */  lbu        $v0, 0x66($v1)
/* F0284 80046D74 3C01C2A5 */  lui        $at, (0xC2A5D70A >> 16)
/* F0288 80046D78 3421D70A */  ori        $at, $at, (0xC2A5D70A & 0xFFFF)
/* F028C 80046D7C 44815000 */  mtc1       $at, $f10
/* F0290 80046D80 34420007 */  ori        $v0, $v0, 0x7
/* F0294 80046D84 A0620066 */  sb         $v0, 0x66($v1)
/* F0298 80046D88 3C018015 */  lui        $at, %hi(D_8014A064)
/* F029C 80046D8C AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F02A0 80046D90 3C018015 */  lui        $at, %hi(D_8014A068)
/* F02A4 80046D94 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* F02A8 80046D98 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F02AC 80046D9C E422A06C */  swc1       $f2, %lo(D_8014A06C)($at)
/* F02B0 80046DA0 3C018015 */  lui        $at, %hi(D_8014A070)
/* F02B4 80046DA4 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F02B8 80046DA8 3C018015 */  lui        $at, %hi(D_8014A074)
/* F02BC 80046DAC E424A074 */  swc1       $f4, %lo(D_8014A074)($at)
/* F02C0 80046DB0 3C018015 */  lui        $at, %hi(D_8014A078)
/* F02C4 80046DB4 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F02C8 80046DB8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F02CC 80046DBC E426A07C */  swc1       $f6, %lo(D_8014A07C)($at)
/* F02D0 80046DC0 3C018015 */  lui        $at, %hi(D_8014A080)
/* F02D4 80046DC4 E428A080 */  swc1       $f8, %lo(D_8014A080)($at)
/* F02D8 80046DC8 3C018015 */  lui        $at, %hi(D_8014A084)
/* F02DC 80046DCC AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F02E0 80046DD0 3C018015 */  lui        $at, %hi(D_8014A088)
/* F02E4 80046DD4 0C00E339 */  jal        func_80038CE4_ovl3
/* F02E8 80046DD8 E42AA088 */   swc1      $f10, %lo(D_8014A088)($at)
/* F02EC 80046DDC 3C0141A9 */  lui        $at, (0x41A9AE14 >> 16)
/* F02F0 80046DE0 3421AE14 */  ori        $at, $at, (0x41A9AE14 & 0xFFFF)
/* F02F4 80046DE4 44810000 */  mtc1       $at, $f0
/* F02F8 80046DE8 3C01C027 */  lui        $at, (0xC0270A3D >> 16)
/* F02FC 80046DEC 34210A3D */  ori        $at, $at, (0xC0270A3D & 0xFFFF)
/* F0300 80046DF0 44811000 */  mtc1       $at, $f2
/* F0304 80046DF4 3C014199 */  lui        $at, (0x4199851F >> 16)
/* F0308 80046DF8 3421851F */  ori        $at, $at, (0x4199851F & 0xFFFF)
/* F030C 80046DFC 44812000 */  mtc1       $at, $f4
/* F0310 80046E00 3C0141BB */  lui        $at, (0x41BB47AE >> 16)
/* F0314 80046E04 342147AE */  ori        $at, $at, (0x41BB47AE & 0xFFFF)
/* F0318 80046E08 44813000 */  mtc1       $at, $f6
/* F031C 80046E0C 3C01417E */  lui        $at, (0x417EB852 >> 16)
/* F0320 80046E10 3421B852 */  ori        $at, $at, (0x417EB852 & 0xFFFF)
/* F0324 80046E14 44814000 */  mtc1       $at, $f8
/* F0328 80046E18 3C018015 */  lui        $at, %hi(D_8014A054)
/* F032C 80046E1C AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* F0330 80046E20 3C018015 */  lui        $at, %hi(D_8014A050)
/* F0334 80046E24 E420A050 */  swc1       $f0, %lo(D_8014A050)($at)
/* F0338 80046E28 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* F033C 80046E2C E422D1A8 */  swc1       $f2, %lo(D_8016D1A8)($at)
/* F0340 80046E30 3C018017 */  lui        $at, %hi(D_8016E568)
/* F0344 80046E34 E424E568 */  swc1       $f4, %lo(D_8016E568)($at)
/* F0348 80046E38 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* F034C 80046E3C E426D0D0 */  swc1       $f6, %lo(D_8016D0D0)($at)
/* F0350 80046E40 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* F0354 80046E44 E428D0D4 */  swc1       $f8, %lo(D_8016D0D4)($at)
/* F0358 80046E48 8FBF0064 */  lw         $ra, 0x64($sp)
/* F035C 80046E4C 8FB20060 */  lw         $s2, 0x60($sp)
/* F0360 80046E50 8FB1005C */  lw         $s1, 0x5C($sp)
/* F0364 80046E54 8FB00058 */  lw         $s0, 0x58($sp)
/* F0368 80046E58 D7B60070 */  ldc1       $f22, 0x70($sp)
/* F036C 80046E5C D7B40068 */  ldc1       $f20, 0x68($sp)
/* F0370 80046E60 03E00008 */  jr         $ra
/* F0374 80046E64 27BD0078 */   addiu     $sp, $sp, 0x78
.size func_800468E4_ovl3, . - func_800468E4_ovl3
