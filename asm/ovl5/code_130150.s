.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8003E350_130150
/* 130150 8003E350 3C028005 */  lui        $v0, %hi(D_80051EF0)
/* 130154 8003E354 90421EF0 */  lbu        $v0, %lo(D_80051EF0)($v0)
/* 130158 8003E358 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 13015C 8003E35C AFB00018 */  sw         $s0, 0x18($sp)
/* 130160 8003E360 00808021 */  addu       $s0, $a0, $zero
/* 130164 8003E364 10400048 */  beqz       $v0, .L8003E488
/* 130168 8003E368 AFBF001C */   sw        $ra, 0x1c($sp)
/* 13016C 8003E36C 0C02A5D2 */  jal        func_800A9748
/* 130170 8003E370 24040001 */   addiu     $a0, $zero, 1
/* 130174 8003E374 0C02725C */  jal        func_8009C970
/* 130178 8003E378 00000000 */   nop
/* 13017C 8003E37C 24040053 */  addiu      $a0, $zero, 0x53
/* 130180 8003E380 3C01C1A0 */  lui        $at, 0xc1a0
/* 130184 8003E384 44810000 */  mtc1       $at, $f0
/* 130188 8003E388 3C014218 */  lui        $at, 0x4218
/* 13018C 8003E38C 44811000 */  mtc1       $at, $f2
/* 130190 8003E390 3C014210 */  lui        $at, 0x4210
/* 130194 8003E394 44812000 */  mtc1       $at, $f4
/* 130198 8003E398 3C01C337 */  lui        $at, 0xc337
/* 13019C 8003E39C 44813000 */  mtc1       $at, $f6
/* 1301A0 8003E3A0 3C014220 */  lui        $at, 0x4220
/* 1301A4 8003E3A4 44814000 */  mtc1       $at, $f8
/* 1301A8 8003E3A8 3C0143AB */  lui        $at, 0x43ab
/* 1301AC 8003E3AC 34218000 */  ori        $at, $at, 0x8000
/* 1301B0 8003E3B0 44815000 */  mtc1       $at, $f10
/* 1301B4 8003E3B4 24050048 */  addiu      $a1, $zero, 0x48
/* 1301B8 8003E3B8 240200E6 */  addiu      $v0, $zero, 0xe6
/* 1301BC 8003E3BC AFA20010 */  sw         $v0, 0x10($sp)
/* 1301C0 8003E3C0 240200DC */  addiu      $v0, $zero, 0xdc
/* 1301C4 8003E3C4 24060053 */  addiu      $a2, $zero, 0x53
/* 1301C8 8003E3C8 AFA20014 */  sw         $v0, 0x14($sp)
/* 1301CC 8003E3CC 3C018015 */  lui        $at, %hi(D_8014A064)
/* 1301D0 8003E3D0 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 1301D4 8003E3D4 3C018015 */  lui        $at, %hi(D_8014A068)
/* 1301D8 8003E3D8 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* 1301DC 8003E3DC 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 1301E0 8003E3E0 E424A06C */  swc1       $f4, %lo(D_8014A06C)($at)
/* 1301E4 8003E3E4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 1301E8 8003E3E8 E426A088 */  swc1       $f6, %lo(D_8014A088)($at)
/* 1301EC 8003E3EC 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 1301F0 8003E3F0 E428A07C */  swc1       $f8, %lo(D_8014A07C)($at)
/* 1301F4 8003E3F4 3C018015 */  lui        $at, %hi(D_8014A080)
/* 1301F8 8003E3F8 E42AA080 */  swc1       $f10, %lo(D_8014A080)($at)
/* 1301FC 8003E3FC 0C027101 */  jal        func_8009C404
/* 130200 8003E400 240700FF */   addiu     $a3, $zero, 0xff
/* 130204 8003E404 3C014170 */  lui        $at, 0x4170
/* 130208 8003E408 44810000 */  mtc1       $at, $f0
/* 13020C 8003E40C 3C014180 */  lui        $at, 0x4180
/* 130210 8003E410 44811000 */  mtc1       $at, $f2
/* 130214 8003E414 3C01C1C0 */  lui        $at, 0xc1c0
/* 130218 8003E418 44812000 */  mtc1       $at, $f4
/* 13021C 8003E41C 3C014130 */  lui        $at, 0x4130
/* 130220 8003E420 44813000 */  mtc1       $at, $f6
/* 130224 8003E424 3C0140A0 */  lui        $at, 0x40a0
/* 130228 8003E428 44814000 */  mtc1       $at, $f8
/* 13022C 8003E42C 3C01C190 */  lui        $at, 0xc190
/* 130230 8003E430 44815000 */  mtc1       $at, $f10
/* 130234 8003E434 3C018017 */  lui        $at, %hi(D_8016E568)
/* 130238 8003E438 E420E568 */  swc1       $f0, %lo(D_8016E568)($at)
/* 13023C 8003E43C 3C018017 */  lui        $at, %hi(D_8016D0D0)
/* 130240 8003E440 E422D0D0 */  swc1       $f2, %lo(D_8016D0D0)($at)
/* 130244 8003E444 3C018017 */  lui        $at, %hi(D_8016D0D4)
/* 130248 8003E448 E424D0D4 */  swc1       $f4, %lo(D_8016D0D4)($at)
/* 13024C 8003E44C 3C018015 */  lui        $at, %hi(D_8014A054)
/* 130250 8003E450 E426A054 */  swc1       $f6, %lo(D_8014A054)($at)
/* 130254 8003E454 3C018015 */  lui        $at, %hi(D_8014A050)
/* 130258 8003E458 E428A050 */  swc1       $f8, %lo(D_8014A050)($at)
/* 13025C 8003E45C 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 130260 8003E460 0C00F945 */  jal        func_8003E514_130314
/* 130264 8003E464 E42AD1A8 */   swc1      $f10, %lo(D_8016D1A8)($at)
/* 130268 8003E468 3C048008 */  lui        $a0, %hi(D_80080750)
/* 13026C 8003E46C 24840750 */  addiu      $a0, $a0, %lo(D_80080750)
/* 130270 8003E470 3C018006 */  lui        $at, %hi(D_8005DE70)
/* 130274 8003E474 AC22DE70 */  sw         $v0, %lo(D_8005DE70)($at)
/* 130278 8003E478 0C00A157 */  jal        func_8002855C_11A35C
/* 13027C 8003E47C 2405000A */   addiu     $a1, $zero, 0xa
/* 130280 8003E480 3C018005 */  lui        $at, %hi(D_80051EF0)
/* 130284 8003E484 A0201EF0 */  sb         $zero, %lo(D_80051EF0)($at)
.L8003E488:
/* 130288 8003E488 16000003 */  bnez       $s0, .L8003E498
/* 13028C 8003E48C 24020001 */   addiu     $v0, $zero, 1
/* 130290 8003E490 3C018005 */  lui        $at, %hi(D_80051EF4)
/* 130294 8003E494 AC221EF4 */  sw         $v0, %lo(D_80051EF4)($at)
.L8003E498:
/* 130298 8003E498 3C028005 */  lui        $v0, %hi(D_80051EF4)
/* 13029C 8003E49C 8C421EF4 */  lw         $v0, %lo(D_80051EF4)($v0)
/* 1302A0 8003E4A0 1440000C */  bnez       $v0, .L8003E4D4
/* 1302A4 8003E4A4 00000000 */   nop
/* 1302A8 8003E4A8 3C048006 */  lui        $a0, %hi(D_8005DE70)
/* 1302AC 8003E4AC 0C00F9F6 */  jal        func_8003E7D8_1305D8
/* 1302B0 8003E4B0 8C84DE70 */   lw        $a0, %lo(D_8005DE70)($a0)
/* 1302B4 8003E4B4 3C018005 */  lui        $at, %hi(D_80051EF4)
/* 1302B8 8003E4B8 0C009767 */  jal        func_80025D9C_117B9C
/* 1302BC 8003E4BC AC221EF4 */   sw        $v0, %lo(D_80051EF4)($at)
/* 1302C0 8003E4C0 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1302C4 8003E4C4 0C00A1B0 */  jal        func_800286C0_11A4C0
/* 1302C8 8003E4C8 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 1302CC 8003E4CC 0800F941 */  j          .L8003E504
/* 1302D0 8003E4D0 00001021 */   addu      $v0, $zero, $zero
.L8003E4D4:
/* 1302D4 8003E4D4 3C048008 */  lui        $a0, %hi(D_80080750)
/* 1302D8 8003E4D8 0C00A16B */  jal        func_800285AC_11A3AC
/* 1302DC 8003E4DC 24840750 */   addiu     $a0, $a0, %lo(D_80080750)
/* 1302E0 8003E4E0 3C048006 */  lui        $a0, %hi(D_8005DE70)
/* 1302E4 8003E4E4 0C00FA94 */  jal        func_8003EA50_130850
/* 1302E8 8003E4E8 2484DE70 */   addiu     $a0, $a0, %lo(D_8005DE70)
/* 1302EC 8003E4EC 24020001 */  addiu      $v0, $zero, 1
/* 1302F0 8003E4F0 24030001 */  addiu      $v1, $zero, 1
/* 1302F4 8003E4F4 3C018005 */  lui        $at, %hi(D_80051EF4)
/* 1302F8 8003E4F8 AC201EF4 */  sw         $zero, %lo(D_80051EF4)($at)
/* 1302FC 8003E4FC 3C018005 */  lui        $at, %hi(D_80051EF0)
/* 130300 8003E500 A0231EF0 */  sb         $v1, %lo(D_80051EF0)($at)
.L8003E504:
/* 130304 8003E504 8FBF001C */  lw         $ra, 0x1c($sp)
/* 130308 8003E508 8FB00018 */  lw         $s0, 0x18($sp)
/* 13030C 8003E50C 03E00008 */  jr         $ra
/* 130310 8003E510 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8003E514_130314
/* 130314 8003E514 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 130318 8003E518 AFBF002C */  sw         $ra, 0x2c($sp)
/* 13031C 8003E51C AFB60028 */  sw         $s6, 0x28($sp)
/* 130320 8003E520 AFB50024 */  sw         $s5, 0x24($sp)
/* 130324 8003E524 AFB40020 */  sw         $s4, 0x20($sp)
/* 130328 8003E528 AFB3001C */  sw         $s3, 0x1c($sp)
/* 13032C 8003E52C AFB20018 */  sw         $s2, 0x18($sp)
/* 130330 8003E530 AFB10014 */  sw         $s1, 0x14($sp)
/* 130334 8003E534 AFB00010 */  sw         $s0, 0x10($sp)
/* 130338 8003E538 F7B60038 */  sdc1       $f22, 0x38($sp)
/* 13033C 8003E53C F7B40030 */  sdc1       $f20, 0x30($sp)
/* 130340 8003E540 0C032663 */  jal        func_800C998C
/* 130344 8003E544 2404006C */   addiu     $a0, $zero, 0x6c
/* 130348 8003E548 00408821 */  addu       $s1, $v0, $zero
/* 13034C 8003E54C 02202021 */  addu       $a0, $s1, $zero
/* 130350 8003E550 0C030134 */  jal        bzero
/* 130354 8003E554 2405006C */   addiu     $a1, $zero, 0x6c
/* 130358 8003E558 3C028006 */  lui        $v0, %hi(D_8005E142)
/* 13035C 8003E55C 8442E142 */  lh         $v0, %lo(D_8005E142)($v0)
/* 130360 8003E560 28420040 */  slti       $v0, $v0, 0x40
/* 130364 8003E564 14400002 */  bnez       $v0, .L8003E570
/* 130368 8003E568 24020004 */   addiu     $v0, $zero, 4
/* 13036C 8003E56C 24020006 */  addiu      $v0, $zero, 6
.L8003E570:
/* 130370 8003E570 0C00AEC4 */  jal        func_8002BB10_11D910
/* 130374 8003E574 A6220068 */   sh        $v0, 0x68($s1)
/* 130378 8003E578 00402021 */  addu       $a0, $v0, $zero
/* 13037C 8003E57C 24020007 */  addiu      $v0, $zero, 7
/* 130380 8003E580 AE240000 */  sw         $a0, ($s1)
/* 130384 8003E584 AC82001C */  sw         $v0, 0x1c($a0)
/* 130388 8003E588 2402008D */  addiu      $v0, $zero, 0x8d
/* 13038C 8003E58C AC820004 */  sw         $v0, 4($a0)
/* 130390 8003E590 240200D4 */  addiu      $v0, $zero, 0xd4
/* 130394 8003E594 AC820008 */  sw         $v0, 8($a0)
/* 130398 8003E598 24020001 */  addiu      $v0, $zero, 1
/* 13039C 8003E59C AC800044 */  sw         $zero, 0x44($a0)
/* 1303A0 8003E5A0 AC800050 */  sw         $zero, 0x50($a0)
/* 1303A4 8003E5A4 AC82000C */  sw         $v0, 0xc($a0)
/* 1303A8 8003E5A8 96220068 */  lhu        $v0, 0x68($s1)
/* 1303AC 8003E5AC 10400034 */  beqz       $v0, .L8003E680
/* 1303B0 8003E5B0 00009021 */   addu      $s2, $zero, $zero
/* 1303B4 8003E5B4 24160015 */  addiu      $s6, $zero, 0x15
/* 1303B8 8003E5B8 241500ED */  addiu      $s5, $zero, 0xed
/* 1303BC 8003E5BC 3C013E23 */  lui        $at, 0x3e23
/* 1303C0 8003E5C0 3421D70A */  ori        $at, $at, 0xd70a
/* 1303C4 8003E5C4 4481B000 */  mtc1       $at, $f22
/* 1303C8 8003E5C8 2414FF38 */  addiu      $s4, $zero, -0xc8
/* 1303CC 8003E5CC 3C0142B4 */  lui        $at, 0x42b4
/* 1303D0 8003E5D0 4481A000 */  mtc1       $at, $f20
/* 1303D4 8003E5D4 24135494 */  addiu      $s3, $zero, 0x5494
.L8003E5D8:
/* 1303D8 8003E5D8 0C00AEC4 */  jal        func_8002BB10_11D910
/* 1303DC 8003E5DC 00000000 */   nop
/* 1303E0 8003E5E0 00402021 */  addu       $a0, $v0, $zero
/* 1303E4 8003E5E4 00121C00 */  sll        $v1, $s2, 0x10
/* 1303E8 8003E5E8 00031C03 */  sra        $v1, $v1, 0x10
/* 1303EC 8003E5EC 00038080 */  sll        $s0, $v1, 2
/* 1303F0 8003E5F0 02118021 */  addu       $s0, $s0, $s1
/* 1303F4 8003E5F4 02831023 */  subu       $v0, $s4, $v1
/* 1303F8 8003E5F8 44820000 */  mtc1       $v0, $f0
/* 1303FC 8003E5FC 00000000 */  nop
/* 130400 8003E600 46800020 */  cvt.s.w    $f0, $f0
/* 130404 8003E604 000319C0 */  sll        $v1, $v1, 7
/* 130408 8003E608 AE04000C */  sw         $a0, 0xc($s0)
/* 13040C 8003E60C E4800048 */  swc1       $f0, 0x48($a0)
/* 130410 8003E610 44830000 */  mtc1       $v1, $f0
/* 130414 8003E614 00000000 */  nop
/* 130418 8003E618 46800020 */  cvt.s.w    $f0, $f0
/* 13041C 8003E61C AC96001C */  sw         $s6, 0x1c($a0)
/* 130420 8003E620 AC950004 */  sw         $s5, 4($a0)
/* 130424 8003E624 E496005C */  swc1       $f22, 0x5c($a0)
/* 130428 8003E628 AC800044 */  sw         $zero, 0x44($a0)
/* 13042C 8003E62C E480004C */  swc1       $f0, 0x4c($a0)
/* 130430 8003E630 AC800054 */  sw         $zero, 0x54($a0)
/* 130434 8003E634 AC800058 */  sw         $zero, 0x58($a0)
/* 130438 8003E638 E4940050 */  swc1       $f20, 0x50($a0)
/* 13043C 8003E63C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 130440 8003E640 8E04000C */   lw        $a0, 0xc($s0)
/* 130444 8003E644 8E02000C */  lw         $v0, 0xc($s0)
/* 130448 8003E648 8C440034 */  lw         $a0, 0x34($v0)
/* 13044C 8003E64C 0C0285CC */  jal        func_800A1730
/* 130450 8003E650 00002821 */   addu      $a1, $zero, $zero
/* 130454 8003E654 00402021 */  addu       $a0, $v0, $zero
/* 130458 8003E658 0C0326A1 */  jal        func_800C9A84
/* 13045C 8003E65C A4930000 */   sh        $s3, ($a0)
/* 130460 8003E660 26420001 */  addiu      $v0, $s2, 1
/* 130464 8003E664 00409021 */  addu       $s2, $v0, $zero
/* 130468 8003E668 96230068 */  lhu        $v1, 0x68($s1)
/* 13046C 8003E66C 00021400 */  sll        $v0, $v0, 0x10
/* 130470 8003E670 00021403 */  sra        $v0, $v0, 0x10
/* 130474 8003E674 0043102A */  slt        $v0, $v0, $v1
/* 130478 8003E678 1440FFD7 */  bnez       $v0, .L8003E5D8
/* 13047C 8003E67C 00000000 */   nop
.L8003E680:
/* 130480 8003E680 3C01C1A0 */  lui        $at, 0xc1a0
/* 130484 8003E684 44810000 */  mtc1       $at, $f0
/* 130488 8003E688 3C014218 */  lui        $at, 0x4218
/* 13048C 8003E68C 44811000 */  mtc1       $at, $f2
/* 130490 8003E690 3C014210 */  lui        $at, 0x4210
/* 130494 8003E694 44812000 */  mtc1       $at, $f4
/* 130498 8003E698 3C0143AB */  lui        $at, 0x43ab
/* 13049C 8003E69C 34218000 */  ori        $at, $at, 0x8000
/* 1304A0 8003E6A0 44813000 */  mtc1       $at, $f6
/* 1304A4 8003E6A4 3C01C337 */  lui        $at, 0xc337
/* 1304A8 8003E6A8 44814000 */  mtc1       $at, $f8
/* 1304AC 8003E6AC 3C014220 */  lui        $at, 0x4220
/* 1304B0 8003E6B0 44815000 */  mtc1       $at, $f10
/* 1304B4 8003E6B4 3C0142A0 */  lui        $at, 0x42a0
/* 1304B8 8003E6B8 4481A000 */  mtc1       $at, $f20
/* 1304BC 8003E6BC E6200054 */  swc1       $f0, 0x54($s1)
/* 1304C0 8003E6C0 E622005C */  swc1       $f2, 0x5c($s1)
/* 1304C4 8003E6C4 E6240064 */  swc1       $f4, 0x64($s1)
/* 1304C8 8003E6C8 E626003C */  swc1       $f6, 0x3c($s1)
/* 1304CC 8003E6CC E628004C */  swc1       $f8, 0x4c($s1)
/* 1304D0 8003E6D0 E62A0044 */  swc1       $f10, 0x44($s1)
/* 1304D4 8003E6D4 3C018015 */  lui        $at, %hi(D_8014A080)
/* 1304D8 8003E6D8 C42CA080 */  lwc1       $f12, %lo(D_8014A080)($at)
/* 1304DC 8003E6DC C62E003C */  lwc1       $f14, 0x3c($s1)
/* 1304E0 8003E6E0 4406A000 */  mfc1       $a2, $f20
/* 1304E4 8003E6E4 0C00AC58 */  jal        func_8002B160_11CF60
/* 1304E8 8003E6E8 00000000 */   nop
/* 1304EC 8003E6EC E6200038 */  swc1       $f0, 0x38($s1)
/* 1304F0 8003E6F0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 1304F4 8003E6F4 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 1304F8 8003E6F8 C62E0044 */  lwc1       $f14, 0x44($s1)
/* 1304FC 8003E6FC 4406A000 */  mfc1       $a2, $f20
/* 130500 8003E700 0C00AC58 */  jal        func_8002B160_11CF60
/* 130504 8003E704 00000000 */   nop
/* 130508 8003E708 E6200040 */  swc1       $f0, 0x40($s1)
/* 13050C 8003E70C 3C018015 */  lui        $at, %hi(D_8014A064)
/* 130510 8003E710 C420A064 */  lwc1       $f0, %lo(D_8014A064)($at)
/* 130514 8003E714 C6220054 */  lwc1       $f2, 0x54($s1)
/* 130518 8003E718 46020001 */  sub.s      $f0, $f0, $f2
/* 13051C 8003E71C 3C018006 */  lui        $at, %hi(D_8005C570)
/* 130520 8003E720 D424C570 */  ldc1       $f4, %lo(D_8005C570)($at)
/* 130524 8003E724 46000021 */  cvt.d.s    $f0, $f0
/* 130528 8003E728 46200005 */  abs.d      $f0, $f0
/* 13052C 8003E72C 46240003 */  div.d      $f0, $f0, $f4
/* 130530 8003E730 C622005C */  lwc1       $f2, 0x5c($s1)
/* 130534 8003E734 46200020 */  cvt.s.d    $f0, $f0
/* 130538 8003E738 E6200050 */  swc1       $f0, 0x50($s1)
/* 13053C 8003E73C 3C018015 */  lui        $at, %hi(D_8014A068)
/* 130540 8003E740 C420A068 */  lwc1       $f0, %lo(D_8014A068)($at)
/* 130544 8003E744 46020001 */  sub.s      $f0, $f0, $f2
/* 130548 8003E748 46000021 */  cvt.d.s    $f0, $f0
/* 13054C 8003E74C 46200005 */  abs.d      $f0, $f0
/* 130550 8003E750 46240003 */  div.d      $f0, $f0, $f4
/* 130554 8003E754 C6220064 */  lwc1       $f2, 0x64($s1)
/* 130558 8003E758 46200020 */  cvt.s.d    $f0, $f0
/* 13055C 8003E75C E6200058 */  swc1       $f0, 0x58($s1)
/* 130560 8003E760 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 130564 8003E764 C420A06C */  lwc1       $f0, %lo(D_8014A06C)($at)
/* 130568 8003E768 46020001 */  sub.s      $f0, $f0, $f2
/* 13056C 8003E76C 46000021 */  cvt.d.s    $f0, $f0
/* 130570 8003E770 46200005 */  abs.d      $f0, $f0
/* 130574 8003E774 46240003 */  div.d      $f0, $f0, $f4
/* 130578 8003E778 C622004C */  lwc1       $f2, 0x4c($s1)
/* 13057C 8003E77C 46200020 */  cvt.s.d    $f0, $f0
/* 130580 8003E780 E6200060 */  swc1       $f0, 0x60($s1)
/* 130584 8003E784 3C018015 */  lui        $at, %hi(D_8014A088)
/* 130588 8003E788 C420A088 */  lwc1       $f0, %lo(D_8014A088)($at)
/* 13058C 8003E78C 46020001 */  sub.s      $f0, $f0, $f2
/* 130590 8003E790 46000021 */  cvt.d.s    $f0, $f0
/* 130594 8003E794 46200005 */  abs.d      $f0, $f0
/* 130598 8003E798 46240003 */  div.d      $f0, $f0, $f4
/* 13059C 8003E79C 02201021 */  addu       $v0, $s1, $zero
/* 1305A0 8003E7A0 46200020 */  cvt.s.d    $f0, $f0
/* 1305A4 8003E7A4 E4400048 */  swc1       $f0, 0x48($v0)
/* 1305A8 8003E7A8 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1305AC 8003E7AC 8FB60028 */  lw         $s6, 0x28($sp)
/* 1305B0 8003E7B0 8FB50024 */  lw         $s5, 0x24($sp)
/* 1305B4 8003E7B4 8FB40020 */  lw         $s4, 0x20($sp)
/* 1305B8 8003E7B8 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1305BC 8003E7BC 8FB20018 */  lw         $s2, 0x18($sp)
/* 1305C0 8003E7C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 1305C4 8003E7C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 1305C8 8003E7C8 D7B60038 */  ldc1       $f22, 0x38($sp)
/* 1305CC 8003E7CC D7B40030 */  ldc1       $f20, 0x30($sp)
/* 1305D0 8003E7D0 03E00008 */  jr         $ra
/* 1305D4 8003E7D4 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_8003E7D8_1305D8
/* 1305D8 8003E7D8 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 1305DC 8003E7DC AFB10014 */  sw         $s1, 0x14($sp)
/* 1305E0 8003E7E0 00808821 */  addu       $s1, $a0, $zero
/* 1305E4 8003E7E4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1305E8 8003E7E8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1305EC 8003E7EC F7B80030 */  sdc1       $f24, 0x30($sp)
/* 1305F0 8003E7F0 F7B60028 */  sdc1       $f22, 0x28($sp)
/* 1305F4 8003E7F4 F7B40020 */  sdc1       $f20, 0x20($sp)
/* 1305F8 8003E7F8 96220068 */  lhu        $v0, 0x68($s1)
/* 1305FC 8003E7FC 10400012 */  beqz       $v0, .L8003E848
/* 130600 8003E800 00008021 */   addu      $s0, $zero, $zero
/* 130604 8003E804 3C014180 */  lui        $at, 0x4180
/* 130608 8003E808 44811000 */  mtc1       $at, $f2
/* 13060C 8003E80C 00101400 */  sll        $v0, $s0, 0x10
.L8003E810:
/* 130610 8003E810 00021383 */  sra        $v0, $v0, 0xe
/* 130614 8003E814 00511021 */  addu       $v0, $v0, $s1
/* 130618 8003E818 8C43000C */  lw         $v1, 0xc($v0)
/* 13061C 8003E81C C460004C */  lwc1       $f0, 0x4c($v1)
/* 130620 8003E820 46020001 */  sub.s      $f0, $f0, $f2
/* 130624 8003E824 26020001 */  addiu      $v0, $s0, 1
/* 130628 8003E828 00408021 */  addu       $s0, $v0, $zero
/* 13062C 8003E82C E460004C */  swc1       $f0, 0x4c($v1)
/* 130630 8003E830 96230068 */  lhu        $v1, 0x68($s1)
/* 130634 8003E834 00021400 */  sll        $v0, $v0, 0x10
/* 130638 8003E838 00021403 */  sra        $v0, $v0, 0x10
/* 13063C 8003E83C 0043102A */  slt        $v0, $v0, $v1
/* 130640 8003E840 1440FFF3 */  bnez       $v0, .L8003E810
/* 130644 8003E844 00101400 */   sll       $v0, $s0, 0x10
.L8003E848:
/* 130648 8003E848 3C108015 */  lui        $s0, %hi(D_8014A080)
/* 13064C 8003E84C 2610A080 */  addiu      $s0, $s0, %lo(D_8014A080)
/* 130650 8003E850 C6140000 */  lwc1       $f20, ($s0)
/* 130654 8003E854 C62E003C */  lwc1       $f14, 0x3c($s1)
/* 130658 8003E858 8E260038 */  lw         $a2, 0x38($s1)
/* 13065C 8003E85C 0C00AC89 */  jal        func_8002B224_11D024
/* 130660 8003E860 4600A306 */   mov.s     $f12, $f20
/* 130664 8003E864 46140501 */  sub.s      $f20, $f0, $f20
/* 130668 8003E868 4480C000 */  mtc1       $zero, $f24
/* 13066C 8003E86C 00000000 */  nop
/* 130670 8003E870 4618A03C */  c.lt.s     $f20, $f24
/* 130674 8003E874 00000000 */  nop
/* 130678 8003E878 00000000 */  nop
/* 13067C 8003E87C 45000005 */  bc1f       .L8003E894
/* 130680 8003E880 E6000000 */   swc1      $f0, ($s0)
/* 130684 8003E884 3C0143B4 */  lui        $at, 0x43b4
/* 130688 8003E888 44810000 */  mtc1       $at, $f0
/* 13068C 8003E88C 00000000 */  nop
/* 130690 8003E890 4600A500 */  add.s      $f20, $f20, $f0
.L8003E894:
/* 130694 8003E894 3C014334 */  lui        $at, 0x4334
/* 130698 8003E898 4481B000 */  mtc1       $at, $f22
/* 13069C 8003E89C 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 1306A0 8003E8A0 C42CA07C */  lwc1       $f12, %lo(D_8014A07C)($at)
/* 1306A4 8003E8A4 C62E0044 */  lwc1       $f14, 0x44($s1)
/* 1306A8 8003E8A8 0C00AC89 */  jal        func_8002B224_11D024
/* 1306AC 8003E8AC 8E260040 */   lw        $a2, 0x40($s1)
/* 1306B0 8003E8B0 46000086 */  mov.s      $f2, $f0
/* 1306B4 8003E8B4 4602B03E */  c.le.s     $f22, $f2
/* 1306B8 8003E8B8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 1306BC 8003E8BC E422A07C */  swc1       $f2, %lo(D_8014A07C)($at)
/* 1306C0 8003E8C0 45000007 */  bc1f       .L8003E8E0
/* 1306C4 8003E8C4 00000000 */   nop
/* 1306C8 8003E8C8 3C0143B4 */  lui        $at, 0x43b4
/* 1306CC 8003E8CC 44810000 */  mtc1       $at, $f0
/* 1306D0 8003E8D0 00000000 */  nop
/* 1306D4 8003E8D4 46001001 */  sub.s      $f0, $f2, $f0
/* 1306D8 8003E8D8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 1306DC 8003E8DC E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
.L8003E8E0:
/* 1306E0 8003E8E0 3C018015 */  lui        $at, %hi(D_8014A064)
/* 1306E4 8003E8E4 C42CA064 */  lwc1       $f12, %lo(D_8014A064)($at)
/* 1306E8 8003E8E8 C62E0054 */  lwc1       $f14, 0x54($s1)
/* 1306EC 8003E8EC 0C00BC51 */  jal        func_8002F144_120F44
/* 1306F0 8003E8F0 8E260050 */   lw        $a2, 0x50($s1)
/* 1306F4 8003E8F4 3C018015 */  lui        $at, %hi(D_8014A064)
/* 1306F8 8003E8F8 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* 1306FC 8003E8FC C6220054 */  lwc1       $f2, 0x54($s1)
/* 130700 8003E900 46020032 */  c.eq.s     $f0, $f2
/* 130704 8003E904 00000000 */  nop
/* 130708 8003E908 00000000 */  nop
/* 13070C 8003E90C 45030001 */  bc1tl      .L8003E914
/* 130710 8003E910 E6380050 */   swc1      $f24, 0x50($s1)
.L8003E914:
/* 130714 8003E914 3C018015 */  lui        $at, %hi(D_8014A068)
/* 130718 8003E918 C42CA068 */  lwc1       $f12, %lo(D_8014A068)($at)
/* 13071C 8003E91C C62E005C */  lwc1       $f14, 0x5c($s1)
/* 130720 8003E920 0C00BC51 */  jal        func_8002F144_120F44
/* 130724 8003E924 8E260058 */   lw        $a2, 0x58($s1)
/* 130728 8003E928 3C018015 */  lui        $at, %hi(D_8014A068)
/* 13072C 8003E92C E420A068 */  swc1       $f0, %lo(D_8014A068)($at)
/* 130730 8003E930 C622005C */  lwc1       $f2, 0x5c($s1)
/* 130734 8003E934 46020032 */  c.eq.s     $f0, $f2
/* 130738 8003E938 00000000 */  nop
/* 13073C 8003E93C 00000000 */  nop
/* 130740 8003E940 45030001 */  bc1tl      .L8003E948
/* 130744 8003E944 E6380058 */   swc1      $f24, 0x58($s1)
.L8003E948:
/* 130748 8003E948 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 13074C 8003E94C C42CA06C */  lwc1       $f12, %lo(D_8014A06C)($at)
/* 130750 8003E950 C62E0064 */  lwc1       $f14, 0x64($s1)
/* 130754 8003E954 0C00BC51 */  jal        func_8002F144_120F44
/* 130758 8003E958 8E260060 */   lw        $a2, 0x60($s1)
/* 13075C 8003E95C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 130760 8003E960 E420A06C */  swc1       $f0, %lo(D_8014A06C)($at)
/* 130764 8003E964 C6220064 */  lwc1       $f2, 0x64($s1)
/* 130768 8003E968 46020032 */  c.eq.s     $f0, $f2
/* 13076C 8003E96C 00000000 */  nop
/* 130770 8003E970 00000000 */  nop
/* 130774 8003E974 45030001 */  bc1tl      .L8003E97C
/* 130778 8003E978 E6380060 */   swc1      $f24, 0x60($s1)
.L8003E97C:
/* 13077C 8003E97C 3C018015 */  lui        $at, %hi(D_8014A088)
/* 130780 8003E980 C42CA088 */  lwc1       $f12, %lo(D_8014A088)($at)
/* 130784 8003E984 C62E004C */  lwc1       $f14, 0x4c($s1)
/* 130788 8003E988 8E260048 */  lw         $a2, 0x48($s1)
/* 13078C 8003E98C 0C00BC51 */  jal        func_8002F144_120F44
/* 130790 8003E990 00008021 */   addu      $s0, $zero, $zero
/* 130794 8003E994 3C018015 */  lui        $at, %hi(D_8014A088)
/* 130798 8003E998 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* 13079C 8003E99C 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 1307A0 8003E9A0 8E240000 */   lw        $a0, ($s1)
/* 1307A4 8003E9A4 96220068 */  lhu        $v0, 0x68($s1)
/* 1307A8 8003E9A8 1040000D */  beqz       $v0, .L8003E9E0
/* 1307AC 8003E9AC 00101400 */   sll       $v0, $s0, 0x10
.L8003E9B0:
/* 1307B0 8003E9B0 00021383 */  sra        $v0, $v0, 0xe
/* 1307B4 8003E9B4 00511021 */  addu       $v0, $v0, $s1
/* 1307B8 8003E9B8 0C00AF3F */  jal        func_8002BCFC_11DAFC
/* 1307BC 8003E9BC 8C44000C */   lw        $a0, 0xc($v0)
/* 1307C0 8003E9C0 26020001 */  addiu      $v0, $s0, 1
/* 1307C4 8003E9C4 00408021 */  addu       $s0, $v0, $zero
/* 1307C8 8003E9C8 96230068 */  lhu        $v1, 0x68($s1)
/* 1307CC 8003E9CC 00021400 */  sll        $v0, $v0, 0x10
/* 1307D0 8003E9D0 00021403 */  sra        $v0, $v0, 0x10
/* 1307D4 8003E9D4 0043102A */  slt        $v0, $v0, $v1
/* 1307D8 8003E9D8 1440FFF5 */  bnez       $v0, .L8003E9B0
/* 1307DC 8003E9DC 00101400 */   sll       $v0, $s0, 0x10
.L8003E9E0:
/* 1307E0 8003E9E0 8E240000 */  lw         $a0, ($s1)
/* 1307E4 8003E9E4 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 1307E8 8003E9E8 00008021 */   addu      $s0, $zero, $zero
/* 1307EC 8003E9EC 96220068 */  lhu        $v0, 0x68($s1)
/* 1307F0 8003E9F0 1040000F */  beqz       $v0, .L8003EA30
/* 1307F4 8003E9F4 00001021 */   addu      $v0, $zero, $zero
/* 1307F8 8003E9F8 00101400 */  sll        $v0, $s0, 0x10
.L8003E9FC:
/* 1307FC 8003E9FC 00021383 */  sra        $v0, $v0, 0xe
/* 130800 8003EA00 00511021 */  addu       $v0, $v0, $s1
/* 130804 8003EA04 0C00AFA5 */  jal        func_8002BE94_11DC94
/* 130808 8003EA08 8C44000C */   lw        $a0, 0xc($v0)
/* 13080C 8003EA0C 26020001 */  addiu      $v0, $s0, 1
/* 130810 8003EA10 00408021 */  addu       $s0, $v0, $zero
/* 130814 8003EA14 96230068 */  lhu        $v1, 0x68($s1)
/* 130818 8003EA18 00021400 */  sll        $v0, $v0, 0x10
/* 13081C 8003EA1C 00021403 */  sra        $v0, $v0, 0x10
/* 130820 8003EA20 0043102A */  slt        $v0, $v0, $v1
/* 130824 8003EA24 1440FFF5 */  bnez       $v0, .L8003E9FC
/* 130828 8003EA28 00101400 */   sll       $v0, $s0, 0x10
/* 13082C 8003EA2C 00001021 */  addu       $v0, $zero, $zero
.L8003EA30:
/* 130830 8003EA30 8FBF0018 */  lw         $ra, 0x18($sp)
/* 130834 8003EA34 8FB10014 */  lw         $s1, 0x14($sp)
/* 130838 8003EA38 8FB00010 */  lw         $s0, 0x10($sp)
/* 13083C 8003EA3C D7B80030 */  ldc1       $f24, 0x30($sp)
/* 130840 8003EA40 D7B60028 */  ldc1       $f22, 0x28($sp)
/* 130844 8003EA44 D7B40020 */  ldc1       $f20, 0x20($sp)
/* 130848 8003EA48 03E00008 */  jr         $ra
/* 13084C 8003EA4C 27BD0038 */   addiu     $sp, $sp, 0x38

glabel func_8003EA50_130850
/* 130850 8003EA50 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 130854 8003EA54 AFB00010 */  sw         $s0, 0x10($sp)
/* 130858 8003EA58 00808021 */  addu       $s0, $a0, $zero
/* 13085C 8003EA5C AFBF0018 */  sw         $ra, 0x18($sp)
/* 130860 8003EA60 1200001B */  beqz       $s0, .L8003EAD0
/* 130864 8003EA64 AFB10014 */   sw        $s1, 0x14($sp)
/* 130868 8003EA68 8E040000 */  lw         $a0, ($s0)
/* 13086C 8003EA6C 10800018 */  beqz       $a0, .L8003EAD0
/* 130870 8003EA70 00000000 */   nop
/* 130874 8003EA74 0C00AF04 */  jal        func_8002BC10_11DA10
/* 130878 8003EA78 00008821 */   addu      $s1, $zero, $zero
/* 13087C 8003EA7C 8E050000 */  lw         $a1, ($s0)
/* 130880 8003EA80 94A20068 */  lhu        $v0, 0x68($a1)
/* 130884 8003EA84 1040000E */  beqz       $v0, .L8003EAC0
/* 130888 8003EA88 00112400 */   sll       $a0, $s1, 0x10
.L8003EA8C:
/* 13088C 8003EA8C 00042383 */  sra        $a0, $a0, 0xe
/* 130890 8003EA90 2484000C */  addiu      $a0, $a0, 0xc
/* 130894 8003EA94 0C00AF04 */  jal        func_8002BC10_11DA10
/* 130898 8003EA98 00A42021 */   addu      $a0, $a1, $a0
/* 13089C 8003EA9C 8E050000 */  lw         $a1, ($s0)
/* 1308A0 8003EAA0 26220001 */  addiu      $v0, $s1, 1
/* 1308A4 8003EAA4 00408821 */  addu       $s1, $v0, $zero
/* 1308A8 8003EAA8 94A30068 */  lhu        $v1, 0x68($a1)
/* 1308AC 8003EAAC 00021400 */  sll        $v0, $v0, 0x10
/* 1308B0 8003EAB0 00021403 */  sra        $v0, $v0, 0x10
/* 1308B4 8003EAB4 0043102A */  slt        $v0, $v0, $v1
/* 1308B8 8003EAB8 1440FFF4 */  bnez       $v0, .L8003EA8C
/* 1308BC 8003EABC 00112400 */   sll       $a0, $s1, 0x10
.L8003EAC0:
/* 1308C0 8003EAC0 8E040000 */  lw         $a0, ($s0)
/* 1308C4 8003EAC4 0C0326A1 */  jal        func_800C9A84
/* 1308C8 8003EAC8 00000000 */   nop
/* 1308CC 8003EACC AE000000 */  sw         $zero, ($s0)
.L8003EAD0:
/* 1308D0 8003EAD0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1308D4 8003EAD4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1308D8 8003EAD8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1308DC 8003EADC 03E00008 */  jr         $ra
/* 1308E0 8003EAE0 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1308E4 8003EAE4 00000000 */  nop
/* 1308E8 8003EAE8 00000000 */  nop
/* 1308EC 8003EAEC 00000000 */  nop