glabel func_800B75D0
/* 221D0 800B75D0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 221D4 800B75D4 AFBF0018 */  sw         $ra, 0x18($sp)
/* 221D8 800B75D8 8C82000C */  lw         $v0, 0xC($a0)
/* 221DC 800B75DC 3C05800F */  lui        $a1, %hi(D_800F5D50)
/* 221E0 800B75E0 94A55D50 */  lhu        $a1, %lo(D_800F5D50)($a1)
/* 221E4 800B75E4 3C06800F */  lui        $a2, %hi(D_800F5D54)
/* 221E8 800B75E8 8CC65D54 */  lw         $a2, %lo(D_800F5D54)($a2)
/* 221EC 800B75EC 8C430008 */  lw         $v1, 0x8($v0)
/* 221F0 800B75F0 8C440000 */  lw         $a0, 0x0($v0)
/* 221F4 800B75F4 AFA30010 */  sw         $v1, 0x10($sp)
/* 221F8 800B75F8 8C840000 */  lw         $a0, 0x0($a0)
/* 221FC 800B75FC 0C030D20 */  jal        func_800C3480
/* 22200 800B7600 8C470004 */   lw        $a3, 0x4($v0)
/* 22204 800B7604 8FBF0018 */  lw         $ra, 0x18($sp)
/* 22208 800B7608 03E00008 */  jr         $ra
/* 2220C 800B760C 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B75D0, . - func_800B75D0
