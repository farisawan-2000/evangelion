glabel func_80045298_ovl3
/* EE7A8 80045298 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* EE7AC 8004529C AFBF001C */  sw         $ra, 0x1C($sp)
/* EE7B0 800452A0 0C00D889 */  jal        func_80036224_ovl3
/* EE7B4 800452A4 AFB00018 */   sw        $s0, 0x18($sp)
/* EE7B8 800452A8 3C048030 */  lui        $a0, (0x80308610 >> 16)
/* EE7BC 800452AC 34848610 */  ori        $a0, $a0, (0x80308610 & 0xFFFF)
/* EE7C0 800452B0 2405013E */  addiu      $a1, $zero, 0x13E
/* EE7C4 800452B4 24060009 */  addiu      $a2, $zero, 0x9
/* EE7C8 800452B8 0C00D9E0 */  jal        func_80036780_ovl3
/* EE7CC 800452BC 2407003F */   addiu     $a3, $zero, 0x3F
/* EE7D0 800452C0 8C44000C */  lw         $a0, 0xC($v0)
/* EE7D4 800452C4 24050040 */  addiu      $a1, $zero, 0x40
/* EE7D8 800452C8 240600C0 */  addiu      $a2, $zero, 0xC0
/* EE7DC 800452CC 0C028D89 */  jal        func_800A3624
/* EE7E0 800452D0 00008021 */   addu      $s0, $zero, $zero
/* EE7E4 800452D4 320600FF */  andi       $a2, $s0, 0xFF
.L800452D8_ovl3:
/* EE7E8 800452D8 24C4013B */  addiu      $a0, $a2, 0x13B
/* EE7EC 800452DC 24050001 */  addiu      $a1, $zero, 0x1
/* EE7F0 800452E0 0C00D925 */  jal        func_80036494_ovl3
/* EE7F4 800452E4 24C6003A */   addiu     $a2, $a2, 0x3A
/* EE7F8 800452E8 8C44000C */  lw         $a0, 0xC($v0)
/* EE7FC 800452EC 24050260 */  addiu      $a1, $zero, 0x260
/* EE800 800452F0 24060240 */  addiu      $a2, $zero, 0x240
/* EE804 800452F4 0C028D89 */  jal        func_800A3624
/* EE808 800452F8 26100001 */   addiu     $s0, $s0, 0x1
/* EE80C 800452FC 320200FF */  andi       $v0, $s0, 0xFF
/* EE810 80045300 2C420003 */  sltiu      $v0, $v0, 0x3
/* EE814 80045304 1440FFF4 */  bnez       $v0, .L800452D8_ovl3
/* EE818 80045308 320600FF */   andi      $a2, $s0, 0xFF
/* EE81C 8004530C 27A40010 */  addiu      $a0, $sp, 0x10
/* EE820 80045310 240520C9 */  addiu      $a1, $zero, 0x20C9
/* EE824 80045314 24060002 */  addiu      $a2, $zero, 0x2
/* EE828 80045318 3C028007 */  lui        $v0, %hi(D_800690F0_ovl3)
/* EE82C 8004531C 244290F0 */  addiu      $v0, $v0, %lo(D_800690F0_ovl3)
/* EE830 80045320 AFA20010 */  sw         $v0, 0x10($sp)
/* EE834 80045324 2402FFFE */  addiu      $v0, $zero, -0x2
/* EE838 80045328 A3A20014 */  sb         $v0, 0x14($sp)
/* EE83C 8004532C 24020001 */  addiu      $v0, $zero, 0x1
/* EE840 80045330 A3A20016 */  sb         $v0, 0x16($sp)
/* EE844 80045334 24020003 */  addiu      $v0, $zero, 0x3
/* EE848 80045338 A3A00015 */  sb         $zero, 0x15($sp)
/* EE84C 8004533C 0C00DE82 */  jal        func_80037A08_ovl3
/* EE850 80045340 A3A20017 */   sb        $v0, 0x17($sp)
/* EE854 80045344 8FBF001C */  lw         $ra, 0x1C($sp)
/* EE858 80045348 8FB00018 */  lw         $s0, 0x18($sp)
/* EE85C 8004534C 03E00008 */  jr         $ra
/* EE860 80045350 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_80045298_ovl3, . - func_80045298_ovl3
