glabel func_800A9140
/* 13D40 800A9140 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 13D44 800A9144 AFBF0010 */  sw         $ra, 0x10($sp)
/* 13D48 800A9148 3C04802D */  lui        $a0, (0x802D4000 >> 16)
/* 13D4C 800A914C 34844000 */  ori        $a0, $a0, (0x802D4000 & 0xFFFF)
/* 13D50 800A9150 3C050009 */  lui        $a1, (0x96000 >> 16)
/* 13D54 800A9154 0C030134 */  jal        bzero
/* 13D58 800A9158 34A56000 */   ori       $a1, $a1, (0x96000 & 0xFFFF)
/* 13D5C 800A915C 3C048036 */  lui        $a0, (0x8036A000 >> 16)
/* 13D60 800A9160 3484A000 */  ori        $a0, $a0, (0x8036A000 & 0xFFFF)
/* 13D64 800A9164 3C050009 */  lui        $a1, (0x96000 >> 16)
/* 13D68 800A9168 0C030134 */  jal        bzero
/* 13D6C 800A916C 34A56000 */   ori       $a1, $a1, (0x96000 & 0xFFFF)
/* 13D70 800A9170 8FBF0010 */  lw         $ra, 0x10($sp)
/* 13D74 800A9174 27BD0018 */  addiu      $sp, $sp, 0x18
/* 13D78 800A9178 03E00008 */  jr         $ra
/* 13D7C 800A917C 00000000 */   nop
.size func_800A9140, . - func_800A9140