.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C0D50
/* 2B950 800C0D50 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 2B954 800C0D54 AFBF0010 */  sw         $ra, 0x10($sp)
/* 2B958 800C0D58 0C031E5C */  jal        func_800C7970
/* 2B95C 800C0D5C 24040400 */   addiu     $a0, $zero, 0x400
/* 2B960 800C0D60 8FBF0010 */  lw         $ra, 0x10($sp)
/* 2B964 800C0D64 03E00008 */  jr         $ra
/* 2B968 800C0D68 27BD0018 */   addiu     $sp, $sp, 0x18
/* 2B96C 800C0D6C 00000000 */  nop
