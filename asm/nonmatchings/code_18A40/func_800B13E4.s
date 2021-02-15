.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B13E4
/* 1BFE4 800B13E4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1BFE8 800B13E8 AFB10014 */  sw         $s1, 0x14($sp)
/* 1BFEC 800B13EC 00808821 */  addu       $s1, $a0, $zero
/* 1BFF0 800B13F0 AFB00010 */  sw         $s0, 0x10($sp)
/* 1BFF4 800B13F4 00A08021 */  addu       $s0, $a1, $zero
/* 1BFF8 800B13F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1BFFC 800B13FC 92040000 */  lbu        $a0, ($s0)
/* 1C000 800B1400 0C02C0FD */  jal        func_800B03F4
/* 1C004 800B1404 26100001 */   addiu     $s0, $s0, 1
/* 1C008 800B1408 00401821 */  addu       $v1, $v0, $zero
/* 1C00C 800B140C A22300B9 */  sb         $v1, 0xb9($s1)
/* 1C010 800B1410 92040000 */  lbu        $a0, ($s0)
/* 1C014 800B1414 26020001 */  addiu      $v0, $s0, 1
/* 1C018 800B1418 00641821 */  addu       $v1, $v1, $a0
/* 1C01C 800B141C A22300B9 */  sb         $v1, 0xb9($s1)
/* 1C020 800B1420 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1C024 800B1424 8FB10014 */  lw         $s1, 0x14($sp)
/* 1C028 800B1428 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C02C 800B142C 03E00008 */  jr         $ra
/* 1C030 800B1430 27BD0020 */   addiu     $sp, $sp, 0x20
