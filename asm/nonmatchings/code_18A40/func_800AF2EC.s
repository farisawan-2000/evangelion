glabel func_800AF2EC
/* 19EEC 800AF2EC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 19EF0 800AF2F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 19EF4 800AF2F4 00808021 */  addu       $s0, $a0, $zero
/* 19EF8 800AF2F8 AFB3001C */  sw         $s3, 0x1C($sp)
/* 19EFC 800AF2FC 00A09821 */  addu       $s3, $a1, $zero
/* 19F00 800AF300 AFBF0024 */  sw         $ra, 0x24($sp)
/* 19F04 800AF304 AFB40020 */  sw         $s4, 0x20($sp)
/* 19F08 800AF308 AFB20018 */  sw         $s2, 0x18($sp)
/* 19F0C 800AF30C AFB10014 */  sw         $s1, 0x14($sp)
/* 19F10 800AF310 8E050004 */  lw         $a1, 0x4($s0)
/* 19F14 800AF314 50A0012F */  beql       $a1, $zero, .L800AF7D4
/* 19F18 800AF318 AE050004 */   sw        $a1, 0x4($s0)
.L800AF31C:
/* 19F1C 800AF31C 90A40000 */  lbu        $a0, 0x0($a1)
/* 19F20 800AF320 308200FF */  andi       $v0, $a0, 0xFF
/* 19F24 800AF324 2C420080 */  sltiu      $v0, $v0, 0x80
/* 19F28 800AF328 1440000B */  bnez       $v0, .L800AF358
/* 19F2C 800AF32C 3082007F */   andi      $v0, $a0, 0x7F
/* 19F30 800AF330 00021080 */  sll        $v0, $v0, 2
/* 19F34 800AF334 3C01800F */  lui        $at, %hi(D_800F1250)
/* 19F38 800AF338 00220821 */  addu       $at, $at, $v0
/* 19F3C 800AF33C 8C221250 */  lw         $v0, %lo(D_800F1250)($at)
/* 19F40 800AF340 02002021 */  addu       $a0, $s0, $zero
/* 19F44 800AF344 0040F809 */  jalr       $v0
/* 19F48 800AF348 24A50001 */   addiu     $a1, $a1, 0x1
/* 19F4C 800AF34C 00402821 */  addu       $a1, $v0, $zero
/* 19F50 800AF350 14A0FFF2 */  bnez       $a1, .L800AF31C
/* 19F54 800AF354 00000000 */   nop
.L800AF358:
/* 19F58 800AF358 10A0011E */  beqz       $a1, .L800AF7D4
/* 19F5C 800AF35C AE050004 */   sw        $a1, 0x4($s0)
/* 19F60 800AF360 C6000050 */  lwc1       $f0, 0x50($s0)
/* 19F64 800AF364 8E040004 */  lw         $a0, 0x4($s0)
/* 19F68 800AF368 920300D2 */  lbu        $v1, 0xD2($s0)
/* 19F6C 800AF36C 24820001 */  addiu      $v0, $a0, 0x1
/* 19F70 800AF370 E600004C */  swc1       $f0, 0x4C($s0)
/* 19F74 800AF374 AE020004 */  sw         $v0, 0x4($s0)
/* 19F78 800AF378 90920000 */  lbu        $s2, 0x0($a0)
/* 19F7C 800AF37C 1060000E */  beqz       $v1, .L800AF3B8
/* 19F80 800AF380 24820002 */   addiu     $v0, $a0, 0x2
/* 19F84 800AF384 AE020004 */  sw         $v0, 0x4($s0)
/* 19F88 800AF388 90830001 */  lbu        $v1, 0x1($a0)
/* 19F8C 800AF38C 306200FF */  andi       $v0, $v1, 0xFF
/* 19F90 800AF390 2C420080 */  sltiu      $v0, $v0, 0x80
/* 19F94 800AF394 14400004 */  bnez       $v0, .L800AF3A8
/* 19F98 800AF398 24020060 */   addiu     $v0, $zero, 0x60
/* 19F9C 800AF39C 3063007F */  andi       $v1, $v1, 0x7F
/* 19FA0 800AF3A0 A20000D2 */  sb         $zero, 0xD2($s0)
/* 19FA4 800AF3A4 A20300D3 */  sb         $v1, 0xD3($s0)
.L800AF3A8:
/* 19FA8 800AF3A8 56420005 */  bnel       $s2, $v0, .L800AF3C0
/* 19FAC 800AF3AC A20300BB */   sb        $v1, 0xBB($s0)
/* 19FB0 800AF3B0 0802BCF0 */  j          .L800AF3C0
/* 19FB4 800AF3B4 00000000 */   nop
.L800AF3B8:
/* 19FB8 800AF3B8 920200D3 */  lbu        $v0, 0xD3($s0)
/* 19FBC 800AF3BC A20200BB */  sb         $v0, 0xBB($s0)
.L800AF3C0:
/* 19FC0 800AF3C0 960300AC */  lhu        $v1, 0xAC($s0)
/* 19FC4 800AF3C4 1060000F */  beqz       $v1, .L800AF404
/* 19FC8 800AF3C8 00000000 */   nop
/* 19FCC 800AF3CC 920200B7 */  lbu        $v0, 0xB7($s0)
/* 19FD0 800AF3D0 5040001C */  beql       $v0, $zero, .L800AF444
/* 19FD4 800AF3D4 A603009A */   sh        $v1, 0x9A($s0)
/* 19FD8 800AF3D8 8E030004 */  lw         $v1, 0x4($s0)
/* 19FDC 800AF3DC A20000B7 */  sb         $zero, 0xB7($s0)
/* 19FE0 800AF3E0 24620001 */  addiu      $v0, $v1, 0x1
/* 19FE4 800AF3E4 AE020004 */  sw         $v0, 0x4($s0)
/* 19FE8 800AF3E8 90640000 */  lbu        $a0, 0x0($v1)
/* 19FEC 800AF3EC 308200FF */  andi       $v0, $a0, 0xFF
/* 19FF0 800AF3F0 2C420080 */  sltiu      $v0, $v0, 0x80
/* 19FF4 800AF3F4 54400013 */  bnel       $v0, $zero, .L800AF444
/* 19FF8 800AF3F8 A604009A */   sh        $a0, 0x9A($s0)
/* 19FFC 800AF3FC 0802BD0B */  j          .L800AF42C
/* 1A000 800AF400 24620002 */   addiu     $v0, $v1, 0x2
.L800AF404:
/* 1A004 800AF404 8E030004 */  lw         $v1, 0x4($s0)
/* 1A008 800AF408 24620001 */  addiu      $v0, $v1, 0x1
/* 1A00C 800AF40C AE020004 */  sw         $v0, 0x4($s0)
/* 1A010 800AF410 90640000 */  lbu        $a0, 0x0($v1)
/* 1A014 800AF414 308200FF */  andi       $v0, $a0, 0xFF
/* 1A018 800AF418 2C420080 */  sltiu      $v0, $v0, 0x80
/* 1A01C 800AF41C 10400003 */  beqz       $v0, .L800AF42C
/* 1A020 800AF420 24620002 */   addiu     $v0, $v1, 0x2
/* 1A024 800AF424 0802BD11 */  j          .L800AF444
/* 1A028 800AF428 A604009A */   sh        $a0, 0x9A($s0)
.L800AF42C:
/* 1A02C 800AF42C AE020004 */  sw         $v0, 0x4($s0)
/* 1A030 800AF430 90630001 */  lbu        $v1, 0x1($v1)
/* 1A034 800AF434 3082007F */  andi       $v0, $a0, 0x7F
/* 1A038 800AF438 00021200 */  sll        $v0, $v0, 8
/* 1A03C 800AF43C 00621821 */  addu       $v1, $v1, $v0
/* 1A040 800AF440 A603009A */  sh         $v1, 0x9A($s0)
.L800AF444:
/* 1A044 800AF444 8E02003C */  lw         $v0, 0x3C($s0)
/* 1A048 800AF448 8E03003C */  lw         $v1, 0x3C($s0)
/* 1A04C 800AF44C 920400CF */  lbu        $a0, 0xCF($s0)
/* 1A050 800AF450 8E050074 */  lw         $a1, 0x74($s0)
/* 1A054 800AF454 AE020040 */  sw         $v0, 0x40($s0)
/* 1A058 800AF458 9602009A */  lhu        $v0, 0x9A($s0)
/* 1A05C 800AF45C A60000AA */  sh         $zero, 0xAA($s0)
/* 1A060 800AF460 A20000D1 */  sb         $zero, 0xD1($s0)
/* 1A064 800AF464 A20400D0 */  sb         $a0, 0xD0($s0)
/* 1A068 800AF468 00021200 */  sll        $v0, $v0, 8
/* 1A06C 800AF46C 00621821 */  addu       $v1, $v1, $v0
/* 1A070 800AF470 10A0000C */  beqz       $a1, .L800AF4A4
/* 1A074 800AF474 AE03003C */   sw        $v1, 0x3C($s0)
/* 1A078 800AF478 8E020084 */  lw         $v0, 0x84($s0)
/* 1A07C 800AF47C 1440000A */  bnez       $v0, .L800AF4A8
/* 1A080 800AF480 24020060 */   addiu     $v0, $zero, 0x60
/* 1A084 800AF484 960200AE */  lhu        $v0, 0xAE($s0)
/* 1A088 800AF488 8CA30020 */  lw         $v1, 0x20($a1)
/* 1A08C 800AF48C 00021040 */  sll        $v0, $v0, 1
/* 1A090 800AF490 00431021 */  addu       $v0, $v0, $v1
/* 1A094 800AF494 94430000 */  lhu        $v1, 0x0($v0)
/* 1A098 800AF498 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* 1A09C 800AF49C 50620001 */  beql       $v1, $v0, .L800AF4A4
/* 1A0A0 800AF4A0 24120060 */   addiu     $s2, $zero, 0x60
.L800AF4A4:
/* 1A0A4 800AF4A4 24020060 */  addiu      $v0, $zero, 0x60
.L800AF4A8:
/* 1A0A8 800AF4A8 124200BE */  beq        $s2, $v0, .L800AF7A4
/* 1A0AC 800AF4AC 00000000 */   nop
/* 1A0B0 800AF4B0 8E030084 */  lw         $v1, 0x84($s0)
/* 1A0B4 800AF4B4 8E14007C */  lw         $s4, 0x7C($s0)
/* 1A0B8 800AF4B8 10600059 */  beqz       $v1, .L800AF620
/* 1A0BC 800AF4BC 00121040 */   sll       $v0, $s2, 1
/* 1A0C0 800AF4C0 00521021 */  addu       $v0, $v0, $s2
/* 1A0C4 800AF4C4 00023040 */  sll        $a2, $v0, 1
/* 1A0C8 800AF4C8 00C31021 */  addu       $v0, $a2, $v1
/* 1A0CC 800AF4CC 94430000 */  lhu        $v1, 0x0($v0)
/* 1A0D0 800AF4D0 8E020084 */  lw         $v0, 0x84($s0)
/* 1A0D4 800AF4D4 00C21021 */  addu       $v0, $a2, $v0
/* 1A0D8 800AF4D8 A60300AE */  sh         $v1, 0xAE($s0)
/* 1A0DC 800AF4DC 90420004 */  lbu        $v0, 0x4($v0)
/* 1A0E0 800AF4E0 8E030084 */  lw         $v1, 0x84($s0)
/* 1A0E4 800AF4E4 00021042 */  srl        $v0, $v0, 1
/* 1A0E8 800AF4E8 A20200BD */  sb         $v0, 0xBD($s0)
/* 1A0EC 800AF4EC 8E020074 */  lw         $v0, 0x74($s0)
/* 1A0F0 800AF4F0 00C31821 */  addu       $v1, $a2, $v1
/* 1A0F4 800AF4F4 94630002 */  lhu        $v1, 0x2($v1)
/* 1A0F8 800AF4F8 8C440018 */  lw         $a0, 0x18($v0)
/* 1A0FC 800AF4FC 000310C0 */  sll        $v0, $v1, 3
/* 1A100 800AF500 00431023 */  subu       $v0, $v0, $v1
/* 1A104 800AF504 00441021 */  addu       $v0, $v0, $a0
/* 1A108 800AF508 90440000 */  lbu        $a0, 0x0($v0)
/* 1A10C 800AF50C 14800002 */  bnez       $a0, .L800AF518
/* 1A110 800AF510 00402821 */   addu      $a1, $v0, $zero
/* 1A114 800AF514 24040001 */  addiu      $a0, $zero, 0x1
.L800AF518:
/* 1A118 800AF518 24020400 */  addiu      $v0, $zero, 0x400
/* 1A11C 800AF51C 0044001A */  div        $zero, $v0, $a0
/* 1A120 800AF520 14800002 */  bnez       $a0, .L800AF52C
/* 1A124 800AF524 00000000 */   nop
/* 1A128 800AF528 0007000D */  break      7
.L800AF52C:
/* 1A12C 800AF52C 2401FFFF */  addiu      $at, $zero, -0x1
/* 1A130 800AF530 14810004 */  bne        $a0, $at, .L800AF544
/* 1A134 800AF534 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 1A138 800AF538 14410002 */  bne        $v0, $at, .L800AF544
/* 1A13C 800AF53C 00000000 */   nop
/* 1A140 800AF540 0006000D */  break      6
.L800AF544:
/* 1A144 800AF544 00001012 */  mflo       $v0
/* 1A148 800AF548 A20400BF */  sb         $a0, 0xBF($s0)
/* 1A14C 800AF54C AE020064 */  sw         $v0, 0x64($s0)
/* 1A150 800AF550 90A20001 */  lbu        $v0, 0x1($a1)
/* 1A154 800AF554 A20200C0 */  sb         $v0, 0xC0($s0)
/* 1A158 800AF558 90A40002 */  lbu        $a0, 0x2($a1)
/* 1A15C 800AF55C 3C018010 */  lui        $at, %hi(D_800FEA38)
/* 1A160 800AF560 D424EA38 */  ldc1       $f4, %lo(D_800FEA38)($at)
/* 1A164 800AF564 44841000 */  mtc1       $a0, $f2
/* 1A168 800AF568 00000000 */  nop
/* 1A16C 800AF56C 468010A0 */  cvt.s.w    $f2, $f2
/* 1A170 800AF570 460010A1 */  cvt.d.s    $f2, $f2
/* 1A174 800AF574 46222083 */  div.d      $f2, $f4, $f2
/* 1A178 800AF578 920200C0 */  lbu        $v0, 0xC0($s0)
/* 1A17C 800AF57C A20400C6 */  sb         $a0, 0xC6($s0)
/* 1A180 800AF580 90A30003 */  lbu        $v1, 0x3($a1)
/* 1A184 800AF584 00621023 */  subu       $v0, $v1, $v0
/* 1A188 800AF588 44820000 */  mtc1       $v0, $f0
/* 1A18C 800AF58C 00000000 */  nop
/* 1A190 800AF590 46800020 */  cvt.s.w    $f0, $f0
/* 1A194 800AF594 46000021 */  cvt.d.s    $f0, $f0
/* 1A198 800AF598 46201082 */  mul.d      $f2, $f2, $f0
/* 1A19C 800AF59C A20300C1 */  sb         $v1, 0xC1($s0)
/* 1A1A0 800AF5A0 462010A0 */  cvt.s.d    $f2, $f2
/* 1A1A4 800AF5A4 E6020058 */  swc1       $f2, 0x58($s0)
/* 1A1A8 800AF5A8 90A40004 */  lbu        $a0, 0x4($a1)
/* 1A1AC 800AF5AC 44841000 */  mtc1       $a0, $f2
/* 1A1B0 800AF5B0 00000000 */  nop
/* 1A1B4 800AF5B4 468010A0 */  cvt.s.w    $f2, $f2
/* 1A1B8 800AF5B8 460010A1 */  cvt.d.s    $f2, $f2
/* 1A1BC 800AF5BC 46222083 */  div.d      $f2, $f4, $f2
/* 1A1C0 800AF5C0 920200C1 */  lbu        $v0, 0xC1($s0)
/* 1A1C4 800AF5C4 A20400C7 */  sb         $a0, 0xC7($s0)
/* 1A1C8 800AF5C8 90A30005 */  lbu        $v1, 0x5($a1)
/* 1A1CC 800AF5CC 00621023 */  subu       $v0, $v1, $v0
/* 1A1D0 800AF5D0 44820000 */  mtc1       $v0, $f0
/* 1A1D4 800AF5D4 00000000 */  nop
/* 1A1D8 800AF5D8 46800020 */  cvt.s.w    $f0, $f0
/* 1A1DC 800AF5DC 46000021 */  cvt.d.s    $f0, $f0
/* 1A1E0 800AF5E0 46201082 */  mul.d      $f2, $f2, $f0
/* 1A1E4 800AF5E4 A20300C2 */  sb         $v1, 0xC2($s0)
/* 1A1E8 800AF5E8 462010A0 */  cvt.s.d    $f2, $f2
/* 1A1EC 800AF5EC E602005C */  swc1       $f2, 0x5C($s0)
/* 1A1F0 800AF5F0 90A40006 */  lbu        $a0, 0x6($a1)
/* 1A1F4 800AF5F4 44840000 */  mtc1       $a0, $f0
/* 1A1F8 800AF5F8 00000000 */  nop
/* 1A1FC 800AF5FC 46800020 */  cvt.s.w    $f0, $f0
/* 1A200 800AF600 46000021 */  cvt.d.s    $f0, $f0
/* 1A204 800AF604 46202103 */  div.d      $f4, $f4, $f0
/* 1A208 800AF608 8E020084 */  lw         $v0, 0x84($s0)
/* 1A20C 800AF60C 00C21021 */  addu       $v0, $a2, $v0
/* 1A210 800AF610 A20400C8 */  sb         $a0, 0xC8($s0)
/* 1A214 800AF614 46202120 */  cvt.s.d    $f4, $f4
/* 1A218 800AF618 E6040060 */  swc1       $f4, 0x60($s0)
/* 1A21C 800AF61C 90520005 */  lbu        $s2, 0x5($v0)
.L800AF620:
/* 1A220 800AF620 920200D6 */  lbu        $v0, 0xD6($s0)
/* 1A224 800AF624 14400003 */  bnez       $v0, .L800AF634
/* 1A228 800AF628 00000000 */   nop
/* 1A22C 800AF62C 0C02BEC5 */  jal        func_800AFB14
/* 1A230 800AF630 02002021 */   addu      $a0, $s0, $zero
.L800AF634:
/* 1A234 800AF634 920200D4 */  lbu        $v0, 0xD4($s0)
/* 1A238 800AF638 10400003 */  beqz       $v0, .L800AF648
/* 1A23C 800AF63C 00000000 */   nop
/* 1A240 800AF640 0C02BF58 */  jal        func_800AFD60
/* 1A244 800AF644 02002021 */   addu      $a0, $s0, $zero
.L800AF648:
/* 1A248 800AF648 8E020074 */  lw         $v0, 0x74($s0)
/* 1A24C 800AF64C 10400004 */  beqz       $v0, .L800AF660
/* 1A250 800AF650 961100AE */   lhu       $s1, 0xAE($s0)
/* 1A254 800AF654 8C430020 */  lw         $v1, 0x20($v0)
/* 1A258 800AF658 0802BD9B */  j          .L800AF66C
/* 1A25C 800AF65C 00111040 */   sll       $v0, $s1, 1
.L800AF660:
/* 1A260 800AF660 8E020078 */  lw         $v0, 0x78($s0)
/* 1A264 800AF664 8C430014 */  lw         $v1, 0x14($v0)
/* 1A268 800AF668 00111040 */  sll        $v0, $s1, 1
.L800AF66C:
/* 1A26C 800AF66C 00431021 */  addu       $v0, $v0, $v1
/* 1A270 800AF670 94510000 */  lhu        $s1, 0x0($v0)
/* 1A274 800AF674 920200D7 */  lbu        $v0, 0xD7($s0)
/* 1A278 800AF678 14400019 */  bnez       $v0, .L800AF6E0
/* 1A27C 800AF67C 00111080 */   sll       $v0, $s1, 2
/* 1A280 800AF680 8E83002C */  lw         $v1, 0x2C($s4)
/* 1A284 800AF684 00431021 */  addu       $v0, $v0, $v1
/* 1A288 800AF688 8C420000 */  lw         $v0, 0x0($v0)
/* 1A28C 800AF68C 920300C9 */  lbu        $v1, 0xC9($s0)
/* 1A290 800AF690 10600010 */  beqz       $v1, .L800AF6D4
/* 1A294 800AF694 AE020008 */   sw        $v0, 0x8($s0)
/* 1A298 800AF698 960200A0 */  lhu        $v0, 0xA0($s0)
/* 1A29C 800AF69C 1040000D */  beqz       $v0, .L800AF6D4
/* 1A2A0 800AF6A0 00002821 */   addu      $a1, $zero, $zero
/* 1A2A4 800AF6A4 3C068010 */  lui        $a2, %hi(D_80102958)
/* 1A2A8 800AF6A8 8CC62958 */  lw         $a2, %lo(D_80102958)($a2)
/* 1A2AC 800AF6AC 001320C0 */  sll        $a0, $s3, 3
/* 1A2B0 800AF6B0 3C028010 */  lui        $v0, %hi(D_80102948)
/* 1A2B4 800AF6B4 8C422948 */  lw         $v0, %lo(D_80102948)($v0)
/* 1A2B8 800AF6B8 00932023 */  subu       $a0, $a0, $s3
/* 1A2BC 800AF6BC 00042080 */  sll        $a0, $a0, 2
/* 1A2C0 800AF6C0 A60000A0 */  sh         $zero, 0xA0($s0)
/* 1A2C4 800AF6C4 0C02D454 */  jal        func_800B5150
/* 1A2C8 800AF6C8 00442021 */   addu      $a0, $v0, $a0
/* 1A2CC 800AF6CC 0802BDB8 */  j          .L800AF6E0
/* 1A2D0 800AF6D0 00000000 */   nop
.L800AF6D4:
/* 1A2D4 800AF6D4 02002021 */  addu       $a0, $s0, $zero
/* 1A2D8 800AF6D8 0C02BE0E */  jal        func_800AF838
/* 1A2DC 800AF6DC 02602821 */   addu      $a1, $s3, $zero
.L800AF6E0:
/* 1A2E0 800AF6E0 8E860028 */  lw         $a2, 0x28($s4)
/* 1A2E4 800AF6E4 00112080 */  sll        $a0, $s1, 2
/* 1A2E8 800AF6E8 920500BA */  lbu        $a1, 0xBA($s0)
/* 1A2EC 800AF6EC 920300B9 */  lbu        $v1, 0xB9($s0)
/* 1A2F0 800AF6F0 24020001 */  addiu      $v0, $zero, 0x1
/* 1A2F4 800AF6F4 00451023 */  subu       $v0, $v0, $a1
/* 1A2F8 800AF6F8 00620018 */  mult       $v1, $v0
/* 1A2FC 800AF6FC 00001812 */  mflo       $v1
/* 1A300 800AF700 00862021 */  addu       $a0, $a0, $a2
/* 1A304 800AF704 C4820000 */  lwc1       $f2, 0x0($a0)
/* 1A308 800AF708 44920000 */  mtc1       $s2, $f0
/* 1A30C 800AF70C 00000000 */  nop
/* 1A310 800AF710 46800020 */  cvt.s.w    $f0, $f0
/* 1A314 800AF714 46020080 */  add.s      $f2, $f0, $f2
/* 1A318 800AF718 00602021 */  addu       $a0, $v1, $zero
/* 1A31C 800AF71C 30630080 */  andi       $v1, $v1, 0x80
/* 1A320 800AF720 10600004 */  beqz       $v1, .L800AF734
/* 1A324 800AF724 E602002C */   swc1      $f2, 0x2C($s0)
/* 1A328 800AF728 308200FF */  andi       $v0, $a0, 0xFF
/* 1A32C 800AF72C 0802BDCE */  j          .L800AF738
/* 1A330 800AF730 2442FF00 */   addiu     $v0, $v0, -0x100
.L800AF734:
/* 1A334 800AF734 308200FF */  andi       $v0, $a0, 0xFF
.L800AF738:
/* 1A338 800AF738 44820000 */  mtc1       $v0, $f0
/* 1A33C 800AF73C 00000000 */  nop
/* 1A340 800AF740 46800020 */  cvt.s.w    $f0, $f0
/* 1A344 800AF744 46001000 */  add.s      $f0, $f2, $f0
/* 1A348 800AF748 E600002C */  swc1       $f0, 0x2C($s0)
/* 1A34C 800AF74C 920400CA */  lbu        $a0, 0xCA($s0)
/* 1A350 800AF750 920200CC */  lbu        $v0, 0xCC($s0)
/* 1A354 800AF754 308300FF */  andi       $v1, $a0, 0xFF
/* 1A358 800AF758 1062002F */  beq        $v1, $v0, .L800AF818
/* 1A35C 800AF75C 24020080 */   addiu     $v0, $zero, 0x80
/* 1A360 800AF760 920500CB */  lbu        $a1, 0xCB($s0)
/* 1A364 800AF764 00451023 */  subu       $v0, $v0, $a1
/* 1A368 800AF768 00430018 */  mult       $v0, $v1
/* 1A36C 800AF76C 00001012 */  mflo       $v0
/* 1A370 800AF770 A20400CC */  sb         $a0, 0xCC($s0)
/* 1A374 800AF774 001320C0 */  sll        $a0, $s3, 3
/* 1A378 800AF778 3C038010 */  lui        $v1, %hi(D_80102948)
/* 1A37C 800AF77C 8C632948 */  lw         $v1, %lo(D_80102948)($v1)
/* 1A380 800AF780 00932023 */  subu       $a0, $a0, $s3
/* 1A384 800AF784 00042080 */  sll        $a0, $a0, 2
/* 1A388 800AF788 00642021 */  addu       $a0, $v1, $a0
/* 1A38C 800AF78C 000211C3 */  sra        $v0, $v0, 7
/* 1A390 800AF790 00A22821 */  addu       $a1, $a1, $v0
/* 1A394 800AF794 0C02D3E4 */  jal        func_800B4F90
/* 1A398 800AF798 30A500FF */   andi      $a1, $a1, 0xFF
/* 1A39C 800AF79C 0802BE06 */  j          .L800AF818
/* 1A3A0 800AF7A0 00000000 */   nop
.L800AF7A4:
/* 1A3A4 800AF7A4 920200C3 */  lbu        $v0, 0xC3($s0)
/* 1A3A8 800AF7A8 2C420004 */  sltiu      $v0, $v0, 0x4
/* 1A3AC 800AF7AC 1040001A */  beqz       $v0, .L800AF818
/* 1A3B0 800AF7B0 24020004 */   addiu     $v0, $zero, 0x4
/* 1A3B4 800AF7B4 8E03000C */  lw         $v1, 0xC($s0)
/* 1A3B8 800AF7B8 920400C4 */  lbu        $a0, 0xC4($s0)
/* 1A3BC 800AF7BC A20200C3 */  sb         $v0, 0xC3($s0)
/* 1A3C0 800AF7C0 24020001 */  addiu      $v0, $zero, 0x1
/* 1A3C4 800AF7C4 A20200C5 */  sb         $v0, 0xC5($s0)
/* 1A3C8 800AF7C8 AE030054 */  sw         $v1, 0x54($s0)
/* 1A3CC 800AF7CC 0802BE06 */  j          .L800AF818
/* 1A3D0 800AF7D0 A20400CD */   sb        $a0, 0xCD($s0)
.L800AF7D4:
/* 1A3D4 800AF7D4 920200C9 */  lbu        $v0, 0xC9($s0)
/* 1A3D8 800AF7D8 1040000F */  beqz       $v0, .L800AF818
/* 1A3DC 800AF7DC 00002821 */   addu      $a1, $zero, $zero
/* 1A3E0 800AF7E0 A20000C9 */  sb         $zero, 0xC9($s0)
/* 1A3E4 800AF7E4 3C068010 */  lui        $a2, %hi(D_80102958)
/* 1A3E8 800AF7E8 8CC62958 */  lw         $a2, %lo(D_80102958)($a2)
/* 1A3EC 800AF7EC 001380C0 */  sll        $s0, $s3, 3
/* 1A3F0 800AF7F0 3C048010 */  lui        $a0, %hi(D_80102948)
/* 1A3F4 800AF7F4 8C842948 */  lw         $a0, %lo(D_80102948)($a0)
/* 1A3F8 800AF7F8 02138023 */  subu       $s0, $s0, $s3
/* 1A3FC 800AF7FC 00108080 */  sll        $s0, $s0, 2
/* 1A400 800AF800 0C02D454 */  jal        func_800B5150
/* 1A404 800AF804 00902021 */   addu      $a0, $a0, $s0
/* 1A408 800AF808 3C048010 */  lui        $a0, %hi(D_80102948)
/* 1A40C 800AF80C 8C842948 */  lw         $a0, %lo(D_80102948)($a0)
/* 1A410 800AF810 0C02D4A4 */  jal        func_800B5290
/* 1A414 800AF814 00902021 */   addu      $a0, $a0, $s0
.L800AF818:
/* 1A418 800AF818 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1A41C 800AF81C 8FB40020 */  lw         $s4, 0x20($sp)
/* 1A420 800AF820 8FB3001C */  lw         $s3, 0x1C($sp)
/* 1A424 800AF824 8FB20018 */  lw         $s2, 0x18($sp)
/* 1A428 800AF828 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A42C 800AF82C 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A430 800AF830 03E00008 */  jr         $ra
/* 1A434 800AF834 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800AF2EC, . - func_800AF2EC
