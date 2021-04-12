glabel func_80026C30_6AF10
/* 6AF10 80026C30 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 6AF14 80026C34 24020001 */  addiu      $v0, $zero, 1
/* 6AF18 80026C38 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6AF1C 80026C3C 3C018015 */  lui        $at, %hi(D_8014A028)
/* 6AF20 80026C40 0C026B70 */  jal        func_8009ADC0
/* 6AF24 80026C44 AC22A028 */   sw        $v0, %lo(D_8014A028)($at)
/* 6AF28 80026C48 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6AF2C 80026C4C 03E00008 */  jr         $ra
/* 6AF30 80026C50 27BD0018 */   addiu     $sp, $sp, 0x18
