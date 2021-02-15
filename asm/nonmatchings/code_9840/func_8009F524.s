.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009F524
/* A124 8009F524 54800001 */  bnezl      $a0, .L8009F52C
/* A128 8009F528 A085002E */   sb        $a1, 0x2e($a0)
.L8009F52C:
/* A12C 8009F52C 03E00008 */  jr         $ra
/* A130 8009F530 00000000 */   nop
/* A134 8009F534 00000000 */  nop
/* A138 8009F538 00000000 */  nop
/* A13C 8009F53C 00000000 */  nop
