.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C5280
/* 2FE80 800C5280 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 2FE84 800C5284 8FA20058 */  lw         $v0, 0x58($sp)
/* 2FE88 800C5288 AFB40030 */  sw         $s4, 0x30($sp)
/* 2FE8C 800C528C 0080A021 */  addu       $s4, $a0, $zero
/* 2FE90 800C5290 AFB3002C */  sw         $s3, 0x2c($sp)
/* 2FE94 800C5294 00A09821 */  addu       $s3, $a1, $zero
/* 2FE98 800C5298 AFB50034 */  sw         $s5, 0x34($sp)
/* 2FE9C 800C529C 24150002 */  addiu      $s5, $zero, 2
/* 2FEA0 800C52A0 AFB7003C */  sw         $s7, 0x3c($sp)
/* 2FEA4 800C52A4 00E0B821 */  addu       $s7, $a3, $zero
/* 2FEA8 800C52A8 AFB00020 */  sw         $s0, 0x20($sp)
/* 2FEAC 800C52AC 00C08021 */  addu       $s0, $a2, $zero
/* 2FEB0 800C52B0 3204FFFF */  andi       $a0, $s0, 0xffff
/* 2FEB4 800C52B4 2C830007 */  sltiu      $v1, $a0, 7
/* 2FEB8 800C52B8 AFBF0044 */  sw         $ra, 0x44($sp)
/* 2FEBC 800C52BC AFBE0040 */  sw         $fp, 0x40($sp)
/* 2FEC0 800C52C0 AFB60038 */  sw         $s6, 0x38($sp)
/* 2FEC4 800C52C4 AFB20028 */  sw         $s2, 0x28($sp)
/* 2FEC8 800C52C8 38420001 */  xori       $v0, $v0, 1
/* 2FECC 800C52CC 0002102B */  sltu       $v0, $zero, $v0
/* 2FED0 800C52D0 00431024 */  and        $v0, $v0, $v1
/* 2FED4 800C52D4 10400003 */  beqz       $v0, .L800C52E4
/* 2FED8 800C52D8 AFB10024 */   sw        $s1, 0x24($sp)
/* 2FEDC 800C52DC 1480005D */  bnez       $a0, .L800C5454
/* 2FEE0 800C52E0 00001021 */   addu      $v0, $zero, $zero
.L800C52E4:
/* 2FEE4 800C52E4 0C030635 */  jal        func_800C18D4
/* 2FEE8 800C52E8 241E0003 */   addiu     $fp, $zero, 3
/* 2FEEC 800C52EC 3216FFFF */  andi       $s6, $s0, 0xffff
/* 2FEF0 800C52F0 00108140 */  sll        $s0, $s0, 5
/* 2FEF4 800C52F4 AFB00014 */  sw         $s0, 0x14($sp)
.L800C52F8:
/* 2FEF8 800C52F8 3C028017 */  lui        $v0, %hi(D_8016D064)
/* 2FEFC 800C52FC 9042D064 */  lbu        $v0, %lo(D_8016D064)($v0)
/* 2FF00 800C5300 3C108017 */  lui        $s0, %hi(D_8016D830)
/* 2FF04 800C5304 145E0005 */  bne        $v0, $fp, .L800C531C
/* 2FF08 800C5308 2610D830 */   addiu     $s0, $s0, %lo(D_8016D830)
/* 2FF0C 800C530C 3C02800F */  lui        $v0, %hi(D_800F7B90)
/* 2FF10 800C5310 8C427B90 */  lw         $v0, %lo(D_800F7B90)($v0)
/* 2FF14 800C5314 5053001A */  beql       $v0, $s3, .L800C5380
/* 2FF18 800C5318 02708021 */   addu      $s0, $s3, $s0
.L800C531C:
/* 2FF1C 800C531C 3C018017 */  lui        $at, %hi(D_8016D064)
/* 2FF20 800C5320 A03ED064 */  sb         $fp, %lo(D_8016D064)($at)
/* 2FF24 800C5324 3C01800F */  lui        $at, %hi(D_800F7B90)
/* 2FF28 800C5328 AC337B90 */  sw         $s3, %lo(D_800F7B90)($at)
/* 2FF2C 800C532C 1A600006 */  blez       $s3, .L800C5348
/* 2FF30 800C5330 00001821 */   addu      $v1, $zero, $zero
.L800C5334:
/* 2FF34 800C5334 A2000000 */  sb         $zero, ($s0)
/* 2FF38 800C5338 24630001 */  addiu      $v1, $v1, 1
/* 2FF3C 800C533C 0073102A */  slt        $v0, $v1, $s3
/* 2FF40 800C5340 1440FFFC */  bnez       $v0, .L800C5334
/* 2FF44 800C5344 26100001 */   addiu     $s0, $s0, 1
.L800C5348:
/* 2FF48 800C5348 24080001 */  addiu      $t0, $zero, 1
/* 2FF4C 800C534C 3C018017 */  lui        $at, %hi(D_8016D86C)
/* 2FF50 800C5350 AC28D86C */  sw         $t0, %lo(D_8016D86C)($at)
/* 2FF54 800C5354 240800FF */  addiu      $t0, $zero, 0xff
/* 2FF58 800C5358 24020023 */  addiu      $v0, $zero, 0x23
/* 2FF5C 800C535C A2080000 */  sb         $t0, ($s0)
/* 2FF60 800C5360 24080001 */  addiu      $t0, $zero, 1
/* 2FF64 800C5364 A2080002 */  sb         $t0, 2($s0)
/* 2FF68 800C5368 240800FF */  addiu      $t0, $zero, 0xff
/* 2FF6C 800C536C A2020001 */  sb         $v0, 1($s0)
/* 2FF70 800C5370 240200FE */  addiu      $v0, $zero, 0xfe
/* 2FF74 800C5374 A21E0003 */  sb         $fp, 3($s0)
/* 2FF78 800C5378 A2080026 */  sb         $t0, 0x26($s0)
/* 2FF7C 800C537C A2020027 */  sb         $v0, 0x27($s0)
.L800C5380:
/* 2FF80 800C5380 02C02021 */  addu       $a0, $s6, $zero
/* 2FF84 800C5384 001610C2 */  srl        $v0, $s6, 3
/* 2FF88 800C5388 0C031EB8 */  jal        func_800C7AE0
/* 2FF8C 800C538C A2020004 */   sb        $v0, 4($s0)
/* 2FF90 800C5390 02E02021 */  addu       $a0, $s7, $zero
/* 2FF94 800C5394 8FA80014 */  lw         $t0, 0x14($sp)
/* 2FF98 800C5398 26050006 */  addiu      $a1, $s0, 6
/* 2FF9C 800C539C 24060020 */  addiu      $a2, $zero, 0x20
/* 2FFA0 800C53A0 00481025 */  or         $v0, $v0, $t0
/* 2FFA4 800C53A4 0C03006C */  jal        func_800C01B0
/* 2FFA8 800C53A8 A2020005 */   sb        $v0, 5($s0)
/* 2FFAC 800C53AC 3C058017 */  lui        $a1, %hi(D_8016D830)
/* 2FFB0 800C53B0 24A5D830 */  addiu      $a1, $a1, %lo(D_8016D830)
/* 2FFB4 800C53B4 0C0305F4 */  jal        func_800C17D0
/* 2FFB8 800C53B8 24040001 */   addiu     $a0, $zero, 1
/* 2FFBC 800C53BC 0C031ED3 */  jal        func_800C7B4C
/* 2FFC0 800C53C0 02E02021 */   addu      $a0, $s7, $zero
/* 2FFC4 800C53C4 02802021 */  addu       $a0, $s4, $zero
/* 2FFC8 800C53C8 00002821 */  addu       $a1, $zero, $zero
/* 2FFCC 800C53CC 24060001 */  addiu      $a2, $zero, 1
/* 2FFD0 800C53D0 0C030200 */  jal        func_800C0800
/* 2FFD4 800C53D4 00409021 */   addu      $s2, $v0, $zero
/* 2FFD8 800C53D8 3C058017 */  lui        $a1, %hi(D_8016D830)
/* 2FFDC 800C53DC 24A5D830 */  addiu      $a1, $a1, %lo(D_8016D830)
/* 2FFE0 800C53E0 0C0305F4 */  jal        func_800C17D0
/* 2FFE4 800C53E4 00002021 */   addu      $a0, $zero, $zero
/* 2FFE8 800C53E8 02802021 */  addu       $a0, $s4, $zero
/* 2FFEC 800C53EC 00002821 */  addu       $a1, $zero, $zero
/* 2FFF0 800C53F0 0C030200 */  jal        func_800C0800
/* 2FFF4 800C53F4 24060001 */   addiu     $a2, $zero, 1
/* 2FFF8 800C53F8 92020002 */  lbu        $v0, 2($s0)
/* 2FFFC 800C53FC 304200C0 */  andi       $v0, $v0, 0xc0
/* 30000 800C5400 00028902 */  srl        $s1, $v0, 4
/* 30004 800C5404 5620000B */  bnezl      $s1, .L800C5434
/* 30008 800C5408 24110001 */   addiu     $s1, $zero, 1
/* 3000C 800C540C 92030026 */  lbu        $v1, 0x26($s0)
/* 30010 800C5410 324200FF */  andi       $v0, $s2, 0xff
/* 30014 800C5414 10430007 */  beq        $v0, $v1, .L800C5434
/* 30018 800C5418 02802021 */   addu      $a0, $s4, $zero
/* 3001C 800C541C 0C0310E0 */  jal        func_800C4380
/* 30020 800C5420 02602821 */   addu      $a1, $s3, $zero
/* 30024 800C5424 00408821 */  addu       $s1, $v0, $zero
/* 30028 800C5428 16200007 */  bnez       $s1, .L800C5448
/* 3002C 800C542C 00000000 */   nop
/* 30030 800C5430 24110004 */  addiu      $s1, $zero, 4
.L800C5434:
/* 30034 800C5434 24020004 */  addiu      $v0, $zero, 4
/* 30038 800C5438 16220003 */  bne        $s1, $v0, .L800C5448
/* 3003C 800C543C 02A01021 */   addu      $v0, $s5, $zero
/* 30040 800C5440 0441FFAD */  bgez       $v0, .L800C52F8
/* 30044 800C5444 26B5FFFF */   addiu     $s5, $s5, -1
.L800C5448:
/* 30048 800C5448 0C030650 */  jal        func_800C1940
/* 3004C 800C544C 00000000 */   nop
/* 30050 800C5450 02201021 */  addu       $v0, $s1, $zero
.L800C5454:
/* 30054 800C5454 8FBF0044 */  lw         $ra, 0x44($sp)
/* 30058 800C5458 8FBE0040 */  lw         $fp, 0x40($sp)
/* 3005C 800C545C 8FB7003C */  lw         $s7, 0x3c($sp)
/* 30060 800C5460 8FB60038 */  lw         $s6, 0x38($sp)
/* 30064 800C5464 8FB50034 */  lw         $s5, 0x34($sp)
/* 30068 800C5468 8FB40030 */  lw         $s4, 0x30($sp)
/* 3006C 800C546C 8FB3002C */  lw         $s3, 0x2c($sp)
/* 30070 800C5470 8FB20028 */  lw         $s2, 0x28($sp)
/* 30074 800C5474 8FB10024 */  lw         $s1, 0x24($sp)
/* 30078 800C5478 8FB00020 */  lw         $s0, 0x20($sp)
/* 3007C 800C547C 03E00008 */  jr         $ra
/* 30080 800C5480 27BD0048 */   addiu     $sp, $sp, 0x48
/* 30084 800C5484 00000000 */  nop
/* 30088 800C5488 00000000 */  nop
/* 3008C 800C548C 00000000 */  nop
/* 30090 800C5490 00000000 */  nop
/* 30094 800C5494 00000000 */  nop
/* 30098 800C5498 00000000 */  nop
/* 3009C 800C549C 00000000 */  nop
/* 300A0 800C54A0 00000000 */  nop
/* 300A4 800C54A4 00000000 */  nop
/* 300A8 800C54A8 00000000 */  nop
/* 300AC 800C54AC 00000000 */  nop
/* 300B0 800C54B0 00000000 */  nop
/* 300B4 800C54B4 00000000 */  nop
/* 300B8 800C54B8 00000000 */  nop
/* 300BC 800C54BC 00000000 */  nop
/* 300C0 800C54C0 00000000 */  nop
/* 300C4 800C54C4 00000000 */  nop
/* 300C8 800C54C8 00000000 */  nop
/* 300CC 800C54CC 00000000 */  nop
/* 300D0 800C54D0 00000000 */  nop
/* 300D4 800C54D4 00000000 */  nop
/* 300D8 800C54D8 00000000 */  nop
/* 300DC 800C54DC 00000000 */  nop
/* 300E0 800C54E0 00000000 */  nop
/* 300E4 800C54E4 00000000 */  nop
/* 300E8 800C54E8 00000000 */  nop
/* 300EC 800C54EC 00000000 */  nop
