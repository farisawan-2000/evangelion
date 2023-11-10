glabel func_800B73C0
/* 21FC0 800B73C0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 21FC4 800B73C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 21FC8 800B73C8 00808821 */  addu       $s1, $a0, $zero
/* 21FCC 800B73CC AFB00010 */  sw         $s0, 0x10($sp)
/* 21FD0 800B73D0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 21FD4 800B73D4 0C02E135 */  jal        func_800B84D4
/* 21FD8 800B73D8 00A08021 */   addu      $s0, $a1, $zero
/* 21FDC 800B73DC 00102040 */  sll        $a0, $s0, 1
/* 21FE0 800B73E0 00902021 */  addu       $a0, $a0, $s0
/* 21FE4 800B73E4 00042040 */  sll        $a0, $a0, 1
/* 21FE8 800B73E8 3C028015 */  lui        $v0, %hi(D_8014A030)
/* 21FEC 800B73EC 2442A030 */  addiu      $v0, $v0, %lo(D_8014A030)
/* 21FF0 800B73F0 00822021 */  addu       $a0, $a0, $v0
/* 21FF4 800B73F4 02202821 */  addu       $a1, $s1, $zero
/* 21FF8 800B73F8 0C03006C */  jal        func_800C01B0
/* 21FFC 800B73FC 24060006 */   addiu     $a2, $zero, 0x6
/* 22000 800B7400 0C02E13F */  jal        func_800B84FC
/* 22004 800B7404 00000000 */   nop
/* 22008 800B7408 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2200C 800B740C 8FB10014 */  lw         $s1, 0x14($sp)
/* 22010 800B7410 8FB00010 */  lw         $s0, 0x10($sp)
/* 22014 800B7414 03E00008 */  jr         $ra
/* 22018 800B7418 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2201C 800B741C 00000000 */  nop
.size func_800B73C0, . - func_800B73C0
