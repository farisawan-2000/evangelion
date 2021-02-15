.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AACAC
/* 158AC 800AACAC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 158B0 800AACB0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 158B4 800AACB4 0C02DFA6 */  jal        func_800B7E98
/* 158B8 800AACB8 00000000 */   nop
/* 158BC 800AACBC 00401821 */  addu       $v1, $v0, $zero
/* 158C0 800AACC0 1060000E */  beqz       $v1, .L800AACFC
/* 158C4 800AACC4 00000000 */   nop
/* 158C8 800AACC8 1C600006 */  bgtz       $v1, .L800AACE4
/* 158CC 800AACCC 24020001 */   addiu     $v0, $zero, 1
/* 158D0 800AACD0 2402FFFF */  addiu      $v0, $zero, -1
/* 158D4 800AACD4 1062000D */  beq        $v1, $v0, .L800AAD0C
/* 158D8 800AACD8 00002021 */   addu      $a0, $zero, $zero
/* 158DC 800AACDC 0802AB48 */  j          .L800AAD20
/* 158E0 800AACE0 00000000 */   nop
.L800AACE4:
/* 158E4 800AACE4 1462000E */  bne        $v1, $v0, .L800AAD20
/* 158E8 800AACE8 00002021 */   addu      $a0, $zero, $zero
/* 158EC 800AACEC 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 158F0 800AACF0 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 158F4 800AACF4 0802AB45 */  j          .L800AAD14
/* 158F8 800AACF8 00000000 */   nop
.L800AACFC:
/* 158FC 800AACFC 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15900 800AAD00 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15904 800AAD04 0802AB45 */  j          .L800AAD14
/* 15908 800AAD08 00000000 */   nop
.L800AAD0C:
/* 1590C 800AAD0C 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15910 800AAD10 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AAD14:
/* 15914 800AAD14 0C02A793 */  jal        func_800A9E4C
/* 15918 800AAD18 00000000 */   nop
/* 1591C 800AAD1C 00002021 */  addu       $a0, $zero, $zero
.L800AAD20:
/* 15920 800AAD20 3C058015 */  lui        $a1, %hi(D_80149E18)
/* 15924 800AAD24 24A59E18 */  addiu      $a1, $a1, %lo(D_80149E18)
/* 15928 800AAD28 0C02DF90 */  jal        func_800B7E40
/* 1592C 800AAD2C 24060038 */   addiu     $a2, $zero, 0x38
/* 15930 800AAD30 00401821 */  addu       $v1, $v0, $zero
/* 15934 800AAD34 2402FFFF */  addiu      $v0, $zero, -1
/* 15938 800AAD38 10620007 */  beq        $v1, $v0, .L800AAD58
/* 1593C 800AAD3C 24020008 */   addiu     $v0, $zero, 8
/* 15940 800AAD40 14620009 */  bne        $v1, $v0, .L800AAD68
/* 15944 800AAD44 00000000 */   nop
/* 15948 800AAD48 3C048010 */  lui        $a0, %hi(D_800FB1C0)
/* 1594C 800AAD4C 2484B1C0 */  addiu      $a0, $a0, %lo(D_800FB1C0)
/* 15950 800AAD50 0802AB58 */  j          .L800AAD60
/* 15954 800AAD54 00000000 */   nop
.L800AAD58:
/* 15958 800AAD58 3C048010 */  lui        $a0, %hi(D_800FB1E4)
/* 1595C 800AAD5C 2484B1E4 */  addiu      $a0, $a0, %lo(D_800FB1E4)
.L800AAD60:
/* 15960 800AAD60 0C02A793 */  jal        func_800A9E4C
/* 15964 800AAD64 00000000 */   nop
.L800AAD68:
/* 15968 800AAD68 3C028015 */  lui        $v0, %hi(D_80149E2D)
/* 1596C 800AAD6C 90429E2D */  lbu        $v0, %lo(D_80149E2D)($v0)
/* 15970 800AAD70 3C038015 */  lui        $v1, %hi(D_80149E2E)
/* 15974 800AAD74 90639E2E */  lbu        $v1, %lo(D_80149E2E)($v1)
/* 15978 800AAD78 3C048015 */  lui        $a0, %hi(D_80149E2B)
/* 1597C 800AAD7C 90849E2B */  lbu        $a0, %lo(D_80149E2B)($a0)
/* 15980 800AAD80 3C058015 */  lui        $a1, %hi(D_80149E29)
/* 15984 800AAD84 90A59E29 */  lbu        $a1, %lo(D_80149E29)($a1)
/* 15988 800AAD88 3C068015 */  lui        $a2, %hi(D_80149E2A)
/* 1598C 800AAD8C 90C69E2A */  lbu        $a2, %lo(D_80149E2A)($a2)
/* 15990 800AAD90 3C018017 */  lui        $at, %hi(D_8016E590)
/* 15994 800AAD94 AC22E590 */  sw         $v0, %lo(D_8016E590)($at)
/* 15998 800AAD98 3C018015 */  lui        $at, %hi(D_80149BC0)
/* 1599C 800AAD9C AC239BC0 */  sw         $v1, %lo(D_80149BC0)($at)
/* 159A0 800AADA0 3C018015 */  lui        $at, %hi(D_8014A2D0)
/* 159A4 800AADA4 A424A2D0 */  sh         $a0, %lo(D_8014A2D0)($at)
/* 159A8 800AADA8 3C018015 */  lui        $at, %hi(D_80149F8C)
/* 159AC 800AADAC A4259F8C */  sh         $a1, %lo(D_80149F8C)($at)
/* 159B0 800AADB0 3C018017 */  lui        $at, %hi(D_8016D0C0)
/* 159B4 800AADB4 A426D0C0 */  sh         $a2, %lo(D_8016D0C0)($at)
/* 159B8 800AADB8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 159BC 800AADBC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 159C0 800AADC0 03E00008 */  jr         $ra
/* 159C4 800AADC4 00000000 */   nop
