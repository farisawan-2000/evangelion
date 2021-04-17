.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002E930_17E370
/* 17E370 8002E930 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17E374 8002E934 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17E378 8002E938 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17E37C 8002E93C AFBF0020 */  sw         $ra, 0x20($sp)
/* 17E380 8002E940 AFB1001C */  sw         $s1, 0x1c($sp)
/* 17E384 8002E944 14400018 */  bnez       $v0, .L8002E9A8
/* 17E388 8002E948 AFB00018 */   sw        $s0, 0x18($sp)
/* 17E38C 8002E94C 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17E390 8002E950 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17E394 8002E954 8C51002C */  lw         $s1, 0x2c($v0)
/* 17E398 8002E958 8E24000C */  lw         $a0, 0xc($s1)
/* 17E39C 8002E95C 8C82000C */  lw         $v0, 0xc($a0)
/* 17E3A0 8002E960 84460002 */  lh         $a2, 2($v0)
/* 17E3A4 8002E964 00002821 */  addu       $a1, $zero, $zero
/* 17E3A8 8002E968 0C02912A */  jal        func_800A44A8
/* 17E3AC 8002E96C 24100002 */   addiu     $s0, $zero, 2
/* 17E3B0 8002E970 320200FF */  andi       $v0, $s0, 0xff
.L8002E974:
/* 17E3B4 8002E974 00021840 */  sll        $v1, $v0, 1
/* 17E3B8 8002E978 00621821 */  addu       $v1, $v1, $v0
/* 17E3BC 8002E97C 00031880 */  sll        $v1, $v1, 2
/* 17E3C0 8002E980 00711821 */  addu       $v1, $v1, $s1
/* 17E3C4 8002E984 8C640000 */  lw         $a0, ($v1)
/* 17E3C8 8002E988 00002821 */  addu       $a1, $zero, $zero
/* 17E3CC 8002E98C 00003021 */  addu       $a2, $zero, $zero
/* 17E3D0 8002E990 0C02912A */  jal        func_800A44A8
/* 17E3D4 8002E994 26100001 */   addiu     $s0, $s0, 1
/* 17E3D8 8002E998 320200FF */  andi       $v0, $s0, 0xff
/* 17E3DC 8002E99C 2C420006 */  sltiu      $v0, $v0, 6
/* 17E3E0 8002E9A0 1440FFF4 */  bnez       $v0, .L8002E974
/* 17E3E4 8002E9A4 320200FF */   andi      $v0, $s0, 0xff
.L8002E9A8:
/* 17E3E8 8002E9A8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17E3EC 8002E9AC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17E3F0 8002E9B0 2402005A */  addiu      $v0, $zero, 0x5a
/* 17E3F4 8002E9B4 14620009 */  bne        $v1, $v0, .L8002E9DC
/* 17E3F8 8002E9B8 24040122 */   addiu     $a0, $zero, 0x122
/* 17E3FC 8002E9BC 24020064 */  addiu      $v0, $zero, 0x64
/* 17E400 8002E9C0 AFA20010 */  sw         $v0, 0x10($sp)
/* 17E404 8002E9C4 240401C5 */  addiu      $a0, $zero, 0x1c5
/* 17E408 8002E9C8 24050060 */  addiu      $a1, $zero, 0x60
/* 17E40C 8002E9CC 24060060 */  addiu      $a2, $zero, 0x60
/* 17E410 8002E9D0 0C026E0C */  jal        func_8009B830
/* 17E414 8002E9D4 24070001 */   addiu     $a3, $zero, 1
/* 17E418 8002E9D8 24040122 */  addiu      $a0, $zero, 0x122
.L8002E9DC:
/* 17E41C 8002E9DC 24050006 */  addiu      $a1, $zero, 6
/* 17E420 8002E9E0 0C009EE4 */  jal        func_80027B90_1775D0
/* 17E424 8002E9E4 00003021 */   addu      $a2, $zero, $zero
/* 17E428 8002E9E8 8FBF0020 */  lw         $ra, 0x20($sp)
/* 17E42C 8002E9EC 8FB1001C */  lw         $s1, 0x1c($sp)
/* 17E430 8002E9F0 8FB00018 */  lw         $s0, 0x18($sp)
/* 17E434 8002E9F4 03E00008 */  jr         $ra
/* 17E438 8002E9F8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002E9FC_17E43C
/* 17E43C 8002E9FC 3C028004 */  lui        $v0, %hi(D_80046704_196144)
/* 17E440 8002EA00 90426704 */  lbu        $v0, %lo(D_80046704_196144)($v0)
/* 17E444 8002EA04 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17E448 8002EA08 10400019 */  beqz       $v0, .L8002EA70
/* 17E44C 8002EA0C AFBF0010 */   sw        $ra, 0x10($sp)
/* 17E450 8002EA10 0C009758 */  jal        func_80025D60_1757A0
/* 17E454 8002EA14 00000000 */   nop
/* 17E458 8002EA18 0C02A5D2 */  jal        func_800A9748
/* 17E45C 8002EA1C 24040001 */   addiu     $a0, $zero, 1
/* 17E460 8002EA20 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 17E464 8002EA24 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 17E468 8002EA28 24020008 */  addiu      $v0, $zero, 8
/* 17E46C 8002EA2C 3C018005 */  lui        $at, %hi(D_80052061)
/* 17E470 8002EA30 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 17E474 8002EA34 24020001 */  addiu      $v0, $zero, 1
/* 17E478 8002EA38 3C018005 */  lui        $at, %hi(D_80052006)
/* 17E47C 8002EA3C A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 17E480 8002EA40 3C028004 */  lui        $v0, %hi(D_800466D4_196114)
/* 17E484 8002EA44 244266D4 */  addiu      $v0, $v0, %lo(D_800466D4_196114)
/* 17E488 8002EA48 00002821 */  addu       $a1, $zero, $zero
/* 17E48C 8002EA4C 2406012C */  addiu      $a2, $zero, 0x12c
/* 17E490 8002EA50 3C018004 */  lui        $at, %hi(D_80046704_196144)
/* 17E494 8002EA54 A0206704 */  sb         $zero, %lo(D_80046704_196144)($at)
/* 17E498 8002EA58 3C018005 */  lui        $at, %hi(D_80052060)
/* 17E49C 8002EA5C A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 17E4A0 8002EA60 3C018005 */  lui        $at, %hi(D_80052000)
/* 17E4A4 8002EA64 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 17E4A8 8002EA68 0C025D06 */  jal        func_80097418
/* 17E4AC 8002EA6C 00003821 */   addu      $a3, $zero, $zero
.L8002EA70:
/* 17E4B0 8002EA70 3C038005 */  lui        $v1, %hi(D_80052060)
/* 17E4B4 8002EA74 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 17E4B8 8002EA78 24020001 */  addiu      $v0, $zero, 1
/* 17E4BC 8002EA7C 14620005 */  bne        $v1, $v0, .L8002EA94
/* 17E4C0 8002EA80 00001021 */   addu      $v0, $zero, $zero
/* 17E4C4 8002EA84 24020001 */  addiu      $v0, $zero, 1
/* 17E4C8 8002EA88 3C018004 */  lui        $at, %hi(D_80046704_196144)
/* 17E4CC 8002EA8C A0226704 */  sb         $v0, %lo(D_80046704_196144)($at)
/* 17E4D0 8002EA90 24020001 */  addiu      $v0, $zero, 1
.L8002EA94:
/* 17E4D4 8002EA94 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17E4D8 8002EA98 03E00008 */  jr         $ra
/* 17E4DC 8002EA9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002EAA0_17E4E0
/* 17E4E0 8002EAA0 3C028005 */  lui        $v0, %hi(D_80052000)
/* 17E4E4 8002EAA4 8C422000 */  lw         $v0, %lo(D_80052000)($v0)
/* 17E4E8 8002EAA8 3C038005 */  lui        $v1, %hi(D_80052038)
/* 17E4EC 8002EAAC 94632038 */  lhu        $v1, %lo(D_80052038)($v1)
/* 17E4F0 8002EAB0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 17E4F4 8002EAB4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 17E4F8 8002EAB8 AFB00020 */  sw         $s0, 0x20($sp)
/* 17E4FC 8002EABC 8C50002C */  lw         $s0, 0x2c($v0)
/* 17E500 8002EAC0 10600005 */  beqz       $v1, .L8002EAD8
/* 17E504 8002EAC4 24020032 */   addiu     $v0, $zero, 0x32
/* 17E508 8002EAC8 1062000A */  beq        $v1, $v0, .L8002EAF4
/* 17E50C 8002EACC 00002021 */   addu      $a0, $zero, $zero
/* 17E510 8002EAD0 0800BAC9 */  j          .L8002EB24
/* 17E514 8002EAD4 00000000 */   nop
.L8002EAD8:
/* 17E518 8002EAD8 3C013F80 */  lui        $at, 0x3f80
/* 17E51C 8002EADC 44810000 */  mtc1       $at, $f0
/* 17E520 8002EAE0 3C018005 */  lui        $at, %hi(D_80051EB0_143CB0)
/* 17E524 8002EAE4 E4201EB0 */  swc1       $f0, %lo(D_80051EB0_143CB0)($at)
/* 17E528 8002EAE8 3C018005 */  lui        $at, %hi(D_80051EB4_143CB4)
/* 17E52C 8002EAEC 0800BAC9 */  j          .L8002EB24
/* 17E530 8002EAF0 E4201EB4 */   swc1      $f0, %lo(D_80051EB4_143CB4)($at)
.L8002EAF4:
/* 17E534 8002EAF4 24050004 */  addiu      $a1, $zero, 4
/* 17E538 8002EAF8 24060002 */  addiu      $a2, $zero, 2
/* 17E53C 8002EAFC 24070111 */  addiu      $a3, $zero, 0x111
/* 17E540 8002EB00 24020001 */  addiu      $v0, $zero, 1
/* 17E544 8002EB04 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 17E548 8002EB08 AC229FA8 */  sw         $v0, %lo(D_80149FA8)($at)
/* 17E54C 8002EB0C 2402004B */  addiu      $v0, $zero, 0x4b
/* 17E550 8002EB10 AFA20010 */  sw         $v0, 0x10($sp)
/* 17E554 8002EB14 2402000B */  addiu      $v0, $zero, 0xb
/* 17E558 8002EB18 AFA20014 */  sw         $v0, 0x14($sp)
/* 17E55C 8002EB1C 0C0E5BE4 */  jal        func_80396F90
/* 17E560 8002EB20 AFA00018 */   sw        $zero, 0x18($sp)
.L8002EB24:
/* 17E564 8002EB24 3C028005 */  lui        $v0, %hi(D_80052038)
/* 17E568 8002EB28 94422038 */  lhu        $v0, %lo(D_80052038)($v0)
/* 17E56C 8002EB2C 2C4200F8 */  sltiu      $v0, $v0, 0xf8
/* 17E570 8002EB30 10400016 */  beqz       $v0, .L8002EB8C
/* 17E574 8002EB34 00000000 */   nop
/* 17E578 8002EB38 3C0139D3 */  lui        $at, 0x39d3
/* 17E57C 8002EB3C 3421680D */  ori        $at, $at, 0x680d
/* 17E580 8002EB40 44810000 */  mtc1       $at, $f0
/* 17E584 8002EB44 3C018005 */  lui        $at, %hi(D_80051EB0_143CB0)
/* 17E588 8002EB48 C4221EB0 */  lwc1       $f2, %lo(D_80051EB0_143CB0)($at)
/* 17E58C 8002EB4C 3C013A13 */  lui        $at, 0x3a13
/* 17E590 8002EB50 3421FC09 */  ori        $at, $at, 0xfc09
/* 17E594 8002EB54 44812000 */  mtc1       $at, $f4
/* 17E598 8002EB58 46001081 */  sub.s      $f2, $f2, $f0
/* 17E59C 8002EB5C 3C018005 */  lui        $at, %hi(D_80051EB4_143CB4)
/* 17E5A0 8002EB60 C4201EB4 */  lwc1       $f0, %lo(D_80051EB4_143CB4)($at)
/* 17E5A4 8002EB64 46040001 */  sub.s      $f0, $f0, $f4
/* 17E5A8 8002EB68 8E040000 */  lw         $a0, ($s0)
/* 17E5AC 8002EB6C 44061000 */  mfc1       $a2, $f2
/* 17E5B0 8002EB70 44070000 */  mfc1       $a3, $f0
/* 17E5B4 8002EB74 3C018005 */  lui        $at, %hi(D_80051EB0_143CB0)
/* 17E5B8 8002EB78 AC261EB0 */  sw         $a2, %lo(D_80051EB0_143CB0)($at)
/* 17E5BC 8002EB7C 3C018005 */  lui        $at, %hi(D_80051EB4_143CB4)
/* 17E5C0 8002EB80 AC271EB4 */  sw         $a3, %lo(D_80051EB4_143CB4)($at)
/* 17E5C4 8002EB84 0C02915B */  jal        func_800A456C
/* 17E5C8 8002EB88 00002821 */   addu      $a1, $zero, $zero
.L8002EB8C:
/* 17E5CC 8002EB8C 8E04000C */  lw         $a0, 0xc($s0)
/* 17E5D0 8002EB90 00002821 */  addu       $a1, $zero, $zero
/* 17E5D4 8002EB94 0C02933E */  jal        func_800A4CF8
/* 17E5D8 8002EB98 2406000A */   addiu     $a2, $zero, 0xa
/* 17E5DC 8002EB9C 240400DC */  addiu      $a0, $zero, 0xdc
/* 17E5E0 8002EBA0 24050002 */  addiu      $a1, $zero, 2
/* 17E5E4 8002EBA4 0C009EE4 */  jal        func_80027B90_1775D0
/* 17E5E8 8002EBA8 24060001 */   addiu     $a2, $zero, 1
/* 17E5EC 8002EBAC 8FBF0024 */  lw         $ra, 0x24($sp)
/* 17E5F0 8002EBB0 8FB00020 */  lw         $s0, 0x20($sp)
/* 17E5F4 8002EBB4 03E00008 */  jr         $ra
/* 17E5F8 8002EBB8 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002EBBC_17E5FC
/* 17E5FC 8002EBBC 3C028004 */  lui        $v0, %hi(D_80046858_196298)
/* 17E600 8002EBC0 90426858 */  lbu        $v0, %lo(D_80046858_196298)($v0)
/* 17E604 8002EBC4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 17E608 8002EBC8 10400020 */  beqz       $v0, .L8002EC4C
/* 17E60C 8002EBCC AFBF0010 */   sw        $ra, 0x10($sp)
/* 17E610 8002EBD0 0C009758 */  jal        func_80025D60_1757A0
/* 17E614 8002EBD4 00000000 */   nop
/* 17E618 8002EBD8 0C02A5D2 */  jal        func_800A9748
/* 17E61C 8002EBDC 24040001 */   addiu     $a0, $zero, 1
/* 17E620 8002EBE0 24020005 */  addiu      $v0, $zero, 5
/* 17E624 8002EBE4 3C018005 */  lui        $at, %hi(D_80052061)
/* 17E628 8002EBE8 A0222061 */  sb         $v0, %lo(D_80052061)($at)
/* 17E62C 8002EBEC 24020001 */  addiu      $v0, $zero, 1
/* 17E630 8002EBF0 3C018005 */  lui        $at, %hi(D_80052006)
/* 17E634 8002EBF4 A0222006 */  sb         $v0, %lo(D_80052006)($at)
/* 17E638 8002EBF8 3C028004 */  lui        $v0, %hi(D_80046828_196268)
/* 17E63C 8002EBFC 24426828 */  addiu      $v0, $v0, %lo(D_80046828_196268)
/* 17E640 8002EC00 3C018004 */  lui        $at, %hi(D_80046858_196298)
/* 17E644 8002EC04 A0206858 */  sb         $zero, %lo(D_80046858_196298)($at)
/* 17E648 8002EC08 3C018005 */  lui        $at, %hi(D_80052060)
/* 17E64C 8002EC0C A0202060 */  sb         $zero, %lo(D_80052060)($at)
/* 17E650 8002EC10 3C018005 */  lui        $at, %hi(D_80052000)
/* 17E654 8002EC14 AC222000 */  sw         $v0, %lo(D_80052000)($at)
/* 17E658 8002EC18 0C032663 */  jal        func_800C998C
/* 17E65C 8002EC1C 24040004 */   addiu     $a0, $zero, 4
/* 17E660 8002EC20 00402021 */  addu       $a0, $v0, $zero
/* 17E664 8002EC24 3C018005 */  lui        $at, %hi(D_80052244)
/* 17E668 8002EC28 AC242244 */  sw         $a0, %lo(D_80052244)($at)
/* 17E66C 8002EC2C 0C030134 */  jal        bzero
/* 17E670 8002EC30 24050004 */   addiu     $a1, $zero, 4
/* 17E674 8002EC34 3C048003 */  lui        $a0, %hi(func_80028084_177AC4)
/* 17E678 8002EC38 24848084 */  addiu      $a0, $a0, %lo(func_80028084_177AC4)
/* 17E67C 8002EC3C 00002821 */  addu       $a1, $zero, $zero
/* 17E680 8002EC40 2406012C */  addiu      $a2, $zero, 0x12c
/* 17E684 8002EC44 0C025D06 */  jal        func_80097418
/* 17E688 8002EC48 00003821 */   addu      $a3, $zero, $zero
.L8002EC4C:
/* 17E68C 8002EC4C 3C038005 */  lui        $v1, %hi(D_80052060)
/* 17E690 8002EC50 90632060 */  lbu        $v1, %lo(D_80052060)($v1)
/* 17E694 8002EC54 24020001 */  addiu      $v0, $zero, 1
/* 17E698 8002EC58 14620008 */  bne        $v1, $v0, .L8002EC7C
/* 17E69C 8002EC5C 00001021 */   addu      $v0, $zero, $zero
/* 17E6A0 8002EC60 3C048005 */  lui        $a0, %hi(D_80052244)
/* 17E6A4 8002EC64 8C842244 */  lw         $a0, %lo(D_80052244)($a0)
/* 17E6A8 8002EC68 24020001 */  addiu      $v0, $zero, 1
/* 17E6AC 8002EC6C 3C018004 */  lui        $at, %hi(D_80046858_196298)
/* 17E6B0 8002EC70 0C0326A1 */  jal        func_800C9A84
/* 17E6B4 8002EC74 A0226858 */   sb        $v0, %lo(D_80046858_196298)($at)
/* 17E6B8 8002EC78 24020001 */  addiu      $v0, $zero, 1
.L8002EC7C:
/* 17E6BC 8002EC7C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 17E6C0 8002EC80 03E00008 */  jr         $ra
/* 17E6C4 8002EC84 27BD0018 */   addiu     $sp, $sp, 0x18
/* 17E6C8 8002EC88 00000000 */  nop
/* 17E6CC 8002EC8C 00000000 */  nop
