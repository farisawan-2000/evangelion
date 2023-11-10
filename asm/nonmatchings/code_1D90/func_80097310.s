glabel func_80097310
/* 1F10 80097310 308400FF */  andi       $a0, $a0, 0xFF
/* 1F14 80097314 00041940 */  sll        $v1, $a0, 5
/* 1F18 80097318 3C028010 */  lui        $v0, %hi(D_800FF320)
/* 1F1C 8009731C 2442F320 */  addiu      $v0, $v0, %lo(D_800FF320)
/* 1F20 80097320 00621021 */  addu       $v0, $v1, $v0
/* 1F24 80097324 3C018010 */  lui        $at, %hi(D_800FF2E4)
/* 1F28 80097328 00230821 */  addu       $at, $at, $v1
/* 1F2C 8009732C AC22F2E4 */  sw         $v0, %lo(D_800FF2E4)($at)
/* 1F30 80097330 3C028010 */  lui        $v0, %hi(_mainSegNoloadStart)
/* 1F34 80097334 2442F2E0 */  addiu      $v0, $v0, %lo(_mainSegNoloadStart)
/* 1F38 80097338 00621021 */  addu       $v0, $v1, $v0
/* 1F3C 8009733C 00042080 */  sll        $a0, $a0, 2
/* 1F40 80097340 3C018010 */  lui        $at, %hi(_mainSegNoloadStart)
/* 1F44 80097344 00230821 */  addu       $at, $at, $v1
/* 1F48 80097348 AC20F2E0 */  sw         $zero, %lo(_mainSegNoloadStart)($at)
/* 1F4C 8009734C 3C018010 */  lui        $at, %hi(D_800FF320)
/* 1F50 80097350 00230821 */  addu       $at, $at, $v1
/* 1F54 80097354 AC22F320 */  sw         $v0, %lo(D_800FF320)($at)
/* 1F58 80097358 3C018010 */  lui        $at, %hi(D_800FF324)
/* 1F5C 8009735C 00230821 */  addu       $at, $at, $v1
/* 1F60 80097360 AC20F324 */  sw         $zero, %lo(D_800FF324)($at)
/* 1F64 80097364 3C018010 */  lui        $at, %hi(D_800FF360)
/* 1F68 80097368 00240821 */  addu       $at, $at, $a0
/* 1F6C 8009736C AC20F360 */  sw         $zero, %lo(D_800FF360)($at)
/* 1F70 80097370 03E00008 */  jr         $ra
/* 1F74 80097374 00000000 */   nop
.size func_80097310, . - func_80097310
