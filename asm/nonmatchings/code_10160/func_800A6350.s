.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A6350
/* 10F50 800A6350 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 10F54 800A6354 AFBF0010 */  sw         $ra, 0x10($sp)
/* 10F58 800A6358 00043400 */  sll        $a2, $a0, 0x10
/* 10F5C 800A635C 30A700FF */  andi       $a3, $a1, 0xff
/* 10F60 800A6360 3C040061 */  lui        $a0, 0x61
/* 10F64 800A6364 2484CB80 */  addiu      $a0, $a0, -0x3480
/* 10F68 800A6368 3C05800E */  lui        $a1, %hi(D_800DD820)
/* 10F6C 800A636C 24A5D820 */  addiu      $a1, $a1, %lo(D_800DD820)
/* 10F70 800A6370 0C02648E */  jal        func_80099238
/* 10F74 800A6374 00063403 */   sra       $a2, $a2, 0x10
/* 10F78 800A6378 8FBF0010 */  lw         $ra, 0x10($sp)
/* 10F7C 800A637C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 10F80 800A6380 03E00008 */  jr         $ra
/* 10F84 800A6384 00000000 */   nop
