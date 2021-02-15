.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097650
/* 2250 80097650 308400FF */  andi       $a0, $a0, 0xff
/* 2254 80097654 00042080 */  sll        $a0, $a0, 2
/* 2258 80097658 3C028010 */  lui        $v0, %hi(D_800FF360)
/* 225C 8009765C 00441021 */  addu       $v0, $v0, $a0
/* 2260 80097660 8C42F360 */  lw         $v0, %lo(D_800FF360)($v0)
/* 2264 80097664 03E00008 */  jr         $ra
/* 2268 80097668 00000000 */   nop
/* 226C 8009766C 00000000 */  nop
