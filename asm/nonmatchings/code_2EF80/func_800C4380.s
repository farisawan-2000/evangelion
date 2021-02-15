.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C4380
/* 2EF80 800C4380 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 2EF84 800C4384 AFB20028 */  sw         $s2, 0x28($sp)
/* 2EF88 800C4388 00809021 */  addu       $s2, $a0, $zero
/* 2EF8C 800C438C AFB3002C */  sw         $s3, 0x2c($sp)
/* 2EF90 800C4390 00A09821 */  addu       $s3, $a1, $zero
/* 2EF94 800C4394 02602021 */  addu       $a0, $s3, $zero
/* 2EF98 800C4398 240200FA */  addiu      $v0, $zero, 0xfa
/* 2EF9C 800C439C AFBF0030 */  sw         $ra, 0x30($sp)
/* 2EFA0 800C43A0 AFB10024 */  sw         $s1, 0x24($sp)
/* 2EFA4 800C43A4 AFB00020 */  sw         $s0, 0x20($sp)
/* 2EFA8 800C43A8 3C01800F */  lui        $at, %hi(D_800F7B84)
/* 2EFAC 800C43AC A0227B84 */  sb         $v0, %lo(D_800F7B84)($at)
/* 2EFB0 800C43B0 0C03111C */  jal        func_800C4470
/* 2EFB4 800C43B4 00002821 */   addu      $a1, $zero, $zero
/* 2EFB8 800C43B8 24040001 */  addiu      $a0, $zero, 1
/* 2EFBC 800C43BC 3C118017 */  lui        $s1, %hi(D_8016D830)
/* 2EFC0 800C43C0 2631D830 */  addiu      $s1, $s1, %lo(D_8016D830)
/* 2EFC4 800C43C4 0C0305F4 */  jal        func_800C17D0
/* 2EFC8 800C43C8 02202821 */   addu      $a1, $s1, $zero
/* 2EFCC 800C43CC 02402021 */  addu       $a0, $s2, $zero
/* 2EFD0 800C43D0 27B00018 */  addiu      $s0, $sp, 0x18
/* 2EFD4 800C43D4 02002821 */  addu       $a1, $s0, $zero
/* 2EFD8 800C43D8 0C030200 */  jal        func_800C0800
/* 2EFDC 800C43DC 24060001 */   addiu     $a2, $zero, 1
/* 2EFE0 800C43E0 00002021 */  addu       $a0, $zero, $zero
/* 2EFE4 800C43E4 0C0305F4 */  jal        func_800C17D0
/* 2EFE8 800C43E8 02202821 */   addu      $a1, $s1, $zero
/* 2EFEC 800C43EC 02402021 */  addu       $a0, $s2, $zero
/* 2EFF0 800C43F0 02002821 */  addu       $a1, $s0, $zero
/* 2EFF4 800C43F4 24060001 */  addiu      $a2, $zero, 1
/* 2EFF8 800C43F8 0C030200 */  jal        func_800C0800
/* 2EFFC 800C43FC 00408021 */   addu      $s0, $v0, $zero
/* 2F000 800C4400 02602021 */  addu       $a0, $s3, $zero
/* 2F004 800C4404 0C031141 */  jal        func_800C4504
/* 2F008 800C4408 27A50010 */   addiu     $a1, $sp, 0x10
/* 2F00C 800C440C 93A30012 */  lbu        $v1, 0x12($sp)
/* 2F010 800C4410 30620001 */  andi       $v0, $v1, 1
/* 2F014 800C4414 10400003 */  beqz       $v0, .L800C4424
/* 2F018 800C4418 30620002 */   andi      $v0, $v1, 2
/* 2F01C 800C441C 1440000D */  bnez       $v0, .L800C4454
/* 2F020 800C4420 24020002 */   addiu     $v0, $zero, 2
.L800C4424:
/* 2F024 800C4424 97A20012 */  lhu        $v0, 0x12($sp)
/* 2F028 800C4428 24030100 */  addiu      $v1, $zero, 0x100
/* 2F02C 800C442C 304201FF */  andi       $v0, $v0, 0x1ff
/* 2F030 800C4430 10430003 */  beq        $v0, $v1, .L800C4440
/* 2F034 800C4434 00000000 */   nop
/* 2F038 800C4438 08031115 */  j          .L800C4454
/* 2F03C 800C443C 24020001 */   addiu     $v0, $zero, 1
.L800C4440:
/* 2F040 800C4440 93A30012 */  lbu        $v1, 0x12($sp)
/* 2F044 800C4444 30630004 */  andi       $v1, $v1, 4
/* 2F048 800C4448 14600002 */  bnez       $v1, .L800C4454
/* 2F04C 800C444C 24020004 */   addiu     $v0, $zero, 4
/* 2F050 800C4450 02001021 */  addu       $v0, $s0, $zero
.L800C4454:
/* 2F054 800C4454 8FBF0030 */  lw         $ra, 0x30($sp)
/* 2F058 800C4458 8FB3002C */  lw         $s3, 0x2c($sp)
/* 2F05C 800C445C 8FB20028 */  lw         $s2, 0x28($sp)
/* 2F060 800C4460 8FB10024 */  lw         $s1, 0x24($sp)
/* 2F064 800C4464 8FB00020 */  lw         $s0, 0x20($sp)
/* 2F068 800C4468 03E00008 */  jr         $ra
/* 2F06C 800C446C 27BD0038 */   addiu     $sp, $sp, 0x38
