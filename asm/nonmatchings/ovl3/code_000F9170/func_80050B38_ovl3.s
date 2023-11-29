glabel func_80050B38_ovl3
/* FA048 80050B38 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FA04C 80050B3C AFBF002C */  sw         $ra, 0x2C($sp)
/* FA050 80050B40 AFB20028 */  sw         $s2, 0x28($sp)
/* FA054 80050B44 AFB10024 */  sw         $s1, 0x24($sp)
/* FA058 80050B48 AFB00020 */  sw         $s0, 0x20($sp)
/* FA05C 80050B4C F7B40030 */  sdc1       $f20, 0x30($sp)
/* FA060 80050B50 0C00E109 */  jal        func_80038424_ovl3
/* FA064 80050B54 00009021 */   addu      $s2, $zero, $zero
/* FA068 80050B58 24040011 */  addiu      $a0, $zero, 0x11
/* FA06C 80050B5C 24050001 */  addiu      $a1, $zero, 0x1
/* FA070 80050B60 0C00D925 */  jal        func_80036494_ovl3
/* FA074 80050B64 24060017 */   addiu     $a2, $zero, 0x17
/* FA078 80050B68 00408821 */  addu       $s1, $v0, $zero
/* FA07C 80050B6C 8E24000C */  lw         $a0, 0xC($s1)
/* FA080 80050B70 24050038 */  addiu      $a1, $zero, 0x38
/* FA084 80050B74 0C028F9A */  jal        func_800A3E68
/* FA088 80050B78 24060071 */   addiu     $a2, $zero, 0x71
/* FA08C 80050B7C 8E24000C */  lw         $a0, 0xC($s1)
/* FA090 80050B80 24050040 */  addiu      $a1, $zero, 0x40
/* FA094 80050B84 0C028D89 */  jal        func_800A3624
/* FA098 80050B88 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA09C 80050B8C 24020048 */  addiu      $v0, $zero, 0x48
/* FA0A0 80050B90 AFA20010 */  sw         $v0, 0x10($sp)
/* FA0A4 80050B94 8E24000C */  lw         $a0, 0xC($s1)
/* FA0A8 80050B98 240500FE */  addiu      $a1, $zero, 0xFE
/* FA0AC 80050B9C 24060065 */  addiu      $a2, $zero, 0x65
/* FA0B0 80050BA0 0C028E41 */  jal        func_800A3904
/* FA0B4 80050BA4 00003821 */   addu      $a3, $zero, $zero
/* FA0B8 80050BA8 3C048034 */  lui        $a0, (0x80343E50 >> 16)
/* FA0BC 80050BAC 34843E50 */  ori        $a0, $a0, (0x80343E50 & 0xFFFF)
/* FA0C0 80050BB0 24050217 */  addiu      $a1, $zero, 0x217
/* FA0C4 80050BB4 24060009 */  addiu      $a2, $zero, 0x9
/* FA0C8 80050BB8 0C00D9E0 */  jal        func_80036780_ovl3
/* FA0CC 80050BBC 24070033 */   addiu     $a3, $zero, 0x33
/* FA0D0 80050BC0 00408821 */  addu       $s1, $v0, $zero
/* FA0D4 80050BC4 8E24000C */  lw         $a0, 0xC($s1)
/* FA0D8 80050BC8 24050040 */  addiu      $a1, $zero, 0x40
/* FA0DC 80050BCC 0C028D89 */  jal        func_800A3624
/* FA0E0 80050BD0 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA0E4 80050BD4 8E23000C */  lw         $v1, 0xC($s1)
/* FA0E8 80050BD8 24040221 */  addiu      $a0, $zero, 0x221
/* FA0EC 80050BDC 9462001E */  lhu        $v0, 0x1E($v1)
/* FA0F0 80050BE0 24050002 */  addiu      $a1, $zero, 0x2
/* FA0F4 80050BE4 24060031 */  addiu      $a2, $zero, 0x31
/* FA0F8 80050BE8 34420004 */  ori        $v0, $v0, 0x4
/* FA0FC 80050BEC 0C00D925 */  jal        func_80036494_ovl3
/* FA100 80050BF0 A462001E */   sh        $v0, 0x1E($v1)
/* FA104 80050BF4 00408821 */  addu       $s1, $v0, $zero
/* FA108 80050BF8 8E24000C */  lw         $a0, 0xC($s1)
/* FA10C 80050BFC 8C82000C */  lw         $v0, 0xC($a0)
/* FA110 80050C00 94450000 */  lhu        $a1, 0x0($v0)
/* FA114 80050C04 94460002 */  lhu        $a2, 0x2($v0)
/* FA118 80050C08 00052842 */  srl        $a1, $a1, 1
/* FA11C 80050C0C 0C02912A */  jal        func_800A44A8
/* FA120 80050C10 00063042 */   srl       $a2, $a2, 1
/* FA124 80050C14 8E24000C */  lw         $a0, 0xC($s1)
/* FA128 80050C18 24050248 */  addiu      $a1, $zero, 0x248
/* FA12C 80050C1C 0C028D89 */  jal        func_800A3624
/* FA130 80050C20 240601E0 */   addiu     $a2, $zero, 0x1E0
/* FA134 80050C24 8E23000C */  lw         $v1, 0xC($s1)
/* FA138 80050C28 24040220 */  addiu      $a0, $zero, 0x220
/* FA13C 80050C2C 9462001E */  lhu        $v0, 0x1E($v1)
/* FA140 80050C30 24050002 */  addiu      $a1, $zero, 0x2
/* FA144 80050C34 24060032 */  addiu      $a2, $zero, 0x32
/* FA148 80050C38 34420004 */  ori        $v0, $v0, 0x4
/* FA14C 80050C3C 0C00D925 */  jal        func_80036494_ovl3
/* FA150 80050C40 A462001E */   sh        $v0, 0x1E($v1)
/* FA154 80050C44 00408821 */  addu       $s1, $v0, $zero
/* FA158 80050C48 8E24000C */  lw         $a0, 0xC($s1)
/* FA15C 80050C4C 8C82000C */  lw         $v0, 0xC($a0)
/* FA160 80050C50 94450000 */  lhu        $a1, 0x0($v0)
/* FA164 80050C54 94460002 */  lhu        $a2, 0x2($v0)
/* FA168 80050C58 00052842 */  srl        $a1, $a1, 1
/* FA16C 80050C5C 0C02912A */  jal        func_800A44A8
/* FA170 80050C60 00063042 */   srl       $a2, $a2, 1
/* FA174 80050C64 8E24000C */  lw         $a0, 0xC($s1)
/* FA178 80050C68 24050248 */  addiu      $a1, $zero, 0x248
/* FA17C 80050C6C 0C028D89 */  jal        func_800A3624
/* FA180 80050C70 240601E0 */   addiu     $a2, $zero, 0x1E0
/* FA184 80050C74 8E23000C */  lw         $v1, 0xC($s1)
/* FA188 80050C78 9462001E */  lhu        $v0, 0x1E($v1)
/* FA18C 80050C7C 3C014000 */  lui        $at, (0x40000000 >> 16)
/* FA190 80050C80 4481A000 */  mtc1       $at, $f20
/* FA194 80050C84 34420004 */  ori        $v0, $v0, 0x4
/* FA198 80050C88 A462001E */  sh         $v0, 0x1E($v1)
/* FA19C 80050C8C 26440222 */  addiu      $a0, $s2, 0x222
.L80050C90_ovl3:
/* FA1A0 80050C90 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* FA1A4 80050C94 24050002 */  addiu      $a1, $zero, 0x2
/* FA1A8 80050C98 26500025 */  addiu      $s0, $s2, 0x25
/* FA1AC 80050C9C 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* FA1B0 80050CA0 0C00D925 */  jal        func_80036494_ovl3
/* FA1B4 80050CA4 02003021 */   addu      $a2, $s0, $zero
/* FA1B8 80050CA8 00408821 */  addu       $s1, $v0, $zero
/* FA1BC 80050CAC 8E24000C */  lw         $a0, 0xC($s1)
/* FA1C0 80050CB0 4406A000 */  mfc1       $a2, $f20
/* FA1C4 80050CB4 4407A000 */  mfc1       $a3, $f20
/* FA1C8 80050CB8 00000000 */  nop
/* FA1CC 80050CBC 0C02915B */  jal        func_800A456C
/* FA1D0 80050CC0 00002821 */   addu      $a1, $zero, $zero
/* FA1D4 80050CC4 8E24000C */  lw         $a0, 0xC($s1)
/* FA1D8 80050CC8 24050040 */  addiu      $a1, $zero, 0x40
/* FA1DC 80050CCC 0C028D89 */  jal        func_800A3624
/* FA1E0 80050CD0 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA1E4 80050CD4 240200F0 */  addiu      $v0, $zero, 0xF0
/* FA1E8 80050CD8 AFA20010 */  sw         $v0, 0x10($sp)
/* FA1EC 80050CDC 8E24000C */  lw         $a0, 0xC($s1)
/* FA1F0 80050CE0 240500FF */  addiu      $a1, $zero, 0xFF
/* FA1F4 80050CE4 240600FF */  addiu      $a2, $zero, 0xFF
/* FA1F8 80050CE8 0C028E41 */  jal        func_800A3904
/* FA1FC 80050CEC 240700FF */   addiu     $a3, $zero, 0xFF
/* FA200 80050CF0 8E23000C */  lw         $v1, 0xC($s1)
/* FA204 80050CF4 2402004B */  addiu      $v0, $zero, 0x4B
/* FA208 80050CF8 A462001C */  sh         $v0, 0x1C($v1)
/* FA20C 80050CFC 8E23000C */  lw         $v1, 0xC($s1)
/* FA210 80050D00 02002021 */  addu       $a0, $s0, $zero
/* FA214 80050D04 9462001E */  lhu        $v0, 0x1E($v1)
/* FA218 80050D08 2645002B */  addiu      $a1, $s2, 0x2B
/* FA21C 80050D0C 30A5FFFF */  andi       $a1, $a1, 0xFFFF
/* FA220 80050D10 34420004 */  ori        $v0, $v0, 0x4
/* FA224 80050D14 0C00DD19 */  jal        func_80037464_ovl3
/* FA228 80050D18 A462001E */   sh        $v0, 0x1E($v1)
/* FA22C 80050D1C 00408821 */  addu       $s1, $v0, $zero
/* FA230 80050D20 8E24000C */  lw         $a0, 0xC($s1)
/* FA234 80050D24 4406A000 */  mfc1       $a2, $f20
/* FA238 80050D28 4407A000 */  mfc1       $a3, $f20
/* FA23C 80050D2C 00000000 */  nop
/* FA240 80050D30 0C02915B */  jal        func_800A456C
/* FA244 80050D34 00002821 */   addu      $a1, $zero, $zero
/* FA248 80050D38 8E24000C */  lw         $a0, 0xC($s1)
/* FA24C 80050D3C 24050040 */  addiu      $a1, $zero, 0x40
/* FA250 80050D40 0C028D89 */  jal        func_800A3624
/* FA254 80050D44 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA258 80050D48 8E24000C */  lw         $a0, 0xC($s1)
/* FA25C 80050D4C 2405000F */  addiu      $a1, $zero, 0xF
/* FA260 80050D50 0C00DE6C */  jal        func_800379B0_ovl3
/* FA264 80050D54 3406FC00 */   ori       $a2, $zero, 0xFC00
/* FA268 80050D58 24020080 */  addiu      $v0, $zero, 0x80
/* FA26C 80050D5C AFA20010 */  sw         $v0, 0x10($sp)
/* FA270 80050D60 8E24000C */  lw         $a0, 0xC($s1)
/* FA274 80050D64 240500FF */  addiu      $a1, $zero, 0xFF
/* FA278 80050D68 240600FF */  addiu      $a2, $zero, 0xFF
/* FA27C 80050D6C 0C028E41 */  jal        func_800A3904
/* FA280 80050D70 240700FF */   addiu     $a3, $zero, 0xFF
/* FA284 80050D74 8E23000C */  lw         $v1, 0xC($s1)
/* FA288 80050D78 2402004A */  addiu      $v0, $zero, 0x4A
/* FA28C 80050D7C A462001C */  sh         $v0, 0x1C($v1)
/* FA290 80050D80 8E23000C */  lw         $v1, 0xC($s1)
/* FA294 80050D84 9462001E */  lhu        $v0, 0x1E($v1)
/* FA298 80050D88 26520001 */  addiu      $s2, $s2, 0x1
/* FA29C 80050D8C 02002021 */  addu       $a0, $s0, $zero
/* FA2A0 80050D90 34420004 */  ori        $v0, $v0, 0x4
/* FA2A4 80050D94 0C00D8C1 */  jal        func_80036304_ovl3
/* FA2A8 80050D98 A462001E */   sh        $v0, 0x1E($v1)
/* FA2AC 80050D9C 8C44000C */  lw         $a0, 0xC($v0)
/* FA2B0 80050DA0 24050001 */  addiu      $a1, $zero, 0x1
/* FA2B4 80050DA4 0C00DE72 */  jal        func_800379C8_ovl3
/* FA2B8 80050DA8 00003021 */   addu      $a2, $zero, $zero
/* FA2BC 80050DAC 3242FFFF */  andi       $v0, $s2, 0xFFFF
/* FA2C0 80050DB0 2C420006 */  sltiu      $v0, $v0, 0x6
/* FA2C4 80050DB4 1440FFB6 */  bnez       $v0, .L80050C90_ovl3
/* FA2C8 80050DB8 26440222 */   addiu     $a0, $s2, 0x222
/* FA2CC 80050DBC 27A40018 */  addiu      $a0, $sp, 0x18
/* FA2D0 80050DC0 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FA2D4 80050DC4 24060002 */  addiu      $a2, $zero, 0x2
/* FA2D8 80050DC8 3C028007 */  lui        $v0, %hi(D_80069304_ovl3)
/* FA2DC 80050DCC 24429304 */  addiu      $v0, $v0, %lo(D_80069304_ovl3)
/* FA2E0 80050DD0 2412FFFE */  addiu      $s2, $zero, -0x2
/* FA2E4 80050DD4 24110001 */  addiu      $s1, $zero, 0x1
/* FA2E8 80050DD8 24100003 */  addiu      $s0, $zero, 0x3
/* FA2EC 80050DDC AFA20018 */  sw         $v0, 0x18($sp)
/* FA2F0 80050DE0 A3B2001C */  sb         $s2, 0x1C($sp)
/* FA2F4 80050DE4 A3A0001D */  sb         $zero, 0x1D($sp)
/* FA2F8 80050DE8 A3B1001E */  sb         $s1, 0x1E($sp)
/* FA2FC 80050DEC 0C00DE82 */  jal        func_80037A08_ovl3
/* FA300 80050DF0 A3B0001F */   sb        $s0, 0x1F($sp)
/* FA304 80050DF4 27A40018 */  addiu      $a0, $sp, 0x18
/* FA308 80050DF8 240520CA */  addiu      $a1, $zero, 0x20CA
/* FA30C 80050DFC 24060002 */  addiu      $a2, $zero, 0x2
/* FA310 80050E00 3C028007 */  lui        $v0, %hi(D_80069328_ovl3)
/* FA314 80050E04 24429328 */  addiu      $v0, $v0, %lo(D_80069328_ovl3)
/* FA318 80050E08 AFA20018 */  sw         $v0, 0x18($sp)
/* FA31C 80050E0C A3B2001C */  sb         $s2, 0x1C($sp)
/* FA320 80050E10 A3A0001D */  sb         $zero, 0x1D($sp)
/* FA324 80050E14 A3B1001E */  sb         $s1, 0x1E($sp)
/* FA328 80050E18 0C00DE82 */  jal        func_80037A08_ovl3
/* FA32C 80050E1C A3B0001F */   sb        $s0, 0x1F($sp)
/* FA330 80050E20 27A40018 */  addiu      $a0, $sp, 0x18
/* FA334 80050E24 240520CB */  addiu      $a1, $zero, 0x20CB
/* FA338 80050E28 24060002 */  addiu      $a2, $zero, 0x2
/* FA33C 80050E2C 3C028007 */  lui        $v0, %hi(D_8006933C_ovl3)
/* FA340 80050E30 2442933C */  addiu      $v0, $v0, %lo(D_8006933C_ovl3)
/* FA344 80050E34 AFA20018 */  sw         $v0, 0x18($sp)
/* FA348 80050E38 A3B2001C */  sb         $s2, 0x1C($sp)
/* FA34C 80050E3C A3A0001D */  sb         $zero, 0x1D($sp)
/* FA350 80050E40 A3B1001E */  sb         $s1, 0x1E($sp)
/* FA354 80050E44 0C00DE82 */  jal        func_80037A08_ovl3
/* FA358 80050E48 A3B0001F */   sb        $s0, 0x1F($sp)
/* FA35C 80050E4C 8FBF002C */  lw         $ra, 0x2C($sp)
/* FA360 80050E50 8FB20028 */  lw         $s2, 0x28($sp)
/* FA364 80050E54 8FB10024 */  lw         $s1, 0x24($sp)
/* FA368 80050E58 8FB00020 */  lw         $s0, 0x20($sp)
/* FA36C 80050E5C D7B40030 */  ldc1       $f20, 0x30($sp)
/* FA370 80050E60 03E00008 */  jr         $ra
/* FA374 80050E64 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_80050B38_ovl3, . - func_80050B38_ovl3
