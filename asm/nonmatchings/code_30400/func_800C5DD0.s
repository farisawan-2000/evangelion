.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C5DD0
/* 309D0 800C5DD0 3C1A800C */  lui        $k0, %hi(func_800C5DE0)
/* 309D4 800C5DD4 275A5DE0 */  addiu      $k0, $k0, %lo(func_800C5DE0)
/* 309D8 800C5DD8 03400008 */  jr         $k0
/* 309DC 800C5DDC 00000000 */   nop
