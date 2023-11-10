glabel func_800A2740
/* D340 800A2740 00806021 */  addu       $t4, $a0, $zero
/* D344 800A2744 3C03E300 */  lui        $v1, (0xE3000A01 >> 16)
/* D348 800A2748 34630A01 */  ori        $v1, $v1, (0xE3000A01 & 0xFFFF)
/* D34C 800A274C 3C05E200 */  lui        $a1, (0xE200001C >> 16)
/* D350 800A2750 34A5001C */  ori        $a1, $a1, (0xE200001C & 0xFFFF)
/* D354 800A2754 3C040055 */  lui        $a0, (0x552230 >> 16)
/* D358 800A2758 34842230 */  ori        $a0, $a0, (0x552230 & 0xFFFF)
/* D35C 800A275C 3C09D9FF */  lui        $t1, (0xD9FFFFFF >> 16)
/* D360 800A2760 3529FFFF */  ori        $t1, $t1, (0xD9FFFFFF & 0xFFFF)
/* D364 800A2764 3C060020 */  lui        $a2, (0x200005 >> 16)
/* D368 800A2768 34C60005 */  ori        $a2, $a2, (0x200005 & 0xFFFF)
/* D36C 800A276C 3C0AFCFF */  lui        $t2, (0xFCFFFFFF >> 16)
/* D370 800A2770 354AFFFF */  ori        $t2, $t2, (0xFCFFFFFF & 0xFFFF)
/* D374 800A2774 3C07FFFE */  lui        $a3, (0xFFFE793C >> 16)
/* D378 800A2778 34E7793C */  ori        $a3, $a3, (0xFFFE793C & 0xFFFF)
/* D37C 800A277C 3C0B8015 */  lui        $t3, %hi(gDisplayListHead)
/* D380 800A2780 8D6B9F94 */  lw         $t3, %lo(gDisplayListHead)($t3)
/* D384 800A2784 3C08E300 */  lui        $t0, (0xE3001801 >> 16)
/* D388 800A2788 35081801 */  ori        $t0, $t0, (0xE3001801 & 0xFFFF)
/* D38C 800A278C 25620008 */  addiu      $v0, $t3, 0x8
/* D390 800A2790 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D394 800A2794 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D398 800A2798 3C02E700 */  lui        $v0, (0xE7000000 >> 16)
/* D39C 800A279C AD620000 */  sw         $v0, 0x0($t3)
/* D3A0 800A27A0 25620010 */  addiu      $v0, $t3, 0x10
/* D3A4 800A27A4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D3A8 800A27A8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D3AC 800A27AC 25620018 */  addiu      $v0, $t3, 0x18
/* D3B0 800A27B0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D3B4 800A27B4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D3B8 800A27B8 25620020 */  addiu      $v0, $t3, 0x20
/* D3BC 800A27BC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D3C0 800A27C0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D3C4 800A27C4 3C02D900 */  lui        $v0, (0xD9000000 >> 16)
/* D3C8 800A27C8 AD620018 */  sw         $v0, 0x18($t3)
/* D3CC 800A27CC 25620028 */  addiu      $v0, $t3, 0x28
/* D3D0 800A27D0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D3D4 800A27D4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D3D8 800A27D8 25620030 */  addiu      $v0, $t3, 0x30
/* D3DC 800A27DC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D3E0 800A27E0 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D3E4 800A27E4 25620038 */  addiu      $v0, $t3, 0x38
/* D3E8 800A27E8 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D3EC 800A27EC AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D3F0 800A27F0 24020040 */  addiu      $v0, $zero, 0x40
/* D3F4 800A27F4 AD620034 */  sw         $v0, 0x34($t3)
/* D3F8 800A27F8 25620040 */  addiu      $v0, $t3, 0x40
/* D3FC 800A27FC 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D400 800A2800 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D404 800A2804 3C02D700 */  lui        $v0, (0xD7000000 >> 16)
/* D408 800A2808 AD600004 */  sw         $zero, 0x4($t3)
/* D40C 800A280C AD630008 */  sw         $v1, 0x8($t3)
/* D410 800A2810 AD60000C */  sw         $zero, 0xC($t3)
/* D414 800A2814 AD650010 */  sw         $a1, 0x10($t3)
/* D418 800A2818 AD640014 */  sw         $a0, 0x14($t3)
/* D41C 800A281C AD60001C */  sw         $zero, 0x1C($t3)
/* D420 800A2820 AD690020 */  sw         $t1, 0x20($t3)
/* D424 800A2824 AD660024 */  sw         $a2, 0x24($t3)
/* D428 800A2828 AD6A0028 */  sw         $t2, 0x28($t3)
/* D42C 800A282C AD67002C */  sw         $a3, 0x2C($t3)
/* D430 800A2830 AD680030 */  sw         $t0, 0x30($t3)
/* D434 800A2834 AD620038 */  sw         $v0, 0x38($t3)
/* D438 800A2838 AD60003C */  sw         $zero, 0x3C($t3)
/* D43C 800A283C 81830040 */  lb         $v1, 0x40($t4)
/* D440 800A2840 24020001 */  addiu      $v0, $zero, 0x1
/* D444 800A2844 10620005 */  beq        $v1, $v0, .L800A285C
/* D448 800A2848 24020002 */   addiu     $v0, $zero, 0x2
/* D44C 800A284C 10620012 */  beq        $v1, $v0, .L800A2898
/* D450 800A2850 3C030100 */   lui       $v1, (0x1004008 >> 16)
/* D454 800A2854 08028A35 */  j          .L800A28D4
/* D458 800A2858 00000000 */   nop
.L800A285C:
/* D45C 800A285C 3C030100 */  lui        $v1, (0x1003006 >> 16)
/* D460 800A2860 34633006 */  ori        $v1, $v1, (0x1003006 & 0xFFFF)
/* D464 800A2864 3C040500 */  lui        $a0, (0x5000204 >> 16)
/* D468 800A2868 34840204 */  ori        $a0, $a0, (0x5000204 & 0xFFFF)
/* D46C 800A286C 25620048 */  addiu      $v0, $t3, 0x48
/* D470 800A2870 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D474 800A2874 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D478 800A2878 25620050 */  addiu      $v0, $t3, 0x50
/* D47C 800A287C AD630040 */  sw         $v1, 0x40($t3)
/* D480 800A2880 AD6C0044 */  sw         $t4, 0x44($t3)
/* D484 800A2884 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D488 800A2888 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D48C 800A288C AD640048 */  sw         $a0, 0x48($t3)
/* D490 800A2890 08028A35 */  j          .L800A28D4
/* D494 800A2894 AD60004C */   sw        $zero, 0x4C($t3)
.L800A2898:
/* D498 800A2898 34634008 */  ori        $v1, $v1, (0x1004008 & 0xFFFF)
/* D49C 800A289C 3C050600 */  lui        $a1, (0x6000204 >> 16)
/* D4A0 800A28A0 34A50204 */  ori        $a1, $a1, (0x6000204 & 0xFFFF)
/* D4A4 800A28A4 3C040006 */  lui        $a0, (0x60402 >> 16)
/* D4A8 800A28A8 34840402 */  ori        $a0, $a0, (0x60402 & 0xFFFF)
/* D4AC 800A28AC 25620048 */  addiu      $v0, $t3, 0x48
/* D4B0 800A28B0 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D4B4 800A28B4 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D4B8 800A28B8 25620050 */  addiu      $v0, $t3, 0x50
/* D4BC 800A28BC AD630040 */  sw         $v1, 0x40($t3)
/* D4C0 800A28C0 AD6C0044 */  sw         $t4, 0x44($t3)
/* D4C4 800A28C4 3C018015 */  lui        $at, %hi(gDisplayListHead)
/* D4C8 800A28C8 AC229F94 */  sw         $v0, %lo(gDisplayListHead)($at)
/* D4CC 800A28CC AD650048 */  sw         $a1, 0x48($t3)
/* D4D0 800A28D0 AD64004C */  sw         $a0, 0x4C($t3)
.L800A28D4:
/* D4D4 800A28D4 03E00008 */  jr         $ra
/* D4D8 800A28D8 00000000 */   nop
/* D4DC 800A28DC 00000000 */  nop
.size func_800A2740, . - func_800A2740
