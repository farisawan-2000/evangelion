glabel func_800AF8B4
/* 1A4B4 800AF8B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A4B8 800AF8B8 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A4BC 800AF8BC 00808021 */  addu       $s0, $a0, $zero
/* 1A4C0 800AF8C0 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1A4C4 800AF8C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 1A4C8 800AF8C8 920200BC */  lbu        $v0, 0xBC($s0)
/* 1A4CC 800AF8CC 920300C4 */  lbu        $v1, 0xC4($s0)
/* 1A4D0 800AF8D0 00430018 */  mult       $v0, $v1
/* 1A4D4 800AF8D4 00001012 */  mflo       $v0
/* 1A4D8 800AF8D8 920300BB */  lbu        $v1, 0xBB($s0)
/* 1A4DC 800AF8DC 00000000 */  nop
/* 1A4E0 800AF8E0 00430018 */  mult       $v0, $v1
/* 1A4E4 800AF8E4 00001012 */  mflo       $v0
/* 1A4E8 800AF8E8 8603009E */  lh         $v1, 0x9E($s0)
/* 1A4EC 800AF8EC 00000000 */  nop
/* 1A4F0 800AF8F0 00430018 */  mult       $v0, $v1
/* 1A4F4 800AF8F4 00001012 */  mflo       $v0
/* 1A4F8 800AF8F8 00022342 */  srl        $a0, $v0, 13
/* 1A4FC 800AF8FC 24027FFF */  addiu      $v0, $zero, 0x7FFF
/* 1A500 800AF900 0044102B */  sltu       $v0, $v0, $a0
/* 1A504 800AF904 10400002 */  beqz       $v0, .L800AF910
/* 1A508 800AF908 00A08821 */   addu      $s1, $a1, $zero
/* 1A50C 800AF90C 24047FFF */  addiu      $a0, $zero, 0x7FFF
.L800AF910:
/* 1A510 800AF910 8E020078 */  lw         $v0, 0x78($s0)
/* 1A514 800AF914 14400004 */  bnez       $v0, .L800AF928
/* 1A518 800AF918 00000000 */   nop
/* 1A51C 800AF91C 3C028010 */  lui        $v0, %hi(D_8010295E)
/* 1A520 800AF920 0802BE4C */  j          .L800AF930
/* 1A524 800AF924 9442295E */   lhu       $v0, %lo(D_8010295E)($v0)
.L800AF928:
/* 1A528 800AF928 3C028010 */  lui        $v0, %hi(D_8010295C)
/* 1A52C 800AF92C 9442295C */  lhu        $v0, %lo(D_8010295C)($v0)
.L800AF930:
/* 1A530 800AF930 00000000 */  nop
/* 1A534 800AF934 00820018 */  mult       $a0, $v0
/* 1A538 800AF938 00002012 */  mflo       $a0
/* 1A53C 800AF93C 8E030010 */  lw         $v1, 0x10($s0)
/* 1A540 800AF940 2402FFFF */  addiu      $v0, $zero, -0x1
/* 1A544 800AF944 1062000B */  beq        $v1, $v0, .L800AF974
/* 1A548 800AF948 000423C2 */   srl       $a0, $a0, 15
/* 1A54C 800AF94C 00000000 */  nop
/* 1A550 800AF950 00830018 */  mult       $a0, $v1
/* 1A554 800AF954 00001812 */  mflo       $v1
/* 1A558 800AF958 8E02001C */  lw         $v0, 0x1C($s0)
/* 1A55C 800AF95C 00000000 */  nop
/* 1A560 800AF960 0062001B */  divu       $zero, $v1, $v0
/* 1A564 800AF964 14400002 */  bnez       $v0, .L800AF970
/* 1A568 800AF968 00000000 */   nop
/* 1A56C 800AF96C 0007000D */  break      7
.L800AF970:
/* 1A570 800AF970 00002012 */  mflo       $a0
.L800AF974:
/* 1A574 800AF974 960200A0 */  lhu        $v0, 0xA0($s0)
/* 1A578 800AF978 00000000 */  nop
/* 1A57C 800AF97C 1082000C */  beq        $a0, $v0, .L800AF9B0
/* 1A580 800AF980 00042C00 */   sll       $a1, $a0, 16
/* 1A584 800AF984 00052C03 */  sra        $a1, $a1, 16
/* 1A588 800AF988 A60400A0 */  sh         $a0, 0xA0($s0)
/* 1A58C 800AF98C 001120C0 */  sll        $a0, $s1, 3
/* 1A590 800AF990 00912023 */  subu       $a0, $a0, $s1
/* 1A594 800AF994 3C028010 */  lui        $v0, %hi(D_80102948)
/* 1A598 800AF998 8C422948 */  lw         $v0, %lo(D_80102948)($v0)
/* 1A59C 800AF99C 3C068010 */  lui        $a2, %hi(D_80102958)
/* 1A5A0 800AF9A0 8CC62958 */  lw         $a2, %lo(D_80102958)($a2)
/* 1A5A4 800AF9A4 00042080 */  sll        $a0, $a0, 2
/* 1A5A8 800AF9A8 0C02D454 */  jal        func_800B5150
/* 1A5AC 800AF9AC 00442021 */   addu      $a0, $v0, $a0
.L800AF9B0:
/* 1A5B0 800AF9B0 920200BD */  lbu        $v0, 0xBD($s0)
/* 1A5B4 800AF9B4 860300B0 */  lh         $v1, 0xB0($s0)
/* 1A5B8 800AF9B8 00430018 */  mult       $v0, $v1
/* 1A5BC 800AF9BC 00001012 */  mflo       $v0
/* 1A5C0 800AF9C0 920300BE */  lbu        $v1, 0xBE($s0)
/* 1A5C4 800AF9C4 000211C3 */  sra        $v0, $v0, 7
/* 1A5C8 800AF9C8 3044007F */  andi       $a0, $v0, 0x7F
/* 1A5CC 800AF9CC 10830009 */  beq        $a0, $v1, .L800AF9F4
/* 1A5D0 800AF9D0 00802821 */   addu      $a1, $a0, $zero
/* 1A5D4 800AF9D4 001120C0 */  sll        $a0, $s1, 3
/* 1A5D8 800AF9D8 A20500BE */  sb         $a1, 0xBE($s0)
/* 1A5DC 800AF9DC 3C028010 */  lui        $v0, %hi(D_80102948)
/* 1A5E0 800AF9E0 8C422948 */  lw         $v0, %lo(D_80102948)($v0)
/* 1A5E4 800AF9E4 00912023 */  subu       $a0, $a0, $s1
/* 1A5E8 800AF9E8 00042080 */  sll        $a0, $a0, 2
/* 1A5EC 800AF9EC 0C02D40C */  jal        func_800B5030
/* 1A5F0 800AF9F0 00442021 */   addu      $a0, $v0, $a0
.L800AF9F4:
/* 1A5F4 800AF9F4 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A5F8 800AF9F8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A5FC 800AF9FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A600 800AFA00 03E00008 */  jr         $ra
/* 1A604 800AFA04 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800AF8B4, . - func_800AF8B4
