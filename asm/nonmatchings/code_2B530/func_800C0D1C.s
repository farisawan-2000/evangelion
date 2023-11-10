glabel func_800C0D1C
/* 2B91C 800C0D1C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B920 800C0D20 AFBF0010 */  sw         $ra, 0x10($sp)
.L800C0D24:
/* 2B924 800C0D24 0C031E50 */  jal        func_800C7940
/* 2B928 800C0D28 00000000 */   nop
/* 2B92C 800C0D2C 1440FFFD */  bnez       $v0, .L800C0D24
/* 2B930 800C0D30 00000000 */   nop
/* 2B934 800C0D34 0C031E5C */  jal        func_800C7970
/* 2B938 800C0D38 24040125 */   addiu     $a0, $zero, 0x125
/* 2B93C 800C0D3C 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2B940 800C0D40 03E00008 */  jr         $ra
/* 2B944 800C0D44 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2B948 800C0D48 00000000 */  nop
/* 2B94C 800C0D4C 00000000 */  nop
.size func_800C0D1C, . - func_800C0D1C
