.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B5870
/* 20470 800B5870 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 20474 800B5874 AFBF0010 */  sw         $ra, 0x10($sp)
/* 20478 800B5878 0C02D644 */  jal        func_800B5910
/* 2047C 800B587C 00000000 */   nop
/* 20480 800B5880 00401821 */  addu       $v1, $v0, $zero
/* 20484 800B5884 00602021 */  addu       $a0, $v1, $zero
/* 20488 800B5888 3C020D00 */  lui        $v0, 0xd00
/* 2048C 800B588C AC820000 */  sw         $v0, ($a0)
/* 20490 800B5890 3C04800F */  lui        $a0, %hi(D_800F17F4)
/* 20494 800B5894 8C8417F4 */  lw         $a0, %lo(D_800F17F4)($a0)
/* 20498 800B5898 24630008 */  addiu      $v1, $v1, 8
/* 2049C 800B589C 3C02062E */  lui        $v0, 0x62e
/* 204A0 800B58A0 AC620000 */  sw         $v0, ($v1)
/* 204A4 800B58A4 8C840048 */  lw         $a0, 0x48($a0)
/* 204A8 800B58A8 24620008 */  addiu      $v0, $v1, 8
/* 204AC 800B58AC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 204B0 800B58B0 AC640004 */  sw         $a0, 4($v1)
/* 204B4 800B58B4 03E00008 */  jr         $ra
/* 204B8 800B58B8 27BD0018 */   addiu     $sp, $sp, 0x18
/* 204BC 800B58BC 00000000 */  nop
