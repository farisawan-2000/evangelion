glabel func_800C10FC
/* 2BCFC 800C10FC 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 2BD00 800C1100 AFB10024 */  sw         $s1, 0x24($sp)
/* 2BD04 800C1104 00808821 */  addu       $s1, $a0, $zero
/* 2BD08 800C1108 AFBF0028 */  sw         $ra, 0x28($sp)
/* 2BD0C 800C110C AFB00020 */  sw         $s0, 0x20($sp)
/* 2BD10 800C1110 8E22027C */  lw         $v0, 0x27C($s1)
/* 2BD14 800C1114 2410FFFF */  addiu      $s0, $zero, -0x1
/* 2BD18 800C1118 AFA00014 */  sw         $zero, 0x14($sp)
/* 2BD1C 800C111C AFA00018 */  sw         $zero, 0x18($sp)
/* 2BD20 800C1120 24420001 */  addiu      $v0, $v0, 0x1
/* 2BD24 800C1124 AE22027C */  sw         $v0, 0x27C($s1)
/* 2BD28 800C1128 26240078 */  addiu      $a0, $s1, 0x78
.L800C112C:
/* 2BD2C 800C112C 27A50010 */  addiu      $a1, $sp, 0x10
/* 2BD30 800C1130 0C030200 */  jal        func_800C0800
/* 2BD34 800C1134 00003021 */   addu      $a2, $zero, $zero
/* 2BD38 800C1138 10500006 */  beq        $v0, $s0, .L800C1154
/* 2BD3C 800C113C 00000000 */   nop
/* 2BD40 800C1140 8FA50010 */  lw         $a1, 0x10($sp)
/* 2BD44 800C1144 0C030517 */  jal        func_800C145C
/* 2BD48 800C1148 02202021 */   addu      $a0, $s1, $zero
/* 2BD4C 800C114C 0803044B */  j          .L800C112C
/* 2BD50 800C1150 26240078 */   addiu     $a0, $s1, 0x78
.L800C1154:
/* 2BD54 800C1154 8E220280 */  lw         $v0, 0x280($s1)
/* 2BD58 800C1158 10400008 */  beqz       $v0, .L800C117C
/* 2BD5C 800C115C 00000000 */   nop
/* 2BD60 800C1160 8E220274 */  lw         $v0, 0x274($s1)
/* 2BD64 800C1164 10400006 */  beqz       $v0, .L800C1180
/* 2BD68 800C1168 00000000 */   nop
/* 2BD6C 800C116C 0C030561 */  jal        func_800C1584
/* 2BD70 800C1170 02202021 */   addu      $a0, $s1, $zero
/* 2BD74 800C1174 08030470 */  j          .L800C11C0
/* 2BD78 800C1178 00000000 */   nop
.L800C117C:
/* 2BD7C 800C117C 8E220274 */  lw         $v0, 0x274($s1)
.L800C1180:
/* 2BD80 800C1180 8E230278 */  lw         $v1, 0x278($s1)
/* 2BD84 800C1184 2C420001 */  sltiu      $v0, $v0, 0x1
/* 2BD88 800C1188 14600002 */  bnez       $v1, .L800C1194
/* 2BD8C 800C118C 00028040 */   sll       $s0, $v0, 1
/* 2BD90 800C1190 36100001 */  ori        $s0, $s0, 0x1
.L800C1194:
/* 2BD94 800C1194 02202021 */  addu       $a0, $s1, $zero
/* 2BD98 800C1198 27A50014 */  addiu      $a1, $sp, 0x14
/* 2BD9C 800C119C 27A60018 */  addiu      $a2, $sp, 0x18
/* 2BDA0 800C11A0 0C03056F */  jal        func_800C15BC
/* 2BDA4 800C11A4 02003821 */   addu      $a3, $s0, $zero
/* 2BDA8 800C11A8 10500005 */  beq        $v0, $s0, .L800C11C0
/* 2BDAC 800C11AC 00000000 */   nop
/* 2BDB0 800C11B0 8FA50014 */  lw         $a1, 0x14($sp)
/* 2BDB4 800C11B4 8FA60018 */  lw         $a2, 0x18($sp)
/* 2BDB8 800C11B8 0C03052D */  jal        func_800C14B4
/* 2BDBC 800C11BC 02202021 */   addu      $a0, $s1, $zero
.L800C11C0:
/* 2BDC0 800C11C0 8E300260 */  lw         $s0, 0x260($s1)
/* 2BDC4 800C11C4 12000008 */  beqz       $s0, .L800C11E8
/* 2BDC8 800C11C8 00000000 */   nop
.L800C11CC:
/* 2BDCC 800C11CC 8E040004 */  lw         $a0, 0x4($s0)
/* 2BDD0 800C11D0 02202821 */  addu       $a1, $s1, $zero
/* 2BDD4 800C11D4 0C03024C */  jal        func_800C0930
/* 2BDD8 800C11D8 00003021 */   addu      $a2, $zero, $zero
/* 2BDDC 800C11DC 8E100000 */  lw         $s0, 0x0($s0)
/* 2BDE0 800C11E0 1600FFFA */  bnez       $s0, .L800C11CC
/* 2BDE4 800C11E4 00000000 */   nop
.L800C11E8:
/* 2BDE8 800C11E8 8FBF0028 */  lw         $ra, 0x28($sp)
/* 2BDEC 800C11EC 8FB10024 */  lw         $s1, 0x24($sp)
/* 2BDF0 800C11F0 8FB00020 */  lw         $s0, 0x20($sp)
/* 2BDF4 800C11F4 03E00008 */  jr         $ra
/* 2BDF8 800C11F8 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800C10FC, . - func_800C10FC
