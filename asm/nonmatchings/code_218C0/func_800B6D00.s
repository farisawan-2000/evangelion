.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B6D00
/* 21900 800B6D00 27BDFFA0 */  addiu      $sp, $sp, -0x60
/* 21904 800B6D04 AFB30054 */  sw         $s3, 0x54($sp)
/* 21908 800B6D08 00809821 */  addu       $s3, $a0, $zero
/* 2190C 800B6D0C AFB20050 */  sw         $s2, 0x50($sp)
/* 21910 800B6D10 00A09021 */  addu       $s2, $a1, $zero
/* 21914 800B6D14 AFB1004C */  sw         $s1, 0x4c($sp)
/* 21918 800B6D18 00C08821 */  addu       $s1, $a2, $zero
/* 2191C 800B6D1C AFB00048 */  sw         $s0, 0x48($sp)
/* 21920 800B6D20 27B00028 */  addiu      $s0, $sp, 0x28
/* 21924 800B6D24 02002021 */  addu       $a0, $s0, $zero
/* 21928 800B6D28 27A50040 */  addiu      $a1, $sp, 0x40
/* 2192C 800B6D2C AFBF0058 */  sw         $ra, 0x58($sp)
/* 21930 800B6D30 0C0301A4 */  jal        func_800C0690
/* 21934 800B6D34 24060001 */   addiu     $a2, $zero, 1
/* 21938 800B6D38 02402021 */  addu       $a0, $s2, $zero
/* 2193C 800B6D3C 02202821 */  addu       $a1, $s1, $zero
/* 21940 800B6D40 A3A00012 */  sb         $zero, 0x12($sp)
/* 21944 800B6D44 0C02F4C4 */  jal        func_800BD310
/* 21948 800B6D48 AFB00014 */   sw        $s0, 0x14($sp)
/* 2194C 800B6D4C 12200015 */  beqz       $s1, .L800B6DA4
/* 21950 800B6D50 2E224001 */   sltiu     $v0, $s1, 0x4001
.L800B6D54:
/* 21954 800B6D54 14400002 */  bnez       $v0, .L800B6D60
/* 21958 800B6D58 02208021 */   addu      $s0, $s1, $zero
/* 2195C 800B6D5C 24104000 */  addiu      $s0, $zero, 0x4000
.L800B6D60:
/* 21960 800B6D60 3C048017 */  lui        $a0, %hi(D_8016D170)
/* 21964 800B6D64 8C84D170 */  lw         $a0, %lo(D_8016D170)($a0)
/* 21968 800B6D68 27A50010 */  addiu      $a1, $sp, 0x10
/* 2196C 800B6D6C 00003021 */  addu       $a2, $zero, $zero
/* 21970 800B6D70 AFB3001C */  sw         $s3, 0x1c($sp)
/* 21974 800B6D74 02709821 */  addu       $s3, $s3, $s0
/* 21978 800B6D78 AFB20018 */  sw         $s2, 0x18($sp)
/* 2197C 800B6D7C 02509021 */  addu       $s2, $s2, $s0
/* 21980 800B6D80 02308823 */  subu       $s1, $s1, $s0
/* 21984 800B6D84 0C02E3E4 */  jal        func_800B8F90
/* 21988 800B6D88 AFB00020 */   sw        $s0, 0x20($sp)
/* 2198C 800B6D8C 27A40028 */  addiu      $a0, $sp, 0x28
/* 21990 800B6D90 27A50040 */  addiu      $a1, $sp, 0x40
/* 21994 800B6D94 0C030200 */  jal        func_800C0800
/* 21998 800B6D98 24060001 */   addiu     $a2, $zero, 1
/* 2199C 800B6D9C 1620FFED */  bnez       $s1, .L800B6D54
/* 219A0 800B6DA0 2E224001 */   sltiu     $v0, $s1, 0x4001
.L800B6DA4:
/* 219A4 800B6DA4 8FBF0058 */  lw         $ra, 0x58($sp)
/* 219A8 800B6DA8 8FB30054 */  lw         $s3, 0x54($sp)
/* 219AC 800B6DAC 8FB20050 */  lw         $s2, 0x50($sp)
/* 219B0 800B6DB0 8FB1004C */  lw         $s1, 0x4c($sp)
/* 219B4 800B6DB4 8FB00048 */  lw         $s0, 0x48($sp)
/* 219B8 800B6DB8 03E00008 */  jr         $ra
/* 219BC 800B6DBC 27BD0060 */   addiu     $sp, $sp, 0x60
