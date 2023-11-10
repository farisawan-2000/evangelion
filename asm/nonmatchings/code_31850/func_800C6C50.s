# Handwritten function
glabel func_800C6C50
/* 31850 800C6C50 18A00011 */  blez       $a1, .L800C6C98
/* 31854 800C6C54 00000000 */   nop
/* 31858 800C6C58 240B2000 */  addiu      $t3, $zero, 0x2000
/* 3185C 800C6C5C 00AB082B */  sltu       $at, $a1, $t3
/* 31860 800C6C60 1020000F */  beqz       $at, .L800C6CA0
/* 31864 800C6C64 00000000 */   nop
/* 31868 800C6C68 00804021 */  addu       $t0, $a0, $zero
/* 3186C 800C6C6C 00854821 */  addu       $t1, $a0, $a1
/* 31870 800C6C70 0109082B */  sltu       $at, $t0, $t1
/* 31874 800C6C74 10200008 */  beqz       $at, .L800C6C98
/* 31878 800C6C78 00000000 */   nop
/* 3187C 800C6C7C 2529FFF0 */  addiu      $t1, $t1, -0x10
/* 31880 800C6C80 310A000F */  andi       $t2, $t0, 0xF
/* 31884 800C6C84 010A4023 */  subu       $t0, $t0, $t2
.L800C6C88:
/* 31888 800C6C88 BD190000 */  cache      0x19, 0x0($t0) # handwritten instruction
/* 3188C 800C6C8C 0109082B */  sltu       $at, $t0, $t1
/* 31890 800C6C90 1420FFFD */  bnez       $at, .L800C6C88
/* 31894 800C6C94 25080010 */   addiu     $t0, $t0, 0x10
.L800C6C98:
/* 31898 800C6C98 03E00008 */  jr         $ra
/* 3189C 800C6C9C 00000000 */   nop
.L800C6CA0:
/* 318A0 800C6CA0 3C088000 */  lui        $t0, 0x8000
/* 318A4 800C6CA4 010B4821 */  addu       $t1, $t0, $t3
/* 318A8 800C6CA8 2529FFF0 */  addiu      $t1, $t1, -0x10
.L800C6CAC:
/* 318AC 800C6CAC BD010000 */  cache      0x01, 0x0($t0) # handwritten instruction
/* 318B0 800C6CB0 0109082B */  sltu       $at, $t0, $t1
/* 318B4 800C6CB4 1420FFFD */  bnez       $at, .L800C6CAC
/* 318B8 800C6CB8 25080010 */   addiu     $t0, $t0, (0x80000010 & 0xFFFF)
/* 318BC 800C6CBC 03E00008 */  jr         $ra
/* 318C0 800C6CC0 00000000 */   nop
/* 318C4 800C6CC4 00000000 */  nop
/* 318C8 800C6CC8 00000000 */  nop
/* 318CC 800C6CCC 00000000 */  nop
.size func_800C6C50, . - func_800C6C50
