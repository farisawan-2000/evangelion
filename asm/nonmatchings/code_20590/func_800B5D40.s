glabel func_800B5D40
/* 20940 800B5D40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 20944 800B5D44 AFB00010 */  sw         $s0, 0x10($sp)
/* 20948 800B5D48 00808021 */  addu       $s0, $a0, $zero
/* 2094C 800B5D4C AFB20018 */  sw         $s2, 0x18($sp)
/* 20950 800B5D50 00A09021 */  addu       $s2, $a1, $zero
/* 20954 800B5D54 AFB10014 */  sw         $s1, 0x14($sp)
/* 20958 800B5D58 00C08821 */  addu       $s1, $a2, $zero
/* 2095C 800B5D5C AFBF001C */  sw         $ra, 0x1C($sp)
/* 20960 800B5D60 0C02E2DC */  jal        func_800B8B70
/* 20964 800B5D64 24040001 */   addiu     $a0, $zero, 0x1
/* 20968 800B5D68 3C058017 */  lui        $a1, %hi(D_8016E2D8)
/* 2096C 800B5D6C 24A5E2D8 */  addiu      $a1, $a1, %lo(D_8016E2D8)
/* 20970 800B5D70 AE120004 */  sw         $s2, 0x4($s0)
/* 20974 800B5D74 8CA40000 */  lw         $a0, 0x0($a1)
/* 20978 800B5D78 02201821 */  addu       $v1, $s1, $zero
/* 2097C 800B5D7C 32310002 */  andi       $s1, $s1, 0x2
/* 20980 800B5D80 A6030008 */  sh         $v1, 0x8($s0)
/* 20984 800B5D84 AE040000 */  sw         $a0, 0x0($s0)
/* 20988 800B5D88 ACB00000 */  sw         $s0, 0x0($a1)
/* 2098C 800B5D8C 12200008 */  beqz       $s1, .L800B5DB0
/* 20990 800B5D90 00408021 */   addu      $s0, $v0, $zero
/* 20994 800B5D94 3C028015 */  lui        $v0, %hi(D_80149BA0)
/* 20998 800B5D98 90429BA0 */  lbu        $v0, %lo(D_80149BA0)($v0)
/* 2099C 800B5D9C 10400004 */  beqz       $v0, .L800B5DB0
/* 209A0 800B5DA0 02402021 */   addu      $a0, $s2, $zero
/* 209A4 800B5DA4 24A5F99A */  addiu      $a1, $a1, -0x666
/* 209A8 800B5DA8 0C03024C */  jal        func_800C0930
/* 209AC 800B5DAC 00003021 */   addu      $a2, $zero, $zero
.L800B5DB0:
/* 209B0 800B5DB0 0C02E2DC */  jal        func_800B8B70
/* 209B4 800B5DB4 02002021 */   addu      $a0, $s0, $zero
/* 209B8 800B5DB8 8FBF001C */  lw         $ra, 0x1C($sp)
/* 209BC 800B5DBC 8FB20018 */  lw         $s2, 0x18($sp)
/* 209C0 800B5DC0 8FB10014 */  lw         $s1, 0x14($sp)
/* 209C4 800B5DC4 8FB00010 */  lw         $s0, 0x10($sp)
/* 209C8 800B5DC8 03E00008 */  jr         $ra
/* 209CC 800B5DCC 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B5D40, . - func_800B5D40
