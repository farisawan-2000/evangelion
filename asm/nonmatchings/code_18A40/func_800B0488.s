.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B0488
/* 1B088 800B0488 00803021 */  addu       $a2, $a0, $zero
/* 1B08C 800B048C 90C700C9 */  lbu        $a3, 0xc9($a2)
/* 1B090 800B0490 00001821 */  addu       $v1, $zero, $zero
/* 1B094 800B0494 ACC00004 */  sw         $zero, 4($a2)
.L800B0498:
/* 1B098 800B0498 A0800000 */  sb         $zero, ($a0)
/* 1B09C 800B049C 24630001 */  addiu      $v1, $v1, 1
/* 1B0A0 800B04A0 2C62013C */  sltiu      $v0, $v1, 0x13c
/* 1B0A4 800B04A4 1440FFFC */  bnez       $v0, .L800B0498
/* 1B0A8 800B04A8 24840001 */   addiu     $a0, $a0, 1
/* 1B0AC 800B04AC 240500FF */  addiu      $a1, $zero, 0xff
/* 1B0B0 800B04B0 A0C500CC */  sb         $a1, 0xcc($a2)
/* 1B0B4 800B04B4 A0C500BE */  sb         $a1, 0xbe($a2)
/* 1B0B8 800B04B8 3C028010 */  lui        $v0, %hi(D_80102954)
/* 1B0BC 800B04BC 8C422954 */  lw         $v0, %lo(D_80102954)($v0)
/* 1B0C0 800B04C0 24046000 */  addiu      $a0, $zero, 0x6000
/* 1B0C4 800B04C4 0082001A */  div        $zero, $a0, $v0
/* 1B0C8 800B04C8 14400002 */  bnez       $v0, .L800B04D4
/* 1B0CC 800B04CC 00000000 */   nop
/* 1B0D0 800B04D0 0007000D */  break      7
.L800B04D4:
/* 1B0D4 800B04D4 2401FFFF */   addiu     $at, $zero, -1
/* 1B0D8 800B04D8 14410004 */  bne        $v0, $at, .L800B04EC
/* 1B0DC 800B04DC 3C018000 */   lui       $at, 0x8000
/* 1B0E0 800B04E0 14810002 */  bne        $a0, $at, .L800B04EC
/* 1B0E4 800B04E4 00000000 */   nop
/* 1B0E8 800B04E8 0006000D */  break      6
.L800B04EC:
/* 1B0EC 800B04EC 00002012 */   mflo      $a0
/* 1B0F0 800B04F0 3C0142C7 */  lui        $at, 0x42c7
/* 1B0F4 800B04F4 3421CCCD */  ori        $at, $at, 0xcccd
/* 1B0F8 800B04F8 44810000 */  mtc1       $at, $f0
/* 1B0FC 800B04FC 3C013D00 */  lui        $at, 0x3d00
/* 1B100 800B0500 44811000 */  mtc1       $at, $f2
/* 1B104 800B0504 3C013F80 */  lui        $at, 0x3f80
/* 1B108 800B0508 44812000 */  mtc1       $at, $f4
/* 1B10C 800B050C 3C013B80 */  lui        $at, 0x3b80
/* 1B110 800B0510 34218081 */  ori        $at, $at, 0x8081
/* 1B114 800B0514 44813000 */  mtc1       $at, $f6
/* 1B118 800B0518 3C013D88 */  lui        $at, 0x3d88
/* 1B11C 800B051C 34218889 */  ori        $at, $at, 0x8889
/* 1B120 800B0520 44814000 */  mtc1       $at, $f8
/* 1B124 800B0524 2403007F */  addiu      $v1, $zero, 0x7f
/* 1B128 800B0528 A0C300D3 */  sb         $v1, 0xd3($a2)
/* 1B12C 800B052C A0C300BC */  sb         $v1, 0xbc($a2)
/* 1B130 800B0530 A0C300C1 */  sb         $v1, 0xc1($a2)
/* 1B134 800B0534 A0C500C7 */  sb         $a1, 0xc7($a2)
/* 1B138 800B0538 A0C300C2 */  sb         $v1, 0xc2($a2)
/* 1B13C 800B053C 24020040 */  addiu      $v0, $zero, 0x40
/* 1B140 800B0540 A0C200BD */  sb         $v0, 0xbd($a2)
/* 1B144 800B0544 24020001 */  addiu      $v0, $zero, 1
/* 1B148 800B0548 A0C200BF */  sb         $v0, 0xbf($a2)
/* 1B14C 800B054C A0C200C6 */  sb         $v0, 0xc6($a2)
/* 1B150 800B0550 2402000F */  addiu      $v0, $zero, 0xf
/* 1B154 800B0554 A0C200C8 */  sb         $v0, 0xc8($a2)
/* 1B158 800B0558 3C038010 */  lui        $v1, %hi(D_80102968)
/* 1B15C 800B055C 8C632968 */  lw         $v1, %lo(D_80102968)($v1)
/* 1B160 800B0560 3402FFFF */  ori        $v0, $zero, 0xffff
/* 1B164 800B0564 A4C200A0 */  sh         $v0, 0xa0($a2)
/* 1B168 800B0568 24020001 */  addiu      $v0, $zero, 1
/* 1B16C 800B056C A4C2009A */  sh         $v0, 0x9a($a2)
/* 1B170 800B0570 A4C200A2 */  sh         $v0, 0xa2($a2)
/* 1B174 800B0574 A4C200A4 */  sh         $v0, 0xa4($a2)
/* 1B178 800B0578 2402FFFF */  addiu      $v0, $zero, -1
/* 1B17C 800B057C ACC20010 */  sw         $v0, 0x10($a2)
/* 1B180 800B0580 24020080 */  addiu      $v0, $zero, 0x80
/* 1B184 800B0584 A4C2009E */  sh         $v0, 0x9e($a2)
/* 1B188 800B0588 A4C200B0 */  sh         $v0, 0xb0($a2)
/* 1B18C 800B058C A4C20098 */  sh         $v0, 0x98($a2)
/* 1B190 800B0590 E4C00028 */  swc1       $f0, 0x28($a2)
/* 1B194 800B0594 E4C2006C */  swc1       $f2, 0x6c($a2)
/* 1B198 800B0598 E4C40058 */  swc1       $f4, 0x58($a2)
/* 1B19C 800B059C E4C6005C */  swc1       $f6, 0x5c($a2)
/* 1B1A0 800B05A0 E4C80060 */  swc1       $f8, 0x60($a2)
/* 1B1A4 800B05A4 A4C400A8 */  sh         $a0, 0xa8($a2)
/* 1B1A8 800B05A8 14600003 */  bnez       $v1, .L800B05B8
/* 1B1AC 800B05AC A4C4009C */   sh        $a0, 0x9c($a2)
/* 1B1B0 800B05B0 3C038010 */  lui        $v1, %hi(D_8010296C)
/* 1B1B4 800B05B4 8C63296C */  lw         $v1, %lo(D_8010296C)($v1)
.L800B05B8:
/* 1B1B8 800B05B8 ACC3007C */  sw         $v1, 0x7c($a2)
/* 1B1BC 800B05BC 03E00008 */  jr         $ra
/* 1B1C0 800B05C0 A0C700C9 */   sb        $a3, 0xc9($a2)
