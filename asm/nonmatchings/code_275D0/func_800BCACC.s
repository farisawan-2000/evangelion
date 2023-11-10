glabel func_800BCACC
/* 276CC 800BCACC 3C02800F */  lui        $v0, %hi(D_800F6130)
/* 276D0 800BCAD0 8C426130 */  lw         $v0, %lo(D_800F6130)($v0)
/* 276D4 800BCAD4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 276D8 800BCAD8 10400005 */  beqz       $v0, .L800BCAF0
/* 276DC 800BCADC AFBF0010 */   sw        $ra, 0x10($sp)
/* 276E0 800BCAE0 0C02F498 */  jal        func_800BD260
/* 276E4 800BCAE4 00000000 */   nop
/* 276E8 800BCAE8 3C01800F */  lui        $at, %hi(D_800F6130)
/* 276EC 800BCAEC AC206130 */  sw         $zero, %lo(D_800F6130)($at)
.L800BCAF0:
/* 276F0 800BCAF0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 276F4 800BCAF4 03E00008 */  jr         $ra
/* 276F8 800BCAF8 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800BCACC, . - func_800BCACC
