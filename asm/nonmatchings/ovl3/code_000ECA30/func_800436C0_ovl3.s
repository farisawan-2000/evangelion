glabel func_800436C0_ovl3
/* ECBD0 800436C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* ECBD4 800436C4 AFB00010 */  sw         $s0, 0x10($sp)
/* ECBD8 800436C8 3090FFFF */  andi       $s0, $a0, 0xFFFF
/* ECBDC 800436CC AFB10014 */  sw         $s1, 0x14($sp)
/* ECBE0 800436D0 2611FFF0 */  addiu      $s1, $s0, -0x10
/* ECBE4 800436D4 0620000B */  bltz       $s1, .L80043704_ovl3
/* ECBE8 800436D8 AFBF0018 */   sw        $ra, 0x18($sp)
/* ECBEC 800436DC 0C00D8C1 */  jal        func_80036304_ovl3
/* ECBF0 800436E0 24040020 */   addiu     $a0, $zero, 0x20
/* ECBF4 800436E4 8C42000C */  lw         $v0, 0xC($v0)
/* ECBF8 800436E8 00102140 */  sll        $a0, $s0, 5
/* ECBFC 800436EC 8C420014 */  lw         $v0, 0x14($v0)
/* ECC00 800436F0 00112940 */  sll        $a1, $s1, 5
/* ECC04 800436F4 24060020 */  addiu      $a2, $zero, 0x20
/* ECC08 800436F8 00442021 */  addu       $a0, $v0, $a0
/* ECC0C 800436FC 0C03006C */  jal        func_800C01B0
/* ECC10 80043700 00452821 */   addu      $a1, $v0, $a1
.L80043704_ovl3:
/* ECC14 80043704 8FBF0018 */  lw         $ra, 0x18($sp)
/* ECC18 80043708 8FB10014 */  lw         $s1, 0x14($sp)
/* ECC1C 8004370C 8FB00010 */  lw         $s0, 0x10($sp)
/* ECC20 80043710 03E00008 */  jr         $ra
/* ECC24 80043714 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800436C0_ovl3, . - func_800436C0_ovl3
