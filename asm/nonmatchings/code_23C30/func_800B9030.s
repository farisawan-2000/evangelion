.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B9030
/* 23C30 800B9030 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 23C34 800B9034 AFBF0018 */  sw         $ra, 0x18($sp)
/* 23C38 800B9038 AFB10014 */  sw         $s1, 0x14($sp)
/* 23C3C 800B903C 0C02E571 */  jal        func_800B95C4
/* 23C40 800B9040 AFB00010 */   sw        $s0, 0x10($sp)
/* 23C44 800B9044 3C02800F */  lui        $v0, %hi(D_800F5E50)
/* 23C48 800B9048 8C425E50 */  lw         $v0, %lo(D_800F5E50)($v0)
/* 23C4C 800B904C 1040004D */  beqz       $v0, .L800B9184
/* 23C50 800B9050 00000000 */   nop
/* 23C54 800B9054 3C028015 */  lui        $v0, %hi(D_8014A0CC)
/* 23C58 800B9058 2442A0CC */  addiu      $v0, $v0, %lo(D_8014A0CC)
/* 23C5C 800B905C 24440010 */  addiu      $a0, $v0, 0x10
/* 23C60 800B9060 3C01800F */  lui        $at, %hi(D_800F5E50)
/* 23C64 800B9064 AC205E50 */  sw         $zero, %lo(D_800F5E50)($at)
/* 23C68 800B9068 A0400000 */  sb         $zero, ($v0)
/* 23C6C 800B906C 3C02B000 */  lui        $v0, 0xb000
/* 23C70 800B9070 3C018015 */  lui        $at, %hi(D_8014A0D4)
/* 23C74 800B9074 AC22A0D4 */  sw         $v0, %lo(D_8014A0D4)($at)
/* 23C78 800B9078 3C018015 */  lui        $at, %hi(D_8014A0D1)
/* 23C7C 800B907C A020A0D1 */  sb         $zero, %lo(D_8014A0D1)($at)
/* 23C80 800B9080 3C018015 */  lui        $at, %hi(D_8014A0D8)
/* 23C84 800B9084 AC20A0D8 */  sw         $zero, %lo(D_8014A0D8)($at)
/* 23C88 800B9088 0C030134 */  jal        func_800C04D0
/* 23C8C 800B908C 24050060 */   addiu     $a1, $zero, 0x60
/* 23C90 800B9090 3C02A460 */  lui        $v0, 0xa460
/* 23C94 800B9094 34420010 */  ori        $v0, $v0, 0x10
/* 23C98 800B9098 8C420000 */  lw         $v0, ($v0)
/* 23C9C 800B909C 30420003 */  andi       $v0, $v0, 3
/* 23CA0 800B90A0 10400006 */  beqz       $v0, .L800B90BC
/* 23CA4 800B90A4 3C03A460 */   lui       $v1, 0xa460
/* 23CA8 800B90A8 34630010 */  ori        $v1, $v1, 0x10
.L800B90AC:
/* 23CAC 800B90AC 8C620000 */  lw         $v0, ($v1)
/* 23CB0 800B90B0 30420003 */  andi       $v0, $v0, 3
/* 23CB4 800B90B4 1440FFFD */  bnez       $v0, .L800B90AC
/* 23CB8 800B90B8 00000000 */   nop
.L800B90BC:
/* 23CBC 800B90BC 3C08A460 */  lui        $t0, 0xa460
/* 23CC0 800B90C0 35080014 */  ori        $t0, $t0, 0x14
/* 23CC4 800B90C4 3C07A460 */  lui        $a3, 0xa460
/* 23CC8 800B90C8 34E7001C */  ori        $a3, $a3, 0x1c
/* 23CCC 800B90CC 3C06A460 */  lui        $a2, 0xa460
/* 23CD0 800B90D0 34C60020 */  ori        $a2, $a2, 0x20
/* 23CD4 800B90D4 3C05A460 */  lui        $a1, 0xa460
/* 23CD8 800B90D8 34A50018 */  ori        $a1, $a1, 0x18
/* 23CDC 800B90DC 8D090000 */  lw         $t1, ($t0)
/* 23CE0 800B90E0 8CEA0000 */  lw         $t2, ($a3)
/* 23CE4 800B90E4 8CCB0000 */  lw         $t3, ($a2)
/* 23CE8 800B90E8 8CAC0000 */  lw         $t4, ($a1)
/* 23CEC 800B90EC 3C118015 */  lui        $s1, %hi(D_8014A0D4)
/* 23CF0 800B90F0 2631A0D4 */  addiu      $s1, $s1, %lo(D_8014A0D4)
/* 23CF4 800B90F4 8E230000 */  lw         $v1, ($s1)
/* 23CF8 800B90F8 240400FF */  addiu      $a0, $zero, 0xff
/* 23CFC 800B90FC 24020003 */  addiu      $v0, $zero, 3
/* 23D00 800B9100 AD040000 */  sw         $a0, ($t0)
/* 23D04 800B9104 ACE00000 */  sw         $zero, ($a3)
/* 23D08 800B9108 ACC20000 */  sw         $v0, ($a2)
/* 23D0C 800B910C 3C02A000 */  lui        $v0, 0xa000
/* 23D10 800B9110 ACA40000 */  sw         $a0, ($a1)
/* 23D14 800B9114 00621825 */  or         $v1, $v1, $v0
/* 23D18 800B9118 8C630000 */  lw         $v1, ($v1)
/* 23D1C 800B911C AD090000 */  sw         $t1, ($t0)
/* 23D20 800B9120 ACEA0000 */  sw         $t2, ($a3)
/* 23D24 800B9124 ACCB0000 */  sw         $t3, ($a2)
/* 23D28 800B9128 ACAC0000 */  sw         $t4, ($a1)
/* 23D2C 800B912C 00031402 */  srl        $v0, $v1, 0x10
/* 23D30 800B9130 3042000F */  andi       $v0, $v0, 0xf
/* 23D34 800B9134 3C018015 */  lui        $at, %hi(D_8014A0CE)
/* 23D38 800B9138 A022A0CE */  sb         $v0, %lo(D_8014A0CE)($at)
/* 23D3C 800B913C 00031502 */  srl        $v0, $v1, 0x14
/* 23D40 800B9140 3042000F */  andi       $v0, $v0, 0xf
/* 23D44 800B9144 3C018015 */  lui        $at, %hi(D_8014A0CD)
/* 23D48 800B9148 A023A0CD */  sb         $v1, %lo(D_8014A0CD)($at)
/* 23D4C 800B914C 00031A02 */  srl        $v1, $v1, 8
/* 23D50 800B9150 3C018015 */  lui        $at, %hi(D_8014A0CF)
/* 23D54 800B9154 A022A0CF */  sb         $v0, %lo(D_8014A0CF)($at)
/* 23D58 800B9158 3C018015 */  lui        $at, %hi(D_8014A0D0)
/* 23D5C 800B915C A023A0D0 */  sb         $v1, %lo(D_8014A0D0)($at)
/* 23D60 800B9160 0C0319D0 */  jal        func_800C6740
/* 23D64 800B9164 2630FFF4 */   addiu     $s0, $s1, -0xc
/* 23D68 800B9168 3C03800F */  lui        $v1, %hi(D_800F5E3C)
/* 23D6C 800B916C 8C635E3C */  lw         $v1, %lo(D_800F5E3C)($v1)
/* 23D70 800B9170 00402021 */  addu       $a0, $v0, $zero
/* 23D74 800B9174 3C01800F */  lui        $at, %hi(D_800F5E3C)
/* 23D78 800B9178 AC305E3C */  sw         $s0, %lo(D_800F5E3C)($at)
/* 23D7C 800B917C 0C0319EC */  jal        func_800C67B0
/* 23D80 800B9180 AE23FFF4 */   sw        $v1, -0xc($s1)
.L800B9184:
/* 23D84 800B9184 0C02E58C */  jal        func_800B9630
/* 23D88 800B9188 00000000 */   nop
/* 23D8C 800B918C 3C028015 */  lui        $v0, %hi(D_8014A0C8)
/* 23D90 800B9190 2442A0C8 */  addiu      $v0, $v0, %lo(D_8014A0C8)
/* 23D94 800B9194 8FBF0018 */  lw         $ra, 0x18($sp)
/* 23D98 800B9198 8FB10014 */  lw         $s1, 0x14($sp)
/* 23D9C 800B919C 8FB00010 */  lw         $s0, 0x10($sp)
/* 23DA0 800B91A0 03E00008 */  jr         $ra
/* 23DA4 800B91A4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 23DA8 800B91A8 00000000 */  nop
/* 23DAC 800B91AC 00000000 */  nop
