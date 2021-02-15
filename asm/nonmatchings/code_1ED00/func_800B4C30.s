.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_800B4C30
/* 1F830 800B4C30 27BDFFE0 */  addiu      $sp, $sp, -0x20
/* 1F834 800B4C34 AFB20018 */  sw         $s2, 0x18($sp)
/* 1F838 800B4C38 00809021 */  addu       $s2, $a0, $zero
/* 1F83C 800B4C3C 3C020B00 */  lui        $v0, 0xb00
/* 1F840 800B4C40 34420020 */  ori        $v0, $v0, 0x20
/* 1F844 800B4C44 26440008 */  addiu      $a0, $s2, 8
/* 1F848 800B4C48 AFB10014 */  sw         $s1, 0x14($sp)
/* 1F84C 800B4C4C 00C08821 */  addu       $s1, $a2, $zero
/* 1F850 800B4C50 AFB00010 */  sw         $s0, 0x10($sp)
/* 1F854 800B4C54 00058203 */  sra        $s0, $a1, 8
/* 1F858 800B4C58 AFBF001C */  sw         $ra, 0x1c($sp)
/* 1F85C 800B4C5C 0C02F680 */  jal        func_800BDA00
/* 1F860 800B4C60 AE220000 */   sw        $v0, ($s1)
/* 1F864 800B4C64 AE220004 */  sw         $v0, 4($s1)
/* 1F868 800B4C68 9242002F */  lbu        $v0, 0x2f($s2)
/* 1F86C 800B4C6C 96430002 */  lhu        $v1, 2($s2)
/* 1F870 800B4C70 3C040E00 */  lui        $a0, 0xe00
/* 1F874 800B4C74 00021400 */  sll        $v0, $v0, 0x10
/* 1F878 800B4C78 00641825 */  or         $v1, $v1, $a0
/* 1F87C 800B4C7C 00431025 */  or         $v0, $v0, $v1
/* 1F880 800B4C80 AE220008 */  sw         $v0, 8($s1)
/* 1F884 800B4C84 8E440028 */  lw         $a0, 0x28($s2)
/* 1F888 800B4C88 0C02F680 */  jal        func_800BDA00
/* 1F88C 800B4C8C 00108600 */   sll       $s0, $s0, 0x18
/* 1F890 800B4C90 3C0400FF */  lui        $a0, 0xff
/* 1F894 800B4C94 3484FFFF */  ori        $a0, $a0, 0xffff
/* 1F898 800B4C98 26230010 */  addiu      $v1, $s1, 0x10
/* 1F89C 800B4C9C 00442024 */  and        $a0, $v0, $a0
/* 1F8A0 800B4CA0 00601021 */  addu       $v0, $v1, $zero
/* 1F8A4 800B4CA4 02048025 */  or         $s0, $s0, $a0
/* 1F8A8 800B4CA8 AE30000C */  sw         $s0, 0xc($s1)
/* 1F8AC 800B4CAC AE40002C */  sw         $zero, 0x2c($s2)
/* 1F8B0 800B4CB0 8FBF001C */  lw         $ra, 0x1c($sp)
/* 1F8B4 800B4CB4 8FB20018 */  lw         $s2, 0x18($sp)
/* 1F8B8 800B4CB8 8FB10014 */  lw         $s1, 0x14($sp)
/* 1F8BC 800B4CBC 8FB00010 */  lw         $s0, 0x10($sp)
/* 1F8C0 800B4CC0 03E00008 */  jr         $ra
/* 1F8C4 800B4CC4 27BD0020 */   addiu     $sp, $sp, 0x20
/* 1F8C8 800B4CC8 00000000 */  nop
/* 1F8CC 800B4CCC 00000000 */  nop
