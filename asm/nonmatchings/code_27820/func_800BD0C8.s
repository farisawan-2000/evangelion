glabel func_800BD0C8
/* 27CC8 800BD0C8 3C03800F */  lui        $v1, %hi(D_800F6130)
/* 27CCC 800BD0CC 8C636130 */  lw         $v1, %lo(D_800F6130)($v1)
/* 27CD0 800BD0D0 8C62002C */  lw         $v0, 0x2C($v1)
/* 27CD4 800BD0D4 AC820000 */  sw         $v0, 0x0($a0)
/* 27CD8 800BD0D8 03E00008 */  jr         $ra
/* 27CDC 800BD0DC AC64002C */   sw        $a0, 0x2C($v1)
.size func_800BD0C8, . - func_800BD0C8
