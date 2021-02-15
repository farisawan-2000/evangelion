.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD88C
/* 2848C 800BD88C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 28490 800BD890 00805821 */  addu       $t3, $a0, $zero
/* 28494 800BD894 00A04821 */  addu       $t1, $a1, $zero
/* 28498 800BD898 00005021 */  addu       $t2, $zero, $zero
/* 2849C 800BD89C 3C028015 */  lui        $v0, %hi(D_8014A04C)
/* 284A0 800BD8A0 9042A04C */  lbu        $v0, %lo(D_8014A04C)($v0)
/* 284A4 800BD8A4 3C088015 */  lui        $t0, %hi(D_80149DD0)
/* 284A8 800BD8A8 25089DD0 */  addiu      $t0, $t0, %lo(D_80149DD0)
/* 284AC 800BD8AC 18400021 */  blez       $v0, .L800BD934
/* 284B0 800BD8B0 00003821 */   addu      $a3, $zero, $zero
/* 284B4 800BD8B4 240C0001 */  addiu      $t4, $zero, 1
/* 284B8 800BD8B8 24A60002 */  addiu      $a2, $a1, 2
.L800BD8BC:
/* 284BC 800BD8BC 89020000 */  lwl        $v0, ($t0)
/* 284C0 800BD8C0 99020003 */  lwr        $v0, 3($t0)
/* 284C4 800BD8C4 89030004 */  lwl        $v1, 4($t0)
/* 284C8 800BD8C8 99030007 */  lwr        $v1, 7($t0)
/* 284CC 800BD8CC ABA20000 */  swl        $v0, ($sp)
/* 284D0 800BD8D0 BBA20003 */  swr        $v0, 3($sp)
/* 284D4 800BD8D4 ABA30004 */  swl        $v1, 4($sp)
/* 284D8 800BD8D8 BBA30007 */  swr        $v1, 7($sp)
/* 284DC 800BD8DC 93A20002 */  lbu        $v0, 2($sp)
/* 284E0 800BD8E0 304200C0 */  andi       $v0, $v0, 0xc0
/* 284E4 800BD8E4 00021102 */  srl        $v0, $v0, 4
/* 284E8 800BD8E8 1440000A */  bnez       $v0, .L800BD914
/* 284EC 800BD8EC A0C20001 */   sb        $v0, 1($a2)
/* 284F0 800BD8F0 93A20005 */  lbu        $v0, 5($sp)
/* 284F4 800BD8F4 93A30004 */  lbu        $v1, 4($sp)
/* 284F8 800BD8F8 00021200 */  sll        $v0, $v0, 8
/* 284FC 800BD8FC 00621825 */  or         $v1, $v1, $v0
/* 28500 800BD900 A5230000 */  sh         $v1, ($t1)
/* 28504 800BD904 93A30006 */  lbu        $v1, 6($sp)
/* 28508 800BD908 00EC1004 */  sllv       $v0, $t4, $a3
/* 2850C 800BD90C 01425025 */  or         $t2, $t2, $v0
/* 28510 800BD910 A0C30000 */  sb         $v1, ($a2)
.L800BD914:
/* 28514 800BD914 24E70001 */  addiu      $a3, $a3, 1
/* 28518 800BD918 25080008 */  addiu      $t0, $t0, 8
/* 2851C 800BD91C 3C028015 */  lui        $v0, %hi(D_8014A04C)
/* 28520 800BD920 9042A04C */  lbu        $v0, %lo(D_8014A04C)($v0)
/* 28524 800BD924 24C60004 */  addiu      $a2, $a2, 4
/* 28528 800BD928 00E2102A */  slt        $v0, $a3, $v0
/* 2852C 800BD92C 1440FFE3 */  bnez       $v0, .L800BD8BC
/* 28530 800BD930 25290004 */   addiu     $t1, $t1, 4
.L800BD934:
/* 28534 800BD934 A16A0000 */  sb         $t2, ($t3)
/* 28538 800BD938 03E00008 */  jr         $ra
/* 2853C 800BD93C 27BD0010 */   addiu     $sp, $sp, 0x10
