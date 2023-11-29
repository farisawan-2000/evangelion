glabel func_80053168_ovl3
/* FC678 80053168 27BDFFA8 */  addiu      $sp, $sp, -0x58
/* FC67C 8005316C AFBF0034 */  sw         $ra, 0x34($sp)
/* FC680 80053170 AFB40030 */  sw         $s4, 0x30($sp)
/* FC684 80053174 AFB3002C */  sw         $s3, 0x2C($sp)
/* FC688 80053178 AFB20028 */  sw         $s2, 0x28($sp)
/* FC68C 8005317C AFB10024 */  sw         $s1, 0x24($sp)
/* FC690 80053180 AFB00020 */  sw         $s0, 0x20($sp)
/* FC694 80053184 F7BA0050 */  sdc1       $f26, 0x50($sp)
/* FC698 80053188 F7B80048 */  sdc1       $f24, 0x48($sp)
/* FC69C 8005318C F7B60040 */  sdc1       $f22, 0x40($sp)
/* FC6A0 80053190 F7B40038 */  sdc1       $f20, 0x38($sp)
/* FC6A4 80053194 0C00DFA8 */  jal        func_80037EA0_ovl3
/* FC6A8 80053198 24040002 */   addiu     $a0, $zero, 0x2
/* FC6AC 8005319C 00408021 */  addu       $s0, $v0, $zero
/* FC6B0 800531A0 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* FC6B4 800531A4 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* FC6B8 800531A8 44810000 */  mtc1       $at, $f0
/* FC6BC 800531AC 02002021 */  addu       $a0, $s0, $zero
/* FC6C0 800531B0 24050004 */  addiu      $a1, $zero, 0x4
/* FC6C4 800531B4 240200FF */  addiu      $v0, $zero, 0xFF
/* FC6C8 800531B8 AE000010 */  sw         $zero, 0x10($s0)
/* FC6CC 800531BC AE000014 */  sw         $zero, 0x14($s0)
/* FC6D0 800531C0 AE000018 */  sw         $zero, 0x18($s0)
/* FC6D4 800531C4 AE00001C */  sw         $zero, 0x1C($s0)
/* FC6D8 800531C8 AE000020 */  sw         $zero, 0x20($s0)
/* FC6DC 800531CC AE000024 */  sw         $zero, 0x24($s0)
/* FC6E0 800531D0 A6020074 */  sh         $v0, 0x74($s0)
/* FC6E4 800531D4 A6020076 */  sh         $v0, 0x76($s0)
/* FC6E8 800531D8 A6020078 */  sh         $v0, 0x78($s0)
/* FC6EC 800531DC A602007A */  sh         $v0, 0x7A($s0)
/* FC6F0 800531E0 0C00DFE6 */  jal        func_80037F98_ovl3
/* FC6F4 800531E4 E6000028 */   swc1      $f0, 0x28($s0)
/* FC6F8 800531E8 8E020004 */  lw         $v0, 0x4($s0)
/* FC6FC 800531EC A0400067 */  sb         $zero, 0x67($v0)
/* FC700 800531F0 8E030004 */  lw         $v1, 0x4($s0)
/* FC704 800531F4 90620066 */  lbu        $v0, 0x66($v1)
/* FC708 800531F8 34420003 */  ori        $v0, $v0, 0x3
/* FC70C 800531FC A0620066 */  sb         $v0, 0x66($v1)
/* FC710 80053200 8E040004 */  lw         $a0, 0x4($s0)
/* FC714 80053204 0C028703 */  jal        func_800A1C0C
/* FC718 80053208 00002821 */   addu      $a1, $zero, $zero
/* FC71C 8005320C 240405DC */  addiu      $a0, $zero, 0x5DC
/* FC720 80053210 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* FC724 80053214 4481A000 */  mtc1       $at, $f20
/* FC728 80053218 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* FC72C 8005321C 44810000 */  mtc1       $at, $f0
/* FC730 80053220 3C014361 */  lui        $at, (0x43610000 >> 16)
/* FC734 80053224 44811000 */  mtc1       $at, $f2
/* FC738 80053228 3C01C270 */  lui        $at, (0xC2700000 >> 16)
/* FC73C 8005322C 44812000 */  mtc1       $at, $f4
/* FC740 80053230 24050002 */  addiu      $a1, $zero, 0x2
/* FC744 80053234 3C018015 */  lui        $at, %hi(D_8014A064)
/* FC748 80053238 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* FC74C 8005323C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* FC750 80053240 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* FC754 80053244 3C018015 */  lui        $at, %hi(D_8014A070)
/* FC758 80053248 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* FC75C 8005324C 3C018015 */  lui        $at, %hi(D_8014A078)
/* FC760 80053250 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* FC764 80053254 3C018015 */  lui        $at, %hi(D_8014A084)
/* FC768 80053258 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* FC76C 8005325C 3C018015 */  lui        $at, %hi(D_8014A068)
/* FC770 80053260 E434A068 */  swc1       $f20, %lo(D_8014A068)($at)
/* FC774 80053264 3C018015 */  lui        $at, %hi(D_8014A074)
/* FC778 80053268 E434A074 */  swc1       $f20, %lo(D_8014A074)($at)
/* FC77C 8005326C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* FC780 80053270 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* FC784 80053274 3C018015 */  lui        $at, %hi(D_8014A080)
/* FC788 80053278 E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
/* FC78C 8005327C 3C018015 */  lui        $at, %hi(D_8014A088)
/* FC790 80053280 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* FC794 80053284 0C00D925 */  jal        func_80036494_ovl3
/* FC798 80053288 24060082 */   addiu     $a2, $zero, 0x82
/* FC79C 8005328C 00409021 */  addu       $s2, $v0, $zero
/* FC7A0 80053290 8E44000C */  lw         $a0, 0xC($s2)
/* FC7A4 80053294 3C064198 */  lui        $a2, (0x41980000 >> 16)
/* FC7A8 80053298 4407A000 */  mfc1       $a3, $f20
/* FC7AC 8005329C 00000000 */  nop
/* FC7B0 800532A0 0C02915B */  jal        func_800A456C
/* FC7B4 800532A4 00002821 */   addu      $a1, $zero, $zero
/* FC7B8 800532A8 8E44000C */  lw         $a0, 0xC($s2)
/* FC7BC 800532AC 24050040 */  addiu      $a1, $zero, 0x40
/* FC7C0 800532B0 0C028D89 */  jal        func_800A3624
/* FC7C4 800532B4 24060040 */   addiu     $a2, $zero, 0x40
/* FC7C8 800532B8 8E42000C */  lw         $v0, 0xC($s2)
/* FC7CC 800532BC 2410004A */  addiu      $s0, $zero, 0x4A
/* FC7D0 800532C0 A450001C */  sh         $s0, 0x1C($v0)
/* FC7D4 800532C4 8E43000C */  lw         $v1, 0xC($s2)
/* FC7D8 800532C8 240405DB */  addiu      $a0, $zero, 0x5DB
/* FC7DC 800532CC 9462001E */  lhu        $v0, 0x1E($v1)
/* FC7E0 800532D0 24050002 */  addiu      $a1, $zero, 0x2
/* FC7E4 800532D4 24060083 */  addiu      $a2, $zero, 0x83
/* FC7E8 800532D8 34420104 */  ori        $v0, $v0, 0x104
/* FC7EC 800532DC 0C00D925 */  jal        func_80036494_ovl3
/* FC7F0 800532E0 A462001E */   sh        $v0, 0x1E($v1)
/* FC7F4 800532E4 00409021 */  addu       $s2, $v0, $zero
/* FC7F8 800532E8 8E44000C */  lw         $a0, 0xC($s2)
/* FC7FC 800532EC 8C82000C */  lw         $v0, 0xC($a0)
/* FC800 800532F0 94450000 */  lhu        $a1, 0x0($v0)
/* FC804 800532F4 00003021 */  addu       $a2, $zero, $zero
/* FC808 800532F8 0C02912A */  jal        func_800A44A8
/* FC80C 800532FC 00052842 */   srl       $a1, $a1, 1
/* FC810 80053300 8E44000C */  lw         $a0, 0xC($s2)
/* FC814 80053304 3C064001 */  lui        $a2, (0x400147AE >> 16)
/* FC818 80053308 34C647AE */  ori        $a2, $a2, (0x400147AE & 0xFFFF)
/* FC81C 8005330C 3C074000 */  lui        $a3, (0x40000000 >> 16)
/* FC820 80053310 0C02915B */  jal        func_800A456C
/* FC824 80053314 00002821 */   addu      $a1, $zero, $zero
/* FC828 80053318 8E44000C */  lw         $a0, 0xC($s2)
/* FC82C 8005331C 24050280 */  addiu      $a1, $zero, 0x280
/* FC830 80053320 0C028D89 */  jal        func_800A3624
/* FC834 80053324 24060280 */   addiu     $a2, $zero, 0x280
/* FC838 80053328 8E42000C */  lw         $v0, 0xC($s2)
/* FC83C 8005332C A450001C */  sh         $s0, 0x1C($v0)
/* FC840 80053330 8E43000C */  lw         $v1, 0xC($s2)
/* FC844 80053334 240405DD */  addiu      $a0, $zero, 0x5DD
/* FC848 80053338 9462001E */  lhu        $v0, 0x1E($v1)
/* FC84C 8005333C 24050001 */  addiu      $a1, $zero, 0x1
/* FC850 80053340 24060088 */  addiu      $a2, $zero, 0x88
/* FC854 80053344 34420104 */  ori        $v0, $v0, 0x104
/* FC858 80053348 0C00D925 */  jal        func_80036494_ovl3
/* FC85C 8005334C A462001E */   sh        $v0, 0x1E($v1)
/* FC860 80053350 00409021 */  addu       $s2, $v0, $zero
/* FC864 80053354 8E44000C */  lw         $a0, 0xC($s2)
/* FC868 80053358 240503C4 */  addiu      $a1, $zero, 0x3C4
/* FC86C 8005335C 0C028D89 */  jal        func_800A3624
/* FC870 80053360 24060078 */   addiu     $a2, $zero, 0x78
/* FC874 80053364 8E42000C */  lw         $v0, 0xC($s2)
/* FC878 80053368 2410004B */  addiu      $s0, $zero, 0x4B
/* FC87C 8005336C A450001C */  sh         $s0, 0x1C($v0)
/* FC880 80053370 8E43000C */  lw         $v1, 0xC($s2)
/* FC884 80053374 9462001E */  lhu        $v0, 0x1E($v1)
/* FC888 80053378 34420104 */  ori        $v0, $v0, 0x104
/* FC88C 8005337C A462001E */  sh         $v0, 0x1E($v1)
/* FC890 80053380 8E44000C */  lw         $a0, 0xC($s2)
/* FC894 80053384 0C00DE7C */  jal        func_800379F0_ovl3
/* FC898 80053388 24050001 */   addiu     $a1, $zero, 0x1
/* FC89C 8005338C 8E44000C */  lw         $a0, 0xC($s2)
/* FC8A0 80053390 00002821 */  addu       $a1, $zero, $zero
/* FC8A4 80053394 2442FFFF */  addiu      $v0, $v0, -0x1
/* FC8A8 80053398 0C00DE6C */  jal        func_800379B0_ovl3
/* FC8AC 8005339C 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FC8B0 800533A0 240405DE */  addiu      $a0, $zero, 0x5DE
/* FC8B4 800533A4 24050001 */  addiu      $a1, $zero, 0x1
/* FC8B8 800533A8 0C00D925 */  jal        func_80036494_ovl3
/* FC8BC 800533AC 24060089 */   addiu     $a2, $zero, 0x89
/* FC8C0 800533B0 00409021 */  addu       $s2, $v0, $zero
/* FC8C4 800533B4 8E44000C */  lw         $a0, 0xC($s2)
/* FC8C8 800533B8 24050068 */  addiu      $a1, $zero, 0x68
/* FC8CC 800533BC 0C028D89 */  jal        func_800A3624
/* FC8D0 800533C0 240600F8 */   addiu     $a2, $zero, 0xF8
/* FC8D4 800533C4 8E42000C */  lw         $v0, 0xC($s2)
/* FC8D8 800533C8 A450001C */  sh         $s0, 0x1C($v0)
/* FC8DC 800533CC 8E43000C */  lw         $v1, 0xC($s2)
/* FC8E0 800533D0 9462001E */  lhu        $v0, 0x1E($v1)
/* FC8E4 800533D4 34420104 */  ori        $v0, $v0, 0x104
/* FC8E8 800533D8 A462001E */  sh         $v0, 0x1E($v1)
/* FC8EC 800533DC 8E44000C */  lw         $a0, 0xC($s2)
/* FC8F0 800533E0 0C00DE7C */  jal        func_800379F0_ovl3
/* FC8F4 800533E4 24050001 */   addiu     $a1, $zero, 0x1
/* FC8F8 800533E8 8E44000C */  lw         $a0, 0xC($s2)
/* FC8FC 800533EC 00002821 */  addu       $a1, $zero, $zero
/* FC900 800533F0 2442FFFF */  addiu      $v0, $v0, -0x1
/* FC904 800533F4 0C00DE6C */  jal        func_800379B0_ovl3
/* FC908 800533F8 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FC90C 800533FC 240405DF */  addiu      $a0, $zero, 0x5DF
/* FC910 80053400 24050001 */  addiu      $a1, $zero, 0x1
/* FC914 80053404 0C00D925 */  jal        func_80036494_ovl3
/* FC918 80053408 2406008A */   addiu     $a2, $zero, 0x8A
/* FC91C 8005340C 00409021 */  addu       $s2, $v0, $zero
/* FC920 80053410 8E44000C */  lw         $a0, 0xC($s2)
/* FC924 80053414 240500E0 */  addiu      $a1, $zero, 0xE0
/* FC928 80053418 0C028D89 */  jal        func_800A3624
/* FC92C 8005341C 24060070 */   addiu     $a2, $zero, 0x70
/* FC930 80053420 8E42000C */  lw         $v0, 0xC($s2)
/* FC934 80053424 A450001C */  sh         $s0, 0x1C($v0)
/* FC938 80053428 8E43000C */  lw         $v1, 0xC($s2)
/* FC93C 8005342C 9462001E */  lhu        $v0, 0x1E($v1)
/* FC940 80053430 34420104 */  ori        $v0, $v0, 0x104
/* FC944 80053434 A462001E */  sh         $v0, 0x1E($v1)
/* FC948 80053438 8E44000C */  lw         $a0, 0xC($s2)
/* FC94C 8005343C 0C00DE7C */  jal        func_800379F0_ovl3
/* FC950 80053440 24050001 */   addiu     $a1, $zero, 0x1
/* FC954 80053444 8E44000C */  lw         $a0, 0xC($s2)
/* FC958 80053448 00002821 */  addu       $a1, $zero, $zero
/* FC95C 8005344C 2442FFFF */  addiu      $v0, $v0, -0x1
/* FC960 80053450 0C00DE6C */  jal        func_800379B0_ovl3
/* FC964 80053454 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FC968 80053458 240405E0 */  addiu      $a0, $zero, 0x5E0
/* FC96C 8005345C 24050001 */  addiu      $a1, $zero, 0x1
/* FC970 80053460 0C00D925 */  jal        func_80036494_ovl3
/* FC974 80053464 2406008B */   addiu     $a2, $zero, 0x8B
/* FC978 80053468 00409021 */  addu       $s2, $v0, $zero
/* FC97C 8005346C 8E44000C */  lw         $a0, 0xC($s2)
/* FC980 80053470 2405045C */  addiu      $a1, $zero, 0x45C
/* FC984 80053474 0C028D89 */  jal        func_800A3624
/* FC988 80053478 240600C0 */   addiu     $a2, $zero, 0xC0
/* FC98C 8005347C 8E42000C */  lw         $v0, 0xC($s2)
/* FC990 80053480 A450001C */  sh         $s0, 0x1C($v0)
/* FC994 80053484 8E43000C */  lw         $v1, 0xC($s2)
/* FC998 80053488 9462001E */  lhu        $v0, 0x1E($v1)
/* FC99C 8005348C 34420104 */  ori        $v0, $v0, 0x104
/* FC9A0 80053490 A462001E */  sh         $v0, 0x1E($v1)
/* FC9A4 80053494 8E44000C */  lw         $a0, 0xC($s2)
/* FC9A8 80053498 0C00DE7C */  jal        func_800379F0_ovl3
/* FC9AC 8005349C 24050001 */   addiu     $a1, $zero, 0x1
/* FC9B0 800534A0 8E44000C */  lw         $a0, 0xC($s2)
/* FC9B4 800534A4 00002821 */  addu       $a1, $zero, $zero
/* FC9B8 800534A8 2442FFFF */  addiu      $v0, $v0, -0x1
/* FC9BC 800534AC 0C00DE6C */  jal        func_800379B0_ovl3
/* FC9C0 800534B0 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FC9C4 800534B4 240405E1 */  addiu      $a0, $zero, 0x5E1
/* FC9C8 800534B8 24050001 */  addiu      $a1, $zero, 0x1
/* FC9CC 800534BC 0C00D925 */  jal        func_80036494_ovl3
/* FC9D0 800534C0 2406008C */   addiu     $a2, $zero, 0x8C
/* FC9D4 800534C4 00409021 */  addu       $s2, $v0, $zero
/* FC9D8 800534C8 8E44000C */  lw         $a0, 0xC($s2)
/* FC9DC 800534CC 24050090 */  addiu      $a1, $zero, 0x90
/* FC9E0 800534D0 0C028D89 */  jal        func_800A3624
/* FC9E4 800534D4 24060094 */   addiu     $a2, $zero, 0x94
/* FC9E8 800534D8 8E42000C */  lw         $v0, 0xC($s2)
/* FC9EC 800534DC A450001C */  sh         $s0, 0x1C($v0)
/* FC9F0 800534E0 8E43000C */  lw         $v1, 0xC($s2)
/* FC9F4 800534E4 9462001E */  lhu        $v0, 0x1E($v1)
/* FC9F8 800534E8 34420104 */  ori        $v0, $v0, 0x104
/* FC9FC 800534EC A462001E */  sh         $v0, 0x1E($v1)
/* FCA00 800534F0 8E44000C */  lw         $a0, 0xC($s2)
/* FCA04 800534F4 00009821 */  addu       $s3, $zero, $zero
/* FCA08 800534F8 0C00DE7C */  jal        func_800379F0_ovl3
/* FCA0C 800534FC 24050001 */   addiu     $a1, $zero, 0x1
/* FCA10 80053500 8E44000C */  lw         $a0, 0xC($s2)
/* FCA14 80053504 00002821 */  addu       $a1, $zero, $zero
/* FCA18 80053508 2442FFFF */  addiu      $v0, $v0, -0x1
/* FCA1C 8005350C 0C00DE6C */  jal        func_800379B0_ovl3
/* FCA20 80053510 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FCA24 80053514 327000FF */  andi       $s0, $s3, 0xFF
.L80053518_ovl3:
/* FCA28 80053518 26040206 */  addiu      $a0, $s0, 0x206
/* FCA2C 8005351C 24050002 */  addiu      $a1, $zero, 0x2
/* FCA30 80053520 26110077 */  addiu      $s1, $s0, 0x77
/* FCA34 80053524 3231FFFF */  andi       $s1, $s1, 0xFFFF
/* FCA38 80053528 0C00D925 */  jal        func_80036494_ovl3
/* FCA3C 8005352C 02203021 */   addu      $a2, $s1, $zero
/* FCA40 80053530 00409021 */  addu       $s2, $v0, $zero
/* FCA44 80053534 8E44000C */  lw         $a0, 0xC($s2)
/* FCA48 80053538 8C82000C */  lw         $v0, 0xC($a0)
/* FCA4C 8005353C 94450000 */  lhu        $a1, 0x0($v0)
/* FCA50 80053540 94460002 */  lhu        $a2, 0x2($v0)
/* FCA54 80053544 00052842 */  srl        $a1, $a1, 1
/* FCA58 80053548 0C02912A */  jal        func_800A44A8
/* FCA5C 8005354C 00063042 */   srl       $a2, $a2, 1
/* FCA60 80053550 8E44000C */  lw         $a0, 0xC($s2)
/* FCA64 80053554 24050280 */  addiu      $a1, $zero, 0x280
/* FCA68 80053558 0C028D89 */  jal        func_800A3624
/* FCA6C 8005355C 240601E0 */   addiu     $a2, $zero, 0x1E0
/* FCA70 80053560 8E43000C */  lw         $v1, 0xC($s2)
/* FCA74 80053564 2402004B */  addiu      $v0, $zero, 0x4B
/* FCA78 80053568 A462001C */  sh         $v0, 0x1C($v1)
/* FCA7C 8005356C 8E43000C */  lw         $v1, 0xC($s2)
/* FCA80 80053570 9462001E */  lhu        $v0, 0x1E($v1)
/* FCA84 80053574 02202021 */  addu       $a0, $s1, $zero
/* FCA88 80053578 2605007C */  addiu      $a1, $s0, 0x7C
/* FCA8C 8005357C 34420004 */  ori        $v0, $v0, 0x4
/* FCA90 80053580 0C00DD19 */  jal        func_80037464_ovl3
/* FCA94 80053584 A462001E */   sh        $v0, 0x1E($v1)
/* FCA98 80053588 00409021 */  addu       $s2, $v0, $zero
/* FCA9C 8005358C 8E44000C */  lw         $a0, 0xC($s2)
/* FCAA0 80053590 8C82000C */  lw         $v0, 0xC($a0)
/* FCAA4 80053594 94450000 */  lhu        $a1, 0x0($v0)
/* FCAA8 80053598 94460002 */  lhu        $a2, 0x2($v0)
/* FCAAC 8005359C 00052842 */  srl        $a1, $a1, 1
/* FCAB0 800535A0 0C02912A */  jal        func_800A44A8
/* FCAB4 800535A4 00063042 */   srl       $a2, $a2, 1
/* FCAB8 800535A8 8E44000C */  lw         $a0, 0xC($s2)
/* FCABC 800535AC 24050280 */  addiu      $a1, $zero, 0x280
/* FCAC0 800535B0 0C028D89 */  jal        func_800A3624
/* FCAC4 800535B4 240601E0 */   addiu     $a2, $zero, 0x1E0
/* FCAC8 800535B8 24020080 */  addiu      $v0, $zero, 0x80
/* FCACC 800535BC AFA20010 */  sw         $v0, 0x10($sp)
/* FCAD0 800535C0 8E44000C */  lw         $a0, 0xC($s2)
/* FCAD4 800535C4 240500FF */  addiu      $a1, $zero, 0xFF
/* FCAD8 800535C8 240600FF */  addiu      $a2, $zero, 0xFF
/* FCADC 800535CC 0C028E41 */  jal        func_800A3904
/* FCAE0 800535D0 240700FF */   addiu     $a3, $zero, 0xFF
/* FCAE4 800535D4 8E43000C */  lw         $v1, 0xC($s2)
/* FCAE8 800535D8 2402004A */  addiu      $v0, $zero, 0x4A
/* FCAEC 800535DC A462001C */  sh         $v0, 0x1C($v1)
/* FCAF0 800535E0 8E43000C */  lw         $v1, 0xC($s2)
/* FCAF4 800535E4 9462001E */  lhu        $v0, 0x1E($v1)
/* FCAF8 800535E8 26730001 */  addiu      $s3, $s3, 0x1
/* FCAFC 800535EC 02202021 */  addu       $a0, $s1, $zero
/* FCB00 800535F0 34420004 */  ori        $v0, $v0, 0x4
/* FCB04 800535F4 0C00D8C1 */  jal        func_80036304_ovl3
/* FCB08 800535F8 A462001E */   sh        $v0, 0x1E($v1)
/* FCB0C 800535FC 8C44000C */  lw         $a0, 0xC($v0)
/* FCB10 80053600 24050001 */  addiu      $a1, $zero, 0x1
/* FCB14 80053604 0C00DE72 */  jal        func_800379C8_ovl3
/* FCB18 80053608 00003021 */   addu      $a2, $zero, $zero
/* FCB1C 8005360C 326200FF */  andi       $v0, $s3, 0xFF
/* FCB20 80053610 2C420005 */  sltiu      $v0, $v0, 0x5
/* FCB24 80053614 1440FFC0 */  bnez       $v0, .L80053518_ovl3
/* FCB28 80053618 327000FF */   andi      $s0, $s3, 0xFF
/* FCB2C 8005361C 240405E2 */  addiu      $a0, $zero, 0x5E2
/* FCB30 80053620 24050002 */  addiu      $a1, $zero, 0x2
/* FCB34 80053624 0C00D925 */  jal        func_80036494_ovl3
/* FCB38 80053628 24060054 */   addiu     $a2, $zero, 0x54
/* FCB3C 8005362C 00409021 */  addu       $s2, $v0, $zero
/* FCB40 80053630 3C014000 */  lui        $at, (0x40000000 >> 16)
/* FCB44 80053634 4481A000 */  mtc1       $at, $f20
/* FCB48 80053638 8E44000C */  lw         $a0, 0xC($s2)
/* FCB4C 8005363C 4406A000 */  mfc1       $a2, $f20
/* FCB50 80053640 4407A000 */  mfc1       $a3, $f20
/* FCB54 80053644 00000000 */  nop
/* FCB58 80053648 0C02915B */  jal        func_800A456C
/* FCB5C 8005364C 00002821 */   addu      $a1, $zero, $zero
/* FCB60 80053650 8E44000C */  lw         $a0, 0xC($s2)
/* FCB64 80053654 24050040 */  addiu      $a1, $zero, 0x40
/* FCB68 80053658 0C028D89 */  jal        func_800A3624
/* FCB6C 8005365C 24060040 */   addiu     $a2, $zero, 0x40
/* FCB70 80053660 8E43000C */  lw         $v1, 0xC($s2)
/* FCB74 80053664 00009821 */  addu       $s3, $zero, $zero
/* FCB78 80053668 9462001E */  lhu        $v0, 0x1E($v1)
/* FCB7C 8005366C 2414000E */  addiu      $s4, $zero, 0xE
/* FCB80 80053670 4600A686 */  mov.s      $f26, $f20
/* FCB84 80053674 34420004 */  ori        $v0, $v0, 0x4
/* FCB88 80053678 A462001E */  sh         $v0, 0x1E($v1)
/* FCB8C 8005367C 327100FF */  andi       $s1, $s3, 0xFF
.L80053680_ovl3:
/* FCB90 80053680 263005D1 */  addiu      $s0, $s1, 0x5D1
/* FCB94 80053684 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* FCB98 80053688 02002021 */  addu       $a0, $s0, $zero
/* FCB9C 8005368C 24050002 */  addiu      $a1, $zero, 0x2
/* FCBA0 80053690 0C00D925 */  jal        func_80036494_ovl3
/* FCBA4 80053694 26260057 */   addiu     $a2, $s1, 0x57
/* FCBA8 80053698 00409021 */  addu       $s2, $v0, $zero
/* FCBAC 8005369C 8E44000C */  lw         $a0, 0xC($s2)
/* FCBB0 800536A0 3C073FC0 */  lui        $a3, (0x3FC00000 >> 16)
/* FCBB4 800536A4 4406D000 */  mfc1       $a2, $f26
/* FCBB8 800536A8 00000000 */  nop
/* FCBBC 800536AC 0C02915B */  jal        func_800A456C
/* FCBC0 800536B0 00002821 */   addu      $a1, $zero, $zero
/* FCBC4 800536B4 8E44000C */  lw         $a0, 0xC($s2)
/* FCBC8 800536B8 8C82000C */  lw         $v0, 0xC($a0)
/* FCBCC 800536BC 94450000 */  lhu        $a1, 0x0($v0)
/* FCBD0 800536C0 94460002 */  lhu        $a2, 0x2($v0)
/* FCBD4 800536C4 00052842 */  srl        $a1, $a1, 1
/* FCBD8 800536C8 0C02912A */  jal        func_800A44A8
/* FCBDC 800536CC 00063042 */   srl       $a2, $a2, 1
/* FCBE0 800536D0 8E44000C */  lw         $a0, 0xC($s2)
/* FCBE4 800536D4 24050280 */  addiu      $a1, $zero, 0x280
/* FCBE8 800536D8 0C028D89 */  jal        func_800A3624
/* FCBEC 800536DC 240601A0 */   addiu     $a2, $zero, 0x1A0
/* FCBF0 800536E0 8E42000C */  lw         $v0, 0xC($s2)
/* FCBF4 800536E4 A454001C */  sh         $s4, 0x1C($v0)
/* FCBF8 800536E8 8E43000C */  lw         $v1, 0xC($s2)
/* FCBFC 800536EC 02002021 */  addu       $a0, $s0, $zero
/* FCC00 800536F0 9462001E */  lhu        $v0, 0x1E($v1)
/* FCC04 800536F4 24050002 */  addiu      $a1, $zero, 0x2
/* FCC08 800536F8 26260062 */  addiu      $a2, $s1, 0x62
/* FCC0C 800536FC 34420004 */  ori        $v0, $v0, 0x4
/* FCC10 80053700 0C00D925 */  jal        func_80036494_ovl3
/* FCC14 80053704 A462001E */   sh        $v0, 0x1E($v1)
/* FCC18 80053708 00409021 */  addu       $s2, $v0, $zero
/* FCC1C 8005370C 8E44000C */  lw         $a0, 0xC($s2)
/* FCC20 80053710 3C073F4C */  lui        $a3, (0x3F4CCCCD >> 16)
/* FCC24 80053714 34E7CCCD */  ori        $a3, $a3, (0x3F4CCCCD & 0xFFFF)
/* FCC28 80053718 4406D000 */  mfc1       $a2, $f26
/* FCC2C 8005371C 00000000 */  nop
/* FCC30 80053720 0C02915B */  jal        func_800A456C
/* FCC34 80053724 00002821 */   addu      $a1, $zero, $zero
/* FCC38 80053728 8E44000C */  lw         $a0, 0xC($s2)
/* FCC3C 8005372C 8C82000C */  lw         $v0, 0xC($a0)
/* FCC40 80053730 94450000 */  lhu        $a1, 0x0($v0)
/* FCC44 80053734 94460002 */  lhu        $a2, 0x2($v0)
/* FCC48 80053738 00052842 */  srl        $a1, $a1, 1
/* FCC4C 8005373C 0C02912A */  jal        func_800A44A8
/* FCC50 80053740 00063042 */   srl       $a2, $a2, 1
/* FCC54 80053744 8E44000C */  lw         $a0, 0xC($s2)
/* FCC58 80053748 24050280 */  addiu      $a1, $zero, 0x280
/* FCC5C 8005374C 0C028D89 */  jal        func_800A3624
/* FCC60 80053750 24060320 */   addiu     $a2, $zero, 0x320
/* FCC64 80053754 241100C0 */  addiu      $s1, $zero, 0xC0
/* FCC68 80053758 AFB10010 */  sw         $s1, 0x10($sp)
/* FCC6C 8005375C 8E44000C */  lw         $a0, 0xC($s2)
/* FCC70 80053760 240500FF */  addiu      $a1, $zero, 0xFF
/* FCC74 80053764 240600FF */  addiu      $a2, $zero, 0xFF
/* FCC78 80053768 0C028E41 */  jal        func_800A3904
/* FCC7C 8005376C 240700FF */   addiu     $a3, $zero, 0xFF
/* FCC80 80053770 8E42000C */  lw         $v0, 0xC($s2)
/* FCC84 80053774 A454001C */  sh         $s4, 0x1C($v0)
/* FCC88 80053778 8E43000C */  lw         $v1, 0xC($s2)
/* FCC8C 8005377C 9462001E */  lhu        $v0, 0x1E($v1)
/* FCC90 80053780 34420004 */  ori        $v0, $v0, 0x4
/* FCC94 80053784 A462001E */  sh         $v0, 0x1E($v1)
/* FCC98 80053788 8E44000C */  lw         $a0, 0xC($s2)
/* FCC9C 8005378C 8C82000C */  lw         $v0, 0xC($a0)
/* FCCA0 80053790 90430004 */  lbu        $v1, 0x4($v0)
/* FCCA4 80053794 84450000 */  lh         $a1, 0x0($v0)
/* FCCA8 80053798 84460002 */  lh         $a2, 0x2($v0)
/* FCCAC 8005379C 10600002 */  beqz       $v1, .L800537A8_ovl3
/* FCCB0 800537A0 24070002 */   addiu     $a3, $zero, 0x2
/* FCCB4 800537A4 24070001 */  addiu      $a3, $zero, 0x1
.L800537A8_ovl3:
/* FCCB8 800537A8 8C840010 */  lw         $a0, 0x10($a0)
/* FCCBC 800537AC 0C029767 */  jal        func_800A5D9C
/* FCCC0 800537B0 26730001 */   addiu     $s3, $s3, 0x1
/* FCCC4 800537B4 326200FF */  andi       $v0, $s3, 0xFF
/* FCCC8 800537B8 2C420009 */  sltiu      $v0, $v0, 0x9
/* FCCCC 800537BC 5440FFB0 */  bnel       $v0, $zero, .L80053680_ovl3
/* FCCD0 800537C0 327100FF */   andi      $s1, $s3, 0xFF
/* FCCD4 800537C4 240405DA */  addiu      $a0, $zero, 0x5DA
/* FCCD8 800537C8 24050002 */  addiu      $a1, $zero, 0x2
/* FCCDC 800537CC 0C00D925 */  jal        func_80036494_ovl3
/* FCCE0 800537D0 24060060 */   addiu     $a2, $zero, 0x60
/* FCCE4 800537D4 00409021 */  addu       $s2, $v0, $zero
/* FCCE8 800537D8 8E44000C */  lw         $a0, 0xC($s2)
/* FCCEC 800537DC 3C013FC0 */  lui        $at, (0x3FC00000 >> 16)
/* FCCF0 800537E0 4481C000 */  mtc1       $at, $f24
/* FCCF4 800537E4 4600D506 */  mov.s      $f20, $f26
/* FCCF8 800537E8 4406A000 */  mfc1       $a2, $f20
/* FCCFC 800537EC 4407C000 */  mfc1       $a3, $f24
/* FCD00 800537F0 00000000 */  nop
/* FCD04 800537F4 0C02915B */  jal        func_800A456C
/* FCD08 800537F8 00002821 */   addu      $a1, $zero, $zero
/* FCD0C 800537FC 8E44000C */  lw         $a0, 0xC($s2)
/* FCD10 80053800 8C82000C */  lw         $v0, 0xC($a0)
/* FCD14 80053804 94450000 */  lhu        $a1, 0x0($v0)
/* FCD18 80053808 94460002 */  lhu        $a2, 0x2($v0)
/* FCD1C 8005380C 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* FCD20 80053810 00052C00 */  sll        $a1, $a1, 16
/* FCD24 80053814 00052C03 */  sra        $a1, $a1, 16
/* FCD28 80053818 0C02912A */  jal        func_800A44A8
/* FCD2C 8005381C 00063042 */   srl       $a2, $a2, 1
/* FCD30 80053820 8E44000C */  lw         $a0, 0xC($s2)
/* FCD34 80053824 240504FC */  addiu      $a1, $zero, 0x4FC
/* FCD38 80053828 0C028D89 */  jal        func_800A3624
/* FCD3C 8005382C 240601F4 */   addiu     $a2, $zero, 0x1F4
/* FCD40 80053830 8E42000C */  lw         $v0, 0xC($s2)
/* FCD44 80053834 2410000E */  addiu      $s0, $zero, 0xE
/* FCD48 80053838 A450001C */  sh         $s0, 0x1C($v0)
/* FCD4C 8005383C 8E43000C */  lw         $v1, 0xC($s2)
/* FCD50 80053840 240405DA */  addiu      $a0, $zero, 0x5DA
/* FCD54 80053844 9462001E */  lhu        $v0, 0x1E($v1)
/* FCD58 80053848 24050002 */  addiu      $a1, $zero, 0x2
/* FCD5C 8005384C 2406006B */  addiu      $a2, $zero, 0x6B
/* FCD60 80053850 34420004 */  ori        $v0, $v0, 0x4
/* FCD64 80053854 0C00D925 */  jal        func_80036494_ovl3
/* FCD68 80053858 A462001E */   sh        $v0, 0x1E($v1)
/* FCD6C 8005385C 00409021 */  addu       $s2, $v0, $zero
/* FCD70 80053860 8E44000C */  lw         $a0, 0xC($s2)
/* FCD74 80053864 3C013F4C */  lui        $at, (0x3F4CCCCD >> 16)
/* FCD78 80053868 3421CCCD */  ori        $at, $at, (0x3F4CCCCD & 0xFFFF)
/* FCD7C 8005386C 4481B000 */  mtc1       $at, $f22
/* FCD80 80053870 4406A000 */  mfc1       $a2, $f20
/* FCD84 80053874 4407B000 */  mfc1       $a3, $f22
/* FCD88 80053878 00000000 */  nop
/* FCD8C 8005387C 0C02915B */  jal        func_800A456C
/* FCD90 80053880 00002821 */   addu      $a1, $zero, $zero
/* FCD94 80053884 8E44000C */  lw         $a0, 0xC($s2)
/* FCD98 80053888 8C82000C */  lw         $v0, 0xC($a0)
/* FCD9C 8005388C 94450000 */  lhu        $a1, 0x0($v0)
/* FCDA0 80053890 94460002 */  lhu        $a2, 0x2($v0)
/* FCDA4 80053894 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* FCDA8 80053898 00052C00 */  sll        $a1, $a1, 16
/* FCDAC 8005389C 00052C03 */  sra        $a1, $a1, 16
/* FCDB0 800538A0 0C02912A */  jal        func_800A44A8
/* FCDB4 800538A4 00063042 */   srl       $a2, $a2, 1
/* FCDB8 800538A8 8E44000C */  lw         $a0, 0xC($s2)
/* FCDBC 800538AC 240504FC */  addiu      $a1, $zero, 0x4FC
/* FCDC0 800538B0 0C028D89 */  jal        func_800A3624
/* FCDC4 800538B4 24060300 */   addiu     $a2, $zero, 0x300
/* FCDC8 800538B8 240200C0 */  addiu      $v0, $zero, 0xC0
/* FCDCC 800538BC AFA20010 */  sw         $v0, 0x10($sp)
/* FCDD0 800538C0 8E44000C */  lw         $a0, 0xC($s2)
/* FCDD4 800538C4 240500FF */  addiu      $a1, $zero, 0xFF
/* FCDD8 800538C8 240600FF */  addiu      $a2, $zero, 0xFF
/* FCDDC 800538CC 0C028E41 */  jal        func_800A3904
/* FCDE0 800538D0 240700FF */   addiu     $a3, $zero, 0xFF
/* FCDE4 800538D4 8E42000C */  lw         $v0, 0xC($s2)
/* FCDE8 800538D8 A450001C */  sh         $s0, 0x1C($v0)
/* FCDEC 800538DC 8E43000C */  lw         $v1, 0xC($s2)
/* FCDF0 800538E0 9462001E */  lhu        $v0, 0x1E($v1)
/* FCDF4 800538E4 34420004 */  ori        $v0, $v0, 0x4
/* FCDF8 800538E8 A462001E */  sh         $v0, 0x1E($v1)
/* FCDFC 800538EC 8E44000C */  lw         $a0, 0xC($s2)
/* FCE00 800538F0 8C82000C */  lw         $v0, 0xC($a0)
/* FCE04 800538F4 90430004 */  lbu        $v1, 0x4($v0)
/* FCE08 800538F8 84450000 */  lh         $a1, 0x0($v0)
/* FCE0C 800538FC 84460002 */  lh         $a2, 0x2($v0)
/* FCE10 80053900 10600002 */  beqz       $v1, .L8005390C_ovl3
/* FCE14 80053904 24070002 */   addiu     $a3, $zero, 0x2
/* FCE18 80053908 24070001 */  addiu      $a3, $zero, 0x1
.L8005390C_ovl3:
/* FCE1C 8005390C 0C029767 */  jal        func_800A5D9C
/* FCE20 80053910 8C840010 */   lw        $a0, 0x10($a0)
/* FCE24 80053914 240405E3 */  addiu      $a0, $zero, 0x5E3
/* FCE28 80053918 24050002 */  addiu      $a1, $zero, 0x2
/* FCE2C 8005391C 0C00D925 */  jal        func_80036494_ovl3
/* FCE30 80053920 24060061 */   addiu     $a2, $zero, 0x61
/* FCE34 80053924 00409021 */  addu       $s2, $v0, $zero
/* FCE38 80053928 8E44000C */  lw         $a0, 0xC($s2)
/* FCE3C 8005392C 4406A000 */  mfc1       $a2, $f20
/* FCE40 80053930 4407C000 */  mfc1       $a3, $f24
/* FCE44 80053934 00000000 */  nop
/* FCE48 80053938 0C02915B */  jal        func_800A456C
/* FCE4C 8005393C 00002821 */   addu      $a1, $zero, $zero
/* FCE50 80053940 8E44000C */  lw         $a0, 0xC($s2)
/* FCE54 80053944 8C82000C */  lw         $v0, 0xC($a0)
/* FCE58 80053948 94460002 */  lhu        $a2, 0x2($v0)
/* FCE5C 8005394C 00002821 */  addu       $a1, $zero, $zero
/* FCE60 80053950 0C02912A */  jal        func_800A44A8
/* FCE64 80053954 00063042 */   srl       $a2, $a2, 1
/* FCE68 80053958 8E44000C */  lw         $a0, 0xC($s2)
/* FCE6C 8005395C 24050040 */  addiu      $a1, $zero, 0x40
/* FCE70 80053960 0C028D89 */  jal        func_800A3624
/* FCE74 80053964 24060168 */   addiu     $a2, $zero, 0x168
/* FCE78 80053968 8E42000C */  lw         $v0, 0xC($s2)
/* FCE7C 8005396C A450001C */  sh         $s0, 0x1C($v0)
/* FCE80 80053970 8E43000C */  lw         $v1, 0xC($s2)
/* FCE84 80053974 240405E3 */  addiu      $a0, $zero, 0x5E3
/* FCE88 80053978 9462001E */  lhu        $v0, 0x1E($v1)
/* FCE8C 8005397C 24050002 */  addiu      $a1, $zero, 0x2
/* FCE90 80053980 2406006C */  addiu      $a2, $zero, 0x6C
/* FCE94 80053984 34420004 */  ori        $v0, $v0, 0x4
/* FCE98 80053988 0C00D925 */  jal        func_80036494_ovl3
/* FCE9C 8005398C A462001E */   sh        $v0, 0x1E($v1)
/* FCEA0 80053990 00409021 */  addu       $s2, $v0, $zero
/* FCEA4 80053994 8E44000C */  lw         $a0, 0xC($s2)
/* FCEA8 80053998 4406A000 */  mfc1       $a2, $f20
/* FCEAC 8005399C 4407B000 */  mfc1       $a3, $f22
/* FCEB0 800539A0 00000000 */  nop
/* FCEB4 800539A4 0C02915B */  jal        func_800A456C
/* FCEB8 800539A8 00002821 */   addu      $a1, $zero, $zero
/* FCEBC 800539AC 8E44000C */  lw         $a0, 0xC($s2)
/* FCEC0 800539B0 8C82000C */  lw         $v0, 0xC($a0)
/* FCEC4 800539B4 94460002 */  lhu        $a2, 0x2($v0)
/* FCEC8 800539B8 00002821 */  addu       $a1, $zero, $zero
/* FCECC 800539BC 0C02912A */  jal        func_800A44A8
/* FCED0 800539C0 00063042 */   srl       $a2, $a2, 1
/* FCED4 800539C4 8E44000C */  lw         $a0, 0xC($s2)
/* FCED8 800539C8 24050040 */  addiu      $a1, $zero, 0x40
/* FCEDC 800539CC 0C028D89 */  jal        func_800A3624
/* FCEE0 800539D0 24060344 */   addiu     $a2, $zero, 0x344
/* FCEE4 800539D4 AFB10010 */  sw         $s1, 0x10($sp)
/* FCEE8 800539D8 8E44000C */  lw         $a0, 0xC($s2)
/* FCEEC 800539DC 240500FF */  addiu      $a1, $zero, 0xFF
/* FCEF0 800539E0 240600FF */  addiu      $a2, $zero, 0xFF
/* FCEF4 800539E4 0C028E41 */  jal        func_800A3904
/* FCEF8 800539E8 240700FF */   addiu     $a3, $zero, 0xFF
/* FCEFC 800539EC 8E42000C */  lw         $v0, 0xC($s2)
/* FCF00 800539F0 A450001C */  sh         $s0, 0x1C($v0)
/* FCF04 800539F4 8E43000C */  lw         $v1, 0xC($s2)
/* FCF08 800539F8 9462001E */  lhu        $v0, 0x1E($v1)
/* FCF0C 800539FC 34420004 */  ori        $v0, $v0, 0x4
/* FCF10 80053A00 A462001E */  sh         $v0, 0x1E($v1)
/* FCF14 80053A04 8E44000C */  lw         $a0, 0xC($s2)
/* FCF18 80053A08 8C82000C */  lw         $v0, 0xC($a0)
/* FCF1C 80053A0C 90430004 */  lbu        $v1, 0x4($v0)
/* FCF20 80053A10 84450000 */  lh         $a1, 0x0($v0)
/* FCF24 80053A14 84460002 */  lh         $a2, 0x2($v0)
/* FCF28 80053A18 10600002 */  beqz       $v1, .L80053A24_ovl3
/* FCF2C 80053A1C 24070002 */   addiu     $a3, $zero, 0x2
/* FCF30 80053A20 24070001 */  addiu      $a3, $zero, 0x1
.L80053A24_ovl3:
/* FCF34 80053A24 0C029767 */  jal        func_800A5D9C
/* FCF38 80053A28 8C840010 */   lw        $a0, 0x10($a0)
/* FCF3C 80053A2C 2404060F */  addiu      $a0, $zero, 0x60F
/* FCF40 80053A30 24050002 */  addiu      $a1, $zero, 0x2
/* FCF44 80053A34 0C00D925 */  jal        func_80036494_ovl3
/* FCF48 80053A38 24060056 */   addiu     $a2, $zero, 0x56
/* FCF4C 80053A3C 00409021 */  addu       $s2, $v0, $zero
/* FCF50 80053A40 8E44000C */  lw         $a0, 0xC($s2)
/* FCF54 80053A44 4406A000 */  mfc1       $a2, $f20
/* FCF58 80053A48 4407A000 */  mfc1       $a3, $f20
/* FCF5C 80053A4C 00000000 */  nop
/* FCF60 80053A50 0C02915B */  jal        func_800A456C
/* FCF64 80053A54 00002821 */   addu      $a1, $zero, $zero
/* FCF68 80053A58 8E44000C */  lw         $a0, 0xC($s2)
/* FCF6C 80053A5C 24050040 */  addiu      $a1, $zero, 0x40
/* FCF70 80053A60 0C028D89 */  jal        func_800A3624
/* FCF74 80053A64 24060040 */   addiu     $a2, $zero, 0x40
/* FCF78 80053A68 8E43000C */  lw         $v1, 0xC($s2)
/* FCF7C 80053A6C 24040613 */  addiu      $a0, $zero, 0x613
/* FCF80 80053A70 9462001E */  lhu        $v0, 0x1E($v1)
/* FCF84 80053A74 24050002 */  addiu      $a1, $zero, 0x2
/* FCF88 80053A78 2406006D */  addiu      $a2, $zero, 0x6D
/* FCF8C 80053A7C 34420004 */  ori        $v0, $v0, 0x4
/* FCF90 80053A80 0C00D925 */  jal        func_80036494_ovl3
/* FCF94 80053A84 A462001E */   sh        $v0, 0x1E($v1)
/* FCF98 80053A88 00409021 */  addu       $s2, $v0, $zero
/* FCF9C 80053A8C 8E44000C */  lw         $a0, 0xC($s2)
/* FCFA0 80053A90 4406A000 */  mfc1       $a2, $f20
/* FCFA4 80053A94 4407A000 */  mfc1       $a3, $f20
/* FCFA8 80053A98 00000000 */  nop
/* FCFAC 80053A9C 0C02915B */  jal        func_800A456C
/* FCFB0 80053AA0 00002821 */   addu      $a1, $zero, $zero
/* FCFB4 80053AA4 8E44000C */  lw         $a0, 0xC($s2)
/* FCFB8 80053AA8 24050040 */  addiu      $a1, $zero, 0x40
/* FCFBC 80053AAC 0C028D89 */  jal        func_800A3624
/* FCFC0 80053AB0 240601F4 */   addiu     $a2, $zero, 0x1F4
/* FCFC4 80053AB4 8E42000C */  lw         $v0, 0xC($s2)
/* FCFC8 80053AB8 A450001C */  sh         $s0, 0x1C($v0)
/* FCFCC 80053ABC 8E43000C */  lw         $v1, 0xC($s2)
/* FCFD0 80053AC0 9462001E */  lhu        $v0, 0x1E($v1)
/* FCFD4 80053AC4 34420004 */  ori        $v0, $v0, 0x4
/* FCFD8 80053AC8 A462001E */  sh         $v0, 0x1E($v1)
/* FCFDC 80053ACC 8E44000C */  lw         $a0, 0xC($s2)
/* FCFE0 80053AD0 00002821 */  addu       $a1, $zero, $zero
/* FCFE4 80053AD4 0C00DE6C */  jal        func_800379B0_ovl3
/* FCFE8 80053AD8 3406D738 */   ori       $a2, $zero, 0xD738
/* FCFEC 80053ADC 24040612 */  addiu      $a0, $zero, 0x612
/* FCFF0 80053AE0 24050002 */  addiu      $a1, $zero, 0x2
/* FCFF4 80053AE4 0C00D925 */  jal        func_80036494_ovl3
/* FCFF8 80053AE8 2406006E */   addiu     $a2, $zero, 0x6E
/* FCFFC 80053AEC 00409021 */  addu       $s2, $v0, $zero
/* FD000 80053AF0 8E44000C */  lw         $a0, 0xC($s2)
/* FD004 80053AF4 4406A000 */  mfc1       $a2, $f20
/* FD008 80053AF8 4407A000 */  mfc1       $a3, $f20
/* FD00C 80053AFC 00000000 */  nop
/* FD010 80053B00 0C02915B */  jal        func_800A456C
/* FD014 80053B04 00002821 */   addu      $a1, $zero, $zero
/* FD018 80053B08 8E44000C */  lw         $a0, 0xC($s2)
/* FD01C 80053B0C 240503C4 */  addiu      $a1, $zero, 0x3C4
/* FD020 80053B10 0C028D89 */  jal        func_800A3624
/* FD024 80053B14 240601F4 */   addiu     $a2, $zero, 0x1F4
/* FD028 80053B18 8E42000C */  lw         $v0, 0xC($s2)
/* FD02C 80053B1C A450001C */  sh         $s0, 0x1C($v0)
/* FD030 80053B20 8E43000C */  lw         $v1, 0xC($s2)
/* FD034 80053B24 9462001E */  lhu        $v0, 0x1E($v1)
/* FD038 80053B28 34420004 */  ori        $v0, $v0, 0x4
/* FD03C 80053B2C A462001E */  sh         $v0, 0x1E($v1)
/* FD040 80053B30 8E44000C */  lw         $a0, 0xC($s2)
/* FD044 80053B34 00002821 */  addu       $a1, $zero, $zero
/* FD048 80053B38 0C00DE6C */  jal        func_800379B0_ovl3
/* FD04C 80053B3C 3406FEBA */   ori       $a2, $zero, 0xFEBA
/* FD050 80053B40 24040610 */  addiu      $a0, $zero, 0x610
/* FD054 80053B44 24050002 */  addiu      $a1, $zero, 0x2
/* FD058 80053B48 0C00D925 */  jal        func_80036494_ovl3
/* FD05C 80053B4C 2406006F */   addiu     $a2, $zero, 0x6F
/* FD060 80053B50 00409021 */  addu       $s2, $v0, $zero
/* FD064 80053B54 8E44000C */  lw         $a0, 0xC($s2)
/* FD068 80053B58 4406A000 */  mfc1       $a2, $f20
/* FD06C 80053B5C 4407A000 */  mfc1       $a3, $f20
/* FD070 80053B60 00000000 */  nop
/* FD074 80053B64 0C02915B */  jal        func_800A456C
/* FD078 80053B68 00002821 */   addu      $a1, $zero, $zero
/* FD07C 80053B6C 8E44000C */  lw         $a0, 0xC($s2)
/* FD080 80053B70 24050040 */  addiu      $a1, $zero, 0x40
/* FD084 80053B74 0C028D89 */  jal        func_800A3624
/* FD088 80053B78 24060040 */   addiu     $a2, $zero, 0x40
/* FD08C 80053B7C 8E42000C */  lw         $v0, 0xC($s2)
/* FD090 80053B80 A450001C */  sh         $s0, 0x1C($v0)
/* FD094 80053B84 8E43000C */  lw         $v1, 0xC($s2)
/* FD098 80053B88 9462001E */  lhu        $v0, 0x1E($v1)
/* FD09C 80053B8C 34420004 */  ori        $v0, $v0, 0x4
/* FD0A0 80053B90 A462001E */  sh         $v0, 0x1E($v1)
/* FD0A4 80053B94 8E44000C */  lw         $a0, 0xC($s2)
/* FD0A8 80053B98 00002821 */  addu       $a1, $zero, $zero
/* FD0AC 80053B9C 0C00DE6C */  jal        func_800379B0_ovl3
/* FD0B0 80053BA0 3406D738 */   ori       $a2, $zero, 0xD738
/* FD0B4 80053BA4 24040611 */  addiu      $a0, $zero, 0x611
/* FD0B8 80053BA8 24050002 */  addiu      $a1, $zero, 0x2
/* FD0BC 80053BAC 0C00D925 */  jal        func_80036494_ovl3
/* FD0C0 80053BB0 24060070 */   addiu     $a2, $zero, 0x70
/* FD0C4 80053BB4 00409021 */  addu       $s2, $v0, $zero
/* FD0C8 80053BB8 8E44000C */  lw         $a0, 0xC($s2)
/* FD0CC 80053BBC 4406A000 */  mfc1       $a2, $f20
/* FD0D0 80053BC0 4407A000 */  mfc1       $a3, $f20
/* FD0D4 80053BC4 00000000 */  nop
/* FD0D8 80053BC8 0C02915B */  jal        func_800A456C
/* FD0DC 80053BCC 00002821 */   addu      $a1, $zero, $zero
/* FD0E0 80053BD0 8E44000C */  lw         $a0, 0xC($s2)
/* FD0E4 80053BD4 24050040 */  addiu      $a1, $zero, 0x40
/* FD0E8 80053BD8 0C028D89 */  jal        func_800A3624
/* FD0EC 80053BDC 24060040 */   addiu     $a2, $zero, 0x40
/* FD0F0 80053BE0 8E42000C */  lw         $v0, 0xC($s2)
/* FD0F4 80053BE4 A450001C */  sh         $s0, 0x1C($v0)
/* FD0F8 80053BE8 8E43000C */  lw         $v1, 0xC($s2)
/* FD0FC 80053BEC 9462001E */  lhu        $v0, 0x1E($v1)
/* FD100 80053BF0 34420004 */  ori        $v0, $v0, 0x4
/* FD104 80053BF4 A462001E */  sh         $v0, 0x1E($v1)
/* FD108 80053BF8 8E44000C */  lw         $a0, 0xC($s2)
/* FD10C 80053BFC 00002821 */  addu       $a1, $zero, $zero
/* FD110 80053C00 0C00DE6C */  jal        func_800379B0_ovl3
/* FD114 80053C04 3406D738 */   ori       $a2, $zero, 0xD738
/* FD118 80053C08 24040610 */  addiu      $a0, $zero, 0x610
/* FD11C 80053C0C 24050002 */  addiu      $a1, $zero, 0x2
/* FD120 80053C10 0C00D925 */  jal        func_80036494_ovl3
/* FD124 80053C14 24060071 */   addiu     $a2, $zero, 0x71
/* FD128 80053C18 00409021 */  addu       $s2, $v0, $zero
/* FD12C 80053C1C 8E44000C */  lw         $a0, 0xC($s2)
/* FD130 80053C20 4406A000 */  mfc1       $a2, $f20
/* FD134 80053C24 4407A000 */  mfc1       $a3, $f20
/* FD138 80053C28 00000000 */  nop
/* FD13C 80053C2C 0C02915B */  jal        func_800A456C
/* FD140 80053C30 00002821 */   addu      $a1, $zero, $zero
/* FD144 80053C34 8E44000C */  lw         $a0, 0xC($s2)
/* FD148 80053C38 24050370 */  addiu      $a1, $zero, 0x370
/* FD14C 80053C3C 0C028D89 */  jal        func_800A3624
/* FD150 80053C40 24060040 */   addiu     $a2, $zero, 0x40
/* FD154 80053C44 8E42000C */  lw         $v0, 0xC($s2)
/* FD158 80053C48 A450001C */  sh         $s0, 0x1C($v0)
/* FD15C 80053C4C 8E43000C */  lw         $v1, 0xC($s2)
/* FD160 80053C50 9462001E */  lhu        $v0, 0x1E($v1)
/* FD164 80053C54 34420004 */  ori        $v0, $v0, 0x4
/* FD168 80053C58 A462001E */  sh         $v0, 0x1E($v1)
/* FD16C 80053C5C 8E44000C */  lw         $a0, 0xC($s2)
/* FD170 80053C60 00002821 */  addu       $a1, $zero, $zero
/* FD174 80053C64 0C00DE6C */  jal        func_800379B0_ovl3
/* FD178 80053C68 3406FEBA */   ori       $a2, $zero, 0xFEBA
/* FD17C 80053C6C 8E44000C */  lw         $a0, 0xC($s2)
/* FD180 80053C70 8C82000C */  lw         $v0, 0xC($a0)
/* FD184 80053C74 90430004 */  lbu        $v1, 0x4($v0)
/* FD188 80053C78 84450000 */  lh         $a1, 0x0($v0)
/* FD18C 80053C7C 84460002 */  lh         $a2, 0x2($v0)
/* FD190 80053C80 10600002 */  beqz       $v1, .L80053C8C_ovl3
/* FD194 80053C84 24070002 */   addiu     $a3, $zero, 0x2
/* FD198 80053C88 24070001 */  addiu      $a3, $zero, 0x1
.L80053C8C_ovl3:
/* FD19C 80053C8C 0C0297AC */  jal        func_800A5EB0
/* FD1A0 80053C90 8C840010 */   lw        $a0, 0x10($a0)
/* FD1A4 80053C94 24040611 */  addiu      $a0, $zero, 0x611
/* FD1A8 80053C98 24050002 */  addiu      $a1, $zero, 0x2
/* FD1AC 80053C9C 0C00D925 */  jal        func_80036494_ovl3
/* FD1B0 80053CA0 24060072 */   addiu     $a2, $zero, 0x72
/* FD1B4 80053CA4 00409021 */  addu       $s2, $v0, $zero
/* FD1B8 80053CA8 8E44000C */  lw         $a0, 0xC($s2)
/* FD1BC 80053CAC 4406A000 */  mfc1       $a2, $f20
/* FD1C0 80053CB0 4407A000 */  mfc1       $a3, $f20
/* FD1C4 80053CB4 00000000 */  nop
/* FD1C8 80053CB8 0C02915B */  jal        func_800A456C
/* FD1CC 80053CBC 00002821 */   addu      $a1, $zero, $zero
/* FD1D0 80053CC0 8E44000C */  lw         $a0, 0xC($s2)
/* FD1D4 80053CC4 24050370 */  addiu      $a1, $zero, 0x370
/* FD1D8 80053CC8 0C028D89 */  jal        func_800A3624
/* FD1DC 80053CCC 24060040 */   addiu     $a2, $zero, 0x40
/* FD1E0 80053CD0 8E42000C */  lw         $v0, 0xC($s2)
/* FD1E4 80053CD4 A450001C */  sh         $s0, 0x1C($v0)
/* FD1E8 80053CD8 8E43000C */  lw         $v1, 0xC($s2)
/* FD1EC 80053CDC 9462001E */  lhu        $v0, 0x1E($v1)
/* FD1F0 80053CE0 34420004 */  ori        $v0, $v0, 0x4
/* FD1F4 80053CE4 A462001E */  sh         $v0, 0x1E($v1)
/* FD1F8 80053CE8 8E44000C */  lw         $a0, 0xC($s2)
/* FD1FC 80053CEC 00002821 */  addu       $a1, $zero, $zero
/* FD200 80053CF0 0C00DE6C */  jal        func_800379B0_ovl3
/* FD204 80053CF4 3406FEBA */   ori       $a2, $zero, 0xFEBA
/* FD208 80053CF8 8E44000C */  lw         $a0, 0xC($s2)
/* FD20C 80053CFC 8C82000C */  lw         $v0, 0xC($a0)
/* FD210 80053D00 90430004 */  lbu        $v1, 0x4($v0)
/* FD214 80053D04 84450000 */  lh         $a1, 0x0($v0)
/* FD218 80053D08 84460002 */  lh         $a2, 0x2($v0)
/* FD21C 80053D0C 10600002 */  beqz       $v1, .L80053D18_ovl3
/* FD220 80053D10 24070002 */   addiu     $a3, $zero, 0x2
/* FD224 80053D14 24070001 */  addiu      $a3, $zero, 0x1
.L80053D18_ovl3:
/* FD228 80053D18 0C0297AC */  jal        func_800A5EB0
/* FD22C 80053D1C 8C840010 */   lw        $a0, 0x10($a0)
/* FD230 80053D20 24040614 */  addiu      $a0, $zero, 0x614
/* FD234 80053D24 24050002 */  addiu      $a1, $zero, 0x2
/* FD238 80053D28 0C00D925 */  jal        func_80036494_ovl3
/* FD23C 80053D2C 24060073 */   addiu     $a2, $zero, 0x73
/* FD240 80053D30 00409021 */  addu       $s2, $v0, $zero
/* FD244 80053D34 8E44000C */  lw         $a0, 0xC($s2)
/* FD248 80053D38 8C82000C */  lw         $v0, 0xC($a0)
/* FD24C 80053D3C 84460002 */  lh         $a2, 0x2($v0)
/* FD250 80053D40 0C02912A */  jal        func_800A44A8
/* FD254 80053D44 00002821 */   addu      $a1, $zero, $zero
/* FD258 80053D48 8E44000C */  lw         $a0, 0xC($s2)
/* FD25C 80053D4C 4406D000 */  mfc1       $a2, $f26
/* FD260 80053D50 4407A000 */  mfc1       $a3, $f20
/* FD264 80053D54 00000000 */  nop
/* FD268 80053D58 0C02915B */  jal        func_800A456C
/* FD26C 80053D5C 00002821 */   addu      $a1, $zero, $zero
/* FD270 80053D60 8E44000C */  lw         $a0, 0xC($s2)
/* FD274 80053D64 24050040 */  addiu      $a1, $zero, 0x40
/* FD278 80053D68 0C028D89 */  jal        func_800A3624
/* FD27C 80053D6C 2406039C */   addiu     $a2, $zero, 0x39C
/* FD280 80053D70 8E42000C */  lw         $v0, 0xC($s2)
/* FD284 80053D74 A450001C */  sh         $s0, 0x1C($v0)
/* FD288 80053D78 8E43000C */  lw         $v1, 0xC($s2)
/* FD28C 80053D7C 9462001E */  lhu        $v0, 0x1E($v1)
/* FD290 80053D80 34420004 */  ori        $v0, $v0, 0x4
/* FD294 80053D84 A462001E */  sh         $v0, 0x1E($v1)
/* FD298 80053D88 8E44000C */  lw         $a0, 0xC($s2)
/* FD29C 80053D8C 00002821 */  addu       $a1, $zero, $zero
/* FD2A0 80053D90 0C00DE6C */  jal        func_800379B0_ovl3
/* FD2A4 80053D94 3406D738 */   ori       $a2, $zero, 0xD738
/* FD2A8 80053D98 24040615 */  addiu      $a0, $zero, 0x615
/* FD2AC 80053D9C 24050002 */  addiu      $a1, $zero, 0x2
/* FD2B0 80053DA0 0C00D925 */  jal        func_80036494_ovl3
/* FD2B4 80053DA4 24060074 */   addiu     $a2, $zero, 0x74
/* FD2B8 80053DA8 00409021 */  addu       $s2, $v0, $zero
/* FD2BC 80053DAC 8E44000C */  lw         $a0, 0xC($s2)
/* FD2C0 80053DB0 8C82000C */  lw         $v0, 0xC($a0)
/* FD2C4 80053DB4 84460002 */  lh         $a2, 0x2($v0)
/* FD2C8 80053DB8 0C02912A */  jal        func_800A44A8
/* FD2CC 80053DBC 00002821 */   addu      $a1, $zero, $zero
/* FD2D0 80053DC0 8E44000C */  lw         $a0, 0xC($s2)
/* FD2D4 80053DC4 4406A000 */  mfc1       $a2, $f20
/* FD2D8 80053DC8 4407A000 */  mfc1       $a3, $f20
/* FD2DC 80053DCC 00000000 */  nop
/* FD2E0 80053DD0 0C02915B */  jal        func_800A456C
/* FD2E4 80053DD4 00002821 */   addu      $a1, $zero, $zero
/* FD2E8 80053DD8 8E44000C */  lw         $a0, 0xC($s2)
/* FD2EC 80053DDC 24050040 */  addiu      $a1, $zero, 0x40
/* FD2F0 80053DE0 0C028D89 */  jal        func_800A3624
/* FD2F4 80053DE4 2406039C */   addiu     $a2, $zero, 0x39C
/* FD2F8 80053DE8 8E42000C */  lw         $v0, 0xC($s2)
/* FD2FC 80053DEC A450001C */  sh         $s0, 0x1C($v0)
/* FD300 80053DF0 8E43000C */  lw         $v1, 0xC($s2)
/* FD304 80053DF4 9462001E */  lhu        $v0, 0x1E($v1)
/* FD308 80053DF8 34420004 */  ori        $v0, $v0, 0x4
/* FD30C 80053DFC A462001E */  sh         $v0, 0x1E($v1)
/* FD310 80053E00 8E44000C */  lw         $a0, 0xC($s2)
/* FD314 80053E04 00002821 */  addu       $a1, $zero, $zero
/* FD318 80053E08 0C00DE6C */  jal        func_800379B0_ovl3
/* FD31C 80053E0C 3406D738 */   ori       $a2, $zero, 0xD738
/* FD320 80053E10 24040616 */  addiu      $a0, $zero, 0x616
/* FD324 80053E14 24050002 */  addiu      $a1, $zero, 0x2
/* FD328 80053E18 0C00D925 */  jal        func_80036494_ovl3
/* FD32C 80053E1C 24060075 */   addiu     $a2, $zero, 0x75
/* FD330 80053E20 00409021 */  addu       $s2, $v0, $zero
/* FD334 80053E24 8E44000C */  lw         $a0, 0xC($s2)
/* FD338 80053E28 8C82000C */  lw         $v0, 0xC($a0)
/* FD33C 80053E2C 84460002 */  lh         $a2, 0x2($v0)
/* FD340 80053E30 0C02912A */  jal        func_800A44A8
/* FD344 80053E34 00002821 */   addu      $a1, $zero, $zero
/* FD348 80053E38 8E44000C */  lw         $a0, 0xC($s2)
/* FD34C 80053E3C 4406A000 */  mfc1       $a2, $f20
/* FD350 80053E40 4407A000 */  mfc1       $a3, $f20
/* FD354 80053E44 00000000 */  nop
/* FD358 80053E48 0C02915B */  jal        func_800A456C
/* FD35C 80053E4C 00002821 */   addu      $a1, $zero, $zero
/* FD360 80053E50 8E44000C */  lw         $a0, 0xC($s2)
/* FD364 80053E54 240503F4 */  addiu      $a1, $zero, 0x3F4
/* FD368 80053E58 0C028D89 */  jal        func_800A3624
/* FD36C 80053E5C 2406039C */   addiu     $a2, $zero, 0x39C
/* FD370 80053E60 8E42000C */  lw         $v0, 0xC($s2)
/* FD374 80053E64 A450001C */  sh         $s0, 0x1C($v0)
/* FD378 80053E68 8E43000C */  lw         $v1, 0xC($s2)
/* FD37C 80053E6C 9462001E */  lhu        $v0, 0x1E($v1)
/* FD380 80053E70 34420004 */  ori        $v0, $v0, 0x4
/* FD384 80053E74 A462001E */  sh         $v0, 0x1E($v1)
/* FD388 80053E78 8E44000C */  lw         $a0, 0xC($s2)
/* FD38C 80053E7C 00002821 */  addu       $a1, $zero, $zero
/* FD390 80053E80 0C00DE6C */  jal        func_800379B0_ovl3
/* FD394 80053E84 3406FEBA */   ori       $a2, $zero, 0xFEBA
/* FD398 80053E88 24040617 */  addiu      $a0, $zero, 0x617
/* FD39C 80053E8C 24050002 */  addiu      $a1, $zero, 0x2
/* FD3A0 80053E90 0C00D925 */  jal        func_80036494_ovl3
/* FD3A4 80053E94 24060076 */   addiu     $a2, $zero, 0x76
/* FD3A8 80053E98 00409021 */  addu       $s2, $v0, $zero
/* FD3AC 80053E9C 8E44000C */  lw         $a0, 0xC($s2)
/* FD3B0 80053EA0 8C82000C */  lw         $v0, 0xC($a0)
/* FD3B4 80053EA4 84460002 */  lh         $a2, 0x2($v0)
/* FD3B8 80053EA8 0C02912A */  jal        func_800A44A8
/* FD3BC 80053EAC 00002821 */   addu      $a1, $zero, $zero
/* FD3C0 80053EB0 8E44000C */  lw         $a0, 0xC($s2)
/* FD3C4 80053EB4 4406A000 */  mfc1       $a2, $f20
/* FD3C8 80053EB8 00002821 */  addu       $a1, $zero, $zero
/* FD3CC 80053EBC 0C02915B */  jal        func_800A456C
/* FD3D0 80053EC0 00C03821 */   addu      $a3, $a2, $zero
/* FD3D4 80053EC4 8E44000C */  lw         $a0, 0xC($s2)
/* FD3D8 80053EC8 240503F4 */  addiu      $a1, $zero, 0x3F4
/* FD3DC 80053ECC 0C028D89 */  jal        func_800A3624
/* FD3E0 80053ED0 2406039C */   addiu     $a2, $zero, 0x39C
/* FD3E4 80053ED4 8E42000C */  lw         $v0, 0xC($s2)
/* FD3E8 80053ED8 A450001C */  sh         $s0, 0x1C($v0)
/* FD3EC 80053EDC 8E43000C */  lw         $v1, 0xC($s2)
/* FD3F0 80053EE0 9462001E */  lhu        $v0, 0x1E($v1)
/* FD3F4 80053EE4 34420004 */  ori        $v0, $v0, 0x4
/* FD3F8 80053EE8 A462001E */  sh         $v0, 0x1E($v1)
/* FD3FC 80053EEC 8E44000C */  lw         $a0, 0xC($s2)
/* FD400 80053EF0 00002821 */  addu       $a1, $zero, $zero
/* FD404 80053EF4 0C00DE6C */  jal        func_800379B0_ovl3
/* FD408 80053EF8 3406FEBA */   ori       $a2, $zero, 0xFEBA
/* FD40C 80053EFC 8FBF0034 */  lw         $ra, 0x34($sp)
/* FD410 80053F00 8FB40030 */  lw         $s4, 0x30($sp)
/* FD414 80053F04 8FB3002C */  lw         $s3, 0x2C($sp)
/* FD418 80053F08 8FB20028 */  lw         $s2, 0x28($sp)
/* FD41C 80053F0C 8FB10024 */  lw         $s1, 0x24($sp)
/* FD420 80053F10 8FB00020 */  lw         $s0, 0x20($sp)
/* FD424 80053F14 D7BA0050 */  ldc1       $f26, 0x50($sp)
/* FD428 80053F18 D7B80048 */  ldc1       $f24, 0x48($sp)
/* FD42C 80053F1C D7B60040 */  ldc1       $f22, 0x40($sp)
/* FD430 80053F20 D7B40038 */  ldc1       $f20, 0x38($sp)
/* FD434 80053F24 03E00008 */  jr         $ra
/* FD438 80053F28 27BD0058 */   addiu     $sp, $sp, 0x58
.size func_80053168_ovl3, . - func_80053168_ovl3
