.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AEC40
/* 19840 800AEC40 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 19844 800AEC44 24020002 */  addiu      $v0, $zero, 2
/* 19848 800AEC48 AFA40014 */  sw         $a0, 0x14($sp)
/* 1984C 800AEC4C 3C018010 */  lui        $at, %hi(D_80102974)
/* 19850 800AEC50 AC242974 */  sw         $a0, %lo(D_80102974)($at)
/* 19854 800AEC54 27A40010 */  addiu      $a0, $sp, 0x10
/* 19858 800AEC58 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1985C 800AEC5C 0C02BBD9 */  jal        func_800AEF64
/* 19860 800AEC60 A3A20010 */   sb        $v0, 0x10($sp)
/* 19864 800AEC64 8FBF0018 */  lw         $ra, 0x18($sp)
/* 19868 800AEC68 03E00008 */  jr         $ra
/* 1986C 800AEC6C 27BD0020 */   addiu     $sp, $sp, 0x20
