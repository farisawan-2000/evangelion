glabel func_800A51D8
/* FDD8 800A51D8 27BDFF48 */  addiu      $sp, $sp, -0xB8
/* FDDC 800A51DC A7A40016 */  sh         $a0, 0x16($sp)
/* FDE0 800A51E0 97A20016 */  lhu        $v0, 0x16($sp)
/* FDE4 800A51E4 AFBF00B4 */  sw         $ra, 0xB4($sp)
/* FDE8 800A51E8 AFBE00B0 */  sw         $fp, 0xB0($sp)
/* FDEC 800A51EC AFB700AC */  sw         $s7, 0xAC($sp)
/* FDF0 800A51F0 AFB600A8 */  sw         $s6, 0xA8($sp)
/* FDF4 800A51F4 AFB500A4 */  sw         $s5, 0xA4($sp)
/* FDF8 800A51F8 AFB400A0 */  sw         $s4, 0xA0($sp)
/* FDFC 800A51FC AFB3009C */  sw         $s3, 0x9C($sp)
/* FE00 800A5200 AFB20098 */  sw         $s2, 0x98($sp)
/* FE04 800A5204 AFB10094 */  sw         $s1, 0x94($sp)
/* FE08 800A5208 AFB00090 */  sw         $s0, 0x90($sp)
/* FE0C 800A520C A7A5001E */  sh         $a1, 0x1E($sp)
/* FE10 800A5210 A7A60026 */  sh         $a2, 0x26($sp)
/* FE14 800A5214 A3A7002F */  sb         $a3, 0x2F($sp)
/* FE18 800A5218 00021080 */  sll        $v0, $v0, 2
/* FE1C 800A521C 3C11800E */  lui        $s1, %hi(D_800E2080)
/* FE20 800A5220 02228821 */  addu       $s1, $s1, $v0
/* FE24 800A5224 96312080 */  lhu        $s1, %lo(D_800E2080)($s1)
/* FE28 800A5228 00111040 */  sll        $v0, $s1, 1
/* FE2C 800A522C 00511021 */  addu       $v0, $v0, $s1
/* FE30 800A5230 00021080 */  sll        $v0, $v0, 2
/* FE34 800A5234 3C01800D */  lui        $at, %hi(D_800D6AD8)
/* FE38 800A5238 00220821 */  addu       $at, $at, $v0
/* FE3C 800A523C 8C226AD8 */  lw         $v0, %lo(D_800D6AD8)($at)
/* FE40 800A5240 97A3001E */  lhu        $v1, 0x1E($sp)
/* FE44 800A5244 2442FFF0 */  addiu      $v0, $v0, -0x10
/* FE48 800A5248 00430018 */  mult       $v0, $v1
/* FE4C 800A524C 00001012 */  mflo       $v0
/* FE50 800A5250 00000000 */  nop
/* FE54 800A5254 00000000 */  nop
/* FE58 800A5258 97A30026 */  lhu        $v1, 0x26($sp)
/* FE5C 800A525C 00430018 */  mult       $v0, $v1
/* FE60 800A5260 00001012 */  mflo       $v0
/* FE64 800A5264 00000000 */  nop
/* FE68 800A5268 00000000 */  nop
/* FE6C 800A526C 93A800CB */  lbu        $t0, 0xCB($sp)
/* FE70 800A5270 A3A80037 */  sb         $t0, 0x37($sp)
/* FE74 800A5274 93A30037 */  lbu        $v1, 0x37($sp)
/* FE78 800A5278 24440010 */  addiu      $a0, $v0, 0x10
/* FE7C 800A527C 24020001 */  addiu      $v0, $zero, 0x1
/* FE80 800A5280 1062000F */  beq        $v1, $v0, .L800A52C0
/* FE84 800A5284 28620002 */   slti      $v0, $v1, 0x2
/* FE88 800A5288 50400005 */  beql       $v0, $zero, .L800A52A0
/* FE8C 800A528C 24020002 */   addiu     $v0, $zero, 0x2
/* FE90 800A5290 10600007 */  beqz       $v1, .L800A52B0
/* FE94 800A5294 00000000 */   nop
/* FE98 800A5298 080294B7 */  j          .L800A52DC
/* FE9C 800A529C 00000000 */   nop
.L800A52A0:
/* FEA0 800A52A0 1062000B */  beq        $v1, $v0, .L800A52D0
/* FEA4 800A52A4 00000000 */   nop
/* FEA8 800A52A8 080294B7 */  j          .L800A52DC
/* FEAC 800A52AC 00000000 */   nop
.L800A52B0:
/* FEB0 800A52B0 0C032663 */  jal        func_800C998C
/* FEB4 800A52B4 00000000 */   nop
/* FEB8 800A52B8 080294B7 */  j          .L800A52DC
/* FEBC 800A52BC AFA2005C */   sw        $v0, 0x5C($sp)
.L800A52C0:
/* FEC0 800A52C0 0C025E63 */  jal        func_8009798C
/* FEC4 800A52C4 00000000 */   nop
/* FEC8 800A52C8 080294B7 */  j          .L800A52DC
/* FECC 800A52CC AFA2005C */   sw        $v0, 0x5C($sp)
.L800A52D0:
/* FED0 800A52D0 0C026127 */  jal        func_8009849C
/* FED4 800A52D4 00000000 */   nop
/* FED8 800A52D8 AFA2005C */  sw         $v0, 0x5C($sp)
.L800A52DC:
/* FEDC 800A52DC 3C04001E */  lui        $a0, %hi(Image_ROM_START)
/* FEE0 800A52E0 24849000 */  addiu      $a0, $a0, %lo(Image_ROM_START)
/* FEE4 800A52E4 3C05800D */  lui        $a1, %hi(D_800D6AD0)
/* FEE8 800A52E8 24A56AD0 */  addiu      $a1, $a1, %lo(D_800D6AD0)
/* FEEC 800A52EC 02203021 */  addu       $a2, $s1, $zero
/* FEF0 800A52F0 0C02648E */  jal        func_80099238
/* FEF4 800A52F4 00003821 */   addu      $a3, $zero, $zero
/* FEF8 800A52F8 AFA2006C */  sw         $v0, 0x6C($sp)
/* FEFC 800A52FC 24490010 */  addiu      $t1, $v0, 0x10
/* FF00 800A5300 AFA90074 */  sw         $t1, 0x74($sp)
/* FF04 800A5304 90480004 */  lbu        $t0, 0x4($v0)
/* FF08 800A5308 A3A80057 */  sb         $t0, 0x57($sp)
/* FF0C 800A530C 94490000 */  lhu        $t1, 0x0($v0)
/* FF10 800A5310 93A30057 */  lbu        $v1, 0x57($sp)
/* FF14 800A5314 A7A9003E */  sh         $t1, 0x3E($sp)
/* FF18 800A5318 94480002 */  lhu        $t0, 0x2($v0)
/* FF1C 800A531C 24020001 */  addiu      $v0, $zero, 0x1
/* FF20 800A5320 10620012 */  beq        $v1, $v0, .L800A536C
/* FF24 800A5324 A7A8004E */   sh        $t0, 0x4E($sp)
/* FF28 800A5328 28620002 */  slti       $v0, $v1, 0x2
/* FF2C 800A532C 50400005 */  beql       $v0, $zero, .L800A5344
/* FF30 800A5330 24020002 */   addiu     $v0, $zero, 0x2
/* FF34 800A5334 10600009 */  beqz       $v1, .L800A535C
/* FF38 800A5338 00000000 */   nop
/* FF3C 800A533C 080294E5 */  j          .L800A5394
/* FF40 800A5340 00000000 */   nop
.L800A5344:
/* FF44 800A5344 1062000C */  beq        $v1, $v0, .L800A5378
/* FF48 800A5348 24020003 */   addiu     $v0, $zero, 0x3
/* FF4C 800A534C 1062000E */  beq        $v1, $v0, .L800A5388
/* FF50 800A5350 00000000 */   nop
/* FF54 800A5354 080294E5 */  j          .L800A5394
/* FF58 800A5358 00000000 */   nop
.L800A535C:
/* FF5C 800A535C 97A9003E */  lhu        $t1, 0x3E($sp)
/* FF60 800A5360 00094842 */  srl        $t1, $t1, 1
/* FF64 800A5364 080294E5 */  j          .L800A5394
/* FF68 800A5368 A7A90046 */   sh        $t1, 0x46($sp)
.L800A536C:
/* FF6C 800A536C 97A8003E */  lhu        $t0, 0x3E($sp)
/* FF70 800A5370 080294E5 */  j          .L800A5394
/* FF74 800A5374 A7A80046 */   sh        $t0, 0x46($sp)
.L800A5378:
/* FF78 800A5378 97A9003E */  lhu        $t1, 0x3E($sp)
/* FF7C 800A537C 00094840 */  sll        $t1, $t1, 1
/* FF80 800A5380 080294E5 */  j          .L800A5394
/* FF84 800A5384 A7A90046 */   sh        $t1, 0x46($sp)
.L800A5388:
/* FF88 800A5388 97A8003E */  lhu        $t0, 0x3E($sp)
/* FF8C 800A538C 00084080 */  sll        $t0, $t0, 2
/* FF90 800A5390 A7A80046 */  sh         $t0, 0x46($sp)
.L800A5394:
/* FF94 800A5394 8FA9005C */  lw         $t1, 0x5C($sp)
/* FF98 800A5398 97A2001E */  lhu        $v0, 0x1E($sp)
/* FF9C 800A539C 0000A821 */  addu       $s5, $zero, $zero
/* FFA0 800A53A0 25290010 */  addiu      $t1, $t1, 0x10
/* FFA4 800A53A4 1840001E */  blez       $v0, .L800A5420
/* FFA8 800A53A8 AFA90064 */   sw        $t1, 0x64($sp)
/* FFAC 800A53AC 97A8004E */  lhu        $t0, 0x4E($sp)
/* FFB0 800A53B0 97B30046 */  lhu        $s3, 0x46($sp)
/* FFB4 800A53B4 0000B021 */  addu       $s6, $zero, $zero
/* FFB8 800A53B8 0040F021 */  addu       $fp, $v0, $zero
/* FFBC 800A53BC 027E0018 */  mult       $s3, $fp
/* FFC0 800A53C0 0000B812 */  mflo       $s7
/* FFC4 800A53C4 00000000 */  nop
/* FFC8 800A53C8 00000000 */  nop
/* FFCC 800A53CC AFA80084 */  sw         $t0, 0x84($sp)
.L800A53D0:
/* FFD0 800A53D0 8FB20074 */  lw         $s2, 0x74($sp)
/* FFD4 800A53D4 8FA90064 */  lw         $t1, 0x64($sp)
/* FFD8 800A53D8 8FA80084 */  lw         $t0, 0x84($sp)
/* FFDC 800A53DC 00008021 */  addu       $s0, $zero, $zero
/* FFE0 800A53E0 1100000B */  beqz       $t0, .L800A5410
/* FFE4 800A53E4 01368821 */   addu      $s1, $t1, $s6
/* FFE8 800A53E8 97B4004E */  lhu        $s4, 0x4E($sp)
.L800A53EC:
/* FFEC 800A53EC 02402021 */  addu       $a0, $s2, $zero
/* FFF0 800A53F0 02202821 */  addu       $a1, $s1, $zero
/* FFF4 800A53F4 0C03006C */  jal        func_800C01B0
/* FFF8 800A53F8 02603021 */   addu      $a2, $s3, $zero
/* FFFC 800A53FC 02539021 */  addu       $s2, $s2, $s3
/* 10000 800A5400 26100001 */  addiu      $s0, $s0, 0x1
/* 10004 800A5404 0214102A */  slt        $v0, $s0, $s4
/* 10008 800A5408 1440FFF8 */  bnez       $v0, .L800A53EC
/* 1000C 800A540C 02378821 */   addu      $s1, $s1, $s7
.L800A5410:
/* 10010 800A5410 26B50001 */  addiu      $s5, $s5, 0x1
/* 10014 800A5414 02BE102A */  slt        $v0, $s5, $fp
/* 10018 800A5418 1440FFED */  bnez       $v0, .L800A53D0
/* 1001C 800A541C 02D3B021 */   addu      $s6, $s6, $s3
.L800A5420:
/* 10020 800A5420 97A20046 */  lhu        $v0, 0x46($sp)
/* 10024 800A5424 97A9004E */  lhu        $t1, 0x4E($sp)
/* 10028 800A5428 01220018 */  mult       $t1, $v0
/* 1002C 800A542C 00001012 */  mflo       $v0
/* 10030 800A5430 00000000 */  nop
/* 10034 800A5434 00000000 */  nop
/* 10038 800A5438 97A3001E */  lhu        $v1, 0x1E($sp)
/* 1003C 800A543C 00430018 */  mult       $v0, $v1
/* 10040 800A5440 00003012 */  mflo       $a2
/* 10044 800A5444 00000000 */  nop
/* 10048 800A5448 00000000 */  nop
/* 1004C 800A544C 97A30026 */  lhu        $v1, 0x26($sp)
/* 10050 800A5450 8FB20064 */  lw         $s2, 0x64($sp)
/* 10054 800A5454 24100001 */  addiu      $s0, $zero, 0x1
/* 10058 800A5458 0203102A */  slt        $v0, $s0, $v1
/* 1005C 800A545C 1040000B */  beqz       $v0, .L800A548C
/* 10060 800A5460 02468821 */   addu      $s1, $s2, $a2
/* 10064 800A5464 00C09821 */  addu       $s3, $a2, $zero
/* 10068 800A5468 0060A021 */  addu       $s4, $v1, $zero
.L800A546C:
/* 1006C 800A546C 02402021 */  addu       $a0, $s2, $zero
/* 10070 800A5470 02202821 */  addu       $a1, $s1, $zero
/* 10074 800A5474 0C03006C */  jal        func_800C01B0
/* 10078 800A5478 02603021 */   addu      $a2, $s3, $zero
/* 1007C 800A547C 26100001 */  addiu      $s0, $s0, 0x1
/* 10080 800A5480 0214102A */  slt        $v0, $s0, $s4
/* 10084 800A5484 1440FFF9 */  bnez       $v0, .L800A546C
/* 10088 800A5488 02338821 */   addu      $s1, $s1, $s3
.L800A548C:
/* 1008C 800A548C 8FA4006C */  lw         $a0, 0x6C($sp)
/* 10090 800A5490 0C0326A1 */  jal        func_800C9A84
/* 10094 800A5494 00000000 */   nop
/* 10098 800A5498 97A8003E */  lhu        $t0, 0x3E($sp)
/* 1009C 800A549C 97A9001E */  lhu        $t1, 0x1E($sp)
/* 100A0 800A54A0 01090018 */  mult       $t0, $t1
/* 100A4 800A54A4 00001012 */  mflo       $v0
/* 100A8 800A54A8 00000000 */  nop
/* 100AC 800A54AC 00000000 */  nop
/* 100B0 800A54B0 97A8004E */  lhu        $t0, 0x4E($sp)
/* 100B4 800A54B4 97A90026 */  lhu        $t1, 0x26($sp)
/* 100B8 800A54B8 01090018 */  mult       $t0, $t1
/* 100BC 800A54BC 00001812 */  mflo       $v1
/* 100C0 800A54C0 00000000 */  nop
/* 100C4 800A54C4 00000000 */  nop
/* 100C8 800A54C8 8FA8005C */  lw         $t0, 0x5C($sp)
/* 100CC 800A54CC 93A90057 */  lbu        $t1, 0x57($sp)
/* 100D0 800A54D0 3C058010 */  lui        $a1, %hi(D_800F9E94)
/* 100D4 800A54D4 24A59E94 */  addiu      $a1, $a1, %lo(D_800F9E94)
/* 100D8 800A54D8 25040008 */  addiu      $a0, $t0, 0x8
/* 100DC 800A54DC A1090004 */  sb         $t1, 0x4($t0)
/* 100E0 800A54E0 A5020000 */  sh         $v0, 0x0($t0)
/* 100E4 800A54E4 0C030180 */  jal        func_800C0600
/* 100E8 800A54E8 A5030002 */   sh        $v1, 0x2($t0)
/* 100EC 800A54EC 97A20016 */  lhu        $v0, 0x16($sp)
/* 100F0 800A54F0 93B00037 */  lbu        $s0, 0x37($sp)
/* 100F4 800A54F4 00021080 */  sll        $v0, $v0, 2
/* 100F8 800A54F8 3C04800E */  lui        $a0, %hi(D_800E2082)
/* 100FC 800A54FC 00822021 */  addu       $a0, $a0, $v0
/* 10100 800A5500 84842082 */  lh         $a0, %lo(D_800E2082)($a0)
/* 10104 800A5504 0C0298D4 */  jal        func_800A6350
/* 10108 800A5508 02002821 */   addu      $a1, $s0, $zero
/* 1010C 800A550C 8FA4005C */  lw         $a0, 0x5C($sp)
/* 10110 800A5510 93A6002F */  lbu        $a2, 0x2F($sp)
/* 10114 800A5514 00402821 */  addu       $a1, $v0, $zero
/* 10118 800A5518 0C028CEA */  jal        func_800A33A8
/* 1011C 800A551C 02003821 */   addu      $a3, $s0, $zero
/* 10120 800A5520 8FBF00B4 */  lw         $ra, 0xB4($sp)
/* 10124 800A5524 8FBE00B0 */  lw         $fp, 0xB0($sp)
/* 10128 800A5528 8FB700AC */  lw         $s7, 0xAC($sp)
/* 1012C 800A552C 8FB600A8 */  lw         $s6, 0xA8($sp)
/* 10130 800A5530 8FB500A4 */  lw         $s5, 0xA4($sp)
/* 10134 800A5534 8FB400A0 */  lw         $s4, 0xA0($sp)
/* 10138 800A5538 8FB3009C */  lw         $s3, 0x9C($sp)
/* 1013C 800A553C 8FB20098 */  lw         $s2, 0x98($sp)
/* 10140 800A5540 8FB10094 */  lw         $s1, 0x94($sp)
/* 10144 800A5544 8FB00090 */  lw         $s0, 0x90($sp)
/* 10148 800A5548 27BD00B8 */  addiu      $sp, $sp, 0xB8
/* 1014C 800A554C 03E00008 */  jr         $ra
/* 10150 800A5550 00000000 */   nop
/* 10154 800A5554 00000000 */  nop
/* 10158 800A5558 00000000 */  nop
/* 1015C 800A555C 00000000 */  nop
.size func_800A51D8, . - func_800A51D8
