glabel func_800A442C
/* F02C 800A442C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* F030 800A4430 10800019 */  beqz       $a0, .L800A4498
/* F034 800A4434 AFBF0010 */   sw        $ra, 0x10($sp)
/* F038 800A4438 90830022 */  lbu        $v1, 0x22($a0)
/* F03C 800A443C 24020001 */  addiu      $v0, $zero, 0x1
/* F040 800A4440 1062000F */  beq        $v1, $v0, .L800A4480
/* F044 800A4444 28620002 */   slti      $v0, $v1, 0x2
/* F048 800A4448 50400005 */  beql       $v0, $zero, .L800A4460
/* F04C 800A444C 24020002 */   addiu     $v0, $zero, 0x2
/* F050 800A4450 10600007 */  beqz       $v1, .L800A4470
/* F054 800A4454 00000000 */   nop
/* F058 800A4458 08029126 */  j          .L800A4498
/* F05C 800A445C 00000000 */   nop
.L800A4460:
/* F060 800A4460 1062000B */  beq        $v1, $v0, .L800A4490
/* F064 800A4464 00000000 */   nop
/* F068 800A4468 08029126 */  j          .L800A4498
/* F06C 800A446C 00000000 */   nop
.L800A4470:
/* F070 800A4470 0C0326A1 */  jal        func_800C9A84
/* F074 800A4474 00000000 */   nop
/* F078 800A4478 08029126 */  j          .L800A4498
/* F07C 800A447C 00000000 */   nop
.L800A4480:
/* F080 800A4480 0C025EC3 */  jal        func_80097B0C
/* F084 800A4484 00000000 */   nop
/* F088 800A4488 08029126 */  j          .L800A4498
/* F08C 800A448C 00000000 */   nop
.L800A4490:
/* F090 800A4490 0C026187 */  jal        func_8009861C
/* F094 800A4494 00000000 */   nop
.L800A4498:
/* F098 800A4498 8FBF0010 */  lw         $ra, 0x10($sp)
/* F09C 800A449C 27BD0018 */  addiu      $sp, $sp, 0x18
/* F0A0 800A44A0 03E00008 */  jr         $ra
/* F0A4 800A44A4 00000000 */   nop
.size func_800A442C, . - func_800A442C