glabel func_800B9570
/* 24170 800B9570 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 24174 800B9574 24020001 */  addiu      $v0, $zero, 0x1
/* 24178 800B9578 AFB00010 */  sw         $s0, 0x10($sp)
/* 2417C 800B957C 3C108015 */  lui        $s0, %hi(D_8014A2A8)
/* 24180 800B9580 2610A2A8 */  addiu      $s0, $s0, %lo(D_8014A2A8)
/* 24184 800B9584 02002021 */  addu       $a0, $s0, $zero
/* 24188 800B9588 3C058015 */  lui        $a1, %hi(D_80148810)
/* 2418C 800B958C 24A58810 */  addiu      $a1, $a1, %lo(D_80148810)
/* 24190 800B9590 AFBF0014 */  sw         $ra, 0x14($sp)
/* 24194 800B9594 3C01800F */  lui        $at, %hi(D_800F5E60)
/* 24198 800B9598 AC225E60 */  sw         $v0, %lo(D_800F5E60)($at)
/* 2419C 800B959C 0C0301A4 */  jal        func_800C0690
/* 241A0 800B95A0 24060001 */   addiu     $a2, $zero, 0x1
/* 241A4 800B95A4 02002021 */  addu       $a0, $s0, $zero
/* 241A8 800B95A8 00002821 */  addu       $a1, $zero, $zero
/* 241AC 800B95AC 0C03024C */  jal        func_800C0930
/* 241B0 800B95B0 00003021 */   addu      $a2, $zero, $zero
/* 241B4 800B95B4 8FBF0014 */  lw         $ra, 0x14($sp)
/* 241B8 800B95B8 8FB00010 */  lw         $s0, 0x10($sp)
/* 241BC 800B95BC 03E00008 */  jr         $ra
/* 241C0 800B95C0 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B9570, . - func_800B9570
