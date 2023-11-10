glabel func_800AB7DC
/* 163DC 800AB7DC 24020005 */  addiu      $v0, $zero, 0x5
/* 163E0 800AB7E0 1482000C */  bne        $a0, $v0, .L800AB814
/* 163E4 800AB7E4 24020003 */   addiu     $v0, $zero, 0x3
/* 163E8 800AB7E8 3C03800D */  lui        $v1, %hi(D_800D5114)
/* 163EC 800AB7EC 94635114 */  lhu        $v1, %lo(D_800D5114)($v1)
/* 163F0 800AB7F0 24020024 */  addiu      $v0, $zero, 0x24
/* 163F4 800AB7F4 3C01800D */  lui        $at, %hi(D_800D511C)
/* 163F8 800AB7F8 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 163FC 800AB7FC 3C01800D */  lui        $at, %hi(D_800D5114)
/* 16400 800AB800 A4225114 */  sh         $v0, %lo(D_800D5114)($at)
/* 16404 800AB804 3C01800D */  lui        $at, %hi(D_800D5118)
/* 16408 800AB808 A4235118 */  sh         $v1, %lo(D_800D5118)($at)
/* 1640C 800AB80C 0802AE0B */  j          .L800AB82C
/* 16410 800AB810 00000000 */   nop
.L800AB814:
/* 16414 800AB814 14820005 */  bne        $a0, $v0, .L800AB82C
/* 16418 800AB818 00000000 */   nop
/* 1641C 800AB81C 3C01800D */  lui        $at, %hi(D_800D511C)
/* 16420 800AB820 A020511C */  sb         $zero, %lo(D_800D511C)($at)
/* 16424 800AB824 3C01800D */  lui        $at, %hi(D_800D5114)
/* 16428 800AB828 A4255114 */  sh         $a1, %lo(D_800D5114)($at)
.L800AB82C:
/* 1642C 800AB82C 03E00008 */  jr         $ra
/* 16430 800AB830 00000000 */   nop
.size func_800AB7DC, . - func_800AB7DC
