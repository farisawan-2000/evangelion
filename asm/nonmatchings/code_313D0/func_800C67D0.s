.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C67D0
/* 313D0 800C67D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 313D4 800C67D4 AFB00010 */  sw         $s0, 0x10($sp)
/* 313D8 800C67D8 AFBF0014 */  sw         $ra, 0x14($sp)
/* 313DC 800C67DC 0C0319D0 */  jal        func_800C6740
/* 313E0 800C67E0 00808021 */   addu      $s0, $a0, $zero
/* 313E4 800C67E4 3C03800F */  lui        $v1, %hi(D_800F7BB0)
/* 313E8 800C67E8 8C637BB0 */  lw         $v1, %lo(D_800F7BB0)($v1)
/* 313EC 800C67EC 00701825 */  or         $v1, $v1, $s0
/* 313F0 800C67F0 3C01800F */  lui        $at, %hi(D_800F7BB0)
/* 313F4 800C67F4 AC237BB0 */  sw         $v1, %lo(D_800F7BB0)($at)
/* 313F8 800C67F8 0C0319EC */  jal        func_800C67B0
/* 313FC 800C67FC 00402021 */   addu      $a0, $v0, $zero
/* 31400 800C6800 8FBF0014 */  lw         $ra, 0x14($sp)
/* 31404 800C6804 8FB00010 */  lw         $s0, 0x10($sp)
/* 31408 800C6808 03E00008 */  jr         $ra
/* 3140C 800C680C 27BD0018 */   addiu     $sp, $sp, 0x18
