.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C1880
/* 2C480 800C1880 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C484 800C1884 24020001 */  addiu      $v0, $zero, 1
/* 2C488 800C1888 AFB00010 */  sw         $s0, 0x10($sp)
/* 2C48C 800C188C 3C108017 */  lui        $s0, %hi(D_801765A0)
/* 2C490 800C1890 261065A0 */  addiu      $s0, $s0, %lo(D_801765A0)
/* 2C494 800C1894 02002021 */  addu       $a0, $s0, $zero
/* 2C498 800C1898 3C058015 */  lui        $a1, %hi(D_80148860)
/* 2C49C 800C189C 24A58860 */  addiu      $a1, $a1, %lo(D_80148860)
/* 2C4A0 800C18A0 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C4A4 800C18A4 3C01800F */  lui        $at, %hi(D_800F69A0)
/* 2C4A8 800C18A8 AC2269A0 */  sw         $v0, %lo(D_800F69A0)($at)
/* 2C4AC 800C18AC 0C0301A4 */  jal        func_800C0690
/* 2C4B0 800C18B0 24060001 */   addiu     $a2, $zero, 1
/* 2C4B4 800C18B4 02002021 */  addu       $a0, $s0, $zero
/* 2C4B8 800C18B8 00002821 */  addu       $a1, $zero, $zero
/* 2C4BC 800C18BC 0C03024C */  jal        func_800C0930
/* 2C4C0 800C18C0 00003021 */   addu      $a2, $zero, $zero
/* 2C4C4 800C18C4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C4C8 800C18C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C4CC 800C18CC 03E00008 */  jr         $ra
/* 2C4D0 800C18D0 27BD0018 */   addiu     $sp, $sp, 0x18
