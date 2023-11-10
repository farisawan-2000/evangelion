glabel func_800B1E28
/* 1CA28 800B1E28 3C03800F */  lui        $v1, %hi(D_800F1504)
/* 1CA2C 800B1E2C 24631504 */  addiu      $v1, $v1, %lo(D_800F1504)
/* 1CA30 800B1E30 8C620000 */  lw         $v0, 0x0($v1)
/* 1CA34 800B1E34 1040000B */  beqz       $v0, .L800B1E64
/* 1CA38 800B1E38 00002821 */   addu      $a1, $zero, $zero
/* 1CA3C 800B1E3C 00602021 */  addu       $a0, $v1, $zero
.L800B1E40:
/* 1CA40 800B1E40 8C820000 */  lw         $v0, 0x0($a0)
/* 1CA44 800B1E44 8C430000 */  lw         $v1, 0x0($v0)
/* 1CA48 800B1E48 00A3102A */  slt        $v0, $a1, $v1
/* 1CA4C 800B1E4C 54400001 */  bnel       $v0, $zero, .L800B1E54
/* 1CA50 800B1E50 00602821 */   addu      $a1, $v1, $zero
.L800B1E54:
/* 1CA54 800B1E54 24840004 */  addiu      $a0, $a0, 0x4
/* 1CA58 800B1E58 8C820000 */  lw         $v0, 0x0($a0)
/* 1CA5C 800B1E5C 1440FFF8 */  bnez       $v0, .L800B1E40
/* 1CA60 800B1E60 00000000 */   nop
.L800B1E64:
/* 1CA64 800B1E64 03E00008 */  jr         $ra
/* 1CA68 800B1E68 00A01021 */   addu      $v0, $a1, $zero
.size func_800B1E28, . - func_800B1E28
