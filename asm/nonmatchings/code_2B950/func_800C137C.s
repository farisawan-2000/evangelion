glabel func_800C137C
/* 2BF7C 800C137C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2BF80 800C1380 AFB10014 */  sw         $s1, 0x14($sp)
/* 2BF84 800C1384 00808821 */  addu       $s1, $a0, $zero
/* 2BF88 800C1388 AFBF0018 */  sw         $ra, 0x18($sp)
/* 2BF8C 800C138C 1220000A */  beqz       $s1, .L800C13B8
/* 2BF90 800C1390 AFB00010 */   sw        $s0, 0x10($sp)
/* 2BF94 800C1394 0C0308A4 */  jal        func_800C2290
/* 2BF98 800C1398 00000000 */   nop
/* 2BF9C 800C139C 0C0308B4 */  jal        func_800C22D0
/* 2BFA0 800C13A0 00408021 */   addu      $s0, $v0, $zero
/* 2BFA4 800C13A4 02028026 */  xor        $s0, $s0, $v0
/* 2BFA8 800C13A8 2E100001 */  sltiu      $s0, $s0, 0x1
/* 2BFAC 800C13AC 00108023 */  negu       $s0, $s0
/* 2BFB0 800C13B0 080304EF */  j          .L800C13BC
/* 2BFB4 800C13B4 02301024 */   and       $v0, $s1, $s0
.L800C13B8:
/* 2BFB8 800C13B8 00001021 */  addu       $v0, $zero, $zero
.L800C13BC:
/* 2BFBC 800C13BC 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2BFC0 800C13C0 8FB10014 */  lw         $s1, 0x14($sp)
/* 2BFC4 800C13C4 8FB00010 */  lw         $s0, 0x10($sp)
/* 2BFC8 800C13C8 03E00008 */  jr         $ra
/* 2BFCC 800C13CC 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800C137C, . - func_800C137C
