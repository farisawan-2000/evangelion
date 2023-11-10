glabel func_80096F90
/* 1B90 80096F90 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1B94 80096F94 10800003 */  beqz       $a0, .L80096FA4
/* 1B98 80096F98 AFBF0010 */   sw        $ra, 0x10($sp)
/* 1B9C 80096F9C 0C0326A1 */  jal        func_800C9A84
/* 1BA0 80096FA0 00000000 */   nop
.L80096FA4:
/* 1BA4 80096FA4 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1BA8 80096FA8 27BD0018 */  addiu      $sp, $sp, 0x18
/* 1BAC 80096FAC 03E00008 */  jr         $ra
/* 1BB0 80096FB0 00000000 */   nop
.size func_80096F90, . - func_80096F90
