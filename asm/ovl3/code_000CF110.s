.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80025C00_CF110
/* CF110 80025C00 3C038006 */  lui        $v1, %hi(D_800671E0)
/* CF114 80025C04 906371E0 */  lbu        $v1, %lo(D_800671E0)($v1)
/* CF118 80025C08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF11C 80025C0C 2C620005 */  sltiu      $v0, $v1, 5
/* CF120 80025C10 1040004F */  beqz       $v0, .L80025D50
/* CF124 80025C14 AFBF0010 */   sw        $ra, 0x10($sp)
/* CF128 80025C18 00031080 */  sll        $v0, $v1, 2
/* CF12C 80025C1C 3C018007 */  lui        $at, %hi(D_80069AD0)
/* CF130 80025C20 00220821 */  addu       $at, $at, $v0
/* CF134 80025C24 8C229AD0 */  lw         $v0, %lo(D_80069AD0)($at)
/* CF138 80025C28 00400008 */  jr         $v0
/* CF13C 80025C2C 00000000 */   nop
/* CF140 80025C30 0C02A5AF */  jal        func_800A96BC
/* CF144 80025C34 24040001 */   addiu     $a0, $zero, 1
/* CF148 80025C38 24020001 */  addiu      $v0, $zero, 1
/* CF14C 80025C3C 3C018007 */  lui        $at, %hi(D_8006A600)
/* CF150 80025C40 AC20A600 */  sw         $zero, %lo(D_8006A600)($at)
/* CF154 80025C44 3C018007 */  lui        $at, %hi(D_8006A604)
/* CF158 80025C48 AC20A604 */  sw         $zero, %lo(D_8006A604)($at)
/* CF15C 80025C4C 3C018006 */  lui        $at, %hi(D_800671E0)
/* CF160 80025C50 A02271E0 */  sb         $v0, %lo(D_800671E0)($at)
/* CF164 80025C54 08009755 */  j          .L80025D54
/* CF168 80025C58 00001021 */   addu      $v0, $zero, $zero
/* CF16C 80025C5C 0C027444 */  jal        func_8009D110
/* CF170 80025C60 00002021 */   addu      $a0, $zero, $zero
/* CF174 80025C64 3C048006 */  lui        $a0, %hi(D_800671BC)
/* CF178 80025C68 0C027448 */  jal        func_8009D120
/* CF17C 80025C6C 248471BC */   addiu     $a0, $a0, %lo(D_800671BC)
/* CF180 80025C70 3C018007 */  lui        $at, %hi(D_8006A604)
/* CF184 80025C74 AC22A604 */  sw         $v0, %lo(D_8006A604)($at)
/* CF188 80025C78 10400036 */  beqz       $v0, .L80025D54
/* CF18C 80025C7C 00001021 */   addu      $v0, $zero, $zero
/* CF190 80025C80 0C02A5C1 */  jal        func_800A9704
/* CF194 80025C84 24040001 */   addiu     $a0, $zero, 1
/* CF198 80025C88 24020001 */  addiu      $v0, $zero, 1
/* CF19C 80025C8C 3C018007 */  lui        $at, %hi(D_8006A600)
/* CF1A0 80025C90 AC22A600 */  sw         $v0, %lo(D_8006A600)($at)
/* CF1A4 80025C94 24020002 */  addiu      $v0, $zero, 2
/* CF1A8 80025C98 3C018006 */  lui        $at, %hi(D_800671E0)
/* CF1AC 80025C9C A02271E0 */  sb         $v0, %lo(D_800671E0)($at)
/* CF1B0 80025CA0 08009755 */  j          .L80025D54
/* CF1B4 80025CA4 00001021 */   addu      $v0, $zero, $zero
/* CF1B8 80025CA8 3C048006 */  lui        $a0, %hi(D_800671BC)
/* CF1BC 80025CAC 248471BC */  addiu      $a0, $a0, %lo(D_800671BC)
/* CF1C0 80025CB0 0C0274BE */  jal        func_8009D2F8
/* CF1C4 80025CB4 24050001 */   addiu     $a1, $zero, 1
/* CF1C8 80025CB8 3C028007 */  lui        $v0, %hi(D_8006A600)
/* CF1CC 80025CBC 8C42A600 */  lw         $v0, %lo(D_8006A600)($v0)
/* CF1D0 80025CC0 2442FFFF */  addiu      $v0, $v0, -1
/* CF1D4 80025CC4 3C018007 */  lui        $at, %hi(D_8006A600)
/* CF1D8 80025CC8 AC22A600 */  sw         $v0, %lo(D_8006A600)($at)
/* CF1DC 80025CCC 14400021 */  bnez       $v0, .L80025D54
/* CF1E0 80025CD0 00001021 */   addu      $v0, $zero, $zero
/* CF1E4 80025CD4 0C02DB14 */  jal        func_800B6C50
/* CF1E8 80025CD8 00002021 */   addu      $a0, $zero, $zero
/* CF1EC 80025CDC 3C038007 */  lui        $v1, %hi(D_8006A604)
/* CF1F0 80025CE0 8C63A604 */  lw         $v1, %lo(D_8006A604)($v1)
/* CF1F4 80025CE4 2402FFFF */  addiu      $v0, $zero, -1
/* CF1F8 80025CE8 14620006 */  bne        $v1, $v0, .L80025D04
/* CF1FC 80025CEC 24020003 */   addiu     $v0, $zero, 3
/* CF200 80025CF0 24020004 */  addiu      $v0, $zero, 4
/* CF204 80025CF4 3C018006 */  lui        $at, %hi(D_800671E0)
/* CF208 80025CF8 A02271E0 */  sb         $v0, %lo(D_800671E0)($at)
/* CF20C 80025CFC 08009755 */  j          .L80025D54
/* CF210 80025D00 00001021 */   addu      $v0, $zero, $zero
.L80025D04:
/* CF214 80025D04 3C018006 */  lui        $at, %hi(D_800671E0)
/* CF218 80025D08 A02271E0 */  sb         $v0, %lo(D_800671E0)($at)
/* CF21C 80025D0C 08009755 */  j          .L80025D54
/* CF220 80025D10 00001021 */   addu      $v0, $zero, $zero
/* CF224 80025D14 3C028007 */  lui        $v0, %hi(D_8006A604)
/* CF228 80025D18 8C42A604 */  lw         $v0, %lo(D_8006A604)($v0)
/* CF22C 80025D1C 0040F809 */  jalr       $v0
/* CF230 80025D20 00000000 */   nop
/* CF234 80025D24 1040000B */  beqz       $v0, .L80025D54
/* CF238 80025D28 00001021 */   addu      $v0, $zero, $zero
/* CF23C 80025D2C 3C018006 */  lui        $at, %hi(D_800671E0)
/* CF240 80025D30 08009755 */  j          .L80025D54
/* CF244 80025D34 A02071E0 */   sb        $zero, %lo(D_800671E0)($at)
/* CF248 80025D38 0C02DB14 */  jal        func_800B6C50
/* CF24C 80025D3C 00002021 */   addu      $a0, $zero, $zero
/* CF250 80025D40 3C018006 */  lui        $at, %hi(D_800671E0)
/* CF254 80025D44 A02071E0 */  sb         $zero, %lo(D_800671E0)($at)
/* CF258 80025D48 08009755 */  j          .L80025D54
/* CF25C 80025D4C 24020001 */   addiu     $v0, $zero, 1
.L80025D50:
/* CF260 80025D50 00001021 */  addu       $v0, $zero, $zero
.L80025D54:
/* CF264 80025D54 8FBF0010 */  lw         $ra, 0x10($sp)
/* CF268 80025D58 03E00008 */  jr         $ra
/* CF26C 80025D5C 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80025D60_CF270
/* CF270 80025D60 03E00008 */  jr         $ra
/* CF274 80025D64 00000000 */   nop

glabel func_80025D68_CF278
/* CF278 80025D68 03E00008 */  jr         $ra
/* CF27C 80025D6C 00000000 */   nop

glabel func_80025D70_CF280
/* CF280 80025D70 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF284 80025D74 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF288 80025D78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF28C 80025D7C 14400005 */  bnez       $v0, .L80025D94
/* CF290 80025D80 AFBF0010 */   sw        $ra, 0x10($sp)
/* CF294 80025D84 0C009772 */  jal        func_80025DC8_CF2D8
/* CF298 80025D88 00000000 */   nop
/* CF29C 80025D8C 0800976F */  j          .L80025DBC
/* CF2A0 80025D90 00001021 */   addu      $v0, $zero, $zero
.L80025D94:
/* CF2A4 80025D94 84420034 */  lh         $v0, 0x34($v0)
/* CF2A8 80025D98 18400005 */  blez       $v0, .L80025DB0
/* CF2AC 80025D9C 00000000 */   nop
/* CF2B0 80025DA0 0C009801 */  jal        func_80026004_CF514
/* CF2B4 80025DA4 00000000 */   nop
/* CF2B8 80025DA8 0800976F */  j          .L80025DBC
/* CF2BC 80025DAC 00001021 */   addu      $v0, $zero, $zero
.L80025DB0:
/* CF2C0 80025DB0 0C0097E2 */  jal        func_80025F88_CF498
/* CF2C4 80025DB4 00000000 */   nop
/* CF2C8 80025DB8 24020001 */  addiu      $v0, $zero, 1
.L80025DBC:
/* CF2CC 80025DBC 8FBF0010 */  lw         $ra, 0x10($sp)
/* CF2D0 80025DC0 03E00008 */  jr         $ra
/* CF2D4 80025DC4 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80025DC8_CF2D8
/* CF2D8 80025DC8 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* CF2DC 80025DCC AFBF0024 */  sw         $ra, 0x24($sp)
/* CF2E0 80025DD0 AFB40020 */  sw         $s4, 0x20($sp)
/* CF2E4 80025DD4 AFB3001C */  sw         $s3, 0x1c($sp)
/* CF2E8 80025DD8 AFB20018 */  sw         $s2, 0x18($sp)
/* CF2EC 80025DDC AFB10014 */  sw         $s1, 0x14($sp)
/* CF2F0 80025DE0 AFB00010 */  sw         $s0, 0x10($sp)
/* CF2F4 80025DE4 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* CF2F8 80025DE8 F7B80038 */  sdc1       $f24, 0x38($sp)
/* CF2FC 80025DEC F7B60030 */  sdc1       $f22, 0x30($sp)
/* CF300 80025DF0 F7B40028 */  sdc1       $f20, 0x28($sp)
/* CF304 80025DF4 0C032663 */  jal        func_800C998C
/* CF308 80025DF8 24040038 */   addiu     $a0, $zero, 0x38
/* CF30C 80025DFC 00402021 */  addu       $a0, $v0, $zero
/* CF310 80025E00 3C018006 */  lui        $at, %hi(D_800671F0)
/* CF314 80025E04 AC2471F0 */  sw         $a0, %lo(D_800671F0)($at)
/* CF318 80025E08 0C030134 */  jal        bzero
/* CF31C 80025E0C 24050038 */   addiu     $a1, $zero, 0x38
/* CF320 80025E10 24040011 */  addiu      $a0, $zero, 0x11
/* CF324 80025E14 24050001 */  addiu      $a1, $zero, 1
/* CF328 80025E18 0C028CB7 */  jal        func_800A32DC
/* CF32C 80025E1C 00003021 */   addu      $a2, $zero, $zero
/* CF330 80025E20 00402021 */  addu       $a0, $v0, $zero
/* CF334 80025E24 24050033 */  addiu      $a1, $zero, 0x33
/* CF338 80025E28 24060044 */  addiu      $a2, $zero, 0x44
/* CF33C 80025E2C 00008821 */  addu       $s1, $zero, $zero
/* CF340 80025E30 3C01414C */  lui        $at, 0x414c
/* CF344 80025E34 4481D000 */  mtc1       $at, $f26
/* CF348 80025E38 3C013FC0 */  lui        $at, 0x3fc0
/* CF34C 80025E3C 4481C000 */  mtc1       $at, $f24
/* CF350 80025E40 3C0141F0 */  lui        $at, 0x41f0
/* CF354 80025E44 4481B000 */  mtc1       $at, $f22
/* CF358 80025E48 0000A021 */  addu       $s4, $zero, $zero
/* CF35C 80025E4C 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF360 80025E50 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF364 80025E54 3C130140 */  lui        $s3, 0x140
/* CF368 80025E58 4480A000 */  mtc1       $zero, $f20
/* CF36C 80025E5C 3C128006 */  lui        $s2, %hi(D_800671F4)
/* CF370 80025E60 265271F4 */  addiu      $s2, $s2, %lo(D_800671F4)
/* CF374 80025E64 0C028F9A */  jal        func_800A3E68
/* CF378 80025E68 AC440000 */   sw        $a0, ($v0)
.L80025E6C:
/* CF37C 80025E6C 96440000 */  lhu        $a0, ($s2)
/* CF380 80025E70 24050006 */  addiu      $a1, $zero, 6
/* CF384 80025E74 0C028CB7 */  jal        func_800A32DC
/* CF388 80025E78 00003021 */   addu      $a2, $zero, $zero
/* CF38C 80025E7C 3C048006 */  lui        $a0, %hi(D_800671F0)
/* CF390 80025E80 8C8471F0 */  lw         $a0, %lo(D_800671F0)($a0)
/* CF394 80025E84 00118080 */  sll        $s0, $s1, 2
/* CF398 80025E88 02042021 */  addu       $a0, $s0, $a0
/* CF39C 80025E8C AC820004 */  sw         $v0, 4($a0)
/* CF3A0 80025E90 8C420014 */  lw         $v0, 0x14($v0)
/* CF3A4 80025E94 A440001E */  sh         $zero, 0x1e($v0)
/* CF3A8 80025E98 8C830004 */  lw         $v1, 4($a0)
/* CF3AC 80025E9C 9462001E */  lhu        $v0, 0x1e($v1)
/* CF3B0 80025EA0 34420004 */  ori        $v0, $v0, 4
/* CF3B4 80025EA4 A462001E */  sh         $v0, 0x1e($v1)
/* CF3B8 80025EA8 8C840004 */  lw         $a0, 4($a0)
/* CF3BC 80025EAC 24050060 */  addiu      $a1, $zero, 0x60
/* CF3C0 80025EB0 0C028D89 */  jal        func_800A3624
/* CF3C4 80025EB4 00133403 */   sra       $a2, $s3, 0x10
/* CF3C8 80025EB8 44940000 */  mtc1       $s4, $f0
/* CF3CC 80025EBC 00000000 */  nop
/* CF3D0 80025EC0 46800020 */  cvt.s.w    $f0, $f0
/* CF3D4 80025EC4 461A0082 */  mul.s      $f2, $f0, $f26
/* CF3D8 80025EC8 26520002 */  addiu      $s2, $s2, 2
/* CF3DC 80025ECC 46180002 */  mul.s      $f0, $f0, $f24
/* CF3E0 80025ED0 26310001 */  addiu      $s1, $s1, 1
/* CF3E4 80025ED4 2694000A */  addiu      $s4, $s4, 0xa
/* CF3E8 80025ED8 4602A081 */  sub.s      $f2, $f20, $f2
/* CF3EC 80025EDC 3C058006 */  lui        $a1, %hi(D_800671F0)
/* CF3F0 80025EE0 8CA571F0 */  lw         $a1, %lo(D_800671F0)($a1)
/* CF3F4 80025EE4 3C020050 */  lui        $v0, 0x50
/* CF3F8 80025EE8 02629821 */  addu       $s3, $s3, $v0
/* CF3FC 80025EEC 46160000 */  add.s      $f0, $f0, $f22
/* CF400 80025EF0 2A220004 */  slti       $v0, $s1, 4
/* CF404 80025EF4 02058021 */  addu       $s0, $s0, $a1
/* CF408 80025EF8 E6020014 */  swc1       $f2, 0x14($s0)
/* CF40C 80025EFC 1440FFDB */  bnez       $v0, .L80025E6C
/* CF410 80025F00 E6000024 */   swc1      $f0, 0x24($s0)
/* CF414 80025F04 3C028017 */  lui        $v0, %hi(D_8016D168)
/* CF418 80025F08 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* CF41C 80025F0C 24040002 */  addiu      $a0, $zero, 2
/* CF420 80025F10 A0A00036 */  sb         $zero, 0x36($a1)
/* CF424 80025F14 00021840 */  sll        $v1, $v0, 1
/* CF428 80025F18 00621821 */  addu       $v1, $v1, $v0
/* CF42C 80025F1C 24630028 */  addiu      $v1, $v1, 0x28
/* CF430 80025F20 0C026449 */  jal        func_80099124
/* CF434 80025F24 A4A30034 */   sh        $v1, 0x34($a1)
/* CF438 80025F28 3C028017 */  lui        $v0, %hi(D_8016D828)
/* CF43C 80025F2C 9042D828 */  lbu        $v0, %lo(D_8016D828)($v0)
/* CF440 80025F30 10400007 */  beqz       $v0, .L80025F50
/* CF444 80025F34 00000000 */   nop
/* CF448 80025F38 3C018017 */  lui        $at, %hi(D_8016D828)
/* CF44C 80025F3C A020D828 */  sb         $zero, %lo(D_8016D828)($at)
/* CF450 80025F40 0C02A5D2 */  jal        func_800A9748
/* CF454 80025F44 24040014 */   addiu     $a0, $zero, 0x14
/* CF458 80025F48 080097D6 */  j          .L80025F58
/* CF45C 80025F4C 00000000 */   nop
.L80025F50:
/* CF460 80025F50 0C02A5AF */  jal        func_800A96BC
/* CF464 80025F54 24040014 */   addiu     $a0, $zero, 0x14
.L80025F58:
/* CF468 80025F58 8FBF0024 */  lw         $ra, 0x24($sp)
/* CF46C 80025F5C 8FB40020 */  lw         $s4, 0x20($sp)
/* CF470 80025F60 8FB3001C */  lw         $s3, 0x1c($sp)
/* CF474 80025F64 8FB20018 */  lw         $s2, 0x18($sp)
/* CF478 80025F68 8FB10014 */  lw         $s1, 0x14($sp)
/* CF47C 80025F6C 8FB00010 */  lw         $s0, 0x10($sp)
/* CF480 80025F70 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* CF484 80025F74 D7B80038 */  ldc1       $f24, 0x38($sp)
/* CF488 80025F78 D7B60030 */  ldc1       $f22, 0x30($sp)
/* CF48C 80025F7C D7B40028 */  ldc1       $f20, 0x28($sp)
/* CF490 80025F80 03E00008 */  jr         $ra
/* CF494 80025F84 27BD0048 */   addiu     $sp, $sp, 0x48

glabel func_80025F88_CF498
/* CF498 80025F88 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF49C 80025F8C 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF4A0 80025F90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CF4A4 80025F94 AFBF0014 */  sw         $ra, 0x14($sp)
/* CF4A8 80025F98 AFB00010 */  sw         $s0, 0x10($sp)
/* CF4AC 80025F9C 8C440000 */  lw         $a0, ($v0)
/* CF4B0 80025FA0 0C028D30 */  jal        func_800A34C0
/* CF4B4 80025FA4 00008021 */   addu      $s0, $zero, $zero
.L80025FA8:
/* CF4B8 80025FA8 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF4BC 80025FAC 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF4C0 80025FB0 00101880 */  sll        $v1, $s0, 2
/* CF4C4 80025FB4 00621821 */  addu       $v1, $v1, $v0
/* CF4C8 80025FB8 8C640004 */  lw         $a0, 4($v1)
/* CF4CC 80025FBC 0C028D30 */  jal        func_800A34C0
/* CF4D0 80025FC0 26100001 */   addiu     $s0, $s0, 1
/* CF4D4 80025FC4 2A020004 */  slti       $v0, $s0, 4
/* CF4D8 80025FC8 1440FFF7 */  bnez       $v0, .L80025FA8
/* CF4DC 80025FCC 00000000 */   nop
/* CF4E0 80025FD0 3C048006 */  lui        $a0, %hi(D_800671F0)
/* CF4E4 80025FD4 0C0326A1 */  jal        func_800C9A84
/* CF4E8 80025FD8 8C8471F0 */   lw        $a0, %lo(D_800671F0)($a0)
/* CF4EC 80025FDC 3C018006 */  lui        $at, %hi(D_800671F0)
/* CF4F0 80025FE0 AC2071F0 */  sw         $zero, %lo(D_800671F0)($at)
/* CF4F4 80025FE4 0C026449 */  jal        func_80099124
/* CF4F8 80025FE8 24040002 */   addiu     $a0, $zero, 2
/* CF4FC 80025FEC 0C02DB14 */  jal        func_800B6C50
/* CF500 80025FF0 00002021 */   addu      $a0, $zero, $zero
/* CF504 80025FF4 8FBF0014 */  lw         $ra, 0x14($sp)
/* CF508 80025FF8 8FB00010 */  lw         $s0, 0x10($sp)
/* CF50C 80025FFC 03E00008 */  jr         $ra
/* CF510 80026000 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80026004_CF514
/* CF514 80026004 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF518 80026008 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF51C 8002600C 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* CF520 80026010 AFBF0024 */  sw         $ra, 0x24($sp)
/* CF524 80026014 AFB20020 */  sw         $s2, 0x20($sp)
/* CF528 80026018 AFB1001C */  sw         $s1, 0x1c($sp)
/* CF52C 8002601C AFB00018 */  sw         $s0, 0x18($sp)
/* CF530 80026020 F7BC0048 */  sdc1       $f28, 0x48($sp)
/* CF534 80026024 F7BA0040 */  sdc1       $f26, 0x40($sp)
/* CF538 80026028 F7B80038 */  sdc1       $f24, 0x38($sp)
/* CF53C 8002602C F7B60030 */  sdc1       $f22, 0x30($sp)
/* CF540 80026030 F7B40028 */  sdc1       $f20, 0x28($sp)
/* CF544 80026034 0C028A40 */  jal        func_800A2900
/* CF548 80026038 8C440000 */   lw        $a0, ($v0)
/* CF54C 8002603C 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF550 80026040 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF554 80026044 90430036 */  lbu        $v1, 0x36($v0)
/* CF558 80026048 10600005 */  beqz       $v1, .L80026060
/* CF55C 8002604C 24020001 */   addiu     $v0, $zero, 1
/* CF560 80026050 1062007E */  beq        $v1, $v0, .L8002624C
/* CF564 80026054 3C128000 */   lui       $s2, 0x8000
/* CF568 80026058 0800990B */  j          .L8002642C
/* CF56C 8002605C 00000000 */   nop
.L80026060:
/* CF570 80026060 3C0141F0 */  lui        $at, 0x41f0
/* CF574 80026064 4481E000 */  mtc1       $at, $f28
/* CF578 80026068 3C013F80 */  lui        $at, 0x3f80
/* CF57C 8002606C 4481D000 */  mtc1       $at, $f26
/* CF580 80026070 3C014480 */  lui        $at, 0x4480
/* CF584 80026074 4481C000 */  mtc1       $at, $f24
/* CF588 80026078 3C014F00 */  lui        $at, 0x4f00
/* CF58C 8002607C 4481B000 */  mtc1       $at, $f22
/* CF590 80026080 00008821 */  addu       $s1, $zero, $zero
/* CF594 80026084 00008021 */  addu       $s0, $zero, $zero
.L80026088:
/* CF598 80026088 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF59C 8002608C 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF5A0 80026090 3C01414C */  lui        $at, 0x414c
/* CF5A4 80026094 44810000 */  mtc1       $at, $f0
/* CF5A8 80026098 02021021 */  addu       $v0, $s0, $v0
/* CF5AC 8002609C C4440014 */  lwc1       $f4, 0x14($v0)
/* CF5B0 800260A0 C4420024 */  lwc1       $f2, 0x24($v0)
/* CF5B4 800260A4 46002100 */  add.s      $f4, $f4, $f0
/* CF5B8 800260A8 3C013FC0 */  lui        $at, 0x3fc0
/* CF5BC 800260AC 44810000 */  mtc1       $at, $f0
/* CF5C0 800260B0 00000000 */  nop
/* CF5C4 800260B4 46001081 */  sub.s      $f2, $f2, $f0
/* CF5C8 800260B8 4600200D */  trunc.w.s  $f0, $f4
/* CF5CC 800260BC 44040000 */  mfc1       $a0, $f0
/* CF5D0 800260C0 3C01437F */  lui        $at, 0x437f
/* CF5D4 800260C4 44810000 */  mtc1       $at, $f0
/* CF5D8 800260C8 46001506 */  mov.s      $f20, $f2
/* CF5DC 800260CC 44841000 */  mtc1       $a0, $f2
/* CF5E0 800260D0 00000000 */  nop
/* CF5E4 800260D4 468010A0 */  cvt.s.w    $f2, $f2
/* CF5E8 800260D8 4602003C */  c.lt.s     $f0, $f2
/* CF5EC 800260DC E4440014 */  swc1       $f4, 0x14($v0)
/* CF5F0 800260E0 00000000 */  nop
/* CF5F4 800260E4 45000003 */  bc1f       .L800260F4
/* CF5F8 800260E8 E4540024 */   swc1      $f20, 0x24($v0)
/* CF5FC 800260EC 08009844 */  j          .L80026110
/* CF600 800260F0 240400FF */   addiu     $a0, $zero, 0xff
.L800260F4:
/* CF604 800260F4 44800000 */  mtc1       $zero, $f0
/* CF608 800260F8 00000000 */  nop
/* CF60C 800260FC 4600103C */  c.lt.s     $f2, $f0
/* CF610 80026100 00000000 */  nop
/* CF614 80026104 00000000 */  nop
/* CF618 80026108 45030001 */  bc1tl      .L80026110
/* CF61C 8002610C 00002021 */   addu      $a0, $zero, $zero
.L80026110:
/* CF620 80026110 3C038006 */  lui        $v1, %hi(D_800671F0)
/* CF624 80026114 8C6371F0 */  lw         $v1, %lo(D_800671F0)($v1)
/* CF628 80026118 240500FF */  addiu      $a1, $zero, 0xff
/* CF62C 8002611C 308200FF */  andi       $v0, $a0, 0xff
/* CF630 80026120 AFA20010 */  sw         $v0, 0x10($sp)
/* CF634 80026124 02031821 */  addu       $v1, $s0, $v1
/* CF638 80026128 8C640004 */  lw         $a0, 4($v1)
/* CF63C 8002612C 240600FF */  addiu      $a2, $zero, 0xff
/* CF640 80026130 0C028E41 */  jal        func_800A3904
/* CF644 80026134 240700FF */   addiu     $a3, $zero, 0xff
/* CF648 80026138 4614E03C */  c.lt.s     $f28, $f20
/* CF64C 8002613C 00000000 */  nop
/* CF650 80026140 45000003 */  bc1f       .L80026150
/* CF654 80026144 00000000 */   nop
/* CF658 80026148 08009859 */  j          .L80026164
/* CF65C 8002614C 4600E506 */   mov.s     $f20, $f28
.L80026150:
/* CF660 80026150 461AA03C */  c.lt.s     $f20, $f26
/* CF664 80026154 00000000 */  nop
/* CF668 80026158 00000000 */  nop
/* CF66C 8002615C 45030001 */  bc1tl      .L80026164
/* CF670 80026160 4600D506 */   mov.s     $f20, $f26
.L80026164:
/* CF674 80026164 4614C083 */  div.s      $f2, $f24, $f20
/* CF678 80026168 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF67C 8002616C 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF680 80026170 4602B03E */  c.le.s     $f22, $f2
/* CF684 80026174 02021021 */  addu       $v0, $s0, $v0
/* CF688 80026178 00000000 */  nop
/* CF68C 8002617C 45010005 */  bc1t       .L80026194
/* CF690 80026180 24440004 */   addiu     $a0, $v0, 4
/* CF694 80026184 4600100D */  trunc.w.s  $f0, $f2
/* CF698 80026188 44060000 */  mfc1       $a2, $f0
/* CF69C 8002618C 0800986A */  j          .L800261A8
/* CF6A0 80026190 00000000 */   nop
.L80026194:
/* CF6A4 80026194 46161001 */  sub.s      $f0, $f2, $f22
/* CF6A8 80026198 4600008D */  trunc.w.s  $f2, $f0
/* CF6AC 8002619C 44061000 */  mfc1       $a2, $f2
/* CF6B0 800261A0 3C028000 */  lui        $v0, 0x8000
/* CF6B4 800261A4 00C23025 */  or         $a2, $a2, $v0
.L800261A8:
/* CF6B8 800261A8 8C840000 */  lw         $a0, ($a0)
/* CF6BC 800261AC 24050400 */  addiu      $a1, $zero, 0x400
/* CF6C0 800261B0 0C0292D4 */  jal        func_800A4B50
/* CF6C4 800261B4 30C6FFFF */   andi      $a2, $a2, 0xffff
/* CF6C8 800261B8 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF6CC 800261BC 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF6D0 800261C0 02021021 */  addu       $v0, $s0, $v0
/* CF6D4 800261C4 8C440004 */  lw         $a0, 4($v0)
/* CF6D8 800261C8 8C830000 */  lw         $v1, ($a0)
/* CF6DC 800261CC 9462001E */  lhu        $v0, 0x1e($v1)
/* CF6E0 800261D0 44821000 */  mtc1       $v0, $f2
/* CF6E4 800261D4 00000000 */  nop
/* CF6E8 800261D8 468010A0 */  cvt.s.w    $f2, $f2
/* CF6EC 800261DC 4602C083 */  div.s      $f2, $f24, $f2
/* CF6F0 800261E0 9462000A */  lhu        $v0, 0xa($v1)
/* CF6F4 800261E4 000210C2 */  srl        $v0, $v0, 3
/* CF6F8 800261E8 44820000 */  mtc1       $v0, $f0
/* CF6FC 800261EC 00000000 */  nop
/* CF700 800261F0 46800020 */  cvt.s.w    $f0, $f0
/* CF704 800261F4 46020002 */  mul.s      $f0, $f0, $f2
/* CF708 800261F8 24050060 */  addiu      $a1, $zero, 0x60
/* CF70C 800261FC 4600008D */  trunc.w.s  $f2, $f0
/* CF710 80026200 44061000 */  mfc1       $a2, $f2
/* CF714 80026204 00000000 */  nop
/* CF718 80026208 24C6FFB0 */  addiu      $a2, $a2, -0x50
/* CF71C 8002620C 02263023 */  subu       $a2, $s1, $a2
/* CF720 80026210 00063480 */  sll        $a2, $a2, 0x12
/* CF724 80026214 0C028D89 */  jal        func_800A3624
/* CF728 80026218 00063403 */   sra       $a2, $a2, 0x10
/* CF72C 8002621C 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF730 80026220 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF734 80026224 02021021 */  addu       $v0, $s0, $v0
/* CF738 80026228 8C440004 */  lw         $a0, 4($v0)
/* CF73C 8002622C 26310014 */  addiu      $s1, $s1, 0x14
/* CF740 80026230 0C028A40 */  jal        func_800A2900
/* CF744 80026234 26100004 */   addiu     $s0, $s0, 4
/* CF748 80026238 2A220050 */  slti       $v0, $s1, 0x50
/* CF74C 8002623C 1040007B */  beqz       $v0, .L8002642C
/* CF750 80026240 00000000 */   nop
/* CF754 80026244 08009822 */  j          .L80026088
/* CF758 80026248 00000000 */   nop
.L8002624C:
/* CF75C 8002624C 3C0141F0 */  lui        $at, 0x41f0
/* CF760 80026250 4481E000 */  mtc1       $at, $f28
/* CF764 80026254 3C013F80 */  lui        $at, 0x3f80
/* CF768 80026258 4481D000 */  mtc1       $at, $f26
/* CF76C 8002625C 3C014480 */  lui        $at, 0x4480
/* CF770 80026260 4481C000 */  mtc1       $at, $f24
/* CF774 80026264 3C014F00 */  lui        $at, 0x4f00
/* CF778 80026268 4481B000 */  mtc1       $at, $f22
/* CF77C 8002626C 2411003C */  addiu      $s1, $zero, 0x3c
/* CF780 80026270 2410000C */  addiu      $s0, $zero, 0xc
.L80026274:
/* CF784 80026274 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF788 80026278 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF78C 8002627C 3C01414C */  lui        $at, 0x414c
/* CF790 80026280 44810000 */  mtc1       $at, $f0
/* CF794 80026284 02021021 */  addu       $v0, $s0, $v0
/* CF798 80026288 C4440014 */  lwc1       $f4, 0x14($v0)
/* CF79C 8002628C C4420024 */  lwc1       $f2, 0x24($v0)
/* CF7A0 80026290 46002101 */  sub.s      $f4, $f4, $f0
/* CF7A4 80026294 3C013FC0 */  lui        $at, 0x3fc0
/* CF7A8 80026298 44810000 */  mtc1       $at, $f0
/* CF7AC 8002629C 00000000 */  nop
/* CF7B0 800262A0 46001080 */  add.s      $f2, $f2, $f0
/* CF7B4 800262A4 4600200D */  trunc.w.s  $f0, $f4
/* CF7B8 800262A8 44040000 */  mfc1       $a0, $f0
/* CF7BC 800262AC 3C01437F */  lui        $at, 0x437f
/* CF7C0 800262B0 44810000 */  mtc1       $at, $f0
/* CF7C4 800262B4 46001506 */  mov.s      $f20, $f2
/* CF7C8 800262B8 44841000 */  mtc1       $a0, $f2
/* CF7CC 800262BC 00000000 */  nop
/* CF7D0 800262C0 468010A0 */  cvt.s.w    $f2, $f2
/* CF7D4 800262C4 4602003C */  c.lt.s     $f0, $f2
/* CF7D8 800262C8 E4440014 */  swc1       $f4, 0x14($v0)
/* CF7DC 800262CC 00000000 */  nop
/* CF7E0 800262D0 45000003 */  bc1f       .L800262E0
/* CF7E4 800262D4 E4540024 */   swc1      $f20, 0x24($v0)
/* CF7E8 800262D8 080098BF */  j          .L800262FC
/* CF7EC 800262DC 240400FF */   addiu     $a0, $zero, 0xff
.L800262E0:
/* CF7F0 800262E0 44800000 */  mtc1       $zero, $f0
/* CF7F4 800262E4 00000000 */  nop
/* CF7F8 800262E8 4600103C */  c.lt.s     $f2, $f0
/* CF7FC 800262EC 00000000 */  nop
/* CF800 800262F0 00000000 */  nop
/* CF804 800262F4 45030001 */  bc1tl      .L800262FC
/* CF808 800262F8 00002021 */   addu      $a0, $zero, $zero
.L800262FC:
/* CF80C 800262FC 3C038006 */  lui        $v1, %hi(D_800671F0)
/* CF810 80026300 8C6371F0 */  lw         $v1, %lo(D_800671F0)($v1)
/* CF814 80026304 240500FF */  addiu      $a1, $zero, 0xff
/* CF818 80026308 308200FF */  andi       $v0, $a0, 0xff
/* CF81C 8002630C AFA20010 */  sw         $v0, 0x10($sp)
/* CF820 80026310 02031821 */  addu       $v1, $s0, $v1
/* CF824 80026314 8C640004 */  lw         $a0, 4($v1)
/* CF828 80026318 240600FF */  addiu      $a2, $zero, 0xff
/* CF82C 8002631C 0C028E41 */  jal        func_800A3904
/* CF830 80026320 240700FF */   addiu     $a3, $zero, 0xff
/* CF834 80026324 4614E03C */  c.lt.s     $f28, $f20
/* CF838 80026328 00000000 */  nop
/* CF83C 8002632C 45000003 */  bc1f       .L8002633C
/* CF840 80026330 00000000 */   nop
/* CF844 80026334 080098D4 */  j          .L80026350
/* CF848 80026338 4600E506 */   mov.s     $f20, $f28
.L8002633C:
/* CF84C 8002633C 461AA03C */  c.lt.s     $f20, $f26
/* CF850 80026340 00000000 */  nop
/* CF854 80026344 00000000 */  nop
/* CF858 80026348 45030001 */  bc1tl      .L80026350
/* CF85C 8002634C 4600D506 */   mov.s     $f20, $f26
.L80026350:
/* CF860 80026350 4614C083 */  div.s      $f2, $f24, $f20
/* CF864 80026354 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF868 80026358 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF86C 8002635C 4602B03E */  c.le.s     $f22, $f2
/* CF870 80026360 02021021 */  addu       $v0, $s0, $v0
/* CF874 80026364 00000000 */  nop
/* CF878 80026368 45010005 */  bc1t       .L80026380
/* CF87C 8002636C 24440004 */   addiu     $a0, $v0, 4
/* CF880 80026370 4600100D */  trunc.w.s  $f0, $f2
/* CF884 80026374 44060000 */  mfc1       $a2, $f0
/* CF888 80026378 080098E5 */  j          .L80026394
/* CF88C 8002637C 00000000 */   nop
.L80026380:
/* CF890 80026380 46161001 */  sub.s      $f0, $f2, $f22
/* CF894 80026384 4600008D */  trunc.w.s  $f2, $f0
/* CF898 80026388 44061000 */  mfc1       $a2, $f2
/* CF89C 8002638C 00000000 */  nop
/* CF8A0 80026390 00D23025 */  or         $a2, $a2, $s2
.L80026394:
/* CF8A4 80026394 8C840000 */  lw         $a0, ($a0)
/* CF8A8 80026398 24050400 */  addiu      $a1, $zero, 0x400
/* CF8AC 8002639C 0C0292D4 */  jal        func_800A4B50
/* CF8B0 800263A0 30C6FFFF */   andi      $a2, $a2, 0xffff
/* CF8B4 800263A4 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF8B8 800263A8 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF8BC 800263AC 02021021 */  addu       $v0, $s0, $v0
/* CF8C0 800263B0 8C440004 */  lw         $a0, 4($v0)
/* CF8C4 800263B4 8C830000 */  lw         $v1, ($a0)
/* CF8C8 800263B8 9462001E */  lhu        $v0, 0x1e($v1)
/* CF8CC 800263BC 44821000 */  mtc1       $v0, $f2
/* CF8D0 800263C0 00000000 */  nop
/* CF8D4 800263C4 468010A0 */  cvt.s.w    $f2, $f2
/* CF8D8 800263C8 4602C083 */  div.s      $f2, $f24, $f2
/* CF8DC 800263CC 9462000A */  lhu        $v0, 0xa($v1)
/* CF8E0 800263D0 000210C2 */  srl        $v0, $v0, 3
/* CF8E4 800263D4 44820000 */  mtc1       $v0, $f0
/* CF8E8 800263D8 00000000 */  nop
/* CF8EC 800263DC 46800020 */  cvt.s.w    $f0, $f0
/* CF8F0 800263E0 46020002 */  mul.s      $f0, $f0, $f2
/* CF8F4 800263E4 24050060 */  addiu      $a1, $zero, 0x60
/* CF8F8 800263E8 4600008D */  trunc.w.s  $f2, $f0
/* CF8FC 800263EC 44061000 */  mfc1       $a2, $f2
/* CF900 800263F0 00000000 */  nop
/* CF904 800263F4 24C6FFB0 */  addiu      $a2, $a2, -0x50
/* CF908 800263F8 02263023 */  subu       $a2, $s1, $a2
/* CF90C 800263FC 00063480 */  sll        $a2, $a2, 0x12
/* CF910 80026400 0C028D89 */  jal        func_800A3624
/* CF914 80026404 00063403 */   sra       $a2, $a2, 0x10
/* CF918 80026408 3C028006 */  lui        $v0, %hi(D_800671F0)
/* CF91C 8002640C 8C4271F0 */  lw         $v0, %lo(D_800671F0)($v0)
/* CF920 80026410 02021021 */  addu       $v0, $s0, $v0
/* CF924 80026414 8C440004 */  lw         $a0, 4($v0)
/* CF928 80026418 2631FFEC */  addiu      $s1, $s1, -0x14
/* CF92C 8002641C 0C028A40 */  jal        func_800A2900
/* CF930 80026420 2610FFFC */   addiu     $s0, $s0, -4
/* CF934 80026424 0621FF93 */  bgez       $s1, .L80026274
/* CF938 80026428 00000000 */   nop
.L8002642C:
/* CF93C 8002642C 3C068006 */  lui        $a2, %hi(D_800671F0)
/* CF940 80026430 8CC671F0 */  lw         $a2, %lo(D_800671F0)($a2)
/* CF944 80026434 94C20034 */  lhu        $v0, 0x34($a2)
/* CF948 80026438 2442FFFF */  addiu      $v0, $v0, -1
/* CF94C 8002643C A4C20034 */  sh         $v0, 0x34($a2)
/* CF950 80026440 00021400 */  sll        $v0, $v0, 0x10
/* CF954 80026444 00021C03 */  sra        $v1, $v0, 0x10
/* CF958 80026448 24020014 */  addiu      $v0, $zero, 0x14
/* CF95C 8002644C 14620005 */  bne        $v1, $v0, .L80026464
/* CF960 80026450 24020050 */   addiu     $v0, $zero, 0x50
/* CF964 80026454 0C02A5C1 */  jal        func_800A9704
/* CF968 80026458 24040014 */   addiu     $a0, $zero, 0x14
/* CF96C 8002645C 08009939 */  j          .L800264E4
/* CF970 80026460 00000000 */   nop
.L80026464:
/* CF974 80026464 1462001F */  bne        $v1, $v0, .L800264E4
/* CF978 80026468 00002821 */   addu      $a1, $zero, $zero
/* CF97C 8002646C 3C01414C */  lui        $at, 0x414c
/* CF980 80026470 44815000 */  mtc1       $at, $f10
/* CF984 80026474 3C01437F */  lui        $at, 0x437f
/* CF988 80026478 44814000 */  mtc1       $at, $f8
/* CF98C 8002647C 3C013FC0 */  lui        $at, 0x3fc0
/* CF990 80026480 44813000 */  mtc1       $at, $f6
/* CF994 80026484 3C013F80 */  lui        $at, 0x3f80
/* CF998 80026488 44812000 */  mtc1       $at, $f4
/* CF99C 8002648C 24040014 */  addiu      $a0, $zero, 0x14
/* CF9A0 80026490 00C01821 */  addu       $v1, $a2, $zero
.L80026494:
/* CF9A4 80026494 44840000 */  mtc1       $a0, $f0
/* CF9A8 80026498 00000000 */  nop
/* CF9AC 8002649C 46800020 */  cvt.s.w    $f0, $f0
/* CF9B0 800264A0 460A0082 */  mul.s      $f2, $f0, $f10
/* CF9B4 800264A4 00000000 */  nop
/* CF9B8 800264A8 46060002 */  mul.s      $f0, $f0, $f6
/* CF9BC 800264AC 46081080 */  add.s      $f2, $f2, $f8
/* CF9C0 800264B0 2484000A */  addiu      $a0, $a0, 0xa
/* CF9C4 800264B4 46002001 */  sub.s      $f0, $f4, $f0
/* CF9C8 800264B8 24A50001 */  addiu      $a1, $a1, 1
/* CF9CC 800264BC 28A20004 */  slti       $v0, $a1, 4
/* CF9D0 800264C0 E4620014 */  swc1       $f2, 0x14($v1)
/* CF9D4 800264C4 E4600024 */  swc1       $f0, 0x24($v1)
/* CF9D8 800264C8 1440FFF2 */  bnez       $v0, .L80026494
/* CF9DC 800264CC 24630004 */   addiu     $v1, $v1, 4
/* CF9E0 800264D0 3C038006 */  lui        $v1, %hi(D_800671F0)
/* CF9E4 800264D4 8C6371F0 */  lw         $v1, %lo(D_800671F0)($v1)
/* CF9E8 800264D8 90620036 */  lbu        $v0, 0x36($v1)
/* CF9EC 800264DC 24420001 */  addiu      $v0, $v0, 1
/* CF9F0 800264E0 A0620036 */  sb         $v0, 0x36($v1)
.L800264E4:
/* CF9F4 800264E4 8FBF0024 */  lw         $ra, 0x24($sp)
/* CF9F8 800264E8 8FB20020 */  lw         $s2, 0x20($sp)
/* CF9FC 800264EC 8FB1001C */  lw         $s1, 0x1c($sp)
/* CFA00 800264F0 8FB00018 */  lw         $s0, 0x18($sp)
/* CFA04 800264F4 D7BC0048 */  ldc1       $f28, 0x48($sp)
/* CFA08 800264F8 D7BA0040 */  ldc1       $f26, 0x40($sp)
/* CFA0C 800264FC D7B80038 */  ldc1       $f24, 0x38($sp)
/* CFA10 80026500 D7B60030 */  ldc1       $f22, 0x30($sp)
/* CFA14 80026504 D7B40028 */  ldc1       $f20, 0x28($sp)
/* CFA18 80026508 03E00008 */  jr         $ra
/* CFA1C 8002650C 27BD0050 */   addiu     $sp, $sp, 0x50

glabel func_80026510_CFA20
/* CFA20 80026510 3C028006 */  lui        $v0, %hi(D_80067200)
/* CFA24 80026514 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* CFA28 80026518 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* CFA2C 8002651C 14400005 */  bnez       $v0, .L80026534
/* CFA30 80026520 AFBF0010 */   sw        $ra, 0x10($sp)
/* CFA34 80026524 0C00995B */  jal        func_8002656C_CFA7C
/* CFA38 80026528 00000000 */   nop
/* CFA3C 8002652C 08009958 */  j          .L80026560
/* CFA40 80026530 00001021 */   addu      $v0, $zero, $zero
.L80026534:
/* CFA44 80026534 904300D8 */  lbu        $v1, 0xd8($v0)
/* CFA48 80026538 24020007 */  addiu      $v0, $zero, 7
/* CFA4C 8002653C 10620005 */  beq        $v1, $v0, .L80026554
/* CFA50 80026540 00000000 */   nop
/* CFA54 80026544 0C009B9D */  jal        func_80026E74_D0384
/* CFA58 80026548 00000000 */   nop
/* CFA5C 8002654C 08009958 */  j          .L80026560
/* CFA60 80026550 00001021 */   addu      $v0, $zero, $zero
.L80026554:
/* CFA64 80026554 0C009B67 */  jal        func_80026D9C_D02AC
/* CFA68 80026558 00000000 */   nop
/* CFA6C 8002655C 24020001 */  addiu      $v0, $zero, 1
.L80026560:
/* CFA70 80026560 8FBF0010 */  lw         $ra, 0x10($sp)
/* CFA74 80026564 03E00008 */  jr         $ra
/* CFA78 80026568 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002656C_CFA7C
/* CFA7C 8002656C 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* CFA80 80026570 AFBF0030 */  sw         $ra, 0x30($sp)
/* CFA84 80026574 AFB5002C */  sw         $s5, 0x2c($sp)
/* CFA88 80026578 AFB40028 */  sw         $s4, 0x28($sp)
/* CFA8C 8002657C AFB30024 */  sw         $s3, 0x24($sp)
/* CFA90 80026580 AFB20020 */  sw         $s2, 0x20($sp)
/* CFA94 80026584 AFB1001C */  sw         $s1, 0x1c($sp)
/* CFA98 80026588 AFB00018 */  sw         $s0, 0x18($sp)
/* CFA9C 8002658C F7B40038 */  sdc1       $f20, 0x38($sp)
/* CFAA0 80026590 0C026449 */  jal        func_80099124
/* CFAA4 80026594 24040002 */   addiu     $a0, $zero, 2
/* CFAA8 80026598 3C048017 */  lui        $a0, %hi(D_8016D168)
/* CFAAC 8002659C 0C02A5AF */  jal        func_800A96BC
/* CFAB0 800265A0 8C84D168 */   lw        $a0, %lo(D_8016D168)($a0)
/* CFAB4 800265A4 3C028017 */  lui        $v0, %hi(D_8016D5A0)
/* CFAB8 800265A8 8042D5A0 */  lb         $v0, %lo(D_8016D5A0)($v0)
/* CFABC 800265AC 000218C0 */  sll        $v1, $v0, 3
/* CFAC0 800265B0 00621823 */  subu       $v1, $v1, $v0
/* CFAC4 800265B4 000318C0 */  sll        $v1, $v1, 3
/* CFAC8 800265B8 3C028017 */  lui        $v0, %hi(D_8016D6D0)
/* CFACC 800265BC 00431021 */  addu       $v0, $v0, $v1
/* CFAD0 800265C0 9042D6D0 */  lbu        $v0, %lo(D_8016D6D0)($v0)
/* CFAD4 800265C4 30420001 */  andi       $v0, $v0, 1
/* CFAD8 800265C8 10400002 */  beqz       $v0, .L800265D4
/* CFADC 800265CC 24040005 */   addiu     $a0, $zero, 5
/* CFAE0 800265D0 24040002 */  addiu      $a0, $zero, 2
.L800265D4:
/* CFAE4 800265D4 0C02BB10 */  jal        func_800AEC40
/* CFAE8 800265D8 00008821 */   addu      $s1, $zero, $zero
/* CFAEC 800265DC 24040016 */  addiu      $a0, $zero, 0x16
/* CFAF0 800265E0 2405FFFF */  addiu      $a1, $zero, -1
/* CFAF4 800265E4 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* CFAF8 800265E8 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* CFAFC 800265EC 24060001 */  addiu      $a2, $zero, 1
/* CFB00 800265F0 24020001 */  addiu      $v0, $zero, 1
/* CFB04 800265F4 AFA20010 */  sw         $v0, 0x10($sp)
/* CFB08 800265F8 0C026C9A */  jal        func_8009B268
/* CFB0C 800265FC 24E7FFF0 */   addiu     $a3, $a3, -0x10
/* CFB10 80026600 0C02725C */  jal        func_8009C970
/* CFB14 80026604 00009821 */   addu      $s3, $zero, $zero
/* CFB18 80026608 24040040 */  addiu      $a0, $zero, 0x40
/* CFB1C 8002660C 24050040 */  addiu      $a1, $zero, 0x40
/* CFB20 80026610 24060040 */  addiu      $a2, $zero, 0x40
/* CFB24 80026614 240700FF */  addiu      $a3, $zero, 0xff
/* CFB28 80026618 240200FF */  addiu      $v0, $zero, 0xff
/* CFB2C 8002661C AFA20010 */  sw         $v0, 0x10($sp)
/* CFB30 80026620 0C02A603 */  jal        func_800A980C
/* CFB34 80026624 AFA20014 */   sw        $v0, 0x14($sp)
/* CFB38 80026628 3C014270 */  lui        $at, 0x4270
/* CFB3C 8002662C 44810000 */  mtc1       $at, $f0
/* CFB40 80026630 3C01BF80 */  lui        $at, 0xbf80
/* CFB44 80026634 4481A000 */  mtc1       $at, $f20
/* CFB48 80026638 3C018015 */  lui        $at, %hi(D_80149ECC)
/* CFB4C 8002663C AC209ECC */  sw         $zero, %lo(D_80149ECC)($at)
/* CFB50 80026640 3C018017 */  lui        $at, %hi(D_8016D824)
/* CFB54 80026644 AC20D824 */  sw         $zero, %lo(D_8016D824)($at)
/* CFB58 80026648 3C018015 */  lui        $at, %hi(D_8014A2A0)
/* CFB5C 8002664C E434A2A0 */  swc1       $f20, %lo(D_8014A2A0)($at)
/* CFB60 80026650 3C018015 */  lui        $at, %hi(D_8014A02C)
/* CFB64 80026654 0C027224 */  jal        func_8009C890
/* CFB68 80026658 E420A02C */   swc1      $f0, %lo(D_8014A02C)($at)
/* CFB6C 8002665C 3C014280 */  lui        $at, 0x4280
/* CFB70 80026660 44810000 */  mtc1       $at, $f0
/* CFB74 80026664 3C01C32F */  lui        $at, 0xc32f
/* CFB78 80026668 44811000 */  mtc1       $at, $f2
/* CFB7C 8002666C 3C018015 */  lui        $at, %hi(D_8014A068)
/* CFB80 80026670 E434A068 */  swc1       $f20, %lo(D_8014A068)($at)
/* CFB84 80026674 3C018015 */  lui        $at, %hi(D_8014A064)
/* CFB88 80026678 E420A064 */  swc1       $f0, %lo(D_8014A064)($at)
/* CFB8C 8002667C 3C018015 */  lui        $at, %hi(D_8014A06C)
/* CFB90 80026680 E422A06C */  swc1       $f2, %lo(D_8014A06C)($at)
/* CFB94 80026684 0C032663 */  jal        func_800C998C
/* CFB98 80026688 240400F8 */   addiu     $a0, $zero, 0xf8
/* CFB9C 8002668C 00402021 */  addu       $a0, $v0, $zero
/* CFBA0 80026690 3C018006 */  lui        $at, %hi(D_80067200)
/* CFBA4 80026694 AC247200 */  sw         $a0, %lo(D_80067200)($at)
/* CFBA8 80026698 0C030134 */  jal        bzero
/* CFBAC 8002669C 240500F8 */   addiu     $a1, $zero, 0xf8
/* CFBB0 800266A0 0C029375 */  jal        func_800A4DD4
/* CFBB4 800266A4 00000000 */   nop
/* CFBB8 800266A8 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFBBC 800266AC 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFBC0 800266B0 24050010 */  addiu      $a1, $zero, 0x10
/* CFBC4 800266B4 AC620000 */  sw         $v0, ($v1)
/* CFBC8 800266B8 240200E0 */  addiu      $v0, $zero, 0xe0
/* CFBCC 800266BC AFA20010 */  sw         $v0, 0x10($sp)
/* CFBD0 800266C0 8C640000 */  lw         $a0, ($v1)
/* CFBD4 800266C4 24060010 */  addiu      $a2, $zero, 0x10
/* CFBD8 800266C8 0C02939C */  jal        func_800A4E70
/* CFBDC 800266CC 24070130 */   addiu     $a3, $zero, 0x130
/* CFBE0 800266D0 3C028006 */  lui        $v0, %hi(D_80067200)
/* CFBE4 800266D4 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* CFBE8 800266D8 8C430000 */  lw         $v1, ($v0)
/* CFBEC 800266DC 9462001E */  lhu        $v0, 0x1e($v1)
/* CFBF0 800266E0 34420100 */  ori        $v0, $v0, 0x100
/* CFBF4 800266E4 A462001E */  sh         $v0, 0x1e($v1)
.L800266E8:
/* CFBF8 800266E8 3C148006 */  lui        $s4, %hi(D_80067204)
/* CFBFC 800266EC 26947204 */  addiu      $s4, $s4, %lo(D_80067204)
/* CFC00 800266F0 02748021 */  addu       $s0, $s3, $s4
/* CFC04 800266F4 96040000 */  lhu        $a0, ($s0)
/* CFC08 800266F8 96050002 */  lhu        $a1, 2($s0)
/* CFC0C 800266FC 92060004 */  lbu        $a2, 4($s0)
/* CFC10 80026700 0C028CC9 */  jal        func_800A3324
/* CFC14 80026704 00003821 */   addu      $a3, $zero, $zero
/* CFC18 80026708 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFC1C 8002670C 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFC20 80026710 00119080 */  sll        $s2, $s1, 2
/* CFC24 80026714 02431821 */  addu       $v1, $s2, $v1
/* CFC28 80026718 AC620004 */  sw         $v0, 4($v1)
/* CFC2C 8002671C 96050006 */  lhu        $a1, 6($s0)
/* CFC30 80026720 00402021 */  addu       $a0, $v0, $zero
/* CFC34 80026724 96060008 */  lhu        $a2, 8($s0)
/* CFC38 80026728 00052C80 */  sll        $a1, $a1, 0x12
/* CFC3C 8002672C 00052C03 */  sra        $a1, $a1, 0x10
/* CFC40 80026730 00063480 */  sll        $a2, $a2, 0x12
/* CFC44 80026734 0C028D89 */  jal        func_800A3624
/* CFC48 80026738 00063403 */   sra       $a2, $a2, 0x10
/* CFC4C 8002673C 3C028006 */  lui        $v0, %hi(D_80067200)
/* CFC50 80026740 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* CFC54 80026744 02422021 */  addu       $a0, $s2, $v0
/* CFC58 80026748 8C830004 */  lw         $v1, 4($a0)
/* CFC5C 8002674C 9602000A */  lhu        $v0, 0xa($s0)
/* CFC60 80026750 A462001E */  sh         $v0, 0x1e($v1)
/* CFC64 80026754 92030005 */  lbu        $v1, 5($s0)
/* CFC68 80026758 240200FF */  addiu      $v0, $zero, 0xff
/* CFC6C 8002675C 10620006 */  beq        $v1, $v0, .L80026778
/* CFC70 80026760 240500FF */   addiu     $a1, $zero, 0xff
/* CFC74 80026764 AFA30010 */  sw         $v1, 0x10($sp)
/* CFC78 80026768 8C840004 */  lw         $a0, 4($a0)
/* CFC7C 8002676C 240600FF */  addiu      $a2, $zero, 0xff
/* CFC80 80026770 0C028E41 */  jal        func_800A3904
/* CFC84 80026774 240700FF */   addiu     $a3, $zero, 0xff
.L80026778:
/* CFC88 80026778 92030004 */  lbu        $v1, 4($s0)
/* CFC8C 8002677C 24020002 */  addiu      $v0, $zero, 2
/* CFC90 80026780 5462000C */  bnel       $v1, $v0, .L800267B4
/* CFC94 80026784 26310001 */   addiu     $s1, $s1, 1
/* CFC98 80026788 3C028006 */  lui        $v0, %hi(D_80067200)
/* CFC9C 8002678C 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* CFCA0 80026790 02421021 */  addu       $v0, $s2, $v0
/* CFCA4 80026794 8C440004 */  lw         $a0, 4($v0)
/* CFCA8 80026798 8C82000C */  lw         $v0, 0xc($a0)
/* CFCAC 8002679C 94450000 */  lhu        $a1, ($v0)
/* CFCB0 800267A0 94460002 */  lhu        $a2, 2($v0)
/* CFCB4 800267A4 00052842 */  srl        $a1, $a1, 1
/* CFCB8 800267A8 0C02912A */  jal        func_800A44A8
/* CFCBC 800267AC 00063042 */   srl       $a2, $a2, 1
/* CFCC0 800267B0 26310001 */  addiu      $s1, $s1, 1
.L800267B4:
/* CFCC4 800267B4 2A220013 */  slti       $v0, $s1, 0x13
/* CFCC8 800267B8 1440FFCB */  bnez       $v0, .L800266E8
/* CFCCC 800267BC 2673000C */   addiu     $s3, $s3, 0xc
/* CFCD0 800267C0 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* CFCD4 800267C4 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* CFCD8 800267C8 000310C0 */  sll        $v0, $v1, 3
/* CFCDC 800267CC 00431023 */  subu       $v0, $v0, $v1
/* CFCE0 800267D0 000210C0 */  sll        $v0, $v0, 3
/* CFCE4 800267D4 3C128017 */  lui        $s2, %hi(D_8016D6D0)
/* CFCE8 800267D8 02429021 */  addu       $s2, $s2, $v0
/* CFCEC 800267DC 9252D6D0 */  lbu        $s2, %lo(D_8016D6D0)($s2)
/* CFCF0 800267E0 3C026666 */  lui        $v0, 0x6666
/* CFCF4 800267E4 34426667 */  ori        $v0, $v0, 0x6667
/* CFCF8 800267E8 02420018 */  mult       $s2, $v0
/* CFCFC 800267EC 2405001C */  addiu      $a1, $zero, 0x1c
/* CFD00 800267F0 24060001 */  addiu      $a2, $zero, 1
/* CFD04 800267F4 00003821 */  addu       $a3, $zero, $zero
/* CFD08 800267F8 001217C3 */  sra        $v0, $s2, 0x1f
/* CFD0C 800267FC 00006010 */  mfhi       $t4
/* CFD10 80026800 000C1883 */  sra        $v1, $t4, 2
/* CFD14 80026804 00628823 */  subu       $s1, $v1, $v0
/* CFD18 80026808 02208021 */  addu       $s0, $s1, $zero
/* CFD1C 8002680C 00101080 */  sll        $v0, $s0, 2
/* CFD20 80026810 00501021 */  addu       $v0, $v0, $s0
/* CFD24 80026814 00021040 */  sll        $v0, $v0, 1
/* CFD28 80026818 02428823 */  subu       $s1, $s2, $v0
/* CFD2C 8002681C 26100041 */  addiu      $s0, $s0, 0x41
/* CFD30 80026820 3210FFFF */  andi       $s0, $s0, 0xffff
/* CFD34 80026824 0C028CC9 */  jal        func_800A3324
/* CFD38 80026828 02002021 */   addu      $a0, $s0, $zero
/* CFD3C 8002682C 02002021 */  addu       $a0, $s0, $zero
/* CFD40 80026830 2405001F */  addiu      $a1, $zero, 0x1f
/* CFD44 80026834 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFD48 80026838 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFD4C 8002683C 24060001 */  addiu      $a2, $zero, 1
/* CFD50 80026840 00003821 */  addu       $a3, $zero, $zero
/* CFD54 80026844 0C028CC9 */  jal        func_800A3324
/* CFD58 80026848 AC620050 */   sw        $v0, 0x50($v1)
/* CFD5C 8002684C 26300041 */  addiu      $s0, $s1, 0x41
/* CFD60 80026850 3210FFFF */  andi       $s0, $s0, 0xffff
/* CFD64 80026854 02002021 */  addu       $a0, $s0, $zero
/* CFD68 80026858 2405001C */  addiu      $a1, $zero, 0x1c
/* CFD6C 8002685C 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFD70 80026860 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFD74 80026864 24060001 */  addiu      $a2, $zero, 1
/* CFD78 80026868 00003821 */  addu       $a3, $zero, $zero
/* CFD7C 8002686C 0C028CC9 */  jal        func_800A3324
/* CFD80 80026870 AC620054 */   sw        $v0, 0x54($v1)
/* CFD84 80026874 02002021 */  addu       $a0, $s0, $zero
/* CFD88 80026878 2405001F */  addiu      $a1, $zero, 0x1f
/* CFD8C 8002687C 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFD90 80026880 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFD94 80026884 24060001 */  addiu      $a2, $zero, 1
/* CFD98 80026888 00003821 */  addu       $a3, $zero, $zero
/* CFD9C 8002688C 0C028CC9 */  jal        func_800A3324
/* CFDA0 80026890 AC620058 */   sw        $v0, 0x58($v1)
/* CFDA4 80026894 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFDA8 80026898 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFDAC 8002689C 24110013 */  addiu      $s1, $zero, 0x13
/* CFDB0 800268A0 269000E4 */  addiu      $s0, $s4, 0xe4
/* CFDB4 800268A4 AC62005C */  sw         $v0, 0x5c($v1)
.L800268A8:
/* CFDB8 800268A8 96050006 */  lhu        $a1, 6($s0)
/* CFDBC 800268AC 96060008 */  lhu        $a2, 8($s0)
/* CFDC0 800268B0 2610000C */  addiu      $s0, $s0, 0xc
/* CFDC4 800268B4 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFDC8 800268B8 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFDCC 800268BC 00111080 */  sll        $v0, $s1, 2
/* CFDD0 800268C0 26310001 */  addiu      $s1, $s1, 1
/* CFDD4 800268C4 00431021 */  addu       $v0, $v0, $v1
/* CFDD8 800268C8 8C440004 */  lw         $a0, 4($v0)
/* CFDDC 800268CC 00052C80 */  sll        $a1, $a1, 0x12
/* CFDE0 800268D0 00052C03 */  sra        $a1, $a1, 0x10
/* CFDE4 800268D4 00063480 */  sll        $a2, $a2, 0x12
/* CFDE8 800268D8 0C028D89 */  jal        func_800A3624
/* CFDEC 800268DC 00063403 */   sra       $a2, $a2, 0x10
/* CFDF0 800268E0 2A220017 */  slti       $v0, $s1, 0x17
/* CFDF4 800268E4 1440FFF0 */  bnez       $v0, .L800268A8
/* CFDF8 800268E8 3C0A51EB */   lui       $t2, 0x51eb
/* CFDFC 800268EC 3C038017 */  lui        $v1, %hi(D_8016D5A0)
/* CFE00 800268F0 8063D5A0 */  lb         $v1, %lo(D_8016D5A0)($v1)
/* CFE04 800268F4 3C048017 */  lui        $a0, %hi(D_8016D6D2)
/* CFE08 800268F8 2484D6D2 */  addiu      $a0, $a0, %lo(D_8016D6D2)
/* CFE0C 800268FC 000310C0 */  sll        $v0, $v1, 3
/* CFE10 80026900 00431023 */  subu       $v0, $v0, $v1
/* CFE14 80026904 000210C0 */  sll        $v0, $v0, 3
/* CFE18 80026908 00121840 */  sll        $v1, $s2, 1
/* CFE1C 8002690C 00441021 */  addu       $v0, $v0, $a0
/* CFE20 80026910 00621821 */  addu       $v1, $v1, $v0
/* CFE24 80026914 94730000 */  lhu        $s3, ($v1)
/* CFE28 80026918 3C046666 */  lui        $a0, 0x6666
/* CFE2C 8002691C 34846667 */  ori        $a0, $a0, 0x6667
/* CFE30 80026920 02640018 */  mult       $s3, $a0
/* CFE34 80026924 00004010 */  mfhi       $t0
/* CFE38 80026928 354A851F */  ori        $t2, $t2, 0x851f
/* CFE3C 8002692C 00000000 */  nop
/* CFE40 80026930 026A0018 */  mult       $s3, $t2
/* CFE44 80026934 2405001C */  addiu      $a1, $zero, 0x1c
/* CFE48 80026938 24060001 */  addiu      $a2, $zero, 1
/* CFE4C 8002693C 00003821 */  addu       $a3, $zero, $zero
/* CFE50 80026940 00005810 */  mfhi       $t3
/* CFE54 80026944 3C031062 */  lui        $v1, 0x1062
/* CFE58 80026948 34634DD3 */  ori        $v1, $v1, 0x4dd3
/* CFE5C 8002694C 02630018 */  mult       $s3, $v1
/* CFE60 80026950 00134FC3 */  sra        $t1, $s3, 0x1f
/* CFE64 80026954 00081083 */  sra        $v0, $t0, 2
/* CFE68 80026958 00498823 */  subu       $s1, $v0, $t1
/* CFE6C 8002695C 000B1143 */  sra        $v0, $t3, 5
/* CFE70 80026960 00491023 */  subu       $v0, $v0, $t1
/* CFE74 80026964 00021840 */  sll        $v1, $v0, 1
/* CFE78 80026968 00621821 */  addu       $v1, $v1, $v0
/* CFE7C 8002696C 000318C0 */  sll        $v1, $v1, 3
/* CFE80 80026970 00621821 */  addu       $v1, $v1, $v0
/* CFE84 80026974 00006810 */  mfhi       $t5
/* CFE88 80026978 00031880 */  sll        $v1, $v1, 2
/* CFE8C 8002697C 02631823 */  subu       $v1, $s3, $v1
/* CFE90 80026980 00640018 */  mult       $v1, $a0
/* CFE94 80026984 00114080 */  sll        $t0, $s1, 2
/* CFE98 80026988 01114021 */  addu       $t0, $t0, $s1
/* CFE9C 8002698C 00084040 */  sll        $t0, $t0, 1
/* CFEA0 80026990 000D2183 */  sra        $a0, $t5, 6
/* CFEA4 80026994 00892023 */  subu       $a0, $a0, $t1
/* CFEA8 80026998 00041140 */  sll        $v0, $a0, 5
/* CFEAC 8002699C 00441023 */  subu       $v0, $v0, $a0
/* CFEB0 800269A0 00021080 */  sll        $v0, $v0, 2
/* CFEB4 800269A4 00441021 */  addu       $v0, $v0, $a0
/* CFEB8 800269A8 00005810 */  mfhi       $t3
/* CFEBC 800269AC 000210C0 */  sll        $v0, $v0, 3
/* CFEC0 800269B0 02621023 */  subu       $v0, $s3, $v0
/* CFEC4 800269B4 004A0018 */  mult       $v0, $t2
/* CFEC8 800269B8 02688823 */  subu       $s1, $s3, $t0
/* CFECC 800269BC 0080A021 */  addu       $s4, $a0, $zero
/* CFED0 800269C0 26900041 */  addiu      $s0, $s4, 0x41
/* CFED4 800269C4 3210FFFF */  andi       $s0, $s0, 0xffff
/* CFED8 800269C8 02002021 */  addu       $a0, $s0, $zero
/* CFEDC 800269CC 00031FC3 */  sra        $v1, $v1, 0x1f
/* CFEE0 800269D0 000B4083 */  sra        $t0, $t3, 2
/* CFEE4 800269D4 01039023 */  subu       $s2, $t0, $v1
/* CFEE8 800269D8 000217C3 */  sra        $v0, $v0, 0x1f
/* CFEEC 800269DC 00004810 */  mfhi       $t1
/* CFEF0 800269E0 00091943 */  sra        $v1, $t1, 5
/* CFEF4 800269E4 00000000 */  nop
/* CFEF8 800269E8 0C028CC9 */  jal        func_800A3324
/* CFEFC 800269EC 0062A823 */   subu      $s5, $v1, $v0
/* CFF00 800269F0 02002021 */  addu       $a0, $s0, $zero
/* CFF04 800269F4 2405001F */  addiu      $a1, $zero, 0x1f
/* CFF08 800269F8 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFF0C 800269FC 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFF10 80026A00 24060001 */  addiu      $a2, $zero, 1
/* CFF14 80026A04 00003821 */  addu       $a3, $zero, $zero
/* CFF18 80026A08 0C028CC9 */  jal        func_800A3324
/* CFF1C 80026A0C AC620060 */   sw        $v0, 0x60($v1)
/* CFF20 80026A10 26B00041 */  addiu      $s0, $s5, 0x41
/* CFF24 80026A14 3210FFFF */  andi       $s0, $s0, 0xffff
/* CFF28 80026A18 02002021 */  addu       $a0, $s0, $zero
/* CFF2C 80026A1C 2405001C */  addiu      $a1, $zero, 0x1c
/* CFF30 80026A20 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFF34 80026A24 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFF38 80026A28 24060001 */  addiu      $a2, $zero, 1
/* CFF3C 80026A2C 00003821 */  addu       $a3, $zero, $zero
/* CFF40 80026A30 0C028CC9 */  jal        func_800A3324
/* CFF44 80026A34 AC620064 */   sw        $v0, 0x64($v1)
/* CFF48 80026A38 02002021 */  addu       $a0, $s0, $zero
/* CFF4C 80026A3C 2405001F */  addiu      $a1, $zero, 0x1f
/* CFF50 80026A40 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFF54 80026A44 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFF58 80026A48 24060001 */  addiu      $a2, $zero, 1
/* CFF5C 80026A4C 00003821 */  addu       $a3, $zero, $zero
/* CFF60 80026A50 0C028CC9 */  jal        func_800A3324
/* CFF64 80026A54 AC620068 */   sw        $v0, 0x68($v1)
/* CFF68 80026A58 26500041 */  addiu      $s0, $s2, 0x41
/* CFF6C 80026A5C 3210FFFF */  andi       $s0, $s0, 0xffff
/* CFF70 80026A60 02002021 */  addu       $a0, $s0, $zero
/* CFF74 80026A64 2405001C */  addiu      $a1, $zero, 0x1c
/* CFF78 80026A68 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFF7C 80026A6C 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFF80 80026A70 24060001 */  addiu      $a2, $zero, 1
/* CFF84 80026A74 00003821 */  addu       $a3, $zero, $zero
/* CFF88 80026A78 0C028CC9 */  jal        func_800A3324
/* CFF8C 80026A7C AC62006C */   sw        $v0, 0x6c($v1)
/* CFF90 80026A80 02002021 */  addu       $a0, $s0, $zero
/* CFF94 80026A84 2405001F */  addiu      $a1, $zero, 0x1f
/* CFF98 80026A88 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFF9C 80026A8C 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFFA0 80026A90 24060001 */  addiu      $a2, $zero, 1
/* CFFA4 80026A94 00003821 */  addu       $a3, $zero, $zero
/* CFFA8 80026A98 0C028CC9 */  jal        func_800A3324
/* CFFAC 80026A9C AC620070 */   sw        $v0, 0x70($v1)
/* CFFB0 80026AA0 26300041 */  addiu      $s0, $s1, 0x41
/* CFFB4 80026AA4 3210FFFF */  andi       $s0, $s0, 0xffff
/* CFFB8 80026AA8 02002021 */  addu       $a0, $s0, $zero
/* CFFBC 80026AAC 2405001C */  addiu      $a1, $zero, 0x1c
/* CFFC0 80026AB0 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFFC4 80026AB4 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFFC8 80026AB8 24060001 */  addiu      $a2, $zero, 1
/* CFFCC 80026ABC 00003821 */  addu       $a3, $zero, $zero
/* CFFD0 80026AC0 0C028CC9 */  jal        func_800A3324
/* CFFD4 80026AC4 AC620074 */   sw        $v0, 0x74($v1)
/* CFFD8 80026AC8 02002021 */  addu       $a0, $s0, $zero
/* CFFDC 80026ACC 2405001F */  addiu      $a1, $zero, 0x1f
/* CFFE0 80026AD0 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFFE4 80026AD4 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* CFFE8 80026AD8 24060001 */  addiu      $a2, $zero, 1
/* CFFEC 80026ADC 00003821 */  addu       $a3, $zero, $zero
/* CFFF0 80026AE0 0C028CC9 */  jal        func_800A3324
/* CFFF4 80026AE4 AC620078 */   sw        $v0, 0x78($v1)
/* CFFF8 80026AE8 3C038006 */  lui        $v1, %hi(D_80067200)
/* CFFFC 80026AEC 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0000 80026AF0 24110017 */  addiu      $s1, $zero, 0x17
/* D0004 80026AF4 3C108006 */  lui        $s0, %hi(D_80067318)
/* D0008 80026AF8 26107318 */  addiu      $s0, $s0, %lo(D_80067318)
/* D000C 80026AFC AC62007C */  sw         $v0, 0x7c($v1)
.L80026B00:
/* D0010 80026B00 96050006 */  lhu        $a1, 6($s0)
/* D0014 80026B04 96060008 */  lhu        $a2, 8($s0)
/* D0018 80026B08 2610000C */  addiu      $s0, $s0, 0xc
/* D001C 80026B0C 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0020 80026B10 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0024 80026B14 00111080 */  sll        $v0, $s1, 2
/* D0028 80026B18 26310001 */  addiu      $s1, $s1, 1
/* D002C 80026B1C 00431021 */  addu       $v0, $v0, $v1
/* D0030 80026B20 8C440004 */  lw         $a0, 4($v0)
/* D0034 80026B24 00052C80 */  sll        $a1, $a1, 0x12
/* D0038 80026B28 00052C03 */  sra        $a1, $a1, 0x10
/* D003C 80026B2C 00063480 */  sll        $a2, $a2, 0x12
/* D0040 80026B30 0C028D89 */  jal        func_800A3624
/* D0044 80026B34 00063403 */   sra       $a2, $a2, 0x10
/* D0048 80026B38 2A22001F */  slti       $v0, $s1, 0x1f
/* D004C 80026B3C 1440FFF0 */  bnez       $v0, .L80026B00
/* D0050 80026B40 00000000 */   nop
/* D0054 80026B44 1660001A */  bnez       $s3, .L80026BB0
/* D0058 80026B48 24110007 */   addiu     $s1, $zero, 7
/* D005C 80026B4C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0060 80026B50 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0064 80026B54 2444001C */  addiu      $a0, $v0, 0x1c
.L80026B58:
/* D0068 80026B58 8C830004 */  lw         $v1, 4($a0)
/* D006C 80026B5C 9462001E */  lhu        $v0, 0x1e($v1)
/* D0070 80026B60 26310001 */  addiu      $s1, $s1, 1
/* D0074 80026B64 34420400 */  ori        $v0, $v0, 0x400
/* D0078 80026B68 A462001E */  sh         $v0, 0x1e($v1)
/* D007C 80026B6C 2A22000D */  slti       $v0, $s1, 0xd
/* D0080 80026B70 1440FFF9 */  bnez       $v0, .L80026B58
/* D0084 80026B74 24840004 */   addiu     $a0, $a0, 4
/* D0088 80026B78 3C028006 */  lui        $v0, %hi(D_80067200)
/* D008C 80026B7C 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0090 80026B80 24110017 */  addiu      $s1, $zero, 0x17
/* D0094 80026B84 2444005C */  addiu      $a0, $v0, 0x5c
.L80026B88:
/* D0098 80026B88 8C830004 */  lw         $v1, 4($a0)
/* D009C 80026B8C 9462001E */  lhu        $v0, 0x1e($v1)
/* D00A0 80026B90 26310001 */  addiu      $s1, $s1, 1
/* D00A4 80026B94 34420400 */  ori        $v0, $v0, 0x400
/* D00A8 80026B98 A462001E */  sh         $v0, 0x1e($v1)
/* D00AC 80026B9C 2A22001F */  slti       $v0, $s1, 0x1f
/* D00B0 80026BA0 1440FFF9 */  bnez       $v0, .L80026B88
/* D00B4 80026BA4 24840004 */   addiu     $a0, $a0, 4
/* D00B8 80026BA8 08009B01 */  j          .L80026C04
/* D00BC 80026BAC 00000000 */   nop
.L80026BB0:
/* D00C0 80026BB0 16800014 */  bnez       $s4, .L80026C04
/* D00C4 80026BB4 00000000 */   nop
/* D00C8 80026BB8 3C048006 */  lui        $a0, %hi(D_80067200)
/* D00CC 80026BBC 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D00D0 80026BC0 8C830060 */  lw         $v1, 0x60($a0)
/* D00D4 80026BC4 9462001E */  lhu        $v0, 0x1e($v1)
/* D00D8 80026BC8 34420400 */  ori        $v0, $v0, 0x400
/* D00DC 80026BCC A462001E */  sh         $v0, 0x1e($v1)
/* D00E0 80026BD0 8C830064 */  lw         $v1, 0x64($a0)
/* D00E4 80026BD4 9462001E */  lhu        $v0, 0x1e($v1)
/* D00E8 80026BD8 34420400 */  ori        $v0, $v0, 0x400
/* D00EC 80026BDC 16A00009 */  bnez       $s5, .L80026C04
/* D00F0 80026BE0 A462001E */   sh        $v0, 0x1e($v1)
/* D00F4 80026BE4 8C830068 */  lw         $v1, 0x68($a0)
/* D00F8 80026BE8 9462001E */  lhu        $v0, 0x1e($v1)
/* D00FC 80026BEC 34420400 */  ori        $v0, $v0, 0x400
/* D0100 80026BF0 A462001E */  sh         $v0, 0x1e($v1)
/* D0104 80026BF4 8C83006C */  lw         $v1, 0x6c($a0)
/* D0108 80026BF8 9462001E */  lhu        $v0, 0x1e($v1)
/* D010C 80026BFC 34420400 */  ori        $v0, $v0, 0x400
/* D0110 80026C00 A462001E */  sh         $v0, 0x1e($v1)
.L80026C04:
/* D0114 80026C04 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0118 80026C08 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D011C 80026C0C 8C420004 */  lw         $v0, 4($v0)
/* D0120 80026C10 8C43000C */  lw         $v1, 0xc($v0)
/* D0124 80026C14 8C440010 */  lw         $a0, 0x10($v0)
/* D0128 80026C18 84650000 */  lh         $a1, ($v1)
/* D012C 80026C1C 84660002 */  lh         $a2, 2($v1)
/* D0130 80026C20 0C029558 */  jal        func_800A5560
/* D0134 80026C24 24070001 */   addiu     $a3, $zero, 1
/* D0138 80026C28 3C048006 */  lui        $a0, %hi(D_80067200)
/* D013C 80026C2C 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0140 80026C30 24030014 */  addiu      $v1, $zero, 0x14
/* D0144 80026C34 AC820080 */  sw         $v0, 0x80($a0)
/* D0148 80026C38 AC430028 */  sw         $v1, 0x28($v0)
/* D014C 80026C3C 8C830080 */  lw         $v1, 0x80($a0)
/* D0150 80026C40 24020008 */  addiu      $v0, $zero, 8
/* D0154 80026C44 AC62002C */  sw         $v0, 0x2c($v1)
/* D0158 80026C48 8C830080 */  lw         $v1, 0x80($a0)
/* D015C 80026C4C 24020019 */  addiu      $v0, $zero, 0x19
/* D0160 80026C50 AC620030 */  sw         $v0, 0x30($v1)
/* D0164 80026C54 8C82000C */  lw         $v0, 0xc($a0)
/* D0168 80026C58 8C43000C */  lw         $v1, 0xc($v0)
/* D016C 80026C5C 8C440010 */  lw         $a0, 0x10($v0)
/* D0170 80026C60 84650000 */  lh         $a1, ($v1)
/* D0174 80026C64 84660002 */  lh         $a2, 2($v1)
/* D0178 80026C68 0C029558 */  jal        func_800A5560
/* D017C 80026C6C 24070001 */   addiu     $a3, $zero, 1
/* D0180 80026C70 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0184 80026C74 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0188 80026C78 2405000A */  addiu      $a1, $zero, 0xa
/* D018C 80026C7C AC620084 */  sw         $v0, 0x84($v1)
/* D0190 80026C80 AC450014 */  sw         $a1, 0x14($v0)
/* D0194 80026C84 8C620084 */  lw         $v0, 0x84($v1)
/* D0198 80026C88 24040107 */  addiu      $a0, $zero, 0x107
/* D019C 80026C8C AC450018 */  sw         $a1, 0x18($v0)
/* D01A0 80026C90 8C660084 */  lw         $a2, 0x84($v1)
/* D01A4 80026C94 00002821 */  addu       $a1, $zero, $zero
/* D01A8 80026C98 24020018 */  addiu      $v0, $zero, 0x18
/* D01AC 80026C9C ACC2001C */  sw         $v0, 0x1c($a2)
/* D01B0 80026CA0 8C630084 */  lw         $v1, 0x84($v1)
/* D01B4 80026CA4 00003021 */  addu       $a2, $zero, $zero
/* D01B8 80026CA8 24020001 */  addiu      $v0, $zero, 1
/* D01BC 80026CAC 0C027DAC */  jal        func_8009F6B0
/* D01C0 80026CB0 AC620020 */   sw        $v0, 0x20($v1)
/* D01C4 80026CB4 3C038006 */  lui        $v1, %hi(D_80067200)
/* D01C8 80026CB8 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D01CC 80026CBC AC620088 */  sw         $v0, 0x88($v1)
/* D01D0 80026CC0 90430066 */  lbu        $v1, 0x66($v0)
/* D01D4 80026CC4 34630007 */  ori        $v1, $v1, 7
/* D01D8 80026CC8 A0430066 */  sb         $v1, 0x66($v0)
/* D01DC 80026CCC 3C058006 */  lui        $a1, %hi(D_80067200)
/* D01E0 80026CD0 8CA57200 */  lw         $a1, %lo(D_80067200)($a1)
/* D01E4 80026CD4 24070107 */  addiu      $a3, $zero, 0x107
/* D01E8 80026CD8 AFA00010 */  sw         $zero, 0x10($sp)
/* D01EC 80026CDC AFA00014 */  sw         $zero, 0x14($sp)
/* D01F0 80026CE0 8CA60088 */  lw         $a2, 0x88($a1)
/* D01F4 80026CE4 24A4008C */  addiu      $a0, $a1, 0x8c
/* D01F8 80026CE8 0C027D66 */  jal        func_8009F598
/* D01FC 80026CEC 24A50090 */   addiu     $a1, $a1, 0x90
/* D0200 80026CF0 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0204 80026CF4 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0208 80026CF8 3C014040 */  lui        $at, 0x4040
/* D020C 80026CFC 44810000 */  mtc1       $at, $f0
/* D0210 80026D00 A04000D8 */  sb         $zero, 0xd8($v0)
/* D0214 80026D04 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0218 80026D08 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D021C 80026D0C A04000D9 */  sb         $zero, 0xd9($v0)
/* D0220 80026D10 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0224 80026D14 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0228 80026D18 A04000DA */  sb         $zero, 0xda($v0)
/* D022C 80026D1C 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0230 80026D20 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0234 80026D24 24020001 */  addiu      $v0, $zero, 1
/* D0238 80026D28 A06200DB */  sb         $v0, 0xdb($v1)
/* D023C 80026D2C 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0240 80026D30 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0244 80026D34 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D0248 80026D38 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D024C 80026D3C A06000F0 */  sb         $zero, 0xf0($v1)
/* D0250 80026D40 3C058006 */  lui        $a1, %hi(D_80067200)
/* D0254 80026D44 8CA57200 */  lw         $a1, %lo(D_80067200)($a1)
/* D0258 80026D48 00041040 */  sll        $v0, $a0, 1
/* D025C 80026D4C 00822021 */  addu       $a0, $a0, $v0
/* D0260 80026D50 2402006C */  addiu      $v0, $zero, 0x6c
/* D0264 80026D54 A46200E4 */  sh         $v0, 0xe4($v1)
/* D0268 80026D58 240200DC */  addiu      $v0, $zero, 0xdc
/* D026C 80026D5C A46400DC */  sh         $a0, 0xdc($v1)
/* D0270 80026D60 AC6000E0 */  sw         $zero, 0xe0($v1)
/* D0274 80026D64 A46200E6 */  sh         $v0, 0xe6($v1)
/* D0278 80026D68 AC6000E8 */  sw         $zero, 0xe8($v1)
/* D027C 80026D6C E46000EC */  swc1       $f0, 0xec($v1)
/* D0280 80026D70 A0A000F1 */  sb         $zero, 0xf1($a1)
/* D0284 80026D74 8FBF0030 */  lw         $ra, 0x30($sp)
/* D0288 80026D78 8FB5002C */  lw         $s5, 0x2c($sp)
/* D028C 80026D7C 8FB40028 */  lw         $s4, 0x28($sp)
/* D0290 80026D80 8FB30024 */  lw         $s3, 0x24($sp)
/* D0294 80026D84 8FB20020 */  lw         $s2, 0x20($sp)
/* D0298 80026D88 8FB1001C */  lw         $s1, 0x1c($sp)
/* D029C 80026D8C 8FB00018 */  lw         $s0, 0x18($sp)
/* D02A0 80026D90 D7B40038 */  ldc1       $f20, 0x38($sp)
/* D02A4 80026D94 03E00008 */  jr         $ra
/* D02A8 80026D98 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80026D9C_D02AC
/* D02AC 80026D9C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D02B0 80026DA0 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D02B4 80026DA4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D02B8 80026DA8 AFBF0014 */  sw         $ra, 0x14($sp)
/* D02BC 80026DAC AFB00010 */  sw         $s0, 0x10($sp)
/* D02C0 80026DB0 8C440000 */  lw         $a0, ($v0)
/* D02C4 80026DB4 0C029393 */  jal        func_800A4E4C
/* D02C8 80026DB8 00008021 */   addu      $s0, $zero, $zero
.L80026DBC:
/* D02CC 80026DBC 3C028006 */  lui        $v0, %hi(D_80067200)
/* D02D0 80026DC0 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D02D4 80026DC4 00101880 */  sll        $v1, $s0, 2
/* D02D8 80026DC8 00621821 */  addu       $v1, $v1, $v0
/* D02DC 80026DCC 8C640004 */  lw         $a0, 4($v1)
/* D02E0 80026DD0 0C028D30 */  jal        func_800A34C0
/* D02E4 80026DD4 26100001 */   addiu     $s0, $s0, 1
/* D02E8 80026DD8 2A02001F */  slti       $v0, $s0, 0x1f
/* D02EC 80026DDC 1440FFF7 */  bnez       $v0, .L80026DBC
/* D02F0 80026DE0 00000000 */   nop
/* D02F4 80026DE4 00008021 */  addu       $s0, $zero, $zero
.L80026DE8:
/* D02F8 80026DE8 3C028006 */  lui        $v0, %hi(D_80067200)
/* D02FC 80026DEC 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0300 80026DF0 00101880 */  sll        $v1, $s0, 2
/* D0304 80026DF4 00621821 */  addu       $v1, $v1, $v0
/* D0308 80026DF8 8C640080 */  lw         $a0, 0x80($v1)
/* D030C 80026DFC 0C0295AA */  jal        func_800A56A8
/* D0310 80026E00 26100001 */   addiu     $s0, $s0, 1
/* D0314 80026E04 2A020002 */  slti       $v0, $s0, 2
/* D0318 80026E08 1440FFF7 */  bnez       $v0, .L80026DE8
/* D031C 80026E0C 00000000 */   nop
/* D0320 80026E10 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0324 80026E14 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0328 80026E18 0C027E98 */  jal        func_8009FA60
/* D032C 80026E1C 8C440088 */   lw        $a0, 0x88($v0)
/* D0330 80026E20 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0334 80026E24 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0338 80026E28 0C027880 */  jal        func_8009E200
/* D033C 80026E2C 8C44008C */   lw        $a0, 0x8c($v0)
/* D0340 80026E30 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0344 80026E34 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0348 80026E38 0C027BB8 */  jal        func_8009EEE0
/* D034C 80026E3C 8C440090 */   lw        $a0, 0x90($v0)
/* D0350 80026E40 3C048006 */  lui        $a0, %hi(D_80067200)
/* D0354 80026E44 0C0326A1 */  jal        func_800C9A84
/* D0358 80026E48 8C847200 */   lw        $a0, %lo(D_80067200)($a0)
/* D035C 80026E4C 3C018006 */  lui        $at, %hi(D_80067200)
/* D0360 80026E50 AC207200 */  sw         $zero, %lo(D_80067200)($at)
/* D0364 80026E54 0C026449 */  jal        func_80099124
/* D0368 80026E58 24040002 */   addiu     $a0, $zero, 2
/* D036C 80026E5C 0C02DB14 */  jal        func_800B6C50
/* D0370 80026E60 00002021 */   addu      $a0, $zero, $zero
/* D0374 80026E64 8FBF0014 */  lw         $ra, 0x14($sp)
/* D0378 80026E68 8FB00010 */  lw         $s0, 0x10($sp)
/* D037C 80026E6C 03E00008 */  jr         $ra
/* D0380 80026E70 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80026E74_D0384
/* D0384 80026E74 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0388 80026E78 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D038C 80026E7C 27BDFF98 */  addiu      $sp, $sp, -0x68
/* D0390 80026E80 AFBF005C */  sw         $ra, 0x5c($sp)
/* D0394 80026E84 AFB20058 */  sw         $s2, 0x58($sp)
/* D0398 80026E88 AFB10054 */  sw         $s1, 0x54($sp)
/* D039C 80026E8C AFB00050 */  sw         $s0, 0x50($sp)
/* D03A0 80026E90 F7B40060 */  sdc1       $f20, 0x60($sp)
/* D03A4 80026E94 904300D8 */  lbu        $v1, 0xd8($v0)
/* D03A8 80026E98 2C620008 */  sltiu      $v0, $v1, 8
/* D03AC 80026E9C 1040012D */  beqz       $v0, .L80027354
/* D03B0 80026EA0 00031080 */   sll       $v0, $v1, 2
/* D03B4 80026EA4 3C018007 */  lui        $at, %hi(D_80069AE8)
/* D03B8 80026EA8 00220821 */  addu       $at, $at, $v0
/* D03BC 80026EAC 8C229AE8 */  lw         $v0, %lo(D_80069AE8)($at)
/* D03C0 80026EB0 00400008 */  jr         $v0
/* D03C4 80026EB4 00000000 */   nop
/* D03C8 80026EB8 3C028017 */  lui        $v0, %hi(D_8016D208)
/* D03CC 80026EBC 8C42D208 */  lw         $v0, %lo(D_8016D208)($v0)
/* D03D0 80026EC0 14400009 */  bnez       $v0, .L80026EE8
/* D03D4 80026EC4 00000000 */   nop
/* D03D8 80026EC8 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D03DC 80026ECC 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D03E0 80026ED0 30421000 */  andi       $v0, $v0, 0x1000
/* D03E4 80026ED4 10400004 */  beqz       $v0, .L80026EE8
/* D03E8 80026ED8 00000000 */   nop
/* D03EC 80026EDC 3C028006 */  lui        $v0, %hi(D_80067200)
/* D03F0 80026EE0 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D03F4 80026EE4 A44000DC */  sh         $zero, 0xdc($v0)
.L80026EE8:
/* D03F8 80026EE8 3C048006 */  lui        $a0, %hi(D_80067200)
/* D03FC 80026EEC 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0400 80026EF0 848200DC */  lh         $v0, 0xdc($a0)
/* D0404 80026EF4 1440010D */  bnez       $v0, .L8002732C
/* D0408 80026EF8 00401821 */   addu      $v1, $v0, $zero
/* D040C 80026EFC 08009C8D */  j          .L80027234
/* D0410 80026F00 00000000 */   nop
/* D0414 80026F04 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0418 80026F08 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D041C 80026F0C 846200DC */  lh         $v0, 0xdc($v1)
/* D0420 80026F10 1040010D */  beqz       $v0, .L80027348
/* D0424 80026F14 00402021 */   addu      $a0, $v0, $zero
/* D0428 80026F18 3C013F80 */  lui        $at, 0x3f80
/* D042C 80026F1C 44812000 */  mtc1       $at, $f4
/* D0430 80026F20 3C018017 */  lui        $at, %hi(D_8016D168)
/* D0434 80026F24 C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* D0438 80026F28 46800020 */  cvt.s.w    $f0, $f0
/* D043C 80026F2C 46002003 */  div.s      $f0, $f4, $f0
/* D0440 80026F30 C46200E0 */  lwc1       $f2, 0xe0($v1)
/* D0444 80026F34 46001080 */  add.s      $f2, $f2, $f0
/* D0448 80026F38 2482FFFF */  addiu      $v0, $a0, -1
/* D044C 80026F3C 4602203C */  c.lt.s     $f4, $f2
/* D0450 80026F40 A46200DC */  sh         $v0, 0xdc($v1)
/* D0454 80026F44 00000000 */  nop
/* D0458 80026F48 45000003 */  bc1f       .L80026F58
/* D045C 80026F4C E46200E0 */   swc1      $f2, 0xe0($v1)
/* D0460 80026F50 08009CD5 */  j          .L80027354
/* D0464 80026F54 E46400E0 */   swc1      $f4, 0xe0($v1)
.L80026F58:
/* D0468 80026F58 44800000 */  mtc1       $zero, $f0
/* D046C 80026F5C 00000000 */  nop
/* D0470 80026F60 4600103C */  c.lt.s     $f2, $f0
/* D0474 80026F64 00000000 */  nop
/* D0478 80026F68 00000000 */  nop
/* D047C 80026F6C 450300F9 */  bc1tl      .L80027354
/* D0480 80026F70 E46000E0 */   swc1      $f0, 0xe0($v1)
/* D0484 80026F74 08009CD6 */  j          .L80027358
/* D0488 80026F78 24100003 */   addiu     $s0, $zero, 3
/* D048C 80026F7C 27A40020 */  addiu      $a0, $sp, 0x20
/* D0490 80026F80 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0494 80026F84 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0498 80026F88 27A50024 */  addiu      $a1, $sp, 0x24
/* D049C 80026F8C 905000DB */  lbu        $s0, 0xdb($v0)
/* D04A0 80026F90 0C0266D6 */  jal        func_80099B58
/* D04A4 80026F94 00003021 */   addu      $a2, $zero, $zero
/* D04A8 80026F98 304200FF */  andi       $v0, $v0, 0xff
/* D04AC 80026F9C 1040000D */  beqz       $v0, .L80026FD4
/* D04B0 80026FA0 2402FFFF */   addiu     $v0, $zero, -1
/* D04B4 80026FA4 8FA30020 */  lw         $v1, 0x20($sp)
/* D04B8 80026FA8 14620006 */  bne        $v1, $v0, .L80026FC4
/* D04BC 80026FAC 24020001 */   addiu     $v0, $zero, 1
/* D04C0 80026FB0 3C038006 */  lui        $v1, %hi(D_80067200)
/* D04C4 80026FB4 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D04C8 80026FB8 24020001 */  addiu      $v0, $zero, 1
/* D04CC 80026FBC 08009BFD */  j          .L80026FF4
/* D04D0 80026FC0 A06200DB */   sb        $v0, 0xdb($v1)
.L80026FC4:
/* D04D4 80026FC4 10620008 */  beq        $v1, $v0, .L80026FE8
/* D04D8 80026FC8 00000000 */   nop
/* D04DC 80026FCC 08009BFD */  j          .L80026FF4
/* D04E0 80026FD0 00000000 */   nop
.L80026FD4:
/* D04E4 80026FD4 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D04E8 80026FD8 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D04EC 80026FDC 30424000 */  andi       $v0, $v0, 0x4000
/* D04F0 80026FE0 10400004 */  beqz       $v0, .L80026FF4
/* D04F4 80026FE4 00000000 */   nop
.L80026FE8:
/* D04F8 80026FE8 3C028006 */  lui        $v0, %hi(D_80067200)
/* D04FC 80026FEC 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0500 80026FF0 A04000DB */  sb         $zero, 0xdb($v0)
.L80026FF4:
/* D0504 80026FF4 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0508 80026FF8 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D050C 80026FFC 904200DB */  lbu        $v0, 0xdb($v0)
/* D0510 80027000 12020003 */  beq        $s0, $v0, .L80027010
/* D0514 80027004 00000000 */   nop
/* D0518 80027008 0C026DD5 */  jal        func_8009B754
/* D051C 8002700C 24040019 */   addiu     $a0, $zero, 0x19
.L80027010:
/* D0520 80027010 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D0524 80027014 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D0528 80027018 30428000 */  andi       $v0, $v0, 0x8000
/* D052C 8002701C 104000CE */  beqz       $v0, .L80027358
/* D0530 80027020 24100003 */   addiu     $s0, $zero, 3
/* D0534 80027024 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0538 80027028 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D053C 8002702C 904200DB */  lbu        $v0, 0xdb($v0)
/* D0540 80027030 10400008 */  beqz       $v0, .L80027054
/* D0544 80027034 00000000 */   nop
/* D0548 80027038 0C026DD5 */  jal        func_8009B754
/* D054C 8002703C 24040066 */   addiu     $a0, $zero, 0x66
/* D0550 80027040 3C048017 */  lui        $a0, %hi(D_8016D5A0)
/* D0554 80027044 0C02AC93 */  jal        func_800AB24C
/* D0558 80027048 9084D5A0 */   lbu       $a0, %lo(D_8016D5A0)($a0)
/* D055C 8002704C 08009C17 */  j          .L8002705C
/* D0560 80027050 00000000 */   nop
.L80027054:
/* D0564 80027054 0C026DD5 */  jal        func_8009B754
/* D0568 80027058 2404001D */   addiu     $a0, $zero, 0x1d
.L8002705C:
/* D056C 8002705C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0570 80027060 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0574 80027064 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D0578 80027068 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D057C 8002706C 904300D8 */  lbu        $v1, 0xd8($v0)
/* D0580 80027070 A44400DC */  sh         $a0, 0xdc($v0)
/* D0584 80027074 24630001 */  addiu      $v1, $v1, 1
/* D0588 80027078 08009CD5 */  j          .L80027354
/* D058C 8002707C A04300D8 */   sb        $v1, 0xd8($v0)
/* D0590 80027080 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0594 80027084 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0598 80027088 906200DB */  lbu        $v0, 0xdb($v1)
/* D059C 8002708C 10400011 */  beqz       $v0, .L800270D4
/* D05A0 80027090 00000000 */   nop
/* D05A4 80027094 946200E4 */  lhu        $v0, 0xe4($v1)
/* D05A8 80027098 24420001 */  addiu      $v0, $v0, 1
/* D05AC 8002709C A46200E4 */  sh         $v0, 0xe4($v1)
/* D05B0 800270A0 946200E6 */  lhu        $v0, 0xe6($v1)
/* D05B4 800270A4 846400E4 */  lh         $a0, 0xe4($v1)
/* D05B8 800270A8 24420002 */  addiu      $v0, $v0, 2
/* D05BC 800270AC A46200E6 */  sh         $v0, 0xe6($v1)
/* D05C0 800270B0 288200A4 */  slti       $v0, $a0, 0xa4
/* D05C4 800270B4 14400003 */  bnez       $v0, .L800270C4
/* D05C8 800270B8 240200A3 */   addiu     $v0, $zero, 0xa3
/* D05CC 800270BC 08009C44 */  j          .L80027110
/* D05D0 800270C0 A46200E4 */   sh        $v0, 0xe4($v1)
.L800270C4:
/* D05D4 800270C4 04820012 */  bltzl      $a0, .L80027110
/* D05D8 800270C8 A46000E4 */   sh        $zero, 0xe4($v1)
/* D05DC 800270CC 08009C44 */  j          .L80027110
/* D05E0 800270D0 00000000 */   nop
.L800270D4:
/* D05E4 800270D4 946200E6 */  lhu        $v0, 0xe6($v1)
/* D05E8 800270D8 2442FFFF */  addiu      $v0, $v0, -1
/* D05EC 800270DC A46200E6 */  sh         $v0, 0xe6($v1)
/* D05F0 800270E0 946200E4 */  lhu        $v0, 0xe4($v1)
/* D05F4 800270E4 846400E6 */  lh         $a0, 0xe6($v1)
/* D05F8 800270E8 2442FFFE */  addiu      $v0, $v0, -2
/* D05FC 800270EC A46200E4 */  sh         $v0, 0xe4($v1)
/* D0600 800270F0 28820130 */  slti       $v0, $a0, 0x130
/* D0604 800270F4 14400003 */  bnez       $v0, .L80027104
/* D0608 800270F8 288200A2 */   slti      $v0, $a0, 0xa2
/* D060C 800270FC 08009C43 */  j          .L8002710C
/* D0610 80027100 2402012F */   addiu     $v0, $zero, 0x12f
.L80027104:
/* D0614 80027104 10400002 */  beqz       $v0, .L80027110
/* D0618 80027108 240200A2 */   addiu     $v0, $zero, 0xa2
.L8002710C:
/* D061C 8002710C A46200E6 */  sh         $v0, 0xe6($v1)
.L80027110:
/* D0620 80027110 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0624 80027114 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0628 80027118 944500E4 */  lhu        $a1, 0xe4($v0)
/* D062C 8002711C 2406030C */  addiu      $a2, $zero, 0x30c
/* D0630 80027120 8C440040 */  lw         $a0, 0x40($v0)
/* D0634 80027124 00052C80 */  sll        $a1, $a1, 0x12
/* D0638 80027128 0C028D89 */  jal        func_800A3624
/* D063C 8002712C 00052C03 */   sra       $a1, $a1, 0x10
/* D0640 80027130 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0644 80027134 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0648 80027138 944500E4 */  lhu        $a1, 0xe4($v0)
/* D064C 8002713C 2406030C */  addiu      $a2, $zero, 0x30c
/* D0650 80027140 8C440044 */  lw         $a0, 0x44($v0)
/* D0654 80027144 00052C80 */  sll        $a1, $a1, 0x12
/* D0658 80027148 0C028D89 */  jal        func_800A3624
/* D065C 8002714C 00052C03 */   sra       $a1, $a1, 0x10
/* D0660 80027150 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0664 80027154 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0668 80027158 944500E6 */  lhu        $a1, 0xe6($v0)
/* D066C 8002715C 2406030C */  addiu      $a2, $zero, 0x30c
/* D0670 80027160 8C440048 */  lw         $a0, 0x48($v0)
/* D0674 80027164 00052C80 */  sll        $a1, $a1, 0x12
/* D0678 80027168 0C028D89 */  jal        func_800A3624
/* D067C 8002716C 00052C03 */   sra       $a1, $a1, 0x10
/* D0680 80027170 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0684 80027174 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0688 80027178 944500E6 */  lhu        $a1, 0xe6($v0)
/* D068C 8002717C 2406030C */  addiu      $a2, $zero, 0x30c
/* D0690 80027180 8C44004C */  lw         $a0, 0x4c($v0)
/* D0694 80027184 00052C80 */  sll        $a1, $a1, 0x12
/* D0698 80027188 0C028D89 */  jal        func_800A3624
/* D069C 8002718C 00052C03 */   sra       $a1, $a1, 0x10
/* D06A0 80027190 3C048006 */  lui        $a0, %hi(D_80067200)
/* D06A4 80027194 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D06A8 80027198 848300E4 */  lh         $v1, 0xe4($a0)
/* D06AC 8002719C 240200A3 */  addiu      $v0, $zero, 0xa3
/* D06B0 800271A0 10620024 */  beq        $v1, $v0, .L80027234
/* D06B4 800271A4 240200A2 */   addiu     $v0, $zero, 0xa2
/* D06B8 800271A8 848300E6 */  lh         $v1, 0xe6($a0)
/* D06BC 800271AC 1462006A */  bne        $v1, $v0, .L80027358
/* D06C0 800271B0 24100003 */   addiu     $s0, $zero, 3
/* D06C4 800271B4 08009C8D */  j          .L80027234
/* D06C8 800271B8 00000000 */   nop
/* D06CC 800271BC 3C048006 */  lui        $a0, %hi(D_80067200)
/* D06D0 800271C0 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D06D4 800271C4 848200DC */  lh         $v0, 0xdc($a0)
/* D06D8 800271C8 1040001A */  beqz       $v0, .L80027234
/* D06DC 800271CC 00401821 */   addu      $v1, $v0, $zero
/* D06E0 800271D0 3C013F80 */  lui        $at, 0x3f80
/* D06E4 800271D4 44812000 */  mtc1       $at, $f4
/* D06E8 800271D8 3C018017 */  lui        $at, %hi(D_8016D168)
/* D06EC 800271DC C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* D06F0 800271E0 46800020 */  cvt.s.w    $f0, $f0
/* D06F4 800271E4 46002003 */  div.s      $f0, $f4, $f0
/* D06F8 800271E8 C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D06FC 800271EC 46001081 */  sub.s      $f2, $f2, $f0
/* D0700 800271F0 2462FFFF */  addiu      $v0, $v1, -1
/* D0704 800271F4 4602203C */  c.lt.s     $f4, $f2
/* D0708 800271F8 A48200DC */  sh         $v0, 0xdc($a0)
/* D070C 800271FC 00000000 */  nop
/* D0710 80027200 45000003 */  bc1f       .L80027210
/* D0714 80027204 E48200E0 */   swc1      $f2, 0xe0($a0)
/* D0718 80027208 08009CD5 */  j          .L80027354
/* D071C 8002720C E48400E0 */   swc1      $f4, 0xe0($a0)
.L80027210:
/* D0720 80027210 44800000 */  mtc1       $zero, $f0
/* D0724 80027214 00000000 */  nop
/* D0728 80027218 4600103C */  c.lt.s     $f2, $f0
/* D072C 8002721C 00000000 */  nop
/* D0730 80027220 00000000 */  nop
/* D0734 80027224 4503004B */  bc1tl      .L80027354
/* D0738 80027228 E48000E0 */   swc1      $f0, 0xe0($a0)
/* D073C 8002722C 08009CD6 */  j          .L80027358
/* D0740 80027230 24100003 */   addiu     $s0, $zero, 3
.L80027234:
/* D0744 80027234 908200D8 */  lbu        $v0, 0xd8($a0)
/* D0748 80027238 3C038017 */  lui        $v1, %hi(D_8016D168)
/* D074C 8002723C 8C63D168 */  lw         $v1, %lo(D_8016D168)($v1)
/* D0750 80027240 24420001 */  addiu      $v0, $v0, 1
/* D0754 80027244 A48300DC */  sh         $v1, 0xdc($a0)
/* D0758 80027248 08009CD5 */  j          .L80027354
/* D075C 8002724C A08200D8 */   sb        $v0, 0xd8($a0)
/* D0760 80027250 3C028017 */  lui        $v0, %hi(D_8016D208)
/* D0764 80027254 8C42D208 */  lw         $v0, %lo(D_8016D208)($v0)
/* D0768 80027258 14400009 */  bnez       $v0, .L80027280
/* D076C 8002725C 00000000 */   nop
/* D0770 80027260 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D0774 80027264 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D0778 80027268 30421000 */  andi       $v0, $v0, 0x1000
/* D077C 8002726C 10400004 */  beqz       $v0, .L80027280
/* D0780 80027270 00000000 */   nop
/* D0784 80027274 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0788 80027278 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D078C 8002727C A44000DC */  sh         $zero, 0xdc($v0)
.L80027280:
/* D0790 80027280 3C048006 */  lui        $a0, %hi(D_80067200)
/* D0794 80027284 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0798 80027288 848200DC */  lh         $v0, 0xdc($a0)
/* D079C 8002728C 14400027 */  bnez       $v0, .L8002732C
/* D07A0 80027290 00401821 */   addu      $v1, $v0, $zero
/* D07A4 80027294 2404FFFE */  addiu      $a0, $zero, -2
/* D07A8 80027298 3C068017 */  lui        $a2, %hi(D_8016D16A)
/* D07AC 8002729C 94C6D16A */  lhu        $a2, %lo(D_8016D16A)($a2)
/* D07B0 800272A0 2405FFFF */  addiu      $a1, $zero, -1
/* D07B4 800272A4 00003821 */  addu       $a3, $zero, $zero
/* D07B8 800272A8 0C026C9A */  jal        func_8009B268
/* D07BC 800272AC AFA00010 */   sw        $zero, 0x10($sp)
/* D07C0 800272B0 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D07C4 800272B4 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D07C8 800272B8 0C02A5C1 */  jal        func_800A9704
/* D07CC 800272BC 24100003 */   addiu     $s0, $zero, 3
/* D07D0 800272C0 3C048006 */  lui        $a0, %hi(D_80067200)
/* D07D4 800272C4 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D07D8 800272C8 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D07DC 800272CC 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D07E0 800272D0 908300D8 */  lbu        $v1, 0xd8($a0)
/* D07E4 800272D4 00021040 */  sll        $v0, $v0, 1
/* D07E8 800272D8 A48200DC */  sh         $v0, 0xdc($a0)
/* D07EC 800272DC 24630001 */  addiu      $v1, $v1, 1
/* D07F0 800272E0 08009CD6 */  j          .L80027358
/* D07F4 800272E4 A08300D8 */   sb        $v1, 0xd8($a0)
/* D07F8 800272E8 3C028017 */  lui        $v0, %hi(D_8016D208)
/* D07FC 800272EC 8C42D208 */  lw         $v0, %lo(D_8016D208)($v0)
/* D0800 800272F0 14400009 */  bnez       $v0, .L80027318
/* D0804 800272F4 00000000 */   nop
/* D0808 800272F8 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D080C 800272FC 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D0810 80027300 30421000 */  andi       $v0, $v0, 0x1000
/* D0814 80027304 10400004 */  beqz       $v0, .L80027318
/* D0818 80027308 00000000 */   nop
/* D081C 8002730C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0820 80027310 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0824 80027314 A44000DC */  sh         $zero, 0xdc($v0)
.L80027318:
/* D0828 80027318 3C048006 */  lui        $a0, %hi(D_80067200)
/* D082C 8002731C 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0830 80027320 848200DC */  lh         $v0, 0xdc($a0)
/* D0834 80027324 10400004 */  beqz       $v0, .L80027338
/* D0838 80027328 00401821 */   addu      $v1, $v0, $zero
.L8002732C:
/* D083C 8002732C 2462FFFF */  addiu      $v0, $v1, -1
/* D0840 80027330 08009CD5 */  j          .L80027354
/* D0844 80027334 A48200DC */   sh        $v0, 0xdc($a0)
.L80027338:
/* D0848 80027338 0C02BB10 */  jal        func_800AEC40
/* D084C 8002733C 24040002 */   addiu     $a0, $zero, 2
/* D0850 80027340 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0854 80027344 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
.L80027348:
/* D0858 80027348 906200D8 */  lbu        $v0, 0xd8($v1)
/* D085C 8002734C 24420001 */  addiu      $v0, $v0, 1
/* D0860 80027350 A06200D8 */  sb         $v0, 0xd8($v1)
.L80027354:
/* D0864 80027354 24100003 */  addiu      $s0, $zero, 3
.L80027358:
/* D0868 80027358 3C014F00 */  lui        $at, 0x4f00
/* D086C 8002735C 4481A000 */  mtc1       $at, $f20
/* D0870 80027360 3C128000 */  lui        $s2, 0x8000
/* D0874 80027364 3C118006 */  lui        $s1, %hi(D_80067228)
/* D0878 80027368 26317228 */  addiu      $s1, $s1, %lo(D_80067228)
.L8002736C:
/* D087C 8002736C 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0880 80027370 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0884 80027374 92220005 */  lbu        $v0, 5($s1)
/* D0888 80027378 C46200E0 */  lwc1       $f2, 0xe0($v1)
/* D088C 8002737C 44820000 */  mtc1       $v0, $f0
/* D0890 80027380 00000000 */  nop
/* D0894 80027384 46800020 */  cvt.s.w    $f0, $f0
/* D0898 80027388 46020082 */  mul.s      $f2, $f0, $f2
/* D089C 8002738C 00101080 */  sll        $v0, $s0, 2
/* D08A0 80027390 4602A03E */  c.le.s     $f20, $f2
/* D08A4 80027394 00431021 */  addu       $v0, $v0, $v1
/* D08A8 80027398 00000000 */  nop
/* D08AC 8002739C 45010006 */  bc1t       .L800273B8
/* D08B0 800273A0 24440004 */   addiu     $a0, $v0, 4
/* D08B4 800273A4 4600100D */  trunc.w.s  $f0, $f2
/* D08B8 800273A8 44030000 */  mfc1       $v1, $f0
/* D08BC 800273AC 00000000 */  nop
/* D08C0 800273B0 08009CF4 */  j          .L800273D0
/* D08C4 800273B4 306200FF */   andi      $v0, $v1, 0xff
.L800273B8:
/* D08C8 800273B8 46141001 */  sub.s      $f0, $f2, $f20
/* D08CC 800273BC 4600008D */  trunc.w.s  $f2, $f0
/* D08D0 800273C0 44031000 */  mfc1       $v1, $f2
/* D08D4 800273C4 00000000 */  nop
/* D08D8 800273C8 00721825 */  or         $v1, $v1, $s2
/* D08DC 800273CC 306200FF */  andi       $v0, $v1, 0xff
.L800273D0:
/* D08E0 800273D0 AFA20010 */  sw         $v0, 0x10($sp)
/* D08E4 800273D4 8C840000 */  lw         $a0, ($a0)
/* D08E8 800273D8 240500FF */  addiu      $a1, $zero, 0xff
/* D08EC 800273DC 240600FF */  addiu      $a2, $zero, 0xff
/* D08F0 800273E0 240700FF */  addiu      $a3, $zero, 0xff
/* D08F4 800273E4 2631000C */  addiu      $s1, $s1, 0xc
/* D08F8 800273E8 0C028E41 */  jal        func_800A3904
/* D08FC 800273EC 26100001 */   addiu     $s0, $s0, 1
/* D0900 800273F0 2A02001F */  slti       $v0, $s0, 0x1f
/* D0904 800273F4 1440FFDD */  bnez       $v0, .L8002736C
/* D0908 800273F8 00000000 */   nop
/* D090C 800273FC 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0910 80027400 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0914 80027404 906200DB */  lbu        $v0, 0xdb($v1)
/* D0918 80027408 104000BA */  beqz       $v0, .L800276F4
/* D091C 8002740C 00000000 */   nop
/* D0920 80027410 3C013FC0 */  lui        $at, 0x3fc0
/* D0924 80027414 4481A000 */  mtc1       $at, $f20
/* D0928 80027418 8C640040 */  lw         $a0, 0x40($v1)
/* D092C 8002741C 4406A000 */  mfc1       $a2, $f20
/* D0930 80027420 4407A000 */  mfc1       $a3, $f20
/* D0934 80027424 00000000 */  nop
/* D0938 80027428 0C02915B */  jal        func_800A456C
/* D093C 8002742C 00002821 */   addu      $a1, $zero, $zero
/* D0940 80027430 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0944 80027434 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0948 80027438 4406A000 */  mfc1       $a2, $f20
/* D094C 8002743C 8C440044 */  lw         $a0, 0x44($v0)
/* D0950 80027440 00002821 */  addu       $a1, $zero, $zero
/* D0954 80027444 0C02915B */  jal        func_800A456C
/* D0958 80027448 00C03821 */   addu      $a3, $a2, $zero
/* D095C 8002744C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0960 80027450 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0964 80027454 3C013F80 */  lui        $at, 0x3f80
/* D0968 80027458 4481A000 */  mtc1       $at, $f20
/* D096C 8002745C 8C440048 */  lw         $a0, 0x48($v0)
/* D0970 80027460 4406A000 */  mfc1       $a2, $f20
/* D0974 80027464 4407A000 */  mfc1       $a3, $f20
/* D0978 80027468 00000000 */  nop
/* D097C 8002746C 0C02915B */  jal        func_800A456C
/* D0980 80027470 00002821 */   addu      $a1, $zero, $zero
/* D0984 80027474 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0988 80027478 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D098C 8002747C 4406A000 */  mfc1       $a2, $f20
/* D0990 80027480 8C44004C */  lw         $a0, 0x4c($v0)
/* D0994 80027484 00002821 */  addu       $a1, $zero, $zero
/* D0998 80027488 0C02915B */  jal        func_800A456C
/* D099C 8002748C 00C03821 */   addu      $a3, $a2, $zero
/* D09A0 80027490 3C048006 */  lui        $a0, %hi(D_80067200)
/* D09A4 80027494 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D09A8 80027498 3C014332 */  lui        $at, 0x4332
/* D09AC 8002749C 34218000 */  ori        $at, $at, 0x8000
/* D09B0 800274A0 44810000 */  mtc1       $at, $f0
/* D09B4 800274A4 C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D09B8 800274A8 46001082 */  mul.s      $f2, $f2, $f0
/* D09BC 800274AC 3C014F00 */  lui        $at, 0x4f00
/* D09C0 800274B0 44810000 */  mtc1       $at, $f0
/* D09C4 800274B4 00000000 */  nop
/* D09C8 800274B8 4602003E */  c.le.s     $f0, $f2
/* D09CC 800274BC 00000000 */  nop
/* D09D0 800274C0 00000000 */  nop
/* D09D4 800274C4 45030006 */  bc1tl      .L800274E0
/* D09D8 800274C8 46001001 */   sub.s     $f0, $f2, $f0
/* D09DC 800274CC 4600100D */  trunc.w.s  $f0, $f2
/* D09E0 800274D0 44030000 */  mfc1       $v1, $f0
/* D09E4 800274D4 00000000 */  nop
/* D09E8 800274D8 08009D3D */  j          .L800274F4
/* D09EC 800274DC 306200FF */   andi      $v0, $v1, 0xff
.L800274E0:
/* D09F0 800274E0 4600008D */  trunc.w.s  $f2, $f0
/* D09F4 800274E4 44031000 */  mfc1       $v1, $f2
/* D09F8 800274E8 3C028000 */  lui        $v0, 0x8000
/* D09FC 800274EC 00621825 */  or         $v1, $v1, $v0
/* D0A00 800274F0 306200FF */  andi       $v0, $v1, 0xff
.L800274F4:
/* D0A04 800274F4 AFA20010 */  sw         $v0, 0x10($sp)
/* D0A08 800274F8 8C840040 */  lw         $a0, 0x40($a0)
/* D0A0C 800274FC 240500FF */  addiu      $a1, $zero, 0xff
/* D0A10 80027500 240600FF */  addiu      $a2, $zero, 0xff
/* D0A14 80027504 0C028E41 */  jal        func_800A3904
/* D0A18 80027508 240700FF */   addiu     $a3, $zero, 0xff
/* D0A1C 8002750C 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0A20 80027510 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0A24 80027514 906200DA */  lbu        $v0, 0xda($v1)
/* D0A28 80027518 1040001E */  beqz       $v0, .L80027594
/* D0A2C 8002751C 00602021 */   addu      $a0, $v1, $zero
/* D0A30 80027520 C46200E0 */  lwc1       $f2, 0xe0($v1)
/* D0A34 80027524 3C014370 */  lui        $at, 0x4370
/* D0A38 80027528 44810000 */  mtc1       $at, $f0
/* D0A3C 8002752C 00000000 */  nop
/* D0A40 80027530 46001082 */  mul.s      $f2, $f2, $f0
/* D0A44 80027534 3C014F00 */  lui        $at, 0x4f00
/* D0A48 80027538 44810000 */  mtc1       $at, $f0
/* D0A4C 8002753C 00000000 */  nop
/* D0A50 80027540 4602003E */  c.le.s     $f0, $f2
/* D0A54 80027544 00000000 */  nop
/* D0A58 80027548 00000000 */  nop
/* D0A5C 8002754C 45030006 */  bc1tl      .L80027568
/* D0A60 80027550 46001001 */   sub.s     $f0, $f2, $f0
/* D0A64 80027554 4600100D */  trunc.w.s  $f0, $f2
/* D0A68 80027558 44030000 */  mfc1       $v1, $f0
/* D0A6C 8002755C 00000000 */  nop
/* D0A70 80027560 08009D5F */  j          .L8002757C
/* D0A74 80027564 306200FF */   andi      $v0, $v1, 0xff
.L80027568:
/* D0A78 80027568 4600008D */  trunc.w.s  $f2, $f0
/* D0A7C 8002756C 44031000 */  mfc1       $v1, $f2
/* D0A80 80027570 3C028000 */  lui        $v0, 0x8000
/* D0A84 80027574 00621825 */  or         $v1, $v1, $v0
/* D0A88 80027578 306200FF */  andi       $v0, $v1, 0xff
.L8002757C:
/* D0A8C 8002757C AFA20010 */  sw         $v0, 0x10($sp)
/* D0A90 80027580 8C840044 */  lw         $a0, 0x44($a0)
/* D0A94 80027584 240500FF */  addiu      $a1, $zero, 0xff
/* D0A98 80027588 240600FF */  addiu      $a2, $zero, 0xff
/* D0A9C 8002758C 08009D81 */  j          .L80027604
/* D0AA0 80027590 240700FF */   addiu     $a3, $zero, 0xff
.L80027594:
/* D0AA4 80027594 C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D0AA8 80027598 3C014370 */  lui        $at, 0x4370
/* D0AAC 8002759C 44810000 */  mtc1       $at, $f0
/* D0AB0 800275A0 00000000 */  nop
/* D0AB4 800275A4 46001082 */  mul.s      $f2, $f2, $f0
/* D0AB8 800275A8 3C014F00 */  lui        $at, 0x4f00
/* D0ABC 800275AC 44810000 */  mtc1       $at, $f0
/* D0AC0 800275B0 00000000 */  nop
/* D0AC4 800275B4 4602003E */  c.le.s     $f0, $f2
/* D0AC8 800275B8 00000000 */  nop
/* D0ACC 800275BC 00000000 */  nop
/* D0AD0 800275C0 45030006 */  bc1tl      .L800275DC
/* D0AD4 800275C4 46001001 */   sub.s     $f0, $f2, $f0
/* D0AD8 800275C8 4600100D */  trunc.w.s  $f0, $f2
/* D0ADC 800275CC 44030000 */  mfc1       $v1, $f0
/* D0AE0 800275D0 00000000 */  nop
/* D0AE4 800275D4 08009D7C */  j          .L800275F0
/* D0AE8 800275D8 306200FF */   andi      $v0, $v1, 0xff
.L800275DC:
/* D0AEC 800275DC 4600008D */  trunc.w.s  $f2, $f0
/* D0AF0 800275E0 44031000 */  mfc1       $v1, $f2
/* D0AF4 800275E4 3C028000 */  lui        $v0, 0x8000
/* D0AF8 800275E8 00621825 */  or         $v1, $v1, $v0
/* D0AFC 800275EC 306200FF */  andi       $v0, $v1, 0xff
.L800275F0:
/* D0B00 800275F0 AFA20010 */  sw         $v0, 0x10($sp)
/* D0B04 800275F4 8C840044 */  lw         $a0, 0x44($a0)
/* D0B08 800275F8 240500FF */  addiu      $a1, $zero, 0xff
/* D0B0C 800275FC 240600FF */  addiu      $a2, $zero, 0xff
/* D0B10 80027600 00003821 */  addu       $a3, $zero, $zero
.L80027604:
/* D0B14 80027604 0C028E41 */  jal        func_800A3904
/* D0B18 80027608 00000000 */   nop
/* D0B1C 8002760C 3C048006 */  lui        $a0, %hi(D_80067200)
/* D0B20 80027610 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0B24 80027614 3C014280 */  lui        $at, 0x4280
/* D0B28 80027618 44810000 */  mtc1       $at, $f0
/* D0B2C 8002761C C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D0B30 80027620 46001082 */  mul.s      $f2, $f2, $f0
/* D0B34 80027624 3C014F00 */  lui        $at, 0x4f00
/* D0B38 80027628 44810000 */  mtc1       $at, $f0
/* D0B3C 8002762C 00000000 */  nop
/* D0B40 80027630 4602003E */  c.le.s     $f0, $f2
/* D0B44 80027634 00000000 */  nop
/* D0B48 80027638 00000000 */  nop
/* D0B4C 8002763C 45030006 */  bc1tl      .L80027658
/* D0B50 80027640 46001001 */   sub.s     $f0, $f2, $f0
/* D0B54 80027644 4600100D */  trunc.w.s  $f0, $f2
/* D0B58 80027648 44030000 */  mfc1       $v1, $f0
/* D0B5C 8002764C 00000000 */  nop
/* D0B60 80027650 08009D9B */  j          .L8002766C
/* D0B64 80027654 306200FF */   andi      $v0, $v1, 0xff
.L80027658:
/* D0B68 80027658 4600008D */  trunc.w.s  $f2, $f0
/* D0B6C 8002765C 44031000 */  mfc1       $v1, $f2
/* D0B70 80027660 3C028000 */  lui        $v0, 0x8000
/* D0B74 80027664 00621825 */  or         $v1, $v1, $v0
/* D0B78 80027668 306200FF */  andi       $v0, $v1, 0xff
.L8002766C:
/* D0B7C 8002766C AFA20010 */  sw         $v0, 0x10($sp)
/* D0B80 80027670 8C84004C */  lw         $a0, 0x4c($a0)
/* D0B84 80027674 240500FF */  addiu      $a1, $zero, 0xff
/* D0B88 80027678 240600FF */  addiu      $a2, $zero, 0xff
/* D0B8C 8002767C 0C028E41 */  jal        func_800A3904
/* D0B90 80027680 240700FF */   addiu     $a3, $zero, 0xff
/* D0B94 80027684 3C048006 */  lui        $a0, %hi(D_80067200)
/* D0B98 80027688 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0B9C 8002768C 3C014280 */  lui        $at, 0x4280
/* D0BA0 80027690 44810000 */  mtc1       $at, $f0
/* D0BA4 80027694 C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D0BA8 80027698 46001082 */  mul.s      $f2, $f2, $f0
/* D0BAC 8002769C 3C014F00 */  lui        $at, 0x4f00
/* D0BB0 800276A0 44810000 */  mtc1       $at, $f0
/* D0BB4 800276A4 00000000 */  nop
/* D0BB8 800276A8 4602003E */  c.le.s     $f0, $f2
/* D0BBC 800276AC 00000000 */  nop
/* D0BC0 800276B0 00000000 */  nop
/* D0BC4 800276B4 45030006 */  bc1tl      .L800276D0
/* D0BC8 800276B8 46001001 */   sub.s     $f0, $f2, $f0
/* D0BCC 800276BC 4600100D */  trunc.w.s  $f0, $f2
/* D0BD0 800276C0 44030000 */  mfc1       $v1, $f0
/* D0BD4 800276C4 00000000 */  nop
/* D0BD8 800276C8 08009DB9 */  j          .L800276E4
/* D0BDC 800276CC 306200FF */   andi      $v0, $v1, 0xff
.L800276D0:
/* D0BE0 800276D0 4600008D */  trunc.w.s  $f2, $f0
/* D0BE4 800276D4 44031000 */  mfc1       $v1, $f2
/* D0BE8 800276D8 3C028000 */  lui        $v0, 0x8000
/* D0BEC 800276DC 00621825 */  or         $v1, $v1, $v0
/* D0BF0 800276E0 306200FF */  andi       $v0, $v1, 0xff
.L800276E4:
/* D0BF4 800276E4 AFA20010 */  sw         $v0, 0x10($sp)
/* D0BF8 800276E8 8C840048 */  lw         $a0, 0x48($a0)
/* D0BFC 800276EC 08009E75 */  j          .L800279D4
/* D0C00 800276F0 240500FF */   addiu     $a1, $zero, 0xff
.L800276F4:
/* D0C04 800276F4 3C013F80 */  lui        $at, 0x3f80
/* D0C08 800276F8 4481A000 */  mtc1       $at, $f20
/* D0C0C 800276FC 8C640040 */  lw         $a0, 0x40($v1)
/* D0C10 80027700 4406A000 */  mfc1       $a2, $f20
/* D0C14 80027704 4407A000 */  mfc1       $a3, $f20
/* D0C18 80027708 00000000 */  nop
/* D0C1C 8002770C 0C02915B */  jal        func_800A456C
/* D0C20 80027710 00002821 */   addu      $a1, $zero, $zero
/* D0C24 80027714 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0C28 80027718 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0C2C 8002771C 4406A000 */  mfc1       $a2, $f20
/* D0C30 80027720 8C440044 */  lw         $a0, 0x44($v0)
/* D0C34 80027724 00002821 */  addu       $a1, $zero, $zero
/* D0C38 80027728 0C02915B */  jal        func_800A456C
/* D0C3C 8002772C 00C03821 */   addu      $a3, $a2, $zero
/* D0C40 80027730 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0C44 80027734 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0C48 80027738 3C013FC0 */  lui        $at, 0x3fc0
/* D0C4C 8002773C 4481A000 */  mtc1       $at, $f20
/* D0C50 80027740 8C440048 */  lw         $a0, 0x48($v0)
/* D0C54 80027744 4406A000 */  mfc1       $a2, $f20
/* D0C58 80027748 4407A000 */  mfc1       $a3, $f20
/* D0C5C 8002774C 00000000 */  nop
/* D0C60 80027750 0C02915B */  jal        func_800A456C
/* D0C64 80027754 00002821 */   addu      $a1, $zero, $zero
/* D0C68 80027758 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0C6C 8002775C 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0C70 80027760 4406A000 */  mfc1       $a2, $f20
/* D0C74 80027764 8C44004C */  lw         $a0, 0x4c($v0)
/* D0C78 80027768 00002821 */  addu       $a1, $zero, $zero
/* D0C7C 8002776C 0C02915B */  jal        func_800A456C
/* D0C80 80027770 00C03821 */   addu      $a3, $a2, $zero
/* D0C84 80027774 3C048006 */  lui        $a0, %hi(D_80067200)
/* D0C88 80027778 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0C8C 8002777C 3C014332 */  lui        $at, 0x4332
/* D0C90 80027780 34218000 */  ori        $at, $at, 0x8000
/* D0C94 80027784 44810000 */  mtc1       $at, $f0
/* D0C98 80027788 C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D0C9C 8002778C 46001082 */  mul.s      $f2, $f2, $f0
/* D0CA0 80027790 3C014F00 */  lui        $at, 0x4f00
/* D0CA4 80027794 44810000 */  mtc1       $at, $f0
/* D0CA8 80027798 00000000 */  nop
/* D0CAC 8002779C 4602003E */  c.le.s     $f0, $f2
/* D0CB0 800277A0 00000000 */  nop
/* D0CB4 800277A4 00000000 */  nop
/* D0CB8 800277A8 45030006 */  bc1tl      .L800277C4
/* D0CBC 800277AC 46001001 */   sub.s     $f0, $f2, $f0
/* D0CC0 800277B0 4600100D */  trunc.w.s  $f0, $f2
/* D0CC4 800277B4 44030000 */  mfc1       $v1, $f0
/* D0CC8 800277B8 00000000 */  nop
/* D0CCC 800277BC 08009DF6 */  j          .L800277D8
/* D0CD0 800277C0 306200FF */   andi      $v0, $v1, 0xff
.L800277C4:
/* D0CD4 800277C4 4600008D */  trunc.w.s  $f2, $f0
/* D0CD8 800277C8 44031000 */  mfc1       $v1, $f2
/* D0CDC 800277CC 3C028000 */  lui        $v0, 0x8000
/* D0CE0 800277D0 00621825 */  or         $v1, $v1, $v0
/* D0CE4 800277D4 306200FF */  andi       $v0, $v1, 0xff
.L800277D8:
/* D0CE8 800277D8 AFA20010 */  sw         $v0, 0x10($sp)
/* D0CEC 800277DC 8C840048 */  lw         $a0, 0x48($a0)
/* D0CF0 800277E0 240500FF */  addiu      $a1, $zero, 0xff
/* D0CF4 800277E4 240600FF */  addiu      $a2, $zero, 0xff
/* D0CF8 800277E8 0C028E41 */  jal        func_800A3904
/* D0CFC 800277EC 240700FF */   addiu     $a3, $zero, 0xff
/* D0D00 800277F0 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0D04 800277F4 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0D08 800277F8 906200DA */  lbu        $v0, 0xda($v1)
/* D0D0C 800277FC 1040001E */  beqz       $v0, .L80027878
/* D0D10 80027800 00602021 */   addu      $a0, $v1, $zero
/* D0D14 80027804 C46200E0 */  lwc1       $f2, 0xe0($v1)
/* D0D18 80027808 3C014370 */  lui        $at, 0x4370
/* D0D1C 8002780C 44810000 */  mtc1       $at, $f0
/* D0D20 80027810 00000000 */  nop
/* D0D24 80027814 46001082 */  mul.s      $f2, $f2, $f0
/* D0D28 80027818 3C014F00 */  lui        $at, 0x4f00
/* D0D2C 8002781C 44810000 */  mtc1       $at, $f0
/* D0D30 80027820 00000000 */  nop
/* D0D34 80027824 4602003E */  c.le.s     $f0, $f2
/* D0D38 80027828 00000000 */  nop
/* D0D3C 8002782C 00000000 */  nop
/* D0D40 80027830 45030006 */  bc1tl      .L8002784C
/* D0D44 80027834 46001001 */   sub.s     $f0, $f2, $f0
/* D0D48 80027838 4600100D */  trunc.w.s  $f0, $f2
/* D0D4C 8002783C 44030000 */  mfc1       $v1, $f0
/* D0D50 80027840 00000000 */  nop
/* D0D54 80027844 08009E18 */  j          .L80027860
/* D0D58 80027848 306200FF */   andi      $v0, $v1, 0xff
.L8002784C:
/* D0D5C 8002784C 4600008D */  trunc.w.s  $f2, $f0
/* D0D60 80027850 44031000 */  mfc1       $v1, $f2
/* D0D64 80027854 3C028000 */  lui        $v0, 0x8000
/* D0D68 80027858 00621825 */  or         $v1, $v1, $v0
/* D0D6C 8002785C 306200FF */  andi       $v0, $v1, 0xff
.L80027860:
/* D0D70 80027860 AFA20010 */  sw         $v0, 0x10($sp)
/* D0D74 80027864 8C84004C */  lw         $a0, 0x4c($a0)
/* D0D78 80027868 240500FF */  addiu      $a1, $zero, 0xff
/* D0D7C 8002786C 240600FF */  addiu      $a2, $zero, 0xff
/* D0D80 80027870 08009E3A */  j          .L800278E8
/* D0D84 80027874 240700FF */   addiu     $a3, $zero, 0xff
.L80027878:
/* D0D88 80027878 C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D0D8C 8002787C 3C014370 */  lui        $at, 0x4370
/* D0D90 80027880 44810000 */  mtc1       $at, $f0
/* D0D94 80027884 00000000 */  nop
/* D0D98 80027888 46001082 */  mul.s      $f2, $f2, $f0
/* D0D9C 8002788C 3C014F00 */  lui        $at, 0x4f00
/* D0DA0 80027890 44810000 */  mtc1       $at, $f0
/* D0DA4 80027894 00000000 */  nop
/* D0DA8 80027898 4602003E */  c.le.s     $f0, $f2
/* D0DAC 8002789C 00000000 */  nop
/* D0DB0 800278A0 00000000 */  nop
/* D0DB4 800278A4 45030006 */  bc1tl      .L800278C0
/* D0DB8 800278A8 46001001 */   sub.s     $f0, $f2, $f0
/* D0DBC 800278AC 4600100D */  trunc.w.s  $f0, $f2
/* D0DC0 800278B0 44030000 */  mfc1       $v1, $f0
/* D0DC4 800278B4 00000000 */  nop
/* D0DC8 800278B8 08009E35 */  j          .L800278D4
/* D0DCC 800278BC 306200FF */   andi      $v0, $v1, 0xff
.L800278C0:
/* D0DD0 800278C0 4600008D */  trunc.w.s  $f2, $f0
/* D0DD4 800278C4 44031000 */  mfc1       $v1, $f2
/* D0DD8 800278C8 3C028000 */  lui        $v0, 0x8000
/* D0DDC 800278CC 00621825 */  or         $v1, $v1, $v0
/* D0DE0 800278D0 306200FF */  andi       $v0, $v1, 0xff
.L800278D4:
/* D0DE4 800278D4 AFA20010 */  sw         $v0, 0x10($sp)
/* D0DE8 800278D8 8C84004C */  lw         $a0, 0x4c($a0)
/* D0DEC 800278DC 240500FF */  addiu      $a1, $zero, 0xff
/* D0DF0 800278E0 240600FF */  addiu      $a2, $zero, 0xff
/* D0DF4 800278E4 00003821 */  addu       $a3, $zero, $zero
.L800278E8:
/* D0DF8 800278E8 0C028E41 */  jal        func_800A3904
/* D0DFC 800278EC 00000000 */   nop
/* D0E00 800278F0 3C048006 */  lui        $a0, %hi(D_80067200)
/* D0E04 800278F4 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0E08 800278F8 3C014280 */  lui        $at, 0x4280
/* D0E0C 800278FC 44810000 */  mtc1       $at, $f0
/* D0E10 80027900 C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D0E14 80027904 46001082 */  mul.s      $f2, $f2, $f0
/* D0E18 80027908 3C014F00 */  lui        $at, 0x4f00
/* D0E1C 8002790C 44810000 */  mtc1       $at, $f0
/* D0E20 80027910 00000000 */  nop
/* D0E24 80027914 4602003E */  c.le.s     $f0, $f2
/* D0E28 80027918 00000000 */  nop
/* D0E2C 8002791C 00000000 */  nop
/* D0E30 80027920 45030006 */  bc1tl      .L8002793C
/* D0E34 80027924 46001001 */   sub.s     $f0, $f2, $f0
/* D0E38 80027928 4600100D */  trunc.w.s  $f0, $f2
/* D0E3C 8002792C 44030000 */  mfc1       $v1, $f0
/* D0E40 80027930 00000000 */  nop
/* D0E44 80027934 08009E54 */  j          .L80027950
/* D0E48 80027938 306200FF */   andi      $v0, $v1, 0xff
.L8002793C:
/* D0E4C 8002793C 4600008D */  trunc.w.s  $f2, $f0
/* D0E50 80027940 44031000 */  mfc1       $v1, $f2
/* D0E54 80027944 3C028000 */  lui        $v0, 0x8000
/* D0E58 80027948 00621825 */  or         $v1, $v1, $v0
/* D0E5C 8002794C 306200FF */  andi       $v0, $v1, 0xff
.L80027950:
/* D0E60 80027950 AFA20010 */  sw         $v0, 0x10($sp)
/* D0E64 80027954 8C840044 */  lw         $a0, 0x44($a0)
/* D0E68 80027958 240500FF */  addiu      $a1, $zero, 0xff
/* D0E6C 8002795C 240600FF */  addiu      $a2, $zero, 0xff
/* D0E70 80027960 0C028E41 */  jal        func_800A3904
/* D0E74 80027964 240700FF */   addiu     $a3, $zero, 0xff
/* D0E78 80027968 3C048006 */  lui        $a0, %hi(D_80067200)
/* D0E7C 8002796C 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0E80 80027970 3C014280 */  lui        $at, 0x4280
/* D0E84 80027974 44810000 */  mtc1       $at, $f0
/* D0E88 80027978 C48200E0 */  lwc1       $f2, 0xe0($a0)
/* D0E8C 8002797C 46001082 */  mul.s      $f2, $f2, $f0
/* D0E90 80027980 3C014F00 */  lui        $at, 0x4f00
/* D0E94 80027984 44810000 */  mtc1       $at, $f0
/* D0E98 80027988 00000000 */  nop
/* D0E9C 8002798C 4602003E */  c.le.s     $f0, $f2
/* D0EA0 80027990 00000000 */  nop
/* D0EA4 80027994 00000000 */  nop
/* D0EA8 80027998 45030006 */  bc1tl      .L800279B4
/* D0EAC 8002799C 46001001 */   sub.s     $f0, $f2, $f0
/* D0EB0 800279A0 4600100D */  trunc.w.s  $f0, $f2
/* D0EB4 800279A4 44030000 */  mfc1       $v1, $f0
/* D0EB8 800279A8 00000000 */  nop
/* D0EBC 800279AC 08009E72 */  j          .L800279C8
/* D0EC0 800279B0 306200FF */   andi      $v0, $v1, 0xff
.L800279B4:
/* D0EC4 800279B4 4600008D */  trunc.w.s  $f2, $f0
/* D0EC8 800279B8 44031000 */  mfc1       $v1, $f2
/* D0ECC 800279BC 3C028000 */  lui        $v0, 0x8000
/* D0ED0 800279C0 00621825 */  or         $v1, $v1, $v0
/* D0ED4 800279C4 306200FF */  andi       $v0, $v1, 0xff
.L800279C8:
/* D0ED8 800279C8 AFA20010 */  sw         $v0, 0x10($sp)
/* D0EDC 800279CC 8C840040 */  lw         $a0, 0x40($a0)
/* D0EE0 800279D0 240500FF */  addiu      $a1, $zero, 0xff
.L800279D4:
/* D0EE4 800279D4 240600FF */  addiu      $a2, $zero, 0xff
/* D0EE8 800279D8 0C028E41 */  jal        func_800A3904
/* D0EEC 800279DC 240700FF */   addiu     $a3, $zero, 0xff
/* D0EF0 800279E0 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0EF4 800279E4 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0EF8 800279E8 904300DA */  lbu        $v1, 0xda($v0)
/* D0EFC 800279EC 38630001 */  xori       $v1, $v1, 1
/* D0F00 800279F0 A04300DA */  sb         $v1, 0xda($v0)
/* D0F04 800279F4 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0F08 800279F8 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0F0C 800279FC 906200D9 */  lbu        $v0, 0xd9($v1)
/* D0F10 80027A00 14400002 */  bnez       $v0, .L80027A0C
/* D0F14 80027A04 240200FF */   addiu     $v0, $zero, 0xff
/* D0F18 80027A08 240200D0 */  addiu      $v0, $zero, 0xd0
.L80027A0C:
/* D0F1C 80027A0C AFA20010 */  sw         $v0, 0x10($sp)
/* D0F20 80027A10 8C64000C */  lw         $a0, 0xc($v1)
/* D0F24 80027A14 240500FF */  addiu      $a1, $zero, 0xff
/* D0F28 80027A18 240600FF */  addiu      $a2, $zero, 0xff
/* D0F2C 80027A1C 0C028E41 */  jal        func_800A3904
/* D0F30 80027A20 240700FF */   addiu     $a3, $zero, 0xff
/* D0F34 80027A24 3C038006 */  lui        $v1, %hi(D_80067200)
/* D0F38 80027A28 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D0F3C 80027A2C 906200D9 */  lbu        $v0, 0xd9($v1)
/* D0F40 80027A30 00008021 */  addu       $s0, $zero, $zero
/* D0F44 80027A34 38420001 */  xori       $v0, $v0, 1
/* D0F48 80027A38 A06200D9 */  sb         $v0, 0xd9($v1)
.L80027A3C:
/* D0F4C 80027A3C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0F50 80027A40 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0F54 80027A44 00101880 */  sll        $v1, $s0, 2
/* D0F58 80027A48 00621821 */  addu       $v1, $v1, $v0
/* D0F5C 80027A4C 8C640080 */  lw         $a0, 0x80($v1)
/* D0F60 80027A50 0C02962F */  jal        func_800A58BC
/* D0F64 80027A54 26100001 */   addiu     $s0, $s0, 1
/* D0F68 80027A58 2A020002 */  slti       $v0, $s0, 2
/* D0F6C 80027A5C 1440FFF7 */  bnez       $v0, .L80027A3C
/* D0F70 80027A60 00000000 */   nop
/* D0F74 80027A64 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0F78 80027A68 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0F7C 80027A6C 8C440000 */  lw         $a0, ($v0)
/* D0F80 80027A70 0C028A40 */  jal        func_800A2900
/* D0F84 80027A74 00008021 */   addu      $s0, $zero, $zero
.L80027A78:
/* D0F88 80027A78 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0F8C 80027A7C 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0F90 80027A80 00101880 */  sll        $v1, $s0, 2
/* D0F94 80027A84 00621821 */  addu       $v1, $v1, $v0
/* D0F98 80027A88 8C640004 */  lw         $a0, 4($v1)
/* D0F9C 80027A8C 0C028A40 */  jal        func_800A2900
/* D0FA0 80027A90 26100001 */   addiu     $s0, $s0, 1
/* D0FA4 80027A94 2A02001F */  slti       $v0, $s0, 0x1f
/* D0FA8 80027A98 1440FFF7 */  bnez       $v0, .L80027A78
/* D0FAC 80027A9C 00000000 */   nop
/* D0FB0 80027AA0 3C028006 */  lui        $v0, %hi(D_80067200)
/* D0FB4 80027AA4 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D0FB8 80027AA8 904200F1 */  lbu        $v0, 0xf1($v0)
/* D0FBC 80027AAC 1440008A */  bnez       $v0, .L80027CD8
/* D0FC0 80027AB0 00000000 */   nop
/* D0FC4 80027AB4 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* D0FC8 80027AB8 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* D0FCC 80027ABC 30422000 */  andi       $v0, $v0, 0x2000
/* D0FD0 80027AC0 10400080 */  beqz       $v0, .L80027CC4
/* D0FD4 80027AC4 00002021 */   addu      $a0, $zero, $zero
/* D0FD8 80027AC8 0C026962 */  jal        func_8009A588
/* D0FDC 80027ACC 24050004 */   addiu     $a1, $zero, 4
/* D0FE0 80027AD0 3C048006 */  lui        $a0, %hi(D_80067200)
/* D0FE4 80027AD4 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D0FE8 80027AD8 808300F0 */  lb         $v1, 0xf0($a0)
/* D0FEC 80027ADC 24050001 */  addiu      $a1, $zero, 1
/* D0FF0 80027AE0 1065001C */  beq        $v1, $a1, .L80027B54
/* D0FF4 80027AE4 00403021 */   addu      $a2, $v0, $zero
/* D0FF8 80027AE8 28620002 */  slti       $v0, $v1, 2
/* D0FFC 80027AEC 10400005 */  beqz       $v0, .L80027B04
/* D1000 80027AF0 24070002 */   addiu     $a3, $zero, 2
/* D1004 80027AF4 10600009 */  beqz       $v1, .L80027B1C
/* D1008 80027AF8 00061400 */   sll       $v0, $a2, 0x10
/* D100C 80027AFC 08009F09 */  j          .L80027C24
/* D1010 80027B00 00000000 */   nop
.L80027B04:
/* D1014 80027B04 10670023 */  beq        $v1, $a3, .L80027B94
/* D1018 80027B08 24020003 */   addiu     $v0, $zero, 3
/* D101C 80027B0C 10620031 */  beq        $v1, $v0, .L80027BD4
/* D1020 80027B10 00061400 */   sll       $v0, $a2, 0x10
/* D1024 80027B14 08009F09 */  j          .L80027C24
/* D1028 80027B18 00000000 */   nop
.L80027B1C:
/* D102C 80027B1C 00021C03 */  sra        $v1, $v0, 0x10
/* D1030 80027B20 14650008 */  bne        $v1, $a1, .L80027B44
/* D1034 80027B24 24020003 */   addiu     $v0, $zero, 3
/* D1038 80027B28 C48000EC */  lwc1       $f0, 0xec($a0)
/* D103C 80027B2C 3C013DCC */  lui        $at, 0x3dcc
/* D1040 80027B30 3421CCCD */  ori        $at, $at, 0xcccd
/* D1044 80027B34 44811000 */  mtc1       $at, $f2
/* D1048 80027B38 00000000 */  nop
/* D104C 80027B3C 46020000 */  add.s      $f0, $f0, $f2
/* D1050 80027B40 E48000EC */  swc1       $f0, 0xec($a0)
.L80027B44:
/* D1054 80027B44 1062002F */  beq        $v1, $v0, .L80027C04
/* D1058 80027B48 00000000 */   nop
/* D105C 80027B4C 08009F09 */  j          .L80027C24
/* D1060 80027B50 00000000 */   nop
.L80027B54:
/* D1064 80027B54 00061400 */  sll        $v0, $a2, 0x10
/* D1068 80027B58 00021C03 */  sra        $v1, $v0, 0x10
/* D106C 80027B5C 24020002 */  addiu      $v0, $zero, 2
/* D1070 80027B60 14620008 */  bne        $v1, $v0, .L80027B84
/* D1074 80027B64 00000000 */   nop
/* D1078 80027B68 C48000EC */  lwc1       $f0, 0xec($a0)
/* D107C 80027B6C 3C013DCC */  lui        $at, 0x3dcc
/* D1080 80027B70 3421CCCD */  ori        $at, $at, 0xcccd
/* D1084 80027B74 44811000 */  mtc1       $at, $f2
/* D1088 80027B78 00000000 */  nop
/* D108C 80027B7C 46020000 */  add.s      $f0, $f0, $f2
/* D1090 80027B80 E48000EC */  swc1       $f0, 0xec($a0)
.L80027B84:
/* D1094 80027B84 1060001F */  beqz       $v1, .L80027C04
/* D1098 80027B88 00000000 */   nop
/* D109C 80027B8C 08009F09 */  j          .L80027C24
/* D10A0 80027B90 00000000 */   nop
.L80027B94:
/* D10A4 80027B94 00061400 */  sll        $v0, $a2, 0x10
/* D10A8 80027B98 00021C03 */  sra        $v1, $v0, 0x10
/* D10AC 80027B9C 24020003 */  addiu      $v0, $zero, 3
/* D10B0 80027BA0 14620008 */  bne        $v1, $v0, .L80027BC4
/* D10B4 80027BA4 00000000 */   nop
/* D10B8 80027BA8 C48000EC */  lwc1       $f0, 0xec($a0)
/* D10BC 80027BAC 3C013DCC */  lui        $at, 0x3dcc
/* D10C0 80027BB0 3421CCCD */  ori        $at, $at, 0xcccd
/* D10C4 80027BB4 44811000 */  mtc1       $at, $f2
/* D10C8 80027BB8 00000000 */  nop
/* D10CC 80027BBC 46020000 */  add.s      $f0, $f0, $f2
/* D10D0 80027BC0 E48000EC */  swc1       $f0, 0xec($a0)
.L80027BC4:
/* D10D4 80027BC4 1065000F */  beq        $v1, $a1, .L80027C04
/* D10D8 80027BC8 00000000 */   nop
/* D10DC 80027BCC 08009F09 */  j          .L80027C24
/* D10E0 80027BD0 00000000 */   nop
.L80027BD4:
/* D10E4 80027BD4 00021403 */  sra        $v0, $v0, 0x10
/* D10E8 80027BD8 14400008 */  bnez       $v0, .L80027BFC
/* D10EC 80027BDC 00000000 */   nop
/* D10F0 80027BE0 C48000EC */  lwc1       $f0, 0xec($a0)
/* D10F4 80027BE4 3C013DCC */  lui        $at, 0x3dcc
/* D10F8 80027BE8 3421CCCD */  ori        $at, $at, 0xcccd
/* D10FC 80027BEC 44811000 */  mtc1       $at, $f2
/* D1100 80027BF0 00000000 */  nop
/* D1104 80027BF4 46020000 */  add.s      $f0, $f0, $f2
/* D1108 80027BF8 E48000EC */  swc1       $f0, 0xec($a0)
.L80027BFC:
/* D110C 80027BFC 14470009 */  bne        $v0, $a3, .L80027C24
/* D1110 80027C00 00000000 */   nop
.L80027C04:
/* D1114 80027C04 3C028006 */  lui        $v0, %hi(D_80067200)
/* D1118 80027C08 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D111C 80027C0C 3C013DCC */  lui        $at, 0x3dcc
/* D1120 80027C10 3421CCCD */  ori        $at, $at, 0xcccd
/* D1124 80027C14 44811000 */  mtc1       $at, $f2
/* D1128 80027C18 C44000EC */  lwc1       $f0, 0xec($v0)
/* D112C 80027C1C 46020001 */  sub.s      $f0, $f0, $f2
/* D1130 80027C20 E44000EC */  swc1       $f0, 0xec($v0)
.L80027C24:
/* D1134 80027C24 3C028006 */  lui        $v0, %hi(D_80067200)
/* D1138 80027C28 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D113C 80027C2C A04600F0 */  sb         $a2, 0xf0($v0)
/* D1140 80027C30 3C028006 */  lui        $v0, %hi(D_80067200)
/* D1144 80027C34 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D1148 80027C38 C44400EC */  lwc1       $f4, 0xec($v0)
/* D114C 80027C3C 44800000 */  mtc1       $zero, $f0
/* D1150 80027C40 00000000 */  nop
/* D1154 80027C44 4604003C */  c.lt.s     $f0, $f4
/* D1158 80027C48 00000000 */  nop
/* D115C 80027C4C 00000000 */  nop
/* D1160 80027C50 4502000A */  bc1fl      .L80027C7C
/* D1164 80027C54 46002007 */   neg.s     $f0, $f4
/* D1168 80027C58 3C0141F0 */  lui        $at, 0x41f0
/* D116C 80027C5C 44810000 */  mtc1       $at, $f0
/* D1170 80027C60 00000000 */  nop
/* D1174 80027C64 4604003C */  c.lt.s     $f0, $f4
/* D1178 80027C68 00000000 */  nop
/* D117C 80027C6C 45000017 */  bc1f       .L80027CCC
/* D1180 80027C70 00000000 */   nop
/* D1184 80027C74 08009F26 */  j          .L80027C98
/* D1188 80027C78 00000000 */   nop
.L80027C7C:
/* D118C 80027C7C 3C0141F0 */  lui        $at, 0x41f0
/* D1190 80027C80 44811000 */  mtc1       $at, $f2
/* D1194 80027C84 00000000 */  nop
/* D1198 80027C88 4600103C */  c.lt.s     $f2, $f0
/* D119C 80027C8C 00000000 */  nop
/* D11A0 80027C90 4500000C */  bc1f       .L80027CC4
/* D11A4 80027C94 00000000 */   nop
.L80027C98:
/* D11A8 80027C98 3C038006 */  lui        $v1, %hi(D_80067200)
/* D11AC 80027C9C 8C637200 */  lw         $v1, %lo(D_80067200)($v1)
/* D11B0 80027CA0 24020001 */  addiu      $v0, $zero, 1
/* D11B4 80027CA4 A06200F1 */  sb         $v0, 0xf1($v1)
/* D11B8 80027CA8 3C028015 */  lui        $v0, %hi(D_80149E28)
/* D11BC 80027CAC 90429E28 */  lbu        $v0, %lo(D_80149E28)($v0)
/* D11C0 80027CB0 00021040 */  sll        $v0, $v0, 1
/* D11C4 80027CB4 3C048006 */  lui        $a0, %hi(D_80067378)
/* D11C8 80027CB8 00822021 */  addu       $a0, $a0, $v0
/* D11CC 80027CBC 0C026DD5 */  jal        func_8009B754
/* D11D0 80027CC0 94847378 */   lhu       $a0, %lo(D_80067378)($a0)
.L80027CC4:
/* D11D4 80027CC4 3C028006 */  lui        $v0, %hi(D_80067200)
/* D11D8 80027CC8 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
.L80027CCC:
/* D11DC 80027CCC 904200F1 */  lbu        $v0, 0xf1($v0)
/* D11E0 80027CD0 1040001D */  beqz       $v0, .L80027D48
/* D11E4 80027CD4 00000000 */   nop
.L80027CD8:
/* D11E8 80027CD8 3C028006 */  lui        $v0, %hi(D_80067200)
/* D11EC 80027CDC 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D11F0 80027CE0 3C014040 */  lui        $at, 0x4040
/* D11F4 80027CE4 44810000 */  mtc1       $at, $f0
/* D11F8 80027CE8 C44200EC */  lwc1       $f2, 0xec($v0)
/* D11FC 80027CEC 4602003C */  c.lt.s     $f0, $f2
/* D1200 80027CF0 00000000 */  nop
/* D1204 80027CF4 45000007 */  bc1f       .L80027D14
/* D1208 80027CF8 00000000 */   nop
/* D120C 80027CFC 3C013ECC */  lui        $at, 0x3ecc
/* D1210 80027D00 3421CCCD */  ori        $at, $at, 0xcccd
/* D1214 80027D04 44810000 */  mtc1       $at, $f0
/* D1218 80027D08 00000000 */  nop
/* D121C 80027D0C 08009F51 */  j          .L80027D44
/* D1220 80027D10 46001001 */   sub.s     $f0, $f2, $f0
.L80027D14:
/* D1224 80027D14 3C01C040 */  lui        $at, 0xc040
/* D1228 80027D18 44810000 */  mtc1       $at, $f0
/* D122C 80027D1C 00000000 */  nop
/* D1230 80027D20 4600103C */  c.lt.s     $f2, $f0
/* D1234 80027D24 00000000 */  nop
/* D1238 80027D28 45000007 */  bc1f       .L80027D48
/* D123C 80027D2C 00000000 */   nop
/* D1240 80027D30 3C013ECC */  lui        $at, 0x3ecc
/* D1244 80027D34 3421CCCD */  ori        $at, $at, 0xcccd
/* D1248 80027D38 44810000 */  mtc1       $at, $f0
/* D124C 80027D3C 00000000 */  nop
/* D1250 80027D40 46001000 */  add.s      $f0, $f2, $f0
.L80027D44:
/* D1254 80027D44 E44000EC */  swc1       $f0, 0xec($v0)
.L80027D48:
/* D1258 80027D48 3C028006 */  lui        $v0, %hi(D_80067200)
/* D125C 80027D4C 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D1260 80027D50 3C0141F0 */  lui        $at, 0x41f0
/* D1264 80027D54 44811000 */  mtc1       $at, $f2
/* D1268 80027D58 C44000EC */  lwc1       $f0, 0xec($v0)
/* D126C 80027D5C 4600103C */  c.lt.s     $f2, $f0
/* D1270 80027D60 00000000 */  nop
/* D1274 80027D64 00000000 */  nop
/* D1278 80027D68 45030009 */  bc1tl      .L80027D90
/* D127C 80027D6C E44200EC */   swc1      $f2, 0xec($v0)
/* D1280 80027D70 3C01C1F0 */  lui        $at, 0xc1f0
/* D1284 80027D74 44811000 */  mtc1       $at, $f2
/* D1288 80027D78 00000000 */  nop
/* D128C 80027D7C 4602003C */  c.lt.s     $f0, $f2
/* D1290 80027D80 00000000 */  nop
/* D1294 80027D84 00000000 */  nop
/* D1298 80027D88 45030001 */  bc1tl      .L80027D90
/* D129C 80027D8C E44200EC */   swc1      $f2, 0xec($v0)
.L80027D90:
/* D12A0 80027D90 3C048006 */  lui        $a0, %hi(D_80067200)
/* D12A4 80027D94 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D12A8 80027D98 3C013CA3 */  lui        $at, 0x3ca3
/* D12AC 80027D9C 3421D70A */  ori        $at, $at, 0xd70a
/* D12B0 80027DA0 44810000 */  mtc1       $at, $f0
/* D12B4 80027DA4 4480A000 */  mtc1       $zero, $f20
/* D12B8 80027DA8 00000000 */  nop
/* D12BC 80027DAC E7B40014 */  swc1       $f20, 0x14($sp)
/* D12C0 80027DB0 E7B40018 */  swc1       $f20, 0x18($sp)
/* D12C4 80027DB4 E7B4001C */  swc1       $f20, 0x1c($sp)
/* D12C8 80027DB8 E7A00010 */  swc1       $f0, 0x10($sp)
/* D12CC 80027DBC 8C8600E8 */  lw         $a2, 0xe8($a0)
/* D12D0 80027DC0 4405A000 */  mfc1       $a1, $f20
/* D12D4 80027DC4 4407A000 */  mfc1       $a3, $f20
/* D12D8 80027DC8 00000000 */  nop
/* D12DC 80027DCC 0C02FD0E */  jal        func_800BF438
/* D12E0 80027DD0 24840098 */   addiu     $a0, $a0, 0x98
/* D12E4 80027DD4 3C028015 */  lui        $v0, %hi(gDisplayListHead)
/* D12E8 80027DD8 8C429F94 */  lw         $v0, %lo(gDisplayListHead)($v0)
/* D12EC 80027DDC 3C048006 */  lui        $a0, %hi(D_80067200)
/* D12F0 80027DE0 8C847200 */  lw         $a0, %lo(D_80067200)($a0)
/* D12F4 80027DE4 3C03DA38 */  lui        $v1, 0xda38
/* D12F8 80027DE8 34630003 */  ori        $v1, $v1, 3
/* D12FC 80027DEC 24850098 */  addiu      $a1, $a0, 0x98
/* D1300 80027DF0 AC430000 */  sw         $v1, ($v0)
/* D1304 80027DF4 AC450004 */  sw         $a1, 4($v0)
/* D1308 80027DF8 8C840088 */  lw         $a0, 0x88($a0)
/* D130C 80027DFC 24420008 */  addiu      $v0, $v0, 8
/* D1310 80027E00 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D1314 80027E04 0C027F67 */  jal        func_8009FD9C
/* D1318 80027E08 AC229F94 */   sw        $v0, %lo(gDisplayListHead)($at)
/* D131C 80027E0C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D1320 80027E10 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D1324 80027E14 0C027A93 */  jal        func_8009EA4C
/* D1328 80027E18 8C44008C */   lw        $a0, 0x8c($v0)
/* D132C 80027E1C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D1330 80027E20 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D1334 80027E24 0C027CED */  jal        func_8009F3B4
/* D1338 80027E28 8C440090 */   lw        $a0, 0x90($v0)
/* D133C 80027E2C 3C028006 */  lui        $v0, %hi(D_80067200)
/* D1340 80027E30 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D1344 80027E34 8C440088 */  lw         $a0, 0x88($v0)
/* D1348 80027E38 0C027F77 */  jal        func_8009FDDC
/* D134C 80027E3C 8C45008C */   lw        $a1, 0x8c($v0)
/* D1350 80027E40 3C028006 */  lui        $v0, %hi(D_80067200)
/* D1354 80027E44 8C427200 */  lw         $v0, %lo(D_80067200)($v0)
/* D1358 80027E48 C44200E8 */  lwc1       $f2, 0xe8($v0)
/* D135C 80027E4C C44000EC */  lwc1       $f0, 0xec($v0)
/* D1360 80027E50 46001000 */  add.s      $f0, $f2, $f0
/* D1364 80027E54 3C0143B4 */  lui        $at, 0x43b4
/* D1368 80027E58 44811000 */  mtc1       $at, $f2
/* D136C 80027E5C 00000000 */  nop
/* D1370 80027E60 4600103E */  c.le.s     $f2, $f0
/* D1374 80027E64 00000000 */  nop
/* D1378 80027E68 00000000 */  nop
/* D137C 80027E6C 45000003 */  bc1f       .L80027E7C
/* D1380 80027E70 E44000E8 */   swc1      $f0, 0xe8($v0)
/* D1384 80027E74 08009FA4 */  j          .L80027E90
/* D1388 80027E78 46020001 */   sub.s     $f0, $f0, $f2
.L80027E7C:
/* D138C 80027E7C 4614003C */  c.lt.s     $f0, $f20
/* D1390 80027E80 00000000 */  nop
/* D1394 80027E84 45000003 */  bc1f       .L80027E94
/* D1398 80027E88 00000000 */   nop
/* D139C 80027E8C 46020000 */  add.s      $f0, $f0, $f2
.L80027E90:
/* D13A0 80027E90 E44000E8 */  swc1       $f0, 0xe8($v0)
.L80027E94:
/* D13A4 80027E94 8FBF005C */  lw         $ra, 0x5c($sp)
/* D13A8 80027E98 8FB20058 */  lw         $s2, 0x58($sp)
/* D13AC 80027E9C 8FB10054 */  lw         $s1, 0x54($sp)
/* D13B0 80027EA0 8FB00050 */  lw         $s0, 0x50($sp)
/* D13B4 80027EA4 D7B40060 */  ldc1       $f20, 0x60($sp)
/* D13B8 80027EA8 03E00008 */  jr         $ra
/* D13BC 80027EAC 27BD0068 */   addiu     $sp, $sp, 0x68

glabel func_80027EB0_D13C0
/* D13C0 80027EB0 3C028006 */  lui        $v0, %hi(D_80067380)
/* D13C4 80027EB4 8C427380 */  lw         $v0, %lo(D_80067380)($v0)
/* D13C8 80027EB8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D13CC 80027EBC 14400005 */  bnez       $v0, .L80027ED4
/* D13D0 80027EC0 AFBF0010 */   sw        $ra, 0x10($sp)
/* D13D4 80027EC4 0C009FC2 */  jal        func_80027F08_D1418
/* D13D8 80027EC8 00000000 */   nop
/* D13DC 80027ECC 08009FBF */  j          .L80027EFC
/* D13E0 80027ED0 00001021 */   addu      $v0, $zero, $zero
.L80027ED4:
/* D13E4 80027ED4 84420004 */  lh         $v0, 4($v0)
/* D13E8 80027ED8 18400005 */  blez       $v0, .L80027EF0
/* D13EC 80027EDC 00000000 */   nop
/* D13F0 80027EE0 0C00A003 */  jal        func_8002800C_D151C
/* D13F4 80027EE4 00000000 */   nop
/* D13F8 80027EE8 08009FBF */  j          .L80027EFC
/* D13FC 80027EEC 00001021 */   addu      $v0, $zero, $zero
.L80027EF0:
/* D1400 80027EF0 0C009FF1 */  jal        func_80027FC4_D14D4
/* D1404 80027EF4 00000000 */   nop
/* D1408 80027EF8 24020001 */  addiu      $v0, $zero, 1
.L80027EFC:
/* D140C 80027EFC 8FBF0010 */  lw         $ra, 0x10($sp)
/* D1410 80027F00 03E00008 */  jr         $ra
/* D1414 80027F04 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80027F08_D1418
/* D1418 80027F08 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D141C 80027F0C AFB00010 */  sw         $s0, 0x10($sp)
/* D1420 80027F10 3C108017 */  lui        $s0, %hi(D_801765B8)
/* D1424 80027F14 8E1065B8 */  lw         $s0, %lo(D_801765B8)($s0)
/* D1428 80027F18 AFBF0014 */  sw         $ra, 0x14($sp)
/* D142C 80027F1C 0C02A4CC */  jal        func_800A9330
/* D1430 80027F20 00000000 */   nop
/* D1434 80027F24 0C026449 */  jal        func_80099124
/* D1438 80027F28 24040002 */   addiu     $a0, $zero, 2
/* D143C 80027F2C 0C02A5AF */  jal        func_800A96BC
/* D1440 80027F30 24040001 */   addiu     $a0, $zero, 1
/* D1444 80027F34 0C032663 */  jal        func_800C998C
/* D1448 80027F38 24040008 */   addiu     $a0, $zero, 8
/* D144C 80027F3C 00402021 */  addu       $a0, $v0, $zero
/* D1450 80027F40 3C018006 */  lui        $at, %hi(D_80067380)
/* D1454 80027F44 AC247380 */  sw         $a0, %lo(D_80067380)($at)
/* D1458 80027F48 0C030134 */  jal        bzero
/* D145C 80027F4C 24050008 */   addiu     $a1, $zero, 8
/* D1460 80027F50 2A02000F */  slti       $v0, $s0, 0xf
/* D1464 80027F54 14400003 */  bnez       $v0, .L80027F64
/* D1468 80027F58 00000000 */   nop
/* D146C 80027F5C 08009FDB */  j          .L80027F6C
/* D1470 80027F60 2410000E */   addiu     $s0, $zero, 0xe
.L80027F64:
/* D1474 80027F64 5A000001 */  blezl      $s0, .L80027F6C
/* D1478 80027F68 24100001 */   addiu     $s0, $zero, 1
.L80027F6C:
/* D147C 80027F6C 26040065 */  addiu      $a0, $s0, 0x65
/* D1480 80027F70 3084FFFF */  andi       $a0, $a0, 0xffff
/* D1484 80027F74 24050002 */  addiu      $a1, $zero, 2
/* D1488 80027F78 0C028CB7 */  jal        func_800A32DC
/* D148C 80027F7C 00003021 */   addu      $a2, $zero, $zero
/* D1490 80027F80 00402021 */  addu       $a0, $v0, $zero
/* D1494 80027F84 3C028006 */  lui        $v0, %hi(D_80067380)
/* D1498 80027F88 8C427380 */  lw         $v0, %lo(D_80067380)($v0)
/* D149C 80027F8C 24050280 */  addiu      $a1, $zero, 0x280
/* D14A0 80027F90 240601E0 */  addiu      $a2, $zero, 0x1e0
/* D14A4 80027F94 0C028D89 */  jal        func_800A3624
/* D14A8 80027F98 AC440000 */   sw        $a0, ($v0)
/* D14AC 80027F9C 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D14B0 80027FA0 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D14B4 80027FA4 3C038006 */  lui        $v1, %hi(D_80067380)
/* D14B8 80027FA8 8C637380 */  lw         $v1, %lo(D_80067380)($v1)
/* D14BC 80027FAC 00021040 */  sll        $v0, $v0, 1
/* D14C0 80027FB0 A4620004 */  sh         $v0, 4($v1)
/* D14C4 80027FB4 8FBF0014 */  lw         $ra, 0x14($sp)
/* D14C8 80027FB8 8FB00010 */  lw         $s0, 0x10($sp)
/* D14CC 80027FBC 03E00008 */  jr         $ra
/* D14D0 80027FC0 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80027FC4_D14D4
/* D14D4 80027FC4 3C028006 */  lui        $v0, %hi(D_80067380)
/* D14D8 80027FC8 8C427380 */  lw         $v0, %lo(D_80067380)($v0)
/* D14DC 80027FCC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D14E0 80027FD0 AFBF0010 */  sw         $ra, 0x10($sp)
/* D14E4 80027FD4 0C028D30 */  jal        func_800A34C0
/* D14E8 80027FD8 8C440000 */   lw        $a0, ($v0)
/* D14EC 80027FDC 3C048006 */  lui        $a0, %hi(D_80067380)
/* D14F0 80027FE0 0C0326A1 */  jal        func_800C9A84
/* D14F4 80027FE4 8C847380 */   lw        $a0, %lo(D_80067380)($a0)
/* D14F8 80027FE8 3C018006 */  lui        $at, %hi(D_80067380)
/* D14FC 80027FEC AC207380 */  sw         $zero, %lo(D_80067380)($at)
/* D1500 80027FF0 0C026449 */  jal        func_80099124
/* D1504 80027FF4 24040002 */   addiu     $a0, $zero, 2
/* D1508 80027FF8 0C02DB14 */  jal        func_800B6C50
/* D150C 80027FFC 00002021 */   addu      $a0, $zero, $zero
/* D1510 80028000 8FBF0010 */  lw         $ra, 0x10($sp)
/* D1514 80028004 03E00008 */  jr         $ra
/* D1518 80028008 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002800C_D151C
/* D151C 8002800C 3C028006 */  lui        $v0, %hi(D_80067380)
/* D1520 80028010 8C427380 */  lw         $v0, %lo(D_80067380)($v0)
/* D1524 80028014 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D1528 80028018 AFBF0018 */  sw         $ra, 0x18($sp)
/* D152C 8002801C 0C028A40 */  jal        func_800A2900
/* D1530 80028020 8C440000 */   lw        $a0, ($v0)
/* D1534 80028024 3C018007 */  lui        $at, %hi(D_80069B10)
/* D1538 80028028 D4209B10 */  ldc1       $f0, %lo(D_80069B10)($at)
/* D153C 8002802C 3C018017 */  lui        $at, %hi(D_8016D168)
/* D1540 80028030 C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* D1544 80028034 468010A1 */  cvt.d.w    $f2, $f2
/* D1548 80028038 46201082 */  mul.d      $f2, $f2, $f0
/* D154C 8002803C 3C038006 */  lui        $v1, %hi(D_80067380)
/* D1550 80028040 8C637380 */  lw         $v1, %lo(D_80067380)($v1)
/* D1554 80028044 84620004 */  lh         $v0, 4($v1)
/* D1558 80028048 44820000 */  mtc1       $v0, $f0
/* D155C 8002804C 00000000 */  nop
/* D1560 80028050 46800021 */  cvt.d.w    $f0, $f0
/* D1564 80028054 4622003C */  c.lt.d     $f0, $f2
/* D1568 80028058 00000000 */  nop
/* D156C 8002805C 45000006 */  bc1f       .L80028078
/* D1570 80028060 00000000 */   nop
/* D1574 80028064 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D1578 80028068 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D157C 8002806C 30421000 */  andi       $v0, $v0, 0x1000
/* D1580 80028070 54400001 */  bnezl      $v0, .L80028078
/* D1584 80028074 A4600004 */   sh        $zero, 4($v1)
.L80028078:
/* D1588 80028078 3C048006 */  lui        $a0, %hi(D_80067380)
/* D158C 8002807C 8C847380 */  lw         $a0, %lo(D_80067380)($a0)
/* D1590 80028080 84820004 */  lh         $v0, 4($a0)
/* D1594 80028084 10400004 */  beqz       $v0, .L80028098
/* D1598 80028088 00401821 */   addu      $v1, $v0, $zero
/* D159C 8002808C 2462FFFF */  addiu      $v0, $v1, -1
/* D15A0 80028090 0800A028 */  j          .L800280A0
/* D15A4 80028094 A4820004 */   sh        $v0, 4($a0)
.L80028098:
/* D15A8 80028098 0C02A5C1 */  jal        func_800A9704
/* D15AC 8002809C 24040001 */   addiu     $a0, $zero, 1
.L800280A0:
/* D15B0 800280A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* D15B4 800280A4 03E00008 */  jr         $ra
/* D15B8 800280A8 27BD0020 */   addiu     $sp, $sp, 0x20
/* D15BC 800280AC 00000000 */  nop