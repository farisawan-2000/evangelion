.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A980C
/* 1440C 800A980C 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 14410 800A9810 93A20033 */  lbu        $v0, 0x33($sp)
/* 14414 800A9814 93A30037 */  lbu        $v1, 0x37($sp)
/* 14418 800A9818 308400FF */  andi       $a0, $a0, 0xff
/* 1441C 800A981C 30A500FF */  andi       $a1, $a1, 0xff
/* 14420 800A9820 30C600FF */  andi       $a2, $a2, 0xff
/* 14424 800A9824 30E700FF */  andi       $a3, $a3, 0xff
/* 14428 800A9828 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1442C 800A982C AFA20010 */  sw         $v0, 0x10($sp)
/* 14430 800A9830 0C027101 */  jal        func_8009C404
/* 14434 800A9834 AFA30014 */   sw        $v1, 0x14($sp)
/* 14438 800A9838 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1443C 800A983C 27BD0020 */  addiu      $sp, $sp, 0x20
/* 14440 800A9840 03E00008 */  jr         $ra
/* 14444 800A9844 00000000 */   nop
