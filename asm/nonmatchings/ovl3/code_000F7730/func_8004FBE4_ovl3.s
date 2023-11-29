glabel func_8004FBE4_ovl3
/* F90F4 8004FBE4 3C028007 */  lui        $v0, %hi(D_8006927C_ovl3)
/* F90F8 8004FBE8 9042927C */  lbu        $v0, %lo(D_8006927C_ovl3)($v0)
/* F90FC 8004FBEC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F9100 8004FBF0 1040000D */  beqz       $v0, .L8004FC28_ovl3
/* F9104 8004FBF4 AFBF0010 */   sw        $ra, 0x10($sp)
/* F9108 8004FBF8 3C048005 */  lui        $a0, %hi(func_8004E220_ovl3)
/* F910C 8004FBFC 2484E220 */  addiu      $a0, $a0, %lo(func_8004E220_ovl3)
/* F9110 8004FC00 00002821 */  addu       $a1, $zero, $zero
/* F9114 8004FC04 2406012C */  addiu      $a2, $zero, 0x12C
/* F9118 8004FC08 3C018007 */  lui        $at, %hi(D_8006C3C8_ovl3)
/* F911C 8004FC0C A020C3C8 */  sb         $zero, %lo(D_8006C3C8_ovl3)($at)
/* F9120 8004FC10 0C025D06 */  jal        func_80097418
/* F9124 8004FC14 00003821 */   addu      $a3, $zero, $zero
/* F9128 8004FC18 0C02A5D2 */  jal        func_800A9748
/* F912C 8004FC1C 24040001 */   addiu     $a0, $zero, 0x1
/* F9130 8004FC20 3C018007 */  lui        $at, %hi(D_8006927C_ovl3)
/* F9134 8004FC24 A020927C */  sb         $zero, %lo(D_8006927C_ovl3)($at)
.L8004FC28_ovl3:
/* F9138 8004FC28 3C038007 */  lui        $v1, %hi(D_8006C3C8_ovl3)
/* F913C 8004FC2C 9063C3C8 */  lbu        $v1, %lo(D_8006C3C8_ovl3)($v1)
/* F9140 8004FC30 24020001 */  addiu      $v0, $zero, 0x1
/* F9144 8004FC34 14620005 */  bne        $v1, $v0, .L8004FC4C_ovl3
/* F9148 8004FC38 00001021 */   addu      $v0, $zero, $zero
/* F914C 8004FC3C 24020001 */  addiu      $v0, $zero, 0x1
/* F9150 8004FC40 3C018007 */  lui        $at, %hi(D_8006927C_ovl3)
/* F9154 8004FC44 A022927C */  sb         $v0, %lo(D_8006927C_ovl3)($at)
/* F9158 8004FC48 24020001 */  addiu      $v0, $zero, 0x1
.L8004FC4C_ovl3:
/* F915C 8004FC4C 8FBF0010 */  lw         $ra, 0x10($sp)
/* F9160 8004FC50 03E00008 */  jr         $ra
/* F9164 8004FC54 27BD0018 */   addiu     $sp, $sp, 0x18
/* F9168 8004FC58 00000000 */  nop
/* F916C 8004FC5C 00000000 */  nop
.size func_8004FBE4_ovl3, . - func_8004FBE4_ovl3
