.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80099110
/* 3D10 80099110 34840080 */  ori        $a0, $a0, 0x80
/* 3D14 80099114 3C018017 */  lui        $at, %hi(D_8016D7F1)
/* 3D18 80099118 A024D7F1 */  sb         $a0, %lo(D_8016D7F1)($at)
/* 3D1C 8009911C 03E00008 */  jr         $ra
/* 3D20 80099120 00000000 */   nop
