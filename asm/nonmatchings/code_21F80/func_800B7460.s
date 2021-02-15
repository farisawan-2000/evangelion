.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7460
/* 22060 800B7460 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22064 800B7464 AFBF0014 */  sw         $ra, 0x14($sp)
/* 22068 800B7468 AFB00010 */  sw         $s0, 0x10($sp)
/* 2206C 800B746C 8C90000C */  lw         $s0, 0xc($a0)
/* 22070 800B7470 8E050000 */  lw         $a1, ($s0)
/* 22074 800B7474 AE00000C */  sw         $zero, 0xc($s0)
/* 22078 800B7478 8CA60008 */  lw         $a2, 8($a1)
/* 2207C 800B747C 3C048017 */  lui        $a0, %hi(D_8016E550)
/* 22080 800B7480 0C031014 */  jal        func_800C4050
/* 22084 800B7484 2484E550 */   addiu     $a0, $a0, %lo(D_8016E550)
/* 22088 800B7488 00401821 */  addu       $v1, $v0, $zero
/* 2208C 800B748C 14600004 */  bnez       $v1, .L800B74A0
/* 22090 800B7490 00601021 */   addu      $v0, $v1, $zero
/* 22094 800B7494 24020001 */  addiu      $v0, $zero, 1
/* 22098 800B7498 AE02000C */  sw         $v0, 0xc($s0)
/* 2209C 800B749C 00601021 */  addu       $v0, $v1, $zero
.L800B74A0:
/* 220A0 800B74A0 8FBF0014 */  lw         $ra, 0x14($sp)
/* 220A4 800B74A4 8FB00010 */  lw         $s0, 0x10($sp)
/* 220A8 800B74A8 03E00008 */  jr         $ra
/* 220AC 800B74AC 27BD0018 */   addiu     $sp, $sp, 0x18
