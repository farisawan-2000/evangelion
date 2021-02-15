.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C7940
/* 32540 800C7940 3C02A404 */  lui        $v0, 0xa404
/* 32544 800C7944 34420010 */  ori        $v0, $v0, 0x10
/* 32548 800C7948 8C420000 */  lw         $v0, ($v0)
/* 3254C 800C794C 3042001C */  andi       $v0, $v0, 0x1c
/* 32550 800C7950 03E00008 */  jr         $ra
/* 32554 800C7954 0002102B */   sltu      $v0, $zero, $v0
/* 32558 800C7958 00000000 */  nop
/* 3255C 800C795C 00000000 */  nop
