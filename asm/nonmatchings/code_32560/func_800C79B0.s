glabel func_800C79B0
/* 325B0 800C79B0 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 325B4 800C79B4 AFB20018 */  sw         $s2, 0x18($sp)
/* 325B8 800C79B8 00809021 */  addu       $s2, $a0, $zero
/* 325BC 800C79BC AFB00010 */  sw         $s0, 0x10($sp)
/* 325C0 800C79C0 00A08021 */  addu       $s0, $a1, $zero
/* 325C4 800C79C4 AFB10014 */  sw         $s1, 0x14($sp)
/* 325C8 800C79C8 00C08821 */  addu       $s1, $a2, $zero
/* 325CC 800C79CC AFB3001C */  sw         $s3, 0x1C($sp)
/* 325D0 800C79D0 AFBF0020 */  sw         $ra, 0x20($sp)
/* 325D4 800C79D4 0C031E50 */  jal        func_800C7940
/* 325D8 800C79D8 00E09821 */   addu      $s3, $a3, $zero
/* 325DC 800C79DC 14400010 */  bnez       $v0, .L800C7A20
/* 325E0 800C79E0 2402FFFF */   addiu     $v0, $zero, -0x1
/* 325E4 800C79E4 3C02A404 */  lui        $v0, %hi(D_A4040000)
/* 325E8 800C79E8 02202021 */  addu       $a0, $s1, $zero
/* 325EC 800C79EC 0C02F680 */  jal        func_800BDA00
/* 325F0 800C79F0 AC500000 */   sw        $s0, %lo(D_A4040000)($v0)
/* 325F4 800C79F4 3C03A404 */  lui        $v1, (0xA4040004 >> 16)
/* 325F8 800C79F8 34630004 */  ori        $v1, $v1, (0xA4040004 & 0xFFFF)
/* 325FC 800C79FC AC620000 */  sw         $v0, 0x0($v1)
/* 32600 800C7A00 16400003 */  bnez       $s2, .L800C7A10
/* 32604 800C7A04 3C03A404 */   lui       $v1, (0xA4040008 >> 16)
/* 32608 800C7A08 08031E85 */  j          .L800C7A14
/* 3260C 800C7A0C 3463000C */   ori       $v1, $v1, (0xA404000C & 0xFFFF)
.L800C7A10:
/* 32610 800C7A10 34630008 */  ori        $v1, $v1, (0xA4040008 & 0xFFFF)
.L800C7A14:
/* 32614 800C7A14 2662FFFF */  addiu      $v0, $s3, -0x1
/* 32618 800C7A18 AC620000 */  sw         $v0, 0x0($v1)
/* 3261C 800C7A1C 00001021 */  addu       $v0, $zero, $zero
.L800C7A20:
/* 32620 800C7A20 8FBF0020 */  lw         $ra, 0x20($sp)
/* 32624 800C7A24 8FB3001C */  lw         $s3, 0x1C($sp)
/* 32628 800C7A28 8FB20018 */  lw         $s2, 0x18($sp)
/* 3262C 800C7A2C 8FB10014 */  lw         $s1, 0x14($sp)
/* 32630 800C7A30 8FB00010 */  lw         $s0, 0x10($sp)
/* 32634 800C7A34 03E00008 */  jr         $ra
/* 32638 800C7A38 27BD0028 */   addiu     $sp, $sp, 0x28
/* 3263C 800C7A3C 00000000 */  nop
.size func_800C79B0, . - func_800C79B0
