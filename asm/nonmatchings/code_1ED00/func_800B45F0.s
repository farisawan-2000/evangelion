glabel func_800B45F0
/* 1F1F0 800B45F0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1F1F4 800B45F4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 1F1F8 800B45F8 24A3FFFE */  addiu      $v1, $a1, -0x2
/* 1F1FC 800B45FC 04610002 */  bgez       $v1, .L800B4608
/* 1F200 800B4600 00601021 */   addu      $v0, $v1, $zero
/* 1F204 800B4604 24A20005 */  addiu      $v0, $a1, 0x5
.L800B4608:
/* 1F208 800B4608 000238C3 */  sra        $a3, $v0, 3
/* 1F20C 800B460C 00E02821 */  addu       $a1, $a3, $zero
/* 1F210 800B4610 000510C0 */  sll        $v0, $a1, 3
/* 1F214 800B4614 00623823 */  subu       $a3, $v1, $v0
/* 1F218 800B4618 8CC60000 */  lw         $a2, 0x0($a2)
/* 1F21C 800B461C 2CE20008 */  sltiu      $v0, $a3, 0x8
/* 1F220 800B4620 1040006B */  beqz       $v0, .L800B47D0
/* 1F224 800B4624 00000000 */   nop
/* 1F228 800B4628 00071080 */  sll        $v0, $a3, 2
/* 1F22C 800B462C 3C018010 */  lui        $at, %hi(jtbl_800FEBD0)
/* 1F230 800B4630 00220821 */  addu       $at, $at, $v0
/* 1F234 800B4634 8C22EBD0 */  lw         $v0, %lo(jtbl_800FEBD0)($at)
/* 1F238 800B4638 00400008 */  jr         $v0
/* 1F23C 800B463C 00000000 */   nop
glabel .L800B4640
/* 1F240 800B4640 8C820020 */  lw         $v0, 0x20($a0)
/* 1F244 800B4644 00051880 */  sll        $v1, $a1, 2
/* 1F248 800B4648 00651821 */  addu       $v1, $v1, $a1
/* 1F24C 800B464C 000318C0 */  sll        $v1, $v1, 3
/* 1F250 800B4650 00621821 */  addu       $v1, $v1, $v0
/* 1F254 800B4654 2402FFF8 */  addiu      $v0, $zero, -0x8
/* 1F258 800B4658 00C21024 */  and        $v0, $a2, $v0
/* 1F25C 800B465C 0802D1F4 */  j          .L800B47D0
/* 1F260 800B4660 AC620000 */   sw        $v0, 0x0($v1)
glabel .L800B4664
/* 1F264 800B4664 8C820020 */  lw         $v0, 0x20($a0)
/* 1F268 800B4668 00051880 */  sll        $v1, $a1, 2
/* 1F26C 800B466C 00651821 */  addu       $v1, $v1, $a1
/* 1F270 800B4670 000318C0 */  sll        $v1, $v1, 3
/* 1F274 800B4674 00621821 */  addu       $v1, $v1, $v0
/* 1F278 800B4678 2402FFF8 */  addiu      $v0, $zero, -0x8
/* 1F27C 800B467C 00C21024 */  and        $v0, $a2, $v0
/* 1F280 800B4680 0802D1F4 */  j          .L800B47D0
/* 1F284 800B4684 AC620004 */   sw        $v0, 0x4($v1)
glabel .L800B4688
/* 1F288 800B4688 8C830020 */  lw         $v1, 0x20($a0)
/* 1F28C 800B468C 00051080 */  sll        $v0, $a1, 2
/* 1F290 800B4690 00451021 */  addu       $v0, $v0, $a1
/* 1F294 800B4694 000210C0 */  sll        $v0, $v0, 3
/* 1F298 800B4698 00431021 */  addu       $v0, $v0, $v1
/* 1F29C 800B469C 0802D1F4 */  j          .L800B47D0
/* 1F2A0 800B46A0 A4460008 */   sh        $a2, 0x8($v0)
glabel .L800B46A4
/* 1F2A4 800B46A4 8C830020 */  lw         $v1, 0x20($a0)
/* 1F2A8 800B46A8 00051080 */  sll        $v0, $a1, 2
/* 1F2AC 800B46AC 00451021 */  addu       $v0, $v0, $a1
/* 1F2B0 800B46B0 000210C0 */  sll        $v0, $v0, 3
/* 1F2B4 800B46B4 00431021 */  addu       $v0, $v0, $v1
/* 1F2B8 800B46B8 0802D1F4 */  j          .L800B47D0
/* 1F2BC 800B46BC A446000A */   sh        $a2, 0xA($v0)
glabel .L800B46C0
/* 1F2C0 800B46C0 8C830020 */  lw         $v1, 0x20($a0)
/* 1F2C4 800B46C4 00051080 */  sll        $v0, $a1, 2
/* 1F2C8 800B46C8 00451021 */  addu       $v0, $v0, $a1
/* 1F2CC 800B46CC 000210C0 */  sll        $v0, $v0, 3
/* 1F2D0 800B46D0 00431021 */  addu       $v0, $v0, $v1
/* 1F2D4 800B46D4 0802D1F4 */  j          .L800B47D0
/* 1F2D8 800B46D8 A446000C */   sh        $a2, 0xC($v0)
glabel .L800B46DC
/* 1F2DC 800B46DC 3C01447A */  lui        $at, (0x447A0000 >> 16)
/* 1F2E0 800B46E0 44811000 */  mtc1       $at, $f2
/* 1F2E4 800B46E4 44860000 */  mtc1       $a2, $f0
/* 1F2E8 800B46E8 00000000 */  nop
/* 1F2EC 800B46EC 46800020 */  cvt.s.w    $f0, $f0
/* 1F2F0 800B46F0 46020003 */  div.s      $f0, $f0, $f2
/* 1F2F4 800B46F4 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1F2F8 800B46F8 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1F2FC 800B46FC 46000021 */  cvt.d.s    $f0, $f0
/* 1F300 800B4700 46200000 */  add.d      $f0, $f0, $f0
/* 1F304 800B4704 C4420040 */  lwc1       $f2, 0x40($v0)
/* 1F308 800B4708 468010A1 */  cvt.d.w    $f2, $f2
/* 1F30C 800B470C 46220003 */  div.d      $f0, $f0, $f2
/* 1F310 800B4710 8C830020 */  lw         $v1, 0x20($a0)
/* 1F314 800B4714 00051080 */  sll        $v0, $a1, 2
/* 1F318 800B4718 00451021 */  addu       $v0, $v0, $a1
/* 1F31C 800B471C 000210C0 */  sll        $v0, $v0, 3
/* 1F320 800B4720 00431021 */  addu       $v0, $v0, $v1
/* 1F324 800B4724 46200020 */  cvt.s.d    $f0, $f0
/* 1F328 800B4728 0802D1F4 */  j          .L800B47D0
/* 1F32C 800B472C E4400010 */   swc1      $f0, 0x10($v0)
glabel .L800B4730
/* 1F330 800B4730 8C830020 */  lw         $v1, 0x20($a0)
/* 1F334 800B4734 00051080 */  sll        $v0, $a1, 2
/* 1F338 800B4738 00451021 */  addu       $v0, $v0, $a1
/* 1F33C 800B473C 000210C0 */  sll        $v0, $v0, 3
/* 1F340 800B4740 3C018010 */  lui        $at, %hi(D_800FEBF0)
/* 1F344 800B4744 D422EBF0 */  ldc1       $f2, %lo(D_800FEBF0)($at)
/* 1F348 800B4748 44860000 */  mtc1       $a2, $f0
/* 1F34C 800B474C 00000000 */  nop
/* 1F350 800B4750 46800020 */  cvt.s.w    $f0, $f0
/* 1F354 800B4754 00432021 */  addu       $a0, $v0, $v1
/* 1F358 800B4758 8C830004 */  lw         $v1, 0x4($a0)
/* 1F35C 800B475C 8C820000 */  lw         $v0, 0x0($a0)
/* 1F360 800B4760 46000021 */  cvt.d.s    $f0, $f0
/* 1F364 800B4764 00621823 */  subu       $v1, $v1, $v0
/* 1F368 800B4768 44832000 */  mtc1       $v1, $f4
/* 1F36C 800B476C 00000000 */  nop
/* 1F370 800B4770 46802121 */  cvt.d.w    $f4, $f4
/* 1F374 800B4774 04610004 */  bgez       $v1, .L800B4788
/* 1F378 800B4778 46220083 */   div.d     $f2, $f0, $f2
/* 1F37C 800B477C 3C018010 */  lui        $at, %hi(D_800FEBF8)
/* 1F380 800B4780 D420EBF8 */  ldc1       $f0, %lo(D_800FEBF8)($at)
/* 1F384 800B4784 46202100 */  add.d      $f4, $f4, $f0
.L800B4788:
/* 1F388 800B4788 00000000 */  nop
/* 1F38C 800B478C 46241002 */  mul.d      $f0, $f2, $f4
/* 1F390 800B4790 46200020 */  cvt.s.d    $f0, $f0
/* 1F394 800B4794 0802D1F4 */  j          .L800B47D0
/* 1F398 800B4798 E480001C */   swc1      $f0, 0x1C($a0)
glabel .L800B479C
/* 1F39C 800B479C 8C830020 */  lw         $v1, 0x20($a0)
/* 1F3A0 800B47A0 00051080 */  sll        $v0, $a1, 2
/* 1F3A4 800B47A4 00451021 */  addu       $v0, $v0, $a1
/* 1F3A8 800B47A8 000228C0 */  sll        $a1, $v0, 3
/* 1F3AC 800B47AC 00A31821 */  addu       $v1, $a1, $v1
/* 1F3B0 800B47B0 8C620020 */  lw         $v0, 0x20($v1)
/* 1F3B4 800B47B4 10400006 */  beqz       $v0, .L800B47D0
/* 1F3B8 800B47B8 00000000 */   nop
/* 1F3BC 800B47BC A4460000 */  sh         $a2, 0x0($v0)
/* 1F3C0 800B47C0 8C820020 */  lw         $v0, 0x20($a0)
/* 1F3C4 800B47C4 00A21021 */  addu       $v0, $a1, $v0
/* 1F3C8 800B47C8 0C02E63C */  jal        func_800B98F0
/* 1F3CC 800B47CC 8C440020 */   lw        $a0, 0x20($v0)
.L800B47D0:
/* 1F3D0 800B47D0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 1F3D4 800B47D4 00001021 */  addu       $v0, $zero, $zero
/* 1F3D8 800B47D8 03E00008 */  jr         $ra
/* 1F3DC 800B47DC 27BD0018 */   addiu     $sp, $sp, 0x18
.size func_800B45F0, . - func_800B45F0