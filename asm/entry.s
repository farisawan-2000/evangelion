.include "macro.inc"

.section .text, "ax"
.set noreorder

glabel entry_point
/* 1000 80096400 3C088010 */  lui        $t0, %hi(_mainSegNoloadStart)
/* 1004 80096404 2508F2E0 */  addiu      $t0, $t0, %lo(_mainSegNoloadStart)
/* 1008 80096408 3C090007 */  lui        $t1, 7
/* 100C 8009640C 25297300 */  addiu      $t1, $t1, 0x7300
.L80096410:
/* 1010 80096410 AD000000 */  sw         $zero, ($t0)
/* 1014 80096414 AD000004 */  sw         $zero, 4($t0)
/* 1018 80096418 21080008 */  addi       $t0, $t0, 8
/* 101C 8009641C 2129FFF8 */  addi       $t1, $t1, -8
/* 1020 80096420 1520FFFB */  bnez       $t1, .L80096410
/* 1024 80096424 00000000 */   nop
/* 1028 80096428 3C0A800B */  lui        $t2, %hi(evangelion_main)
/* 102C 8009642C 254AD7B0 */  addiu      $t2, $t2, %lo(evangelion_main)
/* 1030 80096430 3C1D8015 */  lui        $sp, %hi(D_8014C370)
/* 1034 80096434 01400008 */  jr         $t2
/* 1038 80096438 27BDC370 */   addiu     $sp, $sp, %lo(D_8014C370)
/* 103C 8009643C 00000000 */  nop
/* 1040 80096440 00000000 */  nop
/* 1044 80096444 00000000 */  nop
/* 1048 80096448 00000000 */  nop
/* 104C 8009644C 00000000 */  nop
