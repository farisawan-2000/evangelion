glabel func_800B6340
/* 20F40 800B6340 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20F44 800B6344 AFB00018 */  sw         $s0, 0x18($sp)
/* 20F48 800B6348 3C108011 */  lui        $s0, %hi(D_80108BF0)
/* 20F4C 800B634C 26108BF0 */  addiu      $s0, $s0, %lo(D_80108BF0)
/* 20F50 800B6350 02002021 */  addu       $a0, $s0, $zero
/* 20F54 800B6354 3C028011 */  lui        $v0, %hi(D_8010ADA0)
/* 20F58 800B6358 2442ADA0 */  addiu      $v0, $v0, %lo(D_8010ADA0)
/* 20F5C 800B635C AFA20010 */  sw         $v0, 0x10($sp)
/* 20F60 800B6360 24020032 */  addiu      $v0, $zero, 0x32
/* 20F64 800B6364 24050004 */  addiu      $a1, $zero, 0x4
/* 20F68 800B6368 3C06800B */  lui        $a2, %hi(func_800B6270)
/* 20F6C 800B636C 24C66270 */  addiu      $a2, $a2, %lo(func_800B6270)
/* 20F70 800B6370 00003821 */  addu       $a3, $zero, $zero
/* 20F74 800B6374 AFBF001C */  sw         $ra, 0x1C($sp)
/* 20F78 800B6378 0C03065C */  jal        osCreateThread
/* 20F7C 800B637C AFA20014 */   sw        $v0, 0x14($sp)
/* 20F80 800B6380 0C0306CC */  jal        osStartThread
/* 20F84 800B6384 02002021 */   addu      $a0, $s0, $zero
/* 20F88 800B6388 8FBF001C */  lw         $ra, 0x1C($sp)
/* 20F8C 800B638C 8FB00018 */  lw         $s0, 0x18($sp)
/* 20F90 800B6390 03E00008 */  jr         $ra
/* 20F94 800B6394 27BD0020 */   addiu     $sp, $sp, 0x20
/* 20F98 800B6398 00000000 */  nop
/* 20F9C 800B639C 00000000 */  nop
.size func_800B6340, . - func_800B6340
