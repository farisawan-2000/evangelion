glabel func_8009961C
/* 421C 8009961C 00A03021 */  addu       $a2, $a1, $zero
/* 4220 80099620 94C20000 */  lhu        $v0, 0x0($a2)
/* 4224 80099624 A4C2000A */  sh         $v0, 0xA($a2)
/* 4228 80099628 94820000 */  lhu        $v0, 0x0($a0)
/* 422C 8009962C A4C20000 */  sh         $v0, 0x0($a2)
/* 4230 80099630 80820002 */  lb         $v0, 0x2($a0)
/* 4234 80099634 94C30000 */  lhu        $v1, 0x0($a2)
/* 4238 80099638 94C50000 */  lhu        $a1, 0x0($a2)
/* 423C 8009963C 44820000 */  mtc1       $v0, $f0
/* 4240 80099640 00000000 */  nop
/* 4244 80099644 46800020 */  cvt.s.w    $f0, $f0
/* 4248 80099648 E4C0000C */  swc1       $f0, 0xC($a2)
/* 424C 8009964C 80820003 */  lb         $v0, 0x3($a0)
/* 4250 80099650 C4C2000C */  lwc1       $f2, 0xC($a2)
/* 4254 80099654 94C4000A */  lhu        $a0, 0xA($a2)
/* 4258 80099658 44820000 */  mtc1       $v0, $f0
/* 425C 8009965C 00000000 */  nop
/* 4260 80099660 46800020 */  cvt.s.w    $f0, $f0
/* 4264 80099664 E4C00010 */  swc1       $f0, 0x10($a2)
/* 4268 80099668 C4C00010 */  lwc1       $f0, 0x10($a2)
/* 426C 8009966C 94C2000A */  lhu        $v0, 0xA($a2)
/* 4270 80099670 27BDFFF0 */  addiu      $sp, $sp, -0x10
/* 4274 80099674 E4C20014 */  swc1       $f2, 0x14($a2)
/* 4278 80099678 00021027 */  nor        $v0, $zero, $v0
/* 427C 8009967C 00621824 */  and        $v1, $v1, $v0
/* 4280 80099680 46000007 */  neg.s      $f0, $f0
/* 4284 80099684 A4C30002 */  sh         $v1, 0x2($a2)
/* 4288 80099688 10A40003 */  beq        $a1, $a0, .L80099698
/* 428C 8009968C E4C00018 */   swc1      $f0, 0x18($a2)
/* 4290 80099690 080265BC */  j          .L800996F0
/* 4294 80099694 A4C0001C */   sh        $zero, 0x1C($a2)
.L80099698:
/* 4298 80099698 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 429C 8009969C 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 42A0 800996A0 24020010 */  addiu      $v0, $zero, 0x10
/* 42A4 800996A4 0043001A */  div        $zero, $v0, $v1
/* 42A8 800996A8 14600002 */  bnez       $v1, .L800996B4
/* 42AC 800996AC 00000000 */   nop
/* 42B0 800996B0 0007000D */  break      7
.L800996B4:
/* 42B4 800996B4 2401FFFF */  addiu      $at, $zero, -0x1
/* 42B8 800996B8 14610004 */  bne        $v1, $at, .L800996CC
/* 42BC 800996BC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 42C0 800996C0 14410002 */  bne        $v0, $at, .L800996CC
/* 42C4 800996C4 00000000 */   nop
/* 42C8 800996C8 0006000D */  break      6
.L800996CC:
/* 42CC 800996CC 00001012 */  mflo       $v0
/* 42D0 800996D0 00000000 */  nop
/* 42D4 800996D4 00000000 */  nop
/* 42D8 800996D8 84C3001C */  lh         $v1, 0x1C($a2)
/* 42DC 800996DC 00602021 */  addu       $a0, $v1, $zero
/* 42E0 800996E0 0062182A */  slt        $v1, $v1, $v0
/* 42E4 800996E4 10600002 */  beqz       $v1, .L800996F0
/* 42E8 800996E8 24820001 */   addiu     $v0, $a0, 0x1
/* 42EC 800996EC A4C2001C */  sh         $v0, 0x1C($a2)
.L800996F0:
/* 42F0 800996F0 3C038015 */  lui        $v1, %hi(D_80149F90)
/* 42F4 800996F4 8C639F90 */  lw         $v1, %lo(D_80149F90)($v1)
/* 42F8 800996F8 24020010 */  addiu      $v0, $zero, 0x10
/* 42FC 800996FC 0043001A */  div        $zero, $v0, $v1
/* 4300 80099700 14600002 */  bnez       $v1, .L8009970C
/* 4304 80099704 00000000 */   nop
/* 4308 80099708 0007000D */  break      7
.L8009970C:
/* 430C 8009970C 2401FFFF */  addiu      $at, $zero, -0x1
/* 4310 80099710 14610004 */  bne        $v1, $at, .L80099724
/* 4314 80099714 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 4318 80099718 14410002 */  bne        $v0, $at, .L80099724
/* 431C 8009971C 00000000 */   nop
/* 4320 80099720 0006000D */  break      6
.L80099724:
/* 4324 80099724 00001012 */  mflo       $v0
/* 4328 80099728 00000000 */  nop
/* 432C 8009972C 00000000 */  nop
/* 4330 80099730 84C3001C */  lh         $v1, 0x1C($a2)
/* 4334 80099734 14620004 */  bne        $v1, $v0, .L80099748
/* 4338 80099738 00000000 */   nop
/* 433C 8009973C 94C40000 */  lhu        $a0, 0x0($a2)
/* 4340 80099740 080265D3 */  j          .L8009974C
/* 4344 80099744 00000000 */   nop
.L80099748:
/* 4348 80099748 94C40002 */  lhu        $a0, 0x2($a2)
.L8009974C:
/* 434C 8009974C 94C30000 */  lhu        $v1, 0x0($a2)
/* 4350 80099750 94C2000A */  lhu        $v0, 0xA($a2)
/* 4354 80099754 10620003 */  beq        $v1, $v0, .L80099764
/* 4358 80099758 A4C40004 */   sh        $a0, 0x4($a2)
/* 435C 8009975C 08026600 */  j          .L80099800
/* 4360 80099760 A4C0001E */   sh        $zero, 0x1E($a2)
.L80099764:
/* 4364 80099764 3C048015 */  lui        $a0, %hi(D_80149F90)
/* 4368 80099768 8C849F90 */  lw         $a0, %lo(D_80149F90)($a0)
/* 436C 8009976C 24030010 */  addiu      $v1, $zero, 0x10
/* 4370 80099770 0064001A */  div        $zero, $v1, $a0
/* 4374 80099774 14800002 */  bnez       $a0, .L80099780
/* 4378 80099778 00000000 */   nop
/* 437C 8009977C 0007000D */  break      7
.L80099780:
/* 4380 80099780 2401FFFF */  addiu      $at, $zero, -0x1
/* 4384 80099784 14810004 */  bne        $a0, $at, .L80099798
/* 4388 80099788 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 438C 8009978C 14610002 */  bne        $v1, $at, .L80099798
/* 4390 80099790 00000000 */   nop
/* 4394 80099794 0006000D */  break      6
.L80099798:
/* 4398 80099798 00001812 */  mflo       $v1
/* 439C 8009979C 00000000 */  nop
/* 43A0 800997A0 00000000 */  nop
/* 43A4 800997A4 84C2001C */  lh         $v0, 0x1C($a2)
/* 43A8 800997A8 0043102A */  slt        $v0, $v0, $v1
/* 43AC 800997AC 14400017 */  bnez       $v0, .L8009980C
/* 43B0 800997B0 2402003C */   addiu     $v0, $zero, 0x3C
/* 43B4 800997B4 0044001A */  div        $zero, $v0, $a0
/* 43B8 800997B8 14800002 */  bnez       $a0, .L800997C4
/* 43BC 800997BC 00000000 */   nop
/* 43C0 800997C0 0007000D */  break      7
.L800997C4:
/* 43C4 800997C4 2401FFFF */  addiu      $at, $zero, -0x1
/* 43C8 800997C8 14810004 */  bne        $a0, $at, .L800997DC
/* 43CC 800997CC 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 43D0 800997D0 14410002 */  bne        $v0, $at, .L800997DC
/* 43D4 800997D4 00000000 */   nop
/* 43D8 800997D8 0006000D */  break      6
.L800997DC:
/* 43DC 800997DC 00001012 */  mflo       $v0
/* 43E0 800997E0 00000000 */  nop
/* 43E4 800997E4 00000000 */  nop
/* 43E8 800997E8 84C3001E */  lh         $v1, 0x1E($a2)
/* 43EC 800997EC 00602021 */  addu       $a0, $v1, $zero
/* 43F0 800997F0 0062182A */  slt        $v1, $v1, $v0
/* 43F4 800997F4 10600002 */  beqz       $v1, .L80099800
/* 43F8 800997F8 24820001 */   addiu     $v0, $a0, 0x1
/* 43FC 800997FC A4C2001E */  sh         $v0, 0x1E($a2)
.L80099800:
/* 4400 80099800 3C048015 */  lui        $a0, %hi(D_80149F90)
/* 4404 80099804 8C849F90 */  lw         $a0, %lo(D_80149F90)($a0)
/* 4408 80099808 2402003C */  addiu      $v0, $zero, 0x3C
.L8009980C:
/* 440C 8009980C 0044001A */  div        $zero, $v0, $a0
/* 4410 80099810 14800002 */  bnez       $a0, .L8009981C
/* 4414 80099814 00000000 */   nop
/* 4418 80099818 0007000D */  break      7
.L8009981C:
/* 441C 8009981C 2401FFFF */  addiu      $at, $zero, -0x1
/* 4420 80099820 14810004 */  bne        $a0, $at, .L80099834
/* 4424 80099824 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 4428 80099828 14410002 */  bne        $v0, $at, .L80099834
/* 442C 8009982C 00000000 */   nop
/* 4430 80099830 0006000D */  break      6
.L80099834:
/* 4434 80099834 00001012 */  mflo       $v0
/* 4438 80099838 00000000 */  nop
/* 443C 8009983C 00000000 */  nop
/* 4440 80099840 84C3001E */  lh         $v1, 0x1E($a2)
/* 4444 80099844 14620002 */  bne        $v1, $v0, .L80099850
/* 4448 80099848 00002821 */   addu      $a1, $zero, $zero
/* 444C 8009984C 94C50000 */  lhu        $a1, 0x0($a2)
.L80099850:
/* 4450 80099850 84C30022 */  lh         $v1, 0x22($a2)
/* 4454 80099854 24020001 */  addiu      $v0, $zero, 0x1
/* 4458 80099858 10620012 */  beq        $v1, $v0, .L800998A4
/* 445C 8009985C A4C50006 */   sh        $a1, 0x6($a2)
/* 4460 80099860 28620002 */  slti       $v0, $v1, 0x2
/* 4464 80099864 50400005 */  beql       $v0, $zero, .L8009987C
/* 4468 80099868 24020002 */   addiu     $v0, $zero, 0x2
/* 446C 8009986C 10600007 */  beqz       $v1, .L8009988C
/* 4470 80099870 00000000 */   nop
/* 4474 80099874 08026649 */  j          .L80099924
/* 4478 80099878 00000000 */   nop
.L8009987C:
/* 447C 8009987C 50620027 */  beql       $v1, $v0, .L8009991C
/* 4480 80099880 A4C00008 */   sh        $zero, 0x8($a2)
/* 4484 80099884 08026649 */  j          .L80099924
/* 4488 80099888 00000000 */   nop
.L8009988C:
/* 448C 8009988C 94C20002 */  lhu        $v0, 0x2($a2)
/* 4490 80099890 10400024 */  beqz       $v0, .L80099924
/* 4494 80099894 00000000 */   nop
/* 4498 80099898 A4C20024 */  sh         $v0, 0x24($a2)
/* 449C 8009989C 08026644 */  j          .L80099910
/* 44A0 800998A0 24020001 */   addiu     $v0, $zero, 0x1
.L800998A4:
/* 44A4 800998A4 24030014 */  addiu      $v1, $zero, 0x14
/* 44A8 800998A8 0064001A */  div        $zero, $v1, $a0
/* 44AC 800998AC 14800002 */  bnez       $a0, .L800998B8
/* 44B0 800998B0 00000000 */   nop
/* 44B4 800998B4 0007000D */  break      7
.L800998B8:
/* 44B8 800998B8 2401FFFF */  addiu      $at, $zero, -0x1
/* 44BC 800998BC 14810004 */  bne        $a0, $at, .L800998D0
/* 44C0 800998C0 3C018000 */   lui       $at, (0x80000000 >> 16)
/* 44C4 800998C4 14610002 */  bne        $v1, $at, .L800998D0
/* 44C8 800998C8 00000000 */   nop
/* 44CC 800998CC 0006000D */  break      6
.L800998D0:
/* 44D0 800998D0 00001812 */  mflo       $v1
/* 44D4 800998D4 00000000 */  nop
/* 44D8 800998D8 00000000 */  nop
/* 44DC 800998DC 94C20020 */  lhu        $v0, 0x20($a2)
/* 44E0 800998E0 24420001 */  addiu      $v0, $v0, 0x1
/* 44E4 800998E4 A4C20020 */  sh         $v0, 0x20($a2)
/* 44E8 800998E8 00021400 */  sll        $v0, $v0, 16
/* 44EC 800998EC 00021403 */  sra        $v0, $v0, 16
/* 44F0 800998F0 0062182A */  slt        $v1, $v1, $v0
/* 44F4 800998F4 5460000A */  bnel       $v1, $zero, .L80099920
/* 44F8 800998F8 A4C00020 */   sh        $zero, 0x20($a2)
/* 44FC 800998FC 94C30024 */  lhu        $v1, 0x24($a2)
/* 4500 80099900 94C20002 */  lhu        $v0, 0x2($a2)
/* 4504 80099904 14620007 */  bne        $v1, $v0, .L80099924
/* 4508 80099908 24020002 */   addiu     $v0, $zero, 0x2
/* 450C 8009990C A4C30008 */  sh         $v1, 0x8($a2)
.L80099910:
/* 4510 80099910 A4C00020 */  sh         $zero, 0x20($a2)
/* 4514 80099914 08026649 */  j          .L80099924
/* 4518 80099918 A4C20022 */   sh        $v0, 0x22($a2)
.L8009991C:
/* 451C 8009991C A4C00020 */  sh         $zero, 0x20($a2)
.L80099920:
/* 4520 80099920 A4C00022 */  sh         $zero, 0x22($a2)
.L80099924:
/* 4524 80099924 C4C40014 */  lwc1       $f4, 0x14($a2)
/* 4528 80099928 44800000 */  mtc1       $zero, $f0
/* 452C 8009992C 00000000 */  nop
/* 4530 80099930 4604003C */  c.lt.s     $f0, $f4
/* 4534 80099934 00000000 */  nop
/* 4538 80099938 00000000 */  nop
/* 453C 8009993C 4502000B */  bc1fl      .L8009996C
/* 4540 80099940 46002007 */   neg.s     $f0, $f4
/* 4544 80099944 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 4548 80099948 44810000 */  mtc1       $at, $f0
/* 454C 8009994C 00000000 */  nop
/* 4550 80099950 4600203C */  c.lt.s     $f4, $f0
/* 4554 80099954 00000000 */  nop
/* 4558 80099958 00000000 */  nop
/* 455C 8009995C 45030022 */  bc1tl      .L800999E8
/* 4560 80099960 ACC00014 */   sw        $zero, 0x14($a2)
/* 4564 80099964 08026664 */  j          .L80099990
/* 4568 80099968 00000000 */   nop
.L8009996C:
/* 456C 8009996C 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 4570 80099970 44811000 */  mtc1       $at, $f2
/* 4574 80099974 00000000 */  nop
/* 4578 80099978 4602003C */  c.lt.s     $f0, $f2
/* 457C 8009997C 00000000 */  nop
/* 4580 80099980 45000003 */  bc1f       .L80099990
/* 4584 80099984 00000000 */   nop
/* 4588 80099988 0802667A */  j          .L800999E8
/* 458C 8009998C ACC00014 */   sw        $zero, 0x14($a2)
.L80099990:
/* 4590 80099990 C4C20014 */  lwc1       $f2, 0x14($a2)
/* 4594 80099994 44800000 */  mtc1       $zero, $f0
/* 4598 80099998 00000000 */  nop
/* 459C 8009999C 4602003C */  c.lt.s     $f0, $f2
/* 45A0 800999A0 00000000 */  nop
/* 45A4 800999A4 45000006 */  bc1f       .L800999C0
/* 45A8 800999A8 00000000 */   nop
/* 45AC 800999AC 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 45B0 800999B0 44810000 */  mtc1       $at, $f0
/* 45B4 800999B4 00000000 */  nop
/* 45B8 800999B8 08026679 */  j          .L800999E4
/* 45BC 800999BC 46001001 */   sub.s     $f0, $f2, $f0
.L800999C0:
/* 45C0 800999C0 4600103C */  c.lt.s     $f2, $f0
/* 45C4 800999C4 00000000 */  nop
/* 45C8 800999C8 00000000 */  nop
/* 45CC 800999CC 45020005 */  bc1fl      .L800999E4
/* 45D0 800999D0 46001001 */   sub.s     $f0, $f2, $f0
/* 45D4 800999D4 3C01C0E0 */  lui        $at, (0xC0E00000 >> 16)
/* 45D8 800999D8 44810000 */  mtc1       $at, $f0
/* 45DC 800999DC 00000000 */  nop
/* 45E0 800999E0 46001001 */  sub.s      $f0, $f2, $f0
.L800999E4:
/* 45E4 800999E4 E4C00014 */  swc1       $f0, 0x14($a2)
.L800999E8:
/* 45E8 800999E8 C4C40018 */  lwc1       $f4, 0x18($a2)
/* 45EC 800999EC 44800000 */  mtc1       $zero, $f0
/* 45F0 800999F0 00000000 */  nop
/* 45F4 800999F4 4604003C */  c.lt.s     $f0, $f4
/* 45F8 800999F8 00000000 */  nop
/* 45FC 800999FC 00000000 */  nop
/* 4600 80099A00 4502000B */  bc1fl      .L80099A30
/* 4604 80099A04 46002007 */   neg.s     $f0, $f4
/* 4608 80099A08 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 460C 80099A0C 44810000 */  mtc1       $at, $f0
/* 4610 80099A10 00000000 */  nop
/* 4614 80099A14 4600203C */  c.lt.s     $f4, $f0
/* 4618 80099A18 00000000 */  nop
/* 461C 80099A1C 00000000 */  nop
/* 4620 80099A20 45030022 */  bc1tl      .L80099AAC
/* 4624 80099A24 ACC00018 */   sw        $zero, 0x18($a2)
/* 4628 80099A28 08026695 */  j          .L80099A54
/* 462C 80099A2C 00000000 */   nop
.L80099A30:
/* 4630 80099A30 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 4634 80099A34 44811000 */  mtc1       $at, $f2
/* 4638 80099A38 00000000 */  nop
/* 463C 80099A3C 4602003C */  c.lt.s     $f0, $f2
/* 4640 80099A40 00000000 */  nop
/* 4644 80099A44 45000003 */  bc1f       .L80099A54
/* 4648 80099A48 00000000 */   nop
/* 464C 80099A4C 080266AB */  j          .L80099AAC
/* 4650 80099A50 ACC00018 */   sw        $zero, 0x18($a2)
.L80099A54:
/* 4654 80099A54 C4C20018 */  lwc1       $f2, 0x18($a2)
/* 4658 80099A58 44800000 */  mtc1       $zero, $f0
/* 465C 80099A5C 00000000 */  nop
/* 4660 80099A60 4602003C */  c.lt.s     $f0, $f2
/* 4664 80099A64 00000000 */  nop
/* 4668 80099A68 45000006 */  bc1f       .L80099A84
/* 466C 80099A6C 00000000 */   nop
/* 4670 80099A70 3C0140E0 */  lui        $at, (0x40E00000 >> 16)
/* 4674 80099A74 44810000 */  mtc1       $at, $f0
/* 4678 80099A78 00000000 */  nop
/* 467C 80099A7C 080266AA */  j          .L80099AA8
/* 4680 80099A80 46001001 */   sub.s     $f0, $f2, $f0
.L80099A84:
/* 4684 80099A84 4600103C */  c.lt.s     $f2, $f0
/* 4688 80099A88 00000000 */  nop
/* 468C 80099A8C 00000000 */  nop
/* 4690 80099A90 45020005 */  bc1fl      .L80099AA8
/* 4694 80099A94 46001001 */   sub.s     $f0, $f2, $f0
/* 4698 80099A98 3C01C0E0 */  lui        $at, (0xC0E00000 >> 16)
/* 469C 80099A9C 44810000 */  mtc1       $at, $f0
/* 46A0 80099AA0 00000000 */  nop
/* 46A4 80099AA4 46001001 */  sub.s      $f0, $f2, $f0
.L80099AA8:
/* 46A8 80099AA8 E4C00018 */  swc1       $f0, 0x18($a2)
.L80099AAC:
/* 46AC 80099AAC C4C40014 */  lwc1       $f4, 0x14($a2)
/* 46B0 80099AB0 46042082 */  mul.s      $f2, $f4, $f4
/* 46B4 80099AB4 44803000 */  mtc1       $zero, $f6
/* 46B8 80099AB8 00000000 */  nop
/* 46BC 80099ABC 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 46C0 80099AC0 44810000 */  mtc1       $at, $f0
/* 46C4 80099AC4 00000000 */  nop
/* 46C8 80099AC8 4604303C */  c.lt.s     $f6, $f4
/* 46CC 80099ACC 00000000 */  nop
/* 46D0 80099AD0 00000000 */  nop
/* 46D4 80099AD4 45000003 */  bc1f       .L80099AE4
/* 46D8 80099AD8 46001083 */   div.s     $f2, $f2, $f0
/* 46DC 80099ADC 080266BF */  j          .L80099AFC
/* 46E0 80099AE0 46001186 */   mov.s     $f6, $f2
.L80099AE4:
/* 46E4 80099AE4 4606203C */  c.lt.s     $f4, $f6
/* 46E8 80099AE8 00000000 */  nop
/* 46EC 80099AEC 00000000 */  nop
/* 46F0 80099AF0 45020002 */  bc1fl      .L80099AFC
/* 46F4 80099AF4 46061182 */   mul.s     $f6, $f2, $f6
/* 46F8 80099AF8 46001187 */  neg.s      $f6, $f2
.L80099AFC:
/* 46FC 80099AFC C4C40018 */  lwc1       $f4, 0x18($a2)
/* 4700 80099B00 46042082 */  mul.s      $f2, $f4, $f4
/* 4704 80099B04 3C0143B4 */  lui        $at, (0x43B40000 >> 16)
/* 4708 80099B08 44810000 */  mtc1       $at, $f0
/* 470C 80099B0C 00000000 */  nop
/* 4710 80099B10 44804000 */  mtc1       $zero, $f8
/* 4714 80099B14 00000000 */  nop
/* 4718 80099B18 4604403C */  c.lt.s     $f8, $f4
/* 471C 80099B1C 00000000 */  nop
/* 4720 80099B20 00000000 */  nop
/* 4724 80099B24 E4C60014 */  swc1       $f6, 0x14($a2)
/* 4728 80099B28 45010007 */  bc1t       .L80099B48
/* 472C 80099B2C 46001083 */   div.s     $f2, $f2, $f0
/* 4730 80099B30 4608203C */  c.lt.s     $f4, $f8
/* 4734 80099B34 00000000 */  nop
/* 4738 80099B38 00000000 */  nop
/* 473C 80099B3C 45020002 */  bc1fl      .L80099B48
/* 4740 80099B40 46081082 */   mul.s     $f2, $f2, $f8
/* 4744 80099B44 46001087 */  neg.s      $f2, $f2
.L80099B48:
/* 4748 80099B48 E4C20018 */  swc1       $f2, 0x18($a2)
/* 474C 80099B4C 27BD0010 */  addiu      $sp, $sp, 0x10
/* 4750 80099B50 03E00008 */  jr         $ra
/* 4754 80099B54 00000000 */   nop
.size func_8009961C, . - func_8009961C