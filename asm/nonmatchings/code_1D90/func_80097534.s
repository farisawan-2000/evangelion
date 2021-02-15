.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097534
/* 2134 80097534 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2138 80097538 AFBF0010 */  sw         $ra, 0x10($sp)
/* 213C 8009753C 8C830000 */  lw         $v1, ($a0)
/* 2140 80097540 8C820004 */  lw         $v0, 4($a0)
/* 2144 80097544 AC620004 */  sw         $v0, 4($v1)
/* 2148 80097548 0C0326A1 */  jal        func_800C9A84
/* 214C 8009754C AC430000 */   sw        $v1, ($v0)
/* 2150 80097550 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2154 80097554 27BD0018 */  addiu      $sp, $sp, 0x18
/* 2158 80097558 03E00008 */  jr         $ra
/* 215C 8009755C 00000000 */   nop
