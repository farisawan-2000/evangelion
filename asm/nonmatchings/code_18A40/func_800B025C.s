.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B025C
/* 1AE5C 800B025C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1AE60 800B0260 AFB10024 */  sw         $s1, 0x24($sp)
/* 1AE64 800B0264 00808821 */  addu       $s1, $a0, $zero
/* 1AE68 800B0268 AFB00020 */  sw         $s0, 0x20($sp)
/* 1AE6C 800B026C 02208021 */  addu       $s0, $s1, $zero
/* 1AE70 800B0270 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1AE74 800B0274 AFB20028 */  sw         $s2, 0x28($sp)
/* 1AE78 800B0278 8E020010 */  lw         $v0, 0x10($s0)
/* 1AE7C 800B027C 00A09021 */  addu       $s2, $a1, $zero
/* 1AE80 800B0280 04400056 */  bltz       $v0, .L800B03DC
/* 1AE84 800B0284 3C038000 */   lui       $v1, 0x8000
/* 1AE88 800B0288 26040024 */  addiu      $a0, $s0, 0x24
/* 1AE8C 800B028C 02002821 */  addu       $a1, $s0, $zero
/* 1AE90 800B0290 24060003 */  addiu      $a2, $zero, 3
/* 1AE94 800B0294 00431025 */  or         $v0, $v0, $v1
/* 1AE98 800B0298 0C02C1E3 */  jal        func_800B078C
/* 1AE9C 800B029C AE020010 */   sw        $v0, 0x10($s0)
/* 1AEA0 800B02A0 8E04002C */  lw         $a0, 0x2c($s0)
/* 1AEA4 800B02A4 8E060020 */  lw         $a2, 0x20($s0)
/* 1AEA8 800B02A8 0C02C1E3 */  jal        func_800B078C
/* 1AEAC 800B02AC 02002821 */   addu      $a1, $s0, $zero
/* 1AEB0 800B02B0 8E020020 */  lw         $v0, 0x20($s0)
/* 1AEB4 800B02B4 18400047 */  blez       $v0, .L800B03D4
/* 1AEB8 800B02B8 00003021 */   addu      $a2, $zero, $zero
/* 1AEBC 800B02BC 3C018010 */  lui        $at, %hi(D_800FEAC8)
/* 1AEC0 800B02C0 D424EAC8 */  ldc1       $f4, %lo(D_800FEAC8)($at)
/* 1AEC4 800B02C4 3C07FF00 */  lui        $a3, 0xff00
/* 1AEC8 800B02C8 24080001 */  addiu      $t0, $zero, 1
/* 1AECC 800B02CC 00002821 */  addu       $a1, $zero, $zero
.L800B02D0:
/* 1AED0 800B02D0 8E020028 */  lw         $v0, 0x28($s0)
/* 1AED4 800B02D4 00452021 */  addu       $a0, $v0, $a1
/* 1AED8 800B02D8 90830000 */  lbu        $v1, ($a0)
/* 1AEDC 800B02DC 30620080 */  andi       $v0, $v1, 0x80
/* 1AEE0 800B02E0 10400002 */  beqz       $v0, .L800B02EC
/* 1AEE4 800B02E4 306200FF */   andi      $v0, $v1, 0xff
/* 1AEE8 800B02E8 2442FF00 */  addiu      $v0, $v0, -0x100
.L800B02EC:
/* 1AEEC 800B02EC 44821000 */  mtc1       $v0, $f2
/* 1AEF0 800B02F0 00000000 */  nop
/* 1AEF4 800B02F4 468010A0 */  cvt.s.w    $f2, $f2
/* 1AEF8 800B02F8 46001021 */  cvt.d.s    $f0, $f2
/* 1AEFC 800B02FC 46240003 */  div.d      $f0, $f0, $f4
/* 1AF00 800B0300 46200020 */  cvt.s.d    $f0, $f0
/* 1AF04 800B0304 E4800000 */  swc1       $f0, ($a0)
/* 1AF08 800B0308 8E020024 */  lw         $v0, 0x24($s0)
/* 1AF0C 800B030C 00461021 */  addu       $v0, $v0, $a2
/* 1AF10 800B0310 90420000 */  lbu        $v0, ($v0)
/* 1AF14 800B0314 2442FFD0 */  addiu      $v0, $v0, -0x30
/* 1AF18 800B0318 00401821 */  addu       $v1, $v0, $zero
/* 1AF1C 800B031C 30420080 */  andi       $v0, $v0, 0x80
/* 1AF20 800B0320 10400002 */  beqz       $v0, .L800B032C
/* 1AF24 800B0324 306200FF */   andi      $v0, $v1, 0xff
/* 1AF28 800B0328 2442FF00 */  addiu      $v0, $v0, -0x100
.L800B032C:
/* 1AF2C 800B032C 44821000 */  mtc1       $v0, $f2
/* 1AF30 800B0330 00000000 */  nop
/* 1AF34 800B0334 468010A0 */  cvt.s.w    $f2, $f2
/* 1AF38 800B0338 C4800000 */  lwc1       $f0, ($a0)
/* 1AF3C 800B033C 46020000 */  add.s      $f0, $f0, $f2
/* 1AF40 800B0340 E4800000 */  swc1       $f0, ($a0)
/* 1AF44 800B0344 8E02002C */  lw         $v0, 0x2c($s0)
/* 1AF48 800B0348 00A21021 */  addu       $v0, $a1, $v0
/* 1AF4C 800B034C 8C440000 */  lw         $a0, ($v0)
/* 1AF50 800B0350 90820009 */  lbu        $v0, 9($a0)
/* 1AF54 800B0354 1440001A */  bnez       $v0, .L800B03C0
/* 1AF58 800B0358 00000000 */   nop
/* 1AF5C 800B035C 8C830000 */  lw         $v1, ($a0)
/* 1AF60 800B0360 00671024 */  and        $v0, $v1, $a3
/* 1AF64 800B0364 10470002 */  beq        $v0, $a3, .L800B0370
/* 1AF68 800B0368 00721821 */   addu      $v1, $v1, $s2
/* 1AF6C 800B036C AC830000 */  sw         $v1, ($a0)
.L800B0370:
/* 1AF70 800B0370 8E02002C */  lw         $v0, 0x2c($s0)
/* 1AF74 800B0374 00A21021 */  addu       $v0, $a1, $v0
/* 1AF78 800B0378 8C420000 */  lw         $v0, ($v0)
/* 1AF7C 800B037C A0480009 */  sb         $t0, 9($v0)
/* 1AF80 800B0380 8E02002C */  lw         $v0, 0x2c($s0)
/* 1AF84 800B0384 00A21021 */  addu       $v0, $a1, $v0
/* 1AF88 800B0388 8C430000 */  lw         $v1, ($v0)
/* 1AF8C 800B038C 8C62000C */  lw         $v0, 0xc($v1)
/* 1AF90 800B0390 10400002 */  beqz       $v0, .L800B039C
/* 1AF94 800B0394 00511021 */   addu      $v0, $v0, $s1
/* 1AF98 800B0398 AC62000C */  sw         $v0, 0xc($v1)
.L800B039C:
/* 1AF9C 800B039C 8E02002C */  lw         $v0, 0x2c($s0)
/* 1AFA0 800B03A0 00A21021 */  addu       $v0, $a1, $v0
/* 1AFA4 800B03A4 8C430000 */  lw         $v1, ($v0)
/* 1AFA8 800B03A8 90620008 */  lbu        $v0, 8($v1)
/* 1AFAC 800B03AC 14400004 */  bnez       $v0, .L800B03C0
/* 1AFB0 800B03B0 00000000 */   nop
/* 1AFB4 800B03B4 8C620010 */  lw         $v0, 0x10($v1)
/* 1AFB8 800B03B8 00511021 */  addu       $v0, $v0, $s1
/* 1AFBC 800B03BC AC620010 */  sw         $v0, 0x10($v1)
.L800B03C0:
/* 1AFC0 800B03C0 8E020020 */  lw         $v0, 0x20($s0)
/* 1AFC4 800B03C4 24C60001 */  addiu      $a2, $a2, 1
/* 1AFC8 800B03C8 00C2102A */  slt        $v0, $a2, $v0
/* 1AFCC 800B03CC 1440FFC0 */  bnez       $v0, .L800B02D0
/* 1AFD0 800B03D0 24A50004 */   addiu     $a1, $a1, 4
.L800B03D4:
/* 1AFD4 800B03D4 0C02F510 */  jal        func_800BD440
/* 1AFD8 800B03D8 00000000 */   nop
.L800B03DC:
/* 1AFDC 800B03DC 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1AFE0 800B03E0 8FB20028 */  lw         $s2, 0x28($sp)
/* 1AFE4 800B03E4 8FB10024 */  lw         $s1, 0x24($sp)
/* 1AFE8 800B03E8 8FB00020 */  lw         $s0, 0x20($sp)
/* 1AFEC 800B03EC 03E00008 */  jr         $ra
/* 1AFF0 800B03F0 27BD0030 */   addiu     $sp, $sp, 0x30
