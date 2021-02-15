.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7E40
/* 22A40 800B7E40 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 22A44 800B7E44 A3A40018 */  sb         $a0, 0x18($sp)
/* 22A48 800B7E48 24040402 */  addiu      $a0, $zero, 0x402
/* 22A4C 800B7E4C AFA50010 */  sw         $a1, 0x10($sp)
/* 22A50 800B7E50 27A50010 */  addiu      $a1, $sp, 0x10
/* 22A54 800B7E54 AFBF0020 */  sw         $ra, 0x20($sp)
/* 22A58 800B7E58 0C02E01E */  jal        func_800B8078
/* 22A5C 800B7E5C A7A6001A */   sh        $a2, 0x1a($sp)
/* 22A60 800B7E60 8FBF0020 */  lw         $ra, 0x20($sp)
/* 22A64 800B7E64 03E00008 */  jr         $ra
/* 22A68 800B7E68 27BD0028 */   addiu     $sp, $sp, 0x28
