glabel func_800B4D14
/* 1F914 800B4D14 3C02800F */  lui        $v0, %hi(D_800F17F0)
/* 1F918 800B4D18 8C4217F0 */  lw         $v0, %lo(D_800F17F0)($v0)
/* 1F91C 800B4D1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F920 800B4D20 10400007 */  beqz       $v0, .L800B4D40
/* 1F924 800B4D24 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1F928 800B4D28 0C02D3E0 */  jal        func_800B4F80
/* 1F92C 800B4D2C 00000000 */   nop
/* 1F930 800B4D30 3C01800F */  lui        $at, %hi(D_800F17F0)
/* 1F934 800B4D34 AC2017F0 */  sw         $zero, %lo(D_800F17F0)($at)
/* 1F938 800B4D38 3C01800F */  lui        $at, %hi(D_800F17F4)
/* 1F93C 800B4D3C AC2017F4 */  sw         $zero, %lo(D_800F17F4)($at)
.L800B4D40:
/* 1F940 800B4D40 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1F944 800B4D44 03E00008 */  jr         $ra
/* 1F948 800B4D48 27BD0018 */   addiu     $sp, $sp, 0x18
/* 1F94C 800B4D4C 00000000 */  nop
.size func_800B4D14, . - func_800B4D14
