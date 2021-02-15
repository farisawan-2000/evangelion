.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800AAA88
/* 15688 800AAA88 27BDFFE8 */  addiu      $sp, $sp, -0x18
/* 1568C 800AAA8C AFB00010 */  sw         $s0, 0x10($sp)
/* 15690 800AAA90 309000FF */  andi       $s0, $a0, 0xff
/* 15694 800AAA94 16000009 */  bnez       $s0, .L800AAABC
/* 15698 800AAA98 AFBF0014 */   sw        $ra, 0x14($sp)
/* 1569C 800AAA9C 3C048015 */  lui        $a0, %hi(D_80149E18)
/* 156A0 800AAAA0 24849E18 */  addiu      $a0, $a0, %lo(D_80149E18)
/* 156A4 800AAAA4 0C025C56 */  jal        func_80097158
/* 156A8 800AAAA8 24050038 */   addiu     $a1, $zero, 0x38
/* 156AC 800AAAAC 3C018015 */  lui        $at, %hi(D_80149EE8)
/* 156B0 800AAAB0 AC229EE8 */  sw         $v0, %lo(D_80149EE8)($at)
/* 156B4 800AAAB4 0802AABE */  j          .L800AAAF8
/* 156B8 800AAAB8 00000000 */   nop
.L800AAABC:
/* 156BC 800AAABC 06000076 */  bltz       $s0, .L800AAC98
/* 156C0 800AAAC0 2A020004 */   slti      $v0, $s0, 4
/* 156C4 800AAAC4 10400074 */  beqz       $v0, .L800AAC98
/* 156C8 800AAAC8 001020C0 */   sll       $a0, $s0, 3
/* 156CC 800AAACC 00902023 */  subu       $a0, $a0, $s0
/* 156D0 800AAAD0 000420C0 */  sll        $a0, $a0, 3
/* 156D4 800AAAD4 3C028017 */  lui        $v0, %hi(D_8016D688)
/* 156D8 800AAAD8 2442D688 */  addiu      $v0, $v0, %lo(D_8016D688)
/* 156DC 800AAADC 00822021 */  addu       $a0, $a0, $v0
/* 156E0 800AAAE0 0C025C56 */  jal        func_80097158
/* 156E4 800AAAE4 24050038 */   addiu     $a1, $zero, 0x38
/* 156E8 800AAAE8 00101880 */  sll        $v1, $s0, 2
/* 156EC 800AAAEC 3C018015 */  lui        $at, %hi(D_80149EE8)
/* 156F0 800AAAF0 00230821 */  addu       $at, $at, $v1
/* 156F4 800AAAF4 AC229EE8 */  sw         $v0, %lo(D_80149EE8)($at)
.L800AAAF8:
/* 156F8 800AAAF8 0C02DFA6 */  jal        func_800B7E98
/* 156FC 800AAAFC 00000000 */   nop
/* 15700 800AAB00 00401821 */  addu       $v1, $v0, $zero
/* 15704 800AAB04 1060000E */  beqz       $v1, .L800AAB40
/* 15708 800AAB08 00000000 */   nop
/* 1570C 800AAB0C 1C600006 */  bgtz       $v1, .L800AAB28
/* 15710 800AAB10 24020001 */   addiu     $v0, $zero, 1
/* 15714 800AAB14 2402FFFF */  addiu      $v0, $zero, -1
/* 15718 800AAB18 1062000D */  beq        $v1, $v0, .L800AAB50
/* 1571C 800AAB1C 2404001C */   addiu     $a0, $zero, 0x1c
/* 15720 800AAB20 0802AAD9 */  j          .L800AAB64
/* 15724 800AAB24 00000000 */   nop
.L800AAB28:
/* 15728 800AAB28 1462000E */  bne        $v1, $v0, .L800AAB64
/* 1572C 800AAB2C 2404001C */   addiu     $a0, $zero, 0x1c
/* 15730 800AAB30 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 15734 800AAB34 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 15738 800AAB38 0802AAD6 */  j          .L800AAB58
/* 1573C 800AAB3C 00000000 */   nop
.L800AAB40:
/* 15740 800AAB40 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15744 800AAB44 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15748 800AAB48 0802AAD6 */  j          .L800AAB58
/* 1574C 800AAB4C 00000000 */   nop
.L800AAB50:
/* 15750 800AAB50 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15754 800AAB54 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AAB58:
/* 15758 800AAB58 0C02A793 */  jal        func_800A9E4C
/* 1575C 800AAB5C 00000000 */   nop
/* 15760 800AAB60 2404001C */  addiu      $a0, $zero, 0x1c
.L800AAB64:
/* 15764 800AAB64 3C058015 */  lui        $a1, %hi(D_80149ED8)
/* 15768 800AAB68 24A59ED8 */  addiu      $a1, $a1, %lo(D_80149ED8)
/* 1576C 800AAB6C 0C02DF9B */  jal        func_800B7E6C
/* 15770 800AAB70 24060028 */   addiu     $a2, $zero, 0x28
/* 15774 800AAB74 00401821 */  addu       $v1, $v0, $zero
/* 15778 800AAB78 2402FFFF */  addiu      $v0, $zero, -1
/* 1577C 800AAB7C 10620007 */  beq        $v1, $v0, .L800AAB9C
/* 15780 800AAB80 24020008 */   addiu     $v0, $zero, 8
/* 15784 800AAB84 14620009 */  bne        $v1, $v0, .L800AABAC
/* 15788 800AAB88 00000000 */   nop
/* 1578C 800AAB8C 3C048010 */  lui        $a0, %hi(D_800FB200)
/* 15790 800AAB90 2484B200 */  addiu      $a0, $a0, %lo(D_800FB200)
/* 15794 800AAB94 0802AAE9 */  j          .L800AABA4
/* 15798 800AAB98 00000000 */   nop
.L800AAB9C:
/* 1579C 800AAB9C 3C048010 */  lui        $a0, %hi(D_800FB224)
/* 157A0 800AABA0 2484B224 */  addiu      $a0, $a0, %lo(D_800FB224)
.L800AABA4:
/* 157A4 800AABA4 0C02A793 */  jal        func_800A9E4C
/* 157A8 800AABA8 00000000 */   nop
.L800AABAC:
/* 157AC 800AABAC 0C032663 */  jal        func_800C998C
/* 157B0 800AABB0 24040028 */   addiu     $a0, $zero, 0x28
/* 157B4 800AABB4 0C02DFA6 */  jal        func_800B7E98
/* 157B8 800AABB8 00408021 */   addu      $s0, $v0, $zero
/* 157BC 800AABBC 00401821 */  addu       $v1, $v0, $zero
/* 157C0 800AABC0 1060000E */  beqz       $v1, .L800AABFC
/* 157C4 800AABC4 00000000 */   nop
/* 157C8 800AABC8 1C600006 */  bgtz       $v1, .L800AABE4
/* 157CC 800AABCC 24020001 */   addiu     $v0, $zero, 1
/* 157D0 800AABD0 2402FFFF */  addiu      $v0, $zero, -1
/* 157D4 800AABD4 1062000D */  beq        $v1, $v0, .L800AAC0C
/* 157D8 800AABD8 2404001C */   addiu     $a0, $zero, 0x1c
/* 157DC 800AABDC 0802AB08 */  j          .L800AAC20
/* 157E0 800AABE0 00000000 */   nop
.L800AABE4:
/* 157E4 800AABE4 1462000E */  bne        $v1, $v0, .L800AAC20
/* 157E8 800AABE8 2404001C */   addiu     $a0, $zero, 0x1c
/* 157EC 800AABEC 3C048010 */  lui        $a0, %hi(D_800FB170)
/* 157F0 800AABF0 2484B170 */  addiu      $a0, $a0, %lo(D_800FB170)
/* 157F4 800AABF4 0802AB05 */  j          .L800AAC14
/* 157F8 800AABF8 00000000 */   nop
.L800AABFC:
/* 157FC 800AABFC 3C048010 */  lui        $a0, %hi(D_800FB188)
/* 15800 800AAC00 2484B188 */  addiu      $a0, $a0, %lo(D_800FB188)
/* 15804 800AAC04 0802AB05 */  j          .L800AAC14
/* 15808 800AAC08 00000000 */   nop
.L800AAC0C:
/* 1580C 800AAC0C 3C048010 */  lui        $a0, %hi(D_800FB1A0)
/* 15810 800AAC10 2484B1A0 */  addiu      $a0, $a0, %lo(D_800FB1A0)
.L800AAC14:
/* 15814 800AAC14 0C02A793 */  jal        func_800A9E4C
/* 15818 800AAC18 00000000 */   nop
/* 1581C 800AAC1C 2404001C */  addiu      $a0, $zero, 0x1c
.L800AAC20:
/* 15820 800AAC20 02002821 */  addu       $a1, $s0, $zero
/* 15824 800AAC24 0C02DF90 */  jal        func_800B7E40
/* 15828 800AAC28 24060028 */   addiu     $a2, $zero, 0x28
/* 1582C 800AAC2C 00401821 */  addu       $v1, $v0, $zero
/* 15830 800AAC30 2402FFFF */  addiu      $v0, $zero, -1
/* 15834 800AAC34 10620007 */  beq        $v1, $v0, .L800AAC54
/* 15838 800AAC38 24020008 */   addiu     $v0, $zero, 8
/* 1583C 800AAC3C 1462000A */  bne        $v1, $v0, .L800AAC68
/* 15840 800AAC40 02002021 */   addu      $a0, $s0, $zero
/* 15844 800AAC44 3C048010 */  lui        $a0, %hi(D_800FB1C0)
/* 15848 800AAC48 2484B1C0 */  addiu      $a0, $a0, %lo(D_800FB1C0)
/* 1584C 800AAC4C 0802AB17 */  j          .L800AAC5C
/* 15850 800AAC50 00000000 */   nop
.L800AAC54:
/* 15854 800AAC54 3C048010 */  lui        $a0, %hi(D_800FB1E4)
/* 15858 800AAC58 2484B1E4 */  addiu      $a0, $a0, %lo(D_800FB1E4)
.L800AAC5C:
/* 1585C 800AAC5C 0C02A793 */  jal        func_800A9E4C
/* 15860 800AAC60 00000000 */   nop
/* 15864 800AAC64 02002021 */  addu       $a0, $s0, $zero
.L800AAC68:
/* 15868 800AAC68 3C058015 */  lui        $a1, %hi(D_80149ED8)
/* 1586C 800AAC6C 24A59ED8 */  addiu      $a1, $a1, %lo(D_80149ED8)
/* 15870 800AAC70 0C0327A8 */  jal        func_800C9EA0
/* 15874 800AAC74 24060028 */   addiu     $a2, $zero, 0x28
/* 15878 800AAC78 10400005 */  beqz       $v0, .L800AAC90
/* 1587C 800AAC7C 00000000 */   nop
/* 15880 800AAC80 3C048010 */  lui        $a0, %hi(D_800FB240)
/* 15884 800AAC84 2484B240 */  addiu      $a0, $a0, %lo(D_800FB240)
/* 15888 800AAC88 0C02A793 */  jal        func_800A9E4C
/* 1588C 800AAC8C 00000000 */   nop
.L800AAC90:
/* 15890 800AAC90 0C0326A1 */  jal        func_800C9A84
/* 15894 800AAC94 02002021 */   addu      $a0, $s0, $zero
.L800AAC98:
/* 15898 800AAC98 8FBF0014 */  lw         $ra, 0x14($sp)
/* 1589C 800AAC9C 8FB00010 */  lw         $s0, 0x10($sp)
/* 158A0 800AACA0 27BD0018 */  addiu      $sp, $sp, 0x18
/* 158A4 800AACA4 03E00008 */  jr         $ra
/* 158A8 800AACA8 00000000 */   nop
