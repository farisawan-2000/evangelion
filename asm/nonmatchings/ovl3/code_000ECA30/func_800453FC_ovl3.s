glabel func_800453FC_ovl3
/* EE90C 800453FC 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* EE910 80045400 AFBF0024 */  sw         $ra, 0x24($sp)
/* EE914 80045404 0C00D889 */  jal        func_80036224_ovl3
/* EE918 80045408 AFB00020 */   sw        $s0, 0x20($sp)
/* EE91C 8004540C 3C048032 */  lui        $a0, (0x80326230 >> 16)
/* EE920 80045410 34846230 */  ori        $a0, $a0, (0x80326230 & 0xFFFF)
/* EE924 80045414 24050153 */  addiu      $a1, $zero, 0x153
/* EE928 80045418 24060009 */  addiu      $a2, $zero, 0x9
/* EE92C 8004541C 0C00D9E0 */  jal        func_80036780_ovl3
/* EE930 80045420 2407003F */   addiu     $a3, $zero, 0x3F
/* EE934 80045424 8C44000C */  lw         $a0, 0xC($v0)
/* EE938 80045428 24050040 */  addiu      $a1, $zero, 0x40
/* EE93C 8004542C 240600C0 */  addiu      $a2, $zero, 0xC0
/* EE940 80045430 0C028D89 */  jal        func_800A3624
/* EE944 80045434 00008021 */   addu      $s0, $zero, $zero
/* EE948 80045438 320600FF */  andi       $a2, $s0, 0xFF
.L8004543C_ovl3:
/* EE94C 8004543C 24C40150 */  addiu      $a0, $a2, 0x150
/* EE950 80045440 00002821 */  addu       $a1, $zero, $zero
/* EE954 80045444 0C00D925 */  jal        func_80036494_ovl3
/* EE958 80045448 24C6003A */   addiu     $a2, $a2, 0x3A
/* EE95C 8004544C 8C44000C */  lw         $a0, 0xC($v0)
/* EE960 80045450 24050100 */  addiu      $a1, $zero, 0x100
/* EE964 80045454 24060100 */  addiu      $a2, $zero, 0x100
/* EE968 80045458 0C028D89 */  jal        func_800A3624
/* EE96C 8004545C 26100001 */   addiu     $s0, $s0, 0x1
/* EE970 80045460 320200FF */  andi       $v0, $s0, 0xFF
/* EE974 80045464 2C420003 */  sltiu      $v0, $v0, 0x3
/* EE978 80045468 1440FFF4 */  bnez       $v0, .L8004543C_ovl3
/* EE97C 8004546C 320600FF */   andi      $a2, $s0, 0xFF
/* EE980 80045470 3C048007 */  lui        $a0, %hi(D_8006913C_ovl3)
/* EE984 80045474 2484913C */  addiu      $a0, $a0, %lo(D_8006913C_ovl3)
/* EE988 80045478 2405FFFE */  addiu      $a1, $zero, -0x2
/* EE98C 8004547C 2402FFFE */  addiu      $v0, $zero, -0x2
/* EE990 80045480 A3A2001C */  sb         $v0, 0x1C($sp)
/* EE994 80045484 24020001 */  addiu      $v0, $zero, 0x1
/* EE998 80045488 A3A2001E */  sb         $v0, 0x1E($sp)
/* EE99C 8004548C 24020002 */  addiu      $v0, $zero, 0x2
/* EE9A0 80045490 AFA40018 */  sw         $a0, 0x18($sp)
/* EE9A4 80045494 A3A0001D */  sb         $zero, 0x1D($sp)
/* EE9A8 80045498 0C029D2A */  jal        func_800A74A8
/* EE9AC 8004549C A3A2001F */   sb        $v0, 0x1F($sp)
/* EE9B0 800454A0 27A40018 */  addiu      $a0, $sp, 0x18
/* EE9B4 800454A4 240520C9 */  addiu      $a1, $zero, 0x20C9
/* EE9B8 800454A8 240620D3 */  addiu      $a2, $zero, 0x20D3
/* EE9BC 800454AC 00021FC2 */  srl        $v1, $v0, 31
/* EE9C0 800454B0 00621821 */  addu       $v1, $v1, $v0
/* EE9C4 800454B4 00031843 */  sra        $v1, $v1, 1
/* EE9C8 800454B8 240700A0 */  addiu      $a3, $zero, 0xA0
/* EE9CC 800454BC 00E33823 */  subu       $a3, $a3, $v1
/* EE9D0 800454C0 00073C00 */  sll        $a3, $a3, 16
/* EE9D4 800454C4 00073C03 */  sra        $a3, $a3, 16
/* EE9D8 800454C8 240200A7 */  addiu      $v0, $zero, 0xA7
/* EE9DC 800454CC 0C00DEF7 */  jal        func_80037BDC_ovl3
/* EE9E0 800454D0 AFA20010 */   sw        $v0, 0x10($sp)
/* EE9E4 800454D4 8FBF0024 */  lw         $ra, 0x24($sp)
/* EE9E8 800454D8 8FB00020 */  lw         $s0, 0x20($sp)
/* EE9EC 800454DC 03E00008 */  jr         $ra
/* EE9F0 800454E0 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800453FC_ovl3, . - func_800453FC_ovl3
