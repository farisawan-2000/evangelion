glabel func_800512FC_ovl3
/* FA80C 800512FC 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* FA810 80051300 AFBF0034 */  sw         $ra, 0x34($sp)
/* FA814 80051304 AFB40030 */  sw         $s4, 0x30($sp)
/* FA818 80051308 AFB3002C */  sw         $s3, 0x2C($sp)
/* FA81C 8005130C AFB20028 */  sw         $s2, 0x28($sp)
/* FA820 80051310 AFB10024 */  sw         $s1, 0x24($sp)
/* FA824 80051314 0C00E109 */  jal        func_80038424_ovl3
/* FA828 80051318 AFB00020 */   sw        $s0, 0x20($sp)
/* FA82C 8005131C 24040249 */  addiu      $a0, $zero, 0x249
/* FA830 80051320 24050002 */  addiu      $a1, $zero, 0x2
/* FA834 80051324 0C00D925 */  jal        func_80036494_ovl3
/* FA838 80051328 24060036 */   addiu     $a2, $zero, 0x36
/* FA83C 8005132C 00409021 */  addu       $s2, $v0, $zero
/* FA840 80051330 8E44000C */  lw         $a0, 0xC($s2)
/* FA844 80051334 24050040 */  addiu      $a1, $zero, 0x40
/* FA848 80051338 0C028D89 */  jal        func_800A3624
/* FA84C 8005133C 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA850 80051340 8E43000C */  lw         $v1, 0xC($s2)
/* FA854 80051344 9462001E */  lhu        $v0, 0x1E($v1)
/* FA858 80051348 24040036 */  addiu      $a0, $zero, 0x36
/* FA85C 8005134C 24050037 */  addiu      $a1, $zero, 0x37
/* FA860 80051350 34420004 */  ori        $v0, $v0, 0x4
/* FA864 80051354 0C00DD19 */  jal        func_80037464_ovl3
/* FA868 80051358 A462001E */   sh        $v0, 0x1E($v1)
/* FA86C 8005135C 00409021 */  addu       $s2, $v0, $zero
/* FA870 80051360 8E44000C */  lw         $a0, 0xC($s2)
/* FA874 80051364 24050040 */  addiu      $a1, $zero, 0x40
/* FA878 80051368 0C028D89 */  jal        func_800A3624
/* FA87C 8005136C 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA880 80051370 8E43000C */  lw         $v1, 0xC($s2)
/* FA884 80051374 9462001E */  lhu        $v0, 0x1E($v1)
/* FA888 80051378 24110007 */  addiu      $s1, $zero, 0x7
/* FA88C 8005137C 34420004 */  ori        $v0, $v0, 0x4
/* FA890 80051380 A462001E */  sh         $v0, 0x1E($v1)
.L80051384_ovl3:
/* FA894 80051384 8E44000C */  lw         $a0, 0xC($s2)
/* FA898 80051388 323000FF */  andi       $s0, $s1, 0xFF
/* FA89C 8005138C 02002821 */  addu       $a1, $s0, $zero
/* FA8A0 80051390 0C00DE7C */  jal        func_800379F0_ovl3
/* FA8A4 80051394 26310001 */   addiu     $s1, $s1, 0x1
/* FA8A8 80051398 8E44000C */  lw         $a0, 0xC($s2)
/* FA8AC 8005139C 02002821 */  addu       $a1, $s0, $zero
/* FA8B0 800513A0 24420842 */  addiu      $v0, $v0, 0x842
/* FA8B4 800513A4 0C00DE6C */  jal        func_800379B0_ovl3
/* FA8B8 800513A8 3046FFFF */   andi      $a2, $v0, 0xFFFF
/* FA8BC 800513AC 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* FA8C0 800513B0 2C42000B */  sltiu      $v0, $v0, 0xB
/* FA8C4 800513B4 1440FFF3 */  bnez       $v0, .L80051384_ovl3
/* FA8C8 800513B8 00000000 */   nop
/* FA8CC 800513BC 00008821 */  addu       $s1, $zero, $zero
/* FA8D0 800513C0 2624024A */  addiu      $a0, $s1, 0x24A
.L800513C4_ovl3:
/* FA8D4 800513C4 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* FA8D8 800513C8 24050002 */  addiu      $a1, $zero, 0x2
/* FA8DC 800513CC 26260018 */  addiu      $a2, $s1, 0x18
/* FA8E0 800513D0 0C00D925 */  jal        func_80036494_ovl3
/* FA8E4 800513D4 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* FA8E8 800513D8 00409021 */  addu       $s2, $v0, $zero
/* FA8EC 800513DC 8E44000C */  lw         $a0, 0xC($s2)
/* FA8F0 800513E0 240501C0 */  addiu      $a1, $zero, 0x1C0
/* FA8F4 800513E4 0C028D89 */  jal        func_800A3624
/* FA8F8 800513E8 24060240 */   addiu     $a2, $zero, 0x240
/* FA8FC 800513EC 8E43000C */  lw         $v1, 0xC($s2)
/* FA900 800513F0 9462001E */  lhu        $v0, 0x1E($v1)
/* FA904 800513F4 26310001 */  addiu      $s1, $s1, 0x1
/* FA908 800513F8 34420004 */  ori        $v0, $v0, 0x4
/* FA90C 800513FC A462001E */  sh         $v0, 0x1E($v1)
/* FA910 80051400 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* FA914 80051404 2C420002 */  sltiu      $v0, $v0, 0x2
/* FA918 80051408 1440FFEE */  bnez       $v0, .L800513C4_ovl3
/* FA91C 8005140C 2624024A */   addiu     $a0, $s1, 0x24A
/* FA920 80051410 3C048007 */  lui        $a0, %hi(D_8006949C_ovl3)
/* FA924 80051414 2484949C */  addiu      $a0, $a0, %lo(D_8006949C_ovl3)
/* FA928 80051418 2405FFFE */  addiu      $a1, $zero, -0x2
/* FA92C 8005141C 2414FFFE */  addiu      $s4, $zero, -0x2
/* FA930 80051420 24130001 */  addiu      $s3, $zero, 0x1
/* FA934 80051424 24120002 */  addiu      $s2, $zero, 0x2
/* FA938 80051428 AFA40018 */  sw         $a0, 0x18($sp)
/* FA93C 8005142C A3B4001C */  sb         $s4, 0x1C($sp)
/* FA940 80051430 A3A0001D */  sb         $zero, 0x1D($sp)
/* FA944 80051434 A3B3001E */  sb         $s3, 0x1E($sp)
/* FA948 80051438 0C029D2A */  jal        func_800A74A8
/* FA94C 8005143C A3B2001F */   sb        $s2, 0x1F($sp)
/* FA950 80051440 27A40018 */  addiu      $a0, $sp, 0x18
/* FA954 80051444 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FA958 80051448 240620D3 */  addiu      $a2, $zero, 0x20D3
/* FA95C 8005144C 00023FC2 */  srl        $a3, $v0, 31
/* FA960 80051450 00E23821 */  addu       $a3, $a3, $v0
/* FA964 80051454 00073843 */  sra        $a3, $a3, 1
/* FA968 80051458 241000A0 */  addiu      $s0, $zero, 0xA0
/* FA96C 8005145C 02073823 */  subu       $a3, $s0, $a3
/* FA970 80051460 00073C00 */  sll        $a3, $a3, 16
/* FA974 80051464 00073C03 */  sra        $a3, $a3, 16
/* FA978 80051468 241100A7 */  addiu      $s1, $zero, 0xA7
/* FA97C 8005146C 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FA980 80051470 AFB10010 */   sw        $s1, 0x10($sp)
/* FA984 80051474 3C048007 */  lui        $a0, %hi(D_800694D8_ovl3)
/* FA988 80051478 248494D8 */  addiu      $a0, $a0, %lo(D_800694D8_ovl3)
/* FA98C 8005147C 2405FFFE */  addiu      $a1, $zero, -0x2
/* FA990 80051480 AFA40018 */  sw         $a0, 0x18($sp)
/* FA994 80051484 A3B4001C */  sb         $s4, 0x1C($sp)
/* FA998 80051488 A3A0001D */  sb         $zero, 0x1D($sp)
/* FA99C 8005148C A3B3001E */  sb         $s3, 0x1E($sp)
/* FA9A0 80051490 0C029D2A */  jal        func_800A74A8
/* FA9A4 80051494 A3B2001F */   sb        $s2, 0x1F($sp)
/* FA9A8 80051498 27A40018 */  addiu      $a0, $sp, 0x18
/* FA9AC 8005149C 240520CA */  addiu      $a1, $zero, 0x20CA
/* FA9B0 800514A0 240620D4 */  addiu      $a2, $zero, 0x20D4
/* FA9B4 800514A4 00021FC2 */  srl        $v1, $v0, 31
/* FA9B8 800514A8 00621821 */  addu       $v1, $v1, $v0
/* FA9BC 800514AC 00031843 */  sra        $v1, $v1, 1
/* FA9C0 800514B0 02038023 */  subu       $s0, $s0, $v1
/* FA9C4 800514B4 00108400 */  sll        $s0, $s0, 16
/* FA9C8 800514B8 00103C03 */  sra        $a3, $s0, 16
/* FA9CC 800514BC 0C00DEF7 */  jal        func_80037BDC_ovl3
/* FA9D0 800514C0 AFB10010 */   sw        $s1, 0x10($sp)
/* FA9D4 800514C4 8FBF0034 */  lw         $ra, 0x34($sp)
/* FA9D8 800514C8 8FB40030 */  lw         $s4, 0x30($sp)
/* FA9DC 800514CC 8FB3002C */  lw         $s3, 0x2C($sp)
/* FA9E0 800514D0 8FB20028 */  lw         $s2, 0x28($sp)
/* FA9E4 800514D4 8FB10024 */  lw         $s1, 0x24($sp)
/* FA9E8 800514D8 8FB00020 */  lw         $s0, 0x20($sp)
/* FA9EC 800514DC 03E00008 */  jr         $ra
/* FA9F0 800514E0 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800512FC_ovl3, . - func_800512FC_ovl3
