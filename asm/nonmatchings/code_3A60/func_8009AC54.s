glabel func_8009AC54
/* 5854 8009AC54 3C028015 */  lui        $v0, %hi(D_8014A028)
/* 5858 8009AC58 8C42A028 */  lw         $v0, %lo(D_8014A028)($v0)
/* 585C 8009AC5C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 5860 8009AC60 AFB00010 */  sw         $s0, 0x10($sp)
/* 5864 8009AC64 00808021 */  addu       $s0, $a0, $zero
/* 5868 8009AC68 AFB10014 */  sw         $s1, 0x14($sp)
/* 586C 8009AC6C 00A08821 */  addu       $s1, $a1, $zero
/* 5870 8009AC70 AFB20018 */  sw         $s2, 0x18($sp)
/* 5874 8009AC74 00C09021 */  addu       $s2, $a2, $zero
/* 5878 8009AC78 1040000F */  beqz       $v0, .L8009ACB8
/* 587C 8009AC7C AFBF001C */   sw        $ra, 0x1C($sp)
/* 5880 8009AC80 00101080 */  sll        $v0, $s0, 2
/* 5884 8009AC84 3C018015 */  lui        $at, %hi(D_8014A140)
/* 5888 8009AC88 00220821 */  addu       $at, $at, $v0
/* 588C 8009AC8C 8C22A140 */  lw         $v0, %lo(D_8014A140)($at)
/* 5890 8009AC90 14400009 */  bnez       $v0, .L8009ACB8
/* 5894 8009AC94 00000000 */   nop
/* 5898 8009AC98 0C02DF14 */  jal        func_800B7C50
/* 589C 8009AC9C 00000000 */   nop
/* 58A0 8009ACA0 0C02DF78 */  jal        func_800B7DE0
/* 58A4 8009ACA4 00000000 */   nop
/* 58A8 8009ACA8 02002021 */  addu       $a0, $s0, $zero
/* 58AC 8009ACAC 3225FFFF */  andi       $a1, $s1, 0xFFFF
/* 58B0 8009ACB0 0C02DEFC */  jal        func_800B7BF0
/* 58B4 8009ACB4 3246FFFF */   andi      $a2, $s2, 0xFFFF
.L8009ACB8:
/* 58B8 8009ACB8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 58BC 8009ACBC 8FB20018 */  lw         $s2, 0x18($sp)
/* 58C0 8009ACC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 58C4 8009ACC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 58C8 8009ACC8 27BD0020 */  addiu      $sp, $sp, 0x20
/* 58CC 8009ACCC 03E00008 */  jr         $ra
/* 58D0 8009ACD0 00000000 */   nop
.size func_8009AC54, . - func_8009AC54
