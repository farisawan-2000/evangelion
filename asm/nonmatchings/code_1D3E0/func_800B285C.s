.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B285C
/* 1D45C 800B285C 3C038010 */  lui        $v1, %hi(D_80102BB4)
/* 1D460 800B2860 8C632BB4 */  lw         $v1, %lo(D_80102BB4)($v1)
/* 1D464 800B2864 3C028010 */  lui        $v0, %hi(D_80102BB0)
/* 1D468 800B2868 8C422BB0 */  lw         $v0, %lo(D_80102BB0)($v0)
/* 1D46C 800B286C 03E00008 */  jr         $ra
/* 1D470 800B2870 00621023 */   subu      $v0, $v1, $v0
