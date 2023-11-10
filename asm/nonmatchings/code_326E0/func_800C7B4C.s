glabel func_800C7B4C
/* 3274C 800C7B4C 00001821 */  addu       $v1, $zero, $zero
/* 32750 800C7B50 24060020 */  addiu      $a2, $zero, 0x20
.L800C7B54:
/* 32754 800C7B54 24050080 */  addiu      $a1, $zero, 0x80
/* 32758 800C7B58 90870000 */  lbu        $a3, 0x0($a0)
/* 3275C 800C7B5C 00E51024 */  and        $v0, $a3, $a1
.L800C7B60:
/* 32760 800C7B60 10400006 */  beqz       $v0, .L800C7B7C
/* 32764 800C7B64 00031840 */   sll       $v1, $v1, 1
/* 32768 800C7B68 30620100 */  andi       $v0, $v1, 0x100
/* 3276C 800C7B6C 50400006 */  beql       $v0, $zero, .L800C7B88
/* 32770 800C7B70 24630001 */   addiu     $v1, $v1, 0x1
/* 32774 800C7B74 08031EE2 */  j          .L800C7B88
/* 32778 800C7B78 38630084 */   xori      $v1, $v1, 0x84
.L800C7B7C:
/* 3277C 800C7B7C 30620100 */  andi       $v0, $v1, 0x100
/* 32780 800C7B80 54400001 */  bnel       $v0, $zero, .L800C7B88
/* 32784 800C7B84 38630085 */   xori      $v1, $v1, 0x85
.L800C7B88:
/* 32788 800C7B88 00052842 */  srl        $a1, $a1, 1
/* 3278C 800C7B8C 14A0FFF4 */  bnez       $a1, .L800C7B60
/* 32790 800C7B90 00E51024 */   and       $v0, $a3, $a1
/* 32794 800C7B94 24C6FFFF */  addiu      $a2, $a2, -0x1
/* 32798 800C7B98 14C0FFEE */  bnez       $a2, .L800C7B54
/* 3279C 800C7B9C 24840001 */   addiu     $a0, $a0, 0x1
/* 327A0 800C7BA0 00031840 */  sll        $v1, $v1, 1
.L800C7BA4:
/* 327A4 800C7BA4 30620100 */  andi       $v0, $v1, 0x100
/* 327A8 800C7BA8 54400001 */  bnel       $v0, $zero, .L800C7BB0
/* 327AC 800C7BAC 38630085 */   xori      $v1, $v1, 0x85
.L800C7BB0:
/* 327B0 800C7BB0 24C60001 */  addiu      $a2, $a2, 0x1
/* 327B4 800C7BB4 2CC20008 */  sltiu      $v0, $a2, 0x8
/* 327B8 800C7BB8 5440FFFA */  bnel       $v0, $zero, .L800C7BA4
/* 327BC 800C7BBC 00031840 */   sll       $v1, $v1, 1
/* 327C0 800C7BC0 03E00008 */  jr         $ra
/* 327C4 800C7BC4 306200FF */   andi      $v0, $v1, 0xFF
/* 327C8 800C7BC8 00000000 */  nop
/* 327CC 800C7BCC 00000000 */  nop
.size func_800C7B4C, . - func_800C7B4C
