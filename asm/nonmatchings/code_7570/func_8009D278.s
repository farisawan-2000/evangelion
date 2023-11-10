glabel func_8009D278
/* 7E78 8009D278 3C028010 */  lui        $v0, %hi(D_800FF3E0)
/* 7E7C 8009D27C 8C42F3E0 */  lw         $v0, %lo(D_800FF3E0)($v0)
/* 7E80 8009D280 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 7E84 8009D284 AFBF0010 */  sw         $ra, 0x10($sp)
/* 7E88 8009D288 00021880 */  sll        $v1, $v0, 2
/* 7E8C 8009D28C 00621821 */  addu       $v1, $v1, $v0
/* 7E90 8009D290 000318C0 */  sll        $v1, $v1, 3
/* 7E94 8009D294 3C018015 */  lui        $at, %hi(D_8014CF92)
/* 7E98 8009D298 00230821 */  addu       $at, $at, $v1
/* 7E9C 8009D29C 9423CF92 */  lhu        $v1, %lo(D_8014CF92)($at)
/* 7EA0 8009D2A0 8C85001C */  lw         $a1, 0x1C($a0)
/* 7EA4 8009D2A4 24024000 */  addiu      $v0, $zero, 0x4000
/* 7EA8 8009D2A8 1062000E */  beq        $v1, $v0, .L8009D2E4
/* 7EAC 8009D2AC 34028000 */   ori       $v0, $zero, 0x8000
/* 7EB0 8009D2B0 1462000D */  bne        $v1, $v0, .L8009D2E8
/* 7EB4 8009D2B4 00001021 */   addu      $v0, $zero, $zero
/* 7EB8 8009D2B8 00051040 */  sll        $v0, $a1, 1
/* 7EBC 8009D2BC 8C83000C */  lw         $v1, 0xC($a0)
/* 7EC0 8009D2C0 00451021 */  addu       $v0, $v0, $a1
/* 7EC4 8009D2C4 00021080 */  sll        $v0, $v0, 2
/* 7EC8 8009D2C8 00621821 */  addu       $v1, $v1, $v0
/* 7ECC 8009D2CC 8C620004 */  lw         $v0, 0x4($v1)
/* 7ED0 8009D2D0 8C640008 */  lw         $a0, 0x8($v1)
/* 7ED4 8009D2D4 0040F809 */  jalr       $v0
/* 7ED8 8009D2D8 00000000 */   nop
/* 7EDC 8009D2DC 080274BA */  j          .L8009D2E8
/* 7EE0 8009D2E0 00000000 */   nop
.L8009D2E4:
/* 7EE4 8009D2E4 2402FFFF */  addiu      $v0, $zero, -0x1
.L8009D2E8:
/* 7EE8 8009D2E8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 7EEC 8009D2EC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 7EF0 8009D2F0 03E00008 */  jr         $ra
/* 7EF4 8009D2F4 00000000 */   nop
.size func_8009D278, . - func_8009D278
