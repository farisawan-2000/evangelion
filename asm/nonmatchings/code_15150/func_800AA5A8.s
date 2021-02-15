.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AA5A8
/* 151A8 800AA5A8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 151AC 800AA5AC AFBF0010 */  sw         $ra, 0x10($sp)
/* 151B0 800AA5B0 0C02DFA6 */  jal        func_800B7E98
/* 151B4 800AA5B4 00000000 */   nop
/* 151B8 800AA5B8 00401821 */  addu       $v1, $v0, $zero
/* 151BC 800AA5BC 1060000E */  beqz       $v1, .L800AA5F8
/* 151C0 800AA5C0 00000000 */   nop
/* 151C4 800AA5C4 1C600006 */  bgtz       $v1, .L800AA5E0
/* 151C8 800AA5C8 24020001 */   addiu     $v0, $zero, 1
/* 151CC 800AA5CC 2402FFFF */  addiu      $v0, $zero, -1
/* 151D0 800AA5D0 1062000D */  beq        $v1, $v0, .L800AA608
/* 151D4 800AA5D4 00000000 */   nop
/* 151D8 800AA5D8 0802A986 */  j          .L800AA618
/* 151DC 800AA5DC 00000000 */   nop
.L800AA5E0:
/* 151E0 800AA5E0 1462000D */  bne        $v1, $v0, .L800AA618
/* 151E4 800AA5E4 00000000 */   nop
/* 151E8 800AA5E8 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 151EC 800AA5EC 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 151F0 800AA5F0 0802A984 */  j          .L800AA610
/* 151F4 800AA5F4 00000000 */   nop
.L800AA5F8:
/* 151F8 800AA5F8 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 151FC 800AA5FC 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15200 800AA600 0802A984 */  j          .L800AA610
/* 15204 800AA604 00000000 */   nop
.L800AA608:
/* 15208 800AA608 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 1520C 800AA60C 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AA610:
/* 15210 800AA610 0C02A793 */  jal        func_800A9E4C
/* 15214 800AA614 00000000 */   nop
.L800AA618:
/* 15218 800AA618 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1521C 800AA61C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 15220 800AA620 03E00008 */  jr         $ra
/* 15224 800AA624 00000000 */   nop
