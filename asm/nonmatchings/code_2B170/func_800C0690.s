glabel func_800C0690
/* 2B290 800C0690 3C02800F */  lui        $v0, %hi(D_800F69B0)
/* 2B294 800C0694 244269B0 */  addiu      $v0, $v0, %lo(D_800F69B0)
/* 2B298 800C0698 AC820000 */  sw         $v0, 0x0($a0)
/* 2B29C 800C069C AC820004 */  sw         $v0, 0x4($a0)
/* 2B2A0 800C06A0 AC800008 */  sw         $zero, 0x8($a0)
/* 2B2A4 800C06A4 AC80000C */  sw         $zero, 0xC($a0)
/* 2B2A8 800C06A8 AC860010 */  sw         $a2, 0x10($a0)
/* 2B2AC 800C06AC 03E00008 */  jr         $ra
/* 2B2B0 800C06B0 AC850014 */   sw        $a1, 0x14($a0)
/* 2B2B4 800C06B4 00000000 */  nop
/* 2B2B8 800C06B8 00000000 */  nop
/* 2B2BC 800C06BC 00000000 */  nop
.size func_800C0690, . - func_800C0690
