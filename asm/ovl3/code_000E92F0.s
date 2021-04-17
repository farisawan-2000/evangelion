.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003FDE0_E92F0
/* E92F0 8003FDE0 3C038007 */  lui        $v1, %hi(D_8006C580)
/* E92F4 8003FDE4 9063C580 */  lbu        $v1, %lo(D_8006C580)($v1)
/* E92F8 8003FDE8 27BDFF78 */  addiu      $sp, $sp, -0x88
/* E92FC 8003FDEC 24020001 */  addiu      $v0, $zero, 1
/* E9300 8003FDF0 AFBF006C */  sw         $ra, 0x6c($sp)
/* E9304 8003FDF4 AFB40068 */  sw         $s4, 0x68($sp)
/* E9308 8003FDF8 AFB30064 */  sw         $s3, 0x64($sp)
/* E930C 8003FDFC AFB20060 */  sw         $s2, 0x60($sp)
/* E9310 8003FE00 AFB1005C */  sw         $s1, 0x5c($sp)
/* E9314 8003FE04 AFB00058 */  sw         $s0, 0x58($sp)
/* E9318 8003FE08 F7B80080 */  sdc1       $f24, 0x80($sp)
/* E931C 8003FE0C F7B60078 */  sdc1       $f22, 0x78($sp)
/* E9320 8003FE10 F7B40070 */  sdc1       $f20, 0x70($sp)
/* E9324 8003FE14 10620005 */  beq        $v1, $v0, .L8003FE2C
/* E9328 8003FE18 24020002 */   addiu     $v0, $zero, 2
/* E932C 8003FE1C 106200CB */  beq        $v1, $v0, .L8004014C
/* E9330 8003FE20 240401D6 */   addiu     $a0, $zero, 0x1d6
/* E9334 8003FE24 08010117 */  j          .L8004045C
/* E9338 8003FE28 24040008 */   addiu     $a0, $zero, 8
.L8003FE2C:
/* E933C 8003FE2C 240405DC */  addiu      $a0, $zero, 0x5dc
/* E9340 8003FE30 24050002 */  addiu      $a1, $zero, 2
/* E9344 8003FE34 0C00D925 */  jal        func_80036494_DF9A4
/* E9348 8003FE38 24060028 */   addiu     $a2, $zero, 0x28
/* E934C 8003FE3C 00409021 */  addu       $s2, $v0, $zero
/* E9350 8003FE40 8E44000C */  lw         $a0, 0xc($s2)
/* E9354 8003FE44 8C82000C */  lw         $v0, 0xc($a0)
/* E9358 8003FE48 94450000 */  lhu        $a1, ($v0)
/* E935C 8003FE4C 00003021 */  addu       $a2, $zero, $zero
/* E9360 8003FE50 0C02912A */  jal        func_800A44A8
/* E9364 8003FE54 00052842 */   srl       $a1, $a1, 1
/* E9368 8003FE58 8E44000C */  lw         $a0, 0xc($s2)
/* E936C 8003FE5C 3C014198 */  lui        $at, 0x4198
/* E9370 8003FE60 4481B000 */  mtc1       $at, $f22
/* E9374 8003FE64 3C013F80 */  lui        $at, 0x3f80
/* E9378 8003FE68 4481C000 */  mtc1       $at, $f24
/* E937C 8003FE6C 4406B000 */  mfc1       $a2, $f22
/* E9380 8003FE70 4407C000 */  mfc1       $a3, $f24
/* E9384 8003FE74 00000000 */  nop
/* E9388 8003FE78 0C02915B */  jal        func_800A456C
/* E938C 8003FE7C 00002821 */   addu      $a1, $zero, $zero
/* E9390 8003FE80 8E44000C */  lw         $a0, 0xc($s2)
/* E9394 8003FE84 24050280 */  addiu      $a1, $zero, 0x280
/* E9398 8003FE88 0C028D89 */  jal        func_800A3624
/* E939C 8003FE8C 24060040 */   addiu     $a2, $zero, 0x40
/* E93A0 8003FE90 8E43000C */  lw         $v1, 0xc($s2)
/* E93A4 8003FE94 240405DB */  addiu      $a0, $zero, 0x5db
/* E93A8 8003FE98 9462001E */  lhu        $v0, 0x1e($v1)
/* E93AC 8003FE9C 24050002 */  addiu      $a1, $zero, 2
/* E93B0 8003FEA0 24060029 */  addiu      $a2, $zero, 0x29
/* E93B4 8003FEA4 34420104 */  ori        $v0, $v0, 0x104
/* E93B8 8003FEA8 0C00D925 */  jal        func_80036494_DF9A4
/* E93BC 8003FEAC A462001E */   sh        $v0, 0x1e($v1)
/* E93C0 8003FEB0 00409021 */  addu       $s2, $v0, $zero
/* E93C4 8003FEB4 8E44000C */  lw         $a0, 0xc($s2)
/* E93C8 8003FEB8 8C82000C */  lw         $v0, 0xc($a0)
/* E93CC 8003FEBC 94450000 */  lhu        $a1, ($v0)
/* E93D0 8003FEC0 00003021 */  addu       $a2, $zero, $zero
/* E93D4 8003FEC4 0C02912A */  jal        func_800A44A8
/* E93D8 8003FEC8 00052842 */   srl       $a1, $a1, 1
/* E93DC 8003FECC 3C014000 */  lui        $at, 0x4000
/* E93E0 8003FED0 4481A000 */  mtc1       $at, $f20
/* E93E4 8003FED4 8E44000C */  lw         $a0, 0xc($s2)
/* E93E8 8003FED8 4406A000 */  mfc1       $a2, $f20
/* E93EC 8003FEDC 4407A000 */  mfc1       $a3, $f20
/* E93F0 8003FEE0 00000000 */  nop
/* E93F4 8003FEE4 0C02915B */  jal        func_800A456C
/* E93F8 8003FEE8 00002821 */   addu      $a1, $zero, $zero
/* E93FC 8003FEEC 8E44000C */  lw         $a0, 0xc($s2)
/* E9400 8003FEF0 24050280 */  addiu      $a1, $zero, 0x280
/* E9404 8003FEF4 0C028D89 */  jal        func_800A3624
/* E9408 8003FEF8 24060280 */   addiu     $a2, $zero, 0x280
/* E940C 8003FEFC 8E43000C */  lw         $v1, 0xc($s2)
/* E9410 8003FF00 9462001E */  lhu        $v0, 0x1e($v1)
/* E9414 8003FF04 24040028 */  addiu      $a0, $zero, 0x28
/* E9418 8003FF08 2405002A */  addiu      $a1, $zero, 0x2a
/* E941C 8003FF0C 34420104 */  ori        $v0, $v0, 0x104
/* E9420 8003FF10 0C00DD19 */  jal        func_80037464_E0974
/* E9424 8003FF14 A462001E */   sh        $v0, 0x1e($v1)
/* E9428 8003FF18 00409021 */  addu       $s2, $v0, $zero
/* E942C 8003FF1C 8E44000C */  lw         $a0, 0xc($s2)
/* E9430 8003FF20 8C82000C */  lw         $v0, 0xc($a0)
/* E9434 8003FF24 94450000 */  lhu        $a1, ($v0)
/* E9438 8003FF28 00003021 */  addu       $a2, $zero, $zero
/* E943C 8003FF2C 0C02912A */  jal        func_800A44A8
/* E9440 8003FF30 00052842 */   srl       $a1, $a1, 1
/* E9444 8003FF34 8E44000C */  lw         $a0, 0xc($s2)
/* E9448 8003FF38 4406B000 */  mfc1       $a2, $f22
/* E944C 8003FF3C 4407C000 */  mfc1       $a3, $f24
/* E9450 8003FF40 00000000 */  nop
/* E9454 8003FF44 0C02915B */  jal        func_800A456C
/* E9458 8003FF48 00002821 */   addu      $a1, $zero, $zero
/* E945C 8003FF4C 8E44000C */  lw         $a0, 0xc($s2)
/* E9460 8003FF50 24050280 */  addiu      $a1, $zero, 0x280
/* E9464 8003FF54 0C028D89 */  jal        func_800A3624
/* E9468 8003FF58 24060040 */   addiu     $a2, $zero, 0x40
/* E946C 8003FF5C 8E43000C */  lw         $v1, 0xc($s2)
/* E9470 8003FF60 9462001E */  lhu        $v0, 0x1e($v1)
/* E9474 8003FF64 34420104 */  ori        $v0, $v0, 0x104
/* E9478 8003FF68 A462001E */  sh         $v0, 0x1e($v1)
/* E947C 8003FF6C 8E42000C */  lw         $v0, 0xc($s2)
/* E9480 8003FF70 24040029 */  addiu      $a0, $zero, 0x29
/* E9484 8003FF74 8C430004 */  lw         $v1, 4($v0)
/* E9488 8003FF78 2405002B */  addiu      $a1, $zero, 0x2b
/* E948C 8003FF7C 3C028007 */  lui        $v0, %hi(D_80068F40_112450)
/* E9490 8003FF80 24428F40 */  addiu      $v0, $v0, %lo(D_80068F40_112450)
/* E9494 8003FF84 0C00DD19 */  jal        func_80037464_E0974
/* E9498 8003FF88 AC620004 */   sw        $v0, 4($v1)
/* E949C 8003FF8C 00409021 */  addu       $s2, $v0, $zero
/* E94A0 8003FF90 8E44000C */  lw         $a0, 0xc($s2)
/* E94A4 8003FF94 8C82000C */  lw         $v0, 0xc($a0)
/* E94A8 8003FF98 94450000 */  lhu        $a1, ($v0)
/* E94AC 8003FF9C 00003021 */  addu       $a2, $zero, $zero
/* E94B0 8003FFA0 0C02912A */  jal        func_800A44A8
/* E94B4 8003FFA4 00052842 */   srl       $a1, $a1, 1
/* E94B8 8003FFA8 8E44000C */  lw         $a0, 0xc($s2)
/* E94BC 8003FFAC 4406A000 */  mfc1       $a2, $f20
/* E94C0 8003FFB0 00002821 */  addu       $a1, $zero, $zero
/* E94C4 8003FFB4 0C02915B */  jal        func_800A456C
/* E94C8 8003FFB8 00C03821 */   addu      $a3, $a2, $zero
/* E94CC 8003FFBC 8E44000C */  lw         $a0, 0xc($s2)
/* E94D0 8003FFC0 24050280 */  addiu      $a1, $zero, 0x280
/* E94D4 8003FFC4 0C028D89 */  jal        func_800A3624
/* E94D8 8003FFC8 24060280 */   addiu     $a2, $zero, 0x280
/* E94DC 8003FFCC 8E43000C */  lw         $v1, 0xc($s2)
/* E94E0 8003FFD0 9462001E */  lhu        $v0, 0x1e($v1)
/* E94E4 8003FFD4 34420104 */  ori        $v0, $v0, 0x104
/* E94E8 8003FFD8 A462001E */  sh         $v0, 0x1e($v1)
/* E94EC 8003FFDC 8E42000C */  lw         $v0, 0xc($s2)
/* E94F0 8003FFE0 240401AA */  addiu      $a0, $zero, 0x1aa
/* E94F4 8003FFE4 24050002 */  addiu      $a1, $zero, 2
/* E94F8 8003FFE8 8C430004 */  lw         $v1, 4($v0)
/* E94FC 8003FFEC 24060022 */  addiu      $a2, $zero, 0x22
/* E9500 8003FFF0 3C028007 */  lui        $v0, %hi(D_80068F60_112470)
/* E9504 8003FFF4 24428F60 */  addiu      $v0, $v0, %lo(D_80068F60_112470)
/* E9508 8003FFF8 0C00D925 */  jal        func_80036494_DF9A4
/* E950C 8003FFFC AC620004 */   sw        $v0, 4($v1)
/* E9510 80040000 00409021 */  addu       $s2, $v0, $zero
/* E9514 80040004 8E44000C */  lw         $a0, 0xc($s2)
/* E9518 80040008 24050040 */  addiu      $a1, $zero, 0x40
/* E951C 8004000C 0C028D89 */  jal        func_800A3624
/* E9520 80040010 240601B8 */   addiu     $a2, $zero, 0x1b8
/* E9524 80040014 8E43000C */  lw         $v1, 0xc($s2)
/* E9528 80040018 9462001E */  lhu        $v0, 0x1e($v1)
/* E952C 8004001C 34420004 */  ori        $v0, $v0, 4
/* E9530 80040020 A462001E */  sh         $v0, 0x1e($v1)
/* E9534 80040024 8E42000C */  lw         $v0, 0xc($s2)
/* E9538 80040028 240401AB */  addiu      $a0, $zero, 0x1ab
/* E953C 8004002C 24050002 */  addiu      $a1, $zero, 2
/* E9540 80040030 8C420004 */  lw         $v0, 4($v0)
/* E9544 80040034 24060023 */  addiu      $a2, $zero, 0x23
/* E9548 80040038 3C108007 */  lui        $s0, %hi(D_80068F20_112430)
/* E954C 8004003C 26108F20 */  addiu      $s0, $s0, %lo(D_80068F20_112430)
/* E9550 80040040 0C00D925 */  jal        func_80036494_DF9A4
/* E9554 80040044 AC500004 */   sw        $s0, 4($v0)
/* E9558 80040048 00409021 */  addu       $s2, $v0, $zero
/* E955C 8004004C 8E44000C */  lw         $a0, 0xc($s2)
/* E9560 80040050 240500C0 */  addiu      $a1, $zero, 0xc0
/* E9564 80040054 0C028D89 */  jal        func_800A3624
/* E9568 80040058 240602A8 */   addiu     $a2, $zero, 0x2a8
/* E956C 8004005C 8E43000C */  lw         $v1, 0xc($s2)
/* E9570 80040060 9462001E */  lhu        $v0, 0x1e($v1)
/* E9574 80040064 34420004 */  ori        $v0, $v0, 4
/* E9578 80040068 A462001E */  sh         $v0, 0x1e($v1)
/* E957C 8004006C 8E42000C */  lw         $v0, 0xc($s2)
/* E9580 80040070 240401AC */  addiu      $a0, $zero, 0x1ac
/* E9584 80040074 8C420004 */  lw         $v0, 4($v0)
/* E9588 80040078 24050002 */  addiu      $a1, $zero, 2
/* E958C 8004007C 24060024 */  addiu      $a2, $zero, 0x24
/* E9590 80040080 0C00D925 */  jal        func_80036494_DF9A4
/* E9594 80040084 AC500004 */   sw        $s0, 4($v0)
/* E9598 80040088 00409021 */  addu       $s2, $v0, $zero
/* E959C 8004008C 8E44000C */  lw         $a0, 0xc($s2)
/* E95A0 80040090 24050400 */  addiu      $a1, $zero, 0x400
/* E95A4 80040094 0C028D89 */  jal        func_800A3624
/* E95A8 80040098 24060210 */   addiu     $a2, $zero, 0x210
/* E95AC 8004009C 8E43000C */  lw         $v1, 0xc($s2)
/* E95B0 800400A0 9462001E */  lhu        $v0, 0x1e($v1)
/* E95B4 800400A4 34420004 */  ori        $v0, $v0, 4
/* E95B8 800400A8 A462001E */  sh         $v0, 0x1e($v1)
/* E95BC 800400AC 8E42000C */  lw         $v0, 0xc($s2)
/* E95C0 800400B0 8C420004 */  lw         $v0, 4($v0)
/* E95C4 800400B4 24040022 */  addiu      $a0, $zero, 0x22
/* E95C8 800400B8 24050025 */  addiu      $a1, $zero, 0x25
/* E95CC 800400BC 0C00DD19 */  jal        func_80037464_E0974
/* E95D0 800400C0 AC500004 */   sw        $s0, 4($v0)
/* E95D4 800400C4 00409021 */  addu       $s2, $v0, $zero
/* E95D8 800400C8 8E44000C */  lw         $a0, 0xc($s2)
/* E95DC 800400CC 24050040 */  addiu      $a1, $zero, 0x40
/* E95E0 800400D0 0C028D89 */  jal        func_800A3624
/* E95E4 800400D4 240601B8 */   addiu     $a2, $zero, 0x1b8
/* E95E8 800400D8 8E43000C */  lw         $v1, 0xc($s2)
/* E95EC 800400DC 9462001E */  lhu        $v0, 0x1e($v1)
/* E95F0 800400E0 34420004 */  ori        $v0, $v0, 4
/* E95F4 800400E4 A462001E */  sh         $v0, 0x1e($v1)
/* E95F8 800400E8 8E42000C */  lw         $v0, 0xc($s2)
/* E95FC 800400EC 24040023 */  addiu      $a0, $zero, 0x23
/* E9600 800400F0 8C420004 */  lw         $v0, 4($v0)
/* E9604 800400F4 24050026 */  addiu      $a1, $zero, 0x26
/* E9608 800400F8 3C108007 */  lui        $s0, %hi(D_80068F00_112410)
/* E960C 800400FC 26108F00 */  addiu      $s0, $s0, %lo(D_80068F00_112410)
/* E9610 80040100 0C00DD19 */  jal        func_80037464_E0974
/* E9614 80040104 AC500004 */   sw        $s0, 4($v0)
/* E9618 80040108 00409021 */  addu       $s2, $v0, $zero
/* E961C 8004010C 8E44000C */  lw         $a0, 0xc($s2)
/* E9620 80040110 240500C0 */  addiu      $a1, $zero, 0xc0
/* E9624 80040114 0C028D89 */  jal        func_800A3624
/* E9628 80040118 240602A8 */   addiu     $a2, $zero, 0x2a8
/* E962C 8004011C 8E43000C */  lw         $v1, 0xc($s2)
/* E9630 80040120 9462001E */  lhu        $v0, 0x1e($v1)
/* E9634 80040124 34420004 */  ori        $v0, $v0, 4
/* E9638 80040128 A462001E */  sh         $v0, 0x1e($v1)
/* E963C 8004012C 8E42000C */  lw         $v0, 0xc($s2)
/* E9640 80040130 8C420004 */  lw         $v0, 4($v0)
/* E9644 80040134 24040024 */  addiu      $a0, $zero, 0x24
/* E9648 80040138 24050027 */  addiu      $a1, $zero, 0x27
/* E964C 8004013C 0C00DD19 */  jal        func_80037464_E0974
/* E9650 80040140 AC500004 */   sw        $s0, 4($v0)
/* E9654 80040144 0801010B */  j          .L8004042C
/* E9658 80040148 00409021 */   addu      $s2, $v0, $zero
.L8004014C:
/* E965C 8004014C 24050002 */  addiu      $a1, $zero, 2
/* E9660 80040150 0C00D925 */  jal        func_80036494_DF9A4
/* E9664 80040154 24060028 */   addiu     $a2, $zero, 0x28
/* E9668 80040158 00409021 */  addu       $s2, $v0, $zero
/* E966C 8004015C 8E44000C */  lw         $a0, 0xc($s2)
/* E9670 80040160 8C82000C */  lw         $v0, 0xc($a0)
/* E9674 80040164 94450000 */  lhu        $a1, ($v0)
/* E9678 80040168 00003021 */  addu       $a2, $zero, $zero
/* E967C 8004016C 0C02912A */  jal        func_800A44A8
/* E9680 80040170 00052842 */   srl       $a1, $a1, 1
/* E9684 80040174 3C014000 */  lui        $at, 0x4000
/* E9688 80040178 4481A000 */  mtc1       $at, $f20
/* E968C 8004017C 8E44000C */  lw         $a0, 0xc($s2)
/* E9690 80040180 4406A000 */  mfc1       $a2, $f20
/* E9694 80040184 4407A000 */  mfc1       $a3, $f20
/* E9698 80040188 00000000 */  nop
/* E969C 8004018C 0C02915B */  jal        func_800A456C
/* E96A0 80040190 00002821 */   addu      $a1, $zero, $zero
/* E96A4 80040194 8E44000C */  lw         $a0, 0xc($s2)
/* E96A8 80040198 24050280 */  addiu      $a1, $zero, 0x280
/* E96AC 8004019C 0C028D89 */  jal        func_800A3624
/* E96B0 800401A0 24060040 */   addiu     $a2, $zero, 0x40
/* E96B4 800401A4 8E43000C */  lw         $v1, 0xc($s2)
/* E96B8 800401A8 240401D7 */  addiu      $a0, $zero, 0x1d7
/* E96BC 800401AC 9462001E */  lhu        $v0, 0x1e($v1)
/* E96C0 800401B0 24050002 */  addiu      $a1, $zero, 2
/* E96C4 800401B4 24060029 */  addiu      $a2, $zero, 0x29
/* E96C8 800401B8 34420104 */  ori        $v0, $v0, 0x104
/* E96CC 800401BC 0C00D925 */  jal        func_80036494_DF9A4
/* E96D0 800401C0 A462001E */   sh        $v0, 0x1e($v1)
/* E96D4 800401C4 00409021 */  addu       $s2, $v0, $zero
/* E96D8 800401C8 8E44000C */  lw         $a0, 0xc($s2)
/* E96DC 800401CC 8C82000C */  lw         $v0, 0xc($a0)
/* E96E0 800401D0 94450000 */  lhu        $a1, ($v0)
/* E96E4 800401D4 00003021 */  addu       $a2, $zero, $zero
/* E96E8 800401D8 0C02912A */  jal        func_800A44A8
/* E96EC 800401DC 00052842 */   srl       $a1, $a1, 1
/* E96F0 800401E0 8E44000C */  lw         $a0, 0xc($s2)
/* E96F4 800401E4 4406A000 */  mfc1       $a2, $f20
/* E96F8 800401E8 4407A000 */  mfc1       $a3, $f20
/* E96FC 800401EC 00000000 */  nop
/* E9700 800401F0 0C02915B */  jal        func_800A456C
/* E9704 800401F4 00002821 */   addu      $a1, $zero, $zero
/* E9708 800401F8 8E44000C */  lw         $a0, 0xc($s2)
/* E970C 800401FC 24050280 */  addiu      $a1, $zero, 0x280
/* E9710 80040200 0C028D89 */  jal        func_800A3624
/* E9714 80040204 24060240 */   addiu     $a2, $zero, 0x240
/* E9718 80040208 8E43000C */  lw         $v1, 0xc($s2)
/* E971C 8004020C 9462001E */  lhu        $v0, 0x1e($v1)
/* E9720 80040210 24040028 */  addiu      $a0, $zero, 0x28
/* E9724 80040214 2405002A */  addiu      $a1, $zero, 0x2a
/* E9728 80040218 34420104 */  ori        $v0, $v0, 0x104
/* E972C 8004021C 0C00DD19 */  jal        func_80037464_E0974
/* E9730 80040220 A462001E */   sh        $v0, 0x1e($v1)
/* E9734 80040224 00409021 */  addu       $s2, $v0, $zero
/* E9738 80040228 8E44000C */  lw         $a0, 0xc($s2)
/* E973C 8004022C 8C82000C */  lw         $v0, 0xc($a0)
/* E9740 80040230 94450000 */  lhu        $a1, ($v0)
/* E9744 80040234 00003021 */  addu       $a2, $zero, $zero
/* E9748 80040238 0C02912A */  jal        func_800A44A8
/* E974C 8004023C 00052842 */   srl       $a1, $a1, 1
/* E9750 80040240 8E44000C */  lw         $a0, 0xc($s2)
/* E9754 80040244 4406A000 */  mfc1       $a2, $f20
/* E9758 80040248 4407A000 */  mfc1       $a3, $f20
/* E975C 8004024C 00000000 */  nop
/* E9760 80040250 0C02915B */  jal        func_800A456C
/* E9764 80040254 00002821 */   addu      $a1, $zero, $zero
/* E9768 80040258 8E44000C */  lw         $a0, 0xc($s2)
/* E976C 8004025C 24050280 */  addiu      $a1, $zero, 0x280
/* E9770 80040260 0C028D89 */  jal        func_800A3624
/* E9774 80040264 24060040 */   addiu     $a2, $zero, 0x40
/* E9778 80040268 8E43000C */  lw         $v1, 0xc($s2)
/* E977C 8004026C 9462001E */  lhu        $v0, 0x1e($v1)
/* E9780 80040270 34420104 */  ori        $v0, $v0, 0x104
/* E9784 80040274 A462001E */  sh         $v0, 0x1e($v1)
/* E9788 80040278 8E42000C */  lw         $v0, 0xc($s2)
/* E978C 8004027C 24040029 */  addiu      $a0, $zero, 0x29
/* E9790 80040280 8C420004 */  lw         $v0, 4($v0)
/* E9794 80040284 2405002B */  addiu      $a1, $zero, 0x2b
/* E9798 80040288 3C108007 */  lui        $s0, %hi(D_80068F80_112490)
/* E979C 8004028C 26108F80 */  addiu      $s0, $s0, %lo(D_80068F80_112490)
/* E97A0 80040290 0C00DD19 */  jal        func_80037464_E0974
/* E97A4 80040294 AC500004 */   sw        $s0, 4($v0)
/* E97A8 80040298 00409021 */  addu       $s2, $v0, $zero
/* E97AC 8004029C 8E44000C */  lw         $a0, 0xc($s2)
/* E97B0 800402A0 8C82000C */  lw         $v0, 0xc($a0)
/* E97B4 800402A4 94450000 */  lhu        $a1, ($v0)
/* E97B8 800402A8 00003021 */  addu       $a2, $zero, $zero
/* E97BC 800402AC 0C02912A */  jal        func_800A44A8
/* E97C0 800402B0 00052842 */   srl       $a1, $a1, 1
/* E97C4 800402B4 8E44000C */  lw         $a0, 0xc($s2)
/* E97C8 800402B8 4406A000 */  mfc1       $a2, $f20
/* E97CC 800402BC 00002821 */  addu       $a1, $zero, $zero
/* E97D0 800402C0 0C02915B */  jal        func_800A456C
/* E97D4 800402C4 00C03821 */   addu      $a3, $a2, $zero
/* E97D8 800402C8 8E44000C */  lw         $a0, 0xc($s2)
/* E97DC 800402CC 24050280 */  addiu      $a1, $zero, 0x280
/* E97E0 800402D0 0C028D89 */  jal        func_800A3624
/* E97E4 800402D4 24060240 */   addiu     $a2, $zero, 0x240
/* E97E8 800402D8 8E43000C */  lw         $v1, 0xc($s2)
/* E97EC 800402DC 9462001E */  lhu        $v0, 0x1e($v1)
/* E97F0 800402E0 34420104 */  ori        $v0, $v0, 0x104
/* E97F4 800402E4 A462001E */  sh         $v0, 0x1e($v1)
/* E97F8 800402E8 8E42000C */  lw         $v0, 0xc($s2)
/* E97FC 800402EC 240401D8 */  addiu      $a0, $zero, 0x1d8
/* E9800 800402F0 8C420004 */  lw         $v0, 4($v0)
/* E9804 800402F4 24050002 */  addiu      $a1, $zero, 2
/* E9808 800402F8 24060022 */  addiu      $a2, $zero, 0x22
/* E980C 800402FC 0C00D925 */  jal        func_80036494_DF9A4
/* E9810 80040300 AC500004 */   sw        $s0, 4($v0)
/* E9814 80040304 00409021 */  addu       $s2, $v0, $zero
/* E9818 80040308 8E44000C */  lw         $a0, 0xc($s2)
/* E981C 8004030C 24050040 */  addiu      $a1, $zero, 0x40
/* E9820 80040310 0C028D89 */  jal        func_800A3624
/* E9824 80040314 240601B8 */   addiu     $a2, $zero, 0x1b8
/* E9828 80040318 8E43000C */  lw         $v1, 0xc($s2)
/* E982C 8004031C 240401D9 */  addiu      $a0, $zero, 0x1d9
/* E9830 80040320 9462001E */  lhu        $v0, 0x1e($v1)
/* E9834 80040324 24050002 */  addiu      $a1, $zero, 2
/* E9838 80040328 24060023 */  addiu      $a2, $zero, 0x23
/* E983C 8004032C 34420004 */  ori        $v0, $v0, 4
/* E9840 80040330 0C00D925 */  jal        func_80036494_DF9A4
/* E9844 80040334 A462001E */   sh        $v0, 0x1e($v1)
/* E9848 80040338 00409021 */  addu       $s2, $v0, $zero
/* E984C 8004033C 8E44000C */  lw         $a0, 0xc($s2)
/* E9850 80040340 240500C0 */  addiu      $a1, $zero, 0xc0
/* E9854 80040344 0C028D89 */  jal        func_800A3624
/* E9858 80040348 240602A8 */   addiu     $a2, $zero, 0x2a8
/* E985C 8004034C 8E43000C */  lw         $v1, 0xc($s2)
/* E9860 80040350 240401DA */  addiu      $a0, $zero, 0x1da
/* E9864 80040354 9462001E */  lhu        $v0, 0x1e($v1)
/* E9868 80040358 24050002 */  addiu      $a1, $zero, 2
/* E986C 8004035C 24060024 */  addiu      $a2, $zero, 0x24
/* E9870 80040360 34420004 */  ori        $v0, $v0, 4
/* E9874 80040364 0C00D925 */  jal        func_80036494_DF9A4
/* E9878 80040368 A462001E */   sh        $v0, 0x1e($v1)
/* E987C 8004036C 00409021 */  addu       $s2, $v0, $zero
/* E9880 80040370 8E44000C */  lw         $a0, 0xc($s2)
/* E9884 80040374 24050400 */  addiu      $a1, $zero, 0x400
/* E9888 80040378 0C028D89 */  jal        func_800A3624
/* E988C 8004037C 24060210 */   addiu     $a2, $zero, 0x210
/* E9890 80040380 8E43000C */  lw         $v1, 0xc($s2)
/* E9894 80040384 240401AA */  addiu      $a0, $zero, 0x1aa
/* E9898 80040388 9462001E */  lhu        $v0, 0x1e($v1)
/* E989C 8004038C 24050002 */  addiu      $a1, $zero, 2
/* E98A0 80040390 24060025 */  addiu      $a2, $zero, 0x25
/* E98A4 80040394 34420004 */  ori        $v0, $v0, 4
/* E98A8 80040398 0C00D925 */  jal        func_80036494_DF9A4
/* E98AC 8004039C A462001E */   sh        $v0, 0x1e($v1)
/* E98B0 800403A0 00409021 */  addu       $s2, $v0, $zero
/* E98B4 800403A4 8E44000C */  lw         $a0, 0xc($s2)
/* E98B8 800403A8 24050040 */  addiu      $a1, $zero, 0x40
/* E98BC 800403AC 0C028D89 */  jal        func_800A3624
/* E98C0 800403B0 240601B8 */   addiu     $a2, $zero, 0x1b8
/* E98C4 800403B4 8E43000C */  lw         $v1, 0xc($s2)
/* E98C8 800403B8 9462001E */  lhu        $v0, 0x1e($v1)
/* E98CC 800403BC 34420004 */  ori        $v0, $v0, 4
/* E98D0 800403C0 A462001E */  sh         $v0, 0x1e($v1)
/* E98D4 800403C4 8E42000C */  lw         $v0, 0xc($s2)
/* E98D8 800403C8 240401AB */  addiu      $a0, $zero, 0x1ab
/* E98DC 800403CC 24050002 */  addiu      $a1, $zero, 2
/* E98E0 800403D0 8C420004 */  lw         $v0, 4($v0)
/* E98E4 800403D4 24060026 */  addiu      $a2, $zero, 0x26
/* E98E8 800403D8 3C108007 */  lui        $s0, %hi(D_80068F00_112410)
/* E98EC 800403DC 26108F00 */  addiu      $s0, $s0, %lo(D_80068F00_112410)
/* E98F0 800403E0 0C00D925 */  jal        func_80036494_DF9A4
/* E98F4 800403E4 AC500004 */   sw        $s0, 4($v0)
/* E98F8 800403E8 00409021 */  addu       $s2, $v0, $zero
/* E98FC 800403EC 8E44000C */  lw         $a0, 0xc($s2)
/* E9900 800403F0 240500C0 */  addiu      $a1, $zero, 0xc0
/* E9904 800403F4 0C028D89 */  jal        func_800A3624
/* E9908 800403F8 240602A8 */   addiu     $a2, $zero, 0x2a8
/* E990C 800403FC 8E43000C */  lw         $v1, 0xc($s2)
/* E9910 80040400 9462001E */  lhu        $v0, 0x1e($v1)
/* E9914 80040404 34420004 */  ori        $v0, $v0, 4
/* E9918 80040408 A462001E */  sh         $v0, 0x1e($v1)
/* E991C 8004040C 8E42000C */  lw         $v0, 0xc($s2)
/* E9920 80040410 240401AC */  addiu      $a0, $zero, 0x1ac
/* E9924 80040414 8C420004 */  lw         $v0, 4($v0)
/* E9928 80040418 24050002 */  addiu      $a1, $zero, 2
/* E992C 8004041C 24060027 */  addiu      $a2, $zero, 0x27
/* E9930 80040420 0C00D925 */  jal        func_80036494_DF9A4
/* E9934 80040424 AC500004 */   sw        $s0, 4($v0)
/* E9938 80040428 00409021 */  addu       $s2, $v0, $zero
.L8004042C:
/* E993C 8004042C 8E44000C */  lw         $a0, 0xc($s2)
/* E9940 80040430 24050400 */  addiu      $a1, $zero, 0x400
/* E9944 80040434 0C028D89 */  jal        func_800A3624
/* E9948 80040438 24060210 */   addiu     $a2, $zero, 0x210
/* E994C 8004043C 8E43000C */  lw         $v1, 0xc($s2)
/* E9950 80040440 9462001E */  lhu        $v0, 0x1e($v1)
/* E9954 80040444 34420004 */  ori        $v0, $v0, 4
/* E9958 80040448 A462001E */  sh         $v0, 0x1e($v1)
/* E995C 8004044C 8E42000C */  lw         $v0, 0xc($s2)
/* E9960 80040450 8C420004 */  lw         $v0, 4($v0)
/* E9964 80040454 AC500004 */  sw         $s0, 4($v0)
/* E9968 80040458 24040008 */  addiu      $a0, $zero, 8
.L8004045C:
/* E996C 8004045C 24050001 */  addiu      $a1, $zero, 1
/* E9970 80040460 0C00D925 */  jal        func_80036494_DF9A4
/* E9974 80040464 24060037 */   addiu     $a2, $zero, 0x37
/* E9978 80040468 00409021 */  addu       $s2, $v0, $zero
/* E997C 8004046C 8E44000C */  lw         $a0, 0xc($s2)
/* E9980 80040470 24050066 */  addiu      $a1, $zero, 0x66
/* E9984 80040474 24061400 */  addiu      $a2, $zero, 0x1400
/* E9988 80040478 0C028F9A */  jal        func_800A3E68
/* E998C 8004047C 24110001 */   addiu     $s1, $zero, 1
/* E9990 80040480 8E44000C */  lw         $a0, 0xc($s2)
/* E9994 80040484 24050040 */  addiu      $a1, $zero, 0x40
/* E9998 80040488 0C028D89 */  jal        func_800A3624
/* E999C 8004048C 24060260 */   addiu     $a2, $zero, 0x260
/* E99A0 80040490 AFA00010 */  sw         $zero, 0x10($sp)
/* E99A4 80040494 8E44000C */  lw         $a0, 0xc($s2)
/* E99A8 80040498 240500FF */  addiu      $a1, $zero, 0xff
/* E99AC 8004049C 240600FF */  addiu      $a2, $zero, 0xff
/* E99B0 800404A0 0C028E41 */  jal        func_800A3904
/* E99B4 800404A4 240700FF */   addiu     $a3, $zero, 0xff
/* E99B8 800404A8 8E43000C */  lw         $v1, 0xc($s2)
/* E99BC 800404AC 24130042 */  addiu      $s3, $zero, 0x42
/* E99C0 800404B0 24020042 */  addiu      $v0, $zero, 0x42
/* E99C4 800404B4 A462001C */  sh         $v0, 0x1c($v1)
/* E99C8 800404B8 24040037 */  addiu      $a0, $zero, 0x37
.L800404BC:
/* E99CC 800404BC 322500FF */  andi       $a1, $s1, 0xff
/* E99D0 800404C0 0C00DD19 */  jal        func_80037464_E0974
/* E99D4 800404C4 24A50037 */   addiu     $a1, $a1, 0x37
/* E99D8 800404C8 00409021 */  addu       $s2, $v0, $zero
/* E99DC 800404CC 8E44000C */  lw         $a0, 0xc($s2)
/* E99E0 800404D0 24050066 */  addiu      $a1, $zero, 0x66
/* E99E4 800404D4 0C028F9A */  jal        func_800A3E68
/* E99E8 800404D8 24061400 */   addiu     $a2, $zero, 0x1400
/* E99EC 800404DC 8E44000C */  lw         $a0, 0xc($s2)
/* E99F0 800404E0 24050040 */  addiu      $a1, $zero, 0x40
/* E99F4 800404E4 323000FF */  andi       $s0, $s1, 0xff
/* E99F8 800404E8 001030C0 */  sll        $a2, $s0, 3
/* E99FC 800404EC 0C028D89 */  jal        func_800A3624
/* E9A00 800404F0 24C60260 */   addiu     $a2, $a2, 0x260
/* E9A04 800404F4 001080C0 */  sll        $s0, $s0, 3
/* E9A08 800404F8 321000FF */  andi       $s0, $s0, 0xff
/* E9A0C 800404FC AFB00010 */  sw         $s0, 0x10($sp)
/* E9A10 80040500 8E44000C */  lw         $a0, 0xc($s2)
/* E9A14 80040504 240500FF */  addiu      $a1, $zero, 0xff
/* E9A18 80040508 240600FF */  addiu      $a2, $zero, 0xff
/* E9A1C 8004050C 0C028E41 */  jal        func_800A3904
/* E9A20 80040510 240700FF */   addiu     $a3, $zero, 0xff
/* E9A24 80040514 8E42000C */  lw         $v0, 0xc($s2)
/* E9A28 80040518 26310001 */  addiu      $s1, $s1, 1
/* E9A2C 8004051C A453001C */  sh         $s3, 0x1c($v0)
/* E9A30 80040520 322200FF */  andi       $v0, $s1, 0xff
/* E9A34 80040524 2C420020 */  sltiu      $v0, $v0, 0x20
/* E9A38 80040528 5440FFE4 */  bnezl      $v0, .L800404BC
/* E9A3C 8004052C 24040037 */   addiu     $a0, $zero, 0x37
/* E9A40 80040530 8E44000C */  lw         $a0, 0xc($s2)
/* E9A44 80040534 24050066 */  addiu      $a1, $zero, 0x66
/* E9A48 80040538 0C028F9A */  jal        func_800A3E68
/* E9A4C 8004053C 24060155 */   addiu     $a2, $zero, 0x155
/* E9A50 80040540 0C00DFA8 */  jal        func_80037EA0_E13B0
/* E9A54 80040544 24040001 */   addiu     $a0, $zero, 1
/* E9A58 80040548 00408021 */  addu       $s0, $v0, $zero
/* E9A5C 8004054C 3C01C000 */  lui        $at, 0xc000
/* E9A60 80040550 44810000 */  mtc1       $at, $f0
/* E9A64 80040554 3C013CA3 */  lui        $at, 0x3ca3
/* E9A68 80040558 3421D70A */  ori        $at, $at, 0xd70a
/* E9A6C 8004055C 44811000 */  mtc1       $at, $f2
/* E9A70 80040560 3C014334 */  lui        $at, 0x4334
/* E9A74 80040564 44812000 */  mtc1       $at, $f4
/* E9A78 80040568 02002021 */  addu       $a0, $s0, $zero
/* E9A7C 8004056C 24050022 */  addiu      $a1, $zero, 0x22
/* E9A80 80040570 240200FF */  addiu      $v0, $zero, 0xff
/* E9A84 80040574 AE000010 */  sw         $zero, 0x10($s0)
/* E9A88 80040578 AE000018 */  sw         $zero, 0x18($s0)
/* E9A8C 8004057C AE00001C */  sw         $zero, 0x1c($s0)
/* E9A90 80040580 AE000024 */  sw         $zero, 0x24($s0)
/* E9A94 80040584 A6020074 */  sh         $v0, 0x74($s0)
/* E9A98 80040588 A6020076 */  sh         $v0, 0x76($s0)
/* E9A9C 8004058C A6020078 */  sh         $v0, 0x78($s0)
/* E9AA0 80040590 A602007A */  sh         $v0, 0x7a($s0)
/* E9AA4 80040594 A6000070 */  sh         $zero, 0x70($s0)
/* E9AA8 80040598 E6000014 */  swc1       $f0, 0x14($s0)
/* E9AAC 8004059C E6020028 */  swc1       $f2, 0x28($s0)
/* E9AB0 800405A0 0C00DFE6 */  jal        func_80037F98_E14A8
/* E9AB4 800405A4 E6040020 */   swc1      $f4, 0x20($s0)
/* E9AB8 800405A8 8E020004 */  lw         $v0, 4($s0)
/* E9ABC 800405AC A0400067 */  sb         $zero, 0x67($v0)
/* E9AC0 800405B0 8E040004 */  lw         $a0, 4($s0)
/* E9AC4 800405B4 0C028703 */  jal        func_800A1C0C
/* E9AC8 800405B8 24050005 */   addiu     $a1, $zero, 5
/* E9ACC 800405BC 8E030004 */  lw         $v1, 4($s0)
/* E9AD0 800405C0 3C0141C5 */  lui        $at, 0x41c5
/* E9AD4 800405C4 342170A4 */  ori        $at, $at, 0x70a4
/* E9AD8 800405C8 44810000 */  mtc1       $at, $f0
/* E9ADC 800405CC 3C013F80 */  lui        $at, 0x3f80
/* E9AE0 800405D0 44811000 */  mtc1       $at, $f2
/* E9AE4 800405D4 3C01C18C */  lui        $at, 0xc18c
/* E9AE8 800405D8 44812000 */  mtc1       $at, $f4
/* E9AEC 800405DC 90620066 */  lbu        $v0, 0x66($v1)
/* E9AF0 800405E0 3C01C2C8 */  lui        $at, 0xc2c8
/* E9AF4 800405E4 44813000 */  mtc1       $at, $f6
/* E9AF8 800405E8 3442000B */  ori        $v0, $v0, 0xb
/* E9AFC 800405EC A0620066 */  sb         $v0, 0x66($v1)
/* E9B00 800405F0 3C018015 */  lui        $at, %hi(D_8014A064)
/* E9B04 800405F4 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* E9B08 800405F8 3C018015 */  lui        $at, %hi(D_8014A068)
/* E9B0C 800405FC E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* E9B10 80040600 3C018015 */  lui        $at, %hi(D_8014A06C)
/* E9B14 80040604 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* E9B18 80040608 3C018015 */  lui        $at, %hi(D_8014A070)
/* E9B1C 8004060C AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* E9B20 80040610 3C018015 */  lui        $at, %hi(D_8014A074)
/* E9B24 80040614 E422A074 */  swc1       $f2, %lo(D_8014A074)($at)
/* E9B28 80040618 3C018015 */  lui        $at, %hi(D_8014A078)
/* E9B2C 8004061C AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* E9B30 80040620 3C018015 */  lui        $at, %hi(D_8014A07C)
/* E9B34 80040624 E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* E9B38 80040628 3C018015 */  lui        $at, %hi(D_8014A080)
/* E9B3C 8004062C AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* E9B40 80040630 3C018015 */  lui        $at, %hi(D_8014A084)
/* E9B44 80040634 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* E9B48 80040638 3C018015 */  lui        $at, %hi(D_8014A088)
/* E9B4C 8004063C E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* E9B50 80040640 0C00E339 */  jal        func_80038CE4_E21F4
/* E9B54 80040644 2411000B */   addiu     $s1, $zero, 0xb
/* E9B58 80040648 24040011 */  addiu      $a0, $zero, 0x11
/* E9B5C 8004064C 24050001 */  addiu      $a1, $zero, 1
/* E9B60 80040650 3C018015 */  lui        $at, %hi(D_8014A054)
/* E9B64 80040654 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* E9B68 80040658 3C018015 */  lui        $at, %hi(D_8014A050)
/* E9B6C 8004065C AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* E9B70 80040660 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* E9B74 80040664 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* E9B78 80040668 3C018017 */  lui        $at, %hi(D_8016E568)
/* E9B7C 8004066C AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* E9B80 80040670 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* E9B84 80040674 AC20D0D0 */  sw         $zero, %lo(D_8016D0D0)($at)
/* E9B88 80040678 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* E9B8C 8004067C AC20D0D4 */  sw         $zero, %lo(D_8016D0D4)($at)
/* E9B90 80040680 0C00D925 */  jal        func_80036494_DF9A4
/* E9B94 80040684 24060020 */   addiu     $a2, $zero, 0x20
/* E9B98 80040688 00409021 */  addu       $s2, $v0, $zero
/* E9B9C 8004068C 8E44000C */  lw         $a0, 0xc($s2)
/* E9BA0 80040690 24050038 */  addiu      $a1, $zero, 0x38
/* E9BA4 80040694 0C028F9A */  jal        func_800A3E68
/* E9BA8 80040698 2406004E */   addiu     $a2, $zero, 0x4e
/* E9BAC 8004069C 8E44000C */  lw         $a0, 0xc($s2)
/* E9BB0 800406A0 24050040 */  addiu      $a1, $zero, 0x40
/* E9BB4 800406A4 0C028D89 */  jal        func_800A3624
/* E9BB8 800406A8 24060040 */   addiu     $a2, $zero, 0x40
/* E9BBC 800406AC 24020018 */  addiu      $v0, $zero, 0x18
/* E9BC0 800406B0 AFA20010 */  sw         $v0, 0x10($sp)
/* E9BC4 800406B4 8E44000C */  lw         $a0, 0xc($s2)
/* E9BC8 800406B8 240500FF */  addiu      $a1, $zero, 0xff
/* E9BCC 800406BC 240600FF */  addiu      $a2, $zero, 0xff
/* E9BD0 800406C0 0C028E41 */  jal        func_800A3904
/* E9BD4 800406C4 240700FF */   addiu     $a3, $zero, 0xff
/* E9BD8 800406C8 3C04802F */  lui        $a0, 0x802f
/* E9BDC 800406CC 8E43000C */  lw         $v1, 0xc($s2)
/* E9BE0 800406D0 34849800 */  ori        $a0, $a0, 0x9800
/* E9BE4 800406D4 24050179 */  addiu      $a1, $zero, 0x179
/* E9BE8 800406D8 9462001E */  lhu        $v0, 0x1e($v1)
/* E9BEC 800406DC 24060003 */  addiu      $a2, $zero, 3
/* E9BF0 800406E0 2407002C */  addiu      $a3, $zero, 0x2c
/* E9BF4 800406E4 34420006 */  ori        $v0, $v0, 6
/* E9BF8 800406E8 0C00D9E0 */  jal        func_80036780_DFC90
/* E9BFC 800406EC A462001E */   sh        $v0, 0x1e($v1)
/* E9C00 800406F0 8C44000C */  lw         $a0, 0xc($v0)
/* E9C04 800406F4 24050040 */  addiu      $a1, $zero, 0x40
/* E9C08 800406F8 0C028D89 */  jal        func_800A3624
/* E9C0C 800406FC 24060040 */   addiu     $a2, $zero, 0x40
/* E9C10 80040700 2404002C */  addiu      $a0, $zero, 0x2c
/* E9C14 80040704 0C00DD19 */  jal        func_80037464_E0974
/* E9C18 80040708 2405002D */   addiu     $a1, $zero, 0x2d
/* E9C1C 8004070C 00409021 */  addu       $s2, $v0, $zero
/* E9C20 80040710 8E44000C */  lw         $a0, 0xc($s2)
/* E9C24 80040714 24050040 */  addiu      $a1, $zero, 0x40
/* E9C28 80040718 0C028D89 */  jal        func_800A3624
/* E9C2C 8004071C 24060040 */   addiu     $a2, $zero, 0x40
.L80040720:
/* E9C30 80040720 8E44000C */  lw         $a0, 0xc($s2)
/* E9C34 80040724 26300010 */  addiu      $s0, $s1, 0x10
/* E9C38 80040728 321000FF */  andi       $s0, $s0, 0xff
/* E9C3C 8004072C 0C00DE7C */  jal        func_800379F0_E0F00
/* E9C40 80040730 02002821 */   addu      $a1, $s0, $zero
/* E9C44 80040734 8E44000C */  lw         $a0, 0xc($s2)
/* E9C48 80040738 02002821 */  addu       $a1, $s0, $zero
/* E9C4C 8004073C 24421084 */  addiu      $v0, $v0, 0x1084
/* E9C50 80040740 0C00DE6C */  jal        func_800379B0_E0EC0
/* E9C54 80040744 3046FFFF */   andi      $a2, $v0, 0xffff
/* E9C58 80040748 8E44000C */  lw         $a0, 0xc($s2)
/* E9C5C 8004074C 26300020 */  addiu      $s0, $s1, 0x20
/* E9C60 80040750 321000FF */  andi       $s0, $s0, 0xff
/* E9C64 80040754 02002821 */  addu       $a1, $s0, $zero
/* E9C68 80040758 0C00DE7C */  jal        func_800379F0_E0F00
/* E9C6C 8004075C 26310001 */   addiu     $s1, $s1, 1
/* E9C70 80040760 8E44000C */  lw         $a0, 0xc($s2)
/* E9C74 80040764 02002821 */  addu       $a1, $s0, $zero
/* E9C78 80040768 24421084 */  addiu      $v0, $v0, 0x1084
/* E9C7C 8004076C 0C00DE6C */  jal        func_800379B0_E0EC0
/* E9C80 80040770 3046FFFF */   andi      $a2, $v0, 0xffff
/* E9C84 80040774 322200FF */  andi       $v0, $s1, 0xff
/* E9C88 80040778 2C420010 */  sltiu      $v0, $v0, 0x10
/* E9C8C 8004077C 1440FFE8 */  bnez       $v0, .L80040720
/* E9C90 80040780 240401B1 */   addiu     $a0, $zero, 0x1b1
/* E9C94 80040784 24050002 */  addiu      $a1, $zero, 2
/* E9C98 80040788 0C00D925 */  jal        func_80036494_DF9A4
/* E9C9C 8004078C 2406002E */   addiu     $a2, $zero, 0x2e
/* E9CA0 80040790 00409021 */  addu       $s2, $v0, $zero
/* E9CA4 80040794 3C014000 */  lui        $at, 0x4000
/* E9CA8 80040798 44810000 */  mtc1       $at, $f0
/* E9CAC 8004079C 8E44000C */  lw         $a0, 0xc($s2)
/* E9CB0 800407A0 44060000 */  mfc1       $a2, $f0
/* E9CB4 800407A4 00002821 */  addu       $a1, $zero, $zero
/* E9CB8 800407A8 0C02915B */  jal        func_800A456C
/* E9CBC 800407AC 00C03821 */   addu      $a3, $a2, $zero
/* E9CC0 800407B0 8E44000C */  lw         $a0, 0xc($s2)
/* E9CC4 800407B4 8C82000C */  lw         $v0, 0xc($a0)
/* E9CC8 800407B8 94450000 */  lhu        $a1, ($v0)
/* E9CCC 800407BC 24060037 */  addiu      $a2, $zero, 0x37
/* E9CD0 800407C0 0C02912A */  jal        func_800A44A8
/* E9CD4 800407C4 00052842 */   srl       $a1, $a1, 1
/* E9CD8 800407C8 8E44000C */  lw         $a0, 0xc($s2)
/* E9CDC 800407CC 24050280 */  addiu      $a1, $zero, 0x280
/* E9CE0 800407D0 0C028D89 */  jal        func_800A3624
/* E9CE4 800407D4 240601F8 */   addiu     $a2, $zero, 0x1f8
/* E9CE8 800407D8 3C048031 */  lui        $a0, 0x8031
/* E9CEC 800407DC 8E43000C */  lw         $v1, 0xc($s2)
/* E9CF0 800407E0 34847420 */  ori        $a0, $a0, 0x7420
/* E9CF4 800407E4 240501AF */  addiu      $a1, $zero, 0x1af
/* E9CF8 800407E8 9462001E */  lhu        $v0, 0x1e($v1)
/* E9CFC 800407EC 24060002 */  addiu      $a2, $zero, 2
/* E9D00 800407F0 2407002F */  addiu      $a3, $zero, 0x2f
/* E9D04 800407F4 34420104 */  ori        $v0, $v0, 0x104
/* E9D08 800407F8 0C00D9E0 */  jal        func_80036780_DFC90
/* E9D0C 800407FC A462001E */   sh        $v0, 0x1e($v1)
/* E9D10 80040800 00409021 */  addu       $s2, $v0, $zero
/* E9D14 80040804 3C013F80 */  lui        $at, 0x3f80
/* E9D18 80040808 4481A000 */  mtc1       $at, $f20
/* E9D1C 8004080C 8E44000C */  lw         $a0, 0xc($s2)
/* E9D20 80040810 4406A000 */  mfc1       $a2, $f20
/* E9D24 80040814 4407A000 */  mfc1       $a3, $f20
/* E9D28 80040818 00000000 */  nop
/* E9D2C 8004081C 0C02915B */  jal        func_800A456C
/* E9D30 80040820 00002821 */   addu      $a1, $zero, $zero
/* E9D34 80040824 8E44000C */  lw         $a0, 0xc($s2)
/* E9D38 80040828 8C82000C */  lw         $v0, 0xc($a0)
/* E9D3C 8004082C 94450000 */  lhu        $a1, ($v0)
/* E9D40 80040830 00003021 */  addu       $a2, $zero, $zero
/* E9D44 80040834 0C02912A */  jal        func_800A44A8
/* E9D48 80040838 00052842 */   srl       $a1, $a1, 1
/* E9D4C 8004083C 8E44000C */  lw         $a0, 0xc($s2)
/* E9D50 80040840 24050280 */  addiu      $a1, $zero, 0x280
/* E9D54 80040844 0C028D89 */  jal        func_800A3624
/* E9D58 80040848 240601F8 */   addiu     $a2, $zero, 0x1f8
/* E9D5C 8004084C 8E43000C */  lw         $v1, 0xc($s2)
/* E9D60 80040850 9462001E */  lhu        $v0, 0x1e($v1)
/* E9D64 80040854 34420004 */  ori        $v0, $v0, 4
/* E9D68 80040858 A462001E */  sh         $v0, 0x1e($v1)
/* E9D6C 8004085C 8E44000C */  lw         $a0, 0xc($s2)
/* E9D70 80040860 0C00DE7C */  jal        func_800379F0_E0F00
/* E9D74 80040864 2405000C */   addiu     $a1, $zero, 0xc
/* E9D78 80040868 8E44000C */  lw         $a0, 0xc($s2)
/* E9D7C 8004086C 2405000D */  addiu      $a1, $zero, 0xd
/* E9D80 80040870 2442FFFF */  addiu      $v0, $v0, -1
/* E9D84 80040874 0C00DE6C */  jal        func_800379B0_E0EC0
/* E9D88 80040878 3046FFFF */   andi      $a2, $v0, 0xffff
/* E9D8C 8004087C 2404002F */  addiu      $a0, $zero, 0x2f
/* E9D90 80040880 0C00DD19 */  jal        func_80037464_E0974
/* E9D94 80040884 24050036 */   addiu     $a1, $zero, 0x36
/* E9D98 80040888 00409021 */  addu       $s2, $v0, $zero
/* E9D9C 8004088C 8E44000C */  lw         $a0, 0xc($s2)
/* E9DA0 80040890 4406A000 */  mfc1       $a2, $f20
/* E9DA4 80040894 00002821 */  addu       $a1, $zero, $zero
/* E9DA8 80040898 0C02915B */  jal        func_800A456C
/* E9DAC 8004089C 00C03821 */   addu      $a3, $a2, $zero
/* E9DB0 800408A0 8E44000C */  lw         $a0, 0xc($s2)
/* E9DB4 800408A4 8C82000C */  lw         $v0, 0xc($a0)
/* E9DB8 800408A8 94450000 */  lhu        $a1, ($v0)
/* E9DBC 800408AC 00003021 */  addu       $a2, $zero, $zero
/* E9DC0 800408B0 0C02912A */  jal        func_800A44A8
/* E9DC4 800408B4 00052842 */   srl       $a1, $a1, 1
/* E9DC8 800408B8 8E44000C */  lw         $a0, 0xc($s2)
/* E9DCC 800408BC 24050280 */  addiu      $a1, $zero, 0x280
/* E9DD0 800408C0 0C028D89 */  jal        func_800A3624
/* E9DD4 800408C4 240601F8 */   addiu     $a2, $zero, 0x1f8
/* E9DD8 800408C8 8E43000C */  lw         $v1, 0xc($s2)
/* E9DDC 800408CC 9462001E */  lhu        $v0, 0x1e($v1)
/* E9DE0 800408D0 24110016 */  addiu      $s1, $zero, 0x16
/* E9DE4 800408D4 2404002F */  addiu      $a0, $zero, 0x2f
/* E9DE8 800408D8 34420004 */  ori        $v0, $v0, 4
/* E9DEC 800408DC 0C00D8C1 */  jal        func_80036304_DF814
/* E9DF0 800408E0 A462001E */   sh        $v0, 0x1e($v1)
/* E9DF4 800408E4 00409021 */  addu       $s2, $v0, $zero
.L800408E8:
/* E9DF8 800408E8 8E44000C */  lw         $a0, 0xc($s2)
/* E9DFC 800408EC 322500FF */  andi       $a1, $s1, 0xff
/* E9E00 800408F0 00003021 */  addu       $a2, $zero, $zero
/* E9E04 800408F4 0C00DE72 */  jal        func_800379C8_E0ED8
/* E9E08 800408F8 26310001 */   addiu     $s1, $s1, 1
/* E9E0C 800408FC 322200FF */  andi       $v0, $s1, 0xff
/* E9E10 80040900 2C420020 */  sltiu      $v0, $v0, 0x20
/* E9E14 80040904 1440FFF8 */  bnez       $v0, .L800408E8
/* E9E18 80040908 3C048032 */   lui       $a0, 0x8032
/* E9E1C 8004090C 34846230 */  ori        $a0, $a0, 0x6230
/* E9E20 80040910 240501AD */  addiu      $a1, $zero, 0x1ad
/* E9E24 80040914 24060002 */  addiu      $a2, $zero, 2
/* E9E28 80040918 0C00D9EA */  jal        func_800367A8_DFCB8
/* E9E2C 8004091C 24070031 */   addiu     $a3, $zero, 0x31
/* E9E30 80040920 00409021 */  addu       $s2, $v0, $zero
/* E9E34 80040924 8E44000C */  lw         $a0, 0xc($s2)
/* E9E38 80040928 8C82000C */  lw         $v0, 0xc($a0)
/* E9E3C 8004092C 94450000 */  lhu        $a1, ($v0)
/* E9E40 80040930 2406005C */  addiu      $a2, $zero, 0x5c
/* E9E44 80040934 00052842 */  srl        $a1, $a1, 1
/* E9E48 80040938 24A50010 */  addiu      $a1, $a1, 0x10
/* E9E4C 8004093C 00052C00 */  sll        $a1, $a1, 0x10
/* E9E50 80040940 0C02912A */  jal        func_800A44A8
/* E9E54 80040944 00052C03 */   sra       $a1, $a1, 0x10
/* E9E58 80040948 240200FF */  addiu      $v0, $zero, 0xff
/* E9E5C 8004094C AFA20010 */  sw         $v0, 0x10($sp)
/* E9E60 80040950 8E44000C */  lw         $a0, 0xc($s2)
/* E9E64 80040954 240500FF */  addiu      $a1, $zero, 0xff
/* E9E68 80040958 240600FF */  addiu      $a2, $zero, 0xff
/* E9E6C 8004095C 0C028E41 */  jal        func_800A3904
/* E9E70 80040960 240700FF */   addiu     $a3, $zero, 0xff
/* E9E74 80040964 8E44000C */  lw         $a0, 0xc($s2)
/* E9E78 80040968 24050280 */  addiu      $a1, $zero, 0x280
/* E9E7C 8004096C 0C028D89 */  jal        func_800A3624
/* E9E80 80040970 240601F8 */   addiu     $a2, $zero, 0x1f8
/* E9E84 80040974 8E43000C */  lw         $v1, 0xc($s2)
/* E9E88 80040978 9462001E */  lhu        $v0, 0x1e($v1)
/* E9E8C 8004097C 34420044 */  ori        $v0, $v0, 0x44
/* E9E90 80040980 A462001E */  sh         $v0, 0x1e($v1)
/* E9E94 80040984 8E44000C */  lw         $a0, 0xc($s2)
/* E9E98 80040988 0C00DE7C */  jal        func_800379F0_E0F00
/* E9E9C 8004098C 24050001 */   addiu     $a1, $zero, 1
/* E9EA0 80040990 8E44000C */  lw         $a0, 0xc($s2)
/* E9EA4 80040994 00002821 */  addu       $a1, $zero, $zero
/* E9EA8 80040998 2442FFFF */  addiu      $v0, $v0, -1
/* E9EAC 8004099C 0C00DE6C */  jal        func_800379B0_E0EC0
/* E9EB0 800409A0 3046FFFF */   andi      $a2, $v0, 0xffff
/* E9EB4 800409A4 24040031 */  addiu      $a0, $zero, 0x31
/* E9EB8 800409A8 0C00DD19 */  jal        func_80037464_E0974
/* E9EBC 800409AC 24050032 */   addiu     $a1, $zero, 0x32
/* E9EC0 800409B0 00409021 */  addu       $s2, $v0, $zero
/* E9EC4 800409B4 8E44000C */  lw         $a0, 0xc($s2)
/* E9EC8 800409B8 8C82000C */  lw         $v0, 0xc($a0)
/* E9ECC 800409BC 94450000 */  lhu        $a1, ($v0)
/* E9ED0 800409C0 2406005C */  addiu      $a2, $zero, 0x5c
/* E9ED4 800409C4 00052842 */  srl        $a1, $a1, 1
/* E9ED8 800409C8 24A50010 */  addiu      $a1, $a1, 0x10
/* E9EDC 800409CC 00052C00 */  sll        $a1, $a1, 0x10
/* E9EE0 800409D0 0C02912A */  jal        func_800A44A8
/* E9EE4 800409D4 00052C03 */   sra       $a1, $a1, 0x10
/* E9EE8 800409D8 8E44000C */  lw         $a0, 0xc($s2)
/* E9EEC 800409DC 24050280 */  addiu      $a1, $zero, 0x280
/* E9EF0 800409E0 0C028D89 */  jal        func_800A3624
/* E9EF4 800409E4 240601F8 */   addiu     $a2, $zero, 0x1f8
/* E9EF8 800409E8 8E43000C */  lw         $v1, 0xc($s2)
/* E9EFC 800409EC 9462001E */  lhu        $v0, 0x1e($v1)
/* E9F00 800409F0 24040031 */  addiu      $a0, $zero, 0x31
/* E9F04 800409F4 24050033 */  addiu      $a1, $zero, 0x33
/* E9F08 800409F8 34420044 */  ori        $v0, $v0, 0x44
/* E9F0C 800409FC 0C00DD19 */  jal        func_80037464_E0974
/* E9F10 80040A00 A462001E */   sh        $v0, 0x1e($v1)
/* E9F14 80040A04 00409021 */  addu       $s2, $v0, $zero
/* E9F18 80040A08 8E44000C */  lw         $a0, 0xc($s2)
/* E9F1C 80040A0C 8C82000C */  lw         $v0, 0xc($a0)
/* E9F20 80040A10 94450000 */  lhu        $a1, ($v0)
/* E9F24 80040A14 2406005C */  addiu      $a2, $zero, 0x5c
/* E9F28 80040A18 00052842 */  srl        $a1, $a1, 1
/* E9F2C 80040A1C 24A50010 */  addiu      $a1, $a1, 0x10
/* E9F30 80040A20 00052C00 */  sll        $a1, $a1, 0x10
/* E9F34 80040A24 0C02912A */  jal        func_800A44A8
/* E9F38 80040A28 00052C03 */   sra       $a1, $a1, 0x10
/* E9F3C 80040A2C 8E44000C */  lw         $a0, 0xc($s2)
/* E9F40 80040A30 24050280 */  addiu      $a1, $zero, 0x280
/* E9F44 80040A34 0C028D89 */  jal        func_800A3624
/* E9F48 80040A38 240601F8 */   addiu     $a2, $zero, 0x1f8
/* E9F4C 80040A3C 8E43000C */  lw         $v1, 0xc($s2)
/* E9F50 80040A40 9462001E */  lhu        $v0, 0x1e($v1)
/* E9F54 80040A44 24040031 */  addiu      $a0, $zero, 0x31
/* E9F58 80040A48 24050034 */  addiu      $a1, $zero, 0x34
/* E9F5C 80040A4C 34420044 */  ori        $v0, $v0, 0x44
/* E9F60 80040A50 0C00DD19 */  jal        func_80037464_E0974
/* E9F64 80040A54 A462001E */   sh        $v0, 0x1e($v1)
/* E9F68 80040A58 00409021 */  addu       $s2, $v0, $zero
/* E9F6C 80040A5C 8E44000C */  lw         $a0, 0xc($s2)
/* E9F70 80040A60 8C82000C */  lw         $v0, 0xc($a0)
/* E9F74 80040A64 94450000 */  lhu        $a1, ($v0)
/* E9F78 80040A68 2406005C */  addiu      $a2, $zero, 0x5c
/* E9F7C 80040A6C 00052842 */  srl        $a1, $a1, 1
/* E9F80 80040A70 24A50010 */  addiu      $a1, $a1, 0x10
/* E9F84 80040A74 00052C00 */  sll        $a1, $a1, 0x10
/* E9F88 80040A78 0C02912A */  jal        func_800A44A8
/* E9F8C 80040A7C 00052C03 */   sra       $a1, $a1, 0x10
/* E9F90 80040A80 24020060 */  addiu      $v0, $zero, 0x60
/* E9F94 80040A84 AFA20010 */  sw         $v0, 0x10($sp)
/* E9F98 80040A88 8E44000C */  lw         $a0, 0xc($s2)
/* E9F9C 80040A8C 240500FF */  addiu      $a1, $zero, 0xff
/* E9FA0 80040A90 240600FF */  addiu      $a2, $zero, 0xff
/* E9FA4 80040A94 0C028E41 */  jal        func_800A3904
/* E9FA8 80040A98 240700FF */   addiu     $a3, $zero, 0xff
/* E9FAC 80040A9C 8E44000C */  lw         $a0, 0xc($s2)
/* E9FB0 80040AA0 24050280 */  addiu      $a1, $zero, 0x280
/* E9FB4 80040AA4 0C028D89 */  jal        func_800A3624
/* E9FB8 80040AA8 240601F8 */   addiu     $a2, $zero, 0x1f8
/* E9FBC 80040AAC 8E43000C */  lw         $v1, 0xc($s2)
/* E9FC0 80040AB0 9462001E */  lhu        $v0, 0x1e($v1)
/* E9FC4 80040AB4 24040031 */  addiu      $a0, $zero, 0x31
/* E9FC8 80040AB8 24050035 */  addiu      $a1, $zero, 0x35
/* E9FCC 80040ABC 34420044 */  ori        $v0, $v0, 0x44
/* E9FD0 80040AC0 0C00DD19 */  jal        func_80037464_E0974
/* E9FD4 80040AC4 A462001E */   sh        $v0, 0x1e($v1)
/* E9FD8 80040AC8 00409021 */  addu       $s2, $v0, $zero
/* E9FDC 80040ACC 8E44000C */  lw         $a0, 0xc($s2)
/* E9FE0 80040AD0 8C82000C */  lw         $v0, 0xc($a0)
/* E9FE4 80040AD4 94450000 */  lhu        $a1, ($v0)
/* E9FE8 80040AD8 2406005C */  addiu      $a2, $zero, 0x5c
/* E9FEC 80040ADC 00052842 */  srl        $a1, $a1, 1
/* E9FF0 80040AE0 24A50010 */  addiu      $a1, $a1, 0x10
/* E9FF4 80040AE4 00052C00 */  sll        $a1, $a1, 0x10
/* E9FF8 80040AE8 0C02912A */  jal        func_800A44A8
/* E9FFC 80040AEC 00052C03 */   sra       $a1, $a1, 0x10
/* EA000 80040AF0 24020040 */  addiu      $v0, $zero, 0x40
/* EA004 80040AF4 AFA20010 */  sw         $v0, 0x10($sp)
/* EA008 80040AF8 8E44000C */  lw         $a0, 0xc($s2)
/* EA00C 80040AFC 240500FF */  addiu      $a1, $zero, 0xff
/* EA010 80040B00 240600FF */  addiu      $a2, $zero, 0xff
/* EA014 80040B04 0C028E41 */  jal        func_800A3904
/* EA018 80040B08 240700FF */   addiu     $a3, $zero, 0xff
/* EA01C 80040B0C 8E44000C */  lw         $a0, 0xc($s2)
/* EA020 80040B10 24050280 */  addiu      $a1, $zero, 0x280
/* EA024 80040B14 0C028D89 */  jal        func_800A3624
/* EA028 80040B18 240601F8 */   addiu     $a2, $zero, 0x1f8
/* EA02C 80040B1C 8E43000C */  lw         $v1, 0xc($s2)
/* EA030 80040B20 9462001E */  lhu        $v0, 0x1e($v1)
/* EA034 80040B24 24110010 */  addiu      $s1, $zero, 0x10
/* EA038 80040B28 24040031 */  addiu      $a0, $zero, 0x31
/* EA03C 80040B2C 34420044 */  ori        $v0, $v0, 0x44
/* EA040 80040B30 0C00D8C1 */  jal        func_80036304_DF814
/* EA044 80040B34 A462001E */   sh        $v0, 0x1e($v1)
/* EA048 80040B38 00409021 */  addu       $s2, $v0, $zero
/* EA04C 80040B3C 0C00D8C1 */  jal        func_80036304_DF814
/* EA050 80040B40 24040032 */   addiu     $a0, $zero, 0x32
/* EA054 80040B44 00409821 */  addu       $s3, $v0, $zero
/* EA058 80040B48 0C00D8C1 */  jal        func_80036304_DF814
/* EA05C 80040B4C 24040033 */   addiu     $a0, $zero, 0x33
/* EA060 80040B50 0040A021 */  addu       $s4, $v0, $zero
.L80040B54:
/* EA064 80040B54 8E44000C */  lw         $a0, 0xc($s2)
/* EA068 80040B58 323000FF */  andi       $s0, $s1, 0xff
/* EA06C 80040B5C 02002821 */  addu       $a1, $s0, $zero
/* EA070 80040B60 00003021 */  addu       $a2, $zero, $zero
/* EA074 80040B64 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA078 80040B68 26310001 */   addiu     $s1, $s1, 1
/* EA07C 80040B6C 8E64000C */  lw         $a0, 0xc($s3)
/* EA080 80040B70 02002821 */  addu       $a1, $s0, $zero
/* EA084 80040B74 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA088 80040B78 00003021 */   addu      $a2, $zero, $zero
/* EA08C 80040B7C 8E84000C */  lw         $a0, 0xc($s4)
/* EA090 80040B80 02002821 */  addu       $a1, $s0, $zero
/* EA094 80040B84 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA098 80040B88 00003021 */   addu      $a2, $zero, $zero
/* EA09C 80040B8C 322200FF */  andi       $v0, $s1, 0xff
/* EA0A0 80040B90 2C420020 */  sltiu      $v0, $v0, 0x20
/* EA0A4 80040B94 1440FFEF */  bnez       $v0, .L80040B54
/* EA0A8 80040B98 00000000 */   nop
/* EA0AC 80040B9C 00008821 */  addu       $s1, $zero, $zero
.L80040BA0:
/* EA0B0 80040BA0 8E44000C */  lw         $a0, 0xc($s2)
/* EA0B4 80040BA4 322500FF */  andi       $a1, $s1, 0xff
/* EA0B8 80040BA8 00003021 */  addu       $a2, $zero, $zero
/* EA0BC 80040BAC 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA0C0 80040BB0 26310001 */   addiu     $s1, $s1, 1
/* EA0C4 80040BB4 322200FF */  andi       $v0, $s1, 0xff
/* EA0C8 80040BB8 2C42000D */  sltiu      $v0, $v0, 0xd
/* EA0CC 80040BBC 1440FFF8 */  bnez       $v0, .L80040BA0
/* EA0D0 80040BC0 00000000 */   nop
/* EA0D4 80040BC4 00008821 */  addu       $s1, $zero, $zero
.L80040BC8:
/* EA0D8 80040BC8 8E64000C */  lw         $a0, 0xc($s3)
/* EA0DC 80040BCC 322500FF */  andi       $a1, $s1, 0xff
/* EA0E0 80040BD0 00003021 */  addu       $a2, $zero, $zero
/* EA0E4 80040BD4 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA0E8 80040BD8 26310001 */   addiu     $s1, $s1, 1
/* EA0EC 80040BDC 322200FF */  andi       $v0, $s1, 0xff
/* EA0F0 80040BE0 2C420005 */  sltiu      $v0, $v0, 5
/* EA0F4 80040BE4 1440FFF8 */  bnez       $v0, .L80040BC8
/* EA0F8 80040BE8 00000000 */   nop
/* EA0FC 80040BEC 24110006 */  addiu      $s1, $zero, 6
.L80040BF0:
/* EA100 80040BF0 8E84000C */  lw         $a0, 0xc($s4)
/* EA104 80040BF4 322500FF */  andi       $a1, $s1, 0xff
/* EA108 80040BF8 00003021 */  addu       $a2, $zero, $zero
/* EA10C 80040BFC 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA110 80040C00 26310001 */   addiu     $s1, $s1, 1
/* EA114 80040C04 322200FF */  andi       $v0, $s1, 0xff
/* EA118 80040C08 2C420010 */  sltiu      $v0, $v0, 0x10
/* EA11C 80040C0C 1440FFF8 */  bnez       $v0, .L80040BF0
/* EA120 80040C10 00000000 */   nop
/* EA124 80040C14 0C00D8C1 */  jal        func_80036304_DF814
/* EA128 80040C18 24040034 */   addiu     $a0, $zero, 0x34
/* EA12C 80040C1C 00409821 */  addu       $s3, $v0, $zero
/* EA130 80040C20 0C00D8C1 */  jal        func_80036304_DF814
/* EA134 80040C24 24040035 */   addiu     $a0, $zero, 0x35
/* EA138 80040C28 0040A021 */  addu       $s4, $v0, $zero
/* EA13C 80040C2C 00008821 */  addu       $s1, $zero, $zero
.L80040C30:
/* EA140 80040C30 8E64000C */  lw         $a0, 0xc($s3)
/* EA144 80040C34 323000FF */  andi       $s0, $s1, 0xff
/* EA148 80040C38 02002821 */  addu       $a1, $s0, $zero
/* EA14C 80040C3C 00003021 */  addu       $a2, $zero, $zero
/* EA150 80040C40 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA154 80040C44 26310001 */   addiu     $s1, $s1, 1
/* EA158 80040C48 8E84000C */  lw         $a0, 0xc($s4)
/* EA15C 80040C4C 02002821 */  addu       $a1, $s0, $zero
/* EA160 80040C50 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA164 80040C54 00003021 */   addu      $a2, $zero, $zero
/* EA168 80040C58 322200FF */  andi       $v0, $s1, 0xff
/* EA16C 80040C5C 2C420010 */  sltiu      $v0, $v0, 0x10
/* EA170 80040C60 1440FFF3 */  bnez       $v0, .L80040C30
/* EA174 80040C64 00000000 */   nop
/* EA178 80040C68 24110010 */  addiu      $s1, $zero, 0x10
.L80040C6C:
/* EA17C 80040C6C 8E64000C */  lw         $a0, 0xc($s3)
/* EA180 80040C70 322500FF */  andi       $a1, $s1, 0xff
/* EA184 80040C74 00003021 */  addu       $a2, $zero, $zero
/* EA188 80040C78 0C00DE72 */  jal        func_800379C8_E0ED8
/* EA18C 80040C7C 26310001 */   addiu     $s1, $s1, 1
/* EA190 80040C80 322200FF */  andi       $v0, $s1, 0xff
/* EA194 80040C84 2C420016 */  sltiu      $v0, $v0, 0x16
/* EA198 80040C88 1440FFF8 */  bnez       $v0, .L80040C6C
/* EA19C 80040C8C 00000000 */   nop
/* EA1A0 80040C90 8FBF006C */  lw         $ra, 0x6c($sp)
/* EA1A4 80040C94 8FB40068 */  lw         $s4, 0x68($sp)
/* EA1A8 80040C98 8FB30064 */  lw         $s3, 0x64($sp)
/* EA1AC 80040C9C 8FB20060 */  lw         $s2, 0x60($sp)
/* EA1B0 80040CA0 8FB1005C */  lw         $s1, 0x5c($sp)
/* EA1B4 80040CA4 8FB00058 */  lw         $s0, 0x58($sp)
/* EA1B8 80040CA8 D7B80080 */  ldc1       $f24, 0x80($sp)
/* EA1BC 80040CAC D7B60078 */  ldc1       $f22, 0x78($sp)
/* EA1C0 80040CB0 D7B40070 */  ldc1       $f20, 0x70($sp)
/* EA1C4 80040CB4 03E00008 */  jr         $ra
/* EA1C8 80040CB8 27BD0088 */   addiu     $sp, $sp, 0x88

glabel func_80040CBC_EA1CC
/* EA1CC 80040CBC 27BDFF90 */  addiu      $sp, $sp, -0x70
/* EA1D0 80040CC0 AFBF0068 */  sw         $ra, 0x68($sp)
/* EA1D4 80040CC4 AFB30064 */  sw         $s3, 0x64($sp)
/* EA1D8 80040CC8 AFB20060 */  sw         $s2, 0x60($sp)
/* EA1DC 80040CCC AFB1005C */  sw         $s1, 0x5c($sp)
/* EA1E0 80040CD0 0C00E109 */  jal        func_80038424_E1934
/* EA1E4 80040CD4 AFB00058 */   sw        $s0, 0x58($sp)
/* EA1E8 80040CD8 0C00E2C2 */  jal        func_80038B08_E2018
/* EA1EC 80040CDC 24120001 */   addiu     $s2, $zero, 1
/* EA1F0 80040CE0 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EA1F4 80040CE4 24040002 */   addiu     $a0, $zero, 2
/* EA1F8 80040CE8 00408021 */  addu       $s0, $v0, $zero
/* EA1FC 80040CEC 3C013CA3 */  lui        $at, 0x3ca3
/* EA200 80040CF0 3421D70A */  ori        $at, $at, 0xd70a
/* EA204 80040CF4 44810000 */  mtc1       $at, $f0
/* EA208 80040CF8 02002021 */  addu       $a0, $s0, $zero
/* EA20C 80040CFC 2405008D */  addiu      $a1, $zero, 0x8d
/* EA210 80040D00 240200FF */  addiu      $v0, $zero, 0xff
/* EA214 80040D04 A6020074 */  sh         $v0, 0x74($s0)
/* EA218 80040D08 A6020076 */  sh         $v0, 0x76($s0)
/* EA21C 80040D0C A6020078 */  sh         $v0, 0x78($s0)
/* EA220 80040D10 A602007A */  sh         $v0, 0x7a($s0)
/* EA224 80040D14 24020078 */  addiu      $v0, $zero, 0x78
/* EA228 80040D18 AE000010 */  sw         $zero, 0x10($s0)
/* EA22C 80040D1C AE000014 */  sw         $zero, 0x14($s0)
/* EA230 80040D20 AE000018 */  sw         $zero, 0x18($s0)
/* EA234 80040D24 AE00001C */  sw         $zero, 0x1c($s0)
/* EA238 80040D28 AE000020 */  sw         $zero, 0x20($s0)
/* EA23C 80040D2C AE000024 */  sw         $zero, 0x24($s0)
/* EA240 80040D30 A6020070 */  sh         $v0, 0x70($s0)
/* EA244 80040D34 0C00DFE6 */  jal        func_80037F98_E14A8
/* EA248 80040D38 E6000028 */   swc1      $f0, 0x28($s0)
/* EA24C 80040D3C 8E020004 */  lw         $v0, 4($s0)
/* EA250 80040D40 3C01425A */  lui        $at, 0x425a
/* EA254 80040D44 3421E148 */  ori        $at, $at, 0xe148
/* EA258 80040D48 44810000 */  mtc1       $at, $f0
/* EA25C 80040D4C 3C013F80 */  lui        $at, 0x3f80
/* EA260 80040D50 44811000 */  mtc1       $at, $f2
/* EA264 80040D54 24040010 */  addiu      $a0, $zero, 0x10
/* EA268 80040D58 24050010 */  addiu      $a1, $zero, 0x10
/* EA26C 80040D5C A0400067 */  sb         $zero, 0x67($v0)
/* EA270 80040D60 8E030004 */  lw         $v1, 4($s0)
/* EA274 80040D64 24060010 */  addiu      $a2, $zero, 0x10
/* EA278 80040D68 24020008 */  addiu      $v0, $zero, 8
/* EA27C 80040D6C A6020072 */  sh         $v0, 0x72($s0)
/* EA280 80040D70 90620066 */  lbu        $v0, 0x66($v1)
/* EA284 80040D74 3C01C2C8 */  lui        $at, 0xc2c8
/* EA288 80040D78 44812000 */  mtc1       $at, $f4
/* EA28C 80040D7C 240700FF */  addiu      $a3, $zero, 0xff
/* EA290 80040D80 34420007 */  ori        $v0, $v0, 7
/* EA294 80040D84 A0620066 */  sb         $v0, 0x66($v1)
/* EA298 80040D88 2402006F */  addiu      $v0, $zero, 0x6f
/* EA29C 80040D8C AFA20010 */  sw         $v0, 0x10($sp)
/* EA2A0 80040D90 2402004F */  addiu      $v0, $zero, 0x4f
/* EA2A4 80040D94 3C018015 */  lui        $at, %hi(D_8014A064)
/* EA2A8 80040D98 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EA2AC 80040D9C 3C018015 */  lui        $at, %hi(D_8014A068)
/* EA2B0 80040DA0 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* EA2B4 80040DA4 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EA2B8 80040DA8 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EA2BC 80040DAC 3C018015 */  lui        $at, %hi(D_8014A070)
/* EA2C0 80040DB0 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EA2C4 80040DB4 3C018015 */  lui        $at, %hi(D_8014A074)
/* EA2C8 80040DB8 E422A074 */  swc1       $f2, %lo(D_8014A074)($at)
/* EA2CC 80040DBC 3C018015 */  lui        $at, %hi(D_8014A078)
/* EA2D0 80040DC0 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EA2D4 80040DC4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EA2D8 80040DC8 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* EA2DC 80040DCC 3C018015 */  lui        $at, %hi(D_8014A080)
/* EA2E0 80040DD0 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* EA2E4 80040DD4 3C018015 */  lui        $at, %hi(D_8014A084)
/* EA2E8 80040DD8 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EA2EC 80040DDC 3C018015 */  lui        $at, %hi(D_8014A088)
/* EA2F0 80040DE0 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* EA2F4 80040DE4 0C00E34F */  jal        func_80038D3C_E224C
/* EA2F8 80040DE8 AFA20014 */   sw        $v0, 0x14($sp)
/* EA2FC 80040DEC 2404016F */  addiu      $a0, $zero, 0x16f
/* EA300 80040DF0 3C01C000 */  lui        $at, 0xc000
/* EA304 80040DF4 44810000 */  mtc1       $at, $f0
/* EA308 80040DF8 24050002 */  addiu      $a1, $zero, 2
/* EA30C 80040DFC 3C018015 */  lui        $at, %hi(D_8014A054)
/* EA310 80040E00 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EA314 80040E04 3C018015 */  lui        $at, %hi(D_8014A050)
/* EA318 80040E08 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EA31C 80040E0C 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EA320 80040E10 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EA324 80040E14 3C018017 */  lui        $at, %hi(D_8016E568)
/* EA328 80040E18 AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* EA32C 80040E1C 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EA330 80040E20 AC20D0D4 */  sw         $zero, %lo(D_8016D0D4)($at)
/* EA334 80040E24 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EA338 80040E28 E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* EA33C 80040E2C 0C00D925 */  jal        func_80036494_DF9A4
/* EA340 80040E30 24060058 */   addiu     $a2, $zero, 0x58
/* EA344 80040E34 00408821 */  addu       $s1, $v0, $zero
/* EA348 80040E38 8E24000C */  lw         $a0, 0xc($s1)
/* EA34C 80040E3C 3C064000 */  lui        $a2, 0x4000
/* EA350 80040E40 3C074000 */  lui        $a3, 0x4000
/* EA354 80040E44 34E7A3D7 */  ori        $a3, $a3, 0xa3d7
/* EA358 80040E48 0C02915B */  jal        func_800A456C
/* EA35C 80040E4C 00002821 */   addu      $a1, $zero, $zero
/* EA360 80040E50 8E24000C */  lw         $a0, 0xc($s1)
/* EA364 80040E54 24050040 */  addiu      $a1, $zero, 0x40
/* EA368 80040E58 0C028D89 */  jal        func_800A3624
/* EA36C 80040E5C 24060040 */   addiu     $a2, $zero, 0x40
/* EA370 80040E60 8E23000C */  lw         $v1, 0xc($s1)
/* EA374 80040E64 9462001E */  lhu        $v0, 0x1e($v1)
/* EA378 80040E68 24040011 */  addiu      $a0, $zero, 0x11
/* EA37C 80040E6C 24050001 */  addiu      $a1, $zero, 1
/* EA380 80040E70 34420084 */  ori        $v0, $v0, 0x84
/* EA384 80040E74 A462001E */  sh         $v0, 0x1e($v1)
/* EA388 80040E78 8E23000C */  lw         $v1, 0xc($s1)
/* EA38C 80040E7C 24060057 */  addiu      $a2, $zero, 0x57
/* EA390 80040E80 24020001 */  addiu      $v0, $zero, 1
/* EA394 80040E84 0C00D925 */  jal        func_80036494_DF9A4
/* EA398 80040E88 A462001C */   sh        $v0, 0x1c($v1)
/* EA39C 80040E8C 00408821 */  addu       $s1, $v0, $zero
/* EA3A0 80040E90 8E24000C */  lw         $a0, 0xc($s1)
/* EA3A4 80040E94 24050033 */  addiu      $a1, $zero, 0x33
/* EA3A8 80040E98 0C028F9A */  jal        func_800A3E68
/* EA3AC 80040E9C 24060044 */   addiu     $a2, $zero, 0x44
/* EA3B0 80040EA0 8E24000C */  lw         $a0, 0xc($s1)
/* EA3B4 80040EA4 00002821 */  addu       $a1, $zero, $zero
/* EA3B8 80040EA8 0C028D89 */  jal        func_800A3624
/* EA3BC 80040EAC 00003021 */   addu      $a2, $zero, $zero
/* EA3C0 80040EB0 AFA00010 */  sw         $zero, 0x10($sp)
/* EA3C4 80040EB4 8E24000C */  lw         $a0, 0xc($s1)
/* EA3C8 80040EB8 240500FF */  addiu      $a1, $zero, 0xff
/* EA3CC 80040EBC 240600FF */  addiu      $a2, $zero, 0xff
/* EA3D0 80040EC0 0C028E41 */  jal        func_800A3904
/* EA3D4 80040EC4 240700FF */   addiu     $a3, $zero, 0xff
/* EA3D8 80040EC8 8E23000C */  lw         $v1, 0xc($s1)
/* EA3DC 80040ECC 9462001E */  lhu        $v0, 0x1e($v1)
/* EA3E0 80040ED0 24040170 */  addiu      $a0, $zero, 0x170
/* EA3E4 80040ED4 24050006 */  addiu      $a1, $zero, 6
/* EA3E8 80040ED8 34420002 */  ori        $v0, $v0, 2
/* EA3EC 80040EDC A462001E */  sh         $v0, 0x1e($v1)
/* EA3F0 80040EE0 8E23000C */  lw         $v1, 0xc($s1)
/* EA3F4 80040EE4 24060059 */  addiu      $a2, $zero, 0x59
/* EA3F8 80040EE8 24020009 */  addiu      $v0, $zero, 9
/* EA3FC 80040EEC 0C00D925 */  jal        func_80036494_DF9A4
/* EA400 80040EF0 A462001C */   sh        $v0, 0x1c($v1)
/* EA404 80040EF4 00408821 */  addu       $s1, $v0, $zero
/* EA408 80040EF8 8E24000C */  lw         $a0, 0xc($s1)
/* EA40C 80040EFC 24050200 */  addiu      $a1, $zero, 0x200
/* EA410 80040F00 0C0292D4 */  jal        func_800A4B50
/* EA414 80040F04 240601FD */   addiu     $a2, $zero, 0x1fd
/* EA418 80040F08 8E24000C */  lw         $a0, 0xc($s1)
/* EA41C 80040F0C 24050040 */  addiu      $a1, $zero, 0x40
/* EA420 80040F10 0C028D89 */  jal        func_800A3624
/* EA424 80040F14 24060040 */   addiu     $a2, $zero, 0x40
/* EA428 80040F18 24020090 */  addiu      $v0, $zero, 0x90
/* EA42C 80040F1C AFA20010 */  sw         $v0, 0x10($sp)
/* EA430 80040F20 8E24000C */  lw         $a0, 0xc($s1)
/* EA434 80040F24 240500FF */  addiu      $a1, $zero, 0xff
/* EA438 80040F28 240600FF */  addiu      $a2, $zero, 0xff
/* EA43C 80040F2C 0C028E41 */  jal        func_800A3904
/* EA440 80040F30 240700D0 */   addiu     $a3, $zero, 0xd0
/* EA444 80040F34 8E23000C */  lw         $v1, 0xc($s1)
/* EA448 80040F38 24040011 */  addiu      $a0, $zero, 0x11
/* EA44C 80040F3C 9462001E */  lhu        $v0, 0x1e($v1)
/* EA450 80040F40 24050001 */  addiu      $a1, $zero, 1
/* EA454 80040F44 24060017 */  addiu      $a2, $zero, 0x17
/* EA458 80040F48 34420006 */  ori        $v0, $v0, 6
/* EA45C 80040F4C 0C00D925 */  jal        func_80036494_DF9A4
/* EA460 80040F50 A462001E */   sh        $v0, 0x1e($v1)
/* EA464 80040F54 00408821 */  addu       $s1, $v0, $zero
/* EA468 80040F58 8E24000C */  lw         $a0, 0xc($s1)
/* EA46C 80040F5C 24050038 */  addiu      $a1, $zero, 0x38
/* EA470 80040F60 0C028F9A */  jal        func_800A3E68
/* EA474 80040F64 2406004E */   addiu     $a2, $zero, 0x4e
/* EA478 80040F68 8E24000C */  lw         $a0, 0xc($s1)
/* EA47C 80040F6C 24050040 */  addiu      $a1, $zero, 0x40
/* EA480 80040F70 0C028D89 */  jal        func_800A3624
/* EA484 80040F74 24060040 */   addiu     $a2, $zero, 0x40
/* EA488 80040F78 240200FF */  addiu      $v0, $zero, 0xff
/* EA48C 80040F7C AFA20010 */  sw         $v0, 0x10($sp)
/* EA490 80040F80 8E24000C */  lw         $a0, 0xc($s1)
/* EA494 80040F84 240500FF */  addiu      $a1, $zero, 0xff
/* EA498 80040F88 240600FF */  addiu      $a2, $zero, 0xff
/* EA49C 80040F8C 0C028E41 */  jal        func_800A3904
/* EA4A0 80040F90 240700FF */   addiu     $a3, $zero, 0xff
/* EA4A4 80040F94 8E23000C */  lw         $v1, 0xc($s1)
/* EA4A8 80040F98 24040008 */  addiu      $a0, $zero, 8
/* EA4AC 80040F9C 9462001E */  lhu        $v0, 0x1e($v1)
/* EA4B0 80040FA0 24050001 */  addiu      $a1, $zero, 1
/* EA4B4 80040FA4 24060037 */  addiu      $a2, $zero, 0x37
/* EA4B8 80040FA8 34420006 */  ori        $v0, $v0, 6
/* EA4BC 80040FAC 0C00D925 */  jal        func_80036494_DF9A4
/* EA4C0 80040FB0 A462001E */   sh        $v0, 0x1e($v1)
/* EA4C4 80040FB4 00408821 */  addu       $s1, $v0, $zero
/* EA4C8 80040FB8 8E24000C */  lw         $a0, 0xc($s1)
/* EA4CC 80040FBC 24050066 */  addiu      $a1, $zero, 0x66
/* EA4D0 80040FC0 0C028F9A */  jal        func_800A3E68
/* EA4D4 80040FC4 24061400 */   addiu     $a2, $zero, 0x1400
/* EA4D8 80040FC8 8E24000C */  lw         $a0, 0xc($s1)
/* EA4DC 80040FCC 24050040 */  addiu      $a1, $zero, 0x40
/* EA4E0 80040FD0 0C028D89 */  jal        func_800A3624
/* EA4E4 80040FD4 24060260 */   addiu     $a2, $zero, 0x260
/* EA4E8 80040FD8 AFA00010 */  sw         $zero, 0x10($sp)
/* EA4EC 80040FDC 8E24000C */  lw         $a0, 0xc($s1)
/* EA4F0 80040FE0 240500FF */  addiu      $a1, $zero, 0xff
/* EA4F4 80040FE4 240600FF */  addiu      $a2, $zero, 0xff
/* EA4F8 80040FE8 0C028E41 */  jal        func_800A3904
/* EA4FC 80040FEC 240700D0 */   addiu     $a3, $zero, 0xd0
/* EA500 80040FF0 8E23000C */  lw         $v1, 0xc($s1)
/* EA504 80040FF4 24130042 */  addiu      $s3, $zero, 0x42
/* EA508 80040FF8 24020042 */  addiu      $v0, $zero, 0x42
/* EA50C 80040FFC A462001C */  sh         $v0, 0x1c($v1)
/* EA510 80041000 24040037 */  addiu      $a0, $zero, 0x37
.L80041004:
/* EA514 80041004 324500FF */  andi       $a1, $s2, 0xff
/* EA518 80041008 0C00DD19 */  jal        func_80037464_E0974
/* EA51C 8004100C 24A50037 */   addiu     $a1, $a1, 0x37
/* EA520 80041010 00408821 */  addu       $s1, $v0, $zero
/* EA524 80041014 8E24000C */  lw         $a0, 0xc($s1)
/* EA528 80041018 24050066 */  addiu      $a1, $zero, 0x66
/* EA52C 8004101C 0C028F9A */  jal        func_800A3E68
/* EA530 80041020 24061400 */   addiu     $a2, $zero, 0x1400
/* EA534 80041024 8E24000C */  lw         $a0, 0xc($s1)
/* EA538 80041028 24050040 */  addiu      $a1, $zero, 0x40
/* EA53C 8004102C 325000FF */  andi       $s0, $s2, 0xff
/* EA540 80041030 001030C0 */  sll        $a2, $s0, 3
/* EA544 80041034 0C028D89 */  jal        func_800A3624
/* EA548 80041038 24C60260 */   addiu     $a2, $a2, 0x260
/* EA54C 8004103C 001080C0 */  sll        $s0, $s0, 3
/* EA550 80041040 321000FF */  andi       $s0, $s0, 0xff
/* EA554 80041044 AFB00010 */  sw         $s0, 0x10($sp)
/* EA558 80041048 8E24000C */  lw         $a0, 0xc($s1)
/* EA55C 8004104C 240500FF */  addiu      $a1, $zero, 0xff
/* EA560 80041050 240600FF */  addiu      $a2, $zero, 0xff
/* EA564 80041054 0C028E41 */  jal        func_800A3904
/* EA568 80041058 24070080 */   addiu     $a3, $zero, 0x80
/* EA56C 8004105C 8E22000C */  lw         $v0, 0xc($s1)
/* EA570 80041060 26520001 */  addiu      $s2, $s2, 1
/* EA574 80041064 A453001C */  sh         $s3, 0x1c($v0)
/* EA578 80041068 324200FF */  andi       $v0, $s2, 0xff
/* EA57C 8004106C 2C420020 */  sltiu      $v0, $v0, 0x20
/* EA580 80041070 1440FFE4 */  bnez       $v0, .L80041004
/* EA584 80041074 24040037 */   addiu     $a0, $zero, 0x37
/* EA588 80041078 8E24000C */  lw         $a0, 0xc($s1)
/* EA58C 8004107C 24050066 */  addiu      $a1, $zero, 0x66
/* EA590 80041080 0C028F9A */  jal        func_800A3E68
/* EA594 80041084 24060155 */   addiu     $a2, $zero, 0x155
/* EA598 80041088 8FBF0068 */  lw         $ra, 0x68($sp)
/* EA59C 8004108C 8FB30064 */  lw         $s3, 0x64($sp)
/* EA5A0 80041090 8FB20060 */  lw         $s2, 0x60($sp)
/* EA5A4 80041094 8FB1005C */  lw         $s1, 0x5c($sp)
/* EA5A8 80041098 8FB00058 */  lw         $s0, 0x58($sp)
/* EA5AC 8004109C 03E00008 */  jr         $ra
/* EA5B0 800410A0 27BD0070 */   addiu     $sp, $sp, 0x70

glabel func_800410A4_EA5B4
/* EA5B4 800410A4 27BDFF90 */  addiu      $sp, $sp, -0x70
/* EA5B8 800410A8 24040002 */  addiu      $a0, $zero, 2
/* EA5BC 800410AC AFBF006C */  sw         $ra, 0x6c($sp)
/* EA5C0 800410B0 AFB20068 */  sw         $s2, 0x68($sp)
/* EA5C4 800410B4 AFB10064 */  sw         $s1, 0x64($sp)
/* EA5C8 800410B8 0C00DFA8 */  jal        func_80037EA0_E13B0
/* EA5CC 800410BC AFB00060 */   sw        $s0, 0x60($sp)
/* EA5D0 800410C0 00408021 */  addu       $s0, $v0, $zero
/* EA5D4 800410C4 3C013CA3 */  lui        $at, 0x3ca3
/* EA5D8 800410C8 3421D70A */  ori        $at, $at, 0xd70a
/* EA5DC 800410CC 44810000 */  mtc1       $at, $f0
/* EA5E0 800410D0 02002021 */  addu       $a0, $s0, $zero
/* EA5E4 800410D4 2405008C */  addiu      $a1, $zero, 0x8c
/* EA5E8 800410D8 240200FF */  addiu      $v0, $zero, 0xff
/* EA5EC 800410DC 24110001 */  addiu      $s1, $zero, 1
/* EA5F0 800410E0 AE000010 */  sw         $zero, 0x10($s0)
/* EA5F4 800410E4 AE000014 */  sw         $zero, 0x14($s0)
/* EA5F8 800410E8 AE000018 */  sw         $zero, 0x18($s0)
/* EA5FC 800410EC AE00001C */  sw         $zero, 0x1c($s0)
/* EA600 800410F0 AE000020 */  sw         $zero, 0x20($s0)
/* EA604 800410F4 AE000024 */  sw         $zero, 0x24($s0)
/* EA608 800410F8 A6020074 */  sh         $v0, 0x74($s0)
/* EA60C 800410FC A6020076 */  sh         $v0, 0x76($s0)
/* EA610 80041100 A6020078 */  sh         $v0, 0x78($s0)
/* EA614 80041104 A602007A */  sh         $v0, 0x7a($s0)
/* EA618 80041108 A6110070 */  sh         $s1, 0x70($s0)
/* EA61C 8004110C 0C00DFE6 */  jal        func_80037F98_E14A8
/* EA620 80041110 E6000028 */   swc1      $f0, 0x28($s0)
/* EA624 80041114 8E020004 */  lw         $v0, 4($s0)
/* EA628 80041118 A0400067 */  sb         $zero, 0x67($v0)
/* EA62C 8004111C 8E030004 */  lw         $v1, 4($s0)
/* EA630 80041120 24020002 */  addiu      $v0, $zero, 2
/* EA634 80041124 A6020072 */  sh         $v0, 0x72($s0)
/* EA638 80041128 90620066 */  lbu        $v0, 0x66($v1)
/* EA63C 8004112C 34420007 */  ori        $v0, $v0, 7
/* EA640 80041130 A0620066 */  sb         $v0, 0x66($v1)
/* EA644 80041134 8E040004 */  lw         $a0, 4($s0)
/* EA648 80041138 3C058007 */  lui        $a1, %hi(D_80069F50_113460)
/* EA64C 8004113C 0C0284DC */  jal        func_800A1370
/* EA650 80041140 24A59F50 */   addiu     $a1, $a1, %lo(D_80069F50_113460)
/* EA654 80041144 8E040004 */  lw         $a0, 4($s0)
/* EA658 80041148 3045FFFF */  andi       $a1, $v0, 0xffff
/* EA65C 8004114C 0C02869D */  jal        func_800A1A74
/* EA660 80041150 00003021 */   addu      $a2, $zero, $zero
/* EA664 80041154 24040010 */  addiu      $a0, $zero, 0x10
/* EA668 80041158 24050010 */  addiu      $a1, $zero, 0x10
/* EA66C 8004115C 3C0141A3 */  lui        $at, 0x41a3
/* EA670 80041160 3421C28F */  ori        $at, $at, 0xc28f
/* EA674 80041164 44810000 */  mtc1       $at, $f0
/* EA678 80041168 3C013F80 */  lui        $at, 0x3f80
/* EA67C 8004116C 44811000 */  mtc1       $at, $f2
/* EA680 80041170 3C01C150 */  lui        $at, 0xc150
/* EA684 80041174 44812000 */  mtc1       $at, $f4
/* EA688 80041178 3C01C314 */  lui        $at, 0xc314
/* EA68C 8004117C 3421A148 */  ori        $at, $at, 0xa148
/* EA690 80041180 44813000 */  mtc1       $at, $f6
/* EA694 80041184 24060010 */  addiu      $a2, $zero, 0x10
/* EA698 80041188 2402006F */  addiu      $v0, $zero, 0x6f
/* EA69C 8004118C AFA20010 */  sw         $v0, 0x10($sp)
/* EA6A0 80041190 2402004F */  addiu      $v0, $zero, 0x4f
/* EA6A4 80041194 3C018015 */  lui        $at, %hi(D_8014A064)
/* EA6A8 80041198 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* EA6AC 8004119C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* EA6B0 800411A0 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* EA6B4 800411A4 3C018015 */  lui        $at, %hi(D_8014A070)
/* EA6B8 800411A8 AC20A070 */  sw         $zero, %lo(D_8014A070)($at)
/* EA6BC 800411AC 3C018015 */  lui        $at, %hi(D_8014A078)
/* EA6C0 800411B0 AC20A078 */  sw         $zero, %lo(D_8014A078)($at)
/* EA6C4 800411B4 3C018015 */  lui        $at, %hi(D_8014A080)
/* EA6C8 800411B8 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* EA6CC 800411BC 3C018015 */  lui        $at, %hi(D_8014A084)
/* EA6D0 800411C0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* EA6D4 800411C4 AFA20014 */  sw         $v0, 0x14($sp)
/* EA6D8 800411C8 3C018015 */  lui        $at, %hi(D_8014A068)
/* EA6DC 800411CC E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* EA6E0 800411D0 3C018015 */  lui        $at, %hi(D_8014A074)
/* EA6E4 800411D4 E422A074 */  swc1       $f2, %lo(D_8014A074)($at)
/* EA6E8 800411D8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* EA6EC 800411DC E424A07C */  swc1       $f4, %lo(D_8014A07C)($at)
/* EA6F0 800411E0 3C018015 */  lui        $at, %hi(D_8014A088)
/* EA6F4 800411E4 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* EA6F8 800411E8 0C00E34F */  jal        func_80038D3C_E224C
/* EA6FC 800411EC 240700FF */   addiu     $a3, $zero, 0xff
/* EA700 800411F0 2404016F */  addiu      $a0, $zero, 0x16f
/* EA704 800411F4 3C01C000 */  lui        $at, 0xc000
/* EA708 800411F8 44810000 */  mtc1       $at, $f0
/* EA70C 800411FC 24050002 */  addiu      $a1, $zero, 2
/* EA710 80041200 3C018015 */  lui        $at, %hi(D_8014A054)
/* EA714 80041204 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* EA718 80041208 3C018015 */  lui        $at, %hi(D_8014A050)
/* EA71C 8004120C AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* EA720 80041210 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* EA724 80041214 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* EA728 80041218 3C018017 */  lui        $at, %hi(D_8016E568)
/* EA72C 8004121C AC20E568 */  sw         $zero, %lo(D_8016E568)($at)
/* EA730 80041220 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* EA734 80041224 AC20D0D4 */  sw         $zero, %lo(D_8016D0D4)($at)
/* EA738 80041228 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* EA73C 8004122C E420D0D0 */  swc1       $f0, %lo(D_8016D0D0)($at)
/* EA740 80041230 0C00D925 */  jal        func_80036494_DF9A4
/* EA744 80041234 24060058 */   addiu     $a2, $zero, 0x58
/* EA748 80041238 00409021 */  addu       $s2, $v0, $zero
/* EA74C 8004123C 8E44000C */  lw         $a0, 0xc($s2)
/* EA750 80041240 8C82000C */  lw         $v0, 0xc($a0)
/* EA754 80041244 94450000 */  lhu        $a1, ($v0)
/* EA758 80041248 00003021 */  addu       $a2, $zero, $zero
/* EA75C 8004124C 0C02912A */  jal        func_800A44A8
/* EA760 80041250 00052842 */   srl       $a1, $a1, 1
/* EA764 80041254 8E44000C */  lw         $a0, 0xc($s2)
/* EA768 80041258 3C064000 */  lui        $a2, 0x4000
/* EA76C 8004125C 3C074000 */  lui        $a3, 0x4000
/* EA770 80041260 34E7A3D7 */  ori        $a3, $a3, 0xa3d7
/* EA774 80041264 0C02915B */  jal        func_800A456C
/* EA778 80041268 00002821 */   addu      $a1, $zero, $zero
/* EA77C 8004126C 8E44000C */  lw         $a0, 0xc($s2)
/* EA780 80041270 24050280 */  addiu      $a1, $zero, 0x280
/* EA784 80041274 0C028D89 */  jal        func_800A3624
/* EA788 80041278 24060040 */   addiu     $a2, $zero, 0x40
/* EA78C 8004127C 8E43000C */  lw         $v1, 0xc($s2)
/* EA790 80041280 9462001E */  lhu        $v0, 0x1e($v1)
/* EA794 80041284 24040011 */  addiu      $a0, $zero, 0x11
/* EA798 80041288 34420084 */  ori        $v0, $v0, 0x84
/* EA79C 8004128C A462001E */  sh         $v0, 0x1e($v1)
/* EA7A0 80041290 8E42000C */  lw         $v0, 0xc($s2)
/* EA7A4 80041294 24050001 */  addiu      $a1, $zero, 1
/* EA7A8 80041298 24060057 */  addiu      $a2, $zero, 0x57
/* EA7AC 8004129C 0C00D925 */  jal        func_80036494_DF9A4
/* EA7B0 800412A0 A451001C */   sh        $s1, 0x1c($v0)
/* EA7B4 800412A4 00409021 */  addu       $s2, $v0, $zero
/* EA7B8 800412A8 8E44000C */  lw         $a0, 0xc($s2)
/* EA7BC 800412AC 24050033 */  addiu      $a1, $zero, 0x33
/* EA7C0 800412B0 0C028F9A */  jal        func_800A3E68
/* EA7C4 800412B4 24060044 */   addiu     $a2, $zero, 0x44
/* EA7C8 800412B8 8E44000C */  lw         $a0, 0xc($s2)
/* EA7CC 800412BC 00002821 */  addu       $a1, $zero, $zero
/* EA7D0 800412C0 0C028D89 */  jal        func_800A3624
/* EA7D4 800412C4 00003021 */   addu      $a2, $zero, $zero
/* EA7D8 800412C8 AFA00010 */  sw         $zero, 0x10($sp)
/* EA7DC 800412CC 8E44000C */  lw         $a0, 0xc($s2)
/* EA7E0 800412D0 240500FF */  addiu      $a1, $zero, 0xff
/* EA7E4 800412D4 240600FF */  addiu      $a2, $zero, 0xff
/* EA7E8 800412D8 0C028E41 */  jal        func_800A3904
/* EA7EC 800412DC 240700FF */   addiu     $a3, $zero, 0xff
/* EA7F0 800412E0 8E43000C */  lw         $v1, 0xc($s2)
/* EA7F4 800412E4 9462001E */  lhu        $v0, 0x1e($v1)
/* EA7F8 800412E8 24040170 */  addiu      $a0, $zero, 0x170
/* EA7FC 800412EC 24050006 */  addiu      $a1, $zero, 6
/* EA800 800412F0 34420002 */  ori        $v0, $v0, 2
/* EA804 800412F4 A462001E */  sh         $v0, 0x1e($v1)
/* EA808 800412F8 8E43000C */  lw         $v1, 0xc($s2)
/* EA80C 800412FC 24060059 */  addiu      $a2, $zero, 0x59
/* EA810 80041300 24020009 */  addiu      $v0, $zero, 9
/* EA814 80041304 0C00D925 */  jal        func_80036494_DF9A4
/* EA818 80041308 A462001C */   sh        $v0, 0x1c($v1)
/* EA81C 8004130C 00409021 */  addu       $s2, $v0, $zero
/* EA820 80041310 8E44000C */  lw         $a0, 0xc($s2)
/* EA824 80041314 24050200 */  addiu      $a1, $zero, 0x200
/* EA828 80041318 0C0292D4 */  jal        func_800A4B50
/* EA82C 8004131C 240601FD */   addiu     $a2, $zero, 0x1fd
/* EA830 80041320 8E44000C */  lw         $a0, 0xc($s2)
/* EA834 80041324 24050040 */  addiu      $a1, $zero, 0x40
/* EA838 80041328 0C028D89 */  jal        func_800A3624
/* EA83C 8004132C 24060040 */   addiu     $a2, $zero, 0x40
/* EA840 80041330 24020090 */  addiu      $v0, $zero, 0x90
/* EA844 80041334 AFA20010 */  sw         $v0, 0x10($sp)
/* EA848 80041338 8E44000C */  lw         $a0, 0xc($s2)
/* EA84C 8004133C 240500FF */  addiu      $a1, $zero, 0xff
/* EA850 80041340 240600FF */  addiu      $a2, $zero, 0xff
/* EA854 80041344 0C028E41 */  jal        func_800A3904
/* EA858 80041348 240700E0 */   addiu     $a3, $zero, 0xe0
/* EA85C 8004134C 8E43000C */  lw         $v1, 0xc($s2)
/* EA860 80041350 24040011 */  addiu      $a0, $zero, 0x11
/* EA864 80041354 9462001E */  lhu        $v0, 0x1e($v1)
/* EA868 80041358 24050001 */  addiu      $a1, $zero, 1
/* EA86C 8004135C 240630C9 */  addiu      $a2, $zero, 0x30c9
/* EA870 80041360 34420006 */  ori        $v0, $v0, 6
/* EA874 80041364 0C00D925 */  jal        func_80036494_DF9A4
/* EA878 80041368 A462001E */   sh        $v0, 0x1e($v1)
/* EA87C 8004136C 00409021 */  addu       $s2, $v0, $zero
/* EA880 80041370 8E44000C */  lw         $a0, 0xc($s2)
/* EA884 80041374 24050033 */  addiu      $a1, $zero, 0x33
/* EA888 80041378 0C028F9A */  jal        func_800A3E68
/* EA88C 8004137C 24060400 */   addiu     $a2, $zero, 0x400
/* EA890 80041380 24100001 */  addiu      $s0, $zero, 1
/* EA894 80041384 AFB00010 */  sw         $s0, 0x10($sp)
/* EA898 80041388 8E44000C */  lw         $a0, 0xc($s2)
/* EA89C 8004138C 240500FF */  addiu      $a1, $zero, 0xff
/* EA8A0 80041390 240600FF */  addiu      $a2, $zero, 0xff
/* EA8A4 80041394 0C028E41 */  jal        func_800A3904
/* EA8A8 80041398 240700FF */   addiu     $a3, $zero, 0xff
/* EA8AC 8004139C 24040011 */  addiu      $a0, $zero, 0x11
/* EA8B0 800413A0 8E42000C */  lw         $v0, 0xc($s2)
/* EA8B4 800413A4 24050001 */  addiu      $a1, $zero, 1
/* EA8B8 800413A8 240630CA */  addiu      $a2, $zero, 0x30ca
/* EA8BC 800413AC 0C00D925 */  jal        func_80036494_DF9A4
/* EA8C0 800413B0 A440001C */   sh        $zero, 0x1c($v0)
/* EA8C4 800413B4 00409021 */  addu       $s2, $v0, $zero
/* EA8C8 800413B8 8E44000C */  lw         $a0, 0xc($s2)
/* EA8CC 800413BC 24050033 */  addiu      $a1, $zero, 0x33
/* EA8D0 800413C0 0C028F9A */  jal        func_800A3E68
/* EA8D4 800413C4 24060400 */   addiu     $a2, $zero, 0x400
/* EA8D8 800413C8 AFB00010 */  sw         $s0, 0x10($sp)
/* EA8DC 800413CC 8E44000C */  lw         $a0, 0xc($s2)
/* EA8E0 800413D0 240500FF */  addiu      $a1, $zero, 0xff
/* EA8E4 800413D4 240600FF */  addiu      $a2, $zero, 0xff
/* EA8E8 800413D8 0C028E41 */  jal        func_800A3904
/* EA8EC 800413DC 240700FF */   addiu     $a3, $zero, 0xff
/* EA8F0 800413E0 2404000F */  addiu      $a0, $zero, 0xf
/* EA8F4 800413E4 8E42000C */  lw         $v0, 0xc($s2)
/* EA8F8 800413E8 24050001 */  addiu      $a1, $zero, 1
/* EA8FC 800413EC 2406001D */  addiu      $a2, $zero, 0x1d
/* EA900 800413F0 0C00D925 */  jal        func_80036494_DF9A4
/* EA904 800413F4 A440001C */   sh        $zero, 0x1c($v0)
/* EA908 800413F8 00409021 */  addu       $s2, $v0, $zero
/* EA90C 800413FC 8E44000C */  lw         $a0, 0xc($s2)
/* EA910 80041400 24050038 */  addiu      $a1, $zero, 0x38
/* EA914 80041404 0C028F9A */  jal        func_800A3E68
/* EA918 80041408 24060049 */   addiu     $a2, $zero, 0x49
/* EA91C 8004140C 8E43000C */  lw         $v1, 0xc($s2)
/* EA920 80041410 9462001E */  lhu        $v0, 0x1e($v1)
/* EA924 80041414 34420002 */  ori        $v0, $v0, 2
/* EA928 80041418 A462001E */  sh         $v0, 0x1e($v1)
/* EA92C 8004141C 8E44000C */  lw         $a0, 0xc($s2)
/* EA930 80041420 24050040 */  addiu      $a1, $zero, 0x40
/* EA934 80041424 0C028D89 */  jal        func_800A3624
/* EA938 80041428 24060040 */   addiu     $a2, $zero, 0x40
/* EA93C 8004142C 2404001D */  addiu      $a0, $zero, 0x1d
/* EA940 80041430 0C00DD19 */  jal        func_80037464_E0974
/* EA944 80041434 2405001E */   addiu     $a1, $zero, 0x1e
/* EA948 80041438 00409021 */  addu       $s2, $v0, $zero
/* EA94C 8004143C 8E44000C */  lw         $a0, 0xc($s2)
/* EA950 80041440 24050038 */  addiu      $a1, $zero, 0x38
/* EA954 80041444 0C028F9A */  jal        func_800A3E68
/* EA958 80041448 24060071 */   addiu     $a2, $zero, 0x71
/* EA95C 8004144C 8E43000C */  lw         $v1, 0xc($s2)
/* EA960 80041450 9462001E */  lhu        $v0, 0x1e($v1)
/* EA964 80041454 2404001D */  addiu      $a0, $zero, 0x1d
/* EA968 80041458 2405001F */  addiu      $a1, $zero, 0x1f
/* EA96C 8004145C 34420004 */  ori        $v0, $v0, 4
/* EA970 80041460 0C00DD19 */  jal        func_80037464_E0974
/* EA974 80041464 A462001E */   sh        $v0, 0x1e($v1)
/* EA978 80041468 00409021 */  addu       $s2, $v0, $zero
/* EA97C 8004146C 8E44000C */  lw         $a0, 0xc($s2)
/* EA980 80041470 24050038 */  addiu      $a1, $zero, 0x38
/* EA984 80041474 0C028F9A */  jal        func_800A3E68
/* EA988 80041478 24060071 */   addiu     $a2, $zero, 0x71
/* EA98C 8004147C 8E43000C */  lw         $v1, 0xc($s2)
/* EA990 80041480 9462001E */  lhu        $v0, 0x1e($v1)
/* EA994 80041484 3C048007 */  lui        $a0, %hi(D_8006C580)
/* EA998 80041488 9084C580 */  lbu        $a0, %lo(D_8006C580)($a0)
/* EA99C 8004148C 34420004 */  ori        $v0, $v0, 4
/* EA9A0 80041490 10900006 */  beq        $a0, $s0, .L800414AC
/* EA9A4 80041494 A462001E */   sh        $v0, 0x1e($v1)
/* EA9A8 80041498 24020002 */  addiu      $v0, $zero, 2
/* EA9AC 8004149C 10820036 */  beq        $a0, $v0, .L80041578
/* EA9B0 800414A0 2404049A */   addiu     $a0, $zero, 0x49a
/* EA9B4 800414A4 080105B3 */  j          .L800416CC
/* EA9B8 800414A8 00000000 */   nop
.L800414AC:
/* EA9BC 800414AC 2404049A */  addiu      $a0, $zero, 0x49a
/* EA9C0 800414B0 24050002 */  addiu      $a1, $zero, 2
/* EA9C4 800414B4 0C00D925 */  jal        func_80036494_DF9A4
/* EA9C8 800414B8 240620C9 */   addiu     $a2, $zero, 0x20c9
/* EA9CC 800414BC 00409021 */  addu       $s2, $v0, $zero
/* EA9D0 800414C0 8E44000C */  lw         $a0, 0xc($s2)
/* EA9D4 800414C4 8C82000C */  lw         $v0, 0xc($a0)
/* EA9D8 800414C8 94460002 */  lhu        $a2, 2($v0)
/* EA9DC 800414CC 00002821 */  addu       $a1, $zero, $zero
/* EA9E0 800414D0 0C02912A */  jal        func_800A44A8
/* EA9E4 800414D4 00063042 */   srl       $a2, $a2, 1
/* EA9E8 800414D8 8E42000C */  lw         $v0, 0xc($s2)
/* EA9EC 800414DC 2410004C */  addiu      $s0, $zero, 0x4c
/* EA9F0 800414E0 A450001C */  sh         $s0, 0x1c($v0)
/* EA9F4 800414E4 8E43000C */  lw         $v1, 0xc($s2)
/* EA9F8 800414E8 240404AB */  addiu      $a0, $zero, 0x4ab
/* EA9FC 800414EC 9462001E */  lhu        $v0, 0x1e($v1)
/* EAA00 800414F0 24050002 */  addiu      $a1, $zero, 2
/* EAA04 800414F4 240620CA */  addiu      $a2, $zero, 0x20ca
/* EAA08 800414F8 34420004 */  ori        $v0, $v0, 4
/* EAA0C 800414FC 0C00D925 */  jal        func_80036494_DF9A4
/* EAA10 80041500 A462001E */   sh        $v0, 0x1e($v1)
/* EAA14 80041504 00409021 */  addu       $s2, $v0, $zero
/* EAA18 80041508 8E44000C */  lw         $a0, 0xc($s2)
/* EAA1C 8004150C 8C82000C */  lw         $v0, 0xc($a0)
/* EAA20 80041510 94460002 */  lhu        $a2, 2($v0)
/* EAA24 80041514 00002821 */  addu       $a1, $zero, $zero
/* EAA28 80041518 0C02912A */  jal        func_800A44A8
/* EAA2C 8004151C 00063042 */   srl       $a2, $a2, 1
/* EAA30 80041520 8E42000C */  lw         $v0, 0xc($s2)
/* EAA34 80041524 A450001C */  sh         $s0, 0x1c($v0)
/* EAA38 80041528 8E43000C */  lw         $v1, 0xc($s2)
/* EAA3C 8004152C 2404049B */  addiu      $a0, $zero, 0x49b
/* EAA40 80041530 9462001E */  lhu        $v0, 0x1e($v1)
/* EAA44 80041534 24050002 */  addiu      $a1, $zero, 2
/* EAA48 80041538 240620CB */  addiu      $a2, $zero, 0x20cb
/* EAA4C 8004153C 34420004 */  ori        $v0, $v0, 4
/* EAA50 80041540 0C00D925 */  jal        func_80036494_DF9A4
/* EAA54 80041544 A462001E */   sh        $v0, 0x1e($v1)
/* EAA58 80041548 00409021 */  addu       $s2, $v0, $zero
/* EAA5C 8004154C 8E44000C */  lw         $a0, 0xc($s2)
/* EAA60 80041550 8C82000C */  lw         $v0, 0xc($a0)
/* EAA64 80041554 94460002 */  lhu        $a2, 2($v0)
/* EAA68 80041558 00002821 */  addu       $a1, $zero, $zero
/* EAA6C 8004155C 0C02912A */  jal        func_800A44A8
/* EAA70 80041560 00063042 */   srl       $a2, $a2, 1
/* EAA74 80041564 8E42000C */  lw         $v0, 0xc($s2)
/* EAA78 80041568 A450001C */  sh         $s0, 0x1c($v0)
/* EAA7C 8004156C 8E43000C */  lw         $v1, 0xc($s2)
/* EAA80 80041570 0801058F */  j          .L8004163C
/* EAA84 80041574 2404049D */   addiu     $a0, $zero, 0x49d
.L80041578:
/* EAA88 80041578 24050002 */  addiu      $a1, $zero, 2
/* EAA8C 8004157C 0C00D925 */  jal        func_80036494_DF9A4
/* EAA90 80041580 240620C9 */   addiu     $a2, $zero, 0x20c9
/* EAA94 80041584 00409021 */  addu       $s2, $v0, $zero
/* EAA98 80041588 8E44000C */  lw         $a0, 0xc($s2)
/* EAA9C 8004158C 8C82000C */  lw         $v0, 0xc($a0)
/* EAAA0 80041590 94460002 */  lhu        $a2, 2($v0)
/* EAAA4 80041594 00002821 */  addu       $a1, $zero, $zero
/* EAAA8 80041598 0C02912A */  jal        func_800A44A8
/* EAAAC 8004159C 00063042 */   srl       $a2, $a2, 1
/* EAAB0 800415A0 8E42000C */  lw         $v0, 0xc($s2)
/* EAAB4 800415A4 2410004C */  addiu      $s0, $zero, 0x4c
/* EAAB8 800415A8 A450001C */  sh         $s0, 0x1c($v0)
/* EAABC 800415AC 8E43000C */  lw         $v1, 0xc($s2)
/* EAAC0 800415B0 240404AC */  addiu      $a0, $zero, 0x4ac
/* EAAC4 800415B4 9462001E */  lhu        $v0, 0x1e($v1)
/* EAAC8 800415B8 24050002 */  addiu      $a1, $zero, 2
/* EAACC 800415BC 240620CA */  addiu      $a2, $zero, 0x20ca
/* EAAD0 800415C0 34420004 */  ori        $v0, $v0, 4
/* EAAD4 800415C4 0C00D925 */  jal        func_80036494_DF9A4
/* EAAD8 800415C8 A462001E */   sh        $v0, 0x1e($v1)
/* EAADC 800415CC 00409021 */  addu       $s2, $v0, $zero
/* EAAE0 800415D0 8E44000C */  lw         $a0, 0xc($s2)
/* EAAE4 800415D4 8C82000C */  lw         $v0, 0xc($a0)
/* EAAE8 800415D8 94460002 */  lhu        $a2, 2($v0)
/* EAAEC 800415DC 00002821 */  addu       $a1, $zero, $zero
/* EAAF0 800415E0 0C02912A */  jal        func_800A44A8
/* EAAF4 800415E4 00063042 */   srl       $a2, $a2, 1
/* EAAF8 800415E8 8E42000C */  lw         $v0, 0xc($s2)
/* EAAFC 800415EC A450001C */  sh         $s0, 0x1c($v0)
/* EAB00 800415F0 8E43000C */  lw         $v1, 0xc($s2)
/* EAB04 800415F4 2404049B */  addiu      $a0, $zero, 0x49b
/* EAB08 800415F8 9462001E */  lhu        $v0, 0x1e($v1)
/* EAB0C 800415FC 24050002 */  addiu      $a1, $zero, 2
/* EAB10 80041600 240620CB */  addiu      $a2, $zero, 0x20cb
/* EAB14 80041604 34420004 */  ori        $v0, $v0, 4
/* EAB18 80041608 0C00D925 */  jal        func_80036494_DF9A4
/* EAB1C 8004160C A462001E */   sh        $v0, 0x1e($v1)
/* EAB20 80041610 00409021 */  addu       $s2, $v0, $zero
/* EAB24 80041614 8E44000C */  lw         $a0, 0xc($s2)
/* EAB28 80041618 8C82000C */  lw         $v0, 0xc($a0)
/* EAB2C 8004161C 94460002 */  lhu        $a2, 2($v0)
/* EAB30 80041620 00002821 */  addu       $a1, $zero, $zero
/* EAB34 80041624 0C02912A */  jal        func_800A44A8
/* EAB38 80041628 00063042 */   srl       $a2, $a2, 1
/* EAB3C 8004162C 8E42000C */  lw         $v0, 0xc($s2)
/* EAB40 80041630 A450001C */  sh         $s0, 0x1c($v0)
/* EAB44 80041634 8E43000C */  lw         $v1, 0xc($s2)
/* EAB48 80041638 2404049E */  addiu      $a0, $zero, 0x49e
.L8004163C:
/* EAB4C 8004163C 9462001E */  lhu        $v0, 0x1e($v1)
/* EAB50 80041640 24050002 */  addiu      $a1, $zero, 2
/* EAB54 80041644 240620CC */  addiu      $a2, $zero, 0x20cc
/* EAB58 80041648 34420004 */  ori        $v0, $v0, 4
/* EAB5C 8004164C 0C00D925 */  jal        func_80036494_DF9A4
/* EAB60 80041650 A462001E */   sh        $v0, 0x1e($v1)
/* EAB64 80041654 00409021 */  addu       $s2, $v0, $zero
/* EAB68 80041658 8E44000C */  lw         $a0, 0xc($s2)
/* EAB6C 8004165C 8C82000C */  lw         $v0, 0xc($a0)
/* EAB70 80041660 94460002 */  lhu        $a2, 2($v0)
/* EAB74 80041664 00002821 */  addu       $a1, $zero, $zero
/* EAB78 80041668 0C02912A */  jal        func_800A44A8
/* EAB7C 8004166C 00063042 */   srl       $a2, $a2, 1
/* EAB80 80041670 8E42000C */  lw         $v0, 0xc($s2)
/* EAB84 80041674 A450001C */  sh         $s0, 0x1c($v0)
/* EAB88 80041678 8E43000C */  lw         $v1, 0xc($s2)
/* EAB8C 8004167C 24040499 */  addiu      $a0, $zero, 0x499
/* EAB90 80041680 9462001E */  lhu        $v0, 0x1e($v1)
/* EAB94 80041684 24050002 */  addiu      $a1, $zero, 2
/* EAB98 80041688 240620CD */  addiu      $a2, $zero, 0x20cd
/* EAB9C 8004168C 34420004 */  ori        $v0, $v0, 4
/* EABA0 80041690 0C00D925 */  jal        func_80036494_DF9A4
/* EABA4 80041694 A462001E */   sh        $v0, 0x1e($v1)
/* EABA8 80041698 00409021 */  addu       $s2, $v0, $zero
/* EABAC 8004169C 8E44000C */  lw         $a0, 0xc($s2)
/* EABB0 800416A0 8C82000C */  lw         $v0, 0xc($a0)
/* EABB4 800416A4 94450000 */  lhu        $a1, ($v0)
/* EABB8 800416A8 00003021 */  addu       $a2, $zero, $zero
/* EABBC 800416AC 0C02912A */  jal        func_800A44A8
/* EABC0 800416B0 00052842 */   srl       $a1, $a1, 1
/* EABC4 800416B4 8E42000C */  lw         $v0, 0xc($s2)
/* EABC8 800416B8 A450001C */  sh         $s0, 0x1c($v0)
/* EABCC 800416BC 8E43000C */  lw         $v1, 0xc($s2)
/* EABD0 800416C0 9462001E */  lhu        $v0, 0x1e($v1)
/* EABD4 800416C4 34420004 */  ori        $v0, $v0, 4
/* EABD8 800416C8 A462001E */  sh         $v0, 0x1e($v1)
.L800416CC:
/* EABDC 800416CC 8FBF006C */  lw         $ra, 0x6c($sp)
/* EABE0 800416D0 8FB20068 */  lw         $s2, 0x68($sp)
/* EABE4 800416D4 8FB10064 */  lw         $s1, 0x64($sp)
/* EABE8 800416D8 8FB00060 */  lw         $s0, 0x60($sp)
/* EABEC 800416DC 03E00008 */  jr         $ra
/* EABF0 800416E0 27BD0070 */   addiu     $sp, $sp, 0x70
/* EABF4 800416E4 00000000 */  nop
/* EABF8 800416E8 00000000 */  nop
/* EABFC 800416EC 00000000 */  nop
