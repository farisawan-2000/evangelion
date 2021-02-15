.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BA120
/* 24D20 800BA120 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* 24D24 800BA124 8FA80068 */  lw         $t0, 0x68($sp)
/* 24D28 800BA128 AFB50044 */  sw         $s5, 0x44($sp)
/* 24D2C 800BA12C 00A0A821 */  addu       $s5, $a1, $zero
/* 24D30 800BA130 AFB40040 */  sw         $s4, 0x40($sp)
/* 24D34 800BA134 00C0A021 */  addu       $s4, $a2, $zero
/* 24D38 800BA138 AFBE0050 */  sw         $fp, 0x50($sp)
/* 24D3C 800BA13C 0000F021 */  addu       $fp, $zero, $zero
/* 24D40 800BA140 AFB00030 */  sw         $s0, 0x30($sp)
/* 24D44 800BA144 00808021 */  addu       $s0, $a0, $zero
/* 24D48 800BA148 AFBF0054 */  sw         $ra, 0x54($sp)
/* 24D4C 800BA14C AFB7004C */  sw         $s7, 0x4c($sp)
/* 24D50 800BA150 AFB60048 */  sw         $s6, 0x48($sp)
/* 24D54 800BA154 AFB3003C */  sw         $s3, 0x3c($sp)
/* 24D58 800BA158 AFB20038 */  sw         $s2, 0x38($sp)
/* 24D5C 800BA15C AFB10034 */  sw         $s1, 0x34($sp)
/* 24D60 800BA160 128000F3 */  beqz       $s4, .L800BA530
/* 24D64 800BA164 01002821 */   addu      $a1, $t0, $zero
/* 24D68 800BA168 8E02002C */  lw         $v0, 0x2c($s0)
/* 24D6C 800BA16C 3C0300FF */  lui        $v1, 0xff
/* 24D70 800BA170 3463FFFF */  ori        $v1, $v1, 0xffff
/* 24D74 800BA174 00431024 */  and        $v0, $v0, $v1
/* 24D78 800BA178 3C030B00 */  lui        $v1, 0xb00
/* 24D7C 800BA17C 00431025 */  or         $v0, $v0, $v1
/* 24D80 800BA180 ACA20000 */  sw         $v0, ($a1)
/* 24D84 800BA184 8E020028 */  lw         $v0, 0x28($s0)
/* 24D88 800BA188 25080008 */  addiu      $t0, $t0, 8
/* 24D8C 800BA18C 00002021 */  addu       $a0, $zero, $zero
/* 24D90 800BA190 8C420010 */  lw         $v0, 0x10($v0)
/* 24D94 800BA194 3C031FFF */  lui        $v1, 0x1fff
/* 24D98 800BA198 3463FFFF */  ori        $v1, $v1, 0xffff
/* 24D9C 800BA19C 24420008 */  addiu      $v0, $v0, 8
/* 24DA0 800BA1A0 00431024 */  and        $v0, $v0, $v1
/* 24DA4 800BA1A4 ACA20004 */  sw         $v0, 4($a1)
/* 24DA8 800BA1A8 8E050038 */  lw         $a1, 0x38($s0)
/* 24DAC 800BA1AC 8E030020 */  lw         $v1, 0x20($s0)
/* 24DB0 800BA1B0 02851021 */  addu       $v0, $s4, $a1
/* 24DB4 800BA1B4 0062102B */  sltu       $v0, $v1, $v0
/* 24DB8 800BA1B8 10400003 */  beqz       $v0, .L800BA1C8
/* 24DBC 800BA1BC 0000B821 */   addu      $s7, $zero, $zero
/* 24DC0 800BA1C0 8E020024 */  lw         $v0, 0x24($s0)
/* 24DC4 800BA1C4 0002202B */  sltu       $a0, $zero, $v0
.L800BA1C8:
/* 24DC8 800BA1C8 10800002 */  beqz       $a0, .L800BA1D4
/* 24DCC 800BA1CC 02808821 */   addu      $s1, $s4, $zero
/* 24DD0 800BA1D0 00658823 */  subu       $s1, $v1, $a1
.L800BA1D4:
/* 24DD4 800BA1D4 8E03003C */  lw         $v1, 0x3c($s0)
/* 24DD8 800BA1D8 10600003 */  beqz       $v1, .L800BA1E8
/* 24DDC 800BA1DC 24020010 */   addiu     $v0, $zero, 0x10
/* 24DE0 800BA1E0 0802E87B */  j          .L800BA1EC
/* 24DE4 800BA1E4 0043B023 */   subu      $s6, $v0, $v1
.L800BA1E8:
/* 24DE8 800BA1E8 0000B021 */  addu       $s6, $zero, $zero
.L800BA1EC:
/* 24DEC 800BA1EC 02363023 */  subu       $a2, $s1, $s6
/* 24DF0 800BA1F0 00061027 */  nor        $v0, $zero, $a2
/* 24DF4 800BA1F4 000217C3 */  sra        $v0, $v0, 0x1f
/* 24DF8 800BA1F8 00C23024 */  and        $a2, $a2, $v0
/* 24DFC 800BA1FC 24C2000F */  addiu      $v0, $a2, 0xf
/* 24E00 800BA200 00029103 */  sra        $s2, $v0, 4
/* 24E04 800BA204 001248C0 */  sll        $t1, $s2, 3
/* 24E08 800BA208 10800072 */  beqz       $a0, .L800BA3D4
/* 24E0C 800BA20C 01323821 */   addu      $a3, $t1, $s2
/* 24E10 800BA210 86A20000 */  lh         $v0, ($s5)
/* 24E14 800BA214 AFA00014 */  sw         $zero, 0x14($sp)
/* 24E18 800BA218 AFA20010 */  sw         $v0, 0x10($sp)
/* 24E1C 800BA21C 8E020040 */  lw         $v0, 0x40($s0)
/* 24E20 800BA220 01002021 */  addu       $a0, $t0, $zero
/* 24E24 800BA224 02002821 */  addu       $a1, $s0, $zero
/* 24E28 800BA228 0C02EAAB */  jal        func_800BAAAC
/* 24E2C 800BA22C AFA20018 */   sw        $v0, 0x18($sp)
/* 24E30 800BA230 8E03003C */  lw         $v1, 0x3c($s0)
/* 24E34 800BA234 10600005 */  beqz       $v1, .L800BA24C
/* 24E38 800BA238 00404021 */   addu      $t0, $v0, $zero
/* 24E3C 800BA23C 96A20000 */  lhu        $v0, ($s5)
/* 24E40 800BA240 00031840 */  sll        $v1, $v1, 1
/* 24E44 800BA244 0802E895 */  j          .L800BA254
/* 24E48 800BA248 00431021 */   addu      $v0, $v0, $v1
.L800BA24C:
/* 24E4C 800BA24C 96A20000 */  lhu        $v0, ($s5)
/* 24E50 800BA250 24420020 */  addiu      $v0, $v0, 0x20
.L800BA254:
/* 24E54 800BA254 A6A20000 */  sh         $v0, ($s5)
/* 24E58 800BA258 8E02001C */  lw         $v0, 0x1c($s0)
/* 24E5C 800BA25C 8E05001C */  lw         $a1, 0x1c($s0)
/* 24E60 800BA260 8E03001C */  lw         $v1, 0x1c($s0)
/* 24E64 800BA264 3042000F */  andi       $v0, $v0, 0xf
/* 24E68 800BA268 AE02003C */  sw         $v0, 0x3c($s0)
/* 24E6C 800BA26C 8E020028 */  lw         $v0, 0x28($s0)
/* 24E70 800BA270 00031902 */  srl        $v1, $v1, 4
/* 24E74 800BA274 24630001 */  addiu      $v1, $v1, 1
/* 24E78 800BA278 8C440000 */  lw         $a0, ($v0)
/* 24E7C 800BA27C 000310C0 */  sll        $v0, $v1, 3
/* 24E80 800BA280 00431021 */  addu       $v0, $v0, $v1
/* 24E84 800BA284 AE050038 */  sw         $a1, 0x38($s0)
/* 24E88 800BA288 00822021 */  addu       $a0, $a0, $v0
/* 24E8C 800BA28C AE040044 */  sw         $a0, 0x44($s0)
/* 24E90 800BA290 86B30000 */  lh         $s3, ($s5)
/* 24E94 800BA294 0234102A */  slt        $v0, $s1, $s4
/* 24E98 800BA298 10400040 */  beqz       $v0, .L800BA39C
/* 24E9C 800BA29C 00171400 */   sll       $v0, $s7, 0x10
/* 24EA0 800BA2A0 0002B403 */  sra        $s6, $v0, 0x10
.L800BA2A4:
/* 24EA4 800BA2A4 26430001 */  addiu      $v1, $s2, 1
/* 24EA8 800BA2A8 00031940 */  sll        $v1, $v1, 5
/* 24EAC 800BA2AC 02631821 */  addu       $v1, $s3, $v1
/* 24EB0 800BA2B0 00111040 */  sll        $v0, $s1, 1
/* 24EB4 800BA2B4 02629821 */  addu       $s3, $s3, $v0
/* 24EB8 800BA2B8 8E040024 */  lw         $a0, 0x24($s0)
/* 24EBC 800BA2BC 2402FFE0 */  addiu      $v0, $zero, -0x20
/* 24EC0 800BA2C0 0062A824 */  and        $s5, $v1, $v0
/* 24EC4 800BA2C4 00041027 */  nor        $v0, $zero, $a0
/* 24EC8 800BA2C8 0002102B */  sltu       $v0, $zero, $v0
/* 24ECC 800BA2CC 0004182B */  sltu       $v1, $zero, $a0
/* 24ED0 800BA2D0 00431024 */  and        $v0, $v0, $v1
/* 24ED4 800BA2D4 10400003 */  beqz       $v0, .L800BA2E4
/* 24ED8 800BA2D8 0291A023 */   subu      $s4, $s4, $s1
/* 24EDC 800BA2DC 2482FFFF */  addiu      $v0, $a0, -1
/* 24EE0 800BA2E0 AE020024 */  sw         $v0, 0x24($s0)
.L800BA2E4:
/* 24EE4 800BA2E4 8E030020 */  lw         $v1, 0x20($s0)
/* 24EE8 800BA2E8 8E02001C */  lw         $v0, 0x1c($s0)
/* 24EEC 800BA2EC 00621823 */  subu       $v1, $v1, $v0
/* 24EF0 800BA2F0 0283102B */  sltu       $v0, $s4, $v1
/* 24EF4 800BA2F4 14400002 */  bnez       $v0, .L800BA300
/* 24EF8 800BA2F8 02808821 */   addu      $s1, $s4, $zero
/* 24EFC 800BA2FC 00608821 */  addu       $s1, $v1, $zero
.L800BA300:
/* 24F00 800BA300 01002021 */  addu       $a0, $t0, $zero
/* 24F04 800BA304 02002821 */  addu       $a1, $s0, $zero
/* 24F08 800BA308 8E03003C */  lw         $v1, 0x3c($s0)
/* 24F0C 800BA30C 00151400 */  sll        $v0, $s5, 0x10
/* 24F10 800BA310 00021403 */  sra        $v0, $v0, 0x10
/* 24F14 800BA314 AFA20010 */  sw         $v0, 0x10($sp)
/* 24F18 800BA318 AFB60014 */  sw         $s6, 0x14($sp)
/* 24F1C 800BA31C 2463FFF0 */  addiu      $v1, $v1, -0x10
/* 24F20 800BA320 02233021 */  addu       $a2, $s1, $v1
/* 24F24 800BA324 00061027 */  nor        $v0, $zero, $a2
/* 24F28 800BA328 000217C3 */  sra        $v0, $v0, 0x1f
/* 24F2C 800BA32C 00C23024 */  and        $a2, $a2, $v0
/* 24F30 800BA330 24C2000F */  addiu      $v0, $a2, 0xf
/* 24F34 800BA334 00029103 */  sra        $s2, $v0, 4
/* 24F38 800BA338 8E020040 */  lw         $v0, 0x40($s0)
/* 24F3C 800BA33C 001238C0 */  sll        $a3, $s2, 3
/* 24F40 800BA340 00F23821 */  addu       $a3, $a3, $s2
/* 24F44 800BA344 34420002 */  ori        $v0, $v0, 2
/* 24F48 800BA348 0C02EAAB */  jal        func_800BAAAC
/* 24F4C 800BA34C AFA20018 */   sw        $v0, 0x18($sp)
/* 24F50 800BA350 00404021 */  addu       $t0, $v0, $zero
/* 24F54 800BA354 01002821 */  addu       $a1, $t0, $zero
/* 24F58 800BA358 25080008 */  addiu      $t0, $t0, 8
/* 24F5C 800BA35C 3C0600FF */  lui        $a2, 0xff
/* 24F60 800BA360 34C6FFFF */  ori        $a2, $a2, 0xffff
/* 24F64 800BA364 8E03003C */  lw         $v1, 0x3c($s0)
/* 24F68 800BA368 00132400 */  sll        $a0, $s3, 0x10
/* 24F6C 800BA36C 00111040 */  sll        $v0, $s1, 1
/* 24F70 800BA370 3042FFFF */  andi       $v0, $v0, 0xffff
/* 24F74 800BA374 00822025 */  or         $a0, $a0, $v0
/* 24F78 800BA378 3C020A00 */  lui        $v0, 0xa00
/* 24F7C 800BA37C ACA40004 */  sw         $a0, 4($a1)
/* 24F80 800BA380 00031840 */  sll        $v1, $v1, 1
/* 24F84 800BA384 02A31821 */  addu       $v1, $s5, $v1
/* 24F88 800BA388 00661824 */  and        $v1, $v1, $a2
/* 24F8C 800BA38C 00621825 */  or         $v1, $v1, $v0
/* 24F90 800BA390 0234102A */  slt        $v0, $s1, $s4
/* 24F94 800BA394 1440FFC3 */  bnez       $v0, .L800BA2A4
/* 24F98 800BA398 ACA30000 */   sw        $v1, ($a1)
.L800BA39C:
/* 24F9C 800BA39C 8E040038 */  lw         $a0, 0x38($s0)
/* 24FA0 800BA3A0 8E03003C */  lw         $v1, 0x3c($s0)
/* 24FA4 800BA3A4 01001021 */  addu       $v0, $t0, $zero
/* 24FA8 800BA3A8 00942021 */  addu       $a0, $a0, $s4
/* 24FAC 800BA3AC AE040038 */  sw         $a0, 0x38($s0)
/* 24FB0 800BA3B0 8E040044 */  lw         $a0, 0x44($s0)
/* 24FB4 800BA3B4 02831821 */  addu       $v1, $s4, $v1
/* 24FB8 800BA3B8 3063000F */  andi       $v1, $v1, 0xf
/* 24FBC 800BA3BC AE03003C */  sw         $v1, 0x3c($s0)
/* 24FC0 800BA3C0 001218C0 */  sll        $v1, $s2, 3
/* 24FC4 800BA3C4 00721821 */  addu       $v1, $v1, $s2
/* 24FC8 800BA3C8 00832021 */  addu       $a0, $a0, $v1
/* 24FCC 800BA3CC 0802E94D */  j          .L800BA534
/* 24FD0 800BA3D0 AE040044 */   sw        $a0, 0x44($s0)
.L800BA3D4:
/* 24FD4 800BA3D4 8E040028 */  lw         $a0, 0x28($s0)
/* 24FD8 800BA3D8 3C0538E3 */  lui        $a1, 0x38e3
/* 24FDC 800BA3DC 8E030044 */  lw         $v1, 0x44($s0)
/* 24FE0 800BA3E0 8C820000 */  lw         $v0, ($a0)
/* 24FE4 800BA3E4 8C840004 */  lw         $a0, 4($a0)
/* 24FE8 800BA3E8 34A58E39 */  ori        $a1, $a1, 0x8e39
/* 24FEC 800BA3EC 00671821 */  addu       $v1, $v1, $a3
/* 24FF0 800BA3F0 00441021 */  addu       $v0, $v0, $a0
/* 24FF4 800BA3F4 00622023 */  subu       $a0, $v1, $v0
/* 24FF8 800BA3F8 00041027 */  nor        $v0, $zero, $a0
/* 24FFC 800BA3FC 000217C3 */  sra        $v0, $v0, 0x1f
/* 25000 800BA400 00822024 */  and        $a0, $a0, $v0
/* 25004 800BA404 00850018 */  mult       $a0, $a1
/* 25008 800BA408 00128900 */  sll        $s1, $s2, 4
/* 2500C 800BA40C 00041FC3 */  sra        $v1, $a0, 0x1f
/* 25010 800BA410 00005010 */  mfhi       $t2
/* 25014 800BA414 000A1043 */  sra        $v0, $t2, 1
/* 25018 800BA418 00431023 */  subu       $v0, $v0, $v1
/* 2501C 800BA41C 00029900 */  sll        $s3, $v0, 4
/* 25020 800BA420 02361821 */  addu       $v1, $s1, $s6
/* 25024 800BA424 0073102A */  slt        $v0, $v1, $s3
/* 25028 800BA428 54400001 */  bnezl      $v0, .L800BA430
/* 2502C 800BA42C 00609821 */   addu      $s3, $v1, $zero
.L800BA430:
/* 25030 800BA430 3262000F */  andi       $v0, $s3, 0xf
/* 25034 800BA434 02621023 */  subu       $v0, $s3, $v0
/* 25038 800BA438 0054102A */  slt        $v0, $v0, $s4
/* 2503C 800BA43C 10400022 */  beqz       $v0, .L800BA4C8
/* 25040 800BA440 00E43823 */   subu      $a3, $a3, $a0
/* 25044 800BA444 86A20000 */  lh         $v0, ($s5)
/* 25048 800BA448 01002021 */  addu       $a0, $t0, $zero
/* 2504C 800BA44C AFA00014 */  sw         $zero, 0x14($sp)
/* 25050 800BA450 AFA20010 */  sw         $v0, 0x10($sp)
/* 25054 800BA454 8E020040 */  lw         $v0, 0x40($s0)
/* 25058 800BA458 02002821 */  addu       $a1, $s0, $zero
/* 2505C 800BA45C 02333023 */  subu       $a2, $s1, $s3
/* 25060 800BA460 0C02EAAB */  jal        func_800BAAAC
/* 25064 800BA464 AFA20018 */   sw        $v0, 0x18($sp)
/* 25068 800BA468 8E03003C */  lw         $v1, 0x3c($s0)
/* 2506C 800BA46C 241E0001 */  addiu      $fp, $zero, 1
/* 25070 800BA470 10600005 */  beqz       $v1, .L800BA488
/* 25074 800BA474 00404021 */   addu      $t0, $v0, $zero
/* 25078 800BA478 96A20000 */  lhu        $v0, ($s5)
/* 2507C 800BA47C 00031840 */  sll        $v1, $v1, 1
/* 25080 800BA480 0802E924 */  j          .L800BA490
/* 25084 800BA484 00431021 */   addu      $v0, $v0, $v1
.L800BA488:
/* 25088 800BA488 96A20000 */  lhu        $v0, ($s5)
/* 2508C 800BA48C 24420020 */  addiu      $v0, $v0, 0x20
.L800BA490:
/* 25090 800BA490 A6A20000 */  sh         $v0, ($s5)
/* 25094 800BA494 8E030038 */  lw         $v1, 0x38($s0)
/* 25098 800BA498 8E02003C */  lw         $v0, 0x3c($s0)
/* 2509C 800BA49C 00741821 */  addu       $v1, $v1, $s4
/* 250A0 800BA4A0 AE030038 */  sw         $v1, 0x38($s0)
/* 250A4 800BA4A4 8E030044 */  lw         $v1, 0x44($s0)
/* 250A8 800BA4A8 02821021 */  addu       $v0, $s4, $v0
/* 250AC 800BA4AC 3042000F */  andi       $v0, $v0, 0xf
/* 250B0 800BA4B0 AE02003C */  sw         $v0, 0x3c($s0)
/* 250B4 800BA4B4 001210C0 */  sll        $v0, $s2, 3
/* 250B8 800BA4B8 00521021 */  addu       $v0, $v0, $s2
/* 250BC 800BA4BC 00621821 */  addu       $v1, $v1, $v0
/* 250C0 800BA4C0 0802E937 */  j          .L800BA4DC
/* 250C4 800BA4C4 AE030044 */   sw        $v1, 0x44($s0)
.L800BA4C8:
/* 250C8 800BA4C8 8E020044 */  lw         $v0, 0x44($s0)
/* 250CC 800BA4CC 01321821 */  addu       $v1, $t1, $s2
/* 250D0 800BA4D0 AE00003C */  sw         $zero, 0x3c($s0)
/* 250D4 800BA4D4 00431021 */  addu       $v0, $v0, $v1
/* 250D8 800BA4D8 AE020044 */  sw         $v0, 0x44($s0)
.L800BA4DC:
/* 250DC 800BA4DC 12600015 */  beqz       $s3, .L800BA534
/* 250E0 800BA4E0 01001021 */   addu      $v0, $t0, $zero
/* 250E4 800BA4E4 13C00005 */  beqz       $fp, .L800BA4FC
/* 250E8 800BA4E8 AE00003C */   sw        $zero, 0x3c($s0)
/* 250EC 800BA4EC 02D11021 */  addu       $v0, $s6, $s1
/* 250F0 800BA4F0 00531023 */  subu       $v0, $v0, $s3
/* 250F4 800BA4F4 0802E940 */  j          .L800BA500
/* 250F8 800BA4F8 00023040 */   sll       $a2, $v0, 1
.L800BA4FC:
/* 250FC 800BA4FC 00003021 */  addu       $a2, $zero, $zero
.L800BA500:
/* 25100 800BA500 01002821 */  addu       $a1, $t0, $zero
/* 25104 800BA504 25080008 */  addiu      $t0, $t0, 8
/* 25108 800BA508 3C0400FF */  lui        $a0, 0xff
/* 2510C 800BA50C 86A20000 */  lh         $v0, ($s5)
/* 25110 800BA510 3484FFFF */  ori        $a0, $a0, 0xffff
/* 25114 800BA514 00131840 */  sll        $v1, $s3, 1
/* 25118 800BA518 ACA30004 */  sw         $v1, 4($a1)
/* 2511C 800BA51C 3C030200 */  lui        $v1, 0x200
/* 25120 800BA520 00C21021 */  addu       $v0, $a2, $v0
/* 25124 800BA524 00441024 */  and        $v0, $v0, $a0
/* 25128 800BA528 00431025 */  or         $v0, $v0, $v1
/* 2512C 800BA52C ACA20000 */  sw         $v0, ($a1)
.L800BA530:
/* 25130 800BA530 01001021 */  addu       $v0, $t0, $zero
.L800BA534:
/* 25134 800BA534 8FBF0054 */  lw         $ra, 0x54($sp)
/* 25138 800BA538 8FBE0050 */  lw         $fp, 0x50($sp)
/* 2513C 800BA53C 8FB7004C */  lw         $s7, 0x4c($sp)
/* 25140 800BA540 8FB60048 */  lw         $s6, 0x48($sp)
/* 25144 800BA544 8FB50044 */  lw         $s5, 0x44($sp)
/* 25148 800BA548 8FB40040 */  lw         $s4, 0x40($sp)
/* 2514C 800BA54C 8FB3003C */  lw         $s3, 0x3c($sp)
/* 25150 800BA550 8FB20038 */  lw         $s2, 0x38($sp)
/* 25154 800BA554 8FB10034 */  lw         $s1, 0x34($sp)
/* 25158 800BA558 8FB00030 */  lw         $s0, 0x30($sp)
/* 2515C 800BA55C 03E00008 */  jr         $ra
/* 25160 800BA560 27BD0058 */   addiu     $sp, $sp, 0x58
