glabel func_800C7D60
/* 32960 800C7D60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 32964 800C7D64 AFB00010 */  sw         $s0, 0x10($sp)
/* 32968 800C7D68 3C10800F */  lui        $s0, %hi(D_800F7C40)
/* 3296C 800C7D6C 26107C40 */  addiu      $s0, $s0, %lo(D_800F7C40)
/* 32970 800C7D70 02002021 */  addu       $a0, $s0, $zero
/* 32974 800C7D74 AFBF0014 */  sw         $ra, 0x14($sp)
/* 32978 800C7D78 0C030134 */  jal        bzero
/* 3297C 800C7D7C 24050060 */   addiu     $a1, $zero, 0x60
/* 32980 800C7D80 3C038000 */  lui        $v1, %hi(D_80000300)
/* 32984 800C7D84 8C630300 */  lw         $v1, %lo(D_80000300)($v1)
/* 32988 800C7D88 3C01800F */  lui        $at, %hi(D_800F7CA0)
/* 3298C 800C7D8C AC307CA0 */  sw         $s0, %lo(D_800F7CA0)($at)
/* 32990 800C7D90 26100030 */  addiu      $s0, $s0, 0x30
/* 32994 800C7D94 24020001 */  addiu      $v0, $zero, 0x1
/* 32998 800C7D98 3C01800F */  lui        $at, %hi(D_800F7C72)
/* 3299C 800C7D9C A4227C72 */  sh         $v0, %lo(D_800F7C72)($at)
/* 329A0 800C7DA0 3C01800F */  lui        $at, %hi(D_800F7C42)
/* 329A4 800C7DA4 A4227C42 */  sh         $v0, %lo(D_800F7C42)($at)
/* 329A8 800C7DA8 3C028000 */  lui        $v0, (0x80000000 >> 16)
/* 329AC 800C7DAC 3C01800F */  lui        $at, %hi(D_800F7CA4)
/* 329B0 800C7DB0 AC307CA4 */  sw         $s0, %lo(D_800F7CA4)($at)
/* 329B4 800C7DB4 3C01800F */  lui        $at, %hi(D_800F7C74)
/* 329B8 800C7DB8 AC227C74 */  sw         $v0, %lo(D_800F7C74)($at)
/* 329BC 800C7DBC 3C01800F */  lui        $at, %hi(D_800F7C44)
/* 329C0 800C7DC0 AC227C44 */  sw         $v0, %lo(D_800F7C44)($at)
/* 329C4 800C7DC4 14600004 */  bnez       $v1, .L800C7DD8
/* 329C8 800C7DC8 24020002 */   addiu     $v0, $zero, 0x2
/* 329CC 800C7DCC 3C02800F */  lui        $v0, %hi(D_800F7D00)
/* 329D0 800C7DD0 08031F7D */  j          .L800C7DF4
/* 329D4 800C7DD4 24427D00 */   addiu     $v0, $v0, %lo(D_800F7D00)
.L800C7DD8:
/* 329D8 800C7DD8 14620004 */  bne        $v1, $v0, .L800C7DEC
/* 329DC 800C7DDC 00000000 */   nop
/* 329E0 800C7DE0 3C02800F */  lui        $v0, %hi(D_800F7D50)
/* 329E4 800C7DE4 08031F7D */  j          .L800C7DF4
/* 329E8 800C7DE8 24427D50 */   addiu     $v0, $v0, %lo(D_800F7D50)
.L800C7DEC:
/* 329EC 800C7DEC 3C02800F */  lui        $v0, %hi(D_800F7CB0)
/* 329F0 800C7DF0 24427CB0 */  addiu      $v0, $v0, %lo(D_800F7CB0)
.L800C7DF4:
/* 329F4 800C7DF4 3C01800F */  lui        $at, %hi(D_800F7C78)
/* 329F8 800C7DF8 AC227C78 */  sw         $v0, %lo(D_800F7C78)($at)
/* 329FC 800C7DFC 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 32A00 800C7E00 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 32A04 800C7E04 8C640008 */  lw         $a0, 0x8($v1)
/* 32A08 800C7E08 24020020 */  addiu      $v0, $zero, 0x20
/* 32A0C 800C7E0C A4620000 */  sh         $v0, 0x0($v1)
/* 32A10 800C7E10 8C820004 */  lw         $v0, 0x4($a0)
/* 32A14 800C7E14 3C04A440 */  lui        $a0, (0xA4400010 >> 16)
/* 32A18 800C7E18 34840010 */  ori        $a0, $a0, (0xA4400010 & 0xFFFF)
/* 32A1C 800C7E1C AC62000C */  sw         $v0, 0xC($v1)
/* 32A20 800C7E20 8C820000 */  lw         $v0, 0x0($a0)
/* 32A24 800C7E24 2C42000B */  sltiu      $v0, $v0, 0xB
/* 32A28 800C7E28 14400007 */  bnez       $v0, .L800C7E48
/* 32A2C 800C7E2C 3C02A440 */   lui       $v0, %hi(D_A4400000)
/* 32A30 800C7E30 3C03A440 */  lui        $v1, (0xA4400010 >> 16)
/* 32A34 800C7E34 34630010 */  ori        $v1, $v1, (0xA4400010 & 0xFFFF)
.L800C7E38:
/* 32A38 800C7E38 8C620000 */  lw         $v0, 0x0($v1)
/* 32A3C 800C7E3C 2C42000B */  sltiu      $v0, $v0, 0xB
/* 32A40 800C7E40 1040FFFD */  beqz       $v0, .L800C7E38
/* 32A44 800C7E44 3C02A440 */   lui       $v0, %hi(D_A4400000)
.L800C7E48:
/* 32A48 800C7E48 AC400000 */  sw         $zero, %lo(D_A4400000)($v0)
/* 32A4C 800C7E4C 0C030A54 */  jal        func_800C2950
/* 32A50 800C7E50 00000000 */   nop
/* 32A54 800C7E54 8FBF0014 */  lw         $ra, 0x14($sp)
/* 32A58 800C7E58 8FB00010 */  lw         $s0, 0x10($sp)
/* 32A5C 800C7E5C 03E00008 */  jr         $ra
/* 32A60 800C7E60 27BD0018 */   addiu     $sp, $sp, 0x18
/* 32A64 800C7E64 00000000 */  nop
/* 32A68 800C7E68 00000000 */  nop
/* 32A6C 800C7E6C 00000000 */  nop
.size func_800C7D60, . - func_800C7D60
