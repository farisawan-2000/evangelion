glabel func_800B64B4
/* 210B4 800B64B4 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 210B8 800B64B8 24020008 */  addiu      $v0, $zero, 0x8
/* 210BC 800B64BC 3C018011 */  lui        $at, %hi(D_8010ADA4)
/* 210C0 800B64C0 A422ADA4 */  sh         $v0, %lo(D_8010ADA4)($at)
/* 210C4 800B64C4 24020004 */  addiu      $v0, $zero, 0x4
/* 210C8 800B64C8 AFBF001C */  sw         $ra, 0x1C($sp)
/* 210CC 800B64CC AFB00018 */  sw         $s0, 0x18($sp)
/* 210D0 800B64D0 3C018011 */  lui        $at, %hi(D_8010ADA6)
/* 210D4 800B64D4 A422ADA6 */  sh         $v0, %lo(D_8010ADA6)($at)
/* 210D8 800B64D8 3C018017 */  lui        $at, %hi(D_8016D060)
/* 210DC 800B64DC 0C02DA8C */  jal        func_800B6A30
/* 210E0 800B64E0 AC20D060 */   sw        $zero, %lo(D_8016D060)($at)
/* 210E4 800B64E4 3C108011 */  lui        $s0, %hi(D_8010ADA8)
/* 210E8 800B64E8 2610ADA8 */  addiu      $s0, $s0, %lo(D_8010ADA8)
/* 210EC 800B64EC 02002021 */  addu       $a0, $s0, $zero
/* 210F0 800B64F0 3C028011 */  lui        $v0, %hi(D_8010CF60)
/* 210F4 800B64F4 2442CF60 */  addiu      $v0, $v0, %lo(D_8010CF60)
/* 210F8 800B64F8 AFA20010 */  sw         $v0, 0x10($sp)
/* 210FC 800B64FC 2402003C */  addiu      $v0, $zero, 0x3C
/* 21100 800B6500 24050005 */  addiu      $a1, $zero, 0x5
/* 21104 800B6504 3C06800B */  lui        $a2, %hi(func_800B63A0)
/* 21108 800B6508 24C663A0 */  addiu      $a2, $a2, %lo(func_800B63A0)
/* 2110C 800B650C 00003821 */  addu       $a3, $zero, $zero
/* 21110 800B6510 0C03065C */  jal        osCreateThread
/* 21114 800B6514 AFA20014 */   sw        $v0, 0x14($sp)
/* 21118 800B6518 0C0306CC */  jal        osStartThread
/* 2111C 800B651C 02002021 */   addu      $a0, $s0, $zero
/* 21120 800B6520 00003021 */  addu       $a2, $zero, $zero
/* 21124 800B6524 3C078017 */  lui        $a3, %hi(D_8016E570)
/* 21128 800B6528 24E7E570 */  addiu      $a3, $a3, %lo(D_8016E570)
/* 2112C 800B652C 24190001 */  addiu      $t9, $zero, 0x1
/* 21130 800B6530 3C08800D */  lui        $t0, %hi(D_800CA8B0)
/* 21134 800B6534 2508A8B0 */  addiu      $t0, $t0, %lo(D_800CA8B0)
/* 21138 800B6538 3C02800D */  lui        $v0, %hi(D_800CA980)
/* 2113C 800B653C 2442A980 */  addiu      $v0, $v0, %lo(D_800CA980)
/* 21140 800B6540 00484823 */  subu       $t1, $v0, $t0
/* 21144 800B6544 24181000 */  addiu      $t8, $zero, 0x1000
/* 21148 800B6548 24100800 */  addiu      $s0, $zero, 0x800
/* 2114C 800B654C 3C0F8017 */  lui        $t7, %hi(D_8016D870)
/* 21150 800B6550 25EFD870 */  addiu      $t7, $t7, %lo(D_8016D870)
/* 21154 800B6554 240E0400 */  addiu      $t6, $zero, 0x400
/* 21158 800B6558 3C0D8015 */  lui        $t5, %hi(D_8014D030)
/* 2115C 800B655C 25ADD030 */  addiu      $t5, $t5, %lo(D_8014D030)
/* 21160 800B6560 3C0C8017 */  lui        $t4, %hi(D_8016D030)
/* 21164 800B6564 258CD030 */  addiu      $t4, $t4, %lo(D_8016D030)
/* 21168 800B6568 3C0B8015 */  lui        $t3, %hi(D_8014C380)
/* 2116C 800B656C 256BC380 */  addiu      $t3, $t3, %lo(D_8014C380)
/* 21170 800B6570 240A0C00 */  addiu      $t2, $zero, 0xC00
/* 21174 800B6574 3C028017 */  lui        $v0, %hi(D_8016D288)
/* 21178 800B6578 2442D288 */  addiu      $v0, $v0, %lo(D_8016D288)
/* 2117C 800B657C 2444FFF8 */  addiu      $a0, $v0, -0x8
/* 21180 800B6580 00402821 */  addu       $a1, $v0, $zero
/* 21184 800B6584 00001821 */  addu       $v1, $zero, $zero
.L800B6588:
/* 21188 800B6588 3C018017 */  lui        $at, %hi(D_8016D230)
/* 2118C 800B658C 00230821 */  addu       $at, $at, $v1
/* 21190 800B6590 AC25D230 */  sw         $a1, %lo(D_8016D230)($at)
/* 21194 800B6594 AC870000 */  sw         $a3, 0x0($a0)
/* 21198 800B6598 3C018017 */  lui        $at, %hi(D_8016D240)
/* 2119C 800B659C 00230821 */  addu       $at, $at, $v1
/* 211A0 800B65A0 AC39D240 */  sw         $t9, %lo(D_8016D240)($at)
/* 211A4 800B65A4 3C018017 */  lui        $at, %hi(D_8016D244)
/* 211A8 800B65A8 00230821 */  addu       $at, $at, $v1
/* 211AC 800B65AC AC20D244 */  sw         $zero, %lo(D_8016D244)($at)
/* 211B0 800B65B0 3C018017 */  lui        $at, %hi(D_8016D248)
/* 211B4 800B65B4 00230821 */  addu       $at, $at, $v1
/* 211B8 800B65B8 AC28D248 */  sw         $t0, %lo(D_8016D248)($at)
/* 211BC 800B65BC 3C018017 */  lui        $at, %hi(D_8016D24C)
/* 211C0 800B65C0 00230821 */  addu       $at, $at, $v1
/* 211C4 800B65C4 AC29D24C */  sw         $t1, %lo(D_8016D24C)($at)
/* 211C8 800B65C8 3C018017 */  lui        $at, %hi(D_8016D254)
/* 211CC 800B65CC 00230821 */  addu       $at, $at, $v1
/* 211D0 800B65D0 AC38D254 */  sw         $t8, %lo(D_8016D254)($at)
/* 211D4 800B65D4 3C018017 */  lui        $at, %hi(D_8016D25C)
/* 211D8 800B65D8 00230821 */  addu       $at, $at, $v1
/* 211DC 800B65DC AC30D25C */  sw         $s0, %lo(D_8016D25C)($at)
/* 211E0 800B65E0 3C018017 */  lui        $at, %hi(D_8016D260)
/* 211E4 800B65E4 00230821 */  addu       $at, $at, $v1
/* 211E8 800B65E8 AC2FD260 */  sw         $t7, %lo(D_8016D260)($at)
/* 211EC 800B65EC 3C018017 */  lui        $at, %hi(D_8016D264)
/* 211F0 800B65F0 00230821 */  addu       $at, $at, $v1
/* 211F4 800B65F4 AC2ED264 */  sw         $t6, %lo(D_8016D264)($at)
/* 211F8 800B65F8 3C018017 */  lui        $at, %hi(D_8016D268)
/* 211FC 800B65FC 00230821 */  addu       $at, $at, $v1
/* 21200 800B6600 AC2DD268 */  sw         $t5, %lo(D_8016D268)($at)
/* 21204 800B6604 3C018017 */  lui        $at, %hi(D_8016D26C)
/* 21208 800B6608 00230821 */  addu       $at, $at, $v1
/* 2120C 800B660C AC2CD26C */  sw         $t4, %lo(D_8016D26C)($at)
/* 21210 800B6610 3C018017 */  lui        $at, %hi(D_8016D278)
/* 21214 800B6614 00230821 */  addu       $at, $at, $v1
/* 21218 800B6618 AC2BD278 */  sw         $t3, %lo(D_8016D278)($at)
/* 2121C 800B661C 3C018017 */  lui        $at, %hi(D_8016D27C)
/* 21220 800B6620 00230821 */  addu       $at, $at, $v1
/* 21224 800B6624 AC2AD27C */  sw         $t2, %lo(D_8016D27C)($at)
/* 21228 800B6628 AC870000 */  sw         $a3, 0x0($a0)
/* 2122C 800B662C 24840058 */  addiu      $a0, $a0, 0x58
/* 21230 800B6630 24A50058 */  addiu      $a1, $a1, 0x58
/* 21234 800B6634 24C60001 */  addiu      $a2, $a2, 0x1
/* 21238 800B6638 2CC2000A */  sltiu      $v0, $a2, 0xA
/* 2123C 800B663C 1440FFD2 */  bnez       $v0, .L800B6588
/* 21240 800B6640 24630058 */   addiu     $v1, $v1, 0x58
/* 21244 800B6644 3C028017 */  lui        $v0, %hi(D_8016D548)
/* 21248 800B6648 2442D548 */  addiu      $v0, $v0, %lo(D_8016D548)
/* 2124C 800B664C 2443FCE8 */  addiu      $v1, $v0, -0x318
/* 21250 800B6650 AC430000 */  sw         $v1, 0x0($v0)
/* 21254 800B6654 3C018011 */  lui        $at, %hi(D_8010ADA0)
/* 21258 800B6658 AC23ADA0 */  sw         $v1, %lo(D_8010ADA0)($at)
/* 2125C 800B665C 8FBF001C */  lw         $ra, 0x1C($sp)
/* 21260 800B6660 8FB00018 */  lw         $s0, 0x18($sp)
/* 21264 800B6664 03E00008 */  jr         $ra
/* 21268 800B6668 27BD0020 */   addiu     $sp, $sp, 0x20
.size func_800B64B4, . - func_800B64B4