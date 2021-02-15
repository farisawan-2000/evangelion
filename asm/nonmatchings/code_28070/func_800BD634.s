.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BD634
/* 28234 800BD634 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 28238 800BD638 3C078015 */  lui        $a3, %hi(D_80149DD0)
/* 2823C 800BD63C 24E79DD0 */  addiu      $a3, $a3, %lo(D_80149DD0)
/* 28240 800BD640 2406000E */  addiu      $a2, $zero, 0xe
/* 28244 800BD644 24E20038 */  addiu      $v0, $a3, 0x38
.L800BD648:
/* 28248 800BD648 AC400000 */  sw         $zero, ($v0)
/* 2824C 800BD64C 24C6FFFF */  addiu      $a2, $a2, -1
/* 28250 800BD650 04C1FFFD */  bgez       $a2, .L800BD648
/* 28254 800BD654 2442FFFC */   addiu     $v0, $v0, -4
/* 28258 800BD658 24020001 */  addiu      $v0, $zero, 1
/* 2825C 800BD65C 3C048015 */  lui        $a0, %hi(D_8014A04C)
/* 28260 800BD660 9084A04C */  lbu        $a0, %lo(D_8014A04C)($a0)
/* 28264 800BD664 00003021 */  addu       $a2, $zero, $zero
/* 28268 800BD668 3C018015 */  lui        $at, %hi(D_80149E0C)
/* 2826C 800BD66C AC229E0C */  sw         $v0, %lo(D_80149E0C)($at)
/* 28270 800BD670 240200FF */  addiu      $v0, $zero, 0xff
/* 28274 800BD674 24030001 */  addiu      $v1, $zero, 1
/* 28278 800BD678 A3A20000 */  sb         $v0, ($sp)
/* 2827C 800BD67C 24020004 */  addiu      $v0, $zero, 4
/* 28280 800BD680 A3A20002 */  sb         $v0, 2($sp)
/* 28284 800BD684 3402FFFF */  ori        $v0, $zero, 0xffff
/* 28288 800BD688 A7A20004 */  sh         $v0, 4($sp)
/* 2828C 800BD68C 2402FFFF */  addiu      $v0, $zero, -1
/* 28290 800BD690 A3A30001 */  sb         $v1, 1($sp)
/* 28294 800BD694 A3A30003 */  sb         $v1, 3($sp)
/* 28298 800BD698 A3A20006 */  sb         $v0, 6($sp)
/* 2829C 800BD69C 1880000F */  blez       $a0, .L800BD6DC
/* 282A0 800BD6A0 A3A20007 */   sb        $v0, 7($sp)
.L800BD6A4:
/* 282A4 800BD6A4 8BA20000 */  lwl        $v0, ($sp)
/* 282A8 800BD6A8 9BA20003 */  lwr        $v0, 3($sp)
/* 282AC 800BD6AC 8BA30004 */  lwl        $v1, 4($sp)
/* 282B0 800BD6B0 9BA30007 */  lwr        $v1, 7($sp)
/* 282B4 800BD6B4 A8E20000 */  swl        $v0, ($a3)
/* 282B8 800BD6B8 B8E20003 */  swr        $v0, 3($a3)
/* 282BC 800BD6BC A8E30004 */  swl        $v1, 4($a3)
/* 282C0 800BD6C0 B8E30007 */  swr        $v1, 7($a3)
/* 282C4 800BD6C4 3C028015 */  lui        $v0, %hi(D_8014A04C)
/* 282C8 800BD6C8 9042A04C */  lbu        $v0, %lo(D_8014A04C)($v0)
/* 282CC 800BD6CC 24C60001 */  addiu      $a2, $a2, 1
/* 282D0 800BD6D0 00C2102A */  slt        $v0, $a2, $v0
/* 282D4 800BD6D4 1440FFF3 */  bnez       $v0, .L800BD6A4
/* 282D8 800BD6D8 24E70008 */   addiu     $a3, $a3, 8
.L800BD6DC:
/* 282DC 800BD6DC 240200FE */  addiu      $v0, $zero, 0xfe
/* 282E0 800BD6E0 A0E20000 */  sb         $v0, ($a3)
/* 282E4 800BD6E4 03E00008 */  jr         $ra
/* 282E8 800BD6E8 27BD0010 */   addiu     $sp, $sp, 0x10
/* 282EC 800BD6EC 00000000 */  nop
