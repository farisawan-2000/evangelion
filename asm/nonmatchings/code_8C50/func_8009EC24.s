.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009EC24
/* 9824 8009EC24 54800001 */  bnezl      $a0, .L8009EC2C
/* 9828 8009EC28 A085002E */   sb        $a1, 0x2e($a0)
.L8009EC2C:
/* 982C 8009EC2C 03E00008 */  jr         $ra
/* 9830 8009EC30 00000000 */   nop
/* 9834 8009EC34 00000000 */  nop
/* 9838 8009EC38 00000000 */  nop
/* 983C 8009EC3C 00000000 */  nop
