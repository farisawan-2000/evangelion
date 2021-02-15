.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AD348
/* 17F48 800AD348 24030001 */  addiu      $v1, $zero, 1
/* 17F4C 800AD34C 3C028017 */  lui        $v0, %hi(D_8016D080)
/* 17F50 800AD350 2442D080 */  addiu      $v0, $v0, %lo(D_8016D080)
/* 17F54 800AD354 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 17F58 800AD358 AC209FA8 */  sw         $zero, %lo(D_80149FA8)($at)
/* 17F5C 800AD35C 3C018017 */  lui        $at, %hi(D_8016E548)
/* 17F60 800AD360 AC20E548 */  sw         $zero, %lo(D_8016E548)($at)
/* 17F64 800AD364 3C018015 */  lui        $at, %hi(D_8014A2C0)
/* 17F68 800AD368 AC20A2C0 */  sw         $zero, %lo(D_8014A2C0)($at)
.L800AD36C:
/* 17F6C 800AD36C AC400000 */  sw         $zero, ($v0)
/* 17F70 800AD370 2463FFFF */  addiu      $v1, $v1, -1
/* 17F74 800AD374 0461FFFD */  bgez       $v1, .L800AD36C
/* 17F78 800AD378 2442FFFC */   addiu     $v0, $v0, -4
/* 17F7C 800AD37C 3C018017 */  lui        $at, %hi(D_8016D0C4)
/* 17F80 800AD380 AC20D0C4 */  sw         $zero, %lo(D_8016D0C4)($at)
/* 17F84 800AD384 3C018015 */  lui        $at, %hi(D_80149FB4)
/* 17F88 800AD388 AC209FB4 */  sw         $zero, %lo(D_80149FB4)($at)
/* 17F8C 800AD38C 3C018015 */  lui        $at, %hi(D_80149DC0)
/* 17F90 800AD390 AC209DC0 */  sw         $zero, %lo(D_80149DC0)($at)
/* 17F94 800AD394 3C018017 */  lui        $at, %hi(D_8016D084)
/* 17F98 800AD398 AC20D084 */  sw         $zero, %lo(D_8016D084)($at)
/* 17F9C 800AD39C 3C018015 */  lui        $at, %hi(D_8014A2D4)
/* 17FA0 800AD3A0 AC20A2D4 */  sw         $zero, %lo(D_8014A2D4)($at)
/* 17FA4 800AD3A4 03E00008 */  jr         $ra
/* 17FA8 800AD3A8 00000000 */   nop
