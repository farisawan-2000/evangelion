.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0658
/* 2B258 800C0658 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 2B25C 800C065C AFB10014 */  sw         $s1, 0x14($sp)
/* 2B260 800C0660 00808821 */  addu       $s1, $a0, $zero
/* 2B264 800C0664 AFB00010 */  sw         $s0, 0x10($sp)
/* 2B268 800C0668 AFBF0018 */  sw         $ra, 0x18($sp)
/* 2B26C 800C066C 0C030175 */  jal        func_800C05D4
/* 2B270 800C0670 00C08021 */   addu      $s0, $a2, $zero
/* 2B274 800C0674 02301021 */  addu       $v0, $s1, $s0
/* 2B278 800C0678 8FBF0018 */  lw         $ra, 0x18($sp)
/* 2B27C 800C067C 8FB10014 */  lw         $s1, 0x14($sp)
/* 2B280 800C0680 8FB00010 */  lw         $s0, 0x10($sp)
/* 2B284 800C0684 03E00008 */  jr         $ra
/* 2B288 800C0688 27BD0020 */   addiu     $sp, $sp, 0x20
/* 2B28C 800C068C 00000000 */  nop
