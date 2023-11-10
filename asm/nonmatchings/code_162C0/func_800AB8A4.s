glabel func_800AB8A4
/* 164A4 800AB8A4 24020001 */  addiu      $v0, $zero, 0x1
/* 164A8 800AB8A8 14820008 */  bne        $a0, $v0, .L800AB8CC
/* 164AC 800AB8AC 00000000 */   nop
/* 164B0 800AB8B0 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 164B4 800AB8B4 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 164B8 800AB8B8 14400002 */  bnez       $v0, .L800AB8C4
/* 164BC 800AB8BC 2402001F */   addiu     $v0, $zero, 0x1F
/* 164C0 800AB8C0 24020025 */  addiu      $v0, $zero, 0x25
.L800AB8C4:
/* 164C4 800AB8C4 3C01800D */  lui        $at, %hi(D_800D5114)
/* 164C8 800AB8C8 A4225114 */  sh         $v0, %lo(D_800D5114)($at)
.L800AB8CC:
/* 164CC 800AB8CC 03E00008 */  jr         $ra
/* 164D0 800AB8D0 00000000 */   nop
.size func_800AB8A4, . - func_800AB8A4
