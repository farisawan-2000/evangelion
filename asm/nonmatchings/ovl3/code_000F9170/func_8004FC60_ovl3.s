glabel func_8004FC60_ovl3
/* F9170 8004FC60 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* F9174 8004FC64 3C04802F */  lui        $a0, (0x802F9800 >> 16)
/* F9178 8004FC68 34849800 */  ori        $a0, $a0, (0x802F9800 & 0xFFFF)
/* F917C 8004FC6C 240501E4 */  addiu      $a1, $zero, 0x1E4
/* F9180 8004FC70 24060007 */  addiu      $a2, $zero, 0x7
/* F9184 8004FC74 24070021 */  addiu      $a3, $zero, 0x21
/* F9188 8004FC78 AFBF0024 */  sw         $ra, 0x24($sp)
/* F918C 8004FC7C 0C00D9E0 */  jal        func_80036780_ovl3
/* F9190 8004FC80 AFB00020 */   sw        $s0, 0x20($sp)
/* F9194 8004FC84 00408021 */  addu       $s0, $v0, $zero
/* F9198 8004FC88 3C014000 */  lui        $at, (0x40000000 >> 16)
/* F919C 8004FC8C 44810000 */  mtc1       $at, $f0
/* F91A0 8004FC90 8E04000C */  lw         $a0, 0xC($s0)
/* F91A4 8004FC94 44060000 */  mfc1       $a2, $f0
/* F91A8 8004FC98 00002821 */  addu       $a1, $zero, $zero
/* F91AC 8004FC9C 0C02915B */  jal        func_800A456C
/* F91B0 8004FCA0 00C03821 */   addu      $a3, $a2, $zero
/* F91B4 8004FCA4 8E04000C */  lw         $a0, 0xC($s0)
/* F91B8 8004FCA8 8C82000C */  lw         $v0, 0xC($a0)
/* F91BC 8004FCAC 94450000 */  lhu        $a1, 0x0($v0)
/* F91C0 8004FCB0 94460002 */  lhu        $a2, 0x2($v0)
/* F91C4 8004FCB4 00052842 */  srl        $a1, $a1, 1
/* F91C8 8004FCB8 0C02912A */  jal        func_800A44A8
/* F91CC 8004FCBC 00063042 */   srl       $a2, $a2, 1
/* F91D0 8004FCC0 8E04000C */  lw         $a0, 0xC($s0)
/* F91D4 8004FCC4 24050280 */  addiu      $a1, $zero, 0x280
/* F91D8 8004FCC8 0C028D89 */  jal        func_800A3624
/* F91DC 8004FCCC 240601E0 */   addiu     $a2, $zero, 0x1E0
/* F91E0 8004FCD0 8E03000C */  lw         $v1, 0xC($s0)
/* F91E4 8004FCD4 240401EB */  addiu      $a0, $zero, 0x1EB
/* F91E8 8004FCD8 9462001E */  lhu        $v0, 0x1E($v1)
/* F91EC 8004FCDC 24050002 */  addiu      $a1, $zero, 0x2
/* F91F0 8004FCE0 2406001E */  addiu      $a2, $zero, 0x1E
/* F91F4 8004FCE4 34420004 */  ori        $v0, $v0, 0x4
/* F91F8 8004FCE8 0C00D925 */  jal        func_80036494_ovl3
/* F91FC 8004FCEC A462001E */   sh        $v0, 0x1E($v1)
/* F9200 8004FCF0 00408021 */  addu       $s0, $v0, $zero
/* F9204 8004FCF4 8E04000C */  lw         $a0, 0xC($s0)
/* F9208 8004FCF8 8C82000C */  lw         $v0, 0xC($a0)
/* F920C 8004FCFC 94450000 */  lhu        $a1, 0x0($v0)
/* F9210 8004FD00 94460002 */  lhu        $a2, 0x2($v0)
/* F9214 8004FD04 00052842 */  srl        $a1, $a1, 1
/* F9218 8004FD08 0C02912A */  jal        func_800A44A8
/* F921C 8004FD0C 00063042 */   srl       $a2, $a2, 1
/* F9220 8004FD10 24020060 */  addiu      $v0, $zero, 0x60
/* F9224 8004FD14 AFA20010 */  sw         $v0, 0x10($sp)
/* F9228 8004FD18 8E04000C */  lw         $a0, 0xC($s0)
/* F922C 8004FD1C 240500FF */  addiu      $a1, $zero, 0xFF
/* F9230 8004FD20 240600FF */  addiu      $a2, $zero, 0xFF
/* F9234 8004FD24 0C028E41 */  jal        func_800A3904
/* F9238 8004FD28 240700FF */   addiu     $a3, $zero, 0xFF
/* F923C 8004FD2C 8E03000C */  lw         $v1, 0xC($s0)
/* F9240 8004FD30 27A40018 */  addiu      $a0, $sp, 0x18
/* F9244 8004FD34 9462001E */  lhu        $v0, 0x1E($v1)
/* F9248 8004FD38 240520C9 */  addiu      $a1, $zero, 0x20C9
/* F924C 8004FD3C 24060003 */  addiu      $a2, $zero, 0x3
/* F9250 8004FD40 34420004 */  ori        $v0, $v0, 0x4
/* F9254 8004FD44 A462001E */  sh         $v0, 0x1E($v1)
/* F9258 8004FD48 3C028007 */  lui        $v0, %hi(D_80069280_ovl3)
/* F925C 8004FD4C 24429280 */  addiu      $v0, $v0, %lo(D_80069280_ovl3)
/* F9260 8004FD50 AFA20018 */  sw         $v0, 0x18($sp)
/* F9264 8004FD54 2402FFFE */  addiu      $v0, $zero, -0x2
/* F9268 8004FD58 A3A2001C */  sb         $v0, 0x1C($sp)
/* F926C 8004FD5C 24020001 */  addiu      $v0, $zero, 0x1
/* F9270 8004FD60 A3A2001E */  sb         $v0, 0x1E($sp)
/* F9274 8004FD64 24020003 */  addiu      $v0, $zero, 0x3
/* F9278 8004FD68 A3A0001D */  sb         $zero, 0x1D($sp)
/* F927C 8004FD6C 0C00DE82 */  jal        func_80037A08_ovl3
/* F9280 8004FD70 A3A2001F */   sb        $v0, 0x1F($sp)
/* F9284 8004FD74 8FBF0024 */  lw         $ra, 0x24($sp)
/* F9288 8004FD78 8FB00020 */  lw         $s0, 0x20($sp)
/* F928C 8004FD7C 03E00008 */  jr         $ra
/* F9290 8004FD80 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_8004FC60_ovl3, . - func_8004FC60_ovl3
