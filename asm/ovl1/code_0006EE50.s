.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002AB70_6EE50
/* 6EE50 8002AB70 2402FFFF */  addiu      $v0, $zero, -1
/* 6EE54 8002AB74 3C018003 */  lui        $at, %hi(D_8002F37C)
/* 6EE58 8002AB78 AC20F37C */  sw         $zero, %lo(D_8002F37C)($at)
/* 6EE5C 8002AB7C 3C018003 */  lui        $at, %hi(D_8002F380)
/* 6EE60 8002AB80 03E00008 */  jr         $ra
/* 6EE64 8002AB84 AC22F380 */   sw        $v0, %lo(D_8002F380)($at)

glabel func_8002AB88_6EE68
/* 6EE68 8002AB88 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 6EE6C 8002AB8C AFB00010 */  sw         $s0, 0x10($sp)
/* 6EE70 8002AB90 00808021 */  addu       $s0, $a0, $zero
/* 6EE74 8002AB94 AFBF001C */  sw         $ra, 0x1c($sp)
/* 6EE78 8002AB98 AFB20018 */  sw         $s2, 0x18($sp)
/* 6EE7C 8002AB9C AFB10014 */  sw         $s1, 0x14($sp)
/* 6EE80 8002ABA0 9603001C */  lhu        $v1, 0x1c($s0)
/* 6EE84 8002ABA4 24120001 */  addiu      $s2, $zero, 1
/* 6EE88 8002ABA8 1072001F */  beq        $v1, $s2, .L8002AC28
/* 6EE8C 8002ABAC 28620002 */   slti      $v0, $v1, 2
/* 6EE90 8002ABB0 50400005 */  beql       $v0, $zero, .L8002ABC8
/* 6EE94 8002ABB4 24020002 */   addiu     $v0, $zero, 2
/* 6EE98 8002ABB8 10600009 */  beqz       $v1, .L8002ABE0
/* 6EE9C 8002ABBC 00000000 */   nop
/* 6EEA0 8002ABC0 0800AB2F */  j          .L8002ACBC
/* 6EEA4 8002ABC4 00000000 */   nop
.L8002ABC8:
/* 6EEA8 8002ABC8 10620020 */  beq        $v1, $v0, .L8002AC4C
/* 6EEAC 8002ABCC 3402FFFF */   ori       $v0, $zero, 0xffff
/* 6EEB0 8002ABD0 10620034 */  beq        $v1, $v0, .L8002ACA4
/* 6EEB4 8002ABD4 00000000 */   nop
/* 6EEB8 8002ABD8 0800AB2F */  j          .L8002ACBC
/* 6EEBC 8002ABDC 00000000 */   nop
.L8002ABE0:
/* 6EEC0 8002ABE0 0C032663 */  jal        func_800C998C
/* 6EEC4 8002ABE4 240400A0 */   addiu     $a0, $zero, 0xa0
/* 6EEC8 8002ABE8 00402021 */  addu       $a0, $v0, $zero
/* 6EECC 8002ABEC 240500A0 */  addiu      $a1, $zero, 0xa0
/* 6EED0 8002ABF0 0C030134 */  jal        bzero
/* 6EED4 8002ABF4 AE040014 */   sw        $a0, 0x14($s0)
/* 6EED8 8002ABF8 8E040014 */  lw         $a0, 0x14($s0)
/* 6EEDC 8002ABFC 0C00AB88 */  jal        func_8002AE20_6F100
/* 6EEE0 8002AC00 00000000 */   nop
/* 6EEE4 8002AC04 00001021 */  addu       $v0, $zero, $zero
/* 6EEE8 8002AC08 2403FFFF */  addiu      $v1, $zero, -1
/* 6EEEC 8002AC0C 3C018003 */  lui        $at, %hi(D_8002F380)
/* 6EEF0 8002AC10 AC23F380 */  sw         $v1, %lo(D_8002F380)($at)
/* 6EEF4 8002AC14 24030001 */  addiu      $v1, $zero, 1
/* 6EEF8 8002AC18 3C018003 */  lui        $at, %hi(D_8002F37C)
/* 6EEFC 8002AC1C AC20F37C */  sw         $zero, %lo(D_8002F37C)($at)
/* 6EF00 8002AC20 0800AB2F */  j          .L8002ACBC
/* 6EF04 8002AC24 A603001C */   sh        $v1, 0x1c($s0)
.L8002AC28:
/* 6EF08 8002AC28 8E040014 */  lw         $a0, 0x14($s0)
/* 6EF0C 8002AC2C 0C00AE35 */  jal        func_8002B8D4_6FBB4
/* 6EF10 8002AC30 00000000 */   nop
/* 6EF14 8002AC34 50400021 */  beql       $v0, $zero, .L8002ACBC
/* 6EF18 8002AC38 00001021 */   addu      $v0, $zero, $zero
/* 6EF1C 8002AC3C 0C02DB14 */  jal        func_800B6C50
/* 6EF20 8002AC40 00002021 */   addu      $a0, $zero, $zero
/* 6EF24 8002AC44 0800AB26 */  j          .L8002AC98
/* 6EF28 8002AC48 24020002 */   addiu     $v0, $zero, 2
.L8002AC4C:
/* 6EF2C 8002AC4C 0C02A77B */  jal        func_800A9DEC
/* 6EF30 8002AC50 2411FFFF */   addiu     $s1, $zero, -1
/* 6EF34 8002AC54 10510005 */  beq        $v0, $s1, .L8002AC6C
/* 6EF38 8002AC58 00000000 */   nop
/* 6EF3C 8002AC5C 10520007 */  beq        $v0, $s2, .L8002AC7C
/* 6EF40 8002AC60 00000000 */   nop
/* 6EF44 8002AC64 0800AB2F */  j          .L8002ACBC
/* 6EF48 8002AC68 00001021 */   addu      $v0, $zero, $zero
.L8002AC6C:
/* 6EF4C 8002AC6C 0C02DB14 */  jal        func_800B6C50
/* 6EF50 8002AC70 00002021 */   addu      $a0, $zero, $zero
/* 6EF54 8002AC74 0800AB26 */  j          .L8002AC98
/* 6EF58 8002AC78 3402FFFF */   ori       $v0, $zero, 0xffff
.L8002AC7C:
/* 6EF5C 8002AC7C 0C02DB14 */  jal        func_800B6C50
/* 6EF60 8002AC80 00002021 */   addu      $a0, $zero, $zero
/* 6EF64 8002AC84 24020001 */  addiu      $v0, $zero, 1
/* 6EF68 8002AC88 3C018003 */  lui        $at, %hi(D_8002F37C)
/* 6EF6C 8002AC8C AC20F37C */  sw         $zero, %lo(D_8002F37C)($at)
/* 6EF70 8002AC90 3C018003 */  lui        $at, %hi(D_8002F380)
/* 6EF74 8002AC94 AC31F380 */  sw         $s1, %lo(D_8002F380)($at)
.L8002AC98:
/* 6EF78 8002AC98 A602001C */  sh         $v0, 0x1c($s0)
/* 6EF7C 8002AC9C 0800AB2F */  j          .L8002ACBC
/* 6EF80 8002ACA0 00001021 */   addu      $v0, $zero, $zero
.L8002ACA4:
/* 6EF84 8002ACA4 8E040014 */  lw         $a0, 0x14($s0)
/* 6EF88 8002ACA8 0C00ABC0 */  jal        func_8002AF00_6F1E0
/* 6EF8C 8002ACAC 00000000 */   nop
/* 6EF90 8002ACB0 0C0326A1 */  jal        func_800C9A84
/* 6EF94 8002ACB4 8E040014 */   lw        $a0, 0x14($s0)
/* 6EF98 8002ACB8 24020001 */  addiu      $v0, $zero, 1
.L8002ACBC:
/* 6EF9C 8002ACBC 8FBF001C */  lw         $ra, 0x1c($sp)
/* 6EFA0 8002ACC0 8FB20018 */  lw         $s2, 0x18($sp)
/* 6EFA4 8002ACC4 8FB10014 */  lw         $s1, 0x14($sp)
/* 6EFA8 8002ACC8 8FB00010 */  lw         $s0, 0x10($sp)
/* 6EFAC 8002ACCC 03E00008 */  jr         $ra
/* 6EFB0 8002ACD0 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002ACD4_6EFB4
/* 6EFB4 8002ACD4 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 6EFB8 8002ACD8 AFB1001C */  sw         $s1, 0x1c($sp)
/* 6EFBC 8002ACDC 00808821 */  addu       $s1, $a0, $zero
/* 6EFC0 8002ACE0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 6EFC4 8002ACE4 AFB00018 */  sw         $s0, 0x18($sp)
/* 6EFC8 8002ACE8 86240000 */  lh         $a0, ($s1)
/* 6EFCC 8002ACEC 3C058003 */  lui        $a1, %hi(D_8002EFF0)
/* 6EFD0 8002ACF0 8CA5EFF0 */  lw         $a1, %lo(D_8002EFF0)($a1)
/* 6EFD4 8002ACF4 0C027DAC */  jal        func_8009F6B0
/* 6EFD8 8002ACF8 00003021 */   addu      $a2, $zero, $zero
/* 6EFDC 8002ACFC 3C038003 */  lui        $v1, %hi(D_8002EFF8)
/* 6EFE0 8002AD00 8C63EFF8 */  lw         $v1, %lo(D_8002EFF8)($v1)
/* 6EFE4 8002AD04 2410FFFF */  addiu      $s0, $zero, -1
/* 6EFE8 8002AD08 AE220004 */  sw         $v0, 4($s1)
/* 6EFEC 8002AD0C AE200008 */  sw         $zero, 8($s1)
/* 6EFF0 8002AD10 1070002F */  beq        $v1, $s0, .L8002ADD0
/* 6EFF4 8002AD14 AE20000C */   sw        $zero, 0xc($s1)
/* 6EFF8 8002AD18 86240000 */  lh         $a0, ($s1)
/* 6EFFC 8002AD1C 0C027D50 */  jal        func_8009F540
/* 6F000 8002AD20 00000000 */   nop
/* 6F004 8002AD24 00402821 */  addu       $a1, $v0, $zero
/* 6F008 8002AD28 10A00029 */  beqz       $a1, .L8002ADD0
/* 6F00C 8002AD2C 00000000 */   nop
/* 6F010 8002AD30 84A20002 */  lh         $v0, 2($a1)
/* 6F014 8002AD34 3C048003 */  lui        $a0, %hi(D_8002EFF8)
/* 6F018 8002AD38 8C84EFF8 */  lw         $a0, %lo(D_8002EFF8)($a0)
/* 6F01C 8002AD3C 2443FFFF */  addiu      $v1, $v0, -1
/* 6F020 8002AD40 0064102A */  slt        $v0, $v1, $a0
/* 6F024 8002AD44 10400004 */  beqz       $v0, .L8002AD58
/* 6F028 8002AD48 2882FFFF */   slti      $v0, $a0, -1
/* 6F02C 8002AD4C 3C018003 */  lui        $at, %hi(D_8002EFF8)
/* 6F030 8002AD50 0800AB5A */  j          .L8002AD68
/* 6F034 8002AD54 AC23EFF8 */   sw        $v1, %lo(D_8002EFF8)($at)
.L8002AD58:
/* 6F038 8002AD58 10400003 */  beqz       $v0, .L8002AD68
/* 6F03C 8002AD5C 00000000 */   nop
/* 6F040 8002AD60 3C018003 */  lui        $at, %hi(D_8002EFF8)
/* 6F044 8002AD64 AC30EFF8 */  sw         $s0, %lo(D_8002EFF8)($at)
.L8002AD68:
/* 6F048 8002AD68 3C028003 */  lui        $v0, %hi(D_8002EFF8)
/* 6F04C 8002AD6C 8C42EFF8 */  lw         $v0, %lo(D_8002EFF8)($v0)
/* 6F050 8002AD70 8CB00004 */  lw         $s0, 4($a1)
/* 6F054 8002AD74 00021100 */  sll        $v0, $v0, 4
/* 6F058 8002AD78 02028021 */  addu       $s0, $s0, $v0
/* 6F05C 8002AD7C 86040000 */  lh         $a0, ($s0)
/* 6F060 8002AD80 8E050004 */  lw         $a1, 4($s0)
/* 6F064 8002AD84 0C027814 */  jal        func_8009E050
/* 6F068 8002AD88 00003021 */   addu      $a2, $zero, $zero
/* 6F06C 8002AD8C AE220008 */  sw         $v0, 8($s1)
/* 6F070 8002AD90 86050002 */  lh         $a1, 2($s0)
/* 6F074 8002AD94 2402FFFF */  addiu      $v0, $zero, -1
/* 6F078 8002AD98 10A20007 */  beq        $a1, $v0, .L8002ADB8
/* 6F07C 8002AD9C 00000000 */   nop
/* 6F080 8002ADA0 92070008 */  lbu        $a3, 8($s0)
/* 6F084 8002ADA4 AFA00010 */  sw         $zero, 0x10($sp)
/* 6F088 8002ADA8 8E240004 */  lw         $a0, 4($s1)
/* 6F08C 8002ADAC 0C027B10 */  jal        func_8009EC40
/* 6F090 8002ADB0 8E060004 */   lw        $a2, 4($s0)
/* 6F094 8002ADB4 AE22000C */  sw         $v0, 0xc($s1)
.L8002ADB8:
/* 6F098 8002ADB8 8E02000C */  lw         $v0, 0xc($s0)
/* 6F09C 8002ADBC AE220010 */  sw         $v0, 0x10($s1)
/* 6F0A0 8002ADC0 C6000004 */  lwc1       $f0, 4($s0)
/* 6F0A4 8002ADC4 4600008D */  trunc.w.s  $f2, $f0
/* 6F0A8 8002ADC8 3C018003 */  lui        $at, %hi(D_8002EFFC)
/* 6F0AC 8002ADCC E422EFFC */  swc1       $f2, %lo(D_8002EFFC)($at)
.L8002ADD0:
/* 6F0B0 8002ADD0 8FBF0020 */  lw         $ra, 0x20($sp)
/* 6F0B4 8002ADD4 8FB1001C */  lw         $s1, 0x1c($sp)
/* 6F0B8 8002ADD8 8FB00018 */  lw         $s0, 0x18($sp)
/* 6F0BC 8002ADDC 03E00008 */  jr         $ra
/* 6F0C0 8002ADE0 27BD0028 */   addiu     $sp, $sp, 0x28

glabel func_8002ADE4_6F0C4
/* 6F0C4 8002ADE4 3C013CA3 */  lui        $at, 0x3ca3
/* 6F0C8 8002ADE8 3421D70A */  ori        $at, $at, 0xd70a
/* 6F0CC 8002ADEC 44810000 */  mtc1       $at, $f0
/* 6F0D0 8002ADF0 AC800014 */  sw         $zero, 0x14($a0)
/* 6F0D4 8002ADF4 AC800018 */  sw         $zero, 0x18($a0)
/* 6F0D8 8002ADF8 AC80001C */  sw         $zero, 0x1c($a0)
/* 6F0DC 8002ADFC AC800020 */  sw         $zero, 0x20($a0)
/* 6F0E0 8002AE00 AC800024 */  sw         $zero, 0x24($a0)
/* 6F0E4 8002AE04 AC800028 */  sw         $zero, 0x28($a0)
/* 6F0E8 8002AE08 AC800030 */  sw         $zero, 0x30($a0)
/* 6F0EC 8002AE0C AC800034 */  sw         $zero, 0x34($a0)
/* 6F0F0 8002AE10 AC800038 */  sw         $zero, 0x38($a0)
/* 6F0F4 8002AE14 A0800094 */  sb         $zero, 0x94($a0)
/* 6F0F8 8002AE18 03E00008 */  jr         $ra
/* 6F0FC 8002AE1C E480002C */   swc1      $f0, 0x2c($a0)

glabel func_8002AE20_6F100
/* 6F100 8002AE20 3C013CA3 */  lui        $at, 0x3ca3
/* 6F104 8002AE24 3421D70A */  ori        $at, $at, 0xd70a
/* 6F108 8002AE28 44810000 */  mtc1       $at, $f0
/* 6F10C 8002AE2C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F110 8002AE30 AFB00010 */  sw         $s0, 0x10($sp)
/* 6F114 8002AE34 24100001 */  addiu      $s0, $zero, 1
/* 6F118 8002AE38 AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F11C 8002AE3C 3C018017 */  lui        $at, %hi(D_8016D16C)
/* 6F120 8002AE40 AC30D16C */  sw         $s0, %lo(D_8016D16C)($at)
/* 6F124 8002AE44 A4800000 */  sh         $zero, ($a0)
/* 6F128 8002AE48 AC800090 */  sw         $zero, 0x90($a0)
/* 6F12C 8002AE4C AC800098 */  sw         $zero, 0x98($a0)
/* 6F130 8002AE50 A080009C */  sb         $zero, 0x9c($a0)
/* 6F134 8002AE54 AC800014 */  sw         $zero, 0x14($a0)
/* 6F138 8002AE58 AC800018 */  sw         $zero, 0x18($a0)
/* 6F13C 8002AE5C AC80001C */  sw         $zero, 0x1c($a0)
/* 6F140 8002AE60 AC800020 */  sw         $zero, 0x20($a0)
/* 6F144 8002AE64 AC800024 */  sw         $zero, 0x24($a0)
/* 6F148 8002AE68 AC800028 */  sw         $zero, 0x28($a0)
/* 6F14C 8002AE6C AC800030 */  sw         $zero, 0x30($a0)
/* 6F150 8002AE70 AC800034 */  sw         $zero, 0x34($a0)
/* 6F154 8002AE74 AC800038 */  sw         $zero, 0x38($a0)
/* 6F158 8002AE78 A0800094 */  sb         $zero, 0x94($a0)
/* 6F15C 8002AE7C 0C00AB35 */  jal        func_8002ACD4_6EFB4
/* 6F160 8002AE80 E480002C */   swc1      $f0, 0x2c($a0)
/* 6F164 8002AE84 240200FF */  addiu      $v0, $zero, 0xff
/* 6F168 8002AE88 3C018003 */  lui        $at, %hi(D_80030968)
/* 6F16C 8002AE8C AC220968 */  sw         $v0, %lo(D_80030968)($at)
/* 6F170 8002AE90 3C018003 */  lui        $at, %hi(D_8003096C)
/* 6F174 8002AE94 AC22096C */  sw         $v0, %lo(D_8003096C)($at)
/* 6F178 8002AE98 3C018003 */  lui        $at, %hi(D_80030970)
/* 6F17C 8002AE9C AC220970 */  sw         $v0, %lo(D_80030970)($at)
/* 6F180 8002AEA0 24020080 */  addiu      $v0, $zero, 0x80
/* 6F184 8002AEA4 3C018003 */  lui        $at, %hi(D_80030974)
/* 6F188 8002AEA8 AC220974 */  sw         $v0, %lo(D_80030974)($at)
/* 6F18C 8002AEAC 2402FFFF */  addiu      $v0, $zero, -1
/* 6F190 8002AEB0 3C018003 */  lui        $at, %hi(D_8002F00C)
/* 6F194 8002AEB4 AC22F00C */  sw         $v0, %lo(D_8002F00C)($at)
/* 6F198 8002AEB8 24020140 */  addiu      $v0, $zero, 0x140
/* 6F19C 8002AEBC 3C018017 */  lui        $at, %hi(D_8016D040)
/* 6F1A0 8002AEC0 AC22D040 */  sw         $v0, %lo(D_8016D040)($at)
/* 6F1A4 8002AEC4 240200F0 */  addiu      $v0, $zero, 0xf0
/* 6F1A8 8002AEC8 3C018003 */  lui        $at, %hi(D_80030948)
/* 6F1AC 8002AECC AC300948 */  sw         $s0, %lo(D_80030948)($at)
/* 6F1B0 8002AED0 3C018003 */  lui        $at, %hi(D_8003094C)
/* 6F1B4 8002AED4 AC30094C */  sw         $s0, %lo(D_8003094C)($at)
/* 6F1B8 8002AED8 3C018015 */  lui        $at, %hi(D_80149FB0)
/* 6F1BC 8002AEDC AC209FB0 */  sw         $zero, %lo(D_80149FB0)($at)
/* 6F1C0 8002AEE0 3C018015 */  lui        $at, %hi(D_80149FA4)
/* 6F1C4 8002AEE4 AC209FA4 */  sw         $zero, %lo(D_80149FA4)($at)
/* 6F1C8 8002AEE8 3C018015 */  lui        $at, %hi(D_8014A2C8)
/* 6F1CC 8002AEEC AC22A2C8 */  sw         $v0, %lo(D_8014A2C8)($at)
/* 6F1D0 8002AEF0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F1D4 8002AEF4 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F1D8 8002AEF8 03E00008 */  jr         $ra
/* 6F1DC 8002AEFC 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002AF00_6F1E0
/* 6F1E0 8002AF00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6F1E4 8002AF04 AFB00010 */  sw         $s0, 0x10($sp)
/* 6F1E8 8002AF08 00808021 */  addu       $s0, $a0, $zero
/* 6F1EC 8002AF0C AFBF0014 */  sw         $ra, 0x14($sp)
/* 6F1F0 8002AF10 8E040004 */  lw         $a0, 4($s0)
/* 6F1F4 8002AF14 24020001 */  addiu      $v0, $zero, 1
/* 6F1F8 8002AF18 3C018017 */  lui        $at, %hi(D_8016D16C)
/* 6F1FC 8002AF1C AC20D16C */  sw         $zero, %lo(D_8016D16C)($at)
/* 6F200 8002AF20 3C018017 */  lui        $at, %hi(D_8016D5B4)
/* 6F204 8002AF24 AC22D5B4 */  sw         $v0, %lo(D_8016D5B4)($at)
/* 6F208 8002AF28 3C018015 */  lui        $at, %hi(D_8014C370)
/* 6F20C 8002AF2C 0C027E98 */  jal        func_8009FA60
/* 6F210 8002AF30 AC22C370 */   sw        $v0, %lo(D_8014C370)($at)
/* 6F214 8002AF34 0C027880 */  jal        func_8009E200
/* 6F218 8002AF38 8E040008 */   lw        $a0, 8($s0)
/* 6F21C 8002AF3C 0C027BB8 */  jal        func_8009EEE0
/* 6F220 8002AF40 8E04000C */   lw        $a0, 0xc($s0)
/* 6F224 8002AF44 8E040090 */  lw         $a0, 0x90($s0)
/* 6F228 8002AF48 10800004 */  beqz       $a0, .L8002AF5C
/* 6F22C 8002AF4C 24020010 */   addiu     $v0, $zero, 0x10
/* 6F230 8002AF50 0C0326A1 */  jal        func_800C9A84
/* 6F234 8002AF54 00000000 */   nop
/* 6F238 8002AF58 24020010 */  addiu      $v0, $zero, 0x10
.L8002AF5C:
/* 6F23C 8002AF5C 3C018015 */  lui        $at, %hi(D_80149FB0)
/* 6F240 8002AF60 AC229FB0 */  sw         $v0, %lo(D_80149FB0)($at)
/* 6F244 8002AF64 3C018015 */  lui        $at, %hi(D_80149FA4)
/* 6F248 8002AF68 AC229FA4 */  sw         $v0, %lo(D_80149FA4)($at)
/* 6F24C 8002AF6C 24020130 */  addiu      $v0, $zero, 0x130
/* 6F250 8002AF70 3C018017 */  lui        $at, %hi(D_8016D040)
/* 6F254 8002AF74 AC22D040 */  sw         $v0, %lo(D_8016D040)($at)
/* 6F258 8002AF78 240200E0 */  addiu      $v0, $zero, 0xe0
/* 6F25C 8002AF7C 3C018015 */  lui        $at, %hi(D_8014A2C8)
/* 6F260 8002AF80 AC22A2C8 */  sw         $v0, %lo(D_8014A2C8)($at)
/* 6F264 8002AF84 24020001 */  addiu      $v0, $zero, 1
/* 6F268 8002AF88 3C018003 */  lui        $at, %hi(D_80030A30)
/* 6F26C 8002AF8C A0220A30 */  sb         $v0, %lo(D_80030A30)($at)
/* 6F270 8002AF90 8FBF0014 */  lw         $ra, 0x14($sp)
/* 6F274 8002AF94 8FB00010 */  lw         $s0, 0x10($sp)
/* 6F278 8002AF98 03E00008 */  jr         $ra
/* 6F27C 8002AF9C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002AFA0_6F280
/* 6F280 8002AFA0 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 6F284 8002AFA4 AFB1002C */  sw         $s1, 0x2c($sp)
/* 6F288 8002AFA8 00808821 */  addu       $s1, $a0, $zero
/* 6F28C 8002AFAC 00002021 */  addu       $a0, $zero, $zero
/* 6F290 8002AFB0 2405000E */  addiu      $a1, $zero, 0xe
/* 6F294 8002AFB4 AFBF0040 */  sw         $ra, 0x40($sp)
/* 6F298 8002AFB8 AFB5003C */  sw         $s5, 0x3c($sp)
/* 6F29C 8002AFBC AFB40038 */  sw         $s4, 0x38($sp)
/* 6F2A0 8002AFC0 AFB30034 */  sw         $s3, 0x34($sp)
/* 6F2A4 8002AFC4 AFB20030 */  sw         $s2, 0x30($sp)
/* 6F2A8 8002AFC8 0C02DAC0 */  jal        func_800B6B00
/* 6F2AC 8002AFCC AFB00028 */   sw        $s0, 0x28($sp)
/* 6F2B0 8002AFD0 00002021 */  addu       $a0, $zero, $zero
/* 6F2B4 8002AFD4 2405000E */  addiu      $a1, $zero, 0xe
/* 6F2B8 8002AFD8 0C02DAE0 */  jal        func_800B6B80
/* 6F2BC 8002AFDC 24060004 */   addiu     $a2, $zero, 4
/* 6F2C0 8002AFE0 3C058003 */  lui        $a1, %hi(D_80030248)
/* 6F2C4 8002AFE4 24A50248 */  addiu      $a1, $a1, %lo(D_80030248)
/* 6F2C8 8002AFE8 0C02DA9C */  jal        func_800B6A70
/* 6F2CC 8002AFEC 00002021 */   addu      $a0, $zero, $zero
/* 6F2D0 8002AFF0 3C028015 */  lui        $v0, %hi(D_8014CF98)
/* 6F2D4 8002AFF4 9442CF98 */  lhu        $v0, %lo(D_8014CF98)($v0)
/* 6F2D8 8002AFF8 30421000 */  andi       $v0, $v0, 0x1000
/* 6F2DC 8002AFFC 10400023 */  beqz       $v0, .L8002B08C
/* 6F2E0 8002B000 00000000 */   nop
/* 6F2E4 8002B004 0C02725C */  jal        func_8009C970
/* 6F2E8 8002B008 00000000 */   nop
/* 6F2EC 8002B00C 3C01BF80 */  lui        $at, 0xbf80
/* 6F2F0 8002B010 44810000 */  mtc1       $at, $f0
/* 6F2F4 8002B014 3C018015 */  lui        $at, %hi(D_8014A054)
/* 6F2F8 8002B018 AC20A054 */  sw         $zero, %lo(D_8014A054)($at)
/* 6F2FC 8002B01C 3C018015 */  lui        $at, %hi(D_8014A050)
/* 6F300 8002B020 AC20A050 */  sw         $zero, %lo(D_8014A050)($at)
/* 6F304 8002B024 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 6F308 8002B028 AC20D1A8 */  sw         $zero, %lo(D_8016D1A8)($at)
/* 6F30C 8002B02C 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 6F310 8002B030 AC209ECC */  sw         $zero, %lo(D_80149ECC)($at)
/* 6F314 8002B034 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 6F318 8002B038 AC20A02C */  sw         $zero, %lo(D_8014A02C)($at)
/* 6F31C 8002B03C 3C018017 */  lui        $at, %hi(D_8016D824)
/* 6F320 8002B040 AC20D824 */  sw         $zero, %lo(D_8016D824)($at)
/* 6F324 8002B044 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 6F328 8002B048 0C027224 */  jal        func_8009C890
/* 6F32C 8002B04C E420A2A0 */   swc1      $f0, %lo(D_8014A2A0)($at)
/* 6F330 8002B050 3C013CA3 */  lui        $at, 0x3ca3
/* 6F334 8002B054 3421D70A */  ori        $at, $at, 0xd70a
/* 6F338 8002B058 44810000 */  mtc1       $at, $f0
/* 6F33C 8002B05C AE200014 */  sw         $zero, 0x14($s1)
/* 6F340 8002B060 AE200018 */  sw         $zero, 0x18($s1)
/* 6F344 8002B064 AE20001C */  sw         $zero, 0x1c($s1)
/* 6F348 8002B068 AE200020 */  sw         $zero, 0x20($s1)
/* 6F34C 8002B06C AE200024 */  sw         $zero, 0x24($s1)
/* 6F350 8002B070 AE200028 */  sw         $zero, 0x28($s1)
/* 6F354 8002B074 AE200030 */  sw         $zero, 0x30($s1)
/* 6F358 8002B078 AE200034 */  sw         $zero, 0x34($s1)
/* 6F35C 8002B07C AE200038 */  sw         $zero, 0x38($s1)
/* 6F360 8002B080 A2200094 */  sb         $zero, 0x94($s1)
/* 6F364 8002B084 0800AC5F */  j          .L8002B17C
/* 6F368 8002B088 E620002C */   swc1      $f0, 0x2c($s1)
.L8002B08C:
/* 6F36C 8002B08C 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 6F370 8002B090 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 6F374 8002B094 30421000 */  andi       $v0, $v0, 0x1000
/* 6F378 8002B098 10400038 */  beqz       $v0, .L8002B17C
/* 6F37C 8002B09C 00000000 */   nop
/* 6F380 8002B0A0 82230094 */  lb         $v1, 0x94($s1)
/* 6F384 8002B0A4 2C620005 */  sltiu      $v0, $v1, 5
/* 6F388 8002B0A8 10400034 */  beqz       $v0, .L8002B17C
/* 6F38C 8002B0AC 00031080 */   sll       $v0, $v1, 2
/* 6F390 8002B0B0 3C018003 */  lui        $at, %hi(D_800302C0)
/* 6F394 8002B0B4 00220821 */  addu       $at, $at, $v0
/* 6F398 8002B0B8 8C2202C0 */  lw         $v0, %lo(D_800302C0)($at)
/* 6F39C 8002B0BC 00400008 */  jr         $v0
/* 6F3A0 8002B0C0 00000000 */   nop
/* 6F3A4 8002B0C4 3C01C2C8 */  lui        $at, 0xc2c8
/* 6F3A8 8002B0C8 44810000 */  mtc1       $at, $f0
/* 6F3AC 8002B0CC 3C018015 */  lui        $at, %hi(D_8014A07C)
/* 6F3B0 8002B0D0 AC20A07C */  sw         $zero, %lo(D_8014A07C)($at)
/* 6F3B4 8002B0D4 3C018015 */  lui        $at, %hi(D_8014A080)
/* 6F3B8 8002B0D8 AC20A080 */  sw         $zero, %lo(D_8014A080)($at)
/* 6F3BC 8002B0DC 3C018015 */  lui        $at, %hi(D_8014A084)
/* 6F3C0 8002B0E0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* 6F3C4 8002B0E4 3C018015 */  lui        $at, %hi(D_8014A088)
/* 6F3C8 8002B0E8 0800AC5F */  j          .L8002B17C
/* 6F3CC 8002B0EC E420A088 */   swc1      $f0, %lo(D_8014A088)($at)
/* 6F3D0 8002B0F0 3C018015 */  lui        $at, %hi(D_8014A064)
/* 6F3D4 8002B0F4 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* 6F3D8 8002B0F8 3C018015 */  lui        $at, %hi(D_8014A068)
/* 6F3DC 8002B0FC AC20A068 */  sw         $zero, %lo(D_8014A068)($at)
/* 6F3E0 8002B100 3C018015 */  lui        $at, %hi(D_8014A06C)
/* 6F3E4 8002B104 0800AC5F */  j          .L8002B17C
/* 6F3E8 8002B108 AC20A06C */   sw        $zero, %lo(D_8014A06C)($at)
/* 6F3EC 8002B10C 3C01BF80 */  lui        $at, 0xbf80
/* 6F3F0 8002B110 44810000 */  mtc1       $at, $f0
/* 6F3F4 8002B114 3C018015 */  lui        $at, %hi(D_80149ECC)
/* 6F3F8 8002B118 AC209ECC */  sw         $zero, %lo(D_80149ECC)($at)
/* 6F3FC 8002B11C 3C018015 */  lui        $at, %hi(D_8014A02C)
/* 6F400 8002B120 AC20A02C */  sw         $zero, %lo(D_8014A02C)($at)
/* 6F404 8002B124 3C018017 */  lui        $at, %hi(D_8016D824)
/* 6F408 8002B128 AC20D824 */  sw         $zero, %lo(D_8016D824)($at)
/* 6F40C 8002B12C 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* 6F410 8002B130 0C027224 */  jal        func_8009C890
/* 6F414 8002B134 E420A2A0 */   swc1      $f0, %lo(D_8014A2A0)($at)
/* 6F418 8002B138 0800AC5F */  j          .L8002B17C
/* 6F41C 8002B13C 00000000 */   nop
/* 6F420 8002B140 44800000 */  mtc1       $zero, $f0
/* 6F424 8002B144 00000000 */  nop
/* 6F428 8002B148 E620001C */  swc1       $f0, 0x1c($s1)
/* 6F42C 8002B14C E6200018 */  swc1       $f0, 0x18($s1)
/* 6F430 8002B150 0800AC5F */  j          .L8002B17C
/* 6F434 8002B154 E6200014 */   swc1      $f0, 0x14($s1)
/* 6F438 8002B158 3C013CA3 */  lui        $at, 0x3ca3
/* 6F43C 8002B15C 3421D70A */  ori        $at, $at, 0xd70a
/* 6F440 8002B160 44811000 */  mtc1       $at, $f2
/* 6F444 8002B164 44800000 */  mtc1       $zero, $f0
/* 6F448 8002B168 00000000 */  nop
/* 6F44C 8002B16C E6200028 */  swc1       $f0, 0x28($s1)
/* 6F450 8002B170 E6200024 */  swc1       $f0, 0x24($s1)
/* 6F454 8002B174 E6200020 */  swc1       $f0, 0x20($s1)
/* 6F458 8002B178 E622002C */  swc1       $f2, 0x2c($s1)
.L8002B17C:
/* 6F45C 8002B17C 3C108003 */  lui        $s0, %hi(D_8002EFF0)
/* 6F460 8002B180 8E10EFF0 */  lw         $s0, %lo(D_8002EFF0)($s0)
/* 6F464 8002B184 3C158015 */  lui        $s5, %hi(D_80149BA8)
/* 6F468 8002B188 8EB59BA8 */  lw         $s5, %lo(D_80149BA8)($s5)
/* 6F46C 8002B18C 3C128003 */  lui        $s2, %hi(D_8002EFF8)
/* 6F470 8002B190 8E52EFF8 */  lw         $s2, %lo(D_8002EFF8)($s2)
/* 6F474 8002B194 3C138003 */  lui        $s3, %hi(D_8002F00C)
/* 6F478 8002B198 8E73F00C */  lw         $s3, %lo(D_8002F00C)($s3)
/* 6F47C 8002B19C 0C027444 */  jal        func_8009D110
/* 6F480 8002B1A0 00002021 */   addu      $a0, $zero, $zero
/* 6F484 8002B1A4 3C048003 */  lui        $a0, %hi(D_8002F3B0)
/* 6F488 8002B1A8 0C027752 */  jal        func_8009DD48
/* 6F48C 8002B1AC 2484F3B0 */   addiu     $a0, $a0, %lo(D_8002F3B0)
/* 6F490 8002B1B0 8E230004 */  lw         $v1, 4($s1)
/* 6F494 8002B1B4 84630064 */  lh         $v1, 0x64($v1)
/* 6F498 8002B1B8 3C048015 */  lui        $a0, %hi(D_80149BA8)
/* 6F49C 8002B1BC 8C849BA8 */  lw         $a0, %lo(D_80149BA8)($a0)
/* 6F4A0 8002B1C0 0040A021 */  addu       $s4, $v0, $zero
/* 6F4A4 8002B1C4 2463FFFF */  addiu      $v1, $v1, -1
/* 6F4A8 8002B1C8 0064102A */  slt        $v0, $v1, $a0
/* 6F4AC 8002B1CC 10400005 */  beqz       $v0, .L8002B1E4
/* 6F4B0 8002B1D0 2882FFFF */   slti      $v0, $a0, -1
/* 6F4B4 8002B1D4 3C018015 */  lui        $at, %hi(D_80149BA8)
/* 6F4B8 8002B1D8 AC239BA8 */  sw         $v1, %lo(D_80149BA8)($at)
/* 6F4BC 8002B1DC 0800AC7E */  j          .L8002B1F8
/* 6F4C0 8002B1E0 24020004 */   addiu     $v0, $zero, 4
.L8002B1E4:
/* 6F4C4 8002B1E4 10400003 */  beqz       $v0, .L8002B1F4
/* 6F4C8 8002B1E8 2402FFFF */   addiu     $v0, $zero, -1
/* 6F4CC 8002B1EC 3C018015 */  lui        $at, %hi(D_80149BA8)
/* 6F4D0 8002B1F0 AC229BA8 */  sw         $v0, %lo(D_80149BA8)($at)
.L8002B1F4:
/* 6F4D4 8002B1F4 24020004 */  addiu      $v0, $zero, 4
.L8002B1F8:
/* 6F4D8 8002B1F8 16820010 */  bne        $s4, $v0, .L8002B23C
/* 6F4DC 8002B1FC 00000000 */   nop
/* 6F4E0 8002B200 3C028003 */  lui        $v0, %hi(D_8002F2BF)
/* 6F4E4 8002B204 9042F2BF */  lbu        $v0, %lo(D_8002F2BF)($v0)
/* 6F4E8 8002B208 3C048003 */  lui        $a0, %hi(D_8002F2AF)
/* 6F4EC 8002B20C 9084F2AF */  lbu        $a0, %lo(D_8002F2AF)($a0)
/* 6F4F0 8002B210 3C058003 */  lui        $a1, %hi(D_8002F2B3)
/* 6F4F4 8002B214 90A5F2B3 */  lbu        $a1, %lo(D_8002F2B3)($a1)
/* 6F4F8 8002B218 3C068003 */  lui        $a2, %hi(D_8002F2B7)
/* 6F4FC 8002B21C 90C6F2B7 */  lbu        $a2, %lo(D_8002F2B7)($a2)
/* 6F500 8002B220 3C078003 */  lui        $a3, %hi(D_8002F2BB)
/* 6F504 8002B224 90E7F2BB */  lbu        $a3, %lo(D_8002F2BB)($a3)
/* 6F508 8002B228 3C038003 */  lui        $v1, %hi(D_8002F2C3)
/* 6F50C 8002B22C 9063F2C3 */  lbu        $v1, %lo(D_8002F2C3)($v1)
/* 6F510 8002B230 AFA20010 */  sw         $v0, 0x10($sp)
/* 6F514 8002B234 0C02A603 */  jal        func_800A980C
/* 6F518 8002B238 AFA30014 */   sw        $v1, 0x14($sp)
.L8002B23C:
/* 6F51C 8002B23C 86250000 */  lh         $a1, ($s1)
/* 6F520 8002B240 24020001 */  addiu      $v0, $zero, 1
/* 6F524 8002B244 12820017 */  beq        $s4, $v0, .L8002B2A4
/* 6F528 8002B248 00A01821 */   addu      $v1, $a1, $zero
/* 6F52C 8002B24C 3C048015 */  lui        $a0, %hi(D_8014CF94)
/* 6F530 8002B250 2484CF94 */  addiu      $a0, $a0, %lo(D_8014CF94)
/* 6F534 8002B254 94820000 */  lhu        $v0, ($a0)
/* 6F538 8002B258 30420010 */  andi       $v0, $v0, 0x10
/* 6F53C 8002B25C 10400002 */  beqz       $v0, .L8002B268
/* 6F540 8002B260 24620001 */   addiu     $v0, $v1, 1
/* 6F544 8002B264 A6220000 */  sh         $v0, ($s1)
.L8002B268:
/* 6F548 8002B268 94820000 */  lhu        $v0, ($a0)
/* 6F54C 8002B26C 30420020 */  andi       $v0, $v0, 0x20
/* 6F550 8002B270 10400004 */  beqz       $v0, .L8002B284
/* 6F554 8002B274 00000000 */   nop
/* 6F558 8002B278 96220000 */  lhu        $v0, ($s1)
/* 6F55C 8002B27C 2442FFFF */  addiu      $v0, $v0, -1
/* 6F560 8002B280 A6220000 */  sh         $v0, ($s1)
.L8002B284:
/* 6F564 8002B284 86230000 */  lh         $v1, ($s1)
/* 6F568 8002B288 28620148 */  slti       $v0, $v1, 0x148
/* 6F56C 8002B28C 14400003 */  bnez       $v0, .L8002B29C
/* 6F570 8002B290 24020147 */   addiu     $v0, $zero, 0x147
/* 6F574 8002B294 0800ACA9 */  j          .L8002B2A4
/* 6F578 8002B298 A6220000 */   sh        $v0, ($s1)
.L8002B29C:
/* 6F57C 8002B29C 04620001 */  bltzl      $v1, .L8002B2A4
/* 6F580 8002B2A0 A6200000 */   sh        $zero, ($s1)
.L8002B2A4:
/* 6F584 8002B2A4 86220000 */  lh         $v0, ($s1)
/* 6F588 8002B2A8 14A20009 */  bne        $a1, $v0, .L8002B2D0
/* 6F58C 8002B2AC 00000000 */   nop
/* 6F590 8002B2B0 3C028003 */  lui        $v0, %hi(D_8002EFF0)
/* 6F594 8002B2B4 8C42EFF0 */  lw         $v0, %lo(D_8002EFF0)($v0)
/* 6F598 8002B2B8 16020005 */  bne        $s0, $v0, .L8002B2D0
/* 6F59C 8002B2BC 00000000 */   nop
/* 6F5A0 8002B2C0 3C028003 */  lui        $v0, %hi(D_8002EFF8)
/* 6F5A4 8002B2C4 8C42EFF8 */  lw         $v0, %lo(D_8002EFF8)($v0)
/* 6F5A8 8002B2C8 5242000B */  beql       $s2, $v0, .L8002B2F8
/* 6F5AC 8002B2CC 00002021 */   addu      $a0, $zero, $zero
.L8002B2D0:
/* 6F5B0 8002B2D0 8E240004 */  lw         $a0, 4($s1)
/* 6F5B4 8002B2D4 0C027E98 */  jal        func_8009FA60
/* 6F5B8 8002B2D8 00000000 */   nop
/* 6F5BC 8002B2DC 0C027880 */  jal        func_8009E200
/* 6F5C0 8002B2E0 8E240008 */   lw        $a0, 8($s1)
/* 6F5C4 8002B2E4 0C027BB8 */  jal        func_8009EEE0
/* 6F5C8 8002B2E8 8E24000C */   lw        $a0, 0xc($s1)
/* 6F5CC 8002B2EC 0C00AB35 */  jal        func_8002ACD4_6EFB4
/* 6F5D0 8002B2F0 02202021 */   addu      $a0, $s1, $zero
/* 6F5D4 8002B2F4 00002021 */  addu       $a0, $zero, $zero
.L8002B2F8:
/* 6F5D8 8002B2F8 0C02DAC0 */  jal        func_800B6B00
/* 6F5DC 8002B2FC 24050007 */   addiu     $a1, $zero, 7
/* 6F5E0 8002B300 8E240004 */  lw         $a0, 4($s1)
/* 6F5E4 8002B304 3C058015 */  lui        $a1, %hi(D_80149BAA)
/* 6F5E8 8002B308 0C0284FF */  jal        func_800A13FC
/* 6F5EC 8002B30C 84A59BAA */   lh        $a1, %lo(D_80149BAA)($a1)
/* 6F5F0 8002B310 8E230004 */  lw         $v1, 4($s1)
/* 6F5F4 8002B314 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 6F5F8 8002B318 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 6F5FC 8002B31C 02002021 */  addu       $a0, $s0, $zero
/* 6F600 8002B320 8C660004 */  lw         $a2, 4($v1)
/* 6F604 8002B324 3C058003 */  lui        $a1, %hi(D_80030258)
/* 6F608 8002B328 24A50258 */  addiu      $a1, $a1, %lo(D_80030258)
/* 6F60C 8002B32C 0C030180 */  jal        func_800C0600
/* 6F610 8002B330 00403821 */   addu      $a3, $v0, $zero
/* 6F614 8002B334 00002021 */  addu       $a0, $zero, $zero
/* 6F618 8002B338 24050003 */  addiu      $a1, $zero, 3
/* 6F61C 8002B33C 0C02DAE0 */  jal        func_800B6B80
/* 6F620 8002B340 24060018 */   addiu     $a2, $zero, 0x18
/* 6F624 8002B344 00002021 */  addu       $a0, $zero, $zero
/* 6F628 8002B348 0C02DA9C */  jal        func_800B6A70
/* 6F62C 8002B34C 02002821 */   addu      $a1, $s0, $zero
/* 6F630 8002B350 3C058003 */  lui        $a1, %hi(D_8002F00C)
/* 6F634 8002B354 8CA5F00C */  lw         $a1, %lo(D_8002F00C)($a1)
/* 6F638 8002B358 12650006 */  beq        $s3, $a1, .L8002B374
/* 6F63C 8002B35C 2402FFFF */   addiu     $v0, $zero, -1
/* 6F640 8002B360 10A20004 */  beq        $a1, $v0, .L8002B374
/* 6F644 8002B364 00052C00 */   sll       $a1, $a1, 0x10
/* 6F648 8002B368 8E240004 */  lw         $a0, 4($s1)
/* 6F64C 8002B36C 0C028703 */  jal        func_800A1C0C
/* 6F650 8002B370 00052C03 */   sra       $a1, $a1, 0x10
.L8002B374:
/* 6F654 8002B374 3C058015 */  lui        $a1, %hi(D_80149BA8)
/* 6F658 8002B378 8CA59BA8 */  lw         $a1, %lo(D_80149BA8)($a1)
/* 6F65C 8002B37C 2402FFFF */  addiu      $v0, $zero, -1
/* 6F660 8002B380 14A20008 */  bne        $a1, $v0, .L8002B3A4
/* 6F664 8002B384 00000000 */   nop
/* 6F668 8002B388 8E240090 */  lw         $a0, 0x90($s1)
/* 6F66C 8002B38C 1080003A */  beqz       $a0, .L8002B478
/* 6F670 8002B390 00000000 */   nop
/* 6F674 8002B394 0C0326A1 */  jal        func_800C9A84
/* 6F678 8002B398 00000000 */   nop
/* 6F67C 8002B39C 0800AD1E */  j          .L8002B478
/* 6F680 8002B3A0 AE200090 */   sw        $zero, 0x90($s1)
.L8002B3A4:
/* 6F684 8002B3A4 12A50034 */  beq        $s5, $a1, .L8002B478
/* 6F688 8002B3A8 00052C00 */   sll       $a1, $a1, 0x10
/* 6F68C 8002B3AC 8E240004 */  lw         $a0, 4($s1)
/* 6F690 8002B3B0 0C0285FC */  jal        func_800A17F0
/* 6F694 8002B3B4 00052C03 */   sra       $a1, $a1, 0x10
/* 6F698 8002B3B8 00408021 */  addu       $s0, $v0, $zero
/* 6F69C 8002B3BC 1200002E */  beqz       $s0, .L8002B478
/* 6F6A0 8002B3C0 00000000 */   nop
/* 6F6A4 8002B3C4 8E240090 */  lw         $a0, 0x90($s1)
/* 6F6A8 8002B3C8 10800003 */  beqz       $a0, .L8002B3D8
/* 6F6AC 8002B3CC 00000000 */   nop
/* 6F6B0 8002B3D0 0C0326A1 */  jal        func_800C9A84
/* 6F6B4 8002B3D4 00000000 */   nop
.L8002B3D8:
/* 6F6B8 8002B3D8 8E240004 */  lw         $a0, 4($s1)
/* 6F6BC 8002B3DC 3C058015 */  lui        $a1, %hi(D_80149BAA)
/* 6F6C0 8002B3E0 0C02859C */  jal        func_800A1670
/* 6F6C4 8002B3E4 84A59BAA */   lh        $a1, %lo(D_80149BAA)($a1)
/* 6F6C8 8002B3E8 00409021 */  addu       $s2, $v0, $zero
/* 6F6CC 8002B3EC 92420006 */  lbu        $v0, 6($s2)
/* 6F6D0 8002B3F0 A6220080 */  sh         $v0, 0x80($s1)
/* 6F6D4 8002B3F4 92420007 */  lbu        $v0, 7($s2)
/* 6F6D8 8002B3F8 A6220082 */  sh         $v0, 0x82($s1)
/* 6F6DC 8002B3FC 24020010 */  addiu      $v0, $zero, 0x10
/* 6F6E0 8002B400 12020005 */  beq        $s0, $v0, .L8002B418
/* 6F6E4 8002B404 24020100 */   addiu     $v0, $zero, 0x100
/* 6F6E8 8002B408 12020005 */  beq        $s0, $v0, .L8002B420
/* 6F6EC 8002B40C 24020001 */   addiu     $v0, $zero, 1
/* 6F6F0 8002B410 0800AD09 */  j          .L8002B424
/* 6F6F4 8002B414 00000000 */   nop
.L8002B418:
/* 6F6F8 8002B418 0800AD09 */  j          .L8002B424
/* 6F6FC 8002B41C A2200084 */   sb        $zero, 0x84($s1)
.L8002B420:
/* 6F700 8002B420 A2220084 */  sb         $v0, 0x84($s1)
.L8002B424:
/* 6F704 8002B424 8E240004 */  lw         $a0, 4($s1)
/* 6F708 8002B428 3C058015 */  lui        $a1, %hi(D_80149BAA)
/* 6F70C 8002B42C 0C0285CC */  jal        func_800A1730
/* 6F710 8002B430 84A59BAA */   lh        $a1, %lo(D_80149BAA)($a1)
/* 6F714 8002B434 26240080 */  addiu      $a0, $s1, 0x80
/* 6F718 8002B438 00102840 */  sll        $a1, $s0, 1
/* 6F71C 8002B43C 00452821 */  addu       $a1, $v0, $a1
/* 6F720 8002B440 00403021 */  addu       $a2, $v0, $zero
/* 6F724 8002B444 0C02920C */  jal        func_800A4830
/* 6F728 8002B448 00003821 */   addu      $a3, $zero, $zero
/* 6F72C 8002B44C AE220090 */  sw         $v0, 0x90($s1)
/* 6F730 8002B450 92430006 */  lbu        $v1, 6($s2)
/* 6F734 8002B454 00402021 */  addu       $a0, $v0, $zero
/* 6F738 8002B458 2405012F */  addiu      $a1, $zero, 0x12f
/* 6F73C 8002B45C 92420007 */  lbu        $v0, 7($s2)
/* 6F740 8002B460 240600DF */  addiu      $a2, $zero, 0xdf
/* 6F744 8002B464 00A32823 */  subu       $a1, $a1, $v1
/* 6F748 8002B468 00052880 */  sll        $a1, $a1, 2
/* 6F74C 8002B46C 00C23023 */  subu       $a2, $a2, $v0
/* 6F750 8002B470 0C028D89 */  jal        func_800A3624
/* 6F754 8002B474 00063080 */   sll       $a2, $a2, 2
.L8002B478:
/* 6F758 8002B478 3C028003 */  lui        $v0, %hi(D_8002EFE8)
/* 6F75C 8002B47C 8C42EFE8 */  lw         $v0, %lo(D_8002EFE8)($v0)
/* 6F760 8002B480 10400002 */  beqz       $v0, .L8002B48C
/* 6F764 8002B484 24040002 */   addiu     $a0, $zero, 2
/* 6F768 8002B488 24040001 */  addiu      $a0, $zero, 1
.L8002B48C:
/* 6F76C 8002B48C 0C0309D0 */  jal        func_800C2740
/* 6F770 8002B490 00000000 */   nop
/* 6F774 8002B494 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 6F778 8002B498 2463CF94 */  addiu      $v1, $v1, %lo(D_8014CF94)
/* 6F77C 8002B49C 94620000 */  lhu        $v0, ($v1)
/* 6F780 8002B4A0 30420001 */  andi       $v0, $v0, 1
/* 6F784 8002B4A4 10400004 */  beqz       $v0, .L8002B4B8
/* 6F788 8002B4A8 00000000 */   nop
/* 6F78C 8002B4AC 92220094 */  lbu        $v0, 0x94($s1)
/* 6F790 8002B4B0 24420001 */  addiu      $v0, $v0, 1
/* 6F794 8002B4B4 A2220094 */  sb         $v0, 0x94($s1)
.L8002B4B8:
/* 6F798 8002B4B8 94620000 */  lhu        $v0, ($v1)
/* 6F79C 8002B4BC 30420002 */  andi       $v0, $v0, 2
/* 6F7A0 8002B4C0 10400004 */  beqz       $v0, .L8002B4D4
/* 6F7A4 8002B4C4 00000000 */   nop
/* 6F7A8 8002B4C8 92220094 */  lbu        $v0, 0x94($s1)
/* 6F7AC 8002B4CC 2442FFFF */  addiu      $v0, $v0, -1
/* 6F7B0 8002B4D0 A2220094 */  sb         $v0, 0x94($s1)
.L8002B4D4:
/* 6F7B4 8002B4D4 82230094 */  lb         $v1, 0x94($s1)
/* 6F7B8 8002B4D8 28620005 */  slti       $v0, $v1, 5
/* 6F7BC 8002B4DC 14400003 */  bnez       $v0, .L8002B4EC
/* 6F7C0 8002B4E0 24020004 */   addiu     $v0, $zero, 4
/* 6F7C4 8002B4E4 0800AD3D */  j          .L8002B4F4
/* 6F7C8 8002B4E8 A2220094 */   sb        $v0, 0x94($s1)
.L8002B4EC:
/* 6F7CC 8002B4EC 04620001 */  bltzl      $v1, .L8002B4F4
/* 6F7D0 8002B4F0 A2200094 */   sb        $zero, 0x94($s1)
.L8002B4F4:
/* 6F7D4 8002B4F4 24130007 */  addiu      $s3, $zero, 7
/* 6F7D8 8002B4F8 00002021 */  addu       $a0, $zero, $zero
/* 6F7DC 8002B4FC 0C02DAC0 */  jal        func_800B6B00
/* 6F7E0 8002B500 24050007 */   addiu     $a1, $zero, 7
/* 6F7E4 8002B504 00002021 */  addu       $a0, $zero, $zero
/* 6F7E8 8002B508 24050003 */  addiu      $a1, $zero, 3
/* 6F7EC 8002B50C 0C02DAE0 */  jal        func_800B6B80
/* 6F7F0 8002B510 24060019 */   addiu     $a2, $zero, 0x19
/* 6F7F4 8002B514 3C058003 */  lui        $a1, %hi(D_80030268)
/* 6F7F8 8002B518 24A50268 */  addiu      $a1, $a1, %lo(D_80030268)
/* 6F7FC 8002B51C 0C02DA9C */  jal        func_800B6A70
/* 6F800 8002B520 00002021 */   addu      $a0, $zero, $zero
/* 6F804 8002B524 00009021 */  addu       $s2, $zero, $zero
/* 6F808 8002B528 3C108003 */  lui        $s0, %hi(D_8002EF80)
/* 6F80C 8002B52C 2610EF80 */  addiu      $s0, $s0, %lo(D_8002EF80)
.L8002B530:
/* 6F810 8002B530 82220094 */  lb         $v0, 0x94($s1)
/* 6F814 8002B534 14520003 */  bne        $v0, $s2, .L8002B544
/* 6F818 8002B538 00002021 */   addu      $a0, $zero, $zero
/* 6F81C 8002B53C 0800AD52 */  j          .L8002B548
/* 6F820 8002B540 24050004 */   addiu     $a1, $zero, 4
.L8002B544:
/* 6F824 8002B544 24050007 */  addiu      $a1, $zero, 7
.L8002B548:
/* 6F828 8002B548 0C02DAC0 */  jal        func_800B6B00
/* 6F82C 8002B54C 26520001 */   addiu     $s2, $s2, 1
/* 6F830 8002B550 00002021 */  addu       $a0, $zero, $zero
/* 6F834 8002B554 02602821 */  addu       $a1, $s3, $zero
/* 6F838 8002B558 0C02DAE0 */  jal        func_800B6B80
/* 6F83C 8002B55C 24060019 */   addiu     $a2, $zero, 0x19
/* 6F840 8002B560 8E050000 */  lw         $a1, ($s0)
/* 6F844 8002B564 0C02DA9C */  jal        func_800B6A70
/* 6F848 8002B568 00002021 */   addu      $a0, $zero, $zero
/* 6F84C 8002B56C 8E040000 */  lw         $a0, ($s0)
/* 6F850 8002B570 0C03016C */  jal        func_800C05B0
/* 6F854 8002B574 26100004 */   addiu     $s0, $s0, 4
/* 6F858 8002B578 26630001 */  addiu      $v1, $s3, 1
/* 6F85C 8002B57C 00629821 */  addu       $s3, $v1, $v0
/* 6F860 8002B580 2A420005 */  slti       $v0, $s2, 5
/* 6F864 8002B584 1440FFEA */  bnez       $v0, .L8002B530
/* 6F868 8002B588 00000000 */   nop
/* 6F86C 8002B58C 82230094 */  lb         $v1, 0x94($s1)
/* 6F870 8002B590 2C620005 */  sltiu      $v0, $v1, 5
/* 6F874 8002B594 104000C5 */  beqz       $v0, .L8002B8AC
/* 6F878 8002B598 00031080 */   sll       $v0, $v1, 2
/* 6F87C 8002B59C 3C018003 */  lui        $at, %hi(D_800302D8)
/* 6F880 8002B5A0 00220821 */  addu       $at, $at, $v0
/* 6F884 8002B5A4 8C2202D8 */  lw         $v0, %lo(D_800302D8)($at)
/* 6F888 8002B5A8 00400008 */  jr         $v0
/* 6F88C 8002B5AC 00000000 */   nop
/* 6F890 8002B5B0 0C02737B */  jal        func_8009CDEC
/* 6F894 8002B5B4 00000000 */   nop
/* 6F898 8002B5B8 0800AE2C */  j          .L8002B8B0
/* 6F89C 8002B5BC 02801021 */   addu      $v0, $s4, $zero
/* 6F8A0 8002B5C0 0C0273D2 */  jal        func_8009CF48
/* 6F8A4 8002B5C4 00000000 */   nop
/* 6F8A8 8002B5C8 0800AE2C */  j          .L8002B8B0
/* 6F8AC 8002B5CC 02801021 */   addu      $v0, $s4, $zero
/* 6F8B0 8002B5D0 0C0271A3 */  jal        func_8009C68C
/* 6F8B4 8002B5D4 00000000 */   nop
/* 6F8B8 8002B5D8 0800AE2C */  j          .L8002B8B0
/* 6F8BC 8002B5DC 02801021 */   addu      $v0, $s4, $zero
/* 6F8C0 8002B5E0 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6F8C4 8002B5E4 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6F8C8 8002B5E8 30422000 */  andi       $v0, $v0, 0x2000
/* 6F8CC 8002B5EC 10400007 */  beqz       $v0, .L8002B60C
/* 6F8D0 8002B5F0 00000000 */   nop
/* 6F8D4 8002B5F4 C620001C */  lwc1       $f0, 0x1c($s1)
/* 6F8D8 8002B5F8 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 6F8DC 8002B5FC C422CFA8 */  lwc1       $f2, %lo(D_8014CFA8)($at)
/* 6F8E0 8002B600 46020001 */  sub.s      $f0, $f0, $f2
/* 6F8E4 8002B604 0800AD8D */  j          .L8002B634
/* 6F8E8 8002B608 E620001C */   swc1      $f0, 0x1c($s1)
.L8002B60C:
/* 6F8EC 8002B60C C6200014 */  lwc1       $f0, 0x14($s1)
/* 6F8F0 8002B610 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 6F8F4 8002B614 C422CFA4 */  lwc1       $f2, %lo(D_8014CFA4)($at)
/* 6F8F8 8002B618 46020001 */  sub.s      $f0, $f0, $f2
/* 6F8FC 8002B61C E6200014 */  swc1       $f0, 0x14($s1)
/* 6F900 8002B620 C6200018 */  lwc1       $f0, 0x18($s1)
/* 6F904 8002B624 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 6F908 8002B628 C422CFA8 */  lwc1       $f2, %lo(D_8014CFA8)($at)
/* 6F90C 8002B62C 46020001 */  sub.s      $f0, $f0, $f2
/* 6F910 8002B630 E6200018 */  swc1       $f0, 0x18($s1)
.L8002B634:
/* 6F914 8002B634 C6200014 */  lwc1       $f0, 0x14($s1)
/* 6F918 8002B638 C6220018 */  lwc1       $f2, 0x18($s1)
/* 6F91C 8002B63C C624001C */  lwc1       $f4, 0x1c($s1)
/* 6F920 8002B640 00002021 */  addu       $a0, $zero, $zero
/* 6F924 8002B644 3C018015 */  lui        $at, %hi(D_8014A054)
/* 6F928 8002B648 E420A054 */  swc1       $f0, %lo(D_8014A054)($at)
/* 6F92C 8002B64C 3C018015 */  lui        $at, %hi(D_8014A050)
/* 6F930 8002B650 E422A050 */  swc1       $f2, %lo(D_8014A050)($at)
/* 6F934 8002B654 3C018017 */  lui        $at, %hi(D_8016D1A8)
/* 6F938 8002B658 E424D1A8 */  swc1       $f4, %lo(D_8016D1A8)($at)
/* 6F93C 8002B65C 0C02DAC0 */  jal        func_800B6B00
/* 6F940 8002B660 24050006 */   addiu     $a1, $zero, 6
/* 6F944 8002B664 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 6F948 8002B668 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 6F94C 8002B66C 3C058003 */  lui        $a1, %hi(D_80030270)
/* 6F950 8002B670 24A50270 */  addiu      $a1, $a1, %lo(D_80030270)
/* 6F954 8002B674 C620001C */  lwc1       $f0, 0x1c($s1)
/* 6F958 8002B678 C6220014 */  lwc1       $f2, 0x14($s1)
/* 6F95C 8002B67C C6240018 */  lwc1       $f4, 0x18($s1)
/* 6F960 8002B680 4600018D */  trunc.w.s  $f6, $f0
/* 6F964 8002B684 E7A60010 */  swc1       $f6, 0x10($sp)
/* 6F968 8002B688 4600100D */  trunc.w.s  $f0, $f2
/* 6F96C 8002B68C 44060000 */  mfc1       $a2, $f0
/* 6F970 8002B690 4600200D */  trunc.w.s  $f0, $f4
/* 6F974 8002B694 44070000 */  mfc1       $a3, $f0
/* 6F978 8002B698 00000000 */  nop
/* 6F97C 8002B69C 0C030180 */  jal        func_800C0600
/* 6F980 8002B6A0 02002021 */   addu      $a0, $s0, $zero
/* 6F984 8002B6A4 0800AE25 */  j          .L8002B894
/* 6F988 8002B6A8 00002021 */   addu      $a0, $zero, $zero
/* 6F98C 8002B6AC 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 6F990 8002B6B0 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 6F994 8002B6B4 30422000 */  andi       $v0, $v0, 0x2000
/* 6F998 8002B6B8 10400033 */  beqz       $v0, .L8002B788
/* 6F99C 8002B6BC 00000000 */   nop
/* 6F9A0 8002B6C0 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 6F9A4 8002B6C4 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 6F9A8 8002B6C8 3C01447A */  lui        $at, 0x447a
/* 6F9AC 8002B6CC 44811000 */  mtc1       $at, $f2
/* 6F9B0 8002B6D0 00000000 */  nop
/* 6F9B4 8002B6D4 46020003 */  div.s      $f0, $f0, $f2
/* 6F9B8 8002B6D8 C622002C */  lwc1       $f2, 0x2c($s1)
/* 6F9BC 8002B6DC 46001080 */  add.s      $f2, $f2, $f0
/* 6F9C0 8002B6E0 3C013F80 */  lui        $at, 0x3f80
/* 6F9C4 8002B6E4 44810000 */  mtc1       $at, $f0
/* 6F9C8 8002B6E8 00000000 */  nop
/* 6F9CC 8002B6EC 4602003C */  c.lt.s     $f0, $f2
/* 6F9D0 8002B6F0 00000000 */  nop
/* 6F9D4 8002B6F4 00000000 */  nop
/* 6F9D8 8002B6F8 45010009 */  bc1t       .L8002B720
/* 6F9DC 8002B6FC E622002C */   swc1      $f2, 0x2c($s1)
/* 6F9E0 8002B700 3C013A83 */  lui        $at, 0x3a83
/* 6F9E4 8002B704 3421126F */  ori        $at, $at, 0x126f
/* 6F9E8 8002B708 44810000 */  mtc1       $at, $f0
/* 6F9EC 8002B70C 00000000 */  nop
/* 6F9F0 8002B710 4600103C */  c.lt.s     $f2, $f0
/* 6F9F4 8002B714 00000000 */  nop
/* 6F9F8 8002B718 45000002 */  bc1f       .L8002B724
/* 6F9FC 8002B71C 00000000 */   nop
.L8002B720:
/* 6FA00 8002B720 E620002C */  swc1       $f0, 0x2c($s1)
.L8002B724:
/* 6FA04 8002B724 C6220028 */  lwc1       $f2, 0x28($s1)
/* 6FA08 8002B728 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 6FA0C 8002B72C C420CFA4 */  lwc1       $f0, %lo(D_8014CFA4)($at)
/* 6FA10 8002B730 46001080 */  add.s      $f2, $f2, $f0
/* 6FA14 8002B734 3C0143B4 */  lui        $at, 0x43b4
/* 6FA18 8002B738 44812000 */  mtc1       $at, $f4
/* 6FA1C 8002B73C 00000000 */  nop
/* 6FA20 8002B740 4602203E */  c.le.s     $f4, $f2
/* 6FA24 8002B744 00000000 */  nop
/* 6FA28 8002B748 00000000 */  nop
/* 6FA2C 8002B74C 45000004 */  bc1f       .L8002B760
/* 6FA30 8002B750 E6220028 */   swc1      $f2, 0x28($s1)
/* 6FA34 8002B754 46041001 */  sub.s      $f0, $f2, $f4
/* 6FA38 8002B758 0800AE0F */  j          .L8002B83C
/* 6FA3C 8002B75C E6200028 */   swc1      $f0, 0x28($s1)
.L8002B760:
/* 6FA40 8002B760 44800000 */  mtc1       $zero, $f0
/* 6FA44 8002B764 00000000 */  nop
/* 6FA48 8002B768 4600103C */  c.lt.s     $f2, $f0
/* 6FA4C 8002B76C 00000000 */  nop
/* 6FA50 8002B770 00000000 */  nop
/* 6FA54 8002B774 45020032 */  bc1fl      .L8002B840
/* 6FA58 8002B778 00002021 */   addu      $a0, $zero, $zero
/* 6FA5C 8002B77C 46041000 */  add.s      $f0, $f2, $f4
/* 6FA60 8002B780 0800AE0F */  j          .L8002B83C
/* 6FA64 8002B784 E6200028 */   swc1      $f0, 0x28($s1)
.L8002B788:
/* 6FA68 8002B788 C6220024 */  lwc1       $f2, 0x24($s1)
/* 6FA6C 8002B78C 3C018015 */  lui        $at, %hi(D_8014CFA4)
/* 6FA70 8002B790 C420CFA4 */  lwc1       $f0, %lo(D_8014CFA4)($at)
/* 6FA74 8002B794 46001080 */  add.s      $f2, $f2, $f0
/* 6FA78 8002B798 3C0143B4 */  lui        $at, 0x43b4
/* 6FA7C 8002B79C 44812000 */  mtc1       $at, $f4
/* 6FA80 8002B7A0 00000000 */  nop
/* 6FA84 8002B7A4 4602203E */  c.le.s     $f4, $f2
/* 6FA88 8002B7A8 00000000 */  nop
/* 6FA8C 8002B7AC 00000000 */  nop
/* 6FA90 8002B7B0 45000003 */  bc1f       .L8002B7C0
/* 6FA94 8002B7B4 E6220024 */   swc1      $f2, 0x24($s1)
/* 6FA98 8002B7B8 0800ADF7 */  j          .L8002B7DC
/* 6FA9C 8002B7BC 46041001 */   sub.s     $f0, $f2, $f4
.L8002B7C0:
/* 6FAA0 8002B7C0 44800000 */  mtc1       $zero, $f0
/* 6FAA4 8002B7C4 00000000 */  nop
/* 6FAA8 8002B7C8 4600103C */  c.lt.s     $f2, $f0
/* 6FAAC 8002B7CC 00000000 */  nop
/* 6FAB0 8002B7D0 45000003 */  bc1f       .L8002B7E0
/* 6FAB4 8002B7D4 00000000 */   nop
/* 6FAB8 8002B7D8 46041000 */  add.s      $f0, $f2, $f4
.L8002B7DC:
/* 6FABC 8002B7DC E6200024 */  swc1       $f0, 0x24($s1)
.L8002B7E0:
/* 6FAC0 8002B7E0 C6220020 */  lwc1       $f2, 0x20($s1)
/* 6FAC4 8002B7E4 3C018015 */  lui        $at, %hi(D_8014CFA8)
/* 6FAC8 8002B7E8 C420CFA8 */  lwc1       $f0, %lo(D_8014CFA8)($at)
/* 6FACC 8002B7EC 46001081 */  sub.s      $f2, $f2, $f0
/* 6FAD0 8002B7F0 3C0143B4 */  lui        $at, 0x43b4
/* 6FAD4 8002B7F4 44812000 */  mtc1       $at, $f4
/* 6FAD8 8002B7F8 00000000 */  nop
/* 6FADC 8002B7FC 4602203E */  c.le.s     $f4, $f2
/* 6FAE0 8002B800 00000000 */  nop
/* 6FAE4 8002B804 00000000 */  nop
/* 6FAE8 8002B808 45000003 */  bc1f       .L8002B818
/* 6FAEC 8002B80C E6220020 */   swc1      $f2, 0x20($s1)
/* 6FAF0 8002B810 0800AE0E */  j          .L8002B838
/* 6FAF4 8002B814 46041001 */   sub.s     $f0, $f2, $f4
.L8002B818:
/* 6FAF8 8002B818 44800000 */  mtc1       $zero, $f0
/* 6FAFC 8002B81C 00000000 */  nop
/* 6FB00 8002B820 4600103C */  c.lt.s     $f2, $f0
/* 6FB04 8002B824 00000000 */  nop
/* 6FB08 8002B828 00000000 */  nop
/* 6FB0C 8002B82C 45020004 */  bc1fl      .L8002B840
/* 6FB10 8002B830 00002021 */   addu      $a0, $zero, $zero
/* 6FB14 8002B834 46041000 */  add.s      $f0, $f2, $f4
.L8002B838:
/* 6FB18 8002B838 E6200020 */  swc1       $f0, 0x20($s1)
.L8002B83C:
/* 6FB1C 8002B83C 00002021 */  addu       $a0, $zero, $zero
.L8002B840:
/* 6FB20 8002B840 0C02DAC0 */  jal        func_800B6B00
/* 6FB24 8002B844 24050006 */   addiu     $a1, $zero, 6
/* 6FB28 8002B848 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 6FB2C 8002B84C 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 6FB30 8002B850 3C058003 */  lui        $a1, %hi(D_80030298)
/* 6FB34 8002B854 24A50298 */  addiu      $a1, $a1, %lo(D_80030298)
/* 6FB38 8002B858 C6200028 */  lwc1       $f0, 0x28($s1)
/* 6FB3C 8002B85C C6220020 */  lwc1       $f2, 0x20($s1)
/* 6FB40 8002B860 C6240024 */  lwc1       $f4, 0x24($s1)
/* 6FB44 8002B864 4600018D */  trunc.w.s  $f6, $f0
/* 6FB48 8002B868 E7A60010 */  swc1       $f6, 0x10($sp)
/* 6FB4C 8002B86C C620002C */  lwc1       $f0, 0x2c($s1)
/* 6FB50 8002B870 4600118D */  trunc.w.s  $f6, $f2
/* 6FB54 8002B874 44063000 */  mfc1       $a2, $f6
/* 6FB58 8002B878 4600208D */  trunc.w.s  $f2, $f4
/* 6FB5C 8002B87C 44071000 */  mfc1       $a3, $f2
/* 6FB60 8002B880 46000021 */  cvt.d.s    $f0, $f0
/* 6FB64 8002B884 F7A00018 */  sdc1       $f0, 0x18($sp)
/* 6FB68 8002B888 0C030180 */  jal        func_800C0600
/* 6FB6C 8002B88C 02002021 */   addu      $a0, $s0, $zero
/* 6FB70 8002B890 00002021 */  addu       $a0, $zero, $zero
.L8002B894:
/* 6FB74 8002B894 24050003 */  addiu      $a1, $zero, 3
/* 6FB78 8002B898 0C02DAE0 */  jal        func_800B6B80
/* 6FB7C 8002B89C 2406001A */   addiu     $a2, $zero, 0x1a
/* 6FB80 8002B8A0 00002021 */  addu       $a0, $zero, $zero
/* 6FB84 8002B8A4 0C02DA9C */  jal        func_800B6A70
/* 6FB88 8002B8A8 02002821 */   addu      $a1, $s0, $zero
.L8002B8AC:
/* 6FB8C 8002B8AC 02801021 */  addu       $v0, $s4, $zero
.L8002B8B0:
/* 6FB90 8002B8B0 8FBF0040 */  lw         $ra, 0x40($sp)
/* 6FB94 8002B8B4 8FB5003C */  lw         $s5, 0x3c($sp)
/* 6FB98 8002B8B8 8FB40038 */  lw         $s4, 0x38($sp)
/* 6FB9C 8002B8BC 8FB30034 */  lw         $s3, 0x34($sp)
/* 6FBA0 8002B8C0 8FB20030 */  lw         $s2, 0x30($sp)
/* 6FBA4 8002B8C4 8FB1002C */  lw         $s1, 0x2c($sp)
/* 6FBA8 8002B8C8 8FB00028 */  lw         $s0, 0x28($sp)
/* 6FBAC 8002B8CC 03E00008 */  jr         $ra
/* 6FBB0 8002B8D0 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_8002B8D4_6FBB4
/* 6FBB4 8002B8D4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 6FBB8 8002B8D8 AFB10024 */  sw         $s1, 0x24($sp)
/* 6FBBC 8002B8DC 00808821 */  addu       $s1, $a0, $zero
/* 6FBC0 8002B8E0 00002021 */  addu       $a0, $zero, $zero
/* 6FBC4 8002B8E4 2405000E */  addiu      $a1, $zero, 0xe
/* 6FBC8 8002B8E8 AFBF0028 */  sw         $ra, 0x28($sp)
/* 6FBCC 8002B8EC 0C02DAC0 */  jal        func_800B6B00
/* 6FBD0 8002B8F0 AFB00020 */   sw        $s0, 0x20($sp)
/* 6FBD4 8002B8F4 00002021 */  addu       $a0, $zero, $zero
/* 6FBD8 8002B8F8 2405000E */  addiu      $a1, $zero, 0xe
/* 6FBDC 8002B8FC 0C02DAE0 */  jal        func_800B6B80
/* 6FBE0 8002B900 24060004 */   addiu     $a2, $zero, 4
/* 6FBE4 8002B904 3C058003 */  lui        $a1, %hi(D_80030248)
/* 6FBE8 8002B908 24A50248 */  addiu      $a1, $a1, %lo(D_80030248)
/* 6FBEC 8002B90C 0C02DA9C */  jal        func_800B6A70
/* 6FBF0 8002B910 00002021 */   addu      $a0, $zero, $zero
/* 6FBF4 8002B914 3C028015 */  lui        $v0, %hi(D_8014CF98)
/* 6FBF8 8002B918 9442CF98 */  lhu        $v0, %lo(D_8014CF98)($v0)
/* 6FBFC 8002B91C 30422000 */  andi       $v0, $v0, 0x2000
/* 6FC00 8002B920 10400055 */  beqz       $v0, .L8002BA78
/* 6FC04 8002B924 2402FFFF */   addiu     $v0, $zero, -1
/* 6FC08 8002B928 3C058015 */  lui        $a1, %hi(D_80149BA8)
/* 6FC0C 8002B92C 8CA59BA8 */  lw         $a1, %lo(D_80149BA8)($a1)
/* 6FC10 8002B930 10A20051 */  beq        $a1, $v0, .L8002BA78
/* 6FC14 8002B934 00000000 */   nop
/* 6FC18 8002B938 3C108003 */  lui        $s0, %hi(D_8002F008)
/* 6FC1C 8002B93C 8E10F008 */  lw         $s0, %lo(D_8002F008)($s0)
/* 6FC20 8002B940 12000005 */  beqz       $s0, .L8002B958
/* 6FC24 8002B944 24020001 */   addiu     $v0, $zero, 1
/* 6FC28 8002B948 12020025 */  beq        $s0, $v0, .L8002B9E0
/* 6FC2C 8002B94C 00052C00 */   sll       $a1, $a1, 0x10
/* 6FC30 8002B950 0800AE9E */  j          .L8002BA78
/* 6FC34 8002B954 00000000 */   nop
.L8002B958:
/* 6FC38 8002B958 8E240004 */  lw         $a0, 4($s1)
/* 6FC3C 8002B95C 00052C00 */  sll        $a1, $a1, 0x10
/* 6FC40 8002B960 0C0285CC */  jal        func_800A1730
/* 6FC44 8002B964 00052C03 */   sra       $a1, $a1, 0x10
/* 6FC48 8002B968 8E240004 */  lw         $a0, 4($s1)
/* 6FC4C 8002B96C 3C058015 */  lui        $a1, %hi(D_80149BAA)
/* 6FC50 8002B970 84A59BAA */  lh         $a1, %lo(D_80149BAA)($a1)
/* 6FC54 8002B974 3C018003 */  lui        $at, %hi(D_80030A3C)
/* 6FC58 8002B978 0C0285FC */  jal        func_800A17F0
/* 6FC5C 8002B97C AC220A3C */   sw        $v0, %lo(D_80030A3C)($at)
/* 6FC60 8002B980 3C018003 */  lui        $at, %hi(D_80030A34)
/* 6FC64 8002B984 A4220A34 */  sh         $v0, %lo(D_80030A34)($at)
/* 6FC68 8002B988 00021400 */  sll        $v0, $v0, 0x10
/* 6FC6C 8002B98C 1040003A */  beqz       $v0, .L8002BA78
/* 6FC70 8002B990 00000000 */   nop
/* 6FC74 8002B994 9222009C */  lbu        $v0, 0x9c($s1)
/* 6FC78 8002B998 38420001 */  xori       $v0, $v0, 1
/* 6FC7C 8002B99C 1040000B */  beqz       $v0, .L8002B9CC
/* 6FC80 8002B9A0 A222009C */   sb        $v0, 0x9c($s1)
/* 6FC84 8002B9A4 0C02DB14 */  jal        func_800B6C50
/* 6FC88 8002B9A8 00002021 */   addu      $a0, $zero, $zero
/* 6FC8C 8002B9AC 3C048003 */  lui        $a0, %hi(D_8002BFC0_702A0)
/* 6FC90 8002B9B0 2484BFC0 */  addiu      $a0, $a0, %lo(D_8002BFC0_702A0)
/* 6FC94 8002B9B4 00002821 */  addu       $a1, $zero, $zero
/* 6FC98 8002B9B8 2406012C */  addiu      $a2, $zero, 0x12c
/* 6FC9C 8002B9BC 0C025D06 */  jal        func_80097418
/* 6FCA0 8002B9C0 24070001 */   addiu     $a3, $zero, 1
/* 6FCA4 8002B9C4 0800AE9E */  j          .L8002BA78
/* 6FCA8 8002B9C8 AE220098 */   sw        $v0, 0x98($s1)
.L8002B9CC:
/* 6FCAC 8002B9CC 8E240098 */  lw         $a0, 0x98($s1)
/* 6FCB0 8002B9D0 0C025D58 */  jal        func_80097560
/* 6FCB4 8002B9D4 00000000 */   nop
/* 6FCB8 8002B9D8 0800AE9E */  j          .L8002BA78
/* 6FCBC 8002B9DC 00000000 */   nop
.L8002B9E0:
/* 6FCC0 8002B9E0 8E240004 */  lw         $a0, 4($s1)
/* 6FCC4 8002B9E4 0C028509 */  jal        func_800A1424
/* 6FCC8 8002B9E8 00052C03 */   sra       $a1, $a1, 0x10
/* 6FCCC 8002B9EC 8E240004 */  lw         $a0, 4($s1)
/* 6FCD0 8002B9F0 3C058015 */  lui        $a1, %hi(D_80149BAA)
/* 6FCD4 8002B9F4 84A59BAA */  lh         $a1, %lo(D_80149BAA)($a1)
/* 6FCD8 8002B9F8 3C018003 */  lui        $at, %hi(D_80030A38)
/* 6FCDC 8002B9FC 0C028569 */  jal        func_800A15A4
/* 6FCE0 8002BA00 AC220A38 */   sw        $v0, %lo(D_80030A38)($at)
/* 6FCE4 8002BA04 3C018003 */  lui        $at, %hi(D_80030A32)
/* 6FCE8 8002BA08 A4220A32 */  sh         $v0, %lo(D_80030A32)($at)
/* 6FCEC 8002BA0C 00021400 */  sll        $v0, $v0, 0x10
/* 6FCF0 8002BA10 10400019 */  beqz       $v0, .L8002BA78
/* 6FCF4 8002BA14 00000000 */   nop
/* 6FCF8 8002BA18 9222009C */  lbu        $v0, 0x9c($s1)
/* 6FCFC 8002BA1C 38420001 */  xori       $v0, $v0, 1
/* 6FD00 8002BA20 1040000F */  beqz       $v0, .L8002BA60
/* 6FD04 8002BA24 A222009C */   sb        $v0, 0x9c($s1)
/* 6FD08 8002BA28 0C02DB14 */  jal        func_800B6C50
/* 6FD0C 8002BA2C 00002021 */   addu      $a0, $zero, $zero
/* 6FD10 8002BA30 3C048003 */  lui        $a0, %hi(D_8002C6E0_709C0)
/* 6FD14 8002BA34 2484C6E0 */  addiu      $a0, $a0, %lo(D_8002C6E0_709C0)
/* 6FD18 8002BA38 00002821 */  addu       $a1, $zero, $zero
/* 6FD1C 8002BA3C 2406012C */  addiu      $a2, $zero, 0x12c
/* 6FD20 8002BA40 0C025D06 */  jal        func_80097418
/* 6FD24 8002BA44 24070001 */   addiu     $a3, $zero, 1
/* 6FD28 8002BA48 AE220098 */  sw         $v0, 0x98($s1)
/* 6FD2C 8002BA4C 3C018003 */  lui        $at, %hi(D_80030950)
/* 6FD30 8002BA50 AC200950 */  sw         $zero, %lo(D_80030950)($at)
/* 6FD34 8002BA54 3C018003 */  lui        $at, %hi(D_80030954)
/* 6FD38 8002BA58 0800AE9E */  j          .L8002BA78
/* 6FD3C 8002BA5C AC300954 */   sw        $s0, %lo(D_80030954)($at)
.L8002BA60:
/* 6FD40 8002BA60 0C025D58 */  jal        func_80097560
/* 6FD44 8002BA64 8E240098 */   lw        $a0, 0x98($s1)
/* 6FD48 8002BA68 8E250004 */  lw         $a1, 4($s1)
/* 6FD4C 8002BA6C 3C04801D */  lui        $a0, 0x801d
/* 6FD50 8002BA70 0C0286CF */  jal        func_800A1B3C
/* 6FD54 8002BA74 34847000 */   ori       $a0, $a0, 0x7000
.L8002BA78:
/* 6FD58 8002BA78 9222009C */  lbu        $v0, 0x9c($s1)
/* 6FD5C 8002BA7C 14400006 */  bnez       $v0, .L8002BA98
/* 6FD60 8002BA80 00000000 */   nop
/* 6FD64 8002BA84 0C00ABE8 */  jal        func_8002AFA0_6F280
/* 6FD68 8002BA88 02202021 */   addu      $a0, $s1, $zero
/* 6FD6C 8002BA8C 2403FFFF */  addiu      $v1, $zero, -1
/* 6FD70 8002BA90 10430100 */  beq        $v0, $v1, .L8002BE94
/* 6FD74 8002BA94 2402FFFF */   addiu     $v0, $zero, -1
.L8002BA98:
/* 6FD78 8002BA98 8E230004 */  lw         $v1, 4($s1)
/* 6FD7C 8002BA9C 3C028003 */  lui        $v0, %hi(D_8002EFF4)
/* 6FD80 8002BAA0 8C42EFF4 */  lw         $v0, %lo(D_8002EFF4)($v0)
/* 6FD84 8002BAA4 A0620067 */  sb         $v0, 0x67($v1)
/* 6FD88 8002BAA8 3C028003 */  lui        $v0, %hi(D_80030977)
/* 6FD8C 8002BAAC 90420977 */  lbu        $v0, %lo(D_80030977)($v0)
/* 6FD90 8002BAB0 3C058003 */  lui        $a1, %hi(D_8003096B)
/* 6FD94 8002BAB4 90A5096B */  lbu        $a1, %lo(D_8003096B)($a1)
/* 6FD98 8002BAB8 3C068003 */  lui        $a2, %hi(D_8003096F)
/* 6FD9C 8002BABC 90C6096F */  lbu        $a2, %lo(D_8003096F)($a2)
/* 6FDA0 8002BAC0 3C078003 */  lui        $a3, %hi(D_80030973)
/* 6FDA4 8002BAC4 90E70973 */  lbu        $a3, %lo(D_80030973)($a3)
/* 6FDA8 8002BAC8 AFA20010 */  sw         $v0, 0x10($sp)
/* 6FDAC 8002BACC 0C027F5E */  jal        func_8009FD78
/* 6FDB0 8002BAD0 8E240004 */   lw        $a0, 4($s1)
/* 6FDB4 8002BAD4 00002821 */  addu       $a1, $zero, $zero
/* 6FDB8 8002BAD8 24070001 */  addiu      $a3, $zero, 1
/* 6FDBC 8002BADC 3C068003 */  lui        $a2, %hi(D_80030948)
/* 6FDC0 8002BAE0 24C60948 */  addiu      $a2, $a2, %lo(D_80030948)
.L8002BAE4:
/* 6FDC4 8002BAE4 8CC20000 */  lw         $v0, ($a2)
/* 6FDC8 8002BAE8 10400006 */  beqz       $v0, .L8002BB04
/* 6FDCC 8002BAEC 00A72004 */   sllv      $a0, $a3, $a1
/* 6FDD0 8002BAF0 8E220004 */  lw         $v0, 4($s1)
/* 6FDD4 8002BAF4 90430066 */  lbu        $v1, 0x66($v0)
/* 6FDD8 8002BAF8 00641825 */  or         $v1, $v1, $a0
/* 6FDDC 8002BAFC 0800AEC7 */  j          .L8002BB1C
/* 6FDE0 8002BB00 A0430066 */   sb        $v1, 0x66($v0)
.L8002BB04:
/* 6FDE4 8002BB04 8E240004 */  lw         $a0, 4($s1)
/* 6FDE8 8002BB08 90830066 */  lbu        $v1, 0x66($a0)
/* 6FDEC 8002BB0C 00A71004 */  sllv       $v0, $a3, $a1
/* 6FDF0 8002BB10 00021027 */  nor        $v0, $zero, $v0
/* 6FDF4 8002BB14 00621824 */  and        $v1, $v1, $v0
/* 6FDF8 8002BB18 A0830066 */  sb         $v1, 0x66($a0)
.L8002BB1C:
/* 6FDFC 8002BB1C 24A50001 */  addiu      $a1, $a1, 1
/* 6FE00 8002BB20 28A20008 */  slti       $v0, $a1, 8
/* 6FE04 8002BB24 1440FFEF */  bnez       $v0, .L8002BAE4
/* 6FE08 8002BB28 24C60004 */   addiu     $a2, $a2, 4
/* 6FE0C 8002BB2C 3C028003 */  lui        $v0, %hi(D_8002F000)
/* 6FE10 8002BB30 8C42F000 */  lw         $v0, %lo(D_8002F000)($v0)
/* 6FE14 8002BB34 10400038 */  beqz       $v0, .L8002BC18
/* 6FE18 8002BB38 00000000 */   nop
/* 6FE1C 8002BB3C 3C038015 */  lui        $v1, %hi(D_8014CF94)
/* 6FE20 8002BB40 9463CF94 */  lhu        $v1, %lo(D_8014CF94)($v1)
/* 6FE24 8002BB44 30620010 */  andi       $v0, $v1, 0x10
/* 6FE28 8002BB48 50400010 */  beql       $v0, $zero, .L8002BB8C
/* 6FE2C 8002BB4C 30620020 */   andi      $v0, $v1, 0x20
/* 6FE30 8002BB50 8E240008 */  lw         $a0, 8($s1)
/* 6FE34 8002BB54 10800008 */  beqz       $a0, .L8002BB78
/* 6FE38 8002BB58 00000000 */   nop
/* 6FE3C 8002BB5C 0C027B09 */  jal        func_8009EC24
/* 6FE40 8002BB60 00002821 */   addu      $a1, $zero, $zero
/* 6FE44 8002BB64 8E240008 */  lw         $a0, 8($s1)
/* 6FE48 8002BB68 0C027AFA */  jal        func_8009EBE8
/* 6FE4C 8002BB6C 00000000 */   nop
/* 6FE50 8002BB70 0C027AF5 */  jal        func_8009EBD4
/* 6FE54 8002BB74 8E240008 */   lw        $a0, 8($s1)
.L8002BB78:
/* 6FE58 8002BB78 8E24000C */  lw         $a0, 0xc($s1)
/* 6FE5C 8002BB7C 10800030 */  beqz       $a0, .L8002BC40
/* 6FE60 8002BB80 00002821 */   addu      $a1, $zero, $zero
/* 6FE64 8002BB84 0800AEF2 */  j          .L8002BBC8
/* 6FE68 8002BB88 00000000 */   nop
.L8002BB8C:
/* 6FE6C 8002BB8C 10400016 */  beqz       $v0, .L8002BBE8
/* 6FE70 8002BB90 00000000 */   nop
/* 6FE74 8002BB94 8E240008 */  lw         $a0, 8($s1)
/* 6FE78 8002BB98 10800008 */  beqz       $a0, .L8002BBBC
/* 6FE7C 8002BB9C 00000000 */   nop
/* 6FE80 8002BBA0 0C027B09 */  jal        func_8009EC24
/* 6FE84 8002BBA4 24050001 */   addiu     $a1, $zero, 1
/* 6FE88 8002BBA8 8E240008 */  lw         $a0, 8($s1)
/* 6FE8C 8002BBAC 0C027AFA */  jal        func_8009EBE8
/* 6FE90 8002BBB0 00000000 */   nop
/* 6FE94 8002BBB4 0C027AF5 */  jal        func_8009EBD4
/* 6FE98 8002BBB8 8E240008 */   lw        $a0, 8($s1)
.L8002BBBC:
/* 6FE9C 8002BBBC 8E24000C */  lw         $a0, 0xc($s1)
/* 6FEA0 8002BBC0 1080001F */  beqz       $a0, .L8002BC40
/* 6FEA4 8002BBC4 24050001 */   addiu     $a1, $zero, 1
.L8002BBC8:
/* 6FEA8 8002BBC8 0C027D49 */  jal        func_8009F524
/* 6FEAC 8002BBCC 00000000 */   nop
/* 6FEB0 8002BBD0 0C027D3A */  jal        func_8009F4E8
/* 6FEB4 8002BBD4 8E24000C */   lw        $a0, 0xc($s1)
/* 6FEB8 8002BBD8 0C027D35 */  jal        func_8009F4D4
/* 6FEBC 8002BBDC 8E24000C */   lw        $a0, 0xc($s1)
/* 6FEC0 8002BBE0 0800AF10 */  j          .L8002BC40
/* 6FEC4 8002BBE4 00000000 */   nop
.L8002BBE8:
/* 6FEC8 8002BBE8 8E240008 */  lw         $a0, 8($s1)
/* 6FECC 8002BBEC 10800003 */  beqz       $a0, .L8002BBFC
/* 6FED0 8002BBF0 00000000 */   nop
/* 6FED4 8002BBF4 0C027AF5 */  jal        func_8009EBD4
/* 6FED8 8002BBF8 00000000 */   nop
.L8002BBFC:
/* 6FEDC 8002BBFC 8E24000C */  lw         $a0, 0xc($s1)
/* 6FEE0 8002BC00 1080000F */  beqz       $a0, .L8002BC40
/* 6FEE4 8002BC04 00000000 */   nop
/* 6FEE8 8002BC08 0C027D35 */  jal        func_8009F4D4
/* 6FEEC 8002BC0C 00000000 */   nop
/* 6FEF0 8002BC10 0800AF10 */  j          .L8002BC40
/* 6FEF4 8002BC14 00000000 */   nop
.L8002BC18:
/* 6FEF8 8002BC18 8E240008 */  lw         $a0, 8($s1)
/* 6FEFC 8002BC1C 10800003 */  beqz       $a0, .L8002BC2C
/* 6FF00 8002BC20 00000000 */   nop
/* 6FF04 8002BC24 0C027AFA */  jal        func_8009EBE8
/* 6FF08 8002BC28 00000000 */   nop
.L8002BC2C:
/* 6FF0C 8002BC2C 8E24000C */  lw         $a0, 0xc($s1)
/* 6FF10 8002BC30 10800003 */  beqz       $a0, .L8002BC40
/* 6FF14 8002BC34 00000000 */   nop
/* 6FF18 8002BC38 0C027D3A */  jal        func_8009F4E8
/* 6FF1C 8002BC3C 00000000 */   nop
.L8002BC40:
/* 6FF20 8002BC40 8E240008 */  lw         $a0, 8($s1)
/* 6FF24 8002BC44 10800033 */  beqz       $a0, .L8002BD14
/* 6FF28 8002BC48 00000000 */   nop
/* 6FF2C 8002BC4C 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 6FF30 8002BC50 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 6FF34 8002BC54 30428000 */  andi       $v0, $v0, 0x8000
/* 6FF38 8002BC58 10400004 */  beqz       $v0, .L8002BC6C
/* 6FF3C 8002BC5C 00000000 */   nop
/* 6FF40 8002BC60 0C027ABB */  jal        func_8009EAEC
/* 6FF44 8002BC64 00000000 */   nop
/* 6FF48 8002BC68 8E240008 */  lw         $a0, 8($s1)
.L8002BC6C:
/* 6FF4C 8002BC6C 3C018003 */  lui        $at, %hi(D_8002EFFC)
/* 6FF50 8002BC70 C424EFFC */  lwc1       $f4, %lo(D_8002EFFC)($at)
/* 6FF54 8002BC74 46802120 */  cvt.s.w    $f4, $f4
/* 6FF58 8002BC78 44052000 */  mfc1       $a1, $f4
/* 6FF5C 8002BC7C 0C02795C */  jal        func_8009E570
/* 6FF60 8002BC80 00000000 */   nop
/* 6FF64 8002BC84 00002021 */  addu       $a0, $zero, $zero
/* 6FF68 8002BC88 0C02DAC0 */  jal        func_800B6B00
/* 6FF6C 8002BC8C 24050007 */   addiu     $a1, $zero, 7
/* 6FF70 8002BC90 8E260010 */  lw         $a2, 0x10($s1)
/* 6FF74 8002BC94 3C108017 */  lui        $s0, %hi(D_8016D178)
/* 6FF78 8002BC98 2610D178 */  addiu      $s0, $s0, %lo(D_8016D178)
/* 6FF7C 8002BC9C 3C058003 */  lui        $a1, %hi(D_800302EC)
/* 6FF80 8002BCA0 24A502EC */  addiu      $a1, $a1, %lo(D_800302EC)
/* 6FF84 8002BCA4 0C030180 */  jal        func_800C0600
/* 6FF88 8002BCA8 02002021 */   addu      $a0, $s0, $zero
/* 6FF8C 8002BCAC 00002021 */  addu       $a0, $zero, $zero
/* 6FF90 8002BCB0 24050003 */  addiu      $a1, $zero, 3
/* 6FF94 8002BCB4 0C02DAE0 */  jal        func_800B6B80
/* 6FF98 8002BCB8 24060016 */   addiu     $a2, $zero, 0x16
/* 6FF9C 8002BCBC 00002021 */  addu       $a0, $zero, $zero
/* 6FFA0 8002BCC0 0C02DA9C */  jal        func_800B6A70
/* 6FFA4 8002BCC4 02002821 */   addu      $a1, $s0, $zero
/* 6FFA8 8002BCC8 8E220008 */  lw         $v0, 8($s1)
/* 6FFAC 8002BCCC 8446001E */  lh         $a2, 0x1e($v0)
/* 6FFB0 8002BCD0 84470022 */  lh         $a3, 0x22($v0)
/* 6FFB4 8002BCD4 84420024 */  lh         $v0, 0x24($v0)
/* 6FFB8 8002BCD8 02002021 */  addu       $a0, $s0, $zero
/* 6FFBC 8002BCDC 3C058003 */  lui        $a1, %hi(D_800302F4)
/* 6FFC0 8002BCE0 24A502F4 */  addiu      $a1, $a1, %lo(D_800302F4)
/* 6FFC4 8002BCE4 0C030180 */  jal        func_800C0600
/* 6FFC8 8002BCE8 AFA20010 */   sw        $v0, 0x10($sp)
/* 6FFCC 8002BCEC 00002021 */  addu       $a0, $zero, $zero
/* 6FFD0 8002BCF0 24050003 */  addiu      $a1, $zero, 3
/* 6FFD4 8002BCF4 0C02DAE0 */  jal        func_800B6B80
/* 6FFD8 8002BCF8 24060017 */   addiu     $a2, $zero, 0x17
/* 6FFDC 8002BCFC 00002021 */  addu       $a0, $zero, $zero
/* 6FFE0 8002BD00 0C02DA9C */  jal        func_800B6A70
/* 6FFE4 8002BD04 02002821 */   addu      $a1, $s0, $zero
/* 6FFE8 8002BD08 8E240008 */  lw         $a0, 8($s1)
/* 6FFEC 8002BD0C 0C027A93 */  jal        func_8009EA4C
/* 6FFF0 8002BD10 00000000 */   nop
.L8002BD14:
/* 6FFF4 8002BD14 8E24000C */  lw         $a0, 0xc($s1)
/* 6FFF8 8002BD18 10800011 */  beqz       $a0, .L8002BD60
/* 6FFFC 8002BD1C 00000000 */   nop
/* 70000 8002BD20 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* 70004 8002BD24 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* 70008 8002BD28 30428000 */  andi       $v0, $v0, 0x8000
/* 7000C 8002BD2C 10400004 */  beqz       $v0, .L8002BD40
/* 70010 8002BD30 00000000 */   nop
/* 70014 8002BD34 0C027D2B */  jal        func_8009F4AC
/* 70018 8002BD38 00000000 */   nop
/* 7001C 8002BD3C 8E24000C */  lw         $a0, 0xc($s1)
.L8002BD40:
/* 70020 8002BD40 3C018003 */  lui        $at, %hi(D_8002EFFC)
/* 70024 8002BD44 C424EFFC */  lwc1       $f4, %lo(D_8002EFFC)($at)
/* 70028 8002BD48 46802120 */  cvt.s.w    $f4, $f4
/* 7002C 8002BD4C 44052000 */  mfc1       $a1, $f4
/* 70030 8002BD50 0C027C5E */  jal        func_8009F178
/* 70034 8002BD54 00000000 */   nop
/* 70038 8002BD58 0C027CED */  jal        func_8009F3B4
/* 7003C 8002BD5C 8E24000C */   lw        $a0, 0xc($s1)
.L8002BD60:
/* 70040 8002BD60 3C028003 */  lui        $v0, %hi(D_8002F004)
/* 70044 8002BD64 8C42F004 */  lw         $v0, %lo(D_8002F004)($v0)
/* 70048 8002BD68 10400016 */  beqz       $v0, .L8002BDC4
/* 7004C 8002BD6C 00000000 */   nop
/* 70050 8002BD70 8E220008 */  lw         $v0, 8($s1)
/* 70054 8002BD74 10400013 */  beqz       $v0, .L8002BDC4
/* 70058 8002BD78 00000000 */   nop
/* 7005C 8002BD7C 8C420014 */  lw         $v0, 0x14($v0)
/* 70060 8002BD80 C622002C */  lwc1       $f2, 0x2c($s1)
/* 70064 8002BD84 C4400000 */  lwc1       $f0, ($v0)
/* 70068 8002BD88 46020002 */  mul.s      $f0, $f0, $f2
/* 7006C 8002BD8C 8E220008 */  lw         $v0, 8($s1)
/* 70070 8002BD90 E6200030 */  swc1       $f0, 0x30($s1)
/* 70074 8002BD94 8C420014 */  lw         $v0, 0x14($v0)
/* 70078 8002BD98 C622002C */  lwc1       $f2, 0x2c($s1)
/* 7007C 8002BD9C C4400004 */  lwc1       $f0, 4($v0)
/* 70080 8002BDA0 46020002 */  mul.s      $f0, $f0, $f2
/* 70084 8002BDA4 8E220008 */  lw         $v0, 8($s1)
/* 70088 8002BDA8 E6200034 */  swc1       $f0, 0x34($s1)
/* 7008C 8002BDAC 8C420014 */  lw         $v0, 0x14($v0)
/* 70090 8002BDB0 C622002C */  lwc1       $f2, 0x2c($s1)
/* 70094 8002BDB4 C4400008 */  lwc1       $f0, 8($v0)
/* 70098 8002BDB8 46020002 */  mul.s      $f0, $f0, $f2
/* 7009C 8002BDBC 0800AF76 */  j          .L8002BDD8
/* 700A0 8002BDC0 E6200038 */   swc1      $f0, 0x38($s1)
.L8002BDC4:
/* 700A4 8002BDC4 44800000 */  mtc1       $zero, $f0
/* 700A8 8002BDC8 00000000 */  nop
/* 700AC 8002BDCC E6200038 */  swc1       $f0, 0x38($s1)
/* 700B0 8002BDD0 E6200034 */  swc1       $f0, 0x34($s1)
/* 700B4 8002BDD4 E6200030 */  swc1       $f0, 0x30($s1)
.L8002BDD8:
/* 700B8 8002BDD8 C620002C */  lwc1       $f0, 0x2c($s1)
/* 700BC 8002BDDC E7A00010 */  swc1       $f0, 0x10($sp)
/* 700C0 8002BDE0 C6200014 */  lwc1       $f0, 0x14($s1)
/* 700C4 8002BDE4 C6220030 */  lwc1       $f2, 0x30($s1)
/* 700C8 8002BDE8 46020001 */  sub.s      $f0, $f0, $f2
/* 700CC 8002BDEC E7A00014 */  swc1       $f0, 0x14($sp)
/* 700D0 8002BDF0 C6200018 */  lwc1       $f0, 0x18($s1)
/* 700D4 8002BDF4 C6220034 */  lwc1       $f2, 0x34($s1)
/* 700D8 8002BDF8 46020001 */  sub.s      $f0, $f0, $f2
/* 700DC 8002BDFC E7A00018 */  swc1       $f0, 0x18($sp)
/* 700E0 8002BE00 C620001C */  lwc1       $f0, 0x1c($s1)
/* 700E4 8002BE04 C6220038 */  lwc1       $f2, 0x38($s1)
/* 700E8 8002BE08 46020001 */  sub.s      $f0, $f0, $f2
/* 700EC 8002BE0C E7A0001C */  swc1       $f0, 0x1c($sp)
/* 700F0 8002BE10 8E250020 */  lw         $a1, 0x20($s1)
/* 700F4 8002BE14 8E260024 */  lw         $a2, 0x24($s1)
/* 700F8 8002BE18 8E270028 */  lw         $a3, 0x28($s1)
/* 700FC 8002BE1C 26300040 */  addiu      $s0, $s1, 0x40
/* 70100 8002BE20 0C02FD0E */  jal        func_800BF438
/* 70104 8002BE24 02002021 */   addu      $a0, $s0, $zero
/* 70108 8002BE28 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* 7010C 8002BE2C 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* 70110 8002BE30 3C03DA38 */  lui        $v1, 0xda38
/* 70114 8002BE34 34630003 */  ori        $v1, $v1, 3
/* 70118 8002BE38 AC430000 */  sw         $v1, ($v0)
/* 7011C 8002BE3C AC500004 */  sw         $s0, 4($v0)
/* 70120 8002BE40 8E23000C */  lw         $v1, 0xc($s1)
/* 70124 8002BE44 24420008 */  addiu      $v0, $v0, 8
/* 70128 8002BE48 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 7012C 8002BE4C 10600004 */  beqz       $v1, .L8002BE60
/* 70130 8002BE50 AC229F94 */   sw        $v0, %lo(gDisplayListHead)($at)
/* 70134 8002BE54 8E240004 */  lw         $a0, 4($s1)
/* 70138 8002BE58 0C027F67 */  jal        func_8009FD9C
/* 7013C 8002BE5C 02002821 */   addu      $a1, $s0, $zero
.L8002BE60:
/* 70140 8002BE60 8E240004 */  lw         $a0, 4($s1)
/* 70144 8002BE64 0C027F77 */  jal        func_8009FDDC
/* 70148 8002BE68 8E250008 */   lw        $a1, 8($s1)
/* 7014C 8002BE6C 3C028003 */  lui        $v0, %hi(D_8002EFEC)
/* 70150 8002BE70 8C42EFEC */  lw         $v0, %lo(D_8002EFEC)($v0)
/* 70154 8002BE74 10400007 */  beqz       $v0, .L8002BE94
/* 70158 8002BE78 00001021 */   addu      $v0, $zero, $zero
/* 7015C 8002BE7C 8E240090 */  lw         $a0, 0x90($s1)
/* 70160 8002BE80 10800004 */  beqz       $a0, .L8002BE94
/* 70164 8002BE84 00000000 */   nop
/* 70168 8002BE88 0C028A40 */  jal        func_800A2900
/* 7016C 8002BE8C 00000000 */   nop
/* 70170 8002BE90 00001021 */  addu       $v0, $zero, $zero
.L8002BE94:
/* 70174 8002BE94 8FBF0028 */  lw         $ra, 0x28($sp)
/* 70178 8002BE98 8FB10024 */  lw         $s1, 0x24($sp)
/* 7017C 8002BE9C 8FB00020 */  lw         $s0, 0x20($sp)
/* 70180 8002BEA0 03E00008 */  jr         $ra
/* 70184 8002BEA4 27BD0030 */   addiu     $sp, $sp, 0x30

glabel func_8002BEA8_70188
/* 70188 8002BEA8 3C038003 */  lui        $v1, %hi(D_8002F3B8)
/* 7018C 8002BEAC 9063F3B8 */  lbu        $v1, %lo(D_8002F3B8)($v1)
/* 70190 8002BEB0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 70194 8002BEB4 24020001 */  addiu      $v0, $zero, 1
/* 70198 8002BEB8 1062001F */  beq        $v1, $v0, .L8002BF38
/* 7019C 8002BEBC AFBF0010 */   sw        $ra, 0x10($sp)
/* 701A0 8002BEC0 28620002 */  slti       $v0, $v1, 2
/* 701A4 8002BEC4 50400005 */  beql       $v0, $zero, .L8002BEDC
/* 701A8 8002BEC8 24020002 */   addiu     $v0, $zero, 2
/* 701AC 8002BECC 10600009 */  beqz       $v1, .L8002BEF4
/* 701B0 8002BED0 00001021 */   addu      $v0, $zero, $zero
/* 701B4 8002BED4 0800AFEB */  j          .L8002BFAC
/* 701B8 8002BED8 00000000 */   nop
.L8002BEDC:
/* 701BC 8002BEDC 1062001E */  beq        $v1, $v0, .L8002BF58
/* 701C0 8002BEE0 24020003 */   addiu     $v0, $zero, 3
/* 701C4 8002BEE4 1062002A */  beq        $v1, $v0, .L8002BF90
/* 701C8 8002BEE8 00001021 */   addu      $v0, $zero, $zero
/* 701CC 8002BEEC 0800AFEB */  j          .L8002BFAC
/* 701D0 8002BEF0 00000000 */   nop
.L8002BEF4:
/* 701D4 8002BEF4 0C02A5AF */  jal        func_800A96BC
/* 701D8 8002BEF8 24040001 */   addiu     $a0, $zero, 1
/* 701DC 8002BEFC 3C048003 */  lui        $a0, %hi(func_8002AB88_6EE68)
/* 701E0 8002BF00 2484AB88 */  addiu      $a0, $a0, %lo(func_8002AB88_6EE68)
/* 701E4 8002BF04 00002821 */  addu       $a1, $zero, $zero
/* 701E8 8002BF08 2406012C */  addiu      $a2, $zero, 0x12c
/* 701EC 8002BF0C 0C025D06 */  jal        func_80097418
/* 701F0 8002BF10 24070001 */   addiu     $a3, $zero, 1
/* 701F4 8002BF14 24020001 */  addiu      $v0, $zero, 1
/* 701F8 8002BF18 3C018003 */  lui        $at, %hi(D_80030A30)
/* 701FC 8002BF1C A0200A30 */  sb         $zero, %lo(D_80030A30)($at)
/* 70200 8002BF20 3C018003 */  lui        $at, %hi(D_80030940)
/* 70204 8002BF24 AC200940 */  sw         $zero, %lo(D_80030940)($at)
/* 70208 8002BF28 3C018003 */  lui        $at, %hi(D_8002F3B8)
/* 7020C 8002BF2C A022F3B8 */  sb         $v0, %lo(D_8002F3B8)($at)
/* 70210 8002BF30 0800AFEB */  j          .L8002BFAC
/* 70214 8002BF34 00001021 */   addu      $v0, $zero, $zero
.L8002BF38:
/* 70218 8002BF38 3C028003 */  lui        $v0, %hi(D_80030A30)
/* 7021C 8002BF3C 90420A30 */  lbu        $v0, %lo(D_80030A30)($v0)
/* 70220 8002BF40 10400019 */  beqz       $v0, .L8002BFA8
/* 70224 8002BF44 24020002 */   addiu     $v0, $zero, 2
/* 70228 8002BF48 3C018003 */  lui        $at, %hi(D_8002F3B8)
/* 7022C 8002BF4C A022F3B8 */  sb         $v0, %lo(D_8002F3B8)($at)
/* 70230 8002BF50 0800AFEB */  j          .L8002BFAC
/* 70234 8002BF54 00001021 */   addu      $v0, $zero, $zero
.L8002BF58:
/* 70238 8002BF58 3C028003 */  lui        $v0, %hi(D_80030940)
/* 7023C 8002BF5C 8C420940 */  lw         $v0, %lo(D_80030940)($v0)
/* 70240 8002BF60 2442FFFF */  addiu      $v0, $v0, -1
/* 70244 8002BF64 3C018003 */  lui        $at, %hi(D_80030940)
/* 70248 8002BF68 AC220940 */  sw         $v0, %lo(D_80030940)($at)
/* 7024C 8002BF6C 1C40000F */  bgtz       $v0, .L8002BFAC
/* 70250 8002BF70 00001021 */   addu      $v0, $zero, $zero
/* 70254 8002BF74 0C02DB14 */  jal        func_800B6C50
/* 70258 8002BF78 00002021 */   addu      $a0, $zero, $zero
/* 7025C 8002BF7C 24020003 */  addiu      $v0, $zero, 3
/* 70260 8002BF80 3C018003 */  lui        $at, %hi(D_8002F3B8)
/* 70264 8002BF84 A022F3B8 */  sb         $v0, %lo(D_8002F3B8)($at)
/* 70268 8002BF88 0800AFEB */  j          .L8002BFAC
/* 7026C 8002BF8C 00001021 */   addu      $v0, $zero, $zero
.L8002BF90:
/* 70270 8002BF90 0C02DB14 */  jal        func_800B6C50
/* 70274 8002BF94 00002021 */   addu      $a0, $zero, $zero
/* 70278 8002BF98 3C018003 */  lui        $at, %hi(D_8002F3B8)
/* 7027C 8002BF9C A020F3B8 */  sb         $zero, %lo(D_8002F3B8)($at)
/* 70280 8002BFA0 0800AFEB */  j          .L8002BFAC
/* 70284 8002BFA4 24020001 */   addiu     $v0, $zero, 1
.L8002BFA8:
/* 70288 8002BFA8 00001021 */  addu       $v0, $zero, $zero
.L8002BFAC:
/* 7028C 8002BFAC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 70290 8002BFB0 03E00008 */  jr         $ra
/* 70294 8002BFB4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 70298 8002BFB8 00000000 */  nop
/* 7029C 8002BFBC 00000000 */  nop
