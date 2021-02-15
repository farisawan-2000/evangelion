.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800C9C9C
/* 3489C 800C9C9C 3C0A800F */  lui        $t2, %hi(D_800F7DD0)
/* 348A0 800C9CA0 8D4A7DD0 */  lw         $t2, %lo(D_800F7DD0)($t2)
/* 348A4 800C9CA4 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 348A8 800C9CA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 348AC 800C9CAC 2401FFFF */  addiu      $at, $zero, -1
/* 348B0 800C9CB0 00A08025 */  or         $s0, $a1, $zero
/* 348B4 800C9CB4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 348B8 800C9CB8 15410003 */  bne        $t2, $at, .L800C9CC8
/* 348BC 800C9CBC 00803025 */   or        $a2, $a0, $zero
/* 348C0 800C9CC0 10000072 */  b          .L800C9E8C
/* 348C4 800C9CC4 00001025 */   or        $v0, $zero, $zero
.L800C9CC8:
/* 348C8 800C9CC8 16000003 */  bnez       $s0, .L800C9CD8
/* 348CC 800C9CCC 28C10011 */   slti      $at, $a2, 0x11
/* 348D0 800C9CD0 1000006E */  b          .L800C9E8C
/* 348D4 800C9CD4 00001025 */   or        $v0, $zero, $zero
.L800C9CD8:
/* 348D8 800C9CD8 10200005 */  beqz       $at, .L800C9CF0
/* 348DC 800C9CDC 01401825 */   or        $v1, $t2, $zero
/* 348E0 800C9CE0 0C032663 */  jal        func_800C998C
/* 348E4 800C9CE4 02002025 */   or        $a0, $s0, $zero
/* 348E8 800C9CE8 10000069 */  b          .L800C9E90
/* 348EC 800C9CEC 8FBF001C */   lw        $ra, 0x1c($sp)
.L800C9CF0:
/* 348F0 800C9CF0 2610000F */  addiu      $s0, $s0, 0xf
/* 348F4 800C9CF4 2401FFF0 */  addiu      $at, $zero, -0x10
/* 348F8 800C9CF8 02018024 */  and        $s0, $s0, $at
/* 348FC 800C9CFC 00002825 */  or         $a1, $zero, $zero
/* 34900 800C9D00 00004025 */  or         $t0, $zero, $zero
/* 34904 800C9D04 8FA90020 */  lw         $t1, 0x20($sp)
/* 34908 800C9D08 8FA70024 */  lw         $a3, 0x24($sp)
.L800C9D0C:
/* 3490C 800C9D0C 8C6E0008 */  lw         $t6, 8($v1)
/* 34910 800C9D10 00667821 */  addu       $t7, $v1, $a2
/* 34914 800C9D14 25F8000F */  addiu      $t8, $t7, 0xf
/* 34918 800C9D18 15C00015 */  bnez       $t6, .L800C9D70
/* 3491C 800C9D1C 24D9FFFF */   addiu     $t9, $a2, -1
/* 34920 800C9D20 03205827 */  not        $t3, $t9
/* 34924 800C9D24 030B2024 */  and        $a0, $t8, $t3
/* 34928 800C9D28 246C0010 */  addiu      $t4, $v1, 0x10
/* 3492C 800C9D2C 008C082B */  sltu       $at, $a0, $t4
/* 34930 800C9D30 54200010 */  bnezl      $at, .L800C9D74
/* 34934 800C9D34 8C620000 */   lw        $v0, ($v1)
/* 34938 800C9D38 8C620004 */  lw         $v0, 4($v1)
/* 3493C 800C9D3C 00906821 */  addu       $t5, $a0, $s0
/* 34940 800C9D40 00627021 */  addu       $t6, $v1, $v0
/* 34944 800C9D44 01AE082B */  sltu       $at, $t5, $t6
/* 34948 800C9D48 10200009 */  beqz       $at, .L800C9D70
/* 3494C 800C9D4C 0045082B */   sltu      $at, $v0, $a1
/* 34950 800C9D50 54200004 */  bnezl      $at, .L800C9D64
/* 34954 800C9D54 00804825 */   or        $t1, $a0, $zero
/* 34958 800C9D58 54A00006 */  bnezl      $a1, .L800C9D74
/* 3495C 800C9D5C 8C620000 */   lw        $v0, ($v1)
/* 34960 800C9D60 00804825 */  or         $t1, $a0, $zero
.L800C9D64:
/* 34964 800C9D64 00603825 */  or         $a3, $v1, $zero
/* 34968 800C9D68 00402825 */  or         $a1, $v0, $zero
/* 3496C 800C9D6C 8C680000 */  lw         $t0, ($v1)
.L800C9D70:
/* 34970 800C9D70 8C620000 */  lw         $v0, ($v1)
.L800C9D74:
/* 34974 800C9D74 10400003 */  beqz       $v0, .L800C9D84
/* 34978 800C9D78 00000000 */   nop
/* 3497C 800C9D7C 1000FFE3 */  b          .L800C9D0C
/* 34980 800C9D80 00401825 */   or        $v1, $v0, $zero
.L800C9D84:
/* 34984 800C9D84 10A00041 */  beqz       $a1, .L800C9E8C
/* 34988 800C9D88 00001025 */   or        $v0, $zero, $zero
/* 3498C 800C9D8C 10EA001C */  beq        $a3, $t2, .L800C9E00
/* 34990 800C9D90 252FFFF0 */   addiu     $t7, $t1, -0x10
/* 34994 800C9D94 01271023 */  subu       $v0, $t1, $a3
/* 34998 800C9D98 28410021 */  slti       $at, $v0, 0x21
/* 3499C 800C9D9C 10200013 */  beqz       $at, .L800C9DEC
/* 349A0 800C9DA0 252DFFF0 */   addiu     $t5, $t1, -0x10
/* 349A4 800C9DA4 01277823 */  subu       $t7, $t1, $a3
/* 349A8 800C9DA8 000FC883 */  sra        $t9, $t7, 2
/* 349AC 800C9DAC 2B210010 */  slti       $at, $t9, 0x10
/* 349B0 800C9DB0 1420001A */  bnez       $at, .L800C9E1C
/* 349B4 800C9DB4 01401825 */   or        $v1, $t2, $zero
.L800C9DB8:
/* 349B8 800C9DB8 8C620000 */  lw         $v0, ($v1)
/* 349BC 800C9DBC 50400018 */  beql       $v0, $zero, .L800C9E20
/* 349C0 800C9DC0 260D0020 */   addiu     $t5, $s0, 0x20
/* 349C4 800C9DC4 14E20007 */  bne        $a3, $v0, .L800C9DE4
/* 349C8 800C9DC8 00000000 */   nop
/* 349CC 800C9DCC 8C6B0004 */  lw         $t3, 4($v1)
/* 349D0 800C9DD0 2538FFC0 */  addiu      $t8, $t1, -0x40
/* 349D4 800C9DD4 AC780000 */  sw         $t8, ($v1)
/* 349D8 800C9DD8 256C0010 */  addiu      $t4, $t3, 0x10
/* 349DC 800C9DDC 1000000F */  b          .L800C9E1C
/* 349E0 800C9DE0 AC6C0004 */   sw        $t4, 4($v1)
.L800C9DE4:
/* 349E4 800C9DE4 1000FFF4 */  b          .L800C9DB8
/* 349E8 800C9DE8 00401825 */   or        $v1, $v0, $zero
.L800C9DEC:
/* 349EC 800C9DEC 244EFFE0 */  addiu      $t6, $v0, -0x20
/* 349F0 800C9DF0 ACED0000 */  sw         $t5, ($a3)
/* 349F4 800C9DF4 ACEE0004 */  sw         $t6, 4($a3)
/* 349F8 800C9DF8 10000008 */  b          .L800C9E1C
/* 349FC 800C9DFC ACE00008 */   sw        $zero, 8($a3)
.L800C9E00:
/* 34A00 800C9E00 0127C823 */  subu       $t9, $t1, $a3
/* 34A04 800C9E04 0019C083 */  sra        $t8, $t9, 2
/* 34A08 800C9E08 00185880 */  sll        $t3, $t8, 2
/* 34A0C 800C9E0C 256CFFE0 */  addiu      $t4, $t3, -0x20
/* 34A10 800C9E10 ACEF0000 */  sw         $t7, ($a3)
/* 34A14 800C9E14 ACEC0004 */  sw         $t4, 4($a3)
/* 34A18 800C9E18 ACE00008 */  sw         $zero, 8($a3)
.L800C9E1C:
/* 34A1C 800C9E1C 260D0020 */  addiu      $t5, $s0, 0x20
.L800C9E20:
/* 34A20 800C9E20 00AD082B */  sltu       $at, $a1, $t5
/* 34A24 800C9E24 14200011 */  bnez       $at, .L800C9E6C
/* 34A28 800C9E28 2523FFF0 */   addiu     $v1, $t1, -0x10
/* 34A2C 800C9E2C 2523FFF0 */  addiu      $v1, $t1, -0x10
/* 34A30 800C9E30 01301021 */  addu       $v0, $t1, $s0
/* 34A34 800C9E34 240E0001 */  addiu      $t6, $zero, 1
/* 34A38 800C9E38 0127C823 */  subu       $t9, $t1, $a3
/* 34A3C 800C9E3C AC620000 */  sw         $v0, ($v1)
/* 34A40 800C9E40 AC700004 */  sw         $s0, 4($v1)
/* 34A44 800C9E44 AC6E0008 */  sw         $t6, 8($v1)
/* 34A48 800C9E48 0019C083 */  sra        $t8, $t9, 2
/* 34A4C 800C9E4C 00185880 */  sll        $t3, $t8, 2
/* 34A50 800C9E50 00B07823 */  subu       $t7, $a1, $s0
/* 34A54 800C9E54 01EB6023 */  subu       $t4, $t7, $t3
/* 34A58 800C9E58 AC480000 */  sw         $t0, ($v0)
/* 34A5C 800C9E5C AC4C0004 */  sw         $t4, 4($v0)
/* 34A60 800C9E60 AC400008 */  sw         $zero, 8($v0)
/* 34A64 800C9E64 10000009 */  b          .L800C9E8C
/* 34A68 800C9E68 01201025 */   or        $v0, $t1, $zero
.L800C9E6C:
/* 34A6C 800C9E6C 01096823 */  subu       $t5, $t0, $t1
/* 34A70 800C9E70 000D7083 */  sra        $t6, $t5, 2
/* 34A74 800C9E74 24190001 */  addiu      $t9, $zero, 1
/* 34A78 800C9E78 AC680000 */  sw         $t0, ($v1)
/* 34A7C 800C9E7C AC6E0004 */  sw         $t6, 4($v1)
/* 34A80 800C9E80 AC790008 */  sw         $t9, 8($v1)
/* 34A84 800C9E84 10000001 */  b          .L800C9E8C
/* 34A88 800C9E88 01201025 */   or        $v0, $t1, $zero
.L800C9E8C:
/* 34A8C 800C9E8C 8FBF001C */  lw         $ra, 0x1c($sp)
.L800C9E90:
/* 34A90 800C9E90 8FB00018 */  lw         $s0, 0x18($sp)
/* 34A94 800C9E94 27BD0030 */  addiu      $sp, $sp, 0x30
/* 34A98 800C9E98 03E00008 */  jr         $ra
/* 34A9C 800C9E9C 00000000 */   nop
