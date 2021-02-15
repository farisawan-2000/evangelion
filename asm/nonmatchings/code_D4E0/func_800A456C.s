.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A456C
/* F16C 800A456C 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* F170 800A4570 AFBF001C */  sw         $ra, 0x1c($sp)
/* F174 800A4574 AFB20018 */  sw         $s2, 0x18($sp)
/* F178 800A4578 AFB10014 */  sw         $s1, 0x14($sp)
/* F17C 800A457C AFB00010 */  sw         $s0, 0x10($sp)
/* F180 800A4580 F7B60028 */  sdc1       $f22, 0x28($sp)
/* F184 800A4584 F7B40020 */  sdc1       $f20, 0x20($sp)
/* F188 800A4588 8C920008 */  lw         $s2, 8($a0)
/* F18C 800A458C 30B0FFFF */  andi       $s0, $a1, 0xffff
/* F190 800A4590 4486A000 */  mtc1       $a2, $f20
/* F194 800A4594 00000000 */  nop
/* F198 800A4598 4487B000 */  mtc1       $a3, $f22
/* F19C 800A459C 00000000 */  nop
/* F1A0 800A45A0 0C02F7D8 */  jal        func_800BDF60
/* F1A4 800A45A4 02002021 */   addu      $a0, $s0, $zero
/* F1A8 800A45A8 00021400 */  sll        $v0, $v0, 0x10
/* F1AC 800A45AC 00028BC3 */  sra        $s1, $v0, 0xf
/* F1B0 800A45B0 0C02FFD0 */  jal        func_800BFF40
/* F1B4 800A45B4 02002021 */   addu      $a0, $s0, $zero
/* F1B8 800A45B8 00021400 */  sll        $v0, $v0, 0x10
/* F1BC 800A45BC 00021BC3 */  sra        $v1, $v0, 0xf
/* F1C0 800A45C0 3402FFFE */  ori        $v0, $zero, 0xfffe
/* F1C4 800A45C4 52220001 */  beql       $s1, $v0, .L800A45CC
/* F1C8 800A45C8 3C110001 */   lui       $s1, 1
.L800A45CC:
/* F1CC 800A45CC 50620001 */  beql       $v1, $v0, .L800A45D4
/* F1D0 800A45D0 3C030001 */   lui       $v1, 1
.L800A45D4:
/* F1D4 800A45D4 3C02FFFF */  lui        $v0, 0xffff
/* F1D8 800A45D8 34420002 */  ori        $v0, $v0, 2
/* F1DC 800A45DC 52220001 */  beql       $s1, $v0, .L800A45E4
/* F1E0 800A45E0 3C11FFFF */   lui       $s1, 0xffff
.L800A45E4:
/* F1E4 800A45E4 50620001 */  beql       $v1, $v0, .L800A45EC
/* F1E8 800A45E8 3C03FFFF */   lui       $v1, 0xffff
.L800A45EC:
/* F1EC 800A45EC 44912000 */  mtc1       $s1, $f4
/* F1F0 800A45F0 00000000 */  nop
/* F1F4 800A45F4 46802120 */  cvt.s.w    $f4, $f4
/* F1F8 800A45F8 46142182 */  mul.s      $f6, $f4, $f20
/* F1FC 800A45FC 00031023 */  negu       $v0, $v1
/* F200 800A4600 44821000 */  mtc1       $v0, $f2
/* F204 800A4604 00000000 */  nop
/* F208 800A4608 468010A0 */  cvt.s.w    $f2, $f2
/* F20C 800A460C 46161082 */  mul.s      $f2, $f2, $f22
/* F210 800A4610 44830000 */  mtc1       $v1, $f0
/* F214 800A4614 00000000 */  nop
/* F218 800A4618 46800020 */  cvt.s.w    $f0, $f0
/* F21C 800A461C 46140002 */  mul.s      $f0, $f0, $f20
/* F220 800A4620 00000000 */  nop
/* F224 800A4624 46162102 */  mul.s      $f4, $f4, $f22
/* F228 800A4628 4600320D */  trunc.w.s  $f8, $f6
/* F22C 800A462C E6480000 */  swc1       $f8, ($s2)
/* F230 800A4630 4600118D */  trunc.w.s  $f6, $f2
/* F234 800A4634 E6460004 */  swc1       $f6, 4($s2)
/* F238 800A4638 4600008D */  trunc.w.s  $f2, $f0
/* F23C 800A463C E6420008 */  swc1       $f2, 8($s2)
/* F240 800A4640 4600200D */  trunc.w.s  $f0, $f4
/* F244 800A4644 E640000C */  swc1       $f0, 0xc($s2)
/* F248 800A4648 8FBF001C */  lw         $ra, 0x1c($sp)
/* F24C 800A464C 8FB20018 */  lw         $s2, 0x18($sp)
/* F250 800A4650 8FB10014 */  lw         $s1, 0x14($sp)
/* F254 800A4654 8FB00010 */  lw         $s0, 0x10($sp)
/* F258 800A4658 D7B60028 */  ldc1       $f22, 0x28($sp)
/* F25C 800A465C D7B40020 */  ldc1       $f20, 0x20($sp)
/* F260 800A4660 27BD0030 */  addiu      $sp, $sp, 0x30
/* F264 800A4664 03E00008 */  jr         $ra
/* F268 800A4668 00000000 */   nop
