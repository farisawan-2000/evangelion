glabel func_800B1180
/* 1BD80 800B1180 00A01021 */  addu       $v0, $a1, $zero
/* 1BD84 800B1184 908600DB */  lbu        $a2, 0xDB($a0)
/* 1BD88 800B1188 90430000 */  lbu        $v1, 0x0($v0)
/* 1BD8C 800B118C 24420001 */  addiu      $v0, $v0, 0x1
/* 1BD90 800B1190 00863821 */  addu       $a3, $a0, $a2
/* 1BD94 800B1194 00062880 */  sll        $a1, $a2, 2
/* 1BD98 800B1198 00A42821 */  addu       $a1, $a1, $a0
/* 1BD9C 800B119C A0E30120 */  sb         $v1, 0x120($a3)
/* 1BDA0 800B11A0 ACA200E0 */  sw         $v0, 0xE0($a1)
/* 1BDA4 800B11A4 8C830038 */  lw         $v1, 0x38($a0)
/* 1BDA8 800B11A8 ACA300F0 */  sw         $v1, 0xF0($a1)
/* 1BDAC 800B11AC 8C830034 */  lw         $v1, 0x34($a0)
/* 1BDB0 800B11B0 ACA30100 */  sw         $v1, 0x100($a1)
/* 1BDB4 800B11B4 908300BC */  lbu        $v1, 0xBC($a0)
/* 1BDB8 800B11B8 A0E30124 */  sb         $v1, 0x124($a3)
/* 1BDBC 800B11BC C4800070 */  lwc1       $f0, 0x70($a0)
/* 1BDC0 800B11C0 E4A00128 */  swc1       $f0, 0x128($a1)
/* 1BDC4 800B11C4 948300A2 */  lhu        $v1, 0xA2($a0)
/* 1BDC8 800B11C8 00063040 */  sll        $a2, $a2, 1
/* 1BDCC 800B11CC 00C43021 */  addu       $a2, $a2, $a0
/* 1BDD0 800B11D0 A4C30110 */  sh         $v1, 0x110($a2)
/* 1BDD4 800B11D4 948300A4 */  lhu        $v1, 0xA4($a0)
/* 1BDD8 800B11D8 A4C30118 */  sh         $v1, 0x118($a2)
/* 1BDDC 800B11DC 908300DB */  lbu        $v1, 0xDB($a0)
/* 1BDE0 800B11E0 24630001 */  addiu      $v1, $v1, 0x1
/* 1BDE4 800B11E4 03E00008 */  jr         $ra
/* 1BDE8 800B11E8 A08300DB */   sb        $v1, 0xDB($a0)
.size func_800B1180, . - func_800B1180
