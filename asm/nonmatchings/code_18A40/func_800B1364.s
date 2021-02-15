.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B1364
/* 1BF64 800B1364 90A60000 */  lbu        $a2, ($a1)
/* 1BF68 800B1368 24A50001 */  addiu      $a1, $a1, 1
/* 1BF6C 800B136C 90A90000 */  lbu        $t1, ($a1)
/* 1BF70 800B1370 24A50001 */  addiu      $a1, $a1, 1
/* 1BF74 800B1374 90A70000 */  lbu        $a3, ($a1)
/* 1BF78 800B1378 24A50001 */  addiu      $a1, $a1, 1
/* 1BF7C 800B137C 90A30000 */  lbu        $v1, ($a1)
/* 1BF80 800B1380 8C82008C */  lw         $v0, 0x8c($a0)
/* 1BF84 800B1384 24A50001 */  addiu      $a1, $a1, 1
/* 1BF88 800B1388 24080001 */  addiu      $t0, $zero, 1
/* 1BF8C 800B138C A48800A2 */  sh         $t0, 0xa2($a0)
/* 1BF90 800B1390 00073A00 */  sll        $a3, $a3, 8
/* 1BF94 800B1394 00E33821 */  addu       $a3, $a3, $v1
/* 1BF98 800B1398 00471021 */  addu       $v0, $v0, $a3
/* 1BF9C 800B139C AC820038 */  sw         $v0, 0x38($a0)
/* 1BFA0 800B13A0 90A20000 */  lbu        $v0, ($a1)
/* 1BFA4 800B13A4 90A50001 */  lbu        $a1, 1($a1)
/* 1BFA8 800B13A8 8C830088 */  lw         $v1, 0x88($a0)
/* 1BFAC 800B13AC 00063200 */  sll        $a2, $a2, 8
/* 1BFB0 800B13B0 00C93021 */  addu       $a2, $a2, $t1
/* 1BFB4 800B13B4 A48800A4 */  sh         $t0, 0xa4($a0)
/* 1BFB8 800B13B8 00023A00 */  sll        $a3, $v0, 8
/* 1BFBC 800B13BC 8C820080 */  lw         $v0, 0x80($a0)
/* 1BFC0 800B13C0 00E53821 */  addu       $a3, $a3, $a1
/* 1BFC4 800B13C4 00671821 */  addu       $v1, $v1, $a3
/* 1BFC8 800B13C8 AC830034 */  sw         $v1, 0x34($a0)
/* 1BFCC 800B13CC 03E00008 */  jr         $ra
/* 1BFD0 800B13D0 00461021 */   addu      $v0, $v0, $a2
