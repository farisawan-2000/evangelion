.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8009BAE0
/* 66E0 8009BAE0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 66E4 8009BAE4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 66E8 8009BAE8 3C04800A */  lui        $a0, %hi(func_8009BB08)
/* 66EC 8009BAEC 2484BB08 */  addiu      $a0, $a0, %lo(func_8009BB08)
/* 66F0 8009BAF0 0C025D6B */  jal        func_800975AC
/* 66F4 8009BAF4 00002821 */   addu      $a1, $zero, $zero
/* 66F8 8009BAF8 8FBF0010 */  lw         $ra, 0x10($sp)
/* 66FC 8009BAFC 27BD0018 */  addiu      $sp, $sp, 0x18
/* 6700 8009BB00 03E00008 */  jr         $ra
/* 6704 8009BB04 00000000 */   nop
