.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800ADCFC
/* 188FC 800ADCFC 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 18900 800ADD00 8FA20030 */  lw         $v0, 0x30($sp)
/* 18904 800ADD04 AFBF0018 */  sw         $ra, 0x18($sp)
/* 18908 800ADD08 0C02B950 */  jal        func_800AE540
/* 1890C 800ADD0C AFA20010 */   sw        $v0, 0x10($sp)
/* 18910 800ADD10 8FBF0018 */  lw         $ra, 0x18($sp)
/* 18914 800ADD14 03E00008 */  jr         $ra
/* 18918 800ADD18 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1891C 800ADD1C 00000000 */  nop
