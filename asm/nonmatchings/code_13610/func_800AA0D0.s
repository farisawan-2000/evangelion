glabel func_800AA0D0
/* 14CD0 800AA0D0 3C018017 */  lui        $at, %hi(D_8016E568)
/* 14CD4 800AA0D4 C424E568 */  lwc1       $f4, %lo(D_8016E568)($at)
/* 14CD8 800AA0D8 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 14CDC 800AA0DC C426D0D0 */  lwc1       $f6, %lo(D_8016D0D0)($at)
/* 14CE0 800AA0E0 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 14CE4 800AA0E4 C42AD0D4 */  lwc1       $f10, %lo(D_8016D0D4)($at)
/* 14CE8 800AA0E8 3C0141F0 */  lui        $at, (0x41F00000 >> 16)
/* 14CEC 800AA0EC 44810000 */  mtc1       $at, $f0
/* 14CF0 800AA0F0 00000000 */  nop
/* 14CF4 800AA0F4 3C018015 */  lui        $at, %hi(D_8014A050)
/* 14CF8 800AA0F8 C428A050 */  lwc1       $f8, %lo(D_8014A050)($at)
/* 14CFC 800AA0FC 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 14D00 800AA100 C42CD1A8 */  lwc1       $f12, %lo(D_8016D1A8)($at)
/* 14D04 800AA104 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 14D08 800AA108 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 14D0C 800AA10C 46002581 */  sub.s      $f22, $f4, $f0
/* 14D10 800AA110 4600308D */  trunc.w.s  $f2, $f6
/* 14D14 800AA114 44061000 */  mfc1       $a2, $f2
/* 14D18 800AA118 00000000 */  nop
/* 14D1C 800AA11C 4600508D */  trunc.w.s  $f2, $f10
/* 14D20 800AA120 44071000 */  mfc1       $a3, $f2
/* 14D24 800AA124 00000000 */  nop
/* 14D28 800AA128 4600208D */  trunc.w.s  $f2, $f4
/* 14D2C 800AA12C 44041000 */  mfc1       $a0, $f2
/* 14D30 800AA130 00000000 */  nop
/* 14D34 800AA134 46002100 */  add.s      $f4, $f4, $f0
/* 14D38 800AA138 AFBF0024 */  sw         $ra, 0x24($sp)
/* 14D3C 800AA13C F7B40028 */  sdc1       $f20, 0x28($sp)
/* 14D40 800AA140 46003501 */  sub.s      $f20, $f6, $f0
/* 14D44 800AA144 AFB40020 */  sw         $s4, 0x20($sp)
/* 14D48 800AA148 AFB3001C */  sw         $s3, 0x1C($sp)
/* 14D4C 800AA14C AFB20018 */  sw         $s2, 0x18($sp)
/* 14D50 800AA150 46003180 */  add.s      $f6, $f6, $f0
/* 14D54 800AA154 AFB10014 */  sw         $s1, 0x14($sp)
/* 14D58 800AA158 AFB00010 */  sw         $s0, 0x10($sp)
/* 14D5C 800AA15C F7B80038 */  sdc1       $f24, 0x38($sp)
/* 14D60 800AA160 46005481 */  sub.s      $f18, $f10, $f0
/* 14D64 800AA164 4600408D */  trunc.w.s  $f2, $f8
/* 14D68 800AA168 44051000 */  mfc1       $a1, $f2
/* 14D6C 800AA16C 00000000 */  nop
/* 14D70 800AA170 3C018015 */  lui        $at, %hi(D_8014A054)
/* 14D74 800AA174 C422A054 */  lwc1       $f2, %lo(D_8014A054)($at)
/* 14D78 800AA178 4600638D */  trunc.w.s  $f14, $f12
/* 14D7C 800AA17C 44037000 */  mfc1       $v1, $f14
/* 14D80 800AA180 00000000 */  nop
/* 14D84 800AA184 46005280 */  add.s      $f10, $f10, $f0
/* 14D88 800AA188 3C01800D */  lui        $at, %hi(D_800D4CC2)
/* 14D8C 800AA18C A4264CC2 */  sh         $a2, %lo(D_800D4CC2)($at)
/* 14D90 800AA190 3C01800D */  lui        $at, %hi(D_800D4CD2)
/* 14D94 800AA194 A4264CD2 */  sh         $a2, %lo(D_800D4CD2)($at)
/* 14D98 800AA198 3C01800D */  lui        $at, %hi(D_800D4CC4)
/* 14D9C 800AA19C A4274CC4 */  sh         $a3, %lo(D_800D4CC4)($at)
/* 14DA0 800AA1A0 3C01800D */  lui        $at, %hi(D_800D4CD4)
/* 14DA4 800AA1A4 A4274CD4 */  sh         $a3, %lo(D_800D4CD4)($at)
/* 14DA8 800AA1A8 3C01800D */  lui        $at, %hi(D_800D4CE0)
/* 14DAC 800AA1AC A4244CE0 */  sh         $a0, %lo(D_800D4CE0)($at)
/* 14DB0 800AA1B0 3C01800D */  lui        $at, %hi(D_800D4CF0)
/* 14DB4 800AA1B4 A4244CF0 */  sh         $a0, %lo(D_800D4CF0)($at)
/* 14DB8 800AA1B8 3C01800D */  lui        $at, %hi(D_800D4CE4)
/* 14DBC 800AA1BC A4274CE4 */  sh         $a3, %lo(D_800D4CE4)($at)
/* 14DC0 800AA1C0 3C01800D */  lui        $at, %hi(D_800D4CF4)
/* 14DC4 800AA1C4 A4274CF4 */  sh         $a3, %lo(D_800D4CF4)($at)
/* 14DC8 800AA1C8 46001401 */  sub.s      $f16, $f2, $f0
/* 14DCC 800AA1CC 3C01800D */  lui        $at, %hi(D_800D4D00)
/* 14DD0 800AA1D0 A4244D00 */  sh         $a0, %lo(D_800D4D00)($at)
/* 14DD4 800AA1D4 3C01800D */  lui        $at, %hi(D_800D4D10)
/* 14DD8 800AA1D8 A4244D10 */  sh         $a0, %lo(D_800D4D10)($at)
/* 14DDC 800AA1DC 4600138D */  trunc.w.s  $f14, $f2
/* 14DE0 800AA1E0 44027000 */  mfc1       $v0, $f14
/* 14DE4 800AA1E4 00000000 */  nop
/* 14DE8 800AA1E8 46001080 */  add.s      $f2, $f2, $f0
/* 14DEC 800AA1EC 3C01800D */  lui        $at, %hi(D_800D4D02)
/* 14DF0 800AA1F0 A4264D02 */  sh         $a2, %lo(D_800D4D02)($at)
/* 14DF4 800AA1F4 3C01800D */  lui        $at, %hi(D_800D4D12)
/* 14DF8 800AA1F8 A4264D12 */  sh         $a2, %lo(D_800D4D12)($at)
/* 14DFC 800AA1FC 3C01800D */  lui        $at, %hi(D_800D4D22)
/* 14E00 800AA200 A4254D22 */  sh         $a1, %lo(D_800D4D22)($at)
/* 14E04 800AA204 46004381 */  sub.s      $f14, $f8, $f0
/* 14E08 800AA208 3C01800D */  lui        $at, %hi(D_800D4D32)
/* 14E0C 800AA20C A4254D32 */  sh         $a1, %lo(D_800D4D32)($at)
/* 14E10 800AA210 3C01800D */  lui        $at, %hi(D_800D4D24)
/* 14E14 800AA214 A4234D24 */  sh         $v1, %lo(D_800D4D24)($at)
/* 14E18 800AA218 3C01800D */  lui        $at, %hi(D_800D4D34)
/* 14E1C 800AA21C A4234D34 */  sh         $v1, %lo(D_800D4D34)($at)
/* 14E20 800AA220 46004200 */  add.s      $f8, $f8, $f0
/* 14E24 800AA224 4600B60D */  trunc.w.s  $f24, $f22
/* 14E28 800AA228 4410C000 */  mfc1       $s0, $f24
/* 14E2C 800AA22C 00000000 */  nop
/* 14E30 800AA230 4600258D */  trunc.w.s  $f22, $f4
/* 14E34 800AA234 4411B000 */  mfc1       $s1, $f22
/* 14E38 800AA238 00000000 */  nop
/* 14E3C 800AA23C 4600A10D */  trunc.w.s  $f4, $f20
/* 14E40 800AA240 440D2000 */  mfc1       $t5, $f4
/* 14E44 800AA244 00000000 */  nop
/* 14E48 800AA248 4600310D */  trunc.w.s  $f4, $f6
/* 14E4C 800AA24C 440E2000 */  mfc1       $t6, $f4
/* 14E50 800AA250 00000000 */  nop
/* 14E54 800AA254 4600910D */  trunc.w.s  $f4, $f18
/* 14E58 800AA258 440F2000 */  mfc1       $t7, $f4
/* 14E5C 800AA25C 00000000 */  nop
/* 14E60 800AA260 46006101 */  sub.s      $f4, $f12, $f0
/* 14E64 800AA264 3C01800D */  lui        $at, %hi(D_800D4D40)
/* 14E68 800AA268 A4224D40 */  sh         $v0, %lo(D_800D4D40)($at)
/* 14E6C 800AA26C 3C01800D */  lui        $at, %hi(D_800D4D50)
/* 14E70 800AA270 A4224D50 */  sh         $v0, %lo(D_800D4D50)($at)
/* 14E74 800AA274 4600518D */  trunc.w.s  $f6, $f10
/* 14E78 800AA278 440A3000 */  mfc1       $t2, $f6
/* 14E7C 800AA27C 00000000 */  nop
/* 14E80 800AA280 46006300 */  add.s      $f12, $f12, $f0
/* 14E84 800AA284 3C01800D */  lui        $at, %hi(D_800D4CC0)
/* 14E88 800AA288 A4304CC0 */  sh         $s0, %lo(D_800D4CC0)($at)
/* 14E8C 800AA28C 3C01800D */  lui        $at, %hi(D_800D4CD0)
/* 14E90 800AA290 A4314CD0 */  sh         $s1, %lo(D_800D4CD0)($at)
/* 14E94 800AA294 3C01800D */  lui        $at, %hi(D_800D4CE2)
/* 14E98 800AA298 A42D4CE2 */  sh         $t5, %lo(D_800D4CE2)($at)
/* 14E9C 800AA29C 3C01800D */  lui        $at, %hi(D_800D4CF2)
/* 14EA0 800AA2A0 A42E4CF2 */  sh         $t6, %lo(D_800D4CF2)($at)
/* 14EA4 800AA2A4 3C01800D */  lui        $at, %hi(D_800D4D04)
/* 14EA8 800AA2A8 A42F4D04 */  sh         $t7, %lo(D_800D4D04)($at)
/* 14EAC 800AA2AC 3C01800D */  lui        $at, %hi(D_800D4D14)
/* 14EB0 800AA2B0 A42A4D14 */  sh         $t2, %lo(D_800D4D14)($at)
/* 14EB4 800AA2B4 4600818D */  trunc.w.s  $f6, $f16
/* 14EB8 800AA2B8 440B3000 */  mfc1       $t3, $f6
/* 14EBC 800AA2BC 00000000 */  nop
/* 14EC0 800AA2C0 4600118D */  trunc.w.s  $f6, $f2
/* 14EC4 800AA2C4 440C3000 */  mfc1       $t4, $f6
/* 14EC8 800AA2C8 00000000 */  nop
/* 14ECC 800AA2CC 4600708D */  trunc.w.s  $f2, $f14
/* 14ED0 800AA2D0 44081000 */  mfc1       $t0, $f2
/* 14ED4 800AA2D4 00000000 */  nop
/* 14ED8 800AA2D8 4600408D */  trunc.w.s  $f2, $f8
/* 14EDC 800AA2DC 44091000 */  mfc1       $t1, $f2
/* 14EE0 800AA2E0 00000000 */  nop
/* 14EE4 800AA2E4 3C01800D */  lui        $at, %hi(D_800D4D20)
/* 14EE8 800AA2E8 A42B4D20 */  sh         $t3, %lo(D_800D4D20)($at)
/* 14EEC 800AA2EC 3C01800D */  lui        $at, %hi(D_800D4D30)
/* 14EF0 800AA2F0 A42C4D30 */  sh         $t4, %lo(D_800D4D30)($at)
/* 14EF4 800AA2F4 3C01800D */  lui        $at, %hi(D_800D4D42)
/* 14EF8 800AA2F8 A4284D42 */  sh         $t0, %lo(D_800D4D42)($at)
/* 14EFC 800AA2FC 3C01800D */  lui        $at, %hi(D_800D4D52)
/* 14F00 800AA300 A4294D52 */  sh         $t1, %lo(D_800D4D52)($at)
/* 14F04 800AA304 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 14F08 800AA308 C426A06C */  lwc1       $f6, %lo(D_8014A06C)($at)
/* 14F0C 800AA30C 4600208D */  trunc.w.s  $f2, $f4
/* 14F10 800AA310 44121000 */  mfc1       $s2, $f2
/* 14F14 800AA314 00000000 */  nop
/* 14F18 800AA318 4600608D */  trunc.w.s  $f2, $f12
/* 14F1C 800AA31C 44131000 */  mfc1       $s3, $f2
/* 14F20 800AA320 00000000 */  nop
/* 14F24 800AA324 3C018015 */  lui        $at, %hi(D_8014A068)
/* 14F28 800AA328 C424A068 */  lwc1       $f4, %lo(D_8014A068)($at)
/* 14F2C 800AA32C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 14F30 800AA330 C422A064 */  lwc1       $f2, %lo(D_8014A064)($at)
/* 14F34 800AA334 3C01800D */  lui        $at, %hi(D_800D4D44)
/* 14F38 800AA338 A4234D44 */  sh         $v1, %lo(D_800D4D44)($at)
/* 14F3C 800AA33C 3C01800D */  lui        $at, %hi(D_800D4D54)
/* 14F40 800AA340 A4234D54 */  sh         $v1, %lo(D_800D4D54)($at)
/* 14F44 800AA344 3C01800D */  lui        $at, %hi(D_800D4D60)
/* 14F48 800AA348 A4224D60 */  sh         $v0, %lo(D_800D4D60)($at)
/* 14F4C 800AA34C 3C01800D */  lui        $at, %hi(D_800D4D70)
/* 14F50 800AA350 A4224D70 */  sh         $v0, %lo(D_800D4D70)($at)
/* 14F54 800AA354 3C01800D */  lui        $at, %hi(D_800D4D62)
/* 14F58 800AA358 A4254D62 */  sh         $a1, %lo(D_800D4D62)($at)
/* 14F5C 800AA35C 3C01800D */  lui        $at, %hi(D_800D4D72)
/* 14F60 800AA360 A4254D72 */  sh         $a1, %lo(D_800D4D72)($at)
/* 14F64 800AA364 3C01800D */  lui        $at, %hi(D_800D4D80)
/* 14F68 800AA368 A4244D80 */  sh         $a0, %lo(D_800D4D80)($at)
/* 14F6C 800AA36C 3C01800D */  lui        $at, %hi(D_800D4D90)
/* 14F70 800AA370 A4224D90 */  sh         $v0, %lo(D_800D4D90)($at)
/* 14F74 800AA374 3C01800D */  lui        $at, %hi(D_800D4D92)
/* 14F78 800AA378 A4254D92 */  sh         $a1, %lo(D_800D4D92)($at)
/* 14F7C 800AA37C 3C01800D */  lui        $at, %hi(D_800D4D94)
/* 14F80 800AA380 A4234D94 */  sh         $v1, %lo(D_800D4D94)($at)
/* 14F84 800AA384 46001301 */  sub.s      $f12, $f2, $f0
/* 14F88 800AA388 4600220D */  trunc.w.s  $f8, $f4
/* 14F8C 800AA38C 44044000 */  mfc1       $a0, $f8
/* 14F90 800AA390 00000000 */  nop
/* 14F94 800AA394 4600320D */  trunc.w.s  $f8, $f6
/* 14F98 800AA398 44024000 */  mfc1       $v0, $f8
/* 14F9C 800AA39C 00000000 */  nop
/* 14FA0 800AA3A0 4600120D */  trunc.w.s  $f8, $f2
/* 14FA4 800AA3A4 44034000 */  mfc1       $v1, $f8
/* 14FA8 800AA3A8 00000000 */  nop
/* 14FAC 800AA3AC 46001080 */  add.s      $f2, $f2, $f0
/* 14FB0 800AA3B0 46002281 */  sub.s      $f10, $f4, $f0
/* 14FB4 800AA3B4 46002100 */  add.s      $f4, $f4, $f0
/* 14FB8 800AA3B8 3C01800D */  lui        $at, %hi(D_800D4D82)
/* 14FBC 800AA3BC A4264D82 */  sh         $a2, %lo(D_800D4D82)($at)
/* 14FC0 800AA3C0 46003201 */  sub.s      $f8, $f6, $f0
/* 14FC4 800AA3C4 3C01800D */  lui        $at, %hi(D_800D4D84)
/* 14FC8 800AA3C8 A4274D84 */  sh         $a3, %lo(D_800D4D84)($at)
/* 14FCC 800AA3CC 3C01800D */  lui        $at, %hi(D_800D4D64)
/* 14FD0 800AA3D0 A4324D64 */  sh         $s2, %lo(D_800D4D64)($at)
/* 14FD4 800AA3D4 3C01800D */  lui        $at, %hi(D_800D4D74)
/* 14FD8 800AA3D8 A4334D74 */  sh         $s3, %lo(D_800D4D74)($at)
/* 14FDC 800AA3DC 46003180 */  add.s      $f6, $f6, $f0
/* 14FE0 800AA3E0 3C01800D */  lui        $at, %hi(D_800D4DA2)
/* 14FE4 800AA3E4 A4244DA2 */  sh         $a0, %lo(D_800D4DA2)($at)
/* 14FE8 800AA3E8 3C01800D */  lui        $at, %hi(D_800D4DB2)
/* 14FEC 800AA3EC A4244DB2 */  sh         $a0, %lo(D_800D4DB2)($at)
/* 14FF0 800AA3F0 3C01800D */  lui        $at, %hi(D_800D4DA4)
/* 14FF4 800AA3F4 A4224DA4 */  sh         $v0, %lo(D_800D4DA4)($at)
/* 14FF8 800AA3F8 3C01800D */  lui        $at, %hi(D_800D4DB4)
/* 14FFC 800AA3FC A4224DB4 */  sh         $v0, %lo(D_800D4DB4)($at)
/* 15000 800AA400 3C01800D */  lui        $at, %hi(D_800D4DC0)
/* 15004 800AA404 A4234DC0 */  sh         $v1, %lo(D_800D4DC0)($at)
/* 15008 800AA408 3C01800D */  lui        $at, %hi(D_800D4DD0)
/* 1500C 800AA40C A4234DD0 */  sh         $v1, %lo(D_800D4DD0)($at)
/* 15010 800AA410 3C01800D */  lui        $at, %hi(D_800D4DC4)
/* 15014 800AA414 A4224DC4 */  sh         $v0, %lo(D_800D4DC4)($at)
/* 15018 800AA418 3C01800D */  lui        $at, %hi(D_800D4DD4)
/* 1501C 800AA41C A4224DD4 */  sh         $v0, %lo(D_800D4DD4)($at)
/* 15020 800AA420 3C01800D */  lui        $at, %hi(D_800D4DE0)
/* 15024 800AA424 A4234DE0 */  sh         $v1, %lo(D_800D4DE0)($at)
/* 15028 800AA428 3C01800D */  lui        $at, %hi(D_800D4DF0)
/* 1502C 800AA42C A4234DF0 */  sh         $v1, %lo(D_800D4DF0)($at)
/* 15030 800AA430 3C01800D */  lui        $at, %hi(D_800D4DE2)
/* 15034 800AA434 A4244DE2 */  sh         $a0, %lo(D_800D4DE2)($at)
/* 15038 800AA438 3C01800D */  lui        $at, %hi(D_800D4DF2)
/* 1503C 800AA43C A4244DF2 */  sh         $a0, %lo(D_800D4DF2)($at)
/* 15040 800AA440 4600638D */  trunc.w.s  $f14, $f12
/* 15044 800AA444 44067000 */  mfc1       $a2, $f14
/* 15048 800AA448 00000000 */  nop
/* 1504C 800AA44C 4600130D */  trunc.w.s  $f12, $f2
/* 15050 800AA450 44076000 */  mfc1       $a3, $f12
/* 15054 800AA454 00000000 */  nop
/* 15058 800AA458 4600500D */  trunc.w.s  $f0, $f10
/* 1505C 800AA45C 44020000 */  mfc1       $v0, $f0
/* 15060 800AA460 00000000 */  nop
/* 15064 800AA464 4600200D */  trunc.w.s  $f0, $f4
/* 15068 800AA468 44030000 */  mfc1       $v1, $f0
/* 1506C 800AA46C 00000000 */  nop
/* 15070 800AA470 4600400D */  trunc.w.s  $f0, $f8
/* 15074 800AA474 44040000 */  mfc1       $a0, $f0
/* 15078 800AA478 00000000 */  nop
/* 1507C 800AA47C 4600300D */  trunc.w.s  $f0, $f6
/* 15080 800AA480 44050000 */  mfc1       $a1, $f0
/* 15084 800AA484 00000000 */  nop
/* 15088 800AA488 3C01800D */  lui        $at, %hi(D_800D4DA0)
/* 1508C 800AA48C A4264DA0 */  sh         $a2, %lo(D_800D4DA0)($at)
/* 15090 800AA490 3C01800D */  lui        $at, %hi(D_800D4DB0)
/* 15094 800AA494 A4274DB0 */  sh         $a3, %lo(D_800D4DB0)($at)
/* 15098 800AA498 3C01800D */  lui        $at, %hi(D_800D4DC2)
/* 1509C 800AA49C A4224DC2 */  sh         $v0, %lo(D_800D4DC2)($at)
/* 150A0 800AA4A0 3C01800D */  lui        $at, %hi(D_800D4DD2)
/* 150A4 800AA4A4 A4234DD2 */  sh         $v1, %lo(D_800D4DD2)($at)
/* 150A8 800AA4A8 3C01800D */  lui        $at, %hi(D_800D4DE4)
/* 150AC 800AA4AC A4244DE4 */  sh         $a0, %lo(D_800D4DE4)($at)
/* 150B0 800AA4B0 3C048010 */  lui        $a0, %hi(D_80100560)
/* 150B4 800AA4B4 24840560 */  addiu      $a0, $a0, %lo(D_80100560)
/* 150B8 800AA4B8 3C01800D */  lui        $at, %hi(D_800D4DF4)
/* 150BC 800AA4BC A4254DF4 */  sh         $a1, %lo(D_800D4DF4)($at)
/* 150C0 800AA4C0 0C02FAB0 */  jal        guMtxIdent
/* 150C4 800AA4C4 00000000 */   nop
/* 150C8 800AA4C8 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 150CC 800AA4CC 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 150D0 800AA4D0 3C04DA38 */  lui        $a0, (0xDA380003 >> 16)
/* 150D4 800AA4D4 34840003 */  ori        $a0, $a0, (0xDA380003 & 0xFFFF)
/* 150D8 800AA4D8 24620008 */  addiu      $v0, $v1, 0x8
/* 150DC 800AA4DC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 150E0 800AA4E0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 150E4 800AA4E4 3C020010 */  lui        $v0, %hi(D_100560)
/* 150E8 800AA4E8 24420560 */  addiu      $v0, $v0, %lo(D_100560)
/* 150EC 800AA4EC AC620004 */  sw         $v0, 0x4($v1)
/* 150F0 800AA4F0 24620010 */  addiu      $v0, $v1, 0x10
/* 150F4 800AA4F4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 150F8 800AA4F8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 150FC 800AA4FC 3C02DE00 */  lui        $v0, (0xDE000000 >> 16)
/* 15100 800AA500 AC620008 */  sw         $v0, 0x8($v1)
/* 15104 800AA504 3C02000D */  lui        $v0, %hi(D_D4E60)
/* 15108 800AA508 24424E60 */  addiu      $v0, $v0, %lo(D_D4E60)
/* 1510C 800AA50C AC640000 */  sw         $a0, 0x0($v1)
/* 15110 800AA510 AC62000C */  sw         $v0, 0xC($v1)
/* 15114 800AA514 8FBF0024 */  lw         $ra, 0x24($sp)
/* 15118 800AA518 8FB40020 */  lw         $s4, 0x20($sp)
/* 1511C 800AA51C 8FB3001C */  lw         $s3, 0x1C($sp)
/* 15120 800AA520 8FB20018 */  lw         $s2, 0x18($sp)
/* 15124 800AA524 8FB10014 */  lw         $s1, 0x14($sp)
/* 15128 800AA528 8FB00010 */  lw         $s0, 0x10($sp)
/* 1512C 800AA52C D7B80038 */  ldc1       $f24, 0x38($sp)
/* 15130 800AA530 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 15134 800AA534 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 15138 800AA538 27BD0040 */  addiu      $sp, $sp, 0x40
/* 1513C 800AA53C 03E00008 */  jr         $ra
/* 15140 800AA540 00000000 */   nop
/* 15144 800AA544 00000000 */  nop
/* 15148 800AA548 00000000 */  nop
/* 1514C 800AA54C 00000000 */  nop
.size func_800AA0D0, . - func_800AA0D0
