.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_8002C2C0_D57D0
/* D57D0 8002C2C0 3C028006 */  lui        $v0, %hi(D_80067710)
/* D57D4 8002C2C4 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D57D8 8002C2C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D57DC 8002C2CC 14400005 */  bnez       $v0, .L8002C2E4
/* D57E0 8002C2D0 AFBF0010 */   sw        $ra, 0x10($sp)
/* D57E4 8002C2D4 0C00B0C7 */  jal        func_8002C31C_D582C
/* D57E8 8002C2D8 00000000 */   nop
/* D57EC 8002C2DC 0800B0C4 */  j          .L8002C310
/* D57F0 8002C2E0 00001021 */   addu      $v0, $zero, $zero
.L8002C2E4:
/* D57F4 8002C2E4 904301E8 */  lbu        $v1, 0x1e8($v0)
/* D57F8 8002C2E8 24020003 */  addiu      $v0, $zero, 3
/* D57FC 8002C2EC 10620005 */  beq        $v1, $v0, .L8002C304
/* D5800 8002C2F0 00000000 */   nop
/* D5804 8002C2F4 0C00B217 */  jal        func_8002C85C_D5D6C
/* D5808 8002C2F8 00000000 */   nop
/* D580C 8002C2FC 0800B0C4 */  j          .L8002C310
/* D5810 8002C300 00001021 */   addu      $v0, $zero, $zero
.L8002C304:
/* D5814 8002C304 0C00B1CC */  jal        func_8002C730_D5C40
/* D5818 8002C308 00000000 */   nop
/* D581C 8002C30C 24020001 */  addiu      $v0, $zero, 1
.L8002C310:
/* D5820 8002C310 8FBF0010 */  lw         $ra, 0x10($sp)
/* D5824 8002C314 03E00008 */  jr         $ra
/* D5828 8002C318 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002C31C_D582C
/* D582C 8002C31C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D5830 8002C320 24040002 */  addiu      $a0, $zero, 2
/* D5834 8002C324 AFBF0018 */  sw         $ra, 0x18($sp)
/* D5838 8002C328 AFB10014 */  sw         $s1, 0x14($sp)
/* D583C 8002C32C 0C026449 */  jal        func_80099124
/* D5840 8002C330 AFB00010 */   sw        $s0, 0x10($sp)
/* D5844 8002C334 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D5848 8002C338 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D584C 8002C33C 3C118006 */  lui        $s1, %hi(D_80067714)
/* D5850 8002C340 26317714 */  addiu      $s1, $s1, %lo(D_80067714)
/* D5854 8002C344 0C02A5AF */  jal        func_800A96BC
/* D5858 8002C348 00008021 */   addu      $s0, $zero, $zero
/* D585C 8002C34C 0C026DD5 */  jal        func_8009B754
/* D5860 8002C350 24040082 */   addiu     $a0, $zero, 0x82
/* D5864 8002C354 0C032663 */  jal        func_800C998C
/* D5868 8002C358 24040210 */   addiu     $a0, $zero, 0x210
/* D586C 8002C35C 00402021 */  addu       $a0, $v0, $zero
/* D5870 8002C360 3C018006 */  lui        $at, %hi(D_80067710)
/* D5874 8002C364 AC247710 */  sw         $a0, %lo(D_80067710)($at)
/* D5878 8002C368 0C030134 */  jal        bzero
/* D587C 8002C36C 24050210 */   addiu     $a1, $zero, 0x210
.L8002C370:
/* D5880 8002C370 86240000 */  lh         $a0, ($s1)
/* D5884 8002C374 00002821 */  addu       $a1, $zero, $zero
/* D5888 8002C378 0C027DAC */  jal        func_8009F6B0
/* D588C 8002C37C 00003021 */   addu      $a2, $zero, $zero
/* D5890 8002C380 3C048006 */  lui        $a0, %hi(D_80067710)
/* D5894 8002C384 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D5898 8002C388 00101880 */  sll        $v1, $s0, 2
/* D589C 8002C38C 00641821 */  addu       $v1, $v1, $a0
/* D58A0 8002C390 AC620000 */  sw         $v0, ($v1)
/* D58A4 8002C394 90430066 */  lbu        $v1, 0x66($v0)
/* D58A8 8002C398 26100001 */  addiu      $s0, $s0, 1
/* D58AC 8002C39C 34630003 */  ori        $v1, $v1, 3
/* D58B0 8002C3A0 A0430066 */  sb         $v1, 0x66($v0)
/* D58B4 8002C3A4 2A020003 */  slti       $v0, $s0, 3
/* D58B8 8002C3A8 1440FFF1 */  bnez       $v0, .L8002C370
/* D58BC 8002C3AC 26310002 */   addiu     $s1, $s1, 2
/* D58C0 8002C3B0 24040590 */  addiu      $a0, $zero, 0x590
/* D58C4 8002C3B4 24050005 */  addiu      $a1, $zero, 5
/* D58C8 8002C3B8 0C028CB7 */  jal        func_800A32DC
/* D58CC 8002C3BC 00003021 */   addu      $a2, $zero, $zero
/* D58D0 8002C3C0 24040560 */  addiu      $a0, $zero, 0x560
/* D58D4 8002C3C4 3C038006 */  lui        $v1, %hi(D_80067710)
/* D58D8 8002C3C8 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D58DC 8002C3CC 00002821 */  addu       $a1, $zero, $zero
/* D58E0 8002C3D0 00003021 */  addu       $a2, $zero, $zero
/* D58E4 8002C3D4 0C028CB7 */  jal        func_800A32DC
/* D58E8 8002C3D8 AC620190 */   sw        $v0, 0x190($v1)
/* D58EC 8002C3DC 24040560 */  addiu      $a0, $zero, 0x560
/* D58F0 8002C3E0 3C038006 */  lui        $v1, %hi(D_80067710)
/* D58F4 8002C3E4 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D58F8 8002C3E8 24050001 */  addiu      $a1, $zero, 1
/* D58FC 8002C3EC 00003021 */  addu       $a2, $zero, $zero
/* D5900 8002C3F0 0C028CB7 */  jal        func_800A32DC
/* D5904 8002C3F4 AC620194 */   sw        $v0, 0x194($v1)
/* D5908 8002C3F8 24040556 */  addiu      $a0, $zero, 0x556
/* D590C 8002C3FC 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5910 8002C400 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5914 8002C404 24050001 */  addiu      $a1, $zero, 1
/* D5918 8002C408 00003021 */  addu       $a2, $zero, $zero
/* D591C 8002C40C 0C028CB7 */  jal        func_800A32DC
/* D5920 8002C410 AC620198 */   sw        $v0, 0x198($v1)
/* D5924 8002C414 24040556 */  addiu      $a0, $zero, 0x556
/* D5928 8002C418 3C038006 */  lui        $v1, %hi(D_80067710)
/* D592C 8002C41C 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5930 8002C420 00002821 */  addu       $a1, $zero, $zero
/* D5934 8002C424 00003021 */  addu       $a2, $zero, $zero
/* D5938 8002C428 0C028CB7 */  jal        func_800A32DC
/* D593C 8002C42C AC62019C */   sw        $v0, 0x19c($v1)
/* D5940 8002C430 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5944 8002C434 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5948 8002C438 8C640190 */  lw         $a0, 0x190($v1)
/* D594C 8002C43C 24050040 */  addiu      $a1, $zero, 0x40
/* D5950 8002C440 24060040 */  addiu      $a2, $zero, 0x40
/* D5954 8002C444 0C028D89 */  jal        func_800A3624
/* D5958 8002C448 AC6201A0 */   sw        $v0, 0x1a0($v1)
/* D595C 8002C44C 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5960 8002C450 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5964 8002C454 8C440194 */  lw         $a0, 0x194($v0)
/* D5968 8002C458 24050270 */  addiu      $a1, $zero, 0x270
/* D596C 8002C45C 0C028D89 */  jal        func_800A3624
/* D5970 8002C460 240600D4 */   addiu     $a2, $zero, 0xd4
/* D5974 8002C464 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5978 8002C468 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D597C 8002C46C 8C440198 */  lw         $a0, 0x198($v0)
/* D5980 8002C470 24050270 */  addiu      $a1, $zero, 0x270
/* D5984 8002C474 0C028D89 */  jal        func_800A3624
/* D5988 8002C478 24060234 */   addiu     $a2, $zero, 0x234
/* D598C 8002C47C 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5990 8002C480 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5994 8002C484 8C44019C */  lw         $a0, 0x19c($v0)
/* D5998 8002C488 240500D8 */  addiu      $a1, $zero, 0xd8
/* D599C 8002C48C 0C028D89 */  jal        func_800A3624
/* D59A0 8002C490 24060184 */   addiu     $a2, $zero, 0x184
/* D59A4 8002C494 3C028006 */  lui        $v0, %hi(D_80067710)
/* D59A8 8002C498 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D59AC 8002C49C 8C4401A0 */  lw         $a0, 0x1a0($v0)
/* D59B0 8002C4A0 240503E8 */  addiu      $a1, $zero, 0x3e8
/* D59B4 8002C4A4 0C028D89 */  jal        func_800A3624
/* D59B8 8002C4A8 24060184 */   addiu     $a2, $zero, 0x184
/* D59BC 8002C4AC 3C048006 */  lui        $a0, %hi(D_80067710)
/* D59C0 8002C4B0 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D59C4 8002C4B4 8C830190 */  lw         $v1, 0x190($a0)
/* D59C8 8002C4B8 9462001E */  lhu        $v0, 0x1e($v1)
/* D59CC 8002C4BC 34420100 */  ori        $v0, $v0, 0x100
/* D59D0 8002C4C0 A462001E */  sh         $v0, 0x1e($v1)
/* D59D4 8002C4C4 8C820198 */  lw         $v0, 0x198($a0)
/* D59D8 8002C4C8 8C430000 */  lw         $v1, ($v0)
/* D59DC 8002C4CC 24020010 */  addiu      $v0, $zero, 0x10
/* D59E0 8002C4D0 A062002F */  sb         $v0, 0x2f($v1)
/* D59E4 8002C4D4 3C028006 */  lui        $v0, %hi(D_80067710)
/* D59E8 8002C4D8 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D59EC 8002C4DC 8C42019C */  lw         $v0, 0x19c($v0)
/* D59F0 8002C4E0 8C430000 */  lw         $v1, ($v0)
/* D59F4 8002C4E4 24020001 */  addiu      $v0, $zero, 1
/* D59F8 8002C4E8 A062002F */  sb         $v0, 0x2f($v1)
/* D59FC 8002C4EC 3C048006 */  lui        $a0, %hi(D_80067710)
/* D5A00 8002C4F0 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D5A04 8002C4F4 8C830194 */  lw         $v1, 0x194($a0)
/* D5A08 8002C4F8 9462001E */  lhu        $v0, 0x1e($v1)
/* D5A0C 8002C4FC 34420400 */  ori        $v0, $v0, 0x400
/* D5A10 8002C500 A462001E */  sh         $v0, 0x1e($v1)
/* D5A14 8002C504 8C830198 */  lw         $v1, 0x198($a0)
/* D5A18 8002C508 9462001E */  lhu        $v0, 0x1e($v1)
/* D5A1C 8002C50C 34420400 */  ori        $v0, $v0, 0x400
/* D5A20 8002C510 A462001E */  sh         $v0, 0x1e($v1)
/* D5A24 8002C514 8C83019C */  lw         $v1, 0x19c($a0)
/* D5A28 8002C518 9462001E */  lhu        $v0, 0x1e($v1)
/* D5A2C 8002C51C 34420400 */  ori        $v0, $v0, 0x400
/* D5A30 8002C520 A462001E */  sh         $v0, 0x1e($v1)
/* D5A34 8002C524 8C8301A0 */  lw         $v1, 0x1a0($a0)
/* D5A38 8002C528 9462001E */  lhu        $v0, 0x1e($v1)
/* D5A3C 8002C52C 00008021 */  addu       $s0, $zero, $zero
/* D5A40 8002C530 34420400 */  ori        $v0, $v0, 0x400
/* D5A44 8002C534 A462001E */  sh         $v0, 0x1e($v1)
.L8002C538:
/* D5A48 8002C538 3C04001E */  lui        $a0, 0x1e
/* D5A4C 8002C53C 24849000 */  addiu      $a0, $a0, -0x7000
/* D5A50 8002C540 3C05800D */  lui        $a1, %hi(D_800D6AD0)
/* D5A54 8002C544 24A56AD0 */  addiu      $a1, $a1, %lo(D_800D6AD0)
/* D5A58 8002C548 26060586 */  addiu      $a2, $s0, 0x586
/* D5A5C 8002C54C 0C02648E */  jal        func_80099238
/* D5A60 8002C550 00003821 */   addu      $a3, $zero, $zero
/* D5A64 8002C554 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5A68 8002C558 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5A6C 8002C55C 00102080 */  sll        $a0, $s0, 2
/* D5A70 8002C560 26100001 */  addiu      $s0, $s0, 1
/* D5A74 8002C564 00832021 */  addu       $a0, $a0, $v1
/* D5A78 8002C568 AC8201A4 */  sw         $v0, 0x1a4($a0)
/* D5A7C 8002C56C 2A02000A */  slti       $v0, $s0, 0xa
/* D5A80 8002C570 1440FFF1 */  bnez       $v0, .L8002C538
/* D5A84 8002C574 240403B2 */   addiu     $a0, $zero, 0x3b2
/* D5A88 8002C578 0C0298D4 */  jal        func_800A6350
/* D5A8C 8002C57C 00002821 */   addu      $a1, $zero, $zero
/* D5A90 8002C580 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5A94 8002C584 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5A98 8002C588 240403A2 */  addiu      $a0, $zero, 0x3a2
/* D5A9C 8002C58C 00002821 */  addu       $a1, $zero, $zero
/* D5AA0 8002C590 0C0298D4 */  jal        func_800A6350
/* D5AA4 8002C594 AC6201CC */   sw        $v0, 0x1cc($v1)
/* D5AA8 8002C598 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5AAC 8002C59C 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5AB0 8002C5A0 240403A5 */  addiu      $a0, $zero, 0x3a5
/* D5AB4 8002C5A4 00002821 */  addu       $a1, $zero, $zero
/* D5AB8 8002C5A8 0C0298D4 */  jal        func_800A6350
/* D5ABC 8002C5AC AC6201D0 */   sw        $v0, 0x1d0($v1)
/* D5AC0 8002C5B0 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5AC4 8002C5B4 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5AC8 8002C5B8 8C6501D0 */  lw         $a1, 0x1d0($v1)
/* D5ACC 8002C5BC 8C640194 */  lw         $a0, 0x194($v1)
/* D5AD0 8002C5C0 AC6201D4 */  sw         $v0, 0x1d4($v1)
/* D5AD4 8002C5C4 8C840014 */  lw         $a0, 0x14($a0)
/* D5AD8 8002C5C8 24060010 */  addiu      $a2, $zero, 0x10
/* D5ADC 8002C5CC 0C02994E */  jal        func_800A6538
/* D5AE0 8002C5D0 2407000C */   addiu     $a3, $zero, 0xc
/* D5AE4 8002C5D4 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5AE8 8002C5D8 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5AEC 8002C5DC 8C6501D0 */  lw         $a1, 0x1d0($v1)
/* D5AF0 8002C5E0 8C640198 */  lw         $a0, 0x198($v1)
/* D5AF4 8002C5E4 AC6201D8 */  sw         $v0, 0x1d8($v1)
/* D5AF8 8002C5E8 8C840014 */  lw         $a0, 0x14($a0)
/* D5AFC 8002C5EC 24060010 */  addiu      $a2, $zero, 0x10
/* D5B00 8002C5F0 0C02994E */  jal        func_800A6538
/* D5B04 8002C5F4 2407000F */   addiu     $a3, $zero, 0xf
/* D5B08 8002C5F8 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5B0C 8002C5FC 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5B10 8002C600 8C6501D0 */  lw         $a1, 0x1d0($v1)
/* D5B14 8002C604 8C64019C */  lw         $a0, 0x19c($v1)
/* D5B18 8002C608 AC6201DC */  sw         $v0, 0x1dc($v1)
/* D5B1C 8002C60C 8C840014 */  lw         $a0, 0x14($a0)
/* D5B20 8002C610 24060010 */  addiu      $a2, $zero, 0x10
/* D5B24 8002C614 0C02994E */  jal        func_800A6538
/* D5B28 8002C618 24070012 */   addiu     $a3, $zero, 0x12
/* D5B2C 8002C61C 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5B30 8002C620 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5B34 8002C624 8C6501D0 */  lw         $a1, 0x1d0($v1)
/* D5B38 8002C628 8C6401A0 */  lw         $a0, 0x1a0($v1)
/* D5B3C 8002C62C AC6201E0 */  sw         $v0, 0x1e0($v1)
/* D5B40 8002C630 8C840014 */  lw         $a0, 0x14($a0)
/* D5B44 8002C634 24060010 */  addiu      $a2, $zero, 0x10
/* D5B48 8002C638 0C02994E */  jal        func_800A6538
/* D5B4C 8002C63C 24070015 */   addiu     $a3, $zero, 0x15
/* D5B50 8002C640 3C058006 */  lui        $a1, %hi(D_80067710)
/* D5B54 8002C644 8CA57710 */  lw         $a1, %lo(D_80067710)($a1)
/* D5B58 8002C648 A0A001E8 */  sb         $zero, 0x1e8($a1)
/* D5B5C 8002C64C 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5B60 8002C650 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5B64 8002C654 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D5B68 8002C658 8C84D168 */  lw         $a0, %lo(D_8016D168)($a0)
/* D5B6C 8002C65C 00008021 */  addu       $s0, $zero, $zero
/* D5B70 8002C660 ACA201E4 */  sw         $v0, 0x1e4($a1)
/* D5B74 8002C664 A46401EA */  sh         $a0, 0x1ea($v1)
/* D5B78 8002C668 AC6001F8 */  sw         $zero, 0x1f8($v1)
/* D5B7C 8002C66C A06001EC */  sb         $zero, 0x1ec($v1)
.L8002C670:
/* D5B80 8002C670 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5B84 8002C674 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5B88 8002C678 00501021 */  addu       $v0, $v0, $s0
/* D5B8C 8002C67C 26100001 */  addiu      $s0, $s0, 1
/* D5B90 8002C680 A04001ED */  sb         $zero, 0x1ed($v0)
/* D5B94 8002C684 2A020004 */  slti       $v0, $s0, 4
/* D5B98 8002C688 1440FFF9 */  bnez       $v0, .L8002C670
/* D5B9C 8002C68C 00000000 */   nop
/* D5BA0 8002C690 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5BA4 8002C694 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5BA8 8002C698 24100002 */  addiu      $s0, $zero, 2
/* D5BAC 8002C69C 24420004 */  addiu      $v0, $v0, 4
.L8002C6A0:
/* D5BB0 8002C6A0 A44001F2 */  sh         $zero, 0x1f2($v0)
/* D5BB4 8002C6A4 2610FFFF */  addiu      $s0, $s0, -1
/* D5BB8 8002C6A8 0601FFFD */  bgez       $s0, .L8002C6A0
/* D5BBC 8002C6AC 2442FFFE */   addiu     $v0, $v0, -2
/* D5BC0 8002C6B0 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5BC4 8002C6B4 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5BC8 8002C6B8 3C01C240 */  lui        $at, 0xc240
/* D5BCC 8002C6BC 44810000 */  mtc1       $at, $f0
/* D5BD0 8002C6C0 3C01C1F8 */  lui        $at, 0xc1f8
/* D5BD4 8002C6C4 44811000 */  mtc1       $at, $f2
/* D5BD8 8002C6C8 AC4001FC */  sw         $zero, 0x1fc($v0)
/* D5BDC 8002C6CC AC400200 */  sw         $zero, 0x200($v0)
/* D5BE0 8002C6D0 AC400204 */  sw         $zero, 0x204($v0)
/* D5BE4 8002C6D4 A4400208 */  sh         $zero, 0x208($v0)
/* D5BE8 8002C6D8 3C018015 */  lui        $at, %hi(D_8014A07C)
/* D5BEC 8002C6DC E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* D5BF0 8002C6E0 C44401FC */  lwc1       $f4, 0x1fc($v0)
/* D5BF4 8002C6E4 3C01C1A0 */  lui        $at, 0xc1a0
/* D5BF8 8002C6E8 44810000 */  mtc1       $at, $f0
/* D5BFC 8002C6EC 3C018015 */  lui        $at, %hi(D_8014A084)
/* D5C00 8002C6F0 AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* D5C04 8002C6F4 3C018015 */  lui        $at, %hi(D_8014A064)
/* D5C08 8002C6F8 AC20A064 */  sw         $zero, %lo(D_8014A064)($at)
/* D5C0C 8002C6FC 3C018015 */  lui        $at, %hi(D_8014A068)
/* D5C10 8002C700 E422A068 */  swc1       $f2, %lo(D_8014A068)($at)
/* D5C14 8002C704 3C018015 */  lui        $at, %hi(D_8014A06C)
/* D5C18 8002C708 AC20A06C */  sw         $zero, %lo(D_8014A06C)($at)
/* D5C1C 8002C70C 3C018015 */  lui        $at, %hi(D_8014A088)
/* D5C20 8002C710 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* D5C24 8002C714 3C018015 */  lui        $at, %hi(D_8014A080)
/* D5C28 8002C718 E424A080 */  swc1       $f4, %lo(D_8014A080)($at)
/* D5C2C 8002C71C 8FBF0018 */  lw         $ra, 0x18($sp)
/* D5C30 8002C720 8FB10014 */  lw         $s1, 0x14($sp)
/* D5C34 8002C724 8FB00010 */  lw         $s0, 0x10($sp)
/* D5C38 8002C728 03E00008 */  jr         $ra
/* D5C3C 8002C72C 27BD0020 */   addiu     $sp, $sp, 0x20

glabel func_8002C730_D5C40
/* D5C40 8002C730 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* D5C44 8002C734 AFB00010 */  sw         $s0, 0x10($sp)
/* D5C48 8002C738 00008021 */  addu       $s0, $zero, $zero
/* D5C4C 8002C73C AFBF0014 */  sw         $ra, 0x14($sp)
.L8002C740:
/* D5C50 8002C740 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5C54 8002C744 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5C58 8002C748 00101880 */  sll        $v1, $s0, 2
/* D5C5C 8002C74C 00621821 */  addu       $v1, $v1, $v0
/* D5C60 8002C750 8C640000 */  lw         $a0, ($v1)
/* D5C64 8002C754 0C027E98 */  jal        func_8009FA60
/* D5C68 8002C758 26100001 */   addiu     $s0, $s0, 1
/* D5C6C 8002C75C 2A020003 */  slti       $v0, $s0, 3
/* D5C70 8002C760 1440FFF7 */  bnez       $v0, .L8002C740
/* D5C74 8002C764 00000000 */   nop
/* D5C78 8002C768 00008021 */  addu       $s0, $zero, $zero
.L8002C76C:
/* D5C7C 8002C76C 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5C80 8002C770 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5C84 8002C774 00101880 */  sll        $v1, $s0, 2
/* D5C88 8002C778 00621821 */  addu       $v1, $v1, $v0
/* D5C8C 8002C77C 8C640190 */  lw         $a0, 0x190($v1)
/* D5C90 8002C780 0C028D30 */  jal        func_800A34C0
/* D5C94 8002C784 26100001 */   addiu     $s0, $s0, 1
/* D5C98 8002C788 2A020005 */  slti       $v0, $s0, 5
/* D5C9C 8002C78C 1440FFF7 */  bnez       $v0, .L8002C76C
/* D5CA0 8002C790 00000000 */   nop
/* D5CA4 8002C794 00008021 */  addu       $s0, $zero, $zero
.L8002C798:
/* D5CA8 8002C798 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5CAC 8002C79C 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5CB0 8002C7A0 00101880 */  sll        $v1, $s0, 2
/* D5CB4 8002C7A4 00621821 */  addu       $v1, $v1, $v0
/* D5CB8 8002C7A8 8C6401A4 */  lw         $a0, 0x1a4($v1)
/* D5CBC 8002C7AC 0C0326A1 */  jal        func_800C9A84
/* D5CC0 8002C7B0 26100001 */   addiu     $s0, $s0, 1
/* D5CC4 8002C7B4 2A02000A */  slti       $v0, $s0, 0xa
/* D5CC8 8002C7B8 1440FFF7 */  bnez       $v0, .L8002C798
/* D5CCC 8002C7BC 00000000 */   nop
/* D5CD0 8002C7C0 00008021 */  addu       $s0, $zero, $zero
.L8002C7C4:
/* D5CD4 8002C7C4 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5CD8 8002C7C8 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5CDC 8002C7CC 00101880 */  sll        $v1, $s0, 2
/* D5CE0 8002C7D0 00621821 */  addu       $v1, $v1, $v0
/* D5CE4 8002C7D4 8C6401CC */  lw         $a0, 0x1cc($v1)
/* D5CE8 8002C7D8 0C0326A1 */  jal        func_800C9A84
/* D5CEC 8002C7DC 26100001 */   addiu     $s0, $s0, 1
/* D5CF0 8002C7E0 2A020003 */  slti       $v0, $s0, 3
/* D5CF4 8002C7E4 1440FFF7 */  bnez       $v0, .L8002C7C4
/* D5CF8 8002C7E8 00000000 */   nop
/* D5CFC 8002C7EC 00008021 */  addu       $s0, $zero, $zero
.L8002C7F0:
/* D5D00 8002C7F0 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5D04 8002C7F4 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5D08 8002C7F8 00101880 */  sll        $v1, $s0, 2
/* D5D0C 8002C7FC 00621821 */  addu       $v1, $v1, $v0
/* D5D10 8002C800 8C6401D8 */  lw         $a0, 0x1d8($v1)
/* D5D14 8002C804 0C0326A1 */  jal        func_800C9A84
/* D5D18 8002C808 26100001 */   addiu     $s0, $s0, 1
/* D5D1C 8002C80C 2A020004 */  slti       $v0, $s0, 4
/* D5D20 8002C810 1440FFF7 */  bnez       $v0, .L8002C7F0
/* D5D24 8002C814 00000000 */   nop
/* D5D28 8002C818 3C048006 */  lui        $a0, %hi(D_80067710)
/* D5D2C 8002C81C 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D5D30 8002C820 0C026E4E */  jal        func_8009B938
/* D5D34 8002C824 248401F8 */   addiu     $a0, $a0, 0x1f8
/* D5D38 8002C828 3C048006 */  lui        $a0, %hi(D_80067710)
/* D5D3C 8002C82C 0C0326A1 */  jal        func_800C9A84
/* D5D40 8002C830 8C847710 */   lw        $a0, %lo(D_80067710)($a0)
/* D5D44 8002C834 3C018006 */  lui        $at, %hi(D_80067710)
/* D5D48 8002C838 AC207710 */  sw         $zero, %lo(D_80067710)($at)
/* D5D4C 8002C83C 0C026449 */  jal        func_80099124
/* D5D50 8002C840 24040002 */   addiu     $a0, $zero, 2
/* D5D54 8002C844 0C02DB14 */  jal        func_800B6C50
/* D5D58 8002C848 00002021 */   addu      $a0, $zero, $zero
/* D5D5C 8002C84C 8FBF0014 */  lw         $ra, 0x14($sp)
/* D5D60 8002C850 8FB00010 */  lw         $s0, 0x10($sp)
/* D5D64 8002C854 03E00008 */  jr         $ra
/* D5D68 8002C858 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_8002C85C_D5D6C
/* D5D6C 8002C85C 3C048006 */  lui        $a0, %hi(D_80067710)
/* D5D70 8002C860 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D5D74 8002C864 27BDFF58 */  addiu      $sp, $sp, -0xa8
/* D5D78 8002C868 AFBF0074 */  sw         $ra, 0x74($sp)
/* D5D7C 8002C86C AFB60070 */  sw         $s6, 0x70($sp)
/* D5D80 8002C870 AFB5006C */  sw         $s5, 0x6c($sp)
/* D5D84 8002C874 AFB40068 */  sw         $s4, 0x68($sp)
/* D5D88 8002C878 AFB30064 */  sw         $s3, 0x64($sp)
/* D5D8C 8002C87C AFB20060 */  sw         $s2, 0x60($sp)
/* D5D90 8002C880 AFB1005C */  sw         $s1, 0x5c($sp)
/* D5D94 8002C884 AFB00058 */  sw         $s0, 0x58($sp)
/* D5D98 8002C888 F7BE00A0 */  sdc1       $f30, 0xa0($sp)
/* D5D9C 8002C88C F7BC0098 */  sdc1       $f28, 0x98($sp)
/* D5DA0 8002C890 F7BA0090 */  sdc1       $f26, 0x90($sp)
/* D5DA4 8002C894 F7B80088 */  sdc1       $f24, 0x88($sp)
/* D5DA8 8002C898 F7B60080 */  sdc1       $f22, 0x80($sp)
/* D5DAC 8002C89C F7B40078 */  sdc1       $f20, 0x78($sp)
/* D5DB0 8002C8A0 908501E8 */  lbu        $a1, 0x1e8($a0)
/* D5DB4 8002C8A4 24020001 */  addiu      $v0, $zero, 1
/* D5DB8 8002C8A8 30A300FF */  andi       $v1, $a1, 0xff
/* D5DBC 8002C8AC 1062001D */  beq        $v1, $v0, .L8002C924
/* D5DC0 8002C8B0 28620002 */   slti      $v0, $v1, 2
/* D5DC4 8002C8B4 50400005 */  beql       $v0, $zero, .L8002C8CC
/* D5DC8 8002C8B8 24020002 */   addiu     $v0, $zero, 2
/* D5DCC 8002C8BC 10600007 */  beqz       $v1, .L8002C8DC
/* D5DD0 8002C8C0 00000000 */   nop
/* D5DD4 8002C8C4 0800B41C */  j          .L8002D070
/* D5DD8 8002C8C8 00000000 */   nop
.L8002C8CC:
/* D5DDC 8002C8CC 106201E0 */  beq        $v1, $v0, .L8002D050
/* D5DE0 8002C8D0 00000000 */   nop
/* D5DE4 8002C8D4 0800B41C */  j          .L8002D070
/* D5DE8 8002C8D8 00000000 */   nop
.L8002C8DC:
/* D5DEC 8002C8DC 848201EA */  lh         $v0, 0x1ea($a0)
/* D5DF0 8002C8E0 144001DE */  bnez       $v0, .L8002D05C
/* D5DF4 8002C8E4 00401821 */   addu      $v1, $v0, $zero
/* D5DF8 8002C8E8 8C830198 */  lw         $v1, 0x198($a0)
/* D5DFC 8002C8EC 9462001E */  lhu        $v0, 0x1e($v1)
/* D5E00 8002C8F0 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D5E04 8002C8F4 A462001E */  sh         $v0, 0x1e($v1)
/* D5E08 8002C8F8 8C83019C */  lw         $v1, 0x19c($a0)
/* D5E0C 8002C8FC 9462001E */  lhu        $v0, 0x1e($v1)
/* D5E10 8002C900 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D5E14 8002C904 A462001E */  sh         $v0, 0x1e($v1)
/* D5E18 8002C908 8C8301A0 */  lw         $v1, 0x1a0($a0)
/* D5E1C 8002C90C 9462001E */  lhu        $v0, 0x1e($v1)
/* D5E20 8002C910 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D5E24 8002C914 A462001E */  sh         $v0, 0x1e($v1)
/* D5E28 8002C918 908201E8 */  lbu        $v0, 0x1e8($a0)
/* D5E2C 8002C91C 0800B41B */  j          .L8002D06C
/* D5E30 8002C920 24420001 */   addiu     $v0, $v0, 1
.L8002C924:
/* D5E34 8002C924 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D5E38 8002C928 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D5E3C 8002C92C 30421000 */  andi       $v0, $v0, 0x1000
/* D5E40 8002C930 10400020 */  beqz       $v0, .L8002C9B4
/* D5E44 8002C934 27A40020 */   addiu     $a0, $sp, 0x20
/* D5E48 8002C938 3C018007 */  lui        $at, %hi(D_80069BB0)
/* D5E4C 8002C93C D4229BB0 */  ldc1       $f2, %lo(D_80069BB0)($at)
/* D5E50 8002C940 3C018017 */  lui        $at, %hi(D_8016D168)
/* D5E54 8002C944 C420D168 */  lwc1       $f0, %lo(D_8016D168)($at)
/* D5E58 8002C948 46800021 */  cvt.d.w    $f0, $f0
/* D5E5C 8002C94C 46220082 */  mul.d      $f2, $f0, $f2
/* D5E60 8002C950 3C018007 */  lui        $at, %hi(D_80069BB8)
/* D5E64 8002C954 D4209BB8 */  ldc1       $f0, %lo(D_80069BB8)($at)
/* D5E68 8002C958 4622003E */  c.le.d     $f0, $f2
/* D5E6C 8002C95C 00000000 */  nop
/* D5E70 8002C960 00000000 */  nop
/* D5E74 8002C964 45030006 */  bc1tl      .L8002C980
/* D5E78 8002C968 46201001 */   sub.d     $f0, $f2, $f0
/* D5E7C 8002C96C 4620100D */  trunc.w.d  $f0, $f2
/* D5E80 8002C970 44060000 */  mfc1       $a2, $f0
/* D5E84 8002C974 00000000 */  nop
/* D5E88 8002C978 0800B265 */  j          .L8002C994
/* D5E8C 8002C97C AFA00010 */   sw        $zero, 0x10($sp)
.L8002C980:
/* D5E90 8002C980 4620008D */  trunc.w.d  $f2, $f0
/* D5E94 8002C984 44061000 */  mfc1       $a2, $f2
/* D5E98 8002C988 3C028000 */  lui        $v0, 0x8000
/* D5E9C 8002C98C 00C23025 */  or         $a2, $a2, $v0
/* D5EA0 8002C990 AFA00010 */  sw         $zero, 0x10($sp)
.L8002C994:
/* D5EA4 8002C994 2404FFFE */  addiu      $a0, $zero, -2
/* D5EA8 8002C998 2405FFFF */  addiu      $a1, $zero, -1
/* D5EAC 8002C99C 30C6FFFF */  andi       $a2, $a2, 0xffff
/* D5EB0 8002C9A0 0C026C9A */  jal        func_8009B268
/* D5EB4 8002C9A4 00003821 */   addu      $a3, $zero, $zero
/* D5EB8 8002C9A8 0C026E5D */  jal        func_8009B974
/* D5EBC 8002C9AC 24040001 */   addiu     $a0, $zero, 1
/* D5EC0 8002C9B0 27A40020 */  addiu      $a0, $sp, 0x20
.L8002C9B4:
/* D5EC4 8002C9B4 27A50024 */  addiu      $a1, $sp, 0x24
/* D5EC8 8002C9B8 0C0266D6 */  jal        func_80099B58
/* D5ECC 8002C9BC 00003021 */   addu      $a2, $zero, $zero
/* D5ED0 8002C9C0 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5ED4 8002C9C4 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5ED8 8002C9C8 806601EC */  lb         $a2, 0x1ec($v1)
/* D5EDC 8002C9CC 84620208 */  lh         $v0, 0x208($v1)
/* D5EE0 8002C9D0 1440000F */  bnez       $v0, .L8002CA10
/* D5EE4 8002C9D4 00C02021 */   addu      $a0, $a2, $zero
/* D5EE8 8002C9D8 8FA20020 */  lw         $v0, 0x20($sp)
/* D5EEC 8002C9DC 00821021 */  addu       $v0, $a0, $v0
/* D5EF0 8002C9E0 A06201EC */  sb         $v0, 0x1ec($v1)
/* D5EF4 8002C9E4 3C048006 */  lui        $a0, %hi(D_80067710)
/* D5EF8 8002C9E8 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D5EFC 8002C9EC 808501EC */  lb         $a1, 0x1ec($a0)
/* D5F00 8002C9F0 28A20003 */  slti       $v0, $a1, 3
/* D5F04 8002C9F4 14400003 */  bnez       $v0, .L8002CA04
/* D5F08 8002C9F8 00A01821 */   addu      $v1, $a1, $zero
/* D5F0C 8002C9FC 0800B283 */  j          .L8002CA0C
/* D5F10 8002CA00 2462FFFD */   addiu     $v0, $v1, -3
.L8002CA04:
/* D5F14 8002CA04 04A10002 */  bgez       $a1, .L8002CA10
/* D5F18 8002CA08 24620003 */   addiu     $v0, $v1, 3
.L8002CA0C:
/* D5F1C 8002CA0C A08201EC */  sb         $v0, 0x1ec($a0)
.L8002CA10:
/* D5F20 8002CA10 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5F24 8002CA14 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5F28 8002CA18 804201EC */  lb         $v0, 0x1ec($v0)
/* D5F2C 8002CA1C 10C20035 */  beq        $a2, $v0, .L8002CAF4
/* D5F30 8002CA20 24050060 */   addiu     $a1, $zero, 0x60
/* D5F34 8002CA24 24040081 */  addiu      $a0, $zero, 0x81
/* D5F38 8002CA28 24060080 */  addiu      $a2, $zero, 0x80
/* D5F3C 8002CA2C 24070001 */  addiu      $a3, $zero, 1
/* D5F40 8002CA30 24020064 */  addiu      $v0, $zero, 0x64
/* D5F44 8002CA34 0C026E0C */  jal        func_8009B830
/* D5F48 8002CA38 AFA20010 */   sw        $v0, 0x10($sp)
/* D5F4C 8002CA3C 8FA30020 */  lw         $v1, 0x20($sp)
/* D5F50 8002CA40 24020001 */  addiu      $v0, $zero, 1
/* D5F54 8002CA44 14620014 */  bne        $v1, $v0, .L8002CA98
/* D5F58 8002CA48 00000000 */   nop
/* D5F5C 8002CA4C 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D5F60 8002CA50 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D5F64 8002CA54 3C0142F0 */  lui        $at, 0x42f0
/* D5F68 8002CA58 44811000 */  mtc1       $at, $f2
/* D5F6C 8002CA5C 44820000 */  mtc1       $v0, $f0
/* D5F70 8002CA60 00000000 */  nop
/* D5F74 8002CA64 46800020 */  cvt.s.w    $f0, $f0
/* D5F78 8002CA68 46001083 */  div.s      $f2, $f2, $f0
/* D5F7C 8002CA6C 24420001 */  addiu      $v0, $v0, 1
/* D5F80 8002CA70 44820000 */  mtc1       $v0, $f0
/* D5F84 8002CA74 00000000 */  nop
/* D5F88 8002CA78 46800020 */  cvt.s.w    $f0, $f0
/* D5F8C 8002CA7C 46001003 */  div.s      $f0, $f2, $f0
/* D5F90 8002CA80 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5F94 8002CA84 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5F98 8002CA88 46001087 */  neg.s      $f2, $f2
/* D5F9C 8002CA8C E4420200 */  swc1       $f2, 0x200($v0)
/* D5FA0 8002CA90 0800B2B8 */  j          .L8002CAE0
/* D5FA4 8002CA94 E4400204 */   swc1      $f0, 0x204($v0)
.L8002CA98:
/* D5FA8 8002CA98 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D5FAC 8002CA9C 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D5FB0 8002CAA0 3C0142F0 */  lui        $at, 0x42f0
/* D5FB4 8002CAA4 44812000 */  mtc1       $at, $f4
/* D5FB8 8002CAA8 44820000 */  mtc1       $v0, $f0
/* D5FBC 8002CAAC 00000000 */  nop
/* D5FC0 8002CAB0 46800020 */  cvt.s.w    $f0, $f0
/* D5FC4 8002CAB4 46002103 */  div.s      $f4, $f4, $f0
/* D5FC8 8002CAB8 24420001 */  addiu      $v0, $v0, 1
/* D5FCC 8002CABC 46002087 */  neg.s      $f2, $f4
/* D5FD0 8002CAC0 44820000 */  mtc1       $v0, $f0
/* D5FD4 8002CAC4 00000000 */  nop
/* D5FD8 8002CAC8 46800020 */  cvt.s.w    $f0, $f0
/* D5FDC 8002CACC 46001083 */  div.s      $f2, $f2, $f0
/* D5FE0 8002CAD0 3C028006 */  lui        $v0, %hi(D_80067710)
/* D5FE4 8002CAD4 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D5FE8 8002CAD8 E4440200 */  swc1       $f4, 0x200($v0)
/* D5FEC 8002CADC E4420204 */  swc1       $f2, 0x204($v0)
.L8002CAE0:
/* D5FF0 8002CAE0 3C038006 */  lui        $v1, %hi(D_80067710)
/* D5FF4 8002CAE4 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D5FF8 8002CAE8 3C028017 */  lui        $v0, %hi(D_8016D168)
/* D5FFC 8002CAEC 8C42D168 */  lw         $v0, %lo(D_8016D168)($v0)
/* D6000 8002CAF0 A4620208 */  sh         $v0, 0x208($v1)
.L8002CAF4:
/* D6004 8002CAF4 3C028006 */  lui        $v0, %hi(D_80067710)
/* D6008 8002CAF8 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D600C 8002CAFC 804301EC */  lb         $v1, 0x1ec($v0)
/* D6010 8002CB00 00031840 */  sll        $v1, $v1, 1
/* D6014 8002CB04 00621821 */  addu       $v1, $v1, $v0
/* D6018 8002CB08 846A01F2 */  lh         $t2, 0x1f2($v1)
/* D601C 8002CB0C 84420208 */  lh         $v0, 0x208($v0)
/* D6020 8002CB10 14400004 */  bnez       $v0, .L8002CB24
/* D6024 8002CB14 01402021 */   addu      $a0, $t2, $zero
/* D6028 8002CB18 8FA20024 */  lw         $v0, 0x24($sp)
/* D602C 8002CB1C 00821021 */  addu       $v0, $a0, $v0
/* D6030 8002CB20 A46201F2 */  sh         $v0, 0x1f2($v1)
.L8002CB24:
/* D6034 8002CB24 3C028006 */  lui        $v0, %hi(D_80067710)
/* D6038 8002CB28 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D603C 8002CB2C 804301EC */  lb         $v1, 0x1ec($v0)
/* D6040 8002CB30 24020001 */  addiu      $v0, $zero, 1
/* D6044 8002CB34 10620017 */  beq        $v1, $v0, .L8002CB94
/* D6048 8002CB38 28620002 */   slti      $v0, $v1, 2
/* D604C 8002CB3C 50400005 */  beql       $v0, $zero, .L8002CB54
/* D6050 8002CB40 24020002 */   addiu     $v0, $zero, 2
/* D6054 8002CB44 10600007 */  beqz       $v1, .L8002CB64
/* D6058 8002CB48 00000000 */   nop
/* D605C 8002CB4C 0800B2EA */  j          .L8002CBA8
/* D6060 8002CB50 00000000 */   nop
.L8002CB54:
/* D6064 8002CB54 10620012 */  beq        $v1, $v0, .L8002CBA0
/* D6068 8002CB58 00000000 */   nop
/* D606C 8002CB5C 0800B2EA */  j          .L8002CBA8
/* D6070 8002CB60 00000000 */   nop
.L8002CB64:
/* D6074 8002CB64 3C028015 */  lui        $v0, %hi(D_80149E31)
/* D6078 8002CB68 90429E31 */  lbu        $v0, %lo(D_80149E31)($v0)
/* D607C 8002CB6C 10400003 */  beqz       $v0, .L8002CB7C
/* D6080 8002CB70 00000000 */   nop
/* D6084 8002CB74 0800B2EA */  j          .L8002CBA8
/* D6088 8002CB78 24120017 */   addiu     $s2, $zero, 0x17
.L8002CB7C:
/* D608C 8002CB7C 3C028015 */  lui        $v0, %hi(D_80149E30)
/* D6090 8002CB80 90429E30 */  lbu        $v0, %lo(D_80149E30)($v0)
/* D6094 8002CB84 10400008 */  beqz       $v0, .L8002CBA8
/* D6098 8002CB88 24120015 */   addiu     $s2, $zero, 0x15
/* D609C 8002CB8C 0800B2EA */  j          .L8002CBA8
/* D60A0 8002CB90 24120016 */   addiu     $s2, $zero, 0x16
.L8002CB94:
/* D60A4 8002CB94 3C128015 */  lui        $s2, %hi(D_80149F10)
/* D60A8 8002CB98 0800B2EA */  j          .L8002CBA8
/* D60AC 8002CB9C 8E529F10 */   lw        $s2, %lo(D_80149F10)($s2)
.L8002CBA0:
/* D60B0 8002CBA0 3C128015 */  lui        $s2, %hi(D_80149F14)
/* D60B4 8002CBA4 8E529F14 */  lw         $s2, %lo(D_80149F14)($s2)
.L8002CBA8:
/* D60B8 8002CBA8 3C028006 */  lui        $v0, %hi(D_80067710)
/* D60BC 8002CBAC 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D60C0 8002CBB0 804301EC */  lb         $v1, 0x1ec($v0)
/* D60C4 8002CBB4 00031840 */  sll        $v1, $v1, 1
/* D60C8 8002CBB8 00621821 */  addu       $v1, $v1, $v0
/* D60CC 8002CBBC 846501F2 */  lh         $a1, 0x1f2($v1)
/* D60D0 8002CBC0 2644FFFF */  addiu      $a0, $s2, -1
/* D60D4 8002CBC4 0085102A */  slt        $v0, $a0, $a1
/* D60D8 8002CBC8 10400003 */  beqz       $v0, .L8002CBD8
/* D60DC 8002CBCC 00000000 */   nop
/* D60E0 8002CBD0 0800B2F8 */  j          .L8002CBE0
/* D60E4 8002CBD4 A46401F2 */   sh        $a0, 0x1f2($v1)
.L8002CBD8:
/* D60E8 8002CBD8 04A20001 */  bltzl      $a1, .L8002CBE0
/* D60EC 8002CBDC A46001F2 */   sh        $zero, 0x1f2($v1)
.L8002CBE0:
/* D60F0 8002CBE0 3C098006 */  lui        $t1, %hi(D_80067710)
/* D60F4 8002CBE4 8D297710 */  lw         $t1, %lo(D_80067710)($t1)
/* D60F8 8002CBE8 812801EC */  lb         $t0, 0x1ec($t1)
/* D60FC 8002CBEC 00081040 */  sll        $v0, $t0, 1
/* D6100 8002CBF0 00491021 */  addu       $v0, $v0, $t1
/* D6104 8002CBF4 944201F2 */  lhu        $v0, 0x1f2($v0)
/* D6108 8002CBF8 00023400 */  sll        $a2, $v0, 0x10
/* D610C 8002CBFC 00063C03 */  sra        $a3, $a2, 0x10
/* D6110 8002CC00 11470073 */  beq        $t2, $a3, .L8002CDD0
/* D6114 8002CC04 3C0251EB */   lui       $v0, 0x51eb
/* D6118 8002CC08 3442851F */  ori        $v0, $v0, 0x851f
/* D611C 8002CC0C 00E20018 */  mult       $a3, $v0
/* D6120 8002CC10 3C056666 */  lui        $a1, 0x6666
/* D6124 8002CC14 34A56667 */  ori        $a1, $a1, 0x6667
/* D6128 8002CC18 000637C3 */  sra        $a2, $a2, 0x1f
/* D612C 8002CC1C 00001810 */  mfhi       $v1
/* D6130 8002CC20 00032143 */  sra        $a0, $v1, 5
/* D6134 8002CC24 00862023 */  subu       $a0, $a0, $a2
/* D6138 8002CC28 00041040 */  sll        $v0, $a0, 1
/* D613C 8002CC2C 00441021 */  addu       $v0, $v0, $a0
/* D6140 8002CC30 000210C0 */  sll        $v0, $v0, 3
/* D6144 8002CC34 00441021 */  addu       $v0, $v0, $a0
/* D6148 8002CC38 00021080 */  sll        $v0, $v0, 2
/* D614C 8002CC3C 00E21023 */  subu       $v0, $a3, $v0
/* D6150 8002CC40 00021400 */  sll        $v0, $v0, 0x10
/* D6154 8002CC44 00021C03 */  sra        $v1, $v0, 0x10
/* D6158 8002CC48 00650018 */  mult       $v1, $a1
/* D615C 8002CC4C 00001810 */  mfhi       $v1
/* D6160 8002CC50 00000000 */  nop
/* D6164 8002CC54 00000000 */  nop
/* D6168 8002CC58 00E50018 */  mult       $a3, $a1
/* D616C 8002CC5C 00042400 */  sll        $a0, $a0, 0x10
/* D6170 8002CC60 00049C03 */  sra        $s3, $a0, 0x10
/* D6174 8002CC64 000217C3 */  sra        $v0, $v0, 0x1f
/* D6178 8002CC68 00031883 */  sra        $v1, $v1, 2
/* D617C 8002CC6C 00621823 */  subu       $v1, $v1, $v0
/* D6180 8002CC70 00031C00 */  sll        $v1, $v1, 0x10
/* D6184 8002CC74 0003A403 */  sra        $s4, $v1, 0x10
/* D6188 8002CC78 00002810 */  mfhi       $a1
/* D618C 8002CC7C 00051883 */  sra        $v1, $a1, 2
/* D6190 8002CC80 00661823 */  subu       $v1, $v1, $a2
/* D6194 8002CC84 00031080 */  sll        $v0, $v1, 2
/* D6198 8002CC88 00431021 */  addu       $v0, $v0, $v1
/* D619C 8002CC8C 00021040 */  sll        $v0, $v0, 1
/* D61A0 8002CC90 00E21023 */  subu       $v0, $a3, $v0
/* D61A4 8002CC94 00021400 */  sll        $v0, $v0, 0x10
/* D61A8 8002CC98 11000008 */  beqz       $t0, .L8002CCBC
/* D61AC 8002CC9C 0002AC03 */   sra       $s5, $v0, 0x10
/* D61B0 8002CCA0 00081080 */  sll        $v0, $t0, 2
/* D61B4 8002CCA4 00491021 */  addu       $v0, $v0, $t1
/* D61B8 8002CCA8 8C440000 */  lw         $a0, ($v0)
/* D61BC 8002CCAC 3C058007 */  lui        $a1, %hi(D_80069BA0)
/* D61C0 8002CCB0 0C0285D4 */  jal        func_800A1750
/* D61C4 8002CCB4 24A59BA0 */   addiu     $a1, $a1, %lo(D_80069BA0)
/* D61C8 8002CCB8 0040B021 */  addu       $s6, $v0, $zero
.L8002CCBC:
/* D61CC 8002CCBC 3C038006 */  lui        $v1, %hi(D_80067710)
/* D61D0 8002CCC0 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D61D4 8002CCC4 806201EC */  lb         $v0, 0x1ec($v1)
/* D61D8 8002CCC8 00021080 */  sll        $v0, $v0, 2
/* D61DC 8002CCCC 00431021 */  addu       $v0, $v0, $v1
/* D61E0 8002CCD0 8C440000 */  lw         $a0, ($v0)
/* D61E4 8002CCD4 3C058007 */  lui        $a1, %hi(D_80069BA4)
/* D61E8 8002CCD8 0C0285D4 */  jal        func_800A1750
/* D61EC 8002CCDC 24A59BA4 */   addiu     $a1, $a1, %lo(D_80069BA4)
/* D61F0 8002CCE0 3C048006 */  lui        $a0, %hi(D_80067710)
/* D61F4 8002CCE4 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D61F8 8002CCE8 808301EC */  lb         $v1, 0x1ec($a0)
/* D61FC 8002CCEC 00031880 */  sll        $v1, $v1, 2
/* D6200 8002CCF0 00641821 */  addu       $v1, $v1, $a0
/* D6204 8002CCF4 8C640000 */  lw         $a0, ($v1)
/* D6208 8002CCF8 3C058007 */  lui        $a1, %hi(D_80069BA8)
/* D620C 8002CCFC 24A59BA8 */  addiu      $a1, $a1, %lo(D_80069BA8)
/* D6210 8002CD00 0C0285D4 */  jal        func_800A1750
/* D6214 8002CD04 00408021 */   addu      $s0, $v0, $zero
/* D6218 8002CD08 3C048006 */  lui        $a0, %hi(D_80067710)
/* D621C 8002CD0C 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D6220 8002CD10 808301EC */  lb         $v1, 0x1ec($a0)
/* D6224 8002CD14 10600005 */  beqz       $v1, .L8002CD2C
/* D6228 8002CD18 00408821 */   addu      $s1, $v0, $zero
/* D622C 8002CD1C 8C8401CC */  lw         $a0, 0x1cc($a0)
/* D6230 8002CD20 02C02821 */  addu       $a1, $s6, $zero
/* D6234 8002CD24 0C03006C */  jal        func_800C01B0
/* D6238 8002CD28 24060020 */   addiu     $a2, $zero, 0x20
.L8002CD2C:
/* D623C 8002CD2C 3C028006 */  lui        $v0, %hi(D_80067710)
/* D6240 8002CD30 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D6244 8002CD34 8C4401CC */  lw         $a0, 0x1cc($v0)
/* D6248 8002CD38 02002821 */  addu       $a1, $s0, $zero
/* D624C 8002CD3C 0C03006C */  jal        func_800C01B0
/* D6250 8002CD40 24060020 */   addiu     $a2, $zero, 0x20
/* D6254 8002CD44 3C028006 */  lui        $v0, %hi(D_80067710)
/* D6258 8002CD48 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D625C 8002CD4C 8C4401CC */  lw         $a0, 0x1cc($v0)
/* D6260 8002CD50 02202821 */  addu       $a1, $s1, $zero
/* D6264 8002CD54 0C03006C */  jal        func_800C01B0
/* D6268 8002CD58 24060020 */   addiu     $a2, $zero, 0x20
/* D626C 8002CD5C 3C038006 */  lui        $v1, %hi(D_80067710)
/* D6270 8002CD60 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D6274 8002CD64 806201EC */  lb         $v0, 0x1ec($v1)
/* D6278 8002CD68 10400009 */  beqz       $v0, .L8002CD90
/* D627C 8002CD6C 00131080 */   sll       $v0, $s3, 2
/* D6280 8002CD70 00431021 */  addu       $v0, $v0, $v1
/* D6284 8002CD74 8C4401A4 */  lw         $a0, 0x1a4($v0)
/* D6288 8002CD78 26C50020 */  addiu      $a1, $s6, 0x20
/* D628C 8002CD7C 24060200 */  addiu      $a2, $zero, 0x200
/* D6290 8002CD80 0C03006C */  jal        func_800C01B0
/* D6294 8002CD84 24840010 */   addiu     $a0, $a0, 0x10
/* D6298 8002CD88 3C038006 */  lui        $v1, %hi(D_80067710)
/* D629C 8002CD8C 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
.L8002CD90:
/* D62A0 8002CD90 00141080 */  sll        $v0, $s4, 2
/* D62A4 8002CD94 00431021 */  addu       $v0, $v0, $v1
/* D62A8 8002CD98 8C4401A4 */  lw         $a0, 0x1a4($v0)
/* D62AC 8002CD9C 26050020 */  addiu      $a1, $s0, 0x20
/* D62B0 8002CDA0 24060200 */  addiu      $a2, $zero, 0x200
/* D62B4 8002CDA4 0C03006C */  jal        func_800C01B0
/* D62B8 8002CDA8 24840010 */   addiu     $a0, $a0, 0x10
/* D62BC 8002CDAC 3C038006 */  lui        $v1, %hi(D_80067710)
/* D62C0 8002CDB0 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D62C4 8002CDB4 00151080 */  sll        $v0, $s5, 2
/* D62C8 8002CDB8 00431021 */  addu       $v0, $v0, $v1
/* D62CC 8002CDBC 8C4401A4 */  lw         $a0, 0x1a4($v0)
/* D62D0 8002CDC0 26250020 */  addiu      $a1, $s1, 0x20
/* D62D4 8002CDC4 24060200 */  addiu      $a2, $zero, 0x200
/* D62D8 8002CDC8 0C03006C */  jal        func_800C01B0
/* D62DC 8002CDCC 24840010 */   addiu     $a0, $a0, 0x10
.L8002CDD0:
/* D62E0 8002CDD0 3C038006 */  lui        $v1, %hi(D_80067710)
/* D62E4 8002CDD4 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D62E8 8002CDD8 806201EC */  lb         $v0, 0x1ec($v1)
/* D62EC 8002CDDC 00021040 */  sll        $v0, $v0, 1
/* D62F0 8002CDE0 00431021 */  addu       $v0, $v0, $v1
/* D62F4 8002CDE4 844201F2 */  lh         $v0, 0x1f2($v0)
/* D62F8 8002CDE8 14400005 */  bnez       $v0, .L8002CE00
/* D62FC 8002CDEC 00000000 */   nop
/* D6300 8002CDF0 8C630194 */  lw         $v1, 0x194($v1)
/* D6304 8002CDF4 9462001E */  lhu        $v0, 0x1e($v1)
/* D6308 8002CDF8 0800B383 */  j          .L8002CE0C
/* D630C 8002CDFC 34420400 */   ori       $v0, $v0, 0x400
.L8002CE00:
/* D6310 8002CE00 8C630194 */  lw         $v1, 0x194($v1)
/* D6314 8002CE04 9462001E */  lhu        $v0, 0x1e($v1)
/* D6318 8002CE08 3042FBFF */  andi       $v0, $v0, 0xfbff
.L8002CE0C:
/* D631C 8002CE0C A462001E */  sh         $v0, 0x1e($v1)
/* D6320 8002CE10 3C048006 */  lui        $a0, %hi(D_80067710)
/* D6324 8002CE14 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D6328 8002CE18 808201EC */  lb         $v0, 0x1ec($a0)
/* D632C 8002CE1C 00021040 */  sll        $v0, $v0, 1
/* D6330 8002CE20 00441021 */  addu       $v0, $v0, $a0
/* D6334 8002CE24 844301F2 */  lh         $v1, 0x1f2($v0)
/* D6338 8002CE28 2642FFFF */  addiu      $v0, $s2, -1
/* D633C 8002CE2C 14620005 */  bne        $v1, $v0, .L8002CE44
/* D6340 8002CE30 00000000 */   nop
/* D6344 8002CE34 8C830198 */  lw         $v1, 0x198($a0)
/* D6348 8002CE38 9462001E */  lhu        $v0, 0x1e($v1)
/* D634C 8002CE3C 0800B394 */  j          .L8002CE50
/* D6350 8002CE40 34420400 */   ori       $v0, $v0, 0x400
.L8002CE44:
/* D6354 8002CE44 8C830198 */  lw         $v1, 0x198($a0)
/* D6358 8002CE48 9462001E */  lhu        $v0, 0x1e($v1)
/* D635C 8002CE4C 3042FBFF */  andi       $v0, $v0, 0xfbff
.L8002CE50:
/* D6360 8002CE50 A462001E */  sh         $v0, 0x1e($v1)
/* D6364 8002CE54 3C048006 */  lui        $a0, %hi(D_80067710)
/* D6368 8002CE58 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D636C 8002CE5C 84820208 */  lh         $v0, 0x208($a0)
/* D6370 8002CE60 1440004F */  bnez       $v0, .L8002CFA0
/* D6374 8002CE64 00000000 */   nop
/* D6378 8002CE68 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D637C 8002CE6C 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D6380 8002CE70 30428000 */  andi       $v0, $v0, 0x8000
/* D6384 8002CE74 1040004A */  beqz       $v0, .L8002CFA0
/* D6388 8002CE78 24020001 */   addiu     $v0, $zero, 1
/* D638C 8002CE7C 808301EC */  lb         $v1, 0x1ec($a0)
/* D6390 8002CE80 1062002D */  beq        $v1, $v0, .L8002CF38
/* D6394 8002CE84 28620002 */   slti      $v0, $v1, 2
/* D6398 8002CE88 50400005 */  beql       $v0, $zero, .L8002CEA0
/* D639C 8002CE8C 24020002 */   addiu     $v0, $zero, 2
/* D63A0 8002CE90 10600007 */  beqz       $v1, .L8002CEB0
/* D63A4 8002CE94 00000000 */   nop
/* D63A8 8002CE98 0800B3E8 */  j          .L8002CFA0
/* D63AC 8002CE9C 00000000 */   nop
.L8002CEA0:
/* D63B0 8002CEA0 1062002E */  beq        $v1, $v0, .L8002CF5C
/* D63B4 8002CEA4 00000000 */   nop
/* D63B8 8002CEA8 0800B3E8 */  j          .L8002CFA0
/* D63BC 8002CEAC 00000000 */   nop
.L8002CEB0:
/* D63C0 8002CEB0 3C018007 */  lui        $at, %hi(D_80069BC0)
/* D63C4 8002CEB4 D4209BC0 */  ldc1       $f0, %lo(D_80069BC0)($at)
/* D63C8 8002CEB8 3C018017 */  lui        $at, %hi(D_8016D168)
/* D63CC 8002CEBC C422D168 */  lwc1       $f2, %lo(D_8016D168)($at)
/* D63D0 8002CEC0 468010A1 */  cvt.d.w    $f2, $f2
/* D63D4 8002CEC4 46201082 */  mul.d      $f2, $f2, $f0
/* D63D8 8002CEC8 3C018007 */  lui        $at, %hi(D_80069BC8)
/* D63DC 8002CECC D4209BC8 */  ldc1       $f0, %lo(D_80069BC8)($at)
/* D63E0 8002CED0 848201F2 */  lh         $v0, 0x1f2($a0)
/* D63E4 8002CED4 4622003E */  c.le.d     $f0, $f2
/* D63E8 8002CED8 00021040 */  sll        $v0, $v0, 1
/* D63EC 8002CEDC 3C048006 */  lui        $a0, %hi(D_8006771C)
/* D63F0 8002CEE0 00822021 */  addu       $a0, $a0, $v0
/* D63F4 8002CEE4 9484771C */  lhu        $a0, %lo(D_8006771C)($a0)
/* D63F8 8002CEE8 45030006 */  bc1tl      .L8002CF04
/* D63FC 8002CEEC 46201001 */   sub.d     $f0, $f2, $f0
/* D6400 8002CEF0 4620100D */  trunc.w.d  $f0, $f2
/* D6404 8002CEF4 44060000 */  mfc1       $a2, $f0
/* D6408 8002CEF8 00000000 */  nop
/* D640C 8002CEFC 0800B3C6 */  j          .L8002CF18
/* D6410 8002CF00 2405FFFF */   addiu     $a1, $zero, -1
.L8002CF04:
/* D6414 8002CF04 4620008D */  trunc.w.d  $f2, $f0
/* D6418 8002CF08 44061000 */  mfc1       $a2, $f2
/* D641C 8002CF0C 3C028000 */  lui        $v0, 0x8000
/* D6420 8002CF10 00C23025 */  or         $a2, $a2, $v0
/* D6424 8002CF14 2405FFFF */  addiu      $a1, $zero, -1
.L8002CF18:
/* D6428 8002CF18 3C078015 */  lui        $a3, %hi(D_8014A2D0)
/* D642C 8002CF1C 84E7A2D0 */  lh         $a3, %lo(D_8014A2D0)($a3)
/* D6430 8002CF20 30C6FFFF */  andi       $a2, $a2, 0xffff
/* D6434 8002CF24 24020001 */  addiu      $v0, $zero, 1
/* D6438 8002CF28 0C026C9A */  jal        func_8009B268
/* D643C 8002CF2C AFA20010 */   sw        $v0, 0x10($sp)
/* D6440 8002CF30 0800B3E8 */  j          .L8002CFA0
/* D6444 8002CF34 00000000 */   nop
.L8002CF38:
/* D6448 8002CF38 0C026E4E */  jal        func_8009B938
/* D644C 8002CF3C 248401F8 */   addiu     $a0, $a0, 0x1f8
/* D6450 8002CF40 3C028006 */  lui        $v0, %hi(D_80067710)
/* D6454 8002CF44 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D6458 8002CF48 804301EC */  lb         $v1, 0x1ec($v0)
/* D645C 8002CF4C 00031840 */  sll        $v1, $v1, 1
/* D6460 8002CF50 00621821 */  addu       $v1, $v1, $v0
/* D6464 8002CF54 0800B3E3 */  j          .L8002CF8C
/* D6468 8002CF58 846401F2 */   lh        $a0, 0x1f2($v1)
.L8002CF5C:
/* D646C 8002CF5C 0C026E4E */  jal        func_8009B938
/* D6470 8002CF60 248401F8 */   addiu     $a0, $a0, 0x1f8
/* D6474 8002CF64 3C038006 */  lui        $v1, %hi(D_80067710)
/* D6478 8002CF68 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D647C 8002CF6C 806201EC */  lb         $v0, 0x1ec($v1)
/* D6480 8002CF70 00021040 */  sll        $v0, $v0, 1
/* D6484 8002CF74 00431021 */  addu       $v0, $v0, $v1
/* D6488 8002CF78 844201F2 */  lh         $v0, 0x1f2($v0)
/* D648C 8002CF7C 00021040 */  sll        $v0, $v0, 1
/* D6490 8002CF80 3C048006 */  lui        $a0, %hi(D_8006774C)
/* D6494 8002CF84 00822021 */  addu       $a0, $a0, $v0
/* D6498 8002CF88 9484774C */  lhu        $a0, %lo(D_8006774C)($a0)
.L8002CF8C:
/* D649C 8002CF8C 0C026DD5 */  jal        func_8009B754
/* D64A0 8002CF90 00000000 */   nop
/* D64A4 8002CF94 3C038006 */  lui        $v1, %hi(D_80067710)
/* D64A8 8002CF98 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D64AC 8002CF9C AC6201F8 */  sw         $v0, 0x1f8($v1)
.L8002CFA0:
/* D64B0 8002CFA0 3C028015 */  lui        $v0, %hi(D_8014CF92)
/* D64B4 8002CFA4 9442CF92 */  lhu        $v0, %lo(D_8014CF92)($v0)
/* D64B8 8002CFA8 30424000 */  andi       $v0, $v0, 0x4000
/* D64BC 8002CFAC 10400030 */  beqz       $v0, .L8002D070
/* D64C0 8002CFB0 00000000 */   nop
/* D64C4 8002CFB4 3C048017 */  lui        $a0, %hi(D_8016D168)
/* D64C8 8002CFB8 0C02A5C1 */  jal        func_800A9704
/* D64CC 8002CFBC 8C84D168 */   lw        $a0, %lo(D_8016D168)($a0)
/* D64D0 8002CFC0 2404FFFE */  addiu      $a0, $zero, -2
/* D64D4 8002CFC4 3C068017 */  lui        $a2, %hi(D_8016D16A)
/* D64D8 8002CFC8 94C6D16A */  lhu        $a2, %lo(D_8016D16A)($a2)
/* D64DC 8002CFCC 2405FFFF */  addiu      $a1, $zero, -1
/* D64E0 8002CFD0 00003821 */  addu       $a3, $zero, $zero
/* D64E4 8002CFD4 0C026C9A */  jal        func_8009B268
/* D64E8 8002CFD8 AFA00010 */   sw        $zero, 0x10($sp)
/* D64EC 8002CFDC 0C026DD5 */  jal        func_8009B754
/* D64F0 8002CFE0 24040082 */   addiu     $a0, $zero, 0x82
/* D64F4 8002CFE4 3C038006 */  lui        $v1, %hi(D_80067710)
/* D64F8 8002CFE8 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D64FC 8002CFEC 906201E8 */  lbu        $v0, 0x1e8($v1)
/* D6500 8002CFF0 3C058017 */  lui        $a1, %hi(D_8016D168)
/* D6504 8002CFF4 8CA5D168 */  lw         $a1, %lo(D_8016D168)($a1)
/* D6508 8002CFF8 24420001 */  addiu      $v0, $v0, 1
/* D650C 8002CFFC A06201E8 */  sb         $v0, 0x1e8($v1)
/* D6510 8002D000 3C048006 */  lui        $a0, %hi(D_80067710)
/* D6514 8002D004 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D6518 8002D008 A46501EA */  sh         $a1, 0x1ea($v1)
/* D651C 8002D00C 8C830194 */  lw         $v1, 0x194($a0)
/* D6520 8002D010 9462001E */  lhu        $v0, 0x1e($v1)
/* D6524 8002D014 34420400 */  ori        $v0, $v0, 0x400
/* D6528 8002D018 A462001E */  sh         $v0, 0x1e($v1)
/* D652C 8002D01C 8C830198 */  lw         $v1, 0x198($a0)
/* D6530 8002D020 9462001E */  lhu        $v0, 0x1e($v1)
/* D6534 8002D024 34420400 */  ori        $v0, $v0, 0x400
/* D6538 8002D028 A462001E */  sh         $v0, 0x1e($v1)
/* D653C 8002D02C 8C83019C */  lw         $v1, 0x19c($a0)
/* D6540 8002D030 9462001E */  lhu        $v0, 0x1e($v1)
/* D6544 8002D034 34420400 */  ori        $v0, $v0, 0x400
/* D6548 8002D038 A462001E */  sh         $v0, 0x1e($v1)
/* D654C 8002D03C 8C8301A0 */  lw         $v1, 0x1a0($a0)
/* D6550 8002D040 9462001E */  lhu        $v0, 0x1e($v1)
/* D6554 8002D044 34420400 */  ori        $v0, $v0, 0x400
/* D6558 8002D048 0800B41C */  j          .L8002D070
/* D655C 8002D04C A462001E */   sh        $v0, 0x1e($v1)
.L8002D050:
/* D6560 8002D050 848201EA */  lh         $v0, 0x1ea($a0)
/* D6564 8002D054 10400004 */  beqz       $v0, .L8002D068
/* D6568 8002D058 00401821 */   addu      $v1, $v0, $zero
.L8002D05C:
/* D656C 8002D05C 2462FFFF */  addiu      $v0, $v1, -1
/* D6570 8002D060 0800B41C */  j          .L8002D070
/* D6574 8002D064 A48201EA */   sh        $v0, 0x1ea($a0)
.L8002D068:
/* D6578 8002D068 24A20001 */  addiu      $v0, $a1, 1
.L8002D06C:
/* D657C 8002D06C A08201E8 */  sb         $v0, 0x1e8($a0)
.L8002D070:
/* D6580 8002D070 3C038006 */  lui        $v1, %hi(D_80067710)
/* D6584 8002D074 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D6588 8002D078 84620208 */  lh         $v0, 0x208($v1)
/* D658C 8002D07C 1040004C */  beqz       $v0, .L8002D1B0
/* D6590 8002D080 00402021 */   addu      $a0, $v0, $zero
/* D6594 8002D084 C4620200 */  lwc1       $f2, 0x200($v1)
/* D6598 8002D088 C4600204 */  lwc1       $f0, 0x204($v1)
/* D659C 8002D08C 46001080 */  add.s      $f2, $f2, $f0
/* D65A0 8002D090 C46001FC */  lwc1       $f0, 0x1fc($v1)
/* D65A4 8002D094 3C0143B4 */  lui        $at, 0x43b4
/* D65A8 8002D098 44813000 */  mtc1       $at, $f6
/* D65AC 8002D09C 46020100 */  add.s      $f4, $f0, $f2
/* D65B0 8002D0A0 2482FFFF */  addiu      $v0, $a0, -1
/* D65B4 8002D0A4 A4620208 */  sh         $v0, 0x208($v1)
/* D65B8 8002D0A8 4604303E */  c.le.s     $f6, $f4
/* D65BC 8002D0AC E4620200 */  swc1       $f2, 0x200($v1)
/* D65C0 8002D0B0 00000000 */  nop
/* D65C4 8002D0B4 45000003 */  bc1f       .L8002D0C4
/* D65C8 8002D0B8 E46401FC */   swc1      $f4, 0x1fc($v1)
/* D65CC 8002D0BC 0800B438 */  j          .L8002D0E0
/* D65D0 8002D0C0 46062001 */   sub.s     $f0, $f4, $f6
.L8002D0C4:
/* D65D4 8002D0C4 44800000 */  mtc1       $zero, $f0
/* D65D8 8002D0C8 00000000 */  nop
/* D65DC 8002D0CC 4600203C */  c.lt.s     $f4, $f0
/* D65E0 8002D0D0 00000000 */  nop
/* D65E4 8002D0D4 45000003 */  bc1f       .L8002D0E4
/* D65E8 8002D0D8 00000000 */   nop
/* D65EC 8002D0DC 46062000 */  add.s      $f0, $f4, $f6
.L8002D0E0:
/* D65F0 8002D0E0 E46001FC */  swc1       $f0, 0x1fc($v1)
.L8002D0E4:
/* D65F4 8002D0E4 3C058006 */  lui        $a1, %hi(D_80067710)
/* D65F8 8002D0E8 8CA57710 */  lw         $a1, %lo(D_80067710)($a1)
/* D65FC 8002D0EC 84A20208 */  lh         $v0, 0x208($a1)
/* D6600 8002D0F0 1440001F */  bnez       $v0, .L8002D170
/* D6604 8002D0F4 3C038888 */   lui       $v1, 0x8888
/* D6608 8002D0F8 C4A201FC */  lwc1       $f2, 0x1fc($a1)
/* D660C 8002D0FC 3C013F80 */  lui        $at, 0x3f80
/* D6610 8002D100 44810000 */  mtc1       $at, $f0
/* D6614 8002D104 00000000 */  nop
/* D6618 8002D108 46001080 */  add.s      $f2, $f2, $f0
/* D661C 8002D10C 34638889 */  ori        $v1, $v1, 0x8889
/* D6620 8002D110 4600100D */  trunc.w.s  $f0, $f2
/* D6624 8002D114 44020000 */  mfc1       $v0, $f0
/* D6628 8002D118 00000000 */  nop
/* D662C 8002D11C 00430018 */  mult       $v0, $v1
/* D6630 8002D120 00005810 */  mfhi       $t3
/* D6634 8002D124 01621821 */  addu       $v1, $t3, $v0
/* D6638 8002D128 00031943 */  sra        $v1, $v1, 5
/* D663C 8002D12C 000217C3 */  sra        $v0, $v0, 0x1f
/* D6640 8002D130 00621823 */  subu       $v1, $v1, $v0
/* D6644 8002D134 00031100 */  sll        $v0, $v1, 4
/* D6648 8002D138 00431023 */  subu       $v0, $v0, $v1
/* D664C 8002D13C 8CA3019C */  lw         $v1, 0x19c($a1)
/* D6650 8002D140 00021080 */  sll        $v0, $v0, 2
/* D6654 8002D144 44820000 */  mtc1       $v0, $f0
/* D6658 8002D148 00000000 */  nop
/* D665C 8002D14C 46800020 */  cvt.s.w    $f0, $f0
/* D6660 8002D150 E4A001FC */  swc1       $f0, 0x1fc($a1)
/* D6664 8002D154 9462001E */  lhu        $v0, 0x1e($v1)
/* D6668 8002D158 3042FBFF */  andi       $v0, $v0, 0xfbff
/* D666C 8002D15C A462001E */  sh         $v0, 0x1e($v1)
/* D6670 8002D160 8CA301A0 */  lw         $v1, 0x1a0($a1)
/* D6674 8002D164 9462001E */  lhu        $v0, 0x1e($v1)
/* D6678 8002D168 0800B46B */  j          .L8002D1AC
/* D667C 8002D16C 3042FBFF */   andi      $v0, $v0, 0xfbff
.L8002D170:
/* D6680 8002D170 8CA30194 */  lw         $v1, 0x194($a1)
/* D6684 8002D174 9462001E */  lhu        $v0, 0x1e($v1)
/* D6688 8002D178 34420400 */  ori        $v0, $v0, 0x400
/* D668C 8002D17C A462001E */  sh         $v0, 0x1e($v1)
/* D6690 8002D180 8CA30198 */  lw         $v1, 0x198($a1)
/* D6694 8002D184 9462001E */  lhu        $v0, 0x1e($v1)
/* D6698 8002D188 34420400 */  ori        $v0, $v0, 0x400
/* D669C 8002D18C A462001E */  sh         $v0, 0x1e($v1)
/* D66A0 8002D190 8CA3019C */  lw         $v1, 0x19c($a1)
/* D66A4 8002D194 9462001E */  lhu        $v0, 0x1e($v1)
/* D66A8 8002D198 34420400 */  ori        $v0, $v0, 0x400
/* D66AC 8002D19C A462001E */  sh         $v0, 0x1e($v1)
/* D66B0 8002D1A0 8CA301A0 */  lw         $v1, 0x1a0($a1)
/* D66B4 8002D1A4 9462001E */  lhu        $v0, 0x1e($v1)
/* D66B8 8002D1A8 34420400 */  ori        $v0, $v0, 0x400
.L8002D1AC:
/* D66BC 8002D1AC A462001E */  sh         $v0, 0x1e($v1)
.L8002D1B0:
/* D66C0 8002D1B0 3C01C240 */  lui        $at, 0xc240
/* D66C4 8002D1B4 44810000 */  mtc1       $at, $f0
/* D66C8 8002D1B8 3C028006 */  lui        $v0, %hi(D_80067710)
/* D66CC 8002D1BC 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D66D0 8002D1C0 3C018015 */  lui        $at, %hi(D_8014A07C)
/* D66D4 8002D1C4 E420A07C */  swc1       $f0, %lo(D_8014A07C)($at)
/* D66D8 8002D1C8 C44201FC */  lwc1       $f2, 0x1fc($v0)
/* D66DC 8002D1CC 3C01C1A0 */  lui        $at, 0xc1a0
/* D66E0 8002D1D0 44810000 */  mtc1       $at, $f0
/* D66E4 8002D1D4 00008021 */  addu       $s0, $zero, $zero
/* D66E8 8002D1D8 3C018015 */  lui        $at, %hi(D_8014A084)
/* D66EC 8002D1DC AC20A084 */  sw         $zero, %lo(D_8014A084)($at)
/* D66F0 8002D1E0 3C018015 */  lui        $at, %hi(D_8014A088)
/* D66F4 8002D1E4 E420A088 */  swc1       $f0, %lo(D_8014A088)($at)
/* D66F8 8002D1E8 3C018015 */  lui        $at, %hi(D_8014A080)
/* D66FC 8002D1EC E422A080 */  swc1       $f2, %lo(D_8014A080)($at)
.L8002D1F0:
/* D6700 8002D1F0 3C028006 */  lui        $v0, %hi(D_80067710)
/* D6704 8002D1F4 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D6708 8002D1F8 00108880 */  sll        $s1, $s0, 2
/* D670C 8002D1FC 02221021 */  addu       $v0, $s1, $v0
/* D6710 8002D200 0C0299C6 */  jal        func_800A6718
/* D6714 8002D204 8C4401D8 */   lw        $a0, 0x1d8($v0)
/* D6718 8002D208 54400020 */  bnezl      $v0, .L8002D28C
/* D671C 8002D20C 26100001 */   addiu     $s0, $s0, 1
/* D6720 8002D210 3C028006 */  lui        $v0, %hi(D_80067710)
/* D6724 8002D214 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D6728 8002D218 02221021 */  addu       $v0, $s1, $v0
/* D672C 8002D21C 0C0299BD */  jal        func_800A66F4
/* D6730 8002D220 8C4401D8 */   lw        $a0, 0x1d8($v0)
/* D6734 8002D224 3C038006 */  lui        $v1, %hi(D_80067710)
/* D6738 8002D228 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D673C 8002D22C 00701821 */  addu       $v1, $v1, $s0
/* D6740 8002D230 906201ED */  lbu        $v0, 0x1ed($v1)
/* D6744 8002D234 38420001 */  xori       $v0, $v0, 1
/* D6748 8002D238 A06201ED */  sb         $v0, 0x1ed($v1)
/* D674C 8002D23C 3C038006 */  lui        $v1, %hi(D_80067710)
/* D6750 8002D240 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D6754 8002D244 00701021 */  addu       $v0, $v1, $s0
/* D6758 8002D248 904201ED */  lbu        $v0, 0x1ed($v0)
/* D675C 8002D24C 10400004 */  beqz       $v0, .L8002D260
/* D6760 8002D250 00711021 */   addu      $v0, $v1, $s1
/* D6764 8002D254 8C420194 */  lw         $v0, 0x194($v0)
/* D6768 8002D258 0800B49A */  j          .L8002D268
/* D676C 8002D25C 8C6501D4 */   lw        $a1, 0x1d4($v1)
.L8002D260:
/* D6770 8002D260 8C420194 */  lw         $v0, 0x194($v0)
/* D6774 8002D264 8C6501D0 */  lw         $a1, 0x1d0($v1)
.L8002D268:
/* D6778 8002D268 8C440014 */  lw         $a0, 0x14($v0)
/* D677C 8002D26C 24060010 */  addiu      $a2, $zero, 0x10
/* D6780 8002D270 0C02994E */  jal        func_800A6538
/* D6784 8002D274 2407000C */   addiu     $a3, $zero, 0xc
/* D6788 8002D278 3C038006 */  lui        $v1, %hi(D_80067710)
/* D678C 8002D27C 8C637710 */  lw         $v1, %lo(D_80067710)($v1)
/* D6790 8002D280 02231821 */  addu       $v1, $s1, $v1
/* D6794 8002D284 AC6201D8 */  sw         $v0, 0x1d8($v1)
/* D6798 8002D288 26100001 */  addiu      $s0, $s0, 1
.L8002D28C:
/* D679C 8002D28C 2A020004 */  slti       $v0, $s0, 4
/* D67A0 8002D290 1440FFD7 */  bnez       $v0, .L8002D1F0
/* D67A4 8002D294 00000000 */   nop
/* D67A8 8002D298 00008021 */  addu       $s0, $zero, $zero
.L8002D29C:
/* D67AC 8002D29C 3C028006 */  lui        $v0, %hi(D_80067710)
/* D67B0 8002D2A0 8C427710 */  lw         $v0, %lo(D_80067710)($v0)
/* D67B4 8002D2A4 00101880 */  sll        $v1, $s0, 2
/* D67B8 8002D2A8 00621821 */  addu       $v1, $v1, $v0
/* D67BC 8002D2AC 8C640190 */  lw         $a0, 0x190($v1)
/* D67C0 8002D2B0 0C028A40 */  jal        func_800A2900
/* D67C4 8002D2B4 26100001 */   addiu     $s0, $s0, 1
/* D67C8 8002D2B8 2A020005 */  slti       $v0, $s0, 5
/* D67CC 8002D2BC 1440FFF7 */  bnez       $v0, .L8002D29C
/* D67D0 8002D2C0 24120010 */   addiu     $s2, $zero, 0x10
/* D67D4 8002D2C4 00008021 */  addu       $s0, $zero, $zero
/* D67D8 8002D2C8 3C0141F0 */  lui        $at, 0x41f0
/* D67DC 8002D2CC 4481E000 */  mtc1       $at, $f28
/* D67E0 8002D2D0 3C01C220 */  lui        $at, 0xc220
/* D67E4 8002D2D4 4481F000 */  mtc1       $at, $f30
/* D67E8 8002D2D8 00008821 */  addu       $s1, $zero, $zero
/* D67EC 8002D2DC 4480D000 */  mtc1       $zero, $f26
.L8002D2E0:
/* D67F0 8002D2E0 3C018007 */  lui        $at, %hi(D_80069BD0)
/* D67F4 8002D2E4 D4209BD0 */  ldc1       $f0, %lo(D_80069BD0)($at)
/* D67F8 8002D2E8 4491A000 */  mtc1       $s1, $f20
/* D67FC 8002D2EC 00000000 */  nop
/* D6800 8002D2F0 4680A521 */  cvt.d.w    $f20, $f20
/* D6804 8002D2F4 4620A502 */  mul.d      $f20, $f20, $f0
/* D6808 8002D2F8 240200B4 */  addiu      $v0, $zero, 0xb4
/* D680C 8002D2FC 00511023 */  subu       $v0, $v0, $s1
/* D6810 8002D300 4482C000 */  mtc1       $v0, $f24
/* D6814 8002D304 00000000 */  nop
/* D6818 8002D308 4680C620 */  cvt.s.w    $f24, $f24
/* D681C 8002D30C 4620A520 */  cvt.s.d    $f20, $f20
/* D6820 8002D310 0C02FF68 */  jal        func_800BFDA0
/* D6824 8002D314 4600A306 */   mov.s     $f12, $f20
/* D6828 8002D318 46000587 */  neg.s      $f22, $f0
/* D682C 8002D31C 461CB582 */  mul.s      $f22, $f22, $f28
/* D6830 8002D320 0C02F784 */  jal        func_800BDE10
/* D6834 8002D324 4600A306 */   mov.s     $f12, $f20
/* D6838 8002D328 3C048006 */  lui        $a0, %hi(D_80067710)
/* D683C 8002D32C 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D6840 8002D330 3C013CA3 */  lui        $at, 0x3ca3
/* D6844 8002D334 3421D70A */  ori        $at, $at, 0xd70a
/* D6848 8002D338 44811000 */  mtc1       $at, $f2
/* D684C 8002D33C 461C0002 */  mul.s      $f0, $f0, $f28
/* D6850 8002D340 4405D000 */  mfc1       $a1, $f26
/* D6854 8002D344 4406C000 */  mfc1       $a2, $f24
/* D6858 8002D348 4407D000 */  mfc1       $a3, $f26
/* D685C 8002D34C 2631003C */  addiu      $s1, $s1, 0x3c
/* D6860 8002D350 E7BE0018 */  swc1       $f30, 0x18($sp)
/* D6864 8002D354 00922021 */  addu       $a0, $a0, $s2
/* D6868 8002D358 E7A20010 */  swc1       $f2, 0x10($sp)
/* D686C 8002D35C E7B60014 */  swc1       $f22, 0x14($sp)
/* D6870 8002D360 0C02FD0E */  jal        func_800BF438
/* D6874 8002D364 E7A0001C */   swc1      $f0, 0x1c($sp)
/* D6878 8002D368 3C025555 */  lui        $v0, 0x5555
/* D687C 8002D36C 34425556 */  ori        $v0, $v0, 0x5556
/* D6880 8002D370 02020018 */  mult       $s0, $v0
/* D6884 8002D374 3C02DA38 */  lui        $v0, 0xda38
/* D6888 8002D378 3C068015 */  lui        $a2, %hi(gDisplayListHead)
/* D688C 8002D37C 8CC69F94 */  lw         $a2, %lo(gDisplayListHead)($a2)
/* D6890 8002D380 3C048006 */  lui        $a0, %hi(D_80067710)
/* D6894 8002D384 8C847710 */  lw         $a0, %lo(D_80067710)($a0)
/* D6898 8002D388 34420003 */  ori        $v0, $v0, 3
/* D689C 8002D38C 00002821 */  addu       $a1, $zero, $zero
/* D68A0 8002D390 00101FC3 */  sra        $v1, $s0, 0x1f
/* D68A4 8002D394 ACC20000 */  sw         $v0, ($a2)
/* D68A8 8002D398 00921021 */  addu       $v0, $a0, $s2
/* D68AC 8002D39C ACC20004 */  sw         $v0, 4($a2)
/* D68B0 8002D3A0 00005810 */  mfhi       $t3
/* D68B4 8002D3A4 01631823 */  subu       $v1, $t3, $v1
/* D68B8 8002D3A8 00031040 */  sll        $v0, $v1, 1
/* D68BC 8002D3AC 00431021 */  addu       $v0, $v0, $v1
/* D68C0 8002D3B0 02021023 */  subu       $v0, $s0, $v0
/* D68C4 8002D3B4 00021080 */  sll        $v0, $v0, 2
/* D68C8 8002D3B8 00441021 */  addu       $v0, $v0, $a0
/* D68CC 8002D3BC 8C440000 */  lw         $a0, ($v0)
/* D68D0 8002D3C0 26520040 */  addiu      $s2, $s2, 0x40
/* D68D4 8002D3C4 24C60008 */  addiu      $a2, $a2, 8
/* D68D8 8002D3C8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D68DC 8002D3CC AC269F94 */  sw         $a2, %lo(gDisplayListHead)($at)
/* D68E0 8002D3D0 0C027F77 */  jal        func_8009FDDC
/* D68E4 8002D3D4 26100001 */   addiu     $s0, $s0, 1
/* D68E8 8002D3D8 2A020006 */  slti       $v0, $s0, 6
/* D68EC 8002D3DC 1440FFC0 */  bnez       $v0, .L8002D2E0
/* D68F0 8002D3E0 00000000 */   nop
/* D68F4 8002D3E4 8FBF0074 */  lw         $ra, 0x74($sp)
/* D68F8 8002D3E8 8FB60070 */  lw         $s6, 0x70($sp)
/* D68FC 8002D3EC 8FB5006C */  lw         $s5, 0x6c($sp)
/* D6900 8002D3F0 8FB40068 */  lw         $s4, 0x68($sp)
/* D6904 8002D3F4 8FB30064 */  lw         $s3, 0x64($sp)
/* D6908 8002D3F8 8FB20060 */  lw         $s2, 0x60($sp)
/* D690C 8002D3FC 8FB1005C */  lw         $s1, 0x5c($sp)
/* D6910 8002D400 8FB00058 */  lw         $s0, 0x58($sp)
/* D6914 8002D404 D7BE00A0 */  ldc1       $f30, 0xa0($sp)
/* D6918 8002D408 D7BC0098 */  ldc1       $f28, 0x98($sp)
/* D691C 8002D40C D7BA0090 */  ldc1       $f26, 0x90($sp)
/* D6920 8002D410 D7B80088 */  ldc1       $f24, 0x88($sp)
/* D6924 8002D414 D7B60080 */  ldc1       $f22, 0x80($sp)
/* D6928 8002D418 D7B40078 */  ldc1       $f20, 0x78($sp)
/* D692C 8002D41C 03E00008 */  jr         $ra
/* D6930 8002D420 27BD00A8 */   addiu     $sp, $sp, 0xa8
/* D6934 8002D424 00000000 */  nop
/* D6938 8002D428 00000000 */  nop
/* D693C 8002D42C 00000000 */  nop
