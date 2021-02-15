.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B618C
/* 20D8C 800B618C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 20D90 800B6190 3C058017 */  lui        $a1, %hi(D_8016E2ED)
/* 20D94 800B6194 24A5E2ED */  addiu      $a1, $a1, %lo(D_8016E2ED)
/* 20D98 800B6198 AFBF0024 */  sw         $ra, 0x24($sp)
/* 20D9C 800B619C AFB00020 */  sw         $s0, 0x20($sp)
/* 20DA0 800B61A0 90A30000 */  lbu        $v1, ($a1)
/* 20DA4 800B61A4 8C90000C */  lw         $s0, 0xc($a0)
/* 20DA8 800B61A8 24020001 */  addiu      $v0, $zero, 1
/* 20DAC 800B61AC 10620015 */  beq        $v1, $v0, .L800B6204
/* 20DB0 800B61B0 27A40010 */   addiu     $a0, $sp, 0x10
/* 20DB4 800B61B4 24A5FA9F */  addiu      $a1, $a1, -0x561
/* 20DB8 800B61B8 0C02D750 */  jal        func_800B5D40
/* 20DBC 800B61BC 24060001 */   addiu     $a2, $zero, 1
.L800B61C0:
/* 20DC0 800B61C0 0C0308A4 */  jal        func_800C2290
/* 20DC4 800B61C4 00000000 */   nop
/* 20DC8 800B61C8 10500005 */  beq        $v0, $s0, .L800B61E0
/* 20DCC 800B61CC 00000000 */   nop
/* 20DD0 800B61D0 0C0308B4 */  jal        func_800C22D0
/* 20DD4 800B61D4 00000000 */   nop
/* 20DD8 800B61D8 14500008 */  bne        $v0, $s0, .L800B61FC
/* 20DDC 800B61DC 00000000 */   nop
.L800B61E0:
/* 20DE0 800B61E0 3C048017 */  lui        $a0, %hi(D_8016DD8C)
/* 20DE4 800B61E4 2484DD8C */  addiu      $a0, $a0, %lo(D_8016DD8C)
/* 20DE8 800B61E8 00002821 */  addu       $a1, $zero, $zero
/* 20DEC 800B61EC 0C030200 */  jal        func_800C0800
/* 20DF0 800B61F0 24060001 */   addiu     $a2, $zero, 1
/* 20DF4 800B61F4 0802D870 */  j          .L800B61C0
/* 20DF8 800B61F8 00000000 */   nop
.L800B61FC:
/* 20DFC 800B61FC 0C02D784 */  jal        func_800B5E10
/* 20E00 800B6200 27A40010 */   addiu     $a0, $sp, 0x10
.L800B6204:
/* 20E04 800B6204 8FBF0024 */  lw         $ra, 0x24($sp)
/* 20E08 800B6208 8FB00020 */  lw         $s0, 0x20($sp)
/* 20E0C 800B620C 03E00008 */  jr         $ra
/* 20E10 800B6210 27BD0028 */   addiu     $sp, $sp, 0x28
