.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80038DC0_E22D0
/* E22D0 80038DC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E22D4 80038DC4 2404008D */  addiu      $a0, $zero, 0x8d
/* E22D8 80038DC8 24050002 */  addiu      $a1, $zero, 2
/* E22DC 80038DCC 24060017 */  addiu      $a2, $zero, 0x17
/* E22E0 80038DD0 AFBF0014 */  sw         $ra, 0x14($sp)
/* E22E4 80038DD4 0C00D925 */  jal        func_80036494_DF9A4
/* E22E8 80038DD8 AFB00010 */   sw        $s0, 0x10($sp)
/* E22EC 80038DDC 00408021 */  addu       $s0, $v0, $zero
/* E22F0 80038DE0 8E04000C */  lw         $a0, 0xc($s0)
/* E22F4 80038DE4 8C82000C */  lw         $v0, 0xc($a0)
/* E22F8 80038DE8 94450000 */  lhu        $a1, ($v0)
/* E22FC 80038DEC 94460002 */  lhu        $a2, 2($v0)
/* E2300 80038DF0 00052842 */  srl        $a1, $a1, 1
/* E2304 80038DF4 0C02912A */  jal        func_800A44A8
/* E2308 80038DF8 00063042 */   srl       $a2, $a2, 1
/* E230C 80038DFC 8E04000C */  lw         $a0, 0xc($s0)
/* E2310 80038E00 24050280 */  addiu      $a1, $zero, 0x280
/* E2314 80038E04 0C028D89 */  jal        func_800A3624
/* E2318 80038E08 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E231C 80038E0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* E2320 80038E10 8FB00010 */  lw         $s0, 0x10($sp)
/* E2324 80038E14 03E00008 */  jr         $ra
/* E2328 80038E18 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80038E1C_E232C
/* E232C 80038E1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* E2330 80038E20 AFBF0010 */  sw         $ra, 0x10($sp)
/* E2334 80038E24 0C00E109 */  jal        func_80038424_E1934
/* E2338 80038E28 00000000 */   nop
/* E233C 80038E2C 2404008E */  addiu      $a0, $zero, 0x8e
/* E2340 80038E30 3C01437F */  lui        $at, 0x437f
/* E2344 80038E34 44810000 */  mtc1       $at, $f0
/* E2348 80038E38 24050005 */  addiu      $a1, $zero, 5
/* E234C 80038E3C 3C018007 */  lui        $at, %hi(D_8006C3F4)
/* E2350 80038E40 AC20C3F4 */  sw         $zero, %lo(D_8006C3F4)($at)
/* E2354 80038E44 3C018007 */  lui        $at, %hi(D_8006C3E8)
/* E2358 80038E48 E420C3E8 */  swc1       $f0, %lo(D_8006C3E8)($at)
/* E235C 80038E4C 3C018007 */  lui        $at, %hi(D_8006C3EC)
/* E2360 80038E50 E420C3EC */  swc1       $f0, %lo(D_8006C3EC)($at)
/* E2364 80038E54 3C018007 */  lui        $at, %hi(D_8006C3F0)
/* E2368 80038E58 E420C3F0 */  swc1       $f0, %lo(D_8006C3F0)($at)
/* E236C 80038E5C 0C00D925 */  jal        func_80036494_DF9A4
/* E2370 80038E60 2406001F */   addiu     $a2, $zero, 0x1f
/* E2374 80038E64 8C44000C */  lw         $a0, 0xc($v0)
/* E2378 80038E68 24050040 */  addiu      $a1, $zero, 0x40
/* E237C 80038E6C 0C028D89 */  jal        func_800A3624
/* E2380 80038E70 24060040 */   addiu     $a2, $zero, 0x40
/* E2384 80038E74 2404008F */  addiu      $a0, $zero, 0x8f
/* E2388 80038E78 24050006 */  addiu      $a1, $zero, 6
/* E238C 80038E7C 0C00D925 */  jal        func_80036494_DF9A4
/* E2390 80038E80 2406001E */   addiu     $a2, $zero, 0x1e
/* E2394 80038E84 8C44000C */  lw         $a0, 0xc($v0)
/* E2398 80038E88 24050100 */  addiu      $a1, $zero, 0x100
/* E239C 80038E8C 0C028D89 */  jal        func_800A3624
/* E23A0 80038E90 24060040 */   addiu     $a2, $zero, 0x40
/* E23A4 80038E94 3C04802F */  lui        $a0, 0x802f
/* E23A8 80038E98 34849800 */  ori        $a0, $a0, 0x9800
/* E23AC 80038E9C 24050090 */  addiu      $a1, $zero, 0x90
/* E23B0 80038EA0 2406000B */  addiu      $a2, $zero, 0xb
/* E23B4 80038EA4 0C00D9E0 */  jal        func_80036780_DFC90
/* E23B8 80038EA8 2407001D */   addiu     $a3, $zero, 0x1d
/* E23BC 80038EAC 8FBF0010 */  lw         $ra, 0x10($sp)
/* E23C0 80038EB0 03E00008 */  jr         $ra
/* E23C4 80038EB4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80038EB8_E23C8
/* E23C8 80038EB8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E23CC 80038EBC AFBF001C */  sw         $ra, 0x1c($sp)
/* E23D0 80038EC0 AFB20018 */  sw         $s2, 0x18($sp)
/* E23D4 80038EC4 AFB10014 */  sw         $s1, 0x14($sp)
/* E23D8 80038EC8 0C00E109 */  jal        func_80038424_E1934
/* E23DC 80038ECC AFB00010 */   sw        $s0, 0x10($sp)
/* E23E0 80038ED0 2404009B */  addiu      $a0, $zero, 0x9b
/* E23E4 80038ED4 24050002 */  addiu      $a1, $zero, 2
/* E23E8 80038ED8 0C00D925 */  jal        func_80036494_DF9A4
/* E23EC 80038EDC 24060017 */   addiu     $a2, $zero, 0x17
/* E23F0 80038EE0 00409021 */  addu       $s2, $v0, $zero
/* E23F4 80038EE4 8E44000C */  lw         $a0, 0xc($s2)
/* E23F8 80038EE8 8C82000C */  lw         $v0, 0xc($a0)
/* E23FC 80038EEC 94450000 */  lhu        $a1, ($v0)
/* E2400 80038EF0 94460002 */  lhu        $a2, 2($v0)
/* E2404 80038EF4 00052842 */  srl        $a1, $a1, 1
/* E2408 80038EF8 0C02912A */  jal        func_800A44A8
/* E240C 80038EFC 00063042 */   srl       $a2, $a2, 1
/* E2410 80038F00 8E44000C */  lw         $a0, 0xc($s2)
/* E2414 80038F04 24050280 */  addiu      $a1, $zero, 0x280
/* E2418 80038F08 0C028D89 */  jal        func_800A3624
/* E241C 80038F0C 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E2420 80038F10 8E43000C */  lw         $v1, 0xc($s2)
/* E2424 80038F14 9462001E */  lhu        $v0, 0x1e($v1)
/* E2428 80038F18 00008821 */  addu       $s1, $zero, $zero
/* E242C 80038F1C 34420044 */  ori        $v0, $v0, 0x44
/* E2430 80038F20 A462001E */  sh         $v0, 0x1e($v1)
.L80038F24:
/* E2434 80038F24 8E44000C */  lw         $a0, 0xc($s2)
/* E2438 80038F28 26300001 */  addiu      $s0, $s1, 1
/* E243C 80038F2C 320500FF */  andi       $a1, $s0, 0xff
/* E2440 80038F30 0C00DE6C */  jal        func_800379B0_E0EC0
/* E2444 80038F34 00003021 */   addu      $a2, $zero, $zero
/* E2448 80038F38 8E44000C */  lw         $a0, 0xc($s2)
/* E244C 80038F3C 26250006 */  addiu      $a1, $s1, 6
/* E2450 80038F40 30A500FF */  andi       $a1, $a1, 0xff
/* E2454 80038F44 00003021 */  addu       $a2, $zero, $zero
/* E2458 80038F48 0C00DE6C */  jal        func_800379B0_E0EC0
/* E245C 80038F4C 02008821 */   addu      $s1, $s0, $zero
/* E2460 80038F50 322200FF */  andi       $v0, $s1, 0xff
/* E2464 80038F54 2C420005 */  sltiu      $v0, $v0, 5
/* E2468 80038F58 1440FFF2 */  bnez       $v0, .L80038F24
/* E246C 80038F5C 2404009B */   addiu     $a0, $zero, 0x9b
/* E2470 80038F60 24050002 */  addiu      $a1, $zero, 2
/* E2474 80038F64 0C00D925 */  jal        func_80036494_DF9A4
/* E2478 80038F68 24060018 */   addiu     $a2, $zero, 0x18
/* E247C 80038F6C 00409021 */  addu       $s2, $v0, $zero
/* E2480 80038F70 8E44000C */  lw         $a0, 0xc($s2)
/* E2484 80038F74 8C82000C */  lw         $v0, 0xc($a0)
/* E2488 80038F78 94450000 */  lhu        $a1, ($v0)
/* E248C 80038F7C 94460002 */  lhu        $a2, 2($v0)
/* E2490 80038F80 00052842 */  srl        $a1, $a1, 1
/* E2494 80038F84 0C02912A */  jal        func_800A44A8
/* E2498 80038F88 00063042 */   srl       $a2, $a2, 1
/* E249C 80038F8C 8E44000C */  lw         $a0, 0xc($s2)
/* E24A0 80038F90 24050280 */  addiu      $a1, $zero, 0x280
/* E24A4 80038F94 0C028D89 */  jal        func_800A3624
/* E24A8 80038F98 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E24AC 80038F9C 8E43000C */  lw         $v1, 0xc($s2)
/* E24B0 80038FA0 9462001E */  lhu        $v0, 0x1e($v1)
/* E24B4 80038FA4 00008821 */  addu       $s1, $zero, $zero
/* E24B8 80038FA8 34420044 */  ori        $v0, $v0, 0x44
/* E24BC 80038FAC A462001E */  sh         $v0, 0x1e($v1)
.L80038FB0:
/* E24C0 80038FB0 8E44000C */  lw         $a0, 0xc($s2)
/* E24C4 80038FB4 26250006 */  addiu      $a1, $s1, 6
/* E24C8 80038FB8 30A500FF */  andi       $a1, $a1, 0xff
/* E24CC 80038FBC 0C00DE6C */  jal        func_800379B0_E0EC0
/* E24D0 80038FC0 00003021 */   addu      $a2, $zero, $zero
/* E24D4 80038FC4 8E44000C */  lw         $a0, 0xc($s2)
/* E24D8 80038FC8 2625000B */  addiu      $a1, $s1, 0xb
/* E24DC 80038FCC 30A500FF */  andi       $a1, $a1, 0xff
/* E24E0 80038FD0 00003021 */  addu       $a2, $zero, $zero
/* E24E4 80038FD4 0C00DE6C */  jal        func_800379B0_E0EC0
/* E24E8 80038FD8 26310001 */   addiu     $s1, $s1, 1
/* E24EC 80038FDC 322200FF */  andi       $v0, $s1, 0xff
/* E24F0 80038FE0 2C420005 */  sltiu      $v0, $v0, 5
/* E24F4 80038FE4 1440FFF2 */  bnez       $v0, .L80038FB0
/* E24F8 80038FE8 2404009B */   addiu     $a0, $zero, 0x9b
/* E24FC 80038FEC 24050002 */  addiu      $a1, $zero, 2
/* E2500 80038FF0 0C00D925 */  jal        func_80036494_DF9A4
/* E2504 80038FF4 24060019 */   addiu     $a2, $zero, 0x19
/* E2508 80038FF8 00409021 */  addu       $s2, $v0, $zero
/* E250C 80038FFC 8E44000C */  lw         $a0, 0xc($s2)
/* E2510 80039000 8C82000C */  lw         $v0, 0xc($a0)
/* E2514 80039004 94450000 */  lhu        $a1, ($v0)
/* E2518 80039008 94460002 */  lhu        $a2, 2($v0)
/* E251C 8003900C 00052842 */  srl        $a1, $a1, 1
/* E2520 80039010 0C02912A */  jal        func_800A44A8
/* E2524 80039014 00063042 */   srl       $a2, $a2, 1
/* E2528 80039018 8E44000C */  lw         $a0, 0xc($s2)
/* E252C 8003901C 24050280 */  addiu      $a1, $zero, 0x280
/* E2530 80039020 0C028D89 */  jal        func_800A3624
/* E2534 80039024 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E2538 80039028 8E43000C */  lw         $v1, 0xc($s2)
/* E253C 8003902C 9462001E */  lhu        $v0, 0x1e($v1)
/* E2540 80039030 00008821 */  addu       $s1, $zero, $zero
/* E2544 80039034 34420044 */  ori        $v0, $v0, 0x44
/* E2548 80039038 A462001E */  sh         $v0, 0x1e($v1)
.L8003903C:
/* E254C 8003903C 8E44000C */  lw         $a0, 0xc($s2)
/* E2550 80039040 26300001 */  addiu      $s0, $s1, 1
/* E2554 80039044 320500FF */  andi       $a1, $s0, 0xff
/* E2558 80039048 0C00DE6C */  jal        func_800379B0_E0EC0
/* E255C 8003904C 00003021 */   addu      $a2, $zero, $zero
/* E2560 80039050 8E44000C */  lw         $a0, 0xc($s2)
/* E2564 80039054 2625000B */  addiu      $a1, $s1, 0xb
/* E2568 80039058 30A500FF */  andi       $a1, $a1, 0xff
/* E256C 8003905C 00003021 */  addu       $a2, $zero, $zero
/* E2570 80039060 0C00DE6C */  jal        func_800379B0_E0EC0
/* E2574 80039064 02008821 */   addu      $s1, $s0, $zero
/* E2578 80039068 322200FF */  andi       $v0, $s1, 0xff
/* E257C 8003906C 2C420005 */  sltiu      $v0, $v0, 5
/* E2580 80039070 1440FFF2 */  bnez       $v0, .L8003903C
/* E2584 80039074 24040017 */   addiu     $a0, $zero, 0x17
/* E2588 80039078 0C00DD19 */  jal        func_80037464_E0974
/* E258C 8003907C 2405001A */   addiu     $a1, $zero, 0x1a
/* E2590 80039080 00409021 */  addu       $s2, $v0, $zero
/* E2594 80039084 8E44000C */  lw         $a0, 0xc($s2)
/* E2598 80039088 8C82000C */  lw         $v0, 0xc($a0)
/* E259C 8003908C 94450000 */  lhu        $a1, ($v0)
/* E25A0 80039090 94460002 */  lhu        $a2, 2($v0)
/* E25A4 80039094 00052842 */  srl        $a1, $a1, 1
/* E25A8 80039098 0C02912A */  jal        func_800A44A8
/* E25AC 8003909C 00063042 */   srl       $a2, $a2, 1
/* E25B0 800390A0 8E44000C */  lw         $a0, 0xc($s2)
/* E25B4 800390A4 24050280 */  addiu      $a1, $zero, 0x280
/* E25B8 800390A8 0C028D89 */  jal        func_800A3624
/* E25BC 800390AC 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E25C0 800390B0 8E43000C */  lw         $v1, 0xc($s2)
/* E25C4 800390B4 9462001E */  lhu        $v0, 0x1e($v1)
/* E25C8 800390B8 24040018 */  addiu      $a0, $zero, 0x18
/* E25CC 800390BC 2405001B */  addiu      $a1, $zero, 0x1b
/* E25D0 800390C0 34420044 */  ori        $v0, $v0, 0x44
/* E25D4 800390C4 0C00DD19 */  jal        func_80037464_E0974
/* E25D8 800390C8 A462001E */   sh        $v0, 0x1e($v1)
/* E25DC 800390CC 00409021 */  addu       $s2, $v0, $zero
/* E25E0 800390D0 8E44000C */  lw         $a0, 0xc($s2)
/* E25E4 800390D4 8C82000C */  lw         $v0, 0xc($a0)
/* E25E8 800390D8 94450000 */  lhu        $a1, ($v0)
/* E25EC 800390DC 94460002 */  lhu        $a2, 2($v0)
/* E25F0 800390E0 00052842 */  srl        $a1, $a1, 1
/* E25F4 800390E4 0C02912A */  jal        func_800A44A8
/* E25F8 800390E8 00063042 */   srl       $a2, $a2, 1
/* E25FC 800390EC 8E44000C */  lw         $a0, 0xc($s2)
/* E2600 800390F0 24050280 */  addiu      $a1, $zero, 0x280
/* E2604 800390F4 0C028D89 */  jal        func_800A3624
/* E2608 800390F8 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E260C 800390FC 8E43000C */  lw         $v1, 0xc($s2)
/* E2610 80039100 9462001E */  lhu        $v0, 0x1e($v1)
/* E2614 80039104 24040019 */  addiu      $a0, $zero, 0x19
/* E2618 80039108 2405001C */  addiu      $a1, $zero, 0x1c
/* E261C 8003910C 34420044 */  ori        $v0, $v0, 0x44
/* E2620 80039110 0C00DD19 */  jal        func_80037464_E0974
/* E2624 80039114 A462001E */   sh        $v0, 0x1e($v1)
/* E2628 80039118 00409021 */  addu       $s2, $v0, $zero
/* E262C 8003911C 8E44000C */  lw         $a0, 0xc($s2)
/* E2630 80039120 8C82000C */  lw         $v0, 0xc($a0)
/* E2634 80039124 94450000 */  lhu        $a1, ($v0)
/* E2638 80039128 94460002 */  lhu        $a2, 2($v0)
/* E263C 8003912C 00052842 */  srl        $a1, $a1, 1
/* E2640 80039130 0C02912A */  jal        func_800A44A8
/* E2644 80039134 00063042 */   srl       $a2, $a2, 1
/* E2648 80039138 8E44000C */  lw         $a0, 0xc($s2)
/* E264C 8003913C 24050280 */  addiu      $a1, $zero, 0x280
/* E2650 80039140 0C028D89 */  jal        func_800A3624
/* E2654 80039144 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E2658 80039148 8E43000C */  lw         $v1, 0xc($s2)
/* E265C 8003914C 9462001E */  lhu        $v0, 0x1e($v1)
/* E2660 80039150 34420044 */  ori        $v0, $v0, 0x44
/* E2664 80039154 A462001E */  sh         $v0, 0x1e($v1)
/* E2668 80039158 8FBF001C */  lw         $ra, 0x1c($sp)
/* E266C 8003915C 8FB20018 */  lw         $s2, 0x18($sp)
/* E2670 80039160 8FB10014 */  lw         $s1, 0x14($sp)
/* E2674 80039164 8FB00010 */  lw         $s0, 0x10($sp)
/* E2678 80039168 03E00008 */  jr         $ra
/* E267C 8003916C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_80039170_E2680
/* E2680 80039170 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E2684 80039174 AFBF002C */  sw         $ra, 0x2c($sp)
/* E2688 80039178 AFB40028 */  sw         $s4, 0x28($sp)
/* E268C 8003917C AFB30024 */  sw         $s3, 0x24($sp)
/* E2690 80039180 AFB20020 */  sw         $s2, 0x20($sp)
/* E2694 80039184 AFB1001C */  sw         $s1, 0x1c($sp)
/* E2698 80039188 AFB00018 */  sw         $s0, 0x18($sp)
/* E269C 8003918C F7B40030 */  sdc1       $f20, 0x30($sp)
/* E26A0 80039190 0C00E109 */  jal        func_80038424_E1934
/* E26A4 80039194 24100006 */   addiu     $s0, $zero, 6
/* E26A8 80039198 240400BF */  addiu      $a0, $zero, 0xbf
/* E26AC 8003919C 24050002 */  addiu      $a1, $zero, 2
/* E26B0 800391A0 0C00D925 */  jal        func_80036494_DF9A4
/* E26B4 800391A4 24060024 */   addiu     $a2, $zero, 0x24
/* E26B8 800391A8 00409821 */  addu       $s3, $v0, $zero
/* E26BC 800391AC 3C014000 */  lui        $at, 0x4000
/* E26C0 800391B0 4481A000 */  mtc1       $at, $f20
/* E26C4 800391B4 8E64000C */  lw         $a0, 0xc($s3)
/* E26C8 800391B8 4406A000 */  mfc1       $a2, $f20
/* E26CC 800391BC 4407A000 */  mfc1       $a3, $f20
/* E26D0 800391C0 00000000 */  nop
/* E26D4 800391C4 0C02915B */  jal        func_800A456C
/* E26D8 800391C8 00002821 */   addu      $a1, $zero, $zero
/* E26DC 800391CC 8E64000C */  lw         $a0, 0xc($s3)
/* E26E0 800391D0 8C82000C */  lw         $v0, 0xc($a0)
/* E26E4 800391D4 94450000 */  lhu        $a1, ($v0)
/* E26E8 800391D8 94460002 */  lhu        $a2, 2($v0)
/* E26EC 800391DC 00052842 */  srl        $a1, $a1, 1
/* E26F0 800391E0 0C02912A */  jal        func_800A44A8
/* E26F4 800391E4 00063042 */   srl       $a2, $a2, 1
/* E26F8 800391E8 8E64000C */  lw         $a0, 0xc($s3)
/* E26FC 800391EC 24050280 */  addiu      $a1, $zero, 0x280
/* E2700 800391F0 0C028D89 */  jal        func_800A3624
/* E2704 800391F4 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E2708 800391F8 8E63000C */  lw         $v1, 0xc($s3)
/* E270C 800391FC 240400BF */  addiu      $a0, $zero, 0xbf
/* E2710 80039200 9462001E */  lhu        $v0, 0x1e($v1)
/* E2714 80039204 24050002 */  addiu      $a1, $zero, 2
/* E2718 80039208 24060025 */  addiu      $a2, $zero, 0x25
/* E271C 8003920C 34420004 */  ori        $v0, $v0, 4
/* E2720 80039210 0C00D925 */  jal        func_80036494_DF9A4
/* E2724 80039214 A462001E */   sh        $v0, 0x1e($v1)
/* E2728 80039218 00409821 */  addu       $s3, $v0, $zero
/* E272C 8003921C 8E64000C */  lw         $a0, 0xc($s3)
/* E2730 80039220 4406A000 */  mfc1       $a2, $f20
/* E2734 80039224 00002821 */  addu       $a1, $zero, $zero
/* E2738 80039228 0C02915B */  jal        func_800A456C
/* E273C 8003922C 00C03821 */   addu      $a3, $a2, $zero
/* E2740 80039230 8E64000C */  lw         $a0, 0xc($s3)
/* E2744 80039234 8C82000C */  lw         $v0, 0xc($a0)
/* E2748 80039238 94450000 */  lhu        $a1, ($v0)
/* E274C 8003923C 94460002 */  lhu        $a2, 2($v0)
/* E2750 80039240 00052842 */  srl        $a1, $a1, 1
/* E2754 80039244 0C02912A */  jal        func_800A44A8
/* E2758 80039248 00063042 */   srl       $a2, $a2, 1
/* E275C 8003924C 8E64000C */  lw         $a0, 0xc($s3)
/* E2760 80039250 24050280 */  addiu      $a1, $zero, 0x280
/* E2764 80039254 0C028D89 */  jal        func_800A3624
/* E2768 80039258 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E276C 8003925C 8E63000C */  lw         $v1, 0xc($s3)
/* E2770 80039260 9462001E */  lhu        $v0, 0x1e($v1)
/* E2774 80039264 34420004 */  ori        $v0, $v0, 4
/* E2778 80039268 A462001E */  sh         $v0, 0x1e($v1)
.L8003926C:
/* E277C 8003926C 8E64000C */  lw         $a0, 0xc($s3)
/* E2780 80039270 320500FF */  andi       $a1, $s0, 0xff
/* E2784 80039274 3406E739 */  ori        $a2, $zero, 0xe739
/* E2788 80039278 0C00DE6C */  jal        func_800379B0_E0EC0
/* E278C 8003927C 26100001 */   addiu     $s0, $s0, 1
/* E2790 80039280 320200FF */  andi       $v0, $s0, 0xff
/* E2794 80039284 2C420010 */  sltiu      $v0, $v0, 0x10
/* E2798 80039288 1440FFF8 */  bnez       $v0, .L8003926C
/* E279C 8003928C 24040011 */   addiu     $a0, $zero, 0x11
/* E27A0 80039290 24050001 */  addiu      $a1, $zero, 1
/* E27A4 80039294 0C00D925 */  jal        func_80036494_DF9A4
/* E27A8 80039298 24060022 */   addiu     $a2, $zero, 0x22
/* E27AC 8003929C 00409821 */  addu       $s3, $v0, $zero
/* E27B0 800392A0 8E64000C */  lw         $a0, 0xc($s3)
/* E27B4 800392A4 24050033 */  addiu      $a1, $zero, 0x33
/* E27B8 800392A8 0C028F9A */  jal        func_800A3E68
/* E27BC 800392AC 24060044 */   addiu     $a2, $zero, 0x44
/* E27C0 800392B0 8E64000C */  lw         $a0, 0xc($s3)
/* E27C4 800392B4 00002821 */  addu       $a1, $zero, $zero
/* E27C8 800392B8 0C028D89 */  jal        func_800A3624
/* E27CC 800392BC 00003021 */   addu      $a2, $zero, $zero
/* E27D0 800392C0 AFA00010 */  sw         $zero, 0x10($sp)
/* E27D4 800392C4 8E64000C */  lw         $a0, 0xc($s3)
/* E27D8 800392C8 240500FF */  addiu      $a1, $zero, 0xff
/* E27DC 800392CC 240600FF */  addiu      $a2, $zero, 0xff
/* E27E0 800392D0 0C028E41 */  jal        func_800A3904
/* E27E4 800392D4 240700FF */   addiu     $a3, $zero, 0xff
/* E27E8 800392D8 240400C1 */  addiu      $a0, $zero, 0xc1
/* E27EC 800392DC 24050001 */  addiu      $a1, $zero, 1
/* E27F0 800392E0 0C00D925 */  jal        func_80036494_DF9A4
/* E27F4 800392E4 24060057 */   addiu     $a2, $zero, 0x57
/* E27F8 800392E8 00409821 */  addu       $s3, $v0, $zero
/* E27FC 800392EC 8E64000C */  lw         $a0, 0xc($s3)
/* E2800 800392F0 24050440 */  addiu      $a1, $zero, 0x440
/* E2804 800392F4 0C028D89 */  jal        func_800A3624
/* E2808 800392F8 24060058 */   addiu     $a2, $zero, 0x58
/* E280C 800392FC 240400C7 */  addiu      $a0, $zero, 0xc7
/* E2810 80039300 24050001 */  addiu      $a1, $zero, 1
/* E2814 80039304 8E62000C */  lw         $v0, 0xc($s3)
/* E2818 80039308 24060058 */  addiu      $a2, $zero, 0x58
/* E281C 8003930C 24100043 */  addiu      $s0, $zero, 0x43
/* E2820 80039310 0C00D925 */  jal        func_80036494_DF9A4
/* E2824 80039314 A450001C */   sh        $s0, 0x1c($v0)
/* E2828 80039318 00409821 */  addu       $s3, $v0, $zero
/* E282C 8003931C 8E64000C */  lw         $a0, 0xc($s3)
/* E2830 80039320 24050229 */  addiu      $a1, $zero, 0x229
/* E2834 80039324 0C028F9A */  jal        func_800A3E68
/* E2838 80039328 24060400 */   addiu     $a2, $zero, 0x400
/* E283C 8003932C 8E64000C */  lw         $a0, 0xc($s3)
/* E2840 80039330 24050434 */  addiu      $a1, $zero, 0x434
/* E2844 80039334 0C028D89 */  jal        func_800A3624
/* E2848 80039338 24060050 */   addiu     $a2, $zero, 0x50
/* E284C 8003933C 24120080 */  addiu      $s2, $zero, 0x80
/* E2850 80039340 AFB20010 */  sw         $s2, 0x10($sp)
/* E2854 80039344 8E64000C */  lw         $a0, 0xc($s3)
/* E2858 80039348 240500FF */  addiu      $a1, $zero, 0xff
/* E285C 8003934C 240600FF */  addiu      $a2, $zero, 0xff
/* E2860 80039350 0C028E41 */  jal        func_800A3904
/* E2864 80039354 240700FF */   addiu     $a3, $zero, 0xff
/* E2868 80039358 240400C2 */  addiu      $a0, $zero, 0xc2
/* E286C 8003935C 24050001 */  addiu      $a1, $zero, 1
/* E2870 80039360 8E62000C */  lw         $v0, 0xc($s3)
/* E2874 80039364 24060059 */  addiu      $a2, $zero, 0x59
/* E2878 80039368 24110042 */  addiu      $s1, $zero, 0x42
/* E287C 8003936C 0C00D925 */  jal        func_80036494_DF9A4
/* E2880 80039370 A451001C */   sh        $s1, 0x1c($v0)
/* E2884 80039374 00409821 */  addu       $s3, $v0, $zero
/* E2888 80039378 8E64000C */  lw         $a0, 0xc($s3)
/* E288C 8003937C 240503A8 */  addiu      $a1, $zero, 0x3a8
/* E2890 80039380 0C028D89 */  jal        func_800A3624
/* E2894 80039384 240600A4 */   addiu     $a2, $zero, 0xa4
/* E2898 80039388 240400C7 */  addiu      $a0, $zero, 0xc7
/* E289C 8003938C 8E62000C */  lw         $v0, 0xc($s3)
/* E28A0 80039390 24050001 */  addiu      $a1, $zero, 1
/* E28A4 80039394 2406005A */  addiu      $a2, $zero, 0x5a
/* E28A8 80039398 0C00D925 */  jal        func_80036494_DF9A4
/* E28AC 8003939C A450001C */   sh        $s0, 0x1c($v0)
/* E28B0 800393A0 00409821 */  addu       $s3, $v0, $zero
/* E28B4 800393A4 8E64000C */  lw         $a0, 0xc($s3)
/* E28B8 800393A8 240500F3 */  addiu      $a1, $zero, 0xf3
/* E28BC 800393AC 0C028F9A */  jal        func_800A3E68
/* E28C0 800393B0 24060400 */   addiu     $a2, $zero, 0x400
/* E28C4 800393B4 8E64000C */  lw         $a0, 0xc($s3)
/* E28C8 800393B8 2405039C */  addiu      $a1, $zero, 0x39c
/* E28CC 800393BC 0C028D89 */  jal        func_800A3624
/* E28D0 800393C0 2406009C */   addiu     $a2, $zero, 0x9c
/* E28D4 800393C4 AFB20010 */  sw         $s2, 0x10($sp)
/* E28D8 800393C8 8E64000C */  lw         $a0, 0xc($s3)
/* E28DC 800393CC 240500FF */  addiu      $a1, $zero, 0xff
/* E28E0 800393D0 240600FF */  addiu      $a2, $zero, 0xff
/* E28E4 800393D4 0C028E41 */  jal        func_800A3904
/* E28E8 800393D8 240700FF */   addiu     $a3, $zero, 0xff
/* E28EC 800393DC 240400C3 */  addiu      $a0, $zero, 0xc3
/* E28F0 800393E0 8E62000C */  lw         $v0, 0xc($s3)
/* E28F4 800393E4 24050001 */  addiu      $a1, $zero, 1
/* E28F8 800393E8 2406005B */  addiu      $a2, $zero, 0x5b
/* E28FC 800393EC 0C00D925 */  jal        func_80036494_DF9A4
/* E2900 800393F0 A451001C */   sh        $s1, 0x1c($v0)
/* E2904 800393F4 00409821 */  addu       $s3, $v0, $zero
/* E2908 800393F8 8E64000C */  lw         $a0, 0xc($s3)
/* E290C 800393FC 24050208 */  addiu      $a1, $zero, 0x208
/* E2910 80039400 0C028D89 */  jal        func_800A3624
/* E2914 80039404 240600F0 */   addiu     $a2, $zero, 0xf0
/* E2918 80039408 240400C4 */  addiu      $a0, $zero, 0xc4
/* E291C 8003940C 8E62000C */  lw         $v0, 0xc($s3)
/* E2920 80039410 24050001 */  addiu      $a1, $zero, 1
/* E2924 80039414 2406005C */  addiu      $a2, $zero, 0x5c
/* E2928 80039418 0C00D925 */  jal        func_80036494_DF9A4
/* E292C 8003941C A450001C */   sh        $s0, 0x1c($v0)
/* E2930 80039420 00409821 */  addu       $s3, $v0, $zero
/* E2934 80039424 8E64000C */  lw         $a0, 0xc($s3)
/* E2938 80039428 2405025C */  addiu      $a1, $zero, 0x25c
/* E293C 8003942C 0C028D89 */  jal        func_800A3624
/* E2940 80039430 240600F0 */   addiu     $a2, $zero, 0xf0
/* E2944 80039434 240400C5 */  addiu      $a0, $zero, 0xc5
/* E2948 80039438 8E62000C */  lw         $v0, 0xc($s3)
/* E294C 8003943C 24050001 */  addiu      $a1, $zero, 1
/* E2950 80039440 2406005D */  addiu      $a2, $zero, 0x5d
/* E2954 80039444 0C00D925 */  jal        func_80036494_DF9A4
/* E2958 80039448 A450001C */   sh        $s0, 0x1c($v0)
/* E295C 8003944C 00409821 */  addu       $s3, $v0, $zero
/* E2960 80039450 8E64000C */  lw         $a0, 0xc($s3)
/* E2964 80039454 240503C4 */  addiu      $a1, $zero, 0x3c4
/* E2968 80039458 0C028D89 */  jal        func_800A3624
/* E296C 8003945C 240600F0 */   addiu     $a2, $zero, 0xf0
/* E2970 80039460 240400D9 */  addiu      $a0, $zero, 0xd9
/* E2974 80039464 8E62000C */  lw         $v0, 0xc($s3)
/* E2978 80039468 24050001 */  addiu      $a1, $zero, 1
/* E297C 8003946C 2406005E */  addiu      $a2, $zero, 0x5e
/* E2980 80039470 0C00D925 */  jal        func_80036494_DF9A4
/* E2984 80039474 A450001C */   sh        $s0, 0x1c($v0)
/* E2988 80039478 00409821 */  addu       $s3, $v0, $zero
/* E298C 8003947C 8E64000C */  lw         $a0, 0xc($s3)
/* E2990 80039480 2405045C */  addiu      $a1, $zero, 0x45c
/* E2994 80039484 0C028D89 */  jal        func_800A3624
/* E2998 80039488 240600F0 */   addiu     $a2, $zero, 0xf0
/* E299C 8003948C 240400DB */  addiu      $a0, $zero, 0xdb
/* E29A0 80039490 8E62000C */  lw         $v0, 0xc($s3)
/* E29A4 80039494 24050001 */  addiu      $a1, $zero, 1
/* E29A8 80039498 2406005F */  addiu      $a2, $zero, 0x5f
/* E29AC 8003949C 0C00D925 */  jal        func_80036494_DF9A4
/* E29B0 800394A0 A450001C */   sh        $s0, 0x1c($v0)
/* E29B4 800394A4 00409821 */  addu       $s3, $v0, $zero
/* E29B8 800394A8 8E64000C */  lw         $a0, 0xc($s3)
/* E29BC 800394AC 2405047C */  addiu      $a1, $zero, 0x47c
/* E29C0 800394B0 0C028D89 */  jal        func_800A3624
/* E29C4 800394B4 240600F0 */   addiu     $a2, $zero, 0xf0
/* E29C8 800394B8 240400C7 */  addiu      $a0, $zero, 0xc7
/* E29CC 800394BC 8E62000C */  lw         $v0, 0xc($s3)
/* E29D0 800394C0 24050001 */  addiu      $a1, $zero, 1
/* E29D4 800394C4 24060060 */  addiu      $a2, $zero, 0x60
/* E29D8 800394C8 0C00D925 */  jal        func_80036494_DF9A4
/* E29DC 800394CC A450001C */   sh        $s0, 0x1c($v0)
/* E29E0 800394D0 00409821 */  addu       $s3, $v0, $zero
/* E29E4 800394D4 8E64000C */  lw         $a0, 0xc($s3)
/* E29E8 800394D8 24050060 */  addiu      $a1, $zero, 0x60
/* E29EC 800394DC 0C028F9A */  jal        func_800A3E68
/* E29F0 800394E0 24060400 */   addiu     $a2, $zero, 0x400
/* E29F4 800394E4 8E64000C */  lw         $a0, 0xc($s3)
/* E29F8 800394E8 240501FC */  addiu      $a1, $zero, 0x1fc
/* E29FC 800394EC 0C028D89 */  jal        func_800A3624
/* E2A00 800394F0 240600E8 */   addiu     $a2, $zero, 0xe8
/* E2A04 800394F4 AFB20010 */  sw         $s2, 0x10($sp)
/* E2A08 800394F8 8E64000C */  lw         $a0, 0xc($s3)
/* E2A0C 800394FC 240500FF */  addiu      $a1, $zero, 0xff
/* E2A10 80039500 240600FF */  addiu      $a2, $zero, 0xff
/* E2A14 80039504 0C028E41 */  jal        func_800A3904
/* E2A18 80039508 240700FF */   addiu     $a3, $zero, 0xff
/* E2A1C 8003950C 240400C6 */  addiu      $a0, $zero, 0xc6
/* E2A20 80039510 8E62000C */  lw         $v0, 0xc($s3)
/* E2A24 80039514 24050001 */  addiu      $a1, $zero, 1
/* E2A28 80039518 24060061 */  addiu      $a2, $zero, 0x61
/* E2A2C 8003951C 0C00D925 */  jal        func_80036494_DF9A4
/* E2A30 80039520 A451001C */   sh        $s1, 0x1c($v0)
/* E2A34 80039524 00409821 */  addu       $s3, $v0, $zero
/* E2A38 80039528 8E64000C */  lw         $a0, 0xc($s3)
/* E2A3C 8003952C 24050060 */  addiu      $a1, $zero, 0x60
/* E2A40 80039530 0C028D89 */  jal        func_800A3624
/* E2A44 80039534 24060338 */   addiu     $a2, $zero, 0x338
/* E2A48 80039538 240400DA */  addiu      $a0, $zero, 0xda
/* E2A4C 8003953C 8E62000C */  lw         $v0, 0xc($s3)
/* E2A50 80039540 24050001 */  addiu      $a1, $zero, 1
/* E2A54 80039544 24060062 */  addiu      $a2, $zero, 0x62
/* E2A58 80039548 0C00D925 */  jal        func_80036494_DF9A4
/* E2A5C 8003954C A450001C */   sh        $s0, 0x1c($v0)
/* E2A60 80039550 00409821 */  addu       $s3, $v0, $zero
/* E2A64 80039554 8E64000C */  lw         $a0, 0xc($s3)
/* E2A68 80039558 240500E0 */  addiu      $a1, $zero, 0xe0
/* E2A6C 8003955C 0C028D89 */  jal        func_800A3624
/* E2A70 80039560 24060338 */   addiu     $a2, $zero, 0x338
/* E2A74 80039564 240400DE */  addiu      $a0, $zero, 0xde
/* E2A78 80039568 8E62000C */  lw         $v0, 0xc($s3)
/* E2A7C 8003956C 24050001 */  addiu      $a1, $zero, 1
/* E2A80 80039570 24060063 */  addiu      $a2, $zero, 0x63
/* E2A84 80039574 0C00D925 */  jal        func_80036494_DF9A4
/* E2A88 80039578 A450001C */   sh        $s0, 0x1c($v0)
/* E2A8C 8003957C 00409821 */  addu       $s3, $v0, $zero
/* E2A90 80039580 8E64000C */  lw         $a0, 0xc($s3)
/* E2A94 80039584 24050100 */  addiu      $a1, $zero, 0x100
/* E2A98 80039588 0C028D89 */  jal        func_800A3624
/* E2A9C 8003958C 24060338 */   addiu     $a2, $zero, 0x338
/* E2AA0 80039590 240400DB */  addiu      $a0, $zero, 0xdb
/* E2AA4 80039594 8E62000C */  lw         $v0, 0xc($s3)
/* E2AA8 80039598 24050001 */  addiu      $a1, $zero, 1
/* E2AAC 8003959C 24060064 */  addiu      $a2, $zero, 0x64
/* E2AB0 800395A0 0C00D925 */  jal        func_80036494_DF9A4
/* E2AB4 800395A4 A450001C */   sh        $s0, 0x1c($v0)
/* E2AB8 800395A8 00409821 */  addu       $s3, $v0, $zero
/* E2ABC 800395AC 8E64000C */  lw         $a0, 0xc($s3)
/* E2AC0 800395B0 24050140 */  addiu      $a1, $zero, 0x140
/* E2AC4 800395B4 0C028D89 */  jal        func_800A3624
/* E2AC8 800395B8 24060338 */   addiu     $a2, $zero, 0x338
/* E2ACC 800395BC 240400D9 */  addiu      $a0, $zero, 0xd9
/* E2AD0 800395C0 8E62000C */  lw         $v0, 0xc($s3)
/* E2AD4 800395C4 24050001 */  addiu      $a1, $zero, 1
/* E2AD8 800395C8 24060065 */  addiu      $a2, $zero, 0x65
/* E2ADC 800395CC 0C00D925 */  jal        func_80036494_DF9A4
/* E2AE0 800395D0 A450001C */   sh        $s0, 0x1c($v0)
/* E2AE4 800395D4 00409821 */  addu       $s3, $v0, $zero
/* E2AE8 800395D8 8E64000C */  lw         $a0, 0xc($s3)
/* E2AEC 800395DC 24050160 */  addiu      $a1, $zero, 0x160
/* E2AF0 800395E0 0C028D89 */  jal        func_800A3624
/* E2AF4 800395E4 24060338 */   addiu     $a2, $zero, 0x338
/* E2AF8 800395E8 240400D9 */  addiu      $a0, $zero, 0xd9
/* E2AFC 800395EC 8E62000C */  lw         $v0, 0xc($s3)
/* E2B00 800395F0 24050001 */  addiu      $a1, $zero, 1
/* E2B04 800395F4 24060066 */  addiu      $a2, $zero, 0x66
/* E2B08 800395F8 0C00D925 */  jal        func_80036494_DF9A4
/* E2B0C 800395FC A450001C */   sh        $s0, 0x1c($v0)
/* E2B10 80039600 00409821 */  addu       $s3, $v0, $zero
/* E2B14 80039604 8E64000C */  lw         $a0, 0xc($s3)
/* E2B18 80039608 24050180 */  addiu      $a1, $zero, 0x180
/* E2B1C 8003960C 0C028D89 */  jal        func_800A3624
/* E2B20 80039610 24060338 */   addiu     $a2, $zero, 0x338
/* E2B24 80039614 240400D9 */  addiu      $a0, $zero, 0xd9
/* E2B28 80039618 8E62000C */  lw         $v0, 0xc($s3)
/* E2B2C 8003961C 24050001 */  addiu      $a1, $zero, 1
/* E2B30 80039620 24060067 */  addiu      $a2, $zero, 0x67
/* E2B34 80039624 0C00D925 */  jal        func_80036494_DF9A4
/* E2B38 80039628 A450001C */   sh        $s0, 0x1c($v0)
/* E2B3C 8003962C 00409821 */  addu       $s3, $v0, $zero
/* E2B40 80039630 8E64000C */  lw         $a0, 0xc($s3)
/* E2B44 80039634 240501A0 */  addiu      $a1, $zero, 0x1a0
/* E2B48 80039638 0C028D89 */  jal        func_800A3624
/* E2B4C 8003963C 24060338 */   addiu     $a2, $zero, 0x338
/* E2B50 80039640 240400D9 */  addiu      $a0, $zero, 0xd9
/* E2B54 80039644 8E62000C */  lw         $v0, 0xc($s3)
/* E2B58 80039648 24050001 */  addiu      $a1, $zero, 1
/* E2B5C 8003964C 24060068 */  addiu      $a2, $zero, 0x68
/* E2B60 80039650 0C00D925 */  jal        func_80036494_DF9A4
/* E2B64 80039654 A450001C */   sh        $s0, 0x1c($v0)
/* E2B68 80039658 00409821 */  addu       $s3, $v0, $zero
/* E2B6C 8003965C 8E64000C */  lw         $a0, 0xc($s3)
/* E2B70 80039660 240501E0 */  addiu      $a1, $zero, 0x1e0
/* E2B74 80039664 0C028D89 */  jal        func_800A3624
/* E2B78 80039668 24060338 */   addiu     $a2, $zero, 0x338
/* E2B7C 8003966C 240400E2 */  addiu      $a0, $zero, 0xe2
/* E2B80 80039670 8E62000C */  lw         $v0, 0xc($s3)
/* E2B84 80039674 24050001 */  addiu      $a1, $zero, 1
/* E2B88 80039678 24060069 */  addiu      $a2, $zero, 0x69
/* E2B8C 8003967C 0C00D925 */  jal        func_80036494_DF9A4
/* E2B90 80039680 A450001C */   sh        $s0, 0x1c($v0)
/* E2B94 80039684 00409821 */  addu       $s3, $v0, $zero
/* E2B98 80039688 8E64000C */  lw         $a0, 0xc($s3)
/* E2B9C 8003968C 24050200 */  addiu      $a1, $zero, 0x200
/* E2BA0 80039690 0C028D89 */  jal        func_800A3624
/* E2BA4 80039694 24060338 */   addiu     $a2, $zero, 0x338
/* E2BA8 80039698 240400E3 */  addiu      $a0, $zero, 0xe3
/* E2BAC 8003969C 8E62000C */  lw         $v0, 0xc($s3)
/* E2BB0 800396A0 24050001 */  addiu      $a1, $zero, 1
/* E2BB4 800396A4 2406006A */  addiu      $a2, $zero, 0x6a
/* E2BB8 800396A8 0C00D925 */  jal        func_80036494_DF9A4
/* E2BBC 800396AC A450001C */   sh        $s0, 0x1c($v0)
/* E2BC0 800396B0 00409821 */  addu       $s3, $v0, $zero
/* E2BC4 800396B4 8E64000C */  lw         $a0, 0xc($s3)
/* E2BC8 800396B8 24050220 */  addiu      $a1, $zero, 0x220
/* E2BCC 800396BC 0C028D89 */  jal        func_800A3624
/* E2BD0 800396C0 24060338 */   addiu     $a2, $zero, 0x338
/* E2BD4 800396C4 240400DB */  addiu      $a0, $zero, 0xdb
/* E2BD8 800396C8 8E62000C */  lw         $v0, 0xc($s3)
/* E2BDC 800396CC 24050001 */  addiu      $a1, $zero, 1
/* E2BE0 800396D0 2406006B */  addiu      $a2, $zero, 0x6b
/* E2BE4 800396D4 0C00D925 */  jal        func_80036494_DF9A4
/* E2BE8 800396D8 A450001C */   sh        $s0, 0x1c($v0)
/* E2BEC 800396DC 00409821 */  addu       $s3, $v0, $zero
/* E2BF0 800396E0 8E64000C */  lw         $a0, 0xc($s3)
/* E2BF4 800396E4 24050240 */  addiu      $a1, $zero, 0x240
/* E2BF8 800396E8 0C028D89 */  jal        func_800A3624
/* E2BFC 800396EC 24060338 */   addiu     $a2, $zero, 0x338
/* E2C00 800396F0 240400DA */  addiu      $a0, $zero, 0xda
/* E2C04 800396F4 8E62000C */  lw         $v0, 0xc($s3)
/* E2C08 800396F8 24050001 */  addiu      $a1, $zero, 1
/* E2C0C 800396FC 2406006C */  addiu      $a2, $zero, 0x6c
/* E2C10 80039700 0C00D925 */  jal        func_80036494_DF9A4
/* E2C14 80039704 A450001C */   sh        $s0, 0x1c($v0)
/* E2C18 80039708 00409821 */  addu       $s3, $v0, $zero
/* E2C1C 8003970C 8E64000C */  lw         $a0, 0xc($s3)
/* E2C20 80039710 24050260 */  addiu      $a1, $zero, 0x260
/* E2C24 80039714 0C028D89 */  jal        func_800A3624
/* E2C28 80039718 24060338 */   addiu     $a2, $zero, 0x338
/* E2C2C 8003971C 240400E3 */  addiu      $a0, $zero, 0xe3
/* E2C30 80039720 8E62000C */  lw         $v0, 0xc($s3)
/* E2C34 80039724 24050001 */  addiu      $a1, $zero, 1
/* E2C38 80039728 2406006D */  addiu      $a2, $zero, 0x6d
/* E2C3C 8003972C 0C00D925 */  jal        func_80036494_DF9A4
/* E2C40 80039730 A450001C */   sh        $s0, 0x1c($v0)
/* E2C44 80039734 00409821 */  addu       $s3, $v0, $zero
/* E2C48 80039738 8E64000C */  lw         $a0, 0xc($s3)
/* E2C4C 8003973C 24050280 */  addiu      $a1, $zero, 0x280
/* E2C50 80039740 0C028D89 */  jal        func_800A3624
/* E2C54 80039744 24060338 */   addiu     $a2, $zero, 0x338
/* E2C58 80039748 240400C7 */  addiu      $a0, $zero, 0xc7
/* E2C5C 8003974C 8E62000C */  lw         $v0, 0xc($s3)
/* E2C60 80039750 24050001 */  addiu      $a1, $zero, 1
/* E2C64 80039754 2406006E */  addiu      $a2, $zero, 0x6e
/* E2C68 80039758 0C00D925 */  jal        func_80036494_DF9A4
/* E2C6C 8003975C A450001C */   sh        $s0, 0x1c($v0)
/* E2C70 80039760 00409821 */  addu       $s3, $v0, $zero
/* E2C74 80039764 8E64000C */  lw         $a0, 0xc($s3)
/* E2C78 80039768 24050063 */  addiu      $a1, $zero, 0x63
/* E2C7C 8003976C 0C028F9A */  jal        func_800A3E68
/* E2C80 80039770 24060400 */   addiu     $a2, $zero, 0x400
/* E2C84 80039774 8E64000C */  lw         $a0, 0xc($s3)
/* E2C88 80039778 24050054 */  addiu      $a1, $zero, 0x54
/* E2C8C 8003977C 0C028D89 */  jal        func_800A3624
/* E2C90 80039780 24060330 */   addiu     $a2, $zero, 0x330
/* E2C94 80039784 AFB20010 */  sw         $s2, 0x10($sp)
/* E2C98 80039788 8E64000C */  lw         $a0, 0xc($s3)
/* E2C9C 8003978C 240500FF */  addiu      $a1, $zero, 0xff
/* E2CA0 80039790 240600FF */  addiu      $a2, $zero, 0xff
/* E2CA4 80039794 0C028E41 */  jal        func_800A3904
/* E2CA8 80039798 240700FF */   addiu     $a3, $zero, 0xff
/* E2CAC 8003979C 8E62000C */  lw         $v0, 0xc($s3)
/* E2CB0 800397A0 00008021 */  addu       $s0, $zero, $zero
/* E2CB4 800397A4 24120043 */  addiu      $s2, $zero, 0x43
/* E2CB8 800397A8 A451001C */  sh         $s1, 0x1c($v0)
/* E2CBC 800397AC 320600FF */  andi       $a2, $s0, 0xff
.L800397B0:
/* E2CC0 800397B0 24C400D9 */  addiu      $a0, $a2, 0xd9
/* E2CC4 800397B4 24050001 */  addiu      $a1, $zero, 1
/* E2CC8 800397B8 0C00D925 */  jal        func_80036494_DF9A4
/* E2CCC 800397BC 24C6006F */   addiu     $a2, $a2, 0x6f
/* E2CD0 800397C0 00409821 */  addu       $s3, $v0, $zero
/* E2CD4 800397C4 8E64000C */  lw         $a0, 0xc($s3)
/* E2CD8 800397C8 240502A0 */  addiu      $a1, $zero, 0x2a0
/* E2CDC 800397CC 0C028D89 */  jal        func_800A3624
/* E2CE0 800397D0 24060338 */   addiu     $a2, $zero, 0x338
/* E2CE4 800397D4 8E62000C */  lw         $v0, 0xc($s3)
/* E2CE8 800397D8 26100001 */  addiu      $s0, $s0, 1
/* E2CEC 800397DC A452001C */  sh         $s2, 0x1c($v0)
/* E2CF0 800397E0 320200FF */  andi       $v0, $s0, 0xff
/* E2CF4 800397E4 2C420006 */  sltiu      $v0, $v0, 6
/* E2CF8 800397E8 5440FFF1 */  bnezl      $v0, .L800397B0
/* E2CFC 800397EC 320600FF */   andi      $a2, $s0, 0xff
/* E2D00 800397F0 00008021 */  addu       $s0, $zero, $zero
/* E2D04 800397F4 24110043 */  addiu      $s1, $zero, 0x43
/* E2D08 800397F8 320600FF */  andi       $a2, $s0, 0xff
.L800397FC:
/* E2D0C 800397FC 24C400D9 */  addiu      $a0, $a2, 0xd9
/* E2D10 80039800 24050001 */  addiu      $a1, $zero, 1
/* E2D14 80039804 0C00D925 */  jal        func_80036494_DF9A4
/* E2D18 80039808 24C60075 */   addiu     $a2, $a2, 0x75
/* E2D1C 8003980C 00409821 */  addu       $s3, $v0, $zero
/* E2D20 80039810 8E64000C */  lw         $a0, 0xc($s3)
/* E2D24 80039814 240502C0 */  addiu      $a1, $zero, 0x2c0
/* E2D28 80039818 0C028D89 */  jal        func_800A3624
/* E2D2C 8003981C 24060338 */   addiu     $a2, $zero, 0x338
/* E2D30 80039820 8E62000C */  lw         $v0, 0xc($s3)
/* E2D34 80039824 26100001 */  addiu      $s0, $s0, 1
/* E2D38 80039828 A451001C */  sh         $s1, 0x1c($v0)
/* E2D3C 8003982C 320200FF */  andi       $v0, $s0, 0xff
/* E2D40 80039830 2C42000A */  sltiu      $v0, $v0, 0xa
/* E2D44 80039834 5440FFF1 */  bnezl      $v0, .L800397FC
/* E2D48 80039838 320600FF */   andi      $a2, $s0, 0xff
/* E2D4C 8003983C 240400C0 */  addiu      $a0, $zero, 0xc0
/* E2D50 80039840 24050001 */  addiu      $a1, $zero, 1
/* E2D54 80039844 0C00D925 */  jal        func_80036494_DF9A4
/* E2D58 80039848 24060089 */   addiu     $a2, $zero, 0x89
/* E2D5C 8003984C 00409821 */  addu       $s3, $v0, $zero
/* E2D60 80039850 8E64000C */  lw         $a0, 0xc($s3)
/* E2D64 80039854 00002821 */  addu       $a1, $zero, $zero
/* E2D68 80039858 00003021 */  addu       $a2, $zero, $zero
/* E2D6C 8003985C 24100001 */  addiu      $s0, $zero, 1
/* E2D70 80039860 3C14CCCC */  lui        $s4, 0xcccc
/* E2D74 80039864 3694CCCD */  ori        $s4, $s4, 0xcccd
/* E2D78 80039868 0C028D89 */  jal        func_800A3624
/* E2D7C 8003986C 24120030 */   addiu     $s2, $zero, 0x30
/* E2D80 80039870 24020030 */  addiu      $v0, $zero, 0x30
/* E2D84 80039874 AFA20010 */  sw         $v0, 0x10($sp)
/* E2D88 80039878 8E64000C */  lw         $a0, 0xc($s3)
/* E2D8C 8003987C 240500FF */  addiu      $a1, $zero, 0xff
/* E2D90 80039880 240600FF */  addiu      $a2, $zero, 0xff
/* E2D94 80039884 0C028E41 */  jal        func_800A3904
/* E2D98 80039888 240700FF */   addiu     $a3, $zero, 0xff
/* E2D9C 8003988C 8E63000C */  lw         $v1, 0xc($s3)
/* E2DA0 80039890 24110040 */  addiu      $s1, $zero, 0x40
/* E2DA4 80039894 24020040 */  addiu      $v0, $zero, 0x40
/* E2DA8 80039898 A462001C */  sh         $v0, 0x1c($v1)
/* E2DAC 8003989C 24040089 */  addiu      $a0, $zero, 0x89
.L800398A0:
/* E2DB0 800398A0 320500FF */  andi       $a1, $s0, 0xff
/* E2DB4 800398A4 0C00DD19 */  jal        func_80037464_E0974
/* E2DB8 800398A8 24A50089 */   addiu     $a1, $a1, 0x89
/* E2DBC 800398AC 320500FF */  andi       $a1, $s0, 0xff
/* E2DC0 800398B0 00B40019 */  multu      $a1, $s4
/* E2DC4 800398B4 00409821 */  addu       $s3, $v0, $zero
/* E2DC8 800398B8 8E62000C */  lw         $v0, 0xc($s3)
/* E2DCC 800398BC 8C420000 */  lw         $v0, ($v0)
/* E2DD0 800398C0 A040002F */  sb         $zero, 0x2f($v0)
/* E2DD4 800398C4 8E64000C */  lw         $a0, 0xc($s3)
/* E2DD8 800398C8 00004010 */  mfhi       $t0
/* E2DDC 800398CC 00083082 */  srl        $a2, $t0, 2
/* E2DE0 800398D0 00061080 */  sll        $v0, $a2, 2
/* E2DE4 800398D4 00461021 */  addu       $v0, $v0, $a2
/* E2DE8 800398D8 00A22823 */  subu       $a1, $a1, $v0
/* E2DEC 800398DC 00052E00 */  sll        $a1, $a1, 0x18
/* E2DF0 800398E0 00052C03 */  sra        $a1, $a1, 0x10
/* E2DF4 800398E4 30C600FF */  andi       $a2, $a2, 0xff
/* E2DF8 800398E8 0C028D89 */  jal        func_800A3624
/* E2DFC 800398EC 000631C0 */   sll       $a2, $a2, 7
/* E2E00 800398F0 AFB20010 */  sw         $s2, 0x10($sp)
/* E2E04 800398F4 8E64000C */  lw         $a0, 0xc($s3)
/* E2E08 800398F8 240500FF */  addiu      $a1, $zero, 0xff
/* E2E0C 800398FC 240600FF */  addiu      $a2, $zero, 0xff
/* E2E10 80039900 0C028E41 */  jal        func_800A3904
/* E2E14 80039904 240700FF */   addiu     $a3, $zero, 0xff
/* E2E18 80039908 8E62000C */  lw         $v0, 0xc($s3)
/* E2E1C 8003990C 26100001 */  addiu      $s0, $s0, 1
/* E2E20 80039910 A451001C */  sh         $s1, 0x1c($v0)
/* E2E24 80039914 320200FF */  andi       $v0, $s0, 0xff
/* E2E28 80039918 2C420028 */  sltiu      $v0, $v0, 0x28
/* E2E2C 8003991C 1440FFE0 */  bnez       $v0, .L800398A0
/* E2E30 80039920 24040089 */   addiu     $a0, $zero, 0x89
/* E2E34 80039924 8FBF002C */  lw         $ra, 0x2c($sp)
/* E2E38 80039928 8FB40028 */  lw         $s4, 0x28($sp)
/* E2E3C 8003992C 8FB30024 */  lw         $s3, 0x24($sp)
/* E2E40 80039930 8FB20020 */  lw         $s2, 0x20($sp)
/* E2E44 80039934 8FB1001C */  lw         $s1, 0x1c($sp)
/* E2E48 80039938 8FB00018 */  lw         $s0, 0x18($sp)
/* E2E4C 8003993C D7B40030 */  ldc1       $f20, 0x30($sp)
/* E2E50 80039940 03E00008 */  jr         $ra
/* E2E54 80039944 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80039948_E2E58
/* E2E58 80039948 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E2E5C 8003994C AFBF002C */  sw         $ra, 0x2c($sp)
/* E2E60 80039950 AFB40028 */  sw         $s4, 0x28($sp)
/* E2E64 80039954 AFB30024 */  sw         $s3, 0x24($sp)
/* E2E68 80039958 AFB20020 */  sw         $s2, 0x20($sp)
/* E2E6C 8003995C AFB1001C */  sw         $s1, 0x1c($sp)
/* E2E70 80039960 AFB00018 */  sw         $s0, 0x18($sp)
/* E2E74 80039964 F7B40030 */  sdc1       $f20, 0x30($sp)
/* E2E78 80039968 0C00E109 */  jal        func_80038424_E1934
/* E2E7C 8003996C 00009821 */   addu      $s3, $zero, $zero
/* E2E80 80039970 240400C8 */  addiu      $a0, $zero, 0xc8
/* E2E84 80039974 24050002 */  addiu      $a1, $zero, 2
/* E2E88 80039978 0C00D925 */  jal        func_80036494_DF9A4
/* E2E8C 8003997C 24060039 */   addiu     $a2, $zero, 0x39
/* E2E90 80039980 00409021 */  addu       $s2, $v0, $zero
/* E2E94 80039984 3C014000 */  lui        $at, 0x4000
/* E2E98 80039988 4481A000 */  mtc1       $at, $f20
/* E2E9C 8003998C 8E44000C */  lw         $a0, 0xc($s2)
/* E2EA0 80039990 4406A000 */  mfc1       $a2, $f20
/* E2EA4 80039994 4407A000 */  mfc1       $a3, $f20
/* E2EA8 80039998 00000000 */  nop
/* E2EAC 8003999C 0C02915B */  jal        func_800A456C
/* E2EB0 800399A0 00002821 */   addu      $a1, $zero, $zero
/* E2EB4 800399A4 8E44000C */  lw         $a0, 0xc($s2)
/* E2EB8 800399A8 8C82000C */  lw         $v0, 0xc($a0)
/* E2EBC 800399AC 94450000 */  lhu        $a1, ($v0)
/* E2EC0 800399B0 94460002 */  lhu        $a2, 2($v0)
/* E2EC4 800399B4 00052842 */  srl        $a1, $a1, 1
/* E2EC8 800399B8 0C02912A */  jal        func_800A44A8
/* E2ECC 800399BC 00063042 */   srl       $a2, $a2, 1
/* E2ED0 800399C0 8E44000C */  lw         $a0, 0xc($s2)
/* E2ED4 800399C4 24050280 */  addiu      $a1, $zero, 0x280
/* E2ED8 800399C8 0C028D89 */  jal        func_800A3624
/* E2EDC 800399CC 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E2EE0 800399D0 8E43000C */  lw         $v1, 0xc($s2)
/* E2EE4 800399D4 24040011 */  addiu      $a0, $zero, 0x11
/* E2EE8 800399D8 9462001E */  lhu        $v0, 0x1e($v1)
/* E2EEC 800399DC 24050001 */  addiu      $a1, $zero, 1
/* E2EF0 800399E0 24060022 */  addiu      $a2, $zero, 0x22
/* E2EF4 800399E4 34420004 */  ori        $v0, $v0, 4
/* E2EF8 800399E8 0C00D925 */  jal        func_80036494_DF9A4
/* E2EFC 800399EC A462001E */   sh        $v0, 0x1e($v1)
/* E2F00 800399F0 00409021 */  addu       $s2, $v0, $zero
/* E2F04 800399F4 8E44000C */  lw         $a0, 0xc($s2)
/* E2F08 800399F8 24050033 */  addiu      $a1, $zero, 0x33
/* E2F0C 800399FC 0C028F9A */  jal        func_800A3E68
/* E2F10 80039A00 24060044 */   addiu     $a2, $zero, 0x44
/* E2F14 80039A04 8E44000C */  lw         $a0, 0xc($s2)
/* E2F18 80039A08 00002821 */  addu       $a1, $zero, $zero
/* E2F1C 80039A0C 0C028D89 */  jal        func_800A3624
/* E2F20 80039A10 00003021 */   addu      $a2, $zero, $zero
/* E2F24 80039A14 AFA00010 */  sw         $zero, 0x10($sp)
/* E2F28 80039A18 8E44000C */  lw         $a0, 0xc($s2)
/* E2F2C 80039A1C 240500FF */  addiu      $a1, $zero, 0xff
/* E2F30 80039A20 240600FF */  addiu      $a2, $zero, 0xff
/* E2F34 80039A24 0C028E41 */  jal        func_800A3904
/* E2F38 80039A28 240700FF */   addiu     $a3, $zero, 0xff
/* E2F3C 80039A2C 327000FF */  andi       $s0, $s3, 0xff
.L80039A30:
/* E2F40 80039A30 260400C9 */  addiu      $a0, $s0, 0xc9
/* E2F44 80039A34 24050002 */  addiu      $a1, $zero, 2
/* E2F48 80039A38 0C00D925 */  jal        func_80036494_DF9A4
/* E2F4C 80039A3C 2606002A */   addiu     $a2, $s0, 0x2a
/* E2F50 80039A40 8C44000C */  lw         $a0, 0xc($v0)
/* E2F54 80039A44 240500C0 */  addiu      $a1, $zero, 0xc0
/* E2F58 80039A48 0C028D89 */  jal        func_800A3624
/* E2F5C 80039A4C 24060100 */   addiu     $a2, $zero, 0x100
/* E2F60 80039A50 260400CE */  addiu      $a0, $s0, 0xce
/* E2F64 80039A54 24050002 */  addiu      $a1, $zero, 2
/* E2F68 80039A58 0C00D925 */  jal        func_80036494_DF9A4
/* E2F6C 80039A5C 2606002F */   addiu     $a2, $s0, 0x2f
/* E2F70 80039A60 00409021 */  addu       $s2, $v0, $zero
/* E2F74 80039A64 8E44000C */  lw         $a0, 0xc($s2)
/* E2F78 80039A68 4406A000 */  mfc1       $a2, $f20
/* E2F7C 80039A6C 4407A000 */  mfc1       $a3, $f20
/* E2F80 80039A70 00000000 */  nop
/* E2F84 80039A74 0C02915B */  jal        func_800A456C
/* E2F88 80039A78 00002821 */   addu      $a1, $zero, $zero
/* E2F8C 80039A7C 8E44000C */  lw         $a0, 0xc($s2)
/* E2F90 80039A80 24050040 */  addiu      $a1, $zero, 0x40
/* E2F94 80039A84 0C028D89 */  jal        func_800A3624
/* E2F98 80039A88 24060060 */   addiu     $a2, $zero, 0x60
/* E2F9C 80039A8C 8E43000C */  lw         $v1, 0xc($s2)
/* E2FA0 80039A90 260400D3 */  addiu      $a0, $s0, 0xd3
/* E2FA4 80039A94 9462001E */  lhu        $v0, 0x1e($v1)
/* E2FA8 80039A98 24050002 */  addiu      $a1, $zero, 2
/* E2FAC 80039A9C 26060034 */  addiu      $a2, $s0, 0x34
/* E2FB0 80039AA0 34420004 */  ori        $v0, $v0, 4
/* E2FB4 80039AA4 0C00D925 */  jal        func_80036494_DF9A4
/* E2FB8 80039AA8 A462001E */   sh        $v0, 0x1e($v1)
/* E2FBC 80039AAC 00409021 */  addu       $s2, $v0, $zero
/* E2FC0 80039AB0 8E44000C */  lw         $a0, 0xc($s2)
/* E2FC4 80039AB4 4406A000 */  mfc1       $a2, $f20
/* E2FC8 80039AB8 4407A000 */  mfc1       $a3, $f20
/* E2FCC 80039ABC 00000000 */  nop
/* E2FD0 80039AC0 0C02915B */  jal        func_800A456C
/* E2FD4 80039AC4 00002821 */   addu      $a1, $zero, $zero
/* E2FD8 80039AC8 8E44000C */  lw         $a0, 0xc($s2)
/* E2FDC 80039ACC 240502B8 */  addiu      $a1, $zero, 0x2b8
/* E2FE0 80039AD0 0C028D89 */  jal        func_800A3624
/* E2FE4 80039AD4 24060140 */   addiu     $a2, $zero, 0x140
/* E2FE8 80039AD8 8E43000C */  lw         $v1, 0xc($s2)
/* E2FEC 80039ADC 9462001E */  lhu        $v0, 0x1e($v1)
/* E2FF0 80039AE0 26730001 */  addiu      $s3, $s3, 1
/* E2FF4 80039AE4 34420004 */  ori        $v0, $v0, 4
/* E2FF8 80039AE8 A462001E */  sh         $v0, 0x1e($v1)
/* E2FFC 80039AEC 326200FF */  andi       $v0, $s3, 0xff
/* E3000 80039AF0 2C420005 */  sltiu      $v0, $v0, 5
/* E3004 80039AF4 1440FFCE */  bnez       $v0, .L80039A30
/* E3008 80039AF8 327000FF */   andi      $s0, $s3, 0xff
/* E300C 80039AFC 00002021 */  addu       $a0, $zero, $zero
/* E3010 80039B00 240500D8 */  addiu      $a1, $zero, 0xd8
/* E3014 80039B04 24060004 */  addiu      $a2, $zero, 4
/* E3018 80039B08 24070004 */  addiu      $a3, $zero, 4
/* E301C 80039B0C 24020001 */  addiu      $v0, $zero, 1
/* E3020 80039B10 AFA20010 */  sw         $v0, 0x10($sp)
/* E3024 80039B14 24020026 */  addiu      $v0, $zero, 0x26
/* E3028 80039B18 0C00DB46 */  jal        func_80036D18_E0228
/* E302C 80039B1C AFA20014 */   sw        $v0, 0x14($sp)
/* E3030 80039B20 00409021 */  addu       $s2, $v0, $zero
/* E3034 80039B24 8E44000C */  lw         $a0, 0xc($s2)
/* E3038 80039B28 4406A000 */  mfc1       $a2, $f20
/* E303C 80039B2C 00002821 */  addu       $a1, $zero, $zero
/* E3040 80039B30 0C02915B */  jal        func_800A456C
/* E3044 80039B34 00C03821 */   addu      $a3, $a2, $zero
/* E3048 80039B38 24110080 */  addiu      $s1, $zero, 0x80
/* E304C 80039B3C AFB10010 */  sw         $s1, 0x10($sp)
/* E3050 80039B40 8E44000C */  lw         $a0, 0xc($s2)
/* E3054 80039B44 240500FF */  addiu      $a1, $zero, 0xff
/* E3058 80039B48 240600FF */  addiu      $a2, $zero, 0xff
/* E305C 80039B4C 0C028E41 */  jal        func_800A3904
/* E3060 80039B50 240700FF */   addiu     $a3, $zero, 0xff
/* E3064 80039B54 8E43000C */  lw         $v1, 0xc($s2)
/* E3068 80039B58 240400D9 */  addiu      $a0, $zero, 0xd9
/* E306C 80039B5C 9462001E */  lhu        $v0, 0x1e($v1)
/* E3070 80039B60 24050001 */  addiu      $a1, $zero, 1
/* E3074 80039B64 24060057 */  addiu      $a2, $zero, 0x57
/* E3078 80039B68 34420004 */  ori        $v0, $v0, 4
/* E307C 80039B6C 0C00D925 */  jal        func_80036494_DF9A4
/* E3080 80039B70 A462001E */   sh        $v0, 0x1e($v1)
/* E3084 80039B74 00409021 */  addu       $s2, $v0, $zero
/* E3088 80039B78 8E44000C */  lw         $a0, 0xc($s2)
/* E308C 80039B7C 24050160 */  addiu      $a1, $zero, 0x160
/* E3090 80039B80 0C028D89 */  jal        func_800A3624
/* E3094 80039B84 24060060 */   addiu     $a2, $zero, 0x60
/* E3098 80039B88 240400E3 */  addiu      $a0, $zero, 0xe3
/* E309C 80039B8C 24050001 */  addiu      $a1, $zero, 1
/* E30A0 80039B90 8E42000C */  lw         $v0, 0xc($s2)
/* E30A4 80039B94 24060058 */  addiu      $a2, $zero, 0x58
/* E30A8 80039B98 24100043 */  addiu      $s0, $zero, 0x43
/* E30AC 80039B9C 0C00D925 */  jal        func_80036494_DF9A4
/* E30B0 80039BA0 A450001C */   sh        $s0, 0x1c($v0)
/* E30B4 80039BA4 00409021 */  addu       $s2, $v0, $zero
/* E30B8 80039BA8 8E44000C */  lw         $a0, 0xc($s2)
/* E30BC 80039BAC 240501CC */  addiu      $a1, $zero, 0x1cc
/* E30C0 80039BB0 0C028D89 */  jal        func_800A3624
/* E30C4 80039BB4 24060060 */   addiu     $a2, $zero, 0x60
/* E30C8 80039BB8 240400E3 */  addiu      $a0, $zero, 0xe3
/* E30CC 80039BBC 8E42000C */  lw         $v0, 0xc($s2)
/* E30D0 80039BC0 24050001 */  addiu      $a1, $zero, 1
/* E30D4 80039BC4 24060059 */  addiu      $a2, $zero, 0x59
/* E30D8 80039BC8 0C00D925 */  jal        func_80036494_DF9A4
/* E30DC 80039BCC A450001C */   sh        $s0, 0x1c($v0)
/* E30E0 80039BD0 00409021 */  addu       $s2, $v0, $zero
/* E30E4 80039BD4 8E44000C */  lw         $a0, 0xc($s2)
/* E30E8 80039BD8 24050268 */  addiu      $a1, $zero, 0x268
/* E30EC 80039BDC 0C028D89 */  jal        func_800A3624
/* E30F0 80039BE0 24060060 */   addiu     $a2, $zero, 0x60
/* E30F4 80039BE4 240400E3 */  addiu      $a0, $zero, 0xe3
/* E30F8 80039BE8 8E42000C */  lw         $v0, 0xc($s2)
/* E30FC 80039BEC 24050001 */  addiu      $a1, $zero, 1
/* E3100 80039BF0 2406005A */  addiu      $a2, $zero, 0x5a
/* E3104 80039BF4 0C00D925 */  jal        func_80036494_DF9A4
/* E3108 80039BF8 A450001C */   sh        $s0, 0x1c($v0)
/* E310C 80039BFC 00409021 */  addu       $s2, $v0, $zero
/* E3110 80039C00 8E44000C */  lw         $a0, 0xc($s2)
/* E3114 80039C04 24050304 */  addiu      $a1, $zero, 0x304
/* E3118 80039C08 0C028D89 */  jal        func_800A3624
/* E311C 80039C0C 24060060 */   addiu     $a2, $zero, 0x60
/* E3120 80039C10 240400C7 */  addiu      $a0, $zero, 0xc7
/* E3124 80039C14 8E42000C */  lw         $v0, 0xc($s2)
/* E3128 80039C18 24050001 */  addiu      $a1, $zero, 1
/* E312C 80039C1C 2406005B */  addiu      $a2, $zero, 0x5b
/* E3130 80039C20 0C00D925 */  jal        func_80036494_DF9A4
/* E3134 80039C24 A450001C */   sh        $s0, 0x1c($v0)
/* E3138 80039C28 00409021 */  addu       $s2, $v0, $zero
/* E313C 80039C2C 8E44000C */  lw         $a0, 0xc($s2)
/* E3140 80039C30 24050072 */  addiu      $a1, $zero, 0x72
/* E3144 80039C34 0C028F9A */  jal        func_800A3E68
/* E3148 80039C38 24060400 */   addiu     $a2, $zero, 0x400
/* E314C 80039C3C 8E44000C */  lw         $a0, 0xc($s2)
/* E3150 80039C40 24050154 */  addiu      $a1, $zero, 0x154
/* E3154 80039C44 0C028D89 */  jal        func_800A3624
/* E3158 80039C48 24060058 */   addiu     $a2, $zero, 0x58
/* E315C 80039C4C AFB10010 */  sw         $s1, 0x10($sp)
/* E3160 80039C50 8E44000C */  lw         $a0, 0xc($s2)
/* E3164 80039C54 240500FF */  addiu      $a1, $zero, 0xff
/* E3168 80039C58 240600FF */  addiu      $a2, $zero, 0xff
/* E316C 80039C5C 0C028E41 */  jal        func_800A3904
/* E3170 80039C60 240700FF */   addiu     $a3, $zero, 0xff
/* E3174 80039C64 240400D9 */  addiu      $a0, $zero, 0xd9
/* E3178 80039C68 24050001 */  addiu      $a1, $zero, 1
/* E317C 80039C6C 8E43000C */  lw         $v1, 0xc($s2)
/* E3180 80039C70 2406005C */  addiu      $a2, $zero, 0x5c
/* E3184 80039C74 24020042 */  addiu      $v0, $zero, 0x42
/* E3188 80039C78 0C00D925 */  jal        func_80036494_DF9A4
/* E318C 80039C7C A462001C */   sh        $v0, 0x1c($v1)
/* E3190 80039C80 00409021 */  addu       $s2, $v0, $zero
/* E3194 80039C84 8E44000C */  lw         $a0, 0xc($s2)
/* E3198 80039C88 24050198 */  addiu      $a1, $zero, 0x198
/* E319C 80039C8C 0C028D89 */  jal        func_800A3624
/* E31A0 80039C90 24060060 */   addiu     $a2, $zero, 0x60
/* E31A4 80039C94 240400DA */  addiu      $a0, $zero, 0xda
/* E31A8 80039C98 8E42000C */  lw         $v0, 0xc($s2)
/* E31AC 80039C9C 24050001 */  addiu      $a1, $zero, 1
/* E31B0 80039CA0 2406005D */  addiu      $a2, $zero, 0x5d
/* E31B4 80039CA4 0C00D925 */  jal        func_80036494_DF9A4
/* E31B8 80039CA8 A450001C */   sh        $s0, 0x1c($v0)
/* E31BC 80039CAC 00409021 */  addu       $s2, $v0, $zero
/* E31C0 80039CB0 8E44000C */  lw         $a0, 0xc($s2)
/* E31C4 80039CB4 24050198 */  addiu      $a1, $zero, 0x198
/* E31C8 80039CB8 0C028D89 */  jal        func_800A3624
/* E31CC 80039CBC 24060060 */   addiu     $a2, $zero, 0x60
/* E31D0 80039CC0 240400DE */  addiu      $a0, $zero, 0xde
/* E31D4 80039CC4 8E42000C */  lw         $v0, 0xc($s2)
/* E31D8 80039CC8 24050001 */  addiu      $a1, $zero, 1
/* E31DC 80039CCC 2406005E */  addiu      $a2, $zero, 0x5e
/* E31E0 80039CD0 0C00D925 */  jal        func_80036494_DF9A4
/* E31E4 80039CD4 A450001C */   sh        $s0, 0x1c($v0)
/* E31E8 80039CD8 00409021 */  addu       $s2, $v0, $zero
/* E31EC 80039CDC 8E44000C */  lw         $a0, 0xc($s2)
/* E31F0 80039CE0 24050200 */  addiu      $a1, $zero, 0x200
/* E31F4 80039CE4 0C028D89 */  jal        func_800A3624
/* E31F8 80039CE8 24060060 */   addiu     $a2, $zero, 0x60
/* E31FC 80039CEC 240400D9 */  addiu      $a0, $zero, 0xd9
/* E3200 80039CF0 8E42000C */  lw         $v0, 0xc($s2)
/* E3204 80039CF4 24050001 */  addiu      $a1, $zero, 1
/* E3208 80039CF8 2406005F */  addiu      $a2, $zero, 0x5f
/* E320C 80039CFC 0C00D925 */  jal        func_80036494_DF9A4
/* E3210 80039D00 A450001C */   sh        $s0, 0x1c($v0)
/* E3214 80039D04 00409021 */  addu       $s2, $v0, $zero
/* E3218 80039D08 8E44000C */  lw         $a0, 0xc($s2)
/* E321C 80039D0C 24050200 */  addiu      $a1, $zero, 0x200
/* E3220 80039D10 0C028D89 */  jal        func_800A3624
/* E3224 80039D14 24060060 */   addiu     $a2, $zero, 0x60
/* E3228 80039D18 240400E2 */  addiu      $a0, $zero, 0xe2
/* E322C 80039D1C 8E42000C */  lw         $v0, 0xc($s2)
/* E3230 80039D20 24050001 */  addiu      $a1, $zero, 1
/* E3234 80039D24 24060060 */  addiu      $a2, $zero, 0x60
/* E3238 80039D28 0C00D925 */  jal        func_80036494_DF9A4
/* E323C 80039D2C A450001C */   sh        $s0, 0x1c($v0)
/* E3240 80039D30 00409021 */  addu       $s2, $v0, $zero
/* E3244 80039D34 8E44000C */  lw         $a0, 0xc($s2)
/* E3248 80039D38 24050234 */  addiu      $a1, $zero, 0x234
/* E324C 80039D3C 0C028D89 */  jal        func_800A3624
/* E3250 80039D40 24060060 */   addiu     $a2, $zero, 0x60
/* E3254 80039D44 240400D9 */  addiu      $a0, $zero, 0xd9
/* E3258 80039D48 8E42000C */  lw         $v0, 0xc($s2)
/* E325C 80039D4C 24050001 */  addiu      $a1, $zero, 1
/* E3260 80039D50 24060061 */  addiu      $a2, $zero, 0x61
/* E3264 80039D54 0C00D925 */  jal        func_80036494_DF9A4
/* E3268 80039D58 A450001C */   sh        $s0, 0x1c($v0)
/* E326C 80039D5C 00409021 */  addu       $s2, $v0, $zero
/* E3270 80039D60 8E44000C */  lw         $a0, 0xc($s2)
/* E3274 80039D64 24050234 */  addiu      $a1, $zero, 0x234
/* E3278 80039D68 0C028D89 */  jal        func_800A3624
/* E327C 80039D6C 24060060 */   addiu     $a2, $zero, 0x60
/* E3280 80039D70 8E42000C */  lw         $v0, 0xc($s2)
/* E3284 80039D74 00009821 */  addu       $s3, $zero, $zero
/* E3288 80039D78 24110043 */  addiu      $s1, $zero, 0x43
/* E328C 80039D7C A450001C */  sh         $s0, 0x1c($v0)
/* E3290 80039D80 326600FF */  andi       $a2, $s3, 0xff
.L80039D84:
/* E3294 80039D84 24C400D9 */  addiu      $a0, $a2, 0xd9
/* E3298 80039D88 24050001 */  addiu      $a1, $zero, 1
/* E329C 80039D8C 0C00D925 */  jal        func_80036494_DF9A4
/* E32A0 80039D90 24C60062 */   addiu     $a2, $a2, 0x62
/* E32A4 80039D94 00409021 */  addu       $s2, $v0, $zero
/* E32A8 80039D98 8E44000C */  lw         $a0, 0xc($s2)
/* E32AC 80039D9C 2405029C */  addiu      $a1, $zero, 0x29c
/* E32B0 80039DA0 0C028D89 */  jal        func_800A3624
/* E32B4 80039DA4 24060060 */   addiu     $a2, $zero, 0x60
/* E32B8 80039DA8 8E42000C */  lw         $v0, 0xc($s2)
/* E32BC 80039DAC 26730001 */  addiu      $s3, $s3, 1
/* E32C0 80039DB0 A451001C */  sh         $s1, 0x1c($v0)
/* E32C4 80039DB4 326200FF */  andi       $v0, $s3, 0xff
/* E32C8 80039DB8 2C420006 */  sltiu      $v0, $v0, 6
/* E32CC 80039DBC 5440FFF1 */  bnezl      $v0, .L80039D84
/* E32D0 80039DC0 326600FF */   andi      $a2, $s3, 0xff
/* E32D4 80039DC4 00009821 */  addu       $s3, $zero, $zero
/* E32D8 80039DC8 24100043 */  addiu      $s0, $zero, 0x43
/* E32DC 80039DCC 326600FF */  andi       $a2, $s3, 0xff
.L80039DD0:
/* E32E0 80039DD0 24C400D9 */  addiu      $a0, $a2, 0xd9
/* E32E4 80039DD4 24050001 */  addiu      $a1, $zero, 1
/* E32E8 80039DD8 0C00D925 */  jal        func_80036494_DF9A4
/* E32EC 80039DDC 24C60068 */   addiu     $a2, $a2, 0x68
/* E32F0 80039DE0 00409021 */  addu       $s2, $v0, $zero
/* E32F4 80039DE4 8E44000C */  lw         $a0, 0xc($s2)
/* E32F8 80039DE8 24050334 */  addiu      $a1, $zero, 0x334
/* E32FC 80039DEC 0C028D89 */  jal        func_800A3624
/* E3300 80039DF0 24060060 */   addiu     $a2, $zero, 0x60
/* E3304 80039DF4 8E42000C */  lw         $v0, 0xc($s2)
/* E3308 80039DF8 26730001 */  addiu      $s3, $s3, 1
/* E330C 80039DFC A450001C */  sh         $s0, 0x1c($v0)
/* E3310 80039E00 326200FF */  andi       $v0, $s3, 0xff
/* E3314 80039E04 2C420003 */  sltiu      $v0, $v0, 3
/* E3318 80039E08 5440FFF1 */  bnezl      $v0, .L80039DD0
/* E331C 80039E0C 326600FF */   andi      $a2, $s3, 0xff
/* E3320 80039E10 00009821 */  addu       $s3, $zero, $zero
/* E3324 80039E14 24140043 */  addiu      $s4, $zero, 0x43
/* E3328 80039E18 327100FF */  andi       $s1, $s3, 0xff
.L80039E1C:
/* E332C 80039E1C 263000D9 */  addiu      $s0, $s1, 0xd9
/* E3330 80039E20 3210FFFF */  andi       $s0, $s0, 0xffff
/* E3334 80039E24 02002021 */  addu       $a0, $s0, $zero
/* E3338 80039E28 24050001 */  addiu      $a1, $zero, 1
/* E333C 80039E2C 0C00D925 */  jal        func_80036494_DF9A4
/* E3340 80039E30 2626006B */   addiu     $a2, $s1, 0x6b
/* E3344 80039E34 00409021 */  addu       $s2, $v0, $zero
/* E3348 80039E38 8E44000C */  lw         $a0, 0xc($s2)
/* E334C 80039E3C 240502D0 */  addiu      $a1, $zero, 0x2d0
/* E3350 80039E40 0C028D89 */  jal        func_800A3624
/* E3354 80039E44 24060060 */   addiu     $a2, $zero, 0x60
/* E3358 80039E48 02002021 */  addu       $a0, $s0, $zero
/* E335C 80039E4C 8E42000C */  lw         $v0, 0xc($s2)
/* E3360 80039E50 24050001 */  addiu      $a1, $zero, 1
/* E3364 80039E54 26260075 */  addiu      $a2, $s1, 0x75
/* E3368 80039E58 0C00D925 */  jal        func_80036494_DF9A4
/* E336C 80039E5C A454001C */   sh        $s4, 0x1c($v0)
/* E3370 80039E60 00409021 */  addu       $s2, $v0, $zero
/* E3374 80039E64 8E44000C */  lw         $a0, 0xc($s2)
/* E3378 80039E68 24050368 */  addiu      $a1, $zero, 0x368
/* E337C 80039E6C 0C028D89 */  jal        func_800A3624
/* E3380 80039E70 24060060 */   addiu     $a2, $zero, 0x60
/* E3384 80039E74 8E42000C */  lw         $v0, 0xc($s2)
/* E3388 80039E78 26730001 */  addiu      $s3, $s3, 1
/* E338C 80039E7C A454001C */  sh         $s4, 0x1c($v0)
/* E3390 80039E80 326200FF */  andi       $v0, $s3, 0xff
/* E3394 80039E84 2C42000A */  sltiu      $v0, $v0, 0xa
/* E3398 80039E88 1440FFE4 */  bnez       $v0, .L80039E1C
/* E339C 80039E8C 327100FF */   andi      $s1, $s3, 0xff
/* E33A0 80039E90 240400C0 */  addiu      $a0, $zero, 0xc0
/* E33A4 80039E94 24050001 */  addiu      $a1, $zero, 1
/* E33A8 80039E98 0C00D925 */  jal        func_80036494_DF9A4
/* E33AC 80039E9C 24060089 */   addiu     $a2, $zero, 0x89
/* E33B0 80039EA0 00409021 */  addu       $s2, $v0, $zero
/* E33B4 80039EA4 8E44000C */  lw         $a0, 0xc($s2)
/* E33B8 80039EA8 00002821 */  addu       $a1, $zero, $zero
/* E33BC 80039EAC 00003021 */  addu       $a2, $zero, $zero
/* E33C0 80039EB0 24130001 */  addiu      $s3, $zero, 1
/* E33C4 80039EB4 3C14CCCC */  lui        $s4, 0xcccc
/* E33C8 80039EB8 3694CCCD */  ori        $s4, $s4, 0xcccd
/* E33CC 80039EBC 0C028D89 */  jal        func_800A3624
/* E33D0 80039EC0 24110030 */   addiu     $s1, $zero, 0x30
/* E33D4 80039EC4 24020030 */  addiu      $v0, $zero, 0x30
/* E33D8 80039EC8 AFA20010 */  sw         $v0, 0x10($sp)
/* E33DC 80039ECC 8E44000C */  lw         $a0, 0xc($s2)
/* E33E0 80039ED0 240500FF */  addiu      $a1, $zero, 0xff
/* E33E4 80039ED4 240600FF */  addiu      $a2, $zero, 0xff
/* E33E8 80039ED8 0C028E41 */  jal        func_800A3904
/* E33EC 80039EDC 240700FF */   addiu     $a3, $zero, 0xff
/* E33F0 80039EE0 8E43000C */  lw         $v1, 0xc($s2)
/* E33F4 80039EE4 24100040 */  addiu      $s0, $zero, 0x40
/* E33F8 80039EE8 24020040 */  addiu      $v0, $zero, 0x40
/* E33FC 80039EEC A462001C */  sh         $v0, 0x1c($v1)
/* E3400 80039EF0 24040089 */  addiu      $a0, $zero, 0x89
.L80039EF4:
/* E3404 80039EF4 326500FF */  andi       $a1, $s3, 0xff
/* E3408 80039EF8 0C00DD19 */  jal        func_80037464_E0974
/* E340C 80039EFC 24A50089 */   addiu     $a1, $a1, 0x89
/* E3410 80039F00 326500FF */  andi       $a1, $s3, 0xff
/* E3414 80039F04 00B40019 */  multu      $a1, $s4
/* E3418 80039F08 00409021 */  addu       $s2, $v0, $zero
/* E341C 80039F0C 8E42000C */  lw         $v0, 0xc($s2)
/* E3420 80039F10 8C420000 */  lw         $v0, ($v0)
/* E3424 80039F14 A040002F */  sb         $zero, 0x2f($v0)
/* E3428 80039F18 8E44000C */  lw         $a0, 0xc($s2)
/* E342C 80039F1C 00004010 */  mfhi       $t0
/* E3430 80039F20 00083082 */  srl        $a2, $t0, 2
/* E3434 80039F24 00061080 */  sll        $v0, $a2, 2
/* E3438 80039F28 00461021 */  addu       $v0, $v0, $a2
/* E343C 80039F2C 00A22823 */  subu       $a1, $a1, $v0
/* E3440 80039F30 00052E00 */  sll        $a1, $a1, 0x18
/* E3444 80039F34 00052C03 */  sra        $a1, $a1, 0x10
/* E3448 80039F38 30C600FF */  andi       $a2, $a2, 0xff
/* E344C 80039F3C 0C028D89 */  jal        func_800A3624
/* E3450 80039F40 000631C0 */   sll       $a2, $a2, 7
/* E3454 80039F44 AFB10010 */  sw         $s1, 0x10($sp)
/* E3458 80039F48 8E44000C */  lw         $a0, 0xc($s2)
/* E345C 80039F4C 240500FF */  addiu      $a1, $zero, 0xff
/* E3460 80039F50 240600FF */  addiu      $a2, $zero, 0xff
/* E3464 80039F54 0C028E41 */  jal        func_800A3904
/* E3468 80039F58 240700FF */   addiu     $a3, $zero, 0xff
/* E346C 80039F5C 8E42000C */  lw         $v0, 0xc($s2)
/* E3470 80039F60 26730001 */  addiu      $s3, $s3, 1
/* E3474 80039F64 A450001C */  sh         $s0, 0x1c($v0)
/* E3478 80039F68 326200FF */  andi       $v0, $s3, 0xff
/* E347C 80039F6C 2C420028 */  sltiu      $v0, $v0, 0x28
/* E3480 80039F70 1440FFE0 */  bnez       $v0, .L80039EF4
/* E3484 80039F74 24040089 */   addiu     $a0, $zero, 0x89
/* E3488 80039F78 8FBF002C */  lw         $ra, 0x2c($sp)
/* E348C 80039F7C 8FB40028 */  lw         $s4, 0x28($sp)
/* E3490 80039F80 8FB30024 */  lw         $s3, 0x24($sp)
/* E3494 80039F84 8FB20020 */  lw         $s2, 0x20($sp)
/* E3498 80039F88 8FB1001C */  lw         $s1, 0x1c($sp)
/* E349C 80039F8C 8FB00018 */  lw         $s0, 0x18($sp)
/* E34A0 80039F90 D7B40030 */  ldc1       $f20, 0x30($sp)
/* E34A4 80039F94 03E00008 */  jr         $ra
/* E34A8 80039F98 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_80039F9C_E34AC
/* E34AC 80039F9C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E34B0 80039FA0 240400F4 */  addiu      $a0, $zero, 0xf4
/* E34B4 80039FA4 24050002 */  addiu      $a1, $zero, 2
/* E34B8 80039FA8 AFBF0024 */  sw         $ra, 0x24($sp)
/* E34BC 80039FAC AFB20020 */  sw         $s2, 0x20($sp)
/* E34C0 80039FB0 AFB1001C */  sw         $s1, 0x1c($sp)
/* E34C4 80039FB4 AFB00018 */  sw         $s0, 0x18($sp)
/* E34C8 80039FB8 F7B60030 */  sdc1       $f22, 0x30($sp)
/* E34CC 80039FBC F7B40028 */  sdc1       $f20, 0x28($sp)
/* E34D0 80039FC0 0C00D925 */  jal        func_80036494_DF9A4
/* E34D4 80039FC4 24060043 */   addiu     $a2, $zero, 0x43
/* E34D8 80039FC8 00408821 */  addu       $s1, $v0, $zero
/* E34DC 80039FCC 3C014000 */  lui        $at, 0x4000
/* E34E0 80039FD0 44810000 */  mtc1       $at, $f0
/* E34E4 80039FD4 8E24000C */  lw         $a0, 0xc($s1)
/* E34E8 80039FD8 44060000 */  mfc1       $a2, $f0
/* E34EC 80039FDC 00002821 */  addu       $a1, $zero, $zero
/* E34F0 80039FE0 0C02915B */  jal        func_800A456C
/* E34F4 80039FE4 00C03821 */   addu      $a3, $a2, $zero
/* E34F8 80039FE8 8E24000C */  lw         $a0, 0xc($s1)
/* E34FC 80039FEC 8C82000C */  lw         $v0, 0xc($a0)
/* E3500 80039FF0 94450000 */  lhu        $a1, ($v0)
/* E3504 80039FF4 94460002 */  lhu        $a2, 2($v0)
/* E3508 80039FF8 00052842 */  srl        $a1, $a1, 1
/* E350C 80039FFC 0C02912A */  jal        func_800A44A8
/* E3510 8003A000 00063042 */   srl       $a2, $a2, 1
/* E3514 8003A004 8E24000C */  lw         $a0, 0xc($s1)
/* E3518 8003A008 24050280 */  addiu      $a1, $zero, 0x280
/* E351C 8003A00C 0C028D89 */  jal        func_800A3624
/* E3520 8003A010 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E3524 8003A014 8E23000C */  lw         $v1, 0xc($s1)
/* E3528 8003A018 240400F6 */  addiu      $a0, $zero, 0xf6
/* E352C 8003A01C 9462001E */  lhu        $v0, 0x1e($v1)
/* E3530 8003A020 24050002 */  addiu      $a1, $zero, 2
/* E3534 8003A024 2406003A */  addiu      $a2, $zero, 0x3a
/* E3538 8003A028 34420004 */  ori        $v0, $v0, 4
/* E353C 8003A02C 0C00D925 */  jal        func_80036494_DF9A4
/* E3540 8003A030 A462001E */   sh        $v0, 0x1e($v1)
/* E3544 8003A034 00408821 */  addu       $s1, $v0, $zero
/* E3548 8003A038 3C01400C */  lui        $at, 0x400c
/* E354C 8003A03C 3421CCCD */  ori        $at, $at, 0xcccd
/* E3550 8003A040 4481A000 */  mtc1       $at, $f20
/* E3554 8003A044 8E24000C */  lw         $a0, 0xc($s1)
/* E3558 8003A048 4406A000 */  mfc1       $a2, $f20
/* E355C 8003A04C 4407A000 */  mfc1       $a3, $f20
/* E3560 8003A050 00000000 */  nop
/* E3564 8003A054 0C02915B */  jal        func_800A456C
/* E3568 8003A058 00002821 */   addu      $a1, $zero, $zero
/* E356C 8003A05C 8E24000C */  lw         $a0, 0xc($s1)
/* E3570 8003A060 8C82000C */  lw         $v0, 0xc($a0)
/* E3574 8003A064 94450000 */  lhu        $a1, ($v0)
/* E3578 8003A068 94460002 */  lhu        $a2, 2($v0)
/* E357C 8003A06C 00052842 */  srl        $a1, $a1, 1
/* E3580 8003A070 0C02912A */  jal        func_800A44A8
/* E3584 8003A074 00063042 */   srl       $a2, $a2, 1
/* E3588 8003A078 240200FF */  addiu      $v0, $zero, 0xff
/* E358C 8003A07C AFA20010 */  sw         $v0, 0x10($sp)
/* E3590 8003A080 8E24000C */  lw         $a0, 0xc($s1)
/* E3594 8003A084 240500FF */  addiu      $a1, $zero, 0xff
/* E3598 8003A088 240600FF */  addiu      $a2, $zero, 0xff
/* E359C 8003A08C 0C028E41 */  jal        func_800A3904
/* E35A0 8003A090 240700FF */   addiu     $a3, $zero, 0xff
/* E35A4 8003A094 8E24000C */  lw         $a0, 0xc($s1)
/* E35A8 8003A098 24050280 */  addiu      $a1, $zero, 0x280
/* E35AC 8003A09C 0C028D89 */  jal        func_800A3624
/* E35B0 8003A0A0 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E35B4 8003A0A4 8E23000C */  lw         $v1, 0xc($s1)
/* E35B8 8003A0A8 9462001E */  lhu        $v0, 0x1e($v1)
/* E35BC 8003A0AC 3C01437F */  lui        $at, 0x437f
/* E35C0 8003A0B0 4481B000 */  mtc1       $at, $f22
/* E35C4 8003A0B4 00009021 */  addu       $s2, $zero, $zero
/* E35C8 8003A0B8 34420044 */  ori        $v0, $v0, 0x44
/* E35CC 8003A0BC A462001E */  sh         $v0, 0x1e($v1)
/* E35D0 8003A0C0 8E24000C */  lw         $a0, 0xc($s1)
/* E35D4 8003A0C4 2405000F */  addiu      $a1, $zero, 0xf
/* E35D8 8003A0C8 0C00DE6C */  jal        func_800379B0_E0EC0
/* E35DC 8003A0CC 24063ADC */   addiu     $a2, $zero, 0x3adc
/* E35E0 8003A0D0 2404009C */  addiu      $a0, $zero, 0x9c
/* E35E4 8003A0D4 24050002 */  addiu      $a1, $zero, 2
/* E35E8 8003A0D8 24060008 */  addiu      $a2, $zero, 8
/* E35EC 8003A0DC 0C00D97B */  jal        func_800365EC_DFAFC
/* E35F0 8003A0E0 2407003B */   addiu     $a3, $zero, 0x3b
/* E35F4 8003A0E4 325000FF */  andi       $s0, $s2, 0xff
.L8003A0E8:
/* E35F8 8003A0E8 324200FF */  andi       $v0, $s2, 0xff
/* E35FC 8003A0EC 00021100 */  sll        $v0, $v0, 4
/* E3600 8003A0F0 3C018007 */  lui        $at, %hi(D_8006C3D8)
/* E3604 8003A0F4 00220821 */  addu       $at, $at, $v0
/* E3608 8003A0F8 E436C3D8 */  swc1       $f22, %lo(D_8006C3D8)($at)
/* E360C 8003A0FC 3C018007 */  lui        $at, %hi(D_8006C3DC)
/* E3610 8003A100 00220821 */  addu       $at, $at, $v0
/* E3614 8003A104 E436C3DC */  swc1       $f22, %lo(D_8006C3DC)($at)
/* E3618 8003A108 3C018007 */  lui        $at, %hi(D_8006C3E0)
/* E361C 8003A10C 00220821 */  addu       $at, $at, $v0
/* E3620 8003A110 E436C3E0 */  swc1       $f22, %lo(D_8006C3E0)($at)
/* E3624 8003A114 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E3628 8003A118 00220821 */  addu       $at, $at, $v0
/* E362C 8003A11C AC20C3E4 */  sw         $zero, %lo(D_8006C3E4)($at)
/* E3630 8003A120 0C00D8C1 */  jal        func_80036304_DF814
/* E3634 8003A124 2604003B */   addiu     $a0, $s0, 0x3b
/* E3638 8003A128 00408821 */  addu       $s1, $v0, $zero
/* E363C 8003A12C 8E24000C */  lw         $a0, 0xc($s1)
/* E3640 8003A130 4406A000 */  mfc1       $a2, $f20
/* E3644 8003A134 4407A000 */  mfc1       $a3, $f20
/* E3648 8003A138 00000000 */  nop
/* E364C 8003A13C 0C02915B */  jal        func_800A456C
/* E3650 8003A140 00002821 */   addu      $a1, $zero, $zero
/* E3654 8003A144 8E24000C */  lw         $a0, 0xc($s1)
/* E3658 8003A148 8C82000C */  lw         $v0, 0xc($a0)
/* E365C 8003A14C 94450000 */  lhu        $a1, ($v0)
/* E3660 8003A150 94460002 */  lhu        $a2, 2($v0)
/* E3664 8003A154 00052842 */  srl        $a1, $a1, 1
/* E3668 8003A158 0C02912A */  jal        func_800A44A8
/* E366C 8003A15C 00063042 */   srl       $a2, $a2, 1
/* E3670 8003A160 8E24000C */  lw         $a0, 0xc($s1)
/* E3674 8003A164 24050340 */  addiu      $a1, $zero, 0x340
/* E3678 8003A168 0C028D89 */  jal        func_800A3624
/* E367C 8003A16C 24060220 */   addiu     $a2, $zero, 0x220
/* E3680 8003A170 8E23000C */  lw         $v1, 0xc($s1)
/* E3684 8003A174 9462001E */  lhu        $v0, 0x1e($v1)
/* E3688 8003A178 34420044 */  ori        $v0, $v0, 0x44
/* E368C 8003A17C A462001E */  sh         $v0, 0x1e($v1)
/* E3690 8003A180 8E22000C */  lw         $v0, 0xc($s1)
/* E3694 8003A184 26520001 */  addiu      $s2, $s2, 1
/* E3698 8003A188 26100021 */  addiu      $s0, $s0, 0x21
/* E369C 8003A18C A450001C */  sh         $s0, 0x1c($v0)
/* E36A0 8003A190 324200FF */  andi       $v0, $s2, 0xff
/* E36A4 8003A194 2C420008 */  sltiu      $v0, $v0, 8
/* E36A8 8003A198 1440FFD3 */  bnez       $v0, .L8003A0E8
/* E36AC 8003A19C 325000FF */   andi      $s0, $s2, 0xff
/* E36B0 8003A1A0 8FBF0024 */  lw         $ra, 0x24($sp)
/* E36B4 8003A1A4 8FB20020 */  lw         $s2, 0x20($sp)
/* E36B8 8003A1A8 8FB1001C */  lw         $s1, 0x1c($sp)
/* E36BC 8003A1AC 8FB00018 */  lw         $s0, 0x18($sp)
/* E36C0 8003A1B0 D7B60030 */  ldc1       $f22, 0x30($sp)
/* E36C4 8003A1B4 D7B40028 */  ldc1       $f20, 0x28($sp)
/* E36C8 8003A1B8 03E00008 */  jr         $ra
/* E36CC 8003A1BC 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003A1C0_E36D0
/* E36D0 8003A1C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E36D4 8003A1C4 AFBF001C */  sw         $ra, 0x1c($sp)
/* E36D8 8003A1C8 AFB20018 */  sw         $s2, 0x18($sp)
/* E36DC 8003A1CC AFB10014 */  sw         $s1, 0x14($sp)
/* E36E0 8003A1D0 0C00E109 */  jal        func_80038424_E1934
/* E36E4 8003A1D4 AFB00010 */   sw        $s0, 0x10($sp)
/* E36E8 8003A1D8 240400A4 */  addiu      $a0, $zero, 0xa4
/* E36EC 8003A1DC 24050002 */  addiu      $a1, $zero, 2
/* E36F0 8003A1E0 0C00D925 */  jal        func_80036494_DF9A4
/* E36F4 8003A1E4 24060018 */   addiu     $a2, $zero, 0x18
/* E36F8 8003A1E8 00409021 */  addu       $s2, $v0, $zero
/* E36FC 8003A1EC 8E43000C */  lw         $v1, 0xc($s2)
/* E3700 8003A1F0 9462001E */  lhu        $v0, 0x1e($v1)
/* E3704 8003A1F4 34420044 */  ori        $v0, $v0, 0x44
/* E3708 8003A1F8 A462001E */  sh         $v0, 0x1e($v1)
/* E370C 8003A1FC 8E44000C */  lw         $a0, 0xc($s2)
/* E3710 8003A200 8C82000C */  lw         $v0, 0xc($a0)
/* E3714 8003A204 94450000 */  lhu        $a1, ($v0)
/* E3718 8003A208 94460002 */  lhu        $a2, 2($v0)
/* E371C 8003A20C 00008821 */  addu       $s1, $zero, $zero
/* E3720 8003A210 00052842 */  srl        $a1, $a1, 1
/* E3724 8003A214 0C02912A */  jal        func_800A44A8
/* E3728 8003A218 00063042 */   srl       $a2, $a2, 1
/* E372C 8003A21C 8E44000C */  lw         $a0, 0xc($s2)
/* E3730 8003A220 24050280 */  addiu      $a1, $zero, 0x280
/* E3734 8003A224 0C028D89 */  jal        func_800A3624
/* E3738 8003A228 240601E0 */   addiu     $a2, $zero, 0x1e0
.L8003A22C:
/* E373C 8003A22C 8E44000C */  lw         $a0, 0xc($s2)
/* E3740 8003A230 26250006 */  addiu      $a1, $s1, 6
/* E3744 8003A234 30A500FF */  andi       $a1, $a1, 0xff
/* E3748 8003A238 0C00DE6C */  jal        func_800379B0_E0EC0
/* E374C 8003A23C 00003021 */   addu      $a2, $zero, $zero
/* E3750 8003A240 8E44000C */  lw         $a0, 0xc($s2)
/* E3754 8003A244 2625000B */  addiu      $a1, $s1, 0xb
/* E3758 8003A248 30A500FF */  andi       $a1, $a1, 0xff
/* E375C 8003A24C 00003021 */  addu       $a2, $zero, $zero
/* E3760 8003A250 0C00DE6C */  jal        func_800379B0_E0EC0
/* E3764 8003A254 26310001 */   addiu     $s1, $s1, 1
/* E3768 8003A258 322200FF */  andi       $v0, $s1, 0xff
/* E376C 8003A25C 2C420005 */  sltiu      $v0, $v0, 5
/* E3770 8003A260 1440FFF2 */  bnez       $v0, .L8003A22C
/* E3774 8003A264 240400A4 */   addiu     $a0, $zero, 0xa4
/* E3778 8003A268 24050002 */  addiu      $a1, $zero, 2
/* E377C 8003A26C 0C00D925 */  jal        func_80036494_DF9A4
/* E3780 8003A270 24060019 */   addiu     $a2, $zero, 0x19
/* E3784 8003A274 00409021 */  addu       $s2, $v0, $zero
/* E3788 8003A278 8E43000C */  lw         $v1, 0xc($s2)
/* E378C 8003A27C 9462001E */  lhu        $v0, 0x1e($v1)
/* E3790 8003A280 34420044 */  ori        $v0, $v0, 0x44
/* E3794 8003A284 A462001E */  sh         $v0, 0x1e($v1)
/* E3798 8003A288 8E44000C */  lw         $a0, 0xc($s2)
/* E379C 8003A28C 8C82000C */  lw         $v0, 0xc($a0)
/* E37A0 8003A290 94450000 */  lhu        $a1, ($v0)
/* E37A4 8003A294 94460002 */  lhu        $a2, 2($v0)
/* E37A8 8003A298 00008821 */  addu       $s1, $zero, $zero
/* E37AC 8003A29C 00052842 */  srl        $a1, $a1, 1
/* E37B0 8003A2A0 0C02912A */  jal        func_800A44A8
/* E37B4 8003A2A4 00063042 */   srl       $a2, $a2, 1
/* E37B8 8003A2A8 8E44000C */  lw         $a0, 0xc($s2)
/* E37BC 8003A2AC 24050280 */  addiu      $a1, $zero, 0x280
/* E37C0 8003A2B0 0C028D89 */  jal        func_800A3624
/* E37C4 8003A2B4 240601E0 */   addiu     $a2, $zero, 0x1e0
.L8003A2B8:
/* E37C8 8003A2B8 8E44000C */  lw         $a0, 0xc($s2)
/* E37CC 8003A2BC 26300001 */  addiu      $s0, $s1, 1
/* E37D0 8003A2C0 320500FF */  andi       $a1, $s0, 0xff
/* E37D4 8003A2C4 0C00DE6C */  jal        func_800379B0_E0EC0
/* E37D8 8003A2C8 00003021 */   addu      $a2, $zero, $zero
/* E37DC 8003A2CC 8E44000C */  lw         $a0, 0xc($s2)
/* E37E0 8003A2D0 2625000B */  addiu      $a1, $s1, 0xb
/* E37E4 8003A2D4 30A500FF */  andi       $a1, $a1, 0xff
/* E37E8 8003A2D8 00003021 */  addu       $a2, $zero, $zero
/* E37EC 8003A2DC 0C00DE6C */  jal        func_800379B0_E0EC0
/* E37F0 8003A2E0 02008821 */   addu      $s1, $s0, $zero
/* E37F4 8003A2E4 322200FF */  andi       $v0, $s1, 0xff
/* E37F8 8003A2E8 2C420005 */  sltiu      $v0, $v0, 5
/* E37FC 8003A2EC 1440FFF2 */  bnez       $v0, .L8003A2B8
/* E3800 8003A2F0 24040018 */   addiu     $a0, $zero, 0x18
/* E3804 8003A2F4 0C00DD19 */  jal        func_80037464_E0974
/* E3808 8003A2F8 2405001B */   addiu     $a1, $zero, 0x1b
/* E380C 8003A2FC 00409021 */  addu       $s2, $v0, $zero
/* E3810 8003A300 8E43000C */  lw         $v1, 0xc($s2)
/* E3814 8003A304 9462001E */  lhu        $v0, 0x1e($v1)
/* E3818 8003A308 34420044 */  ori        $v0, $v0, 0x44
/* E381C 8003A30C A462001E */  sh         $v0, 0x1e($v1)
/* E3820 8003A310 8E44000C */  lw         $a0, 0xc($s2)
/* E3824 8003A314 8C82000C */  lw         $v0, 0xc($a0)
/* E3828 8003A318 94450000 */  lhu        $a1, ($v0)
/* E382C 8003A31C 94460002 */  lhu        $a2, 2($v0)
/* E3830 8003A320 00052842 */  srl        $a1, $a1, 1
/* E3834 8003A324 0C02912A */  jal        func_800A44A8
/* E3838 8003A328 00063042 */   srl       $a2, $a2, 1
/* E383C 8003A32C 8E44000C */  lw         $a0, 0xc($s2)
/* E3840 8003A330 24050280 */  addiu      $a1, $zero, 0x280
/* E3844 8003A334 0C028D89 */  jal        func_800A3624
/* E3848 8003A338 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E384C 8003A33C 24040019 */  addiu      $a0, $zero, 0x19
/* E3850 8003A340 0C00DD19 */  jal        func_80037464_E0974
/* E3854 8003A344 2405001C */   addiu     $a1, $zero, 0x1c
/* E3858 8003A348 00409021 */  addu       $s2, $v0, $zero
/* E385C 8003A34C 8E43000C */  lw         $v1, 0xc($s2)
/* E3860 8003A350 9462001E */  lhu        $v0, 0x1e($v1)
/* E3864 8003A354 34420044 */  ori        $v0, $v0, 0x44
/* E3868 8003A358 A462001E */  sh         $v0, 0x1e($v1)
/* E386C 8003A35C 8E44000C */  lw         $a0, 0xc($s2)
/* E3870 8003A360 8C82000C */  lw         $v0, 0xc($a0)
/* E3874 8003A364 94450000 */  lhu        $a1, ($v0)
/* E3878 8003A368 94460002 */  lhu        $a2, 2($v0)
/* E387C 8003A36C 00052842 */  srl        $a1, $a1, 1
/* E3880 8003A370 0C02912A */  jal        func_800A44A8
/* E3884 8003A374 00063042 */   srl       $a2, $a2, 1
/* E3888 8003A378 8E44000C */  lw         $a0, 0xc($s2)
/* E388C 8003A37C 24050280 */  addiu      $a1, $zero, 0x280
/* E3890 8003A380 0C028D89 */  jal        func_800A3624
/* E3894 8003A384 240601E0 */   addiu     $a2, $zero, 0x1e0
/* E3898 8003A388 8FBF001C */  lw         $ra, 0x1c($sp)
/* E389C 8003A38C 8FB20018 */  lw         $s2, 0x18($sp)
/* E38A0 8003A390 8FB10014 */  lw         $s1, 0x14($sp)
/* E38A4 8003A394 8FB00010 */  lw         $s0, 0x10($sp)
/* E38A8 8003A398 03E00008 */  jr         $ra
/* E38AC 8003A39C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003A3A0_E38B0
/* E38B0 8003A3A0 3C01437F */  lui        $at, 0x437f
/* E38B4 8003A3A4 44810000 */  mtc1       $at, $f0
/* E38B8 8003A3A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E38BC 8003A3AC AFB20018 */  sw         $s2, 0x18($sp)
/* E38C0 8003A3B0 00009021 */  addu       $s2, $zero, $zero
/* E38C4 8003A3B4 AFBF001C */  sw         $ra, 0x1c($sp)
/* E38C8 8003A3B8 AFB10014 */  sw         $s1, 0x14($sp)
/* E38CC 8003A3BC AFB00010 */  sw         $s0, 0x10($sp)
/* E38D0 8003A3C0 324200FF */  andi       $v0, $s2, 0xff
.L8003A3C4:
/* E38D4 8003A3C4 26520001 */  addiu      $s2, $s2, 1
/* E38D8 8003A3C8 00021100 */  sll        $v0, $v0, 4
/* E38DC 8003A3CC 3C018007 */  lui        $at, %hi(D_8006C3D8)
/* E38E0 8003A3D0 00220821 */  addu       $at, $at, $v0
/* E38E4 8003A3D4 E420C3D8 */  swc1       $f0, %lo(D_8006C3D8)($at)
/* E38E8 8003A3D8 3C018007 */  lui        $at, %hi(D_8006C3DC)
/* E38EC 8003A3DC 00220821 */  addu       $at, $at, $v0
/* E38F0 8003A3E0 E420C3DC */  swc1       $f0, %lo(D_8006C3DC)($at)
/* E38F4 8003A3E4 3C018007 */  lui        $at, %hi(D_8006C3E0)
/* E38F8 8003A3E8 00220821 */  addu       $at, $at, $v0
/* E38FC 8003A3EC E420C3E0 */  swc1       $f0, %lo(D_8006C3E0)($at)
/* E3900 8003A3F0 3C018007 */  lui        $at, %hi(D_8006C3E4)
/* E3904 8003A3F4 00220821 */  addu       $at, $at, $v0
/* E3908 8003A3F8 AC20C3E4 */  sw         $zero, %lo(D_8006C3E4)($at)
/* E390C 8003A3FC 324200FF */  andi       $v0, $s2, 0xff
/* E3910 8003A400 2C42000E */  sltiu      $v0, $v0, 0xe
/* E3914 8003A404 1440FFEF */  bnez       $v0, .L8003A3C4
/* E3918 8003A408 324200FF */   andi      $v0, $s2, 0xff
/* E391C 8003A40C 240400B0 */  addiu      $a0, $zero, 0xb0
/* E3920 8003A410 24050006 */  addiu      $a1, $zero, 6
/* E3924 8003A414 24060003 */  addiu      $a2, $zero, 3
/* E3928 8003A418 0C00D97B */  jal        func_800365EC_DFAFC
/* E392C 8003A41C 24070027 */   addiu     $a3, $zero, 0x27
/* E3930 8003A420 00009021 */  addu       $s2, $zero, $zero
/* E3934 8003A424 325100FF */  andi       $s1, $s2, 0xff
.L8003A428:
/* E3938 8003A428 26300027 */  addiu      $s0, $s1, 0x27
/* E393C 8003A42C 3210FFFF */  andi       $s0, $s0, 0xffff
/* E3940 8003A430 0C00D8C1 */  jal        func_80036304_DF814
/* E3944 8003A434 02002021 */   addu      $a0, $s0, $zero
/* E3948 8003A438 8C43000C */  lw         $v1, 0xc($v0)
/* E394C 8003A43C 9462001E */  lhu        $v0, 0x1e($v1)
/* E3950 8003A440 02002021 */  addu       $a0, $s0, $zero
/* E3954 8003A444 26250036 */  addiu      $a1, $s1, 0x36
/* E3958 8003A448 34420064 */  ori        $v0, $v0, 0x64
/* E395C 8003A44C 0C00DD19 */  jal        func_80037464_E0974
/* E3960 8003A450 A462001E */   sh        $v0, 0x1e($v1)
/* E3964 8003A454 8C43000C */  lw         $v1, 0xc($v0)
/* E3968 8003A458 9462001E */  lhu        $v0, 0x1e($v1)
/* E396C 8003A45C 02002021 */  addu       $a0, $s0, $zero
/* E3970 8003A460 26250045 */  addiu      $a1, $s1, 0x45
/* E3974 8003A464 34420064 */  ori        $v0, $v0, 0x64
/* E3978 8003A468 0C00DD19 */  jal        func_80037464_E0974
/* E397C 8003A46C A462001E */   sh        $v0, 0x1e($v1)
/* E3980 8003A470 8C43000C */  lw         $v1, 0xc($v0)
/* E3984 8003A474 9462001E */  lhu        $v0, 0x1e($v1)
/* E3988 8003A478 02002021 */  addu       $a0, $s0, $zero
/* E398C 8003A47C 26250054 */  addiu      $a1, $s1, 0x54
/* E3990 8003A480 34420064 */  ori        $v0, $v0, 0x64
/* E3994 8003A484 0C00DD19 */  jal        func_80037464_E0974
/* E3998 8003A488 A462001E */   sh        $v0, 0x1e($v1)
/* E399C 8003A48C 8C43000C */  lw         $v1, 0xc($v0)
/* E39A0 8003A490 9462001E */  lhu        $v0, 0x1e($v1)
/* E39A4 8003A494 26520001 */  addiu      $s2, $s2, 1
/* E39A8 8003A498 34420064 */  ori        $v0, $v0, 0x64
/* E39AC 8003A49C A462001E */  sh         $v0, 0x1e($v1)
/* E39B0 8003A4A0 324200FF */  andi       $v0, $s2, 0xff
/* E39B4 8003A4A4 2C420003 */  sltiu      $v0, $v0, 3
/* E39B8 8003A4A8 1440FFDF */  bnez       $v0, .L8003A428
/* E39BC 8003A4AC 325100FF */   andi      $s1, $s2, 0xff
/* E39C0 8003A4B0 240400A8 */  addiu      $a0, $zero, 0xa8
/* E39C4 8003A4B4 24050006 */  addiu      $a1, $zero, 6
/* E39C8 8003A4B8 24060008 */  addiu      $a2, $zero, 8
/* E39CC 8003A4BC 0C00D97B */  jal        func_800365EC_DFAFC
/* E39D0 8003A4C0 2407001D */   addiu     $a3, $zero, 0x1d
/* E39D4 8003A4C4 00009021 */  addu       $s2, $zero, $zero
/* E39D8 8003A4C8 324400FF */  andi       $a0, $s2, 0xff
.L8003A4CC:
/* E39DC 8003A4CC 0C00D8C1 */  jal        func_80036304_DF814
/* E39E0 8003A4D0 2484001D */   addiu     $a0, $a0, 0x1d
/* E39E4 8003A4D4 00408021 */  addu       $s0, $v0, $zero
/* E39E8 8003A4D8 8E03000C */  lw         $v1, 0xc($s0)
/* E39EC 8003A4DC 9462001E */  lhu        $v0, 0x1e($v1)
/* E39F0 8003A4E0 24050200 */  addiu      $a1, $zero, 0x200
/* E39F4 8003A4E4 34420064 */  ori        $v0, $v0, 0x64
/* E39F8 8003A4E8 A462001E */  sh         $v0, 0x1e($v1)
/* E39FC 8003A4EC 8E04000C */  lw         $a0, 0xc($s0)
/* E3A00 8003A4F0 24060400 */  addiu      $a2, $zero, 0x400
/* E3A04 8003A4F4 0C0292D4 */  jal        func_800A4B50
/* E3A08 8003A4F8 26520001 */   addiu     $s2, $s2, 1
/* E3A0C 8003A4FC 8E04000C */  lw         $a0, 0xc($s0)
/* E3A10 8003A500 24050040 */  addiu      $a1, $zero, 0x40
/* E3A14 8003A504 0C028D89 */  jal        func_800A3624
/* E3A18 8003A508 24060120 */   addiu     $a2, $zero, 0x120
/* E3A1C 8003A50C 324200FF */  andi       $v0, $s2, 0xff
/* E3A20 8003A510 2C420008 */  sltiu      $v0, $v0, 8
/* E3A24 8003A514 1440FFED */  bnez       $v0, .L8003A4CC
/* E3A28 8003A518 324400FF */   andi      $a0, $s2, 0xff
/* E3A2C 8003A51C 3C04802F */  lui        $a0, 0x802f
/* E3A30 8003A520 34849800 */  ori        $a0, $a0, 0x9800
/* E3A34 8003A524 240500A6 */  addiu      $a1, $zero, 0xa6
/* E3A38 8003A528 24060002 */  addiu      $a2, $zero, 2
/* E3A3C 8003A52C 0C00D9E0 */  jal        func_80036780_DFC90
/* E3A40 8003A530 24070025 */   addiu     $a3, $zero, 0x25
/* E3A44 8003A534 8C44000C */  lw         $a0, 0xc($v0)
/* E3A48 8003A538 8C82000C */  lw         $v0, 0xc($a0)
/* E3A4C 8003A53C 94450000 */  lhu        $a1, ($v0)
/* E3A50 8003A540 84460002 */  lh         $a2, 2($v0)
/* E3A54 8003A544 0C02912A */  jal        func_800A44A8
/* E3A58 8003A548 00052842 */   srl       $a1, $a1, 1
/* E3A5C 8003A54C 240400A5 */  addiu      $a0, $zero, 0xa5
/* E3A60 8003A550 24050006 */  addiu      $a1, $zero, 6
/* E3A64 8003A554 0C00D925 */  jal        func_80036494_DF9A4
/* E3A68 8003A558 2406001C */   addiu     $a2, $zero, 0x1c
/* E3A6C 8003A55C 00408021 */  addu       $s0, $v0, $zero
/* E3A70 8003A560 8E03000C */  lw         $v1, 0xc($s0)
/* E3A74 8003A564 9462001E */  lhu        $v0, 0x1e($v1)
/* E3A78 8003A568 34420044 */  ori        $v0, $v0, 0x44
/* E3A7C 8003A56C A462001E */  sh         $v0, 0x1e($v1)
/* E3A80 8003A570 8E04000C */  lw         $a0, 0xc($s0)
/* E3A84 8003A574 24050040 */  addiu      $a1, $zero, 0x40
/* E3A88 8003A578 0C028D89 */  jal        func_800A3624
/* E3A8C 8003A57C 24060148 */   addiu     $a2, $zero, 0x148
/* E3A90 8003A580 8FBF001C */  lw         $ra, 0x1c($sp)
/* E3A94 8003A584 8FB20018 */  lw         $s2, 0x18($sp)
/* E3A98 8003A588 8FB10014 */  lw         $s1, 0x14($sp)
/* E3A9C 8003A58C 8FB00010 */  lw         $s0, 0x10($sp)
/* E3AA0 8003A590 03E00008 */  jr         $ra
/* E3AA4 8003A594 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003A598_E3AA8
/* E3AA8 8003A598 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* E3AAC 8003A59C AFB20020 */  sw         $s2, 0x20($sp)
/* E3AB0 8003A5A0 00809021 */  addu       $s2, $a0, $zero
/* E3AB4 8003A5A4 AFB00018 */  sw         $s0, 0x18($sp)
/* E3AB8 8003A5A8 325000FF */  andi       $s0, $s2, 0xff
/* E3ABC 8003A5AC 26020027 */  addiu      $v0, $s0, 0x27
/* E3AC0 8003A5B0 AFB1001C */  sw         $s1, 0x1c($sp)
/* E3AC4 8003A5B4 3051FFFF */  andi       $s1, $v0, 0xffff
/* E3AC8 8003A5B8 F7B40028 */  sdc1       $f20, 0x28($sp)
/* E3ACC 8003A5BC 4485A000 */  mtc1       $a1, $f20
/* E3AD0 8003A5C0 AFBF0024 */  sw         $ra, 0x24($sp)
/* E3AD4 8003A5C4 0C00D8C1 */  jal        func_80036304_DF814
/* E3AD8 8003A5C8 02202021 */   addu      $a0, $s1, $zero
/* E3ADC 8003A5CC 1440002E */  bnez       $v0, .L8003A688
/* E3AE0 8003A5D0 00000000 */   nop
/* E3AE4 8003A5D4 0C00D8C1 */  jal        func_80036304_DF814
/* E3AE8 8003A5D8 26040034 */   addiu     $a0, $s0, 0x34
/* E3AEC 8003A5DC 0C00D865 */  jal        func_80036194_DF6A4
/* E3AF0 8003A5E0 00402021 */   addu      $a0, $v0, $zero
/* E3AF4 8003A5E4 0C00D8C1 */  jal        func_80036304_DF814
/* E3AF8 8003A5E8 26040025 */   addiu     $a0, $s0, 0x25
/* E3AFC 8003A5EC 0C00D865 */  jal        func_80036194_DF6A4
/* E3B00 8003A5F0 00402021 */   addu      $a0, $v0, $zero
/* E3B04 8003A5F4 0C00D8C1 */  jal        func_80036304_DF814
/* E3B08 8003A5F8 26040052 */   addiu     $a0, $s0, 0x52
/* E3B0C 8003A5FC 0C00D865 */  jal        func_80036194_DF6A4
/* E3B10 8003A600 00402021 */   addu      $a0, $v0, $zero
/* E3B14 8003A604 0C00D8C1 */  jal        func_80036304_DF814
/* E3B18 8003A608 26040043 */   addiu     $a0, $s0, 0x43
/* E3B1C 8003A60C 0C00D865 */  jal        func_80036194_DF6A4
/* E3B20 8003A610 00402021 */   addu      $a0, $v0, $zero
/* E3B24 8003A614 260400B0 */  addiu      $a0, $s0, 0xb0
/* E3B28 8003A618 24050006 */  addiu      $a1, $zero, 6
/* E3B2C 8003A61C 0C00D925 */  jal        func_80036494_DF9A4
/* E3B30 8003A620 02203021 */   addu      $a2, $s1, $zero
/* E3B34 8003A624 8C43000C */  lw         $v1, 0xc($v0)
/* E3B38 8003A628 9462001E */  lhu        $v0, 0x1e($v1)
/* E3B3C 8003A62C 02202021 */  addu       $a0, $s1, $zero
/* E3B40 8003A630 26050036 */  addiu      $a1, $s0, 0x36
/* E3B44 8003A634 34420064 */  ori        $v0, $v0, 0x64
/* E3B48 8003A638 0C00DD19 */  jal        func_80037464_E0974
/* E3B4C 8003A63C A462001E */   sh        $v0, 0x1e($v1)
/* E3B50 8003A640 8C43000C */  lw         $v1, 0xc($v0)
/* E3B54 8003A644 9462001E */  lhu        $v0, 0x1e($v1)
/* E3B58 8003A648 02202021 */  addu       $a0, $s1, $zero
/* E3B5C 8003A64C 26050045 */  addiu      $a1, $s0, 0x45
/* E3B60 8003A650 34420064 */  ori        $v0, $v0, 0x64
/* E3B64 8003A654 0C00DD19 */  jal        func_80037464_E0974
/* E3B68 8003A658 A462001E */   sh        $v0, 0x1e($v1)
/* E3B6C 8003A65C 8C43000C */  lw         $v1, 0xc($v0)
/* E3B70 8003A660 9462001E */  lhu        $v0, 0x1e($v1)
/* E3B74 8003A664 02202021 */  addu       $a0, $s1, $zero
/* E3B78 8003A668 26050054 */  addiu      $a1, $s0, 0x54
/* E3B7C 8003A66C 34420064 */  ori        $v0, $v0, 0x64
/* E3B80 8003A670 0C00DD19 */  jal        func_80037464_E0974
/* E3B84 8003A674 A462001E */   sh        $v0, 0x1e($v1)
/* E3B88 8003A678 8C43000C */  lw         $v1, 0xc($v0)
/* E3B8C 8003A67C 9462001E */  lhu        $v0, 0x1e($v1)
/* E3B90 8003A680 34420064 */  ori        $v0, $v0, 0x64
/* E3B94 8003A684 A462001E */  sh         $v0, 0x1e($v1)
.L8003A688:
/* E3B98 8003A688 0C00D8C1 */  jal        func_80036304_DF814
/* E3B9C 8003A68C 26040036 */   addiu     $a0, $s0, 0x36
/* E3BA0 8003A690 00408021 */  addu       $s0, $v0, $zero
/* E3BA4 8003A694 8E04000C */  lw         $a0, 0xc($s0)
/* E3BA8 8003A698 24050001 */  addiu      $a1, $zero, 1
/* E3BAC 8003A69C 0C00DE72 */  jal        func_800379C8_E0ED8
/* E3BB0 8003A6A0 00003021 */   addu      $a2, $zero, $zero
/* E3BB4 8003A6A4 8E03000C */  lw         $v1, 0xc($s0)
/* E3BB8 8003A6A8 2402004A */  addiu      $v0, $zero, 0x4a
/* E3BBC 8003A6AC A462001C */  sh         $v0, 0x1c($v1)
/* E3BC0 8003A6B0 8E04000C */  lw         $a0, 0xc($s0)
/* E3BC4 8003A6B4 24050400 */  addiu      $a1, $zero, 0x400
/* E3BC8 8003A6B8 0C0292D4 */  jal        func_800A4B50
/* E3BCC 8003A6BC 24060200 */   addiu     $a2, $zero, 0x200
/* E3BD0 8003A6C0 8E04000C */  lw         $a0, 0xc($s0)
/* E3BD4 8003A6C4 24050040 */  addiu      $a1, $zero, 0x40
/* E3BD8 8003A6C8 0C028D89 */  jal        func_800A3624
/* E3BDC 8003A6CC 24060010 */   addiu     $a2, $zero, 0x10
/* E3BE0 8003A6D0 3C014F00 */  lui        $at, 0x4f00
/* E3BE4 8003A6D4 44810000 */  mtc1       $at, $f0
/* E3BE8 8003A6D8 00000000 */  nop
/* E3BEC 8003A6DC 4614003E */  c.le.s     $f0, $f20
/* E3BF0 8003A6E0 00000000 */  nop
/* E3BF4 8003A6E4 00000000 */  nop
/* E3BF8 8003A6E8 45030006 */  bc1tl      .L8003A704
/* E3BFC 8003A6EC 4600A001 */   sub.s     $f0, $f20, $f0
/* E3C00 8003A6F0 4600A00D */  trunc.w.s  $f0, $f20
/* E3C04 8003A6F4 44030000 */  mfc1       $v1, $f0
/* E3C08 8003A6F8 00000000 */  nop
/* E3C0C 8003A6FC 0800E9C6 */  j          .L8003A718
/* E3C10 8003A700 306200FF */   andi      $v0, $v1, 0xff
.L8003A704:
/* E3C14 8003A704 4600008D */  trunc.w.s  $f2, $f0
/* E3C18 8003A708 44031000 */  mfc1       $v1, $f2
/* E3C1C 8003A70C 3C028000 */  lui        $v0, 0x8000
/* E3C20 8003A710 00621825 */  or         $v1, $v1, $v0
/* E3C24 8003A714 306200FF */  andi       $v0, $v1, 0xff
.L8003A718:
/* E3C28 8003A718 AFA20010 */  sw         $v0, 0x10($sp)
/* E3C2C 8003A71C 8E04000C */  lw         $a0, 0xc($s0)
/* E3C30 8003A720 240500FF */  addiu      $a1, $zero, 0xff
/* E3C34 8003A724 240600FF */  addiu      $a2, $zero, 0xff
/* E3C38 8003A728 0C028E41 */  jal        func_800A3904
/* E3C3C 8003A72C 240700FF */   addiu     $a3, $zero, 0xff
/* E3C40 8003A730 8E04000C */  lw         $a0, 0xc($s0)
/* E3C44 8003A734 0C028A40 */  jal        func_800A2900
/* E3C48 8003A738 00000000 */   nop
/* E3C4C 8003A73C 324400FF */  andi       $a0, $s2, 0xff
/* E3C50 8003A740 0C00D8C1 */  jal        func_80036304_DF814
/* E3C54 8003A744 24840027 */   addiu     $a0, $a0, 0x27
/* E3C58 8003A748 00408021 */  addu       $s0, $v0, $zero
/* E3C5C 8003A74C 8E04000C */  lw         $a0, 0xc($s0)
/* E3C60 8003A750 24050001 */  addiu      $a1, $zero, 1
/* E3C64 8003A754 0C00DE72 */  jal        func_800379C8_E0ED8
/* E3C68 8003A758 00003021 */   addu      $a2, $zero, $zero
/* E3C6C 8003A75C 8E03000C */  lw         $v1, 0xc($s0)
/* E3C70 8003A760 2402004B */  addiu      $v0, $zero, 0x4b
/* E3C74 8003A764 A462001C */  sh         $v0, 0x1c($v1)
/* E3C78 8003A768 8E04000C */  lw         $a0, 0xc($s0)
/* E3C7C 8003A76C 24050400 */  addiu      $a1, $zero, 0x400
/* E3C80 8003A770 0C0292D4 */  jal        func_800A4B50
/* E3C84 8003A774 24060200 */   addiu     $a2, $zero, 0x200
/* E3C88 8003A778 8E04000C */  lw         $a0, 0xc($s0)
/* E3C8C 8003A77C 24050280 */  addiu      $a1, $zero, 0x280
/* E3C90 8003A780 0C028D89 */  jal        func_800A3624
/* E3C94 8003A784 24060010 */   addiu     $a2, $zero, 0x10
/* E3C98 8003A788 3C014F00 */  lui        $at, 0x4f00
/* E3C9C 8003A78C 44810000 */  mtc1       $at, $f0
/* E3CA0 8003A790 00000000 */  nop
/* E3CA4 8003A794 4614003E */  c.le.s     $f0, $f20
/* E3CA8 8003A798 00000000 */  nop
/* E3CAC 8003A79C 00000000 */  nop
/* E3CB0 8003A7A0 45030006 */  bc1tl      .L8003A7BC
/* E3CB4 8003A7A4 4600A001 */   sub.s     $f0, $f20, $f0
/* E3CB8 8003A7A8 4600A00D */  trunc.w.s  $f0, $f20
/* E3CBC 8003A7AC 44030000 */  mfc1       $v1, $f0
/* E3CC0 8003A7B0 00000000 */  nop
/* E3CC4 8003A7B4 0800E9F4 */  j          .L8003A7D0
/* E3CC8 8003A7B8 306200FF */   andi      $v0, $v1, 0xff
.L8003A7BC:
/* E3CCC 8003A7BC 4600008D */  trunc.w.s  $f2, $f0
/* E3CD0 8003A7C0 44031000 */  mfc1       $v1, $f2
/* E3CD4 8003A7C4 3C028000 */  lui        $v0, 0x8000
/* E3CD8 8003A7C8 00621825 */  or         $v1, $v1, $v0
/* E3CDC 8003A7CC 306200FF */  andi       $v0, $v1, 0xff
.L8003A7D0:
/* E3CE0 8003A7D0 AFA20010 */  sw         $v0, 0x10($sp)
/* E3CE4 8003A7D4 8E04000C */  lw         $a0, 0xc($s0)
/* E3CE8 8003A7D8 240500FF */  addiu      $a1, $zero, 0xff
/* E3CEC 8003A7DC 240600FF */  addiu      $a2, $zero, 0xff
/* E3CF0 8003A7E0 0C028E41 */  jal        func_800A3904
/* E3CF4 8003A7E4 240700FF */   addiu     $a3, $zero, 0xff
/* E3CF8 8003A7E8 8E04000C */  lw         $a0, 0xc($s0)
/* E3CFC 8003A7EC 0C028A40 */  jal        func_800A2900
/* E3D00 8003A7F0 00000000 */   nop
/* E3D04 8003A7F4 324400FF */  andi       $a0, $s2, 0xff
/* E3D08 8003A7F8 0C00D8C1 */  jal        func_80036304_DF814
/* E3D0C 8003A7FC 24840054 */   addiu     $a0, $a0, 0x54
/* E3D10 8003A800 00408021 */  addu       $s0, $v0, $zero
/* E3D14 8003A804 8E03000C */  lw         $v1, 0xc($s0)
/* E3D18 8003A808 24020048 */  addiu      $v0, $zero, 0x48
/* E3D1C 8003A80C A462001C */  sh         $v0, 0x1c($v1)
/* E3D20 8003A810 8E04000C */  lw         $a0, 0xc($s0)
/* E3D24 8003A814 24050400 */  addiu      $a1, $zero, 0x400
/* E3D28 8003A818 0C0292D4 */  jal        func_800A4B50
/* E3D2C 8003A81C 24060200 */   addiu     $a2, $zero, 0x200
/* E3D30 8003A820 8E04000C */  lw         $a0, 0xc($s0)
/* E3D34 8003A824 24050040 */  addiu      $a1, $zero, 0x40
/* E3D38 8003A828 0C028D89 */  jal        func_800A3624
/* E3D3C 8003A82C 24060010 */   addiu     $a2, $zero, 0x10
/* E3D40 8003A830 3C014F00 */  lui        $at, 0x4f00
/* E3D44 8003A834 44810000 */  mtc1       $at, $f0
/* E3D48 8003A838 00000000 */  nop
/* E3D4C 8003A83C 4614003E */  c.le.s     $f0, $f20
/* E3D50 8003A840 00000000 */  nop
/* E3D54 8003A844 00000000 */  nop
/* E3D58 8003A848 45030006 */  bc1tl      .L8003A864
/* E3D5C 8003A84C 4600A001 */   sub.s     $f0, $f20, $f0
/* E3D60 8003A850 4600A00D */  trunc.w.s  $f0, $f20
/* E3D64 8003A854 44030000 */  mfc1       $v1, $f0
/* E3D68 8003A858 00000000 */  nop
/* E3D6C 8003A85C 0800EA1E */  j          .L8003A878
/* E3D70 8003A860 00031042 */   srl       $v0, $v1, 1
.L8003A864:
/* E3D74 8003A864 4600008D */  trunc.w.s  $f2, $f0
/* E3D78 8003A868 44031000 */  mfc1       $v1, $f2
/* E3D7C 8003A86C 3C028000 */  lui        $v0, 0x8000
/* E3D80 8003A870 00621825 */  or         $v1, $v1, $v0
/* E3D84 8003A874 00031042 */  srl        $v0, $v1, 1
.L8003A878:
/* E3D88 8003A878 304200FF */  andi       $v0, $v0, 0xff
/* E3D8C 8003A87C AFA20010 */  sw         $v0, 0x10($sp)
/* E3D90 8003A880 8E04000C */  lw         $a0, 0xc($s0)
/* E3D94 8003A884 240500FF */  addiu      $a1, $zero, 0xff
/* E3D98 8003A888 240600FF */  addiu      $a2, $zero, 0xff
/* E3D9C 8003A88C 0C028E41 */  jal        func_800A3904
/* E3DA0 8003A890 240700FF */   addiu     $a3, $zero, 0xff
/* E3DA4 8003A894 8E04000C */  lw         $a0, 0xc($s0)
/* E3DA8 8003A898 0C028A40 */  jal        func_800A2900
/* E3DAC 8003A89C 00000000 */   nop
/* E3DB0 8003A8A0 324400FF */  andi       $a0, $s2, 0xff
/* E3DB4 8003A8A4 0C00D8C1 */  jal        func_80036304_DF814
/* E3DB8 8003A8A8 24840045 */   addiu     $a0, $a0, 0x45
/* E3DBC 8003A8AC 00408021 */  addu       $s0, $v0, $zero
/* E3DC0 8003A8B0 8E03000C */  lw         $v1, 0xc($s0)
/* E3DC4 8003A8B4 24020049 */  addiu      $v0, $zero, 0x49
/* E3DC8 8003A8B8 A462001C */  sh         $v0, 0x1c($v1)
/* E3DCC 8003A8BC 8E02000C */  lw         $v0, 0xc($s0)
/* E3DD0 8003A8C0 8C420000 */  lw         $v0, ($v0)
/* E3DD4 8003A8C4 A440001A */  sh         $zero, 0x1a($v0)
/* E3DD8 8003A8C8 8E04000C */  lw         $a0, 0xc($s0)
/* E3DDC 8003A8CC 24050400 */  addiu      $a1, $zero, 0x400
/* E3DE0 8003A8D0 0C0292D4 */  jal        func_800A4B50
/* E3DE4 8003A8D4 24060200 */   addiu     $a2, $zero, 0x200
/* E3DE8 8003A8D8 8E04000C */  lw         $a0, 0xc($s0)
/* E3DEC 8003A8DC 24050280 */  addiu      $a1, $zero, 0x280
/* E3DF0 8003A8E0 0C028D89 */  jal        func_800A3624
/* E3DF4 8003A8E4 24060010 */   addiu     $a2, $zero, 0x10
/* E3DF8 8003A8E8 3C014F00 */  lui        $at, 0x4f00
/* E3DFC 8003A8EC 44810000 */  mtc1       $at, $f0
/* E3E00 8003A8F0 00000000 */  nop
/* E3E04 8003A8F4 4614003E */  c.le.s     $f0, $f20
/* E3E08 8003A8F8 00000000 */  nop
/* E3E0C 8003A8FC 00000000 */  nop
/* E3E10 8003A900 45030006 */  bc1tl      .L8003A91C
/* E3E14 8003A904 4600A001 */   sub.s     $f0, $f20, $f0
/* E3E18 8003A908 4600A00D */  trunc.w.s  $f0, $f20
/* E3E1C 8003A90C 44050000 */  mfc1       $a1, $f0
/* E3E20 8003A910 00000000 */  nop
/* E3E24 8003A914 0800EA4C */  j          .L8003A930
/* E3E28 8003A918 00051042 */   srl       $v0, $a1, 1
.L8003A91C:
/* E3E2C 8003A91C 4600008D */  trunc.w.s  $f2, $f0
/* E3E30 8003A920 44051000 */  mfc1       $a1, $f2
/* E3E34 8003A924 3C028000 */  lui        $v0, 0x8000
/* E3E38 8003A928 00A22825 */  or         $a1, $a1, $v0
/* E3E3C 8003A92C 00051042 */  srl        $v0, $a1, 1
.L8003A930:
/* E3E40 8003A930 304200FF */  andi       $v0, $v0, 0xff
/* E3E44 8003A934 AFA20010 */  sw         $v0, 0x10($sp)
/* E3E48 8003A938 8E04000C */  lw         $a0, 0xc($s0)
/* E3E4C 8003A93C 240500FF */  addiu      $a1, $zero, 0xff
/* E3E50 8003A940 240600FF */  addiu      $a2, $zero, 0xff
/* E3E54 8003A944 0C028E41 */  jal        func_800A3904
/* E3E58 8003A948 240700FF */   addiu     $a3, $zero, 0xff
/* E3E5C 8003A94C 8E04000C */  lw         $a0, 0xc($s0)
/* E3E60 8003A950 0C028A40 */  jal        func_800A2900
/* E3E64 8003A954 00000000 */   nop
/* E3E68 8003A958 8FBF0024 */  lw         $ra, 0x24($sp)
/* E3E6C 8003A95C 8FB20020 */  lw         $s2, 0x20($sp)
/* E3E70 8003A960 8FB1001C */  lw         $s1, 0x1c($sp)
/* E3E74 8003A964 8FB00018 */  lw         $s0, 0x18($sp)
/* E3E78 8003A968 D7B40028 */  ldc1       $f20, 0x28($sp)
/* E3E7C 8003A96C 03E00008 */  jr         $ra
/* E3E80 8003A970 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8003A974_E3E84
/* E3E84 8003A974 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* E3E88 8003A978 AFBF0024 */  sw         $ra, 0x24($sp)
/* E3E8C 8003A97C AFB20020 */  sw         $s2, 0x20($sp)
/* E3E90 8003A980 AFB1001C */  sw         $s1, 0x1c($sp)
/* E3E94 8003A984 0C00E109 */  jal        func_80038424_E1934
/* E3E98 8003A988 AFB00018 */   sw        $s0, 0x18($sp)
/* E3E9C 8003A98C 24040064 */  addiu      $a0, $zero, 0x64
/* E3EA0 8003A990 24050003 */  addiu      $a1, $zero, 3
/* E3EA4 8003A994 0C00D925 */  jal        func_80036494_DF9A4
/* E3EA8 8003A998 24060056 */   addiu     $a2, $zero, 0x56
/* E3EAC 8003A99C 00408821 */  addu       $s1, $v0, $zero
/* E3EB0 8003A9A0 3C014000 */  lui        $at, 0x4000
/* E3EB4 8003A9A4 44810000 */  mtc1       $at, $f0
/* E3EB8 8003A9A8 8E24000C */  lw         $a0, 0xc($s1)
/* E3EBC 8003A9AC 44060000 */  mfc1       $a2, $f0
/* E3EC0 8003A9B0 00002821 */  addu       $a1, $zero, $zero
/* E3EC4 8003A9B4 0C02915B */  jal        func_800A456C
/* E3EC8 8003A9B8 00C03821 */   addu      $a3, $a2, $zero
/* E3ECC 8003A9BC 8E24000C */  lw         $a0, 0xc($s1)
/* E3ED0 8003A9C0 8C82000C */  lw         $v0, 0xc($a0)
/* E3ED4 8003A9C4 94450000 */  lhu        $a1, ($v0)
/* E3ED8 8003A9C8 94460002 */  lhu        $a2, 2($v0)
/* E3EDC 8003A9CC 00052842 */  srl        $a1, $a1, 1
/* E3EE0 8003A9D0 0C02912A */  jal        func_800A44A8
/* E3EE4 8003A9D4 00063042 */   srl       $a2, $a2, 1
/* E3EE8 8003A9D8 8E24000C */  lw         $a0, 0xc($s1)
/* E3EEC 8003A9DC 24050280 */  addiu      $a1, $zero, 0x280
/* E3EF0 8003A9E0 0C028D89 */  jal        func_800A3624
/* E3EF4 8003A9E4 240601CC */   addiu     $a2, $zero, 0x1cc
/* E3EF8 8003A9E8 8E23000C */  lw         $v1, 0xc($s1)
/* E3EFC 8003A9EC 24040063 */  addiu      $a0, $zero, 0x63
/* E3F00 8003A9F0 9462001E */  lhu        $v0, 0x1e($v1)
/* E3F04 8003A9F4 24050002 */  addiu      $a1, $zero, 2
/* E3F08 8003A9F8 24060055 */  addiu      $a2, $zero, 0x55
/* E3F0C 8003A9FC 34420004 */  ori        $v0, $v0, 4
/* E3F10 8003AA00 0C00D925 */  jal        func_80036494_DF9A4
/* E3F14 8003AA04 A462001E */   sh        $v0, 0x1e($v1)
/* E3F18 8003AA08 00408821 */  addu       $s1, $v0, $zero
/* E3F1C 8003AA0C 8E24000C */  lw         $a0, 0xc($s1)
/* E3F20 8003AA10 8C82000C */  lw         $v0, 0xc($a0)
/* E3F24 8003AA14 94450000 */  lhu        $a1, ($v0)
/* E3F28 8003AA18 84460002 */  lh         $a2, 2($v0)
/* E3F2C 8003AA1C 00009021 */  addu       $s2, $zero, $zero
/* E3F30 8003AA20 0C02912A */  jal        func_800A44A8
/* E3F34 8003AA24 00052842 */   srl       $a1, $a1, 1
/* E3F38 8003AA28 8E24000C */  lw         $a0, 0xc($s1)
/* E3F3C 8003AA2C 24050280 */  addiu      $a1, $zero, 0x280
/* E3F40 8003AA30 0C028D89 */  jal        func_800A3624
/* E3F44 8003AA34 2406037C */   addiu     $a2, $zero, 0x37c
/* E3F48 8003AA38 24040065 */  addiu      $a0, $zero, 0x65
/* E3F4C 8003AA3C 24050002 */  addiu      $a1, $zero, 2
/* E3F50 8003AA40 0C00D925 */  jal        func_80036494_DF9A4
/* E3F54 8003AA44 24060044 */   addiu     $a2, $zero, 0x44
/* E3F58 8003AA48 00408821 */  addu       $s1, $v0, $zero
/* E3F5C 8003AA4C 8E24000C */  lw         $a0, 0xc($s1)
/* E3F60 8003AA50 24050208 */  addiu      $a1, $zero, 0x208
/* E3F64 8003AA54 0C028D89 */  jal        func_800A3624
/* E3F68 8003AA58 24060088 */   addiu     $a2, $zero, 0x88
/* E3F6C 8003AA5C 8E24000C */  lw         $a0, 0xc($s1)
/* E3F70 8003AA60 24050001 */  addiu      $a1, $zero, 1
/* E3F74 8003AA64 0C00DE72 */  jal        func_800379C8_E0ED8
/* E3F78 8003AA68 00003021 */   addu      $a2, $zero, $zero
/* E3F7C 8003AA6C 24040065 */  addiu      $a0, $zero, 0x65
/* E3F80 8003AA70 24050002 */  addiu      $a1, $zero, 2
/* E3F84 8003AA74 0C00D925 */  jal        func_80036494_DF9A4
/* E3F88 8003AA78 24060045 */   addiu     $a2, $zero, 0x45
/* E3F8C 8003AA7C 00408821 */  addu       $s1, $v0, $zero
/* E3F90 8003AA80 8E24000C */  lw         $a0, 0xc($s1)
/* E3F94 8003AA84 24050208 */  addiu      $a1, $zero, 0x208
/* E3F98 8003AA88 0C028D89 */  jal        func_800A3624
/* E3F9C 8003AA8C 24060088 */   addiu     $a2, $zero, 0x88
/* E3FA0 8003AA90 24020080 */  addiu      $v0, $zero, 0x80
/* E3FA4 8003AA94 AFA20010 */  sw         $v0, 0x10($sp)
/* E3FA8 8003AA98 8E24000C */  lw         $a0, 0xc($s1)
/* E3FAC 8003AA9C 240500FF */  addiu      $a1, $zero, 0xff
/* E3FB0 8003AAA0 240600FF */  addiu      $a2, $zero, 0xff
/* E3FB4 8003AAA4 0C028E41 */  jal        func_800A3904
/* E3FB8 8003AAA8 240700FF */   addiu     $a3, $zero, 0xff
/* E3FBC 8003AAAC 24040062 */  addiu      $a0, $zero, 0x62
.L8003AAB0:
/* E3FC0 8003AAB0 24050002 */  addiu      $a1, $zero, 2
/* E3FC4 8003AAB4 324600FF */  andi       $a2, $s2, 0xff
/* E3FC8 8003AAB8 0C00D925 */  jal        func_80036494_DF9A4
/* E3FCC 8003AABC 24C60046 */   addiu     $a2, $a2, 0x46
/* E3FD0 8003AAC0 00408821 */  addu       $s1, $v0, $zero
/* E3FD4 8003AAC4 8E24000C */  lw         $a0, 0xc($s1)
/* E3FD8 8003AAC8 8C82000C */  lw         $v0, 0xc($a0)
/* E3FDC 8003AACC 94450000 */  lhu        $a1, ($v0)
/* E3FE0 8003AAD0 00003021 */  addu       $a2, $zero, $zero
/* E3FE4 8003AAD4 0C02912A */  jal        func_800A44A8
/* E3FE8 8003AAD8 00052842 */   srl       $a1, $a1, 1
/* E3FEC 8003AADC 8E24000C */  lw         $a0, 0xc($s1)
/* E3FF0 8003AAE0 24050298 */  addiu      $a1, $zero, 0x298
/* E3FF4 8003AAE4 0C028D89 */  jal        func_800A3624
/* E3FF8 8003AAE8 24060160 */   addiu     $a2, $zero, 0x160
/* E3FFC 8003AAEC 325000FF */  andi       $s0, $s2, 0xff
/* E4000 8003AAF0 00101880 */  sll        $v1, $s0, 2
/* E4004 8003AAF4 00701821 */  addu       $v1, $v1, $s0
/* E4008 8003AAF8 00031840 */  sll        $v1, $v1, 1
/* E400C 8003AAFC 2402FF80 */  addiu      $v0, $zero, -0x80
/* E4010 8003AB00 00431023 */  subu       $v0, $v0, $v1
/* E4014 8003AB04 304200FF */  andi       $v0, $v0, 0xff
/* E4018 8003AB08 AFA20010 */  sw         $v0, 0x10($sp)
/* E401C 8003AB0C 8E24000C */  lw         $a0, 0xc($s1)
/* E4020 8003AB10 240500FF */  addiu      $a1, $zero, 0xff
/* E4024 8003AB14 240600FF */  addiu      $a2, $zero, 0xff
/* E4028 8003AB18 0C028E41 */  jal        func_800A3904
/* E402C 8003AB1C 240700FF */   addiu     $a3, $zero, 0xff
/* E4030 8003AB20 8E23000C */  lw         $v1, 0xc($s1)
/* E4034 8003AB24 9462001E */  lhu        $v0, 0x1e($v1)
/* E4038 8003AB28 34420004 */  ori        $v0, $v0, 4
/* E403C 8003AB2C A462001E */  sh         $v0, 0x1e($v1)
/* E4040 8003AB30 8E24000C */  lw         $a0, 0xc($s1)
/* E4044 8003AB34 00002821 */  addu       $a1, $zero, $zero
/* E4048 8003AB38 0C00DE6C */  jal        func_800379B0_E0EC0
/* E404C 8003AB3C 3406FFFE */   ori       $a2, $zero, 0xfffe
/* E4050 8003AB40 52000017 */  beql       $s0, $zero, .L8003ABA0
/* E4054 8003AB44 26520001 */   addiu     $s2, $s2, 1
/* E4058 8003AB48 00008021 */  addu       $s0, $zero, $zero
.L8003AB4C:
/* E405C 8003AB4C 8E24000C */  lw         $a0, 0xc($s1)
/* E4060 8003AB50 320500FF */  andi       $a1, $s0, 0xff
/* E4064 8003AB54 00003021 */  addu       $a2, $zero, $zero
/* E4068 8003AB58 0C00DE72 */  jal        func_800379C8_E0ED8
/* E406C 8003AB5C 26100001 */   addiu     $s0, $s0, 1
/* E4070 8003AB60 320200FF */  andi       $v0, $s0, 0xff
/* E4074 8003AB64 2C42000E */  sltiu      $v0, $v0, 0xe
/* E4078 8003AB68 1440FFF8 */  bnez       $v0, .L8003AB4C
/* E407C 8003AB6C 2405000B */   addiu     $a1, $zero, 0xb
/* E4080 8003AB70 8E24000C */  lw         $a0, 0xc($s1)
/* E4084 8003AB74 0C00DE72 */  jal        func_800379C8_E0ED8
/* E4088 8003AB78 24060001 */   addiu     $a2, $zero, 1
/* E408C 8003AB7C 8E24000C */  lw         $a0, 0xc($s1)
/* E4090 8003AB80 24050008 */  addiu      $a1, $zero, 8
/* E4094 8003AB84 0C00DE72 */  jal        func_800379C8_E0ED8
/* E4098 8003AB88 24060001 */   addiu     $a2, $zero, 1
/* E409C 8003AB8C 8E24000C */  lw         $a0, 0xc($s1)
/* E40A0 8003AB90 24050005 */  addiu      $a1, $zero, 5
/* E40A4 8003AB94 0C00DE72 */  jal        func_800379C8_E0ED8
/* E40A8 8003AB98 24060001 */   addiu     $a2, $zero, 1
/* E40AC 8003AB9C 26520001 */  addiu      $s2, $s2, 1
.L8003ABA0:
/* E40B0 8003ABA0 324200FF */  andi       $v0, $s2, 0xff
/* E40B4 8003ABA4 2C420008 */  sltiu      $v0, $v0, 8
/* E40B8 8003ABA8 1440FFC1 */  bnez       $v0, .L8003AAB0
/* E40BC 8003ABAC 24040062 */   addiu     $a0, $zero, 0x62
/* E40C0 8003ABB0 8FBF0024 */  lw         $ra, 0x24($sp)
/* E40C4 8003ABB4 8FB20020 */  lw         $s2, 0x20($sp)
/* E40C8 8003ABB8 8FB1001C */  lw         $s1, 0x1c($sp)
/* E40CC 8003ABBC 8FB00018 */  lw         $s0, 0x18($sp)
/* E40D0 8003ABC0 03E00008 */  jr         $ra
/* E40D4 8003ABC4 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8003ABC8_E40D8
/* E40D8 8003ABC8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* E40DC 8003ABCC AFBF001C */  sw         $ra, 0x1c($sp)
/* E40E0 8003ABD0 AFB20018 */  sw         $s2, 0x18($sp)
/* E40E4 8003ABD4 AFB10014 */  sw         $s1, 0x14($sp)
/* E40E8 8003ABD8 0C00E109 */  jal        func_80038424_E1934
/* E40EC 8003ABDC AFB00010 */   sw        $s0, 0x10($sp)
/* E40F0 8003ABE0 00008821 */  addu       $s1, $zero, $zero
/* E40F4 8003ABE4 2412004C */  addiu      $s2, $zero, 0x4c
/* E40F8 8003ABE8 24040008 */  addiu      $a0, $zero, 8
.L8003ABEC:
/* E40FC 8003ABEC 24050001 */  addiu      $a1, $zero, 1
/* E4100 8003ABF0 322600FF */  andi       $a2, $s1, 0xff
/* E4104 8003ABF4 0C00D925 */  jal        func_80036494_DF9A4
/* E4108 8003ABF8 24C60034 */   addiu     $a2, $a2, 0x34
/* E410C 8003ABFC 00408021 */  addu       $s0, $v0, $zero
/* E4110 8003AC00 322200FF */  andi       $v0, $s1, 0xff
/* E4114 8003AC04 14400008 */  bnez       $v0, .L8003AC28
/* E4118 8003AC08 24050066 */   addiu     $a1, $zero, 0x66
/* E411C 8003AC0C 8E02000C */  lw         $v0, 0xc($s0)
/* E4120 8003AC10 9443001E */  lhu        $v1, 0x1e($v0)
/* E4124 8003AC14 3063FFBF */  andi       $v1, $v1, 0xffbf
/* E4128 8003AC18 A443001E */  sh         $v1, 0x1e($v0)
/* E412C 8003AC1C 8E04000C */  lw         $a0, 0xc($s0)
/* E4130 8003AC20 0800EB10 */  j          .L8003AC40
/* E4134 8003AC24 2406002A */   addiu     $a2, $zero, 0x2a
.L8003AC28:
/* E4138 8003AC28 8E02000C */  lw         $v0, 0xc($s0)
/* E413C 8003AC2C 9443001E */  lhu        $v1, 0x1e($v0)
/* E4140 8003AC30 34630044 */  ori        $v1, $v1, 0x44
/* E4144 8003AC34 A443001E */  sh         $v1, 0x1e($v0)
/* E4148 8003AC38 8E04000C */  lw         $a0, 0xc($s0)
/* E414C 8003AC3C 24060400 */  addiu      $a2, $zero, 0x400
.L8003AC40:
/* E4150 8003AC40 0C028F9A */  jal        func_800A3E68
/* E4154 8003AC44 26310001 */   addiu     $s1, $s1, 1
/* E4158 8003AC48 8E02000C */  lw         $v0, 0xc($s0)
/* E415C 8003AC4C A452001C */  sh         $s2, 0x1c($v0)
/* E4160 8003AC50 322200FF */  andi       $v0, $s1, 0xff
/* E4164 8003AC54 2C420021 */  sltiu      $v0, $v0, 0x21
/* E4168 8003AC58 1440FFE4 */  bnez       $v0, .L8003ABEC
/* E416C 8003AC5C 24040008 */   addiu     $a0, $zero, 8
/* E4170 8003AC60 24040020 */  addiu      $a0, $zero, 0x20
/* E4174 8003AC64 24050005 */  addiu      $a1, $zero, 5
/* E4178 8003AC68 0C00D925 */  jal        func_80036494_DF9A4
/* E417C 8003AC6C 24060030 */   addiu     $a2, $zero, 0x30
/* E4180 8003AC70 24040021 */  addiu      $a0, $zero, 0x21
/* E4184 8003AC74 24050005 */  addiu      $a1, $zero, 5
/* E4188 8003AC78 0C00D925 */  jal        func_80036494_DF9A4
/* E418C 8003AC7C 24060031 */   addiu     $a2, $zero, 0x31
/* E4190 8003AC80 24040022 */  addiu      $a0, $zero, 0x22
/* E4194 8003AC84 24050005 */  addiu      $a1, $zero, 5
/* E4198 8003AC88 0C00D925 */  jal        func_80036494_DF9A4
/* E419C 8003AC8C 24060032 */   addiu     $a2, $zero, 0x32
/* E41A0 8003AC90 24040011 */  addiu      $a0, $zero, 0x11
/* E41A4 8003AC94 24050001 */  addiu      $a1, $zero, 1
/* E41A8 8003AC98 0C00D925 */  jal        func_80036494_DF9A4
/* E41AC 8003AC9C 24060033 */   addiu     $a2, $zero, 0x33
/* E41B0 8003ACA0 00408021 */  addu       $s0, $v0, $zero
/* E41B4 8003ACA4 8E04000C */  lw         $a0, 0xc($s0)
/* E41B8 8003ACA8 24050033 */  addiu      $a1, $zero, 0x33
/* E41BC 8003ACAC 0C028F9A */  jal        func_800A3E68
/* E41C0 8003ACB0 24060044 */   addiu     $a2, $zero, 0x44
/* E41C4 8003ACB4 8E04000C */  lw         $a0, 0xc($s0)
/* E41C8 8003ACB8 00002821 */  addu       $a1, $zero, $zero
/* E41CC 8003ACBC 0C028D89 */  jal        func_800A3624
/* E41D0 8003ACC0 00003021 */   addu      $a2, $zero, $zero
/* E41D4 8003ACC4 240400F5 */  addiu      $a0, $zero, 0xf5
/* E41D8 8003ACC8 24050002 */  addiu      $a1, $zero, 2
/* E41DC 8003ACCC 0C00D925 */  jal        func_80036494_DF9A4
/* E41E0 8003ACD0 24060018 */   addiu     $a2, $zero, 0x18
/* E41E4 8003ACD4 00408021 */  addu       $s0, $v0, $zero
/* E41E8 8003ACD8 8E04000C */  lw         $a0, 0xc($s0)
/* E41EC 8003ACDC 8C82000C */  lw         $v0, 0xc($a0)
/* E41F0 8003ACE0 94450000 */  lhu        $a1, ($v0)
/* E41F4 8003ACE4 94460002 */  lhu        $a2, 2($v0)
/* E41F8 8003ACE8 00052842 */  srl        $a1, $a1, 1
/* E41FC 8003ACEC 0C02912A */  jal        func_800A44A8
/* E4200 8003ACF0 00063042 */   srl       $a2, $a2, 1
/* E4204 8003ACF4 8E04000C */  lw         $a0, 0xc($s0)
/* E4208 8003ACF8 24050280 */  addiu      $a1, $zero, 0x280
/* E420C 8003ACFC 0C028D89 */  jal        func_800A3624
/* E4210 8003AD00 240602F0 */   addiu     $a2, $zero, 0x2f0
/* E4214 8003AD04 8FBF001C */  lw         $ra, 0x1c($sp)
/* E4218 8003AD08 8FB20018 */  lw         $s2, 0x18($sp)
/* E421C 8003AD0C 8FB10014 */  lw         $s1, 0x14($sp)
/* E4220 8003AD10 8FB00010 */  lw         $s0, 0x10($sp)
/* E4224 8003AD14 03E00008 */  jr         $ra
/* E4228 8003AD18 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003AD1C_E422C
/* E422C 8003AD1C 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* E4230 8003AD20 AFBF0018 */  sw         $ra, 0x18($sp)
/* E4234 8003AD24 AFB10014 */  sw         $s1, 0x14($sp)
/* E4238 8003AD28 AFB00010 */  sw         $s0, 0x10($sp)
/* E423C 8003AD2C F7B80030 */  sdc1       $f24, 0x30($sp)
/* E4240 8003AD30 F7B60028 */  sdc1       $f22, 0x28($sp)
/* E4244 8003AD34 0C00E109 */  jal        func_80038424_E1934
/* E4248 8003AD38 F7B40020 */   sdc1      $f20, 0x20($sp)
/* E424C 8003AD3C 240400E4 */  addiu      $a0, $zero, 0xe4
/* E4250 8003AD40 24050002 */  addiu      $a1, $zero, 2
/* E4254 8003AD44 0C00D925 */  jal        func_80036494_DF9A4
/* E4258 8003AD48 24060028 */   addiu     $a2, $zero, 0x28
/* E425C 8003AD4C 00408821 */  addu       $s1, $v0, $zero
/* E4260 8003AD50 3C013F80 */  lui        $at, 0x3f80
/* E4264 8003AD54 4481A000 */  mtc1       $at, $f20
/* E4268 8003AD58 8E24000C */  lw         $a0, 0xc($s1)
/* E426C 8003AD5C 4406A000 */  mfc1       $a2, $f20
/* E4270 8003AD60 4407A000 */  mfc1       $a3, $f20
/* E4274 8003AD64 00000000 */  nop
/* E4278 8003AD68 0C02915B */  jal        func_800A456C
/* E427C 8003AD6C 00002821 */   addu      $a1, $zero, $zero
/* E4280 8003AD70 8E24000C */  lw         $a0, 0xc($s1)
/* E4284 8003AD74 24050040 */  addiu      $a1, $zero, 0x40
/* E4288 8003AD78 0C028D89 */  jal        func_800A3624
/* E428C 8003AD7C 24060040 */   addiu     $a2, $zero, 0x40
/* E4290 8003AD80 24040028 */  addiu      $a0, $zero, 0x28
/* E4294 8003AD84 0C00DD19 */  jal        func_80037464_E0974
/* E4298 8003AD88 24050029 */   addiu     $a1, $zero, 0x29
/* E429C 8003AD8C 00408821 */  addu       $s1, $v0, $zero
/* E42A0 8003AD90 8E24000C */  lw         $a0, 0xc($s1)
/* E42A4 8003AD94 4406A000 */  mfc1       $a2, $f20
/* E42A8 8003AD98 4407A000 */  mfc1       $a3, $f20
/* E42AC 8003AD9C 00000000 */  nop
/* E42B0 8003ADA0 0C02915B */  jal        func_800A456C
/* E42B4 8003ADA4 24053FFC */   addiu     $a1, $zero, 0x3ffc
/* E42B8 8003ADA8 8E24000C */  lw         $a0, 0xc($s1)
/* E42BC 8003ADAC 240504BC */  addiu      $a1, $zero, 0x4bc
/* E42C0 8003ADB0 0C028D89 */  jal        func_800A3624
/* E42C4 8003ADB4 24060040 */   addiu     $a2, $zero, 0x40
/* E42C8 8003ADB8 24040028 */  addiu      $a0, $zero, 0x28
/* E42CC 8003ADBC 0C00DD19 */  jal        func_80037464_E0974
/* E42D0 8003ADC0 2405002A */   addiu     $a1, $zero, 0x2a
/* E42D4 8003ADC4 00408821 */  addu       $s1, $v0, $zero
/* E42D8 8003ADC8 8E24000C */  lw         $a0, 0xc($s1)
/* E42DC 8003ADCC 4406A000 */  mfc1       $a2, $f20
/* E42E0 8003ADD0 4407A000 */  mfc1       $a3, $f20
/* E42E4 8003ADD4 00000000 */  nop
/* E42E8 8003ADD8 0C02915B */  jal        func_800A456C
/* E42EC 8003ADDC 3405BFF4 */   ori       $a1, $zero, 0xbff4
/* E42F0 8003ADE0 8E24000C */  lw         $a0, 0xc($s1)
/* E42F4 8003ADE4 24050040 */  addiu      $a1, $zero, 0x40
/* E42F8 8003ADE8 0C028D89 */  jal        func_800A3624
/* E42FC 8003ADEC 2406037C */   addiu     $a2, $zero, 0x37c
/* E4300 8003ADF0 24040028 */  addiu      $a0, $zero, 0x28
/* E4304 8003ADF4 0C00DD19 */  jal        func_80037464_E0974
/* E4308 8003ADF8 2405002B */   addiu     $a1, $zero, 0x2b
/* E430C 8003ADFC 00408821 */  addu       $s1, $v0, $zero
/* E4310 8003AE00 8E24000C */  lw         $a0, 0xc($s1)
/* E4314 8003AE04 4406A000 */  mfc1       $a2, $f20
/* E4318 8003AE08 4407A000 */  mfc1       $a3, $f20
/* E431C 8003AE0C 00000000 */  nop
/* E4320 8003AE10 0C02915B */  jal        func_800A456C
/* E4324 8003AE14 24057FF8 */   addiu     $a1, $zero, 0x7ff8
/* E4328 8003AE18 8E24000C */  lw         $a0, 0xc($s1)
/* E432C 8003AE1C 240504BC */  addiu      $a1, $zero, 0x4bc
/* E4330 8003AE20 0C028D89 */  jal        func_800A3624
/* E4334 8003AE24 2406037C */   addiu     $a2, $zero, 0x37c
/* E4338 8003AE28 240400E5 */  addiu      $a0, $zero, 0xe5
/* E433C 8003AE2C 24050002 */  addiu      $a1, $zero, 2
/* E4340 8003AE30 0C00D925 */  jal        func_80036494_DF9A4
/* E4344 8003AE34 2406002C */   addiu     $a2, $zero, 0x2c
/* E4348 8003AE38 00408821 */  addu       $s1, $v0, $zero
/* E434C 8003AE3C 3C014190 */  lui        $at, 0x4190
/* E4350 8003AE40 4481C000 */  mtc1       $at, $f24
/* E4354 8003AE44 8E24000C */  lw         $a0, 0xc($s1)
/* E4358 8003AE48 4407A000 */  mfc1       $a3, $f20
/* E435C 8003AE4C 4406C000 */  mfc1       $a2, $f24
/* E4360 8003AE50 00000000 */  nop
/* E4364 8003AE54 0C02915B */  jal        func_800A456C
/* E4368 8003AE58 00002821 */   addu      $a1, $zero, $zero
/* E436C 8003AE5C 8E24000C */  lw         $a0, 0xc($s1)
/* E4370 8003AE60 24050040 */  addiu      $a1, $zero, 0x40
/* E4374 8003AE64 0C028D89 */  jal        func_800A3624
/* E4378 8003AE68 24060040 */   addiu     $a2, $zero, 0x40
/* E437C 8003AE6C 2404002C */  addiu      $a0, $zero, 0x2c
/* E4380 8003AE70 0C00DD19 */  jal        func_80037464_E0974
/* E4384 8003AE74 2405002D */   addiu     $a1, $zero, 0x2d
/* E4388 8003AE78 00408821 */  addu       $s1, $v0, $zero
/* E438C 8003AE7C 3C014150 */  lui        $at, 0x4150
/* E4390 8003AE80 4481B000 */  mtc1       $at, $f22
/* E4394 8003AE84 8E24000C */  lw         $a0, 0xc($s1)
/* E4398 8003AE88 4407A000 */  mfc1       $a3, $f20
/* E439C 8003AE8C 4406B000 */  mfc1       $a2, $f22
/* E43A0 8003AE90 00000000 */  nop
/* E43A4 8003AE94 0C02915B */  jal        func_800A456C
/* E43A8 8003AE98 24053FFC */   addiu     $a1, $zero, 0x3ffc
/* E43AC 8003AE9C 8E24000C */  lw         $a0, 0xc($s1)
/* E43B0 8003AEA0 240504BC */  addiu      $a1, $zero, 0x4bc
/* E43B4 8003AEA4 0C028D89 */  jal        func_800A3624
/* E43B8 8003AEA8 24060040 */   addiu     $a2, $zero, 0x40
/* E43BC 8003AEAC 2404002C */  addiu      $a0, $zero, 0x2c
/* E43C0 8003AEB0 0C00DD19 */  jal        func_80037464_E0974
/* E43C4 8003AEB4 2405002E */   addiu     $a1, $zero, 0x2e
/* E43C8 8003AEB8 00408821 */  addu       $s1, $v0, $zero
/* E43CC 8003AEBC 8E24000C */  lw         $a0, 0xc($s1)
/* E43D0 8003AEC0 4406B000 */  mfc1       $a2, $f22
/* E43D4 8003AEC4 4407A000 */  mfc1       $a3, $f20
/* E43D8 8003AEC8 00000000 */  nop
/* E43DC 8003AECC 0C02915B */  jal        func_800A456C
/* E43E0 8003AED0 3405BFF4 */   ori       $a1, $zero, 0xbff4
/* E43E4 8003AED4 8E24000C */  lw         $a0, 0xc($s1)
/* E43E8 8003AED8 24050040 */  addiu      $a1, $zero, 0x40
/* E43EC 8003AEDC 0C028D89 */  jal        func_800A3624
/* E43F0 8003AEE0 2406037C */   addiu     $a2, $zero, 0x37c
/* E43F4 8003AEE4 2404002C */  addiu      $a0, $zero, 0x2c
/* E43F8 8003AEE8 0C00DD19 */  jal        func_80037464_E0974
/* E43FC 8003AEEC 2405002F */   addiu     $a1, $zero, 0x2f
/* E4400 8003AEF0 00408821 */  addu       $s1, $v0, $zero
/* E4404 8003AEF4 8E24000C */  lw         $a0, 0xc($s1)
/* E4408 8003AEF8 4406C000 */  mfc1       $a2, $f24
/* E440C 8003AEFC 4407A000 */  mfc1       $a3, $f20
/* E4410 8003AF00 00000000 */  nop
/* E4414 8003AF04 0C02915B */  jal        func_800A456C
/* E4418 8003AF08 24057FF8 */   addiu     $a1, $zero, 0x7ff8
/* E441C 8003AF0C 8E24000C */  lw         $a0, 0xc($s1)
/* E4420 8003AF10 240504BC */  addiu      $a1, $zero, 0x4bc
/* E4424 8003AF14 0C028D89 */  jal        func_800A3624
/* E4428 8003AF18 2406037C */   addiu     $a2, $zero, 0x37c
/* E442C 8003AF1C 240400E6 */  addiu      $a0, $zero, 0xe6
/* E4430 8003AF20 24050001 */  addiu      $a1, $zero, 1
/* E4434 8003AF24 0C00D925 */  jal        func_80036494_DF9A4
/* E4438 8003AF28 24060022 */   addiu     $a2, $zero, 0x22
/* E443C 8003AF2C 8C44000C */  lw         $a0, 0xc($v0)
/* E4440 8003AF30 24050058 */  addiu      $a1, $zero, 0x58
/* E4444 8003AF34 0C028D89 */  jal        func_800A3624
/* E4448 8003AF38 2406007C */   addiu     $a2, $zero, 0x7c
/* E444C 8003AF3C 240400E7 */  addiu      $a0, $zero, 0xe7
/* E4450 8003AF40 24050001 */  addiu      $a1, $zero, 1
/* E4454 8003AF44 0C00D925 */  jal        func_80036494_DF9A4
/* E4458 8003AF48 24060023 */   addiu     $a2, $zero, 0x23
/* E445C 8003AF4C 8C44000C */  lw         $a0, 0xc($v0)
/* E4460 8003AF50 24050354 */  addiu      $a1, $zero, 0x354
/* E4464 8003AF54 0C028D89 */  jal        func_800A3624
/* E4468 8003AF58 2406007C */   addiu     $a2, $zero, 0x7c
/* E446C 8003AF5C 240400E8 */  addiu      $a0, $zero, 0xe8
/* E4470 8003AF60 24050001 */  addiu      $a1, $zero, 1
/* E4474 8003AF64 0C00D925 */  jal        func_80036494_DF9A4
/* E4478 8003AF68 24060024 */   addiu     $a2, $zero, 0x24
/* E447C 8003AF6C 8C44000C */  lw         $a0, 0xc($v0)
/* E4480 8003AF70 24050064 */  addiu      $a1, $zero, 0x64
/* E4484 8003AF74 0C028D89 */  jal        func_800A3624
/* E4488 8003AF78 24060120 */   addiu     $a2, $zero, 0x120
/* E448C 8003AF7C 240400EC */  addiu      $a0, $zero, 0xec
/* E4490 8003AF80 24050001 */  addiu      $a1, $zero, 1
/* E4494 8003AF84 0C00D925 */  jal        func_80036494_DF9A4
/* E4498 8003AF88 24060027 */   addiu     $a2, $zero, 0x27
/* E449C 8003AF8C 8C44000C */  lw         $a0, 0xc($v0)
/* E44A0 8003AF90 24050094 */  addiu      $a1, $zero, 0x94
/* E44A4 8003AF94 0C028D89 */  jal        func_800A3624
/* E44A8 8003AF98 2406015C */   addiu     $a2, $zero, 0x15c
/* E44AC 8003AF9C 240400F1 */  addiu      $a0, $zero, 0xf1
/* E44B0 8003AFA0 24050001 */  addiu      $a1, $zero, 1
/* E44B4 8003AFA4 0C00D925 */  jal        func_80036494_DF9A4
/* E44B8 8003AFA8 24060021 */   addiu     $a2, $zero, 0x21
/* E44BC 8003AFAC 8C44000C */  lw         $a0, 0xc($v0)
/* E44C0 8003AFB0 240503C4 */  addiu      $a1, $zero, 0x3c4
/* E44C4 8003AFB4 0C028D89 */  jal        func_800A3624
/* E44C8 8003AFB8 24060128 */   addiu     $a2, $zero, 0x128
/* E44CC 8003AFBC 240400EF */  addiu      $a0, $zero, 0xef
/* E44D0 8003AFC0 24050002 */  addiu      $a1, $zero, 2
/* E44D4 8003AFC4 0C00D925 */  jal        func_80036494_DF9A4
/* E44D8 8003AFC8 2406001E */   addiu     $a2, $zero, 0x1e
/* E44DC 8003AFCC 8C44000C */  lw         $a0, 0xc($v0)
/* E44E0 8003AFD0 240502D8 */  addiu      $a1, $zero, 0x2d8
/* E44E4 8003AFD4 0C028D89 */  jal        func_800A3624
/* E44E8 8003AFD8 240601D8 */   addiu     $a2, $zero, 0x1d8
/* E44EC 8003AFDC 2404001E */  addiu      $a0, $zero, 0x1e
/* E44F0 8003AFE0 0C00DD19 */  jal        func_80037464_E0974
/* E44F4 8003AFE4 2405001A */   addiu     $a1, $zero, 0x1a
/* E44F8 8003AFE8 00408821 */  addu       $s1, $v0, $zero
/* E44FC 8003AFEC 8E24000C */  lw         $a0, 0xc($s1)
/* E4500 8003AFF0 240502D8 */  addiu      $a1, $zero, 0x2d8
/* E4504 8003AFF4 0C028D89 */  jal        func_800A3624
/* E4508 8003AFF8 240601D8 */   addiu     $a2, $zero, 0x1d8
/* E450C 8003AFFC 8E22000C */  lw         $v0, 0xc($s1)
/* E4510 8003B000 240400ED */  addiu      $a0, $zero, 0xed
/* E4514 8003B004 24050002 */  addiu      $a1, $zero, 2
/* E4518 8003B008 8C420004 */  lw         $v0, 4($v0)
/* E451C 8003B00C 2406001F */  addiu      $a2, $zero, 0x1f
/* E4520 8003B010 3C108007 */  lui        $s0, %hi(D_80068EB0)
/* E4524 8003B014 26108EB0 */  addiu      $s0, $s0, %lo(D_80068EB0)
/* E4528 8003B018 0C00D925 */  jal        func_80036494_DF9A4
/* E452C 8003B01C AC500004 */   sw        $s0, 4($v0)
/* E4530 8003B020 8C44000C */  lw         $a0, 0xc($v0)
/* E4534 8003B024 240501B0 */  addiu      $a1, $zero, 0x1b0
/* E4538 8003B028 0C028D89 */  jal        func_800A3624
/* E453C 8003B02C 2406007C */   addiu     $a2, $zero, 0x7c
/* E4540 8003B030 2404001F */  addiu      $a0, $zero, 0x1f
/* E4544 8003B034 0C00DD19 */  jal        func_80037464_E0974
/* E4548 8003B038 2405001B */   addiu     $a1, $zero, 0x1b
/* E454C 8003B03C 00408821 */  addu       $s1, $v0, $zero
/* E4550 8003B040 8E24000C */  lw         $a0, 0xc($s1)
/* E4554 8003B044 240501B0 */  addiu      $a1, $zero, 0x1b0
/* E4558 8003B048 0C028D89 */  jal        func_800A3624
/* E455C 8003B04C 2406007C */   addiu     $a2, $zero, 0x7c
/* E4560 8003B050 8E22000C */  lw         $v0, 0xc($s1)
/* E4564 8003B054 240400EE */  addiu      $a0, $zero, 0xee
/* E4568 8003B058 8C420004 */  lw         $v0, 4($v0)
/* E456C 8003B05C 24050002 */  addiu      $a1, $zero, 2
/* E4570 8003B060 24060020 */  addiu      $a2, $zero, 0x20
/* E4574 8003B064 0C00D925 */  jal        func_80036494_DF9A4
/* E4578 8003B068 AC500004 */   sw        $s0, 4($v0)
/* E457C 8003B06C 8C44000C */  lw         $a0, 0xc($v0)
/* E4580 8003B070 24050068 */  addiu      $a1, $zero, 0x68
/* E4584 8003B074 0C028D89 */  jal        func_800A3624
/* E4588 8003B078 240601D8 */   addiu     $a2, $zero, 0x1d8
/* E458C 8003B07C 24040020 */  addiu      $a0, $zero, 0x20
/* E4590 8003B080 0C00DD19 */  jal        func_80037464_E0974
/* E4594 8003B084 2405001C */   addiu     $a1, $zero, 0x1c
/* E4598 8003B088 00408821 */  addu       $s1, $v0, $zero
/* E459C 8003B08C 8E24000C */  lw         $a0, 0xc($s1)
/* E45A0 8003B090 24050068 */  addiu      $a1, $zero, 0x68
/* E45A4 8003B094 0C028D89 */  jal        func_800A3624
/* E45A8 8003B098 240601D8 */   addiu     $a2, $zero, 0x1d8
/* E45AC 8003B09C 8E22000C */  lw         $v0, 0xc($s1)
/* E45B0 8003B0A0 240400F0 */  addiu      $a0, $zero, 0xf0
/* E45B4 8003B0A4 8C420004 */  lw         $v0, 4($v0)
/* E45B8 8003B0A8 24050002 */  addiu      $a1, $zero, 2
/* E45BC 8003B0AC 2406001D */  addiu      $a2, $zero, 0x1d
/* E45C0 8003B0B0 0C00D925 */  jal        func_80036494_DF9A4
/* E45C4 8003B0B4 AC500004 */   sw        $s0, 4($v0)
/* E45C8 8003B0B8 8C44000C */  lw         $a0, 0xc($v0)
/* E45CC 8003B0BC 240501CC */  addiu      $a1, $zero, 0x1cc
/* E45D0 8003B0C0 0C028D89 */  jal        func_800A3624
/* E45D4 8003B0C4 240601FC */   addiu     $a2, $zero, 0x1fc
/* E45D8 8003B0C8 8FBF0018 */  lw         $ra, 0x18($sp)
/* E45DC 8003B0CC 8FB10014 */  lw         $s1, 0x14($sp)
/* E45E0 8003B0D0 8FB00010 */  lw         $s0, 0x10($sp)
/* E45E4 8003B0D4 D7B80030 */  ldc1       $f24, 0x30($sp)
/* E45E8 8003B0D8 D7B60028 */  ldc1       $f22, 0x28($sp)
/* E45EC 8003B0DC D7B40020 */  ldc1       $f20, 0x20($sp)
/* E45F0 8003B0E0 03E00008 */  jr         $ra
/* E45F4 8003B0E4 27BD0038 */   addiu     $sp, $sp, 0x38
/* E45F8 8003B0E8 00000000 */  nop
/* E45FC 8003B0EC 00000000 */  nop