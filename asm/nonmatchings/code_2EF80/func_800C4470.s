glabel func_800C4470
/* 2F070 800C4470 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 2F074 800C4474 3C038017 */  lui        $v1, %hi(D_8016D86C)
/* 2F078 800C4478 2463D86C */  addiu      $v1, $v1, %lo(D_8016D86C)
/* 2F07C 800C447C 2466FFC4 */  addiu      $a2, $v1, -0x3C
/* 2F080 800C4480 00003821 */  addu       $a3, $zero, $zero
/* 2F084 800C4484 240200FE */  addiu      $v0, $zero, 0xFE
/* 2F088 800C4488 3C018017 */  lui        $at, %hi(D_8016D064)
/* 2F08C 800C448C A022D064 */  sb         $v0, %lo(D_8016D064)($at)
/* 2F090 800C4490 24020001 */  addiu      $v0, $zero, 0x1
/* 2F094 800C4494 AC620000 */  sw         $v0, 0x0($v1)
/* 2F098 800C4498 24020001 */  addiu      $v0, $zero, 0x1
/* 2F09C 800C449C A3A20000 */  sb         $v0, 0x0($sp)
/* 2F0A0 800C44A0 24020003 */  addiu      $v0, $zero, 0x3
/* 2F0A4 800C44A4 A3A20001 */  sb         $v0, 0x1($sp)
/* 2F0A8 800C44A8 240200FF */  addiu      $v0, $zero, 0xFF
/* 2F0AC 800C44AC A3A50002 */  sb         $a1, 0x2($sp)
/* 2F0B0 800C44B0 A3A20003 */  sb         $v0, 0x3($sp)
/* 2F0B4 800C44B4 A3A20004 */  sb         $v0, 0x4($sp)
/* 2F0B8 800C44B8 18800006 */  blez       $a0, .L800C44D4
/* 2F0BC 800C44BC A3A20005 */   sb        $v0, 0x5($sp)
.L800C44C0:
/* 2F0C0 800C44C0 A0C00000 */  sb         $zero, 0x0($a2)
/* 2F0C4 800C44C4 24E70001 */  addiu      $a3, $a3, 0x1
/* 2F0C8 800C44C8 00E4102A */  slt        $v0, $a3, $a0
/* 2F0CC 800C44CC 1440FFFC */  bnez       $v0, .L800C44C0
/* 2F0D0 800C44D0 24C60001 */   addiu     $a2, $a2, 0x1
.L800C44D4:
/* 2F0D4 800C44D4 8BA20000 */  lwl        $v0, 0x0($sp)
/* 2F0D8 800C44D8 9BA20003 */  lwr        $v0, 0x3($sp)
/* 2F0DC 800C44DC 83A30004 */  lb         $v1, 0x4($sp)
/* 2F0E0 800C44E0 83A40005 */  lb         $a0, 0x5($sp)
/* 2F0E4 800C44E4 A8C20000 */  swl        $v0, 0x0($a2)
/* 2F0E8 800C44E8 B8C20003 */  swr        $v0, 0x3($a2)
/* 2F0EC 800C44EC A0C30004 */  sb         $v1, 0x4($a2)
/* 2F0F0 800C44F0 A0C40005 */  sb         $a0, 0x5($a2)
/* 2F0F4 800C44F4 240200FE */  addiu      $v0, $zero, 0xFE
/* 2F0F8 800C44F8 A0C20006 */  sb         $v0, 0x6($a2)
/* 2F0FC 800C44FC 03E00008 */  jr         $ra
/* 2F100 800C4500 27BD0010 */   addiu     $sp, $sp, 0x10
.size func_800C4470, . - func_800C4470
