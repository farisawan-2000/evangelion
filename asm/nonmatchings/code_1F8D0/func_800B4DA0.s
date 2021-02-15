.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B4DA0
/* 1F9A0 800B4DA0 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F9A4 800B4DA4 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1F9A8 800B4DA8 AFB00018 */  sw         $s0, 0x18($sp)
/* 1F9AC 800B4DAC 94A20000 */  lhu        $v0, ($a1)
/* 1F9B0 800B4DB0 00808021 */  addu       $s0, $a0, $zero
/* 1F9B4 800B4DB4 AFA00010 */  sw         $zero, 0x10($sp)
/* 1F9B8 800B4DB8 A6020016 */  sh         $v0, 0x16($s0)
/* 1F9BC 800B4DBC 90A20004 */  lbu        $v0, 4($a1)
/* 1F9C0 800B4DC0 AE00000C */  sw         $zero, 0xc($s0)
/* 1F9C4 800B4DC4 A602001A */  sh         $v0, 0x1a($s0)
/* 1F9C8 800B4DC8 94A20002 */  lhu        $v0, 2($a1)
/* 1F9CC 800B4DCC A6000014 */  sh         $zero, 0x14($s0)
/* 1F9D0 800B4DD0 AE000008 */  sw         $zero, 8($s0)
/* 1F9D4 800B4DD4 A6020018 */  sh         $v0, 0x18($s0)
/* 1F9D8 800B4DD8 84A50000 */  lh         $a1, ($a1)
/* 1F9DC 800B4DDC 0C02D3AE */  jal        func_800B4EB8
/* 1F9E0 800B4DE0 27A40010 */   addiu     $a0, $sp, 0x10
/* 1F9E4 800B4DE4 8FA40010 */  lw         $a0, 0x10($sp)
/* 1F9E8 800B4DE8 1080002D */  beqz       $a0, .L800B4EA0
/* 1F9EC 800B4DEC 00000000 */   nop
/* 1F9F0 800B4DF0 10400028 */  beqz       $v0, .L800B4E94
/* 1F9F4 800B4DF4 24020228 */   addiu     $v0, $zero, 0x228
/* 1F9F8 800B4DF8 8C830008 */  lw         $v1, 8($a0)
/* 1F9FC 800B4DFC AC820088 */  sw         $v0, 0x88($a0)
/* 1FA00 800B4E00 AC600008 */  sw         $zero, 8($v1)
/* 1FA04 800B4E04 AC900008 */  sw         $s0, 8($a0)
/* 1FA08 800B4E08 0C02D5BA */  jal        func_800B56E8
/* 1FA0C 800B4E0C AE040008 */   sw        $a0, 8($s0)
/* 1FA10 800B4E10 3C03800F */  lui        $v1, %hi(D_800F17F4)
/* 1FA14 800B4E14 8C6317F4 */  lw         $v1, %lo(D_800F17F4)($v1)
/* 1FA18 800B4E18 8C63001C */  lw         $v1, 0x1c($v1)
/* 1FA1C 800B4E1C 00403021 */  addu       $a2, $v0, $zero
/* 1FA20 800B4E20 2402000B */  addiu      $v0, $zero, 0xb
/* 1FA24 800B4E24 A4C20008 */  sh         $v0, 8($a2)
/* 1FA28 800B4E28 24020170 */  addiu      $v0, $zero, 0x170
/* 1FA2C 800B4E2C ACC0000C */  sw         $zero, 0xc($a2)
/* 1FA30 800B4E30 ACC20010 */  sw         $v0, 0x10($a2)
/* 1FA34 800B4E34 ACC30004 */  sw         $v1, 4($a2)
/* 1FA38 800B4E38 8E040008 */  lw         $a0, 8($s0)
/* 1FA3C 800B4E3C 0C02CD62 */  jal        func_800B3588
/* 1FA40 800B4E40 24050003 */   addiu     $a1, $zero, 3
/* 1FA44 800B4E44 0C02D5BA */  jal        func_800B56E8
/* 1FA48 800B4E48 00000000 */   nop
/* 1FA4C 800B4E4C 00403021 */  addu       $a2, $v0, $zero
/* 1FA50 800B4E50 10C00013 */  beqz       $a2, .L800B4EA0
/* 1FA54 800B4E54 00000000 */   nop
/* 1FA58 800B4E58 3C02800F */  lui        $v0, %hi(D_800F17F4)
/* 1FA5C 800B4E5C 8C4217F4 */  lw         $v0, %lo(D_800F17F4)($v0)
/* 1FA60 800B4E60 8FA40010 */  lw         $a0, 0x10($sp)
/* 1FA64 800B4E64 8C43001C */  lw         $v1, 0x1c($v0)
/* 1FA68 800B4E68 8C840088 */  lw         $a0, 0x88($a0)
/* 1FA6C 800B4E6C 2402000F */  addiu      $v0, $zero, 0xf
/* 1FA70 800B4E70 A4C20008 */  sh         $v0, 8($a2)
/* 1FA74 800B4E74 ACC00000 */  sw         $zero, ($a2)
/* 1FA78 800B4E78 00641821 */  addu       $v1, $v1, $a0
/* 1FA7C 800B4E7C ACC30004 */  sw         $v1, 4($a2)
/* 1FA80 800B4E80 8E040008 */  lw         $a0, 8($s0)
/* 1FA84 800B4E84 0C02CD62 */  jal        func_800B3588
/* 1FA88 800B4E88 24050003 */   addiu     $a1, $zero, 3
/* 1FA8C 800B4E8C 0802D3A8 */  j          .L800B4EA0
/* 1FA90 800B4E90 00000000 */   nop
.L800B4E94:
/* 1FA94 800B4E94 AC800088 */  sw         $zero, 0x88($a0)
/* 1FA98 800B4E98 AC900008 */  sw         $s0, 8($a0)
/* 1FA9C 800B4E9C AE040008 */  sw         $a0, 8($s0)
.L800B4EA0:
/* 1FAA0 800B4EA0 8FA20010 */  lw         $v0, 0x10($sp)
/* 1FAA4 800B4EA4 0002102B */  sltu       $v0, $zero, $v0
/* 1FAA8 800B4EA8 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1FAAC 800B4EAC 8FB00018 */  lw         $s0, 0x18($sp)
/* 1FAB0 800B4EB0 03E00008 */  jr         $ra
/* 1FAB4 800B4EB4 27BD0020 */   addiu     $sp, $sp, 0x20
