.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6C50
/* 21850 800B6C50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 21854 800B6C54 AFB00010 */  sw         $s0, 0x10($sp)
/* 21858 800B6C58 00808021 */  addu       $s0, $a0, $zero
/* 2185C 800B6C5C 00102080 */  sll        $a0, $s0, 2
/* 21860 800B6C60 00902021 */  addu       $a0, $a0, $s0
/* 21864 800B6C64 00042080 */  sll        $a0, $a0, 2
/* 21868 800B6C68 00902023 */  subu       $a0, $a0, $s0
/* 2186C 800B6C6C 00042100 */  sll        $a0, $a0, 4
/* 21870 800B6C70 00902023 */  subu       $a0, $a0, $s0
/* 21874 800B6C74 00042080 */  sll        $a0, $a0, 2
/* 21878 800B6C78 00902023 */  subu       $a0, $a0, $s0
/* 2187C 800B6C7C 00042040 */  sll        $a0, $a0, 1
/* 21880 800B6C80 3C02800F */  lui        $v0, %hi(D_800F1846)
/* 21884 800B6C84 24421846 */  addiu      $v0, $v0, %lo(D_800F1846)
/* 21888 800B6C88 00822021 */  addu       $a0, $a0, $v0
/* 2188C 800B6C8C AFBF0014 */  sw         $ra, 0x14($sp)
/* 21890 800B6C90 0C030134 */  jal        func_800C04D0
/* 21894 800B6C94 24050960 */   addiu     $a1, $zero, 0x960
/* 21898 800B6C98 02002021 */  addu       $a0, $s0, $zero
/* 2189C 800B6C9C 00002821 */  addu       $a1, $zero, $zero
/* 218A0 800B6CA0 0C02DAE0 */  jal        func_800B6B80
/* 218A4 800B6CA4 00003021 */   addu      $a2, $zero, $zero
/* 218A8 800B6CA8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 218AC 800B6CAC 8FB00010 */  lw         $s0, 0x10($sp)
/* 218B0 800B6CB0 03E00008 */  jr         $ra
/* 218B4 800B6CB4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 218B8 800B6CB8 00000000 */  nop
/* 218BC 800B6CBC 00000000 */  nop
