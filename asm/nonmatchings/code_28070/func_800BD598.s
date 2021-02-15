.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD598
/* 28198 800BD598 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 2819C 800BD59C 00804821 */  addu       $t1, $a0, $zero
/* 281A0 800BD5A0 3C028015 */  lui        $v0, %hi(D_8014A04C)
/* 281A4 800BD5A4 9042A04C */  lbu        $v0, %lo(D_8014A04C)($v0)
/* 281A8 800BD5A8 3C088015 */  lui        $t0, %hi(D_80149DD0)
/* 281AC 800BD5AC 25089DD0 */  addiu      $t0, $t0, %lo(D_80149DD0)
/* 281B0 800BD5B0 1840001D */  blez       $v0, .L800BD628
/* 281B4 800BD5B4 00003821 */   addu      $a3, $zero, $zero
/* 281B8 800BD5B8 24860003 */  addiu      $a2, $a0, 3
.L800BD5BC:
/* 281BC 800BD5BC 89020000 */  lwl        $v0, ($t0)
/* 281C0 800BD5C0 99020003 */  lwr        $v0, 3($t0)
/* 281C4 800BD5C4 89030004 */  lwl        $v1, 4($t0)
/* 281C8 800BD5C8 99030007 */  lwr        $v1, 7($t0)
/* 281CC 800BD5CC ABA20000 */  swl        $v0, ($sp)
/* 281D0 800BD5D0 BBA20003 */  swr        $v0, 3($sp)
/* 281D4 800BD5D4 ABA30004 */  swl        $v1, 4($sp)
/* 281D8 800BD5D8 BBA30007 */  swr        $v1, 7($sp)
/* 281DC 800BD5DC 93A20002 */  lbu        $v0, 2($sp)
/* 281E0 800BD5E0 304200C0 */  andi       $v0, $v0, 0xc0
/* 281E4 800BD5E4 00021102 */  srl        $v0, $v0, 4
/* 281E8 800BD5E8 14400007 */  bnez       $v0, .L800BD608
/* 281EC 800BD5EC A0C20001 */   sb        $v0, 1($a2)
/* 281F0 800BD5F0 97A20004 */  lhu        $v0, 4($sp)
/* 281F4 800BD5F4 A5220000 */  sh         $v0, ($t1)
/* 281F8 800BD5F8 93A20006 */  lbu        $v0, 6($sp)
/* 281FC 800BD5FC A0C2FFFF */  sb         $v0, -1($a2)
/* 28200 800BD600 93A20007 */  lbu        $v0, 7($sp)
/* 28204 800BD604 A0C20000 */  sb         $v0, ($a2)
.L800BD608:
/* 28208 800BD608 24E70001 */  addiu      $a3, $a3, 1
/* 2820C 800BD60C 25080008 */  addiu      $t0, $t0, 8
/* 28210 800BD610 3C028015 */  lui        $v0, %hi(D_8014A04C)
/* 28214 800BD614 9042A04C */  lbu        $v0, %lo(D_8014A04C)($v0)
/* 28218 800BD618 24C60006 */  addiu      $a2, $a2, 6
/* 2821C 800BD61C 00E2102A */  slt        $v0, $a3, $v0
/* 28220 800BD620 1440FFE6 */  bnez       $v0, .L800BD5BC
/* 28224 800BD624 25290006 */   addiu     $t1, $t1, 6
.L800BD628:
/* 28228 800BD628 27BD0010 */  addiu      $sp, $sp, 0x10
/* 2822C 800BD62C 03E00008 */  jr         $ra
/* 28230 800BD630 00000000 */   nop
