.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C335C
/* 2DF5C 800C335C 24020001 */  addiu      $v0, $zero, 1
/* 2DF60 800C3360 8FAA0014 */  lw         $t2, 0x14($sp)
/* 2DF64 800C3364 93AB0013 */  lbu        $t3, 0x13($sp)
/* 2DF68 800C3368 8FAE0018 */  lw         $t6, 0x18($sp)
/* 2DF6C 800C336C 15600002 */  bnez       $t3, .L800C3378
/* 2DF70 800C3370 00007821 */   addu      $t7, $zero, $zero
/* 2DF74 800C3374 8C820060 */  lw         $v0, 0x60($a0)
.L800C3378:
/* 2DF78 800C3378 00402021 */  addu       $a0, $v0, $zero
/* 2DF7C 800C337C 28820080 */  slti       $v0, $a0, 0x80
/* 2DF80 800C3380 1040000A */  beqz       $v0, .L800C33AC
/* 2DF84 800C3384 00041040 */   sll       $v0, $a0, 1
/* 2DF88 800C3388 24080003 */  addiu      $t0, $zero, 3
/* 2DF8C 800C338C 00451821 */  addu       $v1, $v0, $a1
.L800C3390:
/* 2DF90 800C3390 94620000 */  lhu        $v0, ($v1)
/* 2DF94 800C3394 10480006 */  beq        $v0, $t0, .L800C33B0
/* 2DF98 800C3398 24020080 */   addiu     $v0, $zero, 0x80
/* 2DF9C 800C339C 24840001 */  addiu      $a0, $a0, 1
/* 2DFA0 800C33A0 28820080 */  slti       $v0, $a0, 0x80
/* 2DFA4 800C33A4 1440FFFA */  bnez       $v0, .L800C3390
/* 2DFA8 800C33A8 24630002 */   addiu     $v1, $v1, 2
.L800C33AC:
/* 2DFAC 800C33AC 24020080 */  addiu      $v0, $zero, 0x80
.L800C33B0:
/* 2DFB0 800C33B0 14820004 */  bne        $a0, $v0, .L800C33C4
/* 2DFB4 800C33B4 24030001 */   addiu     $v1, $zero, 1
/* 2DFB8 800C33B8 2402FFFF */  addiu      $v0, $zero, -1
/* 2DFBC 800C33BC 08030D1B */  j          .L800C346C
/* 2DFC0 800C33C0 ACE20000 */   sw        $v0, ($a3)
.L800C33C4:
/* 2DFC4 800C33C4 AD430000 */  sw         $v1, ($t2)
/* 2DFC8 800C33C8 00804021 */  addu       $t0, $a0, $zero
/* 2DFCC 800C33CC 25040001 */  addiu      $a0, $t0, 1
/* 2DFD0 800C33D0 0066182A */  slt        $v1, $v1, $a2
/* 2DFD4 800C33D4 28820080 */  slti       $v0, $a0, 0x80
/* 2DFD8 800C33D8 00621824 */  and        $v1, $v1, $v0
/* 2DFDC 800C33DC 10600015 */  beqz       $v1, .L800C3434
/* 2DFE0 800C33E0 01006821 */   addu      $t5, $t0, $zero
/* 2DFE4 800C33E4 240C0003 */  addiu      $t4, $zero, 3
/* 2DFE8 800C33E8 00041040 */  sll        $v0, $a0, 1
/* 2DFEC 800C33EC 00454821 */  addu       $t1, $v0, $a1
.L800C33F0:
/* 2DFF0 800C33F0 95220000 */  lhu        $v0, ($t1)
/* 2DFF4 800C33F4 144C0008 */  bne        $v0, $t4, .L800C3418
/* 2DFF8 800C33F8 00081040 */   sll       $v0, $t0, 1
/* 2DFFC 800C33FC 00A21021 */  addu       $v0, $a1, $v0
/* 2E000 800C3400 A04B0000 */  sb         $t3, ($v0)
/* 2E004 800C3404 A0440001 */  sb         $a0, 1($v0)
/* 2E008 800C3408 8D420000 */  lw         $v0, ($t2)
/* 2E00C 800C340C 00804021 */  addu       $t0, $a0, $zero
/* 2E010 800C3410 24420001 */  addiu      $v0, $v0, 1
/* 2E014 800C3414 AD420000 */  sw         $v0, ($t2)
.L800C3418:
/* 2E018 800C3418 8D430000 */  lw         $v1, ($t2)
/* 2E01C 800C341C 24840001 */  addiu      $a0, $a0, 1
/* 2E020 800C3420 28820080 */  slti       $v0, $a0, 0x80
/* 2E024 800C3424 0066182A */  slt        $v1, $v1, $a2
/* 2E028 800C3428 00621824 */  and        $v1, $v1, $v0
/* 2E02C 800C342C 1460FFF0 */  bnez       $v1, .L800C33F0
/* 2E030 800C3430 25290002 */   addiu     $t1, $t1, 2
.L800C3434:
/* 2E034 800C3434 24020080 */  addiu      $v0, $zero, 0x80
/* 2E038 800C3438 14820007 */  bne        $a0, $v0, .L800C3458
/* 2E03C 800C343C ACED0000 */   sw        $t5, ($a3)
/* 2E040 800C3440 8D420000 */  lw         $v0, ($t2)
/* 2E044 800C3444 0046102A */  slt        $v0, $v0, $a2
/* 2E048 800C3448 50400004 */  beql       $v0, $zero, .L800C345C
/* 2E04C 800C344C 00081040 */   sll       $v0, $t0, 1
/* 2E050 800C3450 08030D1B */  j          .L800C346C
/* 2E054 800C3454 ADC80000 */   sw        $t0, ($t6)
.L800C3458:
/* 2E058 800C3458 00081040 */  sll        $v0, $t0, 1
.L800C345C:
/* 2E05C 800C345C 00A21021 */  addu       $v0, $a1, $v0
/* 2E060 800C3460 24030001 */  addiu      $v1, $zero, 1
/* 2E064 800C3464 A4430000 */  sh         $v1, ($v0)
/* 2E068 800C3468 ADC00000 */  sw         $zero, ($t6)
.L800C346C:
/* 2E06C 800C346C 03E00008 */  jr         $ra
/* 2E070 800C3470 01E01021 */   addu      $v0, $t7, $zero
/* 2E074 800C3474 00000000 */  nop
/* 2E078 800C3478 00000000 */  nop
/* 2E07C 800C347C 00000000 */  nop
