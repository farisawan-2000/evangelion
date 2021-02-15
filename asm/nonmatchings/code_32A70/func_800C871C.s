.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C871C
/* 3331C 800C871C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 33320 800C8720 3C058015 */  lui        $a1, %hi(D_8014A04C)
/* 33324 800C8724 90A5A04C */  lbu        $a1, %lo(D_8014A04C)($a1)
/* 33328 800C8728 3C078017 */  lui        $a3, %hi(D_8016D830)
/* 3332C 800C872C 24E7D830 */  addiu      $a3, $a3, %lo(D_8016D830)
/* 33330 800C8730 00003021 */  addu       $a2, $zero, $zero
/* 33334 800C8734 24020001 */  addiu      $v0, $zero, 1
/* 33338 800C8738 240300FF */  addiu      $v1, $zero, 0xff
/* 3333C 800C873C 3C018017 */  lui        $at, %hi(D_8016D86C)
/* 33340 800C8740 AC22D86C */  sw         $v0, %lo(D_8016D86C)($at)
/* 33344 800C8744 24020001 */  addiu      $v0, $zero, 1
/* 33348 800C8748 A3A20001 */  sb         $v0, 1($sp)
/* 3334C 800C874C 24020003 */  addiu      $v0, $zero, 3
/* 33350 800C8750 3C018017 */  lui        $at, %hi(D_8016D064)
/* 33354 800C8754 A024D064 */  sb         $a0, %lo(D_8016D064)($at)
/* 33358 800C8758 A3A30000 */  sb         $v1, ($sp)
/* 3335C 800C875C A3A20002 */  sb         $v0, 2($sp)
/* 33360 800C8760 A3A40003 */  sb         $a0, 3($sp)
/* 33364 800C8764 A3A30004 */  sb         $v1, 4($sp)
/* 33368 800C8768 A3A30005 */  sb         $v1, 5($sp)
/* 3336C 800C876C A3A30006 */  sb         $v1, 6($sp)
/* 33370 800C8770 18A0000F */  blez       $a1, .L800C87B0
/* 33374 800C8774 A3A30007 */   sb        $v1, 7($sp)
.L800C8778:
/* 33378 800C8778 8BA20000 */  lwl        $v0, ($sp)
/* 3337C 800C877C 9BA20003 */  lwr        $v0, 3($sp)
/* 33380 800C8780 8BA30004 */  lwl        $v1, 4($sp)
/* 33384 800C8784 9BA30007 */  lwr        $v1, 7($sp)
/* 33388 800C8788 A8E20000 */  swl        $v0, ($a3)
/* 3338C 800C878C B8E20003 */  swr        $v0, 3($a3)
/* 33390 800C8790 A8E30004 */  swl        $v1, 4($a3)
/* 33394 800C8794 B8E30007 */  swr        $v1, 7($a3)
/* 33398 800C8798 3C028015 */  lui        $v0, %hi(D_8014A04C)
/* 3339C 800C879C 9042A04C */  lbu        $v0, %lo(D_8014A04C)($v0)
/* 333A0 800C87A0 24C60001 */  addiu      $a2, $a2, 1
/* 333A4 800C87A4 00C2102A */  slt        $v0, $a2, $v0
/* 333A8 800C87A8 1440FFF3 */  bnez       $v0, .L800C8778
/* 333AC 800C87AC 24E70008 */   addiu     $a3, $a3, 8
.L800C87B0:
/* 333B0 800C87B0 240200FE */  addiu      $v0, $zero, 0xfe
/* 333B4 800C87B4 A0E20000 */  sb         $v0, ($a3)
/* 333B8 800C87B8 03E00008 */  jr         $ra
/* 333BC 800C87BC 27BD0010 */   addiu     $sp, $sp, 0x10
