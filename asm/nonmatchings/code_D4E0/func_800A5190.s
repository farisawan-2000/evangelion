glabel func_800A5190
/* FD90 800A5190 3C06800E */  lui        $a2, %hi(D_800E44F0)
/* FD94 800A5194 24C644F0 */  addiu      $a2, $a2, %lo(D_800E44F0)
/* FD98 800A5198 94C50000 */  lhu        $a1, 0x0($a2)
/* FD9C 800A519C 3402FFFF */  ori        $v0, $zero, 0xFFFF
/* FDA0 800A51A0 30A3FFFF */  andi       $v1, $a1, 0xFFFF
/* FDA4 800A51A4 1062000A */  beq        $v1, $v0, .L800A51D0
/* FDA8 800A51A8 24070001 */   addiu     $a3, $zero, 0x1
/* FDAC 800A51AC 3084FFFF */  andi       $a0, $a0, 0xFFFF
.L800A51B0:
/* FDB0 800A51B0 54A40004 */  bnel       $a1, $a0, .L800A51C4
/* FDB4 800A51B4 24C60004 */   addiu     $a2, $a2, 0x4
/* FDB8 800A51B8 94C70002 */  lhu        $a3, 0x2($a2)
/* FDBC 800A51BC 08029474 */  j          .L800A51D0
/* FDC0 800A51C0 00000000 */   nop
.L800A51C4:
/* FDC4 800A51C4 94C50000 */  lhu        $a1, 0x0($a2)
/* FDC8 800A51C8 14A2FFF9 */  bne        $a1, $v0, .L800A51B0
/* FDCC 800A51CC 00000000 */   nop
.L800A51D0:
/* FDD0 800A51D0 03E00008 */  jr         $ra
/* FDD4 800A51D4 00E01021 */   addu      $v0, $a3, $zero
.size func_800A5190, . - func_800A5190
