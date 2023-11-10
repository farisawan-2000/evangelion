glabel func_800B19E8
/* 1C5E8 800B19E8 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 1C5EC 800B19EC AFB1001C */  sw         $s1, 0x1C($sp)
/* 1C5F0 800B19F0 00808821 */  addu       $s1, $a0, $zero
/* 1C5F4 800B19F4 AFB20020 */  sw         $s2, 0x20($sp)
/* 1C5F8 800B19F8 00A09021 */  addu       $s2, $a1, $zero
/* 1C5FC 800B19FC AFB00018 */  sw         $s0, 0x18($sp)
/* 1C600 800B1A00 00C08021 */  addu       $s0, $a2, $zero
/* 1C604 800B1A04 00002021 */  addu       $a0, $zero, $zero
/* 1C608 800B1A08 00002821 */  addu       $a1, $zero, $zero
/* 1C60C 800B1A0C 24070001 */  addiu      $a3, $zero, 0x1
/* 1C610 800B1A10 2402002C */  addiu      $v0, $zero, 0x2C
/* 1C614 800B1A14 AFBF0024 */  sw         $ra, 0x24($sp)
/* 1C618 800B1A18 0C02F2E4 */  jal        func_800BCB90
/* 1C61C 800B1A1C AFA20010 */   sw        $v0, 0x10($sp)
/* 1C620 800B1A20 3C03800C */  lui        $v1, %hi(func_800BC1B8)
/* 1C624 800B1A24 2463C1B8 */  addiu      $v1, $v1, %lo(func_800BC1B8)
/* 1C628 800B1A28 AE220000 */  sw         $v0, 0x0($s1)
/* 1C62C 800B1A2C 0C02C78A */  jal        func_800B1E28
/* 1C630 800B1A30 AC430028 */   sw        $v1, 0x28($v0)
/* 1C634 800B1A34 00002021 */  addu       $a0, $zero, $zero
/* 1C638 800B1A38 00002821 */  addu       $a1, $zero, $zero
/* 1C63C 800B1A3C 02003021 */  addu       $a2, $s0, $zero
/* 1C640 800B1A40 00403821 */  addu       $a3, $v0, $zero
/* 1C644 800B1A44 24020028 */  addiu      $v0, $zero, 0x28
/* 1C648 800B1A48 0C02F2E4 */  jal        func_800BCB90
/* 1C64C 800B1A4C AFA20010 */   sw        $v0, 0x10($sp)
/* 1C650 800B1A50 3C018017 */  lui        $at, %hi(D_8016D808)
/* 1C654 800B1A54 0C02C79B */  jal        func_800B1E6C
/* 1C658 800B1A58 AC22D808 */   sw        $v0, %lo(D_8016D808)($at)
/* 1C65C 800B1A5C 00002021 */  addu       $a0, $zero, $zero
/* 1C660 800B1A60 00002821 */  addu       $a1, $zero, $zero
/* 1C664 800B1A64 02003021 */  addu       $a2, $s0, $zero
/* 1C668 800B1A68 00403821 */  addu       $a3, $v0, $zero
/* 1C66C 800B1A6C 24020002 */  addiu      $v0, $zero, 0x2
/* 1C670 800B1A70 0C02F2E4 */  jal        func_800BCB90
/* 1C674 800B1A74 AFA20010 */   sw        $v0, 0x10($sp)
/* 1C678 800B1A78 00002021 */  addu       $a0, $zero, $zero
/* 1C67C 800B1A7C 00002821 */  addu       $a1, $zero, $zero
/* 1C680 800B1A80 02003021 */  addu       $a2, $s0, $zero
/* 1C684 800B1A84 24070001 */  addiu      $a3, $zero, 0x1
/* 1C688 800B1A88 3C018017 */  lui        $at, %hi(D_8016D80C)
/* 1C68C 800B1A8C AC22D80C */  sw         $v0, %lo(D_8016D80C)($at)
/* 1C690 800B1A90 24020034 */  addiu      $v0, $zero, 0x34
/* 1C694 800B1A94 0C02F2E4 */  jal        func_800BCB90
/* 1C698 800B1A98 AFA20010 */   sw        $v0, 0x10($sp)
/* 1C69C 800B1A9C 00002021 */  addu       $a0, $zero, $zero
/* 1C6A0 800B1AA0 00002821 */  addu       $a1, $zero, $zero
/* 1C6A4 800B1AA4 02003021 */  addu       $a2, $s0, $zero
/* 1C6A8 800B1AA8 24070001 */  addiu      $a3, $zero, 0x1
/* 1C6AC 800B1AAC 3C018017 */  lui        $at, %hi(D_8016D810)
/* 1C6B0 800B1AB0 AC22D810 */  sw         $v0, %lo(D_8016D810)($at)
/* 1C6B4 800B1AB4 24020020 */  addiu      $v0, $zero, 0x20
/* 1C6B8 800B1AB8 0C02F2E4 */  jal        func_800BCB90
/* 1C6BC 800B1ABC AFA20010 */   sw        $v0, 0x10($sp)
/* 1C6C0 800B1AC0 00002021 */  addu       $a0, $zero, $zero
/* 1C6C4 800B1AC4 00002821 */  addu       $a1, $zero, $zero
/* 1C6C8 800B1AC8 02003021 */  addu       $a2, $s0, $zero
/* 1C6CC 800B1ACC 24070001 */  addiu      $a3, $zero, 0x1
/* 1C6D0 800B1AD0 3C018017 */  lui        $at, %hi(D_8016D814)
/* 1C6D4 800B1AD4 AC22D814 */  sw         $v0, %lo(D_8016D814)($at)
/* 1C6D8 800B1AD8 24020030 */  addiu      $v0, $zero, 0x30
/* 1C6DC 800B1ADC 0C02F2E4 */  jal        func_800BCB90
/* 1C6E0 800B1AE0 AFA20010 */   sw        $v0, 0x10($sp)
/* 1C6E4 800B1AE4 00002021 */  addu       $a0, $zero, $zero
/* 1C6E8 800B1AE8 00002821 */  addu       $a1, $zero, $zero
/* 1C6EC 800B1AEC 02003021 */  addu       $a2, $s0, $zero
/* 1C6F0 800B1AF0 24070001 */  addiu      $a3, $zero, 0x1
/* 1C6F4 800B1AF4 3C018017 */  lui        $at, %hi(D_8016D818)
/* 1C6F8 800B1AF8 AC22D818 */  sw         $v0, %lo(D_8016D818)($at)
/* 1C6FC 800B1AFC 24020008 */  addiu      $v0, $zero, 0x8
/* 1C700 800B1B00 0C02F2E4 */  jal        func_800BCB90
/* 1C704 800B1B04 AFA20010 */   sw        $v0, 0x10($sp)
/* 1C708 800B1B08 3C018017 */  lui        $at, %hi(D_8016D81C)
/* 1C70C 800B1B0C AC22D81C */  sw         $v0, %lo(D_8016D81C)($at)
/* 1C710 800B1B10 0C02C6CC */  jal        func_800B1B30
/* 1C714 800B1B14 8E440020 */   lw        $a0, 0x20($s2)
/* 1C718 800B1B18 8FBF0024 */  lw         $ra, 0x24($sp)
/* 1C71C 800B1B1C 8FB20020 */  lw         $s2, 0x20($sp)
/* 1C720 800B1B20 8FB1001C */  lw         $s1, 0x1C($sp)
/* 1C724 800B1B24 8FB00018 */  lw         $s0, 0x18($sp)
/* 1C728 800B1B28 03E00008 */  jr         $ra
/* 1C72C 800B1B2C 27BD0028 */   addiu     $sp, $sp, 0x28
.size func_800B19E8, . - func_800B19E8
