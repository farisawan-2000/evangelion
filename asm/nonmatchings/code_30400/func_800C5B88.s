.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C5B88
/* 30788 800C5B88 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 3078C 800C5B8C 3C068015 */  lui        $a2, %hi(D_8014A260)
/* 30790 800C5B90 24C6A260 */  addiu      $a2, $a2, %lo(D_8014A260)
/* 30794 800C5B94 27A30004 */  addiu      $v1, $sp, 4
/* 30798 800C5B98 27A7000C */  addiu      $a3, $sp, 0xc
/* 3079C 800C5B9C 24020001 */  addiu      $v0, $zero, 1
/* 307A0 800C5BA0 3C018015 */  lui        $at, %hi(D_8014A29C)
/* 307A4 800C5BA4 AC22A29C */  sw         $v0, %lo(D_8014A29C)($at)
/* 307A8 800C5BA8 2402000A */  addiu      $v0, $zero, 0xa
/* 307AC 800C5BAC A3A20000 */  sb         $v0, ($sp)
/* 307B0 800C5BB0 24020001 */  addiu      $v0, $zero, 1
/* 307B4 800C5BB4 A3A20001 */  sb         $v0, 1($sp)
/* 307B8 800C5BB8 24020005 */  addiu      $v0, $zero, 5
/* 307BC 800C5BBC A3A20002 */  sb         $v0, 2($sp)
/* 307C0 800C5BC0 A3A40003 */  sb         $a0, 3($sp)
.L800C5BC4:
/* 307C4 800C5BC4 90A20000 */  lbu        $v0, ($a1)
/* 307C8 800C5BC8 A0620000 */  sb         $v0, ($v1)
/* 307CC 800C5BCC 24630001 */  addiu      $v1, $v1, 1
/* 307D0 800C5BD0 0067102A */  slt        $v0, $v1, $a3
/* 307D4 800C5BD4 1440FFFB */  bnez       $v0, .L800C5BC4
/* 307D8 800C5BD8 24A50001 */   addiu     $a1, $a1, 1
/* 307DC 800C5BDC 24020003 */  addiu      $v0, $zero, 3
.L800C5BE0:
/* 307E0 800C5BE0 A0C00000 */  sb         $zero, ($a2)
/* 307E4 800C5BE4 2442FFFF */  addiu      $v0, $v0, -1
/* 307E8 800C5BE8 0441FFFD */  bgez       $v0, .L800C5BE0
/* 307EC 800C5BEC 24C60001 */   addiu     $a2, $a2, 1
/* 307F0 800C5BF0 8BA20000 */  lwl        $v0, ($sp)
/* 307F4 800C5BF4 9BA20003 */  lwr        $v0, 3($sp)
/* 307F8 800C5BF8 8BA30004 */  lwl        $v1, 4($sp)
/* 307FC 800C5BFC 9BA30007 */  lwr        $v1, 7($sp)
/* 30800 800C5C00 8BA40008 */  lwl        $a0, 8($sp)
/* 30804 800C5C04 9BA4000B */  lwr        $a0, 0xb($sp)
/* 30808 800C5C08 A8C20000 */  swl        $v0, ($a2)
/* 3080C 800C5C0C B8C20003 */  swr        $v0, 3($a2)
/* 30810 800C5C10 A8C30004 */  swl        $v1, 4($a2)
/* 30814 800C5C14 B8C30007 */  swr        $v1, 7($a2)
/* 30818 800C5C18 A8C40008 */  swl        $a0, 8($a2)
/* 3081C 800C5C1C B8C4000B */  swr        $a0, 0xb($a2)
/* 30820 800C5C20 240200FE */  addiu      $v0, $zero, 0xfe
/* 30824 800C5C24 A0C2000C */  sb         $v0, 0xc($a2)
/* 30828 800C5C28 03E00008 */  jr         $ra
/* 3082C 800C5C2C 27BD0010 */   addiu     $sp, $sp, 0x10
