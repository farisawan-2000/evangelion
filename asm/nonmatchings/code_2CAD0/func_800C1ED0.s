.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C1ED0
/* 2CAD0 800C1ED0 3C02800F */  lui        $v0, %hi(D_800F69D0)
/* 2CAD4 800C1ED4 8C4269D0 */  lw         $v0, %lo(D_800F69D0)($v0)
/* 2CAD8 800C1ED8 00002021 */  addu       $a0, $zero, $zero
/* 2CADC 800C1EDC 00002821 */  addu       $a1, $zero, $zero
/* 2CAE0 800C1EE0 3C018015 */  lui        $at, %hi(D_8014A0A8)
/* 2CAE4 800C1EE4 AC24A0A8 */  sw         $a0, %lo(D_8014A0A8)($at)
/* 2CAE8 800C1EE8 3C018015 */  lui        $at, %hi(D_8014A0AC)
/* 2CAEC 800C1EEC AC25A0AC */  sw         $a1, %lo(D_8014A0AC)($at)
/* 2CAF0 800C1EF0 3C018015 */  lui        $at, %hi(D_80149BB0)
/* 2CAF4 800C1EF4 AC209BB0 */  sw         $zero, %lo(D_80149BB0)($at)
/* 2CAF8 800C1EF8 3C018015 */  lui        $at, %hi(D_80149F88)
/* 2CAFC 800C1EFC AC209F88 */  sw         $zero, %lo(D_80149F88)($at)
/* 2CB00 800C1F00 AC440010 */  sw         $a0, 0x10($v0)
/* 2CB04 800C1F04 AC450014 */  sw         $a1, 0x14($v0)
/* 2CB08 800C1F08 AC440008 */  sw         $a0, 8($v0)
/* 2CB0C 800C1F0C AC45000C */  sw         $a1, 0xc($v0)
/* 2CB10 800C1F10 AC420004 */  sw         $v0, 4($v0)
/* 2CB14 800C1F14 AC420000 */  sw         $v0, ($v0)
/* 2CB18 800C1F18 AC400018 */  sw         $zero, 0x18($v0)
/* 2CB1C 800C1F1C 03E00008 */  jr         $ra
/* 2CB20 800C1F20 AC40001C */   sw        $zero, 0x1c($v0)
