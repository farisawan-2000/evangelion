.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C22D0
/* 2CED0 800C22D0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2CED4 800C22D4 AFBF0014 */  sw         $ra, 0x14($sp)
/* 2CED8 800C22D8 0C0319D0 */  jal        func_800C6740
/* 2CEDC 800C22DC AFB00010 */   sw        $s0, 0x10($sp)
/* 2CEE0 800C22E0 3C03800F */  lui        $v1, %hi(D_800F7CA4)
/* 2CEE4 800C22E4 8C637CA4 */  lw         $v1, %lo(D_800F7CA4)($v1)
/* 2CEE8 800C22E8 8C700004 */  lw         $s0, 4($v1)
/* 2CEEC 800C22EC 0C0319EC */  jal        func_800C67B0
/* 2CEF0 800C22F0 00402021 */   addu      $a0, $v0, $zero
/* 2CEF4 800C22F4 02001021 */  addu       $v0, $s0, $zero
/* 2CEF8 800C22F8 8FBF0014 */  lw         $ra, 0x14($sp)
/* 2CEFC 800C22FC 8FB00010 */  lw         $s0, 0x10($sp)
/* 2CF00 800C2300 03E00008 */  jr         $ra
/* 2CF04 800C2304 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2CF08 800C2308 00000000 */  nop
/* 2CF0C 800C230C 00000000 */  nop
