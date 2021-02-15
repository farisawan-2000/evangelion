.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AF838
/* 1A438 800AF838 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1A43C 800AF83C AFB10014 */  sw         $s1, 0x14($sp)
/* 1A440 800AF840 00808821 */  addu       $s1, $a0, $zero
/* 1A444 800AF844 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1A448 800AF848 AFB00010 */  sw         $s0, 0x10($sp)
/* 1A44C 800AF84C 922200C9 */  lbu        $v0, 0xc9($s1)
/* 1A450 800AF850 10400008 */  beqz       $v0, .L800AF874
/* 1A454 800AF854 00A08021 */   addu      $s0, $a1, $zero
/* 1A458 800AF858 001020C0 */  sll        $a0, $s0, 3
/* 1A45C 800AF85C 3C028010 */  lui        $v0, %hi(D_80102948)
/* 1A460 800AF860 8C422948 */  lw         $v0, %lo(D_80102948)($v0)
/* 1A464 800AF864 00902023 */  subu       $a0, $a0, $s0
/* 1A468 800AF868 00042080 */  sll        $a0, $a0, 2
/* 1A46C 800AF86C 0C02D4A4 */  jal        func_800B5290
/* 1A470 800AF870 00442021 */   addu      $a0, $v0, $a0
.L800AF874:
/* 1A474 800AF874 24020001 */  addiu      $v0, $zero, 1
/* 1A478 800AF878 001020C0 */  sll        $a0, $s0, 3
/* 1A47C 800AF87C 00902023 */  subu       $a0, $a0, $s0
/* 1A480 800AF880 A22200C9 */  sb         $v0, 0xc9($s1)
/* 1A484 800AF884 3C028010 */  lui        $v0, %hi(D_80102948)
/* 1A488 800AF888 8C422948 */  lw         $v0, %lo(D_80102948)($v0)
/* 1A48C 800AF88C 8E250008 */  lw         $a1, 8($s1)
/* 1A490 800AF890 00042080 */  sll        $a0, $a0, 2
/* 1A494 800AF894 0C02D480 */  jal        func_800B5200
/* 1A498 800AF898 00442021 */   addu      $a0, $v0, $a0
/* 1A49C 800AF89C AE200008 */  sw         $zero, 8($s1)
/* 1A4A0 800AF8A0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1A4A4 800AF8A4 8FB10014 */  lw         $s1, 0x14($sp)
/* 1A4A8 800AF8A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1A4AC 800AF8AC 03E00008 */  jr         $ra
/* 1A4B0 800AF8B0 27BD0020 */   addiu     $sp, $sp, 0x20
