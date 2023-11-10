glabel func_800B58C0
/* 204C0 800B58C0 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 204C4 800B58C4 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 204C8 800B58C8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 204CC 800B58CC AFB00010 */  sw         $s0, 0x10($sp)
/* 204D0 800B58D0 00048400 */  sll        $s0, $a0, 16
/* 204D4 800B58D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 204D8 800B58D8 8C420034 */  lw         $v0, 0x34($v0)
/* 204DC 800B58DC 00108383 */  sra        $s0, $s0, 14
/* 204E0 800B58E0 26040024 */  addiu      $a0, $s0, 0x24
/* 204E4 800B58E4 0C02CABC */  jal        func_800B2AF0
/* 204E8 800B58E8 00442021 */   addu      $a0, $v0, $a0
/* 204EC 800B58EC 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 204F0 800B58F0 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 204F4 800B58F4 8C420034 */  lw         $v0, 0x34($v0)
/* 204F8 800B58F8 02028021 */  addu       $s0, $s0, $v0
/* 204FC 800B58FC 8E020024 */  lw         $v0, 0x24($s0)
/* 20500 800B5900 8FBF0014 */  lw         $ra, 0x14($sp)
/* 20504 800B5904 8FB00010 */  lw         $s0, 0x10($sp)
/* 20508 800B5908 03E00008 */  jr         $ra
/* 2050C 800B590C 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B58C0, . - func_800B58C0
