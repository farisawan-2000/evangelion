.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A3324
/* DF24 800A3324 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DF28 800A3328 AFB00010 */  sw         $s0, 0x10($sp)
/* DF2C 800A332C 00A08021 */  addu       $s0, $a1, $zero
/* DF30 800A3330 3082FFFF */  andi       $v0, $a0, 0xffff
/* DF34 800A3334 3C04001E */  lui        $a0, 0x1e
/* DF38 800A3338 24849000 */  addiu      $a0, $a0, -0x7000
/* DF3C 800A333C 3C05800D */  lui        $a1, %hi(D_800D6AD0)
/* DF40 800A3340 24A56AD0 */  addiu      $a1, $a1, %lo(D_800D6AD0)
/* DF44 800A3344 AFB20018 */  sw         $s2, 0x18($sp)
/* DF48 800A3348 00C09021 */  addu       $s2, $a2, $zero
/* DF4C 800A334C 00403021 */  addu       $a2, $v0, $zero
/* DF50 800A3350 AFB10014 */  sw         $s1, 0x14($sp)
/* DF54 800A3354 30F100FF */  andi       $s1, $a3, 0xff
/* DF58 800A3358 AFBF001C */  sw         $ra, 0x1c($sp)
/* DF5C 800A335C 0C02648E */  jal        func_80099238
/* DF60 800A3360 02203821 */   addu      $a3, $s1, $zero
/* DF64 800A3364 00108400 */  sll        $s0, $s0, 0x10
/* DF68 800A3368 00102403 */  sra        $a0, $s0, 0x10
/* DF6C 800A336C 02202821 */  addu       $a1, $s1, $zero
/* DF70 800A3370 0C0298D4 */  jal        func_800A6350
/* DF74 800A3374 00408021 */   addu      $s0, $v0, $zero
/* DF78 800A3378 02002021 */  addu       $a0, $s0, $zero
/* DF7C 800A337C 00402821 */  addu       $a1, $v0, $zero
/* DF80 800A3380 324600FF */  andi       $a2, $s2, 0xff
/* DF84 800A3384 0C028CEA */  jal        func_800A33A8
/* DF88 800A3388 02203821 */   addu      $a3, $s1, $zero
/* DF8C 800A338C 8FBF001C */  lw         $ra, 0x1c($sp)
/* DF90 800A3390 8FB20018 */  lw         $s2, 0x18($sp)
/* DF94 800A3394 8FB10014 */  lw         $s1, 0x14($sp)
/* DF98 800A3398 8FB00010 */  lw         $s0, 0x10($sp)
/* DF9C 800A339C 27BD0020 */  addiu      $sp, $sp, 0x20
/* DFA0 800A33A0 03E00008 */  jr         $ra
/* DFA4 800A33A4 00000000 */   nop
