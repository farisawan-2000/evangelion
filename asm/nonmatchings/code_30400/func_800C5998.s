.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C5998
/* 30598 800C5998 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 3059C 800C599C 3C068015 */  lui        $a2, %hi(D_8014A260)
/* 305A0 800C59A0 24C6A260 */  addiu      $a2, $a2, %lo(D_8014A260)
/* 305A4 800C59A4 24030003 */  addiu      $v1, $zero, 3
/* 305A8 800C59A8 24020001 */  addiu      $v0, $zero, 1
/* 305AC 800C59AC 3C018015 */  lui        $at, %hi(D_8014A29C)
/* 305B0 800C59B0 AC22A29C */  sw         $v0, %lo(D_8014A29C)($at)
/* 305B4 800C59B4 24020002 */  addiu      $v0, $zero, 2
/* 305B8 800C59B8 A3A20000 */  sb         $v0, ($sp)
/* 305BC 800C59BC 24020008 */  addiu      $v0, $zero, 8
/* 305C0 800C59C0 A3A20001 */  sb         $v0, 1($sp)
/* 305C4 800C59C4 24020004 */  addiu      $v0, $zero, 4
/* 305C8 800C59C8 A3A20002 */  sb         $v0, 2($sp)
/* 305CC 800C59CC A3A40003 */  sb         $a0, 3($sp)
.L800C59D0:
/* 305D0 800C59D0 A0C00000 */  sb         $zero, ($a2)
/* 305D4 800C59D4 2463FFFF */  addiu      $v1, $v1, -1
/* 305D8 800C59D8 0461FFFD */  bgez       $v1, .L800C59D0
/* 305DC 800C59DC 24C60001 */   addiu     $a2, $a2, 1
/* 305E0 800C59E0 8BA20000 */  lwl        $v0, ($sp)
/* 305E4 800C59E4 9BA20003 */  lwr        $v0, 3($sp)
/* 305E8 800C59E8 8BA30004 */  lwl        $v1, 4($sp)
/* 305EC 800C59EC 9BA30007 */  lwr        $v1, 7($sp)
/* 305F0 800C59F0 8BA40008 */  lwl        $a0, 8($sp)
/* 305F4 800C59F4 9BA4000B */  lwr        $a0, 0xb($sp)
/* 305F8 800C59F8 A8C20000 */  swl        $v0, ($a2)
/* 305FC 800C59FC B8C20003 */  swr        $v0, 3($a2)
/* 30600 800C5A00 A8C30004 */  swl        $v1, 4($a2)
/* 30604 800C5A04 B8C30007 */  swr        $v1, 7($a2)
/* 30608 800C5A08 A8C40008 */  swl        $a0, 8($a2)
/* 3060C 800C5A0C B8C4000B */  swr        $a0, 0xb($a2)
/* 30610 800C5A10 240200FE */  addiu      $v0, $zero, 0xfe
/* 30614 800C5A14 A0C2000C */  sb         $v0, 0xc($a2)
/* 30618 800C5A18 03E00008 */  jr         $ra
/* 3061C 800C5A1C 27BD0010 */   addiu     $sp, $sp, 0x10
