.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B7E6C
/* 22A6C 800B7E6C 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 22A70 800B7E70 A3A40018 */  sb         $a0, 0x18($sp)
/* 22A74 800B7E74 24040403 */  addiu      $a0, $zero, 0x403
/* 22A78 800B7E78 AFA50010 */  sw         $a1, 0x10($sp)
/* 22A7C 800B7E7C 27A50010 */  addiu      $a1, $sp, 0x10
/* 22A80 800B7E80 AFBF0020 */  sw         $ra, 0x20($sp)
/* 22A84 800B7E84 0C02E01E */  jal        func_800B8078
/* 22A88 800B7E88 A7A6001A */   sh        $a2, 0x1a($sp)
/* 22A8C 800B7E8C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 22A90 800B7E90 03E00008 */  jr         $ra
/* 22A94 800B7E94 27BD0028 */   addiu     $sp, $sp, 0x28
