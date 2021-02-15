.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C1D50
/* 2C950 800C1D50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2C954 800C1D54 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2C958 800C1D58 0C0319D0 */  jal        func_800C6740
/* 2C95C 800C1D5C AFB00010 */   sw        $s0, 0x10($sp)
/* 2C960 800C1D60 3C03800F */  lui        $v1, %hi(D_800F69C0)
/* 2C964 800C1D64 8C6369C0 */  lw         $v1, %lo(D_800F69C0)($v1)
/* 2C968 800C1D68 3C04800F */  lui        $a0, %hi(D_800F69B8)
/* 2C96C 800C1D6C 248469B8 */  addiu      $a0, $a0, %lo(D_800F69B8)
/* 2C970 800C1D70 24050002 */  addiu      $a1, $zero, 2
/* 2C974 800C1D74 00408021 */  addu       $s0, $v0, $zero
/* 2C978 800C1D78 0C031913 */  jal        func_800C644C
/* 2C97C 800C1D7C A4650010 */   sh        $a1, 0x10($v1)
/* 2C980 800C1D80 0C0319EC */  jal        func_800C67B0
/* 2C984 800C1D84 02002021 */   addu      $a0, $s0, $zero
/* 2C988 800C1D88 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2C98C 800C1D8C 8FB00010 */  lw         $s0, 0x10($sp)
/* 2C990 800C1D90 03E00008 */  jr         $ra
/* 2C994 800C1D94 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2C998 800C1D98 00000000 */  nop
/* 2C99C 800C1D9C 00000000 */  nop
