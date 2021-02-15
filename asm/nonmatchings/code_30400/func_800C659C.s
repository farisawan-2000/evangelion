.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C659C
/* 3119C 800C659C 8C820000 */  lw         $v0, ($a0)
/* 311A0 800C65A0 8C590000 */  lw         $t9, ($v0)
/* 311A4 800C65A4 03E00008 */  jr         $ra
/* 311A8 800C65A8 AC990000 */   sw        $t9, ($a0)
