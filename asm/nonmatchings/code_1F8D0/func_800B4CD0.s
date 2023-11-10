glabel func_800B4CD0
/* 1F8D0 800B4CD0 3C02800F */  lui        $v0, %hi(D_800F17F0)
/* 1F8D4 800B4CD4 8C4217F0 */  lw         $v0, %lo(D_800F17F0)($v0)
/* 1F8D8 800B4CD8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F8DC 800B4CDC 1440000A */  bnez       $v0, .L800B4D08
/* 1F8E0 800B4CE0 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1F8E4 800B4CE4 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1F8E8 800B4CE8 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1F8EC 800B4CEC 3C01800F */  lui        $at, %hi(D_800F17F0)
/* 1F8F0 800B4CF0 14400005 */  bnez       $v0, .L800B4D08
/* 1F8F4 800B4CF4 AC2417F0 */   sw        $a0, %lo(D_800F17F0)($at)
/* 1F8F8 800B4CF8 3C01800F */  lui        $at, %hi(D_800F17F4)
/* 1F8FC 800B4CFC AC2417F4 */  sw         $a0, %lo(D_800F17F4)($at)
/* 1F900 800B4D00 0C02D4C4 */  jal        func_800B5310
/* 1F904 800B4D04 00A02021 */   addu      $a0, $a1, $zero
.L800B4D08:
/* 1F908 800B4D08 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1F90C 800B4D0C 03E00008 */  jr         $ra
/* 1F910 800B4D10 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B4CD0, . - func_800B4CD0
