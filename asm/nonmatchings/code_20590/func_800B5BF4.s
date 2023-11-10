glabel func_800B5BF4
/* 207F4 800B5BF4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 207F8 800B5BF8 AFB1001C */  sw         $s1, 0x1C($sp)
/* 207FC 800B5BFC 3C118017 */  lui        $s1, %hi(D_8016DCE4)
/* 20800 800B5C00 2631DCE4 */  addiu      $s1, $s1, %lo(D_8016DCE4)
/* 20804 800B5C04 AFB40028 */  sw         $s4, 0x28($sp)
/* 20808 800B5C08 2414029A */  addiu      $s4, $zero, 0x29A
/* 2080C 800B5C0C AFB30024 */  sw         $s3, 0x24($sp)
/* 20810 800B5C10 2413029D */  addiu      $s3, $zero, 0x29D
/* 20814 800B5C14 AFB20020 */  sw         $s2, 0x20($sp)
/* 20818 800B5C18 24120001 */  addiu      $s2, $zero, 0x1
/* 2081C 800B5C1C AFBF002C */  sw         $ra, 0x2C($sp)
/* 20820 800B5C20 AFB00018 */  sw         $s0, 0x18($sp)
/* 20824 800B5C24 3C018015 */  lui        $at, %hi(D_80149FC0)
/* 20828 800B5C28 AC209FC0 */  sw         $zero, %lo(D_80149FC0)($at)
.L800B5C2C:
/* 2082C 800B5C2C 02202021 */  addu       $a0, $s1, $zero
.L800B5C30:
/* 20830 800B5C30 27A50010 */  addiu      $a1, $sp, 0x10
/* 20834 800B5C34 0C030200 */  jal        func_800C0800
/* 20838 800B5C38 24060001 */   addiu     $a2, $zero, 0x1
/* 2083C 800B5C3C 8FA20010 */  lw         $v0, 0x10($sp)
/* 20840 800B5C40 10540005 */  beq        $v0, $s4, .L800B5C58
/* 20844 800B5C44 00000000 */   nop
/* 20848 800B5C48 1053001D */  beq        $v0, $s3, .L800B5CC0
/* 2084C 800B5C4C 02202021 */   addu      $a0, $s1, $zero
/* 20850 800B5C50 0802D70C */  j          .L800B5C30
/* 20854 800B5C54 00000000 */   nop
.L800B5C58:
/* 20858 800B5C58 3C028015 */  lui        $v0, %hi(D_80149FC0)
/* 2085C 800B5C5C 8C429FC0 */  lw         $v0, %lo(D_80149FC0)($v0)
/* 20860 800B5C60 24420001 */  addiu      $v0, $v0, 0x1
/* 20864 800B5C64 3C018015 */  lui        $at, %hi(D_80149FC0)
/* 20868 800B5C68 AC229FC0 */  sw         $v0, %lo(D_80149FC0)($at)
/* 2086C 800B5C6C 0C02D7A3 */  jal        func_800B5E8C
/* 20870 800B5C70 2624FF8C */   addiu     $a0, $s1, -0x74
/* 20874 800B5C74 3C028015 */  lui        $v0, %hi(D_80149BA0)
/* 20878 800B5C78 90429BA0 */  lbu        $v0, %lo(D_80149BA0)($v0)
/* 2087C 800B5C7C 5040FFEC */  beql       $v0, $zero, .L800B5C30
/* 20880 800B5C80 02202021 */   addu      $a0, $s1, $zero
/* 20884 800B5C84 12000003 */  beqz       $s0, .L800B5C94
/* 20888 800B5C88 34420002 */   ori       $v0, $v0, 0x2
/* 2088C 800B5C8C 0802D70B */  j          .L800B5C2C
/* 20890 800B5C90 2610FFFF */   addiu     $s0, $s0, -0x1
.L800B5C94:
/* 20894 800B5C94 3C018015 */  lui        $at, %hi(D_80149BA0)
/* 20898 800B5C98 0C03153C */  jal        func_800C54F0
/* 2089C 800B5C9C A0229BA0 */   sb        $v0, %lo(D_80149BA0)($at)
/* 208A0 800B5CA0 3C013F80 */  lui        $at, (0x3F800000 >> 16)
/* 208A4 800B5CA4 44816000 */  mtc1       $at, $f12
/* 208A8 800B5CA8 0C030A2C */  jal        func_800C28B0
/* 208AC 800B5CAC 00000000 */   nop
/* 208B0 800B5CB0 0C030B18 */  jal        func_800C2C60
/* 208B4 800B5CB4 24040001 */   addiu     $a0, $zero, 0x1
/* 208B8 800B5CB8 0802D70C */  j          .L800B5C30
/* 208BC 800B5CBC 02202021 */   addu      $a0, $s1, $zero
.L800B5CC0:
/* 208C0 800B5CC0 3C018015 */  lui        $at, %hi(D_80149BA0)
/* 208C4 800B5CC4 A0329BA0 */  sb         $s2, %lo(D_80149BA0)($at)
/* 208C8 800B5CC8 0C02D7A3 */  jal        func_800B5E8C
/* 208CC 800B5CCC 2624FF8E */   addiu     $a0, $s1, -0x72
/* 208D0 800B5CD0 3C02800F */  lui        $v0, %hi(D_800F1800)
/* 208D4 800B5CD4 8C421800 */  lw         $v0, %lo(D_800F1800)($v0)
/* 208D8 800B5CD8 10400003 */  beqz       $v0, .L800B5CE8
/* 208DC 800B5CDC 00000000 */   nop
/* 208E0 800B5CE0 0040F809 */  jalr       $v0
/* 208E4 800B5CE4 00000000 */   nop
.L800B5CE8:
/* 208E8 800B5CE8 3C028017 */  lui        $v0, %hi(D_8016E2EC)
/* 208EC 800B5CEC 9042E2EC */  lbu        $v0, %lo(D_8016E2EC)($v0)
/* 208F0 800B5CF0 3C038017 */  lui        $v1, %hi(D_8016E2E8)
/* 208F4 800B5CF4 8C63E2E8 */  lw         $v1, %lo(D_8016E2E8)($v1)
/* 208F8 800B5CF8 00021042 */  srl        $v0, $v0, 1
/* 208FC 800B5CFC 0043001B */  divu       $zero, $v0, $v1
/* 20900 800B5D00 14600002 */  bnez       $v1, .L800B5D0C
/* 20904 800B5D04 00000000 */   nop
/* 20908 800B5D08 0007000D */  break      7
.L800B5D0C:
/* 2090C 800B5D0C 00001012 */  mflo       $v0
/* 20910 800B5D10 00000000 */  nop
/* 20914 800B5D14 00000000 */  nop
/* 20918 800B5D18 0802D70B */  j          .L800B5C2C
/* 2091C 800B5D1C 2450FFFD */   addiu     $s0, $v0, -0x3
/* 20920 800B5D20 8FBF002C */  lw         $ra, 0x2C($sp)
/* 20924 800B5D24 8FB40028 */  lw         $s4, 0x28($sp)
/* 20928 800B5D28 8FB30024 */  lw         $s3, 0x24($sp)
/* 2092C 800B5D2C 8FB20020 */  lw         $s2, 0x20($sp)
/* 20930 800B5D30 8FB1001C */  lw         $s1, 0x1C($sp)
/* 20934 800B5D34 8FB00018 */  lw         $s0, 0x18($sp)
/* 20938 800B5D38 03E00008 */  jr         $ra
/* 2093C 800B5D3C 27BD0030 */   addiu     $sp, $sp, 0x30
.size func_800B5BF4, . - func_800B5BF4
