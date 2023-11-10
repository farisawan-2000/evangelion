glabel func_800AB538
/* 16138 800AB538 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1613C 800AB53C 308400FF */  andi       $a0, $a0, 0xFF
/* 16140 800AB540 AFB00010 */  sw         $s0, 0x10($sp)
/* 16144 800AB544 000480C0 */  sll        $s0, $a0, 3
/* 16148 800AB548 02048023 */  subu       $s0, $s0, $a0
/* 1614C 800AB54C 001080C0 */  sll        $s0, $s0, 3
/* 16150 800AB550 AFB10014 */  sw         $s1, 0x14($sp)
/* 16154 800AB554 3C118017 */  lui        $s1, %hi(D_8016D6C0)
/* 16158 800AB558 2631D6C0 */  addiu      $s1, $s1, %lo(D_8016D6C0)
/* 1615C 800AB55C AFB20018 */  sw         $s2, 0x18($sp)
/* 16160 800AB560 02119021 */  addu       $s2, $s0, $s1
/* 16164 800AB564 02402021 */  addu       $a0, $s2, $zero
/* 16168 800AB568 AFBF001C */  sw         $ra, 0x1C($sp)
/* 1616C 800AB56C 0C030134 */  jal        bzero
/* 16170 800AB570 24050038 */   addiu     $a1, $zero, 0x38
/* 16174 800AB574 3C048010 */  lui        $a0, %hi(D_800FB274)
/* 16178 800AB578 2484B274 */  addiu      $a0, $a0, %lo(D_800FB274)
/* 1617C 800AB57C 02402821 */  addu       $a1, $s2, $zero
/* 16180 800AB580 0C03006C */  jal        func_800C01B0
/* 16184 800AB584 24060008 */   addiu     $a2, $zero, 0x8
/* 16188 800AB588 3C048010 */  lui        $a0, %hi(D_800FB260)
/* 1618C 800AB58C 2484B260 */  addiu      $a0, $a0, %lo(D_800FB260)
/* 16190 800AB590 26250008 */  addiu      $a1, $s1, 0x8
/* 16194 800AB594 02052821 */  addu       $a1, $s0, $a1
/* 16198 800AB598 0C03006C */  jal        func_800C01B0
/* 1619C 800AB59C 24060008 */   addiu     $a2, $zero, 0x8
/* 161A0 800AB5A0 2402000E */  addiu      $v0, $zero, 0xE
/* 161A4 800AB5A4 02308821 */  addu       $s1, $s1, $s0
/* 161A8 800AB5A8 2631002E */  addiu      $s1, $s1, 0x2E
/* 161AC 800AB5AC 3C018017 */  lui        $at, %hi(D_8016D6D0)
/* 161B0 800AB5B0 00300821 */  addu       $at, $at, $s0
/* 161B4 800AB5B4 A020D6D0 */  sb         $zero, %lo(D_8016D6D0)($at)
/* 161B8 800AB5B8 3C018017 */  lui        $at, %hi(D_8016D6D1)
/* 161BC 800AB5BC 00300821 */  addu       $at, $at, $s0
/* 161C0 800AB5C0 A020D6D1 */  sb         $zero, %lo(D_8016D6D1)($at)
.L800AB5C4:
/* 161C4 800AB5C4 A6200000 */  sh         $zero, 0x0($s1)
/* 161C8 800AB5C8 2442FFFF */  addiu      $v0, $v0, -0x1
/* 161CC 800AB5CC 0441FFFD */  bgez       $v0, .L800AB5C4
/* 161D0 800AB5D0 2631FFFE */   addiu     $s1, $s1, -0x2
/* 161D4 800AB5D4 8FBF001C */  lw         $ra, 0x1C($sp)
/* 161D8 800AB5D8 8FB20018 */  lw         $s2, 0x18($sp)
/* 161DC 800AB5DC 8FB10014 */  lw         $s1, 0x14($sp)
/* 161E0 800AB5E0 8FB00010 */  lw         $s0, 0x10($sp)
/* 161E4 800AB5E4 27BD0020 */  addiu      $sp, $sp, 0x20
/* 161E8 800AB5E8 03E00008 */  jr         $ra
/* 161EC 800AB5EC 00000000 */   nop
.size func_800AB538, . - func_800AB538
