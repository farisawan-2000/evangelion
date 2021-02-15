.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B2658
/* 1D258 800B2658 3C038010 */  lui        $v1, %hi(D_80102BA8)
/* 1D25C 800B265C 8C632BA8 */  lw         $v1, %lo(D_80102BA8)($v1)
/* 1D260 800B2660 3C04800F */  lui        $a0, %hi(D_800F152C)
/* 1D264 800B2664 8C84152C */  lw         $a0, %lo(D_800F152C)($a0)
/* 1D268 800B2668 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 1D26C 800B266C 3C02800D */  lui        $v0, %hi(D_800CB7A0)
/* 1D270 800B2670 2442B7A0 */  addiu      $v0, $v0, %lo(D_800CB7A0)
/* 1D274 800B2674 AFA20018 */  sw         $v0, 0x18($sp)
/* 1D278 800B2678 3C028010 */  lui        $v0, %hi(D_800F80A0)
/* 1D27C 800B267C 244280A0 */  addiu      $v0, $v0, %lo(D_800F80A0)
/* 1D280 800B2680 AFBF0038 */  sw         $ra, 0x38($sp)
/* 1D284 800B2684 AFB30034 */  sw         $s3, 0x34($sp)
/* 1D288 800B2688 AFB20030 */  sw         $s2, 0x30($sp)
/* 1D28C 800B268C AFB1002C */  sw         $s1, 0x2c($sp)
/* 1D290 800B2690 AFB00028 */  sw         $s0, 0x28($sp)
/* 1D294 800B2694 AFA2001C */  sw         $v0, 0x1c($sp)
/* 1D298 800B2698 AFA30010 */  sw         $v1, 0x10($sp)
/* 1D29C 800B269C 8C820000 */  lw         $v0, ($a0)
/* 1D2A0 800B26A0 00008821 */  addu       $s1, $zero, $zero
/* 1D2A4 800B26A4 0040F809 */  jalr       $v0
/* 1D2A8 800B26A8 3C138000 */   lui       $s3, 0x8000
.L800B26AC:
/* 1D2AC 800B26AC 3C02800F */  lui        $v0, %hi(D_800F152C)
/* 1D2B0 800B26B0 8C42152C */  lw         $v0, %lo(D_800F152C)($v0)
/* 1D2B4 800B26B4 8C420004 */  lw         $v0, 4($v0)
/* 1D2B8 800B26B8 0040F809 */  jalr       $v0
/* 1D2BC 800B26BC 00000000 */   nop
/* 1D2C0 800B26C0 0C02E5C8 */  jal        func_800B9720
/* 1D2C4 800B26C4 00000000 */   nop
/* 1D2C8 800B26C8 0C02E5C4 */  jal        func_800B9710
/* 1D2CC 800B26CC 00408021 */   addu      $s0, $v0, $zero
/* 1D2D0 800B26D0 02138024 */  and        $s0, $s0, $s3
/* 1D2D4 800B26D4 1600FFF5 */  bnez       $s0, .L800B26AC
/* 1D2D8 800B26D8 00029082 */   srl       $s2, $v0, 2
/* 1D2DC 800B26DC 0C02C821 */  jal        func_800B2084
/* 1D2E0 800B26E0 00000000 */   nop
/* 1D2E4 800B26E4 3C04800F */  lui        $a0, %hi(D_800F1530)
/* 1D2E8 800B26E8 8C841530 */  lw         $a0, %lo(D_800F1530)($a0)
/* 1D2EC 800B26EC 8FA20020 */  lw         $v0, 0x20($sp)
/* 1D2F0 800B26F0 0004182B */  sltu       $v1, $zero, $a0
/* 1D2F4 800B26F4 0002102B */  sltu       $v0, $zero, $v0
/* 1D2F8 800B26F8 00621824 */  and        $v1, $v1, $v0
/* 1D2FC 800B26FC 10600005 */  beqz       $v1, .L800B2714
/* 1D300 800B2700 00000000 */   nop
/* 1D304 800B2704 8C850004 */  lw         $a1, 4($a0)
/* 1D308 800B2708 8C840000 */  lw         $a0, ($a0)
/* 1D30C 800B270C 0C02E614 */  jal        func_800B9850
/* 1D310 800B2710 00052880 */   sll       $a1, $a1, 2
.L800B2714:
/* 1D314 800B2714 3C028010 */  lui        $v0, %hi(D_80102BA4)
/* 1D318 800B2718 8C422BA4 */  lw         $v0, %lo(D_80102BA4)($v0)
/* 1D31C 800B271C 02402021 */  addu       $a0, $s2, $zero
/* 1D320 800B2720 001118C0 */  sll        $v1, $s1, 3
/* 1D324 800B2724 0C02CA71 */  jal        func_800B29C4
/* 1D328 800B2728 00438021 */   addu      $s0, $v0, $v1
/* 1D32C 800B272C 8E040000 */  lw         $a0, ($s0)
/* 1D330 800B2730 0C02F680 */  jal        func_800BDA00
/* 1D334 800B2734 AE020004 */   sw        $v0, 4($s0)
/* 1D338 800B2738 3C048010 */  lui        $a0, %hi(D_80102BA8)
/* 1D33C 800B273C 8C842BA8 */  lw         $a0, %lo(D_80102BA8)($a0)
/* 1D340 800B2740 8E070004 */  lw         $a3, 4($s0)
/* 1D344 800B2744 27A50020 */  addiu      $a1, $sp, 0x20
/* 1D348 800B2748 0C02D560 */  jal        func_800B5580
/* 1D34C 800B274C 00403021 */   addu      $a2, $v0, $zero
/* 1D350 800B2750 8FA30020 */  lw         $v1, 0x20($sp)
/* 1D354 800B2754 1060000E */  beqz       $v1, .L800B2790
/* 1D358 800B2758 00402021 */   addu      $a0, $v0, $zero
/* 1D35C 800B275C 3C028010 */  lui        $v0, %hi(D_80102BA8)
/* 1D360 800B2760 8C422BA8 */  lw         $v0, %lo(D_80102BA8)($v0)
/* 1D364 800B2764 3C03800F */  lui        $v1, %hi(D_800F152C)
/* 1D368 800B2768 8C63152C */  lw         $v1, %lo(D_800F152C)($v1)
/* 1D36C 800B276C 00821023 */  subu       $v0, $a0, $v0
/* 1D370 800B2770 000210C3 */  sra        $v0, $v0, 3
/* 1D374 800B2774 000210C0 */  sll        $v0, $v0, 3
/* 1D378 800B2778 AFA20014 */  sw         $v0, 0x14($sp)
/* 1D37C 800B277C 8C620008 */  lw         $v0, 8($v1)
/* 1D380 800B2780 0040F809 */  jalr       $v0
/* 1D384 800B2784 27A40010 */   addiu     $a0, $sp, 0x10
/* 1D388 800B2788 3C01800F */  lui        $at, %hi(D_800F1530)
/* 1D38C 800B278C AC301530 */  sw         $s0, %lo(D_800F1530)($at)
.L800B2790:
/* 1D390 800B2790 26230001 */  addiu      $v1, $s1, 1
/* 1D394 800B2794 3C02AAAA */  lui        $v0, 0xaaaa
/* 1D398 800B2798 3442AAAB */  ori        $v0, $v0, 0xaaab
/* 1D39C 800B279C 00620019 */  multu      $v1, $v0
/* 1D3A0 800B27A0 00004010 */  mfhi       $t0
/* 1D3A4 800B27A4 00088842 */  srl        $s1, $t0, 1
/* 1D3A8 800B27A8 00111040 */  sll        $v0, $s1, 1
/* 1D3AC 800B27AC 00511021 */  addu       $v0, $v0, $s1
/* 1D3B0 800B27B0 0802C9AB */  j          .L800B26AC
/* 1D3B4 800B27B4 00628823 */   subu      $s1, $v1, $v0
/* 1D3B8 800B27B8 8FBF0038 */  lw         $ra, 0x38($sp)
/* 1D3BC 800B27BC 8FB30034 */  lw         $s3, 0x34($sp)
/* 1D3C0 800B27C0 8FB20030 */  lw         $s2, 0x30($sp)
/* 1D3C4 800B27C4 8FB1002C */  lw         $s1, 0x2c($sp)
/* 1D3C8 800B27C8 8FB00028 */  lw         $s0, 0x28($sp)
/* 1D3CC 800B27CC 03E00008 */  jr         $ra
/* 1D3D0 800B27D0 27BD0040 */   addiu     $sp, $sp, 0x40
/* 1D3D4 800B27D4 00000000 */  nop
/* 1D3D8 800B27D8 00000000 */  nop
/* 1D3DC 800B27DC 00000000 */  nop
