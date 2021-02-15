.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AB158
/* 15D58 800AB158 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 15D5C 800AB15C 308400FF */  andi       $a0, $a0, 0xff
/* 15D60 800AB160 000410C0 */  sll        $v0, $a0, 3
/* 15D64 800AB164 00441023 */  subu       $v0, $v0, $a0
/* 15D68 800AB168 AFB10014 */  sw         $s1, 0x14($sp)
/* 15D6C 800AB16C 24510007 */  addiu      $s1, $v0, 7
/* 15D70 800AB170 000210C0 */  sll        $v0, $v0, 3
/* 15D74 800AB174 3C038017 */  lui        $v1, %hi(D_8016D6C0)
/* 15D78 800AB178 2463D6C0 */  addiu      $v1, $v1, %lo(D_8016D6C0)
/* 15D7C 800AB17C AFB00010 */  sw         $s0, 0x10($sp)
/* 15D80 800AB180 AFBF0018 */  sw         $ra, 0x18($sp)
/* 15D84 800AB184 0C02DFA6 */  jal        func_800B7E98
/* 15D88 800AB188 00438021 */   addu      $s0, $v0, $v1
/* 15D8C 800AB18C 00401821 */  addu       $v1, $v0, $zero
/* 15D90 800AB190 1060000E */  beqz       $v1, .L800AB1CC
/* 15D94 800AB194 00000000 */   nop
/* 15D98 800AB198 1C600006 */  bgtz       $v1, .L800AB1B4
/* 15D9C 800AB19C 24020001 */   addiu     $v0, $zero, 1
/* 15DA0 800AB1A0 2402FFFF */  addiu      $v0, $zero, -1
/* 15DA4 800AB1A4 1062000D */  beq        $v1, $v0, .L800AB1DC
/* 15DA8 800AB1A8 322400FF */   andi      $a0, $s1, 0xff
/* 15DAC 800AB1AC 0802AC7C */  j          .L800AB1F0
/* 15DB0 800AB1B0 00000000 */   nop
.L800AB1B4:
/* 15DB4 800AB1B4 1462000E */  bne        $v1, $v0, .L800AB1F0
/* 15DB8 800AB1B8 322400FF */   andi      $a0, $s1, 0xff
/* 15DBC 800AB1BC 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15DC0 800AB1C0 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 15DC4 800AB1C4 0802AC79 */  j          .L800AB1E4
/* 15DC8 800AB1C8 00000000 */   nop
.L800AB1CC:
/* 15DCC 800AB1CC 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15DD0 800AB1D0 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15DD4 800AB1D4 0802AC79 */  j          .L800AB1E4
/* 15DD8 800AB1D8 00000000 */   nop
.L800AB1DC:
/* 15DDC 800AB1DC 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15DE0 800AB1E0 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AB1E4:
/* 15DE4 800AB1E4 0C02A793 */  jal        func_800A9E4C
/* 15DE8 800AB1E8 00000000 */   nop
/* 15DEC 800AB1EC 322400FF */  andi       $a0, $s1, 0xff
.L800AB1F0:
/* 15DF0 800AB1F0 02002821 */  addu       $a1, $s0, $zero
/* 15DF4 800AB1F4 0C02DF90 */  jal        func_800B7E40
/* 15DF8 800AB1F8 24060038 */   addiu     $a2, $zero, 0x38
/* 15DFC 800AB1FC 00401821 */  addu       $v1, $v0, $zero
/* 15E00 800AB200 2402FFFF */  addiu      $v0, $zero, -1
/* 15E04 800AB204 10620007 */  beq        $v1, $v0, .L800AB224
/* 15E08 800AB208 24020008 */   addiu     $v0, $zero, 8
/* 15E0C 800AB20C 14620009 */  bne        $v1, $v0, .L800AB234
/* 15E10 800AB210 00000000 */   nop
/* 15E14 800AB214 3C048010 */  lui        $a0, %hi(D_800FB1C0)
/* 15E18 800AB218 2484B1C0 */  addiu      $a0, $a0, %lo(D_800FB1C0)
/* 15E1C 800AB21C 0802AC8B */  j          .L800AB22C
/* 15E20 800AB220 00000000 */   nop
.L800AB224:
/* 15E24 800AB224 3C048010 */  lui        $a0, %hi(D_800FB1E4)
/* 15E28 800AB228 2484B1E4 */  addiu      $a0, $a0, %lo(D_800FB1E4)
.L800AB22C:
/* 15E2C 800AB22C 0C02A793 */  jal        func_800A9E4C
/* 15E30 800AB230 00000000 */   nop
.L800AB234:
/* 15E34 800AB234 8FBF0018 */  lw         $ra, 0x18($sp)
/* 15E38 800AB238 8FB10014 */  lw         $s1, 0x14($sp)
/* 15E3C 800AB23C 8FB00010 */  lw         $s0, 0x10($sp)
/* 15E40 800AB240 27BD0020 */  addiu      $sp, $sp, 0x20
/* 15E44 800AB244 03E00008 */  jr         $ra
/* 15E48 800AB248 00000000 */   nop
