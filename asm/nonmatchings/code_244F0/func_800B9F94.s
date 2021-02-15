.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B9F94
/* 24B94 800B9F94 27BDFFD8 */  addiu      $sp, $sp, -0x28
/* 24B98 800B9F98 AFB00018 */  sw         $s0, 0x18($sp)
/* 24B9C 800B9F9C 00808021 */  addu       $s0, $a0, $zero
/* 24BA0 800B9FA0 AFB1001C */  sw         $s1, 0x1c($sp)
/* 24BA4 800B9FA4 00A08821 */  addu       $s1, $a1, $zero
/* 24BA8 800B9FA8 3C05800C */  lui        $a1, %hi(D_800BBB80)
/* 24BAC 800B9FAC 24A5BB80 */  addiu      $a1, $a1, %lo(D_800BBB80)
/* 24BB0 800B9FB0 3C06800C */  lui        $a2, %hi(D_800BBD6C)
/* 24BB4 800B9FB4 24C6BD6C */  addiu      $a2, $a2, %lo(D_800BBD6C)
/* 24BB8 800B9FB8 AFBF0020 */  sw         $ra, 0x20($sp)
/* 24BBC 800B9FBC 0C02EE7C */  jal        func_800BB9F0
/* 24BC0 800B9FC0 24070001 */   addiu     $a3, $zero, 1
/* 24BC4 800B9FC4 00002021 */  addu       $a0, $zero, $zero
/* 24BC8 800B9FC8 00002821 */  addu       $a1, $zero, $zero
/* 24BCC 800B9FCC 02203021 */  addu       $a2, $s1, $zero
/* 24BD0 800B9FD0 24070001 */  addiu      $a3, $zero, 1
/* 24BD4 800B9FD4 24020020 */  addiu      $v0, $zero, 0x20
/* 24BD8 800B9FD8 0C02F2E4 */  jal        func_800BCB90
/* 24BDC 800B9FDC AFA20010 */   sw        $v0, 0x10($sp)
/* 24BE0 800B9FE0 3C013F80 */  lui        $at, 0x3f80
/* 24BE4 800B9FE4 44810000 */  mtc1       $at, $f0
/* 24BE8 800B9FE8 AE020014 */  sw         $v0, 0x14($s0)
/* 24BEC 800B9FEC 24020001 */  addiu      $v0, $zero, 1
/* 24BF0 800B9FF0 AE000020 */  sw         $zero, 0x20($s0)
/* 24BF4 800B9FF4 AE020024 */  sw         $v0, 0x24($s0)
/* 24BF8 800B9FF8 AE000030 */  sw         $zero, 0x30($s0)
/* 24BFC 800B9FFC AE00001C */  sw         $zero, 0x1c($s0)
/* 24C00 800BA000 AE000028 */  sw         $zero, 0x28($s0)
/* 24C04 800BA004 AE00002C */  sw         $zero, 0x2c($s0)
/* 24C08 800BA008 E6000018 */  swc1       $f0, 0x18($s0)
/* 24C0C 800BA00C 8FBF0020 */  lw         $ra, 0x20($sp)
/* 24C10 800BA010 8FB1001C */  lw         $s1, 0x1c($sp)
/* 24C14 800BA014 8FB00018 */  lw         $s0, 0x18($sp)
/* 24C18 800BA018 03E00008 */  jr         $ra
/* 24C1C 800BA01C 27BD0028 */   addiu     $sp, $sp, 0x28
