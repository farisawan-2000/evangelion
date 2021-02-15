.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C6740
/* 31340 800C6740 3C0A800F */  lui        $t2, %hi(D_800F7BB0)
/* 31344 800C6744 254A7BB0 */  addiu      $t2, $t2, %lo(D_800F7BB0)
/* 31348 800C6748 8D4B0000 */  lw         $t3, ($t2)
/* 3134C 800C674C 316BFF00 */  andi       $t3, $t3, 0xff00
/* 31350 800C6750 40086000 */  mfc0       $t0, $12
/* 31354 800C6754 2401FFFE */  addiu      $at, $zero, -2
/* 31358 800C6758 01014824 */  and        $t1, $t0, $at
/* 3135C 800C675C 40896000 */  mtc0       $t1, $12
/* 31360 800C6760 31020001 */  andi       $v0, $t0, 1
/* 31364 800C6764 8D480000 */  lw         $t0, ($t2)
/* 31368 800C6768 3108FF00 */  andi       $t0, $t0, 0xff00
/* 3136C 800C676C 110B000E */  beq        $t0, $t3, .L800C67A8
/* 31370 800C6770 3C0A800F */   lui       $t2, %hi(D_800F69C0)
/* 31374 800C6774 254A69C0 */  addiu      $t2, $t2, %lo(D_800F69C0)
/* 31378 800C6778 8D490118 */  lw         $t1, 0x118($t2)
/* 3137C 800C677C 312AFF00 */  andi       $t2, $t1, 0xff00
/* 31380 800C6780 01485024 */  and        $t2, $t2, $t0
/* 31384 800C6784 3C01FFFF */  lui        $at, 0xffff
/* 31388 800C6788 342100FF */  ori        $at, $at, 0xff
/* 3138C 800C678C 01214824 */  and        $t1, $t1, $at
/* 31390 800C6790 012A4825 */  or         $t1, $t1, $t2
/* 31394 800C6794 2401FFFE */  addiu      $at, $zero, -2
/* 31398 800C6798 01214824 */  and        $t1, $t1, $at
/* 3139C 800C679C 40896000 */  mtc0       $t1, $12
/* 313A0 800C67A0 00000000 */  nop
/* 313A4 800C67A4 00000000 */  nop
.L800C67A8:
/* 313A8 800C67A8 03E00008 */  jr         $ra
/* 313AC 800C67AC 00000000 */   nop
