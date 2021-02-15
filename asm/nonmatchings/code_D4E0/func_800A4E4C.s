.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A4E4C
/* FA4C 800A4E4C 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* FA50 800A4E50 10800003 */  beqz       $a0, .L800A4E60
/* FA54 800A4E54 AFBF0010 */   sw        $ra, 0x10($sp)
/* FA58 800A4E58 0C0326A1 */  jal        func_800C9A84
/* FA5C 800A4E5C 00000000 */   nop
.L800A4E60:
/* FA60 800A4E60 8FBF0010 */  lw         $ra, 0x10($sp)
/* FA64 800A4E64 27BD0018 */  addiu      $sp, $sp, 0x18
/* FA68 800A4E68 03E00008 */  jr         $ra
/* FA6C 800A4E6C 00000000 */   nop
