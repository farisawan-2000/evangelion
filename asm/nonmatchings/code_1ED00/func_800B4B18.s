.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B4B18
/* 1F718 800B4B18 27BDFFD0 */  addiu      $sp, $sp, -0x30
/* 1F71C 800B4B1C AFB60028 */  sw         $s6, 0x28($sp)
/* 1F720 800B4B20 0080B021 */  addu       $s6, $a0, $zero
/* 1F724 800B4B24 00A02021 */  addu       $a0, $a1, $zero
/* 1F728 800B4B28 AFB50024 */  sw         $s5, 0x24($sp)
/* 1F72C 800B4B2C 00C0A821 */  addu       $s5, $a2, $zero
/* 1F730 800B4B30 AFB40020 */  sw         $s4, 0x20($sp)
/* 1F734 800B4B34 00E0A021 */  addu       $s4, $a3, $zero
/* 1F738 800B4B38 AFBF002C */  sw         $ra, 0x2c($sp)
/* 1F73C 800B4B3C AFB3001C */  sw         $s3, 0x1c($sp)
/* 1F740 800B4B40 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F744 800B4B44 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F748 800B4B48 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F74C 800B4B4C 8EC3001C */  lw         $v1, 0x1c($s6)
/* 1F750 800B4B50 8EC20014 */  lw         $v0, 0x14($s6)
/* 1F754 800B4B54 00031840 */  sll        $v1, $v1, 1
/* 1F758 800B4B58 00432821 */  addu       $a1, $v0, $v1
/* 1F75C 800B4B5C 0082102B */  sltu       $v0, $a0, $v0
/* 1F760 800B4B60 10400002 */  beqz       $v0, .L800B4B6C
/* 1F764 800B4B64 02809021 */   addu      $s2, $s4, $zero
/* 1F768 800B4B68 00832021 */  addu       $a0, $a0, $v1
.L800B4B6C:
/* 1F76C 800B4B6C 24900170 */  addiu      $s0, $a0, 0x170
/* 1F770 800B4B70 00B0102B */  sltu       $v0, $a1, $s0
/* 1F774 800B4B74 1040001B */  beqz       $v0, .L800B4BE4
/* 1F778 800B4B78 00A48823 */   subu      $s1, $a1, $a0
/* 1F77C 800B4B7C 26940008 */  addiu      $s4, $s4, 8
/* 1F780 800B4B80 00118843 */  sra        $s1, $s1, 1
/* 1F784 800B4B84 00118840 */  sll        $s1, $s1, 1
/* 1F788 800B4B88 32230FFF */  andi       $v1, $s1, 0xfff
/* 1F78C 800B4B8C 00031B00 */  sll        $v1, $v1, 0xc
/* 1F790 800B4B90 32A20FFF */  andi       $v0, $s5, 0xfff
/* 1F794 800B4B94 3C130600 */  lui        $s3, 0x600
/* 1F798 800B4B98 00531025 */  or         $v0, $v0, $s3
/* 1F79C 800B4B9C 00621825 */  or         $v1, $v1, $v0
/* 1F7A0 800B4BA0 02058023 */  subu       $s0, $s0, $a1
/* 1F7A4 800B4BA4 00108043 */  sra        $s0, $s0, 1
/* 1F7A8 800B4BA8 0C02F680 */  jal        func_800BDA00
/* 1F7AC 800B4BAC AE430000 */   sw        $v1, ($s2)
/* 1F7B0 800B4BB0 AE420004 */  sw         $v0, 4($s2)
/* 1F7B4 800B4BB4 02809021 */  addu       $s2, $s4, $zero
/* 1F7B8 800B4BB8 00108040 */  sll        $s0, $s0, 1
/* 1F7BC 800B4BBC 32100FFF */  andi       $s0, $s0, 0xfff
/* 1F7C0 800B4BC0 00108300 */  sll        $s0, $s0, 0xc
/* 1F7C4 800B4BC4 02B18821 */  addu       $s1, $s5, $s1
/* 1F7C8 800B4BC8 32310FFF */  andi       $s1, $s1, 0xfff
/* 1F7CC 800B4BCC 02338825 */  or         $s1, $s1, $s3
/* 1F7D0 800B4BD0 02118025 */  or         $s0, $s0, $s1
/* 1F7D4 800B4BD4 AE500000 */  sw         $s0, ($s2)
/* 1F7D8 800B4BD8 8EC40014 */  lw         $a0, 0x14($s6)
/* 1F7DC 800B4BDC 0802D2FE */  j          .L800B4BF8
/* 1F7E0 800B4BE0 26940008 */   addiu     $s4, $s4, 8
.L800B4BE4:
/* 1F7E4 800B4BE4 26940008 */  addiu      $s4, $s4, 8
/* 1F7E8 800B4BE8 32A20FFF */  andi       $v0, $s5, 0xfff
/* 1F7EC 800B4BEC 3C030617 */  lui        $v1, 0x617
/* 1F7F0 800B4BF0 00431025 */  or         $v0, $v0, $v1
/* 1F7F4 800B4BF4 AE420000 */  sw         $v0, ($s2)
.L800B4BF8:
/* 1F7F8 800B4BF8 0C02F680 */  jal        func_800BDA00
/* 1F7FC 800B4BFC 00000000 */   nop
/* 1F800 800B4C00 AE420004 */  sw         $v0, 4($s2)
/* 1F804 800B4C04 02801021 */  addu       $v0, $s4, $zero
/* 1F808 800B4C08 8FBF002C */  lw         $ra, 0x2c($sp)
/* 1F80C 800B4C0C 8FB60028 */  lw         $s6, 0x28($sp)
/* 1F810 800B4C10 8FB50024 */  lw         $s5, 0x24($sp)
/* 1F814 800B4C14 8FB40020 */  lw         $s4, 0x20($sp)
/* 1F818 800B4C18 8FB3001C */  lw         $s3, 0x1c($sp)
/* 1F81C 800B4C1C 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F820 800B4C20 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F824 800B4C24 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F828 800B4C28 03E00008 */  jr         $ra
/* 1F82C 800B4C2C 27BD0030 */   addiu     $sp, $sp, 0x30
