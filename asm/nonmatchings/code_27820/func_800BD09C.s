glabel func_800BD09C
/* 27C9C 800BD09C 3C04800F */  lui        $a0, %hi(D_800F6130)
/* 27CA0 800BD0A0 8C846130 */  lw         $a0, %lo(D_800F6130)($a0)
/* 27CA4 800BD0A4 8C82002C */  lw         $v0, 0x2C($a0)
/* 27CA8 800BD0A8 10400005 */  beqz       $v0, .L800BD0C0
/* 27CAC 800BD0AC 00001821 */   addu      $v1, $zero, $zero
/* 27CB0 800BD0B0 00401821 */  addu       $v1, $v0, $zero
/* 27CB4 800BD0B4 8C620000 */  lw         $v0, 0x0($v1)
/* 27CB8 800BD0B8 AC82002C */  sw         $v0, 0x2C($a0)
/* 27CBC 800BD0BC AC600000 */  sw         $zero, 0x0($v1)
.L800BD0C0:
/* 27CC0 800BD0C0 03E00008 */  jr         $ra
/* 27CC4 800BD0C4 00601021 */   addu      $v0, $v1, $zero
.size func_800BD09C, . - func_800BD09C
