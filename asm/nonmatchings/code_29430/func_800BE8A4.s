glabel func_800BE8A4
/* 294A4 800BE8A4 27BDFF78 */  addiu      $sp, $sp, -0x88
/* 294A8 800BE8A8 AFB00060 */  sw         $s0, 0x60($sp)
/* 294AC 800BE8AC 8FB00098 */  lw         $s0, 0x98($sp)
/* 294B0 800BE8B0 AFB10064 */  sw         $s1, 0x64($sp)
/* 294B4 800BE8B4 8FB1009C */  lw         $s1, 0x9C($sp)
/* 294B8 800BE8B8 AFB20068 */  sw         $s2, 0x68($sp)
/* 294BC 800BE8BC 8FB200A0 */  lw         $s2, 0xA0($sp)
/* 294C0 800BE8C0 F7B40070 */  sdc1       $f20, 0x70($sp)
/* 294C4 800BE8C4 4485A000 */  mtc1       $a1, $f20
/* 294C8 800BE8C8 00801021 */  addu       $v0, $a0, $zero
/* 294CC 800BE8CC F7B60078 */  sdc1       $f22, 0x78($sp)
/* 294D0 800BE8D0 4486B000 */  mtc1       $a2, $f22
/* 294D4 800BE8D4 27A40020 */  addiu      $a0, $sp, 0x20
/* 294D8 800BE8D8 F7B80080 */  sdc1       $f24, 0x80($sp)
/* 294DC 800BE8DC 4487C000 */  mtc1       $a3, $f24
/* 294E0 800BE8E0 AFBF006C */  sw         $ra, 0x6C($sp)
/* 294E4 800BE8E4 0C02FA72 */  jal        func_800BE9C8
/* 294E8 800BE8E8 00402821 */   addu      $a1, $v0, $zero
/* 294EC 800BE8EC 4405A000 */  mfc1       $a1, $f20
/* 294F0 800BE8F0 4406B000 */  mfc1       $a2, $f22
/* 294F4 800BE8F4 4407C000 */  mfc1       $a3, $f24
/* 294F8 800BE8F8 27A40020 */  addiu      $a0, $sp, 0x20
/* 294FC 800BE8FC AFB00010 */  sw         $s0, 0x10($sp)
/* 29500 800BE900 AFB10014 */  sw         $s1, 0x14($sp)
/* 29504 800BE904 0C02F9DF */  jal        func_800BE77C
/* 29508 800BE908 AFB20018 */   sw        $s2, 0x18($sp)
/* 2950C 800BE90C 8FBF006C */  lw         $ra, 0x6C($sp)
/* 29510 800BE910 8FB20068 */  lw         $s2, 0x68($sp)
/* 29514 800BE914 8FB10064 */  lw         $s1, 0x64($sp)
/* 29518 800BE918 8FB00060 */  lw         $s0, 0x60($sp)
/* 2951C 800BE91C D7B80080 */  ldc1       $f24, 0x80($sp)
/* 29520 800BE920 D7B60078 */  ldc1       $f22, 0x78($sp)
/* 29524 800BE924 D7B40070 */  ldc1       $f20, 0x70($sp)
/* 29528 800BE928 03E00008 */  jr         $ra
/* 2952C 800BE92C 27BD0088 */   addiu     $sp, $sp, 0x88
.size func_800BE8A4, . - func_800BE8A4
