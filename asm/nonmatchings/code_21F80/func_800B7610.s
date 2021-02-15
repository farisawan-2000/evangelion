.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7610
/* 22210 800B7610 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22214 800B7614 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22218 800B7618 8C83000C */  lw         $v1, 0xc($a0)
/* 2221C 800B761C 8C620000 */  lw         $v0, ($v1)
/* 22220 800B7620 8C660004 */  lw         $a2, 4($v1)
/* 22224 800B7624 8C440000 */  lw         $a0, ($v0)
/* 22228 800B7628 0C030EB8 */  jal        func_800C3AE0
/* 2222C 800B762C 8C450004 */   lw        $a1, 4($v0)
/* 22230 800B7630 8FBF0010 */  lw         $ra, 0x10($sp)
/* 22234 800B7634 03E00008 */  jr         $ra
/* 22238 800B7638 27BD0018 */   addiu     $sp, $sp, 0x18
