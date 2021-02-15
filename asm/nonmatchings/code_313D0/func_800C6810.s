.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C6810
/* 31410 800C6810 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 31414 800C6814 AFB00010 */  sw         $s0, 0x10($sp)
/* 31418 800C6818 AFBF0014 */  sw         $ra, 0x14($sp)
/* 3141C 800C681C 0C0319D0 */  jal        func_800C6740
/* 31420 800C6820 00808021 */   addu      $s0, $a0, $zero
/* 31424 800C6824 3C03800F */  lui        $v1, %hi(D_800F7BB0)
/* 31428 800C6828 8C637BB0 */  lw         $v1, %lo(D_800F7BB0)($v1)
/* 3142C 800C682C 00108027 */  nor        $s0, $zero, $s0
/* 31430 800C6830 36100401 */  ori        $s0, $s0, 0x401
/* 31434 800C6834 00701824 */  and        $v1, $v1, $s0
/* 31438 800C6838 3C01800F */  lui        $at, %hi(D_800F7BB0)
/* 3143C 800C683C AC237BB0 */  sw         $v1, %lo(D_800F7BB0)($at)
/* 31440 800C6840 0C0319EC */  jal        func_800C67B0
/* 31444 800C6844 00402021 */   addu      $a0, $v0, $zero
/* 31448 800C6848 8FBF0014 */  lw         $ra, 0x14($sp)
/* 3144C 800C684C 8FB00010 */  lw         $s0, 0x10($sp)
/* 31450 800C6850 03E00008 */  jr         $ra
/* 31454 800C6854 27BD0018 */   addiu     $sp, $sp, 0x18
/* 31458 800C6858 00000000 */  nop
/* 3145C 800C685C 00000000 */  nop
