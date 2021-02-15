.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A66F4
/* 112F4 800A66F4 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 112F8 800A66F8 10800003 */  beqz       $a0, .L800A6708
/* 112FC 800A66FC AFBF0010 */   sw        $ra, 0x10($sp)
/* 11300 800A6700 0C0326A1 */  jal        func_800C9A84
/* 11304 800A6704 00000000 */   nop
.L800A6708:
/* 11308 800A6708 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1130C 800A670C 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11310 800A6710 03E00008 */  jr         $ra
/* 11314 800A6714 00000000 */   nop
