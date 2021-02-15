.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0600
/* 2B200 800C0600 AFA50004 */  sw         $a1, 4($sp)
/* 2B204 800C0604 AFA60008 */  sw         $a2, 8($sp)
/* 2B208 800C0608 AFA7000C */  sw         $a3, 0xc($sp)
/* 2B20C 800C060C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B210 800C0610 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B214 800C0614 00808021 */  addu       $s0, $a0, $zero
/* 2B218 800C0618 00A03021 */  addu       $a2, $a1, $zero
/* 2B21C 800C061C 3C04800C */  lui        $a0, %hi(func_800C0658)
/* 2B220 800C0620 24840658 */  addiu      $a0, $a0, %lo(func_800C0658)
/* 2B224 800C0624 02002821 */  addu       $a1, $s0, $zero
/* 2B228 800C0628 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2B22C 800C062C 0C031B78 */  jal        func_800C6DE0
/* 2B230 800C0630 27A70020 */   addiu     $a3, $sp, 0x20
/* 2B234 800C0634 00401821 */  addu       $v1, $v0, $zero
/* 2B238 800C0638 04600002 */  bltz       $v1, .L800C0644
/* 2B23C 800C063C 02031021 */   addu      $v0, $s0, $v1
/* 2B240 800C0640 A0400000 */  sb         $zero, ($v0)
.L800C0644:
/* 2B244 800C0644 00601021 */  addu       $v0, $v1, $zero
/* 2B248 800C0648 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2B24C 800C064C 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B250 800C0650 03E00008 */  jr         $ra
/* 2B254 800C0654 27BD0018 */   addiu     $sp, $sp, 0x18
