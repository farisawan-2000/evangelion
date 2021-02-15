.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BB96C
/* 2656C 800BB96C 000528C3 */  sra        $a1, $a1, 3
/* 26570 800BB970 14A00003 */  bnez       $a1, .L800BB980
/* 26574 800BB974 00061400 */   sll       $v0, $a2, 0x10
/* 26578 800BB978 0802EE7A */  j          .L800BB9E8
/* 2657C 800BB97C 46006006 */   mov.s     $f0, $f12
.L800BB980:
/* 26580 800BB980 44821000 */  mtc1       $v0, $f2
/* 26584 800BB984 00000000 */  nop
/* 26588 800BB988 468010A0 */  cvt.s.w    $f2, $f2
/* 2658C 800BB98C 30E2FFFF */  andi       $v0, $a3, 0xffff
/* 26590 800BB990 44820000 */  mtc1       $v0, $f0
/* 26594 800BB994 00000000 */  nop
/* 26598 800BB998 46800020 */  cvt.s.w    $f0, $f0
/* 2659C 800BB99C 46001080 */  add.s      $f2, $f2, $f0
/* 265A0 800BB9A0 3C014780 */  lui        $at, 0x4780
/* 265A4 800BB9A4 44810000 */  mtc1       $at, $f0
/* 265A8 800BB9A8 3C013F80 */  lui        $at, 0x3f80
/* 265AC 800BB9AC 44812000 */  mtc1       $at, $f4
/* 265B0 800BB9B0 00001821 */  addu       $v1, $zero, $zero
/* 265B4 800BB9B4 46001083 */  div.s      $f2, $f2, $f0
.L800BB9B8:
/* 265B8 800BB9B8 30A20001 */  andi       $v0, $a1, 1
/* 265BC 800BB9BC 54400001 */  bnezl      $v0, .L800BB9C4
/* 265C0 800BB9C0 46022102 */   mul.s     $f4, $f4, $f2
.L800BB9C4:
/* 265C4 800BB9C4 00052843 */  sra        $a1, $a1, 1
/* 265C8 800BB9C8 50A00007 */  beql       $a1, $zero, .L800BB9E8
/* 265CC 800BB9CC 46046002 */   mul.s     $f0, $f12, $f4
/* 265D0 800BB9D0 24630001 */  addiu      $v1, $v1, 1
/* 265D4 800BB9D4 28620020 */  slti       $v0, $v1, 0x20
/* 265D8 800BB9D8 1440FFF7 */  bnez       $v0, .L800BB9B8
/* 265DC 800BB9DC 46021082 */   mul.s     $f2, $f2, $f2
/* 265E0 800BB9E0 00000000 */  nop
/* 265E4 800BB9E4 46046002 */  mul.s      $f0, $f12, $f4
.L800BB9E8:
/* 265E8 800BB9E8 03E00008 */  jr         $ra
/* 265EC 800BB9EC 00000000 */   nop
