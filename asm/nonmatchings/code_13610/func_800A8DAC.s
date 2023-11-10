glabel func_800A8DAC
/* 139AC 800A8DAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139B0 800A8DB0 AFB00010 */  sw         $s0, 0x10($sp)
/* 139B4 800A8DB4 3C108015 */  lui        $s0, %hi(D_8014A150)
/* 139B8 800A8DB8 2610A150 */  addiu      $s0, $s0, %lo(D_8014A150)
/* 139BC 800A8DBC AFBF0014 */  sw         $ra, 0x14($sp)
/* 139C0 800A8DC0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 139C4 800A8DC4 AC309F94 */  sw         $s0, %lo(gDisplayListHead)($at)
/* 139C8 800A8DC8 0C02701B */  jal        func_8009C06C
/* 139CC 800A8DCC 00000000 */   nop
/* 139D0 800A8DD0 0C027070 */  jal        func_8009C1C0
/* 139D4 800A8DD4 00000000 */   nop
/* 139D8 800A8DD8 3C038015 */  lui        $v1, %hi(gDisplayListHead)
/* 139DC 800A8DDC 8C639F94 */  lw         $v1, %lo(gDisplayListHead)($v1)
/* 139E0 800A8DE0 02002021 */  addu       $a0, $s0, $zero
/* 139E4 800A8DE4 00003021 */  addu       $a2, $zero, $zero
/* 139E8 800A8DE8 00003821 */  addu       $a3, $zero, $zero
/* 139EC 800A8DEC 24620008 */  addiu      $v0, $v1, 0x8
/* 139F0 800A8DF0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 139F4 800A8DF4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* 139F8 800A8DF8 3C02E900 */  lui        $v0, (0xE9000000 >> 16)
/* 139FC 800A8DFC 24650010 */  addiu      $a1, $v1, 0x10
/* 13A00 800A8E00 AC620000 */  sw         $v0, 0x0($v1)
/* 13A04 800A8E04 3C02DF00 */  lui        $v0, (0xDF000000 >> 16)
/* 13A08 800A8E08 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* 13A0C 800A8E0C AC259F94 */  sw         $a1, %lo(gDisplayListHead)($at)
/* 13A10 800A8E10 00B02823 */  subu       $a1, $a1, $s0
/* 13A14 800A8E14 000528C3 */  sra        $a1, $a1, 3
/* 13A18 800A8E18 000528C0 */  sll        $a1, $a1, 3
/* 13A1C 800A8E1C AC600004 */  sw         $zero, 0x4($v1)
/* 13A20 800A8E20 AC620008 */  sw         $v0, 0x8($v1)
/* 13A24 800A8E24 0C02D99B */  jal        func_800B666C
/* 13A28 800A8E28 AC60000C */   sw        $zero, 0xC($v1)
/* 13A2C 800A8E2C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 13A30 800A8E30 8FB00010 */  lw         $s0, 0x10($sp)
/* 13A34 800A8E34 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13A38 800A8E38 03E00008 */  jr         $ra
/* 13A3C 800A8E3C 00000000 */   nop
.size func_800A8DAC, . - func_800A8DAC
