glabel func_800540FC_ovl3
/* FD60C 800540FC 27BDFF98 */  addiu      $sp, $sp, -0x68
/* FD610 80054100 AFBF0030 */  sw         $ra, 0x30($sp)
/* FD614 80054104 AFB5002C */  sw         $s5, 0x2C($sp)
/* FD618 80054108 AFB40028 */  sw         $s4, 0x28($sp)
/* FD61C 8005410C AFB30024 */  sw         $s3, 0x24($sp)
/* FD620 80054110 AFB20020 */  sw         $s2, 0x20($sp)
/* FD624 80054114 AFB1001C */  sw         $s1, 0x1C($sp)
/* FD628 80054118 AFB00018 */  sw         $s0, 0x18($sp)
/* FD62C 8005411C F7BE0060 */  sdc1       $f30, 0x60($sp)
/* FD630 80054120 F7BC0058 */  sdc1       $f28, 0x58($sp)
/* FD634 80054124 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* FD638 80054128 F7B80048 */  sdc1       $f24, 0x48($sp)
/* FD63C 8005412C F7B60040 */  sdc1       $f22, 0x40($sp)
/* FD640 80054130 F7B40038 */  sdc1       $f20, 0x38($sp)
/* FD644 80054134 0C00E109 */  jal        func_80038424_ovl3
/* FD648 80054138 00008821 */   addu      $s1, $zero, $zero
/* FD64C 8005413C 24040008 */  addiu      $a0, $zero, 0x8
.L80054140_ovl3:
/* FD650 80054140 24050001 */  addiu      $a1, $zero, 0x1
/* FD654 80054144 322600FF */  andi       $a2, $s1, 0xFF
/* FD658 80054148 0C00D925 */  jal        func_80036494_ovl3
/* FD65C 8005414C 24C600A7 */   addiu     $a2, $a2, 0xA7
/* FD660 80054150 00409021 */  addu       $s2, $v0, $zero
/* FD664 80054154 8E44000C */  lw         $a0, 0xC($s2)
/* FD668 80054158 24050066 */  addiu      $a1, $zero, 0x66
/* FD66C 8005415C 0C028F9A */  jal        func_800A3E68
/* FD670 80054160 24061400 */   addiu     $a2, $zero, 0x1400
/* FD674 80054164 8E44000C */  lw         $a0, 0xC($s2)
/* FD678 80054168 24050040 */  addiu      $a1, $zero, 0x40
/* FD67C 8005416C 323000FF */  andi       $s0, $s1, 0xFF
/* FD680 80054170 001030C0 */  sll        $a2, $s0, 3
/* FD684 80054174 0C028D89 */  jal        func_800A3624
/* FD688 80054178 24C60280 */   addiu     $a2, $a2, 0x280
/* FD68C 8005417C 001080C0 */  sll        $s0, $s0, 3
/* FD690 80054180 321000FF */  andi       $s0, $s0, 0xFF
/* FD694 80054184 AFB00010 */  sw         $s0, 0x10($sp)
/* FD698 80054188 8E44000C */  lw         $a0, 0xC($s2)
/* FD69C 8005418C 240500FF */  addiu      $a1, $zero, 0xFF
/* FD6A0 80054190 240600FF */  addiu      $a2, $zero, 0xFF
/* FD6A4 80054194 0C028E41 */  jal        func_800A3904
/* FD6A8 80054198 240700FF */   addiu     $a3, $zero, 0xFF
/* FD6AC 8005419C 8E43000C */  lw         $v1, 0xC($s2)
/* FD6B0 800541A0 9462001E */  lhu        $v0, 0x1E($v1)
/* FD6B4 800541A4 34420080 */  ori        $v0, $v0, 0x80
/* FD6B8 800541A8 A462001E */  sh         $v0, 0x1E($v1)
/* FD6BC 800541AC 8E42000C */  lw         $v0, 0xC($s2)
/* FD6C0 800541B0 26310001 */  addiu      $s1, $s1, 0x1
/* FD6C4 800541B4 A440001C */  sh         $zero, 0x1C($v0)
/* FD6C8 800541B8 322200FF */  andi       $v0, $s1, 0xFF
/* FD6CC 800541BC 2C420020 */  sltiu      $v0, $v0, 0x20
/* FD6D0 800541C0 1440FFDF */  bnez       $v0, .L80054140_ovl3
/* FD6D4 800541C4 24040008 */   addiu     $a0, $zero, 0x8
/* FD6D8 800541C8 240405DC */  addiu      $a0, $zero, 0x5DC
/* FD6DC 800541CC 24050002 */  addiu      $a1, $zero, 0x2
/* FD6E0 800541D0 0C00D925 */  jal        func_80036494_ovl3
/* FD6E4 800541D4 24060082 */   addiu     $a2, $zero, 0x82
/* FD6E8 800541D8 00409021 */  addu       $s2, $v0, $zero
/* FD6EC 800541DC 8E44000C */  lw         $a0, 0xC($s2)
/* FD6F0 800541E0 8C82000C */  lw         $v0, 0xC($a0)
/* FD6F4 800541E4 94450000 */  lhu        $a1, 0x0($v0)
/* FD6F8 800541E8 00003021 */  addu       $a2, $zero, $zero
/* FD6FC 800541EC 0C02912A */  jal        func_800A44A8
/* FD700 800541F0 00052842 */   srl       $a1, $a1, 1
/* FD704 800541F4 8E44000C */  lw         $a0, 0xC($s2)
/* FD708 800541F8 3C014198 */  lui        $at, (0x41980000 >> 16)
/* FD70C 800541FC 4481B000 */  mtc1       $at, $f22
/* FD710 80054200 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* FD714 80054204 4481C000 */  mtc1       $at, $f24
/* FD718 80054208 4406B000 */  mfc1       $a2, $f22
/* FD71C 8005420C 4407C000 */  mfc1       $a3, $f24
/* FD720 80054210 00000000 */  nop
/* FD724 80054214 0C02915B */  jal        func_800A456C
/* FD728 80054218 00002821 */   addu      $a1, $zero, $zero
/* FD72C 8005421C 8E44000C */  lw         $a0, 0xC($s2)
/* FD730 80054220 24050280 */  addiu      $a1, $zero, 0x280
/* FD734 80054224 0C028D89 */  jal        func_800A3624
/* FD738 80054228 24060040 */   addiu     $a2, $zero, 0x40
/* FD73C 8005422C 8E42000C */  lw         $v0, 0xC($s2)
/* FD740 80054230 24100049 */  addiu      $s0, $zero, 0x49
/* FD744 80054234 A450001C */  sh         $s0, 0x1C($v0)
/* FD748 80054238 8E43000C */  lw         $v1, 0xC($s2)
/* FD74C 8005423C 240405DB */  addiu      $a0, $zero, 0x5DB
/* FD750 80054240 9462001E */  lhu        $v0, 0x1E($v1)
/* FD754 80054244 24050002 */  addiu      $a1, $zero, 0x2
/* FD758 80054248 24060083 */  addiu      $a2, $zero, 0x83
/* FD75C 8005424C 34420104 */  ori        $v0, $v0, 0x104
/* FD760 80054250 0C00D925 */  jal        func_80036494_ovl3
/* FD764 80054254 A462001E */   sh        $v0, 0x1E($v1)
/* FD768 80054258 00409021 */  addu       $s2, $v0, $zero
/* FD76C 8005425C 8E44000C */  lw         $a0, 0xC($s2)
/* FD770 80054260 8C82000C */  lw         $v0, 0xC($a0)
/* FD774 80054264 94450000 */  lhu        $a1, 0x0($v0)
/* FD778 80054268 00003021 */  addu       $a2, $zero, $zero
/* FD77C 8005426C 0C02912A */  jal        func_800A44A8
/* FD780 80054270 00052842 */   srl       $a1, $a1, 1
/* FD784 80054274 3C014000 */  lui        $at, (0x40000000 >> 16)
/* FD788 80054278 4481A000 */  mtc1       $at, $f20
/* FD78C 8005427C 8E44000C */  lw         $a0, 0xC($s2)
/* FD790 80054280 4406A000 */  mfc1       $a2, $f20
/* FD794 80054284 4407A000 */  mfc1       $a3, $f20
/* FD798 80054288 00000000 */  nop
/* FD79C 8005428C 0C02915B */  jal        func_800A456C
/* FD7A0 80054290 00002821 */   addu      $a1, $zero, $zero
/* FD7A4 80054294 8E44000C */  lw         $a0, 0xC($s2)
/* FD7A8 80054298 24050280 */  addiu      $a1, $zero, 0x280
/* FD7AC 8005429C 0C028D89 */  jal        func_800A3624
/* FD7B0 800542A0 24060280 */   addiu     $a2, $zero, 0x280
/* FD7B4 800542A4 8E42000C */  lw         $v0, 0xC($s2)
/* FD7B8 800542A8 A450001C */  sh         $s0, 0x1C($v0)
/* FD7BC 800542AC 8E43000C */  lw         $v1, 0xC($s2)
/* FD7C0 800542B0 9462001E */  lhu        $v0, 0x1E($v1)
/* FD7C4 800542B4 24040082 */  addiu      $a0, $zero, 0x82
/* FD7C8 800542B8 24050084 */  addiu      $a1, $zero, 0x84
/* FD7CC 800542BC 34420104 */  ori        $v0, $v0, 0x104
/* FD7D0 800542C0 0C00DD19 */  jal        func_80037464_ovl3
/* FD7D4 800542C4 A462001E */   sh        $v0, 0x1E($v1)
/* FD7D8 800542C8 00409021 */  addu       $s2, $v0, $zero
/* FD7DC 800542CC 8E44000C */  lw         $a0, 0xC($s2)
/* FD7E0 800542D0 8C82000C */  lw         $v0, 0xC($a0)
/* FD7E4 800542D4 94450000 */  lhu        $a1, 0x0($v0)
/* FD7E8 800542D8 00003021 */  addu       $a2, $zero, $zero
/* FD7EC 800542DC 0C02912A */  jal        func_800A44A8
/* FD7F0 800542E0 00052842 */   srl       $a1, $a1, 1
/* FD7F4 800542E4 8E44000C */  lw         $a0, 0xC($s2)
/* FD7F8 800542E8 4406B000 */  mfc1       $a2, $f22
/* FD7FC 800542EC 4407C000 */  mfc1       $a3, $f24
/* FD800 800542F0 00000000 */  nop
/* FD804 800542F4 0C02915B */  jal        func_800A456C
/* FD808 800542F8 00002821 */   addu      $a1, $zero, $zero
/* FD80C 800542FC 8E44000C */  lw         $a0, 0xC($s2)
/* FD810 80054300 24050280 */  addiu      $a1, $zero, 0x280
/* FD814 80054304 0C028D89 */  jal        func_800A3624
/* FD818 80054308 24060040 */   addiu     $a2, $zero, 0x40
/* FD81C 8005430C 8E42000C */  lw         $v0, 0xC($s2)
/* FD820 80054310 A450001C */  sh         $s0, 0x1C($v0)
/* FD824 80054314 8E43000C */  lw         $v1, 0xC($s2)
/* FD828 80054318 9462001E */  lhu        $v0, 0x1E($v1)
/* FD82C 8005431C 34420104 */  ori        $v0, $v0, 0x104
/* FD830 80054320 A462001E */  sh         $v0, 0x1E($v1)
/* FD834 80054324 8E42000C */  lw         $v0, 0xC($s2)
/* FD838 80054328 24040083 */  addiu      $a0, $zero, 0x83
/* FD83C 8005432C 8C430004 */  lw         $v1, 0x4($v0)
/* FD840 80054330 24050085 */  addiu      $a1, $zero, 0x85
/* FD844 80054334 3C028007 */  lui        $v0, %hi(D_80069744_ovl3)
/* FD848 80054338 24429744 */  addiu      $v0, $v0, %lo(D_80069744_ovl3)
/* FD84C 8005433C 0C00DD19 */  jal        func_80037464_ovl3
/* FD850 80054340 AC620004 */   sw        $v0, 0x4($v1)
/* FD854 80054344 00409021 */  addu       $s2, $v0, $zero
/* FD858 80054348 8E44000C */  lw         $a0, 0xC($s2)
/* FD85C 8005434C 8C82000C */  lw         $v0, 0xC($a0)
/* FD860 80054350 94450000 */  lhu        $a1, 0x0($v0)
/* FD864 80054354 00003021 */  addu       $a2, $zero, $zero
/* FD868 80054358 0C02912A */  jal        func_800A44A8
/* FD86C 8005435C 00052842 */   srl       $a1, $a1, 1
/* FD870 80054360 8E44000C */  lw         $a0, 0xC($s2)
/* FD874 80054364 4406A000 */  mfc1       $a2, $f20
/* FD878 80054368 4407A000 */  mfc1       $a3, $f20
/* FD87C 8005436C 00000000 */  nop
/* FD880 80054370 0C02915B */  jal        func_800A456C
/* FD884 80054374 00002821 */   addu      $a1, $zero, $zero
/* FD888 80054378 8E44000C */  lw         $a0, 0xC($s2)
/* FD88C 8005437C 24050280 */  addiu      $a1, $zero, 0x280
/* FD890 80054380 0C028D89 */  jal        func_800A3624
/* FD894 80054384 24060280 */   addiu     $a2, $zero, 0x280
/* FD898 80054388 8E42000C */  lw         $v0, 0xC($s2)
/* FD89C 8005438C A450001C */  sh         $s0, 0x1C($v0)
/* FD8A0 80054390 8E43000C */  lw         $v1, 0xC($s2)
/* FD8A4 80054394 9462001E */  lhu        $v0, 0x1E($v1)
/* FD8A8 80054398 34420104 */  ori        $v0, $v0, 0x104
/* FD8AC 8005439C A462001E */  sh         $v0, 0x1E($v1)
/* FD8B0 800543A0 8E42000C */  lw         $v0, 0xC($s2)
/* FD8B4 800543A4 240405DC */  addiu      $a0, $zero, 0x5DC
/* FD8B8 800543A8 24050002 */  addiu      $a1, $zero, 0x2
/* FD8BC 800543AC 8C430004 */  lw         $v1, 0x4($v0)
/* FD8C0 800543B0 24060086 */  addiu      $a2, $zero, 0x86
/* FD8C4 800543B4 3C028007 */  lui        $v0, %hi(D_80069764_ovl3)
/* FD8C8 800543B8 24429764 */  addiu      $v0, $v0, %lo(D_80069764_ovl3)
/* FD8CC 800543BC 0C00D925 */  jal        func_80036494_ovl3
/* FD8D0 800543C0 AC620004 */   sw        $v0, 0x4($v1)
/* FD8D4 800543C4 00409021 */  addu       $s2, $v0, $zero
/* FD8D8 800543C8 8E44000C */  lw         $a0, 0xC($s2)
/* FD8DC 800543CC 8C82000C */  lw         $v0, 0xC($a0)
/* FD8E0 800543D0 94450000 */  lhu        $a1, 0x0($v0)
/* FD8E4 800543D4 84460002 */  lh         $a2, 0x2($v0)
/* FD8E8 800543D8 0C02912A */  jal        func_800A44A8
/* FD8EC 800543DC 00052842 */   srl       $a1, $a1, 1
/* FD8F0 800543E0 8E44000C */  lw         $a0, 0xC($s2)
/* FD8F4 800543E4 4406B000 */  mfc1       $a2, $f22
/* FD8F8 800543E8 4407A000 */  mfc1       $a3, $f20
/* FD8FC 800543EC 00000000 */  nop
/* FD900 800543F0 0C02915B */  jal        func_800A456C
/* FD904 800543F4 00002821 */   addu      $a1, $zero, $zero
/* FD908 800543F8 241100FF */  addiu      $s1, $zero, 0xFF
/* FD90C 800543FC AFB10010 */  sw         $s1, 0x10($sp)
/* FD910 80054400 8E44000C */  lw         $a0, 0xC($s2)
/* FD914 80054404 240500C0 */  addiu      $a1, $zero, 0xC0
/* FD918 80054408 240600C0 */  addiu      $a2, $zero, 0xC0
/* FD91C 8005440C 0C028E41 */  jal        func_800A3904
/* FD920 80054410 240700C0 */   addiu     $a3, $zero, 0xC0
/* FD924 80054414 8E44000C */  lw         $a0, 0xC($s2)
/* FD928 80054418 24050280 */  addiu      $a1, $zero, 0x280
/* FD92C 8005441C 0C028D89 */  jal        func_800A3624
/* FD930 80054420 24060280 */   addiu     $a2, $zero, 0x280
/* FD934 80054424 8E42000C */  lw         $v0, 0xC($s2)
/* FD938 80054428 A450001C */  sh         $s0, 0x1C($v0)
/* FD93C 8005442C 8E43000C */  lw         $v1, 0xC($s2)
/* FD940 80054430 240405DB */  addiu      $a0, $zero, 0x5DB
/* FD944 80054434 9462001E */  lhu        $v0, 0x1E($v1)
/* FD948 80054438 24050002 */  addiu      $a1, $zero, 0x2
/* FD94C 8005443C 24060087 */  addiu      $a2, $zero, 0x87
/* FD950 80054440 34420104 */  ori        $v0, $v0, 0x104
/* FD954 80054444 0C00D925 */  jal        func_80036494_ovl3
/* FD958 80054448 A462001E */   sh        $v0, 0x1E($v1)
/* FD95C 8005444C 00409021 */  addu       $s2, $v0, $zero
/* FD960 80054450 8E44000C */  lw         $a0, 0xC($s2)
/* FD964 80054454 8C82000C */  lw         $v0, 0xC($a0)
/* FD968 80054458 94450000 */  lhu        $a1, 0x0($v0)
/* FD96C 8005445C 00003021 */  addu       $a2, $zero, $zero
/* FD970 80054460 0C02912A */  jal        func_800A44A8
/* FD974 80054464 00052842 */   srl       $a1, $a1, 1
/* FD978 80054468 8E44000C */  lw         $a0, 0xC($s2)
/* FD97C 8005446C 4406A000 */  mfc1       $a2, $f20
/* FD980 80054470 4407A000 */  mfc1       $a3, $f20
/* FD984 80054474 00000000 */  nop
/* FD988 80054478 0C02915B */  jal        func_800A456C
/* FD98C 8005447C 00002821 */   addu      $a1, $zero, $zero
/* FD990 80054480 AFB10010 */  sw         $s1, 0x10($sp)
/* FD994 80054484 8E44000C */  lw         $a0, 0xC($s2)
/* FD998 80054488 240500C0 */  addiu      $a1, $zero, 0xC0
/* FD99C 8005448C 240600C0 */  addiu      $a2, $zero, 0xC0
/* FD9A0 80054490 0C028E41 */  jal        func_800A3904
/* FD9A4 80054494 240700C0 */   addiu     $a3, $zero, 0xC0
/* FD9A8 80054498 8E44000C */  lw         $a0, 0xC($s2)
/* FD9AC 8005449C 24050280 */  addiu      $a1, $zero, 0x280
/* FD9B0 800544A0 0C028D89 */  jal        func_800A3624
/* FD9B4 800544A4 24060280 */   addiu     $a2, $zero, 0x280
/* FD9B8 800544A8 8E42000C */  lw         $v0, 0xC($s2)
/* FD9BC 800544AC A450001C */  sh         $s0, 0x1C($v0)
/* FD9C0 800544B0 8E43000C */  lw         $v1, 0xC($s2)
/* FD9C4 800544B4 240401AA */  addiu      $a0, $zero, 0x1AA
/* FD9C8 800544B8 9462001E */  lhu        $v0, 0x1E($v1)
/* FD9CC 800544BC 24050002 */  addiu      $a1, $zero, 0x2
/* FD9D0 800544C0 2406009C */  addiu      $a2, $zero, 0x9C
/* FD9D4 800544C4 34420104 */  ori        $v0, $v0, 0x104
/* FD9D8 800544C8 0C00D925 */  jal        func_80036494_ovl3
/* FD9DC 800544CC A462001E */   sh        $v0, 0x1E($v1)
/* FD9E0 800544D0 00409021 */  addu       $s2, $v0, $zero
/* FD9E4 800544D4 8E44000C */  lw         $a0, 0xC($s2)
/* FD9E8 800544D8 24050040 */  addiu      $a1, $zero, 0x40
/* FD9EC 800544DC 0C028D89 */  jal        func_800A3624
/* FD9F0 800544E0 240601B8 */   addiu     $a2, $zero, 0x1B8
/* FD9F4 800544E4 8E42000C */  lw         $v0, 0xC($s2)
/* FD9F8 800544E8 2410004B */  addiu      $s0, $zero, 0x4B
/* FD9FC 800544EC A450001C */  sh         $s0, 0x1C($v0)
/* FDA00 800544F0 8E43000C */  lw         $v1, 0xC($s2)
/* FDA04 800544F4 9462001E */  lhu        $v0, 0x1E($v1)
/* FDA08 800544F8 34420004 */  ori        $v0, $v0, 0x4
/* FDA0C 800544FC A462001E */  sh         $v0, 0x1E($v1)
/* FDA10 80054500 8E42000C */  lw         $v0, 0xC($s2)
/* FDA14 80054504 240401AB */  addiu      $a0, $zero, 0x1AB
/* FDA18 80054508 24050002 */  addiu      $a1, $zero, 0x2
/* FDA1C 8005450C 8C420004 */  lw         $v0, 0x4($v0)
/* FDA20 80054510 2406009D */  addiu      $a2, $zero, 0x9D
/* FDA24 80054514 3C118007 */  lui        $s1, %hi(D_800696E4_ovl3)
/* FDA28 80054518 263196E4 */  addiu      $s1, $s1, %lo(D_800696E4_ovl3)
/* FDA2C 8005451C 0C00D925 */  jal        func_80036494_ovl3
/* FDA30 80054520 AC510004 */   sw        $s1, 0x4($v0)
/* FDA34 80054524 00409021 */  addu       $s2, $v0, $zero
/* FDA38 80054528 8E44000C */  lw         $a0, 0xC($s2)
/* FDA3C 8005452C 240500C0 */  addiu      $a1, $zero, 0xC0
/* FDA40 80054530 0C028D89 */  jal        func_800A3624
/* FDA44 80054534 240602A8 */   addiu     $a2, $zero, 0x2A8
/* FDA48 80054538 8E42000C */  lw         $v0, 0xC($s2)
/* FDA4C 8005453C A450001C */  sh         $s0, 0x1C($v0)
/* FDA50 80054540 8E43000C */  lw         $v1, 0xC($s2)
/* FDA54 80054544 9462001E */  lhu        $v0, 0x1E($v1)
/* FDA58 80054548 34420004 */  ori        $v0, $v0, 0x4
/* FDA5C 8005454C A462001E */  sh         $v0, 0x1E($v1)
/* FDA60 80054550 8E42000C */  lw         $v0, 0xC($s2)
/* FDA64 80054554 8C420004 */  lw         $v0, 0x4($v0)
/* FDA68 80054558 2404009D */  addiu      $a0, $zero, 0x9D
/* FDA6C 8005455C 240500A5 */  addiu      $a1, $zero, 0xA5
/* FDA70 80054560 0C00DD19 */  jal        func_80037464_ovl3
/* FDA74 80054564 AC510004 */   sw        $s1, 0x4($v0)
/* FDA78 80054568 00409021 */  addu       $s2, $v0, $zero
/* FDA7C 8005456C 8E44000C */  lw         $a0, 0xC($s2)
/* FDA80 80054570 240500C0 */  addiu      $a1, $zero, 0xC0
/* FDA84 80054574 0C028D89 */  jal        func_800A3624
/* FDA88 80054578 240602A8 */   addiu     $a2, $zero, 0x2A8
/* FDA8C 8005457C 8E42000C */  lw         $v0, 0xC($s2)
/* FDA90 80054580 A450001C */  sh         $s0, 0x1C($v0)
/* FDA94 80054584 8E43000C */  lw         $v1, 0xC($s2)
/* FDA98 80054588 9462001E */  lhu        $v0, 0x1E($v1)
/* FDA9C 8005458C 34420004 */  ori        $v0, $v0, 0x4
/* FDAA0 80054590 A462001E */  sh         $v0, 0x1E($v1)
/* FDAA4 80054594 8E42000C */  lw         $v0, 0xC($s2)
/* FDAA8 80054598 240401AC */  addiu      $a0, $zero, 0x1AC
/* FDAAC 8005459C 8C420004 */  lw         $v0, 0x4($v0)
/* FDAB0 800545A0 24050002 */  addiu      $a1, $zero, 0x2
/* FDAB4 800545A4 2406009E */  addiu      $a2, $zero, 0x9E
/* FDAB8 800545A8 0C00D925 */  jal        func_80036494_ovl3
/* FDABC 800545AC AC510004 */   sw        $s1, 0x4($v0)
/* FDAC0 800545B0 00409021 */  addu       $s2, $v0, $zero
/* FDAC4 800545B4 8E44000C */  lw         $a0, 0xC($s2)
/* FDAC8 800545B8 24050400 */  addiu      $a1, $zero, 0x400
/* FDACC 800545BC 0C028D89 */  jal        func_800A3624
/* FDAD0 800545C0 24060210 */   addiu     $a2, $zero, 0x210
/* FDAD4 800545C4 8E42000C */  lw         $v0, 0xC($s2)
/* FDAD8 800545C8 A450001C */  sh         $s0, 0x1C($v0)
/* FDADC 800545CC 8E43000C */  lw         $v1, 0xC($s2)
/* FDAE0 800545D0 9462001E */  lhu        $v0, 0x1E($v1)
/* FDAE4 800545D4 34420004 */  ori        $v0, $v0, 0x4
/* FDAE8 800545D8 A462001E */  sh         $v0, 0x1E($v1)
/* FDAEC 800545DC 8E42000C */  lw         $v0, 0xC($s2)
/* FDAF0 800545E0 8C420004 */  lw         $v0, 0x4($v0)
/* FDAF4 800545E4 2404009C */  addiu      $a0, $zero, 0x9C
/* FDAF8 800545E8 2405009F */  addiu      $a1, $zero, 0x9F
/* FDAFC 800545EC 0C00DD19 */  jal        func_80037464_ovl3
/* FDB00 800545F0 AC510004 */   sw        $s1, 0x4($v0)
/* FDB04 800545F4 00409021 */  addu       $s2, $v0, $zero
/* FDB08 800545F8 8E44000C */  lw         $a0, 0xC($s2)
/* FDB0C 800545FC 24050040 */  addiu      $a1, $zero, 0x40
/* FDB10 80054600 0C028D89 */  jal        func_800A3624
/* FDB14 80054604 240601B8 */   addiu     $a2, $zero, 0x1B8
/* FDB18 80054608 8E42000C */  lw         $v0, 0xC($s2)
/* FDB1C 8005460C A450001C */  sh         $s0, 0x1C($v0)
/* FDB20 80054610 8E43000C */  lw         $v1, 0xC($s2)
/* FDB24 80054614 9462001E */  lhu        $v0, 0x1E($v1)
/* FDB28 80054618 34420004 */  ori        $v0, $v0, 0x4
/* FDB2C 8005461C A462001E */  sh         $v0, 0x1E($v1)
/* FDB30 80054620 8E42000C */  lw         $v0, 0xC($s2)
/* FDB34 80054624 2404009D */  addiu      $a0, $zero, 0x9D
/* FDB38 80054628 8C420004 */  lw         $v0, 0x4($v0)
/* FDB3C 8005462C 240500A0 */  addiu      $a1, $zero, 0xA0
/* FDB40 80054630 3C118007 */  lui        $s1, %hi(D_80069704_ovl3)
/* FDB44 80054634 26319704 */  addiu      $s1, $s1, %lo(D_80069704_ovl3)
/* FDB48 80054638 0C00DD19 */  jal        func_80037464_ovl3
/* FDB4C 8005463C AC510004 */   sw        $s1, 0x4($v0)
/* FDB50 80054640 00409021 */  addu       $s2, $v0, $zero
/* FDB54 80054644 8E44000C */  lw         $a0, 0xC($s2)
/* FDB58 80054648 240500C0 */  addiu      $a1, $zero, 0xC0
/* FDB5C 8005464C 0C028D89 */  jal        func_800A3624
/* FDB60 80054650 240602A8 */   addiu     $a2, $zero, 0x2A8
/* FDB64 80054654 8E42000C */  lw         $v0, 0xC($s2)
/* FDB68 80054658 A450001C */  sh         $s0, 0x1C($v0)
/* FDB6C 8005465C 8E43000C */  lw         $v1, 0xC($s2)
/* FDB70 80054660 9462001E */  lhu        $v0, 0x1E($v1)
/* FDB74 80054664 34420004 */  ori        $v0, $v0, 0x4
/* FDB78 80054668 A462001E */  sh         $v0, 0x1E($v1)
/* FDB7C 8005466C 8E42000C */  lw         $v0, 0xC($s2)
/* FDB80 80054670 8C420004 */  lw         $v0, 0x4($v0)
/* FDB84 80054674 2404009D */  addiu      $a0, $zero, 0x9D
/* FDB88 80054678 240500A6 */  addiu      $a1, $zero, 0xA6
/* FDB8C 8005467C 0C00DD19 */  jal        func_80037464_ovl3
/* FDB90 80054680 AC510004 */   sw        $s1, 0x4($v0)
/* FDB94 80054684 00409021 */  addu       $s2, $v0, $zero
/* FDB98 80054688 8E44000C */  lw         $a0, 0xC($s2)
/* FDB9C 8005468C 240500C0 */  addiu      $a1, $zero, 0xC0
/* FDBA0 80054690 0C028D89 */  jal        func_800A3624
/* FDBA4 80054694 240602A8 */   addiu     $a2, $zero, 0x2A8
/* FDBA8 80054698 8E42000C */  lw         $v0, 0xC($s2)
/* FDBAC 8005469C A450001C */  sh         $s0, 0x1C($v0)
/* FDBB0 800546A0 8E43000C */  lw         $v1, 0xC($s2)
/* FDBB4 800546A4 9462001E */  lhu        $v0, 0x1E($v1)
/* FDBB8 800546A8 34420004 */  ori        $v0, $v0, 0x4
/* FDBBC 800546AC A462001E */  sh         $v0, 0x1E($v1)
/* FDBC0 800546B0 8E42000C */  lw         $v0, 0xC($s2)
/* FDBC4 800546B4 8C420004 */  lw         $v0, 0x4($v0)
/* FDBC8 800546B8 2404009E */  addiu      $a0, $zero, 0x9E
/* FDBCC 800546BC 240500A1 */  addiu      $a1, $zero, 0xA1
/* FDBD0 800546C0 0C00DD19 */  jal        func_80037464_ovl3
/* FDBD4 800546C4 AC510004 */   sw        $s1, 0x4($v0)
/* FDBD8 800546C8 00409021 */  addu       $s2, $v0, $zero
/* FDBDC 800546CC 8E44000C */  lw         $a0, 0xC($s2)
/* FDBE0 800546D0 24050400 */  addiu      $a1, $zero, 0x400
/* FDBE4 800546D4 0C028D89 */  jal        func_800A3624
/* FDBE8 800546D8 24060210 */   addiu     $a2, $zero, 0x210
/* FDBEC 800546DC 8E42000C */  lw         $v0, 0xC($s2)
/* FDBF0 800546E0 A450001C */  sh         $s0, 0x1C($v0)
/* FDBF4 800546E4 8E43000C */  lw         $v1, 0xC($s2)
/* FDBF8 800546E8 9462001E */  lhu        $v0, 0x1E($v1)
/* FDBFC 800546EC 34420004 */  ori        $v0, $v0, 0x4
/* FDC00 800546F0 A462001E */  sh         $v0, 0x1E($v1)
/* FDC04 800546F4 8E42000C */  lw         $v0, 0xC($s2)
/* FDC08 800546F8 8C420004 */  lw         $v0, 0x4($v0)
/* FDC0C 800546FC 2404009C */  addiu      $a0, $zero, 0x9C
/* FDC10 80054700 240500A2 */  addiu      $a1, $zero, 0xA2
/* FDC14 80054704 0C00DD19 */  jal        func_80037464_ovl3
/* FDC18 80054708 AC510004 */   sw        $s1, 0x4($v0)
/* FDC1C 8005470C 00409021 */  addu       $s2, $v0, $zero
/* FDC20 80054710 8E44000C */  lw         $a0, 0xC($s2)
/* FDC24 80054714 24050040 */  addiu      $a1, $zero, 0x40
/* FDC28 80054718 0C028D89 */  jal        func_800A3624
/* FDC2C 8005471C 240601C0 */   addiu     $a2, $zero, 0x1C0
/* FDC30 80054720 8E42000C */  lw         $v0, 0xC($s2)
/* FDC34 80054724 A450001C */  sh         $s0, 0x1C($v0)
/* FDC38 80054728 8E43000C */  lw         $v1, 0xC($s2)
/* FDC3C 8005472C 9462001E */  lhu        $v0, 0x1E($v1)
/* FDC40 80054730 34420004 */  ori        $v0, $v0, 0x4
/* FDC44 80054734 A462001E */  sh         $v0, 0x1E($v1)
/* FDC48 80054738 8E42000C */  lw         $v0, 0xC($s2)
/* FDC4C 8005473C 2404009D */  addiu      $a0, $zero, 0x9D
/* FDC50 80054740 8C420004 */  lw         $v0, 0x4($v0)
/* FDC54 80054744 240500A3 */  addiu      $a1, $zero, 0xA3
/* FDC58 80054748 3C118007 */  lui        $s1, %hi(D_80069724_ovl3)
/* FDC5C 8005474C 26319724 */  addiu      $s1, $s1, %lo(D_80069724_ovl3)
/* FDC60 80054750 0C00DD19 */  jal        func_80037464_ovl3
/* FDC64 80054754 AC510004 */   sw        $s1, 0x4($v0)
/* FDC68 80054758 00409021 */  addu       $s2, $v0, $zero
/* FDC6C 8005475C 8E44000C */  lw         $a0, 0xC($s2)
/* FDC70 80054760 240500C0 */  addiu      $a1, $zero, 0xC0
/* FDC74 80054764 0C028D89 */  jal        func_800A3624
/* FDC78 80054768 240602A8 */   addiu     $a2, $zero, 0x2A8
/* FDC7C 8005476C 8E42000C */  lw         $v0, 0xC($s2)
/* FDC80 80054770 A450001C */  sh         $s0, 0x1C($v0)
/* FDC84 80054774 8E43000C */  lw         $v1, 0xC($s2)
/* FDC88 80054778 9462001E */  lhu        $v0, 0x1E($v1)
/* FDC8C 8005477C 34420004 */  ori        $v0, $v0, 0x4
/* FDC90 80054780 A462001E */  sh         $v0, 0x1E($v1)
/* FDC94 80054784 8E42000C */  lw         $v0, 0xC($s2)
/* FDC98 80054788 8C420004 */  lw         $v0, 0x4($v0)
/* FDC9C 8005478C 2404009E */  addiu      $a0, $zero, 0x9E
/* FDCA0 80054790 240500A4 */  addiu      $a1, $zero, 0xA4
/* FDCA4 80054794 0C00DD19 */  jal        func_80037464_ovl3
/* FDCA8 80054798 AC510004 */   sw        $s1, 0x4($v0)
/* FDCAC 8005479C 00409021 */  addu       $s2, $v0, $zero
/* FDCB0 800547A0 8E44000C */  lw         $a0, 0xC($s2)
/* FDCB4 800547A4 8C82000C */  lw         $v0, 0xC($a0)
/* FDCB8 800547A8 84460002 */  lh         $a2, 0x2($v0)
/* FDCBC 800547AC 0C02912A */  jal        func_800A44A8
/* FDCC0 800547B0 00002821 */   addu      $a1, $zero, $zero
/* FDCC4 800547B4 8E44000C */  lw         $a0, 0xC($s2)
/* FDCC8 800547B8 3C064040 */  lui        $a2, (0x40400000 >> 16)
/* FDCCC 800547BC 4407A000 */  mfc1       $a3, $f20
/* FDCD0 800547C0 00000000 */  nop
/* FDCD4 800547C4 0C02915B */  jal        func_800A456C
/* FDCD8 800547C8 00002821 */   addu      $a1, $zero, $zero
/* FDCDC 800547CC 8E44000C */  lw         $a0, 0xC($s2)
/* FDCE0 800547D0 24050400 */  addiu      $a1, $zero, 0x400
/* FDCE4 800547D4 0C028D89 */  jal        func_800A3624
/* FDCE8 800547D8 240604E0 */   addiu     $a2, $zero, 0x4E0
/* FDCEC 800547DC 8E42000C */  lw         $v0, 0xC($s2)
/* FDCF0 800547E0 A450001C */  sh         $s0, 0x1C($v0)
/* FDCF4 800547E4 8E43000C */  lw         $v1, 0xC($s2)
/* FDCF8 800547E8 9462001E */  lhu        $v0, 0x1E($v1)
/* FDCFC 800547EC 34420004 */  ori        $v0, $v0, 0x4
/* FDD00 800547F0 A462001E */  sh         $v0, 0x1E($v1)
/* FDD04 800547F4 8E42000C */  lw         $v0, 0xC($s2)
/* FDD08 800547F8 8C420004 */  lw         $v0, 0x4($v0)
/* FDD0C 800547FC 24040002 */  addiu      $a0, $zero, 0x2
/* FDD10 80054800 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FDD14 80054804 AC510004 */   sw        $s1, 0x4($v0)
/* FDD18 80054808 0040A821 */  addu       $s5, $v0, $zero
/* FDD1C 8005480C 3C01C150 */  lui        $at, (0xC1500000 >> 16)
/* FDD20 80054810 44810000 */  mtc1       $at, $f0
/* FDD24 80054814 3C013F07 */  lui        $at, (0x3F07AE14 >> 16)
/* FDD28 80054818 3421AE14 */  ori        $at, $at, (0x3F07AE14 & 0xFFFF)
/* FDD2C 8005481C 44811000 */  mtc1       $at, $f2
/* FDD30 80054820 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* FDD34 80054824 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* FDD38 80054828 44812000 */  mtc1       $at, $f4
/* FDD3C 8005482C 3C014307 */  lui        $at, (0x43070000 >> 16)
/* FDD40 80054830 44813000 */  mtc1       $at, $f6
/* FDD44 80054834 02A02021 */  addu       $a0, $s5, $zero
/* FDD48 80054838 24050004 */  addiu      $a1, $zero, 0x4
/* FDD4C 8005483C 240200FF */  addiu      $v0, $zero, 0xFF
/* FDD50 80054840 AEA00018 */  sw         $zero, 0x18($s5)
/* FDD54 80054844 AEA0001C */  sw         $zero, 0x1C($s5)
/* FDD58 80054848 AEA00024 */  sw         $zero, 0x24($s5)
/* FDD5C 8005484C A6A20074 */  sh         $v0, 0x74($s5)
/* FDD60 80054850 A6A20076 */  sh         $v0, 0x76($s5)
/* FDD64 80054854 A6A20078 */  sh         $v0, 0x78($s5)
/* FDD68 80054858 A6A2007A */  sh         $v0, 0x7A($s5)
/* FDD6C 8005485C E6A00010 */  swc1       $f0, 0x10($s5)
/* FDD70 80054860 E6A20014 */  swc1       $f2, 0x14($s5)
/* FDD74 80054864 E6A40028 */  swc1       $f4, 0x28($s5)
/* FDD78 80054868 0C00DFE6 */  jal        func_80037F98_ovl3
/* FDD7C 8005486C E6A60020 */   swc1      $f6, 0x20($s5)
/* FDD80 80054870 8EA20004 */  lw         $v0, 0x4($s5)
/* FDD84 80054874 A0400067 */  sb         $zero, 0x67($v0)
/* FDD88 80054878 8EA30004 */  lw         $v1, 0x4($s5)
/* FDD8C 8005487C 90620066 */  lbu        $v0, 0x66($v1)
/* FDD90 80054880 34420003 */  ori        $v0, $v0, 0x3
/* FDD94 80054884 A0620066 */  sb         $v0, 0x66($v1)
/* FDD98 80054888 8EA40004 */  lw         $a0, 0x4($s5)
/* FDD9C 8005488C 0C028703 */  jal        func_800A1C0C
/* FDDA0 80054890 24050002 */   addiu     $a1, $zero, 0x2
/* FDDA4 80054894 8EA40004 */  lw         $a0, 0x4($s5)
/* FDDA8 80054898 3C058007 */  lui        $a1, %hi(D_8006A28C_ovl3)
/* FDDAC 8005489C 24A5A28C */  addiu      $a1, $a1, %lo(D_8006A28C_ovl3)
/* FDDB0 800548A0 0C0284DC */  jal        func_800A1370
/* FDDB4 800548A4 00008821 */   addu      $s1, $zero, $zero
/* FDDB8 800548A8 8EA40004 */  lw         $a0, 0x4($s5)
/* FDDBC 800548AC 00021400 */  sll        $v0, $v0, 16
/* FDDC0 800548B0 0C0285CC */  jal        func_800A1730
/* FDDC4 800548B4 00022C03 */   sra       $a1, $v0, 16
/* FDDC8 800548B8 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* FDDCC 800548BC 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FDDD0 800548C0 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
.L800548C4_ovl3:
/* FDDD4 800548C4 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FDDD8 800548C8 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FDDDC 800548CC A4430000 */  sh         $v1, 0x0($v0)
/* FDDE0 800548D0 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FDDE4 800548D4 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FDDE8 800548D8 26310001 */  addiu      $s1, $s1, 0x1
/* FDDEC 800548DC 24420002 */  addiu      $v0, $v0, 0x2
/* FDDF0 800548E0 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FDDF4 800548E4 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FDDF8 800548E8 322200FF */  andi       $v0, $s1, 0xFF
/* FDDFC 800548EC 2C420010 */  sltiu      $v0, $v0, 0x10
/* FDE00 800548F0 1440FFF4 */  bnez       $v0, .L800548C4_ovl3
/* FDE04 800548F4 00000000 */   nop
/* FDE08 800548F8 8EA40004 */  lw         $a0, 0x4($s5)
/* FDE0C 800548FC 3C058007 */  lui        $a1, %hi(D_8006A294_ovl3)
/* FDE10 80054900 24A5A294 */  addiu      $a1, $a1, %lo(D_8006A294_ovl3)
/* FDE14 80054904 0C0284DC */  jal        func_800A1370
/* FDE18 80054908 00008821 */   addu      $s1, $zero, $zero
/* FDE1C 8005490C 8EA40004 */  lw         $a0, 0x4($s5)
/* FDE20 80054910 00021400 */  sll        $v0, $v0, 16
/* FDE24 80054914 0C0285CC */  jal        func_800A1730
/* FDE28 80054918 00022C03 */   sra       $a1, $v0, 16
/* FDE2C 8005491C 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* FDE30 80054920 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FDE34 80054924 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
.L80054928_ovl3:
/* FDE38 80054928 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FDE3C 8005492C 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FDE40 80054930 A4430000 */  sh         $v1, 0x0($v0)
/* FDE44 80054934 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FDE48 80054938 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FDE4C 8005493C 26310001 */  addiu      $s1, $s1, 0x1
/* FDE50 80054940 24420002 */  addiu      $v0, $v0, 0x2
/* FDE54 80054944 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FDE58 80054948 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FDE5C 8005494C 322200FF */  andi       $v0, $s1, 0xFF
/* FDE60 80054950 2C420010 */  sltiu      $v0, $v0, 0x10
/* FDE64 80054954 1440FFF4 */  bnez       $v0, .L80054928_ovl3
/* FDE68 80054958 00000000 */   nop
/* FDE6C 8005495C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FDE70 80054960 24040003 */   addiu     $a0, $zero, 0x3
/* FDE74 80054964 0040A821 */  addu       $s5, $v0, $zero
/* FDE78 80054968 3C01C150 */  lui        $at, (0xC1500000 >> 16)
/* FDE7C 8005496C 44810000 */  mtc1       $at, $f0
/* FDE80 80054970 3C013F07 */  lui        $at, (0x3F07AE14 >> 16)
/* FDE84 80054974 3421AE14 */  ori        $at, $at, (0x3F07AE14 & 0xFFFF)
/* FDE88 80054978 44811000 */  mtc1       $at, $f2
/* FDE8C 8005497C 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* FDE90 80054980 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* FDE94 80054984 44812000 */  mtc1       $at, $f4
/* FDE98 80054988 3C014307 */  lui        $at, (0x43070000 >> 16)
/* FDE9C 8005498C 44813000 */  mtc1       $at, $f6
/* FDEA0 80054990 02A02021 */  addu       $a0, $s5, $zero
/* FDEA4 80054994 24050004 */  addiu      $a1, $zero, 0x4
/* FDEA8 80054998 240200FF */  addiu      $v0, $zero, 0xFF
/* FDEAC 8005499C AEA00018 */  sw         $zero, 0x18($s5)
/* FDEB0 800549A0 AEA0001C */  sw         $zero, 0x1C($s5)
/* FDEB4 800549A4 AEA00024 */  sw         $zero, 0x24($s5)
/* FDEB8 800549A8 A6A20074 */  sh         $v0, 0x74($s5)
/* FDEBC 800549AC A6A20076 */  sh         $v0, 0x76($s5)
/* FDEC0 800549B0 A6A20078 */  sh         $v0, 0x78($s5)
/* FDEC4 800549B4 A6A2007A */  sh         $v0, 0x7A($s5)
/* FDEC8 800549B8 E6A00010 */  swc1       $f0, 0x10($s5)
/* FDECC 800549BC E6A20014 */  swc1       $f2, 0x14($s5)
/* FDED0 800549C0 E6A40028 */  swc1       $f4, 0x28($s5)
/* FDED4 800549C4 0C00DFE6 */  jal        func_80037F98_ovl3
/* FDED8 800549C8 E6A60020 */   swc1      $f6, 0x20($s5)
/* FDEDC 800549CC 8EA20004 */  lw         $v0, 0x4($s5)
/* FDEE0 800549D0 A0400067 */  sb         $zero, 0x67($v0)
/* FDEE4 800549D4 8EA30004 */  lw         $v1, 0x4($s5)
/* FDEE8 800549D8 90620066 */  lbu        $v0, 0x66($v1)
/* FDEEC 800549DC 34420003 */  ori        $v0, $v0, 0x3
/* FDEF0 800549E0 A0620066 */  sb         $v0, 0x66($v1)
/* FDEF4 800549E4 8EA40004 */  lw         $a0, 0x4($s5)
/* FDEF8 800549E8 0C028703 */  jal        func_800A1C0C
/* FDEFC 800549EC 24050003 */   addiu     $a1, $zero, 0x3
/* FDF00 800549F0 8EA40004 */  lw         $a0, 0x4($s5)
/* FDF04 800549F4 3C058007 */  lui        $a1, %hi(D_8006A28C_ovl3)
/* FDF08 800549F8 24A5A28C */  addiu      $a1, $a1, %lo(D_8006A28C_ovl3)
/* FDF0C 800549FC 0C0284DC */  jal        func_800A1370
/* FDF10 80054A00 00008821 */   addu      $s1, $zero, $zero
/* FDF14 80054A04 8EA40004 */  lw         $a0, 0x4($s5)
/* FDF18 80054A08 00021400 */  sll        $v0, $v0, 16
/* FDF1C 80054A0C 0C0285CC */  jal        func_800A1730
/* FDF20 80054A10 00022C03 */   sra       $a1, $v0, 16
/* FDF24 80054A14 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* FDF28 80054A18 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FDF2C 80054A1C AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
.L80054A20_ovl3:
/* FDF30 80054A20 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FDF34 80054A24 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FDF38 80054A28 A4430000 */  sh         $v1, 0x0($v0)
/* FDF3C 80054A2C 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FDF40 80054A30 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FDF44 80054A34 26310001 */  addiu      $s1, $s1, 0x1
/* FDF48 80054A38 24420002 */  addiu      $v0, $v0, 0x2
/* FDF4C 80054A3C 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FDF50 80054A40 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FDF54 80054A44 322200FF */  andi       $v0, $s1, 0xFF
/* FDF58 80054A48 2C420010 */  sltiu      $v0, $v0, 0x10
/* FDF5C 80054A4C 1440FFF4 */  bnez       $v0, .L80054A20_ovl3
/* FDF60 80054A50 00000000 */   nop
/* FDF64 80054A54 8EA40004 */  lw         $a0, 0x4($s5)
/* FDF68 80054A58 3C058007 */  lui        $a1, %hi(D_8006A294_ovl3)
/* FDF6C 80054A5C 24A5A294 */  addiu      $a1, $a1, %lo(D_8006A294_ovl3)
/* FDF70 80054A60 0C0284DC */  jal        func_800A1370
/* FDF74 80054A64 00008821 */   addu      $s1, $zero, $zero
/* FDF78 80054A68 8EA40004 */  lw         $a0, 0x4($s5)
/* FDF7C 80054A6C 00021400 */  sll        $v0, $v0, 16
/* FDF80 80054A70 0C0285CC */  jal        func_800A1730
/* FDF84 80054A74 00022C03 */   sra       $a1, $v0, 16
/* FDF88 80054A78 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* FDF8C 80054A7C 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FDF90 80054A80 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
.L80054A84_ovl3:
/* FDF94 80054A84 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FDF98 80054A88 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FDF9C 80054A8C A4430000 */  sh         $v1, 0x0($v0)
/* FDFA0 80054A90 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FDFA4 80054A94 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FDFA8 80054A98 26310001 */  addiu      $s1, $s1, 0x1
/* FDFAC 80054A9C 24420002 */  addiu      $v0, $v0, 0x2
/* FDFB0 80054AA0 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FDFB4 80054AA4 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FDFB8 80054AA8 322200FF */  andi       $v0, $s1, 0xFF
/* FDFBC 80054AAC 2C420010 */  sltiu      $v0, $v0, 0x10
/* FDFC0 80054AB0 1440FFF4 */  bnez       $v0, .L80054A84_ovl3
/* FDFC4 80054AB4 00000000 */   nop
/* FDFC8 80054AB8 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FDFCC 80054ABC 24040018 */   addiu     $a0, $zero, 0x18
/* FDFD0 80054AC0 0040A821 */  addu       $s5, $v0, $zero
/* FDFD4 80054AC4 3C01C150 */  lui        $at, (0xC1500000 >> 16)
/* FDFD8 80054AC8 4481B000 */  mtc1       $at, $f22
/* FDFDC 80054ACC 3C01C1AC */  lui        $at, (0xC1AC0000 >> 16)
/* FDFE0 80054AD0 4481C000 */  mtc1       $at, $f24
/* FDFE4 80054AD4 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* FDFE8 80054AD8 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* FDFEC 80054ADC 4481A000 */  mtc1       $at, $f20
/* FDFF0 80054AE0 3C014307 */  lui        $at, (0x43070000 >> 16)
/* FDFF4 80054AE4 4481D000 */  mtc1       $at, $f26
/* FDFF8 80054AE8 02A02021 */  addu       $a0, $s5, $zero
/* FDFFC 80054AEC 24050005 */  addiu      $a1, $zero, 0x5
/* FE000 80054AF0 24100040 */  addiu      $s0, $zero, 0x40
/* FE004 80054AF4 241100FF */  addiu      $s1, $zero, 0xFF
/* FE008 80054AF8 AEA00018 */  sw         $zero, 0x18($s5)
/* FE00C 80054AFC AEA0001C */  sw         $zero, 0x1C($s5)
/* FE010 80054B00 AEA00024 */  sw         $zero, 0x24($s5)
/* FE014 80054B04 A6B00074 */  sh         $s0, 0x74($s5)
/* FE018 80054B08 A6B00076 */  sh         $s0, 0x76($s5)
/* FE01C 80054B0C A6B00078 */  sh         $s0, 0x78($s5)
/* FE020 80054B10 A6B1007A */  sh         $s1, 0x7A($s5)
/* FE024 80054B14 E6B60010 */  swc1       $f22, 0x10($s5)
/* FE028 80054B18 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE02C 80054B1C E6B40028 */  swc1       $f20, 0x28($s5)
/* FE030 80054B20 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE034 80054B24 E6BA0020 */   swc1      $f26, 0x20($s5)
/* FE038 80054B28 8EA20004 */  lw         $v0, 0x4($s5)
/* FE03C 80054B2C A0400067 */  sb         $zero, 0x67($v0)
/* FE040 80054B30 8EA30004 */  lw         $v1, 0x4($s5)
/* FE044 80054B34 90620066 */  lbu        $v0, 0x66($v1)
/* FE048 80054B38 24040019 */  addiu      $a0, $zero, 0x19
/* FE04C 80054B3C 34420003 */  ori        $v0, $v0, 0x3
/* FE050 80054B40 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE054 80054B44 A0620066 */   sb        $v0, 0x66($v1)
/* FE058 80054B48 0040A821 */  addu       $s5, $v0, $zero
/* FE05C 80054B4C 02A02021 */  addu       $a0, $s5, $zero
/* FE060 80054B50 24050006 */  addiu      $a1, $zero, 0x6
/* FE064 80054B54 E6B60010 */  swc1       $f22, 0x10($s5)
/* FE068 80054B58 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE06C 80054B5C AEA00018 */  sw         $zero, 0x18($s5)
/* FE070 80054B60 E6B40028 */  swc1       $f20, 0x28($s5)
/* FE074 80054B64 AEA0001C */  sw         $zero, 0x1C($s5)
/* FE078 80054B68 E6BA0020 */  swc1       $f26, 0x20($s5)
/* FE07C 80054B6C AEA00024 */  sw         $zero, 0x24($s5)
/* FE080 80054B70 A6B00074 */  sh         $s0, 0x74($s5)
/* FE084 80054B74 A6B00076 */  sh         $s0, 0x76($s5)
/* FE088 80054B78 A6B00078 */  sh         $s0, 0x78($s5)
/* FE08C 80054B7C 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE090 80054B80 A6B1007A */   sh        $s1, 0x7A($s5)
/* FE094 80054B84 8EA20004 */  lw         $v0, 0x4($s5)
/* FE098 80054B88 A0400067 */  sb         $zero, 0x67($v0)
/* FE09C 80054B8C 8EA30004 */  lw         $v1, 0x4($s5)
/* FE0A0 80054B90 90620066 */  lbu        $v0, 0x66($v1)
/* FE0A4 80054B94 2404001B */  addiu      $a0, $zero, 0x1B
/* FE0A8 80054B98 34420003 */  ori        $v0, $v0, 0x3
/* FE0AC 80054B9C 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE0B0 80054BA0 A0620066 */   sb        $v0, 0x66($v1)
/* FE0B4 80054BA4 0040A821 */  addu       $s5, $v0, $zero
/* FE0B8 80054BA8 3C014334 */  lui        $at, (0x43340000 >> 16)
/* FE0BC 80054BAC 4481B000 */  mtc1       $at, $f22
/* FE0C0 80054BB0 3C0143B1 */  lui        $at, (0x43B18000 >> 16)
/* FE0C4 80054BB4 34218000 */  ori        $at, $at, (0x43B18000 & 0xFFFF)
/* FE0C8 80054BB8 44810000 */  mtc1       $at, $f0
/* FE0CC 80054BBC 02A02021 */  addu       $a0, $s5, $zero
/* FE0D0 80054BC0 24050103 */  addiu      $a1, $zero, 0x103
/* FE0D4 80054BC4 AEA00010 */  sw         $zero, 0x10($s5)
/* FE0D8 80054BC8 AEA00014 */  sw         $zero, 0x14($s5)
/* FE0DC 80054BCC AEA00018 */  sw         $zero, 0x18($s5)
/* FE0E0 80054BD0 E6B40028 */  swc1       $f20, 0x28($s5)
/* FE0E4 80054BD4 AEA0001C */  sw         $zero, 0x1C($s5)
/* FE0E8 80054BD8 A6B10074 */  sh         $s1, 0x74($s5)
/* FE0EC 80054BDC A6B10076 */  sh         $s1, 0x76($s5)
/* FE0F0 80054BE0 A6B10078 */  sh         $s1, 0x78($s5)
/* FE0F4 80054BE4 A6B1007A */  sh         $s1, 0x7A($s5)
/* FE0F8 80054BE8 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE0FC 80054BEC 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE100 80054BF0 E6A00024 */   swc1      $f0, 0x24($s5)
/* FE104 80054BF4 8EA20004 */  lw         $v0, 0x4($s5)
/* FE108 80054BF8 2414000A */  addiu      $s4, $zero, 0xA
/* FE10C 80054BFC A0540067 */  sb         $s4, 0x67($v0)
/* FE110 80054C00 8EA30004 */  lw         $v1, 0x4($s5)
/* FE114 80054C04 90620066 */  lbu        $v0, 0x66($v1)
/* FE118 80054C08 2404001C */  addiu      $a0, $zero, 0x1C
/* FE11C 80054C0C 34420023 */  ori        $v0, $v0, 0x23
/* FE120 80054C10 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE124 80054C14 A0620066 */   sb        $v0, 0x66($v1)
/* FE128 80054C18 0040A821 */  addu       $s5, $v0, $zero
/* FE12C 80054C1C 3C0141A0 */  lui        $at, (0x41A00000 >> 16)
/* FE130 80054C20 4481A000 */  mtc1       $at, $f20
/* FE134 80054C24 3C014040 */  lui        $at, (0x40400000 >> 16)
/* FE138 80054C28 4481C000 */  mtc1       $at, $f24
/* FE13C 80054C2C 3C013CBC */  lui        $at, (0x3CBC6A7F >> 16)
/* FE140 80054C30 34216A7F */  ori        $at, $at, (0x3CBC6A7F & 0xFFFF)
/* FE144 80054C34 4481D000 */  mtc1       $at, $f26
/* FE148 80054C38 02A02021 */  addu       $a0, $s5, $zero
/* FE14C 80054C3C 24050105 */  addiu      $a1, $zero, 0x105
/* FE150 80054C40 AEA00018 */  sw         $zero, 0x18($s5)
/* FE154 80054C44 AEA0001C */  sw         $zero, 0x1C($s5)
/* FE158 80054C48 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE15C 80054C4C AEA00024 */  sw         $zero, 0x24($s5)
/* FE160 80054C50 A6B10074 */  sh         $s1, 0x74($s5)
/* FE164 80054C54 A6B10076 */  sh         $s1, 0x76($s5)
/* FE168 80054C58 A6B10078 */  sh         $s1, 0x78($s5)
/* FE16C 80054C5C A6B1007A */  sh         $s1, 0x7A($s5)
/* FE170 80054C60 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE174 80054C64 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE178 80054C68 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE17C 80054C6C E6BA0028 */   swc1      $f26, 0x28($s5)
/* FE180 80054C70 8EA20004 */  lw         $v0, 0x4($s5)
/* FE184 80054C74 A0540067 */  sb         $s4, 0x67($v0)
/* FE188 80054C78 8EA30004 */  lw         $v1, 0x4($s5)
/* FE18C 80054C7C 90620066 */  lbu        $v0, 0x66($v1)
/* FE190 80054C80 34420023 */  ori        $v0, $v0, 0x23
/* FE194 80054C84 A0620066 */  sb         $v0, 0x66($v1)
/* FE198 80054C88 8EA40004 */  lw         $a0, 0x4($s5)
/* FE19C 80054C8C 3C108007 */  lui        $s0, %hi(D_8006A298_ovl3)
/* FE1A0 80054C90 2610A298 */  addiu      $s0, $s0, %lo(D_8006A298_ovl3)
/* FE1A4 80054C94 0C0284DC */  jal        func_800A1370
/* FE1A8 80054C98 02002821 */   addu      $a1, $s0, $zero
/* FE1AC 80054C9C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE1B0 80054CA0 00021400 */  sll        $v0, $v0, 16
/* FE1B4 80054CA4 0C0285CC */  jal        func_800A1730
/* FE1B8 80054CA8 00022C03 */   sra       $a1, $v0, 16
/* FE1BC 80054CAC 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE1C0 80054CB0 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FE1C4 80054CB4 94430000 */  lhu        $v1, 0x0($v0)
/* FE1C8 80054CB8 2404001D */  addiu      $a0, $zero, 0x1D
/* FE1CC 80054CBC 3063FFFE */  andi       $v1, $v1, 0xFFFE
/* FE1D0 80054CC0 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE1D4 80054CC4 A4430000 */   sh        $v1, 0x0($v0)
/* FE1D8 80054CC8 0040A821 */  addu       $s5, $v0, $zero
/* FE1DC 80054CCC 02A02021 */  addu       $a0, $s5, $zero
/* FE1E0 80054CD0 24050105 */  addiu      $a1, $zero, 0x105
/* FE1E4 80054CD4 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE1E8 80054CD8 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE1EC 80054CDC AEA00018 */  sw         $zero, 0x18($s5)
/* FE1F0 80054CE0 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE1F4 80054CE4 AEA0001C */  sw         $zero, 0x1C($s5)
/* FE1F8 80054CE8 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE1FC 80054CEC AEA00024 */  sw         $zero, 0x24($s5)
/* FE200 80054CF0 A6B10074 */  sh         $s1, 0x74($s5)
/* FE204 80054CF4 A6B10076 */  sh         $s1, 0x76($s5)
/* FE208 80054CF8 A6B10078 */  sh         $s1, 0x78($s5)
/* FE20C 80054CFC 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE210 80054D00 A6B1007A */   sh        $s1, 0x7A($s5)
/* FE214 80054D04 8EA20004 */  lw         $v0, 0x4($s5)
/* FE218 80054D08 3C13001E */  lui        $s3, %hi(Image_ROM_START)
/* FE21C 80054D0C 26739000 */  addiu      $s3, $s3, %lo(Image_ROM_START)
/* FE220 80054D10 02602021 */  addu       $a0, $s3, $zero
/* FE224 80054D14 A0540067 */  sb         $s4, 0x67($v0)
/* FE228 80054D18 8EA30004 */  lw         $v1, 0x4($s5)
/* FE22C 80054D1C 3C12800D */  lui        $s2, %hi(Image_tbl)
/* FE230 80054D20 26526AD0 */  addiu      $s2, $s2, %lo(Image_tbl)
/* FE234 80054D24 02402821 */  addu       $a1, $s2, $zero
/* FE238 80054D28 90620066 */  lbu        $v0, 0x66($v1)
/* FE23C 80054D2C 24060851 */  addiu      $a2, $zero, 0x851
/* FE240 80054D30 00003821 */  addu       $a3, $zero, $zero
/* FE244 80054D34 34420023 */  ori        $v0, $v0, 0x23
/* FE248 80054D38 0C02648E */  jal        func_80099238
/* FE24C 80054D3C A0620066 */   sb        $v0, 0x66($v1)
/* FE250 80054D40 8EA40004 */  lw         $a0, 0x4($s5)
/* FE254 80054D44 3C018007 */  lui        $at, %hi(D_8006C1A0_ovl3)
/* FE258 80054D48 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0_ovl3)($at)
/* FE25C 80054D4C 0C0284DC */  jal        func_800A1370
/* FE260 80054D50 02002821 */   addu      $a1, $s0, $zero
/* FE264 80054D54 8EA40004 */  lw         $a0, 0x4($s5)
/* FE268 80054D58 00021400 */  sll        $v0, $v0, 16
/* FE26C 80054D5C 0C0285CC */  jal        func_800A1730
/* FE270 80054D60 00022C03 */   sra       $a1, $v0, 16
/* FE274 80054D64 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE278 80054D68 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE27C 80054D6C 24450020 */  addiu      $a1, $v0, 0x20
/* FE280 80054D70 24060400 */  addiu      $a2, $zero, 0x400
/* FE284 80054D74 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE288 80054D78 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4_ovl3)($at)
/* FE28C 80054D7C 0C03006C */  jal        func_800C01B0
/* FE290 80054D80 24840010 */   addiu     $a0, $a0, 0x10
/* FE294 80054D84 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE298 80054D88 0C0326A1 */  jal        func_800C9A84
/* FE29C 80054D8C 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE2A0 80054D90 8EA40004 */  lw         $a0, 0x4($s5)
/* FE2A4 80054D94 0C0284DC */  jal        func_800A1370
/* FE2A8 80054D98 02002821 */   addu      $a1, $s0, $zero
/* FE2AC 80054D9C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE2B0 80054DA0 00021400 */  sll        $v0, $v0, 16
/* FE2B4 80054DA4 0C0285CC */  jal        func_800A1730
/* FE2B8 80054DA8 00022C03 */   sra       $a1, $v0, 16
/* FE2BC 80054DAC 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE2C0 80054DB0 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FE2C4 80054DB4 94430000 */  lhu        $v1, 0x0($v0)
/* FE2C8 80054DB8 2404001E */  addiu      $a0, $zero, 0x1E
/* FE2CC 80054DBC 3063FFFE */  andi       $v1, $v1, 0xFFFE
/* FE2D0 80054DC0 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE2D4 80054DC4 A4430000 */   sh        $v1, 0x0($v0)
/* FE2D8 80054DC8 0040A821 */  addu       $s5, $v0, $zero
/* FE2DC 80054DCC 02A02021 */  addu       $a0, $s5, $zero
/* FE2E0 80054DD0 24050105 */  addiu      $a1, $zero, 0x105
/* FE2E4 80054DD4 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE2E8 80054DD8 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE2EC 80054DDC AEA00018 */  sw         $zero, 0x18($s5)
/* FE2F0 80054DE0 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE2F4 80054DE4 AEA0001C */  sw         $zero, 0x1C($s5)
/* FE2F8 80054DE8 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE2FC 80054DEC AEA00024 */  sw         $zero, 0x24($s5)
/* FE300 80054DF0 A6B10074 */  sh         $s1, 0x74($s5)
/* FE304 80054DF4 A6B10076 */  sh         $s1, 0x76($s5)
/* FE308 80054DF8 A6B10078 */  sh         $s1, 0x78($s5)
/* FE30C 80054DFC 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE310 80054E00 A6B1007A */   sh        $s1, 0x7A($s5)
/* FE314 80054E04 8EA20004 */  lw         $v0, 0x4($s5)
/* FE318 80054E08 A0540067 */  sb         $s4, 0x67($v0)
/* FE31C 80054E0C 8EA30004 */  lw         $v1, 0x4($s5)
/* FE320 80054E10 02602021 */  addu       $a0, $s3, $zero
/* FE324 80054E14 02402821 */  addu       $a1, $s2, $zero
/* FE328 80054E18 90620066 */  lbu        $v0, 0x66($v1)
/* FE32C 80054E1C 24060852 */  addiu      $a2, $zero, 0x852
/* FE330 80054E20 00003821 */  addu       $a3, $zero, $zero
/* FE334 80054E24 34420023 */  ori        $v0, $v0, 0x23
/* FE338 80054E28 0C02648E */  jal        func_80099238
/* FE33C 80054E2C A0620066 */   sb        $v0, 0x66($v1)
/* FE340 80054E30 8EA40004 */  lw         $a0, 0x4($s5)
/* FE344 80054E34 3C018007 */  lui        $at, %hi(D_8006C1A0_ovl3)
/* FE348 80054E38 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0_ovl3)($at)
/* FE34C 80054E3C 0C0284DC */  jal        func_800A1370
/* FE350 80054E40 02002821 */   addu      $a1, $s0, $zero
/* FE354 80054E44 8EA40004 */  lw         $a0, 0x4($s5)
/* FE358 80054E48 00021400 */  sll        $v0, $v0, 16
/* FE35C 80054E4C 0C0285CC */  jal        func_800A1730
/* FE360 80054E50 00022C03 */   sra       $a1, $v0, 16
/* FE364 80054E54 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE368 80054E58 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE36C 80054E5C 24450020 */  addiu      $a1, $v0, 0x20
/* FE370 80054E60 24060400 */  addiu      $a2, $zero, 0x400
/* FE374 80054E64 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE378 80054E68 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4_ovl3)($at)
/* FE37C 80054E6C 0C03006C */  jal        func_800C01B0
/* FE380 80054E70 24840010 */   addiu     $a0, $a0, 0x10
/* FE384 80054E74 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE388 80054E78 0C0326A1 */  jal        func_800C9A84
/* FE38C 80054E7C 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE390 80054E80 8EA40004 */  lw         $a0, 0x4($s5)
/* FE394 80054E84 0C0284DC */  jal        func_800A1370
/* FE398 80054E88 02002821 */   addu      $a1, $s0, $zero
/* FE39C 80054E8C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE3A0 80054E90 00021400 */  sll        $v0, $v0, 16
/* FE3A4 80054E94 0C0285CC */  jal        func_800A1730
/* FE3A8 80054E98 00022C03 */   sra       $a1, $v0, 16
/* FE3AC 80054E9C 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE3B0 80054EA0 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FE3B4 80054EA4 94430000 */  lhu        $v1, 0x0($v0)
/* FE3B8 80054EA8 2404001F */  addiu      $a0, $zero, 0x1F
/* FE3BC 80054EAC 3063FFFE */  andi       $v1, $v1, 0xFFFE
/* FE3C0 80054EB0 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE3C4 80054EB4 A4430000 */   sh        $v1, 0x0($v0)
/* FE3C8 80054EB8 0040A821 */  addu       $s5, $v0, $zero
/* FE3CC 80054EBC 02A02021 */  addu       $a0, $s5, $zero
/* FE3D0 80054EC0 24050105 */  addiu      $a1, $zero, 0x105
/* FE3D4 80054EC4 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE3D8 80054EC8 E6B80014 */  swc1       $f24, 0x14($s5)
/* FE3DC 80054ECC AEA00018 */  sw         $zero, 0x18($s5)
/* FE3E0 80054ED0 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE3E4 80054ED4 AEA0001C */  sw         $zero, 0x1C($s5)
/* FE3E8 80054ED8 E6B60020 */  swc1       $f22, 0x20($s5)
/* FE3EC 80054EDC AEA00024 */  sw         $zero, 0x24($s5)
/* FE3F0 80054EE0 A6B10074 */  sh         $s1, 0x74($s5)
/* FE3F4 80054EE4 A6B10076 */  sh         $s1, 0x76($s5)
/* FE3F8 80054EE8 A6B10078 */  sh         $s1, 0x78($s5)
/* FE3FC 80054EEC 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE400 80054EF0 A6B1007A */   sh        $s1, 0x7A($s5)
/* FE404 80054EF4 8EA20004 */  lw         $v0, 0x4($s5)
/* FE408 80054EF8 A0540067 */  sb         $s4, 0x67($v0)
/* FE40C 80054EFC 8EA30004 */  lw         $v1, 0x4($s5)
/* FE410 80054F00 02602021 */  addu       $a0, $s3, $zero
/* FE414 80054F04 02402821 */  addu       $a1, $s2, $zero
/* FE418 80054F08 90620066 */  lbu        $v0, 0x66($v1)
/* FE41C 80054F0C 24060853 */  addiu      $a2, $zero, 0x853
/* FE420 80054F10 00003821 */  addu       $a3, $zero, $zero
/* FE424 80054F14 34420023 */  ori        $v0, $v0, 0x23
/* FE428 80054F18 0C02648E */  jal        func_80099238
/* FE42C 80054F1C A0620066 */   sb        $v0, 0x66($v1)
/* FE430 80054F20 8EA40004 */  lw         $a0, 0x4($s5)
/* FE434 80054F24 3C018007 */  lui        $at, %hi(D_8006C1A0_ovl3)
/* FE438 80054F28 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0_ovl3)($at)
/* FE43C 80054F2C 0C0284DC */  jal        func_800A1370
/* FE440 80054F30 02002821 */   addu      $a1, $s0, $zero
/* FE444 80054F34 8EA40004 */  lw         $a0, 0x4($s5)
/* FE448 80054F38 00021400 */  sll        $v0, $v0, 16
/* FE44C 80054F3C 0C0285CC */  jal        func_800A1730
/* FE450 80054F40 00022C03 */   sra       $a1, $v0, 16
/* FE454 80054F44 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE458 80054F48 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE45C 80054F4C 24450020 */  addiu      $a1, $v0, 0x20
/* FE460 80054F50 24060400 */  addiu      $a2, $zero, 0x400
/* FE464 80054F54 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE468 80054F58 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4_ovl3)($at)
/* FE46C 80054F5C 0C03006C */  jal        func_800C01B0
/* FE470 80054F60 24840010 */   addiu     $a0, $a0, 0x10
/* FE474 80054F64 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE478 80054F68 0C0326A1 */  jal        func_800C9A84
/* FE47C 80054F6C 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE480 80054F70 8EA40004 */  lw         $a0, 0x4($s5)
/* FE484 80054F74 0C0284DC */  jal        func_800A1370
/* FE488 80054F78 02002821 */   addu      $a1, $s0, $zero
/* FE48C 80054F7C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE490 80054F80 00021400 */  sll        $v0, $v0, 16
/* FE494 80054F84 0C0285CC */  jal        func_800A1730
/* FE498 80054F88 00022C03 */   sra       $a1, $v0, 16
/* FE49C 80054F8C 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE4A0 80054F90 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FE4A4 80054F94 94430000 */  lhu        $v1, 0x0($v0)
/* FE4A8 80054F98 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* FE4AC 80054F9C 44810000 */  mtc1       $at, $f0
/* FE4B0 80054FA0 3C01C13D */  lui        $at, (0xC13D1EB8 >> 16)
/* FE4B4 80054FA4 34211EB8 */  ori        $at, $at, (0xC13D1EB8 & 0xFFFF)
/* FE4B8 80054FA8 44811000 */  mtc1       $at, $f2
/* FE4BC 80054FAC 3C0143B0 */  lui        $at, (0x43B0E3D7 >> 16)
/* FE4C0 80054FB0 3421E3D7 */  ori        $at, $at, (0x43B0E3D7 & 0xFFFF)
/* FE4C4 80054FB4 44812000 */  mtc1       $at, $f4
/* FE4C8 80054FB8 3C01C2B4 */  lui        $at, (0xC2B40000 >> 16)
/* FE4CC 80054FBC 44813000 */  mtc1       $at, $f6
/* FE4D0 80054FC0 3063FFFE */  andi       $v1, $v1, 0xFFFE
/* FE4D4 80054FC4 A4430000 */  sh         $v1, 0x0($v0)
/* FE4D8 80054FC8 3C018015 */  lui        $at, %hi(D_8014A070)
/* FE4DC 80054FCC AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* FE4E0 80054FD0 3C018015 */  lui        $at, %hi(D_8014A074)
/* FE4E4 80054FD4 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* FE4E8 80054FD8 3C018015 */  lui        $at, %hi(D_8014A078)
/* FE4EC 80054FDC AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* FE4F0 80054FE0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* FE4F4 80054FE4 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* FE4F8 80054FE8 3C018015 */  lui        $at, %hi(D_8014A080)
/* FE4FC 80054FEC E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* FE500 80054FF0 3C018015 */  lui        $at, %hi(D_8014A084)
/* FE504 80054FF4 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* FE508 80054FF8 3C018015 */  lui        $at, %hi(D_8014A088)
/* FE50C 80054FFC E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* FE510 80055000 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE514 80055004 24040004 */   addiu     $a0, $zero, 0x4
/* FE518 80055008 0040A821 */  addu       $s5, $v0, $zero
/* FE51C 8005500C 3C013CCC */  lui        $at, (0x3CCCCCCD >> 16)
/* FE520 80055010 3421CCCD */  ori        $at, $at, (0x3CCCCCCD & 0xFFFF)
/* FE524 80055014 44810000 */  mtc1       $at, $f0
/* FE528 80055018 3C01439D */  lui        $at, (0x439D8000 >> 16)
/* FE52C 8005501C 34218000 */  ori        $at, $at, (0x439D8000 & 0xFFFF)
/* FE530 80055020 44811000 */  mtc1       $at, $f2
/* FE534 80055024 3C014100 */  lui        $at, (0x41000000 >> 16)
/* FE538 80055028 44812000 */  mtc1       $at, $f4
/* FE53C 8005502C 02A02021 */  addu       $a0, $s5, $zero
/* FE540 80055030 24050004 */  addiu      $a1, $zero, 0x4
/* FE544 80055034 AEA00010 */  sw         $zero, 0x10($s5)
/* FE548 80055038 AEA00014 */  sw         $zero, 0x14($s5)
/* FE54C 8005503C AEA00018 */  sw         $zero, 0x18($s5)
/* FE550 80055040 AEA0001C */  sw         $zero, 0x1C($s5)
/* FE554 80055044 A6B10074 */  sh         $s1, 0x74($s5)
/* FE558 80055048 A6B10076 */  sh         $s1, 0x76($s5)
/* FE55C 8005504C A6B10078 */  sh         $s1, 0x78($s5)
/* FE560 80055050 A6B1007A */  sh         $s1, 0x7A($s5)
/* FE564 80055054 E6A00028 */  swc1       $f0, 0x28($s5)
/* FE568 80055058 E6A20020 */  swc1       $f2, 0x20($s5)
/* FE56C 8005505C 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE570 80055060 E6A40024 */   swc1      $f4, 0x24($s5)
/* FE574 80055064 8EA20004 */  lw         $v0, 0x4($s5)
/* FE578 80055068 A0400067 */  sb         $zero, 0x67($v0)
/* FE57C 8005506C 8EA30004 */  lw         $v1, 0x4($s5)
/* FE580 80055070 90620066 */  lbu        $v0, 0x66($v1)
/* FE584 80055074 34420003 */  ori        $v0, $v0, 0x3
/* FE588 80055078 A0620066 */  sb         $v0, 0x66($v1)
/* FE58C 8005507C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE590 80055080 0C028703 */  jal        func_800A1C0C
/* FE594 80055084 24050004 */   addiu     $a1, $zero, 0x4
/* FE598 80055088 8EA40004 */  lw         $a0, 0x4($s5)
/* FE59C 8005508C 3C058007 */  lui        $a1, %hi(D_8006A28C_ovl3)
/* FE5A0 80055090 24A5A28C */  addiu      $a1, $a1, %lo(D_8006A28C_ovl3)
/* FE5A4 80055094 0C0284DC */  jal        func_800A1370
/* FE5A8 80055098 00008821 */   addu      $s1, $zero, $zero
/* FE5AC 8005509C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE5B0 800550A0 00021400 */  sll        $v0, $v0, 16
/* FE5B4 800550A4 0C0285CC */  jal        func_800A1730
/* FE5B8 800550A8 00022C03 */   sra       $a1, $v0, 16
/* FE5BC 800550AC 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* FE5C0 800550B0 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE5C4 800550B4 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
.L800550B8_ovl3:
/* FE5C8 800550B8 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FE5CC 800550BC 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FE5D0 800550C0 A4430000 */  sh         $v1, 0x0($v0)
/* FE5D4 800550C4 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FE5D8 800550C8 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FE5DC 800550CC 26310001 */  addiu      $s1, $s1, 0x1
/* FE5E0 800550D0 24420002 */  addiu      $v0, $v0, 0x2
/* FE5E4 800550D4 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE5E8 800550D8 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FE5EC 800550DC 322200FF */  andi       $v0, $s1, 0xFF
/* FE5F0 800550E0 2C420010 */  sltiu      $v0, $v0, 0x10
/* FE5F4 800550E4 1440FFF4 */  bnez       $v0, .L800550B8_ovl3
/* FE5F8 800550E8 00000000 */   nop
/* FE5FC 800550EC 8EA40004 */  lw         $a0, 0x4($s5)
/* FE600 800550F0 3C058007 */  lui        $a1, %hi(D_8006A294_ovl3)
/* FE604 800550F4 24A5A294 */  addiu      $a1, $a1, %lo(D_8006A294_ovl3)
/* FE608 800550F8 0C0284DC */  jal        func_800A1370
/* FE60C 800550FC 00008821 */   addu      $s1, $zero, $zero
/* FE610 80055100 8EA40004 */  lw         $a0, 0x4($s5)
/* FE614 80055104 00021400 */  sll        $v0, $v0, 16
/* FE618 80055108 0C0285CC */  jal        func_800A1730
/* FE61C 8005510C 00022C03 */   sra       $a1, $v0, 16
/* FE620 80055110 3403FFFF */  ori        $v1, $zero, 0xFFFF
/* FE624 80055114 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE628 80055118 AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
.L8005511C_ovl3:
/* FE62C 8005511C 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FE630 80055120 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FE634 80055124 A4430000 */  sh         $v1, 0x0($v0)
/* FE638 80055128 3C028007 */  lui        $v0, %hi(D_8006C1A4_ovl3)
/* FE63C 8005512C 8C42C1A4 */  lw         $v0, %lo(D_8006C1A4_ovl3)($v0)
/* FE640 80055130 26310001 */  addiu      $s1, $s1, 0x1
/* FE644 80055134 24420002 */  addiu      $v0, $v0, 0x2
/* FE648 80055138 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE64C 8005513C AC22C1A4 */  sw         $v0, %lo(D_8006C1A4_ovl3)($at)
/* FE650 80055140 322200FF */  andi       $v0, $s1, 0xFF
/* FE654 80055144 2C420010 */  sltiu      $v0, $v0, 0x10
/* FE658 80055148 1440FFF4 */  bnez       $v0, .L8005511C_ovl3
/* FE65C 8005514C 00000000 */   nop
/* FE660 80055150 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE664 80055154 24040020 */   addiu     $a0, $zero, 0x20
/* FE668 80055158 0040A821 */  addu       $s5, $v0, $zero
/* FE66C 8005515C 3C014180 */  lui        $at, (0x41800000 >> 16)
/* FE670 80055160 4481A000 */  mtc1       $at, $f20
/* FE674 80055164 3C0141B4 */  lui        $at, (0x41B40000 >> 16)
/* FE678 80055168 4481B000 */  mtc1       $at, $f22
/* FE67C 8005516C 3C01C0E0 */  lui        $at, (0xC0E00000 >> 16)
/* FE680 80055170 4481C000 */  mtc1       $at, $f24
/* FE684 80055174 3C013C44 */  lui        $at, (0x3C449BA6 >> 16)
/* FE688 80055178 34219BA6 */  ori        $at, $at, (0x3C449BA6 & 0xFFFF)
/* FE68C 8005517C 4481D000 */  mtc1       $at, $f26
/* FE690 80055180 3C0141BE */  lui        $at, (0x41BE7AE1 >> 16)
/* FE694 80055184 34217AE1 */  ori        $at, $at, (0x41BE7AE1 & 0xFFFF)
/* FE698 80055188 4481E000 */  mtc1       $at, $f28
/* FE69C 8005518C 3C01413A */  lui        $at, (0x413A8F5C >> 16)
/* FE6A0 80055190 34218F5C */  ori        $at, $at, (0x413A8F5C & 0xFFFF)
/* FE6A4 80055194 4481F000 */  mtc1       $at, $f30
/* FE6A8 80055198 02A02021 */  addu       $a0, $s5, $zero
/* FE6AC 8005519C 24050106 */  addiu      $a1, $zero, 0x106
/* FE6B0 800551A0 241000FF */  addiu      $s0, $zero, 0xFF
/* FE6B4 800551A4 AEA00024 */  sw         $zero, 0x24($s5)
/* FE6B8 800551A8 A6B00074 */  sh         $s0, 0x74($s5)
/* FE6BC 800551AC A6B00076 */  sh         $s0, 0x76($s5)
/* FE6C0 800551B0 A6B00078 */  sh         $s0, 0x78($s5)
/* FE6C4 800551B4 A6B0007A */  sh         $s0, 0x7A($s5)
/* FE6C8 800551B8 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE6CC 800551BC E6B60014 */  swc1       $f22, 0x14($s5)
/* FE6D0 800551C0 E6B80018 */  swc1       $f24, 0x18($s5)
/* FE6D4 800551C4 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE6D8 800551C8 E6BC001C */  swc1       $f28, 0x1C($s5)
/* FE6DC 800551CC 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE6E0 800551D0 E6BE0020 */   swc1      $f30, 0x20($s5)
/* FE6E4 800551D4 8EA20004 */  lw         $v0, 0x4($s5)
/* FE6E8 800551D8 2413000A */  addiu      $s3, $zero, 0xA
/* FE6EC 800551DC A0530067 */  sb         $s3, 0x67($v0)
/* FE6F0 800551E0 8EA30004 */  lw         $v1, 0x4($s5)
/* FE6F4 800551E4 90620066 */  lbu        $v0, 0x66($v1)
/* FE6F8 800551E8 24040021 */  addiu      $a0, $zero, 0x21
/* FE6FC 800551EC 34420023 */  ori        $v0, $v0, 0x23
/* FE700 800551F0 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE704 800551F4 A0620066 */   sb        $v0, 0x66($v1)
/* FE708 800551F8 0040A821 */  addu       $s5, $v0, $zero
/* FE70C 800551FC 02A02021 */  addu       $a0, $s5, $zero
/* FE710 80055200 24050106 */  addiu      $a1, $zero, 0x106
/* FE714 80055204 E6B40010 */  swc1       $f20, 0x10($s5)
/* FE718 80055208 E6B60014 */  swc1       $f22, 0x14($s5)
/* FE71C 8005520C E6B80018 */  swc1       $f24, 0x18($s5)
/* FE720 80055210 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE724 80055214 E6BC001C */  swc1       $f28, 0x1C($s5)
/* FE728 80055218 E6BE0020 */  swc1       $f30, 0x20($s5)
/* FE72C 8005521C AEA00024 */  sw         $zero, 0x24($s5)
/* FE730 80055220 A6B00074 */  sh         $s0, 0x74($s5)
/* FE734 80055224 A6B00076 */  sh         $s0, 0x76($s5)
/* FE738 80055228 A6B00078 */  sh         $s0, 0x78($s5)
/* FE73C 8005522C 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE740 80055230 A6B0007A */   sh        $s0, 0x7A($s5)
/* FE744 80055234 8EA20004 */  lw         $v0, 0x4($s5)
/* FE748 80055238 3C14001E */  lui        $s4, %hi(Image_ROM_START)
/* FE74C 8005523C 26949000 */  addiu      $s4, $s4, %lo(Image_ROM_START)
/* FE750 80055240 02802021 */  addu       $a0, $s4, $zero
/* FE754 80055244 A0530067 */  sb         $s3, 0x67($v0)
/* FE758 80055248 8EA30004 */  lw         $v1, 0x4($s5)
/* FE75C 8005524C 3C12800D */  lui        $s2, %hi(Image_tbl)
/* FE760 80055250 26526AD0 */  addiu      $s2, $s2, %lo(Image_tbl)
/* FE764 80055254 02402821 */  addu       $a1, $s2, $zero
/* FE768 80055258 90620066 */  lbu        $v0, 0x66($v1)
/* FE76C 8005525C 24060855 */  addiu      $a2, $zero, 0x855
/* FE770 80055260 00003821 */  addu       $a3, $zero, $zero
/* FE774 80055264 34420023 */  ori        $v0, $v0, 0x23
/* FE778 80055268 0C02648E */  jal        func_80099238
/* FE77C 8005526C A0620066 */   sb        $v0, 0x66($v1)
/* FE780 80055270 8EA40004 */  lw         $a0, 0x4($s5)
/* FE784 80055274 3C118007 */  lui        $s1, %hi(D_8006A28C_ovl3)
/* FE788 80055278 2631A28C */  addiu      $s1, $s1, %lo(D_8006A28C_ovl3)
/* FE78C 8005527C 3C018007 */  lui        $at, %hi(D_8006C1A0_ovl3)
/* FE790 80055280 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0_ovl3)($at)
/* FE794 80055284 0C0284DC */  jal        func_800A1370
/* FE798 80055288 02202821 */   addu      $a1, $s1, $zero
/* FE79C 8005528C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE7A0 80055290 00021400 */  sll        $v0, $v0, 16
/* FE7A4 80055294 0C0285CC */  jal        func_800A1730
/* FE7A8 80055298 00022C03 */   sra       $a1, $v0, 16
/* FE7AC 8005529C 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE7B0 800552A0 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE7B4 800552A4 24450020 */  addiu      $a1, $v0, 0x20
/* FE7B8 800552A8 24060400 */  addiu      $a2, $zero, 0x400
/* FE7BC 800552AC 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE7C0 800552B0 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4_ovl3)($at)
/* FE7C4 800552B4 0C03006C */  jal        func_800C01B0
/* FE7C8 800552B8 24840010 */   addiu     $a0, $a0, 0x10
/* FE7CC 800552BC 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE7D0 800552C0 0C0326A1 */  jal        func_800C9A84
/* FE7D4 800552C4 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE7D8 800552C8 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE7DC 800552CC 24040022 */   addiu     $a0, $zero, 0x22
/* FE7E0 800552D0 0040A821 */  addu       $s5, $v0, $zero
/* FE7E4 800552D4 02A02021 */  addu       $a0, $s5, $zero
/* FE7E8 800552D8 24050106 */  addiu      $a1, $zero, 0x106
/* FE7EC 800552DC E6B40010 */  swc1       $f20, 0x10($s5)
/* FE7F0 800552E0 E6B60014 */  swc1       $f22, 0x14($s5)
/* FE7F4 800552E4 E6B80018 */  swc1       $f24, 0x18($s5)
/* FE7F8 800552E8 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE7FC 800552EC E6BC001C */  swc1       $f28, 0x1C($s5)
/* FE800 800552F0 E6BE0020 */  swc1       $f30, 0x20($s5)
/* FE804 800552F4 AEA00024 */  sw         $zero, 0x24($s5)
/* FE808 800552F8 A6B00074 */  sh         $s0, 0x74($s5)
/* FE80C 800552FC A6B00076 */  sh         $s0, 0x76($s5)
/* FE810 80055300 A6B00078 */  sh         $s0, 0x78($s5)
/* FE814 80055304 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE818 80055308 A6B0007A */   sh        $s0, 0x7A($s5)
/* FE81C 8005530C 8EA20004 */  lw         $v0, 0x4($s5)
/* FE820 80055310 A0530067 */  sb         $s3, 0x67($v0)
/* FE824 80055314 8EA30004 */  lw         $v1, 0x4($s5)
/* FE828 80055318 02802021 */  addu       $a0, $s4, $zero
/* FE82C 8005531C 02402821 */  addu       $a1, $s2, $zero
/* FE830 80055320 90620066 */  lbu        $v0, 0x66($v1)
/* FE834 80055324 24060856 */  addiu      $a2, $zero, 0x856
/* FE838 80055328 00003821 */  addu       $a3, $zero, $zero
/* FE83C 8005532C 34420023 */  ori        $v0, $v0, 0x23
/* FE840 80055330 0C02648E */  jal        func_80099238
/* FE844 80055334 A0620066 */   sb        $v0, 0x66($v1)
/* FE848 80055338 8EA40004 */  lw         $a0, 0x4($s5)
/* FE84C 8005533C 3C018007 */  lui        $at, %hi(D_8006C1A0_ovl3)
/* FE850 80055340 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0_ovl3)($at)
/* FE854 80055344 0C0284DC */  jal        func_800A1370
/* FE858 80055348 02202821 */   addu      $a1, $s1, $zero
/* FE85C 8005534C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE860 80055350 00021400 */  sll        $v0, $v0, 16
/* FE864 80055354 0C0285CC */  jal        func_800A1730
/* FE868 80055358 00022C03 */   sra       $a1, $v0, 16
/* FE86C 8005535C 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE870 80055360 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE874 80055364 24450020 */  addiu      $a1, $v0, 0x20
/* FE878 80055368 24060400 */  addiu      $a2, $zero, 0x400
/* FE87C 8005536C 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE880 80055370 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4_ovl3)($at)
/* FE884 80055374 0C03006C */  jal        func_800C01B0
/* FE888 80055378 24840010 */   addiu     $a0, $a0, 0x10
/* FE88C 8005537C 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE890 80055380 0C0326A1 */  jal        func_800C9A84
/* FE894 80055384 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE898 80055388 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FE89C 8005538C 24040023 */   addiu     $a0, $zero, 0x23
/* FE8A0 80055390 0040A821 */  addu       $s5, $v0, $zero
/* FE8A4 80055394 02A02021 */  addu       $a0, $s5, $zero
/* FE8A8 80055398 24050106 */  addiu      $a1, $zero, 0x106
/* FE8AC 8005539C E6B40010 */  swc1       $f20, 0x10($s5)
/* FE8B0 800553A0 E6B60014 */  swc1       $f22, 0x14($s5)
/* FE8B4 800553A4 E6B80018 */  swc1       $f24, 0x18($s5)
/* FE8B8 800553A8 E6BA0028 */  swc1       $f26, 0x28($s5)
/* FE8BC 800553AC E6BC001C */  swc1       $f28, 0x1C($s5)
/* FE8C0 800553B0 E6BE0020 */  swc1       $f30, 0x20($s5)
/* FE8C4 800553B4 AEA00024 */  sw         $zero, 0x24($s5)
/* FE8C8 800553B8 A6B00074 */  sh         $s0, 0x74($s5)
/* FE8CC 800553BC A6B00076 */  sh         $s0, 0x76($s5)
/* FE8D0 800553C0 A6B00078 */  sh         $s0, 0x78($s5)
/* FE8D4 800553C4 0C00DFE6 */  jal        func_80037F98_ovl3
/* FE8D8 800553C8 A6B0007A */   sh        $s0, 0x7A($s5)
/* FE8DC 800553CC 8EA20004 */  lw         $v0, 0x4($s5)
/* FE8E0 800553D0 A0530067 */  sb         $s3, 0x67($v0)
/* FE8E4 800553D4 8EA30004 */  lw         $v1, 0x4($s5)
/* FE8E8 800553D8 02802021 */  addu       $a0, $s4, $zero
/* FE8EC 800553DC 02402821 */  addu       $a1, $s2, $zero
/* FE8F0 800553E0 90620066 */  lbu        $v0, 0x66($v1)
/* FE8F4 800553E4 24060857 */  addiu      $a2, $zero, 0x857
/* FE8F8 800553E8 00003821 */  addu       $a3, $zero, $zero
/* FE8FC 800553EC 34420023 */  ori        $v0, $v0, 0x23
/* FE900 800553F0 0C02648E */  jal        func_80099238
/* FE904 800553F4 A0620066 */   sb        $v0, 0x66($v1)
/* FE908 800553F8 8EA40004 */  lw         $a0, 0x4($s5)
/* FE90C 800553FC 3C018007 */  lui        $at, %hi(D_8006C1A0_ovl3)
/* FE910 80055400 AC22C1A0 */  sw         $v0, %lo(D_8006C1A0_ovl3)($at)
/* FE914 80055404 0C0284DC */  jal        func_800A1370
/* FE918 80055408 02202821 */   addu      $a1, $s1, $zero
/* FE91C 8005540C 8EA40004 */  lw         $a0, 0x4($s5)
/* FE920 80055410 00021400 */  sll        $v0, $v0, 16
/* FE924 80055414 0C0285CC */  jal        func_800A1730
/* FE928 80055418 00022C03 */   sra       $a1, $v0, 16
/* FE92C 8005541C 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE930 80055420 8C84C1A0 */  lw         $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE934 80055424 24450020 */  addiu      $a1, $v0, 0x20
/* FE938 80055428 24060400 */  addiu      $a2, $zero, 0x400
/* FE93C 8005542C 3C018007 */  lui        $at, %hi(D_8006C1A4_ovl3)
/* FE940 80055430 AC25C1A4 */  sw         $a1, %lo(D_8006C1A4_ovl3)($at)
/* FE944 80055434 0C03006C */  jal        func_800C01B0
/* FE948 80055438 24840010 */   addiu     $a0, $a0, 0x10
/* FE94C 8005543C 3C048007 */  lui        $a0, %hi(D_8006C1A0_ovl3)
/* FE950 80055440 0C0326A1 */  jal        func_800C9A84
/* FE954 80055444 8C84C1A0 */   lw        $a0, %lo(D_8006C1A0_ovl3)($a0)
/* FE958 80055448 8FBF0030 */  lw         $ra, 0x30($sp)
/* FE95C 8005544C 8FB5002C */  lw         $s5, 0x2C($sp)
/* FE960 80055450 8FB40028 */  lw         $s4, 0x28($sp)
/* FE964 80055454 8FB30024 */  lw         $s3, 0x24($sp)
/* FE968 80055458 8FB20020 */  lw         $s2, 0x20($sp)
/* FE96C 8005545C 8FB1001C */  lw         $s1, 0x1C($sp)
/* FE970 80055460 8FB00018 */  lw         $s0, 0x18($sp)
/* FE974 80055464 D7BE0060 */  ldc1       $f30, 0x60($sp)
/* FE978 80055468 D7BC0058 */  ldc1       $f28, 0x58($sp)
/* FE97C 8005546C D7BA0050 */  ldc1       $f26, 0x50($sp)
/* FE980 80055470 D7B80048 */  ldc1       $f24, 0x48($sp)
/* FE984 80055474 D7B60040 */  ldc1       $f22, 0x40($sp)
/* FE988 80055478 D7B40038 */  ldc1       $f20, 0x38($sp)
/* FE98C 8005547C 03E00008 */  jr         $ra
/* FE990 80055480 27BD0068 */   addiu     $sp, $sp, 0x68
/* FE994 80055484 00000000 */  nop
/* FE998 80055488 00000000 */  nop
/* FE99C 8005548C 00000000 */  nop
.size func_800540FC_ovl3, . - func_800540FC_ovl3
