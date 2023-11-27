glabel coss
/* 28B60 800BDF60 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 28B64 800BDF64 AFBF0010 */  sw         $ra, 0x10($sp)
/* 28B68 800BDF68 24844000 */  addiu      $a0, $a0, 0x4000
/* 28B6C 800BDF6C 0C02FFD0 */  jal        func_800BFF40
/* 28B70 800BDF70 3084FFFF */   andi      $a0, $a0, 0xFFFF
/* 28B74 800BDF74 00021400 */  sll        $v0, $v0, 16
/* 28B78 800BDF78 8FBF0010 */  lw         $ra, 0x10($sp)
/* 28B7C 800BDF7C 00021403 */  sra        $v0, $v0, 16
/* 28B80 800BDF80 03E00008 */  jr         $ra
/* 28B84 800BDF84 27BD0018 */   addiu     $sp, $sp, 0x18
/* 28B88 800BDF88 00000000 */  nop
/* 28B8C 800BDF8C 00000000 */  nop
.size coss, . - coss
