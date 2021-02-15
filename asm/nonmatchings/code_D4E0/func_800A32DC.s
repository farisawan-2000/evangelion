.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A32DC
/* DEDC 800A32DC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* DEE0 800A32E0 3082FFFF */  andi       $v0, $a0, 0xffff
/* DEE4 800A32E4 00021080 */  sll        $v0, $v0, 2
/* DEE8 800A32E8 30A300FF */  andi       $v1, $a1, 0xff
/* DEEC 800A32EC AFBF0010 */  sw         $ra, 0x10($sp)
/* DEF0 800A32F0 3C04800E */  lui        $a0, %hi(D_800E2080)
/* DEF4 800A32F4 00822021 */  addu       $a0, $a0, $v0
/* DEF8 800A32F8 94842080 */  lhu        $a0, %lo(D_800E2080)($a0)
/* DEFC 800A32FC 3C05800E */  lui        $a1, %hi(D_800E2082)
/* DF00 800A3300 00A22821 */  addu       $a1, $a1, $v0
/* DF04 800A3304 94A52082 */  lhu        $a1, %lo(D_800E2082)($a1)
/* DF08 800A3308 30C700FF */  andi       $a3, $a2, 0xff
/* DF0C 800A330C 0C028CC9 */  jal        func_800A3324
/* DF10 800A3310 00603021 */   addu      $a2, $v1, $zero
/* DF14 800A3314 8FBF0010 */  lw         $ra, 0x10($sp)
/* DF18 800A3318 27BD0018 */  addiu      $sp, $sp, 0x18
/* DF1C 800A331C 03E00008 */  jr         $ra
/* DF20 800A3320 00000000 */   nop
