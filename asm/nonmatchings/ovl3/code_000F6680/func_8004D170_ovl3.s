glabel func_8004D170_ovl3
/* F6680 8004D170 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F6684 8004D174 AFBF0028 */  sw         $ra, 0x28($sp)
/* F6688 8004D178 AFB10024 */  sw         $s1, 0x24($sp)
/* F668C 8004D17C 0C00E109 */  jal        func_80038424_ovl3
/* F6690 8004D180 AFB00020 */   sw        $s0, 0x20($sp)
/* F6694 8004D184 3C04802F */  lui        $a0, (0x802F9800 >> 16)
/* F6698 8004D188 34849800 */  ori        $a0, $a0, (0x802F9800 & 0xFFFF)
/* F669C 8004D18C 240501B3 */  addiu      $a1, $zero, 0x1B3
/* F66A0 8004D190 24060009 */  addiu      $a2, $zero, 0x9
/* F66A4 8004D194 0C00D9E0 */  jal        func_80036780_ovl3
/* F66A8 8004D198 24070019 */   addiu     $a3, $zero, 0x19
/* F66AC 8004D19C 8C44000C */  lw         $a0, 0xC($v0)
/* F66B0 8004D1A0 24050040 */  addiu      $a1, $zero, 0x40
/* F66B4 8004D1A4 0C028D89 */  jal        func_800A3624
/* F66B8 8004D1A8 240600C0 */   addiu     $a2, $zero, 0xC0
/* F66BC 8004D1AC 3C048007 */  lui        $a0, %hi(D_800691D0_ovl3)
/* F66C0 8004D1B0 248491D0 */  addiu      $a0, $a0, %lo(D_800691D0_ovl3)
/* F66C4 8004D1B4 2405FFFE */  addiu      $a1, $zero, -0x2
/* F66C8 8004D1B8 2410FFFE */  addiu      $s0, $zero, -0x2
/* F66CC 8004D1BC 24110001 */  addiu      $s1, $zero, 0x1
/* F66D0 8004D1C0 24020002 */  addiu      $v0, $zero, 0x2
/* F66D4 8004D1C4 AFA40018 */  sw         $a0, 0x18($sp)
/* F66D8 8004D1C8 A3B0001C */  sb         $s0, 0x1C($sp)
/* F66DC 8004D1CC A3B0001D */  sb         $s0, 0x1D($sp)
/* F66E0 8004D1D0 A3B1001E */  sb         $s1, 0x1E($sp)
/* F66E4 8004D1D4 0C029D2A */  jal        func_800A74A8
/* F66E8 8004D1D8 A3A2001F */   sb        $v0, 0x1F($sp)
/* F66EC 8004D1DC 27A40018 */  addiu      $a0, $sp, 0x18
/* F66F0 8004D1E0 240520C9 */  addiu      $a1, $zero, 0x20C9
/* F66F4 8004D1E4 240620D3 */  addiu      $a2, $zero, 0x20D3
/* F66F8 8004D1E8 00021FC2 */  srl        $v1, $v0, 31
/* F66FC 8004D1EC 00621821 */  addu       $v1, $v1, $v0
/* F6700 8004D1F0 00031843 */  sra        $v1, $v1, 1
/* F6704 8004D1F4 240700A0 */  addiu      $a3, $zero, 0xA0
/* F6708 8004D1F8 00E33823 */  subu       $a3, $a3, $v1
/* F670C 8004D1FC 00073C00 */  sll        $a3, $a3, 16
/* F6710 8004D200 00073C03 */  sra        $a3, $a3, 16
/* F6714 8004D204 240200A7 */  addiu      $v0, $zero, 0xA7
/* F6718 8004D208 0C00DEF7 */  jal        func_80037BDC_ovl3
/* F671C 8004D20C AFA20010 */   sw        $v0, 0x10($sp)
/* F6720 8004D210 27A40018 */  addiu      $a0, $sp, 0x18
/* F6724 8004D214 240520CA */  addiu      $a1, $zero, 0x20CA
/* F6728 8004D218 24060002 */  addiu      $a2, $zero, 0x2
/* F672C 8004D21C 3C028007 */  lui        $v0, %hi(D_800691FC_ovl3)
/* F6730 8004D220 244291FC */  addiu      $v0, $v0, %lo(D_800691FC_ovl3)
/* F6734 8004D224 AFA20018 */  sw         $v0, 0x18($sp)
/* F6738 8004D228 24020003 */  addiu      $v0, $zero, 0x3
/* F673C 8004D22C A3B0001C */  sb         $s0, 0x1C($sp)
/* F6740 8004D230 A3B0001D */  sb         $s0, 0x1D($sp)
/* F6744 8004D234 A3B1001E */  sb         $s1, 0x1E($sp)
/* F6748 8004D238 0C00DE82 */  jal        func_80037A08_ovl3
/* F674C 8004D23C A3A2001F */   sb        $v0, 0x1F($sp)
/* F6750 8004D240 8FBF0028 */  lw         $ra, 0x28($sp)
/* F6754 8004D244 8FB10024 */  lw         $s1, 0x24($sp)
/* F6758 8004D248 8FB00020 */  lw         $s0, 0x20($sp)
/* F675C 8004D24C 03E00008 */  jr         $ra
/* F6760 8004D250 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_8004D170_ovl3, . - func_8004D170_ovl3
