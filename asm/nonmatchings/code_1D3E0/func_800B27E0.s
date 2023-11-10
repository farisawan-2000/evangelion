glabel func_800B27E0
/* 1D3E0 800B27E0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1D3E4 800B27E4 AFB00010 */  sw         $s0, 0x10($sp)
/* 1D3E8 800B27E8 00808021 */  addu       $s0, $a0, $zero
/* 1D3EC 800B27EC AFB10014 */  sw         $s1, 0x14($sp)
/* 1D3F0 800B27F0 00A08821 */  addu       $s1, $a1, $zero
/* 1D3F4 800B27F4 00002821 */  addu       $a1, $zero, $zero
/* 1D3F8 800B27F8 AFBF0018 */  sw         $ra, 0x18($sp)
/* 1D3FC 800B27FC 0C02CA20 */  jal        func_800B2880
/* 1D400 800B2800 02203021 */   addu      $a2, $s1, $zero
/* 1D404 800B2804 3C048010 */  lui        $a0, %hi(D_80102BB0)
/* 1D408 800B2808 24842BB0 */  addiu      $a0, $a0, %lo(D_80102BB0)
/* 1D40C 800B280C 02002821 */  addu       $a1, $s0, $zero
/* 1D410 800B2810 0C02F2D4 */  jal        func_800BCB50
/* 1D414 800B2814 02203021 */   addu      $a2, $s1, $zero
/* 1D418 800B2818 8FBF0018 */  lw         $ra, 0x18($sp)
/* 1D41C 800B281C 8FB10014 */  lw         $s1, 0x14($sp)
/* 1D420 800B2820 8FB00010 */  lw         $s0, 0x10($sp)
/* 1D424 800B2824 03E00008 */  jr         $ra
/* 1D428 800B2828 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B27E0, . - func_800B27E0
