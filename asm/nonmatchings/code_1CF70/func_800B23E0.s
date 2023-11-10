glabel func_800B23E0
/* 1CFE0 800B23E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1CFE4 800B23E4 AFB00018 */  sw         $s0, 0x18($sp)
/* 1CFE8 800B23E8 24100001 */  addiu      $s0, $zero, 0x1
/* 1CFEC 800B23EC AFBF001C */  sw         $ra, 0x1C($sp)
.L800B23F0:
/* 1CFF0 800B23F0 3C048010 */  lui        $a0, %hi(D_801029E4)
/* 1CFF4 800B23F4 8C8429E4 */  lw         $a0, %lo(D_801029E4)($a0)
/* 1CFF8 800B23F8 27A50010 */  addiu      $a1, $sp, 0x10
/* 1CFFC 800B23FC 24060001 */  addiu      $a2, $zero, 0x1
/* 1D000 800B2400 0C030200 */  jal        func_800C0800
/* 1D004 800B2404 24840008 */   addiu     $a0, $a0, 0x8
/* 1D008 800B2408 3C048010 */  lui        $a0, %hi(D_801029E4)
/* 1D00C 800B240C 8C8429E4 */  lw         $a0, %lo(D_801029E4)($a0)
/* 1D010 800B2410 00002821 */  addu       $a1, $zero, $zero
/* 1D014 800B2414 00003021 */  addu       $a2, $zero, $zero
/* 1D018 800B2418 0C030200 */  jal        func_800C0800
/* 1D01C 800B241C 24840008 */   addiu     $a0, $a0, 0x8
/* 1D020 800B2420 8FA20010 */  lw         $v0, 0x10($sp)
/* 1D024 800B2424 84420000 */  lh         $v0, 0x0($v0)
/* 1D028 800B2428 1450FFF1 */  bne        $v0, $s0, .L800B23F0
/* 1D02C 800B242C 00000000 */   nop
/* 1D030 800B2430 8FBF001C */  lw         $ra, 0x1C($sp)
/* 1D034 800B2434 8FB00018 */  lw         $s0, 0x18($sp)
/* 1D038 800B2438 03E00008 */  jr         $ra
/* 1D03C 800B243C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B23E0, . - func_800B23E0
