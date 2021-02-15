.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1644
/* 1C244 800B1644 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1C248 800B1648 AFB00010 */  sw         $s0, 0x10($sp)
/* 1C24C 800B164C 00A08021 */  addu       $s0, $a1, $zero
/* 1C250 800B1650 AFBF0014 */  sw         $ra, 0x14($sp)
/* 1C254 800B1654 92050000 */  lbu        $a1, ($s0)
/* 1C258 800B1658 26100001 */  addiu      $s0, $s0, 1
/* 1C25C 800B165C 92020000 */  lbu        $v0, ($s0)
/* 1C260 800B1660 30420080 */  andi       $v0, $v0, 0x80
/* 1C264 800B1664 10400002 */  beqz       $v0, .L800B1670
/* 1C268 800B1668 26100001 */   addiu     $s0, $s0, 1
/* 1C26C 800B166C 26100001 */  addiu      $s0, $s0, 1
.L800B1670:
/* 1C270 800B1670 8C820000 */  lw         $v0, ($a0)
/* 1C274 800B1674 24030002 */  addiu      $v1, $zero, 2
/* 1C278 800B1678 30420003 */  andi       $v0, $v0, 3
/* 1C27C 800B167C 14430009 */  bne        $v0, $v1, .L800B16A4
/* 1C280 800B1680 02001021 */   addu      $v0, $s0, $zero
/* 1C284 800B1684 3C028010 */  lui        $v0, %hi(D_80102980)
/* 1C288 800B1688 8C422980 */  lw         $v0, %lo(D_80102980)($v0)
/* 1C28C 800B168C 50400005 */  beql       $v0, $zero, .L800B16A4
/* 1C290 800B1690 02001021 */   addu      $v0, $s0, $zero
/* 1C294 800B1694 8C840044 */  lw         $a0, 0x44($a0)
/* 1C298 800B1698 0040F809 */  jalr       $v0
/* 1C29C 800B169C 00000000 */   nop
/* 1C2A0 800B16A0 02001021 */  addu       $v0, $s0, $zero
.L800B16A4:
/* 1C2A4 800B16A4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1C2A8 800B16A8 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C2AC 800B16AC 03E00008 */  jr         $ra
/* 1C2B0 800B16B0 27BD0018 */   addiu     $sp, $sp, 0x18
