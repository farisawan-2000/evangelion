glabel func_800AE240
/* 18E40 800AE240 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 18E44 800AE244 AFBF0014 */  sw         $ra, 0x14($sp)
/* 18E48 800AE248 0C02C287 */  jal        func_800B0A1C
/* 18E4C 800AE24C AFB00010 */   sw        $s0, 0x10($sp)
/* 18E50 800AE250 00408021 */  addu       $s0, $v0, $zero
/* 18E54 800AE254 0C02BB06 */  jal        func_800AEC18
/* 18E58 800AE258 02002021 */   addu      $a0, $s0, $zero
/* 18E5C 800AE25C 02001021 */  addu       $v0, $s0, $zero
/* 18E60 800AE260 8FBF0014 */  lw         $ra, 0x14($sp)
/* 18E64 800AE264 8FB00010 */  lw         $s0, 0x10($sp)
/* 18E68 800AE268 03E00008 */  jr         $ra
/* 18E6C 800AE26C 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800AE240, . - func_800AE240
