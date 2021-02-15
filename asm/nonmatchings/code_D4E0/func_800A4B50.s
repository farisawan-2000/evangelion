.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A4B50
/* F750 800A4B50 8C870000 */  lw         $a3, ($a0)
/* F754 800A4B54 24020006 */  addiu      $v0, $zero, 6
/* F758 800A4B58 A0820020 */  sb         $v0, 0x20($a0)
/* F75C 800A4B5C 94E3001E */  lhu        $v1, 0x1e($a3)
/* F760 800A4B60 30C2FFFF */  andi       $v0, $a2, 0xffff
/* F764 800A4B64 10620004 */  beq        $v1, $v0, .L800A4B78
/* F768 800A4B68 A4E5001C */   sh        $a1, 0x1c($a3)
/* F76C 800A4B6C 94E20008 */  lhu        $v0, 8($a3)
/* F770 800A4B70 A4E6001E */  sh         $a2, 0x1e($a3)
/* F774 800A4B74 ACE20020 */  sw         $v0, 0x20($a3)
.L800A4B78:
/* F778 800A4B78 3C014480 */  lui        $at, 0x4480
/* F77C 800A4B7C 44811000 */  mtc1       $at, $f2
/* F780 800A4B80 00000000 */  nop
/* F784 800A4B84 30A2FFFF */  andi       $v0, $a1, 0xffff
/* F788 800A4B88 44820000 */  mtc1       $v0, $f0
/* F78C 800A4B8C 00000000 */  nop
/* F790 800A4B90 46800020 */  cvt.s.w    $f0, $f0
/* F794 800A4B94 46001083 */  div.s      $f2, $f2, $f0
/* F798 800A4B98 94E20002 */  lhu        $v0, 2($a3)
/* F79C 800A4B9C 44820000 */  mtc1       $v0, $f0
/* F7A0 800A4BA0 00000000 */  nop
/* F7A4 800A4BA4 46800020 */  cvt.s.w    $f0, $f0
/* F7A8 800A4BA8 46020082 */  mul.s      $f2, $f0, $f2
/* F7AC 800A4BAC 3C014F00 */  lui        $at, 0x4f00
/* F7B0 800A4BB0 44810000 */  mtc1       $at, $f0
/* F7B4 800A4BB4 00000000 */  nop
/* F7B8 800A4BB8 4602003E */  c.le.s     $f0, $f2
/* F7BC 800A4BBC 00000000 */  nop
/* F7C0 800A4BC0 00000000 */  nop
/* F7C4 800A4BC4 45030006 */  bc1tl      .L800A4BE0
/* F7C8 800A4BC8 46001001 */   sub.s     $f0, $f2, $f0
/* F7CC 800A4BCC 4600100D */  trunc.w.s  $f0, $f2
/* F7D0 800A4BD0 44030000 */  mfc1       $v1, $f0
/* F7D4 800A4BD4 00000000 */  nop
/* F7D8 800A4BD8 080292FD */  j          .L800A4BF4
/* F7DC 800A4BDC 00000000 */   nop
.L800A4BE0:
/* F7E0 800A4BE0 4600008D */  trunc.w.s  $f2, $f0
/* F7E4 800A4BE4 44031000 */  mfc1       $v1, $f2
/* F7E8 800A4BE8 00000000 */  nop
/* F7EC 800A4BEC 3C028000 */  lui        $v0, 0x8000
/* F7F0 800A4BF0 00621825 */  or         $v1, $v1, $v0
.L800A4BF4:
/* F7F4 800A4BF4 3C014480 */  lui        $at, 0x4480
/* F7F8 800A4BF8 44811000 */  mtc1       $at, $f2
/* F7FC 800A4BFC 00000000 */  nop
/* F800 800A4C00 30C2FFFF */  andi       $v0, $a2, 0xffff
/* F804 800A4C04 44820000 */  mtc1       $v0, $f0
/* F808 800A4C08 00000000 */  nop
/* F80C 800A4C0C 46800020 */  cvt.s.w    $f0, $f0
/* F810 800A4C10 46001083 */  div.s      $f2, $f2, $f0
/* F814 800A4C14 94E2000A */  lhu        $v0, 0xa($a3)
/* F818 800A4C18 44820000 */  mtc1       $v0, $f0
/* F81C 800A4C1C 00000000 */  nop
/* F820 800A4C20 46800020 */  cvt.s.w    $f0, $f0
/* F824 800A4C24 46020082 */  mul.s      $f2, $f0, $f2
/* F828 800A4C28 3C014F00 */  lui        $at, 0x4f00
/* F82C 800A4C2C 44810000 */  mtc1       $at, $f0
/* F830 800A4C30 00000000 */  nop
/* F834 800A4C34 4602003E */  c.le.s     $f0, $f2
/* F838 800A4C38 00000000 */  nop
/* F83C 800A4C3C 00000000 */  nop
/* F840 800A4C40 45010006 */  bc1t       .L800A4C5C
/* F844 800A4C44 A4E30006 */   sh        $v1, 6($a3)
/* F848 800A4C48 4600100D */  trunc.w.s  $f0, $f2
/* F84C 800A4C4C 44030000 */  mfc1       $v1, $f0
/* F850 800A4C50 00000000 */  nop
/* F854 800A4C54 0802931D */  j          .L800A4C74
/* F858 800A4C58 00000000 */   nop
.L800A4C5C:
/* F85C 800A4C5C 46001001 */  sub.s      $f0, $f2, $f0
/* F860 800A4C60 4600008D */  trunc.w.s  $f2, $f0
/* F864 800A4C64 44031000 */  mfc1       $v1, $f2
/* F868 800A4C68 00000000 */  nop
/* F86C 800A4C6C 3C028000 */  lui        $v0, 0x8000
/* F870 800A4C70 00621825 */  or         $v1, $v1, $v0
.L800A4C74:
/* F874 800A4C74 94E40006 */  lhu        $a0, 6($a3)
/* F878 800A4C78 2C821000 */  sltiu      $v0, $a0, 0x1000
/* F87C 800A4C7C 14400003 */  bnez       $v0, .L800A4C8C
/* F880 800A4C80 A4E3000E */   sh        $v1, 0xe($a3)
/* F884 800A4C84 08029325 */  j          .L800A4C94
/* F888 800A4C88 24020FFF */   addiu     $v0, $zero, 0xfff
.L800A4C8C:
/* F88C 800A4C8C 14800002 */  bnez       $a0, .L800A4C98
/* F890 800A4C90 24020001 */   addiu     $v0, $zero, 1
.L800A4C94:
/* F894 800A4C94 A4E20006 */  sh         $v0, 6($a3)
.L800A4C98:
/* F898 800A4C98 94E3000E */  lhu        $v1, 0xe($a3)
/* F89C 800A4C9C 2C621000 */  sltiu      $v0, $v1, 0x1000
/* F8A0 800A4CA0 10400003 */  beqz       $v0, .L800A4CB0
/* F8A4 800A4CA4 24020FFF */   addiu     $v0, $zero, 0xfff
/* F8A8 800A4CA8 14600002 */  bnez       $v1, .L800A4CB4
/* F8AC 800A4CAC 24020001 */   addiu     $v0, $zero, 1
.L800A4CB0:
/* F8B0 800A4CB0 A4E2000E */  sh         $v0, 0xe($a3)
.L800A4CB4:
/* F8B4 800A4CB4 03E00008 */  jr         $ra
/* F8B8 800A4CB8 00000000 */   nop
