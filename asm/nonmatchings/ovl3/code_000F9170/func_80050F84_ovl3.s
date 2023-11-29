glabel func_80050F84_ovl3
/* FA494 80050F84 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* FA498 80050F88 3C048031 */  lui        $a0, (0x80317420 >> 16)
/* FA49C 80050F8C 34847420 */  ori        $a0, $a0, (0x80317420 & 0xFFFF)
/* FA4A0 80050F90 2405023D */  addiu      $a1, $zero, 0x23D
/* FA4A4 80050F94 24060009 */  addiu      $a2, $zero, 0x9
/* FA4A8 80050F98 24070036 */  addiu      $a3, $zero, 0x36
/* FA4AC 80050F9C AFBF0024 */  sw         $ra, 0x24($sp)
/* FA4B0 80050FA0 AFB20020 */  sw         $s2, 0x20($sp)
/* FA4B4 80050FA4 AFB1001C */  sw         $s1, 0x1C($sp)
/* FA4B8 80050FA8 0C00D9E0 */  jal        func_80036780_ovl3
/* FA4BC 80050FAC AFB00018 */   sw        $s0, 0x18($sp)
/* FA4C0 80050FB0 00408021 */  addu       $s0, $v0, $zero
/* FA4C4 80050FB4 8E04000C */  lw         $a0, 0xC($s0)
/* FA4C8 80050FB8 24050044 */  addiu      $a1, $zero, 0x44
/* FA4CC 80050FBC 0C028D89 */  jal        func_800A3624
/* FA4D0 80050FC0 240600C0 */   addiu     $a2, $zero, 0xC0
/* FA4D4 80050FC4 8E03000C */  lw         $v1, 0xC($s0)
/* FA4D8 80050FC8 9462001E */  lhu        $v0, 0x1E($v1)
/* FA4DC 80050FCC 00008821 */  addu       $s1, $zero, $zero
/* FA4E0 80050FD0 34420004 */  ori        $v0, $v0, 0x4
/* FA4E4 80050FD4 A462001E */  sh         $v0, 0x1E($v1)
/* FA4E8 80050FD8 26240246 */  addiu      $a0, $s1, 0x246
.L80050FDC_ovl3:
/* FA4EC 80050FDC 3084FFFF */  andi       $a0, $a0, 0xFFFF
/* FA4F0 80050FE0 24050002 */  addiu      $a1, $zero, 0x2
/* FA4F4 80050FE4 26260018 */  addiu      $a2, $s1, 0x18
/* FA4F8 80050FE8 0C00D925 */  jal        func_80036494_ovl3
/* FA4FC 80050FEC 30C6FFFF */   andi      $a2, $a2, 0xFFFF
/* FA500 80050FF0 00408021 */  addu       $s0, $v0, $zero
/* FA504 80050FF4 8E04000C */  lw         $a0, 0xC($s0)
/* FA508 80050FF8 240503C4 */  addiu      $a1, $zero, 0x3C4
/* FA50C 80050FFC 0C028D89 */  jal        func_800A3624
/* FA510 80051000 24060240 */   addiu     $a2, $zero, 0x240
/* FA514 80051004 8E03000C */  lw         $v1, 0xC($s0)
/* FA518 80051008 9462001E */  lhu        $v0, 0x1E($v1)
/* FA51C 8005100C 26310001 */  addiu      $s1, $s1, 0x1
/* FA520 80051010 34420004 */  ori        $v0, $v0, 0x4
/* FA524 80051014 A462001E */  sh         $v0, 0x1E($v1)
/* FA528 80051018 3222FFFF */  andi       $v0, $s1, 0xFFFF
/* FA52C 8005101C 2C420002 */  sltiu      $v0, $v0, 0x2
/* FA530 80051020 1440FFEE */  bnez       $v0, .L80050FDC_ovl3
/* FA534 80051024 26240246 */   addiu     $a0, $s1, 0x246
/* FA538 80051028 27A40010 */  addiu      $a0, $sp, 0x10
/* FA53C 8005102C 240520C9 */  addiu      $a1, $zero, 0x20C9
/* FA540 80051030 24060002 */  addiu      $a2, $zero, 0x2
/* FA544 80051034 3C028007 */  lui        $v0, %hi(D_8006938C_ovl3)
/* FA548 80051038 2442938C */  addiu      $v0, $v0, %lo(D_8006938C_ovl3)
/* FA54C 8005103C 2412FFFE */  addiu      $s2, $zero, -0x2
/* FA550 80051040 24110001 */  addiu      $s1, $zero, 0x1
/* FA554 80051044 24100003 */  addiu      $s0, $zero, 0x3
/* FA558 80051048 AFA20010 */  sw         $v0, 0x10($sp)
/* FA55C 8005104C A3B20014 */  sb         $s2, 0x14($sp)
/* FA560 80051050 A3A00015 */  sb         $zero, 0x15($sp)
/* FA564 80051054 A3B10016 */  sb         $s1, 0x16($sp)
/* FA568 80051058 0C00DE82 */  jal        func_80037A08_ovl3
/* FA56C 8005105C A3B00017 */   sb        $s0, 0x17($sp)
/* FA570 80051060 27A40010 */  addiu      $a0, $sp, 0x10
/* FA574 80051064 240520CA */  addiu      $a1, $zero, 0x20CA
/* FA578 80051068 24060002 */  addiu      $a2, $zero, 0x2
/* FA57C 8005106C 3C028007 */  lui        $v0, %hi(D_800693C0_ovl3)
/* FA580 80051070 244293C0 */  addiu      $v0, $v0, %lo(D_800693C0_ovl3)
/* FA584 80051074 AFA20010 */  sw         $v0, 0x10($sp)
/* FA588 80051078 A3B20014 */  sb         $s2, 0x14($sp)
/* FA58C 8005107C A3A00015 */  sb         $zero, 0x15($sp)
/* FA590 80051080 A3B10016 */  sb         $s1, 0x16($sp)
/* FA594 80051084 0C00DE82 */  jal        func_80037A08_ovl3
/* FA598 80051088 A3B00017 */   sb        $s0, 0x17($sp)
/* FA59C 8005108C 8FBF0024 */  lw         $ra, 0x24($sp)
/* FA5A0 80051090 8FB20020 */  lw         $s2, 0x20($sp)
/* FA5A4 80051094 8FB1001C */  lw         $s1, 0x1C($sp)
/* FA5A8 80051098 8FB00018 */  lw         $s0, 0x18($sp)
/* FA5AC 8005109C 03E00008 */  jr         $ra
/* FA5B0 800510A0 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80050F84_ovl3, . - func_80050F84_ovl3
