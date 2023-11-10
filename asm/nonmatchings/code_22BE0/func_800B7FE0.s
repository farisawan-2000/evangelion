glabel func_800B7FE0
/* 22BE0 800B7FE0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 22BE4 800B7FE4 AFB00030 */  sw         $s0, 0x30($sp)
/* 22BE8 800B7FE8 3C108017 */  lui        $s0, %hi(D_8016E550)
/* 22BEC 800B7FEC 2610E550 */  addiu      $s0, $s0, %lo(D_8016E550)
/* 22BF0 800B7FF0 02002021 */  addu       $a0, $s0, $zero
/* 22BF4 800B7FF4 3C058014 */  lui        $a1, %hi(D_80145460)
/* 22BF8 800B7FF8 24A55460 */  addiu      $a1, $a1, %lo(D_80145460)
/* 22BFC 800B7FFC AFBF0034 */  sw         $ra, 0x34($sp)
/* 22C00 800B8000 0C0301A4 */  jal        func_800C0690
/* 22C04 800B8004 24060008 */   addiu     $a2, $zero, 0x8
/* 22C08 800B8008 24040005 */  addiu      $a0, $zero, 0x5
/* 22C0C 800B800C 02002821 */  addu       $a1, $s0, $zero
/* 22C10 800B8010 0C030298 */  jal        func_800C0A60
/* 22C14 800B8014 00003021 */   addu      $a2, $zero, $zero
/* 22C18 800B8018 02002021 */  addu       $a0, $s0, $zero
/* 22C1C 800B801C 27A50028 */  addiu      $a1, $sp, 0x28
/* 22C20 800B8020 0C02F5BC */  jal        func_800BD6F0
/* 22C24 800B8024 27A60018 */   addiu     $a2, $sp, 0x18
/* 22C28 800B8028 3C108014 */  lui        $s0, %hi(D_80145480)
/* 22C2C 800B802C 26105480 */  addiu      $s0, $s0, %lo(D_80145480)
/* 22C30 800B8030 02002021 */  addu       $a0, $s0, $zero
/* 22C34 800B8034 24050005 */  addiu      $a1, $zero, 0x5
/* 22C38 800B8038 3C06800C */  lui        $a2, %hi(func_800B811C)
/* 22C3C 800B803C 24C6811C */  addiu      $a2, $a2, %lo(func_800B811C)
/* 22C40 800B8040 3C028014 */  lui        $v0, %hi(D_80147630)
/* 22C44 800B8044 24427630 */  addiu      $v0, $v0, %lo(D_80147630)
/* 22C48 800B8048 AFA20010 */  sw         $v0, 0x10($sp)
/* 22C4C 800B804C 24020073 */  addiu      $v0, $zero, 0x73
/* 22C50 800B8050 00003821 */  addu       $a3, $zero, $zero
/* 22C54 800B8054 0C03065C */  jal        osCreateThread
/* 22C58 800B8058 AFA20014 */   sw        $v0, 0x14($sp)
/* 22C5C 800B805C 0C0306CC */  jal        osStartThread
/* 22C60 800B8060 02002021 */   addu      $a0, $s0, $zero
/* 22C64 800B8064 93A20028 */  lbu        $v0, 0x28($sp)
/* 22C68 800B8068 8FBF0034 */  lw         $ra, 0x34($sp)
/* 22C6C 800B806C 8FB00030 */  lw         $s0, 0x30($sp)
/* 22C70 800B8070 03E00008 */  jr         $ra
/* 22C74 800B8074 27BD0038 */   addiu     $sp, $sp, 0x38
.size func_800B7FE0, . - func_800B7FE0
