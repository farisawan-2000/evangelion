.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009B538
/* 6138 8009B538 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 613C 8009B53C 000420C0 */  sll        $a0, $a0, 3
/* 6140 8009B540 AFBF0010 */  sw         $ra, 0x10($sp)
/* 6144 8009B544 3C02800D */  lui        $v0, %hi(D_800D3A90)
/* 6148 8009B548 00441021 */  addu       $v0, $v0, $a0
/* 614C 8009B54C 8C423A90 */  lw         $v0, %lo(D_800D3A90)($v0)
/* 6150 8009B550 3C05800D */  lui        $a1, %hi(D_800D3A94)
/* 6154 8009B554 00A42821 */  addu       $a1, $a1, $a0
/* 6158 8009B558 8CA53A94 */  lw         $a1, %lo(D_800D3A94)($a1)
/* 615C 8009B55C 3C06800D */  lui        $a2, %hi(D_800D3A70)
/* 6160 8009B560 00C43021 */  addu       $a2, $a2, $a0
/* 6164 8009B564 8CC63A70 */  lw         $a2, %lo(D_800D3A70)($a2)
/* 6168 8009B568 00402021 */  addu       $a0, $v0, $zero
/* 616C 8009B56C 0C02B6E8 */  jal        func_800ADBA0
/* 6170 8009B570 00A42823 */   subu      $a1, $a1, $a0
/* 6174 8009B574 8FBF0010 */  lw         $ra, 0x10($sp)
/* 6178 8009B578 27BD0018 */  addiu      $sp, $sp, 0x18
/* 617C 8009B57C 03E00008 */  jr         $ra
/* 6180 8009B580 00000000 */   nop
