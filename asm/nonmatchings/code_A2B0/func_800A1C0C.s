glabel func_800A1C0C
/* C80C 800A1C0C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* C810 800A1C10 AFB10014 */  sw         $s1, 0x14($sp)
/* C814 800A1C14 00808821 */  addu       $s1, $a0, $zero
/* C818 800A1C18 3C0400EC */  lui        $a0, %hi(D_EBF700)
/* C81C 800A1C1C 2484F700 */  addiu      $a0, $a0, %lo(D_EBF700)
/* C820 800A1C20 00053400 */  sll        $a2, $a1, 16
/* C824 800A1C24 3C05800F */  lui        $a1, %hi(D_800F1000)
/* C828 800A1C28 24A51000 */  addiu      $a1, $a1, %lo(D_800F1000)
/* C82C 800A1C2C 00063403 */  sra        $a2, $a2, 16
/* C830 800A1C30 00003821 */  addu       $a3, $zero, $zero
/* C834 800A1C34 AFBF0018 */  sw         $ra, 0x18($sp)
/* C838 800A1C38 0C02648E */  jal        func_80099238
/* C83C 800A1C3C AFB00010 */   sw        $s0, 0x10($sp)
/* C840 800A1C40 02202021 */  addu       $a0, $s1, $zero
/* C844 800A1C44 00408021 */  addu       $s0, $v0, $zero
/* C848 800A1C48 0C028720 */  jal        func_800A1C80
/* C84C 800A1C4C 02002821 */   addu      $a1, $s0, $zero
/* C850 800A1C50 0C0326A1 */  jal        func_800C9A84
/* C854 800A1C54 02002021 */   addu      $a0, $s0, $zero
/* C858 800A1C58 92220066 */  lbu        $v0, 0x66($s1)
/* C85C 800A1C5C 304200FB */  andi       $v0, $v0, 0xFB
/* C860 800A1C60 34420008 */  ori        $v0, $v0, 0x8
/* C864 800A1C64 A2220066 */  sb         $v0, 0x66($s1)
/* C868 800A1C68 8FBF0018 */  lw         $ra, 0x18($sp)
/* C86C 800A1C6C 8FB10014 */  lw         $s1, 0x14($sp)
/* C870 800A1C70 8FB00010 */  lw         $s0, 0x10($sp)
/* C874 800A1C74 27BD0020 */  addiu      $sp, $sp, 0x20
/* C878 800A1C78 03E00008 */  jr         $ra
/* C87C 800A1C7C 00000000 */   nop
.size func_800A1C0C, . - func_800A1C0C
