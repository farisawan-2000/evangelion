.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7ED8
/* 22AD8 800B7ED8 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22ADC 800B7EDC AFBF0010 */  sw         $ra, 0x10($sp)
/* 22AE0 800B7EE0 8C82000C */  lw         $v0, 0xc($a0)
/* 22AE4 800B7EE4 90450008 */  lbu        $a1, 8($v0)
/* 22AE8 800B7EE8 8C460000 */  lw         $a2, ($v0)
/* 22AEC 800B7EEC 9447000A */  lhu        $a3, 0xa($v0)
/* 22AF0 800B7EF0 3C048017 */  lui        $a0, %hi(D_8016E550)
/* 22AF4 800B7EF4 0C02E2C0 */  jal        func_800B8B00
/* 22AF8 800B7EF8 2484E550 */   addiu     $a0, $a0, %lo(D_8016E550)
/* 22AFC 800B7EFC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22B00 800B7F00 03E00008 */  jr         $ra
/* 22B04 800B7F04 27BD0018 */   addiu     $sp, $sp, 0x18
