glabel func_8009ACD4
/* 58D4 8009ACD4 3C028015 */  lui        $v0, %hi(D_8014A028)
/* 58D8 8009ACD8 8C42A028 */  lw         $v0, %lo(D_8014A028)($v0)
/* 58DC 8009ACDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 58E0 8009ACE0 10400009 */  beqz       $v0, .L8009AD08
/* 58E4 8009ACE4 AFBF0010 */   sw        $ra, 0x10($sp)
/* 58E8 8009ACE8 00041080 */  sll        $v0, $a0, 2
/* 58EC 8009ACEC 3C018015 */  lui        $at, %hi(D_8014A140)
/* 58F0 8009ACF0 00220821 */  addu       $at, $at, $v0
/* 58F4 8009ACF4 8C22A140 */  lw         $v0, %lo(D_8014A140)($at)
/* 58F8 8009ACF8 14400003 */  bnez       $v0, .L8009AD08
/* 58FC 8009ACFC 00000000 */   nop
/* 5900 8009AD00 0C02DF14 */  jal        func_800B7C50
/* 5904 8009AD04 00000000 */   nop
.L8009AD08:
/* 5908 8009AD08 8FBF0010 */  lw         $ra, 0x10($sp)
/* 590C 8009AD0C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 5910 8009AD10 03E00008 */  jr         $ra
/* 5914 8009AD14 00000000 */   nop
.size func_8009ACD4, . - func_8009ACD4
