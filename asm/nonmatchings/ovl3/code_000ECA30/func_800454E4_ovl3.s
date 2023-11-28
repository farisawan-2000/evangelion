glabel func_800454E4_ovl3
/* EE9F4 800454E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EE9F8 800454E8 AFBF0018 */  sw         $ra, 0x18($sp)
/* EE9FC 800454EC AFB10014 */  sw         $s1, 0x14($sp)
/* EEA00 800454F0 0C00D889 */  jal        func_80036224_ovl3
/* EEA04 800454F4 AFB00010 */   sw        $s0, 0x10($sp)
/* EEA08 800454F8 3C048033 */  lui        $a0, (0x80335040 >> 16)
/* EEA0C 800454FC 34845040 */  ori        $a0, $a0, (0x80335040 & 0xFFFF)
/* EEA10 80045500 2405015C */  addiu      $a1, $zero, 0x15C
/* EEA14 80045504 24060009 */  addiu      $a2, $zero, 0x9
/* EEA18 80045508 0C00D9E0 */  jal        func_80036780_ovl3
/* EEA1C 8004550C 2407003F */   addiu     $a3, $zero, 0x3F
/* EEA20 80045510 8C44000C */  lw         $a0, 0xC($v0)
/* EEA24 80045514 24050040 */  addiu      $a1, $zero, 0x40
/* EEA28 80045518 240600C0 */  addiu      $a2, $zero, 0xC0
/* EEA2C 8004551C 0C028D89 */  jal        func_800A3624
/* EEA30 80045520 00008821 */   addu      $s1, $zero, $zero
/* EEA34 80045524 322600FF */  andi       $a2, $s1, 0xFF
.L80045528_ovl3:
/* EEA38 80045528 24C40165 */  addiu      $a0, $a2, 0x165
/* EEA3C 8004552C 24050006 */  addiu      $a1, $zero, 0x6
/* EEA40 80045530 0C00D925 */  jal        func_80036494_ovl3
/* EEA44 80045534 24C6003A */   addiu     $a2, $a2, 0x3A
/* EEA48 80045538 00408021 */  addu       $s0, $v0, $zero
/* EEA4C 8004553C 8E04000C */  lw         $a0, 0xC($s0)
/* EEA50 80045540 0C02932F */  jal        func_800A4CBC
/* EEA54 80045544 26310001 */   addiu     $s1, $s1, 0x1
/* EEA58 80045548 8E04000C */  lw         $a0, 0xC($s0)
/* EEA5C 8004554C 24050100 */  addiu      $a1, $zero, 0x100
/* EEA60 80045550 0C028D89 */  jal        func_800A3624
/* EEA64 80045554 240601C0 */   addiu     $a2, $zero, 0x1C0
/* EEA68 80045558 322200FF */  andi       $v0, $s1, 0xFF
/* EEA6C 8004555C 2C420005 */  sltiu      $v0, $v0, 0x5
/* EEA70 80045560 1440FFF1 */  bnez       $v0, .L80045528_ovl3
/* EEA74 80045564 322600FF */   andi      $a2, $s1, 0xFF
/* EEA78 80045568 8FBF0018 */  lw         $ra, 0x18($sp)
/* EEA7C 8004556C 8FB10014 */  lw         $s1, 0x14($sp)
/* EEA80 80045570 8FB00010 */  lw         $s0, 0x10($sp)
/* EEA84 80045574 03E00008 */  jr         $ra
/* EEA88 80045578 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800454E4_ovl3, . - func_800454E4_ovl3
