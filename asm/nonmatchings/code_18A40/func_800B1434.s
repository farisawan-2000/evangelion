.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1434
/* 1C034 800B1434 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1C038 800B1438 AFB10014 */  sw         $s1, 0x14($sp)
/* 1C03C 800B143C 00808821 */  addu       $s1, $a0, $zero
/* 1C040 800B1440 AFB00010 */  sw         $s0, 0x10($sp)
/* 1C044 800B1444 00A08021 */  addu       $s0, $a1, $zero
/* 1C048 800B1448 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1C04C 800B144C 92040000 */  lbu        $a0, ($s0)
/* 1C050 800B1450 0C02C0FD */  jal        func_800B03F4
/* 1C054 800B1454 26100001 */   addiu     $s0, $s0, 1
/* 1C058 800B1458 00401821 */  addu       $v1, $v0, $zero
/* 1C05C 800B145C A22300BC */  sb         $v1, 0xbc($s1)
/* 1C060 800B1460 92040000 */  lbu        $a0, ($s0)
/* 1C064 800B1464 26020001 */  addiu      $v0, $s0, 1
/* 1C068 800B1468 00641821 */  addu       $v1, $v1, $a0
/* 1C06C 800B146C A22300BC */  sb         $v1, 0xbc($s1)
/* 1C070 800B1470 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1C074 800B1474 8FB10014 */  lw         $s1, 0x14($sp)
/* 1C078 800B1478 8FB00010 */  lw         $s0, 0x10($sp)
/* 1C07C 800B147C 03E00008 */  jr         $ra
/* 1C080 800B1480 27BD0020 */   addiu     $sp, $sp, 0x20
