.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEBF4
/* 197F4 800AEBF4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 197F8 800AEBF8 AFA40014 */  sw         $a0, 0x14($sp)
/* 197FC 800AEBFC 27A40010 */  addiu      $a0, $sp, 0x10
/* 19800 800AEC00 AFBF0018 */  sw         $ra, 0x18($sp)
/* 19804 800AEC04 0C02BBD9 */  jal        func_800AEF64
/* 19808 800AEC08 A3A00010 */   sb        $zero, 0x10($sp)
/* 1980C 800AEC0C 8FBF0018 */  lw         $ra, 0x18($sp)
/* 19810 800AEC10 03E00008 */  jr         $ra
/* 19814 800AEC14 27BD0020 */   addiu     $sp, $sp, 0x20
