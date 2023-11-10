glabel func_800B7E00
/* 22A00 800B7E00 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22A04 800B7E04 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22A08 800B7E08 3C04800F */  lui        $a0, %hi(D_800F5DD4)
/* 22A0C 800B7E0C 0C02E0B0 */  jal        func_800B82C0
/* 22A10 800B7E10 24845DD4 */   addiu     $a0, $a0, %lo(D_800F5DD4)
/* 22A14 800B7E14 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22A18 800B7E18 03E00008 */  jr         $ra
/* 22A1C 800B7E1C 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B7E00, . - func_800B7E00
