.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80097560
/* 2160 80097560 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2164 80097564 AFB00010 */  sw         $s0, 0x10($sp)
/* 2168 80097568 00808021 */  addu       $s0, $a0, $zero
/* 216C 8009756C AFBF0014 */  sw         $ra, 0x14($sp)
/* 2170 80097570 8E030008 */  lw         $v1, 8($s0)
/* 2174 80097574 3402FFFF */  ori        $v0, $zero, 0xffff
/* 2178 80097578 0060F809 */  jalr       $v1
/* 217C 8009757C A602001C */   sh        $v0, 0x1c($s0)
/* 2180 80097580 8E030000 */  lw         $v1, ($s0)
/* 2184 80097584 8E020004 */  lw         $v0, 4($s0)
/* 2188 80097588 02002021 */  addu       $a0, $s0, $zero
/* 218C 8009758C AC620004 */  sw         $v0, 4($v1)
/* 2190 80097590 0C0326A1 */  jal        func_800C9A84
/* 2194 80097594 AC430000 */   sw        $v1, ($v0)
/* 2198 80097598 8FBF0014 */  lw         $ra, 0x14($sp)
/* 219C 8009759C 8FB00010 */  lw         $s0, 0x10($sp)
/* 21A0 800975A0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 21A4 800975A4 03E00008 */  jr         $ra
/* 21A8 800975A8 00000000 */   nop
