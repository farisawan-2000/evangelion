.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

.section .text, "ax"

glabel func_80047460_139260
/* 139260 80047460 3C028005 */  lui        $v0, %hi(D_80052310)
/* 139264 80047464 90422310 */  lbu        $v0, %lo(D_80052310)($v0)
/* 139268 80047468 27BDFFC0 */  addiu      $sp, $sp, -0x40
/* 13926C 8004746C AFB1001C */  sw         $s1, 0x1c($sp)
/* 139270 80047470 00808821 */  addu       $s1, $a0, $zero
/* 139274 80047474 AFBF0038 */  sw         $ra, 0x38($sp)
/* 139278 80047478 AFB70034 */  sw         $s7, 0x34($sp)
/* 13927C 8004747C AFB60030 */  sw         $s6, 0x30($sp)
/* 139280 80047480 AFB5002C */  sw         $s5, 0x2c($sp)
/* 139284 80047484 AFB40028 */  sw         $s4, 0x28($sp)
/* 139288 80047488 AFB30024 */  sw         $s3, 0x24($sp)
/* 13928C 8004748C AFB20020 */  sw         $s2, 0x20($sp)
/* 139290 80047490 10400094 */  beqz       $v0, .L800476E4
/* 139294 80047494 AFB00018 */   sw        $s0, 0x18($sp)
/* 139298 80047498 0C00975D */  jal        func_80025D74_117B74
/* 13929C 8004749C 00000000 */   nop
/* 1392A0 800474A0 3C048017 */  lui        $a0, %hi(D_801765BB)
/* 1392A4 800474A4 0C02A626 */  jal        func_800A9898
/* 1392A8 800474A8 808465BB */   lb        $a0, %lo(D_801765BB)($a0)
/* 1392AC 800474AC 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 1392B0 800474B0 0C02B4A0 */  jal        func_800AD280
/* 1392B4 800474B4 AC209BBC */   sw        $zero, %lo(D_80149BBC)($at)
/* 1392B8 800474B8 0C026B70 */  jal        func_8009ADC0
/* 1392BC 800474BC 00000000 */   nop
/* 1392C0 800474C0 0C0E61CC */  jal        func_80398730
/* 1392C4 800474C4 00000000 */   nop
/* 1392C8 800474C8 0C0E64E0 */  jal        func_80399380
/* 1392CC 800474CC 00000000 */   nop
/* 1392D0 800474D0 0C026449 */  jal        func_80099124
/* 1392D4 800474D4 24040003 */   addiu     $a0, $zero, 3
/* 1392D8 800474D8 3C038015 */  lui        $v1, %hi(D_8014CF90)
/* 1392DC 800474DC 9463CF90 */  lhu        $v1, %lo(D_8014CF90)($v1)
/* 1392E0 800474E0 3C048006 */  lui        $a0, %hi(D_8005E1E0)
/* 1392E4 800474E4 2484E1E0 */  addiu      $a0, $a0, %lo(D_8005E1E0)
/* 1392E8 800474E8 24060001 */  addiu      $a2, $zero, 1
/* 1392EC 800474EC 24050002 */  addiu      $a1, $zero, 2
/* 1392F0 800474F0 2402FFFF */  addiu      $v0, $zero, -1
/* 1392F4 800474F4 A4860000 */  sh         $a2, ($a0)
/* 1392F8 800474F8 3C018006 */  lui        $at, %hi(D_8005E1E2)
/* 1392FC 800474FC A425E1E2 */  sh         $a1, %lo(D_8005E1E2)($at)
/* 139300 80047500 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 139304 80047504 A420E12C */  sh         $zero, %lo(D_8005E12C)($at)
/* 139308 80047508 3C018006 */  lui        $at, %hi(D_8005E12E)
/* 13930C 8004750C A422E12E */  sh         $v0, %lo(D_8005E12E)($at)
/* 139310 80047510 3C018006 */  lui        $at, %hi(D_8005E124)
/* 139314 80047514 A420E124 */  sh         $zero, %lo(D_8005E124)($at)
/* 139318 80047518 3C018006 */  lui        $at, %hi(D_8005E126)
/* 13931C 8004751C A420E126 */  sh         $zero, %lo(D_8005E126)($at)
/* 139320 80047520 30620010 */  andi       $v0, $v1, 0x10
/* 139324 80047524 10400024 */  beqz       $v0, .L800475B8
/* 139328 80047528 00000000 */   nop
/* 13932C 8004752C 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 139330 80047530 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 139334 80047534 10400020 */  beqz       $v0, .L800475B8
/* 139338 80047538 3063000F */   andi      $v1, $v1, 0xf
/* 13933C 8004753C 24020002 */  addiu      $v0, $zero, 2
/* 139340 80047540 10620010 */  beq        $v1, $v0, .L80047584
/* 139344 80047544 28620003 */   slti      $v0, $v1, 3
/* 139348 80047548 10400005 */  beqz       $v0, .L80047560
/* 13934C 8004754C 24020001 */   addiu     $v0, $zero, 1
/* 139350 80047550 1062000E */  beq        $v1, $v0, .L8004758C
/* 139354 80047554 24020003 */   addiu     $v0, $zero, 3
/* 139358 80047558 08011D64 */  j          .L80047590
/* 13935C 8004755C 00000000 */   nop
.L80047560:
/* 139360 80047560 24020004 */  addiu      $v0, $zero, 4
/* 139364 80047564 10620005 */  beq        $v1, $v0, .L8004757C
/* 139368 80047568 24020008 */   addiu     $v0, $zero, 8
/* 13936C 8004756C 50620008 */  beql       $v1, $v0, .L80047590
/* 139370 80047570 A4800000 */   sh        $zero, ($a0)
/* 139374 80047574 08011D64 */  j          .L80047590
/* 139378 80047578 00000000 */   nop
.L8004757C:
/* 13937C 8004757C 08011D64 */  j          .L80047590
/* 139380 80047580 A4860000 */   sh        $a2, ($a0)
.L80047584:
/* 139384 80047584 08011D64 */  j          .L80047590
/* 139388 80047588 A4850000 */   sh        $a1, ($a0)
.L8004758C:
/* 13938C 8004758C A4820000 */  sh         $v0, ($a0)
.L80047590:
/* 139390 80047590 3C028015 */  lui        $v0, %hi(D_8014CF90)
/* 139394 80047594 9442CF90 */  lhu        $v0, %lo(D_8014CF90)($v0)
/* 139398 80047598 30422000 */  andi       $v0, $v0, 0x2000
/* 13939C 8004759C 10400004 */  beqz       $v0, .L800475B0
/* 1393A0 800475A0 2402FFFF */   addiu     $v0, $zero, -1
/* 1393A4 800475A4 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 1393A8 800475A8 08011D6E */  j          .L800475B8
/* 1393AC 800475AC A422E12C */   sh        $v0, %lo(D_8005E12C)($at)
.L800475B0:
/* 1393B0 800475B0 3C018006 */  lui        $at, %hi(D_8005E12C)
/* 1393B4 800475B4 A420E12C */  sh         $zero, %lo(D_8005E12C)($at)
.L800475B8:
/* 1393B8 800475B8 3C038015 */  lui        $v1, %hi(D_8014CFB8)
/* 1393BC 800475BC 9463CFB8 */  lhu        $v1, %lo(D_8014CFB8)($v1)
/* 1393C0 800475C0 30620010 */  andi       $v0, $v1, 0x10
/* 1393C4 800475C4 10400023 */  beqz       $v0, .L80047654
/* 1393C8 800475C8 00000000 */   nop
/* 1393CC 800475CC 3C028015 */  lui        $v0, %hi(D_80149D78)
/* 1393D0 800475D0 8C429D78 */  lw         $v0, %lo(D_80149D78)($v0)
/* 1393D4 800475D4 1040001F */  beqz       $v0, .L80047654
/* 1393D8 800475D8 3063000F */   andi      $v1, $v1, 0xf
/* 1393DC 800475DC 24020002 */  addiu      $v0, $zero, 2
/* 1393E0 800475E0 10620011 */  beq        $v1, $v0, .L80047628
/* 1393E4 800475E4 28620003 */   slti      $v0, $v1, 3
/* 1393E8 800475E8 10400005 */  beqz       $v0, .L80047600
/* 1393EC 800475EC 24020001 */   addiu     $v0, $zero, 1
/* 1393F0 800475F0 1062000E */  beq        $v1, $v0, .L8004762C
/* 1393F4 800475F4 24020003 */   addiu     $v0, $zero, 3
/* 1393F8 800475F8 08011D8D */  j          .L80047634
/* 1393FC 800475FC 00000000 */   nop
.L80047600:
/* 139400 80047600 24020004 */  addiu      $v0, $zero, 4
/* 139404 80047604 10620006 */  beq        $v1, $v0, .L80047620
/* 139408 80047608 24020008 */   addiu     $v0, $zero, 8
/* 13940C 8004760C 14620009 */  bne        $v1, $v0, .L80047634
/* 139410 80047610 00000000 */   nop
/* 139414 80047614 3C018006 */  lui        $at, %hi(D_8005E1E2)
/* 139418 80047618 08011D8D */  j          .L80047634
/* 13941C 8004761C A420E1E2 */   sh        $zero, %lo(D_8005E1E2)($at)
.L80047620:
/* 139420 80047620 08011D8B */  j          .L8004762C
/* 139424 80047624 24020001 */   addiu     $v0, $zero, 1
.L80047628:
/* 139428 80047628 24020002 */  addiu      $v0, $zero, 2
.L8004762C:
/* 13942C 8004762C 3C018006 */  lui        $at, %hi(D_8005E1E2)
/* 139430 80047630 A422E1E2 */  sh         $v0, %lo(D_8005E1E2)($at)
.L80047634:
/* 139434 80047634 3C028015 */  lui        $v0, %hi(D_8014CFB8)
/* 139438 80047638 9442CFB8 */  lhu        $v0, %lo(D_8014CFB8)($v0)
/* 13943C 8004763C 30422000 */  andi       $v0, $v0, 0x2000
/* 139440 80047640 14400002 */  bnez       $v0, .L8004764C
/* 139444 80047644 24020001 */   addiu     $v0, $zero, 1
/* 139448 80047648 2402FFFF */  addiu      $v0, $zero, -1
.L8004764C:
/* 13944C 8004764C 3C018006 */  lui        $at, %hi(D_8005E12E)
/* 139450 80047650 A422E12E */  sh         $v0, %lo(D_8005E12E)($at)
.L80047654:
/* 139454 80047654 0C009BCC */  jal        func_80026F30_118D30
/* 139458 80047658 24100001 */   addiu     $s0, $zero, 1
/* 13945C 8004765C 3C048039 */  lui        $a0, %hi(D_80396B60)
/* 139460 80047660 24846B60 */  addiu      $a0, $a0, %lo(D_80396B60)
/* 139464 80047664 00002821 */  addu       $a1, $zero, $zero
/* 139468 80047668 24060064 */  addiu      $a2, $zero, 0x64
/* 13946C 8004766C 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 139470 80047670 AC309FA8 */  sw         $s0, %lo(D_80149FA8)($at)
/* 139474 80047674 0C025D06 */  jal        func_80097418
/* 139478 80047678 24070001 */   addiu     $a3, $zero, 1
/* 13947C 8004767C 3C018015 */  lui        $at, %hi(D_80149EC4)
/* 139480 80047680 AC229EC4 */  sw         $v0, %lo(D_80149EC4)($at)
/* 139484 80047684 0C02A5F7 */  jal        func_800A97DC
/* 139488 80047688 24040061 */   addiu     $a0, $zero, 0x61
/* 13948C 8004768C 0C02A5D2 */  jal        func_800A9748
/* 139490 80047690 24040001 */   addiu     $a0, $zero, 1
/* 139494 80047694 16200004 */  bnez       $s1, .L800476A8
/* 139498 80047698 24040015 */   addiu     $a0, $zero, 0x15
/* 13949C 8004769C 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 1394A0 800476A0 08011DB3 */  j          .L800476CC
/* 1394A4 800476A4 AC30DFB0 */   sw        $s0, %lo(D_8005DFB0)($at)
.L800476A8:
/* 1394A8 800476A8 00002821 */  addu       $a1, $zero, $zero
/* 1394AC 800476AC 3C078015 */  lui        $a3, %hi(D_80149E2B)
/* 1394B0 800476B0 90E79E2B */  lbu        $a3, %lo(D_80149E2B)($a3)
/* 1394B4 800476B4 00003021 */  addu       $a2, $zero, $zero
/* 1394B8 800476B8 24020004 */  addiu      $v0, $zero, 4
/* 1394BC 800476BC 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 1394C0 800476C0 AC22DFB0 */  sw         $v0, %lo(D_8005DFB0)($at)
/* 1394C4 800476C4 0C026C9A */  jal        func_8009B268
/* 1394C8 800476C8 AFA00010 */   sw        $zero, 0x10($sp)
.L800476CC:
/* 1394CC 800476CC 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 1394D0 800476D0 AC20DFB4 */  sw         $zero, %lo(D_8005DFB4)($at)
/* 1394D4 800476D4 3C018006 */  lui        $at, %hi(D_8005DFC4)
/* 1394D8 800476D8 A020DFC4 */  sb         $zero, %lo(D_8005DFC4)($at)
/* 1394DC 800476DC 3C018005 */  lui        $at, %hi(D_80052310)
/* 1394E0 800476E0 A0202310 */  sb         $zero, %lo(D_80052310)($at)
.L800476E4:
/* 1394E4 800476E4 0000A021 */  addu       $s4, $zero, $zero
/* 1394E8 800476E8 24110001 */  addiu      $s1, $zero, 1
/* 1394EC 800476EC 3C178006 */  lui        $s7, %hi(D_8005E1E0)
/* 1394F0 800476F0 26F7E1E0 */  addiu      $s7, $s7, %lo(D_8005E1E0)
/* 1394F4 800476F4 3C168039 */  lui        $s6, %hi(D_80390F50)
/* 1394F8 800476F8 26D60F50 */  addiu      $s6, $s6, %lo(D_80390F50)
/* 1394FC 800476FC 3C128017 */  lui        $s2, %hi(D_8016D07C)
/* 139500 80047700 2652D07C */  addiu      $s2, $s2, %lo(D_8016D07C)
/* 139504 80047704 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 139508 80047708 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 13950C 8004770C 3C138015 */  lui        $s3, %hi(D_80149F20)
/* 139510 80047710 26739F20 */  addiu      $s3, $s3, %lo(D_80149F20)
/* 139514 80047714 26750008 */  addiu      $s5, $s3, 8
/* 139518 80047718 24420001 */  addiu      $v0, $v0, 1
/* 13951C 8004771C 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 139520 80047720 AC22DFB4 */  sw         $v0, %lo(D_8005DFB4)($at)
.L80047724:
/* 139524 80047724 3C028006 */  lui        $v0, %hi(D_8005DFB0)
/* 139528 80047728 8C42DFB0 */  lw         $v0, %lo(D_8005DFB0)($v0)
/* 13952C 8004772C 2443FFFF */  addiu      $v1, $v0, -1
/* 139530 80047730 2C62000C */  sltiu      $v0, $v1, 0xc
/* 139534 80047734 1040016E */  beqz       $v0, .L80047CF0
/* 139538 80047738 00008021 */   addu      $s0, $zero, $zero
/* 13953C 8004773C 00031080 */  sll        $v0, $v1, 2
/* 139540 80047740 3C018006 */  lui        $at, %hi(D_8005CD88)
/* 139544 80047744 00220821 */  addu       $at, $at, $v0
/* 139548 80047748 8C22CD88 */  lw         $v0, %lo(D_8005CD88)($at)
/* 13954C 8004774C 00400008 */  jr         $v0
/* 139550 80047750 00000000 */   nop
/* 139554 80047754 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 139558 80047758 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 13955C 8004775C 14510013 */  bne        $v0, $s1, .L800477AC
/* 139560 80047760 28420104 */   slti      $v0, $v0, 0x104
/* 139564 80047764 24040015 */  addiu      $a0, $zero, 0x15
/* 139568 80047768 3C078015 */  lui        $a3, %hi(D_80149E2B)
/* 13956C 8004776C 90E79E2B */  lbu        $a3, %lo(D_80149E2B)($a3)
/* 139570 80047770 2405FFFF */  addiu      $a1, $zero, -1
/* 139574 80047774 00003021 */  addu       $a2, $zero, $zero
/* 139578 80047778 0C026C9A */  jal        func_8009B268
/* 13957C 8004777C AFA00010 */   sw        $zero, 0x10($sp)
/* 139580 80047780 3C048003 */  lui        $a0, %hi(D_80035A50_127850)
/* 139584 80047784 24845A50 */  addiu      $a0, $a0, %lo(D_80035A50_127850)
/* 139588 80047788 00002821 */  addu       $a1, $zero, $zero
/* 13958C 8004778C 2406012C */  addiu      $a2, $zero, 0x12c
/* 139590 80047790 0C025D06 */  jal        func_80097418
/* 139594 80047794 24070001 */   addiu     $a3, $zero, 1
/* 139598 80047798 3C018006 */  lui        $at, %hi(func_8005DFC0_ACF70)
/* 13959C 8004779C AC22DFC0 */  sw         $v0, %lo(func_8005DFC0_ACF70)($at)
/* 1395A0 800477A0 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 1395A4 800477A4 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 1395A8 800477A8 28420104 */  slti       $v0, $v0, 0x104
.L800477AC:
/* 1395AC 800477AC 10400007 */  beqz       $v0, .L800477CC
/* 1395B0 800477B0 00000000 */   nop
/* 1395B4 800477B4 0C013904 */  jal        func_8004E410_140210
/* 1395B8 800477B8 24040001 */   addiu     $a0, $zero, 1
/* 1395BC 800477BC 14510153 */  bne        $v0, $s1, .L80047D0C
/* 1395C0 800477C0 24020002 */   addiu     $v0, $zero, 2
/* 1395C4 800477C4 08011F2B */  j          .L80047CAC
/* 1395C8 800477C8 24100001 */   addiu     $s0, $zero, 1
.L800477CC:
/* 1395CC 800477CC 0C013904 */  jal        func_8004E410_140210
/* 1395D0 800477D0 00002021 */   addu      $a0, $zero, $zero
/* 1395D4 800477D4 1451014D */  bne        $v0, $s1, .L80047D0C
/* 1395D8 800477D8 24020002 */   addiu     $v0, $zero, 2
/* 1395DC 800477DC 08011F2B */  j          .L80047CAC
/* 1395E0 800477E0 24100001 */   addiu     $s0, $zero, 1
/* 1395E4 800477E4 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 1395E8 800477E8 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 1395EC 800477EC 28420028 */  slti       $v0, $v0, 0x28
/* 1395F0 800477F0 1040000B */  beqz       $v0, .L80047820
/* 1395F4 800477F4 00000000 */   nop
/* 1395F8 800477F8 0C013C14 */  jal        func_8004F050_140E50
/* 1395FC 800477FC 24040001 */   addiu     $a0, $zero, 1
/* 139600 80047800 14510142 */  bne        $v0, $s1, .L80047D0C
/* 139604 80047804 00000000 */   nop
/* 139608 80047808 3C048006 */  lui        $a0, %hi(func_8005DFC0_ACF70)
/* 13960C 8004780C 8C84DFC0 */  lw         $a0, %lo(func_8005DFC0_ACF70)($a0)
/* 139610 80047810 0C025D58 */  jal        func_80097560
/* 139614 80047814 24100001 */   addiu     $s0, $zero, 1
/* 139618 80047818 08011F2B */  j          .L80047CAC
/* 13961C 8004781C 24020003 */   addiu     $v0, $zero, 3
.L80047820:
/* 139620 80047820 0C013C14 */  jal        func_8004F050_140E50
/* 139624 80047824 00002021 */   addu      $a0, $zero, $zero
/* 139628 80047828 14510138 */  bne        $v0, $s1, .L80047D0C
/* 13962C 8004782C 00000000 */   nop
/* 139630 80047830 3C048006 */  lui        $a0, %hi(func_8005DFC0_ACF70)
/* 139634 80047834 8C84DFC0 */  lw         $a0, %lo(func_8005DFC0_ACF70)($a0)
/* 139638 80047838 0C025D58 */  jal        func_80097560
/* 13963C 8004783C 24100001 */   addiu     $s0, $zero, 1
/* 139640 80047840 08011F2B */  j          .L80047CAC
/* 139644 80047844 24020003 */   addiu     $v0, $zero, 3
/* 139648 80047848 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 13964C 8004784C 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 139650 80047850 14510014 */  bne        $v0, $s1, .L800478A4
/* 139654 80047854 284200A0 */   slti      $v0, $v0, 0xa0
/* 139658 80047858 3C048003 */  lui        $a0, %hi(D_80035620_127420)
/* 13965C 8004785C 24845620 */  addiu      $a0, $a0, %lo(D_80035620_127420)
/* 139660 80047860 00002821 */  addu       $a1, $zero, $zero
/* 139664 80047864 2406012C */  addiu      $a2, $zero, 0x12c
/* 139668 80047868 0C025D06 */  jal        func_80097418
/* 13966C 8004786C 24070001 */   addiu     $a3, $zero, 1
/* 139670 80047870 3C048003 */  lui        $a0, %hi(D_80035A50_127850)
/* 139674 80047874 24845A50 */  addiu      $a0, $a0, %lo(D_80035A50_127850)
/* 139678 80047878 00002821 */  addu       $a1, $zero, $zero
/* 13967C 8004787C 2406012C */  addiu      $a2, $zero, 0x12c
/* 139680 80047880 3C018006 */  lui        $at, %hi(D_8005DFBC)
/* 139684 80047884 AC22DFBC */  sw         $v0, %lo(D_8005DFBC)($at)
/* 139688 80047888 0C025D06 */  jal        func_80097418
/* 13968C 8004788C 24070001 */   addiu     $a3, $zero, 1
/* 139690 80047890 3C018006 */  lui        $at, %hi(func_8005DFC0_ACF70)
/* 139694 80047894 AC22DFC0 */  sw         $v0, %lo(func_8005DFC0_ACF70)($at)
/* 139698 80047898 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 13969C 8004789C 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 1396A0 800478A0 284200A0 */  slti       $v0, $v0, 0xa0
.L800478A4:
/* 1396A4 800478A4 1040000E */  beqz       $v0, .L800478E0
/* 1396A8 800478A8 00000000 */   nop
/* 1396AC 800478AC 0C013CCC */  jal        func_8004F330_141130
/* 1396B0 800478B0 24040001 */   addiu     $a0, $zero, 1
/* 1396B4 800478B4 14510115 */  bne        $v0, $s1, .L80047D0C
/* 1396B8 800478B8 00000000 */   nop
/* 1396BC 800478BC 3C048006 */  lui        $a0, %hi(D_8005DFBC)
/* 1396C0 800478C0 8C84DFBC */  lw         $a0, %lo(D_8005DFBC)($a0)
/* 1396C4 800478C4 0C025D58 */  jal        func_80097560
/* 1396C8 800478C8 24100001 */   addiu     $s0, $zero, 1
/* 1396CC 800478CC 3C048006 */  lui        $a0, %hi(func_8005DFC0_ACF70)
/* 1396D0 800478D0 0C025D58 */  jal        func_80097560
/* 1396D4 800478D4 8C84DFC0 */   lw        $a0, %lo(func_8005DFC0_ACF70)($a0)
/* 1396D8 800478D8 08011F2B */  j          .L80047CAC
/* 1396DC 800478DC 24020004 */   addiu     $v0, $zero, 4
.L800478E0:
/* 1396E0 800478E0 0C013CCC */  jal        func_8004F330_141130
/* 1396E4 800478E4 00002021 */   addu      $a0, $zero, $zero
/* 1396E8 800478E8 14510108 */  bne        $v0, $s1, .L80047D0C
/* 1396EC 800478EC 00000000 */   nop
/* 1396F0 800478F0 3C048006 */  lui        $a0, %hi(D_8005DFBC)
/* 1396F4 800478F4 8C84DFBC */  lw         $a0, %lo(D_8005DFBC)($a0)
/* 1396F8 800478F8 0C025D58 */  jal        func_80097560
/* 1396FC 800478FC 24100001 */   addiu     $s0, $zero, 1
/* 139700 80047900 3C048006 */  lui        $a0, %hi(func_8005DFC0_ACF70)
/* 139704 80047904 0C025D58 */  jal        func_80097560
/* 139708 80047908 8C84DFC0 */   lw        $a0, %lo(func_8005DFC0_ACF70)($a0)
/* 13970C 8004790C 08011F2B */  j          .L80047CAC
/* 139710 80047910 24020004 */   addiu     $v0, $zero, 4
/* 139714 80047914 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 139718 80047918 AC319BBC */  sw         $s1, %lo(D_80149BBC)($at)
/* 13971C 8004791C 0C025C49 */  jal        func_80097124
/* 139720 80047920 02602021 */   addu      $a0, $s3, $zero
/* 139724 80047924 86E20000 */  lh         $v0, ($s7)
/* 139728 80047928 00021040 */  sll        $v0, $v0, 1
/* 13972C 8004792C 3C058005 */  lui        $a1, %hi(D_80052300)
/* 139730 80047930 00A22821 */  addu       $a1, $a1, $v0
/* 139734 80047934 94A52300 */  lhu        $a1, %lo(D_80052300)($a1)
/* 139738 80047938 0C025C4C */  jal        func_80097130
/* 13973C 8004793C 02602021 */   addu      $a0, $s3, $zero
/* 139740 80047940 02C02021 */  addu       $a0, $s6, $zero
/* 139744 80047944 02602821 */  addu       $a1, $s3, $zero
/* 139748 80047948 2406012C */  addiu      $a2, $zero, 0x12c
/* 13974C 8004794C 0C025D06 */  jal        func_80097418
/* 139750 80047950 24070001 */   addiu     $a3, $zero, 1
/* 139754 80047954 02A02021 */  addu       $a0, $s5, $zero
/* 139758 80047958 0C025C49 */  jal        func_80097124
/* 13975C 8004795C AE420000 */   sw        $v0, ($s2)
/* 139760 80047960 86E20002 */  lh         $v0, 2($s7)
/* 139764 80047964 00021040 */  sll        $v0, $v0, 1
/* 139768 80047968 3C058005 */  lui        $a1, %hi(func_80052308_FB818)
/* 13976C 8004796C 00A22821 */  addu       $a1, $a1, $v0
/* 139770 80047970 94A52308 */  lhu        $a1, %lo(func_80052308_FB818)($a1)
/* 139774 80047974 24100001 */  addiu      $s0, $zero, 1
/* 139778 80047978 0C025C4C */  jal        func_80097130
/* 13977C 8004797C 02A02021 */   addu      $a0, $s5, $zero
/* 139780 80047980 02C02021 */  addu       $a0, $s6, $zero
/* 139784 80047984 02A02821 */  addu       $a1, $s5, $zero
/* 139788 80047988 2406012C */  addiu      $a2, $zero, 0x12c
/* 13978C 8004798C 0C025D06 */  jal        func_80097418
/* 139790 80047990 24070001 */   addiu     $a3, $zero, 1
/* 139794 80047994 AE420004 */  sw         $v0, 4($s2)
/* 139798 80047998 08011F2B */  j          .L80047CAC
/* 13979C 8004799C 24020005 */   addiu     $v0, $zero, 5
/* 1397A0 800479A0 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 1397A4 800479A4 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 1397A8 800479A8 14510006 */  bne        $v0, $s1, .L800479C4
/* 1397AC 800479AC 00002821 */   addu      $a1, $zero, $zero
/* 1397B0 800479B0 3C048003 */  lui        $a0, %hi(D_80035170_126F70)
/* 1397B4 800479B4 24845170 */  addiu      $a0, $a0, %lo(D_80035170_126F70)
/* 1397B8 800479B8 2406012C */  addiu      $a2, $zero, 0x12c
/* 1397BC 800479BC 0C025D06 */  jal        func_80097418
/* 1397C0 800479C0 24070001 */   addiu     $a3, $zero, 1
.L800479C4:
/* 1397C4 800479C4 0C012BC4 */  jal        func_8004AF10_13CD10
/* 1397C8 800479C8 24040001 */   addiu     $a0, $zero, 1
/* 1397CC 800479CC 145100CF */  bne        $v0, $s1, .L80047D0C
/* 1397D0 800479D0 00000000 */   nop
/* 1397D4 800479D4 8E440000 */  lw         $a0, ($s2)
/* 1397D8 800479D8 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 1397DC 800479DC AC20DFB4 */  sw         $zero, %lo(D_8005DFB4)($at)
/* 1397E0 800479E0 0C0E47CB */  jal        func_80391F2C
/* 1397E4 800479E4 24100001 */   addiu     $s0, $zero, 1
/* 1397E8 800479E8 28420002 */  slti       $v0, $v0, 2
/* 1397EC 800479EC 1440006E */  bnez       $v0, .L80047BA8
/* 1397F0 800479F0 2402000B */   addiu     $v0, $zero, 0xb
/* 1397F4 800479F4 8E440004 */  lw         $a0, 4($s2)
/* 1397F8 800479F8 0C0E47CB */  jal        func_80391F2C
/* 1397FC 800479FC 00000000 */   nop
/* 139800 80047A00 28420002 */  slti       $v0, $v0, 2
/* 139804 80047A04 14400068 */  bnez       $v0, .L80047BA8
/* 139808 80047A08 2402000B */   addiu     $v0, $zero, 0xb
/* 13980C 80047A0C 24020006 */  addiu      $v0, $zero, 6
/* 139810 80047A10 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 139814 80047A14 08011F43 */  j          .L80047D0C
/* 139818 80047A18 AC22DFB0 */   sw        $v0, %lo(D_8005DFB0)($at)
/* 13981C 80047A1C 0C011FE4 */  jal        func_80047F90_139D90
/* 139820 80047A20 24040001 */   addiu     $a0, $zero, 1
/* 139824 80047A24 145100B9 */  bne        $v0, $s1, .L80047D0C
/* 139828 80047A28 00000000 */   nop
/* 13982C 80047A2C 3C028006 */  lui        $v0, %hi(D_8005E13C)
/* 139830 80047A30 9442E13C */  lhu        $v0, %lo(D_8005E13C)($v0)
/* 139834 80047A34 3C038006 */  lui        $v1, %hi(D_8005E0C2)
/* 139838 80047A38 9463E0C2 */  lhu        $v1, %lo(D_8005E0C2)($v1)
/* 13983C 80047A3C 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 139840 80047A40 AC20DFB4 */  sw         $zero, %lo(D_8005DFB4)($at)
/* 139844 80047A44 00021100 */  sll        $v0, $v0, 4
/* 139848 80047A48 00431821 */  addu       $v1, $v0, $v1
/* 13984C 80047A4C 24020022 */  addiu      $v0, $zero, 0x22
/* 139850 80047A50 1062000F */  beq        $v1, $v0, .L80047A90
/* 139854 80047A54 24100001 */   addiu     $s0, $zero, 1
/* 139858 80047A58 28620023 */  slti       $v0, $v1, 0x23
/* 13985C 80047A5C 10400005 */  beqz       $v0, .L80047A74
/* 139860 80047A60 24020013 */   addiu     $v0, $zero, 0x13
/* 139864 80047A64 10620007 */  beq        $v1, $v0, .L80047A84
/* 139868 80047A68 2402000A */   addiu     $v0, $zero, 0xa
/* 13986C 80047A6C 08011EA8 */  j          .L80047AA0
/* 139870 80047A70 24020007 */   addiu     $v0, $zero, 7
.L80047A74:
/* 139874 80047A74 24020031 */  addiu      $v0, $zero, 0x31
/* 139878 80047A78 14620009 */  bne        $v1, $v0, .L80047AA0
/* 13987C 80047A7C 24020007 */   addiu     $v0, $zero, 7
/* 139880 80047A80 2402000A */  addiu      $v0, $zero, 0xa
.L80047A84:
/* 139884 80047A84 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 139888 80047A88 08011F43 */  j          .L80047D0C
/* 13988C 80047A8C AC22DFB0 */   sw        $v0, %lo(D_8005DFB0)($at)
.L80047A90:
/* 139890 80047A90 24020008 */  addiu      $v0, $zero, 8
/* 139894 80047A94 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 139898 80047A98 08011F43 */  j          .L80047D0C
/* 13989C 80047A9C AC22DFB0 */   sw        $v0, %lo(D_8005DFB0)($at)
.L80047AA0:
/* 1398A0 80047AA0 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 1398A4 80047AA4 08011F43 */  j          .L80047D0C
/* 1398A8 80047AA8 AC22DFB0 */   sw        $v0, %lo(D_8005DFB0)($at)
/* 1398AC 80047AAC 0C0121F0 */  jal        func_800487C0_13A5C0
/* 1398B0 80047AB0 24040001 */   addiu     $a0, $zero, 1
/* 1398B4 80047AB4 14510095 */  bne        $v0, $s1, .L80047D0C
/* 1398B8 80047AB8 00000000 */   nop
/* 1398BC 80047ABC 8E440000 */  lw         $a0, ($s2)
/* 1398C0 80047AC0 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 1398C4 80047AC4 AC20DFB4 */  sw         $zero, %lo(D_8005DFB4)($at)
/* 1398C8 80047AC8 0C0E47CB */  jal        func_80391F2C
/* 1398CC 80047ACC 24100001 */   addiu     $s0, $zero, 1
/* 1398D0 80047AD0 28420002 */  slti       $v0, $v0, 2
/* 1398D4 80047AD4 14400034 */  bnez       $v0, .L80047BA8
/* 1398D8 80047AD8 2402000B */   addiu     $v0, $zero, 0xb
/* 1398DC 80047ADC 8E440004 */  lw         $a0, 4($s2)
/* 1398E0 80047AE0 0C0E47CB */  jal        func_80391F2C
/* 1398E4 80047AE4 00000000 */   nop
/* 1398E8 80047AE8 28420002 */  slti       $v0, $v0, 2
/* 1398EC 80047AEC 1040002B */  beqz       $v0, .L80047B9C
/* 1398F0 80047AF0 24020005 */   addiu     $v0, $zero, 5
/* 1398F4 80047AF4 08011EEA */  j          .L80047BA8
/* 1398F8 80047AF8 2402000B */   addiu     $v0, $zero, 0xb
/* 1398FC 80047AFC 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 139900 80047B00 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 139904 80047B04 1451000E */  bne        $v0, $s1, .L80047B40
/* 139908 80047B08 00002821 */   addu      $a1, $zero, $zero
/* 13990C 80047B0C 3C048003 */  lui        $a0, %hi(D_80035170_126F70)
/* 139910 80047B10 24845170 */  addiu      $a0, $a0, %lo(D_80035170_126F70)
/* 139914 80047B14 2406012C */  addiu      $a2, $zero, 0x12c
/* 139918 80047B18 0C025D06 */  jal        func_80097418
/* 13991C 80047B1C 24070001 */   addiu     $a3, $zero, 1
/* 139920 80047B20 3C048004 */  lui        $a0, %hi(D_80046120_137F20)
/* 139924 80047B24 24846120 */  addiu      $a0, $a0, %lo(D_80046120_137F20)
/* 139928 80047B28 00002821 */  addu       $a1, $zero, $zero
/* 13992C 80047B2C 2406012C */  addiu      $a2, $zero, 0x12c
/* 139930 80047B30 0C025D06 */  jal        func_80097418
/* 139934 80047B34 24070001 */   addiu     $a3, $zero, 1
/* 139938 80047B38 3C018006 */  lui        $at, %hi(D_8005DFB8)
/* 13993C 80047B3C AC22DFB8 */  sw         $v0, %lo(D_8005DFB8)($at)
.L80047B40:
/* 139940 80047B40 0C012434 */  jal        func_800490D0_13AED0
/* 139944 80047B44 24040001 */   addiu     $a0, $zero, 1
/* 139948 80047B48 08011F00 */  j          .L80047C00
/* 13994C 80047B4C 00000000 */   nop
/* 139950 80047B50 0C0127D4 */  jal        func_80049F50_13BD50
/* 139954 80047B54 24040001 */   addiu     $a0, $zero, 1
/* 139958 80047B58 1451006C */  bne        $v0, $s1, .L80047D0C
/* 13995C 80047B5C 00000000 */   nop
/* 139960 80047B60 8E440000 */  lw         $a0, ($s2)
/* 139964 80047B64 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 139968 80047B68 AC20DFB4 */  sw         $zero, %lo(D_8005DFB4)($at)
/* 13996C 80047B6C 0C0E47CB */  jal        func_80391F2C
/* 139970 80047B70 24100001 */   addiu     $s0, $zero, 1
/* 139974 80047B74 28420002 */  slti       $v0, $v0, 2
/* 139978 80047B78 1440000B */  bnez       $v0, .L80047BA8
/* 13997C 80047B7C 2402000B */   addiu     $v0, $zero, 0xb
/* 139980 80047B80 8E440004 */  lw         $a0, 4($s2)
/* 139984 80047B84 0C0E47CB */  jal        func_80391F2C
/* 139988 80047B88 00000000 */   nop
/* 13998C 80047B8C 28420002 */  slti       $v0, $v0, 2
/* 139990 80047B90 14400005 */  bnez       $v0, .L80047BA8
/* 139994 80047B94 2402000B */   addiu     $v0, $zero, 0xb
/* 139998 80047B98 24020005 */  addiu      $v0, $zero, 5
.L80047B9C:
/* 13999C 80047B9C 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 1399A0 80047BA0 08011F43 */  j          .L80047D0C
/* 1399A4 80047BA4 AC22DFB0 */   sw        $v0, %lo(D_8005DFB0)($at)
.L80047BA8:
/* 1399A8 80047BA8 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 1399AC 80047BAC 08011F43 */  j          .L80047D0C
/* 1399B0 80047BB0 AC22DFB0 */   sw        $v0, %lo(D_8005DFB0)($at)
/* 1399B4 80047BB4 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 1399B8 80047BB8 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 1399BC 80047BBC 1451000E */  bne        $v0, $s1, .L80047BF8
/* 1399C0 80047BC0 00002821 */   addu      $a1, $zero, $zero
/* 1399C4 80047BC4 3C048003 */  lui        $a0, %hi(D_80035170_126F70)
/* 1399C8 80047BC8 24845170 */  addiu      $a0, $a0, %lo(D_80035170_126F70)
/* 1399CC 80047BCC 2406012C */  addiu      $a2, $zero, 0x12c
/* 1399D0 80047BD0 0C025D06 */  jal        func_80097418
/* 1399D4 80047BD4 24070001 */   addiu     $a3, $zero, 1
/* 1399D8 80047BD8 3C048004 */  lui        $a0, %hi(D_80046120_137F20)
/* 1399DC 80047BDC 24846120 */  addiu      $a0, $a0, %lo(D_80046120_137F20)
/* 1399E0 80047BE0 00002821 */  addu       $a1, $zero, $zero
/* 1399E4 80047BE4 2406012C */  addiu      $a2, $zero, 0x12c
/* 1399E8 80047BE8 0C025D06 */  jal        func_80097418
/* 1399EC 80047BEC 24070001 */   addiu     $a3, $zero, 1
/* 1399F0 80047BF0 3C018006 */  lui        $at, %hi(D_8005DFB8)
/* 1399F4 80047BF4 AC22DFB8 */  sw         $v0, %lo(D_8005DFB8)($at)
.L80047BF8:
/* 1399F8 80047BF8 0C013504 */  jal        func_8004D410_13F210
/* 1399FC 80047BFC 24040001 */   addiu     $a0, $zero, 1
.L80047C00:
/* 139A00 80047C00 1451000A */  bne        $v0, $s1, .L80047C2C
/* 139A04 80047C04 00000000 */   nop
/* 139A08 80047C08 3C048006 */  lui        $a0, %hi(D_8005DFB8)
/* 139A0C 80047C0C 8C84DFB8 */  lw         $a0, %lo(D_8005DFB8)($a0)
/* 139A10 80047C10 0C025D58 */  jal        func_80097560
/* 139A14 80047C14 24100001 */   addiu     $s0, $zero, 1
/* 139A18 80047C18 24020009 */  addiu      $v0, $zero, 9
/* 139A1C 80047C1C 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 139A20 80047C20 AC20DFB4 */  sw         $zero, %lo(D_8005DFB4)($at)
/* 139A24 80047C24 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 139A28 80047C28 AC22DFB0 */  sw         $v0, %lo(D_8005DFB0)($at)
.L80047C2C:
/* 139A2C 80047C2C 3C038006 */  lui        $v1, %hi(D_8005E0C0)
/* 139A30 80047C30 8463E0C0 */  lh         $v1, %lo(D_8005E0C0)($v1)
/* 139A34 80047C34 3C0238E3 */  lui        $v0, 0x38e3
/* 139A38 80047C38 34428E39 */  ori        $v0, $v0, 0x8e39
/* 139A3C 80047C3C 00031980 */  sll        $v1, $v1, 6
/* 139A40 80047C40 00620018 */  mult       $v1, $v0
/* 139A44 80047C44 00031FC3 */  sra        $v1, $v1, 0x1f
/* 139A48 80047C48 00004010 */  mfhi       $t0
/* 139A4C 80047C4C 000810C3 */  sra        $v0, $t0, 3
/* 139A50 80047C50 00431023 */  subu       $v0, $v0, $v1
/* 139A54 80047C54 3C018006 */  lui        $at, %hi(D_8005E140)
/* 139A58 80047C58 08011F43 */  j          .L80047D0C
/* 139A5C 80047C5C A422E140 */   sh        $v0, %lo(D_8005E140)($at)
/* 139A60 80047C60 3C028006 */  lui        $v0, %hi(D_8005DFB4)
/* 139A64 80047C64 8C42DFB4 */  lw         $v0, %lo(D_8005DFB4)($v0)
/* 139A68 80047C68 14510003 */  bne        $v0, $s1, .L80047C78
/* 139A6C 80047C6C 00000000 */   nop
/* 139A70 80047C70 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 139A74 80047C74 AC209BBC */  sw         $zero, %lo(D_80149BBC)($at)
.L80047C78:
/* 139A78 80047C78 0C0129BC */  jal        func_8004A6F0_13C4F0
/* 139A7C 80047C7C 24040001 */   addiu     $a0, $zero, 1
/* 139A80 80047C80 14510022 */  bne        $v0, $s1, .L80047D0C
/* 139A84 80047C84 00000000 */   nop
/* 139A88 80047C88 3C048017 */  lui        $a0, %hi(D_8016D07C)
/* 139A8C 80047C8C 0C0E47CB */  jal        func_80391F2C
/* 139A90 80047C90 8C84D07C */   lw        $a0, %lo(D_8016D07C)($a0)
/* 139A94 80047C94 28420002 */  slti       $v0, $v0, 2
/* 139A98 80047C98 14400003 */  bnez       $v0, .L80047CA8
/* 139A9C 80047C9C 24100001 */   addiu     $s0, $zero, 1
/* 139AA0 80047CA0 3C018006 */  lui        $at, %hi(D_8005DFC4)
/* 139AA4 80047CA4 A031DFC4 */  sb         $s1, %lo(D_8005DFC4)($at)
.L80047CA8:
/* 139AA8 80047CA8 2402000C */  addiu      $v0, $zero, 0xc
.L80047CAC:
/* 139AAC 80047CAC 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 139AB0 80047CB0 AC20DFB4 */  sw         $zero, %lo(D_8005DFB4)($at)
/* 139AB4 80047CB4 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 139AB8 80047CB8 08011F43 */  j          .L80047D0C
/* 139ABC 80047CBC AC22DFB0 */   sw        $v0, %lo(D_8005DFB0)($at)
/* 139AC0 80047CC0 8E440000 */  lw         $a0, ($s2)
/* 139AC4 80047CC4 0C025D58 */  jal        func_80097560
/* 139AC8 80047CC8 24100001 */   addiu     $s0, $zero, 1
/* 139ACC 80047CCC 8E440004 */  lw         $a0, 4($s2)
/* 139AD0 80047CD0 0C025D58 */  jal        func_80097560
/* 139AD4 80047CD4 AE400000 */   sw        $zero, ($s2)
/* 139AD8 80047CD8 AE400004 */  sw         $zero, 4($s2)
/* 139ADC 80047CDC 3C018006 */  lui        $at, %hi(D_8005DFB4)
/* 139AE0 80047CE0 AC20DFB4 */  sw         $zero, %lo(D_8005DFB4)($at)
/* 139AE4 80047CE4 3C018006 */  lui        $at, %hi(D_8005DFB0)
/* 139AE8 80047CE8 08011F43 */  j          .L80047D0C
/* 139AEC 80047CEC AC20DFB0 */   sw        $zero, %lo(D_8005DFB0)($at)
.L80047CF0:
/* 139AF0 80047CF0 AFA00010 */  sw         $zero, 0x10($sp)
/* 139AF4 80047CF4 2404FFFE */  addiu      $a0, $zero, -2
/* 139AF8 80047CF8 2405FFFF */  addiu      $a1, $zero, -1
/* 139AFC 80047CFC 00003021 */  addu       $a2, $zero, $zero
/* 139B00 80047D00 0C026C9A */  jal        func_8009B268
/* 139B04 80047D04 00003821 */   addu      $a3, $zero, $zero
/* 139B08 80047D08 24140001 */  addiu      $s4, $zero, 1
.L80047D0C:
/* 139B0C 80047D0C 1600FE85 */  bnez       $s0, .L80047724
/* 139B10 80047D10 00000000 */   nop
/* 139B14 80047D14 0C009767 */  jal        func_80025D9C_117B9C
/* 139B18 80047D18 00000000 */   nop
/* 139B1C 80047D1C 1280001D */  beqz       $s4, .L80047D94
/* 139B20 80047D20 00001021 */   addu      $v0, $zero, $zero
/* 139B24 80047D24 0C009BD9 */  jal        func_80026F64_118D64
/* 139B28 80047D28 00000000 */   nop
/* 139B2C 80047D2C 3C048015 */  lui        $a0, %hi(D_80149EC4)
/* 139B30 80047D30 8C849EC4 */  lw         $a0, %lo(D_80149EC4)($a0)
/* 139B34 80047D34 3C018015 */  lui        $at, %hi(D_80149FA8)
/* 139B38 80047D38 0C025D58 */  jal        func_80097560
/* 139B3C 80047D3C AC209FA8 */   sw        $zero, %lo(D_80149FA8)($at)
/* 139B40 80047D40 3C018015 */  lui        $at, %hi(D_80149BBC)
/* 139B44 80047D44 0C026B46 */  jal        func_8009AD18
/* 139B48 80047D48 AC209BBC */   sw        $zero, %lo(D_80149BBC)($at)
/* 139B4C 80047D4C 0C0E61EE */  jal        func_803987B8
/* 139B50 80047D50 00000000 */   nop
/* 139B54 80047D54 0C0E6500 */  jal        func_80399400
/* 139B58 80047D58 00000000 */   nop
/* 139B5C 80047D5C 0C0E5C60 */  jal        func_80397180
/* 139B60 80047D60 00000000 */   nop
/* 139B64 80047D64 0C02A5F7 */  jal        func_800A97DC
/* 139B68 80047D68 24040063 */   addiu     $a0, $zero, 0x63
/* 139B6C 80047D6C 0C026449 */  jal        func_80099124
/* 139B70 80047D70 24040002 */   addiu     $a0, $zero, 2
/* 139B74 80047D74 3C048006 */  lui        $a0, %hi(D_8005DFC4)
/* 139B78 80047D78 9084DFC4 */  lbu        $a0, %lo(D_8005DFC4)($a0)
/* 139B7C 80047D7C 24030001 */  addiu      $v1, $zero, 1
/* 139B80 80047D80 3C018005 */  lui        $at, %hi(D_80052310)
/* 139B84 80047D84 A0232310 */  sb         $v1, %lo(D_80052310)($at)
/* 139B88 80047D88 14800002 */  bnez       $a0, .L80047D94
/* 139B8C 80047D8C 24020003 */   addiu     $v0, $zero, 3
/* 139B90 80047D90 24020005 */  addiu      $v0, $zero, 5
.L80047D94:
/* 139B94 80047D94 8FBF0038 */  lw         $ra, 0x38($sp)
/* 139B98 80047D98 8FB70034 */  lw         $s7, 0x34($sp)
/* 139B9C 80047D9C 8FB60030 */  lw         $s6, 0x30($sp)
/* 139BA0 80047DA0 8FB5002C */  lw         $s5, 0x2c($sp)
/* 139BA4 80047DA4 8FB40028 */  lw         $s4, 0x28($sp)
/* 139BA8 80047DA8 8FB30024 */  lw         $s3, 0x24($sp)
/* 139BAC 80047DAC 8FB20020 */  lw         $s2, 0x20($sp)
/* 139BB0 80047DB0 8FB1001C */  lw         $s1, 0x1c($sp)
/* 139BB4 80047DB4 8FB00018 */  lw         $s0, 0x18($sp)
/* 139BB8 80047DB8 03E00008 */  jr         $ra
/* 139BBC 80047DBC 27BD0040 */   addiu     $sp, $sp, 0x40

glabel func_80047DC0_139BC0
/* 139BC0 80047DC0 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139BC4 80047DC4 AFBF0010 */  sw         $ra, 0x10($sp)
/* 139BC8 80047DC8 0C011D18 */  jal        func_80047460_139260
/* 139BCC 80047DCC 00002021 */   addu      $a0, $zero, $zero
/* 139BD0 80047DD0 8FBF0010 */  lw         $ra, 0x10($sp)
/* 139BD4 80047DD4 03E00008 */  jr         $ra
/* 139BD8 80047DD8 27BD0018 */   addiu     $sp, $sp, 0x18

glabel func_80047DDC_139BDC
/* 139BDC 80047DDC 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 139BE0 80047DE0 AFBF0010 */  sw         $ra, 0x10($sp)
/* 139BE4 80047DE4 0C011D18 */  jal        func_80047460_139260
/* 139BE8 80047DE8 24040001 */   addiu     $a0, $zero, 1
/* 139BEC 80047DEC 8FBF0010 */  lw         $ra, 0x10($sp)
/* 139BF0 80047DF0 03E00008 */  jr         $ra
/* 139BF4 80047DF4 27BD0018 */   addiu     $sp, $sp, 0x18
/* 139BF8 80047DF8 00000000 */  nop
/* 139BFC 80047DFC 00000000 */  nop