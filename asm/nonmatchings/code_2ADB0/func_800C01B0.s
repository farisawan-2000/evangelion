.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C01B0
/* 2ADB0 800C01B0 10C0001B */  beqz       $a2, .L800C0220
/* 2ADB4 800C01B4 00A03821 */   addu      $a3, $a1, $zero
/* 2ADB8 800C01B8 10850019 */  beq        $a0, $a1, .L800C0220
/* 2ADBC 800C01BC 00000000 */   nop
/* 2ADC0 800C01C0 00A4082A */  slt        $at, $a1, $a0
/* 2ADC4 800C01C4 14200007 */  bnez       $at, .L800C01E4
/* 2ADC8 800C01C8 00000000 */   nop
/* 2ADCC 800C01CC 00861020 */  add        $v0, $a0, $a2
/* 2ADD0 800C01D0 00A2082A */  slt        $at, $a1, $v0
/* 2ADD4 800C01D4 10200003 */  beqz       $at, .L800C01E4
/* 2ADD8 800C01D8 00000000 */   nop
/* 2ADDC 800C01DC 1000005C */  b          .L800C0350
/* 2ADE0 800C01E0 00000000 */   nop
.L800C01E4:
/* 2ADE4 800C01E4 28C10010 */  slti       $at, $a2, 0x10
/* 2ADE8 800C01E8 14200005 */  bnez       $at, .L800C0200
/* 2ADEC 800C01EC 00000000 */   nop
/* 2ADF0 800C01F0 30820003 */  andi       $v0, $a0, 3
/* 2ADF4 800C01F4 30A30003 */  andi       $v1, $a1, 3
/* 2ADF8 800C01F8 1043000B */  beq        $v0, $v1, .L800C0228
/* 2ADFC 800C01FC 00000000 */   nop
.L800C0200:
/* 2AE00 800C0200 10C00007 */  beqz       $a2, .L800C0220
/* 2AE04 800C0204 00000000 */   nop
/* 2AE08 800C0208 00861821 */  addu       $v1, $a0, $a2
.L800C020C:
/* 2AE0C 800C020C 80820000 */  lb         $v0, ($a0)
/* 2AE10 800C0210 24840001 */  addiu      $a0, $a0, 1
/* 2AE14 800C0214 A0A20000 */  sb         $v0, ($a1)
/* 2AE18 800C0218 1483FFFC */  bne        $a0, $v1, .L800C020C
/* 2AE1C 800C021C 24A50001 */   addiu     $a1, $a1, 1
.L800C0220:
/* 2AE20 800C0220 03E00008 */  jr         $ra
/* 2AE24 800C0224 00E01021 */   addu      $v0, $a3, $zero
.L800C0228:
/* 2AE28 800C0228 1040001A */  beqz       $v0, .L800C0294
/* 2AE2C 800C022C 00000000 */   nop
/* 2AE30 800C0230 24010001 */  addiu      $at, $zero, 1
/* 2AE34 800C0234 10410010 */  beq        $v0, $at, .L800C0278
/* 2AE38 800C0238 00000000 */   nop
/* 2AE3C 800C023C 24010002 */  addiu      $at, $zero, 2
/* 2AE40 800C0240 10410007 */  beq        $v0, $at, .L800C0260
/* 2AE44 800C0244 00000000 */   nop
/* 2AE48 800C0248 80820000 */  lb         $v0, ($a0)
/* 2AE4C 800C024C 24840001 */  addiu      $a0, $a0, 1
/* 2AE50 800C0250 A0A20000 */  sb         $v0, ($a1)
/* 2AE54 800C0254 24A50001 */  addiu      $a1, $a1, 1
/* 2AE58 800C0258 1000000E */  b          .L800C0294
/* 2AE5C 800C025C 24C6FFFF */   addiu     $a2, $a2, -1
.L800C0260:
/* 2AE60 800C0260 84820000 */  lh         $v0, ($a0)
/* 2AE64 800C0264 24840002 */  addiu      $a0, $a0, 2
/* 2AE68 800C0268 A4A20000 */  sh         $v0, ($a1)
/* 2AE6C 800C026C 24A50002 */  addiu      $a1, $a1, 2
/* 2AE70 800C0270 10000008 */  b          .L800C0294
/* 2AE74 800C0274 24C6FFFE */   addiu     $a2, $a2, -2
.L800C0278:
/* 2AE78 800C0278 80820000 */  lb         $v0, ($a0)
/* 2AE7C 800C027C 84830001 */  lh         $v1, 1($a0)
/* 2AE80 800C0280 24840003 */  addiu      $a0, $a0, 3
/* 2AE84 800C0284 A0A20000 */  sb         $v0, ($a1)
/* 2AE88 800C0288 A4A30001 */  sh         $v1, 1($a1)
/* 2AE8C 800C028C 24A50003 */  addiu      $a1, $a1, 3
/* 2AE90 800C0290 24C6FFFD */  addiu      $a2, $a2, -3
.L800C0294:
/* 2AE94 800C0294 28C10020 */  slti       $at, $a2, 0x20
/* 2AE98 800C0298 14200015 */  bnez       $at, .L800C02F0
/* 2AE9C 800C029C 00000000 */   nop
/* 2AEA0 800C02A0 8C820000 */  lw         $v0, ($a0)
/* 2AEA4 800C02A4 8C830004 */  lw         $v1, 4($a0)
/* 2AEA8 800C02A8 8C880008 */  lw         $t0, 8($a0)
/* 2AEAC 800C02AC 8C89000C */  lw         $t1, 0xc($a0)
/* 2AEB0 800C02B0 8C8A0010 */  lw         $t2, 0x10($a0)
/* 2AEB4 800C02B4 8C8B0014 */  lw         $t3, 0x14($a0)
/* 2AEB8 800C02B8 8C8C0018 */  lw         $t4, 0x18($a0)
/* 2AEBC 800C02BC 8C8D001C */  lw         $t5, 0x1c($a0)
/* 2AEC0 800C02C0 24840020 */  addiu      $a0, $a0, 0x20
/* 2AEC4 800C02C4 ACA20000 */  sw         $v0, ($a1)
/* 2AEC8 800C02C8 ACA30004 */  sw         $v1, 4($a1)
/* 2AECC 800C02CC ACA80008 */  sw         $t0, 8($a1)
/* 2AED0 800C02D0 ACA9000C */  sw         $t1, 0xc($a1)
/* 2AED4 800C02D4 ACAA0010 */  sw         $t2, 0x10($a1)
/* 2AED8 800C02D8 ACAB0014 */  sw         $t3, 0x14($a1)
/* 2AEDC 800C02DC ACAC0018 */  sw         $t4, 0x18($a1)
/* 2AEE0 800C02E0 ACAD001C */  sw         $t5, 0x1c($a1)
/* 2AEE4 800C02E4 24A50020 */  addiu      $a1, $a1, 0x20
/* 2AEE8 800C02E8 1000FFEA */  b          .L800C0294
/* 2AEEC 800C02EC 24C6FFE0 */   addiu     $a2, $a2, -0x20
.L800C02F0:
/* 2AEF0 800C02F0 28C10010 */  slti       $at, $a2, 0x10
/* 2AEF4 800C02F4 1420000D */  bnez       $at, .L800C032C
/* 2AEF8 800C02F8 00000000 */   nop
/* 2AEFC 800C02FC 8C820000 */  lw         $v0, ($a0)
/* 2AF00 800C0300 8C830004 */  lw         $v1, 4($a0)
/* 2AF04 800C0304 8C880008 */  lw         $t0, 8($a0)
/* 2AF08 800C0308 8C89000C */  lw         $t1, 0xc($a0)
/* 2AF0C 800C030C 24840010 */  addiu      $a0, $a0, 0x10
/* 2AF10 800C0310 ACA20000 */  sw         $v0, ($a1)
/* 2AF14 800C0314 ACA30004 */  sw         $v1, 4($a1)
/* 2AF18 800C0318 ACA80008 */  sw         $t0, 8($a1)
/* 2AF1C 800C031C ACA9000C */  sw         $t1, 0xc($a1)
/* 2AF20 800C0320 24A50010 */  addiu      $a1, $a1, 0x10
/* 2AF24 800C0324 1000FFF2 */  b          .L800C02F0
/* 2AF28 800C0328 24C6FFF0 */   addiu     $a2, $a2, -0x10
.L800C032C:
/* 2AF2C 800C032C 28C10004 */  slti       $at, $a2, 4
/* 2AF30 800C0330 1420FFB3 */  bnez       $at, .L800C0200
/* 2AF34 800C0334 00000000 */   nop
/* 2AF38 800C0338 8C820000 */  lw         $v0, ($a0)
/* 2AF3C 800C033C 24840004 */  addiu      $a0, $a0, 4
/* 2AF40 800C0340 ACA20000 */  sw         $v0, ($a1)
/* 2AF44 800C0344 24A50004 */  addiu      $a1, $a1, 4
/* 2AF48 800C0348 1000FFF8 */  b          .L800C032C
/* 2AF4C 800C034C 24C6FFFC */   addiu     $a2, $a2, -4
.L800C0350:
/* 2AF50 800C0350 00862020 */  add        $a0, $a0, $a2
/* 2AF54 800C0354 00A62820 */  add        $a1, $a1, $a2
/* 2AF58 800C0358 28C10010 */  slti       $at, $a2, 0x10
/* 2AF5C 800C035C 14200005 */  bnez       $at, .L800C0374
/* 2AF60 800C0360 00000000 */   nop
/* 2AF64 800C0364 30820003 */  andi       $v0, $a0, 3
/* 2AF68 800C0368 30A30003 */  andi       $v1, $a1, 3
/* 2AF6C 800C036C 1043000D */  beq        $v0, $v1, .L800C03A4
/* 2AF70 800C0370 00000000 */   nop
.L800C0374:
/* 2AF74 800C0374 10C0FFAA */  beqz       $a2, .L800C0220
/* 2AF78 800C0378 00000000 */   nop
/* 2AF7C 800C037C 2484FFFF */  addiu      $a0, $a0, -1
/* 2AF80 800C0380 24A5FFFF */  addiu      $a1, $a1, -1
/* 2AF84 800C0384 00861823 */  subu       $v1, $a0, $a2
.L800C0388:
/* 2AF88 800C0388 80820000 */  lb         $v0, ($a0)
/* 2AF8C 800C038C 2484FFFF */  addiu      $a0, $a0, -1
/* 2AF90 800C0390 A0A20000 */  sb         $v0, ($a1)
/* 2AF94 800C0394 1483FFFC */  bne        $a0, $v1, .L800C0388
/* 2AF98 800C0398 24A5FFFF */   addiu     $a1, $a1, -1
/* 2AF9C 800C039C 03E00008 */  jr         $ra
/* 2AFA0 800C03A0 00E01021 */   addu      $v0, $a3, $zero
.L800C03A4:
/* 2AFA4 800C03A4 1040001A */  beqz       $v0, .L800C0410
/* 2AFA8 800C03A8 00000000 */   nop
/* 2AFAC 800C03AC 24010003 */  addiu      $at, $zero, 3
/* 2AFB0 800C03B0 10410010 */  beq        $v0, $at, .L800C03F4
/* 2AFB4 800C03B4 00000000 */   nop
/* 2AFB8 800C03B8 24010002 */  addiu      $at, $zero, 2
/* 2AFBC 800C03BC 10410007 */  beq        $v0, $at, .L800C03DC
/* 2AFC0 800C03C0 00000000 */   nop
/* 2AFC4 800C03C4 8082FFFF */  lb         $v0, -1($a0)
/* 2AFC8 800C03C8 2484FFFF */  addiu      $a0, $a0, -1
/* 2AFCC 800C03CC A0A2FFFF */  sb         $v0, -1($a1)
/* 2AFD0 800C03D0 24A5FFFF */  addiu      $a1, $a1, -1
/* 2AFD4 800C03D4 1000000E */  b          .L800C0410
/* 2AFD8 800C03D8 24C6FFFF */   addiu     $a2, $a2, -1
.L800C03DC:
/* 2AFDC 800C03DC 8482FFFE */  lh         $v0, -2($a0)
/* 2AFE0 800C03E0 2484FFFE */  addiu      $a0, $a0, -2
/* 2AFE4 800C03E4 A4A2FFFE */  sh         $v0, -2($a1)
/* 2AFE8 800C03E8 24A5FFFE */  addiu      $a1, $a1, -2
/* 2AFEC 800C03EC 10000008 */  b          .L800C0410
/* 2AFF0 800C03F0 24C6FFFE */   addiu     $a2, $a2, -2
.L800C03F4:
/* 2AFF4 800C03F4 8082FFFF */  lb         $v0, -1($a0)
/* 2AFF8 800C03F8 8483FFFD */  lh         $v1, -3($a0)
/* 2AFFC 800C03FC 2484FFFD */  addiu      $a0, $a0, -3
/* 2B000 800C0400 A0A2FFFF */  sb         $v0, -1($a1)
/* 2B004 800C0404 A4A3FFFD */  sh         $v1, -3($a1)
/* 2B008 800C0408 24A5FFFD */  addiu      $a1, $a1, -3
/* 2B00C 800C040C 24C6FFFD */  addiu      $a2, $a2, -3
.L800C0410:
/* 2B010 800C0410 28C10020 */  slti       $at, $a2, 0x20
/* 2B014 800C0414 14200015 */  bnez       $at, .L800C046C
/* 2B018 800C0418 00000000 */   nop
/* 2B01C 800C041C 8C82FFFC */  lw         $v0, -4($a0)
/* 2B020 800C0420 8C83FFF8 */  lw         $v1, -8($a0)
/* 2B024 800C0424 8C88FFF4 */  lw         $t0, -0xc($a0)
/* 2B028 800C0428 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 2B02C 800C042C 8C8AFFEC */  lw         $t2, -0x14($a0)
/* 2B030 800C0430 8C8BFFE8 */  lw         $t3, -0x18($a0)
/* 2B034 800C0434 8C8CFFE4 */  lw         $t4, -0x1c($a0)
/* 2B038 800C0438 8C8DFFE0 */  lw         $t5, -0x20($a0)
/* 2B03C 800C043C 2484FFE0 */  addiu      $a0, $a0, -0x20
/* 2B040 800C0440 ACA2FFFC */  sw         $v0, -4($a1)
/* 2B044 800C0444 ACA3FFF8 */  sw         $v1, -8($a1)
/* 2B048 800C0448 ACA8FFF4 */  sw         $t0, -0xc($a1)
/* 2B04C 800C044C ACA9FFF0 */  sw         $t1, -0x10($a1)
/* 2B050 800C0450 ACAAFFEC */  sw         $t2, -0x14($a1)
/* 2B054 800C0454 ACABFFE8 */  sw         $t3, -0x18($a1)
/* 2B058 800C0458 ACACFFE4 */  sw         $t4, -0x1c($a1)
/* 2B05C 800C045C ACADFFE0 */  sw         $t5, -0x20($a1)
/* 2B060 800C0460 24A5FFE0 */  addiu      $a1, $a1, -0x20
/* 2B064 800C0464 1000FFEA */  b          .L800C0410
/* 2B068 800C0468 24C6FFE0 */   addiu     $a2, $a2, -0x20
.L800C046C:
/* 2B06C 800C046C 28C10010 */  slti       $at, $a2, 0x10
/* 2B070 800C0470 1420000D */  bnez       $at, .L800C04A8
/* 2B074 800C0474 00000000 */   nop
/* 2B078 800C0478 8C82FFFC */  lw         $v0, -4($a0)
/* 2B07C 800C047C 8C83FFF8 */  lw         $v1, -8($a0)
/* 2B080 800C0480 8C88FFF4 */  lw         $t0, -0xc($a0)
/* 2B084 800C0484 8C89FFF0 */  lw         $t1, -0x10($a0)
/* 2B088 800C0488 2484FFF0 */  addiu      $a0, $a0, -0x10
/* 2B08C 800C048C ACA2FFFC */  sw         $v0, -4($a1)
/* 2B090 800C0490 ACA3FFF8 */  sw         $v1, -8($a1)
/* 2B094 800C0494 ACA8FFF4 */  sw         $t0, -0xc($a1)
/* 2B098 800C0498 ACA9FFF0 */  sw         $t1, -0x10($a1)
/* 2B09C 800C049C 24A5FFF0 */  addiu      $a1, $a1, -0x10
/* 2B0A0 800C04A0 1000FFF2 */  b          .L800C046C
/* 2B0A4 800C04A4 24C6FFF0 */   addiu     $a2, $a2, -0x10
.L800C04A8:
/* 2B0A8 800C04A8 28C10004 */  slti       $at, $a2, 4
/* 2B0AC 800C04AC 1420FFB1 */  bnez       $at, .L800C0374
/* 2B0B0 800C04B0 00000000 */   nop
/* 2B0B4 800C04B4 8C82FFFC */  lw         $v0, -4($a0)
/* 2B0B8 800C04B8 2484FFFC */  addiu      $a0, $a0, -4
/* 2B0BC 800C04BC ACA2FFFC */  sw         $v0, -4($a1)
/* 2B0C0 800C04C0 24A5FFFC */  addiu      $a1, $a1, -4
/* 2B0C4 800C04C4 1000FFF8 */  b          .L800C04A8
/* 2B0C8 800C04C8 24C6FFFC */   addiu     $a2, $a2, -4
/* 2B0CC 800C04CC 00000000 */  nop
