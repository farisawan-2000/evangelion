.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B8078
/* 22C78 800B8078 27BDFFB8 */  addiu      $sp, $sp, -0x48
/* 22C7C 800B807C AFB00040 */  sw         $s0, 0x40($sp)
/* 22C80 800B8080 27B00010 */  addiu      $s0, $sp, 0x10
/* 22C84 800B8084 A7A40028 */  sh         $a0, 0x28($sp)
/* 22C88 800B8088 02002021 */  addu       $a0, $s0, $zero
/* 22C8C 800B808C AFA50034 */  sw         $a1, 0x34($sp)
/* 22C90 800B8090 27A50038 */  addiu      $a1, $sp, 0x38
/* 22C94 800B8094 24060001 */  addiu      $a2, $zero, 1
/* 22C98 800B8098 AFBF0044 */  sw         $ra, 0x44($sp)
/* 22C9C 800B809C 0C0301A4 */  jal        func_800C0690
/* 22CA0 800B80A0 AFB0002C */   sw        $s0, 0x2c($sp)
/* 22CA4 800B80A4 3C048017 */  lui        $a0, %hi(D_8016D048)
/* 22CA8 800B80A8 2484D048 */  addiu      $a0, $a0, %lo(D_8016D048)
/* 22CAC 800B80AC 27A50028 */  addiu      $a1, $sp, 0x28
/* 22CB0 800B80B0 0C03024C */  jal        func_800C0930
/* 22CB4 800B80B4 24060001 */   addiu     $a2, $zero, 1
/* 22CB8 800B80B8 02002021 */  addu       $a0, $s0, $zero
/* 22CBC 800B80BC 00002821 */  addu       $a1, $zero, $zero
/* 22CC0 800B80C0 0C030200 */  jal        func_800C0800
/* 22CC4 800B80C4 24060001 */   addiu     $a2, $zero, 1
/* 22CC8 800B80C8 8FA20030 */  lw         $v0, 0x30($sp)
/* 22CCC 800B80CC 8FBF0044 */  lw         $ra, 0x44($sp)
/* 22CD0 800B80D0 8FB00040 */  lw         $s0, 0x40($sp)
/* 22CD4 800B80D4 03E00008 */  jr         $ra
/* 22CD8 800B80D8 27BD0048 */   addiu     $sp, $sp, 0x48
