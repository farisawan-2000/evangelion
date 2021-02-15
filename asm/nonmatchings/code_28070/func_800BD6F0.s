.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD6F0
/* 282F0 800BD6F0 3C02800F */  lui        $v0, %hi(D_800F6140)
/* 282F4 800BD6F4 8C426140 */  lw         $v0, %lo(D_800F6140)($v0)
/* 282F8 800BD6F8 27BDFF80 */  addiu      $sp, $sp, -0x80
/* 282FC 800BD6FC AFB40070 */  sw         $s4, 0x70($sp)
/* 28300 800BD700 0080A021 */  addu       $s4, $a0, $zero
/* 28304 800BD704 AFB50074 */  sw         $s5, 0x74($sp)
/* 28308 800BD708 00A0A821 */  addu       $s5, $a1, $zero
/* 2830C 800BD70C AFB60078 */  sw         $s6, 0x78($sp)
/* 28310 800BD710 00C0B021 */  addu       $s6, $a2, $zero
/* 28314 800BD714 AFBF007C */  sw         $ra, 0x7c($sp)
/* 28318 800BD718 AFB3006C */  sw         $s3, 0x6c($sp)
/* 2831C 800BD71C AFB20068 */  sw         $s2, 0x68($sp)
/* 28320 800BD720 AFB10064 */  sw         $s1, 0x64($sp)
/* 28324 800BD724 10400003 */  beqz       $v0, .L800BD734
/* 28328 800BD728 AFB00060 */   sw        $s0, 0x60($sp)
/* 2832C 800BD72C 0802F619 */  j          .L800BD864
/* 28330 800BD730 00001021 */   addu      $v0, $zero, $zero
.L800BD734:
/* 28334 800BD734 24020001 */  addiu      $v0, $zero, 1
/* 28338 800BD738 3C01800F */  lui        $at, %hi(D_800F6140)
/* 2833C 800BD73C 0C030768 */  jal        func_800C1DA0
/* 28340 800BD740 AC226140 */   sw        $v0, %lo(D_800F6140)($at)
/* 28344 800BD744 00409021 */  addu       $s2, $v0, $zero
/* 28348 800BD748 00609821 */  addu       $s3, $v1, $zero
/* 2834C 800BD74C 56400022 */  bnezl      $s2, .L800BD7D8
/* 28350 800BD750 24020004 */   addiu     $v0, $zero, 4
/* 28354 800BD754 16400007 */  bnez       $s2, .L800BD774
/* 28358 800BD758 27B10040 */   addiu     $s1, $sp, 0x40
/* 2835C 800BD75C 3C020165 */  lui        $v0, 0x165
/* 28360 800BD760 3442A0BB */  ori        $v0, $v0, 0xa0bb
/* 28364 800BD764 0053102B */  sltu       $v0, $v0, $s3
/* 28368 800BD768 1440001B */  bnez       $v0, .L800BD7D8
/* 2836C 800BD76C 24020004 */   addiu     $v0, $zero, 4
/* 28370 800BD770 27B10040 */  addiu      $s1, $sp, 0x40
.L800BD774:
/* 28374 800BD774 02202021 */  addu       $a0, $s1, $zero
/* 28378 800BD778 27B00058 */  addiu      $s0, $sp, 0x58
/* 2837C 800BD77C 02002821 */  addu       $a1, $s0, $zero
/* 28380 800BD780 0C0301A4 */  jal        func_800C0690
/* 28384 800BD784 24060001 */   addiu     $a2, $zero, 1
/* 28388 800BD788 00004021 */  addu       $t0, $zero, $zero
/* 2838C 800BD78C 00004821 */  addu       $t1, $zero, $zero
/* 28390 800BD790 27A40020 */  addiu      $a0, $sp, 0x20
/* 28394 800BD794 24060000 */  addiu      $a2, $zero, 0
/* 28398 800BD798 3C070165 */  lui        $a3, 0x165
/* 2839C 800BD79C 34E7A0BC */  ori        $a3, $a3, 0xa0bc
/* 283A0 800BD7A0 00F3102B */  sltu       $v0, $a3, $s3
/* 283A4 800BD7A4 00F33823 */  subu       $a3, $a3, $s3
/* 283A8 800BD7A8 00D23023 */  subu       $a2, $a2, $s2
/* 283AC 800BD7AC 00C23023 */  subu       $a2, $a2, $v0
/* 283B0 800BD7B0 AFA80010 */  sw         $t0, 0x10($sp)
/* 283B4 800BD7B4 AFA90014 */  sw         $t1, 0x14($sp)
/* 283B8 800BD7B8 AFB10018 */  sw         $s1, 0x18($sp)
/* 283BC 800BD7BC 0C03078C */  jal        func_800C1E30
/* 283C0 800BD7C0 AFB0001C */   sw        $s0, 0x1c($sp)
/* 283C4 800BD7C4 02202021 */  addu       $a0, $s1, $zero
/* 283C8 800BD7C8 02002821 */  addu       $a1, $s0, $zero
/* 283CC 800BD7CC 0C030200 */  jal        func_800C0800
/* 283D0 800BD7D0 24060001 */   addiu     $a2, $zero, 1
/* 283D4 800BD7D4 24020004 */  addiu      $v0, $zero, 4
.L800BD7D8:
/* 283D8 800BD7D8 3C018015 */  lui        $at, %hi(D_8014A04C)
/* 283DC 800BD7DC A022A04C */  sb         $v0, %lo(D_8014A04C)($at)
/* 283E0 800BD7E0 0C02F650 */  jal        func_800BD940
/* 283E4 800BD7E4 00002021 */   addu      $a0, $zero, $zero
/* 283E8 800BD7E8 24040001 */  addiu      $a0, $zero, 1
/* 283EC 800BD7EC 3C118015 */  lui        $s1, %hi(D_80149DD0)
/* 283F0 800BD7F0 26319DD0 */  addiu      $s1, $s1, %lo(D_80149DD0)
/* 283F4 800BD7F4 0C0305F4 */  jal        func_800C17D0
/* 283F8 800BD7F8 02202821 */   addu      $a1, $s1, $zero
/* 283FC 800BD7FC 02802021 */  addu       $a0, $s4, $zero
/* 28400 800BD800 27B00058 */  addiu      $s0, $sp, 0x58
/* 28404 800BD804 02002821 */  addu       $a1, $s0, $zero
/* 28408 800BD808 0C030200 */  jal        func_800C0800
/* 2840C 800BD80C 24060001 */   addiu     $a2, $zero, 1
/* 28410 800BD810 00002021 */  addu       $a0, $zero, $zero
/* 28414 800BD814 0C0305F4 */  jal        func_800C17D0
/* 28418 800BD818 02202821 */   addu      $a1, $s1, $zero
/* 2841C 800BD81C 02802021 */  addu       $a0, $s4, $zero
/* 28420 800BD820 02002821 */  addu       $a1, $s0, $zero
/* 28424 800BD824 24060001 */  addiu      $a2, $zero, 1
/* 28428 800BD828 0C030200 */  jal        func_800C0800
/* 2842C 800BD82C 00408021 */   addu      $s0, $v0, $zero
/* 28430 800BD830 02A02021 */  addu       $a0, $s5, $zero
/* 28434 800BD834 0C02F623 */  jal        func_800BD88C
/* 28438 800BD838 02C02821 */   addu      $a1, $s6, $zero
/* 2843C 800BD83C 3C018017 */  lui        $at, %hi(D_8016D064)
/* 28440 800BD840 0C030620 */  jal        func_800C1880
/* 28444 800BD844 A020D064 */   sb        $zero, %lo(D_8016D064)($at)
/* 28448 800BD848 3C048017 */  lui        $a0, %hi(D_8016E2F0)
/* 2844C 800BD84C 2484E2F0 */  addiu      $a0, $a0, %lo(D_8016E2F0)
/* 28450 800BD850 3C058017 */  lui        $a1, %hi(D_8016D078)
/* 28454 800BD854 24A5D078 */  addiu      $a1, $a1, %lo(D_8016D078)
/* 28458 800BD858 0C0301A4 */  jal        func_800C0690
/* 2845C 800BD85C 24060001 */   addiu     $a2, $zero, 1
/* 28460 800BD860 02001021 */  addu       $v0, $s0, $zero
.L800BD864:
/* 28464 800BD864 8FBF007C */  lw         $ra, 0x7c($sp)
/* 28468 800BD868 8FB60078 */  lw         $s6, 0x78($sp)
/* 2846C 800BD86C 8FB50074 */  lw         $s5, 0x74($sp)
/* 28470 800BD870 8FB40070 */  lw         $s4, 0x70($sp)
/* 28474 800BD874 8FB3006C */  lw         $s3, 0x6c($sp)
/* 28478 800BD878 8FB20068 */  lw         $s2, 0x68($sp)
/* 2847C 800BD87C 8FB10064 */  lw         $s1, 0x64($sp)
/* 28480 800BD880 8FB00060 */  lw         $s0, 0x60($sp)
/* 28484 800BD884 03E00008 */  jr         $ra
/* 28488 800BD888 27BD0080 */   addiu     $sp, $sp, 0x80
