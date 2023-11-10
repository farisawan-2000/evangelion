glabel func_800BCAA0
/* 276A0 800BCAA0 3C02800F */  lui        $v0, %hi(D_800F6130)
/* 276A4 800BCAA4 8C426130 */  lw         $v0, %lo(D_800F6130)($v0)
/* 276A8 800BCAA8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 276AC 800BCAAC 14400004 */  bnez       $v0, .L800BCAC0
/* 276B0 800BCAB0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 276B4 800BCAB4 3C01800F */  lui        $at, %hi(D_800F6130)
/* 276B8 800BCAB8 0C02F308 */  jal        func_800BCC20
/* 276BC 800BCABC AC246130 */   sw        $a0, %lo(D_800F6130)($at)
.L800BCAC0:
/* 276C0 800BCAC0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 276C4 800BCAC4 03E00008 */  jr         $ra
/* 276C8 800BCAC8 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800BCAA0, . - func_800BCAA0
