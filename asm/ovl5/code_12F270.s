.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003D470_12F270
/* 12F270 8003D470 3C028005 */  lui        $v0, %hi(D_80051ED6)
/* 12F274 8003D474 90421ED6 */  lbu        $v0, %lo(D_80051ED6)($v0)
/* 12F278 8003D478 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 12F27C 8003D47C AFB20030 */  sw         $s2, 0x30($sp)
/* 12F280 8003D480 AFBF0034 */  sw         $ra, 0x34($sp)
/* 12F284 8003D484 AFB1002C */  sw         $s1, 0x2c($sp)
/* 12F288 8003D488 AFB00028 */  sw         $s0, 0x28($sp)
/* 12F28C 8003D48C F7B60040 */  sdc1       $f22, 0x40($sp)
/* 12F290 8003D490 F7B40038 */  sdc1       $f20, 0x38($sp)
/* 12F294 8003D494 104000D9 */  beqz       $v0, .L8003D7FC
/* 12F298 8003D498 00809021 */   addu      $s2, $a0, $zero
/* 12F29C 8003D49C 0C02A5D2 */  jal        func_800A9748
/* 12F2A0 8003D4A0 24040001 */   addiu     $a0, $zero, 1
/* 12F2A4 8003D4A4 0C02725C */  jal        func_8009C970
/* 12F2A8 8003D4A8 00000000 */   nop
/* 12F2AC 8003D4AC 3C014040 */  lui        $at, 0x4040
/* 12F2B0 8003D4B0 44810000 */  mtc1       $at, $f0
/* 12F2B4 8003D4B4 3C014220 */  lui        $at, 0x4220
/* 12F2B8 8003D4B8 44811000 */  mtc1       $at, $f2
/* 12F2BC 8003D4BC 3C01C2D4 */  lui        $at, 0xc2d4
/* 12F2C0 8003D4C0 44812000 */  mtc1       $at, $f4
/* 12F2C4 8003D4C4 3C01428E */  lui        $at, 0x428e
/* 12F2C8 8003D4C8 44813000 */  mtc1       $at, $f6
/* 12F2CC 8003D4CC 24040053 */  addiu      $a0, $zero, 0x53
/* 12F2D0 8003D4D0 24050048 */  addiu      $a1, $zero, 0x48
/* 12F2D4 8003D4D4 240200E6 */  addiu      $v0, $zero, 0xe6
/* 12F2D8 8003D4D8 AFA20010 */  sw         $v0, 0x10($sp)
/* 12F2DC 8003D4DC 240200DC */  addiu      $v0, $zero, 0xdc
/* 12F2E0 8003D4E0 24060053 */  addiu      $a2, $zero, 0x53
/* 12F2E4 8003D4E4 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12F2E8 8003D4E8 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* 12F2EC 8003D4EC AFA20014 */  sw         $v0, 0x14($sp)
/* 12F2F0 8003D4F0 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12F2F4 8003D4F4 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12F2F8 8003D4F8 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12F2FC 8003D4FC E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 12F300 8003D500 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12F304 8003D504 E424A088 */  swc1       $f4, %lo(D_8014A088)($at)
/* 12F308 8003D508 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12F30C 8003D50C E426A080 */  swc1       $f6, %lo(D_8014A080)($at)
/* 12F310 8003D510 0C027101 */  jal        func_8009C404
/* 12F314 8003D514 240700FF */   addiu     $a3, $zero, 0xff
/* 12F318 8003D518 3C014170 */  lui        $at, 0x4170
/* 12F31C 8003D51C 44810000 */  mtc1       $at, $f0
/* 12F320 8003D520 3C014180 */  lui        $at, 0x4180
/* 12F324 8003D524 44811000 */  mtc1       $at, $f2
/* 12F328 8003D528 3C01C1C0 */  lui        $at, 0xc1c0
/* 12F32C 8003D52C 44812000 */  mtc1       $at, $f4
/* 12F330 8003D530 3C014130 */  lui        $at, 0x4130
/* 12F334 8003D534 44813000 */  mtc1       $at, $f6
/* 12F338 8003D538 3C0140A0 */  lui        $at, 0x40a0
/* 12F33C 8003D53C 44814000 */  mtc1       $at, $f8
/* 12F340 8003D540 3C01C190 */  lui        $at, 0xc190
/* 12F344 8003D544 44815000 */  mtc1       $at, $f10
/* 12F348 8003D548 3C018017 */  lui        $at, %hi(D_8016E568)
/* 12F34C 8003D54C E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 12F350 8003D550 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 12F354 8003D554 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 12F358 8003D558 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 12F35C 8003D55C E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 12F360 8003D560 3C018015 */  lui        $at, %hi(D_8014A054)
/* 12F364 8003D564 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 12F368 8003D568 3C018015 */  lui        $at, %hi(D_8014A050)
/* 12F36C 8003D56C E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 12F370 8003D570 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 12F374 8003D574 0C00F6CD */  jal        func_8003DB34_12F934
/* 12F378 8003D578 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 12F37C 8003D57C 3C018006 */  lui        $at, %hi(D_8005DE50)
/* 12F380 8003D580 0C00ACDB */  jal        func_8002B36C_11D16C
/* 12F384 8003D584 AC22DE50 */   sw        $v0, %lo(D_8005DE50)($at)
/* 12F388 8003D588 3C038006 */  lui        $v1, %hi(D_8005DE50)
/* 12F38C 8003D58C 8C63DE50 */  lw         $v1, %lo(D_8005DE50)($v1)
/* 12F390 8003D590 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12F394 8003D594 3C018006 */  lui        $at, %hi(D_8005DE54)
/* 12F398 8003D598 AC20DE54 */  sw         $zero, %lo(D_8005DE54)($at)
/* 12F39C 8003D59C AC620018 */  sw         $v0, 0x18($v1)
.L8003D5A0:
/* 12F3A0 8003D5A0 3C038006 */  lui        $v1, %hi(D_8005DE54)
/* 12F3A4 8003D5A4 8C63DE54 */  lw         $v1, %lo(D_8005DE54)($v1)
/* 12F3A8 8003D5A8 00031040 */  sll        $v0, $v1, 1
/* 12F3AC 8003D5AC 00431021 */  addu       $v0, $v0, $v1
/* 12F3B0 8003D5B0 00021080 */  sll        $v0, $v0, 2
/* 12F3B4 8003D5B4 24630001 */  addiu      $v1, $v1, 1
/* 12F3B8 8003D5B8 3C018006 */  lui        $at, %hi(D_8005DE54)
/* 12F3BC 8003D5BC AC23DE54 */  sw         $v1, %lo(D_8005DE54)($at)
/* 12F3C0 8003D5C0 28630008 */  slti       $v1, $v1, 8
/* 12F3C4 8003D5C4 3C018006 */  lui        $at, %hi(D_8005E1E8)
/* 12F3C8 8003D5C8 00220821 */  addu       $at, $at, $v0
/* 12F3CC 8003D5CC A420E1E8 */  sh         $zero, %lo(D_8005E1E8)($at)
/* 12F3D0 8003D5D0 3C018006 */  lui        $at, %hi(D_8005E1EA)
/* 12F3D4 8003D5D4 00220821 */  addu       $at, $at, $v0
/* 12F3D8 8003D5D8 A420E1EA */  sh         $zero, %lo(D_8005E1EA)($at)
/* 12F3DC 8003D5DC 3C018006 */  lui        $at, %hi(D_8005E1EC)
/* 12F3E0 8003D5E0 00220821 */  addu       $at, $at, $v0
/* 12F3E4 8003D5E4 A420E1EC */  sh         $zero, %lo(D_8005E1EC)($at)
/* 12F3E8 8003D5E8 1460FFED */  bnez       $v1, .L8003D5A0
/* 12F3EC 8003D5EC 24020020 */   addiu     $v0, $zero, 0x20
/* 12F3F0 8003D5F0 3C018006 */  lui        $at, %hi(D_8005E1E8)
/* 12F3F4 8003D5F4 A422E1E8 */  sh         $v0, %lo(D_8005E1E8)($at)
/* 12F3F8 8003D5F8 24020008 */  addiu      $v0, $zero, 8
/* 12F3FC 8003D5FC 3C018006 */  lui        $at, %hi(D_8005E1EA)
/* 12F400 8003D600 A422E1EA */  sh         $v0, %lo(D_8005E1EA)($at)
/* 12F404 8003D604 24020028 */  addiu      $v0, $zero, 0x28
/* 12F408 8003D608 3C018006 */  lui        $at, %hi(D_8005E1F4)
/* 12F40C 8003D60C A422E1F4 */  sh         $v0, %lo(D_8005E1F4)($at)
/* 12F410 8003D610 24020038 */  addiu      $v0, $zero, 0x38
/* 12F414 8003D614 3C018006 */  lui        $at, %hi(D_8005E1F6)
/* 12F418 8003D618 A422E1F6 */  sh         $v0, %lo(D_8005E1F6)($at)
/* 12F41C 8003D61C 0C02591A */  jal        func_80096468
/* 12F420 8003D620 24040040 */   addiu     $a0, $zero, 0x40
/* 12F424 8003D624 3C038006 */  lui        $v1, %hi(D_8005E1F4)
/* 12F428 8003D628 8463E1F4 */  lh         $v1, %lo(D_8005E1F4)($v1)
/* 12F42C 8003D62C 3C058006 */  lui        $a1, %hi(D_8005E1F6)
/* 12F430 8003D630 84A5E1F6 */  lh         $a1, %lo(D_8005E1F6)($a1)
/* 12F434 8003D634 24040020 */  addiu      $a0, $zero, 0x20
/* 12F438 8003D638 3C068006 */  lui        $a2, %hi(D_8005DE50)
/* 12F43C 8003D63C 8CC6DE50 */  lw         $a2, %lo(D_8005DE50)($a2)
/* 12F440 8003D640 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12F444 8003D644 00651821 */  addu       $v1, $v1, $a1
/* 12F448 8003D648 00621821 */  addu       $v1, $v1, $v0
/* 12F44C 8003D64C 24630040 */  addiu      $v1, $v1, 0x40
/* 12F450 8003D650 44830000 */  mtc1       $v1, $f0
/* 12F454 8003D654 00000000 */  nop
/* 12F458 8003D658 46800020 */  cvt.s.w    $f0, $f0
/* 12F45C 8003D65C 0C02591A */  jal        func_80096468
/* 12F460 8003D660 E4C00064 */   swc1      $f0, 0x64($a2)
/* 12F464 8003D664 24040040 */  addiu      $a0, $zero, 0x40
/* 12F468 8003D668 3C038006 */  lui        $v1, %hi(D_8005DE50)
/* 12F46C 8003D66C 8C63DE50 */  lw         $v1, %lo(D_8005DE50)($v1)
/* 12F470 8003D670 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12F474 8003D674 24420020 */  addiu      $v0, $v0, 0x20
/* 12F478 8003D678 44820000 */  mtc1       $v0, $f0
/* 12F47C 8003D67C 00000000 */  nop
/* 12F480 8003D680 46800020 */  cvt.s.w    $f0, $f0
/* 12F484 8003D684 0C02591A */  jal        func_80096468
/* 12F488 8003D688 E4600084 */   swc1      $f0, 0x84($v1)
/* 12F48C 8003D68C 3C038006 */  lui        $v1, %hi(D_8005DE50)
/* 12F490 8003D690 8C63DE50 */  lw         $v1, %lo(D_8005DE50)($v1)
/* 12F494 8003D694 C4600064 */  lwc1       $f0, 0x64($v1)
/* 12F498 8003D698 C4620084 */  lwc1       $f2, 0x84($v1)
/* 12F49C 8003D69C 46020000 */  add.s      $f0, $f0, $f2
/* 12F4A0 8003D6A0 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12F4A4 8003D6A4 44821000 */  mtc1       $v0, $f2
/* 12F4A8 8003D6A8 00000000 */  nop
/* 12F4AC 8003D6AC 468010A0 */  cvt.s.w    $f2, $f2
/* 12F4B0 8003D6B0 46020000 */  add.s      $f0, $f0, $f2
/* 12F4B4 8003D6B4 3C014280 */  lui        $at, 0x4280
/* 12F4B8 8003D6B8 4481A000 */  mtc1       $at, $f20
/* 12F4BC 8003D6BC 00000000 */  nop
/* 12F4C0 8003D6C0 46140000 */  add.s      $f0, $f0, $f20
/* 12F4C4 8003D6C4 24040020 */  addiu      $a0, $zero, 0x20
/* 12F4C8 8003D6C8 0C02591A */  jal        func_80096468
/* 12F4CC 8003D6CC E4600068 */   swc1      $f0, 0x68($v1)
/* 12F4D0 8003D6D0 24040040 */  addiu      $a0, $zero, 0x40
/* 12F4D4 8003D6D4 3C038006 */  lui        $v1, %hi(D_8005DE50)
/* 12F4D8 8003D6D8 8C63DE50 */  lw         $v1, %lo(D_8005DE50)($v1)
/* 12F4DC 8003D6DC 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12F4E0 8003D6E0 24420020 */  addiu      $v0, $v0, 0x20
/* 12F4E4 8003D6E4 44820000 */  mtc1       $v0, $f0
/* 12F4E8 8003D6E8 00000000 */  nop
/* 12F4EC 8003D6EC 46800020 */  cvt.s.w    $f0, $f0
/* 12F4F0 8003D6F0 0C02591A */  jal        func_80096468
/* 12F4F4 8003D6F4 E4600088 */   swc1      $f0, 0x88($v1)
/* 12F4F8 8003D6F8 3C038006 */  lui        $v1, %hi(D_8005DE50)
/* 12F4FC 8003D6FC 8C63DE50 */  lw         $v1, %lo(D_8005DE50)($v1)
/* 12F500 8003D700 C4600068 */  lwc1       $f0, 0x68($v1)
/* 12F504 8003D704 C4620088 */  lwc1       $f2, 0x88($v1)
/* 12F508 8003D708 46020000 */  add.s      $f0, $f0, $f2
/* 12F50C 8003D70C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12F510 8003D710 44821000 */  mtc1       $v0, $f2
/* 12F514 8003D714 00000000 */  nop
/* 12F518 8003D718 468010A0 */  cvt.s.w    $f2, $f2
/* 12F51C 8003D71C 46020000 */  add.s      $f0, $f0, $f2
/* 12F520 8003D720 46140000 */  add.s      $f0, $f0, $f20
/* 12F524 8003D724 3C018006 */  lui        $at, %hi(D_8005C560)
/* 12F528 8003D728 D434C560 */  ldc1       $f20, %lo(D_8005C560)($at)
/* 12F52C 8003D72C 24040020 */  addiu      $a0, $zero, 0x20
/* 12F530 8003D730 0C02591A */  jal        func_80096468
/* 12F534 8003D734 E460006C */   swc1      $f0, 0x6c($v1)
/* 12F538 8003D738 24030002 */  addiu      $v1, $zero, 2
/* 12F53C 8003D73C 3C018006 */  lui        $at, %hi(D_8005DE54)
/* 12F540 8003D740 AC23DE54 */  sw         $v1, %lo(D_8005DE54)($at)
/* 12F544 8003D744 3C038006 */  lui        $v1, %hi(D_8005DE50)
/* 12F548 8003D748 8C63DE50 */  lw         $v1, %lo(D_8005DE50)($v1)
/* 12F54C 8003D74C 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12F550 8003D750 24420020 */  addiu      $v0, $v0, 0x20
/* 12F554 8003D754 44820000 */  mtc1       $v0, $f0
/* 12F558 8003D758 00000000 */  nop
/* 12F55C 8003D75C 46800020 */  cvt.s.w    $f0, $f0
/* 12F560 8003D760 E460008C */  swc1       $f0, 0x8c($v1)
.L8003D764:
/* 12F564 8003D764 3C028006 */  lui        $v0, %hi(D_8005DE54)
/* 12F568 8003D768 8C42DE54 */  lw         $v0, %lo(D_8005DE54)($v0)
/* 12F56C 8003D76C 3C038006 */  lui        $v1, %hi(D_8005DE50)
/* 12F570 8003D770 8C63DE50 */  lw         $v1, %lo(D_8005DE50)($v1)
/* 12F574 8003D774 2404000A */  addiu      $a0, $zero, 0xa
/* 12F578 8003D778 00021080 */  sll        $v0, $v0, 2
/* 12F57C 8003D77C 00431021 */  addu       $v0, $v0, $v1
/* 12F580 8003D780 0C02591A */  jal        func_80096468
/* 12F584 8003D784 AC40001C */   sw        $zero, 0x1c($v0)
/* 12F588 8003D788 3042FFFF */  andi       $v0, $v0, 0xffff
/* 12F58C 8003D78C 2442000A */  addiu      $v0, $v0, 0xa
/* 12F590 8003D790 44820000 */  mtc1       $v0, $f0
/* 12F594 8003D794 00000000 */  nop
/* 12F598 8003D798 46800021 */  cvt.d.w    $f0, $f0
/* 12F59C 8003D79C 4620A003 */  div.d      $f0, $f20, $f0
/* 12F5A0 8003D7A0 3C028006 */  lui        $v0, %hi(D_8005DE54)
/* 12F5A4 8003D7A4 8C42DE54 */  lw         $v0, %lo(D_8005DE54)($v0)
/* 12F5A8 8003D7A8 3C048006 */  lui        $a0, %hi(D_8005DE50)
/* 12F5AC 8003D7AC 8C84DE50 */  lw         $a0, %lo(D_8005DE50)($a0)
/* 12F5B0 8003D7B0 24430001 */  addiu      $v1, $v0, 1
/* 12F5B4 8003D7B4 00021080 */  sll        $v0, $v0, 2
/* 12F5B8 8003D7B8 00441021 */  addu       $v0, $v0, $a0
/* 12F5BC 8003D7BC 3C018006 */  lui        $at, %hi(D_8005DE54)
/* 12F5C0 8003D7C0 AC23DE54 */  sw         $v1, %lo(D_8005DE54)($at)
/* 12F5C4 8003D7C4 28630005 */  slti       $v1, $v1, 5
/* 12F5C8 8003D7C8 46200020 */  cvt.s.d    $f0, $f0
/* 12F5CC 8003D7CC 1460FFE5 */  bnez       $v1, .L8003D764
/* 12F5D0 8003D7D0 E440003C */   swc1      $f0, 0x3c($v0)
/* 12F5D4 8003D7D4 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12F5D8 8003D7D8 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12F5DC 8003D7DC 0C00A157 */  jal        func_8002855C_11A35C
/* 12F5E0 8003D7E0 24050007 */   addiu     $a1, $zero, 7
/* 12F5E4 8003D7E4 3C014200 */  lui        $at, 0x4200
/* 12F5E8 8003D7E8 44810000 */  mtc1       $at, $f0
/* 12F5EC 8003D7EC 3C018005 */  lui        $at, %hi(D_80051ED6)
/* 12F5F0 8003D7F0 A0201ED6 */  sb         $zero, %lo(D_80051ED6)($at)
/* 12F5F4 8003D7F4 3C018008 */  lui        $at, %hi(D_80080758)
/* 12F5F8 8003D7F8 E4200758 */  swc1       $f0, %lo(D_80080758)($at)
.L8003D7FC:
/* 12F5FC 8003D7FC 3C048006 */  lui        $a0, %hi(D_8005E142)
/* 12F600 8003D800 8484E142 */  lh         $a0, %lo(D_8005E142)($a0)
/* 12F604 8003D804 28820010 */  slti       $v0, $a0, 0x10
/* 12F608 8003D808 10400003 */  beqz       $v0, .L8003D818
/* 12F60C 8003D80C 24020001 */   addiu     $v0, $zero, 1
/* 12F610 8003D810 3C018005 */  lui        $at, %hi(D_80051ED8)
/* 12F614 8003D814 AC221ED8 */  sw         $v0, %lo(D_80051ED8)($at)
.L8003D818:
/* 12F618 8003D818 3C028006 */  lui        $v0, %hi(D_8005E1F4)
/* 12F61C 8003D81C 8442E1F4 */  lh         $v0, %lo(D_8005E1F4)($v0)
/* 12F620 8003D820 3C038006 */  lui        $v1, %hi(D_8005E1F6)
/* 12F624 8003D824 8463E1F6 */  lh         $v1, %lo(D_8005E1F6)($v1)
/* 12F628 8003D828 00431021 */  addu       $v0, $v0, $v1
/* 12F62C 8003D82C 0082102A */  slt        $v0, $a0, $v0
/* 12F630 8003D830 10400008 */  beqz       $v0, .L8003D854
/* 12F634 8003D834 00000000 */   nop
/* 12F638 8003D838 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 12F63C 8003D83C 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 12F640 8003D840 30428000 */  andi       $v0, $v0, 0x8000
/* 12F644 8003D844 10400003 */  beqz       $v0, .L8003D854
/* 12F648 8003D848 24020001 */   addiu     $v0, $zero, 1
/* 12F64C 8003D84C 3C018005 */  lui        $at, %hi(D_80051ED8)
/* 12F650 8003D850 AC221ED8 */  sw         $v0, %lo(D_80051ED8)($at)
.L8003D854:
/* 12F654 8003D854 3C014200 */  lui        $at, 0x4200
/* 12F658 8003D858 4481A000 */  mtc1       $at, $f20
/* 12F65C 8003D85C 3C014000 */  lui        $at, 0x4000
/* 12F660 8003D860 4481B000 */  mtc1       $at, $f22
/* 12F664 8003D864 24020002 */  addiu      $v0, $zero, 2
/* 12F668 8003D868 3C018006 */  lui        $at, %hi(D_8005DE54)
/* 12F66C 8003D86C AC22DE54 */  sw         $v0, %lo(D_8005DE54)($at)
.L8003D870:
/* 12F670 8003D870 3C028006 */  lui        $v0, %hi(D_8005DE54)
/* 12F674 8003D874 8C42DE54 */  lw         $v0, %lo(D_8005DE54)($v0)
/* 12F678 8003D878 3C038006 */  lui        $v1, %hi(D_8005DE50)
/* 12F67C 8003D87C 8C63DE50 */  lw         $v1, %lo(D_8005DE50)($v1)
/* 12F680 8003D880 00028080 */  sll        $s0, $v0, 2
/* 12F684 8003D884 02038021 */  addu       $s0, $s0, $v1
/* 12F688 8003D888 C60C001C */  lwc1       $f12, 0x1c($s0)
/* 12F68C 8003D88C 00028840 */  sll        $s1, $v0, 1
/* 12F690 8003D890 02228821 */  addu       $s1, $s1, $v0
/* 12F694 8003D894 0C02FF68 */  jal        func_800BFDA0
/* 12F698 8003D898 00118880 */   sll       $s1, $s1, 2
/* 12F69C 8003D89C 00000000 */  nop
/* 12F6A0 8003D8A0 46140002 */  mul.s      $f0, $f0, $f20
/* 12F6A4 8003D8A4 46160003 */  div.s      $f0, $f0, $f22
/* 12F6A8 8003D8A8 C602005C */  lwc1       $f2, 0x5c($s0)
/* 12F6AC 8003D8AC 3C038006 */  lui        $v1, %hi(D_8005DE54)
/* 12F6B0 8003D8B0 8C63DE54 */  lw         $v1, %lo(D_8005DE54)($v1)
/* 12F6B4 8003D8B4 3C048006 */  lui        $a0, %hi(D_8005DE50)
/* 12F6B8 8003D8B8 8C84DE50 */  lw         $a0, %lo(D_8005DE50)($a0)
/* 12F6BC 8003D8BC 46001081 */  sub.s      $f2, $f2, $f0
/* 12F6C0 8003D8C0 00038080 */  sll        $s0, $v1, 2
/* 12F6C4 8003D8C4 02048021 */  addu       $s0, $s0, $a0
/* 12F6C8 8003D8C8 4600100D */  trunc.w.s  $f0, $f2
/* 12F6CC 8003D8CC 44020000 */  mfc1       $v0, $f0
/* 12F6D0 8003D8D0 3C018006 */  lui        $at, %hi(D_8005E1E8)
/* 12F6D4 8003D8D4 00310821 */  addu       $at, $at, $s1
/* 12F6D8 8003D8D8 A422E1E8 */  sh         $v0, %lo(D_8005E1E8)($at)
/* 12F6DC 8003D8DC C60C001C */  lwc1       $f12, 0x1c($s0)
/* 12F6E0 8003D8E0 00038840 */  sll        $s1, $v1, 1
/* 12F6E4 8003D8E4 02238821 */  addu       $s1, $s1, $v1
/* 12F6E8 8003D8E8 0C02FF68 */  jal        func_800BFDA0
/* 12F6EC 8003D8EC 00118880 */   sll       $s1, $s1, 2
/* 12F6F0 8003D8F0 00000000 */  nop
/* 12F6F4 8003D8F4 46140002 */  mul.s      $f0, $f0, $f20
/* 12F6F8 8003D8F8 C602007C */  lwc1       $f2, 0x7c($s0)
/* 12F6FC 8003D8FC 46001080 */  add.s      $f2, $f2, $f0
/* 12F700 8003D900 3C048006 */  lui        $a0, %hi(D_8005DE50)
/* 12F704 8003D904 8C84DE50 */  lw         $a0, %lo(D_8005DE50)($a0)
/* 12F708 8003D908 3C038006 */  lui        $v1, %hi(D_8005DE54)
/* 12F70C 8003D90C 8C63DE54 */  lw         $v1, %lo(D_8005DE54)($v1)
/* 12F710 8003D910 4600100D */  trunc.w.s  $f0, $f2
/* 12F714 8003D914 44020000 */  mfc1       $v0, $f0
/* 12F718 8003D918 3C018006 */  lui        $at, %hi(D_8005E1EA)
/* 12F71C 8003D91C 00310821 */  addu       $at, $at, $s1
/* 12F720 8003D920 A422E1EA */  sh         $v0, %lo(D_8005E1EA)($at)
/* 12F724 8003D924 00031080 */  sll        $v0, $v1, 2
/* 12F728 8003D928 00441021 */  addu       $v0, $v0, $a0
/* 12F72C 8003D92C C442001C */  lwc1       $f2, 0x1c($v0)
/* 12F730 8003D930 C440003C */  lwc1       $f0, 0x3c($v0)
/* 12F734 8003D934 46001080 */  add.s      $f2, $f2, $f0
/* 12F738 8003D938 24630001 */  addiu      $v1, $v1, 1
/* 12F73C 8003D93C 3C018006 */  lui        $at, %hi(D_8005DE54)
/* 12F740 8003D940 AC23DE54 */  sw         $v1, %lo(D_8005DE54)($at)
/* 12F744 8003D944 28630005 */  slti       $v1, $v1, 5
/* 12F748 8003D948 1460FFC9 */  bnez       $v1, .L8003D870
/* 12F74C 8003D94C E442001C */   swc1      $f2, 0x1c($v0)
/* 12F750 8003D950 3C028005 */  lui        $v0, %hi(D_80051ED8)
/* 12F754 8003D954 8C421ED8 */  lw         $v0, %lo(D_80051ED8)($v0)
/* 12F758 8003D958 1440004F */  bnez       $v0, .L8003DA98
/* 12F75C 8003D95C 00000000 */   nop
/* 12F760 8003D960 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 12F764 8003D964 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 12F768 8003D968 30428000 */  andi       $v0, $v0, 0x8000
/* 12F76C 8003D96C 1040004A */  beqz       $v0, .L8003DA98
/* 12F770 8003D970 00000000 */   nop
/* 12F774 8003D974 0C00F268 */  jal        func_8003C9A0_12E7A0
/* 12F778 8003D978 00000000 */   nop
/* 12F77C 8003D97C 3C018006 */  lui        $at, %hi(D_8005DE54)
/* 12F780 8003D980 1840002D */  blez       $v0, .L8003DA38
/* 12F784 8003D984 AC22DE54 */   sw        $v0, %lo(D_8005DE54)($at)
/* 12F788 8003D988 3C038006 */  lui        $v1, %hi(D_8005E1EA)
/* 12F78C 8003D98C 2463E1EA */  addiu      $v1, $v1, %lo(D_8005E1EA)
/* 12F790 8003D990 84620000 */  lh         $v0, ($v1)
/* 12F794 8003D994 00402021 */  addu       $a0, $v0, $zero
/* 12F798 8003D998 28420040 */  slti       $v0, $v0, 0x40
/* 12F79C 8003D99C 1040003E */  beqz       $v0, .L8003DA98
/* 12F7A0 8003D9A0 00000000 */   nop
/* 12F7A4 8003D9A4 3C028006 */  lui        $v0, %hi(D_8005DE50)
/* 12F7A8 8003D9A8 8C42DE50 */  lw         $v0, %lo(D_8005DE50)($v0)
/* 12F7AC 8003D9AC 8C420018 */  lw         $v0, 0x18($v0)
/* 12F7B0 8003D9B0 00021040 */  sll        $v0, $v0, 1
/* 12F7B4 8003D9B4 3C018005 */  lui        $at, %hi(D_80051ED0)
/* 12F7B8 8003D9B8 00220821 */  addu       $at, $at, $v0
/* 12F7BC 8003D9BC 94221ED0 */  lhu        $v0, %lo(D_80051ED0)($at)
/* 12F7C0 8003D9C0 00821021 */  addu       $v0, $a0, $v0
/* 12F7C4 8003D9C4 A4620000 */  sh         $v0, ($v1)
/* 12F7C8 8003D9C8 00021400 */  sll        $v0, $v0, 0x10
/* 12F7CC 8003D9CC 00021403 */  sra        $v0, $v0, 0x10
/* 12F7D0 8003D9D0 28420040 */  slti       $v0, $v0, 0x40
/* 12F7D4 8003D9D4 14400002 */  bnez       $v0, .L8003D9E0
/* 12F7D8 8003D9D8 24020040 */   addiu     $v0, $zero, 0x40
/* 12F7DC 8003D9DC A4620000 */  sh         $v0, ($v1)
.L8003D9E0:
/* 12F7E0 8003D9E0 3C028006 */  lui        $v0, %hi(D_8005E1E8)
/* 12F7E4 8003D9E4 9442E1E8 */  lhu        $v0, %lo(D_8005E1E8)($v0)
/* 12F7E8 8003D9E8 94630000 */  lhu        $v1, ($v1)
/* 12F7EC 8003D9EC 00431021 */  addu       $v0, $v0, $v1
/* 12F7F0 8003D9F0 3C018006 */  lui        $at, %hi(D_8005E1F4)
/* 12F7F4 8003D9F4 A422E1F4 */  sh         $v0, %lo(D_8005E1F4)($at)
/* 12F7F8 8003D9F8 24020040 */  addiu      $v0, $zero, 0x40
/* 12F7FC 8003D9FC 00431023 */  subu       $v0, $v0, $v1
/* 12F800 8003DA00 3C018006 */  lui        $at, %hi(D_8005E1F6)
/* 12F804 8003DA04 A422E1F6 */  sh         $v0, %lo(D_8005E1F6)($at)
/* 12F808 8003DA08 0C026DD5 */  jal        func_8009B754
/* 12F80C 8003DA0C 2404001D */   addiu     $a0, $zero, 0x1d
/* 12F810 8003DA10 3C038006 */  lui        $v1, %hi(D_8005DE54)
/* 12F814 8003DA14 8C63DE54 */  lw         $v1, %lo(D_8005DE54)($v1)
/* 12F818 8003DA18 00031040 */  sll        $v0, $v1, 1
/* 12F81C 8003DA1C 00431021 */  addu       $v0, $v0, $v1
/* 12F820 8003DA20 00021080 */  sll        $v0, $v0, 2
/* 12F824 8003DA24 24030001 */  addiu      $v1, $zero, 1
/* 12F828 8003DA28 3C018006 */  lui        $at, %hi(D_8005E1EC)
/* 12F82C 8003DA2C 00220821 */  addu       $at, $at, $v0
/* 12F830 8003DA30 0800F6A6 */  j          .L8003DA98
/* 12F834 8003DA34 A423E1EC */   sh        $v1, %lo(D_8005E1EC)($at)
.L8003DA38:
/* 12F838 8003DA38 3C038006 */  lui        $v1, %hi(D_8005E1EA)
/* 12F83C 8003DA3C 2463E1EA */  addiu      $v1, $v1, %lo(D_8005E1EA)
/* 12F840 8003DA40 84620000 */  lh         $v0, ($v1)
/* 12F844 8003DA44 00402021 */  addu       $a0, $v0, $zero
/* 12F848 8003DA48 28420009 */  slti       $v0, $v0, 9
/* 12F84C 8003DA4C 14400012 */  bnez       $v0, .L8003DA98
/* 12F850 8003DA50 2482FFF8 */   addiu     $v0, $a0, -8
/* 12F854 8003DA54 A4620000 */  sh         $v0, ($v1)
/* 12F858 8003DA58 00021400 */  sll        $v0, $v0, 0x10
/* 12F85C 8003DA5C 00021403 */  sra        $v0, $v0, 0x10
/* 12F860 8003DA60 28420008 */  slti       $v0, $v0, 8
/* 12F864 8003DA64 10400002 */  beqz       $v0, .L8003DA70
/* 12F868 8003DA68 24020008 */   addiu     $v0, $zero, 8
/* 12F86C 8003DA6C A4620000 */  sh         $v0, ($v1)
.L8003DA70:
/* 12F870 8003DA70 3C028006 */  lui        $v0, %hi(D_8005E1E8)
/* 12F874 8003DA74 9442E1E8 */  lhu        $v0, %lo(D_8005E1E8)($v0)
/* 12F878 8003DA78 94630000 */  lhu        $v1, ($v1)
/* 12F87C 8003DA7C 00431021 */  addu       $v0, $v0, $v1
/* 12F880 8003DA80 3C018006 */  lui        $at, %hi(D_8005E1F4)
/* 12F884 8003DA84 A422E1F4 */  sh         $v0, %lo(D_8005E1F4)($at)
/* 12F888 8003DA88 24020040 */  addiu      $v0, $zero, 0x40
/* 12F88C 8003DA8C 00431023 */  subu       $v0, $v0, $v1
/* 12F890 8003DA90 3C018006 */  lui        $at, %hi(D_8005E1F6)
/* 12F894 8003DA94 A422E1F6 */  sh         $v0, %lo(D_8005E1F6)($at)
.L8003DA98:
/* 12F898 8003DA98 16400003 */  bnez       $s2, .L8003DAA8
/* 12F89C 8003DA9C 24020001 */   addiu     $v0, $zero, 1
/* 12F8A0 8003DAA0 3C018005 */  lui        $at, %hi(D_80051ED8)
/* 12F8A4 8003DAA4 AC221ED8 */  sw         $v0, %lo(D_80051ED8)($at)
.L8003DAA8:
/* 12F8A8 8003DAA8 3C028005 */  lui        $v0, %hi(D_80051ED8)
/* 12F8AC 8003DAAC 8C421ED8 */  lw         $v0, %lo(D_80051ED8)($v0)
/* 12F8B0 8003DAB0 1440000C */  bnez       $v0, .L8003DAE4
/* 12F8B4 8003DAB4 00000000 */   nop
/* 12F8B8 8003DAB8 3C048006 */  lui        $a0, %hi(D_8005DE50)
/* 12F8BC 8003DABC 0C00F75C */  jal        func_8003DD70_12FB70
/* 12F8C0 8003DAC0 8C84DE50 */   lw        $a0, %lo(D_8005DE50)($a0)
/* 12F8C4 8003DAC4 3C018005 */  lui        $at, %hi(D_80051ED8)
/* 12F8C8 8003DAC8 0C009767 */  jal        func_80025D9C_117B9C
/* 12F8CC 8003DACC AC221ED8 */   sw        $v0, %lo(D_80051ED8)($at)
/* 12F8D0 8003DAD0 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12F8D4 8003DAD4 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 12F8D8 8003DAD8 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12F8DC 8003DADC 0800F6C5 */  j          .L8003DB14
/* 12F8E0 8003DAE0 00001021 */   addu      $v0, $zero, $zero
.L8003DAE4:
/* 12F8E4 8003DAE4 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12F8E8 8003DAE8 0C00A16B */  jal        func_800285AC_11A3AC
/* 12F8EC 8003DAEC 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 12F8F0 8003DAF0 3C048006 */  lui        $a0, %hi(D_8005DE50)
/* 12F8F4 8003DAF4 0C00F7FF */  jal        func_8003DFFC_12FDFC
/* 12F8F8 8003DAF8 2484DE50 */   addiu     $a0, $a0, %lo(D_8005DE50)
/* 12F8FC 8003DAFC 24020001 */  addiu      $v0, $zero, 1
/* 12F900 8003DB00 24030001 */  addiu      $v1, $zero, 1
/* 12F904 8003DB04 3C018005 */  lui        $at, %hi(D_80051ED8)
/* 12F908 8003DB08 AC201ED8 */  sw         $zero, %lo(D_80051ED8)($at)
/* 12F90C 8003DB0C 3C018005 */  lui        $at, %hi(D_80051ED6)
/* 12F910 8003DB10 A0231ED6 */  sb         $v1, %lo(D_80051ED6)($at)
.L8003DB14:
/* 12F914 8003DB14 8FBF0034 */  lw         $ra, 0x34($sp)
/* 12F918 8003DB18 8FB20030 */  lw         $s2, 0x30($sp)
/* 12F91C 8003DB1C 8FB1002C */  lw         $s1, 0x2c($sp)
/* 12F920 8003DB20 8FB00028 */  lw         $s0, 0x28($sp)
/* 12F924 8003DB24 D7B60040 */  ldc1       $f22, 0x40($sp)
/* 12F928 8003DB28 D7B40038 */  ldc1       $f20, 0x38($sp)
/* 12F92C 8003DB2C 03E00008 */  jr         $ra
/* 12F930 8003DB30 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8003DB34_12F934
/* 12F934 8003DB34 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12F938 8003DB38 AFBF0024 */  sw         $ra, 0x24($sp)
/* 12F93C 8003DB3C AFB40020 */  sw         $s4, 0x20($sp)
/* 12F940 8003DB40 AFB3001C */  sw         $s3, 0x1c($sp)
/* 12F944 8003DB44 AFB20018 */  sw         $s2, 0x18($sp)
/* 12F948 8003DB48 AFB10014 */  sw         $s1, 0x14($sp)
/* 12F94C 8003DB4C AFB00010 */  sw         $s0, 0x10($sp)
/* 12F950 8003DB50 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 12F954 8003DB54 F7B40028 */  sdc1       $f20, 0x28($sp)
/* 12F958 8003DB58 0C032663 */  jal        func_800C998C
/* 12F95C 8003DB5C 240400CC */   addiu     $a0, $zero, 0xcc
/* 12F960 8003DB60 00408021 */  addu       $s0, $v0, $zero
/* 12F964 8003DB64 02002021 */  addu       $a0, $s0, $zero
/* 12F968 8003DB68 0C030134 */  jal        bzero
/* 12F96C 8003DB6C 240500CC */   addiu     $a1, $zero, 0xcc
/* 12F970 8003DB70 24020300 */  addiu      $v0, $zero, 0x300
/* 12F974 8003DB74 3C018006 */  lui        $at, %hi(D_8005E142)
/* 12F978 8003DB78 A422E142 */  sh         $v0, %lo(D_8005E142)($at)
/* 12F97C 8003DB7C 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12F980 8003DB80 00008821 */   addu      $s1, $zero, $zero
/* 12F984 8003DB84 00402821 */  addu       $a1, $v0, $zero
/* 12F988 8003DB88 24140019 */  addiu      $s4, $zero, 0x19
/* 12F98C 8003DB8C 3C013D75 */  lui        $at, 0x3d75
/* 12F990 8003DB90 3421C28F */  ori        $at, $at, 0xc28f
/* 12F994 8003DB94 4481B000 */  mtc1       $at, $f22
/* 12F998 8003DB98 3C01C2B4 */  lui        $at, 0xc2b4
/* 12F99C 8003DB9C 44810000 */  mtc1       $at, $f0
/* 12F9A0 8003DBA0 241300D3 */  addiu      $s3, $zero, 0xd3
/* 12F9A4 8003DBA4 24120020 */  addiu      $s2, $zero, 0x20
/* 12F9A8 8003DBA8 24020007 */  addiu      $v0, $zero, 7
/* 12F9AC 8003DBAC AE050000 */  sw         $a1, ($s0)
/* 12F9B0 8003DBB0 ACA2001C */  sw         $v0, 0x1c($a1)
/* 12F9B4 8003DBB4 2402008D */  addiu      $v0, $zero, 0x8d
/* 12F9B8 8003DBB8 ACA20004 */  sw         $v0, 4($a1)
/* 12F9BC 8003DBBC 24020070 */  addiu      $v0, $zero, 0x70
/* 12F9C0 8003DBC0 ACA20008 */  sw         $v0, 8($a1)
/* 12F9C4 8003DBC4 24020001 */  addiu      $v0, $zero, 1
/* 12F9C8 8003DBC8 ACA00044 */  sw         $zero, 0x44($a1)
/* 12F9CC 8003DBCC ACA2000C */  sw         $v0, 0xc($a1)
/* 12F9D0 8003DBD0 46000506 */  mov.s      $f20, $f0
/* 12F9D4 8003DBD4 E4B40054 */  swc1       $f20, 0x54($a1)
.L8003DBD8:
/* 12F9D8 8003DBD8 0C00AEC4 */  jal        func_8002BB10_11D910
/* 12F9DC 8003DBDC 00000000 */   nop
/* 12F9E0 8003DBE0 00402821 */  addu       $a1, $v0, $zero
/* 12F9E4 8003DBE4 00111400 */  sll        $v0, $s1, 0x10
/* 12F9E8 8003DBE8 26240001 */  addiu      $a0, $s1, 1
/* 12F9EC 8003DBEC 00808821 */  addu       $s1, $a0, $zero
/* 12F9F0 8003DBF0 3C038006 */  lui        $v1, %hi(D_8005E142)
/* 12F9F4 8003DBF4 8463E142 */  lh         $v1, %lo(D_8005E142)($v1)
/* 12F9F8 8003DBF8 00021383 */  sra        $v0, $v0, 0xe
/* 12F9FC 8003DBFC 00501021 */  addu       $v0, $v0, $s0
/* 12FA00 8003DC00 00042400 */  sll        $a0, $a0, 0x10
/* 12FA04 8003DC04 AC45000C */  sw         $a1, 0xc($v0)
/* 12FA08 8003DC08 ACB4001C */  sw         $s4, 0x1c($a1)
/* 12FA0C 8003DC0C ACB30004 */  sw         $s3, 4($a1)
/* 12FA10 8003DC10 E4B6005C */  swc1       $f22, 0x5c($a1)
/* 12FA14 8003DC14 E4B40054 */  swc1       $f20, 0x54($a1)
/* 12FA18 8003DC18 ACA0004C */  sw         $zero, 0x4c($a1)
/* 12FA1C 8003DC1C ACB20020 */  sw         $s2, 0x20($a1)
/* 12FA20 8003DC20 246300C0 */  addiu      $v1, $v1, 0xc0
/* 12FA24 8003DC24 44830000 */  mtc1       $v1, $f0
/* 12FA28 8003DC28 00000000 */  nop
/* 12FA2C 8003DC2C 46800020 */  cvt.s.w    $f0, $f0
/* 12FA30 8003DC30 1880FFE9 */  blez       $a0, .L8003DBD8
/* 12FA34 8003DC34 E4A00044 */   swc1      $f0, 0x44($a1)
/* 12FA38 8003DC38 3C014040 */  lui        $at, 0x4040
/* 12FA3C 8003DC3C 44810000 */  mtc1       $at, $f0
/* 12FA40 8003DC40 3C014220 */  lui        $at, 0x4220
/* 12FA44 8003DC44 44811000 */  mtc1       $at, $f2
/* 12FA48 8003DC48 3C01428E */  lui        $at, 0x428e
/* 12FA4C 8003DC4C 44812000 */  mtc1       $at, $f4
/* 12FA50 8003DC50 3C01C2D4 */  lui        $at, 0xc2d4
/* 12FA54 8003DC54 44813000 */  mtc1       $at, $f6
/* 12FA58 8003DC58 3C0142A0 */  lui        $at, 0x42a0
/* 12FA5C 8003DC5C 4481A000 */  mtc1       $at, $f20
/* 12FA60 8003DC60 AE0000A8 */  sw         $zero, 0xa8($s0)
/* 12FA64 8003DC64 E60000B8 */  swc1       $f0, 0xb8($s0)
/* 12FA68 8003DC68 E60200C0 */  swc1       $f2, 0xc0($s0)
/* 12FA6C 8003DC6C E60400A0 */  swc1       $f4, 0xa0($s0)
/* 12FA70 8003DC70 E60600B0 */  swc1       $f6, 0xb0($s0)
/* 12FA74 8003DC74 3C018015 */  lui        $at, %hi(D_8014A080)
/* 12FA78 8003DC78 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 12FA7C 8003DC7C C60E00A0 */  lwc1       $f14, 0xa0($s0)
/* 12FA80 8003DC80 4406A000 */  mfc1       $a2, $f20
/* 12FA84 8003DC84 0C00AC58 */  jal        func_8002B160_11CF60
/* 12FA88 8003DC88 00000000 */   nop
/* 12FA8C 8003DC8C E600009C */  swc1       $f0, 0x9c($s0)
/* 12FA90 8003DC90 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12FA94 8003DC94 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 12FA98 8003DC98 C60E00A8 */  lwc1       $f14, 0xa8($s0)
/* 12FA9C 8003DC9C 4406A000 */  mfc1       $a2, $f20
/* 12FAA0 8003DCA0 0C00AC58 */  jal        func_8002B160_11CF60
/* 12FAA4 8003DCA4 00000000 */   nop
/* 12FAA8 8003DCA8 E60000A4 */  swc1       $f0, 0xa4($s0)
/* 12FAAC 8003DCAC 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12FAB0 8003DCB0 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 12FAB4 8003DCB4 C60200B8 */  lwc1       $f2, 0xb8($s0)
/* 12FAB8 8003DCB8 46020001 */  sub.s      $f0, $f0, $f2
/* 12FABC 8003DCBC 3C018006 */  lui        $at, %hi(D_8005C568)
/* 12FAC0 8003DCC0 D424C568 */  ldc1       $f4, %lo(D_8005C568)($at)
/* 12FAC4 8003DCC4 46000021 */  cvt.d.s    $f0, $f0
/* 12FAC8 8003DCC8 46200005 */  abs.d      $f0, $f0
/* 12FACC 8003DCCC 46240003 */  div.d      $f0, $f0, $f4
/* 12FAD0 8003DCD0 C60200C0 */  lwc1       $f2, 0xc0($s0)
/* 12FAD4 8003DCD4 46200020 */  cvt.s.d    $f0, $f0
/* 12FAD8 8003DCD8 E60000B4 */  swc1       $f0, 0xb4($s0)
/* 12FADC 8003DCDC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12FAE0 8003DCE0 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 12FAE4 8003DCE4 46020001 */  sub.s      $f0, $f0, $f2
/* 12FAE8 8003DCE8 46000021 */  cvt.d.s    $f0, $f0
/* 12FAEC 8003DCEC 46200005 */  abs.d      $f0, $f0
/* 12FAF0 8003DCF0 46240003 */  div.d      $f0, $f0, $f4
/* 12FAF4 8003DCF4 C60200C8 */  lwc1       $f2, 0xc8($s0)
/* 12FAF8 8003DCF8 46200020 */  cvt.s.d    $f0, $f0
/* 12FAFC 8003DCFC E60000BC */  swc1       $f0, 0xbc($s0)
/* 12FB00 8003DD00 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12FB04 8003DD04 C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 12FB08 8003DD08 46020001 */  sub.s      $f0, $f0, $f2
/* 12FB0C 8003DD0C 46000021 */  cvt.d.s    $f0, $f0
/* 12FB10 8003DD10 46200005 */  abs.d      $f0, $f0
/* 12FB14 8003DD14 46240003 */  div.d      $f0, $f0, $f4
/* 12FB18 8003DD18 C60200B0 */  lwc1       $f2, 0xb0($s0)
/* 12FB1C 8003DD1C 46200020 */  cvt.s.d    $f0, $f0
/* 12FB20 8003DD20 E60000C4 */  swc1       $f0, 0xc4($s0)
/* 12FB24 8003DD24 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12FB28 8003DD28 C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* 12FB2C 8003DD2C 46020001 */  sub.s      $f0, $f0, $f2
/* 12FB30 8003DD30 46000021 */  cvt.d.s    $f0, $f0
/* 12FB34 8003DD34 46200005 */  abs.d      $f0, $f0
/* 12FB38 8003DD38 46240003 */  div.d      $f0, $f0, $f4
/* 12FB3C 8003DD3C 02001021 */  addu       $v0, $s0, $zero
/* 12FB40 8003DD40 46200020 */  cvt.s.d    $f0, $f0
/* 12FB44 8003DD44 E44000AC */  swc1       $f0, 0xac($v0)
/* 12FB48 8003DD48 8FBF0024 */  lw         $ra, 0x24($sp)
/* 12FB4C 8003DD4C 8FB40020 */  lw         $s4, 0x20($sp)
/* 12FB50 8003DD50 8FB3001C */  lw         $s3, 0x1c($sp)
/* 12FB54 8003DD54 8FB20018 */  lw         $s2, 0x18($sp)
/* 12FB58 8003DD58 8FB10014 */  lw         $s1, 0x14($sp)
/* 12FB5C 8003DD5C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12FB60 8003DD60 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 12FB64 8003DD64 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 12FB68 8003DD68 03E00008 */  jr         $ra
/* 12FB6C 8003DD6C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003DD70_12FB70
/* 12FB70 8003DD70 3C05C100 */  lui        $a1, 0xc100
/* 12FB74 8003DD74 44800000 */  mtc1       $zero, $f0
/* 12FB78 8003DD78 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 12FB7C 8003DD7C AFB10014 */  sw         $s1, 0x14($sp)
/* 12FB80 8003DD80 00808821 */  addu       $s1, $a0, $zero
/* 12FB84 8003DD84 44060000 */  mfc1       $a2, $f0
/* 12FB88 8003DD88 3C048008 */  lui        $a0, %hi(D_80080750)
/* 12FB8C 8003DD8C 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 12FB90 8003DD90 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12FB94 8003DD94 AFB00010 */  sw         $s0, 0x10($sp)
/* 12FB98 8003DD98 F7B80030 */  sdc1       $f24, 0x30($sp)
/* 12FB9C 8003DD9C F7B60028 */  sdc1       $f22, 0x28($sp)
/* 12FBA0 8003DDA0 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 12FBA4 8003DDA4 0C00A18C */  jal        func_80028630_11A430
/* 12FBA8 8003DDA8 00C03821 */   addu      $a3, $a2, $zero
/* 12FBAC 8003DDAC 3C028006 */  lui        $v0, %hi(D_8005E142)
/* 12FBB0 8003DDB0 8442E142 */  lh         $v0, %lo(D_8005E142)($v0)
/* 12FBB4 8003DDB4 3C014100 */  lui        $at, 0x4100
/* 12FBB8 8003DDB8 44811000 */  mtc1       $at, $f2
/* 12FBBC 8003DDBC 44820000 */  mtc1       $v0, $f0
/* 12FBC0 8003DDC0 00000000 */  nop
/* 12FBC4 8003DDC4 46800020 */  cvt.s.w    $f0, $f0
/* 12FBC8 8003DDC8 46020001 */  sub.s      $f0, $f0, $f2
/* 12FBCC 8003DDCC 00008021 */  addu       $s0, $zero, $zero
/* 12FBD0 8003DDD0 4600008D */  trunc.w.s  $f2, $f0
/* 12FBD4 8003DDD4 44031000 */  mfc1       $v1, $f2
/* 12FBD8 8003DDD8 00000000 */  nop
/* 12FBDC 8003DDDC 00031400 */  sll        $v0, $v1, 0x10
/* 12FBE0 8003DDE0 00021403 */  sra        $v0, $v0, 0x10
/* 12FBE4 8003DDE4 244200C0 */  addiu      $v0, $v0, 0xc0
/* 12FBE8 8003DDE8 44820000 */  mtc1       $v0, $f0
/* 12FBEC 8003DDEC 00000000 */  nop
/* 12FBF0 8003DDF0 46800020 */  cvt.s.w    $f0, $f0
/* 12FBF4 8003DDF4 3C018006 */  lui        $at, %hi(D_8005E142)
/* 12FBF8 8003DDF8 A423E142 */  sh         $v1, %lo(D_8005E142)($at)
.L8003DDFC:
/* 12FBFC 8003DDFC 00101400 */  sll        $v0, $s0, 0x10
/* 12FC00 8003DE00 00021383 */  sra        $v0, $v0, 0xe
/* 12FC04 8003DE04 00511021 */  addu       $v0, $v0, $s1
/* 12FC08 8003DE08 8C43000C */  lw         $v1, 0xc($v0)
/* 12FC0C 8003DE0C 26020001 */  addiu      $v0, $s0, 1
/* 12FC10 8003DE10 00408021 */  addu       $s0, $v0, $zero
/* 12FC14 8003DE14 00021400 */  sll        $v0, $v0, 0x10
/* 12FC18 8003DE18 1840FFF8 */  blez       $v0, .L8003DDFC
/* 12FC1C 8003DE1C E4600044 */   swc1      $f0, 0x44($v1)
/* 12FC20 8003DE20 3C108015 */  lui        $s0, %hi(D_8014A080)
/* 12FC24 8003DE24 2610A080 */  addiu      $s0, $s0, %lo(D_8014A080)
/* 12FC28 8003DE28 C6140000 */  lwc1       $f20, ($s0)
/* 12FC2C 8003DE2C C62E00A0 */  lwc1       $f14, 0xa0($s1)
/* 12FC30 8003DE30 8E26009C */  lw         $a2, 0x9c($s1)
/* 12FC34 8003DE34 0C00AC89 */  jal        func_8002B224_11D024
/* 12FC38 8003DE38 4600A306 */   mov.s     $f12, $f20
/* 12FC3C 8003DE3C 46140501 */  sub.s      $f20, $f0, $f20
/* 12FC40 8003DE40 4480C000 */  mtc1       $zero, $f24
/* 12FC44 8003DE44 00000000 */  nop
/* 12FC48 8003DE48 4618A03C */  c.lt.s     $f20, $f24
/* 12FC4C 8003DE4C 00000000 */  nop
/* 12FC50 8003DE50 00000000 */  nop
/* 12FC54 8003DE54 45000005 */  bc1f       .L8003DE6C
/* 12FC58 8003DE58 E6000000 */   swc1      $f0, ($s0)
/* 12FC5C 8003DE5C 3C0143B4 */  lui        $at, 0x43b4
/* 12FC60 8003DE60 44810000 */  mtc1       $at, $f0
/* 12FC64 8003DE64 00000000 */  nop
/* 12FC68 8003DE68 4600A500 */  add.s      $f20, $f20, $f0
.L8003DE6C:
/* 12FC6C 8003DE6C 3C014334 */  lui        $at, 0x4334
/* 12FC70 8003DE70 4481B000 */  mtc1       $at, $f22
/* 12FC74 8003DE74 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12FC78 8003DE78 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 12FC7C 8003DE7C C62E00A8 */  lwc1       $f14, 0xa8($s1)
/* 12FC80 8003DE80 0C00AC89 */  jal        func_8002B224_11D024
/* 12FC84 8003DE84 8E2600A4 */   lw        $a2, 0xa4($s1)
/* 12FC88 8003DE88 46000086 */  mov.s      $f2, $f0
/* 12FC8C 8003DE8C 4602B03E */  c.le.s     $f22, $f2
/* 12FC90 8003DE90 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12FC94 8003DE94 E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 12FC98 8003DE98 45000007 */  bc1f       .L8003DEB8
/* 12FC9C 8003DE9C 00000000 */   nop
/* 12FCA0 8003DEA0 3C0143B4 */  lui        $at, 0x43b4
/* 12FCA4 8003DEA4 44810000 */  mtc1       $at, $f0
/* 12FCA8 8003DEA8 00000000 */  nop
/* 12FCAC 8003DEAC 46001001 */  sub.s      $f0, $f2, $f0
/* 12FCB0 8003DEB0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 12FCB4 8003DEB4 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
.L8003DEB8:
/* 12FCB8 8003DEB8 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12FCBC 8003DEBC C42CA064 */  lwc1       $f12, %lo(D_8014A064)($at)
/* 12FCC0 8003DEC0 C62E00B8 */  lwc1       $f14, 0xb8($s1)
/* 12FCC4 8003DEC4 0C00BC51 */  jal        func_8002F144_120F44
/* 12FCC8 8003DEC8 8E2600B4 */   lw        $a2, 0xb4($s1)
/* 12FCCC 8003DECC 3C018015 */  lui        $at, %hi(D_8014A064)
/* 12FCD0 8003DED0 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 12FCD4 8003DED4 C62200B8 */  lwc1       $f2, 0xb8($s1)
/* 12FCD8 8003DED8 46020032 */  c.eq.s     $f0, $f2
/* 12FCDC 8003DEDC 00000000 */  nop
/* 12FCE0 8003DEE0 00000000 */  nop
/* 12FCE4 8003DEE4 45030001 */  bc1tl      .L8003DEEC
/* 12FCE8 8003DEE8 E63800B4 */   swc1      $f24, 0xb4($s1)
.L8003DEEC:
/* 12FCEC 8003DEEC 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12FCF0 8003DEF0 C42CA068 */  lwc1       $f12, %lo(D_8014A068)($at)
/* 12FCF4 8003DEF4 C62E00C0 */  lwc1       $f14, 0xc0($s1)
/* 12FCF8 8003DEF8 0C00BC51 */  jal        func_8002F144_120F44
/* 12FCFC 8003DEFC 8E2600BC */   lw        $a2, 0xbc($s1)
/* 12FD00 8003DF00 3C018015 */  lui        $at, %hi(D_8014A068)
/* 12FD04 8003DF04 E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 12FD08 8003DF08 C62200C0 */  lwc1       $f2, 0xc0($s1)
/* 12FD0C 8003DF0C 46020032 */  c.eq.s     $f0, $f2
/* 12FD10 8003DF10 00000000 */  nop
/* 12FD14 8003DF14 00000000 */  nop
/* 12FD18 8003DF18 45030001 */  bc1tl      .L8003DF20
/* 12FD1C 8003DF1C E63800BC */   swc1      $f24, 0xbc($s1)
.L8003DF20:
/* 12FD20 8003DF20 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12FD24 8003DF24 C42CA06C */  lwc1       $f12, %lo(D_8014A06C)($at)
/* 12FD28 8003DF28 C62E00C8 */  lwc1       $f14, 0xc8($s1)
/* 12FD2C 8003DF2C 0C00BC51 */  jal        func_8002F144_120F44
/* 12FD30 8003DF30 8E2600C4 */   lw        $a2, 0xc4($s1)
/* 12FD34 8003DF34 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 12FD38 8003DF38 E420A06C */  swc1       $f0, %lo(D_8014A06C)($at)
/* 12FD3C 8003DF3C C62200C8 */  lwc1       $f2, 0xc8($s1)
/* 12FD40 8003DF40 46020032 */  c.eq.s     $f0, $f2
/* 12FD44 8003DF44 00000000 */  nop
/* 12FD48 8003DF48 00000000 */  nop
/* 12FD4C 8003DF4C 45030001 */  bc1tl      .L8003DF54
/* 12FD50 8003DF50 E63800C4 */   swc1      $f24, 0xc4($s1)
.L8003DF54:
/* 12FD54 8003DF54 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12FD58 8003DF58 C42CA088 */  lwc1       $f12, %lo(D_8014A088)($at)
/* 12FD5C 8003DF5C C62E00B0 */  lwc1       $f14, 0xb0($s1)
/* 12FD60 8003DF60 8E2600AC */  lw         $a2, 0xac($s1)
/* 12FD64 8003DF64 0C00BC51 */  jal        func_8002F144_120F44
/* 12FD68 8003DF68 00008021 */   addu      $s0, $zero, $zero
/* 12FD6C 8003DF6C 3C018015 */  lui        $at, %hi(D_8014A088)
/* 12FD70 8003DF70 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 12FD74 8003DF74 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12FD78 8003DF78 8E240000 */   lw        $a0, ($s1)
/* 12FD7C 8003DF7C 00101400 */  sll        $v0, $s0, 0x10
.L8003DF80:
/* 12FD80 8003DF80 00021383 */  sra        $v0, $v0, 0xe
/* 12FD84 8003DF84 00511021 */  addu       $v0, $v0, $s1
/* 12FD88 8003DF88 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 12FD8C 8003DF8C 8C44000C */   lw        $a0, 0xc($v0)
/* 12FD90 8003DF90 26020001 */  addiu      $v0, $s0, 1
/* 12FD94 8003DF94 00408021 */  addu       $s0, $v0, $zero
/* 12FD98 8003DF98 00021400 */  sll        $v0, $v0, 0x10
/* 12FD9C 8003DF9C 1840FFF8 */  blez       $v0, .L8003DF80
/* 12FDA0 8003DFA0 00101400 */   sll       $v0, $s0, 0x10
/* 12FDA4 8003DFA4 8E240000 */  lw         $a0, ($s1)
/* 12FDA8 8003DFA8 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12FDAC 8003DFAC 00008021 */   addu      $s0, $zero, $zero
/* 12FDB0 8003DFB0 00101400 */  sll        $v0, $s0, 0x10
.L8003DFB4:
/* 12FDB4 8003DFB4 00021383 */  sra        $v0, $v0, 0xe
/* 12FDB8 8003DFB8 00511021 */  addu       $v0, $v0, $s1
/* 12FDBC 8003DFBC 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 12FDC0 8003DFC0 8C44000C */   lw        $a0, 0xc($v0)
/* 12FDC4 8003DFC4 26020001 */  addiu      $v0, $s0, 1
/* 12FDC8 8003DFC8 00408021 */  addu       $s0, $v0, $zero
/* 12FDCC 8003DFCC 00021400 */  sll        $v0, $v0, 0x10
/* 12FDD0 8003DFD0 1840FFF8 */  blez       $v0, .L8003DFB4
/* 12FDD4 8003DFD4 00101400 */   sll       $v0, $s0, 0x10
/* 12FDD8 8003DFD8 00001021 */  addu       $v0, $zero, $zero
/* 12FDDC 8003DFDC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12FDE0 8003DFE0 8FB10014 */  lw         $s1, 0x14($sp)
/* 12FDE4 8003DFE4 8FB00010 */  lw         $s0, 0x10($sp)
/* 12FDE8 8003DFE8 D7B80030 */  ldc1       $f24, 0x30($sp)
/* 12FDEC 8003DFEC D7B60028 */  ldc1       $f22, 0x28($sp)
/* 12FDF0 8003DFF0 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 12FDF4 8003DFF4 03E00008 */  jr         $ra
/* 12FDF8 8003DFF8 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003DFFC_12FDFC
/* 12FDFC 8003DFFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 12FE00 8003E000 AFB10014 */  sw         $s1, 0x14($sp)
/* 12FE04 8003E004 00808821 */  addu       $s1, $a0, $zero
/* 12FE08 8003E008 AFBF0018 */  sw         $ra, 0x18($sp)
/* 12FE0C 8003E00C 12200015 */  beqz       $s1, .L8003E064
/* 12FE10 8003E010 AFB00010 */   sw        $s0, 0x10($sp)
/* 12FE14 8003E014 8E240000 */  lw         $a0, ($s1)
/* 12FE18 8003E018 10800012 */  beqz       $a0, .L8003E064
/* 12FE1C 8003E01C 00000000 */   nop
/* 12FE20 8003E020 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12FE24 8003E024 00008021 */   addu      $s0, $zero, $zero
/* 12FE28 8003E028 00102400 */  sll        $a0, $s0, 0x10
.L8003E02C:
/* 12FE2C 8003E02C 8E220000 */  lw         $v0, ($s1)
/* 12FE30 8003E030 00042383 */  sra        $a0, $a0, 0xe
/* 12FE34 8003E034 2484000C */  addiu      $a0, $a0, 0xc
/* 12FE38 8003E038 0C00AF04 */  jal        func_8002BC10_11DA10
/* 12FE3C 8003E03C 00442021 */   addu      $a0, $v0, $a0
/* 12FE40 8003E040 26020001 */  addiu      $v0, $s0, 1
/* 12FE44 8003E044 00408021 */  addu       $s0, $v0, $zero
/* 12FE48 8003E048 00021400 */  sll        $v0, $v0, 0x10
/* 12FE4C 8003E04C 1840FFF7 */  blez       $v0, .L8003E02C
/* 12FE50 8003E050 00102400 */   sll       $a0, $s0, 0x10
/* 12FE54 8003E054 8E240000 */  lw         $a0, ($s1)
/* 12FE58 8003E058 0C0326A1 */  jal        func_800C9A84
/* 12FE5C 8003E05C 00000000 */   nop
/* 12FE60 8003E060 AE200000 */  sw         $zero, ($s1)
.L8003E064:
/* 12FE64 8003E064 8FBF0018 */  lw         $ra, 0x18($sp)
/* 12FE68 8003E068 8FB10014 */  lw         $s1, 0x14($sp)
/* 12FE6C 8003E06C 8FB00010 */  lw         $s0, 0x10($sp)
/* 12FE70 8003E070 03E00008 */  jr         $ra
/* 12FE74 8003E074 27BD0020 */   addiu     $sp, $sp, 0x20
/* 12FE78 8003E078 00000000 */  nop
/* 12FE7C 8003E07C 00000000 */  nop