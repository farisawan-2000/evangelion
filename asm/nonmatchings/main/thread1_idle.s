glabel thread1_idle
/* 18414 800AD814 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 18418 800AD818 AFBF0020 */  sw         $ra, 0x20($sp)
/* 1841C 800AD81C AFBE001C */  sw         $fp, 0x1c($sp)
/* 18420 800AD820 AFB00018 */  sw         $s0, 0x18($sp)
/* 18424 800AD824 03A0F021 */  addu       $fp, $sp, $zero
/* 18428 800AD828 AFC40028 */  sw         $a0, 0x28($fp)
/* 1842C 800AD82C 3C018017 */  lui        $at, %hi(D_8016D0E0)
/* 18430 800AD830 0C02DB30 */  jal        func_800B6CC0
/* 18434 800AD834 AC20D0E0 */   sw        $zero, %lo(D_8016D0E0)($at)
/* 18438 800AD838 24040002 */  addiu      $a0, $zero, 2
/* 1843C 800AD83C 0C02D664 */  jal        func_800B5990
/* 18440 800AD840 24050001 */   addiu     $a1, $zero, 1
/* 18444 800AD844 0C0309D0 */  jal        func_800C2740
/* 18448 800AD848 2404005A */   addiu     $a0, $zero, 0x5a
/* 1844C 800AD84C 3C028015 */  lui        $v0, %hi(D_8014C370)
/* 18450 800AD850 2442C370 */  addiu      $v0, $v0, %lo(D_8014C370)
/* 18454 800AD854 AFA20010 */  sw         $v0, 0x10($sp)
/* 18458 800AD858 2402000A */  addiu      $v0, $zero, 0xa
/* 1845C 800AD85C AFA20014 */  sw         $v0, 0x14($sp)
/* 18460 800AD860 3C048010 */  lui        $a0, %hi(D_80100760)
/* 18464 800AD864 24840760 */  addiu      $a0, $a0, %lo(D_80100760)
/* 18468 800AD868 24050003 */  addiu      $a1, $zero, 3
/* 1846C 800AD86C 3C06800B */  lui        $a2, %hi(thread3_main)
/* 18470 800AD870 24C68A10 */  addiu      $a2, $a2, %lo(thread3_main)
/* 18474 800AD874 0C03065C */  jal        osCreateThread
/* 18478 800AD878 00003821 */   addu      $a3, $zero, $zero
/* 1847C 800AD87C 3C048010 */  lui        $a0, %hi(D_80100760)
/* 18480 800AD880 0C0306CC */  jal        osStartThread
/* 18484 800AD884 24840760 */   addiu     $a0, $a0, %lo(D_80100760)
/* 18488 800AD888 3C048010 */  lui        $a0, %hi(D_801005B0)
/* 1848C 800AD88C 248405B0 */  addiu      $a0, $a0, %lo(D_801005B0)
/* 18490 800AD890 0C030698 */  jal        func_800C1A60
/* 18494 800AD894 00002821 */   addu      $a1, $zero, $zero
.L800AD898:
/* 18498 800AD898 0802B62A */  j          .L800AD8A8
/* 1849C 800AD89C 00000000 */   nop
/* 184A0 800AD8A0 0802B634 */  j          .L800AD8D0
/* 184A4 800AD8A4 00000000 */   nop
.L800AD8A8:
/* 184A8 800AD8A8 3C028017 */  lui        $v0, %hi(D_8016D0E0)
/* 184AC 800AD8AC 8C42D0E0 */  lw         $v0, %lo(D_8016D0E0)($v0)
/* 184B0 800AD8B0 10400005 */  beqz       $v0, .L800AD8C8
/* 184B4 800AD8B4 00000000 */   nop
/* 184B8 800AD8B8 3C108017 */  lui        $s0, %hi(D_8016D0E0)
/* 184BC 800AD8BC 8E10D0E0 */  lw         $s0, %lo(D_8016D0E0)($s0)
/* 184C0 800AD8C0 0200F809 */  jalr       $s0
/* 184C4 800AD8C4 00000000 */   nop
.L800AD8C8:
/* 184C8 800AD8C8 0802B626 */  j          .L800AD898
/* 184CC 800AD8CC 00000000 */   nop
.L800AD8D0:
/* 184D0 800AD8D0 03C0E821 */  addu       $sp, $fp, $zero
/* 184D4 800AD8D4 8FBF0020 */  lw         $ra, 0x20($sp)
/* 184D8 800AD8D8 8FBE001C */  lw         $fp, 0x1c($sp)
/* 184DC 800AD8DC 8FB00018 */  lw         $s0, 0x18($sp)
/* 184E0 800AD8E0 03E00008 */  jr         $ra
/* 184E4 800AD8E4 27BD0028 */   addiu     $sp, $sp, 0x28
/* 184E8 800AD8E8 00000000 */  nop
/* 184EC 800AD8EC 00000000 */  nop
