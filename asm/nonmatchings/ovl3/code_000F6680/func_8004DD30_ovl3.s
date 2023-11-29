glabel func_8004DD30_ovl3
/* F7240 8004DD30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* F7244 8004DD34 AFBF001C */  sw         $ra, 0x1C($sp)
/* F7248 8004DD38 0C00E109 */  jal        func_80038424_ovl3
/* F724C 8004DD3C AFB00018 */   sw        $s0, 0x18($sp)
/* F7250 8004DD40 0C00DFA8 */  jal        func_80037EA0_ovl3
/* F7254 8004DD44 24040007 */   addiu     $a0, $zero, 0x7
/* F7258 8004DD48 00408021 */  addu       $s0, $v0, $zero
/* F725C 8004DD4C 3C014316 */  lui        $at, (0x43160000 >> 16)
/* F7260 8004DD50 44810000 */  mtc1       $at, $f0
/* F7264 8004DD54 3C013CA3 */  lui        $at, (0x3CA3D70A >> 16)
/* F7268 8004DD58 3421D70A */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
/* F726C 8004DD5C 44811000 */  mtc1       $at, $f2
/* F7270 8004DD60 02002021 */  addu       $a0, $s0, $zero
/* F7274 8004DD64 24050001 */  addiu      $a1, $zero, 0x1
/* F7278 8004DD68 240200FF */  addiu      $v0, $zero, 0xFF
/* F727C 8004DD6C A6020074 */  sh         $v0, 0x74($s0)
/* F7280 8004DD70 A6020076 */  sh         $v0, 0x76($s0)
/* F7284 8004DD74 A6020078 */  sh         $v0, 0x78($s0)
/* F7288 8004DD78 A602007A */  sh         $v0, 0x7A($s0)
/* F728C 8004DD7C 2402FFFF */  addiu      $v0, $zero, -0x1
/* F7290 8004DD80 AE000010 */  sw         $zero, 0x10($s0)
/* F7294 8004DD84 AE000014 */  sw         $zero, 0x14($s0)
/* F7298 8004DD88 AE00001C */  sw         $zero, 0x1C($s0)
/* F729C 8004DD8C AE000020 */  sw         $zero, 0x20($s0)
/* F72A0 8004DD90 AE000024 */  sw         $zero, 0x24($s0)
/* F72A4 8004DD94 A6020070 */  sh         $v0, 0x70($s0)
/* F72A8 8004DD98 E6000018 */  swc1       $f0, 0x18($s0)
/* F72AC 8004DD9C 0C00DFE6 */  jal        func_80037F98_ovl3
/* F72B0 8004DDA0 E6020028 */   swc1      $f2, 0x28($s0)
/* F72B4 8004DDA4 8E020004 */  lw         $v0, 0x4($s0)
/* F72B8 8004DDA8 3C048031 */  lui        $a0, (0x80317420 >> 16)
/* F72BC 8004DDAC 34847420 */  ori        $a0, $a0, (0x80317420 & 0xFFFF)
/* F72C0 8004DDB0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* F72C4 8004DDB4 44810000 */  mtc1       $at, $f0
/* F72C8 8004DDB8 240501C8 */  addiu      $a1, $zero, 0x1C8
/* F72CC 8004DDBC 24060007 */  addiu      $a2, $zero, 0x7
/* F72D0 8004DDC0 A0400067 */  sb         $zero, 0x67($v0)
/* F72D4 8004DDC4 8E030004 */  lw         $v1, 0x4($s0)
/* F72D8 8004DDC8 3C01C0A0 */  lui        $at, (0xC0A00000 >> 16)
/* F72DC 8004DDCC 44811000 */  mtc1       $at, $f2
/* F72E0 8004DDD0 3C01429E */  lui        $at, (0x429E0000 >> 16)
/* F72E4 8004DDD4 44812000 */  mtc1       $at, $f4
/* F72E8 8004DDD8 90620066 */  lbu        $v0, 0x66($v1)
/* F72EC 8004DDDC 3C01C270 */  lui        $at, (0xC2700000 >> 16)
/* F72F0 8004DDE0 44813000 */  mtc1       $at, $f6
/* F72F4 8004DDE4 34420011 */  ori        $v0, $v0, 0x11
/* F72F8 8004DDE8 A0620066 */  sb         $v0, 0x66($v1)
/* F72FC 8004DDEC 3C018015 */  lui        $at, %hi(D_8014A064)
/* F7300 8004DDF0 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* F7304 8004DDF4 3C018015 */  lui        $at, %hi(D_8014A068)
/* F7308 8004DDF8 AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* F730C 8004DDFC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* F7310 8004DE00 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* F7314 8004DE04 3C018015 */  lui        $at, %hi(D_8014A070)
/* F7318 8004DE08 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* F731C 8004DE0C 3C018015 */  lui        $at, %hi(D_8014A074)
/* F7320 8004DE10 E420A074 */  swc1       $f0, %lo(D_8014A074)($at)
/* F7324 8004DE14 3C018015 */  lui        $at, %hi(D_8014A078)
/* F7328 8004DE18 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* F732C 8004DE1C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* F7330 8004DE20 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* F7334 8004DE24 3C018015 */  lui        $at, %hi(D_8014A080)
/* F7338 8004DE28 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* F733C 8004DE2C 3C018015 */  lui        $at, %hi(D_8014A084)
/* F7340 8004DE30 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* F7344 8004DE34 3C018015 */  lui        $at, %hi(D_8014A088)
/* F7348 8004DE38 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* F734C 8004DE3C 0C00D9E0 */  jal        func_80036780_ovl3
/* F7350 8004DE40 24070021 */   addiu     $a3, $zero, 0x21
/* F7354 8004DE44 00408021 */  addu       $s0, $v0, $zero
/* F7358 8004DE48 8E04000C */  lw         $a0, 0xC($s0)
/* F735C 8004DE4C 24050044 */  addiu      $a1, $zero, 0x44
/* F7360 8004DE50 0C028D89 */  jal        func_800A3624
/* F7364 8004DE54 24060040 */   addiu     $a2, $zero, 0x40
/* F7368 8004DE58 3C014000 */  lui        $at, (0x40000000 >> 16)
/* F736C 8004DE5C 44810000 */  mtc1       $at, $f0
/* F7370 8004DE60 8E04000C */  lw         $a0, 0xC($s0)
/* F7374 8004DE64 44060000 */  mfc1       $a2, $f0
/* F7378 8004DE68 00002821 */  addu       $a1, $zero, $zero
/* F737C 8004DE6C 0C02915B */  jal        func_800A456C
/* F7380 8004DE70 00C03821 */   addu      $a3, $a2, $zero
/* F7384 8004DE74 8E03000C */  lw         $v1, 0xC($s0)
/* F7388 8004DE78 9462001E */  lhu        $v0, 0x1E($v1)
/* F738C 8004DE7C 240401CF */  addiu      $a0, $zero, 0x1CF
/* F7390 8004DE80 24050005 */  addiu      $a1, $zero, 0x5
/* F7394 8004DE84 34420104 */  ori        $v0, $v0, 0x104
/* F7398 8004DE88 A462001E */  sh         $v0, 0x1E($v1)
/* F739C 8004DE8C 8E03000C */  lw         $v1, 0xC($s0)
/* F73A0 8004DE90 24060032 */  addiu      $a2, $zero, 0x32
/* F73A4 8004DE94 24020001 */  addiu      $v0, $zero, 0x1
/* F73A8 8004DE98 0C00D925 */  jal        func_80036494_ovl3
/* F73AC 8004DE9C A462001C */   sh        $v0, 0x1C($v1)
/* F73B0 8004DEA0 8C44000C */  lw         $a0, 0xC($v0)
/* F73B4 8004DEA4 240500F0 */  addiu      $a1, $zero, 0xF0
/* F73B8 8004DEA8 0C028D89 */  jal        func_800A3624
/* F73BC 8004DEAC 24060270 */   addiu     $a2, $zero, 0x270
/* F73C0 8004DEB0 240401D0 */  addiu      $a0, $zero, 0x1D0
/* F73C4 8004DEB4 24050005 */  addiu      $a1, $zero, 0x5
/* F73C8 8004DEB8 0C00D925 */  jal        func_80036494_ovl3
/* F73CC 8004DEBC 2406002F */   addiu     $a2, $zero, 0x2F
/* F73D0 8004DEC0 8C44000C */  lw         $a0, 0xC($v0)
/* F73D4 8004DEC4 24050368 */  addiu      $a1, $zero, 0x368
/* F73D8 8004DEC8 0C028D89 */  jal        func_800A3624
/* F73DC 8004DECC 24060060 */   addiu     $a2, $zero, 0x60
/* F73E0 8004DED0 240401D1 */  addiu      $a0, $zero, 0x1D1
/* F73E4 8004DED4 24050005 */  addiu      $a1, $zero, 0x5
/* F73E8 8004DED8 0C00D925 */  jal        func_80036494_ovl3
/* F73EC 8004DEDC 24060030 */   addiu     $a2, $zero, 0x30
/* F73F0 8004DEE0 8C44000C */  lw         $a0, 0xC($v0)
/* F73F4 8004DEE4 240503C8 */  addiu      $a1, $zero, 0x3C8
/* F73F8 8004DEE8 0C028D89 */  jal        func_800A3624
/* F73FC 8004DEEC 240600B8 */   addiu     $a2, $zero, 0xB8
/* F7400 8004DEF0 240401D2 */  addiu      $a0, $zero, 0x1D2
/* F7404 8004DEF4 24050005 */  addiu      $a1, $zero, 0x5
/* F7408 8004DEF8 0C00D925 */  jal        func_80036494_ovl3
/* F740C 8004DEFC 24060031 */   addiu     $a2, $zero, 0x31
/* F7410 8004DF00 8C44000C */  lw         $a0, 0xC($v0)
/* F7414 8004DF04 24050240 */  addiu      $a1, $zero, 0x240
/* F7418 8004DF08 0C028D89 */  jal        func_800A3624
/* F741C 8004DF0C 24060350 */   addiu     $a2, $zero, 0x350
/* F7420 8004DF10 8FBF001C */  lw         $ra, 0x1C($sp)
/* F7424 8004DF14 8FB00018 */  lw         $s0, 0x18($sp)
/* F7428 8004DF18 03E00008 */  jr         $ra
/* F742C 8004DF1C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_8004DD30_ovl3, . - func_8004DD30_ovl3
