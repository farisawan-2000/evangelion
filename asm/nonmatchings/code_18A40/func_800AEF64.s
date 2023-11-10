glabel func_800AEF64
/* 19B64 800AEF64 00802821 */  addu       $a1, $a0, $zero
/* 19B68 800AEF68 3C048010 */  lui        $a0, %hi(D_80102988)
/* 19B6C 800AEF6C 8C842988 */  lw         $a0, %lo(D_80102988)($a0)
/* 19B70 800AEF70 3C038010 */  lui        $v1, %hi(D_8010298C)
/* 19B74 800AEF74 8C63298C */  lw         $v1, %lo(D_8010298C)($v1)
/* 19B78 800AEF78 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19B7C 800AEF7C AFB00010 */  sw         $s0, 0x10($sp)
/* 19B80 800AEF80 24820001 */  addiu      $v0, $a0, 0x1
/* 19B84 800AEF84 0043001A */  div        $zero, $v0, $v1
/* 19B88 800AEF88 14600002 */  bnez       $v1, .L800AEF94
/* 19B8C 800AEF8C 00000000 */   nop
/* 19B90 800AEF90 0007000D */  break      7
.L800AEF94:
/* 19B94 800AEF94 2401FFFF */  addiu      $at, $zero, -0x1
/* 19B98 800AEF98 14610004 */  bne        $v1, $at, .L800AEFAC
/* 19B9C 800AEF9C 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 19BA0 800AEFA0 14410002 */  bne        $v0, $at, .L800AEFAC
/* 19BA4 800AEFA4 00000000 */   nop
/* 19BA8 800AEFA8 0006000D */  break      6
.L800AEFAC:
/* 19BAC 800AEFAC 00008010 */  mfhi       $s0
/* 19BB0 800AEFB0 3C028010 */  lui        $v0, %hi(D_80102984)
/* 19BB4 800AEFB4 8C422984 */  lw         $v0, %lo(D_80102984)($v0)
/* 19BB8 800AEFB8 1202000B */  beq        $s0, $v0, .L800AEFE8
/* 19BBC 800AEFBC AFBF0014 */   sw        $ra, 0x14($sp)
/* 19BC0 800AEFC0 3C028010 */  lui        $v0, %hi(D_80102990)
/* 19BC4 800AEFC4 8C422990 */  lw         $v0, %lo(D_80102990)($v0)
/* 19BC8 800AEFC8 000420C0 */  sll        $a0, $a0, 3
/* 19BCC 800AEFCC 24060008 */  addiu      $a2, $zero, 0x8
/* 19BD0 800AEFD0 0C02CA2B */  jal        func_800B28AC
/* 19BD4 800AEFD4 00442021 */   addu      $a0, $v0, $a0
/* 19BD8 800AEFD8 3C018010 */  lui        $at, %hi(D_80102988)
/* 19BDC 800AEFDC AC302988 */  sw         $s0, %lo(D_80102988)($at)
/* 19BE0 800AEFE0 0802BBFB */  j          .L800AEFEC
/* 19BE4 800AEFE4 24020001 */   addiu     $v0, $zero, 0x1
.L800AEFE8:
/* 19BE8 800AEFE8 00001021 */  addu       $v0, $zero, $zero
.L800AEFEC:
/* 19BEC 800AEFEC 8FBF0014 */  lw         $ra, 0x14($sp)
/* 19BF0 800AEFF0 8FB00010 */  lw         $s0, 0x10($sp)
/* 19BF4 800AEFF4 03E00008 */  jr         $ra
/* 19BF8 800AEFF8 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800AEF64, . - func_800AEF64
