.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009AD6C
/* 596C 8009AD6C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5970 8009AD70 AFB10014 */  sw         $s1, 0x14($sp)
/* 5974 8009AD74 00008821 */  addu       $s1, $zero, $zero
/* 5978 8009AD78 AFB00010 */  sw         $s0, 0x10($sp)
/* 597C 8009AD7C 3C108015 */  lui        $s0, %hi(D_8014A140)
/* 5980 8009AD80 2610A140 */  addiu      $s0, $s0, %lo(D_8014A140)
/* 5984 8009AD84 AFBF0018 */  sw         $ra, 0x18($sp)
.L8009AD88:
/* 5988 8009AD88 8E020000 */  lw         $v0, ($s0)
/* 598C 8009AD8C 14400003 */  bnez       $v0, .L8009AD9C
/* 5990 8009AD90 26310001 */   addiu     $s1, $s1, 1
/* 5994 8009AD94 0C02DF78 */  jal        func_800B7DE0
/* 5998 8009AD98 00000000 */   nop
.L8009AD9C:
/* 599C 8009AD9C 2A220004 */  slti       $v0, $s1, 4
/* 59A0 8009ADA0 1440FFF9 */  bnez       $v0, .L8009AD88
/* 59A4 8009ADA4 26100004 */   addiu     $s0, $s0, 4
/* 59A8 8009ADA8 8FBF0018 */  lw         $ra, 0x18($sp)
/* 59AC 8009ADAC 8FB10014 */  lw         $s1, 0x14($sp)
/* 59B0 8009ADB0 8FB00010 */  lw         $s0, 0x10($sp)
/* 59B4 8009ADB4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 59B8 8009ADB8 03E00008 */  jr         $ra
/* 59BC 8009ADBC 00000000 */   nop
