.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD270
/* 27E70 800BD270 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 27E74 800BD274 AFB10014 */  sw         $s1, 0x14($sp)
/* 27E78 800BD278 00808821 */  addu       $s1, $a0, $zero
/* 27E7C 800BD27C 00051400 */  sll        $v0, $a1, 0x10
/* 27E80 800BD280 00C02821 */  addu       $a1, $a2, $zero
/* 27E84 800BD284 00E03021 */  addu       $a2, $a3, $zero
/* 27E88 800BD288 00021403 */  sra        $v0, $v0, 0x10
/* 27E8C 800BD28C AFB00010 */  sw         $s0, 0x10($sp)
/* 27E90 800BD290 00028080 */  sll        $s0, $v0, 2
/* 27E94 800BD294 02028021 */  addu       $s0, $s0, $v0
/* 27E98 800BD298 00108080 */  sll        $s0, $s0, 2
/* 27E9C 800BD29C AFBF0018 */  sw         $ra, 0x18($sp)
/* 27EA0 800BD2A0 8E240034 */  lw         $a0, 0x34($s1)
/* 27EA4 800BD2A4 02028023 */  subu       $s0, $s0, $v0
/* 27EA8 800BD2A8 00108080 */  sll        $s0, $s0, 2
/* 27EAC 800BD2AC 00902021 */  addu       $a0, $a0, $s0
/* 27EB0 800BD2B0 0C02E665 */  jal        func_800B9994
/* 27EB4 800BD2B4 24840020 */   addiu     $a0, $a0, 0x20
/* 27EB8 800BD2B8 8E260034 */  lw         $a2, 0x34($s1)
/* 27EBC 800BD2BC 24050001 */  addiu      $a1, $zero, 1
/* 27EC0 800BD2C0 00D03021 */  addu       $a2, $a2, $s0
/* 27EC4 800BD2C4 0C02F069 */  jal        func_800BC1A4
/* 27EC8 800BD2C8 24C40020 */   addiu     $a0, $a2, 0x20
/* 27ECC 800BD2CC 8E260034 */  lw         $a2, 0x34($s1)
/* 27ED0 800BD2D0 8E240030 */  lw         $a0, 0x30($s1)
/* 27ED4 800BD2D4 24050002 */  addiu      $a1, $zero, 2
/* 27ED8 800BD2D8 00D03021 */  addu       $a2, $a2, $s0
/* 27EDC 800BD2DC 0C02EED4 */  jal        func_800BBB50
/* 27EE0 800BD2E0 24C60020 */   addiu     $a2, $a2, 0x20
/* 27EE4 800BD2E4 8E220034 */  lw         $v0, 0x34($s1)
/* 27EE8 800BD2E8 00501021 */  addu       $v0, $v0, $s0
/* 27EEC 800BD2EC 24420020 */  addiu      $v0, $v0, 0x20
/* 27EF0 800BD2F0 8FBF0018 */  lw         $ra, 0x18($sp)
/* 27EF4 800BD2F4 8FB10014 */  lw         $s1, 0x14($sp)
/* 27EF8 800BD2F8 8FB00010 */  lw         $s0, 0x10($sp)
/* 27EFC 800BD2FC 03E00008 */  jr         $ra
/* 27F00 800BD300 27BD0020 */   addiu     $sp, $sp, 0x20
/* 27F04 800BD304 00000000 */  nop
/* 27F08 800BD308 00000000 */  nop
/* 27F0C 800BD30C 00000000 */  nop
