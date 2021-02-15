.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C2740
/* 2D340 800C2740 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2D344 800C2744 AFB00010 */  sw         $s0, 0x10($sp)
/* 2D348 800C2748 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2D34C 800C274C 0C0319D0 */  jal        func_800C6740
/* 2D350 800C2750 00808021 */   addu      $s0, $a0, $zero
/* 2D354 800C2754 00403021 */  addu       $a2, $v0, $zero
/* 2D358 800C2758 32020001 */  andi       $v0, $s0, 1
/* 2D35C 800C275C 10400007 */  beqz       $v0, .L800C277C
/* 2D360 800C2760 32020002 */   andi      $v0, $s0, 2
/* 2D364 800C2764 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 2D368 800C2768 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 2D36C 800C276C 8C62000C */  lw         $v0, 0xc($v1)
/* 2D370 800C2770 34420008 */  ori        $v0, $v0, 8
/* 2D374 800C2774 AC62000C */  sw         $v0, 0xc($v1)
/* 2D378 800C2778 32020002 */  andi       $v0, $s0, 2
.L800C277C:
/* 2D37C 800C277C 10400006 */  beqz       $v0, .L800C2798
/* 2D380 800C2780 2404FFF7 */   addiu     $a0, $zero, -9
/* 2D384 800C2784 3C02800F */  lui        $v0, %hi(D_800F7CA4)
/* 2D388 800C2788 8C427CA4 */  lw         $v0, %lo(D_800F7CA4)($v0)
/* 2D38C 800C278C 8C43000C */  lw         $v1, 0xc($v0)
/* 2D390 800C2790 00641824 */  and        $v1, $v1, $a0
/* 2D394 800C2794 AC43000C */  sw         $v1, 0xc($v0)
.L800C2798:
/* 2D398 800C2798 32020004 */  andi       $v0, $s0, 4
/* 2D39C 800C279C 10400007 */  beqz       $v0, .L800C27BC
/* 2D3A0 800C27A0 32020008 */   andi      $v0, $s0, 8
/* 2D3A4 800C27A4 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 2D3A8 800C27A8 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 2D3AC 800C27AC 8C62000C */  lw         $v0, 0xc($v1)
/* 2D3B0 800C27B0 34420004 */  ori        $v0, $v0, 4
/* 2D3B4 800C27B4 AC62000C */  sw         $v0, 0xc($v1)
/* 2D3B8 800C27B8 32020008 */  andi       $v0, $s0, 8
.L800C27BC:
/* 2D3BC 800C27BC 10400006 */  beqz       $v0, .L800C27D8
/* 2D3C0 800C27C0 2404FFFB */   addiu     $a0, $zero, -5
/* 2D3C4 800C27C4 3C02800F */  lui        $v0, %hi(D_800F7CA4)
/* 2D3C8 800C27C8 8C427CA4 */  lw         $v0, %lo(D_800F7CA4)($v0)
/* 2D3CC 800C27CC 8C43000C */  lw         $v1, 0xc($v0)
/* 2D3D0 800C27D0 00641824 */  and        $v1, $v1, $a0
/* 2D3D4 800C27D4 AC43000C */  sw         $v1, 0xc($v0)
.L800C27D8:
/* 2D3D8 800C27D8 32020010 */  andi       $v0, $s0, 0x10
/* 2D3DC 800C27DC 10400007 */  beqz       $v0, .L800C27FC
/* 2D3E0 800C27E0 32020020 */   andi      $v0, $s0, 0x20
/* 2D3E4 800C27E4 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 2D3E8 800C27E8 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 2D3EC 800C27EC 8C62000C */  lw         $v0, 0xc($v1)
/* 2D3F0 800C27F0 34420010 */  ori        $v0, $v0, 0x10
/* 2D3F4 800C27F4 AC62000C */  sw         $v0, 0xc($v1)
/* 2D3F8 800C27F8 32020020 */  andi       $v0, $s0, 0x20
.L800C27FC:
/* 2D3FC 800C27FC 10400006 */  beqz       $v0, .L800C2818
/* 2D400 800C2800 2404FFEF */   addiu     $a0, $zero, -0x11
/* 2D404 800C2804 3C02800F */  lui        $v0, %hi(D_800F7CA4)
/* 2D408 800C2808 8C427CA4 */  lw         $v0, %lo(D_800F7CA4)($v0)
/* 2D40C 800C280C 8C43000C */  lw         $v1, 0xc($v0)
/* 2D410 800C2810 00641824 */  and        $v1, $v1, $a0
/* 2D414 800C2814 AC43000C */  sw         $v1, 0xc($v0)
.L800C2818:
/* 2D418 800C2818 32020040 */  andi       $v0, $s0, 0x40
/* 2D41C 800C281C 10400008 */  beqz       $v0, .L800C2840
/* 2D420 800C2820 3C030001 */   lui       $v1, 1
/* 2D424 800C2824 3C04800F */  lui        $a0, %hi(D_800F7CA4)
/* 2D428 800C2828 8C847CA4 */  lw         $a0, %lo(D_800F7CA4)($a0)
/* 2D42C 800C282C 8C82000C */  lw         $v0, 0xc($a0)
/* 2D430 800C2830 00431025 */  or         $v0, $v0, $v1
/* 2D434 800C2834 2403FCFF */  addiu      $v1, $zero, -0x301
/* 2D438 800C2838 00431024 */  and        $v0, $v0, $v1
/* 2D43C 800C283C AC82000C */  sw         $v0, 0xc($a0)
.L800C2840:
/* 2D440 800C2840 32020080 */  andi       $v0, $s0, 0x80
/* 2D444 800C2844 1040000C */  beqz       $v0, .L800C2878
/* 2D448 800C2848 3C02FFFE */   lui       $v0, 0xfffe
/* 2D44C 800C284C 3C04800F */  lui        $a0, %hi(D_800F7CA4)
/* 2D450 800C2850 8C847CA4 */  lw         $a0, %lo(D_800F7CA4)($a0)
/* 2D454 800C2854 8C83000C */  lw         $v1, 0xc($a0)
/* 2D458 800C2858 8C850008 */  lw         $a1, 8($a0)
/* 2D45C 800C285C 3442FFFF */  ori        $v0, $v0, 0xffff
/* 2D460 800C2860 00621824 */  and        $v1, $v1, $v0
/* 2D464 800C2864 AC83000C */  sw         $v1, 0xc($a0)
/* 2D468 800C2868 8CA20004 */  lw         $v0, 4($a1)
/* 2D46C 800C286C 30420300 */  andi       $v0, $v0, 0x300
/* 2D470 800C2870 00621825 */  or         $v1, $v1, $v0
/* 2D474 800C2874 AC83000C */  sw         $v1, 0xc($a0)
.L800C2878:
/* 2D478 800C2878 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 2D47C 800C287C 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 2D480 800C2880 94620000 */  lhu        $v0, ($v1)
/* 2D484 800C2884 00C02021 */  addu       $a0, $a2, $zero
/* 2D488 800C2888 34420008 */  ori        $v0, $v0, 8
/* 2D48C 800C288C 0C0319EC */  jal        func_800C67B0
/* 2D490 800C2890 A4620000 */   sh        $v0, ($v1)
/* 2D494 800C2894 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2D498 800C2898 8FB00010 */  lw         $s0, 0x10($sp)
/* 2D49C 800C289C 03E00008 */  jr         $ra
/* 2D4A0 800C28A0 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2D4A4 800C28A4 00000000 */  nop
/* 2D4A8 800C28A8 00000000 */  nop
/* 2D4AC 800C28AC 00000000 */  nop
