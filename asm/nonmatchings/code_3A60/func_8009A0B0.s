.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009A0B0
/* 4CB0 8009A0B0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 4CB4 8009A0B4 AFB20020 */  sw         $s2, 0x20($sp)
/* 4CB8 8009A0B8 93B2004B */  lbu        $s2, 0x4b($sp)
/* 4CBC 8009A0BC AFB00018 */  sw         $s0, 0x18($sp)
/* 4CC0 8009A0C0 00808021 */  addu       $s0, $a0, $zero
/* 4CC4 8009A0C4 AFB1001C */  sw         $s1, 0x1c($sp)
/* 4CC8 8009A0C8 00A08821 */  addu       $s1, $a1, $zero
/* 4CCC 8009A0CC F7B40028 */  sdc1       $f20, 0x28($sp)
/* 4CD0 8009A0D0 4486A000 */  mtc1       $a2, $f20
/* 4CD4 8009A0D4 00000000 */  nop
/* 4CD8 8009A0D8 F7B60030 */  sdc1       $f22, 0x30($sp)
/* 4CDC 8009A0DC 4487B000 */  mtc1       $a3, $f22
/* 4CE0 8009A0E0 00000000 */  nop
/* 4CE4 8009A0E4 AFBF0024 */  sw         $ra, 0x24($sp)
/* 4CE8 8009A0E8 0C026931 */  jal        func_8009A4C4
/* 4CEC 8009A0EC AFB20010 */   sw        $s2, 0x10($sp)
/* 4CF0 8009A0F0 304200FF */  andi       $v0, $v0, 0xff
/* 4CF4 8009A0F4 1440000B */  bnez       $v0, .L8009A124
/* 4CF8 8009A0F8 24020001 */   addiu     $v0, $zero, 1
/* 4CFC 8009A0FC 02002021 */  addu       $a0, $s0, $zero
/* 4D00 8009A100 4406A000 */  mfc1       $a2, $f20
/* 4D04 8009A104 00000000 */  nop
/* 4D08 8009A108 4407B000 */  mfc1       $a3, $f22
/* 4D0C 8009A10C 00000000 */  nop
/* 4D10 8009A110 02202821 */  addu       $a1, $s1, $zero
/* 4D14 8009A114 0C026852 */  jal        func_8009A148
/* 4D18 8009A118 AFB20010 */   sw        $s2, 0x10($sp)
/* 4D1C 8009A11C 304200FF */  andi       $v0, $v0, 0xff
/* 4D20 8009A120 0002102B */  sltu       $v0, $zero, $v0
.L8009A124:
/* 4D24 8009A124 8FBF0024 */  lw         $ra, 0x24($sp)
/* 4D28 8009A128 8FB20020 */  lw         $s2, 0x20($sp)
/* 4D2C 8009A12C 8FB1001C */  lw         $s1, 0x1c($sp)
/* 4D30 8009A130 8FB00018 */  lw         $s0, 0x18($sp)
/* 4D34 8009A134 D7B60030 */  ldc1       $f22, 0x30($sp)
/* 4D38 8009A138 D7B40028 */  ldc1       $f20, 0x28($sp)
/* 4D3C 8009A13C 27BD0038 */  addiu      $sp, $sp, 0x38
/* 4D40 8009A140 03E00008 */  jr         $ra
/* 4D44 8009A144 00000000 */   nop
