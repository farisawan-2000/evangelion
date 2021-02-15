.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AA550
/* 15150 800AA550 3C028015 */  lui        $v0, %hi(D_80149E2D)
/* 15154 800AA554 90429E2D */  lbu        $v0, %lo(D_80149E2D)($v0)
/* 15158 800AA558 3C038015 */  lui        $v1, %hi(D_80149E2E)
/* 1515C 800AA55C 90639E2E */  lbu        $v1, %lo(D_80149E2E)($v1)
/* 15160 800AA560 3C048015 */  lui        $a0, %hi(D_80149E2B)
/* 15164 800AA564 90849E2B */  lbu        $a0, %lo(D_80149E2B)($a0)
/* 15168 800AA568 3C058015 */  lui        $a1, %hi(D_80149E29)
/* 1516C 800AA56C 90A59E29 */  lbu        $a1, %lo(D_80149E29)($a1)
/* 15170 800AA570 3C068015 */  lui        $a2, %hi(D_80149E2A)
/* 15174 800AA574 90C69E2A */  lbu        $a2, %lo(D_80149E2A)($a2)
/* 15178 800AA578 3C018017 */  lui        $at, %hi(D_8016E590)
/* 1517C 800AA57C AC22E590 */  sw         $v0, %lo(D_8016E590)($at)
/* 15180 800AA580 3C018015 */  lui        $at, %hi(D_80149BC0)
/* 15184 800AA584 AC239BC0 */  sw         $v1, %lo(D_80149BC0)($at)
/* 15188 800AA588 3C018015 */  lui        $at, %hi(D_8014A2D0)
/* 1518C 800AA58C A424A2D0 */  sh         $a0, %lo(D_8014A2D0)($at)
/* 15190 800AA590 3C018015 */  lui        $at, %hi(D_80149F8C)
/* 15194 800AA594 A4259F8C */  sh         $a1, %lo(D_80149F8C)($at)
/* 15198 800AA598 3C018017 */  lui        $at, %hi(D_8016D0C0)
/* 1519C 800AA59C A426D0C0 */  sh         $a2, %lo(D_8016D0C0)($at)
/* 151A0 800AA5A0 03E00008 */  jr         $ra
/* 151A4 800AA5A4 00000000 */   nop
