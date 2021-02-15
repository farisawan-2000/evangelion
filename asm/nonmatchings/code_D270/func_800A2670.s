.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800A2670
/* D270 800A2670 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* D274 800A2674 AFB00010 */  sw         $s0, 0x10($sp)
/* D278 800A2678 00808021 */  addu       $s0, $a0, $zero
/* D27C 800A267C AFB10014 */  sw         $s1, 0x14($sp)
/* D280 800A2680 02008821 */  addu       $s1, $s0, $zero
/* D284 800A2684 AFBF0018 */  sw         $ra, 0x18($sp)
/* D288 800A2688 0C032663 */  jal        func_800C998C
/* D28C 800A268C 24040048 */   addiu     $a0, $zero, 0x48
/* D290 800A2690 00401821 */  addu       $v1, $v0, $zero
/* D294 800A2694 240200FF */  addiu      $v0, $zero, 0xff
/* D298 800A2698 00108600 */  sll        $s0, $s0, 0x18
/* D29C 800A269C 00108603 */  sra        $s0, $s0, 0x18
/* D2A0 800A26A0 A062000C */  sb         $v0, 0xc($v1)
/* D2A4 800A26A4 A062000D */  sb         $v0, 0xd($v1)
/* D2A8 800A26A8 A062000E */  sb         $v0, 0xe($v1)
/* D2AC 800A26AC A062000F */  sb         $v0, 0xf($v1)
/* D2B0 800A26B0 A062001C */  sb         $v0, 0x1c($v1)
/* D2B4 800A26B4 A062001D */  sb         $v0, 0x1d($v1)
/* D2B8 800A26B8 A062001E */  sb         $v0, 0x1e($v1)
/* D2BC 800A26BC A062001F */  sb         $v0, 0x1f($v1)
/* D2C0 800A26C0 A062002C */  sb         $v0, 0x2c($v1)
/* D2C4 800A26C4 A062002D */  sb         $v0, 0x2d($v1)
/* D2C8 800A26C8 A062002E */  sb         $v0, 0x2e($v1)
/* D2CC 800A26CC A062002F */  sb         $v0, 0x2f($v1)
/* D2D0 800A26D0 A062003C */  sb         $v0, 0x3c($v1)
/* D2D4 800A26D4 A062003D */  sb         $v0, 0x3d($v1)
/* D2D8 800A26D8 A062003E */  sb         $v0, 0x3e($v1)
/* D2DC 800A26DC A062003F */  sb         $v0, 0x3f($v1)
/* D2E0 800A26E0 2A020003 */  slti       $v0, $s0, 3
/* D2E4 800A26E4 14400003 */  bnez       $v0, .L800A26F4
/* D2E8 800A26E8 00000000 */   nop
/* D2EC 800A26EC 080289BF */  j          .L800A26FC
/* D2F0 800A26F0 24110002 */   addiu     $s1, $zero, 2
.L800A26F4:
/* D2F4 800A26F4 5A000001 */  blezl      $s0, .L800A26FC
/* D2F8 800A26F8 24110001 */   addiu     $s1, $zero, 1
.L800A26FC:
/* D2FC 800A26FC A0710040 */  sb         $s1, 0x40($v1)
/* D300 800A2700 00601021 */  addu       $v0, $v1, $zero
/* D304 800A2704 8FBF0018 */  lw         $ra, 0x18($sp)
/* D308 800A2708 8FB10014 */  lw         $s1, 0x14($sp)
/* D30C 800A270C 8FB00010 */  lw         $s0, 0x10($sp)
/* D310 800A2710 27BD0020 */  addiu      $sp, $sp, 0x20
/* D314 800A2714 03E00008 */  jr         $ra
/* D318 800A2718 00000000 */   nop
