glabel func_80045354_ovl3
/* EE864 80045354 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* EE868 80045358 AFBF0020 */  sw         $ra, 0x20($sp)
/* EE86C 8004535C 0C00D889 */  jal        func_80036224_ovl3
/* EE870 80045360 00000000 */   nop
/* EE874 80045364 3C048031 */  lui        $a0, (0x80317420 >> 16)
/* EE878 80045368 34847420 */  ori        $a0, $a0, (0x80317420 & 0xFFFF)
/* EE87C 8004536C 24050147 */  addiu      $a1, $zero, 0x147
/* EE880 80045370 24060009 */  addiu      $a2, $zero, 0x9
/* EE884 80045374 0C00D9E0 */  jal        func_80036780_ovl3
/* EE888 80045378 2407003F */   addiu     $a3, $zero, 0x3F
/* EE88C 8004537C 8C44000C */  lw         $a0, 0xC($v0)
/* EE890 80045380 24050040 */  addiu      $a1, $zero, 0x40
/* EE894 80045384 0C028D89 */  jal        func_800A3624
/* EE898 80045388 240600C0 */   addiu     $a2, $zero, 0xC0
/* EE89C 8004538C 3C048007 */  lui        $a0, %hi(D_80069108_ovl3)
/* EE8A0 80045390 24849108 */  addiu      $a0, $a0, %lo(D_80069108_ovl3)
/* EE8A4 80045394 2405FFFE */  addiu      $a1, $zero, -0x2
/* EE8A8 80045398 2402FFFE */  addiu      $v0, $zero, -0x2
/* EE8AC 8004539C A3A2001C */  sb         $v0, 0x1C($sp)
/* EE8B0 800453A0 A3A2001D */  sb         $v0, 0x1D($sp)
/* EE8B4 800453A4 24020001 */  addiu      $v0, $zero, 0x1
/* EE8B8 800453A8 A3A2001E */  sb         $v0, 0x1E($sp)
/* EE8BC 800453AC 24020002 */  addiu      $v0, $zero, 0x2
/* EE8C0 800453B0 AFA40018 */  sw         $a0, 0x18($sp)
/* EE8C4 800453B4 0C029D2A */  jal        func_800A74A8
/* EE8C8 800453B8 A3A2001F */   sb        $v0, 0x1F($sp)
/* EE8CC 800453BC 27A40018 */  addiu      $a0, $sp, 0x18
/* EE8D0 800453C0 240520C9 */  addiu      $a1, $zero, 0x20C9
/* EE8D4 800453C4 240620D3 */  addiu      $a2, $zero, 0x20D3
/* EE8D8 800453C8 00021FC2 */  srl        $v1, $v0, 31
/* EE8DC 800453CC 00621821 */  addu       $v1, $v1, $v0
/* EE8E0 800453D0 00031843 */  sra        $v1, $v1, 1
/* EE8E4 800453D4 240700A0 */  addiu      $a3, $zero, 0xA0
/* EE8E8 800453D8 00E33823 */  subu       $a3, $a3, $v1
/* EE8EC 800453DC 00073C00 */  sll        $a3, $a3, 16
/* EE8F0 800453E0 00073C03 */  sra        $a3, $a3, 16
/* EE8F4 800453E4 240200A7 */  addiu      $v0, $zero, 0xA7
/* EE8F8 800453E8 0C00DEF7 */  jal        func_80037BDC_ovl3
/* EE8FC 800453EC AFA20010 */   sw        $v0, 0x10($sp)
/* EE900 800453F0 8FBF0020 */  lw         $ra, 0x20($sp)
/* EE904 800453F4 03E00008 */  jr         $ra
/* EE908 800453F8 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_80045354_ovl3, . - func_80045354_ovl3
