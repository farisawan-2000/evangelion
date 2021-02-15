.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7A7C
/* 2267C 800B7A7C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 22680 800B7A80 AFBF0010 */  sw         $ra, 0x10($sp)
/* 22684 800B7A84 8C82000C */  lw         $v0, 0xc($a0)
/* 22688 800B7A88 90460000 */  lbu        $a2, ($v0)
/* 2268C 800B7A8C 3C048017 */  lui        $a0, %hi(D_8016E550)
/* 22690 800B7A90 2484E550 */  addiu      $a0, $a0, %lo(D_8016E550)
/* 22694 800B7A94 3C028017 */  lui        $v0, %hi(D_8016E308)
/* 22698 800B7A98 2442E308 */  addiu      $v0, $v0, %lo(D_8016E308)
/* 2269C 800B7A9C 00062840 */  sll        $a1, $a2, 1
/* 226A0 800B7AA0 00A62821 */  addu       $a1, $a1, $a2
/* 226A4 800B7AA4 00052880 */  sll        $a1, $a1, 2
/* 226A8 800B7AA8 00A62821 */  addu       $a1, $a1, $a2
/* 226AC 800B7AAC 000528C0 */  sll        $a1, $a1, 3
/* 226B0 800B7AB0 0C030B81 */  jal        func_800C2E04
/* 226B4 800B7AB4 00A22821 */   addu      $a1, $a1, $v0
/* 226B8 800B7AB8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 226BC 800B7ABC 03E00008 */  jr         $ra
/* 226C0 800B7AC0 27BD0018 */   addiu     $sp, $sp, 0x18
