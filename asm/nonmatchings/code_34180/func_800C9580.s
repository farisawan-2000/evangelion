.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C9580
/* 34180 800C9580 3C02A480 */  lui        $v0, 0xa480
/* 34184 800C9584 34420018 */  ori        $v0, $v0, 0x18
/* 34188 800C9588 8C420000 */  lw         $v0, ($v0)
/* 3418C 800C958C 30420003 */  andi       $v0, $v0, 3
/* 34190 800C9590 03E00008 */  jr         $ra
/* 34194 800C9594 0002102B */   sltu      $v0, $zero, $v0
/* 34198 800C9598 00000000 */  nop
/* 3419C 800C959C 00000000 */  nop
