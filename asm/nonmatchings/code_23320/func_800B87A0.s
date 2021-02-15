.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B87A0
/* 233A0 800B87A0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 233A4 800B87A4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 233A8 800B87A8 94820008 */  lhu        $v0, 8($a0)
/* 233AC 800B87AC 94830012 */  lhu        $v1, 0x12($a0)
/* 233B0 800B87B0 24420001 */  addiu      $v0, $v0, 1
/* 233B4 800B87B4 A4820008 */  sh         $v0, 8($a0)
/* 233B8 800B87B8 3042FFFF */  andi       $v0, $v0, 0xffff
/* 233BC 800B87BC 0043102B */  sltu       $v0, $v0, $v1
/* 233C0 800B87C0 10400005 */  beqz       $v0, .L800B87D8
/* 233C4 800B87C4 00000000 */   nop
/* 233C8 800B87C8 9482000C */  lhu        $v0, 0xc($a0)
/* 233CC 800B87CC 24420001 */  addiu      $v0, $v0, 1
/* 233D0 800B87D0 0802E1F8 */  j          .L800B87E0
/* 233D4 800B87D4 A482000C */   sh        $v0, 0xc($a0)
.L800B87D8:
/* 233D8 800B87D8 0C02E1FB */  jal        func_800B87EC
/* 233DC 800B87DC 00000000 */   nop
.L800B87E0:
/* 233E0 800B87E0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 233E4 800B87E4 03E00008 */  jr         $ra
/* 233E8 800B87E8 27BD0018 */   addiu     $sp, $sp, 0x18
