glabel func_800B1484
/* 1C084 800B1484 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1C088 800B1488 AFB10014 */  sw         $s1, 0x14($sp)
/* 1C08C 800B148C 00808821 */  addu       $s1, $a0, $zero
/* 1C090 800B1490 AFB00010 */  sw         $s0, 0x10($sp)
/* 1C094 800B1494 00A08021 */  addu       $s0, $a1, $zero
/* 1C098 800B1498 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1C09C 800B149C 92040000 */  lbu        $a0, 0x0($s0)
/* 1C0A0 800B14A0 0C02C0FD */  jal        func_800B03F4
/* 1C0A4 800B14A4 26100001 */   addiu     $s0, $s0, 0x1
/* 1C0A8 800B14A8 00401821 */  addu       $v1, $v0, $zero
/* 1C0AC 800B14AC A22300BD */  sb         $v1, 0xBD($s1)
/* 1C0B0 800B14B0 92040000 */  lbu        $a0, 0x0($s0)
/* 1C0B4 800B14B4 26020001 */  addiu      $v0, $s0, 0x1
/* 1C0B8 800B14B8 00641821 */  addu       $v1, $v1, $a0
/* 1C0BC 800B14BC A22300BD */  sb         $v1, 0xBD($s1)
/* 1C0C0 800B14C0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1C0C4 800B14C4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1C0C8 800B14C8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C0CC 800B14CC 03E00008 */  jr         $ra
/* 1C0D0 800B14D0 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B1484, . - func_800B1484
