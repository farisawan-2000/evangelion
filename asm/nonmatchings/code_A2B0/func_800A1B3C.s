glabel func_800A1B3C
/* C73C 800A1B3C 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* C740 800A1B40 24860020 */  addiu      $a2, $a0, 0x20
/* C744 800A1B44 84AB0064 */  lh         $t3, 0x64($a1)
/* C748 800A1B48 00003821 */  addu       $a3, $zero, $zero
/* C74C 800A1B4C 1960001F */  blez       $t3, .L800A1BCC
/* C750 800A1B50 00005021 */   addu      $t2, $zero, $zero
.L800A1B54:
/* C754 800A1B54 8CA30008 */  lw         $v1, 0x8($a1)
/* C758 800A1B58 00071400 */  sll        $v0, $a3, 16
/* C75C 800A1B5C 00021383 */  sra        $v0, $v0, 14
/* C760 800A1B60 00431021 */  addu       $v0, $v0, $v1
/* C764 800A1B64 8C430000 */  lw         $v1, 0x0($v0)
/* C768 800A1B68 8C620010 */  lw         $v0, 0x10($v1)
/* C76C 800A1B6C 8C63000C */  lw         $v1, 0xC($v1)
/* C770 800A1B70 00021300 */  sll        $v0, $v0, 12
/* C774 800A1B74 00024C03 */  sra        $t1, $v0, 16
/* C778 800A1B78 19200010 */  blez       $t1, .L800A1BBC
/* C77C 800A1B7C 00004021 */   addu      $t0, $zero, $zero
/* C780 800A1B80 2463000E */  addiu      $v1, $v1, 0xE
.L800A1B84:
/* C784 800A1B84 9062FFFE */  lbu        $v0, -0x2($v1)
/* C788 800A1B88 254A0003 */  addiu      $t2, $t2, 0x3
/* C78C 800A1B8C A0C20000 */  sb         $v0, 0x0($a2)
/* C790 800A1B90 9062FFFF */  lbu        $v0, -0x1($v1)
/* C794 800A1B94 25080001 */  addiu      $t0, $t0, 0x1
/* C798 800A1B98 24C60001 */  addiu      $a2, $a2, 0x1
/* C79C 800A1B9C A0C20000 */  sb         $v0, 0x0($a2)
/* C7A0 800A1BA0 90620000 */  lbu        $v0, 0x0($v1)
/* C7A4 800A1BA4 24C60001 */  addiu      $a2, $a2, 0x1
/* C7A8 800A1BA8 24630010 */  addiu      $v1, $v1, 0x10
/* C7AC 800A1BAC A0C20000 */  sb         $v0, 0x0($a2)
/* C7B0 800A1BB0 0109102A */  slt        $v0, $t0, $t1
/* C7B4 800A1BB4 1440FFF3 */  bnez       $v0, .L800A1B84
/* C7B8 800A1BB8 24C60001 */   addiu     $a2, $a2, 0x1
.L800A1BBC:
/* C7BC 800A1BBC 24E70001 */  addiu      $a3, $a3, 0x1
/* C7C0 800A1BC0 00EB102A */  slt        $v0, $a3, $t3
/* C7C4 800A1BC4 1440FFE3 */  bnez       $v0, .L800A1B54
/* C7C8 800A1BC8 00000000 */   nop
.L800A1BCC:
/* C7CC 800A1BCC 2407000F */  addiu      $a3, $zero, 0xF
/* C7D0 800A1BD0 2482000F */  addiu      $v0, $a0, 0xF
.L800A1BD4:
/* C7D4 800A1BD4 A0400000 */  sb         $zero, 0x0($v0)
/* C7D8 800A1BD8 24E7FFFF */  addiu      $a3, $a3, -0x1
/* C7DC 800A1BDC 04E1FFFD */  bgez       $a3, .L800A1BD4
/* C7E0 800A1BE0 2442FFFF */   addiu     $v0, $v0, -0x1
/* C7E4 800A1BE4 2407000B */  addiu      $a3, $zero, 0xB
/* C7E8 800A1BE8 2482000B */  addiu      $v0, $a0, 0xB
.L800A1BEC:
/* C7EC 800A1BEC A0400014 */  sb         $zero, 0x14($v0)
/* C7F0 800A1BF0 24E7FFFF */  addiu      $a3, $a3, -0x1
/* C7F4 800A1BF4 04E1FFFD */  bgez       $a3, .L800A1BEC
/* C7F8 800A1BF8 2442FFFF */   addiu     $v0, $v0, -0x1
/* C7FC 800A1BFC AC8A0010 */  sw         $t2, 0x10($a0)
/* C800 800A1C00 27BD0010 */  addiu      $sp, $sp, 0x10
/* C804 800A1C04 03E00008 */  jr         $ra
/* C808 800A1C08 00000000 */   nop
.size func_800A1B3C, . - func_800A1B3C
