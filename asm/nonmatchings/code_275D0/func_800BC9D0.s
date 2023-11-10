glabel func_800BC9D0
/* 275D0 800BC9D0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 275D4 800BC9D4 8FA20038 */  lw         $v0, 0x38($sp)
/* 275D8 800BC9D8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 275DC 800BC9DC 00808821 */  addu       $s1, $a0, $zero
/* 275E0 800BC9E0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 275E4 800BC9E4 AFB00018 */  sw         $s0, 0x18($sp)
/* 275E8 800BC9E8 8E240000 */  lw         $a0, 0x0($s1)
/* 275EC 800BC9EC AFA20010 */  sw         $v0, 0x10($sp)
/* 275F0 800BC9F0 8C820004 */  lw         $v0, 0x4($a0)
/* 275F4 800BC9F4 0040F809 */  jalr       $v0
/* 275F8 800BC9F8 00C08021 */   addu      $s0, $a2, $zero
/* 275FC 800BC9FC 00401821 */  addu       $v1, $v0, $zero
/* 27600 800BCA00 00602821 */  addu       $a1, $v1, $zero
/* 27604 800BCA04 24630008 */  addiu      $v1, $v1, 0x8
/* 27608 800BCA08 00603021 */  addu       $a2, $v1, $zero
/* 2760C 800BCA0C 24630008 */  addiu      $v1, $v1, 0x8
/* 27610 800BCA10 3C080440 */  lui        $t0, (0x4400580 >> 16)
/* 27614 800BCA14 35080580 */  ori        $t0, $t0, (0x4400580 & 0xFFFF)
/* 27618 800BCA18 00603821 */  addu       $a3, $v1, $zero
/* 2761C 800BCA1C 24630008 */  addiu      $v1, $v1, 0x8
/* 27620 800BCA20 3C040800 */  lui        $a0, (0x8000000 >> 16)
/* 27624 800BCA24 00101040 */  sll        $v0, $s0, 1
/* 27628 800BCA28 3042FFFF */  andi       $v0, $v0, 0xFFFF
/* 2762C 800BCA2C ACA20004 */  sw         $v0, 0x4($a1)
/* 27630 800BCA30 3C020D00 */  lui        $v0, (0xD000000 >> 16)
/* 27634 800BCA34 00108080 */  sll        $s0, $s0, 2
/* 27638 800BCA38 3210FFFF */  andi       $s0, $s0, 0xFFFF
/* 2763C 800BCA3C ACA40000 */  sw         $a0, 0x0($a1)
/* 27640 800BCA40 ACC20000 */  sw         $v0, 0x0($a2)
/* 27644 800BCA44 3C020600 */  lui        $v0, (0x6000000 >> 16)
/* 27648 800BCA48 ACC80004 */  sw         $t0, 0x4($a2)
/* 2764C 800BCA4C ACE40000 */  sw         $a0, 0x0($a3)
/* 27650 800BCA50 ACF00004 */  sw         $s0, 0x4($a3)
/* 27654 800BCA54 AC620000 */  sw         $v0, 0x0($v1)
/* 27658 800BCA58 8E240014 */  lw         $a0, 0x14($s1)
/* 2765C 800BCA5C 24620008 */  addiu      $v0, $v1, 0x8
/* 27660 800BCA60 AC640004 */  sw         $a0, 0x4($v1)
/* 27664 800BCA64 8FBF0020 */  lw         $ra, 0x20($sp)
/* 27668 800BCA68 8FB1001C */  lw         $s1, 0x1C($sp)
/* 2766C 800BCA6C 8FB00018 */  lw         $s0, 0x18($sp)
/* 27670 800BCA70 03E00008 */  jr         $ra
/* 27674 800BCA74 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800BC9D0, . - func_800BC9D0
