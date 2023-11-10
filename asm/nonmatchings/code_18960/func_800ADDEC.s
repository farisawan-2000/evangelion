glabel func_800ADDEC
/* 189EC 800ADDEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 189F0 800ADDF0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 189F4 800ADDF4 0C02CA1D */  jal        func_800B2874
/* 189F8 800ADDF8 AFB00010 */   sw        $s0, 0x10($sp)
/* 189FC 800ADDFC 0C02B787 */  jal        func_800ADE1C
/* 18A00 800ADE00 00408021 */   addu      $s0, $v0, $zero
/* 18A04 800ADE04 8E030008 */  lw         $v1, 0x8($s0)
/* 18A08 800ADE08 00621023 */  subu       $v0, $v1, $v0
/* 18A0C 800ADE0C 8FBF0014 */  lw         $ra, 0x14($sp)
/* 18A10 800ADE10 8FB00010 */  lw         $s0, 0x10($sp)
/* 18A14 800ADE14 03E00008 */  jr         $ra
/* 18A18 800ADE18 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800ADDEC, . - func_800ADDEC
