.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A640C
/* 1100C 800A640C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 11010 800A6410 10800003 */  beqz       $a0, .L800A6420
/* 11014 800A6414 AFBF0010 */   sw        $ra, 0x10($sp)
/* 11018 800A6418 0C0326A1 */  jal        func_800C9A84
/* 1101C 800A641C 00000000 */   nop
.L800A6420:
/* 11020 800A6420 8FBF0010 */  lw         $ra, 0x10($sp)
/* 11024 800A6424 27BD0018 */  addiu      $sp, $sp, 0x18
/* 11028 800A6428 03E00008 */  jr         $ra
/* 1102C 800A642C 00000000 */   nop
