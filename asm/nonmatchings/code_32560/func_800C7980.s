.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7980
/* 32580 800C7980 3C02A404 */  lui        $v0, 0xa404
/* 32584 800C7984 34420010 */  ori        $v0, $v0, 0x10
/* 32588 800C7988 8C420000 */  lw         $v0, ($v0)
/* 3258C 800C798C 30420001 */  andi       $v0, $v0, 1
/* 32590 800C7990 10400004 */  beqz       $v0, .L800C79A4
/* 32594 800C7994 3C02A408 */   lui       $v0, 0xa408
/* 32598 800C7998 AC440000 */  sw         $a0, ($v0)
/* 3259C 800C799C 08031E6A */  j          .L800C79A8
/* 325A0 800C79A0 00001021 */   addu      $v0, $zero, $zero
.L800C79A4:
/* 325A4 800C79A4 2402FFFF */  addiu      $v0, $zero, -1
.L800C79A8:
/* 325A8 800C79A8 03E00008 */  jr         $ra
/* 325AC 800C79AC 00000000 */   nop
