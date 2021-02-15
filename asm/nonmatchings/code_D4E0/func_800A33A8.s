.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A33A8
/* DFA8 800A33A8 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* DFAC 800A33AC 00A01821 */  addu       $v1, $a1, $zero
/* DFB0 800A33B0 00E04021 */  addu       $t0, $a3, $zero
/* DFB4 800A33B4 24850010 */  addiu      $a1, $a0, 0x10
/* DFB8 800A33B8 30C600FF */  andi       $a2, $a2, 0xff
/* DFBC 800A33BC 2CC20007 */  sltiu      $v0, $a2, 7
/* DFC0 800A33C0 AFBF001C */  sw         $ra, 0x1c($sp)
/* DFC4 800A33C4 10400038 */  beqz       $v0, .L800A34A8
/* DFC8 800A33C8 AFB00018 */   sw        $s0, 0x18($sp)
/* DFCC 800A33CC 00061080 */  sll        $v0, $a2, 2
/* DFD0 800A33D0 3C018010 */  lui        $at, %hi(D_800F9E10)
/* DFD4 800A33D4 00220821 */  addu       $at, $at, $v0
/* DFD8 800A33D8 8C229E10 */  lw         $v0, %lo(D_800F9E10)($at)
/* DFDC 800A33DC 00400008 */  jr         $v0
/* DFE0 800A33E0 00000000 */   nop
/* DFE4 800A33E4 00603021 */  addu       $a2, $v1, $zero
/* DFE8 800A33E8 0C028E9B */  jal        func_800A3A6C
/* DFEC 800A33EC 310700FF */   andi      $a3, $t0, 0xff
/* DFF0 800A33F0 08028D2A */  j          .L800A34A8
/* DFF4 800A33F4 00408021 */   addu      $s0, $v0, $zero
/* DFF8 800A33F8 00603021 */  addu       $a2, $v1, $zero
/* DFFC 800A33FC 0C028E9B */  jal        func_800A3A6C
/* E000 800A3400 310700FF */   andi      $a3, $t0, 0xff
/* E004 800A3404 00408021 */  addu       $s0, $v0, $zero
/* E008 800A3408 02002021 */  addu       $a0, $s0, $zero
/* E00C 800A340C 24050400 */  addiu      $a1, $zero, 0x400
/* E010 800A3410 0C028F9A */  jal        func_800A3E68
/* E014 800A3414 24060400 */   addiu     $a2, $zero, 0x400
/* E018 800A3418 08028D2B */  j          .L800A34AC
/* E01C 800A341C 02001021 */   addu      $v0, $s0, $zero
/* E020 800A3420 00603021 */  addu       $a2, $v1, $zero
/* E024 800A3424 08028D10 */  j          .L800A3440
/* E028 800A3428 00003821 */   addu      $a3, $zero, $zero
/* E02C 800A342C 00603021 */  addu       $a2, $v1, $zero
/* E030 800A3430 08028D10 */  j          .L800A3440
/* E034 800A3434 24070001 */   addiu     $a3, $zero, 1
/* E038 800A3438 00603021 */  addu       $a2, $v1, $zero
/* E03C 800A343C 24070002 */  addiu      $a3, $zero, 2
.L800A3440:
/* E040 800A3440 310200FF */  andi       $v0, $t0, 0xff
/* E044 800A3444 0C028FA6 */  jal        func_800A3E98
/* E048 800A3448 AFA20010 */   sw        $v0, 0x10($sp)
/* E04C 800A344C 00408021 */  addu       $s0, $v0, $zero
/* E050 800A3450 8E02000C */  lw         $v0, 0xc($s0)
/* E054 800A3454 94450000 */  lhu        $a1, ($v0)
/* E058 800A3458 94460002 */  lhu        $a2, 2($v0)
/* E05C 800A345C 02002021 */  addu       $a0, $s0, $zero
/* E060 800A3460 00052842 */  srl        $a1, $a1, 1
/* E064 800A3464 0C02912A */  jal        func_800A44A8
/* E068 800A3468 00063042 */   srl       $a2, $a2, 1
/* E06C 800A346C 08028D2B */  j          .L800A34AC
/* E070 800A3470 02001021 */   addu      $v0, $s0, $zero
/* E074 800A3474 00603021 */  addu       $a2, $v1, $zero
/* E078 800A3478 0C02920C */  jal        func_800A4830
/* E07C 800A347C 310700FF */   andi      $a3, $t0, 0xff
/* E080 800A3480 08028D2A */  j          .L800A34A8
/* E084 800A3484 00408021 */   addu      $s0, $v0, $zero
/* E088 800A3488 00603021 */  addu       $a2, $v1, $zero
/* E08C 800A348C 0C02920C */  jal        func_800A4830
/* E090 800A3490 310700FF */   andi      $a3, $t0, 0xff
/* E094 800A3494 00408021 */  addu       $s0, $v0, $zero
/* E098 800A3498 02002021 */  addu       $a0, $s0, $zero
/* E09C 800A349C 24050400 */  addiu      $a1, $zero, 0x400
/* E0A0 800A34A0 0C0292D4 */  jal        func_800A4B50
/* E0A4 800A34A4 24060400 */   addiu     $a2, $zero, 0x400
.L800A34A8:
/* E0A8 800A34A8 02001021 */  addu       $v0, $s0, $zero
.L800A34AC:
/* E0AC 800A34AC 8FBF001C */  lw         $ra, 0x1c($sp)
/* E0B0 800A34B0 8FB00018 */  lw         $s0, 0x18($sp)
/* E0B4 800A34B4 27BD0020 */  addiu      $sp, $sp, 0x20
/* E0B8 800A34B8 03E00008 */  jr         $ra
/* E0BC 800A34BC 00000000 */   nop
