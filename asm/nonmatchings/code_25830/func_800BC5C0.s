.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800BC5C0
/* 271C0 800BC5C0 27BDFFC8 */  addiu      $sp, $sp, -0x38
/* 271C4 800BC5C4 AFB50024 */  sw         $s5, 0x24($sp)
/* 271C8 800BC5C8 8FB50048 */  lw         $s5, 0x48($sp)
/* 271CC 800BC5CC AFB7002C */  sw         $s7, 0x2c($sp)
/* 271D0 800BC5D0 0080B821 */  addu       $s7, $a0, $zero
/* 271D4 800BC5D4 00A02021 */  addu       $a0, $a1, $zero
/* 271D8 800BC5D8 AFB60028 */  sw         $s6, 0x28($sp)
/* 271DC 800BC5DC 00C0B021 */  addu       $s6, $a2, $zero
/* 271E0 800BC5E0 AFBE0030 */  sw         $fp, 0x30($sp)
/* 271E4 800BC5E4 00E0F021 */  addu       $fp, $a3, $zero
/* 271E8 800BC5E8 AFBF0034 */  sw         $ra, 0x34($sp)
/* 271EC 800BC5EC AFB40020 */  sw         $s4, 0x20($sp)
/* 271F0 800BC5F0 AFB3001C */  sw         $s3, 0x1c($sp)
/* 271F4 800BC5F4 AFB20018 */  sw         $s2, 0x18($sp)
/* 271F8 800BC5F8 AFB10014 */  sw         $s1, 0x14($sp)
/* 271FC 800BC5FC AFB00010 */  sw         $s0, 0x10($sp)
/* 27200 800BC600 8EE3001C */  lw         $v1, 0x1c($s7)
/* 27204 800BC604 8EE20014 */  lw         $v0, 0x14($s7)
/* 27208 800BC608 00031840 */  sll        $v1, $v1, 1
/* 2720C 800BC60C 00432821 */  addu       $a1, $v0, $v1
/* 27210 800BC610 0082102B */  sltu       $v0, $a0, $v0
/* 27214 800BC614 10400002 */  beqz       $v0, .L800BC620
/* 27218 800BC618 02A03021 */   addu      $a2, $s5, $zero
/* 2721C 800BC61C 00832021 */  addu       $a0, $a0, $v1
.L800BC620:
/* 27220 800BC620 001E3840 */  sll        $a3, $fp, 1
/* 27224 800BC624 00878821 */  addu       $s1, $a0, $a3
/* 27228 800BC628 00B1102B */  sltu       $v0, $a1, $s1
/* 2722C 800BC62C 10400020 */  beqz       $v0, .L800BC6B0
/* 27230 800BC630 32C2FFFF */   andi      $v0, $s6, 0xffff
/* 27234 800BC634 26B50008 */  addiu      $s5, $s5, 8
/* 27238 800BC638 02A0A021 */  addu       $s4, $s5, $zero
/* 2723C 800BC63C 26B50008 */  addiu      $s5, $s5, 8
/* 27240 800BC640 3C130800 */  lui        $s3, 0x800
/* 27244 800BC644 00531025 */  or         $v0, $v0, $s3
/* 27248 800BC648 00A48023 */  subu       $s0, $a1, $a0
/* 2724C 800BC64C 00108043 */  sra        $s0, $s0, 1
/* 27250 800BC650 00108040 */  sll        $s0, $s0, 1
/* 27254 800BC654 ACC20000 */  sw         $v0, ($a2)
/* 27258 800BC658 3202FFFF */  andi       $v0, $s0, 0xffff
/* 2725C 800BC65C 3C120400 */  lui        $s2, 0x400
/* 27260 800BC660 02258823 */  subu       $s1, $s1, $a1
/* 27264 800BC664 00118843 */  sra        $s1, $s1, 1
/* 27268 800BC668 ACC20004 */  sw         $v0, 4($a2)
/* 2726C 800BC66C 0C02F680 */  jal        func_800BDA00
/* 27270 800BC670 AE920000 */   sw        $s2, ($s4)
/* 27274 800BC674 02A01821 */  addu       $v1, $s5, $zero
/* 27278 800BC678 26B50008 */  addiu      $s5, $s5, 8
/* 2727C 800BC67C 02D08021 */  addu       $s0, $s6, $s0
/* 27280 800BC680 3210FFFF */  andi       $s0, $s0, 0xffff
/* 27284 800BC684 02138025 */  or         $s0, $s0, $s3
/* 27288 800BC688 00118840 */  sll        $s1, $s1, 1
/* 2728C 800BC68C 3231FFFF */  andi       $s1, $s1, 0xffff
/* 27290 800BC690 AE820004 */  sw         $v0, 4($s4)
/* 27294 800BC694 AC700000 */  sw         $s0, ($v1)
/* 27298 800BC698 02A08021 */  addu       $s0, $s5, $zero
/* 2729C 800BC69C AC710004 */  sw         $s1, 4($v1)
/* 272A0 800BC6A0 AE120000 */  sw         $s2, ($s0)
/* 272A4 800BC6A4 8EE40014 */  lw         $a0, 0x14($s7)
/* 272A8 800BC6A8 0802F1B6 */  j          .L800BC6D8
/* 272AC 800BC6AC 26B50008 */   addiu     $s5, $s5, 8
.L800BC6B0:
/* 272B0 800BC6B0 26B50008 */  addiu      $s5, $s5, 8
/* 272B4 800BC6B4 02A08021 */  addu       $s0, $s5, $zero
/* 272B8 800BC6B8 26B50008 */  addiu      $s5, $s5, 8
/* 272BC 800BC6BC 3C030800 */  lui        $v1, 0x800
/* 272C0 800BC6C0 00431025 */  or         $v0, $v0, $v1
/* 272C4 800BC6C4 ACC20000 */  sw         $v0, ($a2)
/* 272C8 800BC6C8 30E2FFFF */  andi       $v0, $a3, 0xffff
/* 272CC 800BC6CC ACC20004 */  sw         $v0, 4($a2)
/* 272D0 800BC6D0 3C020400 */  lui        $v0, 0x400
/* 272D4 800BC6D4 AE020000 */  sw         $v0, ($s0)
.L800BC6D8:
/* 272D8 800BC6D8 0C02F680 */  jal        func_800BDA00
/* 272DC 800BC6DC 00000000 */   nop
/* 272E0 800BC6E0 AE020004 */  sw         $v0, 4($s0)
/* 272E4 800BC6E4 26A20008 */  addiu      $v0, $s5, 8
/* 272E8 800BC6E8 02A02021 */  addu       $a0, $s5, $zero
/* 272EC 800BC6EC 3C030800 */  lui        $v1, 0x800
/* 272F0 800BC6F0 AC830000 */  sw         $v1, ($a0)
/* 272F4 800BC6F4 001E1840 */  sll        $v1, $fp, 1
/* 272F8 800BC6F8 3063FFFF */  andi       $v1, $v1, 0xffff
/* 272FC 800BC6FC AC830004 */  sw         $v1, 4($a0)
/* 27300 800BC700 8FBF0034 */  lw         $ra, 0x34($sp)
/* 27304 800BC704 8FBE0030 */  lw         $fp, 0x30($sp)
/* 27308 800BC708 8FB7002C */  lw         $s7, 0x2c($sp)
/* 2730C 800BC70C 8FB60028 */  lw         $s6, 0x28($sp)
/* 27310 800BC710 8FB50024 */  lw         $s5, 0x24($sp)
/* 27314 800BC714 8FB40020 */  lw         $s4, 0x20($sp)
/* 27318 800BC718 8FB3001C */  lw         $s3, 0x1c($sp)
/* 2731C 800BC71C 8FB20018 */  lw         $s2, 0x18($sp)
/* 27320 800BC720 8FB10014 */  lw         $s1, 0x14($sp)
/* 27324 800BC724 8FB00010 */  lw         $s0, 0x10($sp)
/* 27328 800BC728 03E00008 */  jr         $ra
/* 2732C 800BC72C 27BD0038 */   addiu     $sp, $sp, 0x38
