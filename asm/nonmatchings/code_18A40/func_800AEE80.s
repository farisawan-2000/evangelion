.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEE80
/* 19A80 800AEE80 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 19A84 800AEE84 AFB00010 */  sw         $s0, 0x10($sp)
/* 19A88 800AEE88 00808021 */  addu       $s0, $a0, $zero
/* 19A8C 800AEE8C 2A020040 */  slti       $v0, $s0, 0x40
/* 19A90 800AEE90 10400003 */  beqz       $v0, .L800AEEA0
/* 19A94 800AEE94 AFBF0014 */   sw        $ra, 0x14($sp)
/* 19A98 800AEE98 0802BBAB */  j          .L800AEEAC
/* 19A9C 800AEE9C 24100040 */   addiu     $s0, $zero, 0x40
.L800AEEA0:
/* 19AA0 800AEEA0 2A020401 */  slti       $v0, $s0, 0x401
/* 19AA4 800AEEA4 50400001 */  beql       $v0, $zero, .L800AEEAC
/* 19AA8 800AEEA8 24100400 */   addiu     $s0, $zero, 0x400
.L800AEEAC:
/* 19AAC 800AEEAC 0C02CA0B */  jal        func_800B282C
/* 19AB0 800AEEB0 001020C0 */   sll       $a0, $s0, 3
/* 19AB4 800AEEB4 3C018010 */  lui        $at, %hi(D_80102990)
/* 19AB8 800AEEB8 AC222990 */  sw         $v0, %lo(D_80102990)($at)
/* 19ABC 800AEEBC 3C018010 */  lui        $at, %hi(D_8010298C)
/* 19AC0 800AEEC0 AC30298C */  sw         $s0, %lo(D_8010298C)($at)
/* 19AC4 800AEEC4 3C018010 */  lui        $at, %hi(D_80102988)
/* 19AC8 800AEEC8 AC202988 */  sw         $zero, %lo(D_80102988)($at)
/* 19ACC 800AEECC 3C018010 */  lui        $at, %hi(D_80102984)
/* 19AD0 800AEED0 AC202984 */  sw         $zero, %lo(D_80102984)($at)
/* 19AD4 800AEED4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 19AD8 800AEED8 8FB00010 */  lw         $s0, 0x10($sp)
/* 19ADC 800AEEDC 03E00008 */  jr         $ra
/* 19AE0 800AEEE0 27BD0018 */   addiu     $sp, $sp, 0x18
