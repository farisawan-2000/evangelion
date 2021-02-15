.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B282C
/* 1D42C 800B282C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D430 800B2830 AFA40010 */  sw         $a0, 0x10($sp)
/* 1D434 800B2834 00002021 */  addu       $a0, $zero, $zero
/* 1D438 800B2838 00002821 */  addu       $a1, $zero, $zero
/* 1D43C 800B283C 3C068010 */  lui        $a2, %hi(D_80102BB0)
/* 1D440 800B2840 24C62BB0 */  addiu      $a2, $a2, %lo(D_80102BB0)
/* 1D444 800B2844 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1D448 800B2848 0C02F2E4 */  jal        func_800BCB90
/* 1D44C 800B284C 24070001 */   addiu     $a3, $zero, 1
/* 1D450 800B2850 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1D454 800B2854 03E00008 */  jr         $ra
/* 1D458 800B2858 27BD0020 */   addiu     $sp, $sp, 0x20
